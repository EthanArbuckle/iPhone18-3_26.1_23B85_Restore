@interface NESMFilterSession
- (BOOL)disableDefaultDropAfterBoot;
- (BOOL)handleAgentClientConnection:(id)a3 WithMessage:(id)a4;
- (BOOL)handleSleep;
- (BOOL)handleUpdateConfiguration:(id)a3;
- (BOOL)hasProviderWithBundleIdentifier:(id)a3;
- (BOOL)isStopAllowed:(id)a3;
- (BOOL)pinPlugin:(id)a3 toConfigurationWithProcesses:(id)a4;
- (BOOL)waitForPerApp;
- (NESMFilterSession)initWithConfiguration:(id)a3 andServer:(id)a4;
- (id)plugin:(id)a3 didApplySettings:(id)a4;
- (id)pluginDidRequestContentFilterSocket:(id)a3;
- (id)pluginDidRequestPacketFilterChannel:(id)a3;
- (id)pluginType;
- (void)handleInstalledAppsChanged;
- (void)handleNetworkDetectionNotification:(int)a3;
- (void)handleStartMessage:(id)a3;
- (void)handleUserLogin;
- (void)handleWakeup;
- (void)install;
- (void)invalidate;
- (void)plugin:(id)a3 didSetStatus:(int64_t)a4 andError:(int64_t)a5;
- (void)plugin:(id)a3 didStartWithPID:(int)a4 error:(id)a5;
- (void)pluginDidAcknowledgeSleep:(id)a3;
- (void)pluginDidDispose:(id)a3;
- (void)pluginDidRequestAgentClientServer:(id)a3;
- (void)uninstall;
@end

@implementation NESMFilterSession

