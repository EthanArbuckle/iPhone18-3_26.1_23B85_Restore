@interface NSPServer
- (BOOL)canIgnoreInvalidCertsOnInternalBuild;
- (BOOL)configurationFetchDateIsWithinStart:(id)start end:(id)end;
- (BOOL)isSubscriberUnlimited;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)networkDiscoveredProxyInTrustedProxyList:(id)list;
- (BOOL)subscriberTierIsProhibited:(id)prohibited;
- (BOOL)usesDefaultConfigurationServer;
- (NSPServer)init;
- (id)getSavedPrivateCloudComputeEnvironment;
- (void)authInfoChanged:(id)changed;
- (void)badTokenInfoForProxy:(id)proxy;
- (void)checkPrivacyProxyConnectivityOnInterface:(id)interface proxyConnectivityCheckType:(unint64_t)type completionHandler:(id)handler;
- (void)cloudSubscriptionChanged:(BOOL)changed configManager:(id)manager;
- (void)configDisabled:(id)disabled;
- (void)configEnabled:(id)enabled;
- (void)configEpochChanged:(id)changed;
- (void)configFetched:(id)fetched;
- (void)configUpdated:(id)updated;
- (void)configurationRestart:(id)restart;
- (void)didUpdateCountryPlusTimezone:(id)timezone;
- (void)didUpdateGeohash:(id)geohash;
- (void)didUpdateSignificantLocation;
- (void)disableCellularNetwork:(id)network;
- (void)disableWiFiNetwork:(id)network;
- (void)effectiveUserTierChanged:(id)changed;
- (void)geohashSettingsChanged:(id)changed;
- (void)multiHopProxyAgentRegistered:(BOOL)registered;
- (void)networkDiscoveredProxyPaths:(id)paths registeredForAgentUUID:(id)d;
- (void)networkSignatureChanged;
- (void)obliviousHopAgentRegisteredForHostname:(id)hostname processes:(id)processes agentUUID:(id)d;
- (void)obliviousHopAgentUnregisteredForHostname:(id)hostname agentUUID:(id)d;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)policiesUpdated:(id)updated policy:(id)policy resolverInfoChanged:(BOOL)changed;
- (void)preferredProxyAgentRegistered:(id)registered agentUUID:(id)d domainFilter:(id)filter;
- (void)preferredProxyAgentUnregistered:(id)unregistered;
- (void)privateAccessTokensEnabledChanged:(id)changed;
- (void)proxiedContentMaps:(id)maps registeredForAgentUUID:(id)d;
- (void)proxiedContentMapsUnregisteredForAgentUUID:(id)d;
- (void)proxyConnectivityActive;
- (void)proxyInfoChanged:(id)changed;
- (void)proxyTokenFetchDisabled:(id)disabled;
- (void)proxyTokenFetchEnabled:(id)enabled;
- (void)refreshProxyInfo:(unint64_t)info;
- (void)reportActivityForApp:(id)app path:(id)path;
- (void)reportPrivacyProxySuccessOnInterface:(id)interface;
- (void)resumePrivacyProxy:(id)proxy;
- (void)singleHopProxyAgentRegistered:(BOOL)registered;
- (void)suspendPrivacyProxyTemporarily:(id)temporarily;
- (void)tokenFetchActive;
- (void)tokenFetchOutage;
- (void)tokenIssuanceAllowed;
- (void)tokenIssuanceLimitReached;
- (void)updateSavedPrivateCloudComputeEnvironment:(id)environment;
- (void)userPreferredTierChanged:(id)changed;
- (void)userTierChanged:(id)changed;
@end

@implementation NSPServer

- (NSPServer)init
{
  v46.receiver = self;
  v46.super_class = NSPServer;
  v2 = [(NSPServer *)&v46 init];
  if (!v2)
  {
LABEL_21:
    v19 = v2;
    goto LABEL_22;
  }

  v3 = objc_alloc_init(NSPServerFlowDivert);
  v4 = *(v2 + 35);
  *(v2 + 35) = v3;

  if (!*(v2 + 35))
  {
    v36 = nplog_obj();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[NSPServer init]";
      _os_log_fault_impl(&_mh_execute_header, v36, OS_LOG_TYPE_FAULT, "%s called with null _serverFlowDivert", &buf, 0xCu);
    }

    goto LABEL_31;
  }

  v5 = objc_alloc_init(NSPDNSProxy);
  v6 = *(v2 + 48);
  *(v2 + 48) = v5;

  if (!*(v2 + 48))
  {
    v36 = nplog_obj();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[NSPServer init]";
      _os_log_fault_impl(&_mh_execute_header, v36, OS_LOG_TYPE_FAULT, "%s called with null _dnsProxy", &buf, 0xCu);
    }

    goto LABEL_31;
  }

  v7 = NPGetInternalQueue();
  v8 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v7);
  v9 = *(v2 + 32);
  *(v2 + 32) = v8;

  if (!*(v2 + 32))
  {
    v36 = nplog_obj();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[NSPServer init]";
      _os_log_fault_impl(&_mh_execute_header, v36, OS_LOG_TYPE_FAULT, "%s called with null _termSource", &buf, 0xCu);
    }

LABEL_31:

    goto LABEL_8;
  }

  v10 = objc_alloc_init(NSMutableSet);
  v11 = *(v2 + 11);
  *(v2 + 11) = v10;

  *(v2 + 7) = 0;
  v12 = *(v2 + 32);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100060708;
  handler[3] = &unk_100109478;
  v13 = v2;
  v45 = v13;
  dispatch_source_set_event_handler(v12, handler);
  dispatch_resume(*(v2 + 32));
  mach_service = xpc_connection_create_mach_service([@"com.apple.networkserviceproxy" UTF8String], 0, 1uLL);
  v15 = v13[33];
  v13[33] = mach_service;

  v16 = xpc_connection_create_mach_service("com.apple.networkserviceproxy.fetch-token", 0, 1uLL);
  v17 = v13[34];
  v13[34] = v16;

  v18 = v13[33];
  if (v18)
  {
    if (xpc_get_type(v18) == &_xpc_type_connection)
    {
      v20 = v13[34];
      if (v20)
      {
        if (xpc_get_type(v20) == &_xpc_type_connection)
        {
          v21 = v13[33];
          v22 = NPGetInternalQueue();
          xpc_connection_set_target_queue(v21, v22);

          v23 = v13[33];
          v42[0] = _NSConcreteStackBlock;
          v42[1] = 3221225472;
          v42[2] = sub_100001C90;
          v42[3] = &unk_100109EC8;
          v24 = v13;
          v43 = v24;
          xpc_connection_set_event_handler(v23, v42);
          v25 = v13[34];
          v26 = NPGetInternalQueue();
          xpc_connection_set_target_queue(v25, v26);

          v27 = v13[34];
          v37 = _NSConcreteStackBlock;
          v38 = 3221225472;
          v39 = sub_1000607A4;
          v40 = &unk_100109EC8;
          v28 = v24;
          v41 = v28;
          xpc_connection_set_event_handler(v27, &v37);
          objc_initWeak(&location, v28);
          v29 = NPGetInternalQueue();
          *&buf = _NSConcreteStackBlock;
          *(&buf + 1) = 3221225472;
          v49 = sub_1000743B8;
          v50 = &unk_10010A488;
          objc_copyWeak(&v51, &location);
          os_state_add_handler();

          objc_destroyWeak(&v51);
          objc_destroyWeak(&location);
          objc_opt_self();
          if (os_variant_allows_internal_security_policies())
          {
            v30 = CFPreferencesCopyAppValue(@"NSPOutageIntervalSeconds", kCFPreferencesCurrentApplication);
            if (v30 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v31 = nplog_obj();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf) = 138543362;
                *(&buf + 4) = v30;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Detected outage interval in preferences file: %{public}@", &buf, 0xCu);
              }

              unsignedIntegerValue = [v30 unsignedIntegerValue];
            }

            else
            {
              unsignedIntegerValue = 0;
            }
          }

          else
          {
            unsignedIntegerValue = 0;
          }

          v28[40] = unsignedIntegerValue;
          v33 = objc_alloc_init(NSPToggleStats);
          v34 = v28[43];
          v28[43] = v33;

          goto LABEL_21;
        }
      }
    }
  }

LABEL_8:
  v19 = 0;
LABEL_22:

  return v19;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NSPServerCommands];
  [connectionCopy setExportedInterface:v6];

  [connectionCopy setExportedObject:self];
  [connectionCopy resume];

  return 1;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (self)
  {
    primaryPhysicalInterfaceEvaluator = self->_primaryPhysicalInterfaceEvaluator;
  }

  else
  {
    primaryPhysicalInterfaceEvaluator = 0;
  }

  v14 = primaryPhysicalInterfaceEvaluator;
  if (v14 != objectCopy || ![pathCopy isEqualToString:@"path"])
  {

    goto LABEL_8;
  }

  if (context != self)
  {
LABEL_8:
    v16.receiver = self;
    v16.super_class = NSPServer;
    [(NSPServer *)&v16 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
    goto LABEL_9;
  }

  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = sub_100001F54;
  v18[4] = sub_100054494;
  v19 = os_transaction_create();
  v15 = sub_100054464(self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100064820;
  block[3] = &unk_100109450;
  block[4] = self;
  block[5] = v18;
  dispatch_async(v15, block);

  _Block_object_dispose(v18, 8);
LABEL_9:
}

- (void)configFetched:(id)fetched
{
  fetchedCopy = fetched;
  if (self && self->_configOutage)
  {
    self->_configOutage = 0;
    v6 = fetchedCopy;
    mergeProxyTrafficStateWithCurrentPolicy = [(NSPConfigurationManager *)self->_configurationManager mergeProxyTrafficStateWithCurrentPolicy];
    [(NSPServer *)self policiesUpdated:self->_configurationManager policy:mergeProxyTrafficStateWithCurrentPolicy resolverInfoChanged:1];
    sub_1000654C0(self);

    fetchedCopy = v6;
  }
}

- (void)configEnabled:(id)enabled
{
  enabledCopy = enabled;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Privacy proxy configuration enabled", &buf, 2u);
  }

  if (self)
  {
    self->_isRunning = 1;
    currentConfiguration = [(NSPConfigurationManager *)self->_configurationManager currentConfiguration];
    objc_storeStrong(&self->_configuration, currentConfiguration);

    Property = objc_getProperty(self, v7, 280, 1);
  }

  else
  {
    [0 currentConfiguration];

    Property = 0;
  }

  sub_1000A09AC(Property);
  v9 = +[NSPPrivacyProxyPolicyHandler sharedHandler];
  addPoliciesForProbing = [v9 addPoliciesForProbing];

  if ((addPoliciesForProbing & 1) == 0)
  {
    v11 = nplog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "failed to add probing policies", &buf, 2u);
    }
  }

  v12 = [NSPServerODoH alloc];
  if (self)
  {
    primaryPhysicalInterfaceEvaluator = self->_primaryPhysicalInterfaceEvaluator;
  }

  else
  {
    primaryPhysicalInterfaceEvaluator = 0;
  }

  v14 = primaryPhysicalInterfaceEvaluator;
  path = [(NWPathEvaluator *)v14 path];
  if (self)
  {
    toggleStats = self->_toggleStats;
  }

  else
  {
    toggleStats = 0;
  }

  v17 = sub_10004B19C(&v12->super.isa, self, path, toggleStats);
  sub_10001FD68(self, v17);

  v18 = [NSPServiceStatusManager alloc];
  if (self)
  {
    configuration = self->_configuration;
  }

  else
  {
    configuration = 0;
  }

  v20 = configuration;
  userTier = [(NSPConfiguration *)v20 userTier];
  unsignedIntValue = [userTier unsignedIntValue];
  if (!self)
  {
    v82 = -[NSPServiceStatusManager initFromPreferencesWithUserTier:effectiveUserTier:delegate:](v18, "initFromPreferencesWithUserTier:effectiveUserTier:delegate:", unsignedIntValue, [0 effectiveUserTier], 0);
    sub_1000050EC(0, v82);

    [0 proxyTokenFetchEnabled:enabledCopy];
    goto LABEL_51;
  }

  v23 = [(NSPServiceStatusManager *)v18 initFromPreferencesWithUserTier:unsignedIntValue effectiveUserTier:[(NSPConfigurationManager *)self->_configurationManager effectiveUserTier] delegate:self];
  sub_1000050EC(self, v23);

  if (self->_proxyOutage)
  {
    sub_10006CB60(self, 1);
  }

  if (self->_proxyNetworkOutage)
  {
    sub_10006CC18(self, 1);
  }

  if (self->_odohOutageRestoreDate)
  {
    sub_10006BF64(self, 1);
  }

  if (self->_odohAuthOutageRestoreDate)
  {
    sub_10006BD04(self, 1);
  }

  if (!self->_captiveOutage)
  {
    goto LABEL_32;
  }

  v24 = self->_primaryInterface;
  if (!v24)
  {
    goto LABEL_32;
  }

  v25 = v24;
  v26 = self->_primaryPhysicalInterfaceEvaluator;
  if (!v26)
  {

    goto LABEL_32;
  }

  v27 = v26;
  v28 = sub_100064C7C(self);

  if (!v28)
  {
LABEL_32:
    if (self->_captiveOutage && sub_10007252C(self))
    {
      sub_1000724D8(self);
      v30 = NPGetInternalQueue();
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v96 = sub_100074C00;
      v97 = &unk_100109478;
      selfCopy3 = self;
      dispatch_async(v30, &buf);
    }

    goto LABEL_35;
  }

  v29 = nplog_obj();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = self;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%@ Primary interface changed to non Wi-Fi, reporting service active ...", &buf, 0xCu);
  }

  sub_100064D28(self, 0);
