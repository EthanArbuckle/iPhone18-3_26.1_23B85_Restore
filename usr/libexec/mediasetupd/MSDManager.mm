@interface MSDManager
+ (id)sharedInstance;
- (MSDManager)init;
- (void)_clearCachedIconImage:(id)image;
- (void)_initializeBackgroundActivityTask;
- (void)_initializeCoalescerObject;
- (void)_markHomeKitInitialized;
- (void)_performStartup;
- (void)_savePublicDBInfoInDefaults;
- (void)_schedulePublicDBRefreshBackgroundTask;
- (void)_scheduleRefreshTask;
- (void)_setupMultiUser;
- (void)_setupNotifications;
- (void)activeServiceApplicationInformationForSharedUserID:(id)d completionHandler:(id)handler;
- (void)addMediaService:(id)service usingSetupBundles:(id)bundles completion:(id)completion;
- (void)getAvailableServices:(id)services userIdentifier:(id)identifier completion:(id)completion;
- (void)getCachedAvailableServices:(id)services userIdentifier:(id)identifier completion:(id)completion;
- (void)getCachedServiceInfo:(id)info homeUserID:(id)d endpointID:(id)iD completion:(id)completion;
- (void)getDefaultMediaService:(id)service homeUserID:(id)d completion:(id)completion;
- (void)getDefaultMediaServiceForAllUsers:(id)users;
- (void)getMediaServiceChoicesForSharedUser:(id)user completion:(id)completion;
- (void)getPublicInfoForBundleID:(id)d completion:(id)completion;
- (void)getResolvedServiceInfo:(id)info completion:(id)completion;
- (void)getResolvedServiceInfo:(id)info sharedUserID:(id)d completion:(id)completion;
- (void)getServiceConfigurationInfo:(id)info serviceID:(id)d completion:(id)completion;
- (void)getSupportedThirdPartyMediaServices:(id)services;
- (void)homeManager:(id)manager didHomeKitSyncComplete:(id)complete;
- (void)overrideAppleMusicSubscriptionStatus:(BOOL)status homeUserIDS:(id)s completion:(id)completion;
- (void)profilesManager:(id)manager didAddProfiles:(id)profiles;
- (void)profilesManager:(id)manager didUpdateProfiles:(id)profiles;
- (void)removeMediaService:(id)service homeID:(id)d homeUserID:(id)iD completion:(id)completion;
- (void)requestAuthRenewalForMediaService:(id)service homeUserID:(id)d parentNetworkActivity:(id)activity completion:(id)completion;
- (void)switchUserAccountInfo:(id)info homeID:(id)d homeUserID:(id)iD completion:(id)completion;
- (void)updateDefaultMediaService:(id)service homeID:(id)d homeUserID:(id)iD completion:(id)completion;
- (void)updateProperty:(id)property homeID:(id)d homeUserID:(id)iD withOptions:(id)options completion:(id)completion;
@end

@implementation MSDManager

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000121E4;
  block[3] = &unk_1000508C0;
  block[4] = self;
  if (qword_100059A70 != -1)
  {
    dispatch_once(&qword_100059A70, block);
  }

  v2 = qword_100059A68;

  return v2;
}

- (MSDManager)init
{
  v20.receiver = self;
  v20.super_class = MSDManager;
  v2 = [(MSDManager *)&v20 init];
  if (v2)
  {
    v3 = sub_100030FE4();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v22 = "[MSDManager init]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    v4 = +[MSDDefaultsManager sharedManager];
    defaultsManager = v2->_defaultsManager;
    v2->_defaultsManager = v4;

    v6 = dispatch_queue_create("com.apple.mediasetupd.startupQueue", 0);
    startupQueue = v2->_startupQueue;
    v2->_startupQueue = v6;

    objc_initWeak(buf, v2);
    v8 = v2->_startupQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001246C;
    block[3] = &unk_1000509C0;
    objc_copyWeak(&v19, buf);
    dispatch_async(v8, block);
    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v10 = dispatch_queue_create("com.apple.mediasetup.publicdb-refresh-queue", v9);
    publicDBRefreshQueue = v2->_publicDBRefreshQueue;
    v2->_publicDBRefreshQueue = v10;

    v2->_homeKitSyncComplete = 0;
    v12 = +[MSDHomeManager sharedManager];
    [v12 addDelegate:v2];

    v13 = [[MSServerMediator alloc] initWithAccountsDelegate:v2];
    mediator = v2->_mediator;
    v2->_mediator = v13;

    v15 = [[MSServer alloc] initWithMediator:v2->_mediator];
    server = v2->_server;
    v2->_server = v15;

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }

  return v2;
}

