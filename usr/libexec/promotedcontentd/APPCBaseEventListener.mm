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
  if ([self _isIntegrityReportEnabled])
  {
    v3 = +[APPCIntegrityReportEventListener sharedInstance];
  }

  if ([self _isEventDatabaseStorageEnabled])
  {
    v4 = +[APPCEventStorageListener sharedInstance];
  }

  if ([self _isExperimentationReportEnabled])
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
  tokens = [(APPCBaseEventListener *)self tokens];
  v4 = [tokens countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(tokens);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = +[MetricsModule storage];
        notificationRegistrar = [v9 notificationRegistrar];
        [notificationRegistrar removeHandlerWithIdentifier:{objc_msgSend(v8, "integerValue")}];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [tokens countByEnumeratingWithState:&v11 objects:v15 count:16];
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
    isEventDatabaseStorageEnabled = [v3 isEventDatabaseStorageEnabled];

    if (isEventDatabaseStorageEnabled)
    {
      isEventDatabaseStorageEnabled2 = [v3 isEventDatabaseStorageEnabled];
      bOOLValue = [isEventDatabaseStorageEnabled2 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }

    v7 = APLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = @"DISABLED";
      if (bOOLValue)
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

    LOBYTE(bOOLValue) = 0;
  }

  return bOOLValue;
}

+ (BOOL)_isExperimentationReportEnabled
{
  v2 = objc_alloc_init(APLegacyFeatureFlags);
  devicePipelinesEnabled = [v2 devicePipelinesEnabled];
  v4 = APLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = @"DISABLED";
    if (devicePipelinesEnabled)
    {
      v5 = @"ENABLED";
    }

    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Experimentation report is: %{public}@", &v7, 0xCu);
  }

  return devicePipelinesEnabled;
}

+ (BOOL)_isIntegrityReportEnabled
{
  v2 = [APConfigurationMediator configurationForClass:objc_opt_class()];
  reportEnabled = [v2 reportEnabled];

  if (reportEnabled)
  {
    reportEnabled2 = [v2 reportEnabled];
    LODWORD(reportEnabled) = [reportEnabled2 BOOLValue];
  }

  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = @"DISABLED";
    if (reportEnabled)
    {
      v6 = @"ENABLED";
    }

    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Integrity report is: %{public}@", &v8, 0xCu);
  }

  return reportEnabled;
}

@end