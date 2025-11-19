@interface MOPersistenceManager
+ (id)createModel;
+ (id)currentManagedObjectModel;
+ (id)defaultModelsDirectory;
+ (id)defaultStoresDirectory;
+ (id)getBundlingJSONURLWithTrigger:(unint64_t)a3;
+ (id)getCollectionDate;
+ (id)getPlistFileURL;
+ (id)protectedStoreFilesExtensions;
+ (void)defaultModelsDirectory;
+ (void)defaultStoresDirectory;
+ (void)getCollectionDate;
+ (void)persistCollectionDate;
- (BOOL)_acquireBackgroundProcessingPermissionForStoreURL:(id)a3 cacheFileExtension:(id)a4;
- (BOOL)_acquireBackgroundProcessingPermissions;
- (BOOL)acquireBackgroundProcessingPermissions;
- (BOOL)loadStore;
- (MOPersistenceManager)initWithUniverse:(id)a3;
- (int)_acquireBackgroundAssertionForFileDescriptor:(int)a3;
- (unint64_t)availability;
- (void)loadStore;
- (void)onLockStateChangeNotification:(id)a3;
- (void)performBlock:(id)a3;
- (void)performBlockAndWait:(id)a3;
- (void)registerForNotifications;
@end

@implementation MOPersistenceManager

- (MOPersistenceManager)initWithUniverse:(id)a3
{
  v5 = a3;
  v40 = os_transaction_create();
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 getService:v7];

  if (v8)
  {
    v9 = +[MOPersistenceManager defaultModelsDirectory];
    v10 = +[MOPersistenceManager defaultStoresDirectory];
    v39.receiver = self;
    v39.super_class = MOPersistenceManager;
    v11 = [(MOPersistenceManager *)&v39 init];
    self = v11;
    if (v11 && v10 && v9)
    {
      objc_storeStrong(&v11->_modelsDirectory, v9);
      objc_storeStrong(&self->_storesDirectory, v10);
      v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v13 = dispatch_queue_create("MOPersistenceManager", v12);
      queue = self->_queue;
      self->_queue = v13;

      v15 = +[MOPersistenceManager currentManagedObjectModel];
      v16 = [[NSPersistentContainer alloc] initWithName:@"moments" managedObjectModel:v15];
      persistentContainer = self->_persistentContainer;
      self->_persistentContainer = v16;

      self->_availability = 1;
      v18 = objc_opt_new();
      [v18 setShouldAddStoreAsynchronously:0];
      [v18 setShouldMigrateStoreAutomatically:1];
      [v18 setShouldInferMappingModelAutomatically:1];
      [v18 setURL:self->_storesDirectory];
      [v18 setType:NSSQLiteStoreType];
      [v18 setOption:NSFileProtectionCompleteUnlessOpen forKey:NSPersistentStoreFileProtectionKey];
      v19 = [NSArray arrayWithObjects:v18, 0];
      [(NSPersistentContainer *)self->_persistentContainer setPersistentStoreDescriptions:v19];

      v20 = [(NSPersistentContainer *)self->_persistentContainer newBackgroundContext];
      managedObjectContext = self->_managedObjectContext;
      self->_managedObjectContext = v20;

      v22 = _mo_log_facility_get_os_log(&MOLogFacilityPersistenceManager);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [(MOPersistenceManager *)&self->_managedObjectContext initWithUniverse:v22, v23, v24, v25, v26, v27, v28];
      }

      v29 = [[MODispatcher alloc] initWithNotifier:v8];
      dispatcher = self->_dispatcher;
      self->_dispatcher = v29;

      [(MOPersistenceManager *)self registerForNotifications];
      v31 = v40;
      v40 = 0;

      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v34 = [v5 getService:v33];
      configurationManager = self->_configurationManager;
      self->_configurationManager = v34;

      v36 = self;
    }

    else
    {
      v36 = 0;
      v15 = v40;
      v40 = 0;
    }
  }

  else
  {
    v37 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [MOPersistenceManager initWithUniverse:];
    }

    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"MOPersistenceManager.m" lineNumber:45 description:@"Invalid parameter not satisfying: notifier"];
    v36 = 0;
  }

  return v36;
}

- (void)registerForNotifications
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __48__MOPersistenceManager_registerForNotifications__block_invoke;
  v5[3] = &unk_10033C3F8;
  v5[4] = self;
  v3 = objc_retainBlock(v5);
  v4 = [(MOPersistenceManager *)self dispatcher];
  [v4 registerForNotification:2 withHandler:v3];
}

