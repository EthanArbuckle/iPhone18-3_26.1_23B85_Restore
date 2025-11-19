@interface APConfigSystemBackgroundTask
- (APConfigSystemBackgroundTask)initWithConfigurationStorage:(id)a3;
- (id)_launchHandler;
- (id)_storefront;
- (int64_t)_configurationPollValue;
- (void)_expireTask:(id)a3;
- (void)_submitRepeatingTask;
- (void)_submitSingleTask;
- (void)registerTask;
- (void)request;
@end

@implementation APConfigSystemBackgroundTask

- (APConfigSystemBackgroundTask)initWithConfigurationStorage:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = APConfigSystemBackgroundTask;
  v6 = [(APConfigSystemBackgroundTask *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configurationStorage, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_BACKGROUND, 0);
    v10 = dispatch_queue_create("com.apple.ap.configurationsystem.request", v9);
    requestQueue = v7->_requestQueue;
    v7->_requestQueue = v10;
  }

  return v7;
}

- (void)registerTask
{
  v3 = APLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Register Config System Background Task.", buf, 2u);
  }

  v4 = +[BGSystemTaskScheduler sharedScheduler];
  v5 = [(APConfigSystemBackgroundTask *)self requestQueue];
  v6 = [(APConfigSystemBackgroundTask *)self _launchHandler];
  [v4 registerForTaskWithIdentifier:@"com.apple.ap.promotedcontentd.configsystemrequest" usingQueue:v5 launchHandler:v6];

  v7 = +[BGSystemTaskScheduler sharedScheduler];
  v8 = [v7 taskRequestForIdentifier:@"com.apple.ap.promotedcontentd.configsystemrequest"];

  if (v8)
  {
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Config System Background Task Already Exists.", v10, 2u);
    }
  }

  else
  {
    [(APConfigSystemBackgroundTask *)self _submitRepeatingTask];
  }
}

- (void)request
{
  v3 = APLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Register Single Configuration Request Background Task.", buf, 2u);
  }

  v4 = +[BGSystemTaskScheduler sharedScheduler];
  v5 = [(APConfigSystemBackgroundTask *)self requestQueue];
  v6 = [(APConfigSystemBackgroundTask *)self _launchHandler];
  [v4 registerForTaskWithIdentifier:@"com.apple.ap.promotedcontentd.configurationrequest" usingQueue:v5 launchHandler:v6];

  v7 = +[BGSystemTaskScheduler sharedScheduler];
  v8 = [v7 taskRequestForIdentifier:@"com.apple.ap.promotedcontentd.configurationrequest"];

  if (v8)
  {
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Register Single Configuration Request Background Task Already Exists.", v10, 2u);
    }
  }

  else
  {
    [(APConfigSystemBackgroundTask *)self _submitSingleTask];
  }
}

- (int64_t)_configurationPollValue
{
  v2 = [APConfigurationMediator configurationForClass:objc_opt_class()];
  v3 = [v2 poll];

  if (v3)
  {
    v4 = [v2 poll];
    v5 = [v4 integerValue];
  }

  else
  {
    v5 = kDefaultConfigSystemPollValue;
  }

  if (v5 >= kConfigSystemMaxCappingPollValue)
  {
    v5 = kConfigSystemMaxCappingPollValue;
  }

  return v5;
}

- (id)_launchHandler
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001E0CF8;
  v4[3] = &unk_100464158;
  objc_copyWeak(&v5, &location);
  v2 = objc_retainBlock(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

- (void)_expireTask:(id)a3
{
  v3 = a3;
  v9 = 0;
  v4 = [v3 setTaskExpiredWithRetryAfter:&v9 error:3000.0];
  v5 = v9;
  v6 = APLogForCategory();
  v7 = v6;
  if (v4)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Config System Background Task retry after Success.", buf, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to retry after config system task, error: %{public}@", buf, 0xCu);
    }

    [v3 setTaskCompleted];
  }
}

- (void)_submitRepeatingTask
{
  v3 = [[BGRepeatingSystemTaskRequest alloc] initWithIdentifier:@"com.apple.ap.promotedcontentd.configsystemrequest"];
  [v3 setRequiresNetworkConnectivity:1];
  [v3 setRequiresExternalPower:0];
  [v3 setGroupName:@"com.apple.ap.promotedcontentd.configurationsystemgroup"];
  [v3 setGroupConcurrencyLimit:1];
  [v3 setPriority:1];
  [v3 setRequiresProtectionClass:4];
  v4 = [(APConfigSystemBackgroundTask *)self _configurationPollValue];
  [v3 setInterval:v4];
  [v3 setMinDurationBetweenInstances:v4 * 0.8];
  v5 = +[BGSystemTaskScheduler sharedScheduler];
  v13 = 0;
  v6 = [v5 submitTaskRequest:v3 error:&v13];
  v7 = v13;

  v8 = APLogForCategory();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Config System Background Task Registered Correctly.", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v10 = [v7 description];
    v11 = v10;
    v12 = @"Unknown";
    if (v10)
    {
      v12 = v10;
    }

    *buf = 138543362;
    v15 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to submit Config System Background Task with error: %{public}@", buf, 0xCu);
  }
}

- (void)_submitSingleTask
{
  v2 = [[BGNonRepeatingSystemTaskRequest alloc] initWithIdentifier:@"com.apple.ap.promotedcontentd.configurationrequest"];
  [v2 setRequiresNetworkConnectivity:1];
  [v2 setRequiresExternalPower:0];
  [v2 setGroupName:@"com.apple.ap.promotedcontentd.configurationsystemgroup"];
  [v2 setGroupConcurrencyLimit:1];
  [v2 setPriority:3];
  [v2 setRequiresProtectionClass:4];
  v3 = +[BGSystemTaskScheduler sharedScheduler];
  v11 = 0;
  v4 = [v3 submitTaskRequest:v2 error:&v11];
  v5 = v11;

  v6 = APLogForCategory();
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Single Configuration Request Background Task Registered Correctly.", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = [v5 description];
    v9 = v8;
    v10 = @"Unknown";
    if (v8)
    {
      v10 = v8;
    }

    *buf = 138543362;
    v13 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to submit Single Configuration Request Background Task with error: %{public}@", buf, 0xCu);
  }
}

- (id)_storefront
{
  v2 = +[APIDAccountProvider privateUserAccount];
  v3 = [v2 storefront];
  v4 = [v3 componentsSeparatedByString:@"-"];

  if ([v4 count])
  {
    v5 = [v4 firstObject];
  }

  else
  {
    v6 = APLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error creating storefront.", v8, 2u);
    }

    v5 = @"NONE";
  }

  return v5;
}

@end