- (BOOL)isStopAllowed:(id)a3
{
  v3 = xpc_dictionary_get_remote_connection(a3);
  if (v3)
  {
    v4 = xpc_connection_copy_entitlement_value();
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)disableDefaultDropAfterBoot
{
  if ([(NESMSession *)self defaultDropType])
  {
    v3 = [(NESMSession *)self configuration];
    v4 = [v3 externalIdentifier];

    v5 = 0;
    if (self && v4)
    {
      return self->_perAppDropPoliciesInstalled;
    }
  }

  else
  {
    return 1;
  }

  return v5;
}

- (id)plugin:(id)a3 didApplySettings:(id)a4
{
  v6 = a4;
  objc_storeStrong(&self->_settings, a4);
  if (self->_isInstalled && self->_controlUnit && (sub_10007F948(self) & 1) == 0)
  {
    v7 = [[NSError alloc] initWithDomain:NEFilterErrorDomain code:1 userInfo:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)handleUserLogin
{
  v3 = [(NESMSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100080234;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)invalidate
{
  v4.receiver = self;
  v4.super_class = NESMFilterSession;
  [(NESMSession *)&v4 invalidate];
  [(NESMFilterSessionState *)self->_stateHandler leave];
  stateHandler = self->_stateHandler;
  self->_stateHandler = 0;
}

- (id)pluginType
{
  v2 = [(NESMSession *)self configuration];
  v3 = [v2 contentFilter];
  v4 = [v3 provider];
  v5 = [v4 pluginType];

  return v5;
}

- (BOOL)handleUpdateConfiguration:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [(NESMSession *)self setConfiguration:0];
    [(NESMSession *)self setConfigurationSignature:0];
    if (!self)
    {
      goto LABEL_23;
    }

    sub_1000806FC(self, 0);
LABEL_22:
    LOBYTE(self) = 0;
    goto LABEL_23;
  }

  v5 = [(NESMSession *)self configuration];
  v6 = [v5 contentFilter];
  v7 = [v6 provider];
  v8 = [v7 filterBrowsers];
  v9 = [v4 contentFilter];
  v10 = [v9 provider];
  if (v8 == [v10 filterBrowsers])
  {
    v45 = [(NESMSession *)self configuration];
    v44 = [v45 contentFilter];
    [v44 provider];
    v12 = v11 = v4;
    v13 = [v12 filterSockets];
    [v11 contentFilter];
    v14 = v46 = v5;
    v15 = [v14 provider];
    v47 = v13 ^ [v15 filterSockets];

    v5 = v46;
    v4 = v11;
  }

  else
  {
    LOBYTE(v47) = 1;
  }

  v16 = [v4 contentFilter];
  if ([v16 isEnabled])
  {
    v17 = [(NESMSession *)self configuration];
    v18 = [v17 contentFilter];
    v19 = [v18 perApp];
    v20 = [v19 appRules];
    v21 = [v4 contentFilter];
    v22 = [v21 perApp];
    v23 = [v22 appRules];
    v24 = v20 != v23;

    v25 = v24 | v47;
  }

  else
  {
    v25 = v47;
  }

  v26 = [(NESMSession *)self configuration];
  v27 = [v26 contentFilter];
  v28 = [v27 provider];
  v29 = [v28 preserveExistingConnections];
  v30 = [v4 contentFilter];
  v31 = [v30 provider];
  v32 = [v31 preserveExistingConnections];

  v48.receiver = self;
  v48.super_class = NESMFilterSession;
  if (![(NESMSession *)&v48 handleUpdateConfiguration:v4])
  {
    goto LABEL_22;
  }

  if (self)
  {
    sub_1000806FC(self, 0);
  }

  v33 = v29 ^ v32 | v25;
  v34 = [(NESMSession *)self configuration];
  v35 = [v34 contentFilter];
  v36 = [v35 isEnabled];

  if (v36)
  {
    if (self)
    {
      Property = objc_getProperty(self, v37, 376, 1);
    }

    else
    {
      Property = 0;
    }

    [Property handleUpdateConfiguration];
  }

  if (v33)
  {
    sub_100080BF4(self);
    if (self)
    {
      v39 = [(NESMSession *)self configuration];
      v40 = [v39 contentFilter];
      v41 = [v40 provider];
      v42 = sub_1000811CC(NESMFilterSession, v41);

      self->_controlUnit = self->_controlUnit & 0x1FFFFFFF | v42;
    }

    [(NESMSession *)self stopIfNecessaryWithReason:37];
  }

  LOBYTE(self) = 1;
LABEL_23:

  return self;
}

- (void)uninstall
{
  v3 = [(NESMSession *)self policySession];
  sub_100030D44(v3);

  self->_isInstalled = 0;
  settings = self->_settings;
  self->_settings = 0;
}

- (void)install
{
  if (self && self->_controlUnit)
  {
    sub_10007F948(self);
  }

  self->_isInstalled = 1;
}

- (BOOL)waitForPerApp
{
  v3 = [(NESMSession *)self configuration];
  v4 = [v3 externalIdentifier];
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [(NESMSession *)self configuration];
  v7 = [v6 contentFilter];
  if (![v7 isEnabled])
  {

LABEL_9:
    return 1;
  }

  v8 = [(NESMSession *)self configuration];
  v9 = [v8 contentFilter];
  v10 = [v9 perApp];

  if (v10)
  {
    v11 = [(NESMSession *)self configuration];
    v12 = [v11 contentFilter];
    v13 = [v12 perApp];
    v14 = [(NESMSession *)self uid];
    [v13 updateAppRulesForUID:{objc_msgSend(v14, "unsignedIntValue")}];

    v15 = [(NESMSession *)self configuration];
    v16 = [v15 contentFilter];
    v17 = [v16 perApp];
    v18 = [v17 appRules];
    v19 = [v18 count];

    if (v19)
    {
      v20 = [(NESMSession *)self policySession];
      v21 = [(NESMSession *)self configuration];
      v22 = [v21 contentFilter];
      v23 = [v22 perApp];
      v24 = [v23 appRules];
      v25 = [(NESMSession *)self uid];
      [v25 intValue];
      sub_100040988(v20, v24);
    }

    v26 = [(NESMSession *)self configuration];
    v27 = [v26 contentFilter];
    v28 = [v27 perApp];
    v29 = [v28 copyCachedMachOUUIDs];

    if (v29)
    {
      return 0;
    }
  }

  return 1;
}

- (BOOL)pinPlugin:(id)a3 toConfigurationWithProcesses:(id)a4
{
  Property = a3;
  v7 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v6, 24, 1);
  }

  v8 = Property;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = [(NESMSession *)self configuration];
      v13 = [v12 name];
      v14 = 138412802;
      v15 = self;
      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = v13;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@: Invalid attempt to pin filter plugin %@ to configuration %@", &v14, 0x20u);
    }
  }

  return isKindOfClass & 1;
}