- (void)_performStartup
{
  v3 = +[MSDPushService sharedService];
  v4 = objc_opt_new();
  profilesManager = self->_profilesManager;
  self->_profilesManager = v4;

  [(MSDProfilesManager *)self->_profilesManager setDelegate:self];
  [(MSDManager *)self _setupNotifications];

  [(MSDManager *)self _schedulePublicDBRefreshBackgroundTask];
}

- (void)_setupMultiUser
{
  v2 = +[MSDDataController sharedInstance];
  homeManager = [v2 homeManager];
  v4 = +[CKContainer MSDCloudKitContainerID];
  v14 = v4;
  v5 = [NSArray arrayWithObjects:&v14 count:1];
  [homeManager registerToAcceptCloudSharesForContainers:v5];

  if (+[MSDeviceInfo deviceCanManageMultiUser])
  {
    v6 = +[MSDDataController sharedInstance];
    cloudManager = [v6 cloudManager];
    v8 = +[CKContainer MSDCloudKitContainer];
    privateCloudDatabase = [v8 privateCloudDatabase];
    [cloudManager addSubscriptionForDatabase:privateCloudDatabase];

    v10 = +[MSDDataController sharedInstance];
    cloudManager2 = [v10 cloudManager];
    v12 = +[CKContainer MSDCloudKitContainer];
    sharedCloudDatabase = [v12 sharedCloudDatabase];
    [cloudManager2 addSubscriptionForDatabase:sharedCloudDatabase];
  }
}

- (void)_setupNotifications
{
  v3 = sub_100030FE4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Initializing XPC event stream handler", buf, 2u);
  }

  objc_initWeak(buf, self);
  v4 = &_dispatch_main_q;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000127CC;
  handler[3] = &unk_100051458;
  objc_copyWeak(&v6, buf);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, handler);

  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

- (void)_initializeCoalescerObject
{
  v3 = objc_alloc_init(CUCoalescer);
  [v3 setDispatchQueue:&_dispatch_main_q];
  [v3 setMinDelay:MSMinDelayInSecForSchedulingCoalescerTask];
  [v3 setMaxDelay:MSMaxDelayInSecsForSchedulingCoalescerTask];
  [v3 setInvalidationHandler:&stru_100051478];
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100012BF0;
  v8[3] = &unk_1000509C0;
  objc_copyWeak(&v9, &location);
  [v3 setActionHandler:v8];
  v4 = sub_100030FE4();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Initialized CUCoalescer object %{private}@", buf, 0xCu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100012C70;
  v6[3] = &unk_100051310;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_scheduleRefreshTask
{
  v3 = sub_100030FE4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Scheduling task to refresh data with CloudKit", v4, 2u);
  }

  [(MSDManager *)self _initializeBackgroundActivityTask];
}

- (void)_initializeBackgroundActivityTask
{
  v2 = [NSBackgroundActivityScheduler alloc];
  v4 = [v2 initWithIdentifier:kBackgroundActivityDataRefreshTaskIdentifier];
  [v4 invalidate];
  v3 = dispatch_get_global_queue(2, 0);
  dispatch_async(v3, &stru_100051498);
}

- (void)_savePublicDBInfoInDefaults
{
  v2 = +[MSDPublicDBManager shared];
  shouldUseCloudKit = [v2 shouldUseCloudKit];

  if (shouldUseCloudKit)
  {
    v4 = dispatch_group_create();
    dispatch_group_enter(v4);
    v5 = +[MSDPublicDBManager shared];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100013020;
    v9[3] = &unk_1000514E0;
    v6 = v4;
    v10 = v6;
    [v5 syncDataWithCloudKit:v9];

    v7 = dispatch_time(0, 1000000000 * MSMaxWaitInSecondsForFetchDataFromCloudKit);
    if (dispatch_group_wait(v6, v7))
    {
      v8 = sub_100030FE4();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100017CB8();
      }
    }
  }

  else
  {
    v6 = sub_100030FE4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v12 = MSPublicDatabaseRefreshIntervalInSecs / 3600.0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Its been less than %f hours since last Public Database refresh, skipping check", buf, 0xCu);
    }
  }
}

- (void)_markHomeKitInitialized
{
  publicDBRefreshQueue = self->_publicDBRefreshQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013144;
  block[3] = &unk_100050AC0;
  block[4] = self;
  dispatch_async(publicDBRefreshQueue, block);
}

- (void)_schedulePublicDBRefreshBackgroundTask
{
  v3 = sub_100030FE4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Scheduling background task for publicDB refreshes", buf, 2u);
  }

  objc_initWeak(buf, self);
  v4 = +[BGSystemTaskScheduler sharedScheduler];
  publicDBRefreshQueue = self->_publicDBRefreshQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001328C;
  v6[3] = &unk_100051530;
  objc_copyWeak(&v7, buf);
  [v4 registerForTaskWithIdentifier:@"com.apple.mediasetupd.publicDBRefresh" usingQueue:publicDBRefreshQueue launchHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

- (void)_clearCachedIconImage:(id)image
{
  imageCopy = image;
  v4 = [[MSDArtworkManager alloc] initWithServiceID:imageCopy remoteImageURL:0];

  removeCachedIconImage = [(MSDArtworkManager *)v4 removeCachedIconImage];
  v6 = sub_100030FE4();
  v7 = v6;
  if (removeCachedIconImage)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Successfully removed cached service icon image", v8, 2u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100017E04();
  }
}

