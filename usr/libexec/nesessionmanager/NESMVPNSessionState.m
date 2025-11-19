@interface NESMVPNSessionState
+ (NESMVPNSessionState)stateWithType:(int64_t)a3;
- (BOOL)canSleep;
- (BOOL)handleClearConfiguration;
- (BOOL)handleSetConfiguration;
- (BOOL)handleSleep;
- (NESMVPNSessionState)initWithType:(int64_t)a3 andTimeout:(unint64_t)a4;
- (void)enterWithSession:(id)a3;
- (void)handleClearConfigurationResult:(BOOL)a3;
- (void)handleEstablishIPC;
- (void)handleEstablishIPCReplySent;
- (void)handleInterfaceAvailable:(id)a3 changed:(BOOL)a4;
- (void)handleInterfaceUnavailable:(id)a3;
- (void)handlePlugin:(id)a3 authenticationCompleteWithResults:(id)a4 status:(int)a5 andError:(id)a6;
- (void)handlePlugin:(id)a3 didAttachIPCWithEndpoint:(id)a4;
- (void)handlePlugin:(id)a3 didStartWithPID:(int)a4 error:(id)a5;
- (void)handlePlugin:(id)a3 statusDidChangeToDisconnectingWithReason:(int)a4;
- (void)handlePluginDidDetachIPC:(id)a3;
- (void)handlePluginDisposeComplete:(id)a3;
- (void)handlePluginStatusDidChangeToAuthenticating:(id)a3;
- (void)handlePluginStatusDidChangeToConnected:(id)a3;
- (void)handlePluginStatusDidChangeToContacting:(id)a3;
- (void)handlePluginStatusDidChangeToNegotiating:(id)a3;
- (void)handlePluginStatusDidChangeToReasserting:(id)a3;
- (void)handlePluginStatusDidChangeToUpdating:(id)a3;
- (void)handleSetConfigurationResult:(BOOL)a3;
- (void)handleStartMessage:(id)a3;
- (void)handleStop;
- (void)handleTimeout;
- (void)handleUpdateConfiguration;
- (void)handleUserLogout;
- (void)handleUserSwitch;
- (void)handleWakeup;
- (void)leave;
@end

@implementation NESMVPNSessionState

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

  [v11 setState:9];
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
    v15 = 138412546;
    v16 = Property;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ in state %@: update configuration", &v15, 0x16u);
  }

  if (self)
  {
    [objc_getProperty(self v8];
    v10 = objc_getProperty(self, v9, 16, 1);
  }

  else
  {
    [0 prepareConfigurationForStart];
    v10 = 0;
  }

  v12 = [v10 primaryTunnelPlugin];
  if (self)
  {
    v13 = objc_getProperty(self, v11, 16, 1);
  }

  else
  {
    v13 = 0;
  }

  v14 = [v13 configuration];
  sub_100019EA0(v12, v14);
}

- (void)handleClearConfigurationResult:(BOOL)a3
{
  v3 = a3;
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
    v16 = 1024;
    v17 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ in state %@: clear configuration completed with result %d", &v12, 0x1Cu);
  }

  if (self)
  {
    v11 = objc_getProperty(self, v10, 16, 1);
  }

  else
  {
    v11 = 0;
  }

  [v11 notifyChangedExtendedStatus];
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
    v11 = 138412546;
    v12 = Property;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ in state %@: clear configuration started", &v11, 0x16u);
  }

  if (self)
  {
    v9 = objc_getProperty(self, v8, 16, 1);
  }

  else
  {
    v9 = 0;
  }

  [v9 requestUninstall];
  return 1;
}

- (void)handleSetConfigurationResult:(BOOL)a3
{
  v3 = a3;
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
    v16 = 1024;
    v17 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ in state %@: set configuration completed with result %d", &v12, 0x1Cu);
  }

  if (self)
  {
    v11 = objc_getProperty(self, v10, 16, 1);
  }

  else
  {
    v11 = 0;
  }

  [v11 notifyChangedExtendedStatus];
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
    v11 = 138412546;
    v12 = Property;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ in state %@: set configuration started", &v11, 0x16u);
  }

  if (self)
  {
    v9 = objc_getProperty(self, v8, 16, 1);
  }

  else
  {
    v9 = 0;
  }

  [v9 requestInstall];
  return 1;
}