- (BOOL)handleAgentClientConnection:(id)a3 WithMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  int64 = xpc_dictionary_get_int64(v7, "command");
  v9 = ne_log_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Received a request for a new filter connection", buf, 2u);
  }

  if (int64 != 1)
  {
    goto LABEL_10;
  }

  uint64 = xpc_dictionary_get_uint64(v7, "control-unit");
  v11 = self;
  objc_sync_enter(v11);
  v12 = v11 ? v11->_controlUnit : 0;
  objc_sync_exit(v11);

  v13 = ne_log_obj();
  v14 = uint64 & 0x1FFFFFFF;
  v15 = v12 & uint64 & 0x1FFFFFFF;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    v24 = v14;
    v25 = 1024;
    v26 = v15 != 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Received unit %u, matches %u", buf, 0xEu);
  }

  if (v15)
  {
    v16 = [(NESMSession *)v11 queue];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000818F8;
    v19[3] = &unk_1000EA778;
    v22 = 1;
    v19[4] = v11;
    v20 = v6;
    v21 = v7;
    dispatch_async(v16, v19);

    v17 = 1;
  }

  else
  {
LABEL_10:
    v17 = 0;
  }

  return v17;
}

- (void)pluginDidAcknowledgeSleep:(id)a3
{
  v4 = [(NESMSession *)self server];
  sub_100059ED4(v4, v3);
}

- (id)pluginDidRequestPacketFilterChannel:(id)a3
{
  v4 = a3;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = self;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Plugin %@ requested a packet filter channel", &v15, 0x16u);
  }

  sub_10001A2D4(v4);
  v6 = nw_interpose_client_register();
  v8 = v6;
  if (self)
  {
    objc_setProperty_atomic(self, v7, v6, 448);

    if (objc_getProperty(self, v9, 448, 1))
    {
      v21 = 0;
      v22 = 0;
LABEL_10:
      objc_getProperty(self, v10, 448, 1);
      goto LABEL_11;
    }
  }

  else
  {
  }

  v11 = ne_log_obj();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v15 = 138412546;
    v16 = self;
    v17 = 2112;
    v18 = v4;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@: Plugin %@ failed to register for necp interpose client", &v15, 0x16u);
  }

  v21 = 0;
  v22 = 0;
  if (self)
  {
    goto LABEL_10;
  }

