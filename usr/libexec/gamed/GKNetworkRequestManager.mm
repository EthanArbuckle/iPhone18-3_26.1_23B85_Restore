@interface GKNetworkRequestManager
+ (BOOL)useJSONForBagKey:(id)a3;
+ (Class)networkRequestClass:(id)a3;
+ (id)commonNetworkRequestManager;
+ (id)dictionaryFromTaskDescription:(id)a3;
+ (id)getGameDescriptorForRequest:(id)a3;
+ (id)getPostDataForRequest:(id)a3 bagKey:(id)a4;
+ (id)headersAsRequestEntries;
+ (id)makeEntityCacheProviderInMemory:(BOOL)a3;
+ (id)makeEntityIDWithRequest:(id)a3 bagKey:(id)a4;
+ (id)networkRequestFromNsurlTask:(id)a3;
+ (id)taskWithRequest:(id)a3 description:(id)a4 session:(id)a5;
+ (id)uuidFromTask:(id)a3;
- (BOOL)beforeFirstUnlock;
- (BOOL)doesCallbackListExistFor:(id)a3 parameters:(id)a4 callback:(id)a5;
- (BOOL)managerReady;
- (GKNetworkRequestManager)initWithInMemoryEntityCache:(BOOL)a3;
- (id)canSafelyIssueRequest:(id)a3;
- (id)contentsOfPendingStore:(id)a3;
- (id)dictionaryForBagAndPlayer:(id)a3 createIfNotPresent:(BOOL)a4 description:(id)a5;
- (id)existingWaitListDate:(id)a3;
- (id)filePathToTempFile:(id)a3 fileName:(id)a4;
- (id)pathToTempFile:(id)a3 fileName:(id)a4;
- (id)pendingLocation;
- (id)playerCredentialsForClientProxy:(id)a3;
- (id)resultsLocation;
- (id)retrieveAndClearCallbacks:(id)a3 parameters:(id)a4;
- (id)taskFromIdentifier:(id)a3;
- (id)waitListLocation;
- (int64_t)relatedTasksExistForBagKey:(id)a3;
- (void)_issueRequestForPlayer:(id)a3 preconnect:(BOOL)a4 bagKey:(id)a5 clientProxy:(id)a6 locale:(id)a7 playerCredential:(id)a8 handler:(id)a9;
- (void)addNetworkRequest:(id)a3 description:(id)a4 clientProxy:(id)a5;
- (void)assembleRequest:(id)a3 bagKey:(id)a4 clientProxy:(id)a5 sapSession:(id)a6 handler:(id)a7;
- (void)assembleRequestForPlayer:(id)a3 bagKey:(id)a4 preconnect:(BOOL)a5 clientProxy:(id)a6 sapSession:(id)a7 playerCredential:(id)a8 handler:(id)a9;
- (void)cancelCurrentTasks;
- (void)cleanUpPendingStore:(id)a3;
- (void)createEntityWithRequest:(NSDictionary *)a3 bagKey:(NSString *)a4 clientProxy:(GKClientProxy *)a5 entityMaker:(id)a6 completionHandler:;
- (void)createEntityWithRequest:(id)a3 bagKey:(id)a4 clientProxy:(id)a5 completionHandler:(id)a6 entityMaker:(id)a7;
- (void)deleteEntitiesWithBagKey:(NSString *)a3 clientProxy:(GKClientProxy *)a4 completionHandler:(id)a5;
- (void)getFairPlaySession:(id)a3;
- (void)handleRetryAfter:(id)a3;
- (void)handleTaskFinished:(id)a3;
- (void)issuePending;
- (void)issuePreconnectRequestForBagKey:(id)a3 clientProxy:(id)a4 handler:(id)a5;
- (void)issueRequest:(id)a3 bagKey:(id)a4 clientProxy:(id)a5 locale:(id)a6 handler:(id)a7;
- (void)issueRequestForPlayer:(id)a3 bagKey:(id)a4 clientProxy:(id)a5 locale:(id)a6 playerCredential:(id)a7 handler:(id)a8;
- (void)readEntityWithRequest:(NSDictionary *)a3 bagKey:(NSString *)a4 includeStaleCacheData:(BOOL)a5 clientProxy:(GKClientProxy *)a6 entityMaker:(id)a7 completionHandler:;
- (void)readEntityWithRequest:(id)a3 bagKey:(id)a4 includeStaleCacheData:(BOOL)a5 clientProxy:(id)a6 completionHandler:(id)a7 entityMaker:(id)a8;
- (void)setWaitPeriod:(id)a3 waitPeriod:(double)a4;
- (void)setupSessionsAsync;
- (void)writeToNetwork:(id)a3 clientProxy:(id)a4 handler:(id)a5;
- (void)writeToPendingStore:(id)a3 fileName:(id)a4;
@end

