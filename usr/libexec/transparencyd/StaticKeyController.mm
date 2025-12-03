@interface StaticKeyController
+ (id)cloudPersistentStoreDescription:(id)description;
+ (id)persistentStoreDescriptions:(id)descriptions;
- (BOOL)deleteStaticKey:(id)key error:(id *)error;
- (BOOL)deleteStaticKeyByContactExternalURI:(id)i error:(id *)error;
- (BOOL)deleteStaticKeyByContactIdentifier:(id)identifier error:(id *)error;
- (BOOL)exportToCloud;
- (BOOL)haveContact:(id)contact error:(id *)error;
- (BOOL)importFromCloud;
- (BOOL)resetCloudZone:(id *)zone;
- (BOOL)setErrorCode:(int)code forMapping:(id)mapping error:(id *)error;
- (BOOL)setupCloudSchema:(BOOL)schema error:(id *)error;
- (BOOL)shouldDoInitialCloudSyncing:(id)syncing;
- (BOOL)triggerSync:(id *)sync;
- (STCConfigurationStoreDelegate)configurationStore;
- (StaticKeyIDSDelegate)idsDelegate;
- (id)dataFromHistoryToken:(id)token;
- (id)fetchContactsSyncToken;
- (id)fetchHandles:(id)handles moc:(id)moc error:(id *)error;
- (id)findStaticKeyByContact:(id)contact error:(id *)error;
- (id)findStaticKeyByContactExternalURI:(id)i error:(id *)error;
- (id)findStaticKeyByContactIdentifier:(id)identifier error:(id *)error;
- (id)findStaticKeyByHandle:(id)handle error:(id *)error;
- (id)findStaticKeyByKey:(id)key error:(id *)error;
- (id)historyTokenFromData:(id)data;
- (id)initCloudDataStore:(id)store idsDelegate:(id)delegate configurationStore:(id)configurationStore notificationCenter:(id)center dew:(id)dew complete:(id)complete;
- (id)initLocalDataStore:(id)store idsDelegate:(id)delegate configurationStore:(id)configurationStore notificationCenter:(id)center contactStore:(id)contactStore dew:(id)dew complete:(id)complete;
- (id)lastContactSyncDate;
- (id)listStaticKey:(id *)key;
- (id)mapStaticKeyToStoreEntry:(id)entry handles:(id)handles moc:(id)moc error:(id *)error;
- (id)staticKeyModelURL;
- (id)storeStaticKey:(id)key contactIdentifier:(id)identifier contactExternalIdentifier:(id)externalIdentifier mappings:(id)mappings error:(id *)error;
- (id)validateStaticKeyStoreMappingByContactExternalURI:(id)i error:(id *)error;
- (id)validateStaticKeyStoreMappingByContactIdentifer:(id)identifer error:(id *)error;
- (id)validateStaticKeyStoreMappingByKey:(id)key error:(id *)error;
- (id)validateStoreEntry:(id)entry error:(id *)error;
- (void)consumeContactsChangeHistory;
- (void)deleteContact:(id)contact contactExternalURI:(id)i;
- (void)drainContactsSyncing;
- (void)fetchPeerHandles:(id)handles application:(id)application complete:(id)complete;
- (void)launchCloudSyncing:(id)syncing initialDelay:(double)delay;
- (void)peerVerificationUpdated:(id)updated;
- (void)postChangeForEntry:(id)entry publicAccountIdentity:(id)identity;
- (void)processCoreDataHistory;
- (void)processDataOnQueue;
- (void)remoteUpdate:(id)update;
- (void)setContactsSyncController:(id)controller;
- (void)startContactsSyncing;
- (void)storeContactsSyncToken:(id)token;
- (void)updateContact:(id)contact;
- (void)updateLastContactSyncDate;
- (void)validatePeerResult:(id)result uuid:(id)uuid completionBlock:(id)block;
@end

@implementation StaticKeyController

- (id)staticKeyModelURL
{
  v2 = [NSBundle bundleWithIdentifier:@"com.apple.Transparency"];
  v3 = [v2 URLForResource:@"StaticKeyDataModel" withExtension:@"momd"];

  return v3;
}

