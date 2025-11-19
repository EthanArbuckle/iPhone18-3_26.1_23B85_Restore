@interface NDSpringBoardApplication
+ (id)requestDelayQueue;
- (BOOL)backgroundUpdatesEnabled;
- (BOOL)hasBackgroundTaskCompletion;
- (BOOL)isForeground;
- (BOOL)isHandlingBackgroundURLSessionWithIdentifier:(id)a3 withSessionUUID:(id)a4;
- (BOOL)wakeForSessionIdentifier:(id)a3 withSessionUUID:(id)a4 wakeRequirement:(int64_t)a5;
- (NDSpringBoardApplication)initWithIdentifier:(id)a3;
- (id)containerURL;
- (void)_onqueue_resetRequestDelay;
- (void)addObserver:(id)a3;
- (void)applicationBackgroundUpdatesTurnedOff:(id)a3;
- (void)applicationBackgroundUpdatesTurnedOn:(id)a3;
- (void)applicationEnteredForeground:(id)a3;
- (void)applicationNoLongerInForeground:(id)a3;
- (void)applicationWasQuitFromAppSwitcher:(id)a3;
- (void)disableTransitionalDiscretionaryPeriodTimer;
- (void)removeObserver:(id)a3;
- (void)setupDelayTimer;
- (void)setupTransitionalDiscretionaryPeriodTimer;
- (void)startTransitionalDiscretionaryPeriodTimer;
@end

@implementation NDSpringBoardApplication

- (void)_onqueue_resetRequestDelay
{
  v3 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = self->super._bundleIdentifier;
    v6 = 138412290;
    v7 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Resetting request delay for %@", &v6, 0xCu);
  }

  [(NDApplication *)self setCurrentRequestDelay:0.0];
  delayTimer = self->_delayTimer;
  if (delayTimer)
  {
    dispatch_source_set_timer(delayTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  }
}

+ (id)requestDelayQueue
{
  if (qword_1000EB1A8 != -1)
  {
    dispatch_once(&qword_1000EB1A8, &stru_1000D5A00);
  }

  v3 = qword_1000EB1A0;

  return v3;
}

