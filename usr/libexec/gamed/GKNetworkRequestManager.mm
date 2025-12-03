@interface GKNetworkRequestManager
+ (BOOL)useJSONForBagKey:(id)key;
+ (Class)networkRequestClass:(id)class;
+ (id)commonNetworkRequestManager;
+ (id)dictionaryFromTaskDescription:(id)description;
+ (id)getGameDescriptorForRequest:(id)request;
+ (id)getPostDataForRequest:(id)request bagKey:(id)key;
+ (id)headersAsRequestEntries;
+ (id)makeEntityCacheProviderInMemory:(BOOL)memory;
+ (id)makeEntityIDWithRequest:(id)request bagKey:(id)key;
+ (id)networkRequestFromNsurlTask:(id)task;
+ (id)taskWithRequest:(id)request description:(id)description session:(id)session;
+ (id)uuidFromTask:(id)task;
- (BOOL)beforeFirstUnlock;
- (BOOL)doesCallbackListExistFor:(id)for parameters:(id)parameters callback:(id)callback;
- (BOOL)managerReady;
- (GKNetworkRequestManager)initWithInMemoryEntityCache:(BOOL)cache;
- (id)canSafelyIssueRequest:(id)request;
- (id)contentsOfPendingStore:(id)store;
- (id)dictionaryForBagAndPlayer:(id)player createIfNotPresent:(BOOL)present description:(id)description;
- (id)existingWaitListDate:(id)date;
- (id)filePathToTempFile:(id)file fileName:(id)name;
- (id)pathToTempFile:(id)file fileName:(id)name;
- (id)pendingLocation;
- (id)playerCredentialsForClientProxy:(id)proxy;
- (id)resultsLocation;
- (id)retrieveAndClearCallbacks:(id)callbacks parameters:(id)parameters;
- (id)taskFromIdentifier:(id)identifier;
- (id)waitListLocation;
- (int64_t)relatedTasksExistForBagKey:(id)key;
- (void)_issueRequestForPlayer:(id)player preconnect:(BOOL)preconnect bagKey:(id)key clientProxy:(id)proxy locale:(id)locale playerCredential:(id)credential handler:(id)handler;
- (void)addNetworkRequest:(id)request description:(id)description clientProxy:(id)proxy;
- (void)assembleRequest:(id)request bagKey:(id)key clientProxy:(id)proxy sapSession:(id)session handler:(id)handler;
- (void)assembleRequestForPlayer:(id)player bagKey:(id)key preconnect:(BOOL)preconnect clientProxy:(id)proxy sapSession:(id)session playerCredential:(id)credential handler:(id)handler;
- (void)cancelCurrentTasks;
- (void)cleanUpPendingStore:(id)store;
- (void)createEntityWithRequest:(NSDictionary *)request bagKey:(NSString *)key clientProxy:(GKClientProxy *)proxy entityMaker:(id)maker completionHandler:;
- (void)createEntityWithRequest:(id)request bagKey:(id)key clientProxy:(id)proxy completionHandler:(id)handler entityMaker:(id)maker;
- (void)deleteEntitiesWithBagKey:(NSString *)key clientProxy:(GKClientProxy *)proxy completionHandler:(id)handler;
- (void)getFairPlaySession:(id)session;
- (void)handleRetryAfter:(id)after;
- (void)handleTaskFinished:(id)finished;
- (void)issuePending;
- (void)issuePreconnectRequestForBagKey:(id)key clientProxy:(id)proxy handler:(id)handler;
- (void)issueRequest:(id)request bagKey:(id)key clientProxy:(id)proxy locale:(id)locale handler:(id)handler;
- (void)issueRequestForPlayer:(id)player bagKey:(id)key clientProxy:(id)proxy locale:(id)locale playerCredential:(id)credential handler:(id)handler;
- (void)readEntityWithRequest:(NSDictionary *)request bagKey:(NSString *)key includeStaleCacheData:(BOOL)data clientProxy:(GKClientProxy *)proxy entityMaker:(id)maker completionHandler:;
- (void)readEntityWithRequest:(id)request bagKey:(id)key includeStaleCacheData:(BOOL)data clientProxy:(id)proxy completionHandler:(id)handler entityMaker:(id)maker;
- (void)setWaitPeriod:(id)period waitPeriod:(double)waitPeriod;
- (void)setupSessionsAsync;
- (void)writeToNetwork:(id)network clientProxy:(id)proxy handler:(id)handler;
- (void)writeToPendingStore:(id)store fileName:(id)name;
@end

@implementation GKNetworkRequestManager

