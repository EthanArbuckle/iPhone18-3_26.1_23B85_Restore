@interface StaticKeyController
+ (id)cloudPersistentStoreDescription:(id)a3;
+ (id)persistentStoreDescriptions:(id)a3;
- (BOOL)deleteStaticKey:(id)a3 error:(id *)a4;
- (BOOL)deleteStaticKeyByContactExternalURI:(id)a3 error:(id *)a4;
- (BOOL)deleteStaticKeyByContactIdentifier:(id)a3 error:(id *)a4;
- (BOOL)exportToCloud;
- (BOOL)haveContact:(id)a3 error:(id *)a4;
- (BOOL)importFromCloud;
- (BOOL)resetCloudZone:(id *)a3;
- (BOOL)setErrorCode:(int)a3 forMapping:(id)a4 error:(id *)a5;
- (BOOL)setupCloudSchema:(BOOL)a3 error:(id *)a4;
- (BOOL)shouldDoInitialCloudSyncing:(id)a3;
- (BOOL)triggerSync:(id *)a3;
- (STCConfigurationStoreDelegate)configurationStore;
- (StaticKeyIDSDelegate)idsDelegate;
- (id)dataFromHistoryToken:(id)a3;
- (id)fetchContactsSyncToken;
- (id)fetchHandles:(id)a3 moc:(id)a4 error:(id *)a5;
- (id)findStaticKeyByContact:(id)a3 error:(id *)a4;
- (id)findStaticKeyByContactExternalURI:(id)a3 error:(id *)a4;
- (id)findStaticKeyByContactIdentifier:(id)a3 error:(id *)a4;
- (id)findStaticKeyByHandle:(id)a3 error:(id *)a4;
- (id)findStaticKeyByKey:(id)a3 error:(id *)a4;
- (id)historyTokenFromData:(id)a3;
- (id)initCloudDataStore:(id)a3 idsDelegate:(id)a4 configurationStore:(id)a5 notificationCenter:(id)a6 dew:(id)a7 complete:(id)a8;
- (id)initLocalDataStore:(id)a3 idsDelegate:(id)a4 configurationStore:(id)a5 notificationCenter:(id)a6 contactStore:(id)a7 dew:(id)a8 complete:(id)a9;
- (id)lastContactSyncDate;
- (id)listStaticKey:(id *)a3;
- (id)mapStaticKeyToStoreEntry:(id)a3 handles:(id)a4 moc:(id)a5 error:(id *)a6;
- (id)staticKeyModelURL;
- (id)storeStaticKey:(id)a3 contactIdentifier:(id)a4 contactExternalIdentifier:(id)a5 mappings:(id)a6 error:(id *)a7;
- (id)validateStaticKeyStoreMappingByContactExternalURI:(id)a3 error:(id *)a4;
- (id)validateStaticKeyStoreMappingByContactIdentifer:(id)a3 error:(id *)a4;
- (id)validateStaticKeyStoreMappingByKey:(id)a3 error:(id *)a4;
- (id)validateStoreEntry:(id)a3 error:(id *)a4;
- (void)consumeContactsChangeHistory;
- (void)deleteContact:(id)a3 contactExternalURI:(id)a4;
- (void)drainContactsSyncing;
- (void)fetchPeerHandles:(id)a3 application:(id)a4 complete:(id)a5;
- (void)launchCloudSyncing:(id)a3 initialDelay:(double)a4;
- (void)peerVerificationUpdated:(id)a3;
- (void)postChangeForEntry:(id)a3 publicAccountIdentity:(id)a4;
- (void)processCoreDataHistory;
- (void)processDataOnQueue;
- (void)remoteUpdate:(id)a3;
- (void)setContactsSyncController:(id)a3;
- (void)startContactsSyncing;
- (void)storeContactsSyncToken:(id)a3;
- (void)updateContact:(id)a3;
- (void)updateLastContactSyncDate;
- (void)validatePeerResult:(id)a3 uuid:(id)a4 completionBlock:(id)a5;
@end

@implementation StaticKeyController

- (id)staticKeyModelURL
{
  v2 = [NSBundle bundleWithIdentifier:@"com.apple.Transparency"];
  v3 = [v2 URLForResource:@"StaticKeyDataModel" withExtension:@"momd"];

  return v3;
}