@implementation GKNetworkRequestManager

- (BOOL)doesCallbackListExistFor:(id)a3 parameters:(id)a4 callback:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  v11 = 0;
  if (v8 && v9)
  {
    v12 = v8;
    v13 = [a4 sortedArrayUsingSelector:"compare:"];
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
    v19 = [(GKNetworkRequestManager *)self pendingCallbacks];
    v20 = [v19 objectForKeyedSubscript:v12];

    v11 = v20 != 0;
    if (!v20)
    {
      v21 = objc_opt_new();
      v22 = [(GKNetworkRequestManager *)self pendingCallbacks];
      [v22 setObject:v21 forKeyedSubscript:v12];
    }

    v23 = [(GKNetworkRequestManager *)self pendingCallbacks];
    v24 = [v23 objectForKeyedSubscript:v12];
    v25 = [v10 copy];
    [v24 addObject:v25];

    os_unfair_lock_unlock(&self->_pendingCallbacksLock);
  }

  return v11;
}

- (id)retrieveAndClearCallbacks:(id)a3 parameters:(id)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    v9 = [a4 sortedArrayUsingSelector:"compare:"];
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
    v15 = [(GKNetworkRequestManager *)self pendingCallbacks];
    v16 = [v15 objectForKeyedSubscript:v8];

    if (v16)
    {
      v17 = [(GKNetworkRequestManager *)self pendingCallbacks];
      v18 = [v17 objectForKeyedSubscript:v8];

      v19 = [(GKNetworkRequestManager *)self pendingCallbacks];
      [v19 setObject:0 forKeyedSubscript:v8];
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

+ (id)getGameDescriptorForRequest:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"game"];
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

