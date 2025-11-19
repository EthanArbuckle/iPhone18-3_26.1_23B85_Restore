@interface NESMVPNSession
- (BOOL)establishIPCPending;
- (BOOL)handleSleep;
- (BOOL)handleUpdateConfiguration:(id)a3;
- (BOOL)hasProviderWithBundleIdentifier:(id)a3;
- (BOOL)initializePlugins;
- (BOOL)interface:(id)a3 hasIPAddress:(id)a4 currentFlags:(unint64_t)a5;
- (BOOL)isSecondaryConnection;
- (BOOL)prepareConfigurationForStart;
- (BOOL)proxyEnabled:(id)a3;
- (BOOL)resetPerAppPolicy;
- (BOOL)shouldSendIPCAttachForPlugin:(id)a3;
- (BOOL)supportsDefaultDrop;
- (NESMSession)parent;
- (NESMVPNSession)initWithConfiguration:(id)a3 andServer:(id)a4 andProtocol:(id)a5 andPluginType:(id)a6 andSessionType:(int)a7 sessionQueue:(id)a8 messageQueue:(id)a9 tunnelKind:(int64_t)a10 parent:(id)a11;
- (NSString)authenticationPluginBundleIdentifier;
- (NSString)description;
- (NSString)extensibleSSOProvider;
- (NSString)pluginType;
- (NSString)providerBundleIdentifier;
- (NSString)providerDesignatedRequirement;
- (id)copyExtendedStatus;
- (id)copyStatistics;
- (id)copyTunnelInterfaceName;
- (id)pluginPIDArray;
- (int)getVirtualInterfaceMTU:(id)a3;
- (unsigned)isInterfaceIPAvailable:(const char *)a3;
- (void)addDefaultDropPolicyForPluginUUIDs:(id)a3;
- (void)checkPluginInstalledWithCompletionHandler:(id)a3;
- (void)connectionStateChanged:(id)a3 connection:(int)a4 dataConnectionStatusInfo:(id)a5;
- (void)createConnectParametersWithStartMessage:(id)a3;
- (void)dealloc;
- (void)handleCaptiveNetworkPluginsChanged;
- (void)handleChangeEventForInterface:(id)a3 newFlags:(unint64_t)a4 previousFlags:(unint64_t)a5;
- (void)handleChangeEventForRankedInterfaces;
- (void)handleEstablishIPCMessage:(id)a3;
- (void)handleGetInfoMessage:(id)a3 withType:(int)a4;
- (void)handleInitializeState;
- (void)handleInstalledAppsChanged;
- (void)handleNetworkConfigurationChange:(int64_t)a3;
- (void)handleNetworkDetectionNotification:(int)a3;
- (void)handleNetworkPrepareResult:(id)a3;
- (void)handleSleepTime:(double)a3;
- (void)handleStartMessage:(id)a3;
- (void)handleUserLogout;
- (void)handleUserSwitch;
- (void)handleWakeup;
- (void)install;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)plugin:(id)a3 didAttachIPCWithEndpoint:(id)a4;
- (void)plugin:(id)a3 didInitializeWithUUIDs:(id)a4;
- (void)plugin:(id)a3 didRequestVirtualInterfaceWithParameters:(id)a4 completionHandler:(id)a5;
- (void)plugin:(id)a3 didSetConfiguration:(id)a4 completionHandler:(id)a5;
- (void)plugin:(id)a3 didSetStatus:(int)a4 andDisconnectError:(id)a5;
- (void)pluginDidAcknowledgeSleep:(id)a3;
- (void)pluginDidClearConfiguration:(id)a3 completionHandler:(id)a4;
- (void)pluginDidDetachIPC:(id)a3;
- (void)pluginDidDispose:(id)a3;
- (void)prepareNetwork;
- (void)queueChangesToTunnelConfiguration:(id)a3 completionHandler:(id)a4;
- (void)registerSession:(id)a3 fromClient:(id)a4;
- (void)requestInstall;
- (void)requestUninstall;
- (void)resetProviderDesignatedRequirementInConfiguration:(id)a3;
- (void)sendEstablishIPCReply;
- (void)setDelegateInterfaceName:(id)a3;
- (void)setEndpointInEstablishIPCReply:(id)a3 forPlugin:(id)a4;
- (void)setIsSecondaryConnection:(BOOL)a3;
- (void)setLastDisconnectError:(id)a3;
- (void)setLastStopReason:(int)a3;
- (void)setProviderDesignatedRequirement:(id)a3;
- (void)setState:(int64_t)a3;
- (void)setStatus:(int)a3;
- (void)uninstall;
@end

@implementation NESMVPNSession

- (NESMSession)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

- (void)connectionStateChanged:(id)a3 connection:(int)a4 dataConnectionStatusInfo:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (!v9)
  {
    goto LABEL_20;
  }

  if (self)
  {
    coreTelephonyConnType = self->_coreTelephonyConnType;
    if (coreTelephonyConnType == 36)
    {
      goto LABEL_20;
    }
  }

  else
  {
    coreTelephonyConnType = 0;
  }

  if (coreTelephonyConnType != a4)
  {
    goto LABEL_20;
  }

  if ([v9 state] == 2)
  {
    v13 = [v10 interfaceName];

    if (v13)
    {
      if (self)
      {
        if (objc_getProperty(self, v12, 496, 1))
        {
          v15 = objc_getProperty(self, v14, 496, 1);
          v16 = [v10 interfaceName];
          v17 = [v15 isEqual:v16];

          if ((v17 & 1) == 0)
          {
            v18 = ne_log_obj();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v63 = [(NESMSession *)self configuration];
              v61 = [v63 appVPN];
              v60 = [v61 protocol];
              v55 = [v60 sliceUUID];
              v56 = [v10 state];
              Property = objc_getProperty(self, v57, 496, 1);
              v59 = [v10 interfaceName];
              *buf = 138413570;
              v65 = self;
              v66 = 1024;
              v67 = a4;
              v68 = 2112;
              v69 = v55;
              v70 = 1024;
              v71 = v56;
              v72 = 2112;
              v73 = Property;
              v74 = 2112;
              v75 = v59;
              _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@: VPN Slice connectionStateChanged - Invalid transition <type %d> - sliceUUID %@ : <state %d: slice ifname %@ --> %@>", buf, 0x36u);
            }

LABEL_19:
            v30 = [(NESMVPNSession *)self stateHandler];
            [v30 handleStop];

            goto LABEL_20;
          }

          goto LABEL_20;
        }

        v31 = [v10 interfaceName];
        objc_setProperty_atomic(self, v32, v31, 496);
      }

      else
      {
        v31 = [v10 interfaceName];
      }

      v33 = ne_log_obj();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = [(NESMSession *)self configuration];
        v35 = [v34 appVPN];
        v36 = [v35 protocol];
        v37 = [v36 sliceUUID];
        v39 = [v10 state];
        if (self)
        {
          v40 = objc_getProperty(self, v38, 496, 1);
        }

        else
        {
          v40 = 0;
        }

        *buf = 138413314;
        v65 = self;
        v66 = 1024;
        v67 = a4;
        v68 = 2112;
        v69 = v37;
        v70 = 1024;
        v71 = v39;
        v72 = 2112;
        v73 = v40;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%@: VPN Slice connectionStateChanged <type %d> - sliceUUID %@ : <state %d: slice ifname nil --> %@>", buf, 0x2Cu);
      }

      if (self)
      {
        [(NESMVPNSession *)self setDelegateInterfaceName:objc_getProperty(self, v41, 496, 1)];
        v43 = objc_getProperty(self, v42, 504, 1);
        if (v43)
        {
          slicePendingStartPluginPid = self->_slicePendingStartPluginPid;

          if (slicePendingStartPluginPid)
          {
            v46 = objc_getProperty(self, v45, 504, 1);
            v47 = self->_slicePendingStartPluginPid;
            v48 = v46;
            v50 = objc_getProperty(self, v49, 512, 1);
            v52 = objc_getProperty(self, v51, 496, 1);
            sub_10001BF94(self, v48, v47, v50, v52);

            objc_setProperty_atomic(self, v53, 0, 504);
            self->_slicePendingStartPluginPid = 0;
            objc_setProperty_atomic(self, v54, 0, 512);
          }
        }
      }

      else
      {
        [0 setDelegateInterfaceName:0];
      }

      goto LABEL_20;
    }
  }

  if (self)
  {
    v19 = objc_getProperty(self, v12, 496, 1);
    if (v19)
    {
      v21 = v19;
      v22 = objc_getProperty(self, v20, 496, 1);
      v23 = [v10 interfaceName];

      if (v22 == v23)
      {
        v24 = ne_log_obj();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v62 = [(NESMSession *)self configuration];
          v25 = [v62 appVPN];
          v26 = [v25 protocol];
          v27 = [v26 sliceUUID];
          *buf = 138413314;
          v65 = self;
          v66 = 1024;
          v67 = a4;
          v68 = 2112;
          v69 = v27;
          v70 = 1024;
          v71 = [v10 state];
          v72 = 2112;
          v73 = objc_getProperty(self, v28, 496, 1);
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%@: VPN Slice connectionStateChanged <type %d> - sliceUUID %@ : <state %d: slice ifname %@ --> nil>", buf, 0x2Cu);
        }

        objc_setProperty_atomic(self, v29, 0, 496);
        goto LABEL_19;
      }
    }
  }

LABEL_20:
}

- (BOOL)supportsDefaultDrop
{
  if (![(NESMSession *)self defaultDropType]|| [(NESMVPNSession *)self type]!= 1)
  {
    return 0;
  }

  v3 = [(NESMSession *)self configuration];
  v4 = [v3 VPN];
  v5 = [v4 protocol];
  v6 = [v5 includeAllNetworks];

  return v6;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v40.receiver = self;
  v40.super_class = NESMVPNSession;
  [(NESMSession *)&v40 observeValueForKeyPath:v10 ofObject:v11 change:a5 context:a6];
  if (self)
  {
    Property = objc_getProperty(self, v12, 424, 1);
  }

  else
  {
    Property = 0;
  }

  if (Property == v11 && [v10 isEqualToString:@"path"])
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      if (self)
      {
        v16 = objc_getProperty(self, v15, 424, 1);
      }

      else
      {
        v16 = 0;
      }

      *buf = 134218240;
      v42 = v11;
      v43 = 2048;
      v44 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "IDS Nexus: got EVENT %p %p", buf, 0x16u);
    }

    if (self)
    {
      v18 = objc_getProperty(self, v17, 424, 1);
    }

    else
    {
      v18 = 0;
    }

    v19 = [v18 path];
    if ([v19 status] == 1)
    {
      if (self)
      {
        IDSNexusIfIndex = self->_IDSNexusIfIndex;
      }

      else
      {
        IDSNexusIfIndex = 0;
      }

      v21 = [v19 interface];
      v22 = [v21 interfaceIndex];

      if (IDSNexusIfIndex == v22)
      {
        goto LABEL_32;
      }

      v23 = ne_log_obj();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        if (self)
        {
          v24 = self->_IDSNexusIfIndex;
        }

        else
        {
          v24 = 0;
        }

        v25 = [v19 interface];
        v26 = [v25 interfaceIndex];
        *buf = 134218240;
        v42 = v24;
        v43 = 2048;
        v44 = v26;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "IDS Nexus interface changed %ld -> %ld", buf, 0x16u);
      }

      v27 = [v19 interface];
      v28 = [v27 interfaceIndex];
      if (self)
      {
        self->_IDSNexusIfIndex = v28;
      }

      v29 = [(NESMSession *)self policySession];
      v30 = [v19 interface];
      v31 = [v30 interfaceName];
      v32 = sub_100048604(v29, v31);

      if (v32)
      {
        goto LABEL_32;
      }

      v33 = ne_log_obj();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = [v19 interface];
        v35 = [v34 interfaceName];
        *buf = 138412290;
        v42 = v35;
        _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Failed to add IDS Nexus policy for %@", buf, 0xCu);
      }
    }

    else
    {
      v36 = ne_log_obj();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "IDS Nexus interface unusable", buf, 2u);
      }

      if (self)
      {
        self->_IDSNexusIfIndex = 0;
      }

      v37 = [(NESMSession *)self policySession];
      v39 = sub_100034538(v37, v38);

      if (v39)
      {
        goto LABEL_32;
      }

      v33 = ne_log_obj();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Failed to clear Nexus policy", buf, 2u);
      }
    }

LABEL_32:
  }
}

- (void)invalidate
{
  if (self)
  {
    [(CoreTelephonyClient *)self->_coreTelephonyClient setDelegate:0];
    objc_storeStrong(&self->_coreTelephonyClient, 0);
  }

  else
  {
    [0 setDelegate:0];
  }

  v4.receiver = self;
  v4.super_class = NESMVPNSession;
  [(NESMSession *)&v4 invalidate];
  [(NESMVPNSessionState *)self->_stateHandler leave];
  stateHandler = self->_stateHandler;
  self->_stateHandler = 0;
}

- (void)handleInstalledAppsChanged
{
  v3 = [(NESMSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001CE70;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (BOOL)resetPerAppPolicy
{
  v2 = self;
  v3 = sub_10008D698(self);
  if ([(NESMVPNSession *)v2 type]!= 2 || ![(NESMVPNSession *)v2 virtualInterface])
  {
    goto LABEL_45;
  }

  v4 = [(NESMSession *)v2 configuration];
  v5 = [v4 appVPN];
  v6 = [v5 appRules];
  if (![v6 count] && !objc_msgSend(v3, "count"))
  {

    goto LABEL_45;
  }

  v7 = [(NESMSession *)v2 isActive];

  if (!v7)
  {
LABEL_45:
    v48 = 1;
    goto LABEL_46;
  }

  [(NESMVPNSession *)v2 virtualInterface];
  v71 = NEVirtualInterfaceCopyName();
  v8 = [(NESMSession *)v2 policySession];
  v9 = [(NESMSession *)v2 configuration];
  v10 = [v9 appVPN];
  v11 = [v10 appRules];
  v12 = [(NESMSession *)v2 uid];
  [v12 intValue];
  sub_100040988(v8, v11);

  v68 = v2;
  if (v2)
  {
    v13 = [(NESMSession *)v2 configuration];
    v14 = [v13 appVPN];
    v15 = [v14 appRules];

    if ([v15 count])
    {
      v69 = v3;
      v16 = objc_alloc_init(NSMutableDictionary);
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v66 = v15;
      obj = v15;
      v17 = [obj countByEnumeratingWithState:&v81 objects:buf count:16];
      if (v17)
      {
        v18 = v17;
        v74 = *v82;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v82 != v74)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v81 + 1) + 8 * i);
            v77 = 0u;
            v78 = 0u;
            v79 = 0u;
            v80 = 0u;
            v21 = [v20 cachedMachOUUIDs];
            v22 = [v21 countByEnumeratingWithState:&v77 objects:v85 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v78;
              do
              {
                for (j = 0; j != v23; j = j + 1)
                {
                  if (*v78 != v24)
                  {
                    objc_enumerationMutation(v21);
                  }

                  v26 = *(*(&v77 + 1) + 8 * j);
                  v27 = [v20 matchSigningIdentifier];
                  [v16 setObject:v27 forKeyedSubscript:v26];
                }

                v23 = [v21 countByEnumeratingWithState:&v77 objects:v85 count:16];
              }

              while (v23);
            }
          }

          v18 = [obj countByEnumeratingWithState:&v81 objects:buf count:16];
        }

        while (v18);
      }

      v2 = v68;
      v3 = v69;
      v15 = v66;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v28 = ne_log_obj();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [v16 count];
    *buf = 138412546;
    *&buf[4] = v2;
    *&buf[12] = 2048;
    *&buf[14] = v29;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%@: Setting the app UUID map with %lu entries", buf, 0x16u);
  }

  v30 = [(NESMVPNSession *)v2 primaryTunnelPlugin];
  v31 = v30;
  if (v30)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10001A97C;
    v87 = &unk_1000EB068;
    v88 = v30;
    v32 = v16;
    v33 = [v31 remotePluginObjectWithErrorHandler:buf];
    [v33 setAppUUIDMap:v32];
  }

  if (!ne_session_disable_restrictions())
  {
    goto LABEL_35;
  }

  v34 = [(NESMVPNSession *)v2 protocol];
  v35 = [v34 type];
  v36 = v35 == 5;
  if (v35 == 5)
  {
    v37 = [(NESMVPNSession *)v2 protocol];
    v38 = [v37 serverAddress];
    v39 = [v38 isEqualToString:@"0.0.0.0"];

    if (v39)
    {
      v34 = ne_log_obj();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v2;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%@: Not installing interface tunnel policies", buf, 0xCu);
      }

      goto LABEL_34;
    }