- (id)initCloudDataStore:(id)a3 idsDelegate:(id)a4 configurationStore:(id)a5 notificationCenter:(id)a6 dew:(id)a7 complete:(id)a8
{
  v14 = a3;
  v52 = a4;
  v53 = a5;
  v15 = a6;
  v51 = a7;
  v16 = a8;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v14;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "StaticKeyController: %@", &buf, 0xCu);
  }

  if (v14)
  {
    v17 = 0;
LABEL_5:
    v62.receiver = self;
    v62.super_class = StaticKeyController;
    v18 = [(StaticKeyController *)&v62 init];
    v19 = v18;
    if (v18)
    {
      if (v15)
      {
        [(StaticKeyController *)v18 setNotificationCenter:v15];
      }

      else
      {
        v26 = +[NSDistributedNotificationCenter defaultCenter];
        [(StaticKeyController *)v19 setNotificationCenter:v26];
      }

      [(StaticKeyController *)v19 setIdsDelegate:v52];
      [(StaticKeyController *)v19 setConfigurationStore:v53];
      v27 = objc_alloc_init(CNContactStore);
      v28 = [[KTContactsStore alloc] initWithContactStore:v27];
      [(StaticKeyController *)v19 setContactStore:v28];

      v29 = dispatch_queue_create("StaticKeyController", 0);
      [(StaticKeyController *)v19 setQueue:v29];

      v30 = [(StaticKeyController *)v19 queue];
      dispatch_suspend(v30);

      v31 = os_log_create("com.apple.Transparency", "StaticKeyDatabase");
      [(StaticKeyController *)v19 setLog:v31];

      v32 = [(StaticKeyController *)v19 log];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v14;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "setup StaticKeyController: %@", &buf, 0xCu);
      }

      objc_initWeak(&location, v19);
      v33 = [KTNearFutureScheduler alloc];
      [v51 coalesceStaticKeyUpdateInterval];
      v35 = v34;
      v59[0] = _NSConcreteStackBlock;
      v59[1] = 3221225472;
      v59[2] = sub_10004031C;
      v59[3] = &unk_1003175E0;
      objc_copyWeak(&v60, &location);
      v36 = [(KTNearFutureScheduler *)v33 initWithName:@"ProcessCoreDataNFS" delay:(v35 * 1000000000.0) keepProcessAlive:0 dependencyDescriptionCode:0 block:v59];
      [(StaticKeyController *)v19 setRemoteUpdateNFS:v36];

      v37 = [NSManagedObjectModel alloc];
      v38 = [(StaticKeyController *)v19 staticKeyModelURL];
      v39 = [v37 initWithContentsOfURL:v38];

      v40 = [StaticKeyController cloudPersistentStoreDescription:v14];
      v41 = [NSPersistentCloudKitContainer persistentContainerWithName:@"StaticKey" managedObjectModel:v39];
      [(StaticKeyController *)v19 setCloudContainer:v41];

      v42 = [(StaticKeyController *)v19 cloudContainer];
      [v42 setPersistentStoreDescriptions:v40];

      *&buf = 0;
      *(&buf + 1) = &buf;
      v66 = 0x2020000000;
      v67 = [v40 count];
      v43 = [(StaticKeyController *)v19 cloudContainer];
      [(StaticKeyController *)v19 setPersistentContainer:v43];

      v44 = [(StaticKeyController *)v19 log];
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        *v58 = 0;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "Load Core Data", v58, 2u);
      }

      v45 = [(StaticKeyController *)v19 persistentContainer];
      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = sub_10004035C;
      v54[3] = &unk_10031A0D8;
      v46 = v19;
      v55 = v46;
      p_buf = &buf;
      v56 = v16;
      [v45 loadPersistentStoresWithCompletionHandler:v54];

      self = v46;
      _Block_object_dispose(&buf, 8);

      objc_destroyWeak(&v60);
      objc_destroyWeak(&location);

      v47 = self;
      goto LABEL_33;
    }

    if (qword_10038BCF0 != -1)
    {
      sub_1002493D0();
    }

    v25 = qword_10038BCF8;
    if (os_log_type_enabled(qword_10038BCF8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "StaticKeyController: super init", &buf, 2u);
    }

    self = 0;
LABEL_27:
    v47 = 0;
    goto LABEL_33;
  }

  v64 = 0;
  v20 = [TransparencyFileSupport transparencyFilesPath:&v64];
  v17 = v64;
  if (!v20)
  {
    if (qword_10038BCF0 != -1)
    {
      sub_1002493F8();
    }

    v48 = qword_10038BCF8;
    if (os_log_type_enabled(qword_10038BCF8, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v17;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "StaticKeyController: transparencyFilesPath: %@", &buf, 0xCu);
    }

    v14 = 0;
    goto LABEL_27;
  }

  v14 = [v20 URLByAppendingPathComponent:@"StaticKey" isDirectory:1];

  v21 = +[NSFileManager defaultManager];
  v68 = NSFileProtectionKey;
  v69 = NSFileProtectionNone;
  v22 = [NSDictionary dictionaryWithObjects:&v69 forKeys:&v68 count:1];
  v63 = v17;
  v23 = [v21 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:v22 error:&v63];
  v24 = v63;

  if (v23)
  {
    v17 = v24;
    goto LABEL_5;
  }

  if (qword_10038BCF0 != -1)
  {
    sub_1002493A8();
  }

  v49 = qword_10038BCF8;
  if (os_log_type_enabled(qword_10038BCF8, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v24;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "StaticKeyController: create directory %@", &buf, 0xCu);
  }

  v47 = 0;
  v17 = v24;
LABEL_33:

  return v47;
}

- (id)initLocalDataStore:(id)a3 idsDelegate:(id)a4 configurationStore:(id)a5 notificationCenter:(id)a6 contactStore:(id)a7 dew:(id)a8 complete:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v51.receiver = self;
  v51.super_class = StaticKeyController;
  v22 = [(StaticKeyController *)&v51 init];
  v23 = v22;
  if (v22)
  {
    if (v18)
    {
      [(StaticKeyController *)v22 setNotificationCenter:v18];
    }

    else
    {
      v24 = +[NSDistributedNotificationCenter defaultCenter];
      [(StaticKeyController *)v23 setNotificationCenter:v24];
    }

    v44 = v16;
    [(StaticKeyController *)v23 setIdsDelegate:v16];
    [(StaticKeyController *)v23 setContactStore:v19];
    v25 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v26 = dispatch_queue_create("StaticKeyController", v25);
    [(StaticKeyController *)v23 setQueue:v26];

    v27 = os_log_create("com.apple.Transparency", "StaticKeyDatabase");
    [(StaticKeyController *)v23 setLog:v27];

    objc_initWeak(&location, v23);
    v28 = [KTNearFutureScheduler alloc];
    [v20 coalesceStaticKeyUpdateInterval];
    v30 = (v29 * 1000000000.0);
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_100040964;
    v48[3] = &unk_1003175E0;
    objc_copyWeak(&v49, &location);
    v31 = [(KTNearFutureScheduler *)v28 initWithName:@"ProcessCoreDataNFS" delay:v30 keepProcessAlive:0 dependencyDescriptionCode:0 block:v48];
    [(StaticKeyController *)v23 setRemoteUpdateNFS:v31];
    v43 = v19;

    v32 = [NSManagedObjectModel alloc];
    v33 = [(StaticKeyController *)v23 staticKeyModelURL];
    v34 = [v32 initWithContentsOfURL:v33];

    v35 = v15;
    v36 = [StaticKeyController persistentStoreDescriptions:v15];
    v37 = [NSPersistentContainer persistentContainerWithName:@"StaticKey" managedObjectModel:v34];
    [(StaticKeyController *)v23 setPersistentContainer:v37];

    v38 = [(StaticKeyController *)v23 persistentContainer];
    [v38 setPersistentStoreDescriptions:v36];

    v39 = [(StaticKeyController *)v23 persistentContainer];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_1000409A4;
    v45[3] = &unk_10031A100;
    v40 = v23;
    v46 = v40;
    v47 = v21;
    [v39 loadPersistentStoresWithCompletionHandler:v45];

    [(StaticKeyController *)v40 setConfigurationStore:v17];
    v41 = v40;

    objc_destroyWeak(&v49);
    objc_destroyWeak(&location);
    v15 = v35;
    v19 = v43;
    v16 = v44;
  }

  return v23;
}