LABEL_35:
  if (self->_captiveOutageWaitingForUserActivity)
  {
    v31 = self->_primaryInterface;
    if (v31)
    {
      v32 = v31;
      v33 = self->_primaryPhysicalInterfaceEvaluator;
      if (v33)
      {
        v34 = v33;
        v35 = sub_100064C7C(self);

        if (v35)
        {
          v36 = nplog_obj();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(handler) = 138412290;
            *(&handler + 4) = self;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%@ Primary interface changed to non Wi-Fi, removing the pending outage notification ...", &handler, 0xCu);
          }

          self->_captiveOutageWaitingForUserActivity = 0;
          sub_1000654C0(self);
          sub_100071A04(self);
        }
      }

      else
      {
      }
    }
  }

  [(NSPServer *)self proxyTokenFetchEnabled:enabledCopy];

  objc_initWeak(&location, self);
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 3221225472;
  v96 = sub_10006148C;
  v97 = &unk_100109F80;
  objc_copyWeak(&selfCopy3, &location);
  xpc_activity_register("com.apple.networkserviceproxy.metadata-refresh-12h", XPC_ACTIVITY_CHECK_IN, &buf);
  *&handler = _NSConcreteStackBlock;
  *(&handler + 1) = 3221225472;
  v92 = sub_100061608;
  v93 = &unk_100109F80;
  objc_copyWeak(v94, &location);
  xpc_activity_register("com.apple.networkserviceproxy.metadata-refresh-22h", XPC_ACTIVITY_CHECK_IN, &handler);
  *v84 = _NSConcreteStackBlock;
  v85 = 3221225472;
  v86 = sub_100061784;
  v87 = &unk_100109F80;
  objc_copyWeak(v88, &location);
  xpc_activity_register("com.apple.networkserviceproxy.publish-daily-stats", XPC_ACTIVITY_CHECK_IN, v84);
  objc_destroyWeak(v88);
  objc_destroyWeak(v94);
  objc_destroyWeak(&selfCopy3);
  objc_destroyWeak(&location);
  v37 = NPGetInternalQueue();
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 3221225472;
  v96 = sub_1000726A4;
  v97 = &unk_10010A370;
  selfCopy3 = self;
  v38 = CNPluginMonitorStart();

  v39 = nplog_obj();
  v40 = v39;
  if (v38)
  {
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      LODWORD(handler) = 138412290;
      *(&handler + 4) = self;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "%@: Started CNPluginMonitor", &handler, 0xCu);
    }
  }

  else if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    LODWORD(handler) = 138412290;
    *(&handler + 4) = self;
    _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%@: Failed to start CNPluginMonitor", &handler, 0xCu);
  }

  v41 = NPGetInternalQueue();
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 3221225472;
  v96 = sub_1000714C0;
  v97 = &unk_100109EC8;
  selfCopy3 = self;
  xpc_set_event_stream_handler("com.apple.distnoted.matching", v41, &buf);

  v42 = nplog_obj();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(handler) = 138412290;
    *(&handler + 4) = self;
    _os_log_debug_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "%@ registered for apps installation/uninstallation event", &handler, 0xCu);
  }

LABEL_51:
  v43 = +[NSPPrivacyProxyLocationMonitor sharedMonitor];
  [v43 setDelegate:self];

  v44 = +[NSPPrivacyProxyLocationMonitor sharedMonitor];
  v45 = v44;
  if (self)
  {
    lastGeohash = self->_lastGeohash;
  }

  else
  {
    lastGeohash = 0;
  }

  [v44 setLastGeohash:lastGeohash];

  v47 = +[NSPPrivacyProxyLocationMonitor sharedMonitor];
  v48 = v47;
  if (self)
  {
    [v47 setLastCountryPlusTimezone:self->_lastCountryPlusTimezone];

    v49 = +[NSPPrivacyProxyLocationMonitor sharedMonitor];
    [v49 start];

    objc_initWeak(&handler, self);
    v50 = NPGetInternalQueue();
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v96 = sub_100074C4C;
    v97 = &unk_10010A520;
    objc_copyWeak(&selfCopy3, &handler);
    self->_userActivityNotificationHandle = IOPMScheduleUserActivityLevelNotification();

    if (!self->_userActivityNotificationHandle)
    {
      v51 = nplog_obj();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        *v84 = 0;
        _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Failed to register for user activity notifications", v84, 2u);
      }
    }

    objc_destroyWeak(&selfCopy3);
    objc_destroyWeak(&handler);
  }

  else
  {
    [v47 setLastCountryPlusTimezone:0];

    v83 = +[NSPPrivacyProxyLocationMonitor sharedMonitor];
    [v83 start];
  }

  sub_100066A0C(&self->super.isa);
  sub_100066B38(self);
  sub_100060FFC(self);
  if (self)
  {
    if (self->_configOutage)
    {
      [(NSPServer *)self checkPrivacyProxyConnectivityOnInterface:0 proxyConnectivityCheckType:3 completionHandler:0];
    }

    sub_10006418C(self);
    if (self->_linkQualityMonitoringSocket == -1)
    {
      v52 = socket(32, 3, 1);
      self->_linkQualityMonitoringSocket = v52;
      if (v52 == -1)
      {
        v54 = nplog_obj();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          v79 = __error();
          v80 = strerror(*v79);
          LODWORD(buf) = 136315138;
          *(&buf + 4) = v80;
          _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "failed to create link quality monitoring socket %s", &buf, 0xCu);
        }
      }

      else
      {
        v90 = 1;
        *v84 = 0x100000001;
        LODWORD(v85) = 2;
        if (ioctl(v52, 0x800C6502uLL, v84) || ioctl(self->_linkQualityMonitoringSocket, 0x8004667EuLL, &v90))
        {
          v53 = nplog_obj();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "failed to set ioctl on link quality monitoring socket", &buf, 2u);
          }

          close(self->_linkQualityMonitoringSocket);
          self->_linkQualityMonitoringSocket = -1;
        }

        else
        {
          linkQualityMonitoringSocket = self->_linkQualityMonitoringSocket;
          v70 = NPGetInternalQueue();
          v71 = dispatch_source_create(&_dispatch_source_type_read, linkQualityMonitoringSocket, 0, v70);
          linkQualityMonitoringSource = self->_linkQualityMonitoringSource;
          self->_linkQualityMonitoringSource = v71;

          if (self->_linkQualityMonitoringSource)
          {
            objc_initWeak(&location, self);
            v73 = self->_linkQualityMonitoringSource;
            *&buf = _NSConcreteStackBlock;
            *(&buf + 1) = 3221225472;
            v96 = sub_100074734;
            v97 = &unk_100109538;
            v74 = v73;
            objc_copyWeak(&selfCopy3, &location);
            dispatch_source_set_cancel_handler(v74, &buf);

            v75 = self->_linkQualityMonitoringSource;
            *&handler = _NSConcreteStackBlock;
            *(&handler + 1) = 3221225472;
            v92 = sub_1000021FC;
            v93 = &unk_100109538;
            v76 = v75;
            objc_copyWeak(v94, &location);
            dispatch_source_set_event_handler(v76, &handler);

            objc_destroyWeak(v94);
            objc_destroyWeak(&selfCopy3);
            objc_destroyWeak(&location);
            v77 = self->_linkQualityMonitoringSource;
          }

          else
          {
            v77 = 0;
          }

          dispatch_resume(v77);
          v78 = nplog_obj();
          if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(location) = 0;
            _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "registered for link quality changes", &location, 2u);
          }

          sub_100064E08(self);
        }
      }
    }

    sub_100066CC0(&self->super.isa);
    if (self->_trialClient || ([TRIClient clientWithIdentifier:265], v55 = objc_claimAutoreleasedReturnValue(), trialClient = self->_trialClient, self->_trialClient = v55, trialClient, self->_trialClient))
    {
      if (!self->_trialNotificationToken)
      {
        objc_initWeak(&handler, self);
        v57 = self->_trialClient;
        v58 = NPGetInternalQueue();
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v96 = sub_100074C08;
        v97 = &unk_10010A4F8;
        objc_copyWeak(&selfCopy3, &handler);
        v59 = [(TRIClient *)v57 addUpdateHandlerForNamespaceName:@"NETWORK_SERVICE_PROXY_CONFIG_UPDATE" queue:v58 usingBlock:&buf];
        trialNotificationToken = self->_trialNotificationToken;
        self->_trialNotificationToken = v59;

        objc_destroyWeak(&selfCopy3);
        objc_destroyWeak(&handler);
      }
    }

    else
    {
      v81 = nplog_obj();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_FAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "[NSPServer setupTrialUpdateHandler]";
        _os_log_fault_impl(&_mh_execute_header, v81, OS_LOG_TYPE_FAULT, "%s called with null self.trialClient", &buf, 0xCu);
      }
    }

    if (!self->_toggleStatsTimer)
    {
      v61 = NPGetInternalQueue();
      v62 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v61);
      toggleStatsTimer = self->_toggleStatsTimer;
      self->_toggleStatsTimer = v62;

      v64 = self->_toggleStatsTimer;
      if (v64)
      {
        v65 = v64;
        v66 = dispatch_time(0, 600000000000);
        dispatch_source_set_timer(v65, v66, 0x8BB2C97000uLL, 0);

        objc_initWeak(&handler, self);
        v67 = self->_toggleStatsTimer;
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v96 = sub_1000024F8;
        v97 = &unk_100109538;
        v68 = v67;
        objc_copyWeak(&selfCopy3, &handler);
        dispatch_source_set_event_handler(v68, &buf);

        dispatch_resume(self->_toggleStatsTimer);
        objc_destroyWeak(&selfCopy3);
        objc_destroyWeak(&handler);
      }
    }
  }

  else
  {
    sub_10006418C(0);
    sub_100066CC0(0);
  }

  sub_100066EDC(&self->super.isa);
  sub_1000654C0(self);
}