+ (id)getPostDataForRequest:(id)a3 bagKey:(id)a4
{
  v6 = a3;
  if (v6)
  {
    if ([a1 useJSONForBagKey:a4])
    {
      [NSJSONSerialization dataWithJSONObject:v6 options:0 error:0];
    }

    else
    {
      [NSPropertyListSerialization dataWithPropertyList:v6 format:100 options:0 error:0];
    }
    v8 = ;
    v9 = [a1 headersAsRequestEntries];
    v10 = [v9 allObjects];
    v11 = [v6 _gkSubDictionaryWithKeys:v10];

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

+ (id)dictionaryFromTaskDescription:(id)a3
{
  v3 = [a3 taskDescription];
  if (v3)
  {
    v4 = [[NSData alloc] initWithBase64EncodedString:v3 options:0];
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

- (void)getFairPlaySession:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(GKNetworkRequestManager *)self fairPlaySessionProvider];
  v6 = +[GKDataRequestManager sharedManager];
  v7 = [v6 storeBag];
  v8 = +[GKReporter reporter];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000FDB28;
  v10[3] = &unk_100366B00;
  objc_copyWeak(&v12, &location);
  v9 = v4;
  v11 = v9;
  [v5 fairPlaySessionWithStoreBag:v7 reporter:v8 completionHandler:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (id)filePathToTempFile:(id)a3 fileName:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [NSURL alloc];
  v8 = [v6 stringByAppendingPathComponent:v5];

  v9 = [v7 initFileURLWithPath:v8];

  return v9;
}

- (id)pathToTempFile:(id)a3 fileName:(id)a4
{
  v4 = [a3 stringByAppendingPathComponent:a4];
  v5 = [NSURL URLWithString:v4];

  return v5;
}

- (void)cleanUpPendingStore:(id)a3
{
  v4 = a3;
  v5 = [(GKNetworkRequestManager *)self pendingLocation];
  v6 = [(GKNetworkRequestManager *)self filePathToTempFile:v5 fileName:v4];

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
  v10 = [v6 path];
  [v9 removeItemAtPath:v10 error:0];
}

- (id)contentsOfPendingStore:(id)a3
{
  v4 = a3;
  v5 = [(GKNetworkRequestManager *)self stateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(GKNetworkRequestManager *)self pendingLocation];
  v7 = [(GKNetworkRequestManager *)self pathToTempFile:v6 fileName:v4];

  if (v7)
  {
    v8 = [v7 path];
    v9 = [NSDictionary dictionaryWithContentsOfFile:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)writeToPendingStore:(id)a3 fileName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(GKNetworkRequestManager *)self stateQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(GKNetworkRequestManager *)self pendingLocation];
  v10 = [(GKNetworkRequestManager *)self pathToTempFile:v9 fileName:v7];

  v11 = [v10 path];
  v12 = +[NSFileManager defaultManager];
  if (![v12 fileExistsAtPath:v11])
  {
    goto LABEL_7;
  }

  if ([v12 removeItemAtPath:v11 error:0])
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
    if ([v6 writeToFile:v11 atomically:1])
    {
      if (!os_log_GKGeneral)
      {
        v15 = GKOSLoggers();
      }

      v16 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        v23 = 138412290;
        v24 = v7;
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
    v24 = v11;
    v17 = "Could not remove file: %@";
    goto LABEL_20;
  }

LABEL_22:
}

- (BOOL)beforeFirstUnlock
{
  v3 = [(GKNetworkRequestManager *)self stateQueue];
  dispatch_assert_queue_V2(v3);

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

- (GKNetworkRequestManager)initWithInMemoryEntityCache:(BOOL)a3
{
  v3 = a3;
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
    v23 = [(GKNetworkRequestManager *)v5 inProcessTasksSessionDelegate];
    v24 = [(GKNetworkRequestManager *)v5 operationQueue];
    v25 = [NSURLSession sessionWithConfiguration:v22 delegate:v23 delegateQueue:v24];
    inProcessSession = v5->_inProcessSession;
    v5->_inProcessSession = v25;

    v27 = [[GKFairPlaySessionProvider alloc] initWithSession:v5->_inProcessSession];
    fairPlaySessionProvider = v5->_fairPlaySessionProvider;
    v5->_fairPlaySessionProvider = v27;

    v29 = objc_alloc_init(GKAppMetadataFetcher);
    appMetadataFetcher = v5->_appMetadataFetcher;
    v5->_appMetadataFetcher = v29;

    v31 = [GKNetworkRequestManager makeEntityCacheProviderInMemory:v3];
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

  v5 = [(GKNetworkRequestManager *)self backgroundSession];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000FE5D0;
  v6[3] = &unk_100366B48;
  v6[4] = self;
  [v5 getAllTasksWithCompletionHandler:v6];
}

- (int64_t)relatedTasksExistForBagKey:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 2;
  v5 = [(GKNetworkRequestManager *)self serviceDependancyMappings];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [(GKNetworkRequestManager *)self stateQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000FEA34;
    block[3] = &unk_100362AB0;
    block[4] = self;
    v14 = v6;
    v15 = &v16;
    dispatch_sync(v7, block);

    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v9 = os_log_GKDaemon;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [NSNumber numberWithInteger:v17[3]];
      *buf = 138412546;
      v21 = v4;
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

+ (Class)networkRequestClass:(id)a3
{
  v3 = a3;
  v4 = +[GKRemoveFriendNetworkRequest bagKey];
  v5 = [v4 isEqualToString:v3];

  if (v5 & 1) != 0 || (+[GKRemoveAllFriendsNetworkRequest bagKey](GKRemoveAllFriendsNetworkRequest, "bagKey"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isEqualToString:v3], v6, (v7) || (+[GKChallengeNetworkRequest bagKey](GKChallengeNetworkRequest, "bagKey"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", v3), v8, (v9) || (+[GKAbortChallengeNetworkRequest bagKey](GKAbortChallengeNetworkRequest, "bagKey"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", v3), v10, (v11) || (+[GKAchievementNetworkRequest bagKey](GKAchievementNetworkRequest, "bagKey"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", v3), v12, (v13) || (+[GKScoreNetworkRequest bagKey](GKScoreNetworkRequest, "bagKey"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", v3), v14, (v15) || (+[GKInstanceScoreNetworkRequest bagKey](GKInstanceScoreNetworkRequest, "bagKey"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", v3), v16, (v17) || (+[GKPlayerGameSettingsNetworkRequest bagKey](GKPlayerGameSettingsNetworkRequest, "bagKey"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqualToString:", v3), v18, (v19) || (+[GKMultiplayerGroupRequest bagKey](GKMultiplayerGroupRequest, "bagKey"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isEqualToString:", v3), v20, v21))
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

+ (id)networkRequestFromNsurlTask:(id)a3
{
  v3 = a3;
  v4 = [GKNetworkRequestManager dictionaryFromTaskDescription:v3];
  v5 = [v4 objectForKeyedSubscript:@"BagKeyKey"];
  v6 = [GKNetworkRequestManager networkRequestClass:v5];
  if (v6)
  {
    v7 = [[v6 alloc] initWithTask:v3];
    v8 = [v3 originalRequest];
    v9 = [v8 mutableCopy];
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

- (id)dictionaryForBagAndPlayer:(id)a3 createIfNotPresent:(BOOL)a4 description:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [(GKNetworkRequestManager *)self stateQueue];
  dispatch_assert_queue_V2(v10);

  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = [v8 nsurlTask];
    v11 = [GKNetworkRequestManager dictionaryFromTaskDescription:v12];
  }

  v13 = [objc_opt_class() bagKey];
  v14 = [v11 objectForKeyedSubscript:@"PlayerIDKey"];
  if (v14)
  {
    v15 = [(GKNetworkRequestManager *)self existingTasks];
    v16 = [v15 objectForKeyedSubscript:v13];

    if (v16)
    {
      goto LABEL_8;
    }

    if (v6)
    {
      v16 = objc_alloc_init(NSMutableDictionary);
      v17 = [(GKNetworkRequestManager *)self existingTasks];
      [v17 setObject:v16 forKeyedSubscript:v13];

LABEL_8:
      v18 = [v16 objectForKeyedSubscript:v14];
      if (!v18)
      {
        if (!v6)
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
  v3 = [(GKNetworkRequestManager *)self stateQueue];
  dispatch_assert_queue_V2(v3);

  v4 = +[GKPreferences shared];
  v5 = [v4 networkManagerStateOverride];

  if (v5 != -1)
  {
    return v5 != 0;
  }

  if ([(GKNetworkRequestManager *)self currentState]< 2)
  {
    return 0;
  }

  return [(GKNetworkRequestManager *)self fairPlaySessionReady];
}

- (void)addNetworkRequest:(id)a3 description:(id)a4 clientProxy:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(GKNetworkRequestManager *)self stateQueue];
  dispatch_assert_queue_V2(v11);

  if (!os_log_GKGeneral)
  {
    v12 = GKOSLoggers();
  }

  v13 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v14 = v13;
    v15 = [NSNumber numberWithInteger:[(GKNetworkRequestManager *)self currentState]];
    v16 = [(GKNetworkRequestManager *)self existingTasks];
    v25 = 138412546;
    v26 = v15;
    v27 = 2112;
    v28 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "GKNetworkRequestManager addNetworkRequest managerState: %@ memory state before update: %@", &v25, 0x16u);
  }

  v17 = [(GKNetworkRequestManager *)self dictionaryForBagAndPlayer:v8 createIfNotPresent:1 description:v10];

  if (v17)
  {
    v18 = [(GKNetworkRequestManager *)self backgroundSession];
    [v8 handleNetworkRequest:v17 session:v18 clientProxy:v9];

    if (!os_log_GKGeneral)
    {
      v19 = GKOSLoggers();
    }

    v20 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v21 = v20;
      v22 = [(GKNetworkRequestManager *)self existingTasks];
      v25 = 138412290;
      v26 = v22;
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
      v26 = v8;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "GKNetworkRequestManager error when trying to add to store: %@", &v25, 0xCu);
    }
  }
}

- (void)handleTaskFinished:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    v6 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v7 = v6;
      v8 = [(GKNetworkRequestManager *)self existingTasks];
      *buf = 138412290;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "GKNetworkRequestManager handleTaskFinished state before update: %@", buf, 0xCu);
    }

    v9 = [GKNetworkRequestManager networkRequestFromNsurlTask:v4];
    v10 = [(GKNetworkRequestManager *)self stateQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000FF6E8;
    v14[3] = &unk_1003610B8;
    v14[4] = self;
    v15 = v9;
    v11 = v9;
    dispatch_async(v10, v14);
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
  v3 = [(GKNetworkRequestManager *)self stateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FF95C;
  block[3] = &unk_100361770;
  block[4] = self;
  dispatch_async(v3, block);
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

+ (BOOL)useJSONForBagKey:(id)a3
{
  v3 = qword_1003B91E8;
  v4 = a3;
  if (v3 != -1)
  {
    sub_10028DD68();
  }

  v5 = [qword_1003B91E0 containsObject:v4];

  return v5;
}

- (id)playerCredentialsForClientProxy:(id)a3
{
  v3 = a3;
  v4 = +[GKPlayerCredentialController sharedController];
  v5 = [v3 environment];

  v6 = [v4 pushCredentialForEnvironment:v5];

  return v6;
}

- (void)assembleRequest:(id)a3 bagKey:(id)a4 clientProxy:(id)a5 sapSession:(id)a6 handler:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [(GKNetworkRequestManager *)self playerCredentialsForClientProxy:v14];
  [(GKNetworkRequestManager *)self assembleRequestForPlayer:v16 bagKey:v15 preconnect:0 clientProxy:v14 sapSession:v13 playerCredential:v17 handler:v12];
}

- (void)assembleRequestForPlayer:(id)a3 bagKey:(id)a4 preconnect:(BOOL)a5 clientProxy:(id)a6 sapSession:(id)a7 playerCredential:(id)a8 handler:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = [(GKNetworkRequestManager *)self handlerQueue];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10010077C;
  v28[3] = &unk_1003666A0;
  v29 = v15;
  v30 = v16;
  v31 = v19;
  v32 = self;
  v36 = a5;
  v33 = v17;
  v34 = v18;
  v35 = v20;
  v22 = v20;
  v23 = v18;
  v24 = v17;
  v25 = v19;
  v26 = v16;
  v27 = v15;
  dispatch_async(v21, v28);
}

- (void)writeToNetwork:(id)a3 clientProxy:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100100D28;
  v22[3] = &unk_1003637B0;
  v10 = a5;
  v22[4] = self;
  v23 = v10;
  v11 = objc_retainBlock(v22);
  v12 = [(GKNetworkRequestManager *)self stateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100100E08;
  block[3] = &unk_100366C28;
  block[4] = self;
  v18 = v8;
  v20 = v10;
  v21 = v11;
  v19 = v9;
  v13 = v9;
  v14 = v11;
  v15 = v10;
  v16 = v8;
  dispatch_async(v12, block);
}

- (id)waitListLocation
{
  v2 = GKInsecureCacheRoot();
  v3 = [v2 stringByAppendingPathComponent:@"networkWaitBeforeAllowAttempt.plist"];

  v4 = GKInsecureCacheRoot();
  v5 = gkEnsureDirectory();

  return v3;
}

- (void)setWaitPeriod:(id)a3 waitPeriod:(double)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_waitListCallbacksLock);
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [NSNumber numberWithDouble:a4];
    v14 = 138412546;
    v15 = v6;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Attempting to update wait period: %@, %@", &v14, 0x16u);
  }

  if (v6)
  {
    v11 = [(GKNetworkRequestManager *)self waitListLocation];
    v12 = [NSMutableDictionary dictionaryWithContentsOfFile:v11];
    if (!v12)
    {
      v12 = objc_alloc_init(NSMutableDictionary);
    }

    if (a4 == 0.0)
    {
      [v12 setObject:0 forKeyedSubscript:v6];
    }

    else
    {
      v13 = [NSDate dateWithTimeIntervalSinceNow:a4];
      [v12 setObject:v13 forKeyedSubscript:v6];
    }

    [v12 writeToFile:v11 atomically:1];
    os_unfair_lock_unlock(&self->_waitListCallbacksLock);
  }
}

- (void)handleRetryAfter:(id)a3
{
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = [GKNetworkRequestManager dictionaryFromTaskDescription:v4];
    *buf = 138412290;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "GKNetworkRequestManager attempting to retry after for task: %@", buf, 0xCu);
  }

  v9 = [v4 response];
  v10 = [GKNetworkRequestManager networkRequestFromNsurlTask:v4];
  v11 = [(GKNetworkRequestManager *)self stateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100101830;
  block[3] = &unk_100361F68;
  v15 = v9;
  v16 = self;
  v17 = v10;
  v12 = v10;
  v13 = v9;
  dispatch_async(v11, block);
}

- (id)existingWaitListDate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_waitListCallbacksLock);
  v5 = [(GKNetworkRequestManager *)self waitListLocation];
  v6 = [NSDictionary dictionaryWithContentsOfFile:v5];

  v7 = [v6 objectForKeyedSubscript:v4];

  os_unfair_lock_unlock(&self->_waitListCallbacksLock);

  return v7;
}

- (id)canSafelyIssueRequest:(id)a3
{
  v4 = a3;
  v5 = [(GKNetworkRequestManager *)self existingWaitListDate:v4];
  v6 = v5;
  if (v5)
  {
    [v5 timeIntervalSinceNow];
    if (v7 > 0.0)
    {
      v8 = [NSString stringWithFormat:@"A wait period is active not allowing network requests for this bag key: %@, %@", v4, v6];
      v12 = NSLocalizedFailureReasonErrorKey;
      v13 = v8;
      v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v10 = [NSError userErrorForCode:3 userInfo:v9];

      goto LABEL_6;
    }

    [(GKNetworkRequestManager *)self setWaitPeriod:v4 waitPeriod:0.0];
  }

  v10 = 0;
LABEL_6:

  return v10;
}

- (void)issueRequestForPlayer:(id)a3 bagKey:(id)a4 clientProxy:(id)a5 locale:(id)a6 playerCredential:(id)a7 handler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = +[GKDataRequestManager sharedManager];
  v21 = [v20 storeBag];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100101CA0;
  v28[3] = &unk_100366C00;
  v33 = v18;
  v34 = v19;
  v28[4] = self;
  v29 = v14;
  v30 = v15;
  v31 = v16;
  v32 = v17;
  v22 = v18;
  v23 = v17;
  v24 = v16;
  v25 = v15;
  v26 = v14;
  v27 = v19;
  [v21 verifyEligibilityForBagKey:v25 replyQueue:0 client:v24 completion:v28];
}

