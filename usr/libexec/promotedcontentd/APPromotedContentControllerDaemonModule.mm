@interface APPromotedContentControllerDaemonModule
+ (BOOL)didPrewarm:(id)prewarm;
+ (NSDate)daemonStartTime;
+ (id)_loadSettings;
+ (id)setup;
+ (void)_migrateData;
@end

@implementation APPromotedContentControllerDaemonModule

+ (NSDate)daemonStartTime
{
  v2 = qword_1004DD9D0;
  if (!qword_1004DD9D0)
  {
    v3 = [NSString stringWithFormat:@"Failed to link _daemonStartTime."];
    APSimulateCrash();

    v2 = qword_1004DD9D0;
  }

  return v2;
}

+ (id)setup
{
  v3 = objc_autoreleasePoolPush();
  [self _migrateData];
  _loadSettings = [self _loadSettings];
  objc_autoreleasePoolPop(v3);

  return _loadSettings;
}

+ (BOOL)didPrewarm:(id)prewarm
{
  v4 = [prewarm objectForKey:@"pcStartTime"];
  if (v4)
  {
    daemonStartTime = [self daemonStartTime];
    [v4 timeIntervalSinceDate:daemonStartTime];
    v7 = v6 < 0.0;

    v11 = @"coldStart";
    v8 = [NSNumber numberWithBool:v7];
    v12 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];

    [APAnalytics sendEvent:@"coldstart" customPayload:v9];
    +[APAMSNetworkFacade prewarm];
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

+ (void)_migrateData
{
  v9 = 0;
  v2 = [APKeychainServices objectForKey:@"APPromotedContentDaemonSettings.efsVersion" error:&v9];
  v3 = v9;
  v4 = v3;
  if (!v3 || (([v3 domain], v5 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(v5, "isEqualToString:", APKeychainServicesErrorDomain)) ? (v6 = 1) : (v6 = objc_msgSend(v4, "code") != -25300), v5, !v6))
  {
    if (v2)
    {
      v7 = APLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Detected old EFS version.", v8, 2u);
      }

      +[APStorageManager cleanupOldStorage];
      [APKeychainServices setObject:0 forKey:@"com.apple.ap.APCryptor.seed"];
      [APKeychainServices setObject:0 forKey:@"APPromotedContentDaemonSettings.efsVersion"];
    }
  }
}

+ (id)_loadSettings
{
  v2 = +[APPCControllerDaemonSettings settings];
  useAMSMescalValue = [v2 useAMSMescalValue];
  httpUseFixedHttpSessionManagerValue = [v2 httpUseFixedHttpSessionManagerValue];
  httpMaximumConnectionsPerHostValue = [v2 httpMaximumConnectionsPerHostValue];
  httpMaximumConnectionsPerHostTempSessionValue = [v2 httpMaximumConnectionsPerHostTempSessionValue];
  [v2 httpLookBackWindowValue];
  v8 = v7;
  cacheSizeLimitValue = [v2 cacheSizeLimitValue];
  v10 = objc_alloc_init(APPromotedContentControllerDaemonModule);
  [(APPromotedContentControllerDaemonModule *)v10 setUseAMSMescal:useAMSMescalValue];
  [(APPromotedContentControllerDaemonModule *)v10 setHttpUseFixedHttpSessionManager:httpUseFixedHttpSessionManagerValue];
  [(APPromotedContentControllerDaemonModule *)v10 setHttpMaximumConnectionsPerHost:httpMaximumConnectionsPerHostValue];
  [(APPromotedContentControllerDaemonModule *)v10 setHttpMaximumConnectionsPerHostTempSession:httpMaximumConnectionsPerHostTempSessionValue];
  [(APPromotedContentControllerDaemonModule *)v10 setHttpLookBackWindow:v8];
  [(APPromotedContentControllerDaemonModule *)v10 setCacheSizeLimit:cacheSizeLimitValue];
  v11 = +[NSProcessInfo processInfo];
  isRunningTests = [v11 isRunningTests];

  if ((isRunningTests & 1) == 0)
  {
    v13 = dispatch_get_global_queue(25, 0);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10037C64C;
    v15[3] = &unk_1004807B0;
    v21 = useAMSMescalValue;
    v16 = v2;
    v22 = httpUseFixedHttpSessionManagerValue;
    v17 = v8;
    v18 = httpMaximumConnectionsPerHostValue;
    v19 = httpMaximumConnectionsPerHostTempSessionValue;
    v20 = cacheSizeLimitValue;
    dispatch_async(v13, v15);
  }

  return v10;
}

@end