@interface _DASProcessLifecycleMonitor
+ (id)sharedMonitor;
- (BOOL)isSinkValid;
- (BPSSink)sink;
- (NSSet)foregroundedApplications;
- (_DASProcessLifecycleMonitor)init;
- (void)addDelegate:(id)delegate;
- (void)ensureSink;
- (void)establishAndSynchronizeDataSources;
- (void)notifyDelegatesWithSource:(id)source;
- (void)refreshDataSourcesWithFileProtection:(id)protection;
- (void)setSink:(id)sink;
- (void)setupApplicationSink;
- (void)synchronizeCurrentlyForegroundedApplications;
@end

@implementation _DASProcessLifecycleMonitor

- (BOOL)isSinkValid
{
  sink = [(_DASProcessLifecycleMonitor *)self sink];
  status = [sink status];
  if ([status state] == 1)
  {
    v5 = 1;
  }

  else
  {
    sink2 = [(_DASProcessLifecycleMonitor *)self sink];
    status2 = [sink2 status];
    v5 = [status2 state] == 0;
  }

  return v5;
}

- (BPSSink)sink
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_sink;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)ensureSink
{
  if (![(_DASProcessLifecycleMonitor *)self isSinkValid])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_100121EC4(log);
    }

    [(_DASProcessLifecycleMonitor *)self establishAndSynchronizeDataSources];
  }
}

+ (id)sharedMonitor
{
  if (qword_10020B4C8 != -1)
  {
    sub_100121CE8();
  }

  v3 = qword_10020B4D0;

  return v3;
}

- (NSSet)foregroundedApplications
{
  [(_DASProcessLifecycleMonitor *)self ensureSink];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100076F70;
  v11 = sub_100076F80;
  v12 = 0;
  foregroundedApplicationsQueue = self->_foregroundedApplicationsQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100002CF8;
  v6[3] = &unk_1001B5708;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(foregroundedApplicationsQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (_DASProcessLifecycleMonitor)init
{
  v27.receiver = self;
  v27.super_class = _DASProcessLifecycleMonitor;
  v2 = [(_DASProcessLifecycleMonitor *)&v27 init];
  if (v2)
  {
    v3 = +[NSMutableSet set];
    foregroundedApplications = v2->_foregroundedApplications;
    v2->_foregroundedApplications = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_USER_INITIATED, 0);
    v7 = dispatch_queue_create("com.apple.dasd.ProcessLifecycleMonitor.foregroundedApplications", v6);
    foregroundedApplicationsQueue = v2->_foregroundedApplicationsQueue;
    v2->_foregroundedApplicationsQueue = v7;

    v9 = +[NSMutableSet set];
    delegates = v2->_delegates;
    v2->_delegates = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_BACKGROUND, 0);
    v13 = dispatch_queue_create("com.apple.dasd.ProcessLifecycleMonitor.delegates", v12);
    delegatesQueue = v2->_delegatesQueue;
    v2->_delegatesQueue = v13;

    v15 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000766AC;
    block[3] = &unk_1001B5668;
    v16 = v2;
    v26 = v16;
    dispatch_async(v15, block);

    objc_initWeak(&location, v16);
    v17 = objc_opt_new();
    dataProtectionStateMonitor = v16->_dataProtectionStateMonitor;
    v16->_dataProtectionStateMonitor = v17;

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000079E4;
    v22[3] = &unk_1001B55C0;
    objc_copyWeak(&v23, &location);
    [(_DASDataProtectionStateMonitor *)v16->_dataProtectionStateMonitor setChangeHandler:v22];
    v19 = os_log_create("com.apple.DuetActivityScheduler", "ProcessLifecycleMonitor");
    log = v16->_log;
    v16->_log = v19;

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)establishAndSynchronizeDataSources
{
  [(_DASProcessLifecycleMonitor *)self setupApplicationSink];

  [(_DASProcessLifecycleMonitor *)self synchronizeCurrentlyForegroundedApplications];
}

- (void)refreshDataSourcesWithFileProtection:(id)protection
{
  protectionCopy = protection;
  if ([(_DASProcessLifecycleMonitor *)self isSinkValid])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Skipping sink refresh because we're already subscribed", &v18, 2u);
    }
  }

  else
  {
    v6 = BiomeLibrary();
    v7 = [v6 App];
    inFocus = [v7 InFocus];
    configuration = [inFocus configuration];
    storeConfig = [configuration storeConfig];
    protectionClass = [storeConfig protectionClass];

    asBiomeProtectionClass = [protectionCopy asBiomeProtectionClass];
    v13 = self->_log;
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (asBiomeProtectionClass >= protectionClass)
    {
      if (v14)
      {
        LOWORD(v18) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Refreshing data sources", &v18, 2u);
      }

      [(_DASProcessLifecycleMonitor *)self establishAndSynchronizeDataSources];
    }

    else if (v14)
    {
      v15 = v13;
      v16 = [NSNumber numberWithUnsignedInteger:asBiomeProtectionClass];
      v17 = [NSNumber numberWithUnsignedInteger:protectionClass];
      v18 = 138412546;
      v19 = v16;
      v20 = 2112;
      v21 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Skipping sink refresh because we don't have sufficient file protection (%@ < %@)!", &v18, 0x16u);
    }
  }
}