- (void)processDataOnQueue
{
  v3 = [(StaticKeyController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100040AFC;
  block[3] = &unk_100316FE0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)remoteUpdate:(id)a3
{
  v4 = a3;
  v5 = [(StaticKeyController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100040C98;
  v7[3] = &unk_1003180E0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (id)historyTokenFromData:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)dataFromHistoryToken:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [NSKeyedArchiver archivedDataWithRootObject:v3 requiringSecureCoding:1 error:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)processCoreDataHistory
{
  v3 = [(StaticKeyController *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(StaticKeyController *)self persistentContainer];
  v5 = [v4 newBackgroundContext];

  v6 = +[NSMergePolicy mergeByPropertyStoreTrumpMergePolicy];
  [v5 setMergePolicy:v6];

  v7 = +[NSMutableSet set];
  v8 = [(StaticKeyController *)self configurationStore];
  v9 = [v8 getSettingsData:@"CoreDataSyncToken"];

  [(StaticKeyController *)self historyTokenFromData:v9];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1000410E0;
  v19 = v18 = &unk_10031A148;
  v20 = v5;
  v21 = self;
  v10 = v7;
  v22 = v10;
  v11 = v5;
  v12 = v19;
  [v11 performBlockAndWait:&v15];
  if ([v10 count])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v10;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "processCoreDataHistory: updating: %@", buf, 0xCu);
    }

    v13 = [(StaticKeyController *)self idsDelegate];
    v14 = [v10 allObjects];
    [v13 didUpdateStaticKeyStore:v14 application:kKTApplicationIdentifierIDS];
  }
}

- (void)setContactsSyncController:(id)a3
{
  v8 = a3;
  v4 = [(StaticKeyController *)self contacts];

  if (v4)
  {
    v5 = [(StaticKeyController *)self contacts];
    [v5 invalidateContactsSyncing];

    [(StaticKeyController *)self setContacts:0];
  }

  v6 = v8;
  if (v8)
  {
    [(StaticKeyController *)self setContacts:v8];
    v7 = [(StaticKeyController *)self contacts];
    [v7 setDelegate:self];

    v6 = v8;
  }
}

- (void)consumeContactsChangeHistory
{
  v2 = [(StaticKeyController *)self contacts];
  [v2 consumeContactsChangeHistory];
}

- (void)startContactsSyncing
{
  v2 = [(StaticKeyController *)self contacts];
  [v2 startContactsSyncing];
}

- (void)drainContactsSyncing
{
  v2 = [(StaticKeyController *)self contacts];
  [v2 drainContactsSyncing];
}

+ (id)persistentStoreDescriptions:(id)a3
{
  v3 = [a3 URLByAppendingPathComponent:@"StaticKey"];
  v4 = [NSPersistentStoreDescription persistentStoreDescriptionWithURL:v3];
  [v4 setType:NSSQLiteStoreType];
  [v4 setShouldAddStoreAsynchronously:0];
  [v4 setConfiguration:@"Default"];
  [v4 setOption:&__kCFBooleanTrue forKey:NSPersistentHistoryTrackingKey];
  v7 = v4;
  v5 = [NSArray arrayWithObjects:&v7 count:1];

  return v5;
}

+ (id)cloudPersistentStoreDescription:(id)a3
{
  v3 = [a3 URLByAppendingPathComponent:@"CloudStore"];
  v4 = [NSPersistentStoreDescription persistentStoreDescriptionWithURL:v3];
  [v4 setConfiguration:@"Cloud"];
  [v4 setShouldAddStoreAsynchronously:0];
  v5 = [NSPersistentCloudKitContainerOptions alloc];
  v6 = [v5 initWithContainerIdentifier:off_100382240];
  [v6 setUseDeviceToDeviceEncryption:1];
  [v6 setApsConnectionMachServiceName:@"com.apple.aps.transparencyd-coredata"];
  [v4 setCloudKitContainerOptions:v6];
  [v4 setOption:&__kCFBooleanTrue forKey:NSPersistentStoreRemoteChangeNotificationPostOptionKey];
  [v4 setOption:&__kCFBooleanTrue forKey:NSPersistentHistoryTrackingKey];
  v9 = v4;
  v7 = [NSArray arrayWithObjects:&v9 count:1];

  return v7;
}

- (BOOL)importFromCloud
{
  v3 = [(StaticKeyController *)self queue];
  dispatch_assert_queue_V2(v3);

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v4 = [(StaticKeyController *)self persistentContainer];
  v5 = [v4 newBackgroundContext];

  v6 = +[NSMergePolicy mergeByPropertyStoreTrumpMergePolicy];
  [v5 setMergePolicy:v6];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100041B70;
  v9[3] = &unk_10031A198;
  v11 = &v12;
  v9[4] = self;
  v7 = v5;
  v10 = v7;
  [v7 performBlockAndWait:v9];
  LOBYTE(v5) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v5;
}

- (BOOL)exportToCloud
{
  v3 = [(StaticKeyController *)self queue];
  dispatch_assert_queue_V2(v3);

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v4 = [(StaticKeyController *)self persistentContainer];
  v5 = [v4 newBackgroundContext];

  v6 = +[NSMergePolicy mergeByPropertyStoreTrumpMergePolicy];
  [v5 setMergePolicy:v6];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100041ED0;
  v9[3] = &unk_10031A198;
  v11 = &v12;
  v9[4] = self;
  v7 = v5;
  v10 = v7;
  [v7 performBlockAndWait:v9];
  LOBYTE(v5) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v5;
}

- (BOOL)triggerSync:(id *)a3
{
  v4 = [(StaticKeyController *)self cloudContainer];

  if (v4)
  {
    v5 = [(StaticKeyController *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000421D4;
    block[3] = &unk_100316FE0;
    block[4] = self;
    dispatch_sync(v5, block);
  }

  else
  {
    v6 = [(StaticKeyController *)self log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100249528();
    }
  }

  return v4 != 0;
}

- (BOOL)setupCloudSchema:(BOOL)a3 error:(id *)a4
{
  v5 = a3;
  v7 = [(StaticKeyController *)self cloudContainer];

  if (v7)
  {
    if (v5)
    {
      v8 = 6;
    }

    else
    {
      v8 = 0;
    }

    v9 = [(StaticKeyController *)self cloudContainer];
    v15 = 0;
    v10 = [v9 initializeCloudKitSchemaWithOptions:v8 error:&v15];
    v11 = v15;

    if ((v10 & 1) == 0)
    {
      v12 = [(StaticKeyController *)self log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100249564();
      }

      if (a4)
      {
        v13 = v11;
        *a4 = v11;
      }
    }
  }

  else
  {
    v11 = [(StaticKeyController *)self log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100249528();
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)resetCloudZone:(id *)a3
{
  v4 = [(StaticKeyController *)self cloudContainer];

  v5 = [(StaticKeyController *)self log];
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "reset zone start", buf, 2u);
    }

    v7 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
    v8 = [(StaticKeyController *)self cloudContainer];
    v9 = [v8 persistentStoreCoordinator];
    [v7 setPersistentStoreCoordinator:v9];

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100042490;
    v11[3] = &unk_1003180E0;
    v11[4] = self;
    v12 = v7;
    v6 = v7;
    [v6 performBlockAndWait:v11];
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100249528();
  }

  return v4 != 0;
}

- (id)fetchHandles:(id)a3 moc:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = +[KTCoreDataSTHandle fetchRequest];
  v11 = [NSPredicate predicateWithFormat:@"publicIdentity == %@", v9];

  [v10 setPredicate:v11];
  v19 = 0;
  v12 = [v8 executeFetchRequest:v10 error:&v19];

  v13 = v19;
  if (v12)
  {
    v14 = [NSMutableSet setWithArray:v12];
  }

  else
  {
    v15 = [(StaticKeyController *)self log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "fetchHandles failed with: %@", buf, 0xCu);
    }

    if (a5)
    {
      v16 = v13;
      *a5 = v13;
    }

    v14 = +[NSMutableSet set];
  }

  v17 = v14;

  return v17;
}

- (id)storeStaticKey:(id)a3 contactIdentifier:(id)a4 contactExternalIdentifier:(id)a5 mappings:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [(StaticKeyController *)self fetchContactsSyncToken];

  if (!v16)
  {
    if (qword_10038BCF0 != -1)
    {
      sub_100249644();
    }

    v17 = qword_10038BCF8;
    if (os_log_type_enabled(qword_10038BCF8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "storeStaticKey no previously existing sync token", buf, 2u);
    }

    v18 = [(StaticKeyController *)self contactStore];
    v19 = [(StaticKeyController *)self configurationStore];
    [v18 fetchAndStoreContactsSyncTokenWithConfigStore:v19];
  }

  *buf = 0;
  v57 = buf;
  v58 = 0x3032000000;
  v59 = sub_100042D8C;
  v60 = sub_100042D9C;
  v61 = 0;
  v20 = [(StaticKeyController *)self persistentContainer];
  v21 = [v20 newBackgroundContext];

  v22 = +[NSMergePolicy mergeByPropertyStoreTrumpMergePolicy];
  [v21 setMergePolicy:v22];

  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = sub_100042D8C;
  v54 = sub_100042D9C;
  v55 = 0;
  v23 = [v12 ktStorageString];
  v24 = [(StaticKeyController *)self log];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [v15 componentsJoinedByString:{@", "}];
    *v62 = 138412802;
    v63 = v12;
    v64 = 2112;
    v65 = v23;
    v66 = 2112;
    v67 = v25;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "storeStaticKey identity: %@ %@ mappings: %@", v62, 0x20u);
  }

  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_100042DA4;
  v41[3] = &unk_10031A208;
  v26 = v14;
  v42 = v26;
  v27 = v13;
  v43 = v27;
  v28 = v21;
  v44 = v28;
  v48 = &v50;
  v29 = v23;
  v45 = v29;
  v46 = self;
  v30 = v15;
  v47 = v30;
  v49 = buf;
  [v28 performBlockAndWait:v41];
  v31 = *(v57 + 5);
  if (!a7 || v31)
  {
    v32 = [v31 contactExternalURI];
    v33 = [*(v57 + 5) publicKeyID];
    v34 = [v33 publicAccountIdentity];
    [(StaticKeyController *)self postChangeForEntry:v32 publicAccountIdentity:v34];

    v35 = [(StaticKeyController *)self idsDelegate];
    v36 = [*(v57 + 5) mappings];
    [v35 didUpdateStaticKeyStore:v36 application:kKTApplicationIdentifierIDS];
  }

  else
  {
    *a7 = v51[5];
  }

  v37 = [(StaticKeyController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100043574;
  block[3] = &unk_100316FE0;
  block[4] = self;
  dispatch_async(v37, block);

  v38 = *(v57 + 5);
  _Block_object_dispose(&v50, 8);

  _Block_object_dispose(buf, 8);

  return v38;
}

- (void)postChangeForEntry:(id)a3 publicAccountIdentity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(StaticKeyController *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "postChangeToEntry externalURI: %@ publicKey: %@", buf, 0x16u);
  }

  if (v6 && v7)
  {
    v11[0] = kTransparencyStaticKeyStoreContactIdentifier;
    v11[1] = kTransparencyStaticKeyStorePublicIdentifydentifier;
    v12[0] = v6;
    v12[1] = v7;
    v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
    v10 = [(StaticKeyController *)self notificationCenter];
    [v10 postNotificationName:kTransparencyStaticKeyStoreNotification object:0 userInfo:v9 deliverImmediately:1];
  }
}

