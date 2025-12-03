@interface NESMVPNSession
- (BOOL)establishIPCPending;
- (BOOL)handleSleep;
- (BOOL)handleUpdateConfiguration:(id)configuration;
- (BOOL)hasProviderWithBundleIdentifier:(id)identifier;
- (BOOL)initializePlugins;
- (BOOL)interface:(id)interface hasIPAddress:(id)address currentFlags:(unint64_t)flags;
- (BOOL)isSecondaryConnection;
- (BOOL)prepareConfigurationForStart;
- (BOOL)proxyEnabled:(id)enabled;
- (BOOL)resetPerAppPolicy;
- (BOOL)shouldSendIPCAttachForPlugin:(id)plugin;
- (BOOL)supportsDefaultDrop;
- (NESMSession)parent;
- (NESMVPNSession)initWithConfiguration:(id)configuration andServer:(id)server andProtocol:(id)protocol andPluginType:(id)type andSessionType:(int)sessionType sessionQueue:(id)queue messageQueue:(id)messageQueue tunnelKind:(int64_t)self0 parent:(id)self1;
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
- (int)getVirtualInterfaceMTU:(id)u;
- (unsigned)isInterfaceIPAvailable:(const char *)available;
- (void)addDefaultDropPolicyForPluginUUIDs:(id)ds;
- (void)checkPluginInstalledWithCompletionHandler:(id)handler;
- (void)connectionStateChanged:(id)changed connection:(int)connection dataConnectionStatusInfo:(id)info;
- (void)createConnectParametersWithStartMessage:(id)message;
- (void)dealloc;
- (void)handleCaptiveNetworkPluginsChanged;
- (void)handleChangeEventForInterface:(id)interface newFlags:(unint64_t)flags previousFlags:(unint64_t)previousFlags;
- (void)handleChangeEventForRankedInterfaces;
- (void)handleEstablishIPCMessage:(id)message;
- (void)handleGetInfoMessage:(id)message withType:(int)type;
- (void)handleInitializeState;
- (void)handleInstalledAppsChanged;
- (void)handleNetworkConfigurationChange:(int64_t)change;
- (void)handleNetworkDetectionNotification:(int)notification;
- (void)handleNetworkPrepareResult:(id)result;
- (void)handleSleepTime:(double)time;
- (void)handleStartMessage:(id)message;
- (void)handleUserLogout;
- (void)handleUserSwitch;
- (void)handleWakeup;
- (void)install;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)plugin:(id)plugin didAttachIPCWithEndpoint:(id)endpoint;
- (void)plugin:(id)plugin didInitializeWithUUIDs:(id)ds;
- (void)plugin:(id)plugin didRequestVirtualInterfaceWithParameters:(id)parameters completionHandler:(id)handler;
- (void)plugin:(id)plugin didSetConfiguration:(id)configuration completionHandler:(id)handler;
- (void)plugin:(id)plugin didSetStatus:(int)status andDisconnectError:(id)error;
- (void)pluginDidAcknowledgeSleep:(id)sleep;
- (void)pluginDidClearConfiguration:(id)configuration completionHandler:(id)handler;
- (void)pluginDidDetachIPC:(id)c;
- (void)pluginDidDispose:(id)dispose;
- (void)prepareNetwork;
- (void)queueChangesToTunnelConfiguration:(id)configuration completionHandler:(id)handler;
- (void)registerSession:(id)session fromClient:(id)client;
- (void)requestInstall;
- (void)requestUninstall;
- (void)resetProviderDesignatedRequirementInConfiguration:(id)configuration;
- (void)sendEstablishIPCReply;
- (void)setDelegateInterfaceName:(id)name;
- (void)setEndpointInEstablishIPCReply:(id)reply forPlugin:(id)plugin;
- (void)setIsSecondaryConnection:(BOOL)connection;
- (void)setLastDisconnectError:(id)error;
- (void)setLastStopReason:(int)reason;
- (void)setProviderDesignatedRequirement:(id)requirement;
- (void)setState:(int64_t)state;
- (void)setStatus:(int)status;
- (void)uninstall;
@end

@implementation NESMVPNSession

- (NESMSession)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

- (void)connectionStateChanged:(id)changed connection:(int)connection dataConnectionStatusInfo:(id)info
{
  changedCopy = changed;
  infoCopy = info;
  v10 = infoCopy;
  if (!infoCopy)
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

  if (coreTelephonyConnType != connection)
  {
    goto LABEL_20;
  }

  if ([infoCopy state] == 2)
  {
    interfaceName = [v10 interfaceName];

    if (interfaceName)
    {
      if (self)
      {
        if (objc_getProperty(self, v12, 496, 1))
        {
          v15 = objc_getProperty(self, v14, 496, 1);
          interfaceName2 = [v10 interfaceName];
          v17 = [v15 isEqual:interfaceName2];

          if ((v17 & 1) == 0)
          {
            v18 = ne_log_obj();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              configuration = [(NESMSession *)self configuration];
              appVPN = [configuration appVPN];
              protocol = [appVPN protocol];
              sliceUUID = [protocol sliceUUID];
              state = [v10 state];
              Property = objc_getProperty(self, v57, 496, 1);
              interfaceName3 = [v10 interfaceName];
              *buf = 138413570;
              selfCopy3 = self;
              v66 = 1024;
              connectionCopy3 = connection;
              v68 = 2112;
              v69 = sliceUUID;
              v70 = 1024;
              state3 = state;
              v72 = 2112;
              v73 = Property;
              v74 = 2112;
              v75 = interfaceName3;
              _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@: VPN Slice connectionStateChanged - Invalid transition <type %d> - sliceUUID %@ : <state %d: slice ifname %@ --> %@>", buf, 0x36u);
            }

LABEL_19:
            stateHandler = [(NESMVPNSession *)self stateHandler];
            [stateHandler handleStop];

            goto LABEL_20;
          }

          goto LABEL_20;
        }

        interfaceName4 = [v10 interfaceName];
        objc_setProperty_atomic(self, v32, interfaceName4, 496);
      }

      else
      {
        interfaceName4 = [v10 interfaceName];
      }

      v33 = ne_log_obj();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        configuration2 = [(NESMSession *)self configuration];
        appVPN2 = [configuration2 appVPN];
        protocol2 = [appVPN2 protocol];
        sliceUUID2 = [protocol2 sliceUUID];
        state2 = [v10 state];
        if (self)
        {
          v40 = objc_getProperty(self, v38, 496, 1);
        }

        else
        {
          v40 = 0;
        }

        *buf = 138413314;
        selfCopy3 = self;
        v66 = 1024;
        connectionCopy3 = connection;
        v68 = 2112;
        v69 = sliceUUID2;
        v70 = 1024;
        state3 = state2;
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
      interfaceName5 = [v10 interfaceName];

      if (v22 == interfaceName5)
      {
        v24 = ne_log_obj();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          configuration3 = [(NESMSession *)self configuration];
          appVPN3 = [configuration3 appVPN];
          protocol3 = [appVPN3 protocol];
          sliceUUID3 = [protocol3 sliceUUID];
          *buf = 138413314;
          selfCopy3 = self;
          v66 = 1024;
          connectionCopy3 = connection;
          v68 = 2112;
          v69 = sliceUUID3;
          v70 = 1024;
          state3 = [v10 state];
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

  configuration = [(NESMSession *)self configuration];
  v4 = [configuration VPN];
  protocol = [v4 protocol];
  includeAllNetworks = [protocol includeAllNetworks];

  return includeAllNetworks;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  v40.receiver = self;
  v40.super_class = NESMVPNSession;
  [(NESMSession *)&v40 observeValueForKeyPath:pathCopy ofObject:objectCopy change:change context:context];
  if (self)
  {
    Property = objc_getProperty(self, v12, 424, 1);
  }

  else
  {
    Property = 0;
  }

  if (Property == objectCopy && [pathCopy isEqualToString:@"path"])
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
      v42 = objectCopy;
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

    path = [v18 path];
    if ([path status] == 1)
    {
      if (self)
      {
        IDSNexusIfIndex = self->_IDSNexusIfIndex;
      }

      else
      {
        IDSNexusIfIndex = 0;
      }

      interface = [path interface];
      interfaceIndex = [interface interfaceIndex];

      if (IDSNexusIfIndex == interfaceIndex)
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

        interface2 = [path interface];
        interfaceIndex2 = [interface2 interfaceIndex];
        *buf = 134218240;
        v42 = v24;
        v43 = 2048;
        v44 = interfaceIndex2;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "IDS Nexus interface changed %ld -> %ld", buf, 0x16u);
      }

      interface3 = [path interface];
      interfaceIndex3 = [interface3 interfaceIndex];
      if (self)
      {
        self->_IDSNexusIfIndex = interfaceIndex3;
      }

      policySession = [(NESMSession *)self policySession];
      interface4 = [path interface];
      interfaceName = [interface4 interfaceName];
      v32 = sub_100048604(policySession, interfaceName);

      if (v32)
      {
        goto LABEL_32;
      }

      v33 = ne_log_obj();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        interface5 = [path interface];
        interfaceName2 = [interface5 interfaceName];
        *buf = 138412290;
        v42 = interfaceName2;
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

      policySession2 = [(NESMSession *)self policySession];
      v39 = sub_100034538(policySession2, v38);

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
  queue = [(NESMSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001CE70;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)resetPerAppPolicy
{
  selfCopy = self;
  v3 = sub_10008D698(self);
  if ([(NESMVPNSession *)selfCopy type]!= 2 || ![(NESMVPNSession *)selfCopy virtualInterface])
  {
    goto LABEL_45;
  }

  configuration = [(NESMSession *)selfCopy configuration];
  appVPN = [configuration appVPN];
  appRules = [appVPN appRules];
  if (![appRules count] && !objc_msgSend(v3, "count"))
  {

    goto LABEL_45;
  }

  isActive = [(NESMSession *)selfCopy isActive];

  if (!isActive)
  {
LABEL_45:
    v48 = 1;
    goto LABEL_46;
  }

  [(NESMVPNSession *)selfCopy virtualInterface];
  v71 = NEVirtualInterfaceCopyName();
  policySession = [(NESMSession *)selfCopy policySession];
  configuration2 = [(NESMSession *)selfCopy configuration];
  appVPN2 = [configuration2 appVPN];
  appRules2 = [appVPN2 appRules];
  v12 = [(NESMSession *)selfCopy uid];
  [v12 intValue];
  sub_100040988(policySession, appRules2);

  v68 = selfCopy;
  if (selfCopy)
  {
    configuration3 = [(NESMSession *)selfCopy configuration];
    appVPN3 = [configuration3 appVPN];
    appRules3 = [appVPN3 appRules];

    if ([appRules3 count])
    {
      v69 = v3;
      v16 = objc_alloc_init(NSMutableDictionary);
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v66 = appRules3;
      obj = appRules3;
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
            cachedMachOUUIDs = [v20 cachedMachOUUIDs];
            v22 = [cachedMachOUUIDs countByEnumeratingWithState:&v77 objects:v85 count:16];
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
                    objc_enumerationMutation(cachedMachOUUIDs);
                  }

                  v26 = *(*(&v77 + 1) + 8 * j);
                  matchSigningIdentifier = [v20 matchSigningIdentifier];
                  [v16 setObject:matchSigningIdentifier forKeyedSubscript:v26];
                }

                v23 = [cachedMachOUUIDs countByEnumeratingWithState:&v77 objects:v85 count:16];
              }

              while (v23);
            }
          }

          v18 = [obj countByEnumeratingWithState:&v81 objects:buf count:16];
        }

        while (v18);
      }

      selfCopy = v68;
      v3 = v69;
      appRules3 = v66;
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
    *&buf[4] = selfCopy;
    *&buf[12] = 2048;
    *&buf[14] = v29;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%@: Setting the app UUID map with %lu entries", buf, 0x16u);
  }

  primaryTunnelPlugin = [(NESMVPNSession *)selfCopy primaryTunnelPlugin];
  v31 = primaryTunnelPlugin;
  if (primaryTunnelPlugin)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10001A97C;
    v87 = &unk_1000EB068;
    v88 = primaryTunnelPlugin;
    v32 = v16;
    v33 = [v31 remotePluginObjectWithErrorHandler:buf];
    [v33 setAppUUIDMap:v32];
  }

  if (!ne_session_disable_restrictions())
  {
    goto LABEL_35;
  }

  protocol = [(NESMVPNSession *)selfCopy protocol];
  type = [protocol type];
  v36 = type == 5;
  if (type == 5)
  {
    protocol2 = [(NESMVPNSession *)selfCopy protocol];
    serverAddress = [protocol2 serverAddress];
    v39 = [serverAddress isEqualToString:@"0.0.0.0"];

    if (v39)
    {
      protocol = ne_log_obj();
      if (os_log_type_enabled(protocol, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = selfCopy;
        _os_log_impl(&_mh_execute_header, protocol, OS_LOG_TYPE_DEFAULT, "%@: Not installing interface tunnel policies", buf, 0xCu);
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
  policySession2 = [(NESMSession *)selfCopy policySession];
  configuration4 = [(NESMSession *)selfCopy configuration];
  appVPN4 = [configuration4 appVPN];
  obja = [appVPN4 appRules];
  pluginPIDArray = [(NESMVPNSession *)selfCopy pluginPIDArray];
  pluginConfigurationEntities = [(NESMVPNSession *)selfCopy pluginConfigurationEntities];
  dNSSettings = [pluginConfigurationEntities DNSSettings];
  pluginConfigurationEntities2 = [(NESMVPNSession *)selfCopy pluginConfigurationEntities];
  proxySettings = [pluginConfigurationEntities2 proxySettings];
  enabled = [proxySettings enabled];
  if (enabled)
  {
    enabled2 = 1;
  }

  else
  {
    protocol3 = [(NESMVPNSession *)selfCopy protocol];
    proxySettings2 = [protocol3 proxySettings];
    enabled2 = [proxySettings2 enabled];
  }

  configuration5 = [(NESMSession *)selfCopy configuration];
  appVPN5 = [configuration5 appVPN];
  excludedDomains = [appVPN5 excludedDomains];
  v48 = sub_100041F28(policySession2, obja, v71, pluginPIDArray, dNSSettings != 0, enabled2, v67, v3, excludedDomains);

  if ((enabled & 1) == 0)
  {
  }

  configuration6 = [(NESMSession *)v68 configuration];
  v50 = [configuration6 VPN];
  exceptionApps = [v50 exceptionApps];

  if (exceptionApps)
  {
    policySession3 = [(NESMSession *)v68 policySession];
    configuration7 = [(NESMSession *)v68 configuration];
    v53 = [configuration7 VPN];
    exceptionApps2 = [v53 exceptionApps];
    server = [(NESMSession *)v68 server];
    primaryPhysicalInterface = [server primaryPhysicalInterface];
    interfaceName = [primaryPhysicalInterface interfaceName];
    [(NESMSession *)v68 uid];
    v59 = v58 = v3;
    sub_100040B4C(policySession3, exceptionApps2, interfaceName, [v59 intValue]);

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
    selfCopy = self;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%@: Default prepareConfigurationForStart", &v5, 0xCu);
  }

  return 1;
}

- (NSString)pluginType
{
  protocol = [(NESMVPNSession *)self protocol];
  type = [protocol type];

  protocol2 = [(NESMVPNSession *)self protocol];
  protocol3 = protocol2;
  if (type == 4)
  {
    goto LABEL_4;
  }

  type2 = [protocol2 type];

  if (type2 == 5)
  {
    protocol3 = [(NESMVPNSession *)self protocol];
LABEL_4:
    pluginType = [protocol3 pluginType];

    goto LABEL_6;
  }

  pluginType = 0;
LABEL_6:

  return pluginType;
}

- (BOOL)handleUpdateConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    sub_10001DC34(self);
LABEL_16:
    v13 = 0;
    goto LABEL_36;
  }

  if ([(NESMVPNSession *)self type]== 2)
  {
    appVPN = [configurationCopy appVPN];
  }

  else
  {
    if ([(NESMVPNSession *)self type]== 6)
    {
      [configurationCopy dnsProxy];
    }

    else
    {
      [configurationCopy VPN];
    }
    appVPN = ;
  }

  v7 = appVPN;
  isEnabled = [appVPN isEnabled];

  v9 = ne_log_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    configuration = [(NESMSession *)self configuration];
    name = [configuration name];
    *buf = 138412802;
    selfCopy2 = self;
    v40 = 1024;
    v41 = isEnabled;
    v42 = 2112;
    v43 = name;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@: NESMVPNSession - enabled = %d <%@>", buf, 0x1Cu);
  }

  v37.receiver = self;
  v37.super_class = NESMVPNSession;
  if (![(NESMSession *)&v37 handleUpdateConfiguration:configurationCopy])
  {
    goto LABEL_16;
  }

  sub_10001DC34(self);
  if (![(NESMSession *)self disableOnDemand])
  {
    goto LABEL_25;
  }

  configuration2 = [(NESMSession *)self configuration];
  v12 = [configuration2 VPN];
  if (v12)
  {
    configuration = [configurationCopy VPN];
    if (([configuration isOnDemandEnabled] & 1) == 0)
    {

LABEL_21:
      [(NESMSession *)self setDisableOnDemand:0];
      goto LABEL_25;
    }
  }

  configuration3 = [(NESMSession *)self configuration];
  appVPN2 = [configuration3 appVPN];
  if (appVPN2)
  {
    v16 = appVPN2;
    appVPN3 = [configurationCopy appVPN];
    isOnDemandEnabled = [appVPN3 isOnDemandEnabled];

    if (v12)
    {
    }

    if ((isOnDemandEnabled & 1) == 0)
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
    configuration4 = [(NESMSession *)self configuration];
    appVPN4 = [configuration4 appVPN];
    protocol = [appVPN4 protocol];
    [(NESMVPNSession *)self setProtocol:protocol];

    appVPN5 = [configurationCopy appVPN];
  }

  else
  {
    type = [(NESMVPNSession *)self type];
    configuration5 = [(NESMSession *)self configuration];
    v25 = configuration5;
    if (type != 6)
    {
      v34 = [configuration5 VPN];
      protocol2 = [v34 protocol];
      [(NESMVPNSession *)self setProtocol:protocol2];

      v36 = [configurationCopy VPN];
      LODWORD(v34) = [v36 isEnabled];

      if (!v34)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    dnsProxy = [configuration5 dnsProxy];
    protocol3 = [dnsProxy protocol];
    [(NESMVPNSession *)self setProtocol:protocol3];

    appVPN5 = [configurationCopy dnsProxy];
  }

  v28 = appVPN5;
  isEnabled2 = [appVPN5 isEnabled];

  if (isEnabled2)
  {
LABEL_30:
    stateHandler = [(NESMVPNSession *)self stateHandler];
    [stateHandler handleUpdateConfiguration];
  }

LABEL_31:
  if (![(NESMVPNSession *)self resetPerAppPolicy])
  {
    v31 = ne_log_obj();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%@: Failed to reset the per-app policy after a configuration update, disconnecting", buf, 0xCu);
    }

    stateHandler2 = [(NESMVPNSession *)self stateHandler];
    [stateHandler2 handleStop];
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
      interfaceName = [(NESMVPNSession *)self interfaceName];
      *block = 138412802;
      *&block[4] = self;
      *&block[12] = 2112;
      *&block[14] = interfaceName;
      *&block[22] = 2080;
      v13 = "[NESMVPNSession prepareNetwork]";
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%@[%@]:%s:: enter", block, 0x20u);
    }

    interfaceName2 = [(NESMVPNSession *)self interfaceName];
    v5 = -[NESMVPNSession isInterfaceIPAvailable:](self, "isInterfaceIPAvailable:", [interfaceName2 UTF8String]);

    if (v5)
    {
      interfaceName3 = [(NESMVPNSession *)self interfaceName];
      [(NESMVPNSession *)self handleNetworkPrepareResult:interfaceName3];
    }
  }

  else if ([(NESMVPNSession *)self tunnelKind]== 2 && [(NESMVPNSession *)self parentType]== 2)
  {
    parent = [(NESMVPNSession *)self parent];
    selfCopy = self;
    if (parent)
    {
      queue = [parent queue];
      *block = _NSConcreteStackBlock;
      *&block[8] = 3221225472;
      *&block[16] = sub_10009AAB0;
      v13 = &unk_1000EB198;
      v14 = selfCopy;
      v15 = parent;
      dispatch_async(queue, block);
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = NESMVPNSession;
    [(NESMSession *)&v11 prepareNetwork];
  }
}