- (BOOL)doesCallbackListExistFor:(id)for parameters:(id)parameters callback:(id)callback
{
  forCopy = for;
  callbackCopy = callback;
  v10 = callbackCopy;
  v11 = 0;
  if (forCopy && callbackCopy)
  {
    v12 = forCopy;
    v13 = [parameters sortedArrayUsingSelector:"compare:"];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v28;
      do
      {
        v17 = 0;
        v18 = v12;
        do
        {
          if (*v28 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v12 = [v18 stringByAppendingString:*(*(&v27 + 1) + 8 * v17)];

          v17 = v17 + 1;
          v18 = v12;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v15);
    }

    os_unfair_lock_lock(&self->_pendingCallbacksLock);
    pendingCallbacks = [(GKNetworkRequestManager *)self pendingCallbacks];
    v20 = [pendingCallbacks objectForKeyedSubscript:v12];

    v11 = v20 != 0;
    if (!v20)
    {
      v21 = objc_opt_new();
      pendingCallbacks2 = [(GKNetworkRequestManager *)self pendingCallbacks];
      [pendingCallbacks2 setObject:v21 forKeyedSubscript:v12];
    }

    pendingCallbacks3 = [(GKNetworkRequestManager *)self pendingCallbacks];
    v24 = [pendingCallbacks3 objectForKeyedSubscript:v12];
    v25 = [v10 copy];
    [v24 addObject:v25];

    os_unfair_lock_unlock(&self->_pendingCallbacksLock);
  }

  return v11;
}

- (id)retrieveAndClearCallbacks:(id)callbacks parameters:(id)parameters
{
  callbacksCopy = callbacks;
  v7 = callbacksCopy;
  if (callbacksCopy)
  {
    v8 = callbacksCopy;
    v9 = [parameters sortedArrayUsingSelector:"compare:"];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        v13 = 0;
        v14 = v8;
        do
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v8 = [v14 stringByAppendingString:*(*(&v21 + 1) + 8 * v13)];

          v13 = v13 + 1;
          v14 = v8;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    os_unfair_lock_lock(&self->_pendingCallbacksLock);
    pendingCallbacks = [(GKNetworkRequestManager *)self pendingCallbacks];
    v16 = [pendingCallbacks objectForKeyedSubscript:v8];

    if (v16)
    {
      pendingCallbacks2 = [(GKNetworkRequestManager *)self pendingCallbacks];
      v18 = [pendingCallbacks2 objectForKeyedSubscript:v8];

      pendingCallbacks3 = [(GKNetworkRequestManager *)self pendingCallbacks];
      [pendingCallbacks3 setObject:0 forKeyedSubscript:v8];
    }

    else
    {
      v18 = 0;
    }

    os_unfair_lock_unlock(&self->_pendingCallbacksLock);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)getGameDescriptorForRequest:(id)request
{
  v3 = [request objectForKeyedSubscript:@"game"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)getPostDataForRequest:(id)request bagKey:(id)key
{
  requestCopy = request;
  if (requestCopy)
  {
    if ([self useJSONForBagKey:key])
    {
      [NSJSONSerialization dataWithJSONObject:requestCopy options:0 error:0];
    }

    else
    {
      [NSPropertyListSerialization dataWithPropertyList:requestCopy format:100 options:0 error:0];
    }
    v8 = ;
    headersAsRequestEntries = [self headersAsRequestEntries];
    allObjects = [headersAsRequestEntries allObjects];
    v11 = [requestCopy _gkSubDictionaryWithKeys:allObjects];

    if ([v11 count])
    {
      v12 = [[GKHTTPRequestData alloc] initWithData:v8 headers:v11];
    }

    else
    {
      v12 = v8;
    }

    v7 = v12;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)dictionaryFromTaskDescription:(id)description
{
  taskDescription = [description taskDescription];
  if (taskDescription)
  {
    v4 = [[NSData alloc] initWithBase64EncodedString:taskDescription options:0];
    if (v4)
    {
      v11 = 0;
      v5 = [NSJSONSerialization JSONObjectWithData:v4 options:0 error:&v11];
      v6 = v11;
      if (v6)
      {
        if (!os_log_GKGeneral)
        {
          v7 = GKOSLoggers();
        }

        v8 = os_log_GKDaemon;
        if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v13 = v6;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "GKNetworkRequestManager JSON serialization error: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v5 = &__NSDictionary0__struct;
    }
  }

  else
  {
    v5 = &__NSDictionary0__struct;
  }

  v9 = [v5 mutableCopy];

  return v9;
}

- (void)getFairPlaySession:(id)session
{
  sessionCopy = session;
  objc_initWeak(&location, self);
  fairPlaySessionProvider = [(GKNetworkRequestManager *)self fairPlaySessionProvider];
  v6 = +[GKDataRequestManager sharedManager];
  storeBag = [v6 storeBag];
  v8 = +[GKReporter reporter];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000FDB28;
  v10[3] = &unk_100366B00;
  objc_copyWeak(&v12, &location);
  v9 = sessionCopy;
  v11 = v9;
  [fairPlaySessionProvider fairPlaySessionWithStoreBag:storeBag reporter:v8 completionHandler:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (id)filePathToTempFile:(id)file fileName:(id)name
{
  nameCopy = name;
  fileCopy = file;
  v7 = [NSURL alloc];
  v8 = [fileCopy stringByAppendingPathComponent:nameCopy];

  v9 = [v7 initFileURLWithPath:v8];

  return v9;
}

- (id)pathToTempFile:(id)file fileName:(id)name
{
  v4 = [file stringByAppendingPathComponent:name];
  v5 = [NSURL URLWithString:v4];

  return v5;
}

- (void)cleanUpPendingStore:(id)store
{
  storeCopy = store;
  pendingLocation = [(GKNetworkRequestManager *)self pendingLocation];
  v6 = [(GKNetworkRequestManager *)self filePathToTempFile:pendingLocation fileName:storeCopy];

  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "GKNetworkRequestManager clearing pending location: %@", &v11, 0xCu);
  }

  v9 = +[NSFileManager defaultManager];
  path = [v6 path];
  [v9 removeItemAtPath:path error:0];
}

- (id)contentsOfPendingStore:(id)store
{
  storeCopy = store;
  stateQueue = [(GKNetworkRequestManager *)self stateQueue];
  dispatch_assert_queue_V2(stateQueue);

  pendingLocation = [(GKNetworkRequestManager *)self pendingLocation];
  v7 = [(GKNetworkRequestManager *)self pathToTempFile:pendingLocation fileName:storeCopy];

  if (v7)
  {
    path = [v7 path];
    v9 = [NSDictionary dictionaryWithContentsOfFile:path];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)writeToPendingStore:(id)store fileName:(id)name
{
  storeCopy = store;
  nameCopy = name;
  stateQueue = [(GKNetworkRequestManager *)self stateQueue];
  dispatch_assert_queue_V2(stateQueue);

  pendingLocation = [(GKNetworkRequestManager *)self pendingLocation];
  v10 = [(GKNetworkRequestManager *)self pathToTempFile:pendingLocation fileName:nameCopy];

  path = [v10 path];
  v12 = +[NSFileManager defaultManager];
  if (![v12 fileExistsAtPath:path])
  {
    goto LABEL_7;
  }

  if ([v12 removeItemAtPath:path error:0])
  {
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    v14 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Removed existing file", &v23, 2u);
    }

LABEL_7:
    if ([storeCopy writeToFile:path atomically:1])
    {
      if (!os_log_GKGeneral)
      {
        v15 = GKOSLoggers();
      }

      v16 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        v23 = 138412290;
        v24 = nameCopy;
        v17 = "writeDictionaryToFile succeeded for: %@";
LABEL_20:
        v20 = v16;
        v21 = 12;
        goto LABEL_21;
      }
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v18 = GKOSLoggers();
      }

      v19 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        LOWORD(v23) = 0;
        v17 = "Failed to write pending data";
        v20 = v19;
        v21 = 2;
LABEL_21:
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, v17, &v23, v21);
        goto LABEL_22;
      }
    }

    goto LABEL_22;
  }

  if (!os_log_GKGeneral)
  {
    v22 = GKOSLoggers();
  }

  v16 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v23 = 138412290;
    v24 = path;
    v17 = "Could not remove file: %@";
    goto LABEL_20;
  }

LABEL_22:
}

