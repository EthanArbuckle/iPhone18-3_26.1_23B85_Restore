@interface RPApplicationStateMonitor
- (RPApplicationStateMonitor)init;
- (int64_t)observersCount;
- (void)addSystemObserver:(id)a3;
- (void)applicationStateDidChange:(id)a3;
- (void)handleApplicationStateChange:(id)a3;
- (void)notifyInAppSessionShouldPauseOrResume:(id)a3;
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

- (void)addSystemObserver:(id)a3
{
  [(RPApplicationStateMonitor *)self setSystemObserver:a3];

  [(RPApplicationStateMonitor *)self observersCountDidChange];
}

- (void)removeSystemObserver
{
  [(RPApplicationStateMonitor *)self setSystemObserver:0];

  [(RPApplicationStateMonitor *)self observersCountDidChange];
}

- (int64_t)observersCount
{
  v3 = [(RPApplicationStateMonitor *)self observers];
  v4 = [v3 count];
  v5 = [(RPApplicationStateMonitor *)self systemObserver];
  if (v5)
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
    v3 = [(RPApplicationStateMonitor *)self applicationStateMonitor];
    v4 = [v3 handler];

    if (!v4)
    {
      objc_initWeak(&location, self);
      v5 = [(RPApplicationStateMonitor *)self applicationStateMonitor];
      v10 = _NSConcreteStackBlock;
      v11 = 3221225472;
      v12 = sub_10001FC64;
      v13 = &unk_1000A1B28;
      objc_copyWeak(&v14, &location);
      [v5 setHandler:&v10];

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }

  v6 = [(RPApplicationStateMonitor *)self applicationStateMonitor:v10];
  v7 = [v6 handler];
  if (v7)
  {
    v8 = v7;
    v9 = [(RPApplicationStateMonitor *)self observersCount];

    if (v9)
    {
      return;
    }

    v6 = [(RPApplicationStateMonitor *)self applicationStateMonitor];
    [v6 setHandler:0];
  }
}

- (void)applicationStateDidChange:(id)a3
{
  v4 = a3;
  if (!dword_1000B6840 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(RPApplicationStateMonitor *)self previousState];
    v9 = 136447234;
    v10 = "[RPApplicationStateMonitor applicationStateDidChange:]";
    v11 = 1024;
    v12 = 98;
    v13 = 2080;
    v14 = "[RPApplicationStateMonitor applicationStateDidChange:]";
    v15 = 2112;
    v16 = v4;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d %s userInfo %@ previousState %@", &v9, 0x30u);
  }

  v6 = [(RPApplicationStateMonitor *)self systemObserver];

  if (v6)
  {
    [(RPApplicationStateMonitor *)self handleApplicationStateChange:v4];
  }

  v7 = [(RPApplicationStateMonitor *)self observers];
  v8 = [v7 count];

  if (v8)
  {
    [(RPApplicationStateMonitor *)self notifyInAppSessionShouldPauseOrResume:v4];
  }
}

- (void)handleApplicationStateChange:(id)a3
{
  v10 = a3;
  v4 = [v10 objectForKeyedSubscript:BKSApplicationStateAppIsFrontmostKey];
  v5 = [v4 BOOLValue];

  v6 = v10;
  if (v5)
  {
    v7 = [v10 objectForKeyedSubscript:BKSApplicationStateDisplayIDKey];
    v8 = SBSCopyFrontmostApplicationDisplayIdentifier();
    if ([v7 isEqualToString:v8])
    {
      v9 = [(RPApplicationStateMonitor *)self systemObserver];
      [v9 frontmostApplicationDidChange:v7];
    }

    v6 = v10;
  }
}

- (void)notifyInAppSessionShouldPauseOrResume:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:BKSApplicationStateProcessIDKey];
  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 integerValue]);

  v7 = [(RPApplicationStateMonitor *)self observers];
  v8 = [v7 objectForKeyedSubscript:v6];

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
    v9 = [v4 objectForKeyedSubscript:BKSApplicationStateKey];
    v10 = [v9 unsignedIntValue];

    v11 = [(RPApplicationStateMonitor *)self previousState];
    v12 = [v11 objectForKeyedSubscript:v6];
    v13 = [v12 unsignedIntValue];

    if (!dword_1000B6840 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136447234;
      v18 = "[RPApplicationStateMonitor notifyInAppSessionShouldPauseOrResume:]";
      v19 = 1024;
      v20 = 133;
      v21 = 2080;
      v22 = "[RPApplicationStateMonitor notifyInAppSessionShouldPauseOrResume:]";
      v23 = 1024;
      *v24 = v10;
      *&v24[4] = 1024;
      *&v24[6] = v13;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d %s state %i previousState %i", &v17, 0x28u);
    }

    if (v10 == 8)
    {
      if (v13 != 8)
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

    else if (v13 == 8)
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

    v14 = [NSNumber numberWithUnsignedInt:v10];
    v15 = [(RPApplicationStateMonitor *)self previousState];
    [v15 setObject:v14 forKeyedSubscript:v6];

    if (!dword_1000B6840 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(RPApplicationStateMonitor *)self previousState];
      v17 = 136447234;
      v18 = "[RPApplicationStateMonitor notifyInAppSessionShouldPauseOrResume:]";
      v19 = 1024;
      v20 = 147;
      v21 = 2080;
      v22 = "[RPApplicationStateMonitor notifyInAppSessionShouldPauseOrResume:]";
      v23 = 1024;
      *v24 = v10;
      *&v24[4] = 2112;
      *&v24[6] = v16;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d %s state %i previousState %@", &v17, 0x2Cu);
    }
  }
}

@end