- (void)getAvailableServices:(id)services userIdentifier:(id)identifier completion:(id)completion
{
  servicesCopy = services;
  identifierCopy = identifier;
  completionCopy = completion;
  v10 = sub_100030FE4();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478083;
    v33 = servicesCopy;
    v34 = 2113;
    v35 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "User is requesting available services for HomeID %{private}@ and HomeUserID %{private}@", buf, 0x16u);
  }

  if (servicesCopy && identifierCopy)
  {
    v11 = +[MSDDataController sharedInstance];
    v28[0] = kCKDatabaseAccessUserInfoHomeIDKey;
    uUIDString = [servicesCopy UUIDString];
    v29[0] = uUIDString;
    v28[1] = kCKDatabaseAccessUserInfoHomeUserIDKey;
    uUIDString2 = [identifierCopy UUIDString];
    v29[1] = uUIDString2;
    v14 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000138F8;
    v26[3] = &unk_100051558;
    v27 = completionCopy;
    [v11 getAvailableServices:v14 completion:v26];

    v15 = v27;
LABEL_10:

    goto LABEL_11;
  }

  v16 = sub_100030FE4();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_100017E40(v16, v17, v18, v19, v20, v21, v22, v23);
  }

  if (completionCopy)
  {
    v24 = MSErrorDomain;
    v30 = MSUserInfoErrorStringKey;
    v31 = @"Failed to fetch available services, NIL identifiers provided";
    v15 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v25 = [NSError errorWithDomain:v24 code:3 userInfo:v15];
    (*(completionCopy + 2))(completionCopy, 0, v25);

    goto LABEL_10;
  }

LABEL_11:
}

- (void)getCachedAvailableServices:(id)services userIdentifier:(id)identifier completion:(id)completion
{
  servicesCopy = services;
  identifierCopy = identifier;
  completionCopy = completion;
  v10 = sub_100030FE4();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478083;
    v28 = servicesCopy;
    v29 = 2113;
    v30 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "User is requesting available services for HomeID %{private}@ and HomeUserID %{private}@", buf, 0x16u);
  }

  if (servicesCopy && identifierCopy)
  {
    v11 = +[MSDDataController sharedInstance];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100013C3C;
    v23[3] = &unk_100051558;
    v24 = completionCopy;
    [v11 getCachedAvailableServices:identifierCopy homeID:servicesCopy completion:v23];

    v12 = v24;
LABEL_10:

    goto LABEL_11;
  }

  v13 = sub_100030FE4();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_100017E40(v13, v14, v15, v16, v17, v18, v19, v20);
  }

  if (completionCopy)
  {
    v21 = MSErrorDomain;
    v25 = MSUserInfoErrorStringKey;
    v26 = @"Failed to fetch available services, NIL identifiers provided";
    v12 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v22 = [NSError errorWithDomain:v21 code:3 userInfo:v12];
    (*(completionCopy + 2))(completionCopy, 0, v22);

    goto LABEL_10;
  }

LABEL_11:
}

- (void)addMediaService:(id)service usingSetupBundles:(id)bundles completion:(id)completion
{
  serviceCopy = service;
  bundlesCopy = bundles;
  completionCopy = completion;
  v11 = objc_retainBlock(completionCopy);
  if (v11)
  {
    if (bundlesCopy && [bundlesCopy count])
    {
      v12 = [bundlesCopy na_map:&stru_100051598];
      v13 = sub_100030FE4();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138478083;
        v31 = serviceCopy;
        v32 = 2113;
        v33 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "User is requesting to add %{private}@ to homes: %{private}@", buf, 0x16u);
      }

      v14 = [MSDTransactionTask createTransactionWithIdentifier:kAddServiceTransactionIdentifier];
      objc_initWeak(buf, self);
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100014040;
      v24[3] = &unk_100051610;
      v28 = v11;
      v15 = v14;
      v25 = v15;
      objc_copyWeak(&v29, buf);
      v26 = serviceCopy;
      v27 = bundlesCopy;
      [MSAuthTokenProvider fetchAuthTokensForMediaService:v26 networkActivity:0 completion:v24];

      objc_destroyWeak(&v29);
      objc_destroyWeak(buf);
    }

    else
    {
      v16 = sub_100030FE4();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100017F88();
      }

      v12 = [NSError errorWithDomain:MSErrorDomain code:3 userInfo:0];
      (*(v11 + 2))(v11, 0, v12);
    }
  }

  else
  {
    v12 = sub_100030FE4();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100017FC4(v12, v17, v18, v19, v20, v21, v22, v23);
    }
  }
}