- (id)mapStaticKeyToStoreEntry:(id)a3 handles:(id)a4 moc:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = [v9 publicIdentity];
  if (v11)
  {
    v44 = 0;
    v12 = [KTAccountPublicID ktAccountPublicIDWithStorageString:v11 error:&v44];
    v13 = v44;
    v14 = v13;
    if (v12)
    {
      v37 = v13;
      v38 = v11;
      v15 = objc_alloc_init(KTIDStaticKeyStoreEntry);
      v36 = v12;
      [v15 setPublicKeyID:v12];
      v16 = [v9 contactIdentifier];
      [v15 setContactIdentifier:v16];

      v39 = v9;
      v17 = [v9 contactExternalIdentifier];
      v35 = v15;
      [v15 setContactServerPath:v17];

      v18 = +[NSMutableArray array];
      v19 = +[NSMutableDictionary dictionary];
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v20 = v10;
      v21 = [v20 countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v41;
        do
        {
          for (i = 0; i != v22; i = i + 1)
          {
            if (*v41 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v40 + 1) + 8 * i);
            v26 = [v25 idsID];

            if (v26)
            {
              v27 = objc_alloc_init(KTIDStaticKeyStoreHandle);
              [v27 setValidationDate:0];
              [v27 setValid:0];
              v28 = [v25 idsID];
              [v27 setHandle:v28];

              [v27 setErrorCode:{objc_msgSend(v25, "error")}];
              v29 = [v25 idsID];
              [v19 setObject:v27 forKeyedSubscript:v29];

              v30 = [v25 idsID];
              [v18 addObject:v30];
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v40 objects:v45 count:16];
        }

        while (v22);
      }

      v31 = v35;
      if ([v18 count])
      {
        [v35 setMappings:v18];
        [v35 setHandles:v19];
      }

      v9 = v39;
      v14 = v37;
      v11 = v38;
      v12 = v36;
    }

    else
    {
      v32 = [(StaticKeyController *)self log];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v47 = v14;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Failed to create KTAccountPublicID: %@", buf, 0xCu);
      }

      if (a6)
      {
        v33 = v14;
        v31 = 0;
        *a6 = v14;
      }

      else
      {
        v31 = 0;
      }
    }
  }

  else
  {
    v14 = [(StaticKeyController *)self log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "failed to create public identity string", buf, 2u);
    }

    v31 = 0;
  }

  return v31;
}

