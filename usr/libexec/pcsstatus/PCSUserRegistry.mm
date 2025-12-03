@interface PCSUserRegistry
- (BOOL)checkRegistry:(id)registry;
- (BOOL)ensureUserRegistryDbLoaded:(id *)loaded;
- (BOOL)errorIsSAThrottle:(id)throttle;
- (BOOL)errorShouldCauseReset:(id)reset;
- (BOOL)saveEscrowChange:(id)change;
- (BOOL)setupCloudKitSyncing;
- (BOOL)updateEscrowData:(id)data escrowIdentity:(_PCSIdentityData *)identity identity:(_PCSIdentityData *)a5;
- (PCSUserRegistry)initWithBackup:(id)backup;
- (_PCSIdentitySetData)identityCopySet;
- (id)allMobileBackupKeys;
- (id)allMobileBackupPublicKeys;
- (id)ckRecordListToRecordIDs:(id)ds;
- (id)createPendingSyncOperation:(id)operation;
- (id)createZone:(id)zone withName:(id)name;
- (id)defaultCKConfiguration;
- (id)deleteMobileBackupZone;
- (id)extractMobilebackupKeyEscrow:(id)escrow;
- (id)fetchAllChanges:(id)changes;
- (id)fetchMobileBackupRecordIDsWithError:(id *)error;
- (id)getServerChangeToken:(id)token;
- (id)keyRecord:(_PCSIdentityData *)record withName:(id)name zone:(id)zone;
- (id)keyRecordIdentity:(_PCSIdentityData *)identity device:(id)device version:(id)version;
- (id)loadMobileBackupKeysFromDB;
- (id)privateDatabase;
- (id)pushMobileBackupRecordsToCloudKit:(id)kit removeObjects:(id)objects;
- (id)queryEscrowID:(id)d;
- (id)queryEscrowName:(id)name;
- (id)queryMobileBackupKeysFromCloudKit:(id *)kit;
- (id)scanPCSIdentitiesForNewMobileBackupRecords;
- (id)startBackupOfNewMobileBackupIdentities;
- (id)syncUserRegistry;
- (id)userDBBackupRecordIDsWithError:(id *)error;
- (void)_onqueueDeleteServerChangeToken:(id)token;
- (void)_onqueueSaveUserRegistryStats;
- (void)addDatabaseOperation:(id)operation;
- (void)cacheUserRegistryStats;
- (void)checkAccountStatus:(id)status;
- (void)checkErrorForRetryPause:(id)pause;
- (void)clearCloudKitCache;
- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier;
- (void)deleteEscrowID:(id)d;
- (void)flushStats;
- (void)registerCloudKitNotifications;
- (void)resyncDatabase:(id)database;
- (void)saveRecord:(id)record;
- (void)saveServerChangeToken:(id)token forKey:(id)key;
- (void)setupSubscriptions;
- (void)statFetch;
- (void)statModify;
@end

@implementation PCSUserRegistry

- (PCSUserRegistry)initWithBackup:(id)backup
{
  backupCopy = backup;
  v39.receiver = self;
  v39.super_class = PCSUserRegistry;
  v6 = [(PCSUserRegistry *)&v39 init];
  if (v6)
  {
    objc_initWeak(&location, v6);
    v7 = objc_alloc_init(NSOperationQueue);
    mainOperationQueue = v6->_mainOperationQueue;
    v6->_mainOperationQueue = v7;

    v9 = [CKContainer containerIDForContainerIdentifier:off_10001D690];
    v10 = objc_alloc_init(CKContainerOptions);
    [v10 setBypassPCSEncryption:1];
    v11 = [[CKContainer alloc] initWithContainerID:v9 options:v10];
    container = v6->_container;
    v6->_container = v11;

    v13 = [[CKRecordZoneID alloc] initWithZoneName:@"PCSUserRegistry" ownerName:CKCurrentUserDefaultName];
    recordZoneID = v6->_recordZoneID;
    v6->_recordZoneID = v13;

    v15 = [[CKRecordZoneID alloc] initWithZoneName:@"PCSUserRegistryMobileBackup" ownerName:CKCurrentUserDefaultName];
    mobileBackupRecordZoneID = v6->_mobileBackupRecordZoneID;
    v6->_mobileBackupRecordZoneID = v15;

    v17 = +[PCSAccountsModel defaultAccountsModel];
    accounts = v6->_accounts;
    v6->_accounts = v17;

    v19 = os_log_create("com.apple.ProtectedCloudStorage", "UserRegistry");
    oslog = v6->_oslog;
    v6->_oslog = v19;

    v21 = dispatch_queue_create("PCS-APS", 0);
    queue = v6->_queue;
    v6->_queue = v21;

    objc_storeStrong(&v6->_mobileBackup, backup);
    v23 = [[PCSDelayedAction alloc] initWithLabel:@"resyncRegistryAction" delay:300 operationQueue:v6->_mainOperationQueue];
    resyncRegistryAction = v6->_resyncRegistryAction;
    v6->_resyncRegistryAction = v23;

    v25 = v6->_resyncRegistryAction;
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100004AA4;
    v36[3] = &unk_100018998;
    objc_copyWeak(&v37, &location);
    [(PCSDelayedAction *)v25 setAction:v36];
    [(PCSDelayedAction *)v6->_resyncRegistryAction setHoldTransaction:0];
    [(PCSDelayedAction *)v6->_resyncRegistryAction run];
    v26 = [[PCSDelayedAction alloc] initWithLabel:@"subscribeAction" delay:300 operationQueue:v6->_mainOperationQueue];
    subscribeAction = v6->_subscribeAction;
    v6->_subscribeAction = v26;

    v28 = v6->_subscribeAction;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100004AEC;
    v34[3] = &unk_100018998;
    objc_copyWeak(&v35, &location);
    [(PCSDelayedAction *)v28 setAction:v34];
    [(PCSDelayedAction *)v6->_subscribeAction setHoldTransaction:0];
    [(PCSDelayedAction *)v6->_subscribeAction run];
    v33 = 0;
    v29 = [(PCSUserRegistry *)v6 ensureUserRegistryDbLoaded:&v33];
    v30 = v33;
    if ((v29 & 1) == 0)
    {
      oslog = [(PCSUserRegistry *)v6 oslog];
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v41 = v30;
        _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Failed to initalize UserRegistryDB: %@", buf, 0xCu);
      }
    }

    objc_destroyWeak(&v35);
    objc_destroyWeak(&v37);

    objc_destroyWeak(&location);
  }

  return v6;
}

- (BOOL)ensureUserRegistryDbLoaded:(id *)loaded
{
  userdb = [(PCSUserRegistry *)self userdb];

  if (userdb)
  {
    return 1;
  }

  v6 = [UserRegistryDB alloc];
  dsid = [(PCSAccountsModel *)self->_accounts dsid];
  v8 = [v6 initWithDSID:dsid];
  [(PCSUserRegistry *)self setUserdb:v8];

  userdb2 = [(PCSUserRegistry *)self userdb];

  if (userdb2)
  {
    return 1;
  }

  oslog = [(PCSUserRegistry *)self oslog];
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Failed to initalize UserRegistryDB", v14, 2u);
  }

  if (loaded)
  {
    v12 = kPCSErrorDomain;
    v15 = NSLocalizedDescriptionKey;
    v16 = @"Failed to initalize UserRegistryDB";
    v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    *loaded = [NSError errorWithDomain:v12 code:138 userInfo:v13];
  }

  return 0;
}