LABEL_35:
    v67 = 0;
    goto LABEL_36;
  }

LABEL_34:
  v67 = v36;

LABEL_36:
  v75 = [(NESMSession *)v2 policySession];
  v65 = [(NESMSession *)v2 configuration];
  v64 = [v65 appVPN];
  obja = [v64 appRules];
  v70 = [(NESMVPNSession *)v2 pluginPIDArray];
  v63 = [(NESMVPNSession *)v2 pluginConfigurationEntities];
  v40 = [v63 DNSSettings];
  v41 = [(NESMVPNSession *)v2 pluginConfigurationEntities];
  v42 = [v41 proxySettings];
  v43 = [v42 enabled];
  if (v43)
  {
    v44 = 1;
  }

  else
  {
    v62 = [(NESMVPNSession *)v2 protocol];
    v61 = [v62 proxySettings];
    v44 = [v61 enabled];
  }

  v45 = [(NESMSession *)v2 configuration];
  v46 = [v45 appVPN];
  v47 = [v46 excludedDomains];
  v48 = sub_100041F28(v75, obja, v71, v70, v40 != 0, v44, v67, v3, v47);

  if ((v43 & 1) == 0)
  {
  }

  v49 = [(NESMSession *)v68 configuration];
  v50 = [v49 VPN];
  v51 = [v50 exceptionApps];

  if (v51)
  {
    v52 = [(NESMSession *)v68 policySession];
    v76 = [(NESMSession *)v68 configuration];
    v53 = [v76 VPN];
    v54 = [v53 exceptionApps];
    v55 = [(NESMSession *)v68 server];
    v56 = [v55 primaryPhysicalInterface];
    v57 = [v56 interfaceName];
    [(NESMSession *)v68 uid];
    v59 = v58 = v3;
    sub_100040B4C(v52, v54, v57, [v59 intValue]);

    v3 = v58;
  }

LABEL_46:
  return v48;
}

- (BOOL)prepareConfigurationForStart
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138412290;
    v6 = self;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%@: Default prepareConfigurationForStart", &v5, 0xCu);
  }

  return 1;
}

- (NSString)pluginType
{
  v3 = [(NESMVPNSession *)self protocol];
  v4 = [v3 type];

  v5 = [(NESMVPNSession *)self protocol];
  v6 = v5;
  if (v4 == 4)
  {
    goto LABEL_4;
  }

  v7 = [v5 type];

  if (v7 == 5)
  {
    v6 = [(NESMVPNSession *)self protocol];
LABEL_4:
    v8 = [v6 pluginType];

    goto LABEL_6;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (BOOL)handleUpdateConfiguration:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    sub_10001DC34(self);
LABEL_16:
    v13 = 0;
    goto LABEL_36;
  }

  if ([(NESMVPNSession *)self type]== 2)
  {
    v6 = [v5 appVPN];
  }

  else
  {
    if ([(NESMVPNSession *)self type]== 6)
    {
      [v5 dnsProxy];
    }

    else
    {
      [v5 VPN];
    }
    v6 = ;
  }

  v7 = v6;
  v8 = [v6 isEnabled];

  v9 = ne_log_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v3 = [(NESMSession *)self configuration];
    v10 = [v3 name];
    *buf = 138412802;
    v39 = self;
    v40 = 1024;
    v41 = v8;
    v42 = 2112;
    v43 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@: NESMVPNSession - enabled = %d <%@>", buf, 0x1Cu);
  }

  v37.receiver = self;
  v37.super_class = NESMVPNSession;
  if (![(NESMSession *)&v37 handleUpdateConfiguration:v5])
  {
    goto LABEL_16;
  }

  sub_10001DC34(self);
  if (![(NESMSession *)self disableOnDemand])
  {
    goto LABEL_25;
  }

  v11 = [(NESMSession *)self configuration];
  v12 = [v11 VPN];
  if (v12)
  {
    v3 = [v5 VPN];
    if (([v3 isOnDemandEnabled] & 1) == 0)
    {

LABEL_21:
      [(NESMSession *)self setDisableOnDemand:0];
      goto LABEL_25;
    }
  }

  v14 = [(NESMSession *)self configuration];
  v15 = [v14 appVPN];
  if (v15)
  {
    v16 = v15;
    v17 = [v5 appVPN];
    v18 = [v17 isOnDemandEnabled];

    if (v12)
    {
    }

    if ((v18 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {

    if (v12)
    {
    }
  }

LABEL_25:
  if ([(NESMVPNSession *)self type]== 2)
  {
    v19 = [(NESMSession *)self configuration];
    v20 = [v19 appVPN];
    v21 = [v20 protocol];
    [(NESMVPNSession *)self setProtocol:v21];

    v22 = [v5 appVPN];
  }

  else
  {
    v23 = [(NESMVPNSession *)self type];
    v24 = [(NESMSession *)self configuration];
    v25 = v24;
    if (v23 != 6)
    {
      v34 = [v24 VPN];
      v35 = [v34 protocol];
      [(NESMVPNSession *)self setProtocol:v35];

      v36 = [v5 VPN];
      LODWORD(v34) = [v36 isEnabled];

      if (!v34)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    v26 = [v24 dnsProxy];
    v27 = [v26 protocol];
    [(NESMVPNSession *)self setProtocol:v27];

    v22 = [v5 dnsProxy];
  }

  v28 = v22;
  v29 = [v22 isEnabled];

  if (v29)
  {
LABEL_30:
    v30 = [(NESMVPNSession *)self stateHandler];
    [v30 handleUpdateConfiguration];
  }

LABEL_31:
  if (![(NESMVPNSession *)self resetPerAppPolicy])
  {
    v31 = ne_log_obj();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v39 = self;
      _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%@: Failed to reset the per-app policy after a configuration update, disconnecting", buf, 0xCu);
    }

    v32 = [(NESMVPNSession *)self stateHandler];
    [v32 handleStop];
  }

  v13 = 1;
LABEL_36:

  return v13;
}

- (void)prepareNetwork
{
  if ([(NESMVPNSession *)self parentType]== 1)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v9 = [(NESMVPNSession *)self interfaceName];
      *block = 138412802;
      *&block[4] = self;
      *&block[12] = 2112;
      *&block[14] = v9;
      *&block[22] = 2080;
      v13 = "[NESMVPNSession prepareNetwork]";
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%@[%@]:%s:: enter", block, 0x20u);
    }

    v4 = [(NESMVPNSession *)self interfaceName];
    v5 = -[NESMVPNSession isInterfaceIPAvailable:](self, "isInterfaceIPAvailable:", [v4 UTF8String]);

    if (v5)
    {
      v6 = [(NESMVPNSession *)self interfaceName];
      [(NESMVPNSession *)self handleNetworkPrepareResult:v6];
    }
  }

  else if ([(NESMVPNSession *)self tunnelKind]== 2 && [(NESMVPNSession *)self parentType]== 2)
  {
    v10 = [(NESMVPNSession *)self parent];
    v7 = self;
    if (v10)
    {
      v8 = [v10 queue];
      *block = _NSConcreteStackBlock;
      *&block[8] = 3221225472;
      *&block[16] = sub_10009AAB0;
      v13 = &unk_1000EB198;
      v14 = v7;
      v15 = v10;
      dispatch_async(v8, block);
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = NESMVPNSession;
    [(NESMSession *)&v11 prepareNetwork];
  }
}

- (void)setLastDisconnectError:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NESMVPNSession;
  [(NESMSession *)&v9 setLastDisconnectError:v4];
  if ([(NESMVPNSession *)self parentType]== 2)
  {
    v5 = [(NESMVPNSession *)self parent];
    v6 = self;
    v7 = v4;
    if (v5)
    {
      v8 = [v5 queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10009B2C8;
      block[3] = &unk_1000EABC8;
      block[4] = v5;
      v11 = v6;
      v12 = v7;
      dispatch_async(v8, block);
    }
  }
}

- (void)setLastStopReason:(int)a3
{
  v8.receiver = self;
  v8.super_class = NESMVPNSession;
  [(NESMSession *)&v8 setLastStopReason:?];
  if ([(NESMVPNSession *)self parentType]== 2)
  {
    v5 = [(NESMVPNSession *)self parent];
    v6 = self;
    if (v5)
    {
      v7 = [v5 queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10009B1B0;
      block[3] = &unk_1000EB360;
      block[4] = v5;
      v10 = v6;
      v11 = a3;
      dispatch_async(v7, block);
    }
  }
}

- (void)setStatus:(int)a3
{
  v61.receiver = self;
  v61.super_class = NESMVPNSession;
  [(NESMSession *)&v61 setStatus:?];
  if ([(NESMVPNSession *)self parentType]== 1)
  {
    v5 = [(NESMVPNSession *)self parent];
    v6 = self;
    v7 = v6;
    if (!v5 || !v6)
    {
      goto LABEL_44;
    }

    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v31 = [(NESMVPNSession *)v7 interfaceName];
      v32 = ne_session_status_to_string();
      *buf = 138413058;
      *&buf[4] = v5;
      *&buf[12] = 2112;
      *&buf[14] = v31;
      *&buf[22] = 2080;
      v69 = "[NESMAlwaysOnSession setStatusFromSession:andStatus:]";
      LOWORD(v70) = 2080;
      *(&v70 + 2) = v32;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%@[%@]:%s: VPN Status to Parent: %s", buf, 0x2Au);
    }

    v9 = [v5 queue];
    block = _NSConcreteStackBlock;
    v63 = 3221225472;
    v64 = sub_10000D7B4;
    v65 = &unk_1000EB338;
    v66 = v5;
    LODWORD(v67) = a3;
    dispatch_async(v9, &block);

    if (a3 != 1)
    {
      if (a3 == 3)
      {
        sub_10000A414(v5, v7);
      }

      goto LABEL_44;
    }

    if ((*(v5 + 353) & 1) != 0 || (-[NESMVPNSession interfaceName](v7, "interfaceName"), v14 = objc_claimAutoreleasedReturnValue(), v15 = -[NESMVPNSession isInterfaceIPAvailable:](v7, "isInterfaceIPAvailable:", [v14 UTF8String]), v14, !v15))
    {
      v16 = ne_log_obj();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
LABEL_43:

        goto LABEL_44;
      }

      v30 = [(NESMVPNSession *)v7 interfaceName];
      *buf = 138412802;
      *&buf[4] = v5;
      *&buf[12] = 2112;
      *&buf[14] = v30;
      *&buf[22] = 2080;
      v69 = "[NESMAlwaysOnSession setStatusFromSession:andStatus:]";
      _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%@[%@]:%s: Session stopped or interface down, no retry", buf, 0x20u);
LABEL_28:

      goto LABEL_43;
    }

    v16 = v7;
    if (!objc_getProperty(v5, v17, 408, 1) || ([v16 interfaceName], v18 = objc_claimAutoreleasedReturnValue(), v18, !v18))
    {

LABEL_26:
      v30 = ne_log_obj();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        v37 = [v16 interfaceName];
        *buf = 138412802;
        *&buf[4] = v5;
        *&buf[12] = 2112;
        *&buf[14] = v37;
        *&buf[22] = 2080;
        v69 = "[NESMAlwaysOnSession alwaysOnRetry:]";
        _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "%@[%@]:%s: failed to get retry interval", buf, 0x20u);
      }

      goto LABEL_28;
    }

    v20 = objc_getProperty(v5, v19, 408, 1);
    v21 = [v16 interfaceName];
    v22 = [v20 objectForKeyedSubscript:v21];

    if (v22)
    {
      goto LABEL_19;
    }

    v22 = objc_alloc_init(NESMAlwaysOnSessionRetryCounter);
    v23 = 1;
    v25 = objc_getProperty(v5, v24, 408, 1);
    v26 = [v16 interfaceName];
    [v25 setObject:v22 forKeyedSubscript:v26];

    if (v22)
    {
LABEL_19:
      interval = v22->_interval;
      if (interval)
      {
        retryCount = v22->_retryCount;
        v22->_retryCount = retryCount + 1;
        if (retryCount < *(v5 + 440))
        {
          goto LABEL_35;
        }

        interval *= *(v5 + 432);
        v22->_interval = interval;
        v29 = *(v5 + 424);
        if (interval > v29)
        {
          v22->_interval = v29;
          interval = v29;
        }

LABEL_34:
        v22->_retryCount = 0;
LABEL_35:

        if ((interval & 0x8000000000000000) == 0)
        {
          if (interval)
          {
            v34 = ne_log_obj();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              v38 = [v16 interfaceName];
              *buf = 138413058;
              *&buf[4] = v5;
              *&buf[12] = 2112;
              *&buf[14] = v38;
              *&buf[22] = 2080;
              v69 = "[NESMAlwaysOnSession alwaysOnRetry:]";
              LOWORD(v70) = 2048;
              *(&v70 + 2) = interval;
              _os_log_debug_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "%@[%@]:%s: Retrying in %ld Secs", buf, 0x2Au);
            }

            v35 = dispatch_time(0, 1000000000 * interval);
            v36 = [v16 queue];
            *buf = _NSConcreteStackBlock;
            *&buf[8] = 3221225472;
            *&buf[16] = sub_10000D5CC;
            v69 = &unk_1000EB198;
            *&v70 = v5;
            *(&v70 + 1) = v16;
            dispatch_after(v35, v36, buf);

            goto LABEL_42;
          }

LABEL_41:
          v40 = [v16 queue];
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_10000D4A4;
          v69 = &unk_1000EB198;
          *&v70 = v5;
          *(&v70 + 1) = v16;
          dispatch_async(v40, buf);

LABEL_42:
          goto LABEL_43;
        }

        goto LABEL_26;
      }

      v23 = 0;
    }

    v33 = ne_log_obj();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v39 = [v16 interfaceName];
      *buf = 138412802;
      *&buf[4] = v5;
      *&buf[12] = 2112;
      *&buf[14] = v39;
      *&buf[22] = 2080;
      v69 = "[NESMAlwaysOnSession nextRetryIntervalForSession:]";
      _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "%@[%@]:%s: Retrying now", buf, 0x20u);
    }

    if (v23)
    {

      goto LABEL_41;
    }

    interval = 0;
    v22->_interval = *(v5 + 416);
    goto LABEL_34;
  }

  if ([(NESMVPNSession *)self parentType]!= 2)
  {
    goto LABEL_45;
  }

  v5 = [(NESMVPNSession *)self parent];
  v10 = self;
  v7 = v10;
  if (v5 && v10)
  {
    v11 = [v5 queue];
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10009AE84;
    v69 = &unk_1000EB360;
    *&v70 = v5;
    v12 = v7;
    *(&v70 + 1) = v12;
    v71 = a3;
    dispatch_async(v11, buf);

    v13 = [v5 queue];
    block = _NSConcreteStackBlock;
    v63 = 3221225472;
    v64 = sub_10009B10C;
    v65 = &unk_1000EB198;
    v66 = v5;
    v67 = v12;
    dispatch_async(v13, &block);
  }

LABEL_44:

LABEL_45:
  v41 = [(NESMSession *)self configuration];
  v42 = [v41 VPN];
  v43 = [v42 protocol];
  v44 = [v43 includeAllNetworks];

  if (!v44)
  {
LABEL_52:
    v49 = [(NESMSession *)self configuration];
    v50 = [v49 appVPN];
    if (v50)
    {
      v51 = v50;
      v52 = [(NESMSession *)self configuration];
      v53 = [v52 appVPN];
      v54 = [v53 protocol];
      v55 = [v54 sliceUUID];

      if (a3 == 1 && v55)
      {
        if (self)
        {
          objc_setProperty_atomic(self, v56, 0, 496);
          self->_coreTelephonyConnType = 36;
          objc_setProperty_atomic(self, v57, 0, 504);
          self->_slicePendingStartPluginPid = 0;
          objc_setProperty_atomic(self, v58, 0, 512);
        }
      }
    }

    else
    {
    }

    return;
  }

  v45 = [(NESMSession *)self configuration];
  v46 = [v45 VPN];
  v47 = [v46 isOnDemandEnabled];

  if (v47)
  {
    if (a3 == 1)
    {
      [(NESMVPNSession *)self setStopped:1];
      return;
    }

    goto LABEL_52;
  }

  if (a3 != 1)
  {
    if (a3 == 3)
    {
      sub_10001F398(self, v48);
      return;
    }

    goto LABEL_52;
  }

  if ([(NESMVPNSession *)self stopped])
  {
    v60 = ne_log_obj();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2080;
      *&buf[14] = "[NESMVPNSession setStatus:]";
      _os_log_debug_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEBUG, "%@:%s: Session stopped, no retry", buf, 0x16u);
    }
  }

  else
  {
    sub_10001F404(self, v59);
  }
}

- (unsigned)isInterfaceIPAvailable:(const char *)a3
{
  if (!nwi_state_copy())
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = [(NESMVPNSession *)self interfaceName];
      v17 = 138412802;
      v18 = self;
      v19 = 2112;
      v20 = v15;
      v21 = 2080;
      v22 = "[NESMVPNSession isInterfaceIPAvailable:]";
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@[%@]:%s:: no state", &v17, 0x20u);
    }

    goto LABEL_16;
  }

  if (!nwi_state_get_ifstate())
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v16 = [(NESMVPNSession *)self interfaceName];
      v17 = 138412802;
      v18 = self;
      v19 = 2112;
      v20 = v16;
      v21 = 2080;
      v22 = "[NESMVPNSession isInterfaceIPAvailable:]";
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@[%@]:%s:: no ifState", &v17, 0x20u);
    }

    nwi_state_release();
LABEL_16:
    LOBYTE(v6) = 0;
    return v6;
  }

  flags = nwi_ifstate_get_flags();
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v11 = [(NESMVPNSession *)self interfaceName];
    v17 = 138413058;
    v18 = self;
    v19 = 2112;
    v20 = v11;
    v21 = 2080;
    v22 = "[NESMVPNSession isInterfaceIPAvailable:]";
    v23 = 1024;
    LODWORD(v24) = flags;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%@[%@]:%s:: flags %X", &v17, 0x26u);
  }

  if ((flags & 3) != 0)
  {
    v6 = (flags >> 2) & 1;
  }

  else
  {
    v6 = 0;
  }

  nwi_state_release();
  v7 = ne_log_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v12 = [(NESMVPNSession *)self interfaceName];
    v13 = v12;
    v14 = "DOWN";
    v17 = 138413058;
    v18 = self;
    if (v6)
    {
      v14 = "UP";
    }

    v19 = 2112;
    v20 = v12;
    v21 = 2080;
    v22 = "[NESMVPNSession isInterfaceIPAvailable:]";
    v23 = 2080;
    v24 = v14;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%@[%@]:%s:: %s", &v17, 0x2Au);
  }

  return v6;
}

- (void)setIsSecondaryConnection:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (v4->_isSecondaryConnection != v3)
  {
    v4->_isSecondaryConnection = v3;
    if ([(NESMVPNSession *)v4 parentType]== 1)
    {
      v5 = [(NESMVPNSession *)v4 pluginConfigurationEntities];

      if (v5)
      {
        [(NESMVPNSession *)v4 requestInstall];
      }

      else
      {
        v6 = ne_log_obj();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          v7 = 138412290;
          v8 = v4;
          _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%@: plugin configuration is not set yet", &v7, 0xCu);
        }
      }
    }
  }

  objc_sync_exit(v4);
}

- (BOOL)isSecondaryConnection
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NESMVPNSession *)v2 type]== 2 || v2->_isSecondaryConnection;
  objc_sync_exit(v2);

  return v3 & 1;
}

- (void)uninstall
{
  v3 = [(NESMVPNSession *)self parentType];
  if (v3 == 1)
  {
    v4 = [(NESMVPNSession *)self parent];
    v5 = self;
    v6 = v5;
    if (v4 && v5 && [(NESMVPNSession *)v5 virtualInterface])
    {
      v7 = [v6 virtualInterface];
      v8 = [v6 interfaceName];
      myCFRetain();
      v9 = [v4 queue];
      *block = _NSConcreteStackBlock;
      *&block[8] = 3221225472;
      *&block[16] = sub_10000D168;
      v33 = &unk_1000EABA0;
      v34 = v4;
      v35 = v8;
      v36 = v7;
      v10 = v8;
      dispatch_async(v9, block);
    }

    goto LABEL_6;
  }

  if (!self || ([(NESMSession *)self policySession], v11 = objc_claimAutoreleasedReturnValue(), v12 = sub_100034060(v11), v11, (v12 & 1) == 0))
  {
    v4 = ne_log_obj();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v6 = [(NESMVPNSession *)self interfaceName];
    *block = 138412802;
    *&block[4] = self;
    *&block[12] = 2112;
    *&block[14] = v6;
    *&block[22] = 2080;
    v33 = "[NESMVPNSession uninstall]";
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%@[%@]:%s: removeTunnelDataPolicy failed", block, 0x20u);
LABEL_6:

LABEL_10:
  }

  if ([(NESMVPNSession *)self virtualInterface])
  {
    v13 = [(NESMSession *)self configuration];
    v14 = [v13 VPN];
    v15 = [v14 protocol];
    if ([v15 type] == 1)
    {
      v16 = 1;
    }

    else
    {
      v21 = [(NESMSession *)self configuration];
      v22 = [v21 VPN];
      v23 = [v22 protocol];
      if ([v23 type] == 2)
      {
        v16 = 1;
      }

      else
      {
        v26 = [(NESMSession *)self configuration];
        [v26 VPN];
        v24 = v27 = v3;
        v25 = [v24 protocol];
        v16 = [v25 type] == 3;

        v3 = v27;
      }
    }

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100020390;
    v30[3] = &unk_1000E9B80;
    v30[4] = self;
    v31 = v16;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000204A8;
    v28[3] = &unk_1000EA9F8;
    v28[4] = self;
    v29 = v3 == 1;
    [(NESMVPNSession *)self queueChangesToTunnelConfiguration:v30 completionHandler:v28];
  }

  else
  {
    if ([(NESMVPNSession *)self parentType]== 2)
    {
      v17 = [(NESMVPNSession *)self parent];
      sub_10009BBB0(v17, self);
    }

    v18 = [(NESMVPNSession *)self stateHandler];
    [v18 handleClearConfigurationResult:1];

    sub_100020644(self);
    sub_10008FD50(self);
    if (v3 != 1)
    {
      v19 = [(NESMSession *)self policySession];
      sub_100030D44(v19);

      if (![(NESMVPNSession *)self virtualInterface])
      {
        v20 = [(NESMSession *)self policySession];
        sub_100030F60(v20);
      }
    }

    sub_100020758(self, 0);
  }
}

- (void)handleNetworkConfigurationChange:(int64_t)a3
{
  v5 = [(NESMSession *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100020B4C;
  v6[3] = &unk_1000EB0D8;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

- (void)queueChangesToTunnelConfiguration:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  if (self)
  {
    Property = objc_getProperty(self, v8, 376, 1);
  }

  else
  {
    Property = 0;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100020D98;
  v13[3] = &unk_1000E9B58;
  v10 = Property;
  objc_copyWeak(&v16, &location);
  v14 = v6;
  v15 = v7;
  v11 = v7;
  v12 = v6;
  dispatch_async(v10, v13);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (int)getVirtualInterfaceMTU:(id)a3
{
  v3 = [a3 MTU];
  v4 = [v3 intValue];

  return v4;
}

- (id)copyTunnelInterfaceName
{
  [(NESMVPNSession *)self virtualInterface];

  return NEVirtualInterfaceCopyName();
}

- (void)install
{
  kdebug_trace();
  if ([(NESMVPNSession *)self virtualInterface]&& ([(NESMVPNSession *)self pluginConfigurationEntities], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    if (!self)
    {
      return;
    }

    v4 = [(NESMVPNSession *)self pluginConfigurationEntities];
    v5 = [v4 tunnelRemoteAddress];
    if (v5)
    {
      v6 = v5;
      v7 = [(NESMVPNSession *)self pluginConfigurationEntities];
      v8 = [v7 tunnelRemoteAddress];
      v9 = NEGetAddressFamilyFromString();

      if (v9)
      {
        v10 = ne_log_obj();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = self;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%@: Starting to set the tunnel configuration", buf, 0xCu);
        }

        if ([(NESMVPNSession *)self parentType]== 1)
        {
          v11 = [(NESMVPNSession *)self parent];
          v12 = self;
          v13 = v12;
          if (v11 && [(NESMVPNSession *)v12 virtualInterface])
          {
            v14 = [v13 virtualInterface];
            myCFRetain();
            v15 = [v11 queue];
            *buf = _NSConcreteStackBlock;
            *&buf[8] = 3221225472;
            *&buf[16] = sub_10000CC60;
            v42 = &unk_1000EABA0;
            v43 = v11;
            v45 = v14;
            v44 = v13;
            dispatch_async(v15, buf);
          }
        }

        else
        {
          v18 = [(NESMSession *)self configuration];
          v19 = [v18 VPN];
          v20 = [v19 protocol];
          v21 = [v20 includeAllNetworks];

          if (v21 && (sub_1000226B4(self) & 1) == 0)
          {
            v22 = ne_log_obj();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v34 = [(NESMVPNSession *)self interfaceName];
              *buf = 138412802;
              *&buf[4] = self;
              *&buf[12] = 2112;
              *&buf[14] = v34;
              *&buf[22] = 2080;
              v42 = "[NESMVPNSession setConfiguration]";
              _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%@[%@]:%s: applyTunnelDataPolicies failed", buf, 0x20u);
            }
          }

          if (sub_100022BCC(self))
          {
            goto LABEL_30;
          }

          v11 = ne_log_obj();
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
LABEL_29:

LABEL_30:
            v23 = [(NESMSession *)self configuration];
            v24 = [v23 VPN];
            v25 = [v24 protocol];
            if ([v25 type] == 1)
            {
              v26 = 1;
            }

            else
            {
              v27 = [(NESMSession *)self configuration];
              v28 = [v27 VPN];
              v29 = [v28 protocol];
              if ([v29 type] == 2)
              {
                v26 = 1;
              }

              else
              {
                v35 = [(NESMSession *)self configuration];
                v30 = [v35 VPN];
                v31 = [v30 protocol];
                v26 = [v31 type] == 3;
              }
            }

            *buf = _NSConcreteStackBlock;
            *&buf[8] = 3221225472;
            *&buf[16] = sub_100022D7C;
            v42 = &unk_1000E9B80;
            v43 = self;
            LOBYTE(v44) = v26;
            [(NESMVPNSession *)self queueChangesToTunnelConfiguration:buf completionHandler:&stru_1000E9BC0];
            v39[0] = _NSConcreteStackBlock;
            v39[1] = 3221225472;
            v39[2] = sub_100023110;
            v39[3] = &unk_1000E9B80;
            v39[4] = self;
            v40 = v26;
            [(NESMVPNSession *)self queueChangesToTunnelConfiguration:v39 completionHandler:&stru_1000E9BE0];
            v36[4] = self;
            v37[0] = _NSConcreteStackBlock;
            v37[1] = 3221225472;
            v37[2] = sub_100023DA8;
            v37[3] = &unk_1000E9B80;
            v37[4] = self;
            v38 = v26;
            v36[0] = _NSConcreteStackBlock;
            v36[1] = 3221225472;
            v36[2] = sub_100024C20;
            v36[3] = &unk_1000EAD98;
            [(NESMVPNSession *)self queueChangesToTunnelConfiguration:v37 completionHandler:v36];
            return;
          }

          v13 = [(NESMVPNSession *)self interfaceName];
          *buf = 138412802;
          *&buf[4] = self;
          *&buf[12] = 2112;
          *&buf[14] = v13;
          *&buf[22] = 2080;
          v42 = "[NESMVPNSession setConfiguration]";
          _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@[%@]:%s: updateDNSSkipPolicies failed", buf, 0x20u);
        }

        goto LABEL_29;
      }
    }

    else
    {
    }

    v16 = ne_log_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@: configuration has invalid tunnel remote address", buf, 0xCu);
    }

    v17 = ne_log_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v32 = [(NESMVPNSession *)self pluginConfigurationEntities];
      v33 = [v32 tunnelRemoteAddress];
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v33;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%@: configuration has invalid tunnel remote address (%@)", buf, 0x16u);
    }

    sub_1000213D8(self, 0);
  }

  else
  {

    sub_1000213D8(self, 1);
  }
}

- (void)requestUninstall
{
  sub_100025718(self);
  if ([(NESMVPNSession *)self parentType]== 2)
  {
    v5 = [(NESMVPNSession *)self parent];
    v3 = self;
    if (v5)
    {
      v4 = [v5 queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10009B8B4;
      block[3] = &unk_1000EB198;
      block[4] = v5;
      v7 = v3;
      dispatch_async(v4, block);
    }
  }

  else
  {
    v5 = [(NESMSession *)self server];
    [v5 requestUninstallForSession:self];
  }
}

- (void)requestInstall
{
  v3 = [(NESMVPNSession *)self pluginConfigurationEntities];
  v4 = [v3 IPv4Settings];
  v5 = [v4 hasDefaultRoute];

  sub_100025718(self);
  v6 = [(NESMVPNSession *)self parent];
  if ([(NESMVPNSession *)self parentType]== 1)
  {
    if (!v6)
    {
      goto LABEL_13;
    }

    v7 = [(NESMSession *)self server];
    v8 = v7;
    v9 = self;
    v10 = v6;
    goto LABEL_9;
  }

  if ([(NESMVPNSession *)self parentType]!= 2)
  {
    v7 = [(NESMSession *)self server];
    v8 = v7;
    v9 = self;
    v10 = 0;
LABEL_9:
    v13 = [v7 requestInstallForSession:v9 withParentSession:v10 exclusive:v5];

    if ((v13 & 1) == 0)
    {
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = [(NESMVPNSession *)self interfaceName];
        *v17 = 138412546;
        *&v17[4] = self;
        *&v17[12] = 2112;
        *&v17[14] = v16;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@: config request: failed to request install [%@]", v17, 0x16u);
      }

      v15 = [NSError errorWithDomain:@"NEAgentErrorDomain" code:1 userInfo:0];
      sub_100020758(self, v15);
    }

    goto LABEL_13;
  }

  v11 = self;
  if (v6)
  {
    v12 = [v6 queue];
    *v17 = _NSConcreteStackBlock;
    *&v17[8] = 3221225472;
    *&v17[16] = sub_10009B3E0;
    v18 = &unk_1000EAC18;
    v21 = v5;
    v19 = v6;
    v20 = v11;
    dispatch_async(v12, v17);
  }

LABEL_13:
}

- (void)setEndpointInEstablishIPCReply:(id)a3 forPlugin:(id)a4
{
  value = a3;
  v7 = a4;
  if (self)
  {
    if (!objc_getProperty(self, v6, 384, 1))
    {
      Property = objc_getProperty(self, v8, 392, 1);
      reply = xpc_dictionary_create_reply(Property);
      objc_setProperty_atomic(self, v11, reply, 384);
    }

    v12 = objc_getProperty(self, v8, 384, 1);
  }

  else
  {

    v12 = 0;
  }

  xpc_dictionary_set_value(v12, "SessionPrimaryPluginEndpoint", value);
  [(NESMVPNSession *)self sendEstablishIPCReply];
}

