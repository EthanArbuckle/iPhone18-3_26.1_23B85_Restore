@interface TransparencyManagedDataStoreController
- (BOOL)createDataStores:(id)stores followup:(id)followup error:(id *)error;
- (BOOL)loadedStore;
- (BOOL)moveAsideDatabase:(id)database;
- (BOOL)saveContext:(id)context error:(id *)error;
- (BOOL)shouldMoveAsideDatabase:(id)database;
- (NSManagedObjectContext)backgroundContext;
- (TransparencyManagedDataStoreController)init;
- (TransparencyManagedDataStoreController)initWithContainer:(id)container logger:(id)logger;
- (id)bundleURL;
- (int64_t)currentSequenceId:(id *)id;
- (int64_t)waitSetupComplete:(int64_t)complete;
- (void)createPeerOverrides;
- (void)loadPersistentStores;
- (void)setStaticKeyStore:(id)store;
- (void)setUpdateDelegate:(id)delegate;
- (void)setupComplete;
@end

@implementation TransparencyManagedDataStoreController

- (void)loadPersistentStores
{
  persistentContainer = [(TransparencyManagedDataStoreController *)self persistentContainer];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006A980;
  v4[3] = &unk_10031C720;
  v4[4] = self;
  [persistentContainer loadPersistentStoresWithCompletionHandler:v4];
}

- (TransparencyManagedDataStoreController)init
{
  v3 = +[TransparencyAnalytics logger];
  v4 = [(TransparencyManagedDataStoreController *)self initWithContainer:0 logger:v3];

  return v4;
}

- (TransparencyManagedDataStoreController)initWithContainer:(id)container logger:(id)logger
{
  containerCopy = container;
  loggerCopy = logger;
  v23.receiver = self;
  v23.super_class = TransparencyManagedDataStoreController;
  v8 = [(TransparencyManagedDataStoreController *)&v23 init];
  if (v8)
  {
    +[KTLoggableDataArrayTransformer registerTransformer];
    +[KTNSErrorValueTransformer registerTransformer];
    v9 = objc_alloc_init(KTCondition);
    [(TransparencyManagedDataStoreController *)v8 setLoadComplete:v9];

    [(TransparencyManagedDataStoreController *)v8 setLogger:loggerCopy];
    if (containerCopy)
    {
      [(TransparencyManagedDataStoreController *)v8 setPersistentContainer:containerCopy];
      [(TransparencyManagedDataStoreController *)v8 createContexts:0];
      v10 = +[TransparencyFollowup instance];
      [(TransparencyManagedDataStoreController *)v8 createDataStores:loggerCopy followup:v10 error:0];

      loadComplete = [(TransparencyManagedDataStoreController *)v8 loadComplete];
      [(TransparencyManagedDataStoreController *)loadComplete fulfill];
    }

    else
    {
      loadComplete = [(TransparencyManagedDataStoreController *)v8 bundleURL];
      if (!loadComplete)
      {
        [(TransparencyManagedDataStoreController *)v8 reportCoreDataEventForEntity:@"Initialization" write:0 code:-209 underlyingError:0];
        goto LABEL_6;
      }

      v22 = 0;
      v13 = [TransparencyFileSupport transparencyFilesPath:&v22];
      v14 = v22;
      if (!v13)
      {
        [(TransparencyManagedDataStoreController *)v8 reportCoreDataEventForEntity:@"Initialization" write:0 code:-37 underlyingError:v14];

        loadComplete = 0;
        goto LABEL_6;
      }

      v15 = [v13 URLByAppendingPathComponent:@"TransparencyModel.sqlite"];
      v16 = [NSPersistentStoreDescription persistentStoreDescriptionWithURL:v15];

      [v16 setOption:NSFileProtectionNone forKey:NSPersistentStoreFileProtectionKey];
      v17 = [[NSManagedObjectModel alloc] initWithContentsOfURL:loadComplete];
      v18 = [[NSPersistentContainer alloc] initWithName:@"TransparencyModel" managedObjectModel:v17];
      persistentContainer = v8->_persistentContainer;
      v8->_persistentContainer = v18;

      v20 = v8->_persistentContainer;
      v24 = v16;
      v21 = [NSArray arrayWithObjects:&v24 count:1];
      [(NSPersistentContainer *)v20 setPersistentStoreDescriptions:v21];

      [(TransparencyManagedDataStoreController *)v8 loadPersistentStores];
    }

    [(TransparencyManagedDataStoreController *)v8 createPeerOverrides];
  }

  loadComplete = v8;
LABEL_6:

  return loadComplete;
}