- (void)flushStats
{
  stats = [(PCSUserRegistry *)self stats];

  if (stats)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (![(PCSUserRegistry *)selfCopy stats_dirty])
    {
      [(PCSUserRegistry *)selfCopy setStats_dirty:1];
      v8[0] = 0;
      v8[1] = v8;
      v8[2] = 0x3032000000;
      v8[3] = sub_100004E50;
      v8[4] = sub_100004E60;
      v9 = os_transaction_create();
      v5 = dispatch_time(0, 10000000000);
      queue = [(PCSUserRegistry *)selfCopy queue];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100004E68;
      v7[3] = &unk_1000189C0;
      v7[4] = selfCopy;
      v7[5] = v8;
      dispatch_after(v5, queue, v7);

      _Block_object_dispose(v8, 8);
    }

    objc_sync_exit(selfCopy);
  }
}

- (id)defaultCKConfiguration
{
  if (qword_10001D760 != -1)
  {
    sub_10000EFB4();
  }

  v3 = qword_10001D758;

  return v3;
}

- (void)checkAccountStatus:(id)status
{
  container = [(PCSUserRegistry *)self container];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100004FE8;
  v5[3] = &unk_100018A28;
  v5[4] = self;
  [container accountInfoWithCompletionHandler:v5];
}

- (BOOL)setupCloudKitSyncing
{
  v7 = 0;
  v3 = [(PCSUserRegistry *)self ensureUserRegistryDbLoaded:&v7];
  v4 = v7;
  if (v3)
  {
    oslog = +[NSNotificationCenter defaultCenter];
    [oslog addObserver:self selector:"checkAccountStatus:" name:NSUbiquityIdentityDidChangeNotification object:0];
    [(PCSUserRegistry *)self checkAccountStatus:0];
  }

  else
  {
    oslog = [(PCSUserRegistry *)self oslog];
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "setupCloudKitSyncing: Failed to initalize UserRegistryDB: %@", buf, 0xCu);
    }
  }

  return v3;
}

- (void)registerCloudKitNotifications
{
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000053E0;
  block[3] = &unk_100018A78;
  block[4] = self;
  objc_copyWeak(&v5, &location);
  if (qword_10001D770 != -1)
  {
    dispatch_once(&qword_10001D770, block);
  }

  subscribeAction = [(PCSUserRegistry *)self subscribeAction];
  [subscribeAction trigger];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)setupSubscriptions
{
  v28 = 0;
  v3 = [(PCSUserRegistry *)self ensureUserRegistryDbLoaded:&v28];
  v4 = v28;
  if (v3)
  {
    accounts = [(PCSUserRegistry *)self accounts];
    dsid = [accounts dsid];
    v27 = v4;
    v7 = [PCSAccountsModel accountEligibleForMBRestoreForDSID:dsid error:&v27];
    v8 = v27;

    if (v7)
    {
      objc_initWeak(&location, self);
      *&v30 = 0;
      *(&v30 + 1) = &v30;
      v31 = 0x3032000000;
      v32 = sub_100004E50;
      v33 = sub_100004E60;
      v34 = 0;
      queue = [(PCSUserRegistry *)self queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100005A94;
      block[3] = &unk_100018AA0;
      block[4] = self;
      block[5] = &v30;
      dispatch_sync(queue, block);

      if (!*(*(&v30 + 1) + 40))
      {
        oslog = [(PCSUserRegistry *)self oslog];
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "attempting to subscribe to CK zone changes", buf, 2u);
        }

        v11 = [[CKDatabaseSubscription alloc] initWithSubscriptionID:@"PCSUserRegistrySubscription"];
        v12 = objc_alloc_init(CKNotificationInfo);
        [v11 setNotificationInfo:v12];
        v13 = [CKModifySubscriptionsOperation alloc];
        v29 = v11;
        v14 = [NSArray arrayWithObjects:&v29 count:1];
        v15 = [v13 initWithSubscriptionsToSave:v14 subscriptionIDsToDelete:0];

        cloudKitRateLimitedOp = [(PCSUserRegistry *)self cloudKitRateLimitedOp];

        if (cloudKitRateLimitedOp)
        {
          oslog2 = [(PCSUserRegistry *)self oslog];
          if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, oslog2, OS_LOG_TYPE_DEFAULT, "setupSubscriptions: rate-limited by CloudKit", buf, 2u);
          }

          cloudKitRateLimitedOp2 = [(PCSUserRegistry *)self cloudKitRateLimitedOp];
          [v15 addDependency:cloudKitRateLimitedOp2];
        }

        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_100005B04;
        v22[3] = &unk_100018AC8;
        objc_copyWeak(&v23, &location);
        [v15 setModifySubscriptionsCompletionBlock:v22];
        defaultCKConfiguration = [(PCSUserRegistry *)self defaultCKConfiguration];
        [v15 setConfiguration:defaultCKConfiguration];

        [(PCSUserRegistry *)self addDatabaseOperation:v15];
        objc_destroyWeak(&v23);
      }

      _Block_object_dispose(&v30, 8);

      objc_destroyWeak(&location);
    }

    else
    {
      oslog3 = [(PCSUserRegistry *)self oslog];
      if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v30) = 138412290;
        *(&v30 + 4) = v8;
        _os_log_impl(&_mh_execute_header, oslog3, OS_LOG_TYPE_DEFAULT, "setupSubscriptions: Account ineligible for MB restore: %@", &v30, 0xCu);
      }
    }

    v4 = v8;
  }

  else
  {
    oslog4 = [(PCSUserRegistry *)self oslog];
    if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v30) = 138412290;
      *(&v30 + 4) = v4;
      _os_log_impl(&_mh_execute_header, oslog4, OS_LOG_TYPE_DEFAULT, "setupSubscriptions: Failed to initalize UserRegistryDB: %@", &v30, 0xCu);
    }
  }
}

- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier
{
  topicCopy = topic;
  oslog = [(PCSUserRegistry *)self oslog];
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = topicCopy;
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "didReceiveToken: %@, triggering syncing", &v11, 0xCu);
  }

  stats = [(PCSUserRegistry *)self stats];
  [stats setPushNotifications:{objc_msgSend(stats, "pushNotifications") + 1}];

  [(PCSUserRegistry *)self flushStats];
  syncUserRegistry = [(PCSUserRegistry *)self syncUserRegistry];
}