- (id)initCloudDataStore:(id)store idsDelegate:(id)delegate configurationStore:(id)configurationStore notificationCenter:(id)center dew:(id)dew complete:(id)complete
{
  storeCopy = store;
  delegateCopy = delegate;
  configurationStoreCopy = configurationStore;
  centerCopy = center;
  dewCopy = dew;
  completeCopy = complete;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = storeCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "StaticKeyController: %@", &buf, 0xCu);
  }

  if (storeCopy)
  {
    v17 = 0;
LABEL_5:
    v62.receiver = self;
    v62.super_class = StaticKeyController;
    v18 = [(StaticKeyController *)&v62 init];
    v19 = v18;
    if (v18)
    {
      if (centerCopy)
      {
        [(StaticKeyController *)v18 setNotificationCenter:centerCopy];
      }

      else
      {
        v26 = +[NSDistributedNotificationCenter defaultCenter];
        [(StaticKeyController *)v19 setNotificationCenter:v26];
      }

      [(StaticKeyController *)v19 setIdsDelegate:delegateCopy];
      [(StaticKeyController *)v19 setConfigurationStore:configurationStoreCopy];
      v27 = objc_alloc_init(CNContactStore);
      v28 = [[KTContactsStore alloc] initWithContactStore:v27];
      [(StaticKeyController *)v19 setContactStore:v28];

      v29 = dispatch_queue_create("StaticKeyController", 0);
      [(StaticKeyController *)v19 setQueue:v29];

      queue = [(StaticKeyController *)v19 queue];
      dispatch_suspend(queue);

      v31 = os_log_create("com.apple.Transparency", "StaticKeyDatabase");
      [(StaticKeyController *)v19 setLog:v31];

      v32 = [(StaticKeyController *)v19 log];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = storeCopy;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "setup StaticKeyController: %@", &buf, 0xCu);
      }

      objc_initWeak(&location, v19);
      v33 = [KTNearFutureScheduler alloc];
      [dewCopy coalesceStaticKeyUpdateInterval];
      v35 = v34;
      v59[0] = _NSConcreteStackBlock;
      v59[1] = 3221225472;
      v59[2] = sub_10004031C;
      v59[3] = &unk_1003175E0;
      objc_copyWeak(&v60, &location);
      v36 = [(KTNearFutureScheduler *)v33 initWithName:@"ProcessCoreDataNFS" delay:(v35 * 1000000000.0) keepProcessAlive:0 dependencyDescriptionCode:0 block:v59];
      [(StaticKeyController *)v19 setRemoteUpdateNFS:v36];

      v37 = [NSManagedObjectModel alloc];
      staticKeyModelURL = [(StaticKeyController *)v19 staticKeyModelURL];
      v39 = [v37 initWithContentsOfURL:staticKeyModelURL];

      v40 = [StaticKeyController cloudPersistentStoreDescription:storeCopy];
      v41 = [NSPersistentCloudKitContainer persistentContainerWithName:@"StaticKey" managedObjectModel:v39];
      [(StaticKeyController *)v19 setCloudContainer:v41];

      cloudContainer = [(StaticKeyController *)v19 cloudContainer];
      [cloudContainer setPersistentStoreDescriptions:v40];

      *&buf = 0;
      *(&buf + 1) = &buf;
      v66 = 0x2020000000;
      v67 = [v40 count];
      cloudContainer2 = [(StaticKeyController *)v19 cloudContainer];
      [(StaticKeyController *)v19 setPersistentContainer:cloudContainer2];

      v44 = [(StaticKeyController *)v19 log];
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        *v58 = 0;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "Load Core Data", v58, 2u);
      }

      persistentContainer = [(StaticKeyController *)v19 persistentContainer];
      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = sub_10004035C;
      v54[3] = &unk_10031A0D8;
      v46 = v19;
      v55 = v46;
      p_buf = &buf;
      v56 = completeCopy;
      [persistentContainer loadPersistentStoresWithCompletionHandler:v54];

      self = v46;
      _Block_object_dispose(&buf, 8);

      objc_destroyWeak(&v60);
      objc_destroyWeak(&location);

      selfCopy = self;
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
    selfCopy = 0;
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

    storeCopy = 0;
    goto LABEL_27;
  }

  storeCopy = [v20 URLByAppendingPathComponent:@"StaticKey" isDirectory:1];

  v21 = +[NSFileManager defaultManager];
  v68 = NSFileProtectionKey;
  v69 = NSFileProtectionNone;
  v22 = [NSDictionary dictionaryWithObjects:&v69 forKeys:&v68 count:1];
  v63 = v17;
  v23 = [v21 createDirectoryAtURL:storeCopy withIntermediateDirectories:1 attributes:v22 error:&v63];
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

  selfCopy = 0;
  v17 = v24;
LABEL_33:

  return selfCopy;
}

