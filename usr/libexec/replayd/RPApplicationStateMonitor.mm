@interface RPApplicationStateMonitor
- (RPApplicationStateMonitor)init;
- (int64_t)observersCount;
- (void)addSystemObserver:(id)observer;
- (void)applicationStateDidChange:(id)change;
- (void)handleApplicationStateChange:(id)change;
- (void)notifyInAppSessionShouldPauseOrResume:(id)resume;
- (void)observersCountDidChange;
- (void)removeSystemObserver;
@end

@implementation RPApplicationStateMonitor

- (RPApplicationStateMonitor)init
{
  v7.receiver = self;
  v7.super_class = RPApplicationStateMonitor;
  v2 = [(RPApplicationStateMonitor *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(BKSApplicationStateMonitor);
    [(RPApplicationStateMonitor *)v2 setApplicationStateMonitor:v3];

    v4 = objc_alloc_init(NSMutableDictionary);
    [(RPApplicationStateMonitor *)v2 setObservers:v4];

    v5 = objc_alloc_init(NSMutableDictionary);
    [(RPApplicationStateMonitor *)v2 setPreviousState:v5];

    [(RPApplicationStateMonitor *)v2 setSystemObserver:0];
  }

  return v2;
}

- (void)addSystemObserver:(id)observer
{
  [(RPApplicationStateMonitor *)self setSystemObserver:observer];

  [(RPApplicationStateMonitor *)self observersCountDidChange];
}

- (void)removeSystemObserver
{
  [(RPApplicationStateMonitor *)self setSystemObserver:0];

  [(RPApplicationStateMonitor *)self observersCountDidChange];
}

- (int64_t)observersCount
{
  observers = [(RPApplicationStateMonitor *)self observers];
  v4 = [observers count];
  systemObserver = [(RPApplicationStateMonitor *)self systemObserver];
  if (systemObserver)
  {
    v6 = v4 + 1;
  }

  else
  {
    v6 = v4;
  }

  return v6;
}

- (void)observersCountDidChange
{
  if ([(RPApplicationStateMonitor *)self observersCount]>= 1)
  {
    applicationStateMonitor = [(RPApplicationStateMonitor *)self applicationStateMonitor];
    handler = [applicationStateMonitor handler];

    if (!handler)
    {
      objc_initWeak(&location, self);
      applicationStateMonitor2 = [(RPApplicationStateMonitor *)self applicationStateMonitor];
      v10 = _NSConcreteStackBlock;
      v11 = 3221225472;
      v12 = sub_10001FC64;
      v13 = &unk_1000A1B28;
      objc_copyWeak(&v14, &location);
      [applicationStateMonitor2 setHandler:&v10];

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }

  applicationStateMonitor3 = [(RPApplicationStateMonitor *)self applicationStateMonitor:v10];
  handler2 = [applicationStateMonitor3 handler];
  if (handler2)
  {
    v8 = handler2;
    observersCount = [(RPApplicationStateMonitor *)self observersCount];

    if (observersCount)
    {
      return;
    }

    applicationStateMonitor3 = [(RPApplicationStateMonitor *)self applicationStateMonitor];
    [applicationStateMonitor3 setHandler:0];
  }
}

- (void)applicationStateDidChange:(id)change
{
  changeCopy = change;
  if (!dword_1000B6840 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    previousState = [(RPApplicationStateMonitor *)self previousState];
    v9 = 136447234;
    v10 = "[RPApplicationStateMonitor applicationStateDidChange:]";
    v11 = 1024;
    v12 = 98;
    v13 = 2080;
    v14 = "[RPApplicationStateMonitor applicationStateDidChange:]";
    v15 = 2112;
    v16 = changeCopy;
    v17 = 2112;
    v18 = previousState;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d %s userInfo %@ previousState %@", &v9, 0x30u);
  }

  systemObserver = [(RPApplicationStateMonitor *)self systemObserver];

  if (systemObserver)
  {
    [(RPApplicationStateMonitor *)self handleApplicationStateChange:changeCopy];
  }

  observers = [(RPApplicationStateMonitor *)self observers];
  v8 = [observers count];

  if (v8)
  {
    [(RPApplicationStateMonitor *)self notifyInAppSessionShouldPauseOrResume:changeCopy];
  }
}

- (void)handleApplicationStateChange:(id)change
{
  changeCopy = change;
  v4 = [changeCopy objectForKeyedSubscript:BKSApplicationStateAppIsFrontmostKey];
  bOOLValue = [v4 BOOLValue];

  v6 = changeCopy;
  if (bOOLValue)
  {
    v7 = [changeCopy objectForKeyedSubscript:BKSApplicationStateDisplayIDKey];
    v8 = SBSCopyFrontmostApplicationDisplayIdentifier();
    if ([v7 isEqualToString:v8])
    {
      systemObserver = [(RPApplicationStateMonitor *)self systemObserver];
      [systemObserver frontmostApplicationDidChange:v7];
    }

    v6 = changeCopy;
  }
}

- (void)notifyInAppSessionShouldPauseOrResume:(id)resume
{
  resumeCopy = resume;
  v5 = [resumeCopy objectForKeyedSubscript:BKSApplicationStateProcessIDKey];
  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 integerValue]);

  observers = [(RPApplicationStateMonitor *)self observers];
  v8 = [observers objectForKeyedSubscript:v6];

  if (!dword_1000B6840 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136447234;
    v18 = "[RPApplicationStateMonitor notifyInAppSessionShouldPauseOrResume:]";
    v19 = 1024;
    v20 = 127;
    v21 = 2080;
    v22 = "[RPApplicationStateMonitor notifyInAppSessionShouldPauseOrResume:]";
    v23 = 2112;
    *v24 = v6;
    *&v24[8] = 1024;
    *&v24[10] = v8 != 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d %s processIdentifer %@ observer nonnil %i", &v17, 0x2Cu);
  }

  if (v8)
  {
    v9 = [resumeCopy objectForKeyedSubscript:BKSApplicationStateKey];
    unsignedIntValue = [v9 unsignedIntValue];

    previousState = [(RPApplicationStateMonitor *)self previousState];
    v12 = [previousState objectForKeyedSubscript:v6];
    unsignedIntValue2 = [v12 unsignedIntValue];

    if (!dword_1000B6840 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136447234;
      v18 = "[RPApplicationStateMonitor notifyInAppSessionShouldPauseOrResume:]";
      v19 = 1024;
      v20 = 133;
      v21 = 2080;
      v22 = "[RPApplicationStateMonitor notifyInAppSessionShouldPauseOrResume:]";
      v23 = 1024;
      *v24 = unsignedIntValue;
      *&v24[4] = 1024;
      *&v24[6] = unsignedIntValue2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d %s state %i previousState %i", &v17, 0x28u);
    }

    if (unsignedIntValue == 8)
    {
      if (unsignedIntValue2 != 8)
      {
        if (!dword_1000B6840 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 136446722;
          v18 = "[RPApplicationStateMonitor notifyInAppSessionShouldPauseOrResume:]";
          v19 = 1024;
          v20 = 136;
          v21 = 2080;
          v22 = "[RPApplicationStateMonitor notifyInAppSessionShouldPauseOrResume:]";
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d %s calling clientApplicationDidEnterForeground", &v17, 0x1Cu);
        }

        [v8 clientApplicationDidEnterForeground];
      }
    }

    else if (unsignedIntValue2 == 8)
    {
      if (!dword_1000B6840 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136446722;
        v18 = "[RPApplicationStateMonitor notifyInAppSessionShouldPauseOrResume:]";
        v19 = 1024;
        v20 = 141;
        v21 = 2080;
        v22 = "[RPApplicationStateMonitor notifyInAppSessionShouldPauseOrResume:]";
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d %s calling clientApplicationDidEnterBackground", &v17, 0x1Cu);
      }

      [v8 clientApplicationDidEnterBackground];
    }

    v14 = [NSNumber numberWithUnsignedInt:unsignedIntValue];
    previousState2 = [(RPApplicationStateMonitor *)self previousState];
    [previousState2 setObject:v14 forKeyedSubscript:v6];

    if (!dword_1000B6840 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      previousState3 = [(RPApplicationStateMonitor *)self previousState];
      v17 = 136447234;
      v18 = "[RPApplicationStateMonitor notifyInAppSessionShouldPauseOrResume:]";
      v19 = 1024;
      v20 = 147;
      v21 = 2080;
      v22 = "[RPApplicationStateMonitor notifyInAppSessionShouldPauseOrResume:]";
      v23 = 1024;
      *v24 = unsignedIntValue;
      *&v24[4] = 2112;
      *&v24[6] = previousState3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d %s state %i previousState %@", &v17, 0x2Cu);
    }
  }
}

@end