- (void)removeMediaService:(id)service homeID:(id)d homeUserID:(id)iD completion:(id)completion
{
  serviceCopy = service;
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  v14 = sub_100030FE4();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    serviceID = [serviceCopy serviceID];
    *buf = 138478339;
    v48 = serviceID;
    v49 = 2113;
    v50 = dCopy;
    v51 = 2113;
    v52 = iDCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "User is requesting to remove %{private}@ for HomeID %{private}@ and HomeUserID %{private}@", buf, 0x20u);
  }

  if (([serviceCopy isServiceRemovable] & 1) == 0)
  {
    serviceID2 = [serviceCopy serviceID];
    uUIDString = [serviceID2 UUIDString];
    v20 = [NSString stringWithFormat:@"Removing service %@ is prohibited", uUIDString];

    v23 = sub_100030FE4();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v48 = v20;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    if (completionCopy)
    {
      v24 = MSErrorDomain;
      v45 = MSUserInfoErrorStringKey;
      v46 = v20;
      v25 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      v26 = [NSError errorWithDomain:v24 code:1 userInfo:v25];
      completionCopy[2](completionCopy, 0, v26);
    }

    goto LABEL_15;
  }

  if (dCopy && iDCopy)
  {
    v16 = +[MSDDataController sharedInstance];
    v41[0] = kCKDatabaseAccessUserInfoHomeIDKey;
    uUIDString2 = [dCopy UUIDString];
    v42[0] = uUIDString2;
    v41[1] = kCKDatabaseAccessUserInfoHomeUserIDKey;
    uUIDString3 = [iDCopy UUIDString];
    v42[1] = uUIDString3;
    v19 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:2];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100014940;
    v37[3] = &unk_1000515C0;
    v38 = serviceCopy;
    selfCopy = self;
    v40 = completionCopy;
    [v16 removeMediaService:v38 withUserInfo:v19 completion:v37];

    v20 = v38;
LABEL_15:

    goto LABEL_16;
  }

  v27 = sub_100030FE4();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    sub_100018234(v27, v28, v29, v30, v31, v32, v33, v34);
  }

  if (completionCopy)
  {
    v35 = MSErrorDomain;
    v43 = MSUserInfoErrorStringKey;
    v44 = @"Failed to remove service, NIL identifiers provided";
    v20 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v36 = [NSError errorWithDomain:v35 code:3 userInfo:v20];
    completionCopy[2](completionCopy, 0, v36);

    goto LABEL_15;
  }

LABEL_16:
}

- (void)updateDefaultMediaService:(id)service homeID:(id)d homeUserID:(id)iD completion:(id)completion
{
  serviceCopy = service;
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  v13 = sub_100030FE4();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    serviceID = [serviceCopy serviceID];
    *buf = 138478339;
    v37 = serviceID;
    v38 = 2113;
    v39 = dCopy;
    v40 = 2113;
    v41 = iDCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "User is requesting to update default service %{private}@ for HomeID %{private}@ and HomeUserID %{private}@", buf, 0x20u);
  }

  if (dCopy && iDCopy)
  {
    v15 = +[MSDDataController sharedInstance];
    v32[0] = kCKDatabaseAccessUserInfoHomeIDKey;
    uUIDString = [dCopy UUIDString];
    v33[0] = uUIDString;
    v32[1] = kCKDatabaseAccessUserInfoHomeUserIDKey;
    uUIDString2 = [iDCopy UUIDString];
    v33[1] = uUIDString2;
    v18 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100014D68;
    v30[3] = &unk_100050CA0;
    v31 = completionCopy;
    [v15 updateDefaultMediaService:serviceCopy withUserInfo:v18 completion:v30];

    v19 = v31;
LABEL_10:

    goto LABEL_11;
  }

  v20 = sub_100030FE4();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    sub_100018314(v20, v21, v22, v23, v24, v25, v26, v27);
  }

  if (completionCopy)
  {
    v28 = MSErrorDomain;
    v34 = MSUserInfoErrorStringKey;
    v35 = @"Failed to update default service, NIL identifiers provided";
    v19 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v29 = [NSError errorWithDomain:v28 code:3 userInfo:v19];
    (*(completionCopy + 2))(completionCopy, 0, v29);

    goto LABEL_10;
  }

LABEL_11:
}

