@interface NESMDNSProxySession
- (BOOL)handleUpdateConfiguration:(id)a3;
- (BOOL)waitForPerApp;
- (NESMDNSProxySession)initWithConfiguration:(id)a3 andServer:(id)a4 andProtocol:(id)a5 andPluginType:(id)a6;
- (id)providerBundleIdentifier;
- (id)providerDesignatedRequirement;
- (void)createConnectParametersWithStartMessage:(id)a3;
- (void)handleCaptiveNetworkPluginsChanged;
- (void)handleInstalledAppsChanged;
- (void)handleNetworkConfigurationChange:(int64_t)a3;
- (void)handleNetworkDetectionNotification:(int)a3;
- (void)handleStartMessage:(id)a3;
- (void)handleUserLogin;
- (void)install;
- (void)prepareNetwork;
- (void)resetProviderDesignatedRequirementInConfiguration:(id)a3;
- (void)setProviderDesignatedRequirement:(id)a3;
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
      v3 = [(NESMSession *)self policySession];
      sub_100030D44(v3);
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
      v7 = self;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%@: failed to set the DNSProxy policies", &v6, 0xCu);
    }
  }

  v5 = [(NESMVPNSession *)self stateHandler];
  [v5 handleSetConfigurationResult:v3];

  if (self)
  {
    self->_installed = 1;
  }
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
  v7 = [v6 dnsProxy];
  if (![v7 isEnabled])
  {

LABEL_9:
    return 1;
  }

  v8 = [(NESMSession *)self configuration];
  v9 = [v8 dnsProxy];
  v10 = [v9 perApp];

  if (v10)
  {
    v11 = [(NESMSession *)self configuration];
    v12 = [v11 dnsProxy];
    v13 = [v12 perApp];
    v14 = [(NESMSession *)self uid];
    [v13 updateAppRulesForUID:{objc_msgSend(v14, "unsignedIntValue")}];

    v15 = [(NESMSession *)self configuration];
    v16 = [v15 dnsProxy];
    v17 = [v16 perApp];
    v18 = [v17 appRules];
    v19 = [v18 count];

    if (v19)
    {
      v20 = [(NESMSession *)self policySession];
      v21 = [(NESMSession *)self configuration];
      v22 = [v21 dnsProxy];
      v23 = [v22 perApp];
      v24 = [v23 appRules];
      v25 = [(NESMSession *)self uid];
      [v25 intValue];
      sub_100040988(v20, v24);
    }

    v26 = [(NESMSession *)self configuration];
    v27 = [v26 dnsProxy];
    v28 = [v27 perApp];
    v29 = [v28 copyCachedMachOUUIDs];

    if (v29)
    {
      return 0;
    }
  }

  return 1;
}

- (void)prepareNetwork
{
  v2 = [(NESMVPNSession *)self stateHandler];
  [v2 handleNetworkPrepareResult:&stru_1000EBA68];
}

- (void)handleStartMessage:(id)a3
{
  v5 = a3;
  if (self)
  {
    objc_setProperty_atomic(self, v4, 0, 728);
  }

  v6 = xpc_dictionary_get_value(v5, "SessionOptions");
  v7 = v6;
  if (!v6 || xpc_get_type(v6) != &_xpc_type_dictionary || !xpc_dictionary_get_BOOL(v7, "test-agent"))
  {
    goto LABEL_26;
  }

  v8 = xpc_dictionary_get_remote_connection(v5);
  if (!v8)
  {
LABEL_10:
    v11 = ne_log_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_11:

      v12 = [(NESMVPNSession *)self stateHandler];
      [v12 handleStartMessage:v5];

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
    v21 = [(NESMSession *)self configuration];
    v22 = [v21 pluginType];
    v23 = sub_100075628(&v20->super.super.isa, v22, 3, v5);

    if (v23)
    {
      v24 = [NEDNSProxyPlugin alloc];
      v25 = [(NESMSession *)self queue];
      v26 = [(NEVPNTunnelPlugin *)v24 initWithAgent:v23 delegateQueue:v25 andDelegate:self];
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
  [(NESMVPNSession *)&v31 handleStartMessage:v5];
  sub_10002F624(self, 0);
  if (self)
  {
    self->_externallyStopped = 0;
  }

LABEL_28:
}

- (void)handleNetworkDetectionNotification:(int)a3
{
  if (a3 <= 5 && ((1 << a3) & 0x26) != 0)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = inputNotification2String();
      v7 = [(NESMSession *)self configuration];
      v8 = [v7 name];
      *buf = 138412802;
      v12 = self;
      v13 = 2080;
      v14 = v6;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: received a %s notification <%@>", buf, 0x20u);
    }

    if ((a3 - 1) <= 1)
    {
      v9 = [(NESMSession *)self queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100030058;
      block[3] = &unk_1000EB1C0;
      block[4] = self;
      dispatch_async(v9, block);
    }

    [(NESMSession *)self restartSession];
  }
}

- (void)handleCaptiveNetworkPluginsChanged
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NESMSession *)self configuration];
    v5 = [v4 name];
    v6 = 138412546;
    v7 = self;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@: Handling installed captive plugins change (%@>", &v6, 0x16u);
  }

  [(NESMDNSProxySession *)self handleNetworkDetectionNotification:2];
}

