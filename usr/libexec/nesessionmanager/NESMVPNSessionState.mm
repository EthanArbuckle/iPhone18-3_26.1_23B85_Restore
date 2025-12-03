@interface NESMVPNSessionState
+ (NESMVPNSessionState)stateWithType:(int64_t)type;
- (BOOL)canSleep;
- (BOOL)handleClearConfiguration;
- (BOOL)handleSetConfiguration;
- (BOOL)handleSleep;
- (NESMVPNSessionState)initWithType:(int64_t)type andTimeout:(unint64_t)timeout;
- (void)enterWithSession:(id)session;
- (void)handleClearConfigurationResult:(BOOL)result;
- (void)handleEstablishIPC;
- (void)handleEstablishIPCReplySent;
- (void)handleInterfaceAvailable:(id)available changed:(BOOL)changed;
- (void)handleInterfaceUnavailable:(id)unavailable;
- (void)handlePlugin:(id)plugin authenticationCompleteWithResults:(id)results status:(int)status andError:(id)error;
- (void)handlePlugin:(id)plugin didAttachIPCWithEndpoint:(id)endpoint;
- (void)handlePlugin:(id)plugin didStartWithPID:(int)d error:(id)error;
- (void)handlePlugin:(id)plugin statusDidChangeToDisconnectingWithReason:(int)reason;
- (void)handlePluginDidDetachIPC:(id)c;
- (void)handlePluginDisposeComplete:(id)complete;
- (void)handlePluginStatusDidChangeToAuthenticating:(id)authenticating;
- (void)handlePluginStatusDidChangeToConnected:(id)connected;
- (void)handlePluginStatusDidChangeToContacting:(id)contacting;
- (void)handlePluginStatusDidChangeToNegotiating:(id)negotiating;
- (void)handlePluginStatusDidChangeToReasserting:(id)reasserting;
- (void)handlePluginStatusDidChangeToUpdating:(id)updating;
- (void)handleSetConfigurationResult:(BOOL)result;
- (void)handleStartMessage:(id)message;
- (void)handleStop;
- (void)handleTimeout;
- (void)handleUpdateConfiguration;
- (void)handleUserLogout;
- (void)handleUserSwitch;
- (void)handleWakeup;
- (void)leave;
@end

@implementation NESMVPNSessionState

- (void)handlePluginStatusDidChangeToUpdating:(id)updating
{
  updatingCopy = updating;
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
    v17 = updatingCopy;
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

  primaryTunnelPlugin = [v10 primaryTunnelPlugin];
  if (self)
  {
    v13 = objc_getProperty(self, v11, 16, 1);
  }

  else
  {
    v13 = 0;
  }

  configuration = [v13 configuration];
  sub_100019EA0(primaryTunnelPlugin, configuration);
}

