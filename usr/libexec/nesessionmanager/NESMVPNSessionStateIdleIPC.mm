@interface NESMVPNSessionStateIdleIPC
- (NESMVPNSessionStateIdleIPC)init;
- (void)enterWithSession:(id)session;
- (void)handleEstablishIPC;
- (void)handleEstablishIPCReplySent;
- (void)handlePlugin:(id)plugin didAttachIPCWithEndpoint:(id)endpoint;
- (void)handlePluginDidDetachIPC:(id)c;
- (void)handlePluginDisposeComplete:(id)complete;
- (void)handleStartMessage:(id)message;
- (void)handleStop;
- (void)handleUpdateConfiguration;
@end

@implementation NESMVPNSessionStateIdleIPC

- (void)handlePluginDisposeComplete:(id)complete
{
  v6.receiver = self;
  v6.super_class = NESMVPNSessionStateIdleIPC;
  [(NESMVPNSessionState *)&v6 handlePluginDisposeComplete:complete];
  if (self)
  {
    Property = objc_getProperty(self, v4, 48, 1);
    sub_100079BCC(self, Property);
  }
}

- (void)handlePluginDidDetachIPC:(id)c
{
  cCopy = c;
  v15.receiver = self;
  v15.super_class = NESMVPNSessionStateIdleIPC;
  [(NESMVPNSessionState *)&v15 handlePluginDidDetachIPC:cCopy];
  if (self)
  {
    Property = objc_getProperty(self, v5, 16, 1);
  }

  else
  {
    Property = 0;
  }

  primaryTunnelPlugin = [Property primaryTunnelPlugin];

  if (primaryTunnelPlugin)
  {
    if (self)
    {
      v9 = [objc_getProperty(self v8];
      sub_1000198A8(v9, v10);

      v12 = objc_getProperty(self, v11, 16, 1);
    }

    else
    {
      primaryTunnelPlugin2 = [0 primaryTunnelPlugin];
      sub_1000198A8(primaryTunnelPlugin2, v14);

      v12 = 0;
    }

    [v12 setPrimaryTunnelPlugin:0];
  }

  else
  {
    [(NESMVPNSessionStateIdleIPC *)self handlePluginDisposeComplete:cCopy];
  }
}

- (void)handleUpdateConfiguration
{
  v19.receiver = self;
  v19.super_class = NESMVPNSessionStateIdleIPC;
  [(NESMVPNSessionState *)&v19 handleUpdateConfiguration];
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

LABEL_15:
    return;
  }

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

  if ((isEnabled & 1) == 0)
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (self)
      {
        v14 = objc_getProperty(self, v13, 16, 1);
      }

      else
      {
        v14 = 0;
      }

      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138412546;
      v21 = v14;
      v22 = 2112;
      v23 = v16;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@ in state %@: the configuration is now disabled, tearing down IPC", buf, 0x16u);
    }

    if (self)
    {
      v18 = objc_getProperty(self, v17, 16, 1);
    }

    else
    {
      v18 = 0;
    }

    configuration = [v18 primaryTunnelPlugin];
    [(NESMVPNSessionStateIdleIPC *)self handlePluginDidDetachIPC:configuration];
    goto LABEL_15;
  }
}

- (void)handleEstablishIPCReplySent
{
  v13.receiver = self;
  v13.super_class = NESMVPNSessionStateIdleIPC;
  [(NESMVPNSessionState *)&v13 handleEstablishIPCReplySent];
  if (!self || !self->_didAttachIPC || objc_getProperty(self, v3, 48, 1))
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
      v9 = NSStringFromClass(v7);
      if (self)
      {
        v10 = objc_getProperty(self, v8, 48, 1);
      }

      else
      {
        v10 = 0;
      }

      *buf = 138412802;
      v15 = Property;
      v16 = 2112;
      v17 = v9;
      v18 = 2048;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ in state %@: IPC did not attach or there is a pending start message, moving to idle and handling pending start message (%p)", buf, 0x20u);
    }

    if (self)
    {
      v12 = objc_getProperty(self, v11, 48, 1);
      sub_100079BCC(self, v12);
    }
  }
}

- (void)handlePlugin:(id)plugin didAttachIPCWithEndpoint:(id)endpoint
{
  if (self && endpoint)
  {
    self->_didAttachIPC = 1;
  }

  v4.receiver = self;
  v4.super_class = NESMVPNSessionStateIdleIPC;
  [(NESMVPNSessionState *)&v4 handlePlugin:plugin didAttachIPCWithEndpoint:endpoint];
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
    v9 = 138412546;
    v10 = Property;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ in state %@: received stop message", &v9, 0x16u);
  }

  if (self)
  {
    objc_setProperty_atomic(self, v8, 0, 48);
  }
}

- (void)handleStartMessage:(id)message
{
  messageCopy = message;
  v19.receiver = self;
  v19.super_class = NESMVPNSessionStateIdleIPC;
  [(NESMVPNSessionState *)&v19 handleStartMessage:messageCopy];
  if (self)
  {
    Property = objc_getProperty(self, v5, 16, 1);
  }

  else
  {
    Property = 0;
  }

  primaryTunnelPlugin = [Property primaryTunnelPlugin];
  if (primaryTunnelPlugin)
  {
    v8 = primaryTunnelPlugin[16];
  }

  else
  {
    v8 = 0;
  }

  v9 = ne_log_obj();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      if (self)
      {
        v12 = objc_getProperty(self, v11, 16, 1);
      }

      else
      {
        v12 = 0;
      }

      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138412546;
      v21 = v12;
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ in state %@: plugin previously started, going back to the idle state to handle the start message", buf, 0x16u);
    }

    sub_100079BCC(self, messageCopy);
  }

  else
  {
    if (v10)
    {
      if (self)
      {
        v15 = objc_getProperty(self, v11, 16, 1);
      }

      else
      {
        v15 = 0;
      }

      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      *buf = 138412546;
      v21 = v15;
      v22 = 2112;
      v23 = v17;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ in state %@: plugin has not yet started, saving the start message", buf, 0x16u);
    }

    if (self)
    {
      objc_setProperty_atomic(self, v18, messageCopy, 48);
    }
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
    v8 = 138412546;
    v9 = Property;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ in state %@: ignoring duplicate request to establish IPC", &v8, 0x16u);
  }
}

- (void)enterWithSession:(id)session
{
  sessionCopy = session;
  v10.receiver = self;
  v10.super_class = NESMVPNSessionStateIdleIPC;
  [(NESMVPNSessionState *)&v10 enterWithSession:sessionCopy];
  if (self)
  {
    self->_didAttachIPC = 0;
  }

  if (![sessionCopy initializePlugins] || !objc_msgSend(sessionCopy, "prepareConfigurationForStart"))
  {
    goto LABEL_8;
  }

  primaryTunnelPlugin = [sessionCopy primaryTunnelPlugin];
  v7 = self ? objc_getProperty(self, v5, 16, 1) : 0;
  configuration = [v7 configuration];
  v9 = sub_1000187A4(primaryTunnelPlugin, configuration);

  if (!v9)
  {
LABEL_8:
    [sessionCopy sendEstablishIPCReply];
  }
}

- (NESMVPNSessionStateIdleIPC)init
{
  v3.receiver = self;
  v3.super_class = NESMVPNSessionStateIdleIPC;
  return [(NESMVPNSessionState *)&v3 initWithType:10 andTimeout:0];
}

@end