- (void)resyncDatabase:(id)database
{
  databaseCopy = database;
  queue = [(PCSUserRegistry *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006000;
  block[3] = &unk_100018970;
  block[4] = self;
  dispatch_sync(queue, block);

  [(PCSUserRegistry *)self clearCloudKitCache];
  stats = [(PCSUserRegistry *)self stats];
  [stats setZoneReset:{objc_msgSend(stats, "zoneReset") + 1}];

  [(PCSUserRegistry *)self flushStats];
  queue2 = [(PCSUserRegistry *)self queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100006078;
  v9[3] = &unk_100018AF0;
  v9[4] = self;
  v10 = databaseCopy;
  v8 = databaseCopy;
  dispatch_sync(queue2, v9);
}

- (id)fetchAllChanges:(id)changes
{
  changesCopy = changes;
  v31 = 0;
  v5 = [(PCSUserRegistry *)self ensureUserRegistryDbLoaded:&v31];
  v21 = v31;
  if (v5)
  {
    v6 = objc_alloc_init(PCSRegistryOperation);
    mainOperationQueue = objc_alloc_init(CKFetchRecordZoneChangesConfiguration);
    v8 = [(PCSUserRegistry *)self getServerChangeToken:@"MBserverChangeToken"];
    [mainOperationQueue setPreviousServerChangeToken:v8];

    oslog = [(PCSUserRegistry *)self oslog];
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      previousServerChangeToken = [mainOperationQueue previousServerChangeToken];
      *buf = 138412290;
      v36 = previousServerChangeToken;
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Fetching changes after change token %@", buf, 0xCu);
    }

    v11 = [[CKRecordZoneID alloc] initWithZoneName:@"PCSUserRegistryMobileBackup" ownerName:CKCurrentUserDefaultName];
    v33 = v11;
    v34 = mainOperationQueue;
    v20 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v12 = [CKFetchRecordZoneChangesOperation alloc];
    v32 = v11;
    v13 = [NSArray arrayWithObjects:&v32 count:1];
    v14 = [v12 initWithRecordZoneIDs:v13 configurationsByRecordZoneID:v20];

    [v14 setFetchAllChanges:1];
    defaultCKConfiguration = [(PCSUserRegistry *)self defaultCKConfiguration];
    [v14 setConfiguration:defaultCKConfiguration];

    if (changesCopy)
    {
      [v14 addDependency:changesCopy];
    }

    objc_initWeak(buf, self);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100006690;
    v29[3] = &unk_100018B18;
    objc_copyWeak(&v30, buf);
    [v14 setRecordWasChangedBlock:v29];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000068CC;
    v27[3] = &unk_100018B40;
    objc_copyWeak(&v28, buf);
    [v14 setRecordWithIDWasDeletedBlock:v27];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100006A68;
    v25[3] = &unk_100018B68;
    objc_copyWeak(&v26, buf);
    [v14 setRecordZoneFetchCompletionBlock:v25];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100006C74;
    v22[3] = &unk_100018B90;
    objc_copyWeak(&v24, buf);
    v16 = v6;
    v23 = v16;
    [v14 setFetchRecordZoneChangesCompletionBlock:v22];
    privateDatabase = [(PCSUserRegistry *)self privateDatabase];
    [privateDatabase addOperation:v14];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&v30);
    objc_destroyWeak(buf);
  }

  else
  {
    oslog2 = [(PCSUserRegistry *)self oslog];
    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v21;
      _os_log_impl(&_mh_execute_header, oslog2, OS_LOG_TYPE_DEFAULT, "fetchAllChanges: Failed to initalize UserRegistryDB: %@", buf, 0xCu);
    }

    v16 = objc_alloc_init(PCSRegistryOperation);
    [(PCSRegistryOperation *)v16 setError:v21];
    if (changesCopy)
    {
      [(PCSRegistryOperation *)v16 addDependency:changesCopy];
    }

    mainOperationQueue = [(PCSUserRegistry *)self mainOperationQueue];
    [mainOperationQueue addOperation:v16];
  }

  return v16;
}

- (id)syncUserRegistry
{
  v13 = 0;
  v3 = [(PCSUserRegistry *)self ensureUserRegistryDbLoaded:&v13];
  v4 = v13;
  if (v3)
  {
    *&v16 = 0;
    *(&v16 + 1) = &v16;
    v17 = 0x3032000000;
    v18 = sub_100004E50;
    v19 = sub_100004E60;
    v20 = 0;
    queue = [(PCSUserRegistry *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100007120;
    block[3] = &unk_1000189C0;
    block[4] = self;
    block[5] = &v16;
    dispatch_sync(queue, block);

    oslog = [(PCSUserRegistry *)self oslog];
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(&v16 + 1) + 40);
      *buf = 138412290;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Returning pending syncing operation: %@", buf, 0xCu);
    }

    v8 = *(*(&v16 + 1) + 40);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    oslog2 = [(PCSUserRegistry *)self oslog];
    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v16) = 138412290;
      *(&v16 + 4) = v4;
      _os_log_impl(&_mh_execute_header, oslog2, OS_LOG_TYPE_DEFAULT, "syncUserRegistry: Failed to initalize UserRegistryDB: %@", &v16, 0xCu);
    }

    v8 = objc_alloc_init(PCSRegistryOperation);
    [(PCSRegistryOperation *)v8 setError:v4];
    mainOperationQueue = [(PCSUserRegistry *)self mainOperationQueue];
    [mainOperationQueue addOperation:v8];
  }

  return v8;
}

- (id)createPendingSyncOperation:(id)operation
{
  operationCopy = operation;
  objc_initWeak(&location, self);
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_100004E50;
  v29 = sub_100004E60;
  v30 = 0;
  if (!operationCopy)
  {
    v5 = os_transaction_create();
    v6 = v26[5];
    v26[5] = v5;
  }

  v7 = objc_alloc_init(PCSRegistryOperation);
  if (operationCopy)
  {
    v8 = operationCopy;
  }

  else
  {
    v8 = objc_alloc_init(PCSRegistryOperation);
  }

  v9 = v8;
  v10 = [[PCSRegistryOperationPair alloc] init:v7 finish:v8];
  objc_initWeak(&from, v7);
  cloudKitRateLimitedOp = [(PCSUserRegistry *)self cloudKitRateLimitedOp];

  if (cloudKitRateLimitedOp)
  {
    oslog = [(PCSUserRegistry *)self oslog];
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "rate-limited by CloudKit", buf, 2u);
    }

    cloudKitRateLimitedOp2 = [(PCSUserRegistry *)self cloudKitRateLimitedOp];
    [(PCSRegistryOperation *)v7 addDependency:cloudKitRateLimitedOp2];
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000770C;
  v18[3] = &unk_100018C30;
  v14 = v9;
  v19 = v14;
  objc_copyWeak(&v21, &from);
  objc_copyWeak(&v22, &location);
  v23 = operationCopy == 0;
  v20 = &v25;
  [(PCSRegistryOperation *)v7 addExecutionBlock:v18];
  oslog2 = [(PCSUserRegistry *)self oslog];
  if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = v10;
    _os_log_impl(&_mh_execute_header, oslog2, OS_LOG_TYPE_DEFAULT, "Created new pending syncing operation: %@", buf, 0xCu);
  }

  v16 = v10;
  objc_destroyWeak(&v22);
  objc_destroyWeak(&v21);

  objc_destroyWeak(&from);
  _Block_object_dispose(&v25, 8);

  objc_destroyWeak(&location);

  return v16;
}

