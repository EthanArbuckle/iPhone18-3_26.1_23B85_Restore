@interface NESMVPNSessionStateStopping
- (BOOL)handleClearConfiguration;
- (BOOL)handleSetConfiguration;
- (NESMVPNSessionStateStopping)init;
- (void)enterWithSession:(id)session;
- (void)handleClearConfigurationResult:(BOOL)result;
- (void)handleEstablishIPC;
- (void)handlePlugin:(id)plugin didStartWithPID:(int)d error:(id)error;
- (void)handleSetConfigurationResult:(BOOL)result;
- (void)handleTimeout;
@end

@implementation NESMVPNSessionStateStopping

- (void)handlePlugin:(id)plugin didStartWithPID:(int)d error:(id)error
{
  v5.receiver = self;
  v5.super_class = NESMVPNSessionStateStopping;
  [(NESMVPNSessionState *)&v5 handlePlugin:plugin didStartWithPID:0 error:error];
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

- (void)handleTimeout
{
  v5.receiver = self;
  v5.super_class = NESMVPNSessionStateStopping;
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
    v47 = 138412546;
    v48 = Property;
    v49 = 2112;
    v50 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ in state %@: session is now uninstalled", &v47, 0x16u);
  }

  if (self)
  {
    [objc_getProperty(self v9];
    self->_isUninstalled = 1;
    v11 = objc_getProperty(self, v10, 16, 1);
  }

  else
  {
    [0 setPluginConfigurationEntities:0];
    v11 = 0;
  }

  if ([v11 virtualInterface])
  {
    if (self)
    {
      [objc_getProperty(self v12];
      NEVirtualInterfaceInvalidate();
      v14 = objc_getProperty(self, v13, 16, 1);
    }

    else
    {
      [0 virtualInterface];
      NEVirtualInterfaceInvalidate();
      v14 = 0;
    }

    CFRelease([v14 virtualInterface]);
    if (self)
    {
      v16 = objc_getProperty(self, v15, 16, 1);
    }

    else
    {
      v16 = 0;
    }

    [v16 setVirtualInterface:0];
  }

  if (self)
  {
    v17 = objc_getProperty(self, v12, 16, 1);
  }

  else
  {
    v17 = 0;
  }

  primaryTunnelPlugin = [v17 primaryTunnelPlugin];
  primaryTunnelPlugin3 = primaryTunnelPlugin;
  if (primaryTunnelPlugin && *(primaryTunnelPlugin + 64) == 6)
  {
    goto LABEL_32;
  }

  if (self)
  {
    v21 = objc_getProperty(self, v19, 16, 1);
  }

  else
  {
    v21 = 0;
  }

  primaryTunnelPlugin2 = [v21 primaryTunnelPlugin];
  if (!primaryTunnelPlugin2)
  {
    remotePluginObject = 0;
    goto LABEL_31;
  }

  v23 = primaryTunnelPlugin2[16];

  if (!v23)
  {
    goto LABEL_33;
  }

  v25 = ne_log_obj();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v27 = objc_getProperty(self, v26, 16, 1);
    }

    else
    {
      v27 = 0;
    }

    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    v47 = 138412546;
    v48 = v27;
    v49 = 2112;
    v50 = v29;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%@ in state %@: disconnecting the plugin", &v47, 0x16u);
  }

  if (self)
  {
    v31 = objc_getProperty(self, v30, 16, 1);
  }

  else
  {
    v31 = 0;
  }

  primaryTunnelPlugin3 = [v31 primaryTunnelPlugin];
  if (self)
  {
    v33 = objc_getProperty(self, v32, 16, 1);
  }

  else
  {
    v33 = 0;
  }

  lastStopReason = [v33 lastStopReason];
  if (primaryTunnelPlugin3)
  {
    v35 = lastStopReason;
    remotePluginObject = [primaryTunnelPlugin3 remotePluginObject];
    [remotePluginObject disconnectWithReason:v35];
LABEL_31:
  }

LABEL_32:

LABEL_33:
  if (self)
  {
    v37 = objc_getProperty(self, v24, 16, 1);
  }

  else
  {
    v37 = 0;
  }

  primaryTunnelPlugin4 = [v37 primaryTunnelPlugin];
  if (!primaryTunnelPlugin4 || (v39 = primaryTunnelPlugin4[16], primaryTunnelPlugin4, !v39))
  {
    v40 = ne_log_obj();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      if (self)
      {
        v42 = objc_getProperty(self, v41, 16, 1);
      }

      else
      {
        v42 = 0;
      }

      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      v47 = 138412546;
      v48 = v42;
      v49 = 2112;
      v50 = v44;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%@ in state %@: plugin already disconnected, disposing all plugins", &v47, 0x16u);
    }

    if (self)
    {
      v46 = objc_getProperty(self, v45, 16, 1);
    }

    else
    {
      v46 = 0;
    }

    [v46 setState:8];
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
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ in state %@: plugin disconnecting, ignoring clear configuration request", &v9, 0x16u);
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
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ in state %@: plugin disconnecting, ignoring set configuration result", &v9, 0x16u);
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
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ in state %@: plugin disconnecting, ignoring set configuration request", &v9, 0x16u);
  }

  return 0;
}

- (void)enterWithSession:(id)session
{
  if (self)
  {
    self->_isUninstalled = 0;
    v6.receiver = self;
    v6.super_class = NESMVPNSessionStateStopping;
    [(NESMVPNSessionState *)&v6 enterWithSession:session];
    Property = objc_getProperty(self, v4, 16, 1);
  }

  else
  {
    v6.receiver = 0;
    v6.super_class = NESMVPNSessionStateStopping;
    [(NESMVPNSessionState *)&v6 enterWithSession:session];
    Property = 0;
  }

  [Property requestUninstall];
}

- (NESMVPNSessionStateStopping)init
{
  v3.receiver = self;
  v3.super_class = NESMVPNSessionStateStopping;
  return [(NESMVPNSessionState *)&v3 initWithType:5 andTimeout:20];
}

@end