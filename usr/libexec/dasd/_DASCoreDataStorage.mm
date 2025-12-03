@interface _DASCoreDataStorage
+ (BOOL)createDatabaseDirectory:(id)directory error:(id *)error;
- (BOOL)deleteDatabaseForPSC:(id)c protectionClass:(id)class obliterate:(BOOL)obliterate;
- (BOOL)deleteStorageFor:(id)for obliterate:(BOOL)obliterate;
- (NSManagedObjectModel)managedObjectModel;
- (_DASCoreDataStorage)initWithDirectory:(id)directory databaseName:(id)name modelURL:(id)l readOnly:(BOOL)only;
- (id)mocForProtectionClass:(id)class;
- (id)persistentStoreCoordinatorFor:(id)for;
- (void)handleDataProtectionChangeFor:(id)for willBeAvailable:(BOOL)available;
- (void)invalidateManagedObjectContextFor:(id)for;
- (void)invalidatePersistentStoreCoordinatorFor:(id)for;
@end

@implementation _DASCoreDataStorage

- (_DASCoreDataStorage)initWithDirectory:(id)directory databaseName:(id)name modelURL:(id)l readOnly:(BOOL)only
{
  directoryCopy = directory;
  nameCopy = name;
  lCopy = l;
  v40.receiver = self;
  v40.super_class = _DASCoreDataStorage;
  v11 = [(_DASCoreDataStorage *)&v40 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_databaseDirectory, directory);
    objc_storeStrong(&v12->_databaseName, name);
    objc_storeStrong(&v12->_modelURL, l);
    v12->_readOnly = only;
    v13 = dispatch_queue_create("_DASCoreDataStore.mocQueue", 0);
    mocQueue = v12->_mocQueue;
    v12->_mocQueue = v13;

    v15 = dispatch_queue_create("_DASCoreDataStore.queuePSC", 0);
    pscQueue = v12->_pscQueue;
    v12->_pscQueue = v15;

    v17 = [NSString stringWithFormat:@"%@/%@", v12->_databaseDirectory, v12->_databaseName];
    v18 = [NSString stringWithFormat:@"%@%@.db", v17, @"ClassA"];
    v19 = [NSString stringWithFormat:@"%@%@.db", v17, @"ClassC"];
    v20 = [NSString stringWithFormat:@"%@%@.db", v17, @"ClassD"];
    v21 = +[_DASDataProtectionStateMonitor dataProtectionClassA];
    v41[0] = v21;
    v42[0] = v18;
    v22 = +[_DASDataProtectionStateMonitor dataProtectionClassC];
    v41[1] = v22;
    v42[1] = v19;
    v23 = +[_DASDataProtectionStateMonitor dataProtectionClassD];
    v41[2] = v23;
    v42[2] = v20;
    v24 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:3];
    paths = v12->_paths;
    v12->_paths = v24;

    managedObjectModel = v12->_managedObjectModel;
    v12->_managedObjectModel = 0;

    v27 = +[NSMutableDictionary dictionary];
    managedObjectContexts = v12->_managedObjectContexts;
    v12->_managedObjectContexts = v27;

    v29 = +[NSMutableDictionary dictionary];
    persistentStoreCoordinators = v12->_persistentStoreCoordinators;
    v12->_persistentStoreCoordinators = v29;

    v31 = objc_opt_new();
    dataProtectionMonitor = v12->_dataProtectionMonitor;
    v12->_dataProtectionMonitor = v31;

    objc_initWeak(&location, v12);
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10002F280;
    v37[3] = &unk_1001B55C0;
    objc_copyWeak(&v38, &location);
    [(_DASDataProtectionStateMonitor *)v12->_dataProtectionMonitor setChangeHandler:v37];
    objc_destroyWeak(&v38);
    objc_destroyWeak(&location);
  }

  return v12;
}

- (void)handleDataProtectionChangeFor:(id)for willBeAvailable:(BOOL)available
{
  if (!available)
  {
    forCopy = for;
    [(_DASCoreDataStorage *)self invalidateManagedObjectContextFor:forCopy];
    [(_DASCoreDataStorage *)self invalidatePersistentStoreCoordinatorFor:forCopy];
  }
}

- (void)invalidateManagedObjectContextFor:(id)for
{
  forCopy = for;
  mocQueue = self->_mocQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002F3E8;
  v7[3] = &unk_1001B56E0;
  v7[4] = self;
  v8 = forCopy;
  v6 = forCopy;
  dispatch_sync(mocQueue, v7);
}

- (void)invalidatePersistentStoreCoordinatorFor:(id)for
{
  forCopy = for;
  pscQueue = self->_pscQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002F580;
  v7[3] = &unk_1001B56E0;
  v7[4] = self;
  v8 = forCopy;
  v6 = forCopy;
  dispatch_sync(pscQueue, v7);
}