- (void)handleUserLogout
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
    v8 = 138412546;
    v9 = Property;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@ in state %@: console user logout", &v8, 0x16u);
  }
}

- (void)handleUserSwitch
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
    v8 = 138412546;
    v9 = Property;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@ in state %@: console user switch", &v8, 0x16u);
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
    v8 = 138412546;
    v9 = Property;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ in state %@: timed out", &v8, 0x16u);
  }
}

- (void)handleWakeup
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
    v19 = 138412546;
    v20 = Property;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@ in state %@: received wake event", &v19, 0x16u);
  }

  if (self)
  {
    v9 = objc_getProperty(self, v8, 16, 1);
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 primaryTunnelPlugin];
  if (v10)
  {
    v12 = v10;
    v13 = self ? objc_getProperty(self, v11, 16, 1) : 0;
    v14 = [v13 primaryTunnelPlugin];
    v15 = sub_10001A2D4(v14);

    if (v15)
    {
      if (self)
      {
        v17 = objc_getProperty(self, v16, 16, 1);
      }

      else
      {
        v17 = 0;
      }

      v18 = [v17 primaryTunnelPlugin];
      sub_10001A254(v18);
    }
  }
}

- (BOOL)canSleep
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
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@ in state %@: received can sleep query", &v9, 0x16u);
  }

  return 1;
}

- (BOOL)handleSleep
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
    v25 = 138412546;
    v26 = Property;
    v27 = 2112;
    v28 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@ in state %@: received sleep event", &v25, 0x16u);
  }

  if (self)
  {
    v9 = objc_getProperty(self, v8, 16, 1);
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 primaryTunnelPlugin];
  if (v10 && ((v12 = v10, !self) ? (v13 = 0) : (v13 = objc_getProperty(self, v11, 16, 1)), [v13 primaryTunnelPlugin], v14 = objc_claimAutoreleasedReturnValue(), v15 = sub_10001A2D4(v14), v14, v12, v15))
  {
    if (self)
    {
      v16 = objc_getProperty(self, v11, 16, 1);
    }

    else
    {
      v16 = 0;
    }

    v17 = [v16 primaryTunnelPlugin];
    sub_100019F08(v17);
  }

  else
  {
    if (self)
    {
      v18 = objc_getProperty(self, v11, 16, 1);
    }

    else
    {
      v18 = 0;
    }

    if ([v18 parentType] == 2)
    {
      if (self)
      {
        v20 = objc_getProperty(self, v19, 16, 1);
      }

      else
      {
        v20 = 0;
      }

      v17 = [v20 parent];
      if (self)
      {
        objc_getProperty(self, v21, 16, 1);
      }

      sub_10009A9A8(v17);
    }

    else
    {
      if (self)
      {
        v22 = objc_getProperty(self, v19, 16, 1);
      }

      else
      {
        v22 = 0;
      }

      v17 = [v22 server];
      sub_100059ED4(v17, v23);
    }
  }

  return 1;
}

