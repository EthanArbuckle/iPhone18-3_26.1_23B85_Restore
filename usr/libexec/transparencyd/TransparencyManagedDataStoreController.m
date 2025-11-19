@interface TransparencyManagedDataStoreController
- (BOOL)createDataStores:(id)a3 followup:(id)a4 error:(id *)a5;
- (BOOL)loadedStore;
- (BOOL)moveAsideDatabase:(id)a3;
- (BOOL)saveContext:(id)a3 error:(id *)a4;
- (BOOL)shouldMoveAsideDatabase:(id)a3;
- (NSManagedObjectContext)backgroundContext;
- (TransparencyManagedDataStoreController)init;
- (TransparencyManagedDataStoreController)initWithContainer:(id)a3 logger:(id)a4;
- (id)bundleURL;
- (int64_t)currentSequenceId:(id *)a3;
- (int64_t)waitSetupComplete:(int64_t)a3;
- (void)createPeerOverrides;
- (void)loadPersistentStores;
- (void)setStaticKeyStore:(id)a3;
- (void)setUpdateDelegate:(id)a3;
- (void)setupComplete;
@end

@implementation TransparencyManagedDataStoreController

- (void)loadPersistentStores
{
  v3 = [(TransparencyManagedDataStoreController *)self persistentContainer];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006A980;
  v4[3] = &unk_10031C720;
  v4[4] = self;
  [v3 loadPersistentStoresWithCompletionHandler:v4];
}

- (TransparencyManagedDataStoreController)init
{
  v3 = +[TransparencyAnalytics logger];
  v4 = [(TransparencyManagedDataStoreController *)self initWithContainer:0 logger:v3];

  return v4;
}

- (TransparencyManagedDataStoreController)initWithContainer:(id)a3 logger:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = TransparencyManagedDataStoreController;
  v8 = [(TransparencyManagedDataStoreController *)&v23 init];
  if (v8)
  {
    +[KTLoggableDataArrayTransformer registerTransformer];
    +[KTNSErrorValueTransformer registerTransformer];
    v9 = objc_alloc_init(KTCondition);
    [(TransparencyManagedDataStoreController *)v8 setLoadComplete:v9];

    [(TransparencyManagedDataStoreController *)v8 setLogger:v7];
    if (v6)
    {
      [(TransparencyManagedDataStoreController *)v8 setPersistentContainer:v6];
      [(TransparencyManagedDataStoreController *)v8 createContexts:0];
      v10 = +[TransparencyFollowup instance];
      [(TransparencyManagedDataStoreController *)v8 createDataStores:v7 followup:v10 error:0];

      v11 = [(TransparencyManagedDataStoreController *)v8 loadComplete];
      [(TransparencyManagedDataStoreController *)v11 fulfill];
    }

    else
    {
      v11 = [(TransparencyManagedDataStoreController *)v8 bundleURL];
      if (!v11)
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

        v11 = 0;
        goto LABEL_6;
      }

      v15 = [v13 URLByAppendingPathComponent:@"TransparencyModel.sqlite"];
      v16 = [NSPersistentStoreDescription persistentStoreDescriptionWithURL:v15];

      [v16 setOption:NSFileProtectionNone forKey:NSPersistentStoreFileProtectionKey];
      v17 = [[NSManagedObjectModel alloc] initWithContentsOfURL:v11];
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

  v11 = v8;
LABEL_6:

  return v11;
}

- (id)bundleURL
{
  v2 = [NSBundle bundleWithIdentifier:@"com.apple.Transparency"];
  v3 = [v2 URLForResource:@"TransparencyModel" withExtension:@"momd"];

  return v3;
}