- (void)setLastDisconnectError:(id)error
{
  errorCopy = error;
  v9.receiver = self;
  v9.super_class = NESMVPNSession;
  [(NESMSession *)&v9 setLastDisconnectError:errorCopy];
  if ([(NESMVPNSession *)self parentType]== 2)
  {
    parent = [(NESMVPNSession *)self parent];
    selfCopy = self;
    v7 = errorCopy;
    if (parent)
    {
      queue = [parent queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10009B2C8;
      block[3] = &unk_1000EABC8;
      block[4] = parent;
      v11 = selfCopy;
      v12 = v7;
      dispatch_async(queue, block);
    }
  }
}

- (void)setLastStopReason:(int)reason
{
  v8.receiver = self;
  v8.super_class = NESMVPNSession;
  [(NESMSession *)&v8 setLastStopReason:?];
  if ([(NESMVPNSession *)self parentType]== 2)
  {
    parent = [(NESMVPNSession *)self parent];
    selfCopy = self;
    if (parent)
    {
      queue = [parent queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10009B1B0;
      block[3] = &unk_1000EB360;
      block[4] = parent;
      v10 = selfCopy;
      reasonCopy = reason;
      dispatch_async(queue, block);
    }
  }
}

- (void)setStatus:(int)status
{
  v61.receiver = self;
  v61.super_class = NESMVPNSession;
  [(NESMSession *)&v61 setStatus:?];
  if ([(NESMVPNSession *)self parentType]== 1)
  {
    parent = [(NESMVPNSession *)self parent];
    selfCopy = self;
    v7 = selfCopy;
    if (!parent || !selfCopy)
    {
      goto LABEL_44;
    }

    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      interfaceName = [(NESMVPNSession *)v7 interfaceName];
      v32 = ne_session_status_to_string();
      *buf = 138413058;
      *&buf[4] = parent;
      *&buf[12] = 2112;
      *&buf[14] = interfaceName;
      *&buf[22] = 2080;
      v69 = "[NESMAlwaysOnSession setStatusFromSession:andStatus:]";
      LOWORD(v70) = 2080;
      *(&v70 + 2) = v32;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%@[%@]:%s: VPN Status to Parent: %s", buf, 0x2Au);
    }

    queue = [parent queue];
    block = _NSConcreteStackBlock;
    v63 = 3221225472;
    v64 = sub_10000D7B4;
    v65 = &unk_1000EB338;
    v66 = parent;
    LODWORD(v67) = status;
    dispatch_async(queue, &block);

    if (status != 1)
    {
      if (status == 3)
      {
        sub_10000A414(parent, v7);
      }

      goto LABEL_44;
    }

    if ((*(parent + 353) & 1) != 0 || (-[NESMVPNSession interfaceName](v7, "interfaceName"), v14 = objc_claimAutoreleasedReturnValue(), v15 = -[NESMVPNSession isInterfaceIPAvailable:](v7, "isInterfaceIPAvailable:", [v14 UTF8String]), v14, !v15))
    {
      v16 = ne_log_obj();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
LABEL_43:

        goto LABEL_44;
      }

      interfaceName2 = [(NESMVPNSession *)v7 interfaceName];
      *buf = 138412802;
      *&buf[4] = parent;
      *&buf[12] = 2112;
      *&buf[14] = interfaceName2;
      *&buf[22] = 2080;
      v69 = "[NESMAlwaysOnSession setStatusFromSession:andStatus:]";
      _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%@[%@]:%s: Session stopped or interface down, no retry", buf, 0x20u);
LABEL_28:

      goto LABEL_43;
    }

    v16 = v7;
    if (!objc_getProperty(parent, v17, 408, 1) || ([v16 interfaceName], v18 = objc_claimAutoreleasedReturnValue(), v18, !v18))
    {

LABEL_26:
      interfaceName2 = ne_log_obj();
      if (os_log_type_enabled(interfaceName2, OS_LOG_TYPE_DEBUG))
      {
        interfaceName3 = [v16 interfaceName];
        *buf = 138412802;
        *&buf[4] = parent;
        *&buf[12] = 2112;
        *&buf[14] = interfaceName3;
        *&buf[22] = 2080;
        v69 = "[NESMAlwaysOnSession alwaysOnRetry:]";
        _os_log_debug_impl(&_mh_execute_header, interfaceName2, OS_LOG_TYPE_DEBUG, "%@[%@]:%s: failed to get retry interval", buf, 0x20u);
      }

      goto LABEL_28;
    }

    v20 = objc_getProperty(parent, v19, 408, 1);
    interfaceName4 = [v16 interfaceName];
    v22 = [v20 objectForKeyedSubscript:interfaceName4];

    if (v22)
    {
      goto LABEL_19;
    }

    v22 = objc_alloc_init(NESMAlwaysOnSessionRetryCounter);
    v23 = 1;
    v25 = objc_getProperty(parent, v24, 408, 1);
    interfaceName5 = [v16 interfaceName];
    [v25 setObject:v22 forKeyedSubscript:interfaceName5];

    if (v22)
    {
LABEL_19:
      interval = v22->_interval;
      if (interval)
      {
        retryCount = v22->_retryCount;
        v22->_retryCount = retryCount + 1;
        if (retryCount < *(parent + 440))
        {
          goto LABEL_35;
        }

        interval *= *(parent + 432);
        v22->_interval = interval;
        v29 = *(parent + 424);
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
              interfaceName6 = [v16 interfaceName];
              *buf = 138413058;
              *&buf[4] = parent;
              *&buf[12] = 2112;
              *&buf[14] = interfaceName6;
              *&buf[22] = 2080;
              v69 = "[NESMAlwaysOnSession alwaysOnRetry:]";
              LOWORD(v70) = 2048;
              *(&v70 + 2) = interval;
              _os_log_debug_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "%@[%@]:%s: Retrying in %ld Secs", buf, 0x2Au);
            }

            v35 = dispatch_time(0, 1000000000 * interval);
            queue2 = [v16 queue];
            *buf = _NSConcreteStackBlock;
            *&buf[8] = 3221225472;
            *&buf[16] = sub_10000D5CC;
            v69 = &unk_1000EB198;
            *&v70 = parent;
            *(&v70 + 1) = v16;
            dispatch_after(v35, queue2, buf);

            goto LABEL_42;
          }

LABEL_41:
          queue3 = [v16 queue];
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_10000D4A4;
          v69 = &unk_1000EB198;
          *&v70 = parent;
          *(&v70 + 1) = v16;
          dispatch_async(queue3, buf);

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
      interfaceName7 = [v16 interfaceName];
      *buf = 138412802;
      *&buf[4] = parent;
      *&buf[12] = 2112;
      *&buf[14] = interfaceName7;
      *&buf[22] = 2080;
      v69 = "[NESMAlwaysOnSession nextRetryIntervalForSession:]";
      _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "%@[%@]:%s: Retrying now", buf, 0x20u);
    }

    if (v23)
    {

      goto LABEL_41;
    }

    interval = 0;
    v22->_interval = *(parent + 416);
    goto LABEL_34;
  }

  if ([(NESMVPNSession *)self parentType]!= 2)
  {
    goto LABEL_45;
  }

  parent = [(NESMVPNSession *)self parent];
  selfCopy2 = self;
  v7 = selfCopy2;
  if (parent && selfCopy2)
  {
    queue4 = [parent queue];
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10009AE84;
    v69 = &unk_1000EB360;
    *&v70 = parent;
    v12 = v7;
    *(&v70 + 1) = v12;
    statusCopy = status;
    dispatch_async(queue4, buf);

    queue5 = [parent queue];
    block = _NSConcreteStackBlock;
    v63 = 3221225472;
    v64 = sub_10009B10C;
    v65 = &unk_1000EB198;
    v66 = parent;
    v67 = v12;
    dispatch_async(queue5, &block);
  }