- (id)bundleURL
{
  v2 = [NSBundle bundleWithIdentifier:@"com.apple.Transparency"];
  v3 = [v2 URLForResource:@"TransparencyModel" withExtension:@"momd"];

  return v3;
}

- (BOOL)loadedStore
{
  persistentContainer = [(TransparencyManagedDataStoreController *)self persistentContainer];
  v3 = persistentContainer != 0;

  return v3;
}

- (BOOL)shouldMoveAsideDatabase:(id)database
{
  databaseCopy = database;
  if ([(TransparencyManagedDataStoreController *)self movedDatabase])
  {
    v5 = 0;
  }

  else if ([databaseCopy code] == 134130 || objc_msgSend(databaseCopy, "code") == 134020 || objc_msgSend(databaseCopy, "code") == 134100 || objc_msgSend(databaseCopy, "code") == 259 || objc_msgSend(databaseCopy, "code") == 256 || objc_msgSend(databaseCopy, "code") == 134110)
  {
    v5 = 1;
  }

  else
  {
    domain = [databaseCopy domain];
    if ([domain isEqualToString:NSSQLiteErrorDomain])
    {
      v5 = [databaseCopy code] == 11;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)moveAsideDatabase:(id)database
{
  databaseCopy = database;
  v5 = [TransparencyFileSupport transparencyFilesPath:0];
  v6 = [v5 URLByAppendingPathComponent:@"TransparencyModel.sqlite"];
  path = [v6 path];

  v8 = +[NSData kt_random];
  kt_hexString = [v8 kt_hexString];

  code = [databaseCopy code];
  v41 = kt_hexString;
  v11 = [path stringByAppendingFormat:@".%@.%ld", kt_hexString, code];
  if (qword_10038BD80 != -1)
  {
    sub_10024AA74();
  }

  v12 = qword_10038BD88;
  if (os_log_type_enabled(qword_10038BD88, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v47 = path;
    v48 = 2112;
    v49 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Move Transparency store at %@ to %@", buf, 0x16u);
  }

  v13 = [NSURL fileURLWithPath:path];
  v14 = [NSURL fileURLWithPath:v11];
  if (os_variant_allows_internal_security_policies())
  {
    persistentContainer = [(TransparencyManagedDataStoreController *)self persistentContainer];
    persistentStoreCoordinator = [persistentContainer persistentStoreCoordinator];
    v45 = 0;
    v17 = [persistentStoreCoordinator replacePersistentStoreAtURL:v14 destinationOptions:0 withPersistentStoreFromURL:v13 sourceOptions:0 storeType:NSSQLiteStoreType error:&v45];
    v18 = v45;

    if ((v17 & 1) == 0)
    {
      if (qword_10038BD80 != -1)
      {
        sub_10024AA88();
      }

      v19 = qword_10038BD88;
      if (os_log_type_enabled(qword_10038BD88, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v47 = v14;
        v48 = 2112;
        v49 = v13;
        v50 = 2114;
        v51 = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Could not replace store at %@ from %@: %{public}@", buf, 0x20u);
      }
    }
  }

  else
  {
    v18 = 0;
  }

  v40 = v11;
  persistentContainer2 = [(TransparencyManagedDataStoreController *)self persistentContainer];
  persistentStoreCoordinator2 = [persistentContainer2 persistentStoreCoordinator];
  v22 = [persistentStoreCoordinator2 persistentStoreForURL:v13];

  v23 = v14;
  if (v22)
  {
    persistentContainer3 = [(TransparencyManagedDataStoreController *)self persistentContainer];
    persistentStoreCoordinator3 = [persistentContainer3 persistentStoreCoordinator];
    v44 = v18;
    v26 = [persistentStoreCoordinator3 removePersistentStore:v22 error:&v44];
    v27 = v44;

    if ((v26 & 1) == 0)
    {
      if (qword_10038BD80 != -1)
      {
        sub_10024AAB0();
      }

      v28 = qword_10038BD88;
      if (os_log_type_enabled(qword_10038BD88, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v47 = v27;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to remove bad store from coordinator: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v27 = v18;
  }

  persistentContainer4 = [(TransparencyManagedDataStoreController *)self persistentContainer];
  persistentStoreCoordinator4 = [persistentContainer4 persistentStoreCoordinator];
  v43 = v27;
  v31 = [persistentStoreCoordinator4 destroyPersistentStoreAtURL:v13 withType:NSSQLiteStoreType options:0 error:&v43];
  v32 = v43;

  if (v31)
  {
    v33 = 1;
  }

  else
  {
    if (qword_10038BD80 != -1)
    {
      sub_10024AAD8();
    }

    v34 = qword_10038BD88;
    if (os_log_type_enabled(qword_10038BD88, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v47 = v13;
      v48 = 2114;
      v49 = v32;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Could not destroy store at %@: %{public}@", buf, 0x16u);
    }

    v35 = +[NSFileManager defaultManager];
    v42 = v32;
    v36 = [v35 removeItemAtURL:v13 error:&v42];
    v37 = v42;

    if (v36)
    {
      v33 = 1;
    }

    else
    {
      if (qword_10038BD80 != -1)
      {
        sub_10024AB00();
      }

      v38 = qword_10038BD88;
      if (os_log_type_enabled(qword_10038BD88, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v47 = v13;
        v48 = 2114;
        v49 = v37;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Could not delete file at %@: %{public}@", buf, 0x16u);
      }

      v33 = 0;
    }

    v32 = v37;
  }

  return v33;
}

- (void)setUpdateDelegate:(id)delegate
{
  delegateCopy = delegate;
  dataStore = [(TransparencyManagedDataStoreController *)self dataStore];
  [dataStore setUpdateDelegate:delegateCopy];

  xpcQueueDataStore = [(TransparencyManagedDataStoreController *)self xpcQueueDataStore];
  [xpcQueueDataStore setUpdateDelegate:delegateCopy];

  mainQueueDataStore = [(TransparencyManagedDataStoreController *)self mainQueueDataStore];
  [mainQueueDataStore setUpdateDelegate:delegateCopy];
}

- (void)setStaticKeyStore:(id)store
{
  storeCopy = store;
  dataStore = [(TransparencyManagedDataStoreController *)self dataStore];
  [dataStore setStaticKeyStore:storeCopy];

  xpcQueueDataStore = [(TransparencyManagedDataStoreController *)self xpcQueueDataStore];
  [xpcQueueDataStore setStaticKeyStore:storeCopy];

  mainQueueDataStore = [(TransparencyManagedDataStoreController *)self mainQueueDataStore];
  [mainQueueDataStore setStaticKeyStore:storeCopy];
}

- (void)createPeerOverrides
{
  v3 = objc_alloc_init(TransparencyPeerOverrides);
  [(TransparencyManagedDataStoreController *)self setPeerOverrides:v3];

  peerOverrides = [(TransparencyManagedDataStoreController *)self peerOverrides];
  dataStore = [(TransparencyManagedDataStoreController *)self dataStore];
  [dataStore setPeerOverridesStore:peerOverrides];

  peerOverrides2 = [(TransparencyManagedDataStoreController *)self peerOverrides];
  xpcQueueDataStore = [(TransparencyManagedDataStoreController *)self xpcQueueDataStore];
  [xpcQueueDataStore setPeerOverridesStore:peerOverrides2];

  peerOverrides3 = [(TransparencyManagedDataStoreController *)self peerOverrides];
  mainQueueDataStore = [(TransparencyManagedDataStoreController *)self mainQueueDataStore];
  [mainQueueDataStore setPeerOverridesStore:peerOverrides3];
}

- (BOOL)createDataStores:(id)stores followup:(id)followup error:(id *)error
{
  storesCopy = stores;
  followupCopy = followup;
  v10 = [[TransparencyManagedDataStore alloc] initWithController:self followup:followupCopy logger:storesCopy];
  [(TransparencyManagedDataStoreController *)self setDataStore:v10];

  dataStore = [(TransparencyManagedDataStoreController *)self dataStore];
  v12 = [(TransparencyManagedDataStore *)dataStore populateMissingLogHeadHashes:error];
  if (v12)
  {
    dataStore2 = [(TransparencyManagedDataStoreController *)self dataStore];
    v14 = [dataStore2 populateExistingRequestsToLookupTable:error];

    if (!v14)
    {
      LOBYTE(v12) = 0;
      goto LABEL_6;
    }

    v15 = [[TransparencyManagedDataStore alloc] initWithController:self followup:followupCopy logger:storesCopy];
    [(TransparencyManagedDataStoreController *)self setXpcQueueDataStore:v15];

    dataStore = [[TransparencyManagedDataStore alloc] initWithController:self followup:followupCopy logger:storesCopy];
    [(TransparencyManagedDataStoreController *)self setMainQueueDataStore:dataStore];
  }

LABEL_6:
  return v12;
}

- (int64_t)currentSequenceId:(id *)id
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10006A780;
  v18 = sub_10006A790;
  v19 = 0;
  [(TransparencyManagedDataStoreController *)self backgroundContext];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10006A798;
  v5 = v9[3] = &unk_10031C6B8;
  v12 = &v14;
  v13 = &v20;
  v10 = v5;
  selfCopy = self;
  [v5 performBlockAndWait:v9];
  if (id)
  {
    v6 = v15[5];
    if (v6)
    {
      *id = v6;
    }
  }

  v7 = v21[3];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
  return v7;
}

- (void)setupComplete
{
  loadComplete = [(TransparencyManagedDataStoreController *)self loadComplete];
  [loadComplete fulfill];
}

- (int64_t)waitSetupComplete:(int64_t)complete
{
  loadComplete = [(TransparencyManagedDataStoreController *)self loadComplete];
  v5 = [loadComplete wait:complete];

  return v5;
}

- (BOOL)saveContext:(id)context error:(id *)error
{
  contextCopy = context;
  v17[0] = 0;
  v7 = [contextCopy save:v17];
  v8 = v17[0];
  v9 = v8;
  if (v8)
  {
    v10 = v7;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = [SecXPCHelper cleanseErrorForXPC:v8];

    if (error && v11)
    {
      v12 = v11;
      *error = v11;
    }

    [(TransparencyManagedDataStoreController *)self reportCoreDataEventForEntity:@"Persistence" write:1 code:-129 underlyingError:v11];
    if (qword_10038BD80 != -1)
    {
      sub_10024AB64();
    }

    v13 = qword_10038BD88;
    if (os_log_type_enabled(qword_10038BD88, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Error saving context: %@", buf, 0xCu);
    }

    if (qword_10038BD80 != -1)
    {
      sub_10024AB8C();
    }

    v14 = qword_10038BD88;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = +[NSThread callStackSymbols];
      *buf = 138412290;
      v19 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Calling stack: %@", buf, 0xCu);
    }
  }

  return v7;
}

- (NSManagedObjectContext)backgroundContext
{
  persistentContainer = [(TransparencyManagedDataStoreController *)self persistentContainer];
  persistentStoreCoordinator = [persistentContainer persistentStoreCoordinator];

  if (persistentStoreCoordinator)
  {
    v5 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
    [v5 setUndoManager:0];
    persistentContainer2 = [(TransparencyManagedDataStoreController *)self persistentContainer];
    persistentStoreCoordinator2 = [persistentContainer2 persistentStoreCoordinator];
    [v5 setPersistentStoreCoordinator:persistentStoreCoordinator2];

    v8 = objc_alloc_init(TransparencyMergePolicy);
    [v5 setMergePolicy:v8];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end