- (id)findStaticKeyByKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_100042D8C;
  v32 = sub_100042D9C;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100042D8C;
  v26 = sub_100042D9C;
  v27 = 0;
  v7 = [v6 ktStorageString];
  if (v7)
  {
    v8 = [(StaticKeyController *)self persistentContainer];
    v9 = [v8 newBackgroundContext];

    v10 = +[NSMergePolicy mergeByPropertyStoreTrumpMergePolicy];
    [v9 setMergePolicy:v10];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100043CC0;
    v16[3] = &unk_10031A230;
    v17 = v7;
    v11 = v9;
    v18 = v11;
    v19 = self;
    v20 = &v28;
    v21 = &v22;
    [v11 performBlockAndWait:v16];
    v12 = v23[5];
    if (!v12)
    {
      if (a4)
      {
        v13 = v29[5];
        if (v13)
        {
          *a4 = v13;
          v12 = v23[5];
        }
      }
    }

    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v14;
}

- (id)findStaticKeyByHandle:(id)a3 error:(id *)a4
{
  v6 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_100042D8C;
  v31 = sub_100042D9C;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100042D8C;
  v25 = sub_100042D9C;
  v26 = 0;
  v7 = [(StaticKeyController *)self persistentContainer];
  v8 = [v7 newBackgroundContext];

  v9 = +[NSMergePolicy mergeByPropertyStoreTrumpMergePolicy];
  [v8 setMergePolicy:v9];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100044020;
  v15[3] = &unk_10031A230;
  v10 = v6;
  v16 = v10;
  v11 = v8;
  v17 = v11;
  v18 = self;
  v19 = &v27;
  v20 = &v21;
  [v11 performBlockAndWait:v15];
  if (a4)
  {
    v12 = v28[5];
    if (v12)
    {
      *a4 = v12;
    }
  }

  v13 = v22[5];

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v13;
}