- (BOOL)shouldSendIPCAttachForPlugin:(id)a3
{
  v4 = a3;
  if (![(NESMVPNSession *)self establishIPCPending])
  {
    goto LABEL_7;
  }

  if (self)
  {
    if (!objc_getProperty(self, v5, 384, 1))
    {
      Property = objc_getProperty(self, v6, 392, 1);
      reply = xpc_dictionary_create_reply(Property);
      objc_setProperty_atomic(self, v9, reply, 384);
    }

    v10 = objc_getProperty(self, v6, 384, 1);
  }

  else
  {

    v10 = 0;
  }

  if (!xpc_dictionary_get_int64(v10, "SessionPrimaryPluginPID"))
  {
    if (self)
    {
      v14 = objc_getProperty(self, v11, 384, 1);
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
    v16 = sub_10001A2D4(v4);
    xpc_dictionary_set_int64(v15, "SessionPrimaryPluginPID", v16);

    v12 = 1;
  }

  else
  {
LABEL_7:
    v12 = 0;
  }

  return v12;
}

- (BOOL)establishIPCPending
{
  if (self)
  {
    self = objc_getProperty(self, a2, 392, 1);
  }

  return self != 0;
}

- (void)sendEstablishIPCReply
{
  if (self)
  {
    if (!objc_getProperty(self, a2, 384, 1))
    {
      Property = objc_getProperty(self, v3, 392, 1);
      reply = xpc_dictionary_create_reply(Property);
      objc_setProperty_atomic(self, v6, reply, 384);
    }

    v7 = objc_getProperty(self, v3, 392, 1);
  }

  else
  {

    v7 = 0;
  }

  v8 = xpc_dictionary_get_remote_connection(v7);
  v10 = v8;
  if (self)
  {
    v11 = objc_getProperty(self, v9, 384, 1);
    xpc_connection_send_message(v10, v11);

    objc_setProperty_atomic(self, v12, 0, 384);
    objc_setProperty_atomic(self, v13, 0, 392);
  }

  else
  {
    xpc_connection_send_message(v8, 0);
  }

  original = [(NESMVPNSession *)self stateHandler];
  [original handleEstablishIPCReplySent];
}

- (void)plugin:(id)a3 didAttachIPCWithEndpoint:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NESMVPNSession *)self stateHandler];
  [v8 handlePlugin:v7 didAttachIPCWithEndpoint:v6];
}

- (void)plugin:(id)a3 didSetConfiguration:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(NESMVPNSession *)self virtualInterface])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __assert_rtn("[NESMVPNSession plugin:didSetConfiguration:completionHandler:]", "NESMVPNSession.m", 1928, "[configuration isKindOfClass:[NEPacketTunnelNetworkSettings class]]");
    }

    [(NESMVPNSession *)self setPluginConfigurationEntities:v9];
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(NESMVPNSession *)self interfaceName];
      v13 = objc_retainBlock(v10);
      v20 = 138412802;
      v21 = self;
      v22 = 2112;
      v23 = v12;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@: Handling set config request: session interface %@ - completionHandler %@", &v20, 0x20u);
    }

    [(NESMVPNSession *)self setPluginCompletionHandler:v10];
    v14 = [(NESMVPNSession *)self stateHandler];
    v15 = [v14 handleSetConfiguration];

    if (v15)
    {
      is_debug_logging_enabled = nelog_is_debug_logging_enabled();
      v17 = ne_log_large_obj();
      v18 = v17;
      if (is_debug_logging_enabled)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v20 = 138412546;
          v21 = self;
          v22 = 2112;
          v23 = v9;
          _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%@: plugin set tunnel network settings: %@", &v20, 0x16u);
        }
      }

      else if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v19 = [v9 descriptionWithIndent:0 options:2];
        v20 = 138412546;
        v21 = self;
        v22 = 2112;
        v23 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%@: plugin set tunnel network settings: %@", &v20, 0x16u);
      }

      goto LABEL_13;
    }

    [(NESMVPNSession *)self setPluginConfigurationEntities:0];
    if (v10)
    {
      v18 = [NSError errorWithDomain:@"NEAgentErrorDomain" code:1 userInfo:0];
      (*(v10 + 2))(v10, v18);
      [(NESMVPNSession *)self setPluginCompletionHandler:0];
LABEL_13:
    }
  }
}

- (void)setDelegateInterfaceName:(id)a3
{
  v4 = a3;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v10 = self;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@: manager set delegate interface name to %@", buf, 0x16u);
  }

  if ([(NESMVPNSession *)self virtualInterface])
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100026374;
    v7[3] = &unk_1000E9AE8;
    v7[4] = self;
    v8 = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10002655C;
    v6[3] = &unk_1000EAD98;
    v6[4] = self;
    [(NESMVPNSession *)self queueChangesToTunnelConfiguration:v7 completionHandler:v6];
  }
}

- (void)plugin:(id)a3 didInitializeWithUUIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412802;
    v10 = self;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: Plugin %@ initialized with Mach-O UUIDs %@", &v9, 0x20u);
  }

  [(NESMVPNSession *)self addDefaultDropPolicyForPluginUUIDs:v7];
}

- (void)plugin:(id)a3 didRequestVirtualInterfaceWithParameters:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [v8 type];
  kdebug_trace();
  v11 = ne_log_obj();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Creating a virtual interface with type %ld", buf, 0xCu);
  }

  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_100027870;
  v56[3] = &unk_1000EB1C0;
  v56[4] = self;
  v12 = objc_retainBlock(v56);
  if ((v10 - 1) > 1)
  {
    if (v10 == 3)
    {
      v18 = [v8 ethernetAddress];
      if (v18)
      {
        v19 = v18;
        v20 = [v8 mtu];

        if (v20)
        {
          v49[0] = _NSConcreteStackBlock;
          v49[1] = 3221225472;
          v50 = sub_100027A6C;
          v51 = &unk_1000E9AC0;
          v52 = self;
          v21 = v8;
          v53 = v21;
          v54 = v12;
          v55 = v9;
          v22 = v49;
          if (v21)
          {
            if ([v21 type] == 3)
            {
              v23 = [v21 ethernetAddress];
              if (v23)
              {
                v24 = v23;
                v25 = [v21 mtu];

                if (v25)
                {
                  v60[0] = @"Product Name";
                  v60[1] = kIOUserEthernetInterfaceRole;
                  *buf = @"TAP network interface";
                  *&buf[8] = @"TAP";
                  v60[2] = @"HiddenInterface";
                  v60[3] = @"IsEphemeral";
                  *&buf[16] = &__kCFBooleanTrue;
                  v62 = &__kCFBooleanTrue;
                  v26 = [NSDictionary dictionaryWithObjects:buf forKeys:v60 count:4];
                  v58[0] = kIOEthernetHardwareAddress;
                  v27 = [v21 ethernetAddress];
                  v59[0] = v27;
                  v58[1] = @"MaxTransferUnit";
                  v28 = [v21 mtu];
                  v59[1] = v28;
                  v59[2] = @"utap";
                  v58[2] = @"NamePrefix";
                  v58[3] = kIOUserEthernetInterfaceMergeProperties;
                  v59[3] = v26;
                  v29 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:4];

                  v30 = IOEthernetControllerCreate();
                  if (v30)
                  {
                    v31 = v30;
                    v32 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
                    v33 = dispatch_queue_create("User Ethernet Controller queue", v32);

                    IOEthernetControllerSetDispatchQueue();
                    v34 = objc_alloc_init(_NECompletion);
                    p_isa = &v34->super.isa;
                    if (v34)
                    {
                      objc_setProperty_nonatomic_copy(v34, v35, v22, 16);
                      objc_storeStrong(p_isa + 1, a4);
                    }

                    v37 = p_isa;
                    IOEthernetControllerRegisterBSDAttachCallback();
                    if (IOEthernetControllerSetLinkStatus())
                    {
                      v38 = ne_log_obj();
                      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                      {
                        *v57 = 0;
                        _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Failed to bring up the user ethernet link", v57, 2u);
                      }

                      IOEthernetControllerSetDispatchQueue();
                      CFRelease(v31);
                      sub_100092B48(0, v37);
                    }
                  }

                  else
                  {
                    v45 = ne_log_obj();
                    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                    {
                      *v57 = 0;
                      _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "Failed to create a ethernet controller", v57, 2u);
                    }

                    v50(v22, 0);
                  }

                  goto LABEL_41;
                }
              }

              v41 = ne_log_obj();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
              {
                v46 = [v21 ethernetAddress];
                v47 = [v21 mtu];
                *buf = 134218240;
                *&buf[4] = v46;
                *&buf[12] = 2048;
                *&buf[14] = v47;
                _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Cannot create a user ethernet interface without an ethernet address (%p) or an MTU (%p)", buf, 0x16u);
              }
            }

            else
            {
              v41 = ne_log_obj();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
              {
                v42 = [v21 type];
                *buf = 134217984;
                *&buf[4] = v42;
                _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Wrong type for creating a user ethernet interface: %ld", buf, 0xCu);
              }
            }

            v50(v22, 0);
          }

LABEL_41:

          goto LABEL_35;
        }
      }

      v40 = ne_log_obj();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v43 = [v8 ethernetAddress];
        v44 = [v8 mtu];
        *buf = 134218240;
        *&buf[4] = v43;
        *&buf[12] = 2048;
        *&buf[14] = v44;
        _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Cannot create a user ethernet interface without a ethernet address (%p) or an MTU (%p)", buf, 0x16u);
      }
    }

    else
    {
      v40 = ne_log_obj();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = v10;
        _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Cannot create a virtual interface with unknown type %ld", buf, 0xCu);
      }
    }

    (*(v9 + 2))(v9, 0);
    goto LABEL_35;
  }

  if (v10 == 1 && [(NESMVPNSession *)self type]== 2)
  {
    v13 = [(NESMVPNSession *)self primaryTunnelPlugin];
    v15 = v13;
    if (v13)
    {
      Property = objc_getProperty(v13, v14, 24, 1);
      if (Property)
      {
        v17 = Property[5];
      }
    }
  }

  v39 = [(NESMSession *)self queue];
  LODWORD(v48) = 0;
  [(NESMVPNSession *)self setVirtualInterface:NEVirtualInterfaceCreateNexusExtended(), 0, v48, 0];

  if ([(NESMVPNSession *)self virtualInterface])
  {
    [(NESMVPNSession *)self virtualInterface];
    NEVirtualInterfaceEnableFlowswitch();
    if (v10 == 1)
    {
      [(NESMVPNSession *)self virtualInterface];
      NEVirtualInterfaceSetMaxPendingPackets();
    }

    (v12[2])(v12);
  }

  (*(v9 + 2))(v9, [(NESMVPNSession *)self virtualInterface]);
LABEL_35:
}

- (void)pluginDidClearConfiguration:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = ne_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v10 = [(NESMVPNSession *)self interfaceName];
    v11 = 138412546;
    v12 = self;
    v13 = 2112;
    v14 = v10;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%@: Handling clear config request: session interface %@", &v11, 0x16u);
  }

  [(NESMVPNSession *)self setPluginCompletionHandler:v5];
  v7 = [(NESMVPNSession *)self stateHandler];
  v8 = [v7 handleClearConfiguration];

  if (v8)
  {
    [(NESMVPNSession *)self setPluginConfigurationEntities:0];
  }

  else if (v5)
  {
    v9 = [NSError errorWithDomain:@"NEAgentErrorDomain" code:1 userInfo:0];
    v5[2](v5, v9);
    [(NESMVPNSession *)self setPluginCompletionHandler:0];
  }
}

- (void)plugin:(id)a3 didSetStatus:(int)a4 andDisconnectError:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (a4 != 6 && a4)
  {
    v13 = 0;
    goto LABEL_52;
  }

  if (!v9)
  {
    v13 = 3;
    goto LABEL_50;
  }

  v11 = [v9 domain];
  v12 = [v11 isEqualToString:@"NEAgentErrorDomain"];

  if (v12)
  {
    if ([v10 code] == 2)
    {
      v13 = 6;
    }

    else if ([v10 code] == 1)
    {
      v13 = 7;
    }

    else
    {
      v13 = 3;
    }

    goto LABEL_49;
  }

  v14 = [v10 domain];
  v15 = [v14 isEqualToString:kCFErrorDomainVPNTunnel];

  if (!v15)
  {
    v17 = [v10 domain];
    v18 = [v17 isEqualToString:@"IKEv2ProviderDisconnectionErrorDomain"];

    if (v18)
    {
      v13 = [v10 code];
      goto LABEL_49;
    }

LABEL_48:
    v13 = 3;
    goto LABEL_49;
  }

  v16 = [v10 code];
  if (v16 <= 107)
  {
    if (v16 > 102)
    {
      if (v16 <= 104)
      {
        if (v16 == 103)
        {
          v13 = 17;
        }

        else
        {
          v13 = 18;
        }
      }

      else if (v16 == 105)
      {
        v13 = 19;
      }

      else if (v16 == 106)
      {
        v13 = 20;
      }

      else
      {
        v13 = 21;
      }

      goto LABEL_49;
    }

    if (v16 > 99)
    {
      if (v16 == 100)
      {
        v13 = 10;
      }

      else if (v16 == 101)
      {
        v13 = 15;
      }

      else
      {
        v13 = 16;
      }

      goto LABEL_49;
    }

    if (v16 == 1)
    {
      v13 = 7;
      goto LABEL_49;
    }

    if (v16 == 2)
    {
      v13 = 14;
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  if (v16 <= 400)
  {
    if (v16 <= 200)
    {
      if (v16 == 108)
      {
        v13 = 22;
        goto LABEL_49;
      }

      if (v16 == 200)
      {
        v13 = 4;
        goto LABEL_49;
      }
    }

    else
    {
      switch(v16)
      {
        case 201:
          v13 = 5;
          goto LABEL_49;
        case 300:
          v13 = 23;
          goto LABEL_49;
        case 400:
          v13 = 24;
          goto LABEL_49;
      }
    }

    goto LABEL_48;
  }

  if (v16 > 499)
  {
    switch(v16)
    {
      case 500:
        v13 = 28;
        goto LABEL_49;
      case 501:
        v13 = 29;
        goto LABEL_49;
      case 502:
        v13 = 30;
        goto LABEL_49;
    }

    goto LABEL_48;
  }

  if (v16 == 401)
  {
    v13 = 25;
    goto LABEL_49;
  }

  if (v16 == 402)
  {
    v13 = 26;
    goto LABEL_49;
  }

  if (v16 != 403)
  {
    goto LABEL_48;
  }

  v13 = 27;
LABEL_49:
  [(NESMVPNSession *)self setLastDisconnectError:v10];
LABEL_50:
  if (![(NESMVPNSession *)self stopped])
  {
    [(NESMVPNSession *)self setStopped:[(NESMVPNSession *)self pluginStopReasonStopsSession:v13]];
  }

LABEL_52:
  v19 = v8;
  v37 = v19;
  if (!self)
  {
    goto LABEL_81;
  }

  v20 = ne_log_obj();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v39 = self;
    v40 = 1024;
    LODWORD(v41) = a4;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%@: didSetStatus - %d", buf, 0x12u);
  }

  if (a4 > 3)
  {
    v19 = v37;
    if (a4 > 5)
    {
      if (a4 == 6)
      {
        v21 = [(NESMVPNSession *)self stateHandler];
        [v21 handlePlugin:v37 statusDidChangeToDisconnectingWithReason:v13];
      }

      else
      {
        if (a4 != 7)
        {
          goto LABEL_81;
        }

        v21 = [(NESMVPNSession *)self stateHandler];
        [v21 handlePluginStatusDidChangeToUpdating:v37];
      }
    }

    else
    {
      [(NESMVPNSession *)self stateHandler];
      if (a4 == 4)
        v21 = {;
        [v21 handlePluginStatusDidChangeToConnected:v37];
      }

      else
        v21 = {;
        [v21 handlePluginStatusDidChangeToReasserting:v37];
      }
    }
  }

  else
  {
    v19 = v37;
    if (a4 > 1)
    {
      [(NESMVPNSession *)self stateHandler];
      if (a4 == 2)
        v21 = {;
        [v21 handlePluginStatusDidChangeToAuthenticating:v37];
      }

      else
        v21 = {;
        [v21 handlePluginStatusDidChangeToNegotiating:v37];
      }

      goto LABEL_80;
    }

    if (a4)
    {
      if (a4 != 1)
      {
        goto LABEL_81;
      }

      v21 = [(NESMVPNSession *)self stateHandler];
      [v21 handlePluginStatusDidChangeToContacting:v37];
      goto LABEL_80;
    }

    v22 = [(NESMVPNSession *)self stateHandler];
    [v22 handlePlugin:v37 statusDidChangeToDisconnectedWithReason:v13];

    v23 = [(NESMSession *)self configuration];
    v24 = [(CoreTelephonyClient *)v23 appVPN];
    if (v24)
    {
      v25 = v24;
      v26 = [(NESMSession *)self configuration];
      v27 = [v26 appVPN];
      v28 = [v27 protocol];
      v21 = [v28 sliceUUID];

      if (!v21)
      {
        goto LABEL_80;
      }

      v29 = self->_coreTelephonyClient;
      if (!v29)
      {
        goto LABEL_80;
      }

      v31 = v29;
      Property = objc_getProperty(self, v30, 496, 1);

      if (!Property)
      {
        goto LABEL_80;
      }

      v33 = ne_log_obj();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v35 = objc_getProperty(self, v34, 496, 1);
        *buf = 138412802;
        v39 = self;
        v40 = 2112;
        v41 = v21;
        v42 = 2112;
        v43 = v35;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%@: VPN Slice deactivate - sliceUUID %@ : sliceInterfaceName %@ ", buf, 0x20u);
      }

      v23 = self->_coreTelephonyClient;
      [(CoreTelephonyClient *)v23 requestSliceDeactivation:objc_getProperty(self, v36, 496, 1)];
    }

    else
    {
      v21 = 0;
    }
  }