void __48__MOPersistenceManager_registerForNotifications__block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2 == 2)
  {
    v6 = _mo_log_facility_get_os_log(&MOLogFacilityPersistenceManager);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __48__MOPersistenceManager_registerForNotifications__block_invoke_cold_1();
    }

    [*(a1 + 32) onLockStateChangeNotification:v5];
  }
}

- (void)onLockStateChangeNotification:(id)a3
{
  v4 = [a3 valueForKey:@"isUnlocked"];

  if (v4 && [(MOPersistenceManager *)self availability]== 2)
  {
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityPersistenceManager);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [MOPersistenceManager onLockStateChangeNotification:];
    }

    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __54__MOPersistenceManager_onLockStateChangeNotification___block_invoke;
    block[3] = &unk_100335F40;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

void __54__MOPersistenceManager_onLockStateChangeNotification___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) dispatcher];
  [v1 unregisterForNotification:2];
}

- (unint64_t)availability
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_availability != 2 && [(MOPersistenceManager *)v2 loadStore])
  {
    v2->_availability = 2;
  }

  objc_sync_exit(v2);

  return v2->_availability;
}

- (BOOL)loadStore
{
  v3 = [(MOPersistenceManager *)self _acquireBackgroundProcessingPermissions];
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityPersistenceManager);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    *buf = 0;
    v6 = "Succeed to update background processing assertion";
  }

  else
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    *buf = 0;
    v6 = "Fail to update background processing assertion";
  }

  _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, v6, buf, 2u);
LABEL_7:

  *buf = 0;
  v25 = buf;
  v26 = 0x2020000000;
  v27 = 0;
  v7 = [(NSPersistentContainer *)self->_persistentContainer persistentStoreCoordinator];
  v8 = [v7 persistentStores];
  v9 = [v8 count];

  if (v9)
  {
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityPersistenceManager);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "store is already loaded", v19, 2u);
    }

    v11 = 0;
  }

  else
  {
    v12 = dispatch_semaphore_create(0);
    persistentContainer = self->_persistentContainer;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = __33__MOPersistenceManager_loadStore__block_invoke;
    v21[3] = &unk_10033C9C8;
    v23 = buf;
    v10 = v12;
    v22 = v10;
    [(NSPersistentContainer *)persistentContainer loadPersistentStoresWithCompletionHandler:v21];
    v14 = [NSString stringWithFormat:@"%@ - [%s] - %d - %s", @"MOSemaphoreWait", "/Library/Caches/com.apple.xbs/Sources/Moments/momentsd/PromptEngine/Persistence/MOPersistenceManager.m", 154, "[MOPersistenceManager loadStore]"];
    v20 = 0;
    v15 = MOSemaphoreWaitAndFaultIfTimeout_Internal(v10, &v20, v14, 10.0);
    v11 = v20;
    if (!v15)
    {
      v16 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [MOPersistenceManager loadStore];
      }
    }
  }

  v17 = v25[24];
  _Block_object_dispose(buf, 8);

  return v17;
}

void __33__MOPersistenceManager_loadStore__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityPersistenceManager);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __33__MOPersistenceManager_loadStore__block_invoke_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __33__MOPersistenceManager_loadStore__block_invoke_cold_2();
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)performBlock:(id)a3
{
  v4 = a3;
  [(MOPersistenceManager *)self managedObjectContext];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __37__MOPersistenceManager_performBlock___block_invoke;
  v8 = v7[3] = &unk_10033B9D8;
  v9 = v4;
  v5 = v8;
  v6 = v4;
  [v5 performBlock:v7];
}

void __37__MOPersistenceManager_performBlock___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v2);
}

- (void)performBlockAndWait:(id)a3
{
  v4 = a3;
  [(MOPersistenceManager *)self managedObjectContext];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __44__MOPersistenceManager_performBlockAndWait___block_invoke;
  v8 = v7[3] = &unk_10033B9D8;
  v9 = v4;
  v5 = v8;
  v6 = v4;
  [v5 performBlockAndWait:v7];
}

void __44__MOPersistenceManager_performBlockAndWait___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v2);
}

