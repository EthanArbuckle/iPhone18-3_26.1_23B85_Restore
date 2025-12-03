@interface NESMFlowDivertSession
- (BOOL)handleUpdateConfiguration:(id)configuration;
- (BOOL)resetPerAppPolicy;
- (NESMFlowDivertSession)initWithConfiguration:(id)configuration andServer:(id)server andProtocol:(id)protocol andPluginType:(id)type;
- (id)pluginDidRequestFlowDivertControlSocket:(id)socket;
- (void)dealloc;
- (void)handleInstalledAppsChanged;
- (void)handleUserLogin;
- (void)install;
- (void)plugin:(id)plugin didSetConfiguration:(id)configuration completionHandler:(id)handler;
- (void)requestInstall;
- (void)setConfigurationWithCompletionHandler:(id)handler;
- (void)uninstall;
@end

@implementation NESMFlowDivertSession

- (void)handleUserLogin
{
  queue = [(NESMSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F964;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)handleInstalledAppsChanged
{
  queue = [(NESMSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000FA7C;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)handleUpdateConfiguration:(id)configuration
{
  v4 = [configuration copy];
  appVPN = [v4 appVPN];
  v6 = [(NESMSession *)self uid];
  [appVPN updateAppRulesForUID:{objc_msgSend(v6, "unsignedIntValue")}];

  v8.receiver = self;
  v8.super_class = NESMFlowDivertSession;
  LOBYTE(self) = [(NESMVPNSession *)&v8 handleUpdateConfiguration:v4];

  return self;
}

- (BOOL)resetPerAppPolicy
{
  configuration = [(NESMSession *)self configuration];
  appVPN = [configuration appVPN];
  appRules = [appVPN appRules];
  if ([appRules count] && -[NESMSession isActive](self, "isActive"))
  {
    if (self)
    {
      Property = objc_getProperty(self, v6, 688, 1);
    }

    else
    {
      Property = 0;
    }

    if (!Property)
    {
      return 1;
    }

    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: Re-setting app rule policy", &buf, 0xCu);
    }

    v9 = objc_alloc_init(NSMutableString);
    configuration2 = [(NESMSession *)self configuration];
    appVPN2 = [configuration2 appVPN];
    appRules2 = [appVPN2 appRules];
    [v9 appendPrettyObject:appRules2 withName:@"Current app rules" andIndent:0 options:0];

    v13 = ne_log_large_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%@", &buf, 0xCu);
    }

    configuration3 = [(NESMSession *)self configuration];
    appVPN3 = [configuration3 appVPN];
    if (self)
    {
      v17 = objc_getProperty(self, v15, 688, 1);
    }

    else
    {
      v17 = 0;
    }

    handle = [v17 handle];
    v19 = [appVPN3 installSigningIdentifiersWithFlowDivertControlSocket:{objc_msgSend(handle, "fileDescriptor")}];

    if (v19)
    {
      v56 = v9;
      policySession = [(NESMSession *)self policySession];
      configuration4 = [(NESMSession *)self configuration];
      appVPN4 = [configuration4 appVPN];
      appRules3 = [appVPN4 appRules];
      v24 = [(NESMSession *)self uid];
      [v24 intValue];
      sub_100040988(policySession, appRules3);

      policySession2 = [(NESMSession *)self policySession];
      configuration5 = [(NESMSession *)self configuration];
      appVPN5 = [configuration5 appVPN];
      appRules4 = [appVPN5 appRules];
      if (self)
      {
        v28 = objc_getProperty(self, v26, 688, 1);
      }

      else
      {
        v28 = 0;
      }

      controlUnit = [v28 controlUnit];
      unsignedIntValue = [controlUnit unsignedIntValue];
      pluginConfigurationEntities = [(NESMVPNSession *)self pluginConfigurationEntities];
      dNSSettings = [pluginConfigurationEntities DNSSettings];
      pluginConfigurationEntities2 = [(NESMVPNSession *)self pluginConfigurationEntities];
      proxySettings = [pluginConfigurationEntities2 proxySettings];
      enabled = [proxySettings enabled];
      v57 = policySession2;
      if (enabled)
      {
        enabled2 = 1;
      }

      else
      {
        protocol = [(NESMVPNSession *)self protocol];
        proxySettings2 = [protocol proxySettings];
        enabled2 = [proxySettings2 enabled];
      }

      v51 = dNSSettings;
      v47 = dNSSettings != 0;
      primaryTunnelPlugin = [(NESMVPNSession *)self primaryTunnelPlugin];
      v37 = sub_100019748(primaryTunnelPlugin, v36);
      configuration6 = [(NESMSession *)self configuration];
      appVPN6 = [configuration6 appVPN];
      excludedDomains = [appVPN6 excludedDomains];
      v41 = appRules4;
      v42 = v37;
      v43 = excludedDomains;
      v44 = v57;
      if (v57)
      {
        if (isa_nsarray() && v57[2] == 2)
        {
          *&buf = _NSConcreteStackBlock;
          *(&buf + 1) = 3221225472;
          v59 = sub_100046D78;
          v60 = &unk_1000EA080;
          v61 = v57;
          v65 = unsignedIntValue;
          v66 = enabled2;
          v67 = v47;
          v62 = v41;
          v63 = v42;
          v64 = v43;
          v44 = sub_100031500(NESMPolicyMasterSession, &buf);
        }

        else
        {
          v44 = 0;
        }
      }

      if ((enabled & 1) == 0)
      {
      }

      v9 = v56;
      if (v44)
      {

        return 1;
      }

      v33 = ne_log_obj();
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
LABEL_33:

        return 0;
      }

      LODWORD(buf) = 138412290;
      *(&buf + 4) = self;
      v34 = "%@: failed to update the flow divert policies after installed applications changed";
    }

    else
    {
      v33 = ne_log_obj();
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_33;
      }

      LODWORD(buf) = 138412290;
      *(&buf + 4) = self;
      v34 = "%@: failed to install the signing identifiers in the kernel";
    }

    _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, v34, &buf, 0xCu);
    goto LABEL_33;
  }

  return 1;
}