LABEL_80:

  v19 = v37;
LABEL_81:
}

- (void)pluginDidDetachIPC:(id)a3
{
  v4 = a3;
  v5 = [(NESMVPNSession *)self stateHandler];
  [v5 handlePluginDidDetachIPC:v4];
}

- (void)pluginDidAcknowledgeSleep:(id)a3
{
  if ([(NESMVPNSession *)self parentType]== 2)
  {
    v5 = [(NESMVPNSession *)self parent];
    sub_10009A9A8(v5);
  }

  else
  {
    v5 = [(NESMSession *)self server];
    sub_100059ED4(v5, v4);
  }
}

- (void)pluginDidDispose:(id)a3
{
  v4 = a3;
  v5 = [(NESMVPNSession *)self stateHandler];
  [v5 handlePluginDisposeComplete:v4];

  if ([(NESMVPNSession *)self parentType]== 1)
  {
    v9 = [(NESMVPNSession *)self parent];
    v6 = self;
    if (v9 && v6)
    {
      v7 = [v9 queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000D3FC;
      block[3] = &unk_1000EB198;
      block[4] = v9;
      v12 = v6;
      dispatch_async(v7, block);
    }
  }

  else
  {
    v8 = [(NESMSession *)self queue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10002866C;
    v10[3] = &unk_1000EB1C0;
    v10[4] = self;
    dispatch_async(v8, v10);
  }
}

- (void)handleChangeEventForRankedInterfaces
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NESMVPNSession *)self stopped];
    [(NESMSession *)self status];
    v5 = ne_session_status_to_string();
    v6 = [(NESMSession *)self configuration];
    v7 = [v6 VPN];
    v8 = [v7 protocol];
    v15 = 138413058;
    v16 = self;
    v17 = 1024;
    *v18 = v4;
    *&v18[4] = 2080;
    *&v18[6] = v5;
    *&v18[14] = 1024;
    *&v18[16] = [v8 includeAllNetworks];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@: handleChangeEventForRankedInterfaces - stopped %d status %s includeAllNetworks %d", &v15, 0x22u);
  }

  if (![(NESMVPNSession *)self stopped]&& [(NESMSession *)self status]== 3)
  {
    v9 = [(NESMSession *)self configuration];
    v10 = [v9 VPN];
    v11 = [v10 protocol];
    v12 = [v11 includeAllNetworks];

    if (v12)
    {
      if ((sub_1000226B4(self) & 1) == 0)
      {
        v13 = ne_log_obj();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = [(NESMVPNSession *)self interfaceName];
          v15 = 138412802;
          v16 = self;
          v17 = 2112;
          *v18 = v14;
          *&v18[8] = 2080;
          *&v18[10] = "[NESMVPNSession handleChangeEventForRankedInterfaces]";
          _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@[%@]:%s: applyTunnelDataPolicies failed", &v15, 0x20u);
        }
      }
    }
  }
}

- (void)handleCaptiveNetworkPluginsChanged
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@: handleCaptiveNetworkPluginsChanged", &v4, 0xCu);
  }

  sub_10001DC34(self);
}

- (void)handleNetworkDetectionNotification:(int)a3
{
  if (a3 <= 1)
  {
    v10 = v3;
    v11 = v4;
    v7 = [(NESMSession *)self queue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100028A34;
    v8[3] = &unk_1000EB338;
    v8[4] = self;
    v9 = a3;
    dispatch_async(v7, v8);
  }
}

- (void)handleNetworkPrepareResult:(id)a3
{
  v6.receiver = self;
  v6.super_class = NESMVPNSession;
  v4 = a3;
  [(NESMSession *)&v6 handleNetworkPrepareResult:v4];
  v5 = [(NESMVPNSession *)self stateHandler:v6.receiver];
  [v5 handleNetworkPrepareResult:v4];
}

- (void)handleChangeEventForInterface:(id)a3 newFlags:(unint64_t)a4 previousFlags:(unint64_t)a5
{
  v8 = a3;
  v14.receiver = self;
  v14.super_class = NESMVPNSession;
  [(NESMSession *)&v14 handleChangeEventForInterface:v8 newFlags:a4 previousFlags:a5];
  v9 = [(NESMSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100028C78;
  block[3] = &unk_1000EABA0;
  block[4] = self;
  v12 = v8;
  v13 = a4;
  v10 = v8;
  dispatch_async(v9, block);
}

- (BOOL)proxyEnabled:(id)a3
{
  v3 = a3;
  if (SCDynamicStoreCopyProxiesWithOptions())
  {
    v4 = SCNetworkProxiesCopyMatching();
    ValueAtIndex = v4;
    if (v4)
    {
      if (CFArrayGetCount(v4) < 1)
      {
        goto LABEL_15;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, 0);
      if (ValueAtIndex)
      {
        if (NEGetIntFromDictionary() || NEGetIntFromDictionary() || NEGetIntFromDictionary() || NEGetIntFromDictionary() || NEGetIntFromDictionary() || NEGetIntFromDictionary() || NEGetIntFromDictionary() || NEGetIntFromDictionary())
        {
          LOBYTE(ValueAtIndex) = 1;
          goto LABEL_16;
        }

LABEL_15:
        LOBYTE(ValueAtIndex) = 0;
      }
    }

LABEL_16:
    myCFRelease();
    myCFRelease();
    goto LABEL_17;
  }

  LOBYTE(ValueAtIndex) = 0;
LABEL_17:

  return ValueAtIndex;
}

- (id)pluginPIDArray
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(NESMVPNSession *)self primaryTunnelPlugin];
  if (v4)
  {
    v5 = v4;
    v6 = [(NESMVPNSession *)self primaryTunnelPlugin];
    v7 = sub_10001A2D4(v6);

    if (v7)
    {
      v8 = [(NESMVPNSession *)self primaryTunnelPlugin];
      v9 = [NSNumber numberWithInt:sub_10001A2D4(v8)];
      [v3 addObject:v9];
    }
  }

  v10 = [(NESMVPNSession *)self authenticationPlugin];
  if (v10)
  {
    v11 = v10;
    v12 = [(NESMVPNSession *)self authenticationPlugin];
    v13 = sub_10001A2D4(v12);

    if (v13)
    {
      v14 = [(NESMVPNSession *)self authenticationPlugin];
      v15 = [NSNumber numberWithInt:sub_10001A2D4(v14)];
      [v3 addObject:v15];
    }
  }

  return v3;
}

- (BOOL)interface:(id)a3 hasIPAddress:(id)a4 currentFlags:(unint64_t)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = NEGetAddressFamilyFromString();
  v11 = v10;
  if ((v5 & 1) == 0 && v10 == 2)
  {
LABEL_3:
    v12 = 0;
    goto LABEL_4;
  }

  v12 = 0;
  v15 = (v5 & 2) == 0 && v10 == 30;
  if (v10 && !v15)
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    BYTE1(v29) = v10;
    strncpy(__dst, [v8 UTF8String], 0xFuLL);
    v16 = socket(v11, 2, 0);
    v17 = ioctl(v16, 0xC0206921uLL, __dst);
    close(v16);
    if (v17 < 0)
    {
      v20 = ne_log_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = __error();
        v22 = strerror(*v21);
        *buf = 138412546;
        v24 = self;
        v25 = 2080;
        v26 = v22;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%@: ioctl(SIOCGIFADDR) failed: %s", buf, 0x16u);
      }
    }

    else
    {
      v18 = NECreateAddressString();
      if (v18)
      {
        v19 = v18;
        v12 = [v9 isEqualToString:v18];
        CFRelease(v19);
        goto LABEL_4;
      }
    }

    goto LABEL_3;
  }

LABEL_4:

  return v12;
}

