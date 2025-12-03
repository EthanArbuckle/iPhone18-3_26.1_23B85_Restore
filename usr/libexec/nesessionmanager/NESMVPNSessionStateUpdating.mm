@interface NESMVPNSessionStateUpdating
- (BOOL)handleClearConfiguration;
- (BOOL)handleSetConfiguration;
- (BOOL)handleSleep;
- (NESMVPNSessionStateUpdating)init;
- (void)enterWithSession:(id)session;
- (void)handleEstablishIPC;
- (void)handlePlugin:(id)plugin statusDidChangeToDisconnectedWithReason:(int)reason;
- (void)handlePlugin:(id)plugin statusDidChangeToDisconnectingWithReason:(int)reason;
- (void)handleStop;
- (void)handleTimeout;
- (void)handleUpdateConfiguration;
- (void)leave;
@end

@implementation NESMVPNSessionStateUpdating

- (BOOL)handleClearConfiguration
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
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ in state %@: rejecting clear configuration", &v9, 0x16u);
  }

  return 0;
}

- (BOOL)handleSetConfiguration
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
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ in state %@: rejecting set configuration", &v9, 0x16u);
  }

  return 0;
}

- (void)handlePlugin:(id)plugin statusDidChangeToDisconnectingWithReason:(int)reason
{
  pluginCopy = plugin;
  v6 = ne_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      Property = objc_getProperty(self, v7, 16, 1);
    }

    else
    {
      Property = 0;
    }

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = 138413058;
    v12 = Property;
    v13 = 2112;
    v14 = v10;
    v15 = 2112;
    v16 = pluginCopy;
    v17 = 2080;
    v18 = ne_session_stop_reason_to_string();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ in state %@: plugin %@ status changed to disconnecting with reason %s", &v11, 0x2Au);
  }
}

- (void)handlePlugin:(id)plugin statusDidChangeToDisconnectedWithReason:(int)reason
{
  pluginCopy = plugin;
  v6 = ne_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      Property = objc_getProperty(self, v7, 16, 1);
    }

    else
    {
      Property = 0;
    }

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v13 = 138413058;
    v14 = Property;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = pluginCopy;
    v19 = 2080;
    v20 = ne_session_stop_reason_to_string();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ in state %@: plugin %@ disconnected with reason %s", &v13, 0x2Au);
  }

  if (self)
  {
    v12 = objc_getProperty(self, v11, 16, 1);
  }

  else
  {
    v12 = 0;
  }

  [v12 setState:8];
}

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
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ in state %@: update configuration", &v8, 0x16u);
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
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ in state %@: received sleep event", &v9, 0x16u);
  }

  return 0;
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
    v8 = 138412546;
    v9 = Property;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ in state %@: received stop message", &v8, 0x16u);
  }
}

- (void)handleTimeout
{
  v5.receiver = self;
  v5.super_class = NESMVPNSessionStateUpdating;
  [(NESMVPNSessionState *)&v5 handleTimeout];
  if (self)
  {
    Property = objc_getProperty(self, v3, 16, 1);
  }

  else
  {
    Property = 0;
  }

  [Property setState:8];
}

- (void)handleEstablishIPC
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
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ in state %@: received establish IPC message", &v10, 0x16u);
  }

  if (self)
  {
    v9 = objc_getProperty(self, v8, 16, 1);
  }

  else
  {
    v9 = 0;
  }

  [v9 sendEstablishIPCReply];
}

- (void)leave
{
  selfCopy = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 16, 1);
  }

  selfCopy2 = self;
  queue = [(NESMVPNSessionStateUpdating *)selfCopy2 queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007B378;
  block[3] = &unk_1000EB1C0;
  v8 = selfCopy2;
  v5 = selfCopy2;
  dispatch_async(queue, block);

  v6.receiver = selfCopy;
  v6.super_class = NESMVPNSessionStateUpdating;
  [(NESMVPNSessionState *)&v6 leave];
}

- (void)enterWithSession:(id)session
{
  v7.receiver = self;
  v7.super_class = NESMVPNSessionStateUpdating;
  [(NESMVPNSessionState *)&v7 enterWithSession:session];
  if (self)
  {
    [objc_getProperty(self v4];
    Property = objc_getProperty(self, v5, 16, 1);
  }

  else
  {
    [0 requestUninstall];
    Property = 0;
  }

  sub_10008F168(Property, 1);
}

- (NESMVPNSessionStateUpdating)init
{
  v3.receiver = self;
  v3.super_class = NESMVPNSessionStateUpdating;
  return [(NESMVPNSessionState *)&v3 initWithType:9 andTimeout:300];
}

@end