- (BOOL)shouldDoInitialCloudSyncing:(id)a3
{
  v4 = a3;
  v5 = [(StaticKeyController *)self configurationStore];

  if (v5)
  {
    v6 = [(StaticKeyController *)self configurationStore];
    v7 = [v6 getSettingsDate:@"lastCKSyncData"];

    if (v4 && v7)
    {
      if (qword_10038BCF0 != -1)
      {
        sub_100249658();
      }

      v8 = qword_10038BCF8;
      if (os_log_type_enabled(qword_10038BCF8, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138543362;
        v18 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "cloud sync: last sync: %{public}@", &v17, 0xCu);
      }

      v9 = [v4 dateByAddingTimeInterval:-604800.0];
      v10 = [v7 compare:v9];
      v11 = v10 == -1;
      if (v10 != -1)
      {
        goto LABEL_24;
      }

      if (qword_10038BCF0 != -1)
      {
        sub_10024966C();
      }

      v12 = qword_10038BCF8;
      if (os_log_type_enabled(qword_10038BCF8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "7d cloud sync setting", &v17, 2u);
      }

      v13 = [(StaticKeyController *)self configurationStore];
      [v13 setSettingsDate:@"lastCKSyncData" date:v4];
    }

    else
    {
      if (qword_10038BCF0 != -1)
      {
        sub_100249694();
      }

      v15 = qword_10038BCF8;
      if (os_log_type_enabled(qword_10038BCF8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Initial cloud sync setting", &v17, 2u);
      }

      v9 = [(StaticKeyController *)self configurationStore];
      [v9 setSettingsDate:@"lastCKSyncData" date:v4];
    }

    v11 = 1;
LABEL_24:

    goto LABEL_25;
  }

  if (qword_10038BCF0 != -1)
  {
    sub_1002496A8();
  }

  v14 = qword_10038BCF8;
  v11 = 0;
  if (os_log_type_enabled(qword_10038BCF8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "No cloud sync setting", &v17, 2u);
    v11 = 0;
  }

LABEL_25:

  return v11;
}

- (void)launchCloudSyncing:(id)a3 initialDelay:(double)a4
{
  v6 = a3;
  if (a4 >= 0.0 && [(StaticKeyController *)self shouldDoInitialCloudSyncing:v6])
  {
    v7 = os_transaction_create();
    v8 = dispatch_time(0, (a4 * 1000000000.0));
    v9 = [(StaticKeyController *)self queue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000447D0;
    v12[3] = &unk_1003180E0;
    v12[4] = self;
    v13 = v7;
    v10 = v7;
    dispatch_after(v8, v9, v12);
  }

  else
  {
    if (qword_10038BCF0 != -1)
    {
      sub_1002496BC();
    }

    v11 = qword_10038BCF8;
    if (os_log_type_enabled(qword_10038BCF8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Skipping initial cloud sync", buf, 2u);
    }
  }
}

- (id)findStaticKeyByContactIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_100042D8C;
  v31 = sub_100042D9C;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100042D8C;
  v25 = sub_100042D9C;
  v26 = 0;
  v7 = [(StaticKeyController *)self persistentContainer];
  v8 = [v7 newBackgroundContext];

  v9 = +[NSMergePolicy mergeByPropertyStoreTrumpMergePolicy];
  [v8 setMergePolicy:v9];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100044AA0;
  v15[3] = &unk_10031A230;
  v10 = v6;
  v16 = v10;
  v11 = v8;
  v17 = v11;
  v18 = self;
  v19 = &v27;
  v20 = &v21;
  [v11 performBlockAndWait:v15];
  if (a4)
  {
    v12 = v28[5];
    if (v12)
    {
      *a4 = v12;
    }
  }

  v13 = v22[5];

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v13;
}

- (id)findStaticKeyByContactExternalURI:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = sub_100042D8C;
    v30 = sub_100042D9C;
    v31 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = sub_100042D8C;
    v24 = sub_100042D9C;
    v25 = 0;
    v7 = [(StaticKeyController *)self persistentContainer];
    v8 = [v7 newBackgroundContext];

    v9 = +[NSMergePolicy mergeByPropertyStoreTrumpMergePolicy];
    [v8 setMergePolicy:v9];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100044E28;
    v14[3] = &unk_10031A230;
    v15 = v6;
    v10 = v8;
    v16 = v10;
    v17 = self;
    v18 = &v26;
    v19 = &v20;
    [v10 performBlockAndWait:v14];
    if (a4)
    {
      v11 = v27[5];
      if (v11)
      {
        *a4 = v11;
      }
    }

    v12 = v21[5];

    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(&v26, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)validateStaticKeyStoreMappingByKey:(id)a3 error:(id *)a4
{
  v6 = [(StaticKeyController *)self findStaticKeyByKey:a3 error:?];
  if (v6)
  {
    v7 = [(StaticKeyController *)self validateStoreEntry:v6 error:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)validateStaticKeyStoreMappingByContactIdentifer:(id)a3 error:(id *)a4
{
  v6 = [(StaticKeyController *)self findStaticKeyByContactIdentifier:a3 error:?];
  if (v6)
  {
    v7 = [(StaticKeyController *)self validateStoreEntry:v6 error:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)validateStaticKeyStoreMappingByContactExternalURI:(id)a3 error:(id *)a4
{
  v6 = [(StaticKeyController *)self findStaticKeyByContactExternalURI:a3 error:?];
  if (v6)
  {
    v7 = [(StaticKeyController *)self validateStoreEntry:v6 error:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)deleteStaticKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v7 = [(StaticKeyController *)self persistentContainer];
  v8 = [v7 newBackgroundContext];

  v9 = +[NSMergePolicy mergeByPropertyStoreTrumpMergePolicy];
  [v8 setMergePolicy:v9];

  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_100042D8C;
  v29 = sub_100042D9C;
  v30 = 0;
  v10 = +[NSMutableSet set];
  v11 = [v6 ktStorageString];
  v12 = v11;
  if (v11)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100045378;
    v19[3] = &unk_10031A230;
    v20 = v11;
    v21 = v8;
    v23 = &v25;
    v13 = v10;
    v22 = v13;
    v24 = &v31;
    [v21 performBlockAndWait:v19];
    if (a4)
    {
      v14 = v26[5];
      if (v14)
      {
        *a4 = v14;
      }
    }

    if ([v13 count])
    {
      v15 = [(StaticKeyController *)self idsDelegate];
      v16 = [v13 allObjects];
      [v15 didUpdateStaticKeyStore:v16 application:kKTApplicationIdentifierIDS];
    }

    v17 = *(v32 + 24);
  }

  else
  {
    v17 = 0;
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v17 & 1;
}

- (BOOL)deleteStaticKeyByContactIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v7 = [(StaticKeyController *)self persistentContainer];
  v8 = [v7 newBackgroundContext];

  v9 = +[NSMergePolicy mergeByPropertyStoreTrumpMergePolicy];
  [v8 setMergePolicy:v9];

  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_100042D8C;
  v29 = sub_100042D9C;
  v30 = 0;
  v10 = +[NSMutableSet set];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000458C4;
  v19[3] = &unk_10031A230;
  v11 = v6;
  v20 = v11;
  v12 = v8;
  v21 = v12;
  v23 = &v25;
  v13 = v10;
  v22 = v13;
  v24 = &v31;
  [v12 performBlockAndWait:v19];
  if (a4)
  {
    v14 = v26[5];
    if (v14)
    {
      *a4 = v14;
    }
  }

  if ([v13 count])
  {
    v15 = [(StaticKeyController *)self idsDelegate];
    v16 = [v13 allObjects];
    [v15 didUpdateStaticKeyStore:v16 application:kKTApplicationIdentifierIDS];
  }

  v17 = *(v32 + 24);

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v17;
}

- (BOOL)deleteStaticKeyByContactExternalURI:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v7 = [(StaticKeyController *)self persistentContainer];
    v8 = [v7 newBackgroundContext];

    v9 = +[NSMergePolicy mergeByPropertyStoreTrumpMergePolicy];
    [v8 setMergePolicy:v9];

    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = sub_100042D8C;
    v28 = sub_100042D9C;
    v29 = 0;
    v10 = +[NSMutableSet set];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100045E64;
    v18[3] = &unk_10031A230;
    v19 = v6;
    v11 = v8;
    v20 = v11;
    v22 = &v24;
    v12 = v10;
    v21 = v12;
    v23 = &v30;
    [v11 performBlockAndWait:v18];
    if (a4)
    {
      v13 = v25[5];
      if (v13)
      {
        *a4 = v13;
      }
    }

    if ([v12 count])
    {
      v14 = [(StaticKeyController *)self idsDelegate];
      v15 = [v12 allObjects];
      [v14 didUpdateStaticKeyStore:v15 application:kKTApplicationIdentifierIDS];
    }

    v16 = *(v31 + 24);

    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(&v30, 8);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

- (id)listStaticKey:(id *)a3
{
  v5 = objc_alloc_init(NSMutableArray);
  v6 = [(StaticKeyController *)self persistentContainer];
  v7 = [v6 newBackgroundContext];

  v8 = +[NSMergePolicy mergeByPropertyStoreTrumpMergePolicy];
  [v7 setMergePolicy:v8];

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100042D8C;
  v23 = sub_100042D9C;
  v24 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100046354;
  v15[3] = &unk_100317DE0;
  v9 = v7;
  v16 = v9;
  v18 = &v19;
  v10 = v5;
  v17 = v10;
  [v9 performBlockAndWait:v15];
  if (a3)
  {
    v11 = v20[5];
    if (v11)
    {
      *a3 = v11;
    }
  }

  v12 = v17;
  v13 = v10;

  _Block_object_dispose(&v19, 8);

  return v13;
}

- (BOOL)setErrorCode:(int)a3 forMapping:(id)a4 error:(id *)a5
{
  v8 = a4;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100042D8C;
  v27 = sub_100042D9C;
  v28 = 0;
  v9 = [(StaticKeyController *)self persistentContainer];
  v10 = [v9 newBackgroundContext];

  v11 = +[NSMergePolicy mergeByPropertyStoreTrumpMergePolicy];
  [v10 setMergePolicy:v11];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000466D8;
  v17[3] = &unk_10031A338;
  v12 = v8;
  v18 = v12;
  v13 = v10;
  v19 = v13;
  v20 = &v23;
  v22 = a3;
  v21 = &v29;
  [v13 performBlockAndWait:v17];
  if (a5)
  {
    v14 = v24[5];
    if (v14)
    {
      *a5 = v14;
    }
  }

  v15 = *(v30 + 24);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v15;
}

- (BOOL)haveContact:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(StaticKeyController *)self contactStore];
  LOBYTE(a4) = [v7 haveContact:v6 error:a4];

  return a4;
}

- (id)lastContactSyncDate
{
  v2 = [(StaticKeyController *)self configurationStore];
  v3 = [v2 getSettingsDate:@"lastContactSyncDate"];

  return v3;
}

- (void)updateLastContactSyncDate
{
  v3 = [(StaticKeyController *)self configurationStore];
  v2 = +[NSDate date];
  [v3 setSettingsDate:@"lastContactSyncDate" date:v2];
}

- (id)fetchContactsSyncToken
{
  v2 = [(StaticKeyController *)self configurationStore];
  v3 = [v2 getSettingsData:@"lastContactSyncData"];

  return v3;
}

- (void)storeContactsSyncToken:(id)a3
{
  v4 = a3;
  v5 = [(StaticKeyController *)self configurationStore];
  [v5 setSettingsData:@"lastContactSyncData" data:v4];
}

- (void)fetchPeerHandles:(id)a3 application:(id)a4 complete:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(StaticKeyController *)self idsDelegate];
  v12 = v11;
  if (v11)
  {
    [v11 fetchPeerHandles:v8 application:v9 complete:v10];
  }

  else
  {
    v13 = [(StaticKeyController *)self log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1002496E4();
    }

    (*(v10 + 2))(v10, 0, 0);
  }
}

- (void)validatePeerResult:(id)a3 uuid:(id)a4 completionBlock:(id)a5
{
  v5 = a5;
  v6 = objc_alloc_init(KTVerifierResult);
  [v6 setSucceed:0];
  v5[2](v5, v6, 0);
}

- (id)validateStoreEntry:(id)a3 error:(id *)a4
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100042D8C;
  v25 = sub_100042D9C;
  v5 = a3;
  v26 = v5;
  if (qword_10038BCF0 != -1)
  {
    sub_100249720();
  }

  v6 = qword_10038BCF8;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 mappings];
    v8 = [v7 componentsJoinedByString:{@", "}];
    *buf = 141558274;
    v28 = 1752392040;
    v29 = 2112;
    v30 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "validateStoreEntry looking for handles: %{mask.hash}@", buf, 0x16u);
  }

  v9 = dispatch_semaphore_create(0);
  v10 = kKTApplicationIdentifierIDS;
  v11 = [v5 mappings];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100046E44;
  v17[3] = &unk_10031A3E0;
  v12 = v5;
  v18 = v12;
  v20 = &v21;
  v13 = v9;
  v19 = v13;
  [(StaticKeyController *)self fetchPeerHandles:v11 application:v10 complete:v17];

  v14 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v13, v14);
  v15 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v15;
}

