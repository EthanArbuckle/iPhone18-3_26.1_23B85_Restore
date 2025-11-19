@interface NDFPProvider
+ (id)providerIDForBundle:(id)a3 sharedContainerIdentifier:(id)a4;
- (BOOL)isForeground;
- (NDFPProvider)initWithIdentifier:(id)a3 applicationIdentifier:(id)a4;
- (void)addObserver:(id)a3;
- (void)providerDidEnterBackground:(id)a3;
- (void)providerDidEnterForeground:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation NDFPProvider

- (void)providerDidEnterForeground:(id)a3
{
  v4 = a3;
  v5 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FPProvider %@ entered foreground", buf, 0xCu);
  }

  self->_isForeground = 1;
  if (self->_initializedForegroundState)
  {
    v6.receiver = self;
    v6.super_class = NDFPProvider;
    [(NDApplication *)&v6 invokeSelectorForAllObservers:"applicationEnteredForeground:"];
  }

  self->_initializedForegroundState = 1;
}

- (void)providerDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FPProvider %@ entered background", buf, 0xCu);
  }

  self->_isForeground = 0;
  if (self->_initializedForegroundState)
  {
    v6.receiver = self;
    v6.super_class = NDFPProvider;
    [(NDApplication *)&v6 invokeSelectorForAllObservers:"applicationNoLongerInForeground:"];
  }

  self->_initializedForegroundState = 1;
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6.receiver = v5;
  v6.super_class = NDFPProvider;
  [(NDApplication *)&v6 removeObserver:v4];
  if (![(NSMutableArray *)v5->super._observers count])
  {
    [(FPProviderMonitor *)v5->_monitor removeObserver:v5 forProviderID:v5->super._bundleIdentifier];
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
    [(FPProviderMonitor *)v5->_monitor addObserver:v5 forProviderID:v5->super._bundleIdentifier];
  }

  v6.receiver = v5;
  v6.super_class = NDFPProvider;
  [(NDApplication *)&v6 addObserver:v4];
  objc_sync_exit(v5);
}

- (BOOL)isForeground
{
  if (!self->_initializedForegroundState)
  {
    v3 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier = self->super._bundleIdentifier;
      v6 = 138412290;
      v7 = bundleIdentifier;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Being asked if container with identifier %@ is foreground before getting callback from FPProviderMonitor!", &v6, 0xCu);
    }
  }

  return self->_isForeground;
}

- (NDFPProvider)initWithIdentifier:(id)a3 applicationIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = NDFPProvider;
  v8 = [(NDApplication *)&v14 initWithIdentifier:v6];
  if (v8)
  {
    v9 = objc_alloc_init(FPProviderMonitor);
    monitor = v8->_monitor;
    v8->_monitor = v9;

    v11 = [[NDSpringBoardApplication alloc] initWithIdentifier:v7];
    springboardApplication = v8->_springboardApplication;
    v8->_springboardApplication = v11;

    v8->_initializedForegroundState = 0;
  }

  return v8;
}

+ (id)providerIDForBundle:(id)a3 sharedContainerIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v8 = [FPProviderMonitor providerIDForApplication:v5 sharedContainerIdentifier:v6];
  }

  return v8;
}

@end