- (BOOL)beforeFirstUnlock
{
  stateQueue = [(GKNetworkRequestManager *)self stateQueue];
  dispatch_assert_queue_V2(stateQueue);

  if ([(GKNetworkRequestManager *)self firstUnlockedState])
  {
    if (MKBDeviceFormattedForContentProtection())
    {
      v4 = MKBDeviceUnlockedSinceBoot() != 1;
    }

    else
    {
      v4 = 0;
    }

    [(GKNetworkRequestManager *)self setFirstUnlockedState:v4];
  }

  return [(GKNetworkRequestManager *)self firstUnlockedState];
}

+ (id)commonNetworkRequestManager
{
  if (qword_1003B91C8 != -1)
  {
    sub_10028DD40();
  }

  v3 = qword_1003B91C0;

  return v3;
}

- (GKNetworkRequestManager)initWithInMemoryEntityCache:(BOOL)cache
{
  cacheCopy = cache;
  v34.receiver = self;
  v34.super_class = GKNetworkRequestManager;
  v4 = [(GKNetworkRequestManager *)&v34 init];
  v5 = v4;
  if (v4)
  {
    v4->_firstUnlockedState = 1;
    [(GKNetworkRequestManager *)v4 setPendingCallbacksLock:0];
    v6 = objc_opt_new();
    [(GKNetworkRequestManager *)v5 setPendingCallbacks:v6];

    [(GKNetworkRequestManager *)v5 setWaitListCallbacksLock:0];
    serviceDependancyMappings = v5->_serviceDependancyMappings;
    v5->_serviceDependancyMappings = &off_100383190;

    v8 = objc_alloc_init(NSMutableDictionary);
    existingTasks = v5->_existingTasks;
    v5->_existingTasks = v8;

    v5->_currentState = 0;
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.gamed.networkmanager.state", v10);
    stateQueue = v5->_stateQueue;
    v5->_stateQueue = v11;

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.gamed.networkmanager.handler", v13);
    handlerQueue = v5->_handlerQueue;
    v5->_handlerQueue = v14;

    v16 = objc_alloc_init(NSOperationQueue);
    operationQueue = v5->_operationQueue;
    v5->_operationQueue = v16;

    [(NSOperationQueue *)v5->_operationQueue setMaxConcurrentOperationCount:1];
    v5->_reportedExessiveRequests = 0;
    v18 = +[NSURLSessionConfiguration defaultSessionConfiguration];
    inProcessConfig = v5->_inProcessConfig;
    v5->_inProcessConfig = v18;

    v20 = objc_alloc_init(_TtC14GameDaemonCore32GKInstrumentedURLSessionDelegate);
    inProcessTasksSessionDelegate = v5->_inProcessTasksSessionDelegate;
    v5->_inProcessTasksSessionDelegate = v20;

    v22 = v5->_inProcessConfig;
    inProcessTasksSessionDelegate = [(GKNetworkRequestManager *)v5 inProcessTasksSessionDelegate];
    operationQueue = [(GKNetworkRequestManager *)v5 operationQueue];
    v25 = [NSURLSession sessionWithConfiguration:v22 delegate:inProcessTasksSessionDelegate delegateQueue:operationQueue];
    inProcessSession = v5->_inProcessSession;
    v5->_inProcessSession = v25;

    v27 = [[GKFairPlaySessionProvider alloc] initWithSession:v5->_inProcessSession];
    fairPlaySessionProvider = v5->_fairPlaySessionProvider;
    v5->_fairPlaySessionProvider = v27;

    v29 = objc_alloc_init(GKAppMetadataFetcher);
    appMetadataFetcher = v5->_appMetadataFetcher;
    v5->_appMetadataFetcher = v29;

    v31 = [GKNetworkRequestManager makeEntityCacheProviderInMemory:cacheCopy];
    entityCacheProvider = v5->_entityCacheProvider;
    v5->_entityCacheProvider = v31;
  }

  return v5;
}