- (void)peerVerificationUpdated:(id)a3
{
  v3 = [(StaticKeyController *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "StaticKeyController updating verification", v4, 2u);
  }
}

- (id)findStaticKeyByContact:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 externalURI];
  v15 = 0;
  v8 = [(StaticKeyController *)self findStaticKeyByContactExternalURI:v7 error:&v15];
  v9 = v15;

  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v11 = [v6 identifier];
    v14 = v9;
    v8 = [(StaticKeyController *)self findStaticKeyByContactIdentifier:v11 error:&v14];
    v10 = v14;

    if (a4 && !v8 && v10)
    {
      v12 = v10;
      v8 = 0;
      *a4 = v10;
    }
  }

  return v8;
}

- (void)updateContact:(id)a3
{
  v4 = a3;
  v5 = [KeyTransparencyContactMapping mapContactsToIDS:v4];
  v6 = [(StaticKeyController *)self log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v29 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "updateContact contactMappings: %@", buf, 0xCu);
  }

  v27 = 0;
  v7 = [(StaticKeyController *)self findStaticKeyByContact:v4 error:&v27];

  v8 = v27;
  if (v7)
  {
    v9 = [v7 mappings];
    v10 = [NSSet setWithArray:v9];

    if ([v10 isEqual:v5])
    {
      v11 = [(StaticKeyController *)self log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v12 = "updateContact mappings match";
LABEL_17:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, v12, buf, 2u);
        goto LABEL_18;
      }

      goto LABEL_18;
    }

    if ([v5 count])
    {
      v23 = [v7 publicKeyID];
      v13 = [v7 contactIdentifier];
      v14 = [v7 contactExternalURI];
      v15 = [v5 allObjects];
      v24 = v8;
      v16 = [(StaticKeyController *)self storeStaticKey:v23 contactIdentifier:v13 contactExternalIdentifier:v14 mappings:v15 error:&v24];
      v17 = v24;

      if (!v16)
      {
        v11 = [(StaticKeyController *)self log];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1002497AC();
        }

        v8 = v17;
        goto LABEL_18;
      }

