@interface NESMVPNSessionStateIdle
- (BOOL)handleClearConfiguration;
- (BOOL)handleSetConfiguration;
- (NESMVPNSessionStateIdle)init;
- (void)enterWithSession:(id)session;
- (void)handleClearConfigurationResult:(BOOL)result;
- (void)handleEstablishIPC;
- (void)handleSetConfigurationResult:(BOOL)result;
- (void)handleStartMessage:(id)message;
- (void)handleUpdateConfiguration;
- (void)leave;
@end

@implementation NESMVPNSessionStateIdle

- (void)handleClearConfigurationResult:(BOOL)result
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
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ in state %@: plugin is idle, ignoring clear configuration result", &v9, 0x16u);
  }
}

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
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ in state %@: plugin is idle, ignoring clear configuration request", &v9, 0x16u);
  }

  return 0;
}

- (void)handleSetConfigurationResult:(BOOL)result
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
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ in state %@: plugin is idle, ignoring set configuration result", &v9, 0x16u);
  }
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
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ in state %@: plugin is idle, ignoring set configuration request", &v9, 0x16u);
  }

  return 0;
}

- (void)handleUpdateConfiguration
{
  v17.receiver = self;
  v17.super_class = NESMVPNSessionStateIdle;
  [(NESMVPNSessionState *)&v17 handleUpdateConfiguration];
  if (self)
  {
    Property = objc_getProperty(self, v3, 16, 1);
  }

  else
  {
    Property = 0;
  }

  configuration = [Property configuration];
  v6 = [configuration VPN];
  if ([v6 isEnabled])
  {

    if (!self)
    {
      return;
    }
  }

  else
  {
    if (self)
    {
      v8 = objc_getProperty(self, v7, 16, 1);
    }

    else
    {
      v8 = 0;
    }

    configuration2 = [v8 configuration];
    appVPN = [configuration2 appVPN];
    isEnabled = [appVPN isEnabled];

    if (!self || !isEnabled)
    {
      return;
    }
  }

  if (self->_establishIPCWhenEnabled)
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_getProperty(self, v13, 16, 1);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138412546;
      v19 = v14;
      v20 = 2112;
      v21 = v16;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@ in state %@: the configuration is now enabled, establishing IPC", buf, 0x16u);
    }

    self->_establishIPCWhenEnabled = 0;
    [(NESMVPNSessionStateIdle *)self handleEstablishIPC];
  }
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
    v24 = 138412546;
    v25 = Property;
    v26 = 2112;
    v27 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ in state %@: received establish IPC message", &v24, 0x16u);
  }

  if (self)
  {
    v9 = objc_getProperty(self, v8, 16, 1);
  }

  else
  {
    v9 = 0;
  }

  configuration = [v9 configuration];
  v11 = [configuration VPN];
  if ([v11 isEnabled])
  {

LABEL_12:
    if (self)
    {
      v18 = objc_getProperty(self, v13, 16, 1);
    }

    else
    {
      v18 = 0;
    }

    [v18 setState:10];
    return;
  }

  if (self)
  {
    v14 = objc_getProperty(self, v12, 16, 1);
  }

  else
  {
    v14 = 0;
  }

  configuration2 = [v14 configuration];
  appVPN = [configuration2 appVPN];
  isEnabled = [appVPN isEnabled];

  if (isEnabled)
  {
    goto LABEL_12;
  }

  v19 = ne_log_obj();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v21 = objc_getProperty(self, v20, 16, 1);
    }

    else
    {
      v21 = 0;
    }

    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = 138412546;
    v25 = v21;
    v26 = 2112;
    v27 = v23;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@ in state %@: delaying IPC establish until the configuration is enabled", &v24, 0x16u);
  }

  if (self)
  {
    self->_establishIPCWhenEnabled = 1;
  }
}

- (void)handleStartMessage:(id)message
{
  messageCopy = message;
  v8.receiver = self;
  v8.super_class = NESMVPNSessionStateIdle;
  [(NESMVPNSessionState *)&v8 handleStartMessage:messageCopy];
  if (self)
  {
    [objc_getProperty(self v5];
    Property = objc_getProperty(self, v6, 16, 1);
  }

  else
  {
    [0 createConnectParametersWithStartMessage:messageCopy];
    Property = 0;
  }

  [Property setState:2];
}

- (void)leave
{
  selfCopy = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 16, 1);
  }

  sub_10002DF74(self);
  v3.receiver = selfCopy;
  v3.super_class = NESMVPNSessionStateIdle;
  [(NESMVPNSessionState *)&v3 leave];
}

- (void)enterWithSession:(id)session
{
  v18.receiver = self;
  v18.super_class = NESMVPNSessionStateIdle;
  sessionCopy = session;
  [(NESMVPNSessionState *)&v18 enterWithSession:sessionCopy];
  sub_10002DF74(sessionCopy);

  if (self)
  {
    Property = objc_getProperty(self, v5, 16, 1);
    if (![Property sleepOnDisconnect])
    {
      goto LABEL_15;
    }

    v8 = objc_getProperty(self, v7, 16, 1);
  }

  else
  {
    sleepOnDisconnect = [0 sleepOnDisconnect];
    v8 = 0;
    v16 = 0;
    if ((sleepOnDisconnect & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if ([v8 parentType] == 2)
  {
    if (self)
    {
      v10 = objc_getProperty(self, v9, 16, 1);
    }

    else
    {
      v10 = 0;
    }

    parent = [v10 parent];
    if (self)
    {
      objc_getProperty(self, v11, 16, 1);
    }

    sub_10009A9A8(parent);
  }

  else
  {
    if (self)
    {
      v13 = objc_getProperty(self, v9, 16, 1);
    }

    else
    {
      v13 = 0;
    }

    parent = [v13 server];
    sub_100059ED4(parent, v14);
  }

  if (!self)
  {
    [0 setSleepOnDisconnect:0];
    v16 = 0;
    goto LABEL_16;
  }

  [objc_getProperty(self v15];
LABEL_15:
  self->_establishIPCWhenEnabled = 0;
  v16 = objc_getProperty(self, v7, 16, 1);
LABEL_16:
  [v16 setRestartPending:0];
}

- (NESMVPNSessionStateIdle)init
{
  v3.receiver = self;
  v3.super_class = NESMVPNSessionStateIdle;
  return [(NESMVPNSessionState *)&v3 initWithType:1 andTimeout:0];
}

@end