- (void)configDisabled:(id)disabled
{
  disabledCopy = disabled;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Privacy proxy configuration disabled", v14, 2u);
  }

  sub_10000395C(self, 0);
  if (self)
  {
    self->_isRunning = 0;
    *&self->_captiveOutage = 0;
    *&self->_systemIncompatible = 0;
    self->_proxyNetworkOutage = 0;
    objc_storeStrong(&self->_proxyOutageRestoreDate, 0);
    proxyOutageRestoreTimer = self->_proxyOutageRestoreTimer;
    if (proxyOutageRestoreTimer)
    {
      dispatch_source_cancel(proxyOutageRestoreTimer);
      objc_storeStrong(&self->_proxyOutageRestoreTimer, 0);
    }

    sub_100067468(self);
    [(NSPServiceStatusManager *)self->_serviceStatusManager reportServiceDisabledShouldReport:0];
    +[NSPServiceStatusManager removeFromPreferences];
    objc_storeStrong(&self->_serviceStatusManager, 0);
    Property = objc_getProperty(self, v7, 280, 1);
  }

  else
  {
    sub_100067468(0);
    [0 reportServiceDisabledShouldReport:0];
    +[NSPServiceStatusManager removeFromPreferences];
    Property = 0;
  }

  sub_1000A0904(Property, 1);
  sub_100061B54(self);
  [(NSPServer *)self proxyTokenFetchDisabled:disabledCopy];

  v9 = +[NSPPrivacyProxyPolicyHandler sharedHandler];
  [v9 remove:1];

  if (self)
  {
    odohManager = self->_odohManager;
  }

  else
  {
    odohManager = 0;
  }

  sub_10004B988(odohManager);
  sub_10001FD68(self, 0);
  sub_10004D8DC();
  v11 = +[NSPPrivacyProxyLocationMonitor sharedMonitor];
  [v11 stop];

  sub_1000674F4(self);
  sub_100067598(self);
  +[NSPDeviceIdentityCertificate removeFromPreferences];
  v12 = +[NSPDeviceIdentityCertificate sharedDeviceIdentity];
  [v12 resetDeviceIdentityInfo];

  if (self)
  {
    CNPluginMonitorStop();
    sub_1000675F4(self);
    sub_1000676C8(self);
    sub_10006770C();
    sub_1000677BC(self);
    if (self->_userActivityNotificationHandle)
    {
      IOPMUnregisterNotification();
    }

    [(NSPToggleStats *)self->_toggleStats resetStats];
    toggleStatsTimer = self->_toggleStatsTimer;
    if (toggleStatsTimer)
    {
      dispatch_source_cancel(toggleStatsTimer);
      objc_storeStrong(&self->_toggleStatsTimer, 0);
    }
  }

  else
  {
    sub_10006770C();
    [0 resetStats];
  }
}

- (void)configurationRestart:(id)restart
{
  restartCopy = restart;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "server configuration reset", v6, 2u);
  }

  [(NSPServer *)self configDisabled:restartCopy];
  [(NSPServer *)self configEnabled:restartCopy];
}

- (BOOL)configurationFetchDateIsWithinStart:(id)start end:(id)end
{
  if (self)
  {
    self = self->_configuration;
  }

  return [(NSPServer *)self fetchDateIsWithinStart:start end:end];
}

- (BOOL)subscriberTierIsProhibited:(id)prohibited
{
  v3 = NSSelectorFromString(@"isCloudPrivateRelayAllowed");
  v4 = +[MCProfileConnection sharedConnection];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![v4 performSelector:v3])
  {
    v7 = nplog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Privacy proxy prohibited by profile", v8, 2u);
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)suspendPrivacyProxyTemporarily:(id)temporarily
{
  temporarilyCopy = temporarily;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Privacy proxy suspended temporarily", v8, 2u);
  }

  if (self)
  {
    self->_isRunning = 0;
    Property = objc_getProperty(self, v6, 280, 1);
  }

  else
  {
    Property = 0;
  }

  sub_1000A0904(Property, 1);
  sub_100061B54(self);
  [(NSPServer *)self proxyTokenFetchDisabled:temporarilyCopy];
}

- (void)resumePrivacyProxy:(id)proxy
{
  proxyCopy = proxy;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "resume privacy proxy", v8, 2u);
  }

  if (self)
  {
    self->_isRunning = 1;
    Property = objc_getProperty(self, v6, 280, 1);
  }

  else
  {
    Property = 0;
  }

  sub_1000A09AC(Property);
  [(NSPServer *)self proxyTokenFetchEnabled:proxyCopy];
}

- (void)proxyTokenFetchEnabled:(id)enabled
{
  enabledCopy = enabled;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Proxy token fetch enabled", v6, 2u);
  }

  [(NSPServer *)self authInfoChanged:enabledCopy];
  [(NSPServer *)self proxyInfoChanged:enabledCopy];
}

- (void)proxyTokenFetchDisabled:(id)disabled
{
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Proxy token fetch disabled", v10, 2u);
  }

  if (self)
  {
    objc_storeStrong(&self->_privacyProxyAgentManager, 0);
    v5 = self->_serviceStatusManager;
    configuration = self->_configuration;
  }

  else
  {
    v5 = 0;
    configuration = 0;
  }

  v7 = configuration;
  proxyConfiguration = [(NSPConfiguration *)v7 proxyConfiguration];
  regionId = [proxyConfiguration regionId];
  [(NSPServiceStatusManager *)v5 reportUnsupportedRegion:regionId];
}

- (void)userTierChanged:(id)changed
{
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "user tier changed", buf, 2u);
  }

  if (self)
  {
    configuration = self->_configuration;
  }

  else
  {
    configuration = 0;
  }

  userTier = [(NSPConfiguration *)configuration userTier];
  unsignedIntegerValue = [userTier unsignedIntegerValue];

  if (unsignedIntegerValue != 2)
  {
    +[NSPServiceStatusManager removeFromPreferences];
    v24 = [NSPServiceStatusManager alloc];
    if (self)
    {
      configurationManager = self->_configurationManager;
    }

    else
    {
      configurationManager = 0;
    }

    v19 = [(NSPServiceStatusManager *)v24 initWithUserTier:1 effectiveUserTier:[(NSPConfigurationManager *)configurationManager effectiveUserTier] delegate:self];
    sub_1000050EC(self, v19);
    goto LABEL_31;
  }

  if (self)
  {
    if (self->_isMPTCPConverterProxy)
    {
      v8 = nplog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "stopping proxying TCP socket flows to MPTCP converter proxy", v27, 2u);
      }

      sub_100067F54(self, v9);
    }

    v10 = [NSPServiceStatusManager alloc];
    v11 = self->_configurationManager;
  }

  else
  {
    v10 = [NSPServiceStatusManager alloc];
    v11 = 0;
  }

  v12 = [(NSPServiceStatusManager *)v10 initWithUserTier:2 effectiveUserTier:[(NSPConfigurationManager *)v11 effectiveUserTier] delegate:self];
  sub_1000050EC(self, v12);

  if (self)
  {
    v13 = self->_configuration;
  }

  else
  {
    v13 = 0;
  }

  proxyConfiguration = [(NSPConfiguration *)v13 proxyConfiguration];

  if (proxyConfiguration)
  {
    if (self)
    {
      v15 = self->_configurationManager;
    }

    else
    {
      v15 = 0;
    }

    if (![(NSPConfigurationManager *)v15 configurationSubscriberPoliciesCount])
    {
      if (self)
      {
        v19 = self->_serviceStatusManager;
        v26 = self->_configuration;
      }

      else
      {
        v19 = 0;
        v26 = 0;
      }

      v21 = v26;
      proxyConfiguration2 = [(NSPConfiguration *)v21 proxyConfiguration];
      regionId = [proxyConfiguration2 regionId];
      [(NSPServiceStatusManager *)v19 reportSubscriberUnsupportedRegion:regionId];
      goto LABEL_30;
    }

    if (self)
    {
      v16 = self->_configuration;
    }

    else
    {
      v16 = 0;
    }

    proxyConfiguration3 = [(NSPConfiguration *)v16 proxyConfiguration];
    enabled = [proxyConfiguration3 enabled];

    if ((enabled & 1) == 0)
    {
      if (self)
      {
        v19 = self->_serviceStatusManager;
        v20 = self->_configuration;
      }

      else
      {
        v19 = 0;
        v20 = 0;
      }

      v21 = v20;
      proxyConfiguration2 = [(NSPConfiguration *)v21 proxyConfiguration];
      regionId = [proxyConfiguration2 regionId];
      [(NSPServiceStatusManager *)v19 reportUnsupportedRegion:regionId];
LABEL_30:

LABEL_31:
    }
  }

  sub_10006801C(self);
  sub_1000640C0(self);
  sub_10006815C(self);
}

- (void)userPreferredTierChanged:(id)changed
{
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "user preferred tier changed", v10, 2u);
  }

  if (self)
  {
    configuration = self->_configuration;
  }

  else
  {
    configuration = 0;
  }

  userPreferredTier = [(NSPConfiguration *)configuration userPreferredTier];
  unsignedIntValue = [userPreferredTier unsignedIntValue];

  v8 = unsignedIntValue == 2;
  if (self)
  {
    [(NSPPrivacyProxyAgentManager *)self->_privacyProxyAgentManager sendRTCReportForPrivacyProxyToggleState:v8];
    toggleStats = self->_toggleStats;
  }

  else
  {
    [0 sendRTCReportForPrivacyProxyToggleState:v8];
    toggleStats = 0;
  }

  if (unsignedIntValue == 2)
  {
    [(NSPToggleStats *)toggleStats sendToggleOnStats];
  }

  else
  {
    [(NSPToggleStats *)toggleStats sendToggleOffStats];
  }
}