- (void)getDefaultMediaService:(id)service homeUserID:(id)d completion:(id)completion
{
  serviceCopy = service;
  dCopy = d;
  completionCopy = completion;
  v10 = sub_100030FE4();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478083;
    v33 = serviceCopy;
    v34 = 2113;
    v35 = dCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "User is requesting to fetch default service for HomeID %{private}@ and HomeUserID %{private}@", buf, 0x16u);
  }

  if (serviceCopy && dCopy)
  {
    v11 = +[MSDDataController sharedInstance];
    v28[0] = kCKDatabaseAccessUserInfoHomeIDKey;
    uUIDString = [serviceCopy UUIDString];
    v29[0] = uUIDString;
    v28[1] = kCKDatabaseAccessUserInfoHomeUserIDKey;
    uUIDString2 = [dCopy UUIDString];
    v29[1] = uUIDString2;
    v14 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000150A0;
    v26[3] = &unk_100051638;
    v27 = completionCopy;
    [v11 getDefaultMediaService:v14 completion:v26];

    v15 = v27;
LABEL_10:

    goto LABEL_11;
  }

  v16 = sub_100030FE4();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_1000183F4(v16, v17, v18, v19, v20, v21, v22, v23);
  }

  if (completionCopy)
  {
    v24 = MSErrorDomain;
    v30 = MSUserInfoErrorStringKey;
    v31 = @"Failed to fetch default service, NIL identifiers provided";
    v15 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v25 = [NSError errorWithDomain:v24 code:3 userInfo:v15];
    (*(completionCopy + 2))(completionCopy, 0, v25);

    goto LABEL_10;
  }

LABEL_11:
}

- (void)updateProperty:(id)property homeID:(id)d homeUserID:(id)iD withOptions:(id)options completion:(id)completion
{
  propertyCopy = property;
  dCopy = d;
  iDCopy = iD;
  optionsCopy = options;
  completionCopy = completion;
  v16 = completionCopy;
  if (!propertyCopy)
  {
    if (!completionCopy)
    {
      goto LABEL_18;
    }

    v24 = MSErrorDomain;
    v52 = MSUserInfoErrorStringKey;
    v53 = @"Nil MediaService object";
    v23 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    v25 = v24;
    v26 = 2;
LABEL_16:
    v37 = [NSError errorWithDomain:v25 code:v26 userInfo:v23];
    (v16)[2](v16, 0, v37);

    goto LABEL_17;
  }

  if (!optionsCopy)
  {
    if (!completionCopy)
    {
      goto LABEL_18;
    }

    v27 = MSErrorDomain;
    v50 = MSUserInfoErrorStringKey;
    v51 = @"Nil property values";
    v23 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    v25 = v27;
    v26 = 1;
    goto LABEL_16;
  }

  v17 = sub_100030FE4();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    serviceID = [propertyCopy serviceID];
    *buf = 138478339;
    v45 = serviceID;
    v46 = 2113;
    v47 = dCopy;
    v48 = 2113;
    v49 = iDCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "User is requesting to update property for %{private}@ for HomeID %{private}@ and HomeUserID %{private}@", buf, 0x20u);
  }

  if (dCopy && iDCopy)
  {
    v19 = +[MSDDataController sharedInstance];
    v40[0] = kCKDatabaseAccessUserInfoHomeIDKey;
    uUIDString = [dCopy UUIDString];
    v41[0] = uUIDString;
    v40[1] = kCKDatabaseAccessUserInfoHomeUserIDKey;
    uUIDString2 = [iDCopy UUIDString];
    v41[1] = uUIDString2;
    v22 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:2];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_10001559C;
    v38[3] = &unk_100050CA0;
    v39 = v16;
    [v19 updateProperty:propertyCopy propertyInfo:optionsCopy withUserInfo:v22 completion:v38];

    v23 = v39;
LABEL_17:

    goto LABEL_18;
  }

  v28 = sub_100030FE4();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    sub_1000184D4(v28, v29, v30, v31, v32, v33, v34, v35);
  }

  if (v16)
  {
    v36 = MSErrorDomain;
    v42 = MSUserInfoErrorStringKey;
    v43 = @"Failed to update property, NIL identifiers provided";
    v23 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v25 = v36;
    v26 = 3;
    goto LABEL_16;
  }

LABEL_18:
}

- (void)getServiceConfigurationInfo:(id)info serviceID:(id)d completion:(id)completion
{
  infoCopy = info;
  dCopy = d;
  completionCopy = completion;
  v10 = sub_100030FE4();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478083;
    v28 = infoCopy;
    v29 = 2112;
    v30 = dCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "User is requesting to fetch service info for %{private}@ and serviceID %@", buf, 0x16u);
  }

  if (infoCopy && [infoCopy count])
  {
    v11 = +[MSDDataController sharedInstance];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100015864;
    v23[3] = &unk_100051660;
    v24 = completionCopy;
    [v11 getServiceConfigurationInfo:infoCopy serviceID:dCopy completion:v23];

    v12 = v24;
LABEL_10:

    goto LABEL_11;
  }

  v13 = sub_100030FE4();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_1000185B4(v13, v14, v15, v16, v17, v18, v19, v20);
  }

  if (completionCopy)
  {
    v21 = MSErrorDomain;
    v25 = NSLocalizedDescriptionKey;
    v26 = @"Failed to fetch service config info for Nil homeUserID";
    v12 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v22 = [NSError errorWithDomain:v21 code:1 userInfo:v12];
    (*(completionCopy + 2))(completionCopy, 0, v22);

    goto LABEL_10;
  }