- (void)handleInstalledAppsChanged
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NESMSession *)self configuration];
    v5 = [v4 name];
    v6 = 138412546;
    v7 = self;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@: Handling installed apps change <%@>", &v6, 0x16u);
  }

  [(NESMDNSProxySession *)self handleNetworkDetectionNotification:2];
}

- (BOOL)handleUpdateConfiguration:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 dnsProxy];
    if ([v6 isEnabled])
    {
      v7 = [(NESMSession *)self configuration];
      v8 = [v7 dnsProxy];
      v9 = [v8 perApp];
      v10 = [v9 appRules];
      v11 = [v5 dnsProxy];
      v12 = [v11 perApp];
      v13 = [v12 appRules];
      v14 = v10 == v13;
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
      v17 = [(NESMSession *)self configuration];
      v18 = [v17 name];
      *buf = 138412546;
      v22 = self;
      v23 = 2112;
      v24 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@: Handling Update Configuration - updating policies <%@>", buf, 0x16u);
    }

    [(NESMDNSProxySession *)self handleNetworkDetectionNotification:1];
  }

  return v15;
}

- (void)handleNetworkConfigurationChange:(int64_t)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = NESMDNSProxySession;
  [(NESMVPNSession *)&v7 handleNetworkConfigurationChange:?];
  if ((v3 & 2) != 0)
  {
    v5 = [(NESMSession *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100030674;
    block[3] = &unk_1000EB1C0;
    block[4] = self;
    dispatch_async(v5, block);
  }
}

- (void)createConnectParametersWithStartMessage:(id)a3
{
  v10.receiver = self;
  v10.super_class = NESMDNSProxySession;
  [(NESMVPNSession *)&v10 createConnectParametersWithStartMessage:a3];
  v4 = [(NESMSession *)self configuration];
  v5 = [v4 dnsProxy];
  v6 = [v5 protocol];

  v7 = [v6 providerConfiguration];

  if (v7)
  {
    v8 = [v6 providerConfiguration];
    v9 = [(NESMVPNSession *)self connectParameters];
    [v9 setObject:v8 forKeyedSubscript:@"VendorData"];
  }
}

- (void)resetProviderDesignatedRequirementInConfiguration:(id)a3
{
  v4 = [a3 dnsProxy];
  v6 = [v4 protocol];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NESMDNSProxySession *)self providerDesignatedRequirement];
    [v6 setDesignatedRequirement:v5];
  }
}

- (void)setProviderDesignatedRequirement:(id)a3
{
  v4 = a3;
  v5 = [(NESMVPNSession *)self protocol];
  [v5 setDesignatedRequirement:v4];
}

- (id)providerDesignatedRequirement
{
  v2 = [(NESMVPNSession *)self protocol];
  v3 = [v2 designatedRequirement];

  return v3;
}

- (id)providerBundleIdentifier
{
  v2 = [(NESMVPNSession *)self protocol];
  v3 = [v2 providerBundleIdentifier];

  return v3;
}

- (NESMDNSProxySession)initWithConfiguration:(id)a3 andServer:(id)a4 andProtocol:(id)a5 andPluginType:(id)a6
{
  v7.receiver = self;
  v7.super_class = NESMDNSProxySession;
  result = [(NESMVPNSession *)&v7 initWithConfiguration:a3 andServer:a4 andProtocol:a5 andPluginType:a6 andSessionType:6];
  if (result)
  {
    result->_restartIntervalSecs = 1;
  }

  return result;
}

@end