+ (id)defaultModelsDirectory
{
  v4 = +[NSBundle mainBundle];
  v5 = [v4 resourceURL];
  v6 = _mo_log_facility_get_os_log(&MOLogFacilityPersistenceManager);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    +[MOPersistenceManager defaultModelsDirectory];
  }

  v7 = [@"moments" stringByAppendingPathExtension:@"momd"];
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityPersistenceManager);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    +[MOPersistenceManager defaultModelsDirectory];
  }

  v9 = [[NSURL alloc] initFileURLWithPath:v7 relativeToURL:v5];
  v16 = 0;
  v10 = [v9 checkResourceIsReachableAndReturnError:&v16];
  v11 = v16;
  if ((v10 & 1) == 0)
  {
    v12 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[MOPersistenceManager defaultModelsDirectory];
    }

    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"MOPersistenceManager.m" lineNumber:200 description:{@"Failed to locate momd bundle: %@ (in %s:%d)", v11, "+[MOPersistenceManager defaultModelsDirectory]", 200}];
  }

  v14 = _mo_log_facility_get_os_log(&MOLogFacilityPersistenceManager);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    +[MOPersistenceManager defaultModelsDirectory];
  }

  return v9;
}

+ (id)defaultStoresDirectory
{
  v2 = [a1 userCacheDirectoryPath];
  if (v2)
  {
    v3 = [NSURL fileURLWithPath:v2 isDirectory:1];
    v4 = [v3 URLByAppendingPathComponent:@"momentsDataModel.sqlite"];
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityPersistenceManager);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      +[MOPersistenceManager defaultStoresDirectory];
    }
  }

  else
  {
    v3 = _mo_log_facility_get_os_log(&MOLogFacilityPersistenceManager);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      +[MOPersistenceManager defaultStoresDirectory];
    }

    v4 = 0;
  }

  return v4;
}

+ (id)currentManagedObjectModel
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __49__MOPersistenceManager_currentManagedObjectModel__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (currentManagedObjectModel_onceToken != -1)
  {
    dispatch_once(&currentManagedObjectModel_onceToken, block);
  }

  v2 = currentManagedObjectModel__model;

  return v2;
}

uint64_t __49__MOPersistenceManager_currentManagedObjectModel__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) createModel];
  v2 = currentManagedObjectModel__model;
  currentManagedObjectModel__model = v1;

  return _objc_release_x1(v1, v2);
}

+ (id)createModel
{
  v3 = [NSManagedObjectModel alloc];
  v4 = [a1 defaultModelsDirectory];
  v5 = [v3 initWithContentsOfURL:v4];

  return v5;
}

+ (id)getPlistFileURL
{
  v2 = [a1 userCacheDirectoryPath];
  if (v2)
  {
    v3 = [NSURL fileURLWithPath:v2 isDirectory:1];
    v4 = [v3 URLByAppendingPathComponent:@"lastCollection.plist"];
  }

  else
  {
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityPersistenceManager);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleLabelFormatter getTemplateDirectoryURL];
    }

    v4 = 0;
  }

  return v4;
}

+ (void)persistCollectionDate
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (id)getCollectionDate
{
  v2 = [a1 getPlistFileURL];
  v3 = +[NSFileManager defaultManager];
  v4 = [v2 path];
  v5 = [v3 fileExistsAtPath:v4];

  v6 = _mo_log_facility_get_os_log(&MOLogFacilityPersistenceManager);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      *buf = 138412290;
      v15 = @"lastCollection.plist";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "File %@ found.", buf, 0xCu);
    }

    v13 = 0;
    v8 = [[NSDictionary alloc] initWithContentsOfURL:v2 error:&v13];
    v6 = v13;
    if (v6 || !v8)
    {
      v11 = _mo_log_facility_get_os_log(&MOLogFacilityPersistenceManager);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[MOPersistenceManager getCollectionDate];
      }
    }

    else
    {
      v9 = [v8 objectForKey:@"lastCollectTriggerDate"];
      v10 = _mo_log_facility_get_os_log(&MOLogFacilityPersistenceManager);
      v11 = v10;
      if (v9)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v15 = v9;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "The most recent collection date was successfully read from plist, %@", buf, 0xCu);
        }

        goto LABEL_17;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        +[MOPersistenceManager getCollectionDate];
      }
    }

    v9 = 0;
LABEL_17:

    goto LABEL_18;
  }

  if (v7)
  {
    *buf = 138412290;
    v15 = @"lastCollection.plist";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "File %@ doesn't exists.", buf, 0xCu);
  }

  v9 = 0;
LABEL_18:

  return v9;
}