- (void)effectiveUserTierChanged:(id)changed
{
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "effective user tier changed", v25, 2u);
  }

  if (self)
  {
    v5 = self->_serviceStatusManager;
    v6 = self->_configurationManager;
    [(NSPServiceStatusManager *)v5 handleEffectiveUserTierChange:[(NSPConfigurationManager *)v6 effectiveUserTier]];

    configuration = self->_configuration;
  }

  else
  {
    [0 handleEffectiveUserTierChange:{objc_msgSend(0, "effectiveUserTier")}];

    configuration = 0;
  }

  proxyConfiguration = [(NSPConfiguration *)configuration proxyConfiguration];

  if (proxyConfiguration)
  {
    v9 = self ? self->_configurationManager : 0;
    if ([(NSPConfigurationManager *)v9 effectiveUserTier]== 1)
    {
      if (self)
      {
        v10 = self->_configuration;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;
      userTier = [(NSPServiceStatusManager *)v11 userTier];
      if ([userTier unsignedIntegerValue] != 2)
      {
        goto LABEL_18;
      }

      if (self)
      {
        configurationManager = self->_configurationManager;
      }

      else
      {
        configurationManager = 0;
      }

      configurationSubscriberPoliciesCount = [(NSPConfigurationManager *)configurationManager configurationSubscriberPoliciesCount];

      if (!configurationSubscriberPoliciesCount)
      {
        if (self)
        {
          v11 = self->_serviceStatusManager;
          v15 = self->_configuration;
        }

        else
        {
          v11 = 0;
          v15 = 0;
        }

        v16 = v15;
        userTier = [(NSPConfiguration *)v16 proxyConfiguration];
        regionId = [userTier regionId];
        [(NSPServiceStatusManager *)v11 reportSubscriberUnsupportedRegion:regionId];

LABEL_18:
      }
    }
  }

  if (self)
  {
    v18 = self->_configurationManager;
  }

  else
  {
    v18 = 0;
  }

  effectiveUserTier = [(NSPConfigurationManager *)v18 effectiveUserTier];
  v20 = effectiveUserTier;
  if (self)
  {
    [(NSPPrivacyProxyAgentManager *)self->_privacyProxyAgentManager handleTierChange:effectiveUserTier == 2];
    if (v20 == 2 && self->_captiveOutage)
    {
      objc_storeStrong(&self->_captiveEvaluatedSSID, 0);
      sub_100068898(self);
      return;
    }

    v21 = self->_configurationManager;
    v22 = self->_configurationManager;
  }

  else
  {
    [0 handleTierChange:effectiveUserTier == 2];
    v21 = 0;
    v22 = 0;
  }

  v23 = v22;
  mergeProxyTrafficStateWithCurrentPolicy = [(NSPConfigurationManager *)v23 mergeProxyTrafficStateWithCurrentPolicy];
  [(NSPServer *)self policiesUpdated:v21 policy:mergeProxyTrafficStateWithCurrentPolicy resolverInfoChanged:1];
}

- (void)authInfoChanged:(id)changed
{
  v7 = nplog_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Auth info updated", buf, 2u);
  }

  if (self)
  {
    configuration = self->_configuration;
  }

  else
  {
    configuration = 0;
  }

  v9 = configuration;
  proxyConfiguration = [(NSPConfiguration *)v9 proxyConfiguration];
  authInfo = [proxyConfiguration authInfo];
  authType = [authInfo authType];
  if (authType)
  {
    v13 = self ? self->_configuration : 0;
    v3 = v13;
    proxyConfiguration2 = [(NSPConfiguration *)v3 proxyConfiguration];
    authInfo2 = [proxyConfiguration2 authInfo];
    authURL = [authInfo2 authURL];
    if (authURL)
    {

LABEL_15:
      if (self)
      {
        v19 = self->_configuration;
      }

      else
      {
        v19 = 0;
      }

      proxyConfiguration3 = [(NSPConfiguration *)v19 proxyConfiguration];
      authInfo3 = [proxyConfiguration3 authInfo];
      accessTokenTypesCount = [authInfo3 accessTokenTypesCount];

      if (accessTokenTypesCount)
      {
        v23 = objc_alloc_init(NSMutableArray);
        for (i = 0; i != accessTokenTypesCount; ++i)
        {
          if (self)
          {
            v25 = self->_configuration;
          }

          else
          {
            v25 = 0;
          }

          proxyConfiguration4 = [(NSPConfiguration *)v25 proxyConfiguration];
          authInfo4 = [proxyConfiguration4 authInfo];
          v28 = [authInfo4 accessTokenTypesAtIndex:i];

          v29 = [NSNumber numberWithUnsignedInt:v28];
          [v23 addObject:v29];
        }
      }

      else
      {
        v23 = 0;
      }

      v52 = +[NSPPrivacyTokenManager sharedTokenManager];
      if (self)
      {
        v30 = self->_configuration;
      }

      else
      {
        v30 = 0;
      }

      v50 = v30;
      proxyConfiguration5 = [(NSPConfiguration *)v50 proxyConfiguration];
      authInfo5 = [proxyConfiguration5 authInfo];
      authURL2 = [authInfo5 authURL];
      if (self)
      {
        v31 = self->_configuration;
      }

      else
      {
        v31 = 0;
      }

      v46 = v31;
      proxyConfiguration6 = [(NSPConfiguration *)v46 proxyConfiguration];
      authInfo6 = [proxyConfiguration6 authInfo];
      accessTokenURL = [authInfo6 accessTokenURL];
      if (self)
      {
        v32 = self->_configuration;
      }

      else
      {
        v32 = 0;
      }

      v42 = v32;
      proxyConfiguration7 = [(NSPConfiguration *)v42 proxyConfiguration];
      authInfo7 = [proxyConfiguration7 authInfo];
      accessTokenBlockedIssuers = [authInfo7 accessTokenBlockedIssuers];
      if (self)
      {
        v35 = self->_configuration;
      }

      else
      {
        v35 = 0;
      }

      v36 = v35;
      proxyConfiguration8 = [(NSPConfiguration *)v36 proxyConfiguration];
      authInfo8 = [proxyConfiguration8 authInfo];
      authType2 = [authInfo8 authType];
      if (self)
      {
        v40 = self->_configuration;
      }

      else
      {
        v40 = 0;
      }

      [v52 updateTokenFetchURL:authURL2 accessTokenURL:accessTokenURL accessTokenTypes:v23 accessTokenBlockedIssuers:accessTokenBlockedIssuers authenticationType:authType2 ignoreInvalidCerts:{-[NSPConfiguration ignoreInvalidCerts](v40, "ignoreInvalidCerts")}];

      return;
    }
  }

  v51 = v9;
  if (self)
  {
    v15 = self->_configuration;
  }

  else
  {
    v15 = 0;
  }

  proxyConfiguration9 = [(NSPConfiguration *)v15 proxyConfiguration];
  authInfo9 = [proxyConfiguration9 authInfo];
  accessTokenURL2 = [authInfo9 accessTokenURL];

  if (authType)
  {
  }

  if (accessTokenURL2)
  {
    goto LABEL_15;
  }
}

- (void)proxyInfoChanged:(id)changed
{
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Proxy info updated", buf, 2u);
  }

  if (self && self->_isRunning)
  {
    proxyConfiguration = [(NSPConfiguration *)self->_configuration proxyConfiguration];
    proxies = [proxyConfiguration proxies];
    v7 = [proxies count];

    if (v7)
    {
      privacyProxyAgentManager = self->_privacyProxyAgentManager;
      if (!privacyProxyAgentManager)
      {
        v44 = [(NSPConfigurationManager *)self->_configurationManager effectiveUserTier]== 2;
        v9 = [[NSPPrivacyProxyAgentManager alloc] initWithDelegate:self toggleStats:self->_toggleStats];
        v10 = self->_privacyProxyAgentManager;
        self->_privacyProxyAgentManager = v9;

        v11 = self->_privacyProxyAgentManager;
        v42 = self->_primaryPhysicalInterfaceEvaluator;
        v12 = v11;
        path = [(NWPathEvaluator *)v42 path];
        v40 = self->_configurationManager;
        policyIncludesUnlimited = [(NSPConfigurationManager *)v40 policyIncludesUnlimited];
        v14 = self->_configuration;
        geohashSharingEnabledStatus = [(NSPConfiguration *)v14 geohashSharingEnabledStatus];
        bOOLValue = [geohashSharingEnabledStatus BOOLValue];
        v17 = self->_configuration;
        geohashOverride = [(NSPConfiguration *)v17 geohashOverride];
        v19 = self->_configuration;
        epoch = [(NSPConfiguration *)v19 epoch];
        LODWORD(v32) = self->_primaryInterfaceLinkQuality;
        [(NSPPrivacyProxyAgentManager *)v12 setupWithPath:path subscriber:v44 unlimited:policyIncludesUnlimited geohashSharingEnabled:bOOLValue geohashOverride:geohashOverride configEpoch:epoch linkQuality:v32];

        v21 = self->_privacyProxyAgentManager;
        [(NSPPrivacyProxyAgentManager *)v21 useDefaultNetworkInterface:[(NSPServer *)self usesDefaultConfigurationServer]^ 1];

        privacyProxyAgentManager = self->_privacyProxyAgentManager;
      }

      v41 = self->_configuration;
      p_super = privacyProxyAgentManager;
      proxyConfiguration2 = [(NSPConfiguration *)v41 proxyConfiguration];
      proxies2 = [proxyConfiguration2 proxies];
      v37 = self->_configuration;
      proxyConfiguration3 = [(NSPConfiguration *)v37 proxyConfiguration];
      resolvers = [proxyConfiguration3 resolvers];
      v35 = self->_configuration;
      proxyConfiguration4 = [(NSPConfiguration *)v35 proxyConfiguration];
      pathWeights = [proxyConfiguration4 pathWeights];
      v33 = self->_configuration;
      proxyConfiguration5 = [(NSPConfiguration *)v33 proxyConfiguration];
      fallbackPathWeights = [proxyConfiguration5 fallbackPathWeights];
      v26 = self->_configuration;
      proxyConfiguration6 = [(NSPConfiguration *)v26 proxyConfiguration];
      obliviousConfigs = [proxyConfiguration6 obliviousConfigs];
      v29 = self->_configuration;
      proxyConfiguration7 = [(NSPConfiguration *)v29 proxyConfiguration];
      proxiedContentMaps = [proxyConfiguration7 proxiedContentMaps];
      [p_super updateProxyInfo:proxies2 resolverInfo:resolvers proxyPathList:pathWeights fallbackProxyPathList:fallbackPathWeights obliviousConfigs:obliviousConfigs proxiedContentMaps:proxiedContentMaps];
    }

    else
    {
      p_super = &self->_privacyProxyAgentManager->super;
      self->_privacyProxyAgentManager = 0;
    }
  }

  else
  {
    p_super = nplog_obj();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEFAULT, "Not running yet, ignoring proxy info update", v46, 2u);
    }
  }
}