- (void)handleClearConfigurationResult:(BOOL)result
{
  resultCopy = result;
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
    v17 = resultCopy;
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

- (void)handleSetConfigurationResult:(BOOL)result
{
  resultCopy = result;
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
    v17 = resultCopy;
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

  primaryTunnelPlugin = [v9 primaryTunnelPlugin];
  if (primaryTunnelPlugin)
  {
    v12 = primaryTunnelPlugin;
    v13 = self ? objc_getProperty(self, v11, 16, 1) : 0;
    primaryTunnelPlugin2 = [v13 primaryTunnelPlugin];
    v15 = sub_10001A2D4(primaryTunnelPlugin2);

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

      primaryTunnelPlugin3 = [v17 primaryTunnelPlugin];
      sub_10001A254(primaryTunnelPlugin3);
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

  primaryTunnelPlugin = [v9 primaryTunnelPlugin];
  if (primaryTunnelPlugin && ((v12 = primaryTunnelPlugin, !self) ? (v13 = 0) : (v13 = objc_getProperty(self, v11, 16, 1)), [v13 primaryTunnelPlugin], v14 = objc_claimAutoreleasedReturnValue(), v15 = sub_10001A2D4(v14), v14, v12, v15))
  {
    if (self)
    {
      v16 = objc_getProperty(self, v11, 16, 1);
    }

    else
    {
      v16 = 0;
    }

    primaryTunnelPlugin2 = [v16 primaryTunnelPlugin];
    sub_100019F08(primaryTunnelPlugin2);
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

      primaryTunnelPlugin2 = [v20 parent];
      if (self)
      {
        objc_getProperty(self, v21, 16, 1);
      }

      sub_10009A9A8(primaryTunnelPlugin2);
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

      primaryTunnelPlugin2 = [v22 server];
      sub_100059ED4(primaryTunnelPlugin2, v23);
    }
  }

  return 1;
}

- (void)handlePluginDidDetachIPC:(id)c
{
  cCopy = c;
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
    v19 = cCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ in state %@: plugin %@ did detach from IPC", &v14, 0x20u);
  }

  if (!self)
  {
    establishIPCPending = [0 establishIPCPending];
    v12 = 0;
    if ((establishIPCPending & 1) == 0)
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

- (void)handlePluginDisposeComplete:(id)complete
{
  completeCopy = complete;
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
    v19 = completeCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ in state %@: plugin %@ dispose complete", &v14, 0x20u);
  }

  if (!self)
  {
    establishIPCPending = [0 establishIPCPending];
    v12 = 0;
    if ((establishIPCPending & 1) == 0)
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

- (void)handlePlugin:(id)plugin authenticationCompleteWithResults:(id)results status:(int)status andError:(id)error
{
  pluginCopy = plugin;
  resultsCopy = results;
  errorCopy = error;
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
    v23 = pluginCopy;
    v24 = 2048;
    v25 = resultsCopy;
    v26 = 1024;
    statusCopy = status;
    v28 = 2112;
    v29 = errorCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@ in state %@: plugin %@ authentication is complete with results %p, status %d, error %@", &v18, 0x3Au);
  }
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
    v13 = 138413058;
    v14 = Property;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = pluginCopy;
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

- (void)handlePluginStatusDidChangeToReasserting:(id)reasserting
{
  reassertingCopy = reasserting;
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
    v17 = reassertingCopy;
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

- (void)handlePluginStatusDidChangeToConnected:(id)connected
{
  connectedCopy = connected;
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
    v17 = connectedCopy;
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

- (void)handlePluginStatusDidChangeToNegotiating:(id)negotiating
{
  negotiatingCopy = negotiating;
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
    v15 = negotiatingCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ in state %@: plugin %@ status changed to negotiating", &v10, 0x20u);
  }
}

- (void)handlePluginStatusDidChangeToAuthenticating:(id)authenticating
{
  authenticatingCopy = authenticating;
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
    v15 = authenticatingCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ in state %@: plugin %@ status changed to authenticating", &v10, 0x20u);
  }
}

- (void)handlePluginStatusDidChangeToContacting:(id)contacting
{
  contactingCopy = contacting;
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
    v15 = contactingCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ in state %@: plugin %@ status changed to contacting", &v10, 0x20u);
  }
}

- (void)handlePlugin:(id)plugin didAttachIPCWithEndpoint:(id)endpoint
{
  pluginCopy = plugin;
  endpointCopy = endpoint;
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
    v26 = pluginCopy;
    v27 = 2048;
    v28 = endpointCopy;
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
    establishIPCPending = [0 establishIPCPending];
    v15 = 0;
    if ((establishIPCPending & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  primaryTunnelPlugin = [v15 primaryTunnelPlugin];

  if (primaryTunnelPlugin == pluginCopy)
  {
    if (endpointCopy)
    {
      if (self)
      {
        v18 = objc_getProperty(self, v17, 16, 1);
      }

      else
      {
        v18 = 0;
      }

      [v18 setEndpointInEstablishIPCReply:endpointCopy forPlugin:pluginCopy];
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

- (void)handlePlugin:(id)plugin didStartWithPID:(int)d error:(id)error
{
  pluginCopy = plugin;
  errorCopy = error;
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
    v20 = pluginCopy;
    v21 = 1024;
    dCopy = d;
    v23 = 2112;
    v24 = errorCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ in state %@: plugin %@ started with PID %d error %@", &v15, 0x30u);
  }
}

- (void)handleInterfaceAvailable:(id)available changed:(BOOL)changed
{
  changedCopy = changed;
  availableCopy = available;
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
    if (changedCopy)
    {
      v13 = "changed";
    }

    v17 = v11;
    v18 = 2112;
    v19 = availableCopy;
    v20 = 2080;
    v21 = v13;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ in state %@: interface %@ is now available, address %s", &v14, 0x2Au);
  }
}

- (void)handleInterfaceUnavailable:(id)unavailable
{
  unavailableCopy = unavailable;
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
    v15 = unavailableCopy;
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

  primaryTunnelPlugin = [v9 primaryTunnelPlugin];
  if (primaryTunnelPlugin)
  {
    primaryTunnelPlugin3 = primaryTunnelPlugin;
    if (self)
    {
      v13 = objc_getProperty(self, v11, 16, 1);
    }

    else
    {
      v13 = 0;
    }

    primaryTunnelPlugin2 = [v13 primaryTunnelPlugin];
    if (primaryTunnelPlugin2)
    {
      v15 = primaryTunnelPlugin2[16];

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

      primaryTunnelPlugin3 = [v17 primaryTunnelPlugin];
      sub_10001A5E8(primaryTunnelPlugin3);
    }
  }
}

- (void)handleStartMessage:(id)message
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

- (void)enterWithSession:(id)session
{
  sessionCopy = session;
  if (self)
  {
    objc_setProperty_atomic(self, v4, sessionCopy, 16);
    if (self->_timeout)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        timeout = self->_timeout;
        *buf = 138412802;
        v19 = sessionCopy;
        v20 = 2112;
        v21 = v8;
        v22 = 2048;
        v23 = timeout;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: Entering state %@, timeout %llu seconds", buf, 0x20u);
      }

LABEL_9:
      if (self->_timeout && (objc_opt_respondsToSelector() & 1) != 0)
      {
        queue = [sessionCopy queue];
        v14 = self->_timeout;
        v17 = sessionCopy;
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
    v19 = sessionCopy;
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

- (NESMVPNSessionState)initWithType:(int64_t)type andTimeout:(unint64_t)timeout
{
  v10.receiver = self;
  v10.super_class = NESMVPNSessionState;
  v6 = [(NESMVPNSessionState *)&v10 init];
  v7 = v6;
  if (v6)
  {
    session = v6->_session;
    v6->_type = type;
    v6->_session = 0;
    v6->_timeout = timeout;
  }

  return v7;
}

+ (NESMVPNSessionState)stateWithType:(int64_t)type
{
  if ((type - 1) > 9)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_alloc_init(*(&off_1000EA670)[type - 1]);
  }

  return v4;
}

@end