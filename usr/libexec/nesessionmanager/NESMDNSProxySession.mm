@interface NESMDNSProxySession
- (BOOL)handleUpdateConfiguration:(id)configuration;
- (BOOL)waitForPerApp;
- (NESMDNSProxySession)initWithConfiguration:(id)configuration andServer:(id)server andProtocol:(id)protocol andPluginType:(id)type;
- (id)providerBundleIdentifier;
- (id)providerDesignatedRequirement;
- (void)createConnectParametersWithStartMessage:(id)message;
- (void)handleCaptiveNetworkPluginsChanged;
- (void)handleInstalledAppsChanged;
- (void)handleNetworkConfigurationChange:(int64_t)change;
- (void)handleNetworkDetectionNotification:(int)notification;
- (void)handleStartMessage:(id)message;
- (void)handleUserLogin;
- (void)install;
- (void)prepareNetwork;
- (void)resetProviderDesignatedRequirementInConfiguration:(id)configuration;
- (void)setProviderDesignatedRequirement:(id)requirement;
- (void)uninstall;
@end

@implementation NESMDNSProxySession

- (void)handleUserLogin
{
  sub_10002EB30(self, a2);

  [(NESMSession *)self startWithCommand:0 isOnDemand:0];
}

- (void)uninstall
{
  v4.receiver = self;
  v4.super_class = NESMDNSProxySession;
  [(NESMFlowDivertSession *)&v4 uninstall];
  if (self)
  {
    if (self->_externallyStopped)
    {
      policySession = [(NESMSession *)self policySession];
      sub_100030D44(policySession);
    }

    self->_installed = 0;
  }
}

- (void)install
{
  v3 = sub_10002EB30(self, a2);
  if ((v3 & 1) == 0)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      selfCopy = self;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%@: failed to set the DNSProxy policies", &v6, 0xCu);
    }
  }

  stateHandler = [(NESMVPNSession *)self stateHandler];
  [stateHandler handleSetConfigurationResult:v3];

  if (self)
  {
    self->_installed = 1;
  }
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
  dnsProxy = [configuration2 dnsProxy];
  if (![dnsProxy isEnabled])
  {

LABEL_9:
    return 1;
  }

  configuration3 = [(NESMSession *)self configuration];
  dnsProxy2 = [configuration3 dnsProxy];
  perApp = [dnsProxy2 perApp];

  if (perApp)
  {
    configuration4 = [(NESMSession *)self configuration];
    dnsProxy3 = [configuration4 dnsProxy];
    perApp2 = [dnsProxy3 perApp];
    v14 = [(NESMSession *)self uid];
    [perApp2 updateAppRulesForUID:{objc_msgSend(v14, "unsignedIntValue")}];

    configuration5 = [(NESMSession *)self configuration];
    dnsProxy4 = [configuration5 dnsProxy];
    perApp3 = [dnsProxy4 perApp];
    appRules = [perApp3 appRules];
    v19 = [appRules count];

    if (v19)
    {
      policySession = [(NESMSession *)self policySession];
      configuration6 = [(NESMSession *)self configuration];
      dnsProxy5 = [configuration6 dnsProxy];
      perApp4 = [dnsProxy5 perApp];
      appRules2 = [perApp4 appRules];
      v25 = [(NESMSession *)self uid];
      [v25 intValue];
      sub_100040988(policySession, appRules2);
    }

    configuration7 = [(NESMSession *)self configuration];
    dnsProxy6 = [configuration7 dnsProxy];
    perApp5 = [dnsProxy6 perApp];
    copyCachedMachOUUIDs = [perApp5 copyCachedMachOUUIDs];

    if (copyCachedMachOUUIDs)
    {
      return 0;
    }
  }

  return 1;
}

- (void)prepareNetwork
{
  stateHandler = [(NESMVPNSession *)self stateHandler];
  [stateHandler handleNetworkPrepareResult:&stru_1000EBA68];
}

