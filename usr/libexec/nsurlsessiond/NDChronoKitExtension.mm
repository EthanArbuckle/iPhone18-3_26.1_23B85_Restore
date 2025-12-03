@interface NDChronoKitExtension
+ (id)requestDelayQueue;
- (BOOL)isHandlingBackgroundURLSessionWithIdentifier:(id)identifier withSessionUUID:(id)d;
- (BOOL)wakeForSessionIdentifier:(id)identifier withSessionUUID:(id)d wakeRequirement:(int64_t)requirement;
- (id)containerURL;
- (void)_onqueue_resetRequestDelay;
- (void)addObserver:(id)observer;
- (void)extensionWasRemovedFromScreen:(id)screen;
- (void)removeObserver:(id)observer;
- (void)setupDelayTimer;
@end

@implementation NDChronoKitExtension

- (void)extensionWasRemovedFromScreen:(id)screen
{
  v3.receiver = self;
  v3.super_class = NDChronoKitExtension;
  [(NDApplication *)&v3 invokeSelectorForAllObservers:"applicationWasQuitFromAppSwitcher:"];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8.receiver = selfCopy;
  v8.super_class = NDChronoKitExtension;
  [(NDApplication *)&v8 removeObserver:observerCopy];
  if (![(NSMutableArray *)selfCopy->super._observers count])
  {
    v6 = +[NDChronoKitLauncher sharedLauncher];
    [v6 removeObserver:selfCopy forExtension:selfCopy->super._bundleIdentifier];

    v7 = +[NDChronoKitLauncher sharedLauncher];
    [v7 stopMonitoringBundleID:selfCopy->super._bundleIdentifier];
  }

  objc_sync_exit(selfCopy);
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(NSMutableArray *)selfCopy->super._observers count])
  {
    v6 = +[NDChronoKitLauncher sharedLauncher];
    [v6 startMonitoringBundleID:selfCopy->super._bundleIdentifier];

    v7 = +[NDChronoKitLauncher sharedLauncher];
    [v7 addObserver:selfCopy forExtension:selfCopy->super._bundleIdentifier];

    if (![(NDChronoKitExtension *)selfCopy isHandlingBackgroundURLSessionWithIdentifier:0 withSessionUUID:0])
    {
      v8 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
      {
        bundleIdentifier = selfCopy->super._bundleIdentifier;
        *buf = 138412290;
        v14 = bundleIdentifier;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Resetting request delay and clearing pending wake requests for %@ since the first observer is being added", buf, 0xCu);
      }

      v10 = +[NDChronoKitExtension requestDelayQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10005C078;
      block[3] = &unk_1000D63D0;
      block[4] = selfCopy;
      dispatch_async(v10, block);
    }
  }

  v11.receiver = selfCopy;
  v11.super_class = NDChronoKitExtension;
  [(NDApplication *)&v11 addObserver:observerCopy];
  objc_sync_exit(selfCopy);
}

- (BOOL)isHandlingBackgroundURLSessionWithIdentifier:(id)identifier withSessionUUID:(id)d
{
  identifierCopy = identifier;
  dCopy = d;
  v8 = +[NDChronoKitLauncher sharedLauncher];
  LOBYTE(self) = [v8 extension:self->super._bundleIdentifier isHandlingBackgroundSessionWithIdentifier:identifierCopy withSessionUUID:dCopy];

  return self;
}

- (BOOL)wakeForSessionIdentifier:(id)identifier withSessionUUID:(id)d wakeRequirement:(int64_t)requirement
{
  identifierCopy = identifier;
  dCopy = d;
  v10 = +[NDChronoKitExtension requestDelayQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005C244;
  block[3] = &unk_1000D63D0;
  block[4] = self;
  dispatch_async(v10, block);

  v11 = +[NDChronoKitLauncher sharedLauncher];
  LOBYTE(requirement) = [v11 wakeUpExtension:self->super._bundleIdentifier forSession:identifierCopy withSessionUUID:dCopy wakeRequirement:requirement];

  return requirement;
}

- (id)containerURL
{
  v2 = [[LSApplicationExtensionRecord alloc] initWithBundleIdentifier:self->super._bundleIdentifier error:0];
  dataContainerURL = [v2 dataContainerURL];

  return dataContainerURL;
}

- (void)_onqueue_resetRequestDelay
{
  v4.receiver = self;
  v4.super_class = NDChronoKitExtension;
  [(NDApplication *)&v4 _onqueue_resetRequestDelay];
  delayTimer = self->_delayTimer;
  if (delayTimer)
  {
    dispatch_source_set_timer(delayTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  }
}

- (void)setupDelayTimer
{
  if (!self->_delayTimer)
  {
    v3 = +[NDChronoKitExtension requestDelayQueue];
    v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3);
    delayTimer = self->_delayTimer;
    self->_delayTimer = v4;

    v6 = self->_delayTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10005C588;
    handler[3] = &unk_1000D63D0;
    handler[4] = self;
    dispatch_source_set_event_handler(v6, handler);
    dispatch_source_set_timer(self->_delayTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(self->_delayTimer);
  }
}

+ (id)requestDelayQueue
{
  if (qword_1000EB1B8 != -1)
  {
    dispatch_once(&qword_1000EB1B8, &stru_1000D5A20);
  }

  v3 = qword_1000EB1B0;

  return v3;
}

@end