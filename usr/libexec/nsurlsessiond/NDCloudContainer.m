@interface NDCloudContainer
+ (id)bundleIDForPrimaryIdentifier:(id)a3 secondaryIdentifier:(id)a4;
+ (id)containerIDForPrimaryIdentifier:(id)a3 secondaryIdentifier:(id)a4;
- (BOOL)isForeground;
- (NDCloudContainer)initWithIdentifier:(id)a3;
- (void)addObserver:(id)a3;
- (void)containerDidEnterBackground:(id)a3;
- (void)containerDidEnterForeground:(id)a3;
- (void)removeObserver:(id)a3;
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

- (void)containerDidEnterForeground:(id)a3
{
  v4 = a3;
  v5 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v4;
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

- (void)containerDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v4;
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

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6.receiver = v5;
  v6.super_class = NDCloudContainer;
  [(NDApplication *)&v6 removeObserver:v4];
  if (![(NSMutableArray *)v5->super._observers count])
  {
    [(BRContainersMonitor *)v5->_monitor removeObserver:v5 forContainerID:v5->super._bundleIdentifier];
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
    [(BRContainersMonitor *)v5->_monitor addObserver:v5 forContainerID:v5->super._bundleIdentifier];
  }

  v6.receiver = v5;
  v6.super_class = NDCloudContainer;
  [(NDApplication *)&v6 addObserver:v4];
  objc_sync_exit(v5);
}

- (NDCloudContainer)initWithIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NDCloudContainer;
  v5 = [(NDApplication *)&v9 initWithIdentifier:v4];
  if (v5)
  {
    v6 = objc_alloc_init(BRContainersMonitor);
    monitor = v5->_monitor;
    v5->_monitor = v6;

    v5->_initializedForegroundStateFromMonitorCallback = 0;
  }

  return v5;
}

+ (id)bundleIDForPrimaryIdentifier:(id)a3 secondaryIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v8 = [BRContainersMonitor bundleIDFromPrimaryIdentifier:v5 secondaryIdentifier:v6];
  }

  return v8;
}

+ (id)containerIDForPrimaryIdentifier:(id)a3 secondaryIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v8 = [BRContainersMonitor containerIDFromPrimaryIdentifier:v5 secondaryIdentifier:v6];
  }

  return v8;
}

@end