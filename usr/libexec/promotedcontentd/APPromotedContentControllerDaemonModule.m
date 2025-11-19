@interface APPromotedContentControllerDaemonModule
+ (BOOL)didPrewarm:(id)a3;
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
  [a1 _migrateData];
  v4 = [a1 _loadSettings];
  objc_autoreleasePoolPop(v3);

  return v4;
}

+ (BOOL)didPrewarm:(id)a3
{
  v4 = [a3 objectForKey:@"pcStartTime"];
  if (v4)
  {
    v5 = [a1 daemonStartTime];
    [v4 timeIntervalSinceDate:v5];
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
  v3 = [v2 useAMSMescalValue];
  v4 = [v2 httpUseFixedHttpSessionManagerValue];
  v5 = [v2 httpMaximumConnectionsPerHostValue];
  v6 = [v2 httpMaximumConnectionsPerHostTempSessionValue];
  [v2 httpLookBackWindowValue];
  v8 = v7;
  v9 = [v2 cacheSizeLimitValue];
  v10 = objc_alloc_init(APPromotedContentControllerDaemonModule);
  [(APPromotedContentControllerDaemonModule *)v10 setUseAMSMescal:v3];
  [(APPromotedContentControllerDaemonModule *)v10 setHttpUseFixedHttpSessionManager:v4];
  [(APPromotedContentControllerDaemonModule *)v10 setHttpMaximumConnectionsPerHost:v5];
  [(APPromotedContentControllerDaemonModule *)v10 setHttpMaximumConnectionsPerHostTempSession:v6];
  [(APPromotedContentControllerDaemonModule *)v10 setHttpLookBackWindow:v8];
  [(APPromotedContentControllerDaemonModule *)v10 setCacheSizeLimit:v9];
  v11 = +[NSProcessInfo processInfo];
  v12 = [v11 isRunningTests];

  if ((v12 & 1) == 0)
  {
    v13 = dispatch_get_global_queue(25, 0);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10037C64C;
    v15[3] = &unk_1004807B0;
    v21 = v3;
    v16 = v2;
    v22 = v4;
    v17 = v8;
    v18 = v5;
    v19 = v6;
    v20 = v9;
    dispatch_async(v13, v15);
  }

  return v10;
}

@end