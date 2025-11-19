@interface APPCBaseEventListener
+ (BOOL)_isEventDatabaseStorageEnabled;
+ (BOOL)_isExperimentationReportEnabled;
+ (BOOL)_isIntegrityReportEnabled;
+ (void)startListeners;
- (APPCBaseEventListener)init;
- (void)dealloc;
- (void)start;
- (void)stop;
@end

@implementation APPCBaseEventListener

+ (void)startListeners
{
  if ([a1 _isIntegrityReportEnabled])
  {
    v3 = +[APPCIntegrityReportEventListener sharedInstance];
  }

  if ([a1 _isEventDatabaseStorageEnabled])
  {
    v4 = +[APPCEventStorageListener sharedInstance];
  }

  if ([a1 _isExperimentationReportEnabled])
  {
    v5 = +[APPCExperimentationReportEventListener sharedInstance];
  }
}

- (APPCBaseEventListener)init
{
  v6.receiver = self;
  v6.super_class = APPCBaseEventListener;
  v2 = [(APPCBaseEventListener *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.ap.promotedcontent.eventlisteners", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    [(APPCBaseEventListener *)v2 start];
  }

  return v2;
}

- (void)start
{
  v3 = NSStringFromSelector(a2);
  v4 = [NSString stringWithFormat:@"You must override %@ in a subclass", v3];
  APSimulateCrash();

  v5 = NSStringFromSelector(a2);
  v6 = [NSString stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)stop
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(APPCBaseEventListener *)self tokens];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = +[MetricsModule storage];
        v10 = [v9 notificationRegistrar];
        [v10 removeHandlerWithIdentifier:{objc_msgSend(v8, "integerValue")}];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [(APPCBaseEventListener *)self setTokens:&__NSArray0__struct];
}

- (void)dealloc
{
  [(APPCBaseEventListener *)self stop];
  v3.receiver = self;
  v3.super_class = APPCBaseEventListener;
  [(APPCBaseEventListener *)&v3 dealloc];
}

+ (BOOL)_isEventDatabaseStorageEnabled
{
  v2 = objc_alloc_init(APLegacyFeatureFlags);
  if ([v2 actionStoreEnabled])
  {
    v3 = [APConfigurationMediator configurationForClass:objc_opt_class()];
    v4 = [v3 isEventDatabaseStorageEnabled];

    if (v4)
    {
      v5 = [v3 isEventDatabaseStorageEnabled];
      v6 = [v5 BOOLValue];
    }

    else
    {
      v6 = 1;
    }

    v7 = APLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = @"DISABLED";
      if (v6)
      {
        v8 = @"ENABLED";
      }

      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[Event Database] Event storage is: %{public}@", &v10, 0xCu);
    }
  }

  else
  {
    v3 = APLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[Event Database] Event storage is Disabled by user defaults.", &v10, 2u);
    }

    LOBYTE(v6) = 0;
  }

  return v6;
}

+ (BOOL)_isExperimentationReportEnabled
{
  v2 = objc_alloc_init(APLegacyFeatureFlags);
  v3 = [v2 devicePipelinesEnabled];
  v4 = APLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = @"DISABLED";
    if (v3)
    {
      v5 = @"ENABLED";
    }

    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Experimentation report is: %{public}@", &v7, 0xCu);
  }

  return v3;
}

+ (BOOL)_isIntegrityReportEnabled
{
  v2 = [APConfigurationMediator configurationForClass:objc_opt_class()];
  v3 = [v2 reportEnabled];

  if (v3)
  {
    v4 = [v2 reportEnabled];
    LODWORD(v3) = [v4 BOOLValue];
  }

  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = @"DISABLED";
    if (v3)
    {
      v6 = @"ENABLED";
    }

    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Integrity report is: %{public}@", &v8, 0xCu);
  }

  return v3;
}

@end