- (void)cancelCurrentTasks
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKNetworkRequestManager cancelling all existing tasks:", buf, 2u);
  }

  backgroundSession = [(GKNetworkRequestManager *)self backgroundSession];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000FE5D0;
  v6[3] = &unk_100366B48;
  v6[4] = self;
  [backgroundSession getAllTasksWithCompletionHandler:v6];
}

- (int64_t)relatedTasksExistForBagKey:(id)key
{
  keyCopy = key;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 2;
  serviceDependancyMappings = [(GKNetworkRequestManager *)self serviceDependancyMappings];
  v6 = [serviceDependancyMappings objectForKeyedSubscript:keyCopy];

  if (v6)
  {
    stateQueue = [(GKNetworkRequestManager *)self stateQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000FEA34;
    block[3] = &unk_100362AB0;
    block[4] = self;
    v14 = v6;
    v15 = &v16;
    dispatch_sync(stateQueue, block);

    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v9 = os_log_GKDaemon;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [NSNumber numberWithInteger:v17[3]];
      *buf = 138412546;
      v21 = keyCopy;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "GKNetworkRequestManager the outcome of relatedTasksExistForBagKey %@ is: %@", buf, 0x16u);
    }

    v11 = v17[3];
  }

  else
  {
    v11 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  return v11;
}