LABEL_44:

LABEL_45:
  configuration = [(NESMSession *)self configuration];
  v42 = [configuration VPN];
  protocol = [v42 protocol];
  includeAllNetworks = [protocol includeAllNetworks];

  if (!includeAllNetworks)
  {
LABEL_52:
    configuration2 = [(NESMSession *)self configuration];
    appVPN = [configuration2 appVPN];
    if (appVPN)
    {
      v51 = appVPN;
      configuration3 = [(NESMSession *)self configuration];
      appVPN2 = [configuration3 appVPN];
      protocol2 = [appVPN2 protocol];
      sliceUUID = [protocol2 sliceUUID];

      if (status == 1 && sliceUUID)
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

  configuration4 = [(NESMSession *)self configuration];
  v46 = [configuration4 VPN];
  isOnDemandEnabled = [v46 isOnDemandEnabled];

  if (isOnDemandEnabled)
  {
    if (status == 1)
    {
      [(NESMVPNSession *)self setStopped:1];
      return;
    }

    goto LABEL_52;
  }

  if (status != 1)
  {
    if (status == 3)
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

- (unsigned)isInterfaceIPAvailable:(const char *)available
{
  if (!nwi_state_copy())
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      interfaceName = [(NESMVPNSession *)self interfaceName];
      v17 = 138412802;
      selfCopy4 = self;
      v19 = 2112;
      v20 = interfaceName;
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
      interfaceName2 = [(NESMVPNSession *)self interfaceName];
      v17 = 138412802;
      selfCopy4 = self;
      v19 = 2112;
      v20 = interfaceName2;
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
    interfaceName3 = [(NESMVPNSession *)self interfaceName];
    v17 = 138413058;
    selfCopy4 = self;
    v19 = 2112;
    v20 = interfaceName3;
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
    interfaceName4 = [(NESMVPNSession *)self interfaceName];
    v13 = interfaceName4;
    v14 = "DOWN";
    v17 = 138413058;
    selfCopy4 = self;
    if (v6)
    {
      v14 = "UP";
    }

    v19 = 2112;
    v20 = interfaceName4;
    v21 = 2080;
    v22 = "[NESMVPNSession isInterfaceIPAvailable:]";
    v23 = 2080;
    v24 = v14;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%@[%@]:%s:: %s", &v17, 0x2Au);
  }

  return v6;
}

- (void)setIsSecondaryConnection:(BOOL)connection
{
  connectionCopy = connection;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_isSecondaryConnection != connectionCopy)
  {
    selfCopy->_isSecondaryConnection = connectionCopy;
    if ([(NESMVPNSession *)selfCopy parentType]== 1)
    {
      pluginConfigurationEntities = [(NESMVPNSession *)selfCopy pluginConfigurationEntities];

      if (pluginConfigurationEntities)
      {
        [(NESMVPNSession *)selfCopy requestInstall];
      }

      else
      {
        v6 = ne_log_obj();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          v7 = 138412290;
          v8 = selfCopy;
          _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%@: plugin configuration is not set yet", &v7, 0xCu);
        }
      }
    }
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)isSecondaryConnection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NESMVPNSession *)selfCopy type]== 2 || selfCopy->_isSecondaryConnection;
  objc_sync_exit(selfCopy);

  return v3 & 1;
}

- (void)uninstall
{
  parentType = [(NESMVPNSession *)self parentType];
  if (parentType == 1)
  {
    parent = [(NESMVPNSession *)self parent];
    selfCopy = self;
    interfaceName2 = selfCopy;
    if (parent && selfCopy && [(NESMVPNSession *)selfCopy virtualInterface])
    {
      virtualInterface = [interfaceName2 virtualInterface];
      interfaceName = [interfaceName2 interfaceName];
      myCFRetain();
      queue = [parent queue];
      *block = _NSConcreteStackBlock;
      *&block[8] = 3221225472;
      *&block[16] = sub_10000D168;
      v33 = &unk_1000EABA0;
      v34 = parent;
      v35 = interfaceName;
      v36 = virtualInterface;
      v10 = interfaceName;
      dispatch_async(queue, block);
    }

    goto LABEL_6;
  }

  if (!self || ([(NESMSession *)self policySession], v11 = objc_claimAutoreleasedReturnValue(), v12 = sub_100034060(v11), v11, (v12 & 1) == 0))
  {
    parent = ne_log_obj();
    if (!os_log_type_enabled(parent, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    interfaceName2 = [(NESMVPNSession *)self interfaceName];
    *block = 138412802;
    *&block[4] = self;
    *&block[12] = 2112;
    *&block[14] = interfaceName2;
    *&block[22] = 2080;
    v33 = "[NESMVPNSession uninstall]";
    _os_log_error_impl(&_mh_execute_header, parent, OS_LOG_TYPE_ERROR, "%@[%@]:%s: removeTunnelDataPolicy failed", block, 0x20u);
LABEL_6:

LABEL_10:
  }

  if ([(NESMVPNSession *)self virtualInterface])
  {
    configuration = [(NESMSession *)self configuration];
    v14 = [configuration VPN];
    protocol = [v14 protocol];
    if ([protocol type] == 1)
    {
      v16 = 1;
    }

    else
    {
      configuration2 = [(NESMSession *)self configuration];
      v22 = [configuration2 VPN];
      protocol2 = [v22 protocol];
      if ([protocol2 type] == 2)
      {
        v16 = 1;
      }

      else
      {
        configuration3 = [(NESMSession *)self configuration];
        [configuration3 VPN];
        v24 = v27 = parentType;
        protocol3 = [v24 protocol];
        v16 = [protocol3 type] == 3;

        parentType = v27;
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
    v29 = parentType == 1;
    [(NESMVPNSession *)self queueChangesToTunnelConfiguration:v30 completionHandler:v28];
  }

  else
  {
    if ([(NESMVPNSession *)self parentType]== 2)
    {
      parent2 = [(NESMVPNSession *)self parent];
      sub_10009BBB0(parent2, self);
    }

    stateHandler = [(NESMVPNSession *)self stateHandler];
    [stateHandler handleClearConfigurationResult:1];

    sub_100020644(self);
    sub_10008FD50(self);
    if (parentType != 1)
    {
      policySession = [(NESMSession *)self policySession];
      sub_100030D44(policySession);

      if (![(NESMVPNSession *)self virtualInterface])
      {
        policySession2 = [(NESMSession *)self policySession];
        sub_100030F60(policySession2);
      }
    }

    sub_100020758(self, 0);
  }
}

- (void)handleNetworkConfigurationChange:(int64_t)change
{
  queue = [(NESMSession *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100020B4C;
  v6[3] = &unk_1000EB0D8;
  v6[4] = self;
  v6[5] = change;
  dispatch_async(queue, v6);
}

- (void)queueChangesToTunnelConfiguration:(id)configuration completionHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
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
  v14 = configurationCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = configurationCopy;
  dispatch_async(v10, v13);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (int)getVirtualInterfaceMTU:(id)u
{
  v3 = [u MTU];
  intValue = [v3 intValue];

  return intValue;
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

    pluginConfigurationEntities = [(NESMVPNSession *)self pluginConfigurationEntities];
    tunnelRemoteAddress = [pluginConfigurationEntities tunnelRemoteAddress];
    if (tunnelRemoteAddress)
    {
      v6 = tunnelRemoteAddress;
      pluginConfigurationEntities2 = [(NESMVPNSession *)self pluginConfigurationEntities];
      tunnelRemoteAddress2 = [pluginConfigurationEntities2 tunnelRemoteAddress];
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
          parent = [(NESMVPNSession *)self parent];
          selfCopy = self;
          interfaceName2 = selfCopy;
          if (parent && [(NESMVPNSession *)selfCopy virtualInterface])
          {
            virtualInterface = [interfaceName2 virtualInterface];
            myCFRetain();
            queue = [parent queue];
            *buf = _NSConcreteStackBlock;
            *&buf[8] = 3221225472;
            *&buf[16] = sub_10000CC60;
            v42 = &unk_1000EABA0;
            selfCopy2 = parent;
            v45 = virtualInterface;
            v44 = interfaceName2;
            dispatch_async(queue, buf);
          }
        }

        else
        {
          configuration = [(NESMSession *)self configuration];
          v19 = [configuration VPN];
          protocol = [v19 protocol];
          includeAllNetworks = [protocol includeAllNetworks];

          if (includeAllNetworks && (sub_1000226B4(self) & 1) == 0)
          {
            v22 = ne_log_obj();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              interfaceName = [(NESMVPNSession *)self interfaceName];
              *buf = 138412802;
              *&buf[4] = self;
              *&buf[12] = 2112;
              *&buf[14] = interfaceName;
              *&buf[22] = 2080;
              v42 = "[NESMVPNSession setConfiguration]";
              _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%@[%@]:%s: applyTunnelDataPolicies failed", buf, 0x20u);
            }
          }

          if (sub_100022BCC(self))
          {
            goto LABEL_30;
          }

          parent = ne_log_obj();
          if (!os_log_type_enabled(parent, OS_LOG_TYPE_ERROR))
          {
LABEL_29:

LABEL_30:
            configuration2 = [(NESMSession *)self configuration];
            v24 = [configuration2 VPN];
            protocol2 = [v24 protocol];
            if ([protocol2 type] == 1)
            {
              v26 = 1;
            }

            else
            {
              configuration3 = [(NESMSession *)self configuration];
              v28 = [configuration3 VPN];
              protocol3 = [v28 protocol];
              if ([protocol3 type] == 2)
              {
                v26 = 1;
              }

              else
              {
                configuration4 = [(NESMSession *)self configuration];
                v30 = [configuration4 VPN];
                protocol4 = [v30 protocol];
                v26 = [protocol4 type] == 3;
              }
            }

            *buf = _NSConcreteStackBlock;
            *&buf[8] = 3221225472;
            *&buf[16] = sub_100022D7C;
            v42 = &unk_1000E9B80;
            selfCopy2 = self;
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

          interfaceName2 = [(NESMVPNSession *)self interfaceName];
          *buf = 138412802;
          *&buf[4] = self;
          *&buf[12] = 2112;
          *&buf[14] = interfaceName2;
          *&buf[22] = 2080;
          v42 = "[NESMVPNSession setConfiguration]";
          _os_log_error_impl(&_mh_execute_header, parent, OS_LOG_TYPE_ERROR, "%@[%@]:%s: updateDNSSkipPolicies failed", buf, 0x20u);
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
      pluginConfigurationEntities3 = [(NESMVPNSession *)self pluginConfigurationEntities];
      tunnelRemoteAddress3 = [pluginConfigurationEntities3 tunnelRemoteAddress];
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = tunnelRemoteAddress3;
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
    parent = [(NESMVPNSession *)self parent];
    selfCopy = self;
    if (parent)
    {
      queue = [parent queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10009B8B4;
      block[3] = &unk_1000EB198;
      block[4] = parent;
      v7 = selfCopy;
      dispatch_async(queue, block);
    }
  }

  else
  {
    parent = [(NESMSession *)self server];
    [parent requestUninstallForSession:self];
  }
}

- (void)requestInstall
{
  pluginConfigurationEntities = [(NESMVPNSession *)self pluginConfigurationEntities];
  iPv4Settings = [pluginConfigurationEntities IPv4Settings];
  hasDefaultRoute = [iPv4Settings hasDefaultRoute];

  sub_100025718(self);
  parent = [(NESMVPNSession *)self parent];
  if ([(NESMVPNSession *)self parentType]== 1)
  {
    if (!parent)
    {
      goto LABEL_13;
    }

    server = [(NESMSession *)self server];
    v8 = server;
    selfCopy2 = self;
    v10 = parent;
    goto LABEL_9;
  }

  if ([(NESMVPNSession *)self parentType]!= 2)
  {
    server = [(NESMSession *)self server];
    v8 = server;
    selfCopy2 = self;
    v10 = 0;
LABEL_9:
    v13 = [server requestInstallForSession:selfCopy2 withParentSession:v10 exclusive:hasDefaultRoute];

    if ((v13 & 1) == 0)
    {
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        interfaceName = [(NESMVPNSession *)self interfaceName];
        *v17 = 138412546;
        *&v17[4] = self;
        *&v17[12] = 2112;
        *&v17[14] = interfaceName;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@: config request: failed to request install [%@]", v17, 0x16u);
      }

      v15 = [NSError errorWithDomain:@"NEAgentErrorDomain" code:1 userInfo:0];
      sub_100020758(self, v15);
    }

    goto LABEL_13;
  }

  selfCopy3 = self;
  if (parent)
  {
    queue = [parent queue];
    *v17 = _NSConcreteStackBlock;
    *&v17[8] = 3221225472;
    *&v17[16] = sub_10009B3E0;
    v18 = &unk_1000EAC18;
    v21 = hasDefaultRoute;
    v19 = parent;
    v20 = selfCopy3;
    dispatch_async(queue, v17);
  }

LABEL_13:
}

- (void)setEndpointInEstablishIPCReply:(id)reply forPlugin:(id)plugin
{
  value = reply;
  pluginCopy = plugin;
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

- (BOOL)shouldSendIPCAttachForPlugin:(id)plugin
{
  pluginCopy = plugin;
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
    v16 = sub_10001A2D4(pluginCopy);
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

- (void)plugin:(id)plugin didAttachIPCWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  pluginCopy = plugin;
  stateHandler = [(NESMVPNSession *)self stateHandler];
  [stateHandler handlePlugin:pluginCopy didAttachIPCWithEndpoint:endpointCopy];
}

- (void)plugin:(id)plugin didSetConfiguration:(id)configuration completionHandler:(id)handler
{
  pluginCopy = plugin;
  configurationCopy = configuration;
  handlerCopy = handler;
  if ([(NESMVPNSession *)self virtualInterface])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __assert_rtn("[NESMVPNSession plugin:didSetConfiguration:completionHandler:]", "NESMVPNSession.m", 1928, "[configuration isKindOfClass:[NEPacketTunnelNetworkSettings class]]");
    }

    [(NESMVPNSession *)self setPluginConfigurationEntities:configurationCopy];
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      interfaceName = [(NESMVPNSession *)self interfaceName];
      v13 = objc_retainBlock(handlerCopy);
      v20 = 138412802;
      selfCopy3 = self;
      v22 = 2112;
      v23 = interfaceName;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@: Handling set config request: session interface %@ - completionHandler %@", &v20, 0x20u);
    }

    [(NESMVPNSession *)self setPluginCompletionHandler:handlerCopy];
    stateHandler = [(NESMVPNSession *)self stateHandler];
    handleSetConfiguration = [stateHandler handleSetConfiguration];

    if (handleSetConfiguration)
    {
      is_debug_logging_enabled = nelog_is_debug_logging_enabled();
      v17 = ne_log_large_obj();
      v18 = v17;
      if (is_debug_logging_enabled)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v20 = 138412546;
          selfCopy3 = self;
          v22 = 2112;
          v23 = configurationCopy;
          _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%@: plugin set tunnel network settings: %@", &v20, 0x16u);
        }
      }

      else if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v19 = [configurationCopy descriptionWithIndent:0 options:2];
        v20 = 138412546;
        selfCopy3 = self;
        v22 = 2112;
        v23 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%@: plugin set tunnel network settings: %@", &v20, 0x16u);
      }

      goto LABEL_13;
    }

    [(NESMVPNSession *)self setPluginConfigurationEntities:0];
    if (handlerCopy)
    {
      v18 = [NSError errorWithDomain:@"NEAgentErrorDomain" code:1 userInfo:0];
      (*(handlerCopy + 2))(handlerCopy, v18);
      [(NESMVPNSession *)self setPluginCompletionHandler:0];
LABEL_13:
    }
  }
}

- (void)setDelegateInterfaceName:(id)name
{
  nameCopy = name;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    selfCopy = self;
    v11 = 2112;
    v12 = nameCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@: manager set delegate interface name to %@", buf, 0x16u);
  }

  if ([(NESMVPNSession *)self virtualInterface])
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100026374;
    v7[3] = &unk_1000E9AE8;
    v7[4] = self;
    v8 = nameCopy;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10002655C;
    v6[3] = &unk_1000EAD98;
    v6[4] = self;
    [(NESMVPNSession *)self queueChangesToTunnelConfiguration:v7 completionHandler:v6];
  }
}