- (void)saveRecord:(id)record
{
  recordCopy = record;
  v18 = 0;
  v5 = [(PCSUserRegistry *)self ensureUserRegistryDbLoaded:&v18];
  v6 = v18;
  if (v5)
  {
    v7 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
    [v7 encodeObject:recordCopy forKey:@"record"];
    recordType = [recordCopy recordType];
    v9 = [recordType isEqualToString:@"URKey"];

    if (v9)
    {
      v10 = [recordCopy objectForKeyedSubscript:@"publicKey"];
    }

    else
    {
      v10 = &stru_100019048;
    }

    queue = [(PCSUserRegistry *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100008DD8;
    block[3] = &unk_100018C58;
    block[4] = self;
    v15 = recordCopy;
    v16 = v7;
    v17 = v10;
    v13 = v10;
    oslog = v7;
    dispatch_sync(queue, block);
  }

  else
  {
    oslog = [(PCSUserRegistry *)self oslog];
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "saveRecord: Failed to initalize UserRegistryDB: %@", buf, 0xCu);
    }
  }
}

- (void)saveServerChangeToken:(id)token forKey:(id)key
{
  tokenCopy = token;
  keyCopy = key;
  v16 = 0;
  v8 = [(PCSUserRegistry *)self ensureUserRegistryDbLoaded:&v16];
  v9 = v16;
  if (v8)
  {
    v10 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
    [v10 encodeObject:tokenCopy forKey:keyCopy];
    queue = [(PCSUserRegistry *)self queue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100009024;
    v13[3] = &unk_100018C80;
    v13[4] = self;
    v14 = keyCopy;
    v15 = v10;
    oslog = v10;
    dispatch_sync(queue, v13);
  }

  else
  {
    oslog = [(PCSUserRegistry *)self oslog];
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "saveRecord: Failed to initalize UserRegistryDB: %@", buf, 0xCu);
    }
  }
}

- (void)_onqueueDeleteServerChangeToken:(id)token
{
  tokenCopy = token;
  queue = [(PCSUserRegistry *)self queue];
  dispatch_assert_queue_V2(queue);

  userdb = [(PCSUserRegistry *)self userdb];
  [userdb deleteRecordID:tokenCopy];
}