+ (Class)networkRequestClass:(id)class
{
  classCopy = class;
  v4 = +[GKRemoveFriendNetworkRequest bagKey];
  v5 = [v4 isEqualToString:classCopy];

  if (v5 & 1) != 0 || (+[GKRemoveAllFriendsNetworkRequest bagKey](GKRemoveAllFriendsNetworkRequest, "bagKey"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isEqualToString:classCopy], v6, (v7) || (+[GKChallengeNetworkRequest bagKey](GKChallengeNetworkRequest, "bagKey"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", classCopy), v8, (v9) || (+[GKAbortChallengeNetworkRequest bagKey](GKAbortChallengeNetworkRequest, "bagKey"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", classCopy), v10, (v11) || (+[GKAchievementNetworkRequest bagKey](GKAchievementNetworkRequest, "bagKey"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", classCopy), v12, (v13) || (+[GKScoreNetworkRequest bagKey](GKScoreNetworkRequest, "bagKey"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", classCopy), v14, (v15) || (+[GKInstanceScoreNetworkRequest bagKey](GKInstanceScoreNetworkRequest, "bagKey"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", classCopy), v16, (v17) || (+[GKPlayerGameSettingsNetworkRequest bagKey](GKPlayerGameSettingsNetworkRequest, "bagKey"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqualToString:", classCopy), v18, (v19) || (+[GKMultiplayerGroupRequest bagKey](GKMultiplayerGroupRequest, "bagKey"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isEqualToString:", classCopy), v20, v21))
  {
    v22 = objc_opt_class();
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  return v22;
}

+ (id)networkRequestFromNsurlTask:(id)task
{
  taskCopy = task;
  v4 = [GKNetworkRequestManager dictionaryFromTaskDescription:taskCopy];
  v5 = [v4 objectForKeyedSubscript:@"BagKeyKey"];
  v6 = [GKNetworkRequestManager networkRequestClass:v5];
  if (v6)
  {
    v7 = [[v6 alloc] initWithTask:taskCopy];
    originalRequest = [taskCopy originalRequest];
    v9 = [originalRequest mutableCopy];
    [v7 setNsurlRequest:v9];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v10 = GKOSLoggers();
    }

    v11 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "GKNetworkRequestManager error, unsupported class: %@", &v13, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (id)dictionaryForBagAndPlayer:(id)player createIfNotPresent:(BOOL)present description:(id)description
{
  presentCopy = present;
  playerCopy = player;
  descriptionCopy = description;
  stateQueue = [(GKNetworkRequestManager *)self stateQueue];
  dispatch_assert_queue_V2(stateQueue);

  if (descriptionCopy)
  {
    v11 = descriptionCopy;
  }

  else
  {
    nsurlTask = [playerCopy nsurlTask];
    v11 = [GKNetworkRequestManager dictionaryFromTaskDescription:nsurlTask];
  }

  bagKey = [objc_opt_class() bagKey];
  v14 = [v11 objectForKeyedSubscript:@"PlayerIDKey"];
  if (v14)
  {
    existingTasks = [(GKNetworkRequestManager *)self existingTasks];
    v16 = [existingTasks objectForKeyedSubscript:bagKey];

    if (v16)
    {
      goto LABEL_8;
    }

    if (presentCopy)
    {
      v16 = objc_alloc_init(NSMutableDictionary);
      existingTasks2 = [(GKNetworkRequestManager *)self existingTasks];
      [existingTasks2 setObject:v16 forKeyedSubscript:bagKey];

LABEL_8:
      v18 = [v16 objectForKeyedSubscript:v14];
      if (!v18)
      {
        if (!presentCopy)
        {
          v19 = 0;
          goto LABEL_12;
        }

        v18 = objc_alloc_init(GKNetworkRequestInfo);
        [v16 setObject:v18 forKeyedSubscript:v14];
      }

      v19 = v18;

LABEL_12:
      goto LABEL_18;
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v20 = GKOSLoggers();
    }

    v21 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "GKNetworkRequestManager failed to get store due to nil playerID", v23, 2u);
    }
  }

  v19 = 0;
LABEL_18:

  return v19;
}

- (BOOL)managerReady
{
  stateQueue = [(GKNetworkRequestManager *)self stateQueue];
  dispatch_assert_queue_V2(stateQueue);

  v4 = +[GKPreferences shared];
  networkManagerStateOverride = [v4 networkManagerStateOverride];

  if (networkManagerStateOverride != -1)
  {
    return networkManagerStateOverride != 0;
  }

  if ([(GKNetworkRequestManager *)self currentState]< 2)
  {
    return 0;
  }

  return [(GKNetworkRequestManager *)self fairPlaySessionReady];
}

- (void)addNetworkRequest:(id)request description:(id)description clientProxy:(id)proxy
{
  requestCopy = request;
  proxyCopy = proxy;
  descriptionCopy = description;
  stateQueue = [(GKNetworkRequestManager *)self stateQueue];
  dispatch_assert_queue_V2(stateQueue);

  if (!os_log_GKGeneral)
  {
    v12 = GKOSLoggers();
  }

  v13 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v14 = v13;
    v15 = [NSNumber numberWithInteger:[(GKNetworkRequestManager *)self currentState]];
    existingTasks = [(GKNetworkRequestManager *)self existingTasks];
    v25 = 138412546;
    v26 = v15;
    v27 = 2112;
    v28 = existingTasks;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "GKNetworkRequestManager addNetworkRequest managerState: %@ memory state before update: %@", &v25, 0x16u);
  }

  v17 = [(GKNetworkRequestManager *)self dictionaryForBagAndPlayer:requestCopy createIfNotPresent:1 description:descriptionCopy];

  if (v17)
  {
    backgroundSession = [(GKNetworkRequestManager *)self backgroundSession];
    [requestCopy handleNetworkRequest:v17 session:backgroundSession clientProxy:proxyCopy];

    if (!os_log_GKGeneral)
    {
      v19 = GKOSLoggers();
    }

    v20 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v21 = v20;
      existingTasks2 = [(GKNetworkRequestManager *)self existingTasks];
      v25 = 138412290;
      v26 = existingTasks2;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "GKNetworkRequestManager addNetworkRequest state after update: %@", &v25, 0xCu);
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v23 = GKOSLoggers();
    }

    v24 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v25 = 138412290;
      v26 = requestCopy;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "GKNetworkRequestManager error when trying to add to store: %@", &v25, 0xCu);
    }
  }
}

- (void)handleTaskFinished:(id)finished
{
  finishedCopy = finished;
  if (finishedCopy)
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    v6 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v7 = v6;
      existingTasks = [(GKNetworkRequestManager *)self existingTasks];
      *buf = 138412290;
      v17 = existingTasks;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "GKNetworkRequestManager handleTaskFinished state before update: %@", buf, 0xCu);
    }

    v9 = [GKNetworkRequestManager networkRequestFromNsurlTask:finishedCopy];
    stateQueue = [(GKNetworkRequestManager *)self stateQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000FF6E8;
    v14[3] = &unk_1003610B8;
    v14[4] = self;
    v15 = v9;
    v11 = v9;
    dispatch_async(stateQueue, v14);
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v12 = GKOSLoggers();
    }

    v13 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "GKNetworkRequestManager handleTaskFinished with nil task, skipping", buf, 2u);
    }
  }
}