- (BOOL)loadedStore
{
  v2 = [(TransparencyManagedDataStoreController *)self persistentContainer];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)shouldMoveAsideDatabase:(id)a3
{
  v4 = a3;
  if ([(TransparencyManagedDataStoreController *)self movedDatabase])
  {
    v5 = 0;
  }

  else if ([v4 code] == 134130 || objc_msgSend(v4, "code") == 134020 || objc_msgSend(v4, "code") == 134100 || objc_msgSend(v4, "code") == 259 || objc_msgSend(v4, "code") == 256 || objc_msgSend(v4, "code") == 134110)
  {
    v5 = 1;
  }

  else
  {
    v7 = [v4 domain];
    if ([v7 isEqualToString:NSSQLiteErrorDomain])
    {
      v5 = [v4 code] == 11;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)moveAsideDatabase:(id)a3
{
  v4 = a3;
  v5 = [TransparencyFileSupport transparencyFilesPath:0];
  v6 = [v5 URLByAppendingPathComponent:@"TransparencyModel.sqlite"];
  v7 = [v6 path];

  v8 = +[NSData kt_random];
  v9 = [v8 kt_hexString];

  v10 = [v4 code];
  v41 = v9;
  v11 = [v7 stringByAppendingFormat:@".%@.%ld", v9, v10];
  if (qword_10038BD80 != -1)
  {
    sub_10024AA74();
  }

  v12 = qword_10038BD88;
  if (os_log_type_enabled(qword_10038BD88, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v47 = v7;
    v48 = 2112;
    v49 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Move Transparency store at %@ to %@", buf, 0x16u);
  }

  v13 = [NSURL fileURLWithPath:v7];
  v14 = [NSURL fileURLWithPath:v11];
  if (os_variant_allows_internal_security_policies())
  {
    v15 = [(TransparencyManagedDataStoreController *)self persistentContainer];
    v16 = [v15 persistentStoreCoordinator];
    v45 = 0;
    v17 = [v16 replacePersistentStoreAtURL:v14 destinationOptions:0 withPersistentStoreFromURL:v13 sourceOptions:0 storeType:NSSQLiteStoreType error:&v45];
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
  v20 = [(TransparencyManagedDataStoreController *)self persistentContainer];
  v21 = [v20 persistentStoreCoordinator];
  v22 = [v21 persistentStoreForURL:v13];

  v23 = v14;
  if (v22)
  {
    v24 = [(TransparencyManagedDataStoreController *)self persistentContainer];
    v25 = [v24 persistentStoreCoordinator];
    v44 = v18;
    v26 = [v25 removePersistentStore:v22 error:&v44];
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

  v29 = [(TransparencyManagedDataStoreController *)self persistentContainer];
  v30 = [v29 persistentStoreCoordinator];
  v43 = v27;
  v31 = [v30 destroyPersistentStoreAtURL:v13 withType:NSSQLiteStoreType options:0 error:&v43];
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

- (void)setUpdateDelegate:(id)a3
{
  v4 = a3;
  v5 = [(TransparencyManagedDataStoreController *)self dataStore];
  [v5 setUpdateDelegate:v4];

  v6 = [(TransparencyManagedDataStoreController *)self xpcQueueDataStore];
  [v6 setUpdateDelegate:v4];

  v7 = [(TransparencyManagedDataStoreController *)self mainQueueDataStore];
  [v7 setUpdateDelegate:v4];
}

- (void)setStaticKeyStore:(id)a3
{
  v4 = a3;
  v5 = [(TransparencyManagedDataStoreController *)self dataStore];
  [v5 setStaticKeyStore:v4];

  v6 = [(TransparencyManagedDataStoreController *)self xpcQueueDataStore];
  [v6 setStaticKeyStore:v4];

  v7 = [(TransparencyManagedDataStoreController *)self mainQueueDataStore];
  [v7 setStaticKeyStore:v4];
}

- (void)createPeerOverrides
{
  v3 = objc_alloc_init(TransparencyPeerOverrides);
  [(TransparencyManagedDataStoreController *)self setPeerOverrides:v3];

  v4 = [(TransparencyManagedDataStoreController *)self peerOverrides];
  v5 = [(TransparencyManagedDataStoreController *)self dataStore];
  [v5 setPeerOverridesStore:v4];

  v6 = [(TransparencyManagedDataStoreController *)self peerOverrides];
  v7 = [(TransparencyManagedDataStoreController *)self xpcQueueDataStore];
  [v7 setPeerOverridesStore:v6];

  v9 = [(TransparencyManagedDataStoreController *)self peerOverrides];
  v8 = [(TransparencyManagedDataStoreController *)self mainQueueDataStore];
  [v8 setPeerOverridesStore:v9];
}

- (BOOL)createDataStores:(id)a3 followup:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [[TransparencyManagedDataStore alloc] initWithController:self followup:v9 logger:v8];
  [(TransparencyManagedDataStoreController *)self setDataStore:v10];

  v11 = [(TransparencyManagedDataStoreController *)self dataStore];
  v12 = [(TransparencyManagedDataStore *)v11 populateMissingLogHeadHashes:a5];
  if (v12)
  {
    v13 = [(TransparencyManagedDataStoreController *)self dataStore];
    v14 = [v13 populateExistingRequestsToLookupTable:a5];

    if (!v14)
    {
      LOBYTE(v12) = 0;
      goto LABEL_6;
    }

    v15 = [[TransparencyManagedDataStore alloc] initWithController:self followup:v9 logger:v8];
    [(TransparencyManagedDataStoreController *)self setXpcQueueDataStore:v15];

    v11 = [[TransparencyManagedDataStore alloc] initWithController:self followup:v9 logger:v8];
    [(TransparencyManagedDataStoreController *)self setMainQueueDataStore:v11];
  }

LABEL_6:
  return v12;
}

- (int64_t)currentSequenceId:(id *)a3
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
  v11 = self;
  [v5 performBlockAndWait:v9];
  if (a3)
  {
    v6 = v15[5];
    if (v6)
    {
      *a3 = v6;
    }
  }

  v7 = v21[3];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
  return v7;
}

- (void)setupComplete
{
  v2 = [(TransparencyManagedDataStoreController *)self loadComplete];
  [v2 fulfill];
}

- (int64_t)waitSetupComplete:(int64_t)a3
{
  v4 = [(TransparencyManagedDataStoreController *)self loadComplete];
  v5 = [v4 wait:a3];

  return v5;
}

- (BOOL)saveContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17[0] = 0;
  v7 = [v6 save:v17];
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

    if (a4 && v11)
    {
      v12 = v11;
      *a4 = v11;
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
  v3 = [(TransparencyManagedDataStoreController *)self persistentContainer];
  v4 = [v3 persistentStoreCoordinator];

  if (v4)
  {
    v5 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
    [v5 setUndoManager:0];
    v6 = [(TransparencyManagedDataStoreController *)self persistentContainer];
    v7 = [v6 persistentStoreCoordinator];
    [v5 setPersistentStoreCoordinator:v7];

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