LABEL_11:
}

- (void)getDefaultMediaServiceForAllUsers:(id)users
{
  if (users)
  {
    v4 = MSErrorDomain;
    v8 = NSLocalizedDescriptionKey;
    v9 = @"Function called on unsupported platform";
    usersCopy = users;
    v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v7 = [NSError errorWithDomain:v4 code:11 userInfo:v6];
    (*(users + 2))(usersCopy, 0, v7);
  }
}

- (void)getPublicInfoForBundleID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (completionCopy)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100015AD4;
    v7[3] = &unk_100051688;
    v8 = dCopy;
    v9 = completionCopy;
    [MSDPublicDBManager getPublicInfoForBundleID:v8 completion:v7];
  }
}

- (void)getCachedServiceInfo:(id)info homeUserID:(id)d endpointID:(id)iD completion:(id)completion
{
  if (completion)
  {
    v7 = MSErrorDomain;
    v11 = NSLocalizedDescriptionKey;
    v12 = @"Function called on unsupported platform";
    completionCopy = completion;
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v10 = [NSError errorWithDomain:v7 code:11 userInfo:v9];
    (*(completion + 2))(completionCopy, 0, 0, v10);
  }
}

- (void)requestAuthRenewalForMediaService:(id)service homeUserID:(id)d parentNetworkActivity:(id)activity completion:(id)completion
{
  if (completion)
  {
    v7 = MSErrorDomain;
    v11 = NSLocalizedDescriptionKey;
    v12 = @"Function called on unsupported platform";
    completionCopy = completion;
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v10 = [NSError errorWithDomain:v7 code:11 userInfo:v9];
    (*(completion + 2))(completionCopy, 0, v10);
  }
}

- (void)getResolvedServiceInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  if (completionCopy)
  {
    v7 = MSErrorDomain;
    if (infoCopy)
    {
      v12 = NSLocalizedDescriptionKey;
      v13 = @"Function called on unsupported platform";
      v8 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v9 = v7;
      v10 = 11;
    }

    else
    {
      v14 = NSLocalizedDescriptionKey;
      v15 = @"INIntent cannot be nil";
      v8 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v9 = v7;
      v10 = 1;
    }

    v11 = [NSError errorWithDomain:v9 code:v10 userInfo:v8];
    completionCopy[2](completionCopy, 0, v11);
  }
}

- (void)getResolvedServiceInfo:(id)info sharedUserID:(id)d completion:(id)completion
{
  if (completion)
  {
    v6 = MSErrorDomain;
    v10 = NSLocalizedDescriptionKey;
    v11 = @"Function called on unsupported platform";
    completionCopy = completion;
    v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v9 = [NSError errorWithDomain:v6 code:11 userInfo:v8];
    (*(completion + 2))(completionCopy, 0, v9);
  }
}

- (void)overrideAppleMusicSubscriptionStatus:(BOOL)status homeUserIDS:(id)s completion:(id)completion
{
  if (completion)
  {
    v6 = MSErrorDomain;
    v10 = NSLocalizedDescriptionKey;
    v11 = @"Function called on unsupported platform";
    completionCopy = completion;
    v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v9 = [NSError errorWithDomain:v6 code:11 userInfo:v8];
    (*(completion + 2))(completionCopy, v9);
  }
}

- (void)activeServiceApplicationInformationForSharedUserID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    dCopy = d;
    v8 = [[NSUUID alloc] initWithUUIDString:dCopy];

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000161C0;
    v9[3] = &unk_1000516B0;
    v10 = handlerCopy;
    [(MSDManager *)self getMediaServiceChoicesForSharedUser:v8 completion:v9];
  }
}