LABEL_11:
  if (nw_interpose_get_client_uuid())
  {
    v12 = [[NSUUID alloc] initWithUUIDBytes:&v21];
    v13 = ne_log_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v15 = 138412802;
      v16 = self;
      v17 = 2112;
      v18 = v4;
      v19 = 2112;
      v20 = v12;
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%@: Plugin %@ registered for necp interpose client %@", &v15, 0x20u);
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)plugin:(id)a3 didSetStatus:(int64_t)a4 andError:(int64_t)a5
{
  v8 = a3;
  if (a4 <= 1)
  {
    if (a4)
    {
      if (a4 != 1)
      {
        goto LABEL_23;
      }

      v15 = v8;
      if (self)
      {
        Property = objc_getProperty(self, v9, 376, 1);
      }

      else
      {
        Property = 0;
      }

      [Property handlePluginStatusDidChangeToStarting:v15];
    }

    else
    {
      v15 = v8;
      if (self)
      {
        v14 = objc_getProperty(self, v9, 376, 1);
      }

      else
      {
        v14 = 0;
      }

      [v14 handlePlugin:v15 statusDidChangeToIdleWithError:a5];
    }
  }

  else
  {
    switch(a4)
    {
      case 2:
        v15 = v8;
        if (self)
        {
          v12 = objc_getProperty(self, v9, 376, 1);
        }

        else
        {
          v12 = 0;
        }

        [v12 handlePluginStatusDidChangeToRunning:v15];
        break;
      case 3:
        v15 = v8;
        if (self)
        {
          v13 = objc_getProperty(self, v9, 376, 1);
        }

        else
        {
          v13 = 0;
        }

        [v13 handlePlugin:v15 statusDidChangeToStoppingWithError:a5];
        break;
      case 4:
        v15 = v8;
        if (self)
        {
          v10 = objc_getProperty(self, v9, 376, 1);
        }

        else
        {
          v10 = 0;
        }

        [v10 handlePluginStatusDidChangeToUpdating:v15];
        break;
      default:
        goto LABEL_23;
    }
  }

  v8 = v15;
LABEL_23:
}

- (void)plugin:(id)a3 didStartWithPID:(int)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = ne_log_obj();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!a4 || v9)
  {
    if (v11)
    {
      v22 = 138412546;
      v23 = self;
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@: Failed to start with error: %@", &v22, 0x16u);
    }

    if (v9)
    {
      v16 = [v9 domain];
      if ([v16 isEqualToString:@"NEAgentErrorDomain"])
      {
        v17 = [v9 code];

        if (v17 == 2)
        {
          [(NESMSession *)self setLastStopReason:6];
          if (self)
          {
            Property = objc_getProperty(self, v18, 376, 1);
          }

          else
          {
            Property = 0;
          }

          v20 = v8;
          v21 = 0;
LABEL_21:
          [Property handlePlugin:v20 statusDidChangeToIdleWithError:v21];
          goto LABEL_22;
        }
      }

      else
      {
      }
    }

    if (self)
    {
      Property = objc_getProperty(self, v15, 376, 1);
    }

    else
    {
      Property = 0;
    }

    v20 = v8;
    v21 = 1;
    goto LABEL_21;
  }

  if (v11)
  {
    v22 = 138412802;
    v23 = self;
    v24 = 2112;
    v25 = v8;
    v26 = 1024;
    v27 = a4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@: Plugin %@ started with pid %d", &v22, 0x1Cu);
  }

  v12 = v8;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (v12 && (isKindOfClass & 1) != 0)
  {
    [v12 setStatus:1 error:0];
    v14 = [v12 remotePluginObject];
    [v14 startFilter];
  }

LABEL_22:
}

- (void)pluginDidRequestAgentClientServer:(id)a3
{
  if (self)
  {
    self->_acceptAgentClients = 1;
  }
}