- (void)policiesUpdated:(id)updated policy:(id)policy resolverInfoChanged:(BOOL)changed
{
  changedCopy = changed;
  policyCopy = policy;
  v8 = nplog_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy4 = policyCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "privacy proxy policies updated - %@", buf, 0xCu);
  }

  if (policyCopy)
  {
    v9 = policyCopy;
    if (!self)
    {
LABEL_13:

      goto LABEL_14;
    }

    if (![(NSPPrivacyProxyAgentManager *)self->_privacyProxyAgentManager isMultiHopProxyAgentRegistered])
    {
      v10 = nplog_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v11 = "defer policy installation until multiHop agents are ready";
        goto LABEL_11;
      }

LABEL_12:

      goto LABEL_13;
    }

    if (self->_systemIncompatible)
    {
      v10 = nplog_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v11 = "defer policy installation until system compatible";
LABEL_11:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v11, buf, 2u);
        goto LABEL_12;
      }

      goto LABEL_12;
    }

    if (self->_fraudAlert)
    {
      v10 = nplog_obj();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        goto LABEL_12;
      }

      *buf = 0;
      v11 = "defer policy installation, token limit reached";
      goto LABEL_11;
    }

    if (self->_configOutage)
    {
      v10 = nplog_obj();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        goto LABEL_12;
      }

      *buf = 0;
      v11 = "defer policy installation until config outage is resolved";
      goto LABEL_11;
    }

    if (self->_tokenOutage)
    {
      v10 = nplog_obj();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        goto LABEL_12;
      }

      *buf = 0;
      v11 = "defer policy installtion until token outage is resolved";
      goto LABEL_11;
    }

    if (self->_proxyOutage)
    {
      v10 = nplog_obj();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        goto LABEL_12;
      }

      *buf = 0;
      v11 = "defer policy installation until proxy outage is resolved";
      goto LABEL_11;
    }

    if (self->_proxyNetworkOutage)
    {
      v10 = nplog_obj();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        goto LABEL_12;
      }

      *buf = 0;
      v11 = "defer policy installation until proxy network outage is resolved";
      goto LABEL_11;
    }

    if (sub_1000653A4(self, v9))
    {
      if (self->_odohOutage)
      {
        v10 = nplog_obj();
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          goto LABEL_12;
        }

        *buf = 0;
        v11 = "defer policy installation until odoh outage is resolved";
        goto LABEL_11;
      }

      if (self->_odohAuthOutage)
      {
        v10 = nplog_obj();
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          goto LABEL_12;
        }

        *buf = 0;
        v11 = "defer policy installation until odoh auth outage is resolved";
        goto LABEL_11;
      }
    }

    if (self->_captiveOutage)
    {
      v10 = nplog_obj();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        goto LABEL_12;
      }

      *buf = 0;
      v11 = "defer policy installation until captive outage is resolved";
      goto LABEL_11;
    }

    v29 = self->_privacyProxyAgentManager;
    [(NSPPrivacyProxyAgentManager *)v29 handleUnlimitedChange:sub_10006A1DC(self, v9)];

    if ([(NSPPrivacyProxyAgentManager *)self->_privacyProxyAgentManager isSingleHopProxyAgentRegistered])
    {
      proxyConfiguration = [(NSPConfiguration *)self->_configuration proxyConfiguration];
      bootstrapResolver = [proxyConfiguration bootstrapResolver];

      if ((sub_10004BC9C(self->_odohManager, bootstrapResolver) & 1) == 0)
      {
        v32 = nplog_obj();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          selfCopy4 = self;
          _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%@ failed to register bootstrap DNS network agent", buf, 0xCu);
        }
      }
    }

    if (sub_1000653A4(self, v9))
    {
      if (changedCopy)
      {
        v33 = nplog_obj();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = self->_configuration;
          proxyConfiguration2 = [(NSPConfiguration *)v34 proxyConfiguration];
          resolvers = [proxyConfiguration2 resolvers];
          *buf = 138412290;
          selfCopy4 = resolvers;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "privacy proxy resolver info updated %@", buf, 0xCu);
        }

        if (![(NSPPrivacyProxyAgentManager *)self->_privacyProxyAgentManager isSingleHopProxyAgentRegistered])
        {
          v26 = nplog_obj();
          if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_118;
          }

          *buf = 138412290;
          selfCopy4 = self;
          v42 = "%@ single hop proxy agent is not active, unable to set DNS policies";
          goto LABEL_112;
        }

        odohManager = self->_odohManager;
        v38 = self->_configuration;
        v39 = odohManager;
        proxyConfiguration3 = [(NSPConfiguration *)v38 proxyConfiguration];
        resolvers2 = [proxyConfiguration3 resolvers];
        sub_10004B91C(v39, resolvers2);
      }

      if ((sub_10004C128(self->_odohManager) & 1) == 0)
      {
        v26 = nplog_obj();
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_118;
        }

        *buf = 138412290;
        selfCopy4 = self;
        v42 = "%@ failed to register DNS network agent";
LABEL_112:
        _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, v42, buf, 0xCu);
        goto LABEL_118;
      }
    }

    else
    {
      sub_10004BA70(self->_odohManager);
      sub_100067468(self);
    }

    inProcessFlowDivert = [(NSPConfiguration *)self->_configuration inProcessFlowDivert];

    if (inProcessFlowDivert)
    {
      inProcessFlowDivert2 = [(NSPConfiguration *)self->_configuration inProcessFlowDivert];
      bOOLValue = [inProcessFlowDivert2 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }

    v47 = objc_getProperty(self, v44, 56, 1);
    pausedBundleIDs = [(NSPServiceStatusManager *)self->_serviceStatusManager pausedBundleIDs];
    v49 = pausedBundleIDs;
    if (pausedBundleIDs)
    {
      if (v47)
      {
        v50 = [v47 arrayByAddingObjectsFromArray:pausedBundleIDs];

        v47 = v50;
      }

      else
      {
        v47 = pausedBundleIDs;
      }
    }

    v70 = v47;
    pausedProcessPaths = [(NSPServiceStatusManager *)self->_serviceStatusManager pausedProcessPaths];
    v51 = +[NSPPrivacyProxyPolicyHandler sharedHandler];
    Property = objc_getProperty(self, v52, 280, 1);
    v71 = v49;
    if (Property)
    {
      v54 = Property[2];
    }

    else
    {
      v54 = 0;
    }

    v55 = v54;
    v56 = self->_privacyProxyAgentManager;
    ingressProxyURL = [(NSPPrivacyProxyAgentManager *)v56 ingressProxyURL];
    v58 = self->_privacyProxyAgentManager;
    ingressFallbackProxyURL = [(NSPPrivacyProxyAgentManager *)v58 ingressFallbackProxyURL];
    v60 = bOOLValue;
    v28 = v70;
    v61 = [v51 set:v9 flowDivertHandle:v55 inProcessFlowDivert:v60 ingressProxyURL:ingressProxyURL ingressFallbackProxyURL:ingressFallbackProxyURL exceptionBundleIDs:v70 exceptionProcessPaths:pausedProcessPaths];

    if (v61)
    {
      configurationSubscriberPoliciesCount = [(NSPConfigurationManager *)self->_configurationManager configurationSubscriberPoliciesCount];
      v63 = self->_serviceStatusManager;
      p_super = &v63->super;
      if (configurationSubscriberPoliciesCount)
      {
        [(NSPServiceStatusManager *)v63 reportServiceActiveShouldReport:self->_userTierChangedFromNonSettingsApp];
      }

      else
      {
        v66 = self->_configuration;
        proxyConfiguration4 = [(NSPConfiguration *)v66 proxyConfiguration];
        regionId = [proxyConfiguration4 regionId];
        [p_super reportSubscriberUnsupportedRegion:regionId];
      }

      v65 = v71;
    }

    else
    {
      p_super = nplog_obj();
      v65 = v71;
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        selfCopy4 = self;
        _os_log_error_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_ERROR, "%@ failed to set privacy proxy policies", buf, 0xCu);
      }
    }

    goto LABEL_109;
  }

LABEL_14:
  if (!self)
  {
    [0 isNetworkOutage];
    isServiceOutage = [0 isServiceOutage];
    if (policyCopy)
    {
      goto LABEL_114;
    }

    isServiceOutage2 = isServiceOutage;
    lastProxyOutageReason = 0;
    goto LABEL_21;
  }

  isNetworkOutage = [(NSPServiceStatusManager *)self->_serviceStatusManager isNetworkOutage];
  isServiceOutage2 = [(NSPServiceStatusManager *)self->_serviceStatusManager isServiceOutage];
  if (self->_systemIncompatible)
  {
    [(NSPServiceStatusManager *)self->_serviceStatusManager reportSystemIncompatibility];
    v14 = self->_toggleStats;
    [(NSPToggleStats *)v14 setSystemIncompatibleCount:[(NSPToggleStats *)v14 systemIncompatibleCount]+ 1];
LABEL_19:
    lastProxyOutageReason = 0;
LABEL_20:

    goto LABEL_21;
  }

  if (self->_fraudAlert)
  {
    [(NSPServiceStatusManager *)self->_serviceStatusManager reportFraudAlert];
    v14 = self->_toggleStats;
    [(NSPToggleStats *)v14 setFraudAlertCount:[(NSPToggleStats *)v14 fraudAlertCount]+ 1];
    goto LABEL_19;
  }

  if (self->_captiveOutage)
  {
    lastProxyOutageReason2 = self->_lastCaptiveOutageReasonStats;
LABEL_37:
    lastProxyOutageReason = lastProxyOutageReason2;
    [(NSPServiceStatusManager *)self->_serviceStatusManager reportServiceOutageWithType:2 outageReasonStats:lastProxyOutageReason2];
    v14 = self->_toggleStats;
    [(NSPToggleStats *)v14 setNetworkOutageCount:[(NSPToggleStats *)v14 networkOutageCount]+ 1];
    isServiceOutage2 = isNetworkOutage;
    goto LABEL_20;
  }

  if (self->_proxyOutage)
  {
    lastProxyOutageReason = [(NSPPrivacyProxyAgentManager *)self->_privacyProxyAgentManager lastProxyOutageReason];
    [(NSPServiceStatusManager *)self->_serviceStatusManager reportServiceOutageWithType:5 outageReasonStats:lastProxyOutageReason];
    v14 = self->_toggleStats;
    [(NSPToggleStats *)v14 setProxyOutageCount:[(NSPToggleStats *)v14 proxyOutageCount]+ 1];
    goto LABEL_20;
  }

  if (self->_proxyNetworkOutage)
  {
    lastProxyOutageReason2 = [(NSPPrivacyProxyAgentManager *)self->_privacyProxyAgentManager lastProxyOutageReason];
    goto LABEL_37;
  }

  if (self->_odohOutage || self->_odohAuthOutage)
  {
    lastProxyOutageReason = sub_10004D0A4(&self->_odohManager->super.isa);
    [(NSPServiceStatusManager *)self->_serviceStatusManager reportServiceOutageWithType:4 outageReasonStats:lastProxyOutageReason];
    v14 = self->_toggleStats;
    [(NSPToggleStats *)v14 setOdohOutageCount:[(NSPToggleStats *)v14 odohOutageCount]+ 1];
    goto LABEL_20;
  }

  if (self->_tokenOutage)
  {
    lastProxyOutageReason = [(NSPPrivacyProxyAgentManager *)self->_privacyProxyAgentManager lastTokenOutageReason];
    [(NSPServiceStatusManager *)self->_serviceStatusManager reportServiceOutageWithType:3 outageReasonStats:lastProxyOutageReason];
    v14 = self->_toggleStats;
    [(NSPToggleStats *)v14 setTokenOutageCount:[(NSPToggleStats *)v14 tokenOutageCount]+ 1];
    goto LABEL_20;
  }

  if (self->_configOutage)
  {
    lastProxyOutageReason = self->_lastConfigOutageReasonStats;
    [(NSPServiceStatusManager *)self->_serviceStatusManager reportServiceOutageWithType:1 outageReasonStats:lastProxyOutageReason];
    v14 = self->_toggleStats;
    [(NSPToggleStats *)v14 setConfigOutageCount:[(NSPToggleStats *)v14 configOutageCount]+ 1];
    goto LABEL_20;
  }

  lastProxyOutageReason = 0;
  v28 = 0;
  if (policyCopy)
  {
LABEL_109:

    goto LABEL_30;
  }

LABEL_21:
  v16 = nplog_obj();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "remove policies", buf, 2u);
  }

  v17 = +[NSPPrivacyProxyPolicyHandler sharedHandler];
  [v17 remove:0];

  if (self)
  {
    v18 = self->_odohManager;
  }

  else
  {
    v18 = 0;
  }

  sub_10004BA70(v18);
  if (!((lastProxyOutageReason == 0) | isServiceOutage2 & 1))
  {
    if (self)
    {
      privacyProxyAgentManager = self->_privacyProxyAgentManager;
    }

    else
    {
      privacyProxyAgentManager = 0;
    }

    [(NSPPrivacyProxyAgentManager *)privacyProxyAgentManager sendRTCReportForServiceOutage:lastProxyOutageReason];
  }

  if (self)
  {
LABEL_30:
    v21 = objc_getProperty(self, v20, 384, 1);
    if (sub_100041640(v21))
    {
      v23 = objc_getProperty(self, v22, 384, 1);
      sub_10004136C(v23, [(NSPServer *)self isSubscriberUnlimited]);

      v25 = objc_getProperty(self, v24, 280, 1);
LABEL_32:
      v26 = v25;
      [(NSPServer *)self isSubscriberUnlimited];
      if (v26 && v26[3].isa)
      {
        NEFlowDirectorRedirectDNSToLoopback();
      }

      goto LABEL_118;
    }

    goto LABEL_116;
  }