- (void)handleUserSwitch
{
  v3 = [(NESMSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100029674;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)handleUserLogout
{
  v3 = [(NESMSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002975C;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)handleWakeup
{
  v3 = [(NESMSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100029840;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)handleSleepTime:(double)a3
{
  v5 = [(NESMSession *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100029934;
  v6[3] = &unk_1000EB0D8;
  v6[4] = self;
  *&v6[5] = a3;
  dispatch_async(v5, v6);
}

- (BOOL)handleSleep
{
  v3 = [(NESMSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100029A80;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(v3, block);

  return 1;
}

- (id)copyExtendedStatus
{
  v3 = [NSMutableDictionary alloc];
  v78.receiver = self;
  v78.super_class = NESMVPNSession;
  v4 = [(NESMSession *)&v78 copyExtendedStatus];
  v5 = [v3 initWithDictionary:v4];

  v6 = objc_alloc_init(NSMutableDictionary);
  v7 = objc_alloc_init(NSMutableDictionary);
  if ([(NESMVPNSession *)self virtualInterface])
  {
    [(NESMVPNSession *)self virtualInterface];
    v73 = NEVirtualInterfaceCopyVPNServerAddress();
    v8 = [(NESMSession *)self configuration];
    v9 = [v8 VPN];
    v10 = [v9 protocol];
    if ([v10 type] != 1)
    {
      v63 = v6;
      v16 = [(NESMSession *)self configuration];
      v17 = [v16 VPN];
      v18 = [v17 protocol];
      if ([v18 type] != 2)
      {
        v72 = [(NESMSession *)self configuration];
        [v72 VPN];
        v19 = v66 = v7;
        [v19 protocol];
        v20 = v76 = v16;
        [v20 type];

        v16 = v76;
        v7 = v66;
      }

      v6 = v63;
    }

    [(NESMVPNSession *)self virtualInterface];
    v75 = NEVirtualInterfaceCopyIPStateDictionary();
    [(NESMVPNSession *)self virtualInterface];
    v12 = NEVirtualInterfaceCopyIPStateDictionary();
    [(NESMVPNSession *)self virtualInterface];
    v13 = NEVirtualInterfaceCopyDNSDomain();
    [(NESMVPNSession *)self virtualInterface];
    v71 = NEVirtualInterfaceCopyDNSServers();
    [(NESMVPNSession *)self virtualInterface];
    v14 = NEVirtualInterfaceCopyDNSSearchDomains();
    [(NESMVPNSession *)self virtualInterface];
    matched = NEVirtualInterfaceCopyDNSSupplementalMatchDomains();
    v11 = v73;
    if (v73)
    {
      [v6 setObject:v73 forKeyedSubscript:@"RemoteAddress"];
    }
  }

  else
  {
    v11 = 0;
    v75 = 0;
    v12 = 0;
    v13 = 0;
    v71 = 0;
    v14 = 0;
    matched = 0;
  }

  v74 = v11;
  if ([(NESMSession *)self status]== 3)
  {
    v21 = [NSNumber numberWithUnsignedLongLong:[(NESMSession *)self connectTime]];
    v22 = @"ConnectTime";
  }

  else
  {
    if ([(NESMSession *)self status]== 2)
    {
      goto LABEL_15;
    }

    v21 = [NSNumber numberWithInt:[(NESMSession *)self lastStopReason]];
    v22 = @"LastCause";
  }

  [v6 setObject:v21 forKeyedSubscript:v22];

LABEL_15:
  v70 = matched;
  if ((sub_10008AA94(self) & 1) != 0 || sub_10008AB9C(self))
  {
    v23 = [(NESMSession *)self matchedRule];

    if (v23)
    {
      [(NESMSession *)self matchedRule];
      v24 = v13;
      v26 = v25 = v7;
      v27 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v26 action]);
      [v6 setObject:v27 forKeyedSubscript:@"OnDemandAction"];

      v7 = v25;
      v13 = v24;
    }
  }

  [v5 setObject:v6 forKeyedSubscript:@"VPN"];
  v28 = [NSNumber numberWithInteger:[(NESMVPNSession *)self state]];
  [v5 setObject:v28 forKeyedSubscript:@"SessionState"];

  v29 = [NSNumber numberWithInt:[(NESMSession *)self status]];
  [v5 setObject:v29 forKeyedSubscript:@"NEStatus"];

  v30 = [NSNumber numberWithInt:[(NESMSession *)self SCNCStatus]];
  [v5 setObject:v30 forKeyedSubscript:@"Status"];

  if (v75)
  {
    v31 = [v75 objectForKeyedSubscript:@"IsNULL"];
    v32 = v31;
    if (!v31 || ([v31 BOOLValue] & 1) == 0)
    {
      [v5 setObject:v75 forKeyedSubscript:@"IPv4"];
    }
  }

  if (v12)
  {
    v33 = [v12 objectForKeyedSubscript:@"IsNULL"];
    v34 = v33;
    if (!v33 || ([v33 BOOLValue] & 1) == 0)
    {
      [v5 setObject:v12 forKeyedSubscript:@"IPv6"];
    }
  }

  v68 = v12;
  v35 = [NSNumber numberWithInteger:[(NESMSession *)self connectCount]];
  [v7 setObject:v35 forKeyedSubscript:@"ConnectCount"];

  v36 = [NSNumber numberWithInteger:[(NESMSession *)self connectedCount]];
  [v7 setObject:v36 forKeyedSubscript:@"ConnectedCount"];

  v37 = [NSNumber numberWithInteger:[(NESMSession *)self disconnectedCount]];
  [v7 setObject:v37 forKeyedSubscript:@"DisconnectedCount"];

  v38 = [NSNumber numberWithUnsignedLongLong:[(NESMSession *)self maxConnectTime]];
  [v7 setObject:v38 forKeyedSubscript:@"MaxConnectTime"];

  v39 = v74;
  v69 = v14;
  if ([(NESMVPNSession *)self parentType]== 1)
  {
    v64 = v13;
    v40 = v6;
    v41 = [(NESMVPNSession *)self parent];
    v43 = self;
    if (v41)
    {
      Property = objc_getProperty(v41, v42, 408, 1);
      v45 = -1;
      if (v43 && Property)
      {
        v67 = v7;
        v46 = [(NESMVPNSession *)v43 interfaceName];

        if (v46)
        {
          v48 = objc_getProperty(v41, v47, 408, 1);
          v49 = [(NESMVPNSession *)v43 interfaceName];
          v50 = [v48 objectForKeyedSubscript:v49];

          if (v50)
          {
            v45 = v50[1];
          }

          else
          {
            v45 = -1;
          }
        }

        v7 = v67;
      }
    }

    else
    {
      v45 = 0;
    }

    v51 = [NSNumber numberWithInteger:v45];
    [v7 setObject:v51 forKeyedSubscript:@"RetryInterval"];

    v6 = v40;
    v39 = v74;
    v13 = v64;
    v14 = v69;
    matched = v70;
  }

  [v5 setObject:v7 forKeyedSubscript:@"ConnectionStatistics"];
  v52 = [(NESMSession *)self lastDisconnectError];
  if (v52)
  {
    v53 = v13;
    v54 = v39;
    v77 = 0;
    v55 = [NSKeyedArchiver archivedDataWithRootObject:v52 requiringSecureCoding:1 error:&v77];
    v56 = v77;
    if (v55)
    {
      [v5 setObject:v55 forKeyedSubscript:@"LastDisconnectError"];
    }

    else
    {
      v65 = v6;
      v57 = ne_log_obj();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v80 = v56;
        _os_log_error_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "Failed to serialize the last disconnect error: %@", buf, 0xCu);
      }

      v6 = v65;
    }

    v39 = v54;
    v13 = v53;
    v14 = v69;
    matched = v70;
  }

  v58 = v39;
  v59 = [(NESMSession *)self lastStatusChangeTime];

  if (v59)
  {
    v60 = [(NESMSession *)self lastStatusChangeTime];
    [v5 setObject:v60 forKeyedSubscript:@"LastStatusChangeTime"];
  }

  if (v71)
  {
    [v5 setObject:v71 forKeyedSubscript:@"DNSServers"];
  }

  if (v13)
  {
    [v5 setObject:v13 forKeyedSubscript:@"DNSDomain"];
  }

  if (v14)
  {
    [v5 setObject:v14 forKeyedSubscript:@"DNSSearchDomains"];
  }

  if (matched)
  {
    [v5 setObject:matched forKeyedSubscript:@"DNSSupplementalMatchDomains"];
  }

  [(NESMVPNSession *)self virtualInterface];
  v61 = [NSNumber numberWithUnsignedChar:NEVirtualInterfaceIsPrimary()];
  [v5 setObject:v61 forKeyedSubscript:@"IsPrimaryInterface"];

  return v5;
}

- (id)copyStatistics
{
  if (![(NESMVPNSession *)self virtualInterface])
  {
    return 0;
  }

  [(NESMVPNSession *)self virtualInterface];
  v3 = NEVirtualInterfaceCopyStatistics();
  v4 = v3;
  if (v3)
  {
    v7 = @"VPN";
    v8 = v3;
    v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)handleGetInfoMessage:(id)a3 withType:(int)a4
{
  xdict = a3;
  reply = xpc_dictionary_create_reply(xdict);
  if (a4 == 2)
  {
    v7 = [(NESMVPNSession *)self copyExtendedStatus];
  }

  else
  {
    if (a4 != 1)
    {
      goto LABEL_7;
    }

    v7 = [(NESMVPNSession *)self copyStatistics];
  }

  v8 = v7;
  if (v7)
  {
    v9 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(reply, "SessionInfo", v9);
  }

LABEL_7:
  v10 = xpc_dictionary_get_remote_connection(xdict);
  xpc_connection_send_message(v10, reply);
}

- (void)handleEstablishIPCMessage:(id)a3
{
  v4 = a3;
  v5 = [(NESMVPNSession *)self protocol];
  v6 = [(NESMSession *)self status];
  v7 = xpc_dictionary_get_remote_connection(v4);
  if (!v6)
  {
    reply = xpc_dictionary_create_reply(v4);
    xpc_connection_send_message(v7, reply);

    goto LABEL_20;
  }

  v8 = xpc_connection_copy_entitlement_value();

  if (!v8 || xpc_get_type(v8) != &_xpc_type_array || (NEGetEntitlement() & 3) == 0)
  {
    goto LABEL_10;
  }

  v9 = xpc_dictionary_get_remote_connection(v4);
  v10 = xpc_connection_copy_entitlement_value();

  if (!v10 || xpc_get_type(v10) != &_xpc_type_string)
  {
    v11 = xpc_dictionary_get_remote_connection(v4);
    v12 = xpc_connection_copy_entitlement_value();

    v10 = v12;
    if (!v12)
    {
      goto LABEL_9;
    }
  }

  if (xpc_get_type(v10) != &_xpc_type_string || ([NSString stringWithUTF8String:xpc_string_get_string_ptr(v10)], v27 = objc_claimAutoreleasedReturnValue(), NEGetBundleIdentifierFromAppID(), v28 = objc_claimAutoreleasedReturnValue(), v27, !v28))
  {
LABEL_9:

    goto LABEL_10;
  }

  v29 = [v5 pluginType];
  if (!v29)
  {

    goto LABEL_9;
  }

  v30 = v29;
  v31 = [v5 pluginType];
  v32 = [v28 hasPrefix:v31];

  if (v32)
  {
    goto LABEL_23;
  }

LABEL_10:
  v13 = xpc_dictionary_get_remote_connection(v4);
  v14 = xpc_connection_copy_entitlement_value();

  if (v14 && xpc_get_type(v14) == &_xpc_type_BOOL && xpc_BOOL_get_value(v14))
  {
    v8 = v14;
    goto LABEL_23;
  }

  v15 = xpc_dictionary_get_remote_connection(v4);
  v8 = xpc_connection_copy_entitlement_value();

  if (v8)
  {
    if (xpc_get_type(v8) == &_xpc_type_string)
    {
      string_ptr = xpc_string_get_string_ptr(v8);
      if (string_ptr)
      {
        if (!strcmp(string_ptr, "super"))
        {
LABEL_23:
          if (![(NESMVPNSession *)self establishIPCPending])
          {
            v22 = xpc_dictionary_get_remote_connection(v4);
            v23 = [NSNumber numberWithUnsignedInt:xpc_connection_get_euid(v22)];
            [(NESMSession *)self setUID:v23];

            if (self)
            {
              objc_setProperty_atomic(self, v24, v4, 392);
            }

            v17 = [(NESMVPNSession *)self stateHandler];
            [v17 handleEstablishIPC];
            goto LABEL_18;
          }

          v16 = ne_log_obj();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v21 = xpc_dictionary_get_remote_connection(v4);
            v33 = 138412546;
            v34 = self;
            v35 = 1024;
            pid = xpc_connection_get_pid(v21);
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@: cannot establish IPC with %d because IPC is already in the process of being established", &v33, 0x12u);
LABEL_30:

            goto LABEL_17;
          }

          goto LABEL_17;
        }
      }
    }
  }

  v16 = ne_log_obj();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v21 = xpc_dictionary_get_remote_connection(v4);
    v25 = xpc_connection_get_pid(v21);
    v26 = [v5 pluginType];
    v33 = 138412802;
    v34 = self;
    v35 = 1024;
    pid = v25;
    v37 = 2112;
    v38 = v26;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@: process %d is not entitled to establish IPC with plugins of type %@", &v33, 0x1Cu);

    goto LABEL_30;
  }

LABEL_17:

  v17 = xpc_dictionary_get_remote_connection(v4);
  v18 = xpc_dictionary_create_reply(v4);
  xpc_connection_send_message(v17, v18);

LABEL_18:
LABEL_20:
}

- (void)handleStartMessage:(id)a3
{
  v4 = a3;
  [(NESMVPNSession *)self setLastStartMessage:v4];
  [(NESMVPNSession *)self setStopped:0];
  v5 = [(NESMSession *)self configuration];
  v6 = [v5 externalIdentifier];
  if (!v6)
  {

LABEL_7:
    if ([(NESMVPNSession *)self parentType]!= 1)
    {
      sub_10001DC34(self);
    }

    if ([(NESMVPNSession *)self state]!= 9)
    {
      v24.receiver = self;
      v24.super_class = NESMVPNSession;
      [(NESMSession *)&v24 handleStartMessage:v4];
    }

    v10 = xpc_dictionary_get_value(v4, "SessionOptions");
    v11 = [(NESMVPNSession *)self primaryTunnelPlugin];
    if (v11)
    {
      goto LABEL_12;
    }

    if (!v10 || xpc_get_type(v10) != &_xpc_type_dictionary || !xpc_dictionary_get_BOOL(v10, "test-agent"))
    {
      goto LABEL_13;
    }

    v11 = xpc_dictionary_get_remote_connection(v4);
    if (v11)
    {
      v12 = xpc_connection_copy_entitlement_value();
      v13 = v12;
      if (v12 && xpc_get_type(v12) == &_xpc_type_BOOL)
      {
        value = xpc_BOOL_get_value(v13);

        if (value)
        {
          v17 = [NETestAgent alloc];
          v18 = [(NESMSession *)self configuration];
          v19 = [v18 pluginType];
          v20 = sub_100075628(&v17->super.super.isa, v19, [(NESMVPNSession *)self agentPluginClass], v4);

          if (v20)
          {
            v21 = [NEVPNTunnelPlugin alloc];
            v22 = [(NESMSession *)self queue];
            v23 = [(NEVPNTunnelPlugin *)v21 initWithAgent:v20 delegateQueue:v22 andDelegate:self];
            [(NESMVPNSession *)self setPrimaryTunnelPlugin:v23];
          }

          else
          {
            v22 = ne_log_obj();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to create a test agent", buf, 2u);
            }
          }

LABEL_12:
LABEL_13:
          v11 = [(NESMVPNSession *)self stateHandler];
          [v11 handleStartMessage:v4];
LABEL_14:

          goto LABEL_15;
        }
      }

      else
      {
      }
    }

    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "com.apple.private.networkextension.test-control";
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Test provider does not have the %s entitlement", buf, 0xCu);
    }

    v15 = [(NESMVPNSession *)self stateHandler];
    [v15 handleStartMessage:v4];

    goto LABEL_14;
  }

  v7 = v6;
  v8 = [(NESMSession *)self waitForPerApp];

  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = ne_log_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = self;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: Ignore start for perApp session - no appRule or app not installed", buf, 0xCu);
  }

  v10 = [(NESMVPNSession *)self stateHandler];
  [v10 handleStop];
LABEL_15:
}

- (void)registerSession:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NESMVPNSession *)self parentType]== 2)
  {
    v8 = [(NESMVPNSession *)self parent];
    v9 = v6;
    v10 = v7;
    v11 = self;
    if (v8)
    {
      if ([(NESMSession *)v8 status]== 1)
      {
        v12 = [(NESMSession *)v8 messageQueue];
        dispatch_suspend(v12);

        v13 = [(NESMSession *)v8 server];
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v19 = sub_10009B5CC;
        v20 = &unk_1000EAC68;
        v21 = v8;
        v22 = v10;
        v23 = v11;
        v24 = v9;
        [v13 registerSession:v8 withCompletionHandler:&buf];

        v14 = v22;
      }

      else
      {
        v15 = ne_log_obj();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v8;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@ Already registered", &buf, 0xCu);
        }

        v16 = [(NESMSession *)v11 queue];
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v19 = sub_10009B6B8;
        v20 = &unk_1000EB198;
        v21 = v11;
        v22 = v9;
        dispatch_async(v16, &buf);

        v14 = v21;
      }
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = NESMVPNSession;
    [(NESMSession *)&v17 registerSession:v6 fromClient:v7];
  }
}

- (void)createConnectParametersWithStartMessage:(id)a3
{
  xdict = a3;
  v4 = xpc_dictionary_get_value(xdict, "SessionOptions");
  v5 = objc_alloc_init(NSMutableDictionary);
  [(NESMVPNSession *)self setConnectParameters:v5];

  v6 = [(NESMVPNSession *)self protocol];
  v7 = [v6 serverAddress];

  if (v7)
  {
    v8 = [(NESMVPNSession *)self protocol];
    v9 = [v8 serverAddress];
    v10 = [(NESMVPNSession *)self connectParameters];
    [v10 setObject:v9 forKeyedSubscript:@"ServerAddress"];
  }

  v11 = [(NESMVPNSession *)self protocol];
  v12 = [v11 username];

  if (v12)
  {
    v13 = [(NESMVPNSession *)self protocol];
    v14 = [v13 username];
    v15 = [(NESMVPNSession *)self connectParameters];
    [v15 setObject:v14 forKeyedSubscript:@"AccountName"];
  }

  v16 = [(NESMVPNSession *)self protocol];
  v17 = [v16 passwordKeychainItem];
  if (v17)
  {
    v18 = v17;
    v19 = [(NESMVPNSession *)self protocol];
    v20 = [v19 passwordKeychainItem];
    v21 = [v20 domain];

    if (v21)
    {
      goto LABEL_10;
    }

    v22 = [(NESMVPNSession *)self protocol];
    v23 = [v22 passwordKeychainItem];
    v16 = [v23 copyPassword];

    if (v16)
    {
      v24 = [(NESMVPNSession *)self connectParameters];
      [v24 setObject:v16 forKeyedSubscript:@"Password"];
    }
  }

LABEL_10:
  v25 = [(NESMVPNSession *)self protocol];
  v26 = [v25 disconnectOnIdle];

  if (v26)
  {
    v27 = [(NESMVPNSession *)self protocol];
    v28 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v27 disconnectOnIdleTimeout]);
    v29 = [(NESMVPNSession *)self connectParameters];
    [v29 setObject:v28 forKeyedSubscript:@"IdleTimer"];
  }

  v30 = [(NESMVPNSession *)self protocol];
  v31 = [v30 type];

  v32 = [(NESMVPNSession *)self protocol];
  v33 = v32;
  if (v31 == 4)
  {
    if (![v32 authenticationMethod])
    {
      v34 = [(NESMVPNSession *)self connectParameters];
      [v34 setObject:@"Password" forKeyedSubscript:@"AuthMethod"];
    }

    if ([v33 authenticationMethod] == 1)
    {
      v35 = [(NESMVPNSession *)self connectParameters];
      [v35 setObject:@"Certificate" forKeyedSubscript:@"AuthMethod"];

      v36 = [(NESMVPNSession *)self protocol];
      v37 = [v36 identityReferenceInternal];

      if (v37)
      {
        v38 = [(NESMVPNSession *)self protocol];
        v39 = [v38 identityReferenceInternal];
        v40 = [(NESMVPNSession *)self connectParameters];
        [v40 setObject:v39 forKeyedSubscript:@"CertificateRef"];
      }
    }

    v41 = [v33 providerConfiguration];

    if (v41)
    {
      v42 = [v33 providerConfiguration];
      v43 = [(NESMVPNSession *)self connectParameters];
      [v43 setObject:v42 forKeyedSubscript:@"VendorData"];
    }

    if (!v4)
    {
      v80 = [(NESMVPNSession *)self pluginType];
      v81 = [NETunnelProviderProtocol isLegacyPluginType:v80];

      if (v81)
      {
LABEL_57:

        goto LABEL_58;
      }

      v44 = objc_alloc_init(NSMutableDictionary);
      [(NESMVPNSession *)self setConnectParameters:v44];
      goto LABEL_56;
    }

    v44 = _CFXPCCreateCFObjectFromXPCObject();
    v45 = [(NESMVPNSession *)self pluginType];
    v46 = [NETunnelProviderProtocol isLegacyPluginType:v45];

    if (!v46)
    {
      v82 = [(NESMVPNSession *)self connectParameters];
      [v82 addEntriesFromDictionary:v44];
LABEL_55:

      goto LABEL_56;
    }

    v47 = kSCEntNetVPN;
    v48 = [v44 objectForKeyedSubscript:kSCEntNetVPN];
    v49 = isa_nsdictionary();

    if (!v49)
    {
LABEL_53:
      v95 = [v33 pluginType];
      v96 = [v44 objectForKeyedSubscript:v95];
      v97 = isa_nsdictionary();

      if (v97)
      {
        v82 = [v33 pluginType];
        v98 = [v44 objectForKeyedSubscript:v82];
        v99 = [(NESMVPNSession *)self connectParameters];
        [v99 setObject:v98 forKeyedSubscript:@"VendorData"];

        goto LABEL_55;
      }

LABEL_56:

      goto LABEL_57;
    }

    v50 = [v44 objectForKeyedSubscript:v47];
    v51 = kSCPropNetVPNRemoteAddress;
    v52 = [v50 objectForKeyedSubscript:kSCPropNetVPNRemoteAddress];
    v53 = isa_nsstring();

    if (v53)
    {
      v54 = [v50 objectForKeyedSubscript:v51];
      v55 = [(NESMVPNSession *)self connectParameters];
      [v55 setObject:v54 forKeyedSubscript:@"ServerAddress"];
    }

    v56 = kSCPropNetVPNAuthName;
    v57 = [v50 objectForKeyedSubscript:kSCPropNetVPNAuthName];
    v58 = isa_nsstring();

    if (v58)
    {
      v59 = [v50 objectForKeyedSubscript:v56];
      v60 = [(NESMVPNSession *)self connectParameters];
      [v60 setObject:v59 forKeyedSubscript:@"AccountName"];
    }

    v61 = kSCPropNetVPNAuthPassword;
    v62 = [v50 objectForKeyedSubscript:kSCPropNetVPNAuthPassword];
    v63 = isa_nsstring();

    if (v63)
    {
      v64 = [v50 objectForKeyedSubscript:v61];
      v65 = [(NESMVPNSession *)self connectParameters];
      [v65 setObject:v64 forKeyedSubscript:@"Password"];
    }

    v66 = kSCPropNetVPNAuthenticationMethod;
    v67 = [v50 objectForKeyedSubscript:kSCPropNetVPNAuthenticationMethod];
    v68 = isa_nsstring();

    if (!v68)
    {
LABEL_47:
      v88 = kSCPropNetVPNDisconnectOnIdle;
      v89 = [v50 objectForKeyedSubscript:kSCPropNetVPNDisconnectOnIdle];
      if (isa_nsnumber())
      {
        v90 = kSCPropNetVPNDisconnectOnIdleTimer;
        v91 = [v50 objectForKeyedSubscript:kSCPropNetVPNDisconnectOnIdleTimer];
        v92 = isa_nsnumber();

        if (!v92)
        {
LABEL_52:

          goto LABEL_53;
        }

        v89 = [v50 objectForKeyedSubscript:v88];
        if ([v89 BOOLValue])
        {
          v93 = [v50 objectForKeyedSubscript:v90];
          v94 = [(NESMVPNSession *)self connectParameters];
          [v94 setObject:v93 forKeyedSubscript:@"IdleTimer"];
        }
      }

      goto LABEL_52;
    }

    v69 = [v50 objectForKeyedSubscript:v66];
    if ([v69 isEqualToString:kSCValNetVPNAuthenticationMethodPassword])
    {
      v70 = [(NESMVPNSession *)self connectParameters];
      [v70 setObject:@"Password" forKeyedSubscript:@"AuthMethod"];
    }

    else
    {
      if (![v69 isEqualToString:kSCValNetVPNAuthenticationMethodCertificate])
      {
        goto LABEL_46;
      }

      v83 = [(NESMVPNSession *)self connectParameters];
      [v83 setObject:@"Certificate" forKeyedSubscript:@"AuthMethod"];

      v84 = kSCPropNetVPNLocalCertificate;
      v85 = [v50 objectForKeyedSubscript:kSCPropNetVPNLocalCertificate];
      v86 = isa_nsdata();

      if (!v86)
      {
        goto LABEL_46;
      }

      v70 = [v50 objectForKeyedSubscript:v84];
      v87 = [(NESMVPNSession *)self connectParameters];
      [v87 setObject:v70 forKeyedSubscript:@"CertificateRef"];
    }

LABEL_46:
    goto LABEL_47;
  }

  v71 = [v32 type];

  if (v71 == 5 && v4)
  {
    v33 = _CFXPCCreateCFObjectFromXPCObject();
    v72 = [v33 objectForKeyedSubscript:NEVPNConnectionStartOptionUsername];
    v73 = isa_nsstring();

    if (v73)
    {
      v74 = [v33 objectForKeyedSubscript:NEVPNConnectionStartOptionUsername];
      v75 = [(NESMVPNSession *)self connectParameters];
      [v75 setObject:v74 forKeyedSubscript:@"AccountName"];
    }

    v76 = [v33 objectForKeyedSubscript:NEVPNConnectionStartOptionPassword];
    v77 = isa_nsstring();

    if (v77)
    {
      v78 = [v33 objectForKeyedSubscript:NEVPNConnectionStartOptionPassword];
      v79 = [(NESMVPNSession *)self connectParameters];
      [v79 setObject:v78 forKeyedSubscript:@"Password"];
    }

    v44 = [(NESMVPNSession *)self connectParameters];
    [v44 addEntriesFromDictionary:v33];
    goto LABEL_56;
  }