- (void)plugin:(id)plugin didInitializeWithUUIDs:(id)ds
{
  pluginCopy = plugin;
  dsCopy = ds;
  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412802;
    selfCopy = self;
    v11 = 2112;
    v12 = pluginCopy;
    v13 = 2112;
    v14 = dsCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: Plugin %@ initialized with Mach-O UUIDs %@", &v9, 0x20u);
  }

  [(NESMVPNSession *)self addDefaultDropPolicyForPluginUUIDs:dsCopy];
}

- (void)plugin:(id)plugin didRequestVirtualInterfaceWithParameters:(id)parameters completionHandler:(id)handler
{
  parametersCopy = parameters;
  handlerCopy = handler;
  type = [parametersCopy type];
  kdebug_trace();
  v11 = ne_log_obj();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = type;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Creating a virtual interface with type %ld", buf, 0xCu);
  }

  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_100027870;
  v56[3] = &unk_1000EB1C0;
  v56[4] = self;
  v12 = objc_retainBlock(v56);
  if ((type - 1) > 1)
  {
    if (type == 3)
    {
      ethernetAddress = [parametersCopy ethernetAddress];
      if (ethernetAddress)
      {
        v19 = ethernetAddress;
        v20 = [parametersCopy mtu];

        if (v20)
        {
          v49[0] = _NSConcreteStackBlock;
          v49[1] = 3221225472;
          v50 = sub_100027A6C;
          v51 = &unk_1000E9AC0;
          selfCopy = self;
          v21 = parametersCopy;
          v53 = v21;
          v54 = v12;
          v55 = handlerCopy;
          v22 = v49;
          if (v21)
          {
            if ([v21 type] == 3)
            {
              ethernetAddress2 = [v21 ethernetAddress];
              if (ethernetAddress2)
              {
                v24 = ethernetAddress2;
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
                  ethernetAddress3 = [v21 ethernetAddress];
                  v59[0] = ethernetAddress3;
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
                      objc_storeStrong(p_isa + 1, parameters);
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
                ethernetAddress4 = [v21 ethernetAddress];
                v47 = [v21 mtu];
                *buf = 134218240;
                *&buf[4] = ethernetAddress4;
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
                type2 = [v21 type];
                *buf = 134217984;
                *&buf[4] = type2;
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
        ethernetAddress5 = [parametersCopy ethernetAddress];
        v44 = [parametersCopy mtu];
        *buf = 134218240;
        *&buf[4] = ethernetAddress5;
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
        *&buf[4] = type;
        _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Cannot create a virtual interface with unknown type %ld", buf, 0xCu);
      }
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
    goto LABEL_35;
  }

  if (type == 1 && [(NESMVPNSession *)self type]== 2)
  {
    primaryTunnelPlugin = [(NESMVPNSession *)self primaryTunnelPlugin];
    v15 = primaryTunnelPlugin;
    if (primaryTunnelPlugin)
    {
      Property = objc_getProperty(primaryTunnelPlugin, v14, 24, 1);
      if (Property)
      {
        v17 = Property[5];
      }
    }
  }

  queue = [(NESMSession *)self queue];
  LODWORD(v48) = 0;
  [(NESMVPNSession *)self setVirtualInterface:NEVirtualInterfaceCreateNexusExtended(), 0, v48, 0];

  if ([(NESMVPNSession *)self virtualInterface])
  {
    [(NESMVPNSession *)self virtualInterface];
    NEVirtualInterfaceEnableFlowswitch();
    if (type == 1)
    {
      [(NESMVPNSession *)self virtualInterface];
      NEVirtualInterfaceSetMaxPendingPackets();
    }

    (v12[2])(v12);
  }

  (*(handlerCopy + 2))(handlerCopy, [(NESMVPNSession *)self virtualInterface]);
LABEL_35:
}

- (void)pluginDidClearConfiguration:(id)configuration completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = ne_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    interfaceName = [(NESMVPNSession *)self interfaceName];
    v11 = 138412546;
    selfCopy = self;
    v13 = 2112;
    v14 = interfaceName;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%@: Handling clear config request: session interface %@", &v11, 0x16u);
  }

  [(NESMVPNSession *)self setPluginCompletionHandler:handlerCopy];
  stateHandler = [(NESMVPNSession *)self stateHandler];
  handleClearConfiguration = [stateHandler handleClearConfiguration];

  if (handleClearConfiguration)
  {
    [(NESMVPNSession *)self setPluginConfigurationEntities:0];
  }

  else if (handlerCopy)
  {
    v9 = [NSError errorWithDomain:@"NEAgentErrorDomain" code:1 userInfo:0];
    handlerCopy[2](handlerCopy, v9);
    [(NESMVPNSession *)self setPluginCompletionHandler:0];
  }
}

- (void)plugin:(id)plugin didSetStatus:(int)status andDisconnectError:(id)error
{
  pluginCopy = plugin;
  errorCopy = error;
  v10 = errorCopy;
  if (status != 6 && status)
  {
    code = 0;
    goto LABEL_52;
  }

  if (!errorCopy)
  {
    code = 3;
    goto LABEL_50;
  }

  domain = [errorCopy domain];
  v12 = [domain isEqualToString:@"NEAgentErrorDomain"];

  if (v12)
  {
    if ([v10 code] == 2)
    {
      code = 6;
    }

    else if ([v10 code] == 1)
    {
      code = 7;
    }

    else
    {
      code = 3;
    }

    goto LABEL_49;
  }

  domain2 = [v10 domain];
  v15 = [domain2 isEqualToString:kCFErrorDomainVPNTunnel];

  if (!v15)
  {
    domain3 = [v10 domain];
    v18 = [domain3 isEqualToString:@"IKEv2ProviderDisconnectionErrorDomain"];

    if (v18)
    {
      code = [v10 code];
      goto LABEL_49;
    }

LABEL_48:
    code = 3;
    goto LABEL_49;
  }

  code2 = [v10 code];
  if (code2 <= 107)
  {
    if (code2 > 102)
    {
      if (code2 <= 104)
      {
        if (code2 == 103)
        {
          code = 17;
        }

        else
        {
          code = 18;
        }
      }

      else if (code2 == 105)
      {
        code = 19;
      }

      else if (code2 == 106)
      {
        code = 20;
      }

      else
      {
        code = 21;
      }

      goto LABEL_49;
    }

    if (code2 > 99)
    {
      if (code2 == 100)
      {
        code = 10;
      }

      else if (code2 == 101)
      {
        code = 15;
      }

      else
      {
        code = 16;
      }

      goto LABEL_49;
    }

    if (code2 == 1)
    {
      code = 7;
      goto LABEL_49;
    }

    if (code2 == 2)
    {
      code = 14;
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  if (code2 <= 400)
  {
    if (code2 <= 200)
    {
      if (code2 == 108)
      {
        code = 22;
        goto LABEL_49;
      }

      if (code2 == 200)
      {
        code = 4;
        goto LABEL_49;
      }
    }

    else
    {
      switch(code2)
      {
        case 201:
          code = 5;
          goto LABEL_49;
        case 300:
          code = 23;
          goto LABEL_49;
        case 400:
          code = 24;
          goto LABEL_49;
      }
    }

    goto LABEL_48;
  }

  if (code2 > 499)
  {
    switch(code2)
    {
      case 500:
        code = 28;
        goto LABEL_49;
      case 501:
        code = 29;
        goto LABEL_49;
      case 502:
        code = 30;
        goto LABEL_49;
    }

    goto LABEL_48;
  }

  if (code2 == 401)
  {
    code = 25;
    goto LABEL_49;
  }

  if (code2 == 402)
  {
    code = 26;
    goto LABEL_49;
  }

  if (code2 != 403)
  {
    goto LABEL_48;
  }

  code = 27;
LABEL_49:
  [(NESMVPNSession *)self setLastDisconnectError:v10];
LABEL_50:
  if (![(NESMVPNSession *)self stopped])
  {
    [(NESMVPNSession *)self setStopped:[(NESMVPNSession *)self pluginStopReasonStopsSession:code]];
  }

LABEL_52:
  v19 = pluginCopy;
  v37 = v19;
  if (!self)
  {
    goto LABEL_81;
  }

  v20 = ne_log_obj();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy2 = self;
    v40 = 1024;
    LODWORD(v41) = status;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%@: didSetStatus - %d", buf, 0x12u);
  }

  if (status > 3)
  {
    v19 = v37;
    if (status > 5)
    {
      if (status == 6)
      {
        stateHandler = [(NESMVPNSession *)self stateHandler];
        [stateHandler handlePlugin:v37 statusDidChangeToDisconnectingWithReason:code];
      }

      else
      {
        if (status != 7)
        {
          goto LABEL_81;
        }

        stateHandler = [(NESMVPNSession *)self stateHandler];
        [stateHandler handlePluginStatusDidChangeToUpdating:v37];
      }
    }

    else
    {
      [(NESMVPNSession *)self stateHandler];
      if (status == 4)
        stateHandler = {;
        [stateHandler handlePluginStatusDidChangeToConnected:v37];
      }

      else
        stateHandler = {;
        [stateHandler handlePluginStatusDidChangeToReasserting:v37];
      }
    }
  }

  else
  {
    v19 = v37;
    if (status > 1)
    {
      [(NESMVPNSession *)self stateHandler];
      if (status == 2)
        stateHandler = {;
        [stateHandler handlePluginStatusDidChangeToAuthenticating:v37];
      }

      else
        stateHandler = {;
        [stateHandler handlePluginStatusDidChangeToNegotiating:v37];
      }

      goto LABEL_80;
    }

    if (status)
    {
      if (status != 1)
      {
        goto LABEL_81;
      }

      stateHandler = [(NESMVPNSession *)self stateHandler];
      [stateHandler handlePluginStatusDidChangeToContacting:v37];
      goto LABEL_80;
    }

    stateHandler2 = [(NESMVPNSession *)self stateHandler];
    [stateHandler2 handlePlugin:v37 statusDidChangeToDisconnectedWithReason:code];

    configuration = [(NESMSession *)self configuration];
    appVPN = [(CoreTelephonyClient *)configuration appVPN];
    if (appVPN)
    {
      v25 = appVPN;
      configuration2 = [(NESMSession *)self configuration];
      appVPN2 = [configuration2 appVPN];
      protocol = [appVPN2 protocol];
      stateHandler = [protocol sliceUUID];

      if (!stateHandler)
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
        selfCopy2 = self;
        v40 = 2112;
        v41 = stateHandler;
        v42 = 2112;
        v43 = v35;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%@: VPN Slice deactivate - sliceUUID %@ : sliceInterfaceName %@ ", buf, 0x20u);
      }

      configuration = self->_coreTelephonyClient;
      [(CoreTelephonyClient *)configuration requestSliceDeactivation:objc_getProperty(self, v36, 496, 1)];
    }

    else
    {
      stateHandler = 0;
    }
  }

LABEL_80:

  v19 = v37;
LABEL_81:
}

- (void)pluginDidDetachIPC:(id)c
{
  cCopy = c;
  stateHandler = [(NESMVPNSession *)self stateHandler];
  [stateHandler handlePluginDidDetachIPC:cCopy];
}

- (void)pluginDidAcknowledgeSleep:(id)sleep
{
  if ([(NESMVPNSession *)self parentType]== 2)
  {
    parent = [(NESMVPNSession *)self parent];
    sub_10009A9A8(parent);
  }

  else
  {
    parent = [(NESMSession *)self server];
    sub_100059ED4(parent, v4);
  }
}

- (void)pluginDidDispose:(id)dispose
{
  disposeCopy = dispose;
  stateHandler = [(NESMVPNSession *)self stateHandler];
  [stateHandler handlePluginDisposeComplete:disposeCopy];

  if ([(NESMVPNSession *)self parentType]== 1)
  {
    parent = [(NESMVPNSession *)self parent];
    selfCopy = self;
    if (parent && selfCopy)
    {
      queue = [parent queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000D3FC;
      block[3] = &unk_1000EB198;
      block[4] = parent;
      v12 = selfCopy;
      dispatch_async(queue, block);
    }
  }

  else
  {
    queue2 = [(NESMSession *)self queue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10002866C;
    v10[3] = &unk_1000EB1C0;
    v10[4] = self;
    dispatch_async(queue2, v10);
  }
}

- (void)handleChangeEventForRankedInterfaces
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    stopped = [(NESMVPNSession *)self stopped];
    [(NESMSession *)self status];
    v5 = ne_session_status_to_string();
    configuration = [(NESMSession *)self configuration];
    v7 = [configuration VPN];
    protocol = [v7 protocol];
    v15 = 138413058;
    selfCopy2 = self;
    v17 = 1024;
    *v18 = stopped;
    *&v18[4] = 2080;
    *&v18[6] = v5;
    *&v18[14] = 1024;
    *&v18[16] = [protocol includeAllNetworks];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@: handleChangeEventForRankedInterfaces - stopped %d status %s includeAllNetworks %d", &v15, 0x22u);
  }

  if (![(NESMVPNSession *)self stopped]&& [(NESMSession *)self status]== 3)
  {
    configuration2 = [(NESMSession *)self configuration];
    v10 = [configuration2 VPN];
    protocol2 = [v10 protocol];
    includeAllNetworks = [protocol2 includeAllNetworks];

    if (includeAllNetworks)
    {
      if ((sub_1000226B4(self) & 1) == 0)
      {
        v13 = ne_log_obj();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          interfaceName = [(NESMVPNSession *)self interfaceName];
          v15 = 138412802;
          selfCopy2 = self;
          v17 = 2112;
          *v18 = interfaceName;
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
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@: handleCaptiveNetworkPluginsChanged", &v4, 0xCu);
  }

  sub_10001DC34(self);
}

- (void)handleNetworkDetectionNotification:(int)notification
{
  if (notification <= 1)
  {
    v10 = v3;
    v11 = v4;
    queue = [(NESMSession *)self queue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100028A34;
    v8[3] = &unk_1000EB338;
    v8[4] = self;
    notificationCopy = notification;
    dispatch_async(queue, v8);
  }
}

- (void)handleNetworkPrepareResult:(id)result
{
  v6.receiver = self;
  v6.super_class = NESMVPNSession;
  resultCopy = result;
  [(NESMSession *)&v6 handleNetworkPrepareResult:resultCopy];
  v5 = [(NESMVPNSession *)self stateHandler:v6.receiver];
  [v5 handleNetworkPrepareResult:resultCopy];
}

- (void)handleChangeEventForInterface:(id)interface newFlags:(unint64_t)flags previousFlags:(unint64_t)previousFlags
{
  interfaceCopy = interface;
  v14.receiver = self;
  v14.super_class = NESMVPNSession;
  [(NESMSession *)&v14 handleChangeEventForInterface:interfaceCopy newFlags:flags previousFlags:previousFlags];
  queue = [(NESMSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100028C78;
  block[3] = &unk_1000EABA0;
  block[4] = self;
  v12 = interfaceCopy;
  flagsCopy = flags;
  v10 = interfaceCopy;
  dispatch_async(queue, block);
}

- (BOOL)proxyEnabled:(id)enabled
{
  enabledCopy = enabled;
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
  primaryTunnelPlugin = [(NESMVPNSession *)self primaryTunnelPlugin];
  if (primaryTunnelPlugin)
  {
    v5 = primaryTunnelPlugin;
    primaryTunnelPlugin2 = [(NESMVPNSession *)self primaryTunnelPlugin];
    v7 = sub_10001A2D4(primaryTunnelPlugin2);

    if (v7)
    {
      primaryTunnelPlugin3 = [(NESMVPNSession *)self primaryTunnelPlugin];
      v9 = [NSNumber numberWithInt:sub_10001A2D4(primaryTunnelPlugin3)];
      [v3 addObject:v9];
    }
  }

  authenticationPlugin = [(NESMVPNSession *)self authenticationPlugin];
  if (authenticationPlugin)
  {
    v11 = authenticationPlugin;
    authenticationPlugin2 = [(NESMVPNSession *)self authenticationPlugin];
    v13 = sub_10001A2D4(authenticationPlugin2);

    if (v13)
    {
      authenticationPlugin3 = [(NESMVPNSession *)self authenticationPlugin];
      v15 = [NSNumber numberWithInt:sub_10001A2D4(authenticationPlugin3)];
      [v3 addObject:v15];
    }
  }

  return v3;
}

- (BOOL)interface:(id)interface hasIPAddress:(id)address currentFlags:(unint64_t)flags
{
  flagsCopy = flags;
  interfaceCopy = interface;
  addressCopy = address;
  v10 = NEGetAddressFamilyFromString();
  v11 = v10;
  if ((flagsCopy & 1) == 0 && v10 == 2)
  {
LABEL_3:
    v12 = 0;
    goto LABEL_4;
  }

  v12 = 0;
  v15 = (flagsCopy & 2) == 0 && v10 == 30;
  if (v10 && !v15)
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    BYTE1(v29) = v10;
    strncpy(__dst, [interfaceCopy UTF8String], 0xFuLL);
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
        selfCopy = self;
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
        v12 = [addressCopy isEqualToString:v18];
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
  queue = [(NESMSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100029674;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)handleUserLogout
{
  queue = [(NESMSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002975C;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)handleWakeup
{
  queue = [(NESMSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100029840;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)handleSleepTime:(double)time
{
  queue = [(NESMSession *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100029934;
  v6[3] = &unk_1000EB0D8;
  v6[4] = self;
  *&v6[5] = time;
  dispatch_async(queue, v6);
}

- (BOOL)handleSleep
{
  queue = [(NESMSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100029A80;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(queue, block);

  return 1;
}

- (id)copyExtendedStatus
{
  v3 = [NSMutableDictionary alloc];
  v78.receiver = self;
  v78.super_class = NESMVPNSession;
  copyExtendedStatus = [(NESMSession *)&v78 copyExtendedStatus];
  v5 = [v3 initWithDictionary:copyExtendedStatus];

  v6 = objc_alloc_init(NSMutableDictionary);
  v7 = objc_alloc_init(NSMutableDictionary);
  if ([(NESMVPNSession *)self virtualInterface])
  {
    [(NESMVPNSession *)self virtualInterface];
    v73 = NEVirtualInterfaceCopyVPNServerAddress();
    configuration = [(NESMSession *)self configuration];
    v9 = [configuration VPN];
    protocol = [v9 protocol];
    if ([protocol type] != 1)
    {
      v63 = v6;
      configuration2 = [(NESMSession *)self configuration];
      v17 = [configuration2 VPN];
      protocol2 = [v17 protocol];
      if ([protocol2 type] != 2)
      {
        configuration3 = [(NESMSession *)self configuration];
        [configuration3 VPN];
        v19 = v66 = v7;
        [v19 protocol];
        v20 = v76 = configuration2;
        [v20 type];

        configuration2 = v76;
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
    matchedRule = [(NESMSession *)self matchedRule];

    if (matchedRule)
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
    parent = [(NESMVPNSession *)self parent];
    selfCopy = self;
    if (parent)
    {
      Property = objc_getProperty(parent, v42, 408, 1);
      v45 = -1;
      if (selfCopy && Property)
      {
        v67 = v7;
        interfaceName = [(NESMVPNSession *)selfCopy interfaceName];

        if (interfaceName)
        {
          v48 = objc_getProperty(parent, v47, 408, 1);
          interfaceName2 = [(NESMVPNSession *)selfCopy interfaceName];
          v50 = [v48 objectForKeyedSubscript:interfaceName2];

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
  lastDisconnectError = [(NESMSession *)self lastDisconnectError];
  if (lastDisconnectError)
  {
    v53 = v13;
    v54 = v39;
    v77 = 0;
    v55 = [NSKeyedArchiver archivedDataWithRootObject:lastDisconnectError requiringSecureCoding:1 error:&v77];
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
  lastStatusChangeTime = [(NESMSession *)self lastStatusChangeTime];

  if (lastStatusChangeTime)
  {
    lastStatusChangeTime2 = [(NESMSession *)self lastStatusChangeTime];
    [v5 setObject:lastStatusChangeTime2 forKeyedSubscript:@"LastStatusChangeTime"];
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

- (void)handleGetInfoMessage:(id)message withType:(int)type
{
  xdict = message;
  reply = xpc_dictionary_create_reply(xdict);
  if (type == 2)
  {
    copyExtendedStatus = [(NESMVPNSession *)self copyExtendedStatus];
  }

  else
  {
    if (type != 1)
    {
      goto LABEL_7;
    }

    copyExtendedStatus = [(NESMVPNSession *)self copyStatistics];
  }

  v8 = copyExtendedStatus;
  if (copyExtendedStatus)
  {
    v9 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(reply, "SessionInfo", v9);
  }

LABEL_7:
  v10 = xpc_dictionary_get_remote_connection(xdict);
  xpc_connection_send_message(v10, reply);
}

- (void)handleEstablishIPCMessage:(id)message
{
  messageCopy = message;
  protocol = [(NESMVPNSession *)self protocol];
  status = [(NESMSession *)self status];
  v7 = xpc_dictionary_get_remote_connection(messageCopy);
  if (!status)
  {
    reply = xpc_dictionary_create_reply(messageCopy);
    xpc_connection_send_message(v7, reply);

    goto LABEL_20;
  }

  v8 = xpc_connection_copy_entitlement_value();

  if (!v8 || xpc_get_type(v8) != &_xpc_type_array || (NEGetEntitlement() & 3) == 0)
  {
    goto LABEL_10;
  }

  v9 = xpc_dictionary_get_remote_connection(messageCopy);
  v10 = xpc_connection_copy_entitlement_value();

  if (!v10 || xpc_get_type(v10) != &_xpc_type_string)
  {
    v11 = xpc_dictionary_get_remote_connection(messageCopy);
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

  pluginType = [protocol pluginType];
  if (!pluginType)
  {

    goto LABEL_9;
  }

  v30 = pluginType;
  pluginType2 = [protocol pluginType];
  v32 = [v28 hasPrefix:pluginType2];

  if (v32)
  {
    goto LABEL_23;
  }

LABEL_10:
  v13 = xpc_dictionary_get_remote_connection(messageCopy);
  v14 = xpc_connection_copy_entitlement_value();

  if (v14 && xpc_get_type(v14) == &_xpc_type_BOOL && xpc_BOOL_get_value(v14))
  {
    v8 = v14;
    goto LABEL_23;
  }

  v15 = xpc_dictionary_get_remote_connection(messageCopy);
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
            v22 = xpc_dictionary_get_remote_connection(messageCopy);
            v23 = [NSNumber numberWithUnsignedInt:xpc_connection_get_euid(v22)];
            [(NESMSession *)self setUID:v23];

            if (self)
            {
              objc_setProperty_atomic(self, v24, messageCopy, 392);
            }

            stateHandler = [(NESMVPNSession *)self stateHandler];
            [stateHandler handleEstablishIPC];
            goto LABEL_18;
          }

          v16 = ne_log_obj();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v21 = xpc_dictionary_get_remote_connection(messageCopy);
            v33 = 138412546;
            selfCopy2 = self;
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
    v21 = xpc_dictionary_get_remote_connection(messageCopy);
    v25 = xpc_connection_get_pid(v21);
    pluginType3 = [protocol pluginType];
    v33 = 138412802;
    selfCopy2 = self;
    v35 = 1024;
    pid = v25;
    v37 = 2112;
    v38 = pluginType3;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@: process %d is not entitled to establish IPC with plugins of type %@", &v33, 0x1Cu);

    goto LABEL_30;
  }

LABEL_17:

  stateHandler = xpc_dictionary_get_remote_connection(messageCopy);
  v18 = xpc_dictionary_create_reply(messageCopy);
  xpc_connection_send_message(stateHandler, v18);

LABEL_18:
LABEL_20:
}

- (void)handleStartMessage:(id)message
{
  messageCopy = message;
  [(NESMVPNSession *)self setLastStartMessage:messageCopy];
  [(NESMVPNSession *)self setStopped:0];
  configuration = [(NESMSession *)self configuration];
  externalIdentifier = [configuration externalIdentifier];
  if (!externalIdentifier)
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
      [(NESMSession *)&v24 handleStartMessage:messageCopy];
    }

    stateHandler2 = xpc_dictionary_get_value(messageCopy, "SessionOptions");
    primaryTunnelPlugin = [(NESMVPNSession *)self primaryTunnelPlugin];
    if (primaryTunnelPlugin)
    {
      goto LABEL_12;
    }

    if (!stateHandler2 || xpc_get_type(stateHandler2) != &_xpc_type_dictionary || !xpc_dictionary_get_BOOL(stateHandler2, "test-agent"))
    {
      goto LABEL_13;
    }

    primaryTunnelPlugin = xpc_dictionary_get_remote_connection(messageCopy);
    if (primaryTunnelPlugin)
    {
      v12 = xpc_connection_copy_entitlement_value();
      v13 = v12;
      if (v12 && xpc_get_type(v12) == &_xpc_type_BOOL)
      {
        value = xpc_BOOL_get_value(v13);

        if (value)
        {
          v17 = [NETestAgent alloc];
          configuration2 = [(NESMSession *)self configuration];
          pluginType = [configuration2 pluginType];
          v20 = sub_100075628(&v17->super.super.isa, pluginType, [(NESMVPNSession *)self agentPluginClass], messageCopy);

          if (v20)
          {
            v21 = [NEVPNTunnelPlugin alloc];
            queue = [(NESMSession *)self queue];
            v23 = [(NEVPNTunnelPlugin *)v21 initWithAgent:v20 delegateQueue:queue andDelegate:self];
            [(NESMVPNSession *)self setPrimaryTunnelPlugin:v23];
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

LABEL_12:
LABEL_13:
          primaryTunnelPlugin = [(NESMVPNSession *)self stateHandler];
          [primaryTunnelPlugin handleStartMessage:messageCopy];
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
      selfCopy = "com.apple.private.networkextension.test-control";
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Test provider does not have the %s entitlement", buf, 0xCu);
    }

    stateHandler = [(NESMVPNSession *)self stateHandler];
    [stateHandler handleStartMessage:messageCopy];

    goto LABEL_14;
  }

  v7 = externalIdentifier;
  waitForPerApp = [(NESMSession *)self waitForPerApp];

  if (!waitForPerApp)
  {
    goto LABEL_7;
  }

  v9 = ne_log_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: Ignore start for perApp session - no appRule or app not installed", buf, 0xCu);
  }

  stateHandler2 = [(NESMVPNSession *)self stateHandler];
  [stateHandler2 handleStop];
LABEL_15:
}

- (void)registerSession:(id)session fromClient:(id)client
{
  sessionCopy = session;
  clientCopy = client;
  if ([(NESMVPNSession *)self parentType]== 2)
  {
    parent = [(NESMVPNSession *)self parent];
    v9 = sessionCopy;
    v10 = clientCopy;
    selfCopy = self;
    if (parent)
    {
      if ([(NESMSession *)parent status]== 1)
      {
        messageQueue = [(NESMSession *)parent messageQueue];
        dispatch_suspend(messageQueue);

        server = [(NESMSession *)parent server];
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v19 = sub_10009B5CC;
        v20 = &unk_1000EAC68;
        v21 = parent;
        v22 = v10;
        v23 = selfCopy;
        v24 = v9;
        [server registerSession:parent withCompletionHandler:&buf];

        v14 = v22;
      }

      else
      {
        v15 = ne_log_obj();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = parent;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@ Already registered", &buf, 0xCu);
        }

        queue = [(NESMSession *)selfCopy queue];
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v19 = sub_10009B6B8;
        v20 = &unk_1000EB198;
        v21 = selfCopy;
        v22 = v9;
        dispatch_async(queue, &buf);

        v14 = v21;
      }
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = NESMVPNSession;
    [(NESMSession *)&v17 registerSession:sessionCopy fromClient:clientCopy];
  }
}

- (void)createConnectParametersWithStartMessage:(id)message
{
  xdict = message;
  v4 = xpc_dictionary_get_value(xdict, "SessionOptions");
  v5 = objc_alloc_init(NSMutableDictionary);
  [(NESMVPNSession *)self setConnectParameters:v5];

  protocol = [(NESMVPNSession *)self protocol];
  serverAddress = [protocol serverAddress];

  if (serverAddress)
  {
    protocol2 = [(NESMVPNSession *)self protocol];
    serverAddress2 = [protocol2 serverAddress];
    connectParameters = [(NESMVPNSession *)self connectParameters];
    [connectParameters setObject:serverAddress2 forKeyedSubscript:@"ServerAddress"];
  }

  protocol3 = [(NESMVPNSession *)self protocol];
  username = [protocol3 username];

  if (username)
  {
    protocol4 = [(NESMVPNSession *)self protocol];
    username2 = [protocol4 username];
    connectParameters2 = [(NESMVPNSession *)self connectParameters];
    [connectParameters2 setObject:username2 forKeyedSubscript:@"AccountName"];
  }

  protocol5 = [(NESMVPNSession *)self protocol];
  passwordKeychainItem = [protocol5 passwordKeychainItem];
  if (passwordKeychainItem)
  {
    v18 = passwordKeychainItem;
    protocol6 = [(NESMVPNSession *)self protocol];
    passwordKeychainItem2 = [protocol6 passwordKeychainItem];
    domain = [passwordKeychainItem2 domain];

    if (domain)
    {
      goto LABEL_10;
    }

    protocol7 = [(NESMVPNSession *)self protocol];
    passwordKeychainItem3 = [protocol7 passwordKeychainItem];
    protocol5 = [passwordKeychainItem3 copyPassword];

    if (protocol5)
    {
      connectParameters3 = [(NESMVPNSession *)self connectParameters];
      [connectParameters3 setObject:protocol5 forKeyedSubscript:@"Password"];
    }
  }

LABEL_10:
  protocol8 = [(NESMVPNSession *)self protocol];
  disconnectOnIdle = [protocol8 disconnectOnIdle];

  if (disconnectOnIdle)
  {
    protocol9 = [(NESMVPNSession *)self protocol];
    v28 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [protocol9 disconnectOnIdleTimeout]);
    connectParameters4 = [(NESMVPNSession *)self connectParameters];
    [connectParameters4 setObject:v28 forKeyedSubscript:@"IdleTimer"];
  }

  protocol10 = [(NESMVPNSession *)self protocol];
  type = [protocol10 type];

  protocol11 = [(NESMVPNSession *)self protocol];
  v33 = protocol11;
  if (type == 4)
  {
    if (![protocol11 authenticationMethod])
    {
      connectParameters5 = [(NESMVPNSession *)self connectParameters];
      [connectParameters5 setObject:@"Password" forKeyedSubscript:@"AuthMethod"];
    }

    if ([v33 authenticationMethod] == 1)
    {
      connectParameters6 = [(NESMVPNSession *)self connectParameters];
      [connectParameters6 setObject:@"Certificate" forKeyedSubscript:@"AuthMethod"];

      protocol12 = [(NESMVPNSession *)self protocol];
      identityReferenceInternal = [protocol12 identityReferenceInternal];

      if (identityReferenceInternal)
      {
        protocol13 = [(NESMVPNSession *)self protocol];
        identityReferenceInternal2 = [protocol13 identityReferenceInternal];
        connectParameters7 = [(NESMVPNSession *)self connectParameters];
        [connectParameters7 setObject:identityReferenceInternal2 forKeyedSubscript:@"CertificateRef"];
      }
    }

    providerConfiguration = [v33 providerConfiguration];

    if (providerConfiguration)
    {
      providerConfiguration2 = [v33 providerConfiguration];
      connectParameters8 = [(NESMVPNSession *)self connectParameters];
      [connectParameters8 setObject:providerConfiguration2 forKeyedSubscript:@"VendorData"];
    }

    if (!v4)
    {
      pluginType = [(NESMVPNSession *)self pluginType];
      v81 = [NETunnelProviderProtocol isLegacyPluginType:pluginType];

      if (v81)
      {
LABEL_57:

        goto LABEL_58;
      }

      connectParameters20 = objc_alloc_init(NSMutableDictionary);
      [(NESMVPNSession *)self setConnectParameters:connectParameters20];
      goto LABEL_56;
    }

    connectParameters20 = _CFXPCCreateCFObjectFromXPCObject();
    pluginType2 = [(NESMVPNSession *)self pluginType];
    v46 = [NETunnelProviderProtocol isLegacyPluginType:pluginType2];

    if (!v46)
    {
      connectParameters9 = [(NESMVPNSession *)self connectParameters];
      [connectParameters9 addEntriesFromDictionary:connectParameters20];
LABEL_55:

      goto LABEL_56;
    }

    v47 = kSCEntNetVPN;
    v48 = [connectParameters20 objectForKeyedSubscript:kSCEntNetVPN];
    v49 = isa_nsdictionary();

    if (!v49)
    {
LABEL_53:
      pluginType3 = [v33 pluginType];
      v96 = [connectParameters20 objectForKeyedSubscript:pluginType3];
      v97 = isa_nsdictionary();

      if (v97)
      {
        connectParameters9 = [v33 pluginType];
        v98 = [connectParameters20 objectForKeyedSubscript:connectParameters9];
        connectParameters10 = [(NESMVPNSession *)self connectParameters];
        [connectParameters10 setObject:v98 forKeyedSubscript:@"VendorData"];

        goto LABEL_55;
      }

LABEL_56:

      goto LABEL_57;
    }

    v50 = [connectParameters20 objectForKeyedSubscript:v47];
    v51 = kSCPropNetVPNRemoteAddress;
    v52 = [v50 objectForKeyedSubscript:kSCPropNetVPNRemoteAddress];
    v53 = isa_nsstring();

    if (v53)
    {
      v54 = [v50 objectForKeyedSubscript:v51];
      connectParameters11 = [(NESMVPNSession *)self connectParameters];
      [connectParameters11 setObject:v54 forKeyedSubscript:@"ServerAddress"];
    }

    v56 = kSCPropNetVPNAuthName;
    v57 = [v50 objectForKeyedSubscript:kSCPropNetVPNAuthName];
    v58 = isa_nsstring();

    if (v58)
    {
      v59 = [v50 objectForKeyedSubscript:v56];
      connectParameters12 = [(NESMVPNSession *)self connectParameters];
      [connectParameters12 setObject:v59 forKeyedSubscript:@"AccountName"];
    }

    v61 = kSCPropNetVPNAuthPassword;
    v62 = [v50 objectForKeyedSubscript:kSCPropNetVPNAuthPassword];
    v63 = isa_nsstring();

    if (v63)
    {
      v64 = [v50 objectForKeyedSubscript:v61];
      connectParameters13 = [(NESMVPNSession *)self connectParameters];
      [connectParameters13 setObject:v64 forKeyedSubscript:@"Password"];
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
          connectParameters14 = [(NESMVPNSession *)self connectParameters];
          [connectParameters14 setObject:v93 forKeyedSubscript:@"IdleTimer"];
        }
      }

      goto LABEL_52;
    }

    v69 = [v50 objectForKeyedSubscript:v66];
    if ([v69 isEqualToString:kSCValNetVPNAuthenticationMethodPassword])
    {
      connectParameters15 = [(NESMVPNSession *)self connectParameters];
      [connectParameters15 setObject:@"Password" forKeyedSubscript:@"AuthMethod"];
    }

    else
    {
      if (![v69 isEqualToString:kSCValNetVPNAuthenticationMethodCertificate])
      {
        goto LABEL_46;
      }

      connectParameters16 = [(NESMVPNSession *)self connectParameters];
      [connectParameters16 setObject:@"Certificate" forKeyedSubscript:@"AuthMethod"];

      v84 = kSCPropNetVPNLocalCertificate;
      v85 = [v50 objectForKeyedSubscript:kSCPropNetVPNLocalCertificate];
      v86 = isa_nsdata();

      if (!v86)
      {
        goto LABEL_46;
      }

      connectParameters15 = [v50 objectForKeyedSubscript:v84];
      connectParameters17 = [(NESMVPNSession *)self connectParameters];
      [connectParameters17 setObject:connectParameters15 forKeyedSubscript:@"CertificateRef"];
    }

LABEL_46:
    goto LABEL_47;
  }

  type2 = [protocol11 type];

  if (type2 == 5 && v4)
  {
    v33 = _CFXPCCreateCFObjectFromXPCObject();
    v72 = [v33 objectForKeyedSubscript:NEVPNConnectionStartOptionUsername];
    v73 = isa_nsstring();

    if (v73)
    {
      v74 = [v33 objectForKeyedSubscript:NEVPNConnectionStartOptionUsername];
      connectParameters18 = [(NESMVPNSession *)self connectParameters];
      [connectParameters18 setObject:v74 forKeyedSubscript:@"AccountName"];
    }

    v76 = [v33 objectForKeyedSubscript:NEVPNConnectionStartOptionPassword];
    v77 = isa_nsstring();

    if (v77)
    {
      v78 = [v33 objectForKeyedSubscript:NEVPNConnectionStartOptionPassword];
      connectParameters19 = [(NESMVPNSession *)self connectParameters];
      [connectParameters19 setObject:v78 forKeyedSubscript:@"Password"];
    }

    connectParameters20 = [(NESMVPNSession *)self connectParameters];
    [connectParameters20 addEntriesFromDictionary:v33];
    goto LABEL_56;
  }

LABEL_58:
  if ([(NESMSession *)self isOnDemand])
  {
    pluginType4 = [(NESMVPNSession *)self pluginType];
    v101 = [NETunnelProviderProtocol isLegacyPluginType:pluginType4];

    if (v101)
    {
      connectParameters21 = [(NESMVPNSession *)self connectParameters];
      v103 = [connectParameters21 objectForKeyedSubscript:@"IdleTimer"];

      if (!v103)
      {
        connectParameters22 = [(NESMVPNSession *)self connectParameters];
        [connectParameters22 setObject:&off_1000EE318 forKeyedSubscript:@"IdleTimer"];
      }

      if (v4)
      {
        string = xpc_dictionary_get_string(v4, "match-domain");
        v106 = xpc_dictionary_get_string(v4, "match-hostname");
        if (string)
        {
          v107 = [NSString stringWithUTF8String:string];
          connectParameters23 = [(NESMVPNSession *)self connectParameters];
          [connectParameters23 setObject:v107 forKeyedSubscript:@"OnDemandMatchDomain"];
        }

        if (v106)
        {
          v109 = [NSString stringWithUTF8String:v106];
          connectParameters24 = [(NESMVPNSession *)self connectParameters];
          [connectParameters24 setObject:v109 forKeyedSubscript:@"OnDemandHostName"];
        }
      }

      configuration = [(NESMSession *)self configuration];
      appVPN = [configuration appVPN];

      if (appVPN)
      {
        if (xpc_dictionary_get_int64(xdict, "SessionPID") >= 1)
        {
          v113 = NECopySigningIdentifierForPID();
          if (v113)
          {
            v114 = v113;
            configuration2 = [(NESMSession *)self configuration];
            appVPN2 = [configuration2 appVPN];
            v117 = [appVPN2 copyAppRuleBySigningIdentifier:v114];

            if (v117)
            {
              matchSigningIdentifier = [v117 matchSigningIdentifier];
              connectParameters25 = [(NESMVPNSession *)self connectParameters];
              [connectParameters25 setObject:matchSigningIdentifier forKeyedSubscript:@"AppRuleID"];
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(NESMVPNSession *)selfCopy parentType]== 1 && ([(NESMVPNSession *)selfCopy interfaceName], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    configuration = [(NESMSession *)selfCopy configuration];
    identifier = [(__CFString *)configuration identifier];
    uUIDString = [identifier UUIDString];
    interfaceName = [(NESMVPNSession *)selfCopy interfaceName];
    v8 = [NSString stringWithFormat:@"%@:%@:%d", uUIDString, interfaceName, [(NESMVPNSession *)selfCopy type]];
    [(NESMSession *)selfCopy setAuxiliaryDataKey:v8];
  }

  else
  {
    tunnelKind = [(NESMVPNSession *)selfCopy tunnelKind];
    v10 = @"Fallback Tunnel";
    if (tunnelKind == 1)
    {
      v10 = @"Primary Tunnel";
    }

    configuration = v10;
    identifier = [(NESMSession *)selfCopy configuration];
    uUIDString = [identifier identifier];
    interfaceName = [uUIDString UUIDString];
    v8 = [NSString stringWithFormat:@"%@:%@:%d", interfaceName, configuration, [(NESMVPNSession *)selfCopy type]];
    [(NESMSession *)selfCopy setAuxiliaryDataKey:v8];
  }

  [(NESMSession *)selfCopy setupFromAuxiliaryData];
  objc_sync_exit(selfCopy);

  [(NESMVPNSession *)selfCopy setState:1];
}

- (void)checkPluginInstalledWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  configuration = [(NESMSession *)self configuration];
  pluginType = [configuration pluginType];

  providerBundleIdentifier = [(NESMVPNSession *)self providerBundleIdentifier];
  if (!pluginType)
  {
LABEL_12:
    handlerCopy[2](handlerCopy, 1);
    goto LABEL_13;
  }

  if ([NETunnelProviderProtocol isLegacyPluginType:pluginType])
  {
    handlerCopy[2](handlerCopy, [pluginType hasPrefix:@"com.apple."]);
    goto LABEL_13;
  }

  if ([(NESMVPNSession *)self state]== 9)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: Plugin is being updated", &v15, 0xCu);
    }

    handlerCopy[2](handlerCopy, 0);
    goto LABEL_13;
  }

  v9 = sub_10000DA38();
  v10 = sub_10000F1CC(v9, providerBundleIdentifier, [(NESMVPNSession *)self agentPluginClass]);

  if (v10)
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@: Plugin is registered with provider manager", &v15, 0xCu);
    }

    goto LABEL_12;
  }

  providerBundleIdentifier2 = [(NESMVPNSession *)self providerBundleIdentifier];
  v13 = [NELaunchServices pluginProxyWithIdentifier:providerBundleIdentifier2 type:pluginType pluginClass:[(NESMVPNSession *)self agentPluginClass] extensionPoint:0];

  if (!v13)
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@: Plugin is not available in launch services", &v15, 0xCu);
    }
  }

  handlerCopy[2](handlerCopy, v13 != 0);

LABEL_13:
}

- (BOOL)initializePlugins
{
  primaryTunnelPlugin = [(NESMVPNSession *)self primaryTunnelPlugin];

  if (!primaryTunnelPlugin)
  {
    configuration = [(NESMSession *)self configuration];
    pluginType = [configuration pluginType];

    if (!pluginType)
    {
      v4 = 1;
LABEL_72:

      return v4;
    }

    if (!self)
    {
      goto LABEL_37;
    }

    configuration2 = [(NESMSession *)self configuration];
    pluginType2 = [configuration2 pluginType];

    providerBundleIdentifier = [(NESMVPNSession *)self providerBundleIdentifier];
    providerDesignatedRequirement = [(NESMVPNSession *)self providerDesignatedRequirement];
    p_info = &OBJC_METACLASS___NEDNSProxyPlugin.info;
    v12 = objc_opt_class();
    if (providerBundleIdentifier)
    {
      v13 = sub_10000DA38();
      v14 = sub_10000F1CC(v13, providerBundleIdentifier, [(NESMVPNSession *)self agentPluginClass]);

      if (v14)
      {
        v15 = objc_opt_class();
        if (!providerDesignatedRequirement)
        {
          v16 = ne_log_obj();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            selfCopy3 = self;
            v102 = 2112;
            v103 = pluginType2;
            _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@: Cannot create agent for plugin type %@, missing designated requirement", buf, 0x16u);
          }

          v21 = 0;
LABEL_19:

          if (v21)
          {
            agentPluginClass = [(NESMVPNSession *)self agentPluginClass];
            v23 = off_1000E8ED0;
            v24 = off_1000E8EC8;
            if (agentPluginClass != 3)
            {
              v24 = &off_1000E8F98;
            }

            if (agentPluginClass != 2)
            {
              v23 = v24;
            }

            v25 = *v23;
            v26 = objc_alloc(objc_opt_class());
            queue = [(NESMSession *)self queue];
            v28 = [v26 initWithAgent:v21 delegateQueue:queue andDelegate:self];
            [(NESMVPNSession *)self setPrimaryTunnelPlugin:v28];

            authenticationPluginBundleIdentifier = [(NESMVPNSession *)self authenticationPluginBundleIdentifier];
            if (!authenticationPluginBundleIdentifier)
            {
              goto LABEL_64;
            }

            v30 = pluginType;
            v31 = authenticationPluginBundleIdentifier;
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
                selfCopy3 = v30;
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
                selfCopy3 = v32;
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
                selfCopy3 = v30;
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
                selfCopy3 = v37;
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
              path = [log path];
              if ([v39 fileExistsAtPath:path isDirectory:&v94])
              {
                v41 = v94;

                v37 = v87;
                if (v41)
                {
                  v42 = +[NSFileManager defaultManager];
                  path2 = [log path];
                  v93 = 0;
                  v44 = [v42 contentsOfDirectoryAtPath:path2 error:&v93];
                  v45 = v93;

                  v86 = v45;
                  v82 = v44;
                  if (v45)
                  {
                    obj = ne_log_obj();
                    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
                    {
                      path3 = [log path];
                      *buf = 138412546;
                      selfCopy3 = path3;
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
                                bundleIdentifier = [v78 bundleIdentifier];
                                v80 = [bundleIdentifier isEqualToString:v31];

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
                    bundlePath = [v46 bundlePath];
                    v98 = bundlePath;
                    v52 = [NSDictionary dictionaryWithObjects:&v98 forKeys:&v97 count:1];

                    v53 = objc_alloc((p_info + 446));
                    v54 = [(NESMSession *)self uid];
                    v55 = [v53 initWithPluginType:v31 pluginVersion:0 pluginClass:1 pluginInfo:v52 userID:v54];

                    v56 = [NEVPNAuthenticationPlugin alloc];
                    queue2 = [(NESMSession *)self queue];
                    v58 = [(NEPlugin *)v56 initWithAgent:v55 delegateQueue:queue2 andDelegate:self];
                    [(NESMVPNSession *)self setAuthenticationPlugin:v58];

LABEL_64:
                    extensibleSSOProvider = [(NESMVPNSession *)self extensibleSSOProvider];

                    if (extensibleSSOProvider)
                    {
                      v95 = @"plugin-path";
                      extensibleSSOProvider2 = [(NESMVPNSession *)self extensibleSSOProvider];
                      v96 = extensibleSSOProvider2;
                      v61 = [NSDictionary dictionaryWithObjects:&v96 forKeys:&v95 count:1];

                      v62 = objc_alloc((p_info + 446));
                      pluginType3 = [(NESMVPNSession *)self pluginType];
                      v64 = [(NESMSession *)self uid];
                      v65 = [v62 initWithPluginType:pluginType3 pluginVersion:0 pluginClass:8 pluginInfo:v61 userID:v64];

                      v66 = [NEVPNAuthenticationPlugin alloc];
                      queue3 = [(NESMSession *)self queue];
                      v68 = [(NEPlugin *)v66 initWithAgent:v65 delegateQueue:queue3 andDelegate:self];
                      [(NESMVPNSession *)self setAuthenticationPlugin:v68];
                    }

                    primaryTunnelPlugin2 = [(NESMVPNSession *)self primaryTunnelPlugin];
                    v4 = primaryTunnelPlugin2 != 0;

                    v31 = authenticationPluginBundleIdentifier;
                    goto LABEL_71;
                  }

                  v70 = ne_log_obj();
                  if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    selfCopy3 = self;
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
              selfCopy3 = log;
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
            selfCopy3 = self;
            _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%@: Failed to create an NEAgent", buf, 0xCu);
          }

          v21 = 0;
          goto LABEL_70;
        }

        v12 = v15;
        v99[0] = @"plugin-requirement";
        v99[1] = @"extension-identifier";
        *&v104 = providerDesignatedRequirement;
        *(&v104 + 1) = providerBundleIdentifier;
        v16 = [NSDictionary dictionaryWithObjects:&v104 forKeys:v99 count:2];
LABEL_18:
        v18 = [v12 alloc];
        agentPluginClass2 = [(NESMVPNSession *)self agentPluginClass];
        v20 = [(NESMSession *)self uid];
        v21 = [v18 initWithPluginType:pluginType2 pluginVersion:1 pluginClass:agentPluginClass2 pluginInfo:v16 userID:v20];

        goto LABEL_19;
      }

      v17 = objc_alloc_init(NSMutableDictionary);
      [v17 setObject:providerBundleIdentifier forKeyedSubscript:@"extension-identifier"];
      if (!providerDesignatedRequirement)
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
      if (!providerDesignatedRequirement)
      {
        goto LABEL_12;
      }
    }

    [v17 setObject:providerDesignatedRequirement forKeyedSubscript:@"plugin-requirement"];
    goto LABEL_12;
  }

  return 1;
}

- (void)resetProviderDesignatedRequirementInConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ([(NESMVPNSession *)self sessionType]== 1)
  {
    appVPN = [configurationCopy VPN];
LABEL_5:
    v5 = appVPN;
    protocol = [appVPN protocol];

    goto LABEL_7;
  }

  if ([(NESMVPNSession *)self sessionType]== 2)
  {
    appVPN = [configurationCopy appVPN];
    goto LABEL_5;
  }

  protocol = 0;
LABEL_7:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    providerDesignatedRequirement = [(NESMVPNSession *)self providerDesignatedRequirement];
    [protocol setDesignatedRequirement:providerDesignatedRequirement];
  }
}

- (NSString)extensibleSSOProvider
{
  protocol = [(NESMVPNSession *)self protocol];
  extensibleSSOProvider = [protocol extensibleSSOProvider];

  return extensibleSSOProvider;
}

- (void)setProviderDesignatedRequirement:(id)requirement
{
  requirementCopy = requirement;
  protocol = [(NESMVPNSession *)self protocol];
  [protocol setDesignatedRequirement:requirementCopy];
}

- (NSString)providerDesignatedRequirement
{
  protocol = [(NESMVPNSession *)self protocol];
  designatedRequirement = [protocol designatedRequirement];

  return designatedRequirement;
}

- (NSString)authenticationPluginBundleIdentifier
{
  protocol = [(NESMVPNSession *)self protocol];
  authenticationPluginType = [protocol authenticationPluginType];

  return authenticationPluginType;
}

- (NSString)providerBundleIdentifier
{
  protocol = [(NESMVPNSession *)self protocol];
  providerBundleIdentifier = [protocol providerBundleIdentifier];

  return providerBundleIdentifier;
}

- (BOOL)hasProviderWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  providerBundleIdentifier = [(NESMVPNSession *)self providerBundleIdentifier];
  if (providerBundleIdentifier)
  {
    v6 = [identifierCopy isEqualToString:providerBundleIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)addDefaultDropPolicyForPluginUUIDs:(id)ds
{
  dsCopy = ds;
  if ([(NESMVPNSession *)self parentType]== 1)
  {
    parent = [(NESMVPNSession *)self parent];
    selfCopy = self;
    v7 = dsCopy;
    if (parent && selfCopy)
    {
      queue = [parent queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000D2F4;
      block[3] = &unk_1000EABC8;
      block[4] = parent;
      v13 = selfCopy;
      v14 = v7;
      dispatch_async(queue, block);
    }
  }

  else
  {
    queue2 = [(NESMSession *)self queue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10002D200;
    v10[3] = &unk_1000EB198;
    v10[4] = self;
    v11 = dsCopy;
    dispatch_async(queue2, v10);
  }
}

- (void)setState:(int64_t)state
{
  if (self->_state != state)
  {
    cachedStateHandlers = [(NESMVPNSession *)self cachedStateHandlers];

    if (!cachedStateHandlers)
    {
      goto LABEL_4;
    }

    cachedStateHandlers2 = [(NESMVPNSession *)self cachedStateHandlers];
    v7 = [NSNumber numberWithInteger:state];
    v8 = [cachedStateHandlers2 objectForKeyedSubscript:v7];

    if (!v8)
    {
LABEL_4:
      v9 = [NESMVPNSessionState stateWithType:state];
      if (!v9)
      {
        __assert_rtn("[NESMVPNSession setState:]", "NESMVPNSession.m", 471, "0");
      }

      v8 = v9;
      cachedStateHandlers3 = [(NESMVPNSession *)self cachedStateHandlers];

      if (!cachedStateHandlers3)
      {
        v11 = objc_alloc_init(NSMutableDictionary);
        [(NESMVPNSession *)self setCachedStateHandlers:v11];
      }

      cachedStateHandlers4 = [(NESMVPNSession *)self cachedStateHandlers];
      v13 = [NSNumber numberWithInteger:state];
      [cachedStateHandlers4 setObject:v8 forKeyedSubscript:v13];
    }

    state = self->_state;
    [(NESMVPNSessionState *)self->_stateHandler leave];
    self->_state = state;
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
          configuration = [(NESMSession *)self configuration];
          v20 = [configuration VPN];
          protocol = [v20 protocol];
          includeAllNetworks = [protocol includeAllNetworks];

          if (includeAllNetworks)
          {
            v24 = dispatch_time(0, 1000000000);
            queue = [(NESMSession *)self queue];
            v29[0] = _NSConcreteStackBlock;
            v29[1] = 3221225472;
            v29[2] = sub_10002D790;
            v29[3] = &unk_1000EB338;
            v29[4] = self;
            v30 = 1;
            dispatch_after(v24, queue, v29);

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
  notification = [(NESMVPNSession *)self notification];

  if (notification)
  {
    notification2 = [(NESMVPNSession *)self notification];
    [notification2 cancel];
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
  parentType = [(NESMVPNSession *)self parentType];
  if (self)
  {
    tunnelKind = [(NESMVPNSession *)self tunnelKind];
    v7 = @"Fallback Tunnel";
    if (tunnelKind != 2)
    {
      v7 = &stru_1000EBA68;
    }

    if (tunnelKind == 1)
    {
      v7 = @"Primary Tunnel";
    }
  }

  else
  {
    v7 = 0;
  }

  if (parentType)
  {
    v8 = @"Child:";
  }

  else
  {
    v8 = &stru_1000EBA68;
  }

  v9 = v7;
  configuration = [(NESMSession *)self configuration];
  name = [configuration name];
  configuration2 = [(NESMSession *)self configuration];
  identifier = [configuration2 identifier];
  uUIDString = [identifier UUIDString];
  interfaceName = [(NESMVPNSession *)self interfaceName];
  v16 = [NSString stringWithFormat:@"%@[%@%@:%@:%@:%@]", v4, v8, v9, name, uUIDString, interfaceName];

  return v16;
}

- (NESMVPNSession)initWithConfiguration:(id)configuration andServer:(id)server andProtocol:(id)protocol andPluginType:(id)type andSessionType:(int)sessionType sessionQueue:(id)queue messageQueue:(id)messageQueue tunnelKind:(int64_t)self0 parent:(id)self1
{
  configurationCopy = configuration;
  serverCopy = server;
  protocolCopy = protocol;
  typeCopy = type;
  queueCopy = queue;
  messageQueueCopy = messageQueue;
  parentCopy = parent;
  v59.receiver = self;
  v59.super_class = NESMVPNSession;
  v23 = [(NESMSession *)&v59 initWithConfiguration:configurationCopy andServer:serverCopy sessionQueue:queueCopy messageQueue:messageQueueCopy];
  v24 = v23;
  if (!v23)
  {
    goto LABEL_19;
  }

  v56 = serverCopy;
  v23->_sessionType = sessionType;
  v23->_state = 0;
  objc_storeStrong(&v23->_protocol, protocol);
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

  v24->_tunnelKind = kind;
  v24->_stopped = 1;
  if (parentCopy)
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
    objc_storeWeak(&v24->_parent, parentCopy);
  }

  if (sessionType <= 6 && ((1 << sessionType) & 0x46) != 0)
  {
    v34 = [configurationCopy VPN];

    if (v34)
    {
      appVPN2 = [configurationCopy VPN];
    }

    else
    {
      appVPN = [configurationCopy appVPN];

      if (!appVPN)
      {
        tunnelType = 1;
        goto LABEL_15;
      }

      appVPN2 = [configurationCopy appVPN];
    }

    v37 = appVPN2;
    tunnelType = [appVPN2 tunnelType];

LABEL_15:
    v39 = [NESMPolicySession alloc];
    identifier = [configurationCopy identifier];
    v41 = sub_100033D18(&v39->super.isa, identifier, sessionType, [configurationCopy grade], tunnelType, kind);
    [(NESMSession *)v24 setPolicySession:v41];

    sub_10008E79C(v24);
  }

  v42 = [[NEPolicySession alloc] initWithSessionName:@"VPN control"];
  [(NESMSession *)v24 setControlPolicySession:v42];

  controlPolicySession = [(NESMSession *)v24 controlPolicySession];

  if (!controlPolicySession)
  {
    v53 = ne_log_obj();
    if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
LABEL_23:

      v52 = 0;
      serverCopy = v56;
      goto LABEL_24;
    }

    *buf = 0;
    v54 = "Failed to create VPN control policy session";
LABEL_27:
    _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, v54, buf, 2u);
    goto LABEL_23;
  }

  controlPolicySession2 = [(NESMSession *)v24 controlPolicySession];
  [controlPolicySession2 setPriority:100];

  controlPolicySession3 = [(NESMSession *)v24 controlPolicySession];
  [controlPolicySession3 lockSessionToCurrentProcess];

  v46 = [[NEPolicySession alloc] initWithSessionName:@"VPN high"];
  [(NESMSession *)v24 setHighPolicySession:v46];

  highPolicySession = [(NESMSession *)v24 highPolicySession];

  if (!highPolicySession)
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

  highPolicySession2 = [(NESMSession *)v24 highPolicySession];
  [highPolicySession2 setPriority:400];

  highPolicySession3 = [(NESMSession *)v24 highPolicySession];
  [highPolicySession3 lockSessionToCurrentProcess];

  v50 = objc_alloc_init(NESMVPNSessionRetryCounter);
  objc_setProperty_atomic(v24, v51, v50, 456);

  serverCopy = v56;
LABEL_19:
  v52 = v24;
LABEL_24:

  return v52;
}

@end