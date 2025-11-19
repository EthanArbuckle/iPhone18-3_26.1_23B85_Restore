@interface NESMURLFilterSessionState
+ (id)stateWithType:(int64_t)a3;
- (BOOL)handleSleep;
- (NESMURLFilterSessionState)initWithType:(int64_t)a3 andTimeout:(int64_t)a4;
- (void)enterWithSession:(id)a3;
- (void)handlePlugin:(id)a3 statusDidChangeToIdleWithError:(int64_t)a4;
- (void)handlePlugin:(id)a3 statusDidChangeToStoppingWithError:(int64_t)a4;
- (void)handlePluginDisposeComplete:(id)a3;
- (void)handlePluginStatusDidChangeToRunning:(id)a3;
- (void)handlePluginStatusDidChangeToStarting:(id)a3;
- (void)handlePluginStatusDidChangeToUpdating:(id)a3;
- (void)handleStartMessage:(id)a3;
- (void)handleStop;
- (void)handleTimeout;
- (void)handleUpdateConfiguration;
- (void)handleWakeup;
- (void)leave;
@end

@implementation NESMURLFilterSessionState

- (void)handleUpdateConfiguration
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      Property = objc_getProperty(self, v4, 16, 1);
    }

    else
    {
      Property = 0;
    }

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138412546;
    v9 = Property;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ in state %@: configuration changed", &v8, 0x16u);
  }
}

- (void)handleTimeout
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      Property = objc_getProperty(self, v4, 16, 1);
    }

    else
    {
      Property = 0;
    }

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v10 = 138412546;
    v11 = Property;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ in state %@: timed out", &v10, 0x16u);
  }

  if (self)
  {
    v9 = objc_getProperty(self, v8, 16, 1);
  }

  else
  {
    v9 = 0;
  }

  sub_10006DE84(v9, 4);
}

- (void)handleWakeup
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      Property = objc_getProperty(self, v4, 16, 1);
    }

    else
    {
      Property = 0;
    }

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138412546;
    v9 = Property;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ in state %@: handle wake up", &v8, 0x16u);
  }
}

- (BOOL)handleSleep
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      Property = objc_getProperty(self, v4, 16, 1);
    }

    else
    {
      Property = 0;
    }

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138412546;
    v10 = Property;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ in state %@: handle sleep", &v9, 0x16u);
  }

  return 0;
}

- (void)handlePluginDisposeComplete:(id)a3
{
  v4 = a3;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      Property = objc_getProperty(self, v6, 16, 1);
    }

    else
    {
      Property = 0;
    }

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = 138412802;
    v11 = Property;
    v12 = 2112;
    v13 = v9;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ in state %@: plugin %@ disposed", &v10, 0x20u);
  }
}

- (void)handlePlugin:(id)a3 statusDidChangeToStoppingWithError:(int64_t)a4
{
  v6 = a3;
  v7 = ne_log_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      Property = objc_getProperty(self, v8, 16, 1);
    }

    else
    {
      Property = 0;
    }

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v15 = 138413058;
    v16 = Property;
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = v6;
    v21 = 2048;
    v22 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ in state %@: plugin %@ status changed to stopping with error %ld", &v15, 0x2Au);
  }

  if (a4 == 1)
  {
    if (self)
    {
      v13 = objc_getProperty(self, v12, 16, 1);
    }

    else
    {
      v13 = 0;
    }

    [v13 setLastStopReason:7];
  }

  if (self)
  {
    v14 = objc_getProperty(self, v12, 16, 1);
  }

  else
  {
    v14 = 0;
  }

  sub_10006DE84(v14, 4);
}

- (void)handlePluginStatusDidChangeToUpdating:(id)a3
{
  v4 = a3;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      Property = objc_getProperty(self, v6, 16, 1);
    }

    else
    {
      Property = 0;
    }

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v12 = 138412802;
    v13 = Property;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ in state %@: plugin %@ status changed to updating", &v12, 0x20u);
  }

  if (self)
  {
    v11 = objc_getProperty(self, v10, 16, 1);
  }

  else
  {
    v11 = 0;
  }

  sub_10006DE84(v11, 5);
}