- (void)disableTransitionalDiscretionaryPeriodTimer
{
  transitionalDiscretionaryStateTimer = self->_transitionalDiscretionaryStateTimer;
  if (transitionalDiscretionaryStateTimer)
  {
    dispatch_source_set_timer(transitionalDiscretionaryStateTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  }

  [(NDApplication *)self setIsInTransitionalDiscretionaryPeriod:0];
}

- (BOOL)isForeground
{
  v3 = +[NDSpringBoard sharedSpringBoard];
  LOBYTE(self) = [v3 applicationIsForeground:self->super._bundleIdentifier];

  return self;
}

- (id)containerURL
{
  v2 = [[LSApplicationRecord alloc] initWithBundleIdentifier:self->super._bundleIdentifier allowPlaceholder:0 error:0];
  v3 = [v2 dataContainerURL];

  return v3;
}

- (void)applicationNoLongerInForeground:(id)a3
{
  v5.receiver = self;
  v5.super_class = NDSpringBoardApplication;
  [(NDApplication *)&v5 invokeSelectorForAllObservers:"applicationNoLongerInForeground:"];
  v4 = self;
  objc_sync_enter(v4);
  [(NDSpringBoardApplication *)v4 startTransitionalDiscretionaryPeriodTimer];
  objc_sync_exit(v4);
}

- (void)applicationEnteredForeground:(id)a3
{
  v4 = a3;
  v5 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Resetting request delay and clearing pending wake requests for %@ since it came into the foreground", buf, 0xCu);
  }

  v6 = self;
  objc_sync_enter(v6);
  v7 = +[NDSpringBoardApplication requestDelayQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005A7D8;
  block[3] = &unk_1000D63D0;
  block[4] = v6;
  dispatch_async(v7, block);

  v9.receiver = v6;
  v9.super_class = NDSpringBoardApplication;
  [(NDApplication *)&v9 invokeSelectorForAllObservers:"applicationEnteredForeground:"];
  objc_sync_exit(v6);

  v8 = v6;
  objc_sync_enter(v8);
  [(NDSpringBoardApplication *)v8 disableTransitionalDiscretionaryPeriodTimer];
  objc_sync_exit(v8);
}

- (void)applicationBackgroundUpdatesTurnedOn:(id)a3
{
  v3.receiver = self;
  v3.super_class = NDSpringBoardApplication;
  [(NDApplication *)&v3 invokeSelectorForAllObservers:"backgroundUpdatesEnabledForApplication:"];
}

- (void)applicationBackgroundUpdatesTurnedOff:(id)a3
{
  v3.receiver = self;
  v3.super_class = NDSpringBoardApplication;
  [(NDApplication *)&v3 invokeSelectorForAllObservers:"backgroundUpdatesDisabledForApplication:"];
}

- (void)applicationWasQuitFromAppSwitcher:(id)a3
{
  v3.receiver = self;
  v3.super_class = NDSpringBoardApplication;
  [(NDApplication *)&v3 invokeSelectorForAllObservers:"applicationWasQuitFromAppSwitcher:"];
}

- (void)startTransitionalDiscretionaryPeriodTimer
{
  [(NDApplication *)self setIsInTransitionalDiscretionaryPeriod:1];
  [(NDSpringBoardApplication *)self setupTransitionalDiscretionaryPeriodTimer];
  transitionalDiscretionaryStateTimer = self->_transitionalDiscretionaryStateTimer;
  v4 = dispatch_time(0, 64800000000000);

  dispatch_source_set_timer(transitionalDiscretionaryStateTimer, v4, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
}

- (void)setupTransitionalDiscretionaryPeriodTimer
{
  if (!self->_transitionalDiscretionaryStateTimer)
  {
    v3 = dispatch_get_global_queue(0, 0);
    v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3);
    transitionalDiscretionaryStateTimer = self->_transitionalDiscretionaryStateTimer;
    self->_transitionalDiscretionaryStateTimer = v4;

    dispatch_source_set_timer(self->_transitionalDiscretionaryStateTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    v6 = self->_transitionalDiscretionaryStateTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10005AA84;
    handler[3] = &unk_1000D63D0;
    handler[4] = self;
    dispatch_source_set_event_handler(v6, handler);
    dispatch_resume(self->_transitionalDiscretionaryStateTimer);
  }
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v10.receiver = v5;
  v10.super_class = NDSpringBoardApplication;
  [(NDApplication *)&v10 removeObserver:v4];
  if (![(NSMutableArray *)v5->super._observers count])
  {
    v6 = +[NDSpringBoard sharedSpringBoard];
    [v6 removeObserver:v5 forApplication:v5->super._bundleIdentifier];

    v7 = +[NDSpringBoard sharedSpringBoard];
    [v7 stopMonitoringBundleID:v5->super._bundleIdentifier];

    transitionalDiscretionaryStateTimer = v5->_transitionalDiscretionaryStateTimer;
    if (transitionalDiscretionaryStateTimer)
    {
      dispatch_source_cancel(transitionalDiscretionaryStateTimer);
      v9 = v5->_transitionalDiscretionaryStateTimer;
      v5->_transitionalDiscretionaryStateTimer = 0;
    }
  }

  objc_sync_exit(v5);
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (![(NSMutableArray *)v5->super._observers count])
  {
    v6 = +[NDSpringBoard sharedSpringBoard];
    [v6 startMonitoringBundleID:v5->super._bundleIdentifier];

    v7 = +[NDSpringBoard sharedSpringBoard];
    [v7 addObserver:v5 forApplication:v5->super._bundleIdentifier];

    if (![(NDSpringBoardApplication *)v5 isHandlingBackgroundURLSessionWithIdentifier:0 withSessionUUID:0])
    {
      v8 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
      {
        bundleIdentifier = v5->super._bundleIdentifier;
        *buf = 138412290;
        v14 = bundleIdentifier;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Resetting request delay and clearing pending wake requests for %@ since the first observer is being added", buf, 0xCu);
      }

      v10 = +[NDSpringBoardApplication requestDelayQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10005AE70;
      block[3] = &unk_1000D63D0;
      block[4] = v5;
      dispatch_async(v10, block);
    }
  }

  v11.receiver = v5;
  v11.super_class = NDSpringBoardApplication;
  [(NDApplication *)&v11 addObserver:v4];
  objc_sync_exit(v5);
}

- (BOOL)backgroundUpdatesEnabled
{
  v3 = +[NDSpringBoard sharedSpringBoard];
  LOBYTE(self) = [v3 applicationBackgroundUpdatesEnabled:self->super._bundleIdentifier];

  return self;
}

- (BOOL)hasBackgroundTaskCompletion
{
  v3 = +[NDSpringBoard sharedSpringBoard];
  LOBYTE(self) = [v3 applicationHasBackgroundTaskCompletion:self->super._bundleIdentifier];

  return self;
}

- (BOOL)isHandlingBackgroundURLSessionWithIdentifier:(id)a3 withSessionUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NDSpringBoard sharedSpringBoard];
  LOBYTE(self) = [v8 application:self->super._bundleIdentifier isHandlingBackgroundSessionWithIdentifier:v6 withSessionUUID:v7];

  return self;
}

- (BOOL)wakeForSessionIdentifier:(id)a3 withSessionUUID:(id)a4 wakeRequirement:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = +[NDSpringBoardApplication requestDelayQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005B104;
  block[3] = &unk_1000D63D0;
  block[4] = self;
  dispatch_async(v9, block);

  v10 = +[NDSpringBoard sharedSpringBoard];
  LOBYTE(self) = [v10 wakeUpApp:self->super._bundleIdentifier forSession:v7 withSessionUUID:v8];

  return self;
}

- (void)setupDelayTimer
{
  if (!self->_delayTimer)
  {
    v3 = +[NDSpringBoardApplication requestDelayQueue];
    v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3);
    delayTimer = self->_delayTimer;
    self->_delayTimer = v4;

    v6 = self->_delayTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10005B36C;
    handler[3] = &unk_1000D63D0;
    handler[4] = self;
    dispatch_source_set_event_handler(v6, handler);
    dispatch_source_set_timer(self->_delayTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(self->_delayTimer);
  }
}

- (NDSpringBoardApplication)initWithIdentifier:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NDSpringBoardApplication;
  v5 = [(NDApplication *)&v13 initWithIdentifier:v4];
  if (v5)
  {
    v6 = [[LSApplicationExtensionRecord alloc] initWithBundleIdentifier:v5->super._bundleIdentifier error:0];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 containingBundleRecord];
      v9 = [v8 bundleIdentifier];

      if (v9)
      {
        v10 = [NDApplication springboardApplicationWithBundleIdentifier:v9];
        containingApplication = v5->_containingApplication;
        v5->_containingApplication = v10;
      }
    }
  }

  return v5;
}

@end