@interface NESMFilterSession
- (BOOL)disableDefaultDropAfterBoot;
- (BOOL)handleAgentClientConnection:(id)connection WithMessage:(id)message;
- (BOOL)handleSleep;
- (BOOL)handleUpdateConfiguration:(id)configuration;
- (BOOL)hasProviderWithBundleIdentifier:(id)identifier;
- (BOOL)isStopAllowed:(id)allowed;
- (BOOL)pinPlugin:(id)plugin toConfigurationWithProcesses:(id)processes;
- (BOOL)waitForPerApp;
- (NESMFilterSession)initWithConfiguration:(id)configuration andServer:(id)server;
- (id)plugin:(id)plugin didApplySettings:(id)settings;
- (id)pluginDidRequestContentFilterSocket:(id)socket;
- (id)pluginDidRequestPacketFilterChannel:(id)channel;
- (id)pluginType;
- (void)handleInstalledAppsChanged;
- (void)handleNetworkDetectionNotification:(int)notification;
- (void)handleStartMessage:(id)message;
- (void)handleUserLogin;
- (void)handleWakeup;
- (void)install;
- (void)invalidate;
- (void)plugin:(id)plugin didSetStatus:(int64_t)status andError:(int64_t)error;
- (void)plugin:(id)plugin didStartWithPID:(int)d error:(id)error;
- (void)pluginDidAcknowledgeSleep:(id)sleep;
- (void)pluginDidDispose:(id)dispose;
- (void)pluginDidRequestAgentClientServer:(id)server;
- (void)uninstall;
@end

@implementation NESMFilterSession