- (void)synchronizeCurrentlyForegroundedApplications
{
  v3 = +[NSMutableSet set];
  v4 = objc_opt_new();
  [v4 setLastN:50];
  v5 = +[_DASBMUtilityProvider sharedUtilityProvider];
  getConsoleUserUid = [v5 getConsoleUserUid];

  v7 = BiomeLibrary();
  v8 = [v7 App];
  inFocus = [v8 InFocus];
  v10 = [inFocus publisherWithUser:getConsoleUserUid useCase:@"DASBiomeUtilityUseCase" options:v4];

  v11 = [v10 filterWithIsIncluded:&stru_1001B6E98];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100076B44;
  v20[3] = &unk_1001B5570;
  v20[4] = self;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100076BA4;
  v18[3] = &unk_1001B6088;
  v12 = v3;
  v19 = v12;
  v13 = [v10 sinkWithCompletion:v20 receiveInput:v18];
  foregroundedApplicationsQueue = self->_foregroundedApplicationsQueue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100076C48;
  v16[3] = &unk_1001B56E0;
  v16[4] = self;
  v17 = v12;
  v15 = v12;
  dispatch_sync(foregroundedApplicationsQueue, v16);
}

- (void)setupApplicationSink
{
  sink = [(_DASProcessLifecycleMonitor *)self sink];
  [sink cancel];

  v4 = [[BMBiomeScheduler alloc] initWithIdentifier:@"com.apple.dasd.appInFocus.subscription" targetQueue:self->_foregroundedApplicationsQueue];
  v5 = BiomeLibrary();
  v6 = [v5 App];
  inFocus = [v6 InFocus];
  v8 = [inFocus DSLPublisherWithUseCase:@"DuetActivitySchedulerAppPredictions"];
  v9 = [v8 subscribeOn:v4];
  v10 = [v9 filterWithIsIncluded:&stru_1001B6EB8];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100076F30;
  v19[3] = &unk_1001B5570;
  v19[4] = self;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100002810;
  v18[3] = &unk_1001B6088;
  v18[4] = self;
  v11 = [v10 sinkWithCompletion:v19 receiveInput:v18];
  [(_DASProcessLifecycleMonitor *)self setSink:v11];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v13 = log;
    sink2 = [(_DASProcessLifecycleMonitor *)self sink];
    sink3 = [(_DASProcessLifecycleMonitor *)self sink];
    status = [sink3 status];
    v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [status state]);
    *buf = 138412546;
    v21 = sink2;
    v22 = 2112;
    v23 = v17;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Created sink: %@ (status: %@)", buf, 0x16u);
  }
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegatesQueue = self->_delegatesQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100077020;
  v7[3] = &unk_1001B56E0;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_sync(delegatesQueue, v7);
}

- (void)notifyDelegatesWithSource:(id)source
{
  sourceCopy = source;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_100121F08(sourceCopy, log, v6, v7, v8, v9, v10, v11);
  }

  delegatesQueue = self->_delegatesQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000770F4;
  v14[3] = &unk_1001B56E0;
  v14[4] = self;
  v15 = sourceCopy;
  v13 = sourceCopy;
  dispatch_sync(delegatesQueue, v14);
}

- (void)setSink:(id)sink
{
  sinkCopy = sink;
  obj = self;
  objc_sync_enter(obj);
  sink = obj->_sink;
  obj->_sink = sinkCopy;

  objc_sync_exit(obj);
}

@end