- (void)handleStartMessage:(id)message
{
  messageCopy = message;
  if (self)
  {
    objc_setProperty_atomic(self, v4, 0, 728);
  }

  v6 = xpc_dictionary_get_value(messageCopy, "SessionOptions");
  v7 = v6;
  if (!v6 || xpc_get_type(v6) != &_xpc_type_dictionary || !xpc_dictionary_get_BOOL(v7, "test-agent"))
  {
    goto LABEL_26;
  }

  v8 = xpc_dictionary_get_remote_connection(messageCopy);
  if (!v8)
  {
LABEL_10:
    v11 = ne_log_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_11:

      stateHandler = [(NESMVPNSession *)self stateHandler];
      [stateHandler handleStartMessage:messageCopy];

      goto LABEL_28;
    }

    *buf = 136315138;
    v33 = "com.apple.private.networkextension.test-control";
    v27 = "Test provider does not have the %s entitlement";
    v28 = v11;
    v29 = 12;
LABEL_20:
    _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, v27, buf, v29);
    goto LABEL_11;
  }

  v9 = xpc_connection_copy_entitlement_value();
  v10 = v9;
  if (!v9 || xpc_get_type(v9) != &_xpc_type_BOOL)
  {

    goto LABEL_10;
  }

  value = xpc_BOOL_get_value(v10);

  if (!value)
  {
    goto LABEL_10;
  }

  v14 = [[NEProcessIdentity alloc] initFromXPCConnection:v8];
  v16 = v14;
  if (!self)
  {

    goto LABEL_30;
  }

  objc_setProperty_atomic(self, v15, v14, 728);

  if (!objc_getProperty(self, v17, 728, 1))
  {
LABEL_30:
    v11 = ne_log_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v27 = "Failed to create a process identity from the session connection";
    v28 = v11;
    v29 = 2;
    goto LABEL_20;
  }

  v18 = xpc_dictionary_get_value(v7, "listener-endpoint");
  v19 = v18;
  if (v18 && xpc_get_type(v18) == &_xpc_type_endpoint)
  {
    v20 = [NETestAgent alloc];
    configuration = [(NESMSession *)self configuration];
    pluginType = [configuration pluginType];
    v23 = sub_100075628(&v20->super.super.isa, pluginType, 3, messageCopy);

    if (v23)
    {
      v24 = [NEDNSProxyPlugin alloc];
      queue = [(NESMSession *)self queue];
      v26 = [(NEVPNTunnelPlugin *)v24 initWithAgent:v23 delegateQueue:queue andDelegate:self];
      [(NESMVPNSession *)self setPrimaryTunnelPlugin:v26];
    }

    else
    {
      v30 = ne_log_obj();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Failed to create a test agent", buf, 2u);
      }
    }
  }

LABEL_26:
  v31.receiver = self;
  v31.super_class = NESMDNSProxySession;
  [(NESMVPNSession *)&v31 handleStartMessage:messageCopy];
  sub_10002F624(self, 0);
  if (self)
  {
    self->_externallyStopped = 0;
  }

LABEL_28:
}

- (void)handleNetworkDetectionNotification:(int)notification
{
  if (notification <= 5 && ((1 << notification) & 0x26) != 0)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = inputNotification2String();
      configuration = [(NESMSession *)self configuration];
      name = [configuration name];
      *buf = 138412802;
      selfCopy = self;
      v13 = 2080;
      v14 = v6;
      v15 = 2112;
      v16 = name;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: received a %s notification <%@>", buf, 0x20u);
    }

    if ((notification - 1) <= 1)
    {
      queue = [(NESMSession *)self queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100030058;
      block[3] = &unk_1000EB1C0;
      block[4] = self;
      dispatch_async(queue, block);
    }

    [(NESMSession *)self restartSession];
  }
}

- (void)handleCaptiveNetworkPluginsChanged
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    configuration = [(NESMSession *)self configuration];
    name = [configuration name];
    v6 = 138412546;
    selfCopy = self;
    v8 = 2112;
    v9 = name;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@: Handling installed captive plugins change (%@>", &v6, 0x16u);
  }

  [(NESMDNSProxySession *)self handleNetworkDetectionNotification:2];
}