- (id)getServerChangeToken:(id)token
{
  tokenCopy = token;
  v21 = 0;
  v5 = [(PCSUserRegistry *)self ensureUserRegistryDbLoaded:&v21];
  v6 = v21;
  if (v5)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v23 = 0x3032000000;
    v24 = sub_100004E50;
    v25 = sub_100004E60;
    v26 = 0;
    queue = [(PCSUserRegistry *)self queue];
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_10000936C;
    v17 = &unk_100018CA8;
    p_buf = &buf;
    selfCopy = self;
    v8 = tokenCopy;
    v19 = v8;
    dispatch_sync(queue, &v14);

    if (*(*(&buf + 1) + 40))
    {
      v9 = [NSKeyedUnarchiver alloc];
      v10 = [v9 initForReadingFromData:*(*(&buf + 1) + 40) error:{0, v14, v15, v16, v17, selfCopy}];
      v11 = [v10 decodeObjectOfClass:objc_opt_class() forKey:v8];
    }

    else
    {
      v11 = 0;
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    oslog = [(PCSUserRegistry *)self oslog];
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v6;
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "saveRecord: Failed to initalize UserRegistryDB: %@", &buf, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

- (void)cacheUserRegistryStats
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100004E50;
  v12 = sub_100004E60;
  v13 = 0;
  queue = [(PCSUserRegistry *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000955C;
  v7[3] = &unk_100018AA0;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(queue, v7);

  if (v9[5])
  {
    v4 = [NSKeyedUnarchiver alloc];
    v5 = [v4 initForReadingFromData:v9[5] error:0];
    v6 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"UserRegistryStats"];
    [(PCSUserRegistry *)self setStats:v6];
  }

  else
  {
    v5 = objc_alloc_init(UserRegistryStats);
    [(PCSUserRegistry *)self setStats:v5];
  }

  _Block_object_dispose(&v8, 8);
}

- (void)_onqueueSaveUserRegistryStats
{
  queue = [(PCSUserRegistry *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  stats = [(PCSUserRegistry *)self stats];
  [v7 encodeObject:stats forKey:@"UserRegistryStats"];

  userdb = [(PCSUserRegistry *)self userdb];
  encodedData = [v7 encodedData];
  [userdb replaceConfigRecord:@"UserRegistryStats" data:encodedData];
}

- (void)statFetch
{
  stats = [(PCSUserRegistry *)self stats];
  [stats setRecordFetch:{objc_msgSend(stats, "recordFetch") + 1}];

  [(PCSUserRegistry *)self flushStats];
}

- (void)statModify
{
  stats = [(PCSUserRegistry *)self stats];
  [stats setRecordModify:{objc_msgSend(stats, "recordModify") + 1}];

  [(PCSUserRegistry *)self flushStats];
}

- (void)clearCloudKitCache
{
  queue = [(PCSUserRegistry *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000097D0;
  block[3] = &unk_100018970;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (id)privateDatabase
{
  container = [(PCSUserRegistry *)self container];
  privateCloudDatabase = [container privateCloudDatabase];

  return privateCloudDatabase;
}

- (void)addDatabaseOperation:(id)operation
{
  operationCopy = operation;
  privateDatabase = [(PCSUserRegistry *)self privateDatabase];
  [privateDatabase addOperation:operationCopy];
}

- (BOOL)errorShouldCauseReset:(id)reset
{
  resetCopy = reset;
  domain = [resetCopy domain];
  if ([domain isEqualToString:CKErrorDomain])
  {
    code = [resetCopy code];

    if (code == 21)
    {
LABEL_43:
      v19 = 1;
      goto LABEL_48;
    }
  }

  else
  {
  }

  domain2 = [resetCopy domain];
  if (![domain2 isEqualToString:CKErrorDomain])
  {
LABEL_20:

    goto LABEL_21;
  }

  code2 = [resetCopy code];

  if (code2 == 2)
  {
    userInfo = [resetCopy userInfo];
    domain2 = [userInfo objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    allValues = [domain2 allValues];
    v10 = [allValues countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v37;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v37 != v13)
          {
            objc_enumerationMutation(allValues);
          }

          v15 = *(*(&v36 + 1) + 8 * i);
          domain3 = [v15 domain];
          if ([domain3 isEqualToString:CKErrorDomain])
          {
            v17 = [v15 code] == 21;

            v12 |= v17;
          }

          else
          {
          }
        }

        v11 = [allValues countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v11);

      if (v12)
      {
        goto LABEL_43;
      }

      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_21:
  domain4 = [resetCopy domain];
  if ([domain4 isEqualToString:CKErrorDomain])
  {
    if ([resetCopy code] == 28)
    {
      v19 = 1;
      goto LABEL_47;
    }

    code3 = [resetCopy code];

    if (code3 == 26)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  domain4 = [resetCopy domain];
  if (![domain4 isEqualToString:CKErrorDomain])
  {
    v19 = 0;
    goto LABEL_47;
  }

  code4 = [resetCopy code];

  if (code4 != 2)
  {
    v19 = 0;
    goto LABEL_48;
  }

  userInfo2 = [resetCopy userInfo];
  domain4 = [userInfo2 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  allValues2 = [domain4 allValues];
  v23 = [allValues2 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (!v23)
  {
    v19 = 0;
    goto LABEL_46;
  }

  v24 = v23;
  v19 = 0;
  v25 = *v33;
  do
  {
    for (j = 0; j != v24; j = j + 1)
    {
      if (*v33 != v25)
      {
        objc_enumerationMutation(allValues2);
      }

      v27 = *(*(&v32 + 1) + 8 * j);
      domain5 = [v27 domain];
      if (![domain5 isEqualToString:CKErrorDomain])
      {

        continue;
      }

      if ([v27 code] == 28)
      {
      }

      else
      {
        code5 = [v27 code];

        if (code5 != 26)
        {
          continue;
        }
      }

      v19 = 1;
    }

    v24 = [allValues2 countByEnumeratingWithState:&v32 objects:v40 count:16];
  }

  while (v24);
LABEL_46:

LABEL_47:
LABEL_48:

  return v19 & 1;
}

- (void)checkErrorForRetryPause:(id)pause
{
  pauseCopy = pause;
  v4 = pauseCopy;
  if (pauseCopy)
  {
    domain = [pauseCopy domain];
    v6 = [domain isEqualToString:CKErrorDomain];

    if (v6)
    {
      userInfo = [v4 userInfo];
      v8 = [userInfo objectForKeyedSubscript:CKErrorRetryAfterKey];

      userInfo2 = [v4 userInfo];
      v33 = [userInfo2 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      allValues = [v33 allValues];
      v11 = [allValues countByEnumeratingWithState:&v40 objects:v46 count:16];
      if (v11)
      {
        v12 = *v41;
        do
        {
          v13 = 0;
          do
          {
            if (*v41 != v12)
            {
              objc_enumerationMutation(allValues);
            }

            domain2 = [*(*(&v40 + 1) + 8 * v13) domain];
            v15 = [domain2 isEqualToString:CKErrorDomain];

            if (v15)
            {
              userInfo3 = [v4 userInfo];
              v17 = [userInfo3 objectForKeyedSubscript:CKErrorRetryAfterKey];

              if (!v8 || ([v8 doubleValue], v19 = v18, objc_msgSend(v17, "doubleValue"), v19 < v20))
              {
                v21 = v17;

                v8 = v21;
              }
            }

            v13 = v13 + 1;
          }

          while (v11 != v13);
          v11 = [allValues countByEnumeratingWithState:&v40 objects:v46 count:16];
        }

        while (v11);
      }

      if (v8)
      {
        if ([(PCSUserRegistry *)self errorIsSAThrottle:v4])
        {
          accounts = [(PCSUserRegistry *)self accounts];
          dsid = [accounts dsid];
          v24 = [PCSAccountsModel accountEligibleForMBRestoreForDSID:dsid error:0];

          if (v24)
          {
            oslog = [(PCSUserRegistry *)self oslog];
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Received unexpected server throttle response, clamping to 10 seconds", buf, 2u);
            }

            v8 = &off_10001A0B8;
          }
        }

        objc_initWeak(&location, self);
        v37[0] = _NSConcreteStackBlock;
        v37[1] = 3221225472;
        v37[2] = sub_10000A120;
        v37[3] = &unk_100018998;
        objc_copyWeak(&v38, &location);
        v26 = [NSBlockOperation blockOperationWithBlock:v37];
        [(PCSUserRegistry *)self setCloudKitRateLimitedOp:v26];
        [v8 doubleValue];
        v28 = v27 + 0.5;
        v29 = dispatch_time(0, ((v27 + 0.5) * 1000000000.0));
        oslog2 = [(PCSUserRegistry *)self oslog];
        if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v45 = v28;
          _os_log_impl(&_mh_execute_header, oslog2, OS_LOG_TYPE_DEFAULT, "Delaying %.1f seconds for CK operations", buf, 0xCu);
        }

        queue = [(PCSUserRegistry *)self queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10000A198;
        block[3] = &unk_100018AF0;
        block[4] = self;
        v36 = v26;
        v32 = v26;
        dispatch_after(v29, queue, block);

        objc_destroyWeak(&v38);
        objc_destroyWeak(&location);
      }

      else
      {
        v8 = v33;
      }
    }
  }
}

- (BOOL)errorIsSAThrottle:(id)throttle
{
  throttleCopy = throttle;
  userInfo = [throttleCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

  userInfo2 = [throttleCopy userInfo];
  v7 = [userInfo2 objectForKeyedSubscript:CKErrorRetryAfterKey];

  code = [throttleCopy code];
  v9 = code == 6 && [v5 code] == 2009 && objc_msgSend(v7, "intValue") > 43199;

  return v9;
}

- (id)createZone:(id)zone withName:(id)name
{
  zoneCopy = zone;
  nameCopy = name;
  objc_initWeak(&location, self);
  v8 = [[CKRecordZone alloc] initWithZoneName:nameCopy];
  v9 = objc_alloc_init(PCSRegistryOperation);
  v10 = [CKModifyRecordZonesOperation alloc];
  v29 = v8;
  v11 = [NSArray arrayWithObjects:&v29 count:1];
  v12 = [v10 initWithRecordZonesToSave:v11 recordZoneIDsToDelete:0];

  cloudKitRateLimitedOp = [(PCSUserRegistry *)self cloudKitRateLimitedOp];

  if (cloudKitRateLimitedOp)
  {
    cloudKitRateLimitedOp2 = [(PCSUserRegistry *)self cloudKitRateLimitedOp];
    [v12 addDependency:cloudKitRateLimitedOp2];
  }

  [v12 setConfiguration:zoneCopy];
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_10000A520;
  v24 = &unk_100018CD0;
  objc_copyWeak(&v27, &location);
  v15 = v8;
  v25 = v15;
  v16 = v9;
  v26 = v16;
  [v12 setModifyRecordZonesCompletionBlock:&v21];
  v17 = [(PCSUserRegistry *)self privateDatabase:v21];
  [v17 addOperation:v12];

  v18 = v26;
  v19 = v16;

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);

  return v19;
}

- (id)deleteMobileBackupZone
{
  objc_initWeak(&location, self);
  v3 = objc_alloc_init(PCSRegistryOperation);
  v4 = [CKModifyRecordZonesOperation alloc];
  mobileBackupRecordZoneID = [(PCSUserRegistry *)self mobileBackupRecordZoneID];
  v16 = mobileBackupRecordZoneID;
  v6 = [NSArray arrayWithObjects:&v16 count:1];
  v7 = [v4 initWithRecordZonesToSave:&__NSArray0__struct recordZoneIDsToDelete:v6];

  defaultCKConfiguration = [(PCSUserRegistry *)self defaultCKConfiguration];
  [v7 setConfiguration:defaultCKConfiguration];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000A894;
  v12[3] = &unk_100018CF8;
  objc_copyWeak(&v14, &location);
  v9 = v3;
  v13 = v9;
  [v7 setModifyRecordZonesCompletionBlock:v12];
  privateDatabase = [(PCSUserRegistry *)self privateDatabase];
  [privateDatabase addOperation:v7];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v9;
}

- (BOOL)saveEscrowChange:(id)change
{
  changeCopy = change;
  recordID = [changeCopy recordID];
  recordName = [recordID recordName];

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  queue = [(PCSUserRegistry *)self queue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000AB34;
  v11[3] = &unk_100018D20;
  v11[4] = self;
  v12 = recordName;
  v13 = changeCopy;
  v14 = &v15;
  v8 = changeCopy;
  v9 = recordName;
  dispatch_sync(queue, v11);

  LOBYTE(recordName) = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  return recordName;
}

- (void)deleteEscrowID:(id)d
{
  dCopy = d;
  queue = [(PCSUserRegistry *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000ACC0;
  v7[3] = &unk_100018AF0;
  v8 = dCopy;
  selfCopy = self;
  v6 = dCopy;
  dispatch_sync(queue, v7);
}

- (id)queryEscrowName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = sub_100004E50;
    v16 = sub_100004E60;
    v17 = 0;
    queue = [(PCSUserRegistry *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000AE8C;
    block[3] = &unk_100018CA8;
    v11 = &v12;
    block[4] = self;
    v10 = nameCopy;
    dispatch_sync(queue, block);

    v6 = v13[5];
    if (v6)
    {
      v7 = sub_10000AEF8(v6);
    }

    else
    {
      v7 = 0;
    }

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)queryEscrowID:(id)d
{
  recordName = [d recordName];
  v5 = [(PCSUserRegistry *)self queryEscrowName:recordName];

  return v5;
}

- (id)pushMobileBackupRecordsToCloudKit:(id)kit removeObjects:(id)objects
{
  kitCopy = kit;
  objectsCopy = objects;
  objc_initWeak(&location, self);
  v8 = objc_alloc_init(PCSRegistryOperation);
  objc_initWeak(&from, v8);
  cloudKitRateLimitedOp = [(PCSUserRegistry *)self cloudKitRateLimitedOp];

  if (cloudKitRateLimitedOp)
  {
    cloudKitRateLimitedOp2 = [(PCSUserRegistry *)self cloudKitRateLimitedOp];
    [(PCSRegistryOperation *)v8 addDependency:cloudKitRateLimitedOp2];
  }

  oslog = [(PCSUserRegistry *)self oslog];
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "pushMobileBackupRecordsToCloudKit Starting", buf, 2u);
  }

  defaultCKConfiguration = [(PCSUserRegistry *)self defaultCKConfiguration];
  v13 = [(PCSUserRegistry *)self getServerChangeToken:@"MBserverChangeToken"];
  v14 = v13 == 0;

  if (v14)
  {
    v15 = [(PCSUserRegistry *)self createZone:defaultCKConfiguration withName:@"PCSUserRegistryMobileBackup"];
  }

  else
  {
    v15 = 0;
  }

  v16 = &__NSArray0__struct;
  if (objectsCopy)
  {
    v16 = objectsCopy;
  }

  v17 = v16;

  v18 = [v17 count];
  if (v18 < 0x65)
  {
    v19 = v17;
  }

  else
  {
    v19 = [v17 mutableCopy];
    [v19 removeObjectsInRange:{100, v18 - 100}];
  }

  v20 = [NSMutableArray arrayWithArray:kitCopy];
  v21 = [v20 count];
  if (v21 < 0x65)
  {
    v23 = 0;
  }

  else
  {
    v22 = v21 - 100;
    v23 = [v20 subarrayWithRange:{100, v21 - 100}];
    [v20 removeObjectsInRange:{100, v22}];
  }

  oslog2 = [(PCSUserRegistry *)self oslog];
  if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [v20 count];
    v26 = [v19 count];
    *buf = 67109376;
    v40 = v25;
    v41 = 1024;
    v42 = v26;
    _os_log_impl(&_mh_execute_header, oslog2, OS_LOG_TYPE_DEFAULT, "updating %u records, removing %u records", buf, 0xEu);
  }

  [(PCSUserRegistry *)self statModify];
  v27 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:v20 recordIDsToDelete:v19];
  v28 = v27;
  if (v15)
  {
    [v27 addDependency:v15];
  }

  [v28 setSavePolicy:1];
  defaultCKConfiguration2 = [(PCSUserRegistry *)self defaultCKConfiguration];
  [v28 setConfiguration:defaultCKConfiguration2];

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10000B450;
  v33[3] = &unk_100018D70;
  objc_copyWeak(&v35, &location);
  objc_copyWeak(&v36, &from);
  v30 = v23;
  v34 = v30;
  [v28 setModifyRecordsCompletionBlock:v33];
  privateDatabase = [(PCSUserRegistry *)self privateDatabase];
  [privateDatabase addOperation:v28];

  objc_destroyWeak(&v36);
  objc_destroyWeak(&v35);

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v8;
}

- (BOOL)updateEscrowData:(id)data escrowIdentity:(_PCSIdentityData *)identity identity:(_PCSIdentityData *)a5
{
  dataCopy = data;
  EscrowedKeyWithIdentity = PCSBackupCreateEscrowedKeyWithIdentity();
  if (EscrowedKeyWithIdentity)
  {
    [dataCopy setObject:EscrowedKeyWithIdentity forKeyedSubscript:@"escrow"];
  }

  return EscrowedKeyWithIdentity != 0;
}

- (id)keyRecordIdentity:(_PCSIdentityData *)identity device:(id)device version:(id)version
{
  versionCopy = version;
  recordID = [device recordID];
  recordName = [recordID recordName];
  v10 = sub_10000BB30(identity, recordName, versionCopy);

  return v10;
}

- (id)keyRecord:(_PCSIdentityData *)record withName:(id)name zone:(id)zone
{
  zoneCopy = zone;
  nameCopy = name;
  v8 = PCSIdentityGetPublicKey();
  v9 = [[CKRecordID alloc] initWithRecordName:nameCopy zoneID:zoneCopy];

  v10 = [[CKRecord alloc] initWithRecordType:@"URKey" recordID:v9];
  v11 = +[NSDate date];
  [v10 setObject:v11 forKeyedSubscript:@"firstSeen"];

  [v10 setObject:v8 forKeyedSubscript:@"publicKey"];
  v12 = PCSIdentityCopyPublicKeyInfo();
  [v10 setObject:v12 forKeyedSubscript:@"identity"];

  return v10;
}

- (BOOL)checkRegistry:(id)registry
{
  registryCopy = registry;
  v25 = 0;
  v5 = [(PCSUserRegistry *)self ensureUserRegistryDbLoaded:&v25];
  v6 = v25;
  if (v5)
  {
    accounts = [(PCSUserRegistry *)self accounts];
    dsid = [accounts dsid];
    v24 = v6;
    v9 = [PCSAccountsModel accountEligibleForMBRestoreForDSID:dsid error:&v24];
    v10 = v24;

    if (v9)
    {
      [(PCSUserRegistry *)self syncUserRegistry];
      v18 = _NSConcreteStackBlock;
      v19 = 3221225472;
      v20 = sub_10000C010;
      v22 = v21 = &unk_100018D98;
      v23 = registryCopy;
      v11 = v22;
      v12 = [NSBlockOperation blockOperationWithBlock:&v18];
      [v12 addDependency:{v11, v18, v19, v20, v21}];
      mainOperationQueue = [(PCSUserRegistry *)self mainOperationQueue];
      [mainOperationQueue addOperation:v12];

      v14 = 1;
    }

    else
    {
      oslog = [(PCSUserRegistry *)self oslog];
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = v10;
        _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "checkRegistry: Account ineligible for MB restore: %@", buf, 0xCu);
      }

      (*(registryCopy + 2))(registryCopy, v10);
      v14 = 0;
    }

    v6 = v10;
  }

  else
  {
    oslog2 = [(PCSUserRegistry *)self oslog];
    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v6;
      _os_log_impl(&_mh_execute_header, oslog2, OS_LOG_TYPE_DEFAULT, "checkRegistry: Failed to initalize UserRegistryDB: %@", buf, 0xCu);
    }

    (*(registryCopy + 2))(registryCopy, v6);
    v14 = 0;
  }

  return v14;
}

- (id)scanPCSIdentitiesForNewMobileBackupRecords
{
  mobileBackup = [(PCSUserRegistry *)self mobileBackup];
  isBackupEnabled = [mobileBackup isBackupEnabled];

  if (isBackupEnabled)
  {
    oslog4 = objc_alloc_init(NSMutableArray);
    identityCopySet = [(PCSUserRegistry *)self identityCopySet];
    if (identityCopySet)
    {
      v7 = identityCopySet;
      if (PCSIdentitySetIsWalrusWithForceFetch())
      {
        oslog = [(PCSUserRegistry *)self oslog];
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v17 = 0;
          _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Skipping MobileBackup Escrow: %@", buf, 0xCu);
        }
      }

      else
      {
        v8 = _PCSIdentitySetCopyCurrentIdentityInternal();
        if (v8)
        {
          v9 = v8;
          v10 = oslog4;
          PCSServiceItemsGetEachName();
          oslog2 = [(PCSUserRegistry *)self oslog];
          if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v17 = [v10 count];
            _os_log_impl(&_mh_execute_header, oslog2, OS_LOG_TYPE_DEFAULT, "Harvested %lu records for MobileBackup escrow from Local PCS", buf, 0xCu);
          }

          CFRelease(v7);
          CFRelease(v9);
          v12 = v10;

          goto LABEL_21;
        }

        oslog = [(PCSUserRegistry *)self oslog];
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "No escrow identity", buf, 2u);
        }
      }

      CFRelease(v7);
    }

    else
    {
      oslog3 = [(PCSUserRegistry *)self oslog];
      if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, oslog3, OS_LOG_TYPE_DEFAULT, "No PCSIdentities to Escrow to MobileBackup", buf, 2u);
      }
    }

    v12 = 0;
    goto LABEL_21;
  }

  oslog4 = [(PCSUserRegistry *)self oslog];
  if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, oslog4, OS_LOG_TYPE_DEFAULT, "MobileBackup is off; no new records!", buf, 2u);
  }

  v12 = &__NSArray0__struct;
LABEL_21:

  return v12;
}