- (void)switchUserAccountInfo:(id)info homeID:(id)d homeUserID:(id)iD completion:(id)completion
{
  infoCopy = info;
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  if (completionCopy)
  {
    v13 = sub_100030FE4();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v24 = iDCopy;
      v25 = 2112;
      v26 = dCopy;
      v27 = 2112;
      v28 = infoCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Switching account info for user - %@ in home - %@, %@", buf, 0x20u);
    }

    if (infoCopy && dCopy && iDCopy)
    {
      v14 = +[MSDDataController sharedInstance];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000164B0;
      v18[3] = &unk_1000516D8;
      v19 = infoCopy;
      v20 = completionCopy;
      [v14 switchUserAccountInfo:v19 homeID:dCopy homeUserID:iDCopy completion:v18];

      v15 = v19;
    }

    else
    {
      v16 = MSErrorDomain;
      v21 = NSLocalizedDescriptionKey;
      v22 = @"Failed to switch user account info, Nil Attributes provided";
      v15 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v17 = [NSError errorWithDomain:v16 code:1 userInfo:v15];
      (*(completionCopy + 2))(completionCopy, v17);
    }
  }
}

- (void)getSupportedThirdPartyMediaServices:(id)services
{
  if (services)
  {
    v4 = MSErrorDomain;
    v8 = NSLocalizedDescriptionKey;
    v9 = @"Function called on unsupported platform";
    servicesCopy = services;
    v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v7 = [NSError errorWithDomain:v4 code:11 userInfo:v6];
    (*(services + 2))(servicesCopy, 0, v7);
  }
}

- (void)getMediaServiceChoicesForSharedUser:(id)user completion:(id)completion
{
  if (completion)
  {
    v5 = MSErrorDomain;
    v9 = NSLocalizedDescriptionKey;
    v10 = @"Function called on unsupported platform";
    completionCopy = completion;
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v8 = [NSError errorWithDomain:v5 code:11 userInfo:v7];
    (*(completion + 2))(completionCopy, 0, v8);
  }
}

- (void)profilesManager:(id)manager didAddProfiles:(id)profiles
{
  managerCopy = manager;
  profilesCopy = profiles;
  v5 = sub_100030FE4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[MSDManager profilesManager:didAddProfiles:]";
    *&buf[12] = 2112;
    *&buf[14] = profilesCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s profile: %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v60 = sub_100016E54;
  v61 = sub_100016E64;
  v62 = objc_opt_new();
  v36 = dispatch_semaphore_create(0);
  v6 = +[MSDPublicDBManager shared];
  shouldUseCloudKit = [v6 shouldUseCloudKit];

  if (shouldUseCloudKit)
  {
    v8 = sub_100030FE4();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v55 = 136315394;
      v56 = "[MSDManager profilesManager:didAddProfiles:]";
      v57 = 2048;
      v58 = MSPublicDatabaseRefreshIntervalInSecs / 3600.0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s its been more than %f hours since last update: Pulling from CK", v55, 0x16u);
    }

    v9 = +[MSDPublicDBManager shared];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100016E6C;
    v50[3] = &unk_100051700;
    v52 = buf;
    v10 = v36;
    v51 = v10;
    [v9 syncDataWithCloudKit:v50];

    v11 = dispatch_time(0, 1000000000 * MSMaxWaitInSecondsForFetchDataFromCloudKit);
    if (dispatch_semaphore_wait(v10, v11))
    {
      v12 = sub_100030FE4();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100018694();
      }
    }

    v13 = v51;
  }

  else
  {
    v13 = +[MSDPublicDBManager getCachedPublicInfo];
    v14 = [v13 mutableCopy];
    v15 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v14;
  }

  v16 = *(*&buf[8] + 40);
  if (v16 && [v16 count])
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = profilesCopy;
    v40 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
    if (v40)
    {
      v39 = *v47;
      do
      {
        for (i = 0; i != v40; i = i + 1)
        {
          if (*v47 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v46 + 1) + 8 * i);
          v18 = sub_100030FE4();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *v55 = 138412290;
            v56 = v17;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Attempting to configure system with profileData %@", v55, 0xCu);
          }

          v19 = +[MSDPublicDBManager shared];
          v20 = [v19 createPublicDBInfoObjectFromDictionary:v17];

          v21 = [*(*&buf[8] + 40) mutableCopy];
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v22 = *(*&buf[8] + 40);
          v23 = [v22 countByEnumeratingWithState:&v42 objects:v53 count:16];
          if (v23)
          {
            v24 = *v43;
            do
            {
              for (j = 0; j != v23; j = j + 1)
              {
                if (*v43 != v24)
                {
                  objc_enumerationMutation(v22);
                }

                v26 = *(*(&v42 + 1) + 8 * j);
                serviceID = [v26 serviceID];
                serviceID2 = [v20 serviceID];
                v29 = [serviceID isEqual:serviceID2];

                if (v29)
                {
                  [v21 removeObjectIdenticalTo:v26];
                }
              }

              v23 = [v22 countByEnumeratingWithState:&v42 objects:v53 count:16];
            }

            while (v23);
          }

          v30 = [v21 mutableCopy];
          v31 = *(*&buf[8] + 40);
          *(*&buf[8] + 40) = v30;

          [*(*&buf[8] + 40) na_safeAddObject:v20];
        }

        v40 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
      }

      while (v40);
    }

    v32 = sub_100030FE4();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = *(*&buf[8] + 40);
      *v55 = 138412290;
      v56 = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Updating PublicDB cachedCopy with Data %@", v55, 0xCu);
    }

    v34 = +[MSDDefaultsManager sharedManager];
    [v34 setObjectWithCustomClass:*(*&buf[8] + 40) forDefault:@"publicDBData"];
  }

  else
  {
    v34 = sub_100030FE4();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_1000186D0();
    }
  }

  _Block_object_dispose(buf, 8);
}