- (void)handlePluginDidDetachIPC:(id)a3
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
    v14 = 138412802;
    v15 = Property;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ in state %@: plugin %@ did detach from IPC", &v14, 0x20u);
  }

  if (!self)
  {
    v13 = [0 establishIPCPending];
    v12 = 0;
    if ((v13 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if ([objc_getProperty(self v10])
  {
    v12 = objc_getProperty(self, v11, 16, 1);
LABEL_8:
    [v12 sendEstablishIPCReply];
  }

LABEL_9:
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
    v14 = 138412802;
    v15 = Property;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ in state %@: plugin %@ dispose complete", &v14, 0x20u);
  }

  if (!self)
  {
    v13 = [0 establishIPCPending];
    v12 = 0;
    if ((v13 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if ([objc_getProperty(self v10])
  {
    v12 = objc_getProperty(self, v11, 16, 1);
LABEL_8:
    [v12 sendEstablishIPCReply];
  }

LABEL_9:
}

- (void)handlePlugin:(id)a3 authenticationCompleteWithResults:(id)a4 status:(int)a5 andError:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = ne_log_obj();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      Property = objc_getProperty(self, v14, 16, 1);
    }

    else
    {
      Property = 0;
    }

    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = 138413570;
    v19 = Property;
    v20 = 2112;
    v21 = v17;
    v22 = 2112;
    v23 = v10;
    v24 = 2048;
    v25 = v11;
    v26 = 1024;
    v27 = a5;
    v28 = 2112;
    v29 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@ in state %@: plugin %@ authentication is complete with results %p, status %d, error %@", &v18, 0x3Au);
  }
}

- (void)handlePlugin:(id)a3 statusDidChangeToDisconnectingWithReason:(int)a4
{
  v5 = a3;
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
    v18 = v5;
    v19 = 2080;
    v20 = ne_session_stop_reason_to_string();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ in state %@: plugin %@ status changed to disconnecting with reason %s", &v13, 0x2Au);
  }

  if (self)
  {
    v12 = objc_getProperty(self, v11, 16, 1);
  }

  else
  {
    v12 = 0;
  }

  [v12 setState:5];
}

- (void)handlePluginStatusDidChangeToReasserting:(id)a3
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
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ in state %@: plugin %@ status changed to reasserting", &v12, 0x20u);
  }

  if (self)
  {
    v11 = objc_getProperty(self, v10, 16, 1);
  }

  else
  {
    v11 = 0;
  }

  [v11 setReassertedByPlugin:1];
}

- (void)handlePluginStatusDidChangeToConnected:(id)a3
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
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ in state %@: plugin %@ status changed to connected", &v12, 0x20u);
  }

  if (self)
  {
    v11 = objc_getProperty(self, v10, 16, 1);
  }

  else
  {
    v11 = 0;
  }

  [v11 setReassertedByPlugin:0];
}

- (void)handlePluginStatusDidChangeToNegotiating:(id)a3
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
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ in state %@: plugin %@ status changed to negotiating", &v10, 0x20u);
  }
}

- (void)handlePluginStatusDidChangeToAuthenticating:(id)a3
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
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ in state %@: plugin %@ status changed to authenticating", &v10, 0x20u);
  }
}

- (void)handlePluginStatusDidChangeToContacting:(id)a3
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
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ in state %@: plugin %@ status changed to contacting", &v10, 0x20u);
  }
}

- (void)handlePlugin:(id)a3 didAttachIPCWithEndpoint:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      Property = objc_getProperty(self, v9, 16, 1);
    }

    else
    {
      Property = 0;
    }

    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v21 = 138413058;
    v22 = Property;
    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = v6;
    v27 = 2048;
    v28 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ in state %@: plugin %@ attached IPC with endpoint %p", &v21, 0x2Au);
  }

  if (self)
  {
    if (![objc_getProperty(self v13])
    {
      goto LABEL_16;
    }

    v15 = objc_getProperty(self, v14, 16, 1);
  }

  else
  {
    v20 = [0 establishIPCPending];
    v15 = 0;
    if ((v20 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v16 = [v15 primaryTunnelPlugin];

  if (v16 == v6)
  {
    if (v7)
    {
      if (self)
      {
        v18 = objc_getProperty(self, v17, 16, 1);
      }

      else
      {
        v18 = 0;
      }

      [v18 setEndpointInEstablishIPCReply:v7 forPlugin:v6];
    }

    else
    {
      if (self)
      {
        v19 = objc_getProperty(self, v17, 16, 1);
      }

      else
      {
        v19 = 0;
      }

      [v19 sendEstablishIPCReply];
    }
  }

LABEL_16:
}

- (void)handlePlugin:(id)a3 didStartWithPID:(int)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = ne_log_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      Property = objc_getProperty(self, v11, 16, 1);
    }

    else
    {
      Property = 0;
    }

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = 138413314;
    v16 = Property;
    v17 = 2112;
    v18 = v14;
    v19 = 2112;
    v20 = v8;
    v21 = 1024;
    v22 = a4;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ in state %@: plugin %@ started with PID %d error %@", &v15, 0x30u);
  }
}