LABEL_58:
  if ([(NESMSession *)self isOnDemand])
  {
    v100 = [(NESMVPNSession *)self pluginType];
    v101 = [NETunnelProviderProtocol isLegacyPluginType:v100];

    if (v101)
    {
      v102 = [(NESMVPNSession *)self connectParameters];
      v103 = [v102 objectForKeyedSubscript:@"IdleTimer"];

      if (!v103)
      {
        v104 = [(NESMVPNSession *)self connectParameters];
        [v104 setObject:&off_1000EE318 forKeyedSubscript:@"IdleTimer"];
      }

      if (v4)
      {
        string = xpc_dictionary_get_string(v4, "match-domain");
        v106 = xpc_dictionary_get_string(v4, "match-hostname");
        if (string)
        {
          v107 = [NSString stringWithUTF8String:string];
          v108 = [(NESMVPNSession *)self connectParameters];
          [v108 setObject:v107 forKeyedSubscript:@"OnDemandMatchDomain"];
        }

        if (v106)
        {
          v109 = [NSString stringWithUTF8String:v106];
          v110 = [(NESMVPNSession *)self connectParameters];
          [v110 setObject:v109 forKeyedSubscript:@"OnDemandHostName"];
        }
      }

      v111 = [(NESMSession *)self configuration];
      v112 = [v111 appVPN];

      if (v112)
      {
        if (xpc_dictionary_get_int64(xdict, "SessionPID") >= 1)
        {
          v113 = NECopySigningIdentifierForPID();
          if (v113)
          {
            v114 = v113;
            v115 = [(NESMSession *)self configuration];
            v116 = [v115 appVPN];
            v117 = [v116 copyAppRuleBySigningIdentifier:v114];

            if (v117)
            {
              v118 = [v117 matchSigningIdentifier];
              v119 = [(NESMVPNSession *)self connectParameters];
              [v119 setObject:v118 forKeyedSubscript:@"AppRuleID"];
            }

            CFRelease(v114);
          }
        }
      }
    }
  }
}

- (void)handleInitializeState
{
  v2 = self;
  objc_sync_enter(v2);
  if ([(NESMVPNSession *)v2 parentType]== 1 && ([(NESMVPNSession *)v2 interfaceName], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [(NESMSession *)v2 configuration];
    v5 = [(__CFString *)v4 identifier];
    v6 = [v5 UUIDString];
    v7 = [(NESMVPNSession *)v2 interfaceName];
    v8 = [NSString stringWithFormat:@"%@:%@:%d", v6, v7, [(NESMVPNSession *)v2 type]];
    [(NESMSession *)v2 setAuxiliaryDataKey:v8];
  }

  else
  {
    v9 = [(NESMVPNSession *)v2 tunnelKind];
    v10 = @"Fallback Tunnel";
    if (v9 == 1)
    {
      v10 = @"Primary Tunnel";
    }

    v4 = v10;
    v5 = [(NESMSession *)v2 configuration];
    v6 = [v5 identifier];
    v7 = [v6 UUIDString];
    v8 = [NSString stringWithFormat:@"%@:%@:%d", v7, v4, [(NESMVPNSession *)v2 type]];
    [(NESMSession *)v2 setAuxiliaryDataKey:v8];
  }

  [(NESMSession *)v2 setupFromAuxiliaryData];
  objc_sync_exit(v2);

  [(NESMVPNSession *)v2 setState:1];
}

- (void)checkPluginInstalledWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(NESMSession *)self configuration];
  v6 = [v5 pluginType];

  v7 = [(NESMVPNSession *)self providerBundleIdentifier];
  if (!v6)
  {
LABEL_12:
    v4[2](v4, 1);
    goto LABEL_13;
  }

  if ([NETunnelProviderProtocol isLegacyPluginType:v6])
  {
    v4[2](v4, [v6 hasPrefix:@"com.apple."]);
    goto LABEL_13;
  }

  if ([(NESMVPNSession *)self state]== 9)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: Plugin is being updated", &v15, 0xCu);
    }

    v4[2](v4, 0);
    goto LABEL_13;
  }

  v9 = sub_10000DA38();
  v10 = sub_10000F1CC(v9, v7, [(NESMVPNSession *)self agentPluginClass]);

  if (v10)
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = self;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@: Plugin is registered with provider manager", &v15, 0xCu);
    }

    goto LABEL_12;
  }

  v12 = [(NESMVPNSession *)self providerBundleIdentifier];
  v13 = [NELaunchServices pluginProxyWithIdentifier:v12 type:v6 pluginClass:[(NESMVPNSession *)self agentPluginClass] extensionPoint:0];

  if (!v13)
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = self;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@: Plugin is not available in launch services", &v15, 0xCu);
    }
  }

  v4[2](v4, v13 != 0);

LABEL_13:
}

- (BOOL)initializePlugins
{
  v3 = [(NESMVPNSession *)self primaryTunnelPlugin];

  if (!v3)
  {
    v5 = [(NESMSession *)self configuration];
    v6 = [v5 pluginType];

    if (!v6)
    {
      v4 = 1;
LABEL_72:

      return v4;
    }

    if (!self)
    {
      goto LABEL_37;
    }

    v7 = [(NESMSession *)self configuration];
    v8 = [v7 pluginType];

    v9 = [(NESMVPNSession *)self providerBundleIdentifier];
    v10 = [(NESMVPNSession *)self providerDesignatedRequirement];
    p_info = &OBJC_METACLASS___NEDNSProxyPlugin.info;
    v12 = objc_opt_class();
    if (v9)
    {
      v13 = sub_10000DA38();
      v14 = sub_10000F1CC(v13, v9, [(NESMVPNSession *)self agentPluginClass]);

      if (v14)
      {
        v15 = objc_opt_class();
        if (!v10)
        {
          v16 = ne_log_obj();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v101 = self;
            v102 = 2112;
            v103 = v8;
            _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@: Cannot create agent for plugin type %@, missing designated requirement", buf, 0x16u);
          }

          v21 = 0;
LABEL_19:

          if (v21)
          {
            v22 = [(NESMVPNSession *)self agentPluginClass];
            v23 = off_1000E8ED0;
            v24 = off_1000E8EC8;
            if (v22 != 3)
            {
              v24 = &off_1000E8F98;
            }

            if (v22 != 2)
            {
              v23 = v24;
            }

            v25 = *v23;
            v26 = objc_alloc(objc_opt_class());
            v27 = [(NESMSession *)self queue];
            v28 = [v26 initWithAgent:v21 delegateQueue:v27 andDelegate:self];
            [(NESMVPNSession *)self setPrimaryTunnelPlugin:v28];

            v29 = [(NESMVPNSession *)self authenticationPluginBundleIdentifier];
            if (!v29)
            {
              goto LABEL_64;
            }

            v30 = v6;
            v31 = v29;
            v32 = [[NSString alloc] initWithFormat:@"VPN-%@.plist", v30];
            v33 = SCPreferencesCreate(0, @"NEPluginPreferences", v32);
            if (!v33)
            {
              v48 = ne_log_obj();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
              {
                v72 = SCError();
                v73 = SCErrorString(v72);
                *buf = 138412546;
                v101 = v30;
                v102 = 2080;
                v103 = v73;
                _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Failed to create preferences for %@: %s", buf, 0x16u);
              }

              v46 = 0;
              goto LABEL_62;
            }

            v34 = v33;
            Value = SCPreferencesGetValue(v33, @"ApplicationURL");
            TypeID = CFDataGetTypeID();
            if (!Value || CFGetTypeID(Value) != TypeID)
            {
              v47 = ne_log_obj();
              if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v101 = v32;
                _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "No ApplicationURL available in %@", buf, 0xCu);
              }

              CFRelease(v34);
              v46 = 0;
              p_info = (&OBJC_METACLASS___NEDNSProxyPlugin + 32);
              goto LABEL_62;
            }

            v99[0] = 0;
            v37 = [NSURL URLByResolvingBookmarkData:Value options:0 relativeToURL:0 bookmarkDataIsStale:0 error:v99];
            v90 = v99[0];
            CFRelease(v34);
            if (!v37)
            {
              v49 = ne_log_obj();
              p_info = (&OBJC_METACLASS___NEDNSProxyPlugin + 32);
              v89 = v49;
              if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v101 = v30;
                v102 = 2112;
                v103 = v90;
                _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "Failed to resolve app bookmark from data for %@: %@", buf, 0x16u);
              }

              v46 = 0;
              goto LABEL_61;
            }

            v38 = [[NSBundle alloc] initWithURL:v37];
            p_info = &OBJC_METACLASS___NEDNSProxyPlugin.info;
            v89 = v38;
            if (!v38)
            {
              log = ne_log_obj();
              if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v101 = v37;
                _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to create a bundle from %@", buf, 0xCu);
              }

              v46 = 0;
              goto LABEL_60;
            }

            v84 = v32;
            v85 = v30;
            [v38 builtInPlugInsURL];
            log = v94 = 0;
            if (log)
            {
              v87 = v37;
              v39 = +[NSFileManager defaultManager];
              v40 = [log path];
              if ([v39 fileExistsAtPath:v40 isDirectory:&v94])
              {
                v41 = v94;

                v37 = v87;
                if (v41)
                {
                  v42 = +[NSFileManager defaultManager];
                  v43 = [log path];
                  v93 = 0;
                  v44 = [v42 contentsOfDirectoryAtPath:v43 error:&v93];
                  v45 = v93;

                  v86 = v45;
                  v82 = v44;
                  if (v45)
                  {
                    obj = ne_log_obj();
                    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
                    {
                      v81 = [log path];
                      *buf = 138412546;
                      v101 = v81;
                      v102 = 2112;
                      v103 = v45;
                      _os_log_error_impl(&_mh_execute_header, obj, OS_LOG_TYPE_ERROR, "Failed to get the contents of %@: %@", buf, 0x16u);
                    }
                  }

                  else
                  {
                    v106 = 0u;
                    v107 = 0u;
                    v104 = 0u;
                    v105 = 0u;
                    obj = v44;
                    v91 = [obj countByEnumeratingWithState:&v104 objects:buf count:16];
                    if (v91)
                    {
                      v74 = *v105;
                      v37 = v87;
                      v83 = *v105;
                      while (2)
                      {
                        for (i = 0; i != v91; i = i + 1)
                        {
                          if (*v105 != v74)
                          {
                            objc_enumerationMutation(obj);
                          }

                          v76 = *(*(&v104 + 1) + 8 * i);
                          if ([v76 hasSuffix:@".vpnplugin"])
                          {
                            v77 = [[NSURL alloc] initWithString:v76 relativeToURL:log];
                            if (v77)
                            {
                              v78 = [[NSBundle alloc] initWithURL:v77];
                              v46 = v78;
                              if (v78)
                              {
                                v79 = [v78 bundleIdentifier];
                                v80 = [v79 isEqualToString:v31];

                                v37 = v87;
                                if (v80)
                                {

                                  p_info = (&OBJC_METACLASS___NEDNSProxyPlugin + 32);
                                  goto LABEL_89;
                                }
                              }

                              v74 = v83;
                            }

                            p_info = (&OBJC_METACLASS___NEDNSProxyPlugin + 32);
                          }
                        }

                        v91 = [obj countByEnumeratingWithState:&v104 objects:buf count:16];
                        if (v91)
                        {
                          continue;
                        }

                        break;
                      }

                      v46 = 0;
LABEL_89:
                      v32 = v84;
                      v30 = v85;
                      goto LABEL_90;
                    }
                  }

                  v46 = 0;
                  v32 = v84;
                  v30 = v85;
                  v37 = v87;
LABEL_90:

LABEL_59:
LABEL_60:

LABEL_61:
LABEL_62:

                  if (v46)
                  {
                    v97 = @"plugin-path";
                    v51 = [v46 bundlePath];
                    v98 = v51;
                    v52 = [NSDictionary dictionaryWithObjects:&v98 forKeys:&v97 count:1];

                    v53 = objc_alloc((p_info + 446));
                    v54 = [(NESMSession *)self uid];
                    v55 = [v53 initWithPluginType:v31 pluginVersion:0 pluginClass:1 pluginInfo:v52 userID:v54];

                    v56 = [NEVPNAuthenticationPlugin alloc];
                    v57 = [(NESMSession *)self queue];
                    v58 = [(NEPlugin *)v56 initWithAgent:v55 delegateQueue:v57 andDelegate:self];
                    [(NESMVPNSession *)self setAuthenticationPlugin:v58];

LABEL_64:
                    v59 = [(NESMVPNSession *)self extensibleSSOProvider];

                    if (v59)
                    {
                      v95 = @"plugin-path";
                      v60 = [(NESMVPNSession *)self extensibleSSOProvider];
                      v96 = v60;
                      v61 = [NSDictionary dictionaryWithObjects:&v96 forKeys:&v95 count:1];

                      v62 = objc_alloc((p_info + 446));
                      v63 = [(NESMVPNSession *)self pluginType];
                      v64 = [(NESMSession *)self uid];
                      v65 = [v62 initWithPluginType:v63 pluginVersion:0 pluginClass:8 pluginInfo:v61 userID:v64];

                      v66 = [NEVPNAuthenticationPlugin alloc];
                      v67 = [(NESMSession *)self queue];
                      v68 = [(NEPlugin *)v66 initWithAgent:v65 delegateQueue:v67 andDelegate:self];
                      [(NESMVPNSession *)self setAuthenticationPlugin:v68];
                    }

                    v69 = [(NESMVPNSession *)self primaryTunnelPlugin];
                    v4 = v69 != 0;

                    v31 = v29;
                    goto LABEL_71;
                  }

                  v70 = ne_log_obj();
                  if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v101 = self;
                    v102 = 2112;
                    v103 = v31;
                    _os_log_error_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, "%@: Failed to obtain the bundle for %@", buf, 0x16u);
                  }

                  [(NESMVPNSession *)self setPrimaryTunnelPlugin:0];
LABEL_70:
                  v4 = 0;
LABEL_71:

                  goto LABEL_72;
                }
              }

              else
              {

                v37 = v87;
              }
            }

            v50 = ne_log_obj();
            v86 = v50;
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v101 = log;
              _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "Invalid plugins URL: %@", buf, 0xCu);
            }

            v46 = 0;
            v32 = v84;
            v30 = v85;
            goto LABEL_59;
          }