LABEL_114:
  if (sub_100041640(0))
  {
    sub_10004136C(0, [0 isSubscriberUnlimited]);
    v25 = 0;
    goto LABEL_32;
  }

LABEL_116:
  v26 = nplog_obj();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "DNS proxy not supported on this platform", buf, 2u);
  }

LABEL_118:
}

- (void)configUpdated:(id)updated
{
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Configuration updated", v7, 2u);
  }

  sub_100064320(self);
  sub_100066EDC(&self->super.isa);
  if (self)
  {
    v5 = self->_privacyProxyAgentManager;
    [(NSPPrivacyProxyAgentManager *)v5 useDefaultNetworkInterface:[(NSPServer *)self usesDefaultConfigurationServer]^ 1];

    sub_10004C8C0(&self->_odohManager->super.isa);
    privacyProxyAgentManager = self->_privacyProxyAgentManager;
  }

  else
  {
    [0 useDefaultNetworkInterface:{objc_msgSend(0, "usesDefaultConfigurationServer") ^ 1}];
    sub_10004C8C0(0);
    privacyProxyAgentManager = 0;
  }

  [(NSPPrivacyProxyAgentManager *)privacyProxyAgentManager handleConfigChange];
}

- (void)geohashSettingsChanged:(id)changed
{
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Geohash settings changed", v13, 2u);
  }

  if (self)
  {
    v5 = self->_privacyProxyAgentManager;
    configuration = self->_configuration;
  }

  else
  {
    v5 = 0;
    configuration = 0;
  }

  v7 = configuration;
  geohashSharingEnabledStatus = [(NSPConfiguration *)v7 geohashSharingEnabledStatus];
  bOOLValue = [geohashSharingEnabledStatus BOOLValue];
  if (self)
  {
    v10 = self->_configuration;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  geohashOverride = [(NSPConfiguration *)v11 geohashOverride];
  [(NSPPrivacyProxyAgentManager *)v5 updateGeohashSharingPreference:bOOLValue geohashOverride:geohashOverride];
}

- (void)configEpochChanged:(id)changed
{
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Config epoch changed", v9, 2u);
  }

  if (self)
  {
    v5 = self->_privacyProxyAgentManager;
    configuration = self->_configuration;
  }

  else
  {
    v5 = 0;
    configuration = 0;
  }

  v7 = configuration;
  epoch = [(NSPConfiguration *)v7 epoch];
  [(NSPPrivacyProxyAgentManager *)v5 updateConfigEpoch:epoch];
}

- (void)privateAccessTokensEnabledChanged:(id)changed
{
  v3 = nplog_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Private Access Tokens settings changed", v4, 2u);
  }
}

- (void)cloudSubscriptionChanged:(BOOL)changed configManager:(id)manager
{
  if (changed)
  {
    sub_100066A0C(&self->super.isa);

    sub_100066B38(self);
  }

  else
  {

    sub_100067598(self);
  }
}

- (void)badTokenInfoForProxy:(id)proxy
{
  if (self)
  {
    configuration = self->_configuration;
  }

  else
  {
    configuration = 0;
  }

  v6 = configuration;
  proxyCopy = proxy;
  configurationFetchDate = [(NSPConfiguration *)v6 configurationFetchDate];
  v9 = [NSDateFormatter localizedStringFromDate:configurationFetchDate dateStyle:1 timeStyle:2];

  v10 = nplog_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v11 = self->_configuration;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    etag = [(NSPConfiguration *)v12 etag];
    *buf = 138412546;
    v28 = etag;
    v29 = 2112;
    v30 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received bad token info for configuration tag[%@] with fetch date %@", buf, 0x16u);
  }

  [(NSPServer *)self refreshProxyInfo:6];
  v14 = +[NSDate now];
  if (self)
  {
    v15 = self->_configuration;
  }

  else
  {
    v15 = 0;
  }

  configurationFetchDate2 = [(NSPConfiguration *)v15 configurationFetchDate];
  [v14 timeIntervalSinceDate:configurationFetchDate2];
  v18 = v17;

  v19 = objc_alloc_init(NSPBadTokenInfoStats);
  if (self)
  {
    v20 = self->_configuration;
  }

  else
  {
    v20 = 0;
  }

  userTier = [(NSPConfiguration *)v20 userTier];
  intValue = [userTier intValue];
  if (intValue >= 3)
  {
    v23 = [NSString stringWithFormat:@"(unknown: %i)", intValue];
  }

  else
  {
    v23 = *(&off_10010A560 + intValue);
  }

  [(NSPBadTokenInfoStats *)v19 setTierType:v23];

  vendor = [proxyCopy vendor];

  [(NSPBadTokenInfoStats *)v19 setTokenProxy:vendor];
  if (self)
  {
    v25 = self->_configuration;
  }

  else
  {
    v25 = 0;
  }

  etag2 = [(NSPConfiguration *)v25 etag];
  [(NSPBadTokenInfoStats *)v19 setConfigTag:etag2];

  [(NSPBadTokenInfoStats *)v19 setConfigAgeHours:(v18 / 3600.0)];
  [(NSPProxyAnalytics *)v19 sendAnalytics];
}

- (void)refreshProxyInfo:(unint64_t)info
{
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ received refresh proxy information", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v10 = 0x3032000000;
  v11 = sub_100001F54;
  v12 = sub_100054494;
  v13 = os_transaction_create();
  if (self)
  {
    configurationManager = self->_configurationManager;
  }

  else
  {
    configurationManager = 0;
  }

  v7 = configurationManager;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006AA08;
  v8[3] = &unk_10010A058;
  v8[4] = &buf;
  [(NSPConfigurationManager *)v7 refreshConfigurationWithReason:info completionHandler:v8];

  _Block_object_dispose(&buf, 8);
}

- (void)multiHopProxyAgentRegistered:(BOOL)registered
{
  registeredCopy = registered;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "is not";
    if (registeredCopy)
    {
      v6 = "is";
    }

    v11 = 136315138;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "multiHop proxy agent %s registered", &v11, 0xCu);
  }

  if (registeredCopy)
  {
    if (self)
    {
      configurationManager = self->_configurationManager;
    }

    else
    {
      configurationManager = 0;
    }

    mergeProxyTrafficStateWithCurrentPolicy = [(NSPConfigurationManager *)configurationManager mergeProxyTrafficStateWithCurrentPolicy];
    if (self)
    {
      v9 = self->_configurationManager;
    }

    else
    {
      v9 = 0;
    }

    [(NSPServer *)self policiesUpdated:v9 policy:mergeProxyTrafficStateWithCurrentPolicy resolverInfoChanged:1];
  }

  else
  {
    if (self)
    {
      v10 = self->_configurationManager;
    }

    else
    {
      v10 = 0;
    }

    [(NSPServer *)self policiesUpdated:v10 policy:0 resolverInfoChanged:0];
  }
}

- (void)singleHopProxyAgentRegistered:(BOOL)registered
{
  if (registered)
  {
    if (self)
    {
      sub_10004BA70(self->_odohManager);
      odohManager = self->_odohManager;
    }

    else
    {
      sub_10004BA70(0);
      odohManager = 0;
    }

    sub_10004C128(odohManager);
  }
}

- (void)obliviousHopAgentRegisteredForHostname:(id)hostname processes:(id)processes agentUUID:(id)d
{
  hostnameCopy = hostname;
  processesCopy = processes;
  dCopy = d;
  v10 = [processesCopy count];
  v11 = nplog_obj();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v17 = 138412802;
      v18 = hostnameCopy;
      v19 = 2112;
      v20 = dCopy;
      v21 = 2112;
      v22 = processesCopy;
      v13 = "Adding policies for oblivious agent for %@ (%@), limited to %@";
      v14 = v11;
      v15 = 32;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, &v17, v15);
    }
  }

  else if (v12)
  {
    v17 = 138412546;
    v18 = hostnameCopy;
    v19 = 2112;
    v20 = dCopy;
    v13 = "Adding policies for oblivious agent for %@ (%@)";
    v14 = v11;
    v15 = 22;
    goto LABEL_6;
  }

  v16 = +[NSPPrivacyProxyPolicyHandler sharedHandler];
  [v16 addObliviousProxyAgent:dCopy processes:processesCopy hostname:hostnameCopy];
}

- (void)obliviousHopAgentUnregisteredForHostname:(id)hostname agentUUID:(id)d
{
  hostnameCopy = hostname;
  dCopy = d;
  v7 = nplog_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = hostnameCopy;
    v11 = 2112;
    v12 = dCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Removing policies for oblivious agent for %@ (%@)", &v9, 0x16u);
  }

  v8 = +[NSPPrivacyProxyPolicyHandler sharedHandler];
  [v8 removeObliviousProxyAgent:dCopy forHostname:hostnameCopy apply:1];
}

- (void)proxiedContentMaps:(id)maps registeredForAgentUUID:(id)d
{
  dCopy = d;
  mapsCopy = maps;
  v7 = nplog_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = dCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Adding policies for proxied content for %@", &v9, 0xCu);
  }

  v8 = +[NSPPrivacyProxyPolicyHandler sharedHandler];
  [v8 addProxiedContentAgent:dCopy maps:mapsCopy];
}

- (void)networkDiscoveredProxyPaths:(id)paths registeredForAgentUUID:(id)d
{
  dCopy = d;
  pathsCopy = paths;
  v7 = nplog_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = dCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Adding policy for network discovered agent for %@", &v9, 0xCu);
  }

  v8 = +[NSPPrivacyProxyPolicyHandler sharedHandler];
  [v8 addNetworkDiscoveryProxyAgent:dCopy with:pathsCopy];
}

- (void)proxiedContentMapsUnregisteredForAgentUUID:(id)d
{
  dCopy = d;
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = dCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Removing policies for proxied content for %@", &v6, 0xCu);
  }

  v5 = +[NSPPrivacyProxyPolicyHandler sharedHandler];
  [v5 removeProxiedContentAgent:dCopy apply:1];
}

- (void)tokenIssuanceLimitReached
{
  if (!self || !self->_fraudAlert)
  {
    v3 = nplog_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Reporting fraud alert", v5, 2u);
    }

    if (self)
    {
      self->_fraudAlert = 1;
      configurationManager = self->_configurationManager;
    }

    else
    {
      configurationManager = 0;
    }

    [(NSPServer *)self policiesUpdated:configurationManager policy:0 resolverInfoChanged:0];
    sub_1000654C0(self);
  }

  sub_100064320(self);
}

- (void)tokenIssuanceAllowed
{
  if (self && self->_fraudAlert)
  {
    v3 = nplog_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Reporting token issuance allowed", v5, 2u);
    }

    self->_fraudAlert = 0;
    mergeProxyTrafficStateWithCurrentPolicy = [(NSPConfigurationManager *)self->_configurationManager mergeProxyTrafficStateWithCurrentPolicy];
    [(NSPServer *)self policiesUpdated:self->_configurationManager policy:mergeProxyTrafficStateWithCurrentPolicy resolverInfoChanged:1];
    sub_1000654C0(self);
  }
}