+ (id)getBundlingJSONURLWithTrigger:(unint64_t)a3
{
  v3 = a3 - 1;
  if (a3 - 1 < 5 && ((0x1Bu >> v3) & 1) != 0)
  {
    v4 = [MOPersistenceUtilities getBundlingJSONURLWithDirectorySuffix:*(&off_10033C9E8 + v3)];
  }

  else
  {
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityPersistenceManager);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[MOPersistenceManager getBundlingJSONURLWithTrigger:];
    }

    v4 = 0;
  }

  return v4;
}

- (int)_acquireBackgroundAssertionForFileDescriptor:(int)a3
{
  v4 = [(MOPersistenceManager *)self configurationManager];
  [v4 getDoubleSettingForKey:@"persistenceDriverBackgroundProcessingAssertionDuration" withFallback:86400.0];
  v6 = v5;

  v8[0] = 0;
  v8[1] = (v6 * 1000000000.0);
  return fcntl(a3, 108, v8);
}

+ (id)protectedStoreFilesExtensions
{
  v2 = protectedStoreFilesExtensions_cacheFilesExtensions;
  if (!protectedStoreFilesExtensions_cacheFilesExtensions)
  {
    v3 = [NSArray arrayWithObjects:@"sqlite", @"sqlite-wal", @"sqlite-shm", 0];
    v4 = protectedStoreFilesExtensions_cacheFilesExtensions;
    protectedStoreFilesExtensions_cacheFilesExtensions = v3;

    v2 = protectedStoreFilesExtensions_cacheFilesExtensions;
  }

  return v2;
}

- (BOOL)_acquireBackgroundProcessingPermissionForStoreURL:(id)a3 cacheFileExtension:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 path];
  v10 = [v9 stringByReplacingOccurrencesOfString:@"sqlite" withString:v8];

  v11 = [(MOPersistenceManager *)self _getFileDescriptorForPersistenceStoreFile:v10];
  if ((v11 & 0x80000000) != 0)
  {
    v14 = _mo_log_facility_get_os_log(&MOLogFacilityPersistenceManager);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [MOPersistenceManager _acquireBackgroundProcessingPermissionForStoreURL:v10 cacheFileExtension:v14];
    }

    goto LABEL_7;
  }

  v12 = [(MOPersistenceManager *)self _acquireBackgroundAssertionForFileDescriptor:v11];
  v13 = _mo_log_facility_get_os_log(&MOLogFacilityPersistenceManager);
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(a2);
      v16 = *__error();
      v17 = __error();
      v18 = strerror(*v17);
      v22 = 138413314;
      v23 = v15;
      v24 = 2112;
      v25 = v7;
      v26 = 1024;
      *v27 = v12;
      *&v27[4] = 1024;
      *&v27[6] = v16;
      v28 = 2080;
      v29 = v18;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@ Fail to acquire background processing assertion for the persistence store file %@ with code error %d and errno %d %s", &v22, 0x2Cu);
    }

LABEL_7:
    v19 = 0;
    goto LABEL_8;
  }

  v19 = 1;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v21 = NSStringFromSelector(a2);
    v22 = 138412802;
    v23 = v21;
    v24 = 2112;
    v25 = v7;
    v26 = 2112;
    *v27 = v8;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%@ Succeed to acquire background processing assertion for the persistence store type %@ and the extension %@", &v22, 0x20u);
  }

LABEL_8:

  return v19;
}

- (BOOL)_acquireBackgroundProcessingPermissions
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = +[MOPersistenceManager protectedStoreFilesExtensions];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = +[MOPersistenceManager defaultStoresDirectory];
        LODWORD(v8) = [(MOPersistenceManager *)self _acquireBackgroundProcessingPermissionForStoreURL:v9 cacheFileExtension:v8];

        if (!v8)
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (BOOL)acquireBackgroundProcessingPermissions
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(MOPersistenceManager *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __62__MOPersistenceManager_acquireBackgroundProcessingPermissions__block_invoke;
  v5[3] = &unk_10033C6A8;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

id __62__MOPersistenceManager_acquireBackgroundProcessingPermissions__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _acquireBackgroundProcessingPermissions];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)initWithUniverse:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)loadStore
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __33__MOPersistenceManager_loadStore__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)defaultModelsDirectory
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

+ (void)defaultStoresDirectory
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)getCollectionDate
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)getBundlingJSONURLWithTrigger:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_acquireBackgroundProcessingPermissionForStoreURL:(uint64_t)a1 cacheFileExtension:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *__error();
  v5 = 138412546;
  v6 = a1;
  v7 = 1024;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "acquireBackgroundProcessing:Unable to to get the file descriptor for the file %@ with data protection, errno, %{errno}d", &v5, 0x12u);
}

@end