- (id)initLocalDataStore:(id)store idsDelegate:(id)delegate configurationStore:(id)configurationStore notificationCenter:(id)center contactStore:(id)contactStore dew:(id)dew complete:(id)complete
{
  storeCopy = store;
  delegateCopy = delegate;
  configurationStoreCopy = configurationStore;
  centerCopy = center;
  contactStoreCopy = contactStore;
  dewCopy = dew;
  completeCopy = complete;
  v51.receiver = self;
  v51.super_class = StaticKeyController;
  v22 = [(StaticKeyController *)&v51 init];
  v23 = v22;
  if (v22)
  {
    if (centerCopy)
    {
      [(StaticKeyController *)v22 setNotificationCenter:centerCopy];
    }

    else
    {
      v24 = +[NSDistributedNotificationCenter defaultCenter];
      [(StaticKeyController *)v23 setNotificationCenter:v24];
    }

    v44 = delegateCopy;
    [(StaticKeyController *)v23 setIdsDelegate:delegateCopy];
    [(StaticKeyController *)v23 setContactStore:contactStoreCopy];
    v25 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v26 = dispatch_queue_create("StaticKeyController", v25);
    [(StaticKeyController *)v23 setQueue:v26];

    v27 = os_log_create("com.apple.Transparency", "StaticKeyDatabase");
    [(StaticKeyController *)v23 setLog:v27];

    objc_initWeak(&location, v23);
    v28 = [KTNearFutureScheduler alloc];
    [dewCopy coalesceStaticKeyUpdateInterval];
    v30 = (v29 * 1000000000.0);
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_100040964;
    v48[3] = &unk_1003175E0;
    objc_copyWeak(&v49, &location);
    v31 = [(KTNearFutureScheduler *)v28 initWithName:@"ProcessCoreDataNFS" delay:v30 keepProcessAlive:0 dependencyDescriptionCode:0 block:v48];
    [(StaticKeyController *)v23 setRemoteUpdateNFS:v31];
    v43 = contactStoreCopy;

    v32 = [NSManagedObjectModel alloc];
    staticKeyModelURL = [(StaticKeyController *)v23 staticKeyModelURL];
    v34 = [v32 initWithContentsOfURL:staticKeyModelURL];

    v35 = storeCopy;
    v36 = [StaticKeyController persistentStoreDescriptions:storeCopy];
    v37 = [NSPersistentContainer persistentContainerWithName:@"StaticKey" managedObjectModel:v34];
    [(StaticKeyController *)v23 setPersistentContainer:v37];

    persistentContainer = [(StaticKeyController *)v23 persistentContainer];
    [persistentContainer setPersistentStoreDescriptions:v36];

    persistentContainer2 = [(StaticKeyController *)v23 persistentContainer];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_1000409A4;
    v45[3] = &unk_10031A100;
    v40 = v23;
    v46 = v40;
    v47 = completeCopy;
    [persistentContainer2 loadPersistentStoresWithCompletionHandler:v45];

    [(StaticKeyController *)v40 setConfigurationStore:configurationStoreCopy];
    v41 = v40;

    objc_destroyWeak(&v49);
    objc_destroyWeak(&location);
    storeCopy = v35;
    contactStoreCopy = v43;
    delegateCopy = v44;
  }

  return v23;
}