- (id)startBackupOfNewMobileBackupIdentities
{
  oslog = [(PCSUserRegistry *)self oslog];
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Starting startBackupOfNewMobileBackupIdentities", buf, 2u);
  }

  scanPCSIdentitiesForNewMobileBackupRecords = [(PCSUserRegistry *)self scanPCSIdentitiesForNewMobileBackupRecords];
  if ([scanPCSIdentitiesForNewMobileBackupRecords count])
  {
    oslog3 = +[NSMutableArray array];
    oslog2 = [(PCSUserRegistry *)self oslog];
    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, oslog2, OS_LOG_TYPE_DEFAULT, "startBackupOfNewMobileBackupIdentities - pushing new keys to cloudKit", v10, 2u);
    }

    v7 = [(PCSUserRegistry *)self pushMobileBackupRecordsToCloudKit:scanPCSIdentitiesForNewMobileBackupRecords removeObjects:oslog3];
  }

  else
  {
    oslog3 = [(PCSUserRegistry *)self oslog];
    if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, oslog3, OS_LOG_TYPE_DEFAULT, "No local mobile backup key changes", v9, 2u);
    }

    v7 = 0;
  }

  return v7;
}

- (_PCSIdentitySetData)identityCopySet
{
  accounts = [(PCSUserRegistry *)self accounts];
  dsid = [accounts dsid];

  if (!dsid)
  {
    oslog = [(PCSUserRegistry *)self oslog];
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      accounts2 = [(PCSUserRegistry *)self accounts];
      lastError = [accounts2 lastError];
      *buf = 138412290;
      v15 = lastError;
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Fail getting dsid: %@", buf, 0xCu);
    }

    v5 = 0;
    goto LABEL_7;
  }

  v12 = kPCSSetupDSID;
  v13 = dsid;
  v5 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v6 = PCSIdentitySetCreate();
  if (!v6)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v7 = v6;