- (void)setupSessionsAsync
{
  stateQueue = [(GKNetworkRequestManager *)self stateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FF95C;
  block[3] = &unk_100361770;
  block[4] = self;
  dispatch_async(stateQueue, block);
}

+ (id)headersAsRequestEntries
{
  if (qword_1003B91D8 != -1)
  {
    sub_10028DD54();
  }

  v3 = qword_1003B91D0;

  return v3;
}

+ (BOOL)useJSONForBagKey:(id)key
{
  v3 = qword_1003B91E8;
  keyCopy = key;
  if (v3 != -1)
  {
    sub_10028DD68();
  }

  v5 = [qword_1003B91E0 containsObject:keyCopy];

  return v5;
}

- (id)playerCredentialsForClientProxy:(id)proxy
{
  proxyCopy = proxy;
  v4 = +[GKPlayerCredentialController sharedController];
  environment = [proxyCopy environment];

  v6 = [v4 pushCredentialForEnvironment:environment];

  return v6;
}

- (void)assembleRequest:(id)request bagKey:(id)key clientProxy:(id)proxy sapSession:(id)session handler:(id)handler
{
  handlerCopy = handler;
  sessionCopy = session;
  proxyCopy = proxy;
  keyCopy = key;
  requestCopy = request;
  v17 = [(GKNetworkRequestManager *)self playerCredentialsForClientProxy:proxyCopy];
  [(GKNetworkRequestManager *)self assembleRequestForPlayer:requestCopy bagKey:keyCopy preconnect:0 clientProxy:proxyCopy sapSession:sessionCopy playerCredential:v17 handler:handlerCopy];
}

- (void)assembleRequestForPlayer:(id)player bagKey:(id)key preconnect:(BOOL)preconnect clientProxy:(id)proxy sapSession:(id)session playerCredential:(id)credential handler:(id)handler
{
  playerCopy = player;
  keyCopy = key;
  proxyCopy = proxy;
  sessionCopy = session;
  credentialCopy = credential;
  handlerCopy = handler;
  handlerQueue = [(GKNetworkRequestManager *)self handlerQueue];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10010077C;
  v28[3] = &unk_1003666A0;
  v29 = playerCopy;
  v30 = keyCopy;
  v31 = credentialCopy;
  selfCopy = self;
  preconnectCopy = preconnect;
  v33 = proxyCopy;
  v34 = sessionCopy;
  v35 = handlerCopy;
  v22 = handlerCopy;
  v23 = sessionCopy;
  v24 = proxyCopy;
  v25 = credentialCopy;
  v26 = keyCopy;
  v27 = playerCopy;
  dispatch_async(handlerQueue, v28);
}

- (void)writeToNetwork:(id)network clientProxy:(id)proxy handler:(id)handler
{
  networkCopy = network;
  proxyCopy = proxy;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100100D28;
  v22[3] = &unk_1003637B0;
  handlerCopy = handler;
  v22[4] = self;
  v23 = handlerCopy;
  v11 = objc_retainBlock(v22);
  stateQueue = [(GKNetworkRequestManager *)self stateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100100E08;
  block[3] = &unk_100366C28;
  block[4] = self;
  v18 = networkCopy;
  v20 = handlerCopy;
  v21 = v11;
  v19 = proxyCopy;
  v13 = proxyCopy;
  v14 = v11;
  v15 = handlerCopy;
  v16 = networkCopy;
  dispatch_async(stateQueue, block);
}

- (id)waitListLocation
{
  v2 = GKInsecureCacheRoot();
  v3 = [v2 stringByAppendingPathComponent:@"networkWaitBeforeAllowAttempt.plist"];

  v4 = GKInsecureCacheRoot();
  v5 = gkEnsureDirectory();

  return v3;
}

- (void)setWaitPeriod:(id)period waitPeriod:(double)waitPeriod
{
  periodCopy = period;
  os_unfair_lock_lock(&self->_waitListCallbacksLock);
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [NSNumber numberWithDouble:waitPeriod];
    v14 = 138412546;
    v15 = periodCopy;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Attempting to update wait period: %@, %@", &v14, 0x16u);
  }

  if (periodCopy)
  {
    waitListLocation = [(GKNetworkRequestManager *)self waitListLocation];
    v12 = [NSMutableDictionary dictionaryWithContentsOfFile:waitListLocation];
    if (!v12)
    {
      v12 = objc_alloc_init(NSMutableDictionary);
    }

    if (waitPeriod == 0.0)
    {
      [v12 setObject:0 forKeyedSubscript:periodCopy];
    }

    else
    {
      v13 = [NSDate dateWithTimeIntervalSinceNow:waitPeriod];
      [v12 setObject:v13 forKeyedSubscript:periodCopy];
    }

    [v12 writeToFile:waitListLocation atomically:1];
    os_unfair_lock_unlock(&self->_waitListCallbacksLock);
  }
}

- (void)handleRetryAfter:(id)after
{
  afterCopy = after;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = [GKNetworkRequestManager dictionaryFromTaskDescription:afterCopy];
    *buf = 138412290;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "GKNetworkRequestManager attempting to retry after for task: %@", buf, 0xCu);
  }

  response = [afterCopy response];
  v10 = [GKNetworkRequestManager networkRequestFromNsurlTask:afterCopy];
  stateQueue = [(GKNetworkRequestManager *)self stateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100101830;
  block[3] = &unk_100361F68;
  v15 = response;
  selfCopy = self;
  v17 = v10;
  v12 = v10;
  v13 = response;
  dispatch_async(stateQueue, block);
}

- (id)existingWaitListDate:(id)date
{
  dateCopy = date;
  os_unfair_lock_lock(&self->_waitListCallbacksLock);
  waitListLocation = [(GKNetworkRequestManager *)self waitListLocation];
  v6 = [NSDictionary dictionaryWithContentsOfFile:waitListLocation];

  v7 = [v6 objectForKeyedSubscript:dateCopy];

  os_unfair_lock_unlock(&self->_waitListCallbacksLock);

  return v7;
}

- (id)canSafelyIssueRequest:(id)request
{
  requestCopy = request;
  v5 = [(GKNetworkRequestManager *)self existingWaitListDate:requestCopy];
  v6 = v5;
  if (v5)
  {
    [v5 timeIntervalSinceNow];
    if (v7 > 0.0)
    {
      v8 = [NSString stringWithFormat:@"A wait period is active not allowing network requests for this bag key: %@, %@", requestCopy, v6];
      v12 = NSLocalizedFailureReasonErrorKey;
      v13 = v8;
      v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v10 = [NSError userErrorForCode:3 userInfo:v9];

      goto LABEL_6;
    }

    [(GKNetworkRequestManager *)self setWaitPeriod:requestCopy waitPeriod:0.0];
  }

  v10 = 0;
LABEL_6:

  return v10;
}

- (void)issueRequestForPlayer:(id)player bagKey:(id)key clientProxy:(id)proxy locale:(id)locale playerCredential:(id)credential handler:(id)handler
{
  playerCopy = player;
  keyCopy = key;
  proxyCopy = proxy;
  localeCopy = locale;
  credentialCopy = credential;
  handlerCopy = handler;
  v20 = +[GKDataRequestManager sharedManager];
  storeBag = [v20 storeBag];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100101CA0;
  v28[3] = &unk_100366C00;
  v33 = credentialCopy;
  v34 = handlerCopy;
  v28[4] = self;
  v29 = playerCopy;
  v30 = keyCopy;
  v31 = proxyCopy;
  v32 = localeCopy;
  v22 = credentialCopy;
  v23 = localeCopy;
  v24 = proxyCopy;
  v25 = keyCopy;
  v26 = playerCopy;
  v27 = handlerCopy;
  [storeBag verifyEligibilityForBagKey:v25 replyQueue:0 client:v24 completion:v28];
}

- (void)issuePreconnectRequestForBagKey:(id)key clientProxy:(id)proxy handler:(id)handler
{
  keyCopy = key;
  proxyCopy = proxy;
  handlerCopy = handler;
  v11 = +[GKDataRequestManager sharedManager];
  storeBag = [v11 storeBag];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100101E2C;
  v16[3] = &unk_100366C50;
  v16[4] = self;
  v17 = keyCopy;
  v18 = proxyCopy;
  v19 = handlerCopy;
  v13 = proxyCopy;
  v14 = keyCopy;
  v15 = handlerCopy;
  [storeBag verifyEligibilityForBagKey:v14 preconnect:1 replyQueue:0 client:v13 completion:v16];
}

- (void)_issueRequestForPlayer:(id)player preconnect:(BOOL)preconnect bagKey:(id)key clientProxy:(id)proxy locale:(id)locale playerCredential:(id)credential handler:(id)handler
{
  playerCopy = player;
  keyCopy = key;
  proxyCopy = proxy;
  localeCopy = locale;
  credentialCopy = credential;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10010205C;
  v26[3] = &unk_100366D08;
  v26[4] = self;
  v27 = keyCopy;
  v31 = localeCopy;
  handlerCopy = handler;
  preconnectCopy = preconnect;
  v28 = playerCopy;
  v29 = proxyCopy;
  v30 = credentialCopy;
  v20 = localeCopy;
  v21 = credentialCopy;
  v22 = proxyCopy;
  v23 = playerCopy;
  v24 = handlerCopy;
  v25 = keyCopy;
  [(GKNetworkRequestManager *)self getFairPlaySession:v26];
}

- (void)issueRequest:(id)request bagKey:(id)key clientProxy:(id)proxy locale:(id)locale handler:(id)handler
{
  handlerCopy = handler;
  localeCopy = locale;
  proxyCopy = proxy;
  keyCopy = key;
  requestCopy = request;
  v17 = [(GKNetworkRequestManager *)self playerCredentialsForClientProxy:proxyCopy];
  [(GKNetworkRequestManager *)self issueRequestForPlayer:requestCopy bagKey:keyCopy clientProxy:proxyCopy locale:localeCopy playerCredential:v17 handler:handlerCopy];
}

+ (id)uuidFromTask:(id)task
{
  v3 = [GKNetworkRequestManager dictionaryFromTaskDescription:task];
  v4 = [v3 objectForKeyedSubscript:@"UUIDKey"];

  return v4;
}

+ (id)taskWithRequest:(id)request description:(id)description session:(id)session
{
  if (request)
  {
    descriptionCopy = description;
    v8 = [session downloadTaskWithRequest:request];
    v16 = 0;
    v9 = [NSJSONSerialization dataWithJSONObject:descriptionCopy options:1 error:&v16];

    v10 = v16;
    if (v10)
    {
      if (!os_log_GKGeneral)
      {
        v11 = GKOSLoggers();
      }

      v12 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v18 = v10;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "GKNetworkRequestManager JSON serialization error: %@", buf, 0xCu);
      }
    }

    else
    {
      v14 = [v9 base64EncodedStringWithOptions:0];
      if (v14)
      {
        [v8 setTaskDescription:v14];
      }
    }

    v13 = v8;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)resultsLocation
{
  v2 = GKInsecureCacheRoot();
  v3 = [v2 stringByAppendingPathComponent:@"staging"];

  v4 = [v3 stringByAppendingPathComponent:@"storeAndForwardResultsLocation"];

  v5 = gkEnsureDirectory();

  return v4;
}

- (id)pendingLocation
{
  v2 = GKInsecureCacheRoot();
  v3 = [v2 stringByAppendingPathComponent:@"staging"];

  v4 = [v3 stringByAppendingPathComponent:@"storeAndForwardPendingLocation"];

  v5 = gkEnsureDirectory();

  return v4;
}

- (id)taskFromIdentifier:(id)identifier
{
  v3 = [(GKNetworkRequestManager *)self contentsOfPendingStore:identifier];
  v4 = [v3 objectForKeyedSubscript:@"BagKeyKey"];
  v5 = objc_alloc_init([GKNetworkRequestManager networkRequestClass:v4]);
  [v5 updateWithTaskInfo:v3];
  if (!os_log_GKGeneral)
  {
    v6 = GKOSLoggers();
  }

  v7 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "GKNetworkRequestManager constructed pending request: %@", &v9, 0xCu);
  }

  return v5;
}

- (void)issuePending
{
  v3 = _localPlayerID();
  v4 = v3;
  if (v3)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100102FA8;
    v5[3] = &unk_100366D30;
    v5[4] = self;
    v6 = v3;
    [(GKNetworkRequestManager *)self getFairPlaySession:v5];
  }
}

+ (id)makeEntityCacheProviderInMemory:(BOOL)memory
{
  v3 = sub_1002052A0(memory);

  return v3;
}

- (void)createEntityWithRequest:(id)request bagKey:(id)key clientProxy:(id)proxy completionHandler:(id)handler entityMaker:(id)maker
{
  v10 = _Block_copy(handler);
  v11 = _Block_copy(maker);
  v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v10;
  v17 = swift_allocObject();
  *(v17 + 16) = v11;
  proxyCopy = proxy;
  selfCopy = self;
  sub_10020531C(v12, v13, v15, proxyCopy, sub_10020D2AC, v16, sub_10020D2D0, v17);
}

- (void)createEntityWithRequest:(NSDictionary *)request bagKey:(NSString *)key clientProxy:(GKClientProxy *)proxy entityMaker:(id)maker completionHandler:
{
  v7 = v6;
  v12 = _Block_copy(maker);
  v13 = _Block_copy(v7);
  v14 = swift_allocObject();
  v14[2] = request;
  v14[3] = key;
  v14[4] = proxy;
  v14[5] = v12;
  v14[6] = v13;
  v14[7] = self;
  requestCopy = request;
  keyCopy = key;
  proxyCopy = proxy;
  selfCopy = self;

  sub_10028022C(&unk_1002C57A8, v14);
}

- (void)readEntityWithRequest:(id)request bagKey:(id)key includeStaleCacheData:(BOOL)data clientProxy:(id)proxy completionHandler:(id)handler entityMaker:(id)maker
{
  v13 = _Block_copy(handler);
  v14 = _Block_copy(maker);
  if (request)
  {
    request = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  v19 = swift_allocObject();
  *(v19 + 16) = v14;
  proxyCopy = proxy;
  selfCopy = self;
  sub_100206E58(request, v15, v17, data, proxyCopy, sub_10020C054, v18, sub_10020D2D0, v19);
}

- (void)readEntityWithRequest:(NSDictionary *)request bagKey:(NSString *)key includeStaleCacheData:(BOOL)data clientProxy:(GKClientProxy *)proxy entityMaker:(id)maker completionHandler:
{
  v8 = v7;
  v14 = _Block_copy(maker);
  v15 = _Block_copy(v8);
  v16 = swift_allocObject();
  *(v16 + 16) = request;
  *(v16 + 24) = key;
  *(v16 + 32) = data;
  *(v16 + 40) = proxy;
  *(v16 + 48) = v14;
  *(v16 + 56) = v15;
  *(v16 + 64) = self;
  requestCopy = request;
  keyCopy = key;
  proxyCopy = proxy;
  selfCopy = self;

  sub_10028022C(&unk_1002C5738, v16);
}

- (void)deleteEntitiesWithBagKey:(NSString *)key clientProxy:(GKClientProxy *)proxy completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = key;
  v9[3] = proxy;
  v9[4] = v8;
  v9[5] = self;
  keyCopy = key;
  proxyCopy = proxy;
  selfCopy = self;

  sub_10028022C(&unk_1002C5710, v9);
}

+ (id)makeEntityIDWithRequest:(id)request bagKey:(id)key
{
  if (request)
  {
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1002085A4(v4);

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

@end