- (void)checkPrivacyProxyConnectivityOnInterface:(id)interface proxyConnectivityCheckType:(unint64_t)type completionHandler:(id)handler
{
  interfaceCopy = interface;
  handlerCopy = handler;
  interfaceName = [interfaceCopy interfaceName];
  v11 = nplog_obj();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = interfaceName;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%@ received check proxy connectivity for interface %@", buf, 0x16u);
  }

  if (type <= 3)
  {
    switch(type)
    {
      case 1uLL:
        lastProxyOutageReason = 0;
        v13 = 5;
        if (!interfaceName)
        {
          goto LABEL_29;
        }

        goto LABEL_21;
      case 2uLL:
        if (self)
        {
          privacyProxyAgentManager = self->_privacyProxyAgentManager;
        }

        else
        {
          privacyProxyAgentManager = 0;
        }

        v25 = privacyProxyAgentManager;
        lastProxyOutageReason = [(NSPPrivacyProxyAgentManager *)v25 lastProxyOutageReason];

        v13 = 3;
        if (!interfaceName)
        {
          goto LABEL_29;
        }

        goto LABEL_21;
      case 3uLL:
        lastProxyOutageReason = 0;
        v13 = 10;
        if (!interfaceName)
        {
          goto LABEL_29;
        }

        goto LABEL_21;
    }

LABEL_19:
    v13 = 0;
    lastProxyOutageReason = 0;
    if ((type & 0xFFFFFFFFFFFFFFFELL) != 4)
    {
      goto LABEL_20;
    }

    goto LABEL_11;
  }

  if (type - 4 >= 2)
  {
    if (type == 6)
    {
      lastProxyOutageReason = 0;
      v13 = 12;
      if (!interfaceName)
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v13 = 4;
LABEL_11:
  if (self)
  {
    odohManager = self->_odohManager;
  }

  else
  {
    odohManager = 0;
  }

  v15 = odohManager;
  lastProxyOutageReason = sub_10004D0A4(v15);

LABEL_20:
  if (!interfaceName)
  {
LABEL_29:
    if (self)
    {
      configuration = self->_configuration;
    }

    else
    {
      configuration = 0;
    }

    v19 = configuration;
    etag = [(NSPConfiguration *)v19 etag];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v37 = sub_100001F54;
    v38 = sub_100054494;
    v39 = os_transaction_create();
    objc_initWeak(&location, self);
    if (self)
    {
      configurationManager = self->_configurationManager;
    }

    else
    {
      configurationManager = 0;
    }

    v22 = configurationManager;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10006B724;
    v26[3] = &unk_10010A080;
    objc_copyWeak(v34, &location);
    v27 = interfaceName;
    v23 = etag;
    v34[1] = type;
    v28 = v23;
    selfCopy = self;
    v30 = interfaceCopy;
    v31 = lastProxyOutageReason;
    v32 = handlerCopy;
    v33 = buf;
    [(NSPConfigurationManager *)v22 refreshConfigurationWithReason:v13 completionHandler:v26];

    objc_destroyWeak(v34);
    objc_destroyWeak(&location);
    _Block_object_dispose(buf, 8);

    goto LABEL_34;
  }

LABEL_21:
  if (!self)
  {
    if ([0 containsObject:interfaceName])
    {
      goto LABEL_23;
    }

    interfacesBeingChecked = 0;
    goto LABEL_28;
  }

  if (![(NSMutableSet *)self->_interfacesBeingChecked containsObject:interfaceName])
  {
    interfacesBeingChecked = self->_interfacesBeingChecked;
LABEL_28:
    [(NSMutableSet *)interfacesBeingChecked addObject:interfaceName];
    goto LABEL_29;
  }

LABEL_23:
  v16 = nplog_obj();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = interfaceName;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%@ already checking connectivity for interface %@", buf, 0x16u);
  }

  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }

LABEL_34:
}

- (void)reportPrivacyProxySuccessOnInterface:(id)interface
{
  interfaceCopy = interface;
  interfaceName = [interfaceCopy interfaceName];
  v6 = nplog_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    selfCopy = self;
    v52 = 2112;
    v53 = interfaceName;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@ reported proxy success on interface %@", buf, 0x16u);
  }

  if (interfaceName)
  {
    if (self)
    {
      if (![(NSMutableSet *)self->_interfacesBeingChecked containsObject:interfaceName])
      {
        goto LABEL_8;
      }

      interfacesBeingChecked = self->_interfacesBeingChecked;
    }

    else
    {
      v41 = [0 containsObject:interfaceName];
      interfacesBeingChecked = 0;
      if ((v41 & 1) == 0)
      {
        if ([interfaceCopy type] == 1 || objc_msgSend(interfaceCopy, "type") == 2)
        {
          goto LABEL_60;
        }

        v42 = interfaceCopy;
LABEL_59:

        goto LABEL_60;
      }
    }

    [(NSMutableSet *)interfacesBeingChecked removeObject:interfaceName];
  }

LABEL_8:
  if ([interfaceCopy type] == 1)
  {
    if (self)
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      serviceStatus = [(NSPServiceStatusManager *)self->_serviceStatusManager serviceStatus];
      networkStatuses = [serviceStatus networkStatuses];

      v10 = [networkStatuses countByEnumeratingWithState:&v46 objects:buf count:16];
      if (v10)
      {
        v11 = v10;
        v12 = interfaceName;
        v13 = 0;
        v14 = 0;
        v15 = *v47;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v47 != v15)
            {
              objc_enumerationMutation(networkStatuses);
            }

            v17 = *(*(&v46 + 1) + 8 * i);
            if ([v17 networkType] == 1)
            {
              if (![v17 networkStatus])
              {
                goto LABEL_38;
              }

              if ([v17 networkStatus] == 2)
              {
                networkName = [v17 networkName];

                v14 = 1;
                v13 = networkName;
              }
            }
          }

          v11 = [networkStatuses countByEnumeratingWithState:&v46 objects:buf count:16];
        }

        while (v11);

        if (v14)
        {
          [(NSPServiceStatusManager *)self->_serviceStatusManager reportActiveOnWiFiName:v13];
          networkStatuses = +[NSPPrivacyProxyPolicyHandler sharedHandler];
          [networkStatuses wifiDisabled:0];
LABEL_38:
          interfaceName = v12;
LABEL_40:

LABEL_41:
          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_39;
    }

    goto LABEL_60;
  }

  if ([interfaceCopy type] != 2)
  {
    v27 = interfaceCopy;
    if (self)
    {
      v28 = v27;
      if ([v27 type] == 3)
      {
        v43 = interfaceName;
        v44 = interfaceCopy;
        interfaceName2 = [v28 interfaceName];
        v45 = sub_100073BA0(interfaceName2);
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        serviceStatus2 = [(NSPServiceStatusManager *)self->_serviceStatusManager serviceStatus];
        networkStatuses2 = [serviceStatus2 networkStatuses];

        v32 = [networkStatuses2 countByEnumeratingWithState:&v46 objects:buf count:16];
        if (v32)
        {
          v33 = v32;
          v34 = 0;
          v35 = *v47;
          do
          {
            for (j = 0; j != v33; j = j + 1)
            {
              if (*v47 != v35)
              {
                objc_enumerationMutation(networkStatuses2);
              }

              v37 = *(*(&v46 + 1) + 8 * j);
              if ([v37 networkType] == 3)
              {
                networkName2 = [v37 networkName];
                v39 = [networkName2 isEqualToString:interfaceName2];

                if (v39)
                {
                  if (![v37 networkStatus])
                  {
                    goto LABEL_57;
                  }

                  v34 |= [v37 networkStatus] == 2;
                }
              }
            }

            v33 = [networkStatuses2 countByEnumeratingWithState:&v46 objects:buf count:16];
          }

          while (v33);

          v40 = v45;
          if (v34)
          {
            [(NSPServiceStatusManager *)self->_serviceStatusManager reportActiveOnInterfaceName:interfaceName2 displayName:v45 type:3];
            sub_10006815C(self);
          }
        }

        else
        {
LABEL_57:

          v40 = v45;
        }

        interfaceName = v43;
        interfaceCopy = v44;
      }
    }

    goto LABEL_59;
  }

  if (self)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    serviceStatus3 = [(NSPServiceStatusManager *)self->_serviceStatusManager serviceStatus];
    networkStatuses = [serviceStatus3 networkStatuses];

    v20 = [networkStatuses countByEnumeratingWithState:&v46 objects:buf count:16];
    if (v20)
    {
      v21 = v20;
      v12 = interfaceName;
      v13 = 0;
      v22 = 0;
      v23 = *v47;
      do
      {
        for (k = 0; k != v21; k = k + 1)
        {
          if (*v47 != v23)
          {
            objc_enumerationMutation(networkStatuses);
          }

          v25 = *(*(&v46 + 1) + 8 * k);
          if ([v25 networkType] == 2)
          {
            if (![v25 networkStatus])
            {
              goto LABEL_38;
            }

            if ([v25 networkStatus] == 2)
            {
              networkName3 = [v25 networkName];

              v22 = 1;
              v13 = networkName3;
            }
          }
        }

        v21 = [networkStatuses countByEnumeratingWithState:&v46 objects:buf count:16];
      }

      while (v21);

      if (v22)
      {
        [(NSPServiceStatusManager *)self->_serviceStatusManager reportActiveOnCellularName:v13];
        networkStatuses = +[NSPPrivacyProxyPolicyHandler sharedHandler];
        [networkStatuses cellularDisabled:0];
        goto LABEL_38;
      }

LABEL_61:
      interfaceName = v12;
      goto LABEL_41;
    }

LABEL_39:
    v13 = 0;
    goto LABEL_40;
  }

LABEL_60:
}

- (void)reportActivityForApp:(id)app path:(id)path
{
  if (self)
  {
    self = self->_serviceStatusManager;
  }

  [(NSPServer *)self reportActivityForApp:app path:path];
}

- (void)tokenFetchOutage
{
  if (!self || !self->_tokenOutage)
  {
    v3 = nplog_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Reporting token fetch outage", v5, 2u);
    }

    if (self)
    {
      self->_tokenOutage = 1;
      configurationManager = self->_configurationManager;
    }

    else
    {
      configurationManager = 0;
    }

    [(NSPServer *)self policiesUpdated:configurationManager policy:0 resolverInfoChanged:0];
    sub_1000654C0(self);
  }
}

- (void)tokenFetchActive
{
  if (self && self->_tokenOutage)
  {
    v3 = nplog_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Reporting token fetch active", v5, 2u);
    }

    self->_tokenOutage = 0;
    mergeProxyTrafficStateWithCurrentPolicy = [(NSPConfigurationManager *)self->_configurationManager mergeProxyTrafficStateWithCurrentPolicy];
    [(NSPServer *)self policiesUpdated:self->_configurationManager policy:mergeProxyTrafficStateWithCurrentPolicy resolverInfoChanged:1];
    sub_1000654C0(self);
  }
}

- (void)proxyConnectivityActive
{
  if (self && (self->_proxyOutage || self->_proxyNetworkOutage))
  {
    v3 = nplog_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "restore proxy connectivity", v6, 2u);
    }

    proxyOutageRestoreTimer = self->_proxyOutageRestoreTimer;
    *&self->_proxyOutage = 0;
    if (proxyOutageRestoreTimer)
    {
      dispatch_source_cancel(proxyOutageRestoreTimer);
      objc_storeStrong(&self->_proxyOutageRestoreTimer, 0);
    }

    objc_storeStrong(&self->_proxyOutageRestoreDate, 0);
    mergeProxyTrafficStateWithCurrentPolicy = [(NSPConfigurationManager *)self->_configurationManager mergeProxyTrafficStateWithCurrentPolicy];
    [(NSPServer *)self policiesUpdated:self->_configurationManager policy:mergeProxyTrafficStateWithCurrentPolicy resolverInfoChanged:1];
    sub_100064320(self);
    [(NSPPrivacyProxyAgentManager *)self->_privacyProxyAgentManager resetProxyErrors];
    sub_1000654C0(self);
  }
}