LABEL_8:

  return v7;
}

- (id)extractMobilebackupKeyEscrow:(id)escrow
{
  escrowCopy = escrow;
  +[NSMutableArray array];
  v23 = v22 = self;
  oslog = [(PCSUserRegistry *)self oslog];
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Converting CKRecords to PCSKeybagKeys", buf, 2u);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = escrowCopy;
  v6 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    v9 = &PCSAccountDisableWalrus_ptr;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = [v11 objectForKeyedSubscript:@"keyStatus"];
        v13 = v12;
        if (!v12 || ([v12 longValue] & 1) == 0)
        {
          v14 = [v11 objectForKeyedSubscript:@"escrow"];
          v15 = v9[233];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = v9;
            v17 = objc_alloc_init(PCSKeybagKey);
            v18 = [v14 copy];
            [v17 setData:v18];

            [v17 setFlags:{objc_msgSend(v13, "longValue")}];
            [v23 addObject:v17];

            v9 = v16;
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v7);
  }

  oslog2 = [(PCSUserRegistry *)v22 oslog];
  if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v23 count];
    *buf = 134217984;
    v30 = v20;
    _os_log_impl(&_mh_execute_header, oslog2, OS_LOG_TYPE_DEFAULT, "Converted %lu CKRecords to PCSKeybagKeys", buf, 0xCu);
  }

  return v23;
}

- (id)loadMobileBackupKeysFromDB
{
  v3 = +[NSMutableArray array];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100004E50;
  v24 = sub_100004E60;
  v25 = 0;
  queue = [(PCSUserRegistry *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D000;
  block[3] = &unk_100018AA0;
  block[4] = self;
  block[5] = &v20;
  dispatch_sync(queue, block);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v21[5];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v28 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [v21[5] objectForKeyedSubscript:{*(*(&v15 + 1) + 8 * i), v15}];
        v10 = sub_10000AEF8(v9);
        [v3 addObject:v10];
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v28 count:16];
    }

    while (v6);
  }

  oslog = [(PCSUserRegistry *)self oslog];
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v3 count];
    *buf = 134217984;
    v27 = v12;
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "loadMobileBackupKeysFromDB returning (count %lu)", buf, 0xCu);
  }

  v13 = v3;
  _Block_object_dispose(&v20, 8);

  return v13;
}