- (void)processDataOnQueue
{
  queue = [(StaticKeyController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100040AFC;
  block[3] = &unk_100316FE0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)remoteUpdate:(id)update
{
  updateCopy = update;
  queue = [(StaticKeyController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100040C98;
  v7[3] = &unk_1003180E0;
  v8 = updateCopy;
  selfCopy = self;
  v6 = updateCopy;
  dispatch_async(queue, v7);
}

- (id)historyTokenFromData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)dataFromHistoryToken:(id)token
{
  tokenCopy = token;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [NSKeyedArchiver archivedDataWithRootObject:tokenCopy requiringSecureCoding:1 error:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)processCoreDataHistory
{
  queue = [(StaticKeyController *)self queue];
  dispatch_assert_queue_V2(queue);

  persistentContainer = [(StaticKeyController *)self persistentContainer];
  newBackgroundContext = [persistentContainer newBackgroundContext];

  v6 = +[NSMergePolicy mergeByPropertyStoreTrumpMergePolicy];
  [newBackgroundContext setMergePolicy:v6];

  v7 = +[NSMutableSet set];
  configurationStore = [(StaticKeyController *)self configurationStore];
  v9 = [configurationStore getSettingsData:@"CoreDataSyncToken"];

  [(StaticKeyController *)self historyTokenFromData:v9];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1000410E0;
  v19 = v18 = &unk_10031A148;
  v20 = newBackgroundContext;
  selfCopy = self;
  v10 = v7;
  v22 = v10;
  v11 = newBackgroundContext;
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

    idsDelegate = [(StaticKeyController *)self idsDelegate];
    allObjects = [v10 allObjects];
    [idsDelegate didUpdateStaticKeyStore:allObjects application:kKTApplicationIdentifierIDS];
  }
}

- (void)setContactsSyncController:(id)controller
{
  controllerCopy = controller;
  contacts = [(StaticKeyController *)self contacts];

  if (contacts)
  {
    contacts2 = [(StaticKeyController *)self contacts];
    [contacts2 invalidateContactsSyncing];

    [(StaticKeyController *)self setContacts:0];
  }

  v6 = controllerCopy;
  if (controllerCopy)
  {
    [(StaticKeyController *)self setContacts:controllerCopy];
    contacts3 = [(StaticKeyController *)self contacts];
    [contacts3 setDelegate:self];

    v6 = controllerCopy;
  }
}

- (void)consumeContactsChangeHistory
{
  contacts = [(StaticKeyController *)self contacts];
  [contacts consumeContactsChangeHistory];
}

- (void)startContactsSyncing
{
  contacts = [(StaticKeyController *)self contacts];
  [contacts startContactsSyncing];
}

- (void)drainContactsSyncing
{
  contacts = [(StaticKeyController *)self contacts];
  [contacts drainContactsSyncing];
}

+ (id)persistentStoreDescriptions:(id)descriptions
{
  v3 = [descriptions URLByAppendingPathComponent:@"StaticKey"];
  v4 = [NSPersistentStoreDescription persistentStoreDescriptionWithURL:v3];
  [v4 setType:NSSQLiteStoreType];
  [v4 setShouldAddStoreAsynchronously:0];
  [v4 setConfiguration:@"Default"];
  [v4 setOption:&__kCFBooleanTrue forKey:NSPersistentHistoryTrackingKey];
  v7 = v4;
  v5 = [NSArray arrayWithObjects:&v7 count:1];

  return v5;
}

+ (id)cloudPersistentStoreDescription:(id)description
{
  v3 = [description URLByAppendingPathComponent:@"CloudStore"];
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
  queue = [(StaticKeyController *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  persistentContainer = [(StaticKeyController *)self persistentContainer];
  newBackgroundContext = [persistentContainer newBackgroundContext];

  v6 = +[NSMergePolicy mergeByPropertyStoreTrumpMergePolicy];
  [newBackgroundContext setMergePolicy:v6];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100041B70;
  v9[3] = &unk_10031A198;
  v11 = &v12;
  v9[4] = self;
  v7 = newBackgroundContext;
  v10 = v7;
  [v7 performBlockAndWait:v9];
  LOBYTE(newBackgroundContext) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return newBackgroundContext;
}

- (BOOL)exportToCloud
{
  queue = [(StaticKeyController *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  persistentContainer = [(StaticKeyController *)self persistentContainer];
  newBackgroundContext = [persistentContainer newBackgroundContext];

  v6 = +[NSMergePolicy mergeByPropertyStoreTrumpMergePolicy];
  [newBackgroundContext setMergePolicy:v6];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100041ED0;
  v9[3] = &unk_10031A198;
  v11 = &v12;
  v9[4] = self;
  v7 = newBackgroundContext;
  v10 = v7;
  [v7 performBlockAndWait:v9];
  LOBYTE(newBackgroundContext) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return newBackgroundContext;
}

- (BOOL)triggerSync:(id *)sync
{
  cloudContainer = [(StaticKeyController *)self cloudContainer];

  if (cloudContainer)
  {
    queue = [(StaticKeyController *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000421D4;
    block[3] = &unk_100316FE0;
    block[4] = self;
    dispatch_sync(queue, block);
  }

  else
  {
    v6 = [(StaticKeyController *)self log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100249528();
    }
  }

  return cloudContainer != 0;
}

- (BOOL)setupCloudSchema:(BOOL)schema error:(id *)error
{
  schemaCopy = schema;
  cloudContainer = [(StaticKeyController *)self cloudContainer];

  if (cloudContainer)
  {
    if (schemaCopy)
    {
      v8 = 6;
    }

    else
    {
      v8 = 0;
    }

    cloudContainer2 = [(StaticKeyController *)self cloudContainer];
    v15 = 0;
    v10 = [cloudContainer2 initializeCloudKitSchemaWithOptions:v8 error:&v15];
    v11 = v15;

    if ((v10 & 1) == 0)
    {
      v12 = [(StaticKeyController *)self log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100249564();
      }

      if (error)
      {
        v13 = v11;
        *error = v11;
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

- (BOOL)resetCloudZone:(id *)zone
{
  cloudContainer = [(StaticKeyController *)self cloudContainer];

  v5 = [(StaticKeyController *)self log];
  v6 = v5;
  if (cloudContainer)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "reset zone start", buf, 2u);
    }

    v7 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
    cloudContainer2 = [(StaticKeyController *)self cloudContainer];
    persistentStoreCoordinator = [cloudContainer2 persistentStoreCoordinator];
    [v7 setPersistentStoreCoordinator:persistentStoreCoordinator];

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

  return cloudContainer != 0;
}

- (id)fetchHandles:(id)handles moc:(id)moc error:(id *)error
{
  mocCopy = moc;
  handlesCopy = handles;
  v10 = +[KTCoreDataSTHandle fetchRequest];
  handlesCopy = [NSPredicate predicateWithFormat:@"publicIdentity == %@", handlesCopy];

  [v10 setPredicate:handlesCopy];
  v19 = 0;
  v12 = [mocCopy executeFetchRequest:v10 error:&v19];

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

    if (error)
    {
      v16 = v13;
      *error = v13;
    }

    v14 = +[NSMutableSet set];
  }

  v17 = v14;

  return v17;
}

- (id)storeStaticKey:(id)key contactIdentifier:(id)identifier contactExternalIdentifier:(id)externalIdentifier mappings:(id)mappings error:(id *)error
{
  keyCopy = key;
  identifierCopy = identifier;
  externalIdentifierCopy = externalIdentifier;
  mappingsCopy = mappings;
  fetchContactsSyncToken = [(StaticKeyController *)self fetchContactsSyncToken];

  if (!fetchContactsSyncToken)
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

    contactStore = [(StaticKeyController *)self contactStore];
    configurationStore = [(StaticKeyController *)self configurationStore];
    [contactStore fetchAndStoreContactsSyncTokenWithConfigStore:configurationStore];
  }

  *buf = 0;
  v57 = buf;
  v58 = 0x3032000000;
  v59 = sub_100042D8C;
  v60 = sub_100042D9C;
  v61 = 0;
  persistentContainer = [(StaticKeyController *)self persistentContainer];
  newBackgroundContext = [persistentContainer newBackgroundContext];

  v22 = +[NSMergePolicy mergeByPropertyStoreTrumpMergePolicy];
  [newBackgroundContext setMergePolicy:v22];

  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = sub_100042D8C;
  v54 = sub_100042D9C;
  v55 = 0;
  ktStorageString = [keyCopy ktStorageString];
  v24 = [(StaticKeyController *)self log];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [mappingsCopy componentsJoinedByString:{@", "}];
    *v62 = 138412802;
    v63 = keyCopy;
    v64 = 2112;
    v65 = ktStorageString;
    v66 = 2112;
    v67 = v25;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "storeStaticKey identity: %@ %@ mappings: %@", v62, 0x20u);
  }

  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_100042DA4;
  v41[3] = &unk_10031A208;
  v26 = externalIdentifierCopy;
  v42 = v26;
  v27 = identifierCopy;
  v43 = v27;
  v28 = newBackgroundContext;
  v44 = v28;
  v48 = &v50;
  v29 = ktStorageString;
  v45 = v29;
  selfCopy = self;
  v30 = mappingsCopy;
  v47 = v30;
  v49 = buf;
  [v28 performBlockAndWait:v41];
  v31 = *(v57 + 5);
  if (!error || v31)
  {
    contactExternalURI = [v31 contactExternalURI];
    publicKeyID = [*(v57 + 5) publicKeyID];
    publicAccountIdentity = [publicKeyID publicAccountIdentity];
    [(StaticKeyController *)self postChangeForEntry:contactExternalURI publicAccountIdentity:publicAccountIdentity];

    idsDelegate = [(StaticKeyController *)self idsDelegate];
    mappings = [*(v57 + 5) mappings];
    [idsDelegate didUpdateStaticKeyStore:mappings application:kKTApplicationIdentifierIDS];
  }

  else
  {
    *error = v51[5];
  }

  queue = [(StaticKeyController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100043574;
  block[3] = &unk_100316FE0;
  block[4] = self;
  dispatch_async(queue, block);

  v38 = *(v57 + 5);
  _Block_object_dispose(&v50, 8);

  _Block_object_dispose(buf, 8);

  return v38;
}

- (void)postChangeForEntry:(id)entry publicAccountIdentity:(id)identity
{
  entryCopy = entry;
  identityCopy = identity;
  v8 = [(StaticKeyController *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v14 = entryCopy;
    v15 = 2112;
    v16 = identityCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "postChangeToEntry externalURI: %@ publicKey: %@", buf, 0x16u);
  }

  if (entryCopy && identityCopy)
  {
    v11[0] = kTransparencyStaticKeyStoreContactIdentifier;
    v11[1] = kTransparencyStaticKeyStorePublicIdentifydentifier;
    v12[0] = entryCopy;
    v12[1] = identityCopy;
    v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
    notificationCenter = [(StaticKeyController *)self notificationCenter];
    [notificationCenter postNotificationName:kTransparencyStaticKeyStoreNotification object:0 userInfo:v9 deliverImmediately:1];
  }
}

- (id)mapStaticKeyToStoreEntry:(id)entry handles:(id)handles moc:(id)moc error:(id *)error
{
  entryCopy = entry;
  handlesCopy = handles;
  publicIdentity = [entryCopy publicIdentity];
  if (publicIdentity)
  {
    v44 = 0;
    v12 = [KTAccountPublicID ktAccountPublicIDWithStorageString:publicIdentity error:&v44];
    v13 = v44;
    v14 = v13;
    if (v12)
    {
      v37 = v13;
      v38 = publicIdentity;
      v15 = objc_alloc_init(KTIDStaticKeyStoreEntry);
      v36 = v12;
      [v15 setPublicKeyID:v12];
      contactIdentifier = [entryCopy contactIdentifier];
      [v15 setContactIdentifier:contactIdentifier];

      v39 = entryCopy;
      contactExternalIdentifier = [entryCopy contactExternalIdentifier];
      v35 = v15;
      [v15 setContactServerPath:contactExternalIdentifier];

      v18 = +[NSMutableArray array];
      v19 = +[NSMutableDictionary dictionary];
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v20 = handlesCopy;
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
            idsID = [v25 idsID];

            if (idsID)
            {
              v27 = objc_alloc_init(KTIDStaticKeyStoreHandle);
              [v27 setValidationDate:0];
              [v27 setValid:0];
              idsID2 = [v25 idsID];
              [v27 setHandle:idsID2];

              [v27 setErrorCode:{objc_msgSend(v25, "error")}];
              idsID3 = [v25 idsID];
              [v19 setObject:v27 forKeyedSubscript:idsID3];

              idsID4 = [v25 idsID];
              [v18 addObject:idsID4];
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

      entryCopy = v39;
      v14 = v37;
      publicIdentity = v38;
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

      if (error)
      {
        v33 = v14;
        v31 = 0;
        *error = v14;
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

- (id)findStaticKeyByKey:(id)key error:(id *)error
{
  keyCopy = key;
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
  ktStorageString = [keyCopy ktStorageString];
  if (ktStorageString)
  {
    persistentContainer = [(StaticKeyController *)self persistentContainer];
    newBackgroundContext = [persistentContainer newBackgroundContext];

    v10 = +[NSMergePolicy mergeByPropertyStoreTrumpMergePolicy];
    [newBackgroundContext setMergePolicy:v10];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100043CC0;
    v16[3] = &unk_10031A230;
    v17 = ktStorageString;
    v11 = newBackgroundContext;
    v18 = v11;
    selfCopy = self;
    v20 = &v28;
    v21 = &v22;
    [v11 performBlockAndWait:v16];
    v12 = v23[5];
    if (!v12)
    {
      if (error)
      {
        v13 = v29[5];
        if (v13)
        {
          *error = v13;
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

- (id)findStaticKeyByHandle:(id)handle error:(id *)error
{
  handleCopy = handle;
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
  persistentContainer = [(StaticKeyController *)self persistentContainer];
  newBackgroundContext = [persistentContainer newBackgroundContext];

  v9 = +[NSMergePolicy mergeByPropertyStoreTrumpMergePolicy];
  [newBackgroundContext setMergePolicy:v9];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100044020;
  v15[3] = &unk_10031A230;
  v10 = handleCopy;
  v16 = v10;
  v11 = newBackgroundContext;
  v17 = v11;
  selfCopy = self;
  v19 = &v27;
  v20 = &v21;
  [v11 performBlockAndWait:v15];
  if (error)
  {
    v12 = v28[5];
    if (v12)
    {
      *error = v12;
    }
  }

  v13 = v22[5];

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v13;
}

- (BOOL)shouldDoInitialCloudSyncing:(id)syncing
{
  syncingCopy = syncing;
  configurationStore = [(StaticKeyController *)self configurationStore];

  if (configurationStore)
  {
    configurationStore2 = [(StaticKeyController *)self configurationStore];
    v7 = [configurationStore2 getSettingsDate:@"lastCKSyncData"];

    if (syncingCopy && v7)
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

      configurationStore4 = [syncingCopy dateByAddingTimeInterval:-604800.0];
      v10 = [v7 compare:configurationStore4];
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

      configurationStore3 = [(StaticKeyController *)self configurationStore];
      [configurationStore3 setSettingsDate:@"lastCKSyncData" date:syncingCopy];
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

      configurationStore4 = [(StaticKeyController *)self configurationStore];
      [configurationStore4 setSettingsDate:@"lastCKSyncData" date:syncingCopy];
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

- (void)launchCloudSyncing:(id)syncing initialDelay:(double)delay
{
  syncingCopy = syncing;
  if (delay >= 0.0 && [(StaticKeyController *)self shouldDoInitialCloudSyncing:syncingCopy])
  {
    v7 = os_transaction_create();
    v8 = dispatch_time(0, (delay * 1000000000.0));
    queue = [(StaticKeyController *)self queue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000447D0;
    v12[3] = &unk_1003180E0;
    v12[4] = self;
    v13 = v7;
    v10 = v7;
    dispatch_after(v8, queue, v12);
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

- (id)findStaticKeyByContactIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
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
  persistentContainer = [(StaticKeyController *)self persistentContainer];
  newBackgroundContext = [persistentContainer newBackgroundContext];

  v9 = +[NSMergePolicy mergeByPropertyStoreTrumpMergePolicy];
  [newBackgroundContext setMergePolicy:v9];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100044AA0;
  v15[3] = &unk_10031A230;
  v10 = identifierCopy;
  v16 = v10;
  v11 = newBackgroundContext;
  v17 = v11;
  selfCopy = self;
  v19 = &v27;
  v20 = &v21;
  [v11 performBlockAndWait:v15];
  if (error)
  {
    v12 = v28[5];
    if (v12)
    {
      *error = v12;
    }
  }

  v13 = v22[5];

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v13;
}

- (id)findStaticKeyByContactExternalURI:(id)i error:(id *)error
{
  iCopy = i;
  if (iCopy)
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
    persistentContainer = [(StaticKeyController *)self persistentContainer];
    newBackgroundContext = [persistentContainer newBackgroundContext];

    v9 = +[NSMergePolicy mergeByPropertyStoreTrumpMergePolicy];
    [newBackgroundContext setMergePolicy:v9];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100044E28;
    v14[3] = &unk_10031A230;
    v15 = iCopy;
    v10 = newBackgroundContext;
    v16 = v10;
    selfCopy = self;
    v18 = &v26;
    v19 = &v20;
    [v10 performBlockAndWait:v14];
    if (error)
    {
      v11 = v27[5];
      if (v11)
      {
        *error = v11;
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

- (id)validateStaticKeyStoreMappingByKey:(id)key error:(id *)error
{
  v6 = [(StaticKeyController *)self findStaticKeyByKey:key error:?];
  if (v6)
  {
    v7 = [(StaticKeyController *)self validateStoreEntry:v6 error:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)validateStaticKeyStoreMappingByContactIdentifer:(id)identifer error:(id *)error
{
  v6 = [(StaticKeyController *)self findStaticKeyByContactIdentifier:identifer error:?];
  if (v6)
  {
    v7 = [(StaticKeyController *)self validateStoreEntry:v6 error:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)validateStaticKeyStoreMappingByContactExternalURI:(id)i error:(id *)error
{
  v6 = [(StaticKeyController *)self findStaticKeyByContactExternalURI:i error:?];
  if (v6)
  {
    v7 = [(StaticKeyController *)self validateStoreEntry:v6 error:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)deleteStaticKey:(id)key error:(id *)error
{
  keyCopy = key;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  persistentContainer = [(StaticKeyController *)self persistentContainer];
  newBackgroundContext = [persistentContainer newBackgroundContext];

  v9 = +[NSMergePolicy mergeByPropertyStoreTrumpMergePolicy];
  [newBackgroundContext setMergePolicy:v9];

  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_100042D8C;
  v29 = sub_100042D9C;
  v30 = 0;
  v10 = +[NSMutableSet set];
  ktStorageString = [keyCopy ktStorageString];
  v12 = ktStorageString;
  if (ktStorageString)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100045378;
    v19[3] = &unk_10031A230;
    v20 = ktStorageString;
    v21 = newBackgroundContext;
    v23 = &v25;
    v13 = v10;
    v22 = v13;
    v24 = &v31;
    [v21 performBlockAndWait:v19];
    if (error)
    {
      v14 = v26[5];
      if (v14)
      {
        *error = v14;
      }
    }

    if ([v13 count])
    {
      idsDelegate = [(StaticKeyController *)self idsDelegate];
      allObjects = [v13 allObjects];
      [idsDelegate didUpdateStaticKeyStore:allObjects application:kKTApplicationIdentifierIDS];
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

- (BOOL)deleteStaticKeyByContactIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  persistentContainer = [(StaticKeyController *)self persistentContainer];
  newBackgroundContext = [persistentContainer newBackgroundContext];

  v9 = +[NSMergePolicy mergeByPropertyStoreTrumpMergePolicy];
  [newBackgroundContext setMergePolicy:v9];

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
  v11 = identifierCopy;
  v20 = v11;
  v12 = newBackgroundContext;
  v21 = v12;
  v23 = &v25;
  v13 = v10;
  v22 = v13;
  v24 = &v31;
  [v12 performBlockAndWait:v19];
  if (error)
  {
    v14 = v26[5];
    if (v14)
    {
      *error = v14;
    }
  }

  if ([v13 count])
  {
    idsDelegate = [(StaticKeyController *)self idsDelegate];
    allObjects = [v13 allObjects];
    [idsDelegate didUpdateStaticKeyStore:allObjects application:kKTApplicationIdentifierIDS];
  }

  v17 = *(v32 + 24);

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v17;
}

- (BOOL)deleteStaticKeyByContactExternalURI:(id)i error:(id *)error
{
  iCopy = i;
  if (iCopy)
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    persistentContainer = [(StaticKeyController *)self persistentContainer];
    newBackgroundContext = [persistentContainer newBackgroundContext];

    v9 = +[NSMergePolicy mergeByPropertyStoreTrumpMergePolicy];
    [newBackgroundContext setMergePolicy:v9];

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
    v19 = iCopy;
    v11 = newBackgroundContext;
    v20 = v11;
    v22 = &v24;
    v12 = v10;
    v21 = v12;
    v23 = &v30;
    [v11 performBlockAndWait:v18];
    if (error)
    {
      v13 = v25[5];
      if (v13)
      {
        *error = v13;
      }
    }

    if ([v12 count])
    {
      idsDelegate = [(StaticKeyController *)self idsDelegate];
      allObjects = [v12 allObjects];
      [idsDelegate didUpdateStaticKeyStore:allObjects application:kKTApplicationIdentifierIDS];
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

- (id)listStaticKey:(id *)key
{
  v5 = objc_alloc_init(NSMutableArray);
  persistentContainer = [(StaticKeyController *)self persistentContainer];
  newBackgroundContext = [persistentContainer newBackgroundContext];

  v8 = +[NSMergePolicy mergeByPropertyStoreTrumpMergePolicy];
  [newBackgroundContext setMergePolicy:v8];

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
  v9 = newBackgroundContext;
  v16 = v9;
  v18 = &v19;
  v10 = v5;
  v17 = v10;
  [v9 performBlockAndWait:v15];
  if (key)
  {
    v11 = v20[5];
    if (v11)
    {
      *key = v11;
    }
  }

  v12 = v17;
  v13 = v10;

  _Block_object_dispose(&v19, 8);

  return v13;
}

- (BOOL)setErrorCode:(int)code forMapping:(id)mapping error:(id *)error
{
  mappingCopy = mapping;
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
  persistentContainer = [(StaticKeyController *)self persistentContainer];
  newBackgroundContext = [persistentContainer newBackgroundContext];

  v11 = +[NSMergePolicy mergeByPropertyStoreTrumpMergePolicy];
  [newBackgroundContext setMergePolicy:v11];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000466D8;
  v17[3] = &unk_10031A338;
  v12 = mappingCopy;
  v18 = v12;
  v13 = newBackgroundContext;
  v19 = v13;
  v20 = &v23;
  codeCopy = code;
  v21 = &v29;
  [v13 performBlockAndWait:v17];
  if (error)
  {
    v14 = v24[5];
    if (v14)
    {
      *error = v14;
    }
  }

  v15 = *(v30 + 24);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v15;
}

- (BOOL)haveContact:(id)contact error:(id *)error
{
  contactCopy = contact;
  contactStore = [(StaticKeyController *)self contactStore];
  LOBYTE(error) = [contactStore haveContact:contactCopy error:error];

  return error;
}

- (id)lastContactSyncDate
{
  configurationStore = [(StaticKeyController *)self configurationStore];
  v3 = [configurationStore getSettingsDate:@"lastContactSyncDate"];

  return v3;
}

- (void)updateLastContactSyncDate
{
  configurationStore = [(StaticKeyController *)self configurationStore];
  v2 = +[NSDate date];
  [configurationStore setSettingsDate:@"lastContactSyncDate" date:v2];
}

- (id)fetchContactsSyncToken
{
  configurationStore = [(StaticKeyController *)self configurationStore];
  v3 = [configurationStore getSettingsData:@"lastContactSyncData"];

  return v3;
}

- (void)storeContactsSyncToken:(id)token
{
  tokenCopy = token;
  configurationStore = [(StaticKeyController *)self configurationStore];
  [configurationStore setSettingsData:@"lastContactSyncData" data:tokenCopy];
}

- (void)fetchPeerHandles:(id)handles application:(id)application complete:(id)complete
{
  handlesCopy = handles;
  applicationCopy = application;
  completeCopy = complete;
  idsDelegate = [(StaticKeyController *)self idsDelegate];
  v12 = idsDelegate;
  if (idsDelegate)
  {
    [idsDelegate fetchPeerHandles:handlesCopy application:applicationCopy complete:completeCopy];
  }

  else
  {
    v13 = [(StaticKeyController *)self log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1002496E4();
    }

    (*(completeCopy + 2))(completeCopy, 0, 0);
  }
}

- (void)validatePeerResult:(id)result uuid:(id)uuid completionBlock:(id)block
{
  blockCopy = block;
  v6 = objc_alloc_init(KTVerifierResult);
  [v6 setSucceed:0];
  blockCopy[2](blockCopy, v6, 0);
}

- (id)validateStoreEntry:(id)entry error:(id *)error
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100042D8C;
  v25 = sub_100042D9C;
  entryCopy = entry;
  v26 = entryCopy;
  if (qword_10038BCF0 != -1)
  {
    sub_100249720();
  }

  v6 = qword_10038BCF8;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    mappings = [entryCopy mappings];
    v8 = [mappings componentsJoinedByString:{@", "}];
    *buf = 141558274;
    v28 = 1752392040;
    v29 = 2112;
    v30 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "validateStoreEntry looking for handles: %{mask.hash}@", buf, 0x16u);
  }

  v9 = dispatch_semaphore_create(0);
  v10 = kKTApplicationIdentifierIDS;
  mappings2 = [entryCopy mappings];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100046E44;
  v17[3] = &unk_10031A3E0;
  v12 = entryCopy;
  v18 = v12;
  v20 = &v21;
  v13 = v9;
  v19 = v13;
  [(StaticKeyController *)self fetchPeerHandles:mappings2 application:v10 complete:v17];

  v14 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v13, v14);
  v15 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v15;
}

- (void)peerVerificationUpdated:(id)updated
{
  v3 = [(StaticKeyController *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "StaticKeyController updating verification", v4, 2u);
  }
}

- (id)findStaticKeyByContact:(id)contact error:(id *)error
{
  contactCopy = contact;
  externalURI = [contactCopy externalURI];
  v15 = 0;
  v8 = [(StaticKeyController *)self findStaticKeyByContactExternalURI:externalURI error:&v15];
  v9 = v15;

  if (v8)
  {
    v10 = v9;
  }

  else
  {
    identifier = [contactCopy identifier];
    v14 = v9;
    v8 = [(StaticKeyController *)self findStaticKeyByContactIdentifier:identifier error:&v14];
    v10 = v14;

    if (error && !v8 && v10)
    {
      v12 = v10;
      v8 = 0;
      *error = v10;
    }
  }

  return v8;
}

- (void)updateContact:(id)contact
{
  contactCopy = contact;
  v5 = [KeyTransparencyContactMapping mapContactsToIDS:contactCopy];
  v6 = [(StaticKeyController *)self log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v29 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "updateContact contactMappings: %@", buf, 0xCu);
  }

  v27 = 0;
  v7 = [(StaticKeyController *)self findStaticKeyByContact:contactCopy error:&v27];

  v8 = v27;
  if (v7)
  {
    mappings = [v7 mappings];
    v10 = [NSSet setWithArray:mappings];

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
      publicKeyID = [v7 publicKeyID];
      contactIdentifier = [v7 contactIdentifier];
      contactExternalURI = [v7 contactExternalURI];
      allObjects = [v5 allObjects];
      v24 = v8;
      v16 = [(StaticKeyController *)self storeStaticKey:publicKeyID contactIdentifier:contactIdentifier contactExternalIdentifier:contactExternalURI mappings:allObjects error:&v24];
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

    contactExternalURI2 = [v7 contactExternalURI];
    v26 = v8;
    v19 = [(StaticKeyController *)self deleteStaticKeyByContactExternalURI:contactExternalURI2 error:&v26];
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

    contactIdentifier2 = [v7 contactIdentifier];
    v25 = v17;
    v22 = [(StaticKeyController *)self deleteStaticKeyByContactIdentifier:contactIdentifier2 error:&v25];
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

- (void)deleteContact:(id)contact contactExternalURI:(id)i
{
  contactCopy = contact;
  iCopy = i;
  if (iCopy)
  {
    v15 = 0;
    v8 = [(StaticKeyController *)self deleteStaticKeyByContactExternalURI:iCopy error:&v15];
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
  v12 = [(StaticKeyController *)self deleteStaticKeyByContactIdentifier:contactCopy error:&v14];
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