LABEL_15:
      v8 = v17;
      v11 = [(StaticKeyController *)self log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v12 = "updateContact complete";
        goto LABEL_17;
      }

LABEL_18:

      goto LABEL_19;
    }

    v18 = [v7 contactExternalURI];
    v26 = v8;
    v19 = [(StaticKeyController *)self deleteStaticKeyByContactExternalURI:v18 error:&v26];
    v17 = v26;

    if (v19)
    {
      goto LABEL_15;
    }

    v20 = [(StaticKeyController *)self log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10024981C();
    }

    v21 = [v7 contactIdentifier];
    v25 = v17;
    v22 = [(StaticKeyController *)self deleteStaticKeyByContactIdentifier:v21 error:&v25];
    v8 = v25;

    if ((v22 & 1) == 0)
    {
      v11 = [(StaticKeyController *)self log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10024981C();
      }

      goto LABEL_18;
    }
  }

  else
  {
    v10 = [(StaticKeyController *)self log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10024988C();
    }
  }

LABEL_19:
}

- (void)deleteContact:(id)a3 contactExternalURI:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v15 = 0;
    v8 = [(StaticKeyController *)self deleteStaticKeyByContactExternalURI:v7 error:&v15];
    v9 = v15;
    v10 = v9;
    if (v8)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = [(StaticKeyController *)self log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_1002498FC();
  }

  v14 = v9;
  v12 = [(StaticKeyController *)self deleteStaticKeyByContactIdentifier:v6 error:&v14];
  v10 = v14;

  if ((v12 & 1) == 0)
  {
    v13 = [(StaticKeyController *)self log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100249970();
    }
  }

LABEL_11:
}

- (STCConfigurationStoreDelegate)configurationStore
{
  WeakRetained = objc_loadWeakRetained(&self->_configurationStore);

  return WeakRetained;
}

- (StaticKeyIDSDelegate)idsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_idsDelegate);

  return WeakRetained;
}

@end