- (BOOL)isStopAllowed:(id)allowed
{
  v3 = xpc_dictionary_get_remote_connection(allowed);
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
    configuration = [(NESMSession *)self configuration];
    externalIdentifier = [configuration externalIdentifier];

    v5 = 0;
    if (self && externalIdentifier)
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

- (id)plugin:(id)plugin didApplySettings:(id)settings
{
  settingsCopy = settings;
  objc_storeStrong(&self->_settings, settings);
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
  queue = [(NESMSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100080234;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(queue, block);
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
  configuration = [(NESMSession *)self configuration];
  contentFilter = [configuration contentFilter];
  provider = [contentFilter provider];
  pluginType = [provider pluginType];

  return pluginType;
}

- (BOOL)handleUpdateConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
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

  configuration = [(NESMSession *)self configuration];
  contentFilter = [configuration contentFilter];
  provider = [contentFilter provider];
  filterBrowsers = [provider filterBrowsers];
  contentFilter2 = [configurationCopy contentFilter];
  provider2 = [contentFilter2 provider];
  if (filterBrowsers == [provider2 filterBrowsers])
  {
    configuration2 = [(NESMSession *)self configuration];
    contentFilter3 = [configuration2 contentFilter];
    [contentFilter3 provider];
    v12 = v11 = configurationCopy;
    filterSockets = [v12 filterSockets];
    [v11 contentFilter];
    v14 = v46 = configuration;
    provider3 = [v14 provider];
    v47 = filterSockets ^ [provider3 filterSockets];

    configuration = v46;
    configurationCopy = v11;
  }

  else
  {
    LOBYTE(v47) = 1;
  }

  contentFilter4 = [configurationCopy contentFilter];
  if ([contentFilter4 isEnabled])
  {
    configuration3 = [(NESMSession *)self configuration];
    contentFilter5 = [configuration3 contentFilter];
    perApp = [contentFilter5 perApp];
    appRules = [perApp appRules];
    contentFilter6 = [configurationCopy contentFilter];
    perApp2 = [contentFilter6 perApp];
    appRules2 = [perApp2 appRules];
    v24 = appRules != appRules2;

    v25 = v24 | v47;
  }

  else
  {
    v25 = v47;
  }

  configuration4 = [(NESMSession *)self configuration];
  contentFilter7 = [configuration4 contentFilter];
  provider4 = [contentFilter7 provider];
  preserveExistingConnections = [provider4 preserveExistingConnections];
  contentFilter8 = [configurationCopy contentFilter];
  provider5 = [contentFilter8 provider];
  preserveExistingConnections2 = [provider5 preserveExistingConnections];

  v48.receiver = self;
  v48.super_class = NESMFilterSession;
  if (![(NESMSession *)&v48 handleUpdateConfiguration:configurationCopy])
  {
    goto LABEL_22;
  }

  if (self)
  {
    sub_1000806FC(self, 0);
  }

  v33 = preserveExistingConnections ^ preserveExistingConnections2 | v25;
  configuration5 = [(NESMSession *)self configuration];
  contentFilter9 = [configuration5 contentFilter];
  isEnabled = [contentFilter9 isEnabled];

  if (isEnabled)
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
      configuration6 = [(NESMSession *)self configuration];
      contentFilter10 = [configuration6 contentFilter];
      provider6 = [contentFilter10 provider];
      v42 = sub_1000811CC(NESMFilterSession, provider6);

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
  policySession = [(NESMSession *)self policySession];
  sub_100030D44(policySession);

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
  configuration = [(NESMSession *)self configuration];
  externalIdentifier = [configuration externalIdentifier];
  if (!externalIdentifier)
  {
    goto LABEL_9;
  }

  v5 = externalIdentifier;
  configuration2 = [(NESMSession *)self configuration];
  contentFilter = [configuration2 contentFilter];
  if (![contentFilter isEnabled])
  {

LABEL_9:
    return 1;
  }

  configuration3 = [(NESMSession *)self configuration];
  contentFilter2 = [configuration3 contentFilter];
  perApp = [contentFilter2 perApp];

  if (perApp)
  {
    configuration4 = [(NESMSession *)self configuration];
    contentFilter3 = [configuration4 contentFilter];
    perApp2 = [contentFilter3 perApp];
    v14 = [(NESMSession *)self uid];
    [perApp2 updateAppRulesForUID:{objc_msgSend(v14, "unsignedIntValue")}];

    configuration5 = [(NESMSession *)self configuration];
    contentFilter4 = [configuration5 contentFilter];
    perApp3 = [contentFilter4 perApp];
    appRules = [perApp3 appRules];
    v19 = [appRules count];

    if (v19)
    {
      policySession = [(NESMSession *)self policySession];
      configuration6 = [(NESMSession *)self configuration];
      contentFilter5 = [configuration6 contentFilter];
      perApp4 = [contentFilter5 perApp];
      appRules2 = [perApp4 appRules];
      v25 = [(NESMSession *)self uid];
      [v25 intValue];
      sub_100040988(policySession, appRules2);
    }

    configuration7 = [(NESMSession *)self configuration];
    contentFilter6 = [configuration7 contentFilter];
    perApp5 = [contentFilter6 perApp];
    copyCachedMachOUUIDs = [perApp5 copyCachedMachOUUIDs];

    if (copyCachedMachOUUIDs)
    {
      return 0;
    }
  }

  return 1;
}

- (BOOL)pinPlugin:(id)plugin toConfigurationWithProcesses:(id)processes
{
  Property = plugin;
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
      configuration = [(NESMSession *)self configuration];
      name = [configuration name];
      v14 = 138412802;
      selfCopy = self;
      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = name;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@: Invalid attempt to pin filter plugin %@ to configuration %@", &v14, 0x20u);
    }
  }

  return isKindOfClass & 1;
}

- (BOOL)handleAgentClientConnection:(id)connection WithMessage:(id)message
{
  connectionCopy = connection;
  messageCopy = message;
  int64 = xpc_dictionary_get_int64(messageCopy, "command");
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

  uint64 = xpc_dictionary_get_uint64(messageCopy, "control-unit");
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = selfCopy ? selfCopy->_controlUnit : 0;
  objc_sync_exit(selfCopy);

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
    queue = [(NESMSession *)selfCopy queue];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000818F8;
    v19[3] = &unk_1000EA778;
    v22 = 1;
    v19[4] = selfCopy;
    v20 = connectionCopy;
    v21 = messageCopy;
    dispatch_async(queue, v19);

    v17 = 1;
  }

  else
  {
LABEL_10:
    v17 = 0;
  }

  return v17;
}

- (void)pluginDidAcknowledgeSleep:(id)sleep
{
  server = [(NESMSession *)self server];
  sub_100059ED4(server, v3);
}