- (void)handleInterfaceAvailable:(id)a3 changed:(BOOL)a4
{
  v4 = a4;
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
    v12 = v11;
    v13 = "did not change";
    v14 = 138413058;
    v15 = Property;
    v16 = 2112;
    if (v4)
    {
      v13 = "changed";
    }

    v17 = v11;
    v18 = 2112;
    v19 = v6;
    v20 = 2080;
    v21 = v13;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ in state %@: interface %@ is now available, address %s", &v14, 0x2Au);
  }
}

- (void)handleInterfaceUnavailable:(id)a3
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
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ in state %@: interface %@ is now unavailable", &v10, 0x20u);
  }
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

  [v9 setState:5];
}

- (void)handleEstablishIPCReplySent
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
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ in state %@: sent establish IPC reply", &v8, 0x16u);
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
    v18 = 138412546;
    v19 = Property;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ in state %@: received establish IPC message", &v18, 0x16u);
  }

  if (self)
  {
    v9 = objc_getProperty(self, v8, 16, 1);
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 primaryTunnelPlugin];
  if (v10)
  {
    v12 = v10;
    if (self)
    {
      v13 = objc_getProperty(self, v11, 16, 1);
    }

    else
    {
      v13 = 0;
    }

    v14 = [v13 primaryTunnelPlugin];
    if (v14)
    {
      v15 = v14[16];

      if ((v15 & 1) == 0)
      {
        return;
      }

      if (self)
      {
        v17 = objc_getProperty(self, v16, 16, 1);
      }

      else
      {
        v17 = 0;
      }

      v12 = [v17 primaryTunnelPlugin];
      sub_10001A5E8(v12);
    }
  }
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
    v12 = 138412546;
    v13 = Property;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@: Leaving state %@", &v12, 0x16u);
  }

  if (self)
  {
    if (objc_getProperty(self, v8, 32, 1))
    {
      v10 = objc_getProperty(self, v9, 32, 1);
      dispatch_source_cancel(v10);
      objc_setProperty_atomic(self, v11, 0, 32);
    }

    objc_setProperty_atomic(self, v9, 0, 16);
  }
}

- (void)enterWithSession:(id)a3
{
  v5 = a3;
  if (self)
  {
    objc_setProperty_atomic(self, v4, v5, 16);
    if (self->_timeout)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        timeout = self->_timeout;
        *buf = 138412802;
        v19 = v5;
        v20 = 2112;
        v21 = v8;
        v22 = 2048;
        v23 = timeout;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: Entering state %@, timeout %llu seconds", buf, 0x20u);
      }

LABEL_9:
      if (self->_timeout && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v13 = [v5 queue];
        v14 = self->_timeout;
        v17 = v5;
        v15 = NECreateTimerSource();
        objc_setProperty_atomic(self, v16, v15, 32);
      }

      goto LABEL_12;
    }
  }

  v10 = ne_log_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    *buf = 138412546;
    v19 = v5;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@: Entering state %@", buf, 0x16u);
  }

  if (self)
  {
    goto LABEL_9;
  }

LABEL_12:
}

- (NESMVPNSessionState)initWithType:(int64_t)a3 andTimeout:(unint64_t)a4
{
  v10.receiver = self;
  v10.super_class = NESMVPNSessionState;
  v6 = [(NESMVPNSessionState *)&v10 init];
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

+ (NESMVPNSessionState)stateWithType:(int64_t)a3
{
  if ((a3 - 1) > 9)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_alloc_init(*(&off_1000EA670)[a3 - 1]);
  }

  return v4;
}

@end