- (void)plugin:(id)plugin didSetConfiguration:(id)configuration completionHandler:(id)handler
{
  pluginCopy = plugin;
  configurationCopy = configuration;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  [(NESMVPNSession *)self setPluginConfigurationEntities:configurationCopy];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000102DC;
  v12[3] = &unk_1000E9888;
  v11 = handlerCopy;
  v13 = v11;
  objc_copyWeak(&v14, &location);
  [(NESMFlowDivertSession *)self setConfigurationWithCompletionHandler:v12];
  objc_destroyWeak(&v14);

  objc_destroyWeak(&location);
}

- (id)pluginDidRequestFlowDivertControlSocket:(id)socket
{
  configuration = [(NESMSession *)self configuration];
  appVPN = [configuration appVPN];

  protocol = [(NESMVPNSession *)self protocol];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    protocol2 = [(NESMVPNSession *)self protocol];
    order = [protocol2 order];
  }

  else
  {
    order = 0x7FFFFFFFLL;
  }

  if (self)
  {
    Property = objc_getProperty(self, v8, 688, 1);
  }

  else
  {
    Property = 0;
  }

  v12 = [NEFlowDivertFileHandle alloc];
  if (Property)
  {
    initFlowDivertDataSocket = [v12 initFlowDivertDataSocket];
  }

  else
  {
    initFlowDivertDataSocket = [v12 initFlowDivertControlSocketWithParams:appVPN == 0 order:order];
    if (self)
    {
      objc_setProperty_atomic(self, v14, initFlowDivertDataSocket, 688);
    }
  }

  handle = [initFlowDivertDataSocket handle];

  return handle;
}

- (void)uninstall
{
  policySession = [(NESMSession *)self policySession];
  sub_100030D44(policySession);

  sub_10008FD50(self);
  if (self)
  {
    if (self->_scstore)
    {
      configuration = [(NESMSession *)self configuration];
      identifier = [configuration identifier];
      NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, [identifier UUIDString], kSCEntNetProxies);

      configuration2 = [(NESMSession *)self configuration];
      identifier2 = [configuration2 identifier];
      v10 = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, [identifier2 UUIDString], kSCEntNetDNS);

      v13[0] = NetworkServiceEntity;
      v13[1] = v10;
      v11 = [NSArray arrayWithObjects:v13 count:2];
      SCDynamicStoreSetMultiple(self->_scstore, 0, v11, 0);
    }

    objc_setProperty_atomic(self, v4, 0, 688);
  }

  stateHandler = [(NESMVPNSession *)self stateHandler];
  [stateHandler handleClearConfigurationResult:1];
}

- (void)install
{
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000109AC;
  v3[3] = &unk_1000E9860;
  objc_copyWeak(&v4, &location);
  [(NESMFlowDivertSession *)self setConfigurationWithCompletionHandler:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)requestInstall
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(NESMVPNSession *)self parentType]== 1)
  {
    parent = [(NESMVPNSession *)self parent];
    server = [(NESMSession *)self server];
    [server requestInstallForSession:self withParentSession:parent exclusive:0];
  }

  else
  {
    parent = [(NESMSession *)self server];
    [parent requestInstallForSession:self withParentSession:0 exclusive:0];
  }
}

- (void)setConfigurationWithCompletionHandler:(id)handler
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100010B54;
  v3[3] = &unk_1000E9838;
  v3[4] = self;
  [(NESMVPNSession *)self queueChangesToTunnelConfiguration:v3 completionHandler:handler];
}

- (void)dealloc
{
  if (self)
  {
    scstore = self->_scstore;
    if (scstore)
    {
      CFRelease(scstore);
    }
  }

  v4.receiver = self;
  v4.super_class = NESMFlowDivertSession;
  [(NESMVPNSession *)&v4 dealloc];
}

- (NESMFlowDivertSession)initWithConfiguration:(id)configuration andServer:(id)server andProtocol:(id)protocol andPluginType:(id)type
{
  typeCopy = type;
  protocolCopy = protocol;
  serverCopy = server;
  v13 = [configuration copy];
  appVPN = [v13 appVPN];
  v15 = [(NESMSession *)self uid];
  [appVPN updateAppRulesForUID:{objc_msgSend(v15, "unsignedIntValue")}];

  v18.receiver = self;
  v18.super_class = NESMFlowDivertSession;
  v16 = [(NESMVPNSession *)&v18 initWithConfiguration:v13 andServer:serverCopy andProtocol:protocolCopy andPluginType:typeCopy andSessionType:2];

  return v16;
}

@end