- (void)preferredProxyAgentRegistered:(id)registered agentUUID:(id)d domainFilter:(id)filter
{
  registeredCopy = registered;
  dCopy = d;
  filterCopy = filter;
  if (self)
  {
    configuration = self->_configuration;
  }

  else
  {
    configuration = 0;
  }

  preferredPathRoutingEnabledStatus = [(NSPConfiguration *)configuration preferredPathRoutingEnabledStatus];
  bOOLValue = [preferredPathRoutingEnabledStatus BOOLValue];

  v14 = nplog_obj();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (bOOLValue)
  {
    if (v15)
    {
      v16 = 138412546;
      v17 = registeredCopy;
      v18 = 2112;
      v19 = dCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Adding policies for preferred agent %@ / %@", &v16, 0x16u);
    }

    v14 = +[NSPPrivacyProxyPolicyHandler sharedHandler];
    [v14 addPreferredProxy:registeredCopy agentUUID:dCopy withDomainFilter:filterCopy];
  }

  else if (v15)
  {
    v16 = 138412546;
    v17 = registeredCopy;
    v18 = 2112;
    v19 = dCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Skipping adding policies preferred agent %@ / %@, feature disabled", &v16, 0x16u);
  }
}

- (void)preferredProxyAgentUnregistered:(id)unregistered
{
  unregisteredCopy = unregistered;
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = unregisteredCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Removing policies for preferred agent %@", &v6, 0xCu);
  }

  v5 = +[NSPPrivacyProxyPolicyHandler sharedHandler];
  [v5 removePreferredProxy:unregisteredCopy apply:1];
}

- (BOOL)networkDiscoveredProxyInTrustedProxyList:(id)list
{
  listCopy = list;
  host = [listCopy host];
  if (host)
  {
    port = [listCopy port];

    if (port)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      if (self)
      {
        configuration = self->_configuration;
      }

      else
      {
        configuration = 0;
      }

      proxyConfiguration = [(NSPConfiguration *)configuration proxyConfiguration];
      trustedNetworkDiscoveredProxies = [proxyConfiguration trustedNetworkDiscoveredProxies];

      v10 = [trustedNetworkDiscoveredProxies countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v33;
        v13 = @":";
        v14 = NEPolicySession_ptr;
        do
        {
          v15 = 0;
          v31 = v11;
          do
          {
            if (*v33 != v12)
            {
              objc_enumerationMutation(trustedNetworkDiscoveredProxies);
            }

            v16 = [*(*(&v32 + 1) + 8 * v15) componentsSeparatedByString:v13];
            if ([v16 count] >= 2)
            {
              v17 = [v16 objectAtIndex:0];
              v18 = v14[36];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if (isKindOfClass)
              {
                v20 = [v16 objectAtIndex:0];
                v21 = [v16 objectAtIndex:1];
                v22 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v21 integerValue]);

                host2 = [listCopy host];
                if ([host2 isEqualToString:v20])
                {
                  [listCopy port];
                  v24 = v12;
                  v25 = v13;
                  v26 = trustedNetworkDiscoveredProxies;
                  v28 = v27 = listCopy;

                  v29 = v28 == v22;
                  listCopy = v27;
                  trustedNetworkDiscoveredProxies = v26;
                  v13 = v25;
                  v12 = v24;
                  v11 = v31;
                  if (v29)
                  {

                    LOBYTE(host) = 1;
                    goto LABEL_22;
                  }
                }

                else
                {
                }

                v14 = NEPolicySession_ptr;
              }
            }

            v15 = v15 + 1;
          }

          while (v11 != v15);
          v11 = [trustedNetworkDiscoveredProxies countByEnumeratingWithState:&v32 objects:v36 count:16];
        }

        while (v11);
      }

      LOBYTE(host) = 0;
LABEL_22:
    }

    else
    {
      LOBYTE(host) = 0;
    }
  }

  return host;
}

- (BOOL)canIgnoreInvalidCertsOnInternalBuild
{
  initFromPreferences = [[NSPConfiguration alloc] initFromPreferences];
  if (initFromPreferences && os_variant_allows_internal_security_policies())
  {
    ignoreInvalidCerts = [initFromPreferences ignoreInvalidCerts];
  }

  else
  {
    ignoreInvalidCerts = 0;
  }

  return ignoreInvalidCerts;
}

- (BOOL)usesDefaultConfigurationServer
{
  if (self)
  {
    configuration = self->_configuration;
  }

  else
  {
    configuration = 0;
  }

  v4 = configuration;
  configServerHost = [(NSPConfiguration *)v4 configServerHost];
  if ([configServerHost isEqualToString:@"mask-api.icloud.com"])
  {
    if (self)
    {
      configurationManager = self->_configurationManager;
    }

    else
    {
      configurationManager = 0;
    }

    v7 = ![(NSPConfigurationManager *)configurationManager environmentUsesNonDefaultServer];
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)didUpdateSignificantLocation
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = sub_100001F54;
  v6[4] = sub_100054494;
  v7 = os_transaction_create();
  if (self)
  {
    configurationManager = self->_configurationManager;
  }

  else
  {
    configurationManager = 0;
  }

  v4 = configurationManager;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100070580;
  v5[3] = &unk_10010A058;
  v5[4] = v6;
  [(NSPConfigurationManager *)v4 refreshConfigurationWithReason:7 completionHandler:v5];

  _Block_object_dispose(v6, 8);
}

- (void)didUpdateCountryPlusTimezone:(id)timezone
{
  timezoneCopy = timezone;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412546;
    selfCopy = self;
    v8 = 2112;
    v9 = timezoneCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@ country+timezone updated to [%@]", &v6, 0x16u);
  }

  sub_10001FDC8(self, timezoneCopy);
  sub_1000654C0(self);
}

- (void)didUpdateGeohash:(id)geohash
{
  geohashCopy = geohash;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412546;
    selfCopy = self;
    v8 = 2112;
    v9 = geohashCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@ Geohash updated to [%@]", &v6, 0x16u);
  }

  sub_10007080C(self, geohashCopy);
  sub_1000654C0(self);
}

- (BOOL)isSubscriberUnlimited
{
  if (self)
  {
    self = self->_configurationManager;
  }

  return [(NSPServer *)self policyIncludesUnlimited];
}

- (void)networkSignatureChanged
{
  if (self)
  {
    sub_100072AB8(self);
    proxyConfiguration = [(NSPConfiguration *)self->_configuration proxyConfiguration];
    dnsProbe = [proxyConfiguration dnsProbe];

    if (dnsProbe)
    {
      path = [(NWPathEvaluator *)self->_primaryPhysicalInterfaceEvaluator path];
      interface = [path interface];

      cInterface = [interface cInterface];
      path2 = [(NWPathEvaluator *)self->_primaryPhysicalInterfaceEvaluator path];
      status = [path2 status];

      if (status == 1)
      {
        if (cInterface)
        {
          host = nw_endpoint_create_host([dnsProbe UTF8String], "443");
          v11 = nw_parameters_create();
          nw_parameters_require_interface(v11, cInterface);
          v12 = nw_resolver_create_with_endpoint();
          dnsProbeResolver = self->_dnsProbeResolver;
          self->_dnsProbeResolver = v12;

          objc_initWeak(&location, self);
          v14 = self->_dnsProbeResolver;
          v15 = NPGetInternalQueue();
          v16[0] = _NSConcreteStackBlock;
          v16[1] = 3221225472;
          v16[2] = sub_100072B0C;
          v16[3] = &unk_10010A398;
          objc_copyWeak(v18, &location);
          v17 = cInterface;
          nw_resolver_set_update_handler();

          objc_destroyWeak(v18);
          objc_destroyWeak(&location);
        }
      }
    }

    else
    {
      interface = nplog_obj();
      if (os_log_type_enabled(interface, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v16[0]) = 0;
        _os_log_debug_impl(&_mh_execute_header, interface, OS_LOG_TYPE_DEBUG, "No DNS probe configured, ignoring", v16, 2u);
      }
    }
  }
}

- (void)disableWiFiNetwork:(id)network
{
  networkCopy = network;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v16 = networkCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Saving preference to disable on Wi-Fi network: %{private}@", buf, 0xCu);
  }

  if (self)
  {
    wifiInterface = self->_wifiInterface;
  }

  else
  {
    wifiInterface = 0;
  }

  currentKnownNetworkProfile = [(CWFInterface *)wifiInterface currentKnownNetworkProfile];
  [currentKnownNetworkProfile setPrivacyProxyEnabled:0];
  if (self)
  {
    v8 = self->_wifiInterface;
  }

  else
  {
    v8 = 0;
  }

  v14 = 0;
  v9 = v8;
  [(CWFInterface *)v9 updateKnownNetworkProfile:currentKnownNetworkProfile properties:0 error:&v14];
  v10 = v14;

  if (v10)
  {
    v11 = nplog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138478083;
      v16 = networkCopy;
      v17 = 2112;
      v18 = v10;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to save preference to disable on Wi-Fi network %{private}@: %@", buf, 0x16u);
    }
  }

  if (self)
  {
    serviceStatusManager = self->_serviceStatusManager;
  }

  else
  {
    serviceStatusManager = 0;
  }

  [(NSPServiceStatusManager *)serviceStatusManager reportDisabledOnWiFiName:networkCopy];
  v13 = +[NSPPrivacyProxyPolicyHandler sharedHandler];
  [v13 wifiDisabled:1];
}

- (void)disableCellularNetwork:(id)network
{
  networkCopy = network;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = networkCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Saving preference to disable on cellular network: %@", buf, 0xCu);
  }

  if (!self || (cellularClient = self->_cellularClient) == 0)
  {
    v7 = [CoreTelephonyClient alloc];
    v8 = sub_100054464(self);
    v9 = [v7 initWithQueue:v8];
    v10 = v9;
    if (self)
    {
      objc_storeStrong(&self->_cellularClient, v9);

      cellularClient = self->_cellularClient;
    }

    else
    {

      cellularClient = 0;
    }
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000739B0;
  v12[3] = &unk_10010A460;
  v12[4] = self;
  v13 = networkCopy;
  v11 = networkCopy;
  [(CoreTelephonyClient *)cellularClient getCurrentDataSubscriptionContext:v12];
}

- (id)getSavedPrivateCloudComputeEnvironment
{
  if (self)
  {
    self = self->_privateCloudComputeEnvironment;
  }

  return self;
}

- (void)updateSavedPrivateCloudComputeEnvironment:(id)environment
{
  environmentCopy = environment;
  if (self)
  {
    privateCloudComputeEnvironment = self->_privateCloudComputeEnvironment;
  }

  else
  {
    privateCloudComputeEnvironment = 0;
  }

  v6 = privateCloudComputeEnvironment;
  v9 = environmentCopy;
  v7 = v6;
  v8 = v7;
  if (!(v9 | v7) || v9 && v7 && [v9 isEqual:v7])
  {
  }

  else
  {

    sub_10001FDD8(self, v9);
    sub_1000654C0(self);
  }
}

@end