- (NSManagedObjectModel)managedObjectModel
{
  managedObjectModel = self->_managedObjectModel;
  if (managedObjectModel)
  {
    goto LABEL_4;
  }

  if (self->_modelURL)
  {
    v4 = [[NSManagedObjectModel alloc] initWithContentsOfURL:self->_modelURL];
    v5 = self->_managedObjectModel;
    self->_managedObjectModel = v4;

    managedObjectModel = self->_managedObjectModel;
LABEL_4:
    v6 = managedObjectModel;
    goto LABEL_5;
  }

  NSLog(@"Missing model URL!", a2);
  v6 = 0;
LABEL_5:

  return v6;
}

- (id)persistentStoreCoordinatorFor:(id)for
{
  forCopy = for;
  v5 = [(_DASDataProtectionStateMonitor *)self->_dataProtectionMonitor isDataAvailableFor:forCopy];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_10002F9F4;
  v23 = sub_10002FA04;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  pscQueue = self->_pscQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002FA0C;
  block[3] = &unk_1001B5DE8;
  v12 = &v19;
  block[4] = self;
  v7 = forCopy;
  v14 = v5;
  v11 = v7;
  v13 = &v15;
  dispatch_sync(pscQueue, block);
  if (*(v16 + 24) == 1)
  {
    [(_DASCoreDataStorage *)self invalidatePersistentStoreCoordinatorFor:v7];
    v8 = 0;
  }

  else
  {
    v8 = v20[5];
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v8;
}

- (id)mocForProtectionClass:(id)class
{
  classCopy = class;
  v5 = [(_DASDataProtectionStateMonitor *)self->_dataProtectionMonitor isDataAvailableFor:classCopy];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_10002F9F4;
  v23 = sub_10002FA04;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  mocQueue = self->_mocQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002FEEC;
  block[3] = &unk_1001B5DE8;
  v12 = &v19;
  block[4] = self;
  v7 = classCopy;
  v14 = v5;
  v11 = v7;
  v13 = &v15;
  dispatch_sync(mocQueue, block);
  if (*(v16 + 24) == 1)
  {
    [(_DASCoreDataStorage *)self invalidateManagedObjectContextFor:v7];
    v8 = 0;
  }

  else
  {
    v8 = v20[5];
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v8;
}

- (BOOL)deleteDatabaseForPSC:(id)c protectionClass:(id)class obliterate:(BOOL)obliterate
{
  readOnly = self->_readOnly;
  if (!readOnly)
  {
    obliterateCopy = obliterate;
    paths = self->_paths;
    cCopy = c;
    v10 = [(NSDictionary *)paths objectForKeyedSubscript:class];
    v11 = [NSURL fileURLWithPath:v10];

    if (obliterateCopy)
    {
      v19[0] = NSPersistentStoreUnlinkDestroyOption;
      v19[1] = NSPersistentStoreForceDestroyOption;
      v20[0] = &__kCFBooleanTrue;
      v20[1] = &__kCFBooleanTrue;
      v12 = v20;
      v13 = v19;
      v14 = 2;
    }

    else
    {
      v17 = NSPersistentStoreUnlinkDestroyOption;
      v18 = &__kCFBooleanTrue;
      v12 = &v18;
      v13 = &v17;
      v14 = 1;
    }

    v15 = [NSDictionary dictionaryWithObjects:v12 forKeys:v13 count:v14];
    [cCopy _destroyPersistentStoreAtURL:v11 withType:NSSQLiteStoreType options:v15 error:0];
  }

  return !readOnly;
}

- (BOOL)deleteStorageFor:(id)for obliterate:(BOOL)obliterate
{
  forCopy = for;
  if (self->_readOnly)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(_DASCoreDataStorage *)self mocForProtectionClass:forCopy];
    if (v8)
    {
      v9 = [(_DASCoreDataStorage *)self persistentStoreCoordinatorFor:forCopy];
      if (v9)
      {
        v16 = 0;
        v17 = &v16;
        v18 = 0x2020000000;
        v19 = 0;
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_1000302F0;
        v11[3] = &unk_1001B5E10;
        v11[4] = self;
        v12 = forCopy;
        v14 = &v16;
        v13 = v9;
        obliterateCopy = obliterate;
        [v8 performWithOptions:4 andBlock:v11];
        v7 = *(v17 + 24);

        _Block_object_dispose(&v16, 8);
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

+ (BOOL)createDatabaseDirectory:(id)directory error:(id *)error
{
  directoryCopy = directory;
  v6 = +[NSFileManager defaultManager];
  v7 = [NSURL fileURLWithPath:directoryCopy isDirectory:1];

  LOBYTE(error) = [v6 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:error];
  return error;
}

@end