- (id)pluginDidRequestContentFilterSocket:(id)a3
{
  v4 = a3;
  if (!self || !self->_controlUnit)
  {
    goto LABEL_17;
  }

  v5 = [(NESMSession *)self configuration];
  v6 = [v5 externalIdentifier];
  if (v6)
  {
    v7 = v6;
    v8 = [(NESMSession *)self configuration];
    v9 = [v8 contentFilter];
    v10 = [v9 perApp];
    v11 = [v10 appRules];
    v12 = [v11 count];

    if (!v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v27 = self->_controlUnit & 0x1FFFFFFF;
  KernelControlSocket = NEHelperGetKernelControlSocket();
  if (KernelControlSocket == -1)
  {
    v19 = ne_log_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to create the content filter control socket", buf, 2u);
    }

    goto LABEL_17;
  }

  v14 = KernelControlSocket;
  v15 = NEHelperInterfaceSetOption();
  if (v15)
  {
    v16 = v15;
    v17 = ne_log_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v29 = strerror(v16);
      v18 = "Error setting CFIL_OPT_NECP_CONTROL_UNIT on socket: %s\n";
LABEL_24:
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v18, buf, 0xCu);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v20 = [(NESMSession *)self configuration];
  v21 = [v20 contentFilter];
  v22 = [v21 provider];
  [v22 preserveExistingConnections];

  v23 = NEHelperInterfaceSetOption();
  if (v23)
  {
    v24 = v23;
    v17 = ne_log_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v29 = strerror(v24);
      v18 = "Error setting CFIL_OPT_PRESERVE_CONNECTIONS on socket: %s\n";
      goto LABEL_24;
    }

LABEL_16:

    close(v14);
LABEL_17:
    v25 = 0;
    goto LABEL_18;
  }

  if ((v14 & 0x80000000) != 0)
  {
    goto LABEL_17;
  }

  v25 = [[NSFileHandle alloc] initWithFileDescriptor:v14 closeOnDealloc:1];
LABEL_18:

  return v25;
}

- (void)pluginDidDispose:(id)a3
{
  v6 = a3;
  if (self)
  {
    Property = objc_getProperty(self, v4, 376, 1);
  }

  else
  {
    Property = 0;
  }

  [Property handlePluginDisposeComplete:v6];
}

- (void)handleInstalledAppsChanged
{
  v3 = [(NESMSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100082754;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)handleNetworkDetectionNotification:(int)a3
{
  if ((a3 & 0xFFFFFFFB) == 1)
  {
    block[7] = v3;
    block[8] = v4;
    v6 = [(NESMSession *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000828B4;
    block[3] = &unk_1000EB1C0;
    block[4] = self;
    dispatch_async(v6, block);
  }
}

- (void)handleWakeup
{
  if (self)
  {
    self = objc_getProperty(self, a2, 376, 1);
    v2 = vars8;
  }

  [(NESMFilterSession *)self handleWakeup];
}

- (BOOL)handleSleep
{
  if (self)
  {
    self = objc_getProperty(self, a2, 376, 1);
    v2 = vars8;
  }

  return [(NESMFilterSession *)self handleSleep];
}

- (void)handleStartMessage:(id)a3
{
  v4 = a3;
  v5 = [(NESMSession *)self configuration];
  v6 = [v5 externalIdentifier];
  if (!v6)
  {

LABEL_9:
    if (self)
    {
      self->_externallyStopped = 0;
      objc_setProperty_atomic(self, v9, v4, 416);
      sub_100082A20(self, 0);
    }

    v44.receiver = self;
    v44.super_class = NESMFilterSession;
    [(NESMSession *)&v44 handleStartMessage:v4];
    v13 = ne_log_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      controlUnit = self->_controlUnit;
      *buf = 138412546;
      v46 = self;
      v47 = 1024;
      v48 = controlUnit;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@: Starting with control unit %u", buf, 0x12u);
    }

    else
    {

      if (!self)
      {
LABEL_15:
        v16 = xpc_dictionary_get_value(v4, "SessionOptions");
        v18 = v16;
        if (v16 && xpc_get_type(v16) == &_xpc_type_dictionary && xpc_dictionary_get_BOOL(v18, "test-agent"))
        {
          v19 = xpc_dictionary_get_remote_connection(v4);
          if (!v19)
          {
LABEL_22:
            v22 = ne_log_obj();
            if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
LABEL_23:

              if (self)
              {
                Property = objc_getProperty(self, v23, 376, 1);
              }

              else
              {
                Property = 0;
              }

              [Property handleStartMessage:v4];

              goto LABEL_29;
            }

            *buf = 136315138;
            v46 = "com.apple.private.networkextension.test-control";
            v41 = "Test provider does not have the %s entitlement";
            v42 = v22;
            v43 = 12;
LABEL_39:
            _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, v41, buf, v43);
            goto LABEL_23;
          }

          v20 = xpc_connection_copy_entitlement_value();
          v21 = v20;
          if (!v20 || xpc_get_type(v20) != &_xpc_type_BOOL)
          {

            goto LABEL_22;
          }

          value = xpc_BOOL_get_value(v21);

          if (!value)
          {
            goto LABEL_22;
          }

          v27 = [[NEProcessIdentity alloc] initFromXPCConnection:v19];
          v29 = v27;
          if (self)
          {
            objc_setProperty_atomic(self, v28, v27, 368);

            if (objc_getProperty(self, v30, 368, 1))
            {
              v31 = xpc_dictionary_get_value(v18, "listener-endpoint");
              v32 = v31;
              if (v31 && xpc_get_type(v31) == &_xpc_type_endpoint)
              {
                v33 = [NETestAgent alloc];
                v34 = [(NESMSession *)self configuration];
                v35 = [v34 pluginType];
                v36 = sub_100075628(&v33->super.super.isa, v35, 4, v4);

                if (v36)
                {
                  v37 = [NEFilterPlugin alloc];
                  v38 = [(NESMSession *)self queue];
                  v39 = [(NEPlugin *)v37 initWithAgent:v36 delegateQueue:v38 andDelegate:self];
                  objc_setProperty_atomic(self, v40, v39, 400);
                }

                else
                {
                  v38 = ne_log_obj();
                  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Failed to create a test agent", buf, 2u);
                  }
                }
              }

              goto LABEL_27;
            }
          }

          else
          {
          }

          v22 = ne_log_obj();
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }

          *buf = 0;
          v41 = "Failed to create a process identity from the session connection";
          v42 = v22;
          v43 = 2;
          goto LABEL_39;
        }

        if (!self)
        {
          v25 = 0;
          goto LABEL_28;
        }

LABEL_27:
        v25 = objc_getProperty(self, v17, 376, 1);
LABEL_28:
        [v25 handleStartMessage:v4];
LABEL_29:

        goto LABEL_30;
      }
    }

    objc_setProperty_atomic(self, v15, 0, 368);
    goto LABEL_15;
  }

  v7 = v6;
  v8 = [(NESMFilterSession *)self waitForPerApp];

  if (!v8)
  {
    goto LABEL_9;
  }

  v10 = ne_log_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v46 = self;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@: Ignore Start for perApp Content Filter - no appRule or app not installed", buf, 0xCu);
  }

  if (self)
  {
    v12 = objc_getProperty(self, v11, 376, 1);
  }

  else
  {
    v12 = 0;
  }

  [v12 handleStop];
