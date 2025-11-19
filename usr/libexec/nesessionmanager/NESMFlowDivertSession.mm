@interface NESMFlowDivertSession
- (BOOL)handleUpdateConfiguration:(id)a3;
- (BOOL)resetPerAppPolicy;
- (NESMFlowDivertSession)initWithConfiguration:(id)a3 andServer:(id)a4 andProtocol:(id)a5 andPluginType:(id)a6;
- (id)pluginDidRequestFlowDivertControlSocket:(id)a3;
- (void)dealloc;
- (void)handleInstalledAppsChanged;
- (void)handleUserLogin;
- (void)install;
- (void)plugin:(id)a3 didSetConfiguration:(id)a4 completionHandler:(id)a5;
- (void)requestInstall;
- (void)setConfigurationWithCompletionHandler:(id)a3;
- (void)uninstall;
@end

@implementation NESMFlowDivertSession

- (void)handleUserLogin
{
  v3 = [(NESMSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F964;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)handleInstalledAppsChanged
{
  v3 = [(NESMSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000FA7C;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (BOOL)handleUpdateConfiguration:(id)a3
{
  v4 = [a3 copy];
  v5 = [v4 appVPN];
  v6 = [(NESMSession *)self uid];
  [v5 updateAppRulesForUID:{objc_msgSend(v6, "unsignedIntValue")}];

  v8.receiver = self;
  v8.super_class = NESMFlowDivertSession;
  LOBYTE(self) = [(NESMVPNSession *)&v8 handleUpdateConfiguration:v4];

  return self;
}

- (BOOL)resetPerAppPolicy
{
  v3 = [(NESMSession *)self configuration];
  v4 = [v3 appVPN];
  v5 = [v4 appRules];
  if ([v5 count] && -[NESMSession isActive](self, "isActive"))
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
    v10 = [(NESMSession *)self configuration];
    v11 = [v10 appVPN];
    v12 = [v11 appRules];
    [v9 appendPrettyObject:v12 withName:@"Current app rules" andIndent:0 options:0];

    v13 = ne_log_large_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%@", &buf, 0xCu);
    }

    v14 = [(NESMSession *)self configuration];
    v16 = [v14 appVPN];
    if (self)
    {
      v17 = objc_getProperty(self, v15, 688, 1);
    }

    else
    {
      v17 = 0;
    }

    v18 = [v17 handle];
    v19 = [v16 installSigningIdentifiersWithFlowDivertControlSocket:{objc_msgSend(v18, "fileDescriptor")}];

    if (v19)
    {
      v56 = v9;
      v20 = [(NESMSession *)self policySession];
      v21 = [(NESMSession *)self configuration];
      v22 = [v21 appVPN];
      v23 = [v22 appRules];
      v24 = [(NESMSession *)self uid];
      [v24 intValue];
      sub_100040988(v20, v23);

      v25 = [(NESMSession *)self policySession];
      v55 = [(NESMSession *)self configuration];
      v54 = [v55 appVPN];
      v27 = [v54 appRules];
      if (self)
      {
        v28 = objc_getProperty(self, v26, 688, 1);
      }

      else
      {
        v28 = 0;
      }

      v53 = [v28 controlUnit];
      v49 = [v53 unsignedIntValue];
      v52 = [(NESMVPNSession *)self pluginConfigurationEntities];
      v29 = [v52 DNSSettings];
      v50 = [(NESMVPNSession *)self pluginConfigurationEntities];
      v30 = [v50 proxySettings];
      v31 = [v30 enabled];
      v57 = v25;
      if (v31)
      {
        v48 = 1;
      }

      else
      {
        v46 = [(NESMVPNSession *)self protocol];
        v45 = [v46 proxySettings];
        v48 = [v45 enabled];
      }

      v51 = v29;
      v47 = v29 != 0;
      v35 = [(NESMVPNSession *)self primaryTunnelPlugin];
      v37 = sub_100019748(v35, v36);
      v38 = [(NESMSession *)self configuration];
      v39 = [v38 appVPN];
      v40 = [v39 excludedDomains];
      v41 = v27;
      v42 = v37;
      v43 = v40;
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
          v65 = v49;
          v66 = v48;
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

      if ((v31 & 1) == 0)
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

- (void)plugin:(id)a3 didSetConfiguration:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  [(NESMVPNSession *)self setPluginConfigurationEntities:v9];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000102DC;
  v12[3] = &unk_1000E9888;
  v11 = v10;
  v13 = v11;
  objc_copyWeak(&v14, &location);
  [(NESMFlowDivertSession *)self setConfigurationWithCompletionHandler:v12];
  objc_destroyWeak(&v14);

  objc_destroyWeak(&location);
}

- (id)pluginDidRequestFlowDivertControlSocket:(id)a3
{
  v4 = [(NESMSession *)self configuration];
  v5 = [v4 appVPN];

  v6 = [(NESMVPNSession *)self protocol];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [(NESMVPNSession *)self protocol];
    v10 = [v9 order];
  }

  else
  {
    v10 = 0x7FFFFFFFLL;
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
    v13 = [v12 initFlowDivertDataSocket];
  }

  else
  {
    v13 = [v12 initFlowDivertControlSocketWithParams:v5 == 0 order:v10];
    if (self)
    {
      objc_setProperty_atomic(self, v14, v13, 688);
    }
  }

  v15 = [v13 handle];

  return v15;
}

- (void)uninstall
{
  v3 = [(NESMSession *)self policySession];
  sub_100030D44(v3);

  sub_10008FD50(self);
  if (self)
  {
    if (self->_scstore)
    {
      v5 = [(NESMSession *)self configuration];
      v6 = [v5 identifier];
      NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, [v6 UUIDString], kSCEntNetProxies);

      v8 = [(NESMSession *)self configuration];
      v9 = [v8 identifier];
      v10 = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, [v9 UUIDString], kSCEntNetDNS);

      v13[0] = NetworkServiceEntity;
      v13[1] = v10;
      v11 = [NSArray arrayWithObjects:v13 count:2];
      SCDynamicStoreSetMultiple(self->_scstore, 0, v11, 0);
    }

    objc_setProperty_atomic(self, v4, 0, 688);
  }

  v12 = [(NESMVPNSession *)self stateHandler];
  [v12 handleClearConfigurationResult:1];
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
    v4 = [(NESMVPNSession *)self parent];
    v3 = [(NESMSession *)self server];
    [v3 requestInstallForSession:self withParentSession:v4 exclusive:0];
  }

  else
  {
    v4 = [(NESMSession *)self server];
    [v4 requestInstallForSession:self withParentSession:0 exclusive:0];
  }
}

- (void)setConfigurationWithCompletionHandler:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100010B54;
  v3[3] = &unk_1000E9838;
  v3[4] = self;
  [(NESMVPNSession *)self queueChangesToTunnelConfiguration:v3 completionHandler:a3];
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

- (NESMFlowDivertSession)initWithConfiguration:(id)a3 andServer:(id)a4 andProtocol:(id)a5 andPluginType:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [a3 copy];
  v14 = [v13 appVPN];
  v15 = [(NESMSession *)self uid];
  [v14 updateAppRulesForUID:{objc_msgSend(v15, "unsignedIntValue")}];

  v18.receiver = self;
  v18.super_class = NESMFlowDivertSession;
  v16 = [(NESMVPNSession *)&v18 initWithConfiguration:v13 andServer:v12 andProtocol:v11 andPluginType:v10 andSessionType:2];

  return v16;
}

@end