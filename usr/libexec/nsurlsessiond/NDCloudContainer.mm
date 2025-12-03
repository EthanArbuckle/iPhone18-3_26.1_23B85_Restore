@interface NDCloudContainer
+ (id)bundleIDForPrimaryIdentifier:(id)identifier secondaryIdentifier:(id)secondaryIdentifier;
+ (id)containerIDForPrimaryIdentifier:(id)identifier secondaryIdentifier:(id)secondaryIdentifier;
- (BOOL)isForeground;
- (NDCloudContainer)initWithIdentifier:(id)identifier;
- (void)addObserver:(id)observer;
- (void)containerDidEnterBackground:(id)background;
- (void)containerDidEnterForeground:(id)foreground;
- (void)removeObserver:(id)observer;
@end

@implementation NDCloudContainer

- (BOOL)isForeground
{
  if (!self->_initializedForegroundStateFromMonitorCallback)
  {
    v3 = [BRContainersMonitor isContainerIDForeground:self->super._bundleIdentifier];
    self->_isForeground = v3;
    v4 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier = self->super._bundleIdentifier;
      if (v3)
      {
        v6 = 89;
      }

      else
      {
        v6 = 78;
      }

      v8 = 138412546;
      v9 = bundleIdentifier;
      v10 = 1024;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Being asked if container with identifier %@ is foreground before getting callback from BRContainersMonitor! Foreground state is %c", &v8, 0x12u);
    }
  }

  return self->_isForeground;
}

- (void)containerDidEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  v5 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = foregroundCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Container %@ entered foreground", buf, 0xCu);
  }

  self->_isForeground = 1;
  if (self->_initializedForegroundStateFromMonitorCallback)
  {
    v6.receiver = self;
    v6.super_class = NDCloudContainer;
    [(NDApplication *)&v6 invokeSelectorForAllObservers:"applicationEnteredForeground:"];
  }

  self->_initializedForegroundStateFromMonitorCallback = 1;
}

- (void)containerDidEnterBackground:(id)background
{
  backgroundCopy = background;
  v5 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = backgroundCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Container %@ entered background", buf, 0xCu);
  }

  self->_isForeground = 0;
  if (self->_initializedForegroundStateFromMonitorCallback)
  {
    v6.receiver = self;
    v6.super_class = NDCloudContainer;
    [(NDApplication *)&v6 invokeSelectorForAllObservers:"applicationNoLongerInForeground:"];
  }

  self->_initializedForegroundStateFromMonitorCallback = 1;
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6.receiver = selfCopy;
  v6.super_class = NDCloudContainer;
  [(NDApplication *)&v6 removeObserver:observerCopy];
  if (![(NSMutableArray *)selfCopy->super._observers count])
  {
    [(BRContainersMonitor *)selfCopy->_monitor removeObserver:selfCopy forContainerID:selfCopy->super._bundleIdentifier];
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
    [(BRContainersMonitor *)selfCopy->_monitor addObserver:selfCopy forContainerID:selfCopy->super._bundleIdentifier];
  }

  v6.receiver = selfCopy;
  v6.super_class = NDCloudContainer;
  [(NDApplication *)&v6 addObserver:observerCopy];
  objc_sync_exit(selfCopy);
}

- (NDCloudContainer)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = NDCloudContainer;
  v5 = [(NDApplication *)&v9 initWithIdentifier:identifierCopy];
  if (v5)
  {
    v6 = objc_alloc_init(BRContainersMonitor);
    monitor = v5->_monitor;
    v5->_monitor = v6;

    v5->_initializedForegroundStateFromMonitorCallback = 0;
  }

  return v5;
}

+ (id)bundleIDForPrimaryIdentifier:(id)identifier secondaryIdentifier:(id)secondaryIdentifier
{
  identifierCopy = identifier;
  secondaryIdentifierCopy = secondaryIdentifier;
  v7 = secondaryIdentifierCopy;
  v8 = 0;
  if (identifierCopy && secondaryIdentifierCopy)
  {
    v8 = [BRContainersMonitor bundleIDFromPrimaryIdentifier:identifierCopy secondaryIdentifier:secondaryIdentifierCopy];
  }

  return v8;
}

+ (id)containerIDForPrimaryIdentifier:(id)identifier secondaryIdentifier:(id)secondaryIdentifier
{
  identifierCopy = identifier;
  secondaryIdentifierCopy = secondaryIdentifier;
  v7 = secondaryIdentifierCopy;
  v8 = 0;
  if (identifierCopy && secondaryIdentifierCopy)
  {
    v8 = [BRContainersMonitor containerIDFromPrimaryIdentifier:identifierCopy secondaryIdentifier:secondaryIdentifierCopy];
  }

  return v8;
}

@end