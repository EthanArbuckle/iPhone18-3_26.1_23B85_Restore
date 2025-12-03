@interface NDFPProvider
+ (id)providerIDForBundle:(id)bundle sharedContainerIdentifier:(id)identifier;
- (BOOL)isForeground;
- (NDFPProvider)initWithIdentifier:(id)identifier applicationIdentifier:(id)applicationIdentifier;
- (void)addObserver:(id)observer;
- (void)providerDidEnterBackground:(id)background;
- (void)providerDidEnterForeground:(id)foreground;
- (void)removeObserver:(id)observer;
@end

@implementation NDFPProvider

- (void)providerDidEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  v5 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = foregroundCopy;
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

- (void)providerDidEnterBackground:(id)background
{
  backgroundCopy = background;
  v5 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = backgroundCopy;
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

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6.receiver = selfCopy;
  v6.super_class = NDFPProvider;
  [(NDApplication *)&v6 removeObserver:observerCopy];
  if (![(NSMutableArray *)selfCopy->super._observers count])
  {
    [(FPProviderMonitor *)selfCopy->_monitor removeObserver:selfCopy forProviderID:selfCopy->super._bundleIdentifier];
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
    [(FPProviderMonitor *)selfCopy->_monitor addObserver:selfCopy forProviderID:selfCopy->super._bundleIdentifier];
  }

  v6.receiver = selfCopy;
  v6.super_class = NDFPProvider;
  [(NDApplication *)&v6 addObserver:observerCopy];
  objc_sync_exit(selfCopy);
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

- (NDFPProvider)initWithIdentifier:(id)identifier applicationIdentifier:(id)applicationIdentifier
{
  identifierCopy = identifier;
  applicationIdentifierCopy = applicationIdentifier;
  v14.receiver = self;
  v14.super_class = NDFPProvider;
  v8 = [(NDApplication *)&v14 initWithIdentifier:identifierCopy];
  if (v8)
  {
    v9 = objc_alloc_init(FPProviderMonitor);
    monitor = v8->_monitor;
    v8->_monitor = v9;

    v11 = [[NDSpringBoardApplication alloc] initWithIdentifier:applicationIdentifierCopy];
    springboardApplication = v8->_springboardApplication;
    v8->_springboardApplication = v11;

    v8->_initializedForegroundState = 0;
  }

  return v8;
}

+ (id)providerIDForBundle:(id)bundle sharedContainerIdentifier:(id)identifier
{
  bundleCopy = bundle;
  identifierCopy = identifier;
  v7 = identifierCopy;
  v8 = 0;
  if (bundleCopy && identifierCopy)
  {
    v8 = [FPProviderMonitor providerIDForApplication:bundleCopy sharedContainerIdentifier:identifierCopy];
  }

  return v8;
}

@end