LABEL_30:
}

- (BOOL)hasProviderWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NESMSession *)self configuration];
  v6 = [v5 contentFilter];
  v7 = [v6 provider];
  v8 = [v7 filterDataProviderBundleIdentifier];

  v9 = [(NESMSession *)self configuration];
  v10 = [v9 contentFilter];
  v11 = [v10 provider];
  v12 = [v11 filterPacketProviderBundleIdentifier];

  if (v8 && ([v4 isEqualToString:v8] & 1) != 0)
  {
    v13 = 1;
  }

  else if (v12)
  {
    v13 = [v4 isEqualToString:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (NESMFilterSession)initWithConfiguration:(id)a3 andServer:(id)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = NESMFilterSession;
  v7 = [(NESMSession *)&v13 initWithConfiguration:v6 andServer:a4];
  v8 = v7;
  if (v7)
  {
    v7->_state = 0;
    v7->_externallyStopped = 0;
    v7->_restartIntervalMsecs = 500;
    v7->_restartIntervalAttempts = 0;
    v9 = [NESMPolicySession alloc];
    v10 = [v6 identifier];
    v11 = [v6 grade];
    if (v9)
    {
      v9 = sub_100033D18(&v9->super.isa, v10, 4, v11, 1, 1);
    }

    [(NESMSession *)v8 setPolicySession:v9];

    sub_10008E79C(v8);
  }

  return v8;
}

@end