LABEL_37:
          v31 = ne_log_obj();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v101 = self;
            _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%@: Failed to create an NEAgent", buf, 0xCu);
          }

          v21 = 0;
          goto LABEL_70;
        }

        v12 = v15;
        v99[0] = @"plugin-requirement";
        v99[1] = @"extension-identifier";
        *&v104 = v10;
        *(&v104 + 1) = v9;
        v16 = [NSDictionary dictionaryWithObjects:&v104 forKeys:v99 count:2];
LABEL_18:
        v18 = [v12 alloc];
        v19 = [(NESMVPNSession *)self agentPluginClass];
        v20 = [(NESMSession *)self uid];
        v21 = [v18 initWithPluginType:v8 pluginVersion:1 pluginClass:v19 pluginInfo:v16 userID:v20];

        goto LABEL_19;
      }

      v17 = objc_alloc_init(NSMutableDictionary);
      [v17 setObject:v9 forKeyedSubscript:@"extension-identifier"];
      if (!v10)
      {
LABEL_12:
        if ([v17 count])
        {
          v16 = [[NSDictionary alloc] initWithDictionary:v17];
        }

        else
        {
          v16 = 0;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v17 = objc_alloc_init(NSMutableDictionary);
      if (!v10)
      {
        goto LABEL_12;
      }
    }

    [v17 setObject:v10 forKeyedSubscript:@"plugin-requirement"];
    goto LABEL_12;
  }

  return 1;
}

- (void)resetProviderDesignatedRequirementInConfiguration:(id)a3
{
  v8 = a3;
  if ([(NESMVPNSession *)self sessionType]== 1)
  {
    v4 = [v8 VPN];
LABEL_5:
    v5 = v4;
    v6 = [v4 protocol];

    goto LABEL_7;
  }

  if ([(NESMVPNSession *)self sessionType]== 2)
  {
    v4 = [v8 appVPN];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(NESMVPNSession *)self providerDesignatedRequirement];
    [v6 setDesignatedRequirement:v7];
  }
}

- (NSString)extensibleSSOProvider
{
  v2 = [(NESMVPNSession *)self protocol];
  v3 = [v2 extensibleSSOProvider];

  return v3;
}

- (void)setProviderDesignatedRequirement:(id)a3
{
  v4 = a3;
  v5 = [(NESMVPNSession *)self protocol];
  [v5 setDesignatedRequirement:v4];
}

- (NSString)providerDesignatedRequirement
{
  v2 = [(NESMVPNSession *)self protocol];
  v3 = [v2 designatedRequirement];

  return v3;
}

- (NSString)authenticationPluginBundleIdentifier
{
  v2 = [(NESMVPNSession *)self protocol];
  v3 = [v2 authenticationPluginType];

  return v3;
}

- (NSString)providerBundleIdentifier
{
  v2 = [(NESMVPNSession *)self protocol];
  v3 = [v2 providerBundleIdentifier];

  return v3;
}

- (BOOL)hasProviderWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NESMVPNSession *)self providerBundleIdentifier];
  if (v5)
  {
    v6 = [v4 isEqualToString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)addDefaultDropPolicyForPluginUUIDs:(id)a3
{
  v4 = a3;
  if ([(NESMVPNSession *)self parentType]== 1)
  {
    v5 = [(NESMVPNSession *)self parent];
    v6 = self;
    v7 = v4;
    if (v5 && v6)
    {
      v8 = [v5 queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000D2F4;
      block[3] = &unk_1000EABC8;
      block[4] = v5;
      v13 = v6;
      v14 = v7;
      dispatch_async(v8, block);
    }
  }

  else
  {
    v9 = [(NESMSession *)self queue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10002D200;
    v10[3] = &unk_1000EB198;
    v10[4] = self;
    v11 = v4;
    dispatch_async(v9, v10);
  }
}

- (void)setState:(int64_t)a3
{
  if (self->_state != a3)
  {
    v5 = [(NESMVPNSession *)self cachedStateHandlers];

    if (!v5)
    {
      goto LABEL_4;
    }

    v6 = [(NESMVPNSession *)self cachedStateHandlers];
    v7 = [NSNumber numberWithInteger:a3];
    v8 = [v6 objectForKeyedSubscript:v7];

    if (!v8)
    {
LABEL_4:
      v9 = [NESMVPNSessionState stateWithType:a3];
      if (!v9)
      {
        __assert_rtn("[NESMVPNSession setState:]", "NESMVPNSession.m", 471, "0");
      }

      v8 = v9;
      v10 = [(NESMVPNSession *)self cachedStateHandlers];

      if (!v10)
      {
        v11 = objc_alloc_init(NSMutableDictionary);
        [(NESMVPNSession *)self setCachedStateHandlers:v11];
      }

      v12 = [(NESMVPNSession *)self cachedStateHandlers];
      v13 = [NSNumber numberWithInteger:a3];
      [v12 setObject:v8 forKeyedSubscript:v13];
    }

    state = self->_state;
    [(NESMVPNSessionState *)self->_stateHandler leave];
    self->_state = a3;
    objc_storeStrong(&self->_stateHandler, v8);
    [(NESMVPNSessionState *)self->_stateHandler enterWithSession:self];
    if (!state)
    {
      goto LABEL_35;
    }

    if (state == 10)
    {
      v15 = self->_state;
      if (v15 == 1)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v15 = self->_state;
    }

    v16 = 2;
    if (v15 > 5)
    {
      if (v15 > 8)
      {
        if ((v15 - 9) <= 1)
        {
          goto LABEL_24;
        }

        goto LABEL_26;
      }

      if (v15 == 6)
      {
        v16 = 4;
        goto LABEL_34;
      }

      if (v15 == 7)
      {
LABEL_34:
        [(NESMVPNSession *)self setStatus:v16];
LABEL_35:
        [(NESMVPNSession *)self applyNWPathOverridesIfNeeded];
        goto LABEL_36;
      }
    }

    else
    {
      if (v15 <= 3)
      {
        v17 = v15 >= 2;
        v18 = v15 - 2;
        if (!v17)
        {
LABEL_24:
          if ([(NESMVPNSession *)self parentType]!= 1)
          {
            sub_10001E1D8(self);
          }

          goto LABEL_26;
        }

        if (v18 >= 2)
        {
LABEL_26:
          v19 = [(NESMSession *)self configuration];
          v20 = [v19 VPN];
          v21 = [v20 protocol];
          v22 = [v21 includeAllNetworks];

          if (v22)
          {
            v24 = dispatch_time(0, 1000000000);
            v25 = [(NESMSession *)self queue];
            v29[0] = _NSConcreteStackBlock;
            v29[1] = 3221225472;
            v29[2] = sub_10002D790;
            v29[3] = &unk_1000EB338;
            v29[4] = self;
            v30 = 1;
            dispatch_after(v24, v25, v29);

LABEL_36:
            return;
          }

          v16 = 1;
          if (objc_getProperty(self, v23, 464, 1))
          {
            Property = objc_getProperty(self, v26, 464, 1);
            Property[2]();
            objc_setProperty_atomic_copy(self, v28, 0, 464);
          }

          goto LABEL_34;
        }

        goto LABEL_34;
      }

      if (v15 == 4)
      {
        v16 = 3;
        goto LABEL_34;
      }
    }

    v16 = 5;
    goto LABEL_34;
  }
}

- (void)dealloc
{
  v3 = [(NESMVPNSession *)self notification];

  if (v3)
  {
    v4 = [(NESMVPNSession *)self notification];
    [v4 cancel];
  }

  if ([(NESMVPNSession *)self virtualInterface])
  {
    CFRelease([(NESMVPNSession *)self virtualInterface]);
  }

  if (self && objc_getProperty(self, v5, 448, 1))
  {
    Property = objc_getProperty(self, v5, 448, 1);
    dispatch_source_cancel(Property);
    objc_setProperty_atomic(self, v7, 0, 448);
  }

  sub_10001E410(self, v5);
  v8.receiver = self;
  v8.super_class = NESMVPNSession;
  [(NESMSession *)&v8 dealloc];
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(NESMVPNSession *)self parentType];
  if (self)
  {
    v6 = [(NESMVPNSession *)self tunnelKind];
    v7 = @"Fallback Tunnel";
    if (v6 != 2)
    {
      v7 = &stru_1000EBA68;
    }

    if (v6 == 1)
    {
      v7 = @"Primary Tunnel";
    }
  }

  else
  {
    v7 = 0;
  }

  if (v5)
  {
    v8 = @"Child:";
  }

  else
  {
    v8 = &stru_1000EBA68;
  }

  v9 = v7;
  v10 = [(NESMSession *)self configuration];
  v11 = [v10 name];
  v12 = [(NESMSession *)self configuration];
  v13 = [v12 identifier];
  v14 = [v13 UUIDString];
  v15 = [(NESMVPNSession *)self interfaceName];
  v16 = [NSString stringWithFormat:@"%@[%@%@:%@:%@:%@]", v4, v8, v9, v11, v14, v15];

  return v16;
}

- (NESMVPNSession)initWithConfiguration:(id)a3 andServer:(id)a4 andProtocol:(id)a5 andPluginType:(id)a6 andSessionType:(int)a7 sessionQueue:(id)a8 messageQueue:(id)a9 tunnelKind:(int64_t)a10 parent:(id)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v57 = a6;
  v20 = a8;
  v21 = a9;
  v22 = a11;
  v59.receiver = self;
  v59.super_class = NESMVPNSession;
  v23 = [(NESMSession *)&v59 initWithConfiguration:v17 andServer:v18 sessionQueue:v20 messageQueue:v21];
  v24 = v23;
  if (!v23)
  {
    goto LABEL_19;
  }

  v56 = v18;
  v23->_sessionType = a7;
  v23->_state = 0;
  objc_storeStrong(&v23->_protocol, a5);
  establishIPCReply = v24->_establishIPCReply;
  v24->_establishIPCReply = 0;

  establishIPCMessage = v24->_establishIPCMessage;
  v24->_establishIPCMessage = 0;

  v27 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v28 = dispatch_queue_create("tunnel changes queue", v27);
  tunnelConfigQueue = v24->_tunnelConfigQueue;
  v24->_tunnelConfigQueue = v28;

  NEInitCFTypes();
  v30 = objc_alloc_init(NSMutableArray);
  setConfigurationCompletionHandlerArray = v24->_setConfigurationCompletionHandlerArray;
  v24->_setConfigurationCompletionHandlerArray = v30;

  pluginCompletionHandler = v24->_pluginCompletionHandler;
  v24->_pluginCompletionHandler = 0;

  v24->_tunnelKind = a10;
  v24->_stopped = 1;
  if (v22)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = 1;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        abort();
      }

      v33 = 2;
    }

    v24->_parentType = v33;
    objc_storeWeak(&v24->_parent, v22);
  }

  if (a7 <= 6 && ((1 << a7) & 0x46) != 0)
  {
    v34 = [v17 VPN];

    if (v34)
    {
      v35 = [v17 VPN];
    }

    else
    {
      v36 = [v17 appVPN];

      if (!v36)
      {
        v38 = 1;
        goto LABEL_15;
      }

      v35 = [v17 appVPN];
    }

    v37 = v35;
    v38 = [v35 tunnelType];

LABEL_15:
    v39 = [NESMPolicySession alloc];
    v40 = [v17 identifier];
    v41 = sub_100033D18(&v39->super.isa, v40, a7, [v17 grade], v38, a10);
    [(NESMSession *)v24 setPolicySession:v41];

    sub_10008E79C(v24);
  }

  v42 = [[NEPolicySession alloc] initWithSessionName:@"VPN control"];
  [(NESMSession *)v24 setControlPolicySession:v42];

  v43 = [(NESMSession *)v24 controlPolicySession];

  if (!v43)
  {
    v53 = ne_log_obj();
    if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
LABEL_23:

      v52 = 0;
      v18 = v56;
      goto LABEL_24;
    }

    *buf = 0;
    v54 = "Failed to create VPN control policy session";
LABEL_27:
    _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, v54, buf, 2u);
    goto LABEL_23;
  }

  v44 = [(NESMSession *)v24 controlPolicySession];
  [v44 setPriority:100];

  v45 = [(NESMSession *)v24 controlPolicySession];
  [v45 lockSessionToCurrentProcess];

  v46 = [[NEPolicySession alloc] initWithSessionName:@"VPN high"];
  [(NESMSession *)v24 setHighPolicySession:v46];

  v47 = [(NESMSession *)v24 highPolicySession];

  if (!v47)
  {
    v53 = ne_log_obj();
    if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v54 = "Failed to create VPN high policy session";
    goto LABEL_27;
  }

  v48 = [(NESMSession *)v24 highPolicySession];
  [v48 setPriority:400];

  v49 = [(NESMSession *)v24 highPolicySession];
  [v49 lockSessionToCurrentProcess];

  v50 = objc_alloc_init(NESMVPNSessionRetryCounter);
  objc_setProperty_atomic(v24, v51, v50, 456);

  v18 = v56;
LABEL_19:
  v52 = v24;
LABEL_24:

  return v52;
}

@end