- (void)profilesManager:(id)manager didUpdateProfiles:(id)profiles
{
  profilesCopy = profiles;
  v6 = [profilesCopy count];
  v7 = sub_100030FE4();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v52 = "[MSDManager profilesManager:didUpdateProfiles:]";
    v53 = 2112;
    v54 = profilesCopy;
    v55 = 2048;
    v56 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s profile: %@ activeProfilesOnDevice %lu", buf, 0x20u);
  }

  v8 = +[MSDDefaultsManager sharedManager];
  profilesEverInstalled = [v8 profilesEverInstalled];

  currentHome = sub_100030FE4();
  v11 = os_log_type_enabled(currentHome, OS_LOG_TYPE_DEFAULT);
  if (profilesEverInstalled)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, currentHome, OS_LOG_TYPE_DEFAULT, "Developer profile loaded on device, checking service sanity", buf, 2u);
    }

    v12 = +[MSDHomeManager sharedManager];
    currentHome = [v12 currentHome];

    if (!currentHome)
    {
      v18 = sub_100030FE4();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1000187B0(v18, v33, v34, v35, v36, v37, v38, v39);
      }

      goto LABEL_23;
    }

    currentUser = [currentHome currentUser];
    uniqueIdentifier = [currentUser uniqueIdentifier];
    if (uniqueIdentifier)
    {
      v15 = uniqueIdentifier;
      uniqueIdentifier2 = [currentHome uniqueIdentifier];

      if (uniqueIdentifier2)
      {
        v17 = +[MSDDefaultsManager sharedManager];
        v18 = [v17 objectForKeyInDefaultDomain:@"publicDBData"];

        v19 = [v18 na_map:&stru_100051740];
        v20 = +[MSDDefaultsManager sharedManager];
        v21 = [v20 objectForKeyInDeveloperDomain:@"publicDBData"];

        v22 = [v21 na_map:&stru_100051760];
        v23 = [v22 mutableCopy];

        v24 = [profilesCopy na_map:&stru_1000517A0];
        [v23 removeObjectsInArray:v24];
        [v23 removeObjectsInArray:v19];
        if ([v23 count])
        {
          v41 = v24;
          v42 = v21;
          v43 = v19;
          v49[0] = kCKDatabaseAccessUserInfoHomeIDKey;
          uniqueIdentifier3 = [currentHome uniqueIdentifier];
          uUIDString = [uniqueIdentifier3 UUIDString];
          v50[0] = uUIDString;
          v49[1] = kCKDatabaseAccessUserInfoHomeUserIDKey;
          currentUser2 = [currentHome currentUser];
          uniqueIdentifier4 = [currentUser2 uniqueIdentifier];
          uUIDString2 = [uniqueIdentifier4 UUIDString];
          v50[1] = uUIDString2;
          v40 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:2];

          v30 = sub_100030FE4();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138477827;
            v52 = v23;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Remove services with IDS: %{private}@", buf, 0xCu);
          }

          v31 = +[MSDDataController sharedInstance];
          v44[0] = _NSConcreteStackBlock;
          v44[1] = 3221225472;
          v44[2] = sub_10001759C;
          v44[3] = &unk_1000517F0;
          v45 = profilesCopy;
          v21 = v42;
          v46 = v42;
          v47 = v23;
          selfCopy = self;
          v32 = v40;
          [v31 removeMediaServices:v47 withUserInfo:v40 completion:v44];

          v19 = v43;
          v24 = v41;
        }

        else
        {
          v32 = sub_100030FE4();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Everything is up to date, nothing to delete", buf, 2u);
          }
        }

LABEL_23:
        goto LABEL_24;
      }
    }

    else
    {
    }

    v18 = sub_100030FE4();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100018774();
    }

    goto LABEL_23;
  }

  if (v11)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, currentHome, OS_LOG_TYPE_DEFAULT, "Developer profile was not loaded on device, skipping service check", buf, 2u);
  }

LABEL_24:
}

- (void)homeManager:(id)manager didHomeKitSyncComplete:(id)complete
{
  v5 = [(MSDManager *)self startupQueue:manager];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000179C0;
  block[3] = &unk_100050AC0;
  block[4] = self;
  dispatch_async(v5, block);
}

@end