- (void)handleInstalledAppsChanged
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    configuration = [(NESMSession *)self configuration];
    name = [configuration name];
    v6 = 138412546;
    selfCopy = self;
    v8 = 2112;
    v9 = name;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@: Handling installed apps change <%@>", &v6, 0x16u);
  }

  [(NESMDNSProxySession *)self handleNetworkDetectionNotification:2];
}

- (BOOL)handleUpdateConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = configurationCopy;
  if (configurationCopy)
  {
    dnsProxy = [configurationCopy dnsProxy];
    if ([dnsProxy isEnabled])
    {
      configuration = [(NESMSession *)self configuration];
      dnsProxy2 = [configuration dnsProxy];
      perApp = [dnsProxy2 perApp];
      appRules = [perApp appRules];
      dnsProxy3 = [v5 dnsProxy];
      perApp2 = [dnsProxy3 perApp];
      appRules2 = [perApp2 appRules];
      v14 = appRules == appRules2;
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 1;
  }

  v20.receiver = self;
  v20.super_class = NESMDNSProxySession;
  v15 = [(NESMFlowDivertSession *)&v20 handleUpdateConfiguration:v5];
  if (v15 && !v14)
  {
    v16 = ne_log_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      configuration2 = [(NESMSession *)self configuration];
      name = [configuration2 name];
      *buf = 138412546;
      selfCopy = self;
      v23 = 2112;
      v24 = name;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@: Handling Update Configuration - updating policies <%@>", buf, 0x16u);
    }

    [(NESMDNSProxySession *)self handleNetworkDetectionNotification:1];
  }

  return v15;
}

- (void)handleNetworkConfigurationChange:(int64_t)change
{
  changeCopy = change;
  v7.receiver = self;
  v7.super_class = NESMDNSProxySession;
  [(NESMVPNSession *)&v7 handleNetworkConfigurationChange:?];
  if ((changeCopy & 2) != 0)
  {
    queue = [(NESMSession *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100030674;
    block[3] = &unk_1000EB1C0;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)createConnectParametersWithStartMessage:(id)message
{
  v10.receiver = self;
  v10.super_class = NESMDNSProxySession;
  [(NESMVPNSession *)&v10 createConnectParametersWithStartMessage:message];
  configuration = [(NESMSession *)self configuration];
  dnsProxy = [configuration dnsProxy];
  protocol = [dnsProxy protocol];

  providerConfiguration = [protocol providerConfiguration];

  if (providerConfiguration)
  {
    providerConfiguration2 = [protocol providerConfiguration];
    connectParameters = [(NESMVPNSession *)self connectParameters];
    [connectParameters setObject:providerConfiguration2 forKeyedSubscript:@"VendorData"];
  }
}

- (void)resetProviderDesignatedRequirementInConfiguration:(id)configuration
{
  dnsProxy = [configuration dnsProxy];
  protocol = [dnsProxy protocol];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    providerDesignatedRequirement = [(NESMDNSProxySession *)self providerDesignatedRequirement];
    [protocol setDesignatedRequirement:providerDesignatedRequirement];
  }
}

- (void)setProviderDesignatedRequirement:(id)requirement
{
  requirementCopy = requirement;
  protocol = [(NESMVPNSession *)self protocol];
  [protocol setDesignatedRequirement:requirementCopy];
}

- (id)providerDesignatedRequirement
{
  protocol = [(NESMVPNSession *)self protocol];
  designatedRequirement = [protocol designatedRequirement];

  return designatedRequirement;
}

- (id)providerBundleIdentifier
{
  protocol = [(NESMVPNSession *)self protocol];
  providerBundleIdentifier = [protocol providerBundleIdentifier];

  return providerBundleIdentifier;
}

- (NESMDNSProxySession)initWithConfiguration:(id)configuration andServer:(id)server andProtocol:(id)protocol andPluginType:(id)type
{
  v7.receiver = self;
  v7.super_class = NESMDNSProxySession;
  result = [(NESMVPNSession *)&v7 initWithConfiguration:configuration andServer:server andProtocol:protocol andPluginType:type andSessionType:6];
  if (result)
  {
    result->_restartIntervalSecs = 1;
  }

  return result;
}

@end