- (id)allMobileBackupKeys
{
  v8 = 0;
  v3 = [(PCSUserRegistry *)self ensureUserRegistryDbLoaded:&v8];
  v4 = v8;
  if (v3)
  {
    loadMobileBackupKeysFromDB = [(PCSUserRegistry *)self loadMobileBackupKeysFromDB];
    v6 = [(PCSUserRegistry *)self extractMobilebackupKeyEscrow:loadMobileBackupKeysFromDB];
  }

  else
  {
    loadMobileBackupKeysFromDB = [(PCSUserRegistry *)self oslog];
    if (os_log_type_enabled(loadMobileBackupKeysFromDB, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, loadMobileBackupKeysFromDB, OS_LOG_TYPE_DEFAULT, "allMobileBackupKeys: Failed to initalize UserRegistryDB: %@", buf, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

- (id)allMobileBackupPublicKeys
{
  v3 = objc_alloc_init(NSMutableArray);
  v31 = 0;
  v4 = [(PCSUserRegistry *)self ensureUserRegistryDbLoaded:&v31];
  v5 = v31;
  v6 = v5;
  if (v4)
  {
    v25 = v5;
    loadMobileBackupKeysFromDB = [(PCSUserRegistry *)self loadMobileBackupKeysFromDB];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v8 = [loadMobileBackupKeysFromDB countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
      v11 = @"publicKey";
      do
      {
        v12 = 0;
        v26 = v9;
        do
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(loadMobileBackupKeysFromDB);
          }

          v13 = *(*(&v27 + 1) + 8 * v12);
          v14 = [v13 objectForKeyedSubscript:v11];
          if (v14)
          {
            [v3 addObject:v14];
          }

          else
          {
            oslog = [(PCSUserRegistry *)self oslog];
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
            {
              recordID = [v13 recordID];
              [recordID recordName];
              v17 = v10;
              v18 = v11;
              v19 = v3;
              v20 = loadMobileBackupKeysFromDB;
              v22 = v21 = self;
              *buf = 138412290;
              v34 = v22;
              _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Record %@ missing public key", buf, 0xCu);

              self = v21;
              loadMobileBackupKeysFromDB = v20;
              v3 = v19;
              v11 = v18;
              v10 = v17;
              v9 = v26;
            }
          }

          v12 = v12 + 1;
        }

        while (v9 != v12);
        v9 = [loadMobileBackupKeysFromDB countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v9);
    }

    v23 = v3;
    v6 = v25;
  }

  else
  {
    loadMobileBackupKeysFromDB = [(PCSUserRegistry *)self oslog];
    if (os_log_type_enabled(loadMobileBackupKeysFromDB, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = v6;
      _os_log_impl(&_mh_execute_header, loadMobileBackupKeysFromDB, OS_LOG_TYPE_DEFAULT, "allMobileBackupKeys: Failed to initalize UserRegistryDB: %@", buf, 0xCu);
    }

    v23 = 0;
  }

  return v23;
}

- (id)queryMobileBackupKeysFromCloudKit:(id *)kit
{
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_100004E50;
  v39 = sub_100004E60;
  v40 = 0;
  v5 = dispatch_semaphore_create(0);
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_100004E50;
  v33 = sub_100004E60;
  v34 = 0;
  oslog = [(PCSUserRegistry *)self oslog];
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "queryMobileBackupKeysFromCloudKit", buf, 2u);
  }

  v7 = [CKQuery alloc];
  v8 = [NSPredicate predicateWithFormat:@"TRUEPREDICATE"];
  v9 = [v7 initWithRecordType:@"URKey" predicate:v8];

  privateDatabase = [(PCSUserRegistry *)self privateDatabase];
  mobileBackupRecordZoneID = [(PCSUserRegistry *)self mobileBackupRecordZoneID];
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_10000D79C;
  v24 = &unk_100018E10;
  selfCopy = self;
  v27 = &v29;
  v28 = &v35;
  v12 = v5;
  v26 = v12;
  [privateDatabase performQuery:v9 inZoneWithID:mobileBackupRecordZoneID completionHandler:&v21];

  v13 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v12, v13);
  if (!v36[5])
  {
    v14 = objc_alloc_init(NSArray);
    v15 = v36[5];
    v36[5] = v14;
  }

  v16 = [(PCSUserRegistry *)self oslog:v21];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v36[5] count];
    *buf = 134217984;
    v42 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "queryMobileBackupKeysFromCloudKit returning (count %lu)", buf, 0xCu);
  }

  if (kit)
  {
    v18 = v30[5];
    if (v18)
    {
      *kit = [v18 copy];
    }
  }

  v19 = v36[5];

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);

  return v19;
}

- (id)ckRecordListToRecordIDs:(id)ds
{
  dsCopy = ds;
  v4 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = dsCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        recordID = [*(*(&v14 + 1) + 8 * i) recordID];
        recordName = [recordID recordName];
        v12 = [recordName copy];

        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)fetchMobileBackupRecordIDsWithError:(id *)error
{
  if ([(PCSUserRegistry *)self ensureUserRegistryDbLoaded:?])
  {
    v5 = [(PCSUserRegistry *)self queryMobileBackupKeysFromCloudKit:error];
    v6 = [(PCSUserRegistry *)self ckRecordListToRecordIDs:v5];
  }

  else
  {
    oslog = [(PCSUserRegistry *)self oslog];
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      if (error)
      {
        v8 = *error;
      }

      else
      {
        v8 = 0;
      }

      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "fetchMobileBackupRecordIDsWithError: Failed to initalize UserRegistryDB: %@", &v10, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

- (id)userDBBackupRecordIDsWithError:(id *)error
{
  if ([(PCSUserRegistry *)self ensureUserRegistryDbLoaded:?])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v14 = 0x3032000000;
    v15 = sub_100004E50;
    v16 = sub_100004E60;
    v17 = 0;
    queue = [(PCSUserRegistry *)self queue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000DD58;
    v12[3] = &unk_100018AA0;
    v12[4] = self;
    v12[5] = &buf;
    dispatch_sync(queue, v12);

    v6 = *(*(&buf + 1) + 40);
    if (v6)
    {
      allKeys = [v6 allKeys];
    }

    else
    {
      allKeys = objc_alloc_init(NSArray);
    }

    v10 = allKeys;
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    oslog = [(PCSUserRegistry *)self oslog];
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      if (error)
      {
        v9 = *error;
      }

      else
      {
        v9 = 0;
      }

      LODWORD(buf) = 138412290;
      *(&buf + 4) = v9;
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "userDBBackupRecordIDsWithError: Failed to initalize UserRegistryDB: %@", &buf, 0xCu);
    }

    v10 = 0;
  }

  return v10;
}

@end