- (id)pluginDidRequestPacketFilterChannel:(id)channel
{
  channelCopy = channel;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    selfCopy3 = self;
    v17 = 2112;
    v18 = channelCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Plugin %@ requested a packet filter channel", &v15, 0x16u);
  }

  sub_10001A2D4(channelCopy);
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
    selfCopy3 = self;
    v17 = 2112;
    v18 = channelCopy;
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
      selfCopy3 = self;
      v17 = 2112;
      v18 = channelCopy;
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

- (void)plugin:(id)plugin didSetStatus:(int64_t)status andError:(int64_t)error
{
  pluginCopy = plugin;
  if (status <= 1)
  {
    if (status)
    {
      if (status != 1)
      {
        goto LABEL_23;
      }

      v15 = pluginCopy;
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
      v15 = pluginCopy;
      if (self)
      {
        v14 = objc_getProperty(self, v9, 376, 1);
      }

      else
      {
        v14 = 0;
      }

      [v14 handlePlugin:v15 statusDidChangeToIdleWithError:error];
    }
  }

  else
  {
    switch(status)
    {
      case 2:
        v15 = pluginCopy;
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
        v15 = pluginCopy;
        if (self)
        {
          v13 = objc_getProperty(self, v9, 376, 1);
        }

        else
        {
          v13 = 0;
        }

        [v13 handlePlugin:v15 statusDidChangeToStoppingWithError:error];
        break;
      case 4:
        v15 = pluginCopy;
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

  pluginCopy = v15;
LABEL_23:
}

- (void)plugin:(id)plugin didStartWithPID:(int)d error:(id)error
{
  pluginCopy = plugin;
  errorCopy = error;
  v10 = ne_log_obj();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!d || errorCopy)
  {
    if (v11)
    {
      v22 = 138412546;
      selfCopy2 = self;
      v24 = 2112;
      v25 = errorCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@: Failed to start with error: %@", &v22, 0x16u);
    }

    if (errorCopy)
    {
      domain = [errorCopy domain];
      if ([domain isEqualToString:@"NEAgentErrorDomain"])
      {
        code = [errorCopy code];

        if (code == 2)
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

          v20 = pluginCopy;
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

    v20 = pluginCopy;
    v21 = 1;
    goto LABEL_21;
  }

  if (v11)
  {
    v22 = 138412802;
    selfCopy2 = self;
    v24 = 2112;
    v25 = pluginCopy;
    v26 = 1024;
    dCopy = d;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@: Plugin %@ started with pid %d", &v22, 0x1Cu);
  }

  v12 = pluginCopy;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (v12 && (isKindOfClass & 1) != 0)
  {
    [v12 setStatus:1 error:0];
    remotePluginObject = [v12 remotePluginObject];
    [remotePluginObject startFilter];
  }

LABEL_22:
}

- (void)pluginDidRequestAgentClientServer:(id)server
{
  if (self)
  {
    self->_acceptAgentClients = 1;
  }
}

- (id)pluginDidRequestContentFilterSocket:(id)socket
{
  socketCopy = socket;
  if (!self || !self->_controlUnit)
  {
    goto LABEL_17;
  }

  configuration = [(NESMSession *)self configuration];
  externalIdentifier = [configuration externalIdentifier];
  if (externalIdentifier)
  {
    v7 = externalIdentifier;
    configuration2 = [(NESMSession *)self configuration];
    contentFilter = [configuration2 contentFilter];
    perApp = [contentFilter perApp];
    appRules = [perApp appRules];
    v12 = [appRules count];

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

  configuration3 = [(NESMSession *)self configuration];
  contentFilter2 = [configuration3 contentFilter];
  provider = [contentFilter2 provider];
  [provider preserveExistingConnections];

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

- (void)pluginDidDispose:(id)dispose
{
  disposeCopy = dispose;
  if (self)
  {
    Property = objc_getProperty(self, v4, 376, 1);
  }

  else
  {
    Property = 0;
  }

  [Property handlePluginDisposeComplete:disposeCopy];
}

- (void)handleInstalledAppsChanged
{
  queue = [(NESMSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100082754;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)handleNetworkDetectionNotification:(int)notification
{
  if ((notification & 0xFFFFFFFB) == 1)
  {
    block[7] = v3;
    block[8] = v4;
    queue = [(NESMSession *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000828B4;
    block[3] = &unk_1000EB1C0;
    block[4] = self;
    dispatch_async(queue, block);
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

- (void)handleStartMessage:(id)message
{
  messageCopy = message;
  configuration = [(NESMSession *)self configuration];
  externalIdentifier = [configuration externalIdentifier];
  if (!externalIdentifier)
  {

LABEL_9:
    if (self)
    {
      self->_externallyStopped = 0;
      objc_setProperty_atomic(self, v9, messageCopy, 416);
      sub_100082A20(self, 0);
    }

    v44.receiver = self;
    v44.super_class = NESMFilterSession;
    [(NESMSession *)&v44 handleStartMessage:messageCopy];
    v13 = ne_log_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      controlUnit = self->_controlUnit;
      *buf = 138412546;
      selfCopy2 = self;
      v47 = 1024;
      v48 = controlUnit;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@: Starting with control unit %u", buf, 0x12u);
    }

    else
    {

      if (!self)
      {
LABEL_15:
        v16 = xpc_dictionary_get_value(messageCopy, "SessionOptions");
        v18 = v16;
        if (v16 && xpc_get_type(v16) == &_xpc_type_dictionary && xpc_dictionary_get_BOOL(v18, "test-agent"))
        {
          v19 = xpc_dictionary_get_remote_connection(messageCopy);
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

              [Property handleStartMessage:messageCopy];

              goto LABEL_29;
            }

            *buf = 136315138;
            selfCopy2 = "com.apple.private.networkextension.test-control";
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
                configuration2 = [(NESMSession *)self configuration];
                pluginType = [configuration2 pluginType];
                v36 = sub_100075628(&v33->super.super.isa, pluginType, 4, messageCopy);

                if (v36)
                {
                  v37 = [NEFilterPlugin alloc];
                  queue = [(NESMSession *)self queue];
                  v39 = [(NEPlugin *)v37 initWithAgent:v36 delegateQueue:queue andDelegate:self];
                  objc_setProperty_atomic(self, v40, v39, 400);
                }

                else
                {
                  queue = ne_log_obj();
                  if (os_log_type_enabled(queue, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_error_impl(&_mh_execute_header, queue, OS_LOG_TYPE_ERROR, "Failed to create a test agent", buf, 2u);
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
        [v25 handleStartMessage:messageCopy];
LABEL_29:

        goto LABEL_30;
      }
    }

    objc_setProperty_atomic(self, v15, 0, 368);
    goto LABEL_15;
  }

  v7 = externalIdentifier;
  waitForPerApp = [(NESMFilterSession *)self waitForPerApp];

  if (!waitForPerApp)
  {
    goto LABEL_9;
  }

  v10 = ne_log_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy2 = self;
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

- (BOOL)hasProviderWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  configuration = [(NESMSession *)self configuration];
  contentFilter = [configuration contentFilter];
  provider = [contentFilter provider];
  filterDataProviderBundleIdentifier = [provider filterDataProviderBundleIdentifier];

  configuration2 = [(NESMSession *)self configuration];
  contentFilter2 = [configuration2 contentFilter];
  provider2 = [contentFilter2 provider];
  filterPacketProviderBundleIdentifier = [provider2 filterPacketProviderBundleIdentifier];

  if (filterDataProviderBundleIdentifier && ([identifierCopy isEqualToString:filterDataProviderBundleIdentifier] & 1) != 0)
  {
    v13 = 1;
  }

  else if (filterPacketProviderBundleIdentifier)
  {
    v13 = [identifierCopy isEqualToString:filterPacketProviderBundleIdentifier];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (NESMFilterSession)initWithConfiguration:(id)configuration andServer:(id)server
{
  configurationCopy = configuration;
  v13.receiver = self;
  v13.super_class = NESMFilterSession;
  v7 = [(NESMSession *)&v13 initWithConfiguration:configurationCopy andServer:server];
  v8 = v7;
  if (v7)
  {
    v7->_state = 0;
    v7->_externallyStopped = 0;
    v7->_restartIntervalMsecs = 500;
    v7->_restartIntervalAttempts = 0;
    v9 = [NESMPolicySession alloc];
    identifier = [configurationCopy identifier];
    grade = [configurationCopy grade];
    if (v9)
    {
      v9 = sub_100033D18(&v9->super.isa, identifier, 4, grade, 1, 1);
    }

    [(NESMSession *)v8 setPolicySession:v9];

    sub_10008E79C(v8);
  }

  return v8;
}

@end