- (void)handlePluginStatusDidChangeToRunning:(id)a3
{
  v4 = a3;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      Property = objc_getProperty(self, v6, 16, 1);
    }

    else
    {
      Property = 0;
    }

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = 138412802;
    v11 = Property;
    v12 = 2112;
    v13 = v9;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ in state %@: plugin %@ status changed to running", &v10, 0x20u);
  }
}

- (void)handlePluginStatusDidChangeToStarting:(id)a3
{
  v4 = a3;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      Property = objc_getProperty(self, v6, 16, 1);
    }

    else
    {
      Property = 0;
    }

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = 138412802;
    v11 = Property;
    v12 = 2112;
    v13 = v9;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ in state %@: plugin %@ status changed to starting", &v10, 0x20u);
  }
}

- (void)handlePlugin:(id)a3 statusDidChangeToIdleWithError:(int64_t)a4
{
  v6 = a3;
  v7 = ne_log_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      Property = objc_getProperty(self, v8, 16, 1);
    }

    else
    {
      Property = 0;
    }

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v16 = 138413058;
    v17 = Property;
    v18 = 2112;
    v19 = v11;
    v20 = 2112;
    v21 = v6;
    v22 = 2048;
    v23 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ in state %@: plugin %@ status changed to idle with error: %ld", &v16, 0x2Au);
  }

  if (a4 == 2)
  {
    if (self)
    {
      v13 = objc_getProperty(self, v12, 16, 1);
    }

    else
    {
      v13 = 0;
    }

    v14 = 6;
  }

  else
  {
    if (a4 != 1)
    {
      goto LABEL_14;
    }

    if (self)
    {
      v13 = objc_getProperty(self, v12, 16, 1);
    }

    else
    {
      v13 = 0;
    }

    v14 = 7;
  }

  [v13 setLastStopReason:v14];
LABEL_14:
  if (self)
  {
    v15 = objc_getProperty(self, v12, 16, 1);
  }

  else
  {
    v15 = 0;
  }

  sub_10006DE84(v15, 4);
}

- (void)handleStop
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      Property = objc_getProperty(self, v4, 16, 1);
    }

    else
    {
      Property = 0;
    }

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v10 = 138412546;
    v11 = Property;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ in state %@: received stop message", &v10, 0x16u);
  }

  if (self)
  {
    v9 = objc_getProperty(self, v8, 16, 1);
  }

  else
  {
    v9 = 0;
  }

  sub_10006DE84(v9, 4);
}

- (void)handleStartMessage:(id)a3
{
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      Property = objc_getProperty(self, v5, 16, 1);
    }

    else
    {
      Property = 0;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = 138412546;
    v10 = Property;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ in state %@: received start message", &v9, 0x16u);
  }
}

- (void)leave
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    if (self)
    {
      Property = objc_getProperty(self, v4, 16, 1);
    }

    else
    {
      Property = 0;
    }

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138412546;
    v10 = Property;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@: Leaving state %@", &v9, 0x16u);
  }

  if (self)
  {
    objc_setProperty_atomic(self, v8, 0, 16);
  }
}

- (void)enterWithSession:(id)a3
{
  v5 = a3;
  if (self)
  {
    objc_setProperty_atomic(self, v4, v5, 16);
  }

  v6 = ne_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 138412546;
    v13 = v5;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@: Entering state %@", buf, 0x16u);
  }

  if (self && self->_timeout >= 1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v9 = dispatch_time(0, 1000000000 * self->_timeout);
    v10 = [v5 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006A818;
    block[3] = &unk_1000EB1C0;
    block[4] = self;
    dispatch_after(v9, v10, block);
  }
}

- (NESMURLFilterSessionState)initWithType:(int64_t)a3 andTimeout:(int64_t)a4
{
  v10.receiver = self;
  v10.super_class = NESMURLFilterSessionState;
  v6 = [(NESMURLFilterSessionState *)&v10 init];
  v7 = v6;
  if (v6)
  {
    session = v6->_session;
    v6->_type = a3;
    v6->_session = 0;
    v6->_timeout = a4;
  }

  return v7;
}

+ (id)stateWithType:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_alloc_init(*off_1000EA578[a3 - 1]);
  }

  return v4;
}

@end