- (void)issuePreconnectRequestForBagKey:(id)a3 clientProxy:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[GKDataRequestManager sharedManager];
  v12 = [v11 storeBag];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100101E2C;
  v16[3] = &unk_100366C50;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v13 = v9;
  v14 = v8;
  v15 = v10;
  [v12 verifyEligibilityForBagKey:v14 preconnect:1 replyQueue:0 client:v13 completion:v16];
}

- (void)_issueRequestForPlayer:(id)a3 preconnect:(BOOL)a4 bagKey:(id)a5 clientProxy:(id)a6 locale:(id)a7 playerCredential:(id)a8 handler:(id)a9
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10010205C;
  v26[3] = &unk_100366D08;
  v26[4] = self;
  v27 = v16;
  v31 = v18;
  v32 = a9;
  v33 = a4;
  v28 = v15;
  v29 = v17;
  v30 = v19;
  v20 = v18;
  v21 = v19;
  v22 = v17;
  v23 = v15;
  v24 = v32;
  v25 = v16;
  [(GKNetworkRequestManager *)self getFairPlaySession:v26];
}

- (void)issueRequest:(id)a3 bagKey:(id)a4 clientProxy:(id)a5 locale:(id)a6 handler:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [(GKNetworkRequestManager *)self playerCredentialsForClientProxy:v14];
  [(GKNetworkRequestManager *)self issueRequestForPlayer:v16 bagKey:v15 clientProxy:v14 locale:v13 playerCredential:v17 handler:v12];
}

+ (id)uuidFromTask:(id)a3
{
  v3 = [GKNetworkRequestManager dictionaryFromTaskDescription:a3];
  v4 = [v3 objectForKeyedSubscript:@"UUIDKey"];

  return v4;
}

+ (id)taskWithRequest:(id)a3 description:(id)a4 session:(id)a5
{
  if (a3)
  {
    v7 = a4;
    v8 = [a5 downloadTaskWithRequest:a3];
    v16 = 0;
    v9 = [NSJSONSerialization dataWithJSONObject:v7 options:1 error:&v16];

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

- (id)taskFromIdentifier:(id)a3
{
  v3 = [(GKNetworkRequestManager *)self contentsOfPendingStore:a3];
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

+ (id)makeEntityCacheProviderInMemory:(BOOL)a3
{
  v3 = sub_1002052A0(a3);

  return v3;
}

- (void)createEntityWithRequest:(id)a3 bagKey:(id)a4 clientProxy:(id)a5 completionHandler:(id)a6 entityMaker:(id)a7
{
  v10 = _Block_copy(a6);
  v11 = _Block_copy(a7);
  v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v10;
  v17 = swift_allocObject();
  *(v17 + 16) = v11;
  v18 = a5;
  v19 = self;
  sub_10020531C(v12, v13, v15, v18, sub_10020D2AC, v16, sub_10020D2D0, v17);
}

- (void)createEntityWithRequest:(NSDictionary *)a3 bagKey:(NSString *)a4 clientProxy:(GKClientProxy *)a5 entityMaker:(id)a6 completionHandler:
{
  v7 = v6;
  v12 = _Block_copy(a6);
  v13 = _Block_copy(v7);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = v12;
  v14[6] = v13;
  v14[7] = self;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = self;

  sub_10028022C(&unk_1002C57A8, v14);
}

- (void)readEntityWithRequest:(id)a3 bagKey:(id)a4 includeStaleCacheData:(BOOL)a5 clientProxy:(id)a6 completionHandler:(id)a7 entityMaker:(id)a8
{
  v13 = _Block_copy(a7);
  v14 = _Block_copy(a8);
  if (a3)
  {
    a3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  v19 = swift_allocObject();
  *(v19 + 16) = v14;
  v20 = a6;
  v21 = self;
  sub_100206E58(a3, v15, v17, a5, v20, sub_10020C054, v18, sub_10020D2D0, v19);
}

- (void)readEntityWithRequest:(NSDictionary *)a3 bagKey:(NSString *)a4 includeStaleCacheData:(BOOL)a5 clientProxy:(GKClientProxy *)a6 entityMaker:(id)a7 completionHandler:
{
  v8 = v7;
  v14 = _Block_copy(a7);
  v15 = _Block_copy(v8);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *(v16 + 32) = a5;
  *(v16 + 40) = a6;
  *(v16 + 48) = v14;
  *(v16 + 56) = v15;
  *(v16 + 64) = self;
  v17 = a3;
  v18 = a4;
  v19 = a6;
  v20 = self;

  sub_10028022C(&unk_1002C5738, v16);
}

- (void)deleteEntitiesWithBagKey:(NSString *)a3 clientProxy:(GKClientProxy *)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  v10 = a3;
  v11 = a4;
  v12 = self;

  sub_10028022C(&unk_1002C5710, v9);
}

+ (id)makeEntityIDWithRequest:(id)a3 bagKey:(id)a4
{
  if (a3)
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