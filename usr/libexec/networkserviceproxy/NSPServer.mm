@interface NSPServer
- (BOOL)canIgnoreInvalidCertsOnInternalBuild;
- (BOOL)configurationFetchDateIsWithinStart:(id)a3 end:(id)a4;
- (BOOL)isSubscriberUnlimited;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)networkDiscoveredProxyInTrustedProxyList:(id)a3;
- (BOOL)subscriberTierIsProhibited:(id)a3;
- (BOOL)usesDefaultConfigurationServer;
- (NSPServer)init;
- (id)getSavedPrivateCloudComputeEnvironment;
- (void)authInfoChanged:(id)a3;
- (void)badTokenInfoForProxy:(id)a3;
- (void)checkPrivacyProxyConnectivityOnInterface:(id)a3 proxyConnectivityCheckType:(unint64_t)a4 completionHandler:(id)a5;
- (void)cloudSubscriptionChanged:(BOOL)a3 configManager:(id)a4;
- (void)configDisabled:(id)a3;
- (void)configEnabled:(id)a3;
- (void)configEpochChanged:(id)a3;
- (void)configFetched:(id)a3;
- (void)configUpdated:(id)a3;
- (void)configurationRestart:(id)a3;
- (void)didUpdateCountryPlusTimezone:(id)a3;
- (void)didUpdateGeohash:(id)a3;
- (void)didUpdateSignificantLocation;
- (void)disableCellularNetwork:(id)a3;
- (void)disableWiFiNetwork:(id)a3;
- (void)effectiveUserTierChanged:(id)a3;
- (void)geohashSettingsChanged:(id)a3;
- (void)multiHopProxyAgentRegistered:(BOOL)a3;
- (void)networkDiscoveredProxyPaths:(id)a3 registeredForAgentUUID:(id)a4;
- (void)networkSignatureChanged;
- (void)obliviousHopAgentRegisteredForHostname:(id)a3 processes:(id)a4 agentUUID:(id)a5;
- (void)obliviousHopAgentUnregisteredForHostname:(id)a3 agentUUID:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)policiesUpdated:(id)a3 policy:(id)a4 resolverInfoChanged:(BOOL)a5;
- (void)preferredProxyAgentRegistered:(id)a3 agentUUID:(id)a4 domainFilter:(id)a5;
- (void)preferredProxyAgentUnregistered:(id)a3;
- (void)privateAccessTokensEnabledChanged:(id)a3;
- (void)proxiedContentMaps:(id)a3 registeredForAgentUUID:(id)a4;
- (void)proxiedContentMapsUnregisteredForAgentUUID:(id)a3;
- (void)proxyConnectivityActive;
- (void)proxyInfoChanged:(id)a3;
- (void)proxyTokenFetchDisabled:(id)a3;
- (void)proxyTokenFetchEnabled:(id)a3;
- (void)refreshProxyInfo:(unint64_t)a3;
- (void)reportActivityForApp:(id)a3 path:(id)a4;
- (void)reportPrivacyProxySuccessOnInterface:(id)a3;
- (void)resumePrivacyProxy:(id)a3;
- (void)singleHopProxyAgentRegistered:(BOOL)a3;
- (void)suspendPrivacyProxyTemporarily:(id)a3;
- (void)tokenFetchActive;
- (void)tokenFetchOutage;
- (void)tokenIssuanceAllowed;
- (void)tokenIssuanceLimitReached;
- (void)updateSavedPrivateCloudComputeEnvironment:(id)a3;
- (void)userPreferredTierChanged:(id)a3;
- (void)userTierChanged:(id)a3;
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

              v32 = [v30 unsignedIntegerValue];
            }

            else
            {
              v32 = 0;
            }
          }

          else
          {
            v32 = 0;
          }

          v28[40] = v32;
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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NSPServerCommands];
  [v5 setExportedInterface:v6];

  [v5 setExportedObject:self];
  [v5 resume];

  return 1;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (self)
  {
    primaryPhysicalInterfaceEvaluator = self->_primaryPhysicalInterfaceEvaluator;
  }

  else
  {
    primaryPhysicalInterfaceEvaluator = 0;
  }

  v14 = primaryPhysicalInterfaceEvaluator;
  if (v14 != v11 || ![v10 isEqualToString:@"path"])
  {

    goto LABEL_8;
  }

  if (a6 != self)
  {
LABEL_8:
    v16.receiver = self;
    v16.super_class = NSPServer;
    [(NSPServer *)&v16 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
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

- (void)configFetched:(id)a3
{
  v4 = a3;
  if (self && self->_configOutage)
  {
    self->_configOutage = 0;
    v6 = v4;
    v5 = [(NSPConfigurationManager *)self->_configurationManager mergeProxyTrafficStateWithCurrentPolicy];
    [(NSPServer *)self policiesUpdated:self->_configurationManager policy:v5 resolverInfoChanged:1];
    sub_1000654C0(self);

    v4 = v6;
  }
}

- (void)configEnabled:(id)a3
{
  v4 = a3;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Privacy proxy configuration enabled", &buf, 2u);
  }

  if (self)
  {
    self->_isRunning = 1;
    v6 = [(NSPConfigurationManager *)self->_configurationManager currentConfiguration];
    objc_storeStrong(&self->_configuration, v6);

    Property = objc_getProperty(self, v7, 280, 1);
  }

  else
  {
    [0 currentConfiguration];

    Property = 0;
  }

  sub_1000A09AC(Property);
  v9 = +[NSPPrivacyProxyPolicyHandler sharedHandler];
  v10 = [v9 addPoliciesForProbing];

  if ((v10 & 1) == 0)
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
  v15 = [(NWPathEvaluator *)v14 path];
  if (self)
  {
    toggleStats = self->_toggleStats;
  }

  else
  {
    toggleStats = 0;
  }

  v17 = sub_10004B19C(&v12->super.isa, self, v15, toggleStats);
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
  v21 = [(NSPConfiguration *)v20 userTier];
  v22 = [v21 unsignedIntValue];
  if (!self)
  {
    v82 = -[NSPServiceStatusManager initFromPreferencesWithUserTier:effectiveUserTier:delegate:](v18, "initFromPreferencesWithUserTier:effectiveUserTier:delegate:", v22, [0 effectiveUserTier], 0);
    sub_1000050EC(0, v82);

    [0 proxyTokenFetchEnabled:v4];
    goto LABEL_51;
  }

  v23 = [(NSPServiceStatusManager *)v18 initFromPreferencesWithUserTier:v22 effectiveUserTier:[(NSPConfigurationManager *)self->_configurationManager effectiveUserTier] delegate:self];
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
      v98 = self;
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

  [(NSPServer *)self proxyTokenFetchEnabled:v4];

  objc_initWeak(&location, self);
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 3221225472;
  v96 = sub_10006148C;
  v97 = &unk_100109F80;
  objc_copyWeak(&v98, &location);
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
  objc_destroyWeak(&v98);
  objc_destroyWeak(&location);
  v37 = NPGetInternalQueue();
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 3221225472;
  v96 = sub_1000726A4;
  v97 = &unk_10010A370;
  v98 = self;
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
  v98 = self;
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
    objc_copyWeak(&v98, &handler);
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

    objc_destroyWeak(&v98);
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
            objc_copyWeak(&v98, &location);
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
            objc_destroyWeak(&v98);
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
        objc_copyWeak(&v98, &handler);
        v59 = [(TRIClient *)v57 addUpdateHandlerForNamespaceName:@"NETWORK_SERVICE_PROXY_CONFIG_UPDATE" queue:v58 usingBlock:&buf];
        trialNotificationToken = self->_trialNotificationToken;
        self->_trialNotificationToken = v59;

        objc_destroyWeak(&v98);
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
        objc_copyWeak(&v98, &handler);
        dispatch_source_set_event_handler(v68, &buf);

        dispatch_resume(self->_toggleStatsTimer);
        objc_destroyWeak(&v98);
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

- (void)configDisabled:(id)a3
{
  v4 = a3;
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
  [(NSPServer *)self proxyTokenFetchDisabled:v4];

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

- (void)configurationRestart:(id)a3
{
  v4 = a3;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "server configuration reset", v6, 2u);
  }

  [(NSPServer *)self configDisabled:v4];
  [(NSPServer *)self configEnabled:v4];
}

- (BOOL)configurationFetchDateIsWithinStart:(id)a3 end:(id)a4
{
  if (self)
  {
    self = self->_configuration;
  }

  return [(NSPServer *)self fetchDateIsWithinStart:a3 end:a4];
}

- (BOOL)subscriberTierIsProhibited:(id)a3
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

- (void)suspendPrivacyProxyTemporarily:(id)a3
{
  v4 = a3;
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
  [(NSPServer *)self proxyTokenFetchDisabled:v4];
}

- (void)resumePrivacyProxy:(id)a3
{
  v4 = a3;
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
  [(NSPServer *)self proxyTokenFetchEnabled:v4];
}

- (void)proxyTokenFetchEnabled:(id)a3
{
  v4 = a3;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Proxy token fetch enabled", v6, 2u);
  }

  [(NSPServer *)self authInfoChanged:v4];
  [(NSPServer *)self proxyInfoChanged:v4];
}

- (void)proxyTokenFetchDisabled:(id)a3
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
  v8 = [(NSPConfiguration *)v7 proxyConfiguration];
  v9 = [v8 regionId];
  [(NSPServiceStatusManager *)v5 reportUnsupportedRegion:v9];
}

- (void)userTierChanged:(id)a3
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

  v6 = [(NSPConfiguration *)configuration userTier];
  v7 = [v6 unsignedIntegerValue];

  if (v7 != 2)
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

  v14 = [(NSPConfiguration *)v13 proxyConfiguration];

  if (v14)
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
      v22 = [(NSPConfiguration *)v21 proxyConfiguration];
      v23 = [v22 regionId];
      [(NSPServiceStatusManager *)v19 reportSubscriberUnsupportedRegion:v23];
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

    v17 = [(NSPConfiguration *)v16 proxyConfiguration];
    v18 = [v17 enabled];

    if ((v18 & 1) == 0)
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
      v22 = [(NSPConfiguration *)v21 proxyConfiguration];
      v23 = [v22 regionId];
      [(NSPServiceStatusManager *)v19 reportUnsupportedRegion:v23];
LABEL_30:

LABEL_31:
    }
  }

  sub_10006801C(self);
  sub_1000640C0(self);
  sub_10006815C(self);
}

- (void)userPreferredTierChanged:(id)a3
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

  v6 = [(NSPConfiguration *)configuration userPreferredTier];
  v7 = [v6 unsignedIntValue];

  v8 = v7 == 2;
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

  if (v7 == 2)
  {
    [(NSPToggleStats *)toggleStats sendToggleOnStats];
  }

  else
  {
    [(NSPToggleStats *)toggleStats sendToggleOffStats];
  }
}

- (void)effectiveUserTierChanged:(id)a3
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

  v8 = [(NSPConfiguration *)configuration proxyConfiguration];

  if (v8)
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
      v12 = [(NSPServiceStatusManager *)v11 userTier];
      if ([v12 unsignedIntegerValue] != 2)
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

      v14 = [(NSPConfigurationManager *)configurationManager configurationSubscriberPoliciesCount];

      if (!v14)
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
        v12 = [(NSPConfiguration *)v16 proxyConfiguration];
        v17 = [v12 regionId];
        [(NSPServiceStatusManager *)v11 reportSubscriberUnsupportedRegion:v17];

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

  v19 = [(NSPConfigurationManager *)v18 effectiveUserTier];
  v20 = v19;
  if (self)
  {
    [(NSPPrivacyProxyAgentManager *)self->_privacyProxyAgentManager handleTierChange:v19 == 2];
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
    [0 handleTierChange:v19 == 2];
    v21 = 0;
    v22 = 0;
  }

  v23 = v22;
  v24 = [(NSPConfigurationManager *)v23 mergeProxyTrafficStateWithCurrentPolicy];
  [(NSPServer *)self policiesUpdated:v21 policy:v24 resolverInfoChanged:1];
}

- (void)authInfoChanged:(id)a3
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
  v10 = [(NSPConfiguration *)v9 proxyConfiguration];
  v11 = [v10 authInfo];
  v12 = [v11 authType];
  if (v12)
  {
    v13 = self ? self->_configuration : 0;
    v3 = v13;
    v4 = [(NSPConfiguration *)v3 proxyConfiguration];
    v5 = [v4 authInfo];
    v14 = [v5 authURL];
    if (v14)
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

      v20 = [(NSPConfiguration *)v19 proxyConfiguration];
      v21 = [v20 authInfo];
      v22 = [v21 accessTokenTypesCount];

      if (v22)
      {
        v23 = objc_alloc_init(NSMutableArray);
        for (i = 0; i != v22; ++i)
        {
          if (self)
          {
            v25 = self->_configuration;
          }

          else
          {
            v25 = 0;
          }

          v26 = [(NSPConfiguration *)v25 proxyConfiguration];
          v27 = [v26 authInfo];
          v28 = [v27 accessTokenTypesAtIndex:i];

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
      v49 = [(NSPConfiguration *)v50 proxyConfiguration];
      v48 = [v49 authInfo];
      v47 = [v48 authURL];
      if (self)
      {
        v31 = self->_configuration;
      }

      else
      {
        v31 = 0;
      }

      v46 = v31;
      v45 = [(NSPConfiguration *)v46 proxyConfiguration];
      v44 = [v45 authInfo];
      v43 = [v44 accessTokenURL];
      if (self)
      {
        v32 = self->_configuration;
      }

      else
      {
        v32 = 0;
      }

      v42 = v32;
      v41 = [(NSPConfiguration *)v42 proxyConfiguration];
      v33 = [v41 authInfo];
      v34 = [v33 accessTokenBlockedIssuers];
      if (self)
      {
        v35 = self->_configuration;
      }

      else
      {
        v35 = 0;
      }

      v36 = v35;
      v37 = [(NSPConfiguration *)v36 proxyConfiguration];
      v38 = [v37 authInfo];
      v39 = [v38 authType];
      if (self)
      {
        v40 = self->_configuration;
      }

      else
      {
        v40 = 0;
      }

      [v52 updateTokenFetchURL:v47 accessTokenURL:v43 accessTokenTypes:v23 accessTokenBlockedIssuers:v34 authenticationType:v39 ignoreInvalidCerts:{-[NSPConfiguration ignoreInvalidCerts](v40, "ignoreInvalidCerts")}];

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

  v16 = [(NSPConfiguration *)v15 proxyConfiguration];
  v17 = [v16 authInfo];
  v18 = [v17 accessTokenURL];

  if (v12)
  {
  }

  if (v18)
  {
    goto LABEL_15;
  }
}

- (void)proxyInfoChanged:(id)a3
{
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Proxy info updated", buf, 2u);
  }

  if (self && self->_isRunning)
  {
    v5 = [(NSPConfiguration *)self->_configuration proxyConfiguration];
    v6 = [v5 proxies];
    v7 = [v6 count];

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
        v13 = [(NWPathEvaluator *)v42 path];
        v40 = self->_configurationManager;
        v38 = [(NSPConfigurationManager *)v40 policyIncludesUnlimited];
        v14 = self->_configuration;
        v15 = [(NSPConfiguration *)v14 geohashSharingEnabledStatus];
        v16 = [v15 BOOLValue];
        v17 = self->_configuration;
        v18 = [(NSPConfiguration *)v17 geohashOverride];
        v19 = self->_configuration;
        v20 = [(NSPConfiguration *)v19 epoch];
        LODWORD(v32) = self->_primaryInterfaceLinkQuality;
        [(NSPPrivacyProxyAgentManager *)v12 setupWithPath:v13 subscriber:v44 unlimited:v38 geohashSharingEnabled:v16 geohashOverride:v18 configEpoch:v20 linkQuality:v32];

        v21 = self->_privacyProxyAgentManager;
        [(NSPPrivacyProxyAgentManager *)v21 useDefaultNetworkInterface:[(NSPServer *)self usesDefaultConfigurationServer]^ 1];

        privacyProxyAgentManager = self->_privacyProxyAgentManager;
      }

      v41 = self->_configuration;
      p_super = privacyProxyAgentManager;
      v43 = [(NSPConfiguration *)v41 proxyConfiguration];
      v45 = [v43 proxies];
      v37 = self->_configuration;
      v39 = [(NSPConfiguration *)v37 proxyConfiguration];
      v23 = [v39 resolvers];
      v35 = self->_configuration;
      v36 = [(NSPConfiguration *)v35 proxyConfiguration];
      v24 = [v36 pathWeights];
      v33 = self->_configuration;
      v34 = [(NSPConfiguration *)v33 proxyConfiguration];
      v25 = [v34 fallbackPathWeights];
      v26 = self->_configuration;
      v27 = [(NSPConfiguration *)v26 proxyConfiguration];
      v28 = [v27 obliviousConfigs];
      v29 = self->_configuration;
      v30 = [(NSPConfiguration *)v29 proxyConfiguration];
      v31 = [v30 proxiedContentMaps];
      [p_super updateProxyInfo:v45 resolverInfo:v23 proxyPathList:v24 fallbackProxyPathList:v25 obliviousConfigs:v28 proxiedContentMaps:v31];
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

- (void)policiesUpdated:(id)a3 policy:(id)a4 resolverInfoChanged:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = nplog_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v74 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "privacy proxy policies updated - %@", buf, 0xCu);
  }

  if (v7)
  {
    v9 = v7;
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
      v30 = [(NSPConfiguration *)self->_configuration proxyConfiguration];
      v31 = [v30 bootstrapResolver];

      if ((sub_10004BC9C(self->_odohManager, v31) & 1) == 0)
      {
        v32 = nplog_obj();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v74 = self;
          _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%@ failed to register bootstrap DNS network agent", buf, 0xCu);
        }
      }
    }

    if (sub_1000653A4(self, v9))
    {
      if (v5)
      {
        v33 = nplog_obj();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = self->_configuration;
          v35 = [(NSPConfiguration *)v34 proxyConfiguration];
          v36 = [v35 resolvers];
          *buf = 138412290;
          v74 = v36;
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
          v74 = self;
          v42 = "%@ single hop proxy agent is not active, unable to set DNS policies";
          goto LABEL_112;
        }

        odohManager = self->_odohManager;
        v38 = self->_configuration;
        v39 = odohManager;
        v40 = [(NSPConfiguration *)v38 proxyConfiguration];
        v41 = [v40 resolvers];
        sub_10004B91C(v39, v41);
      }

      if ((sub_10004C128(self->_odohManager) & 1) == 0)
      {
        v26 = nplog_obj();
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_118;
        }

        *buf = 138412290;
        v74 = self;
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

    v43 = [(NSPConfiguration *)self->_configuration inProcessFlowDivert];

    if (v43)
    {
      v45 = [(NSPConfiguration *)self->_configuration inProcessFlowDivert];
      v46 = [v45 BOOLValue];
    }

    else
    {
      v46 = 1;
    }

    v47 = objc_getProperty(self, v44, 56, 1);
    v48 = [(NSPServiceStatusManager *)self->_serviceStatusManager pausedBundleIDs];
    v49 = v48;
    if (v48)
    {
      if (v47)
      {
        v50 = [v47 arrayByAddingObjectsFromArray:v48];

        v47 = v50;
      }

      else
      {
        v47 = v48;
      }
    }

    v70 = v47;
    v72 = [(NSPServiceStatusManager *)self->_serviceStatusManager pausedProcessPaths];
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
    v57 = [(NSPPrivacyProxyAgentManager *)v56 ingressProxyURL];
    v58 = self->_privacyProxyAgentManager;
    v59 = [(NSPPrivacyProxyAgentManager *)v58 ingressFallbackProxyURL];
    v60 = v46;
    v28 = v70;
    v61 = [v51 set:v9 flowDivertHandle:v55 inProcessFlowDivert:v60 ingressProxyURL:v57 ingressFallbackProxyURL:v59 exceptionBundleIDs:v70 exceptionProcessPaths:v72];

    if (v61)
    {
      v62 = [(NSPConfigurationManager *)self->_configurationManager configurationSubscriberPoliciesCount];
      v63 = self->_serviceStatusManager;
      p_super = &v63->super;
      if (v62)
      {
        [(NSPServiceStatusManager *)v63 reportServiceActiveShouldReport:self->_userTierChangedFromNonSettingsApp];
      }

      else
      {
        v66 = self->_configuration;
        v67 = [(NSPConfiguration *)v66 proxyConfiguration];
        v68 = [v67 regionId];
        [p_super reportSubscriberUnsupportedRegion:v68];
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
        v74 = self;
        _os_log_error_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_ERROR, "%@ failed to set privacy proxy policies", buf, 0xCu);
      }
    }

    goto LABEL_109;
  }

LABEL_14:
  if (!self)
  {
    [0 isNetworkOutage];
    v69 = [0 isServiceOutage];
    if (v7)
    {
      goto LABEL_114;
    }

    v13 = v69;
    v15 = 0;
    goto LABEL_21;
  }

  v12 = [(NSPServiceStatusManager *)self->_serviceStatusManager isNetworkOutage];
  v13 = [(NSPServiceStatusManager *)self->_serviceStatusManager isServiceOutage];
  if (self->_systemIncompatible)
  {
    [(NSPServiceStatusManager *)self->_serviceStatusManager reportSystemIncompatibility];
    v14 = self->_toggleStats;
    [(NSPToggleStats *)v14 setSystemIncompatibleCount:[(NSPToggleStats *)v14 systemIncompatibleCount]+ 1];
LABEL_19:
    v15 = 0;
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
    v27 = self->_lastCaptiveOutageReasonStats;
LABEL_37:
    v15 = v27;
    [(NSPServiceStatusManager *)self->_serviceStatusManager reportServiceOutageWithType:2 outageReasonStats:v27];
    v14 = self->_toggleStats;
    [(NSPToggleStats *)v14 setNetworkOutageCount:[(NSPToggleStats *)v14 networkOutageCount]+ 1];
    v13 = v12;
    goto LABEL_20;
  }

  if (self->_proxyOutage)
  {
    v15 = [(NSPPrivacyProxyAgentManager *)self->_privacyProxyAgentManager lastProxyOutageReason];
    [(NSPServiceStatusManager *)self->_serviceStatusManager reportServiceOutageWithType:5 outageReasonStats:v15];
    v14 = self->_toggleStats;
    [(NSPToggleStats *)v14 setProxyOutageCount:[(NSPToggleStats *)v14 proxyOutageCount]+ 1];
    goto LABEL_20;
  }

  if (self->_proxyNetworkOutage)
  {
    v27 = [(NSPPrivacyProxyAgentManager *)self->_privacyProxyAgentManager lastProxyOutageReason];
    goto LABEL_37;
  }

  if (self->_odohOutage || self->_odohAuthOutage)
  {
    v15 = sub_10004D0A4(&self->_odohManager->super.isa);
    [(NSPServiceStatusManager *)self->_serviceStatusManager reportServiceOutageWithType:4 outageReasonStats:v15];
    v14 = self->_toggleStats;
    [(NSPToggleStats *)v14 setOdohOutageCount:[(NSPToggleStats *)v14 odohOutageCount]+ 1];
    goto LABEL_20;
  }

  if (self->_tokenOutage)
  {
    v15 = [(NSPPrivacyProxyAgentManager *)self->_privacyProxyAgentManager lastTokenOutageReason];
    [(NSPServiceStatusManager *)self->_serviceStatusManager reportServiceOutageWithType:3 outageReasonStats:v15];
    v14 = self->_toggleStats;
    [(NSPToggleStats *)v14 setTokenOutageCount:[(NSPToggleStats *)v14 tokenOutageCount]+ 1];
    goto LABEL_20;
  }

  if (self->_configOutage)
  {
    v15 = self->_lastConfigOutageReasonStats;
    [(NSPServiceStatusManager *)self->_serviceStatusManager reportServiceOutageWithType:1 outageReasonStats:v15];
    v14 = self->_toggleStats;
    [(NSPToggleStats *)v14 setConfigOutageCount:[(NSPToggleStats *)v14 configOutageCount]+ 1];
    goto LABEL_20;
  }

  v15 = 0;
  v28 = 0;
  if (v7)
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
  if (!((v15 == 0) | v13 & 1))
  {
    if (self)
    {
      privacyProxyAgentManager = self->_privacyProxyAgentManager;
    }

    else
    {
      privacyProxyAgentManager = 0;
    }

    [(NSPPrivacyProxyAgentManager *)privacyProxyAgentManager sendRTCReportForServiceOutage:v15];
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

- (void)configUpdated:(id)a3
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

- (void)geohashSettingsChanged:(id)a3
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
  v8 = [(NSPConfiguration *)v7 geohashSharingEnabledStatus];
  v9 = [v8 BOOLValue];
  if (self)
  {
    v10 = self->_configuration;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = [(NSPConfiguration *)v11 geohashOverride];
  [(NSPPrivacyProxyAgentManager *)v5 updateGeohashSharingPreference:v9 geohashOverride:v12];
}

- (void)configEpochChanged:(id)a3
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
  v8 = [(NSPConfiguration *)v7 epoch];
  [(NSPPrivacyProxyAgentManager *)v5 updateConfigEpoch:v8];
}

- (void)privateAccessTokensEnabledChanged:(id)a3
{
  v3 = nplog_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Private Access Tokens settings changed", v4, 2u);
  }
}

- (void)cloudSubscriptionChanged:(BOOL)a3 configManager:(id)a4
{
  if (a3)
  {
    sub_100066A0C(&self->super.isa);

    sub_100066B38(self);
  }

  else
  {

    sub_100067598(self);
  }
}

- (void)badTokenInfoForProxy:(id)a3
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
  v7 = a3;
  v8 = [(NSPConfiguration *)v6 configurationFetchDate];
  v9 = [NSDateFormatter localizedStringFromDate:v8 dateStyle:1 timeStyle:2];

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
    v13 = [(NSPConfiguration *)v12 etag];
    *buf = 138412546;
    v28 = v13;
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

  v16 = [(NSPConfiguration *)v15 configurationFetchDate];
  [v14 timeIntervalSinceDate:v16];
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

  v21 = [(NSPConfiguration *)v20 userTier];
  v22 = [v21 intValue];
  if (v22 >= 3)
  {
    v23 = [NSString stringWithFormat:@"(unknown: %i)", v22];
  }

  else
  {
    v23 = *(&off_10010A560 + v22);
  }

  [(NSPBadTokenInfoStats *)v19 setTierType:v23];

  v24 = [v7 vendor];

  [(NSPBadTokenInfoStats *)v19 setTokenProxy:v24];
  if (self)
  {
    v25 = self->_configuration;
  }

  else
  {
    v25 = 0;
  }

  v26 = [(NSPConfiguration *)v25 etag];
  [(NSPBadTokenInfoStats *)v19 setConfigTag:v26];

  [(NSPBadTokenInfoStats *)v19 setConfigAgeHours:(v18 / 3600.0)];
  [(NSPProxyAnalytics *)v19 sendAnalytics];
}

- (void)refreshProxyInfo:(unint64_t)a3
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
  [(NSPConfigurationManager *)v7 refreshConfigurationWithReason:a3 completionHandler:v8];

  _Block_object_dispose(&buf, 8);
}

- (void)multiHopProxyAgentRegistered:(BOOL)a3
{
  v3 = a3;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "is not";
    if (v3)
    {
      v6 = "is";
    }

    v11 = 136315138;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "multiHop proxy agent %s registered", &v11, 0xCu);
  }

  if (v3)
  {
    if (self)
    {
      configurationManager = self->_configurationManager;
    }

    else
    {
      configurationManager = 0;
    }

    v8 = [(NSPConfigurationManager *)configurationManager mergeProxyTrafficStateWithCurrentPolicy];
    if (self)
    {
      v9 = self->_configurationManager;
    }

    else
    {
      v9 = 0;
    }

    [(NSPServer *)self policiesUpdated:v9 policy:v8 resolverInfoChanged:1];
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

- (void)singleHopProxyAgentRegistered:(BOOL)a3
{
  if (a3)
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

- (void)obliviousHopAgentRegisteredForHostname:(id)a3 processes:(id)a4 agentUUID:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 count];
  v11 = nplog_obj();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v17 = 138412802;
      v18 = v7;
      v19 = 2112;
      v20 = v9;
      v21 = 2112;
      v22 = v8;
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
    v18 = v7;
    v19 = 2112;
    v20 = v9;
    v13 = "Adding policies for oblivious agent for %@ (%@)";
    v14 = v11;
    v15 = 22;
    goto LABEL_6;
  }

  v16 = +[NSPPrivacyProxyPolicyHandler sharedHandler];
  [v16 addObliviousProxyAgent:v9 processes:v8 hostname:v7];
}

- (void)obliviousHopAgentUnregisteredForHostname:(id)a3 agentUUID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = nplog_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Removing policies for oblivious agent for %@ (%@)", &v9, 0x16u);
  }

  v8 = +[NSPPrivacyProxyPolicyHandler sharedHandler];
  [v8 removeObliviousProxyAgent:v6 forHostname:v5 apply:1];
}

- (void)proxiedContentMaps:(id)a3 registeredForAgentUUID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = nplog_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Adding policies for proxied content for %@", &v9, 0xCu);
  }

  v8 = +[NSPPrivacyProxyPolicyHandler sharedHandler];
  [v8 addProxiedContentAgent:v5 maps:v6];
}

- (void)networkDiscoveredProxyPaths:(id)a3 registeredForAgentUUID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = nplog_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Adding policy for network discovered agent for %@", &v9, 0xCu);
  }

  v8 = +[NSPPrivacyProxyPolicyHandler sharedHandler];
  [v8 addNetworkDiscoveryProxyAgent:v5 with:v6];
}

- (void)proxiedContentMapsUnregisteredForAgentUUID:(id)a3
{
  v3 = a3;
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Removing policies for proxied content for %@", &v6, 0xCu);
  }

  v5 = +[NSPPrivacyProxyPolicyHandler sharedHandler];
  [v5 removeProxiedContentAgent:v3 apply:1];
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
    v4 = [(NSPConfigurationManager *)self->_configurationManager mergeProxyTrafficStateWithCurrentPolicy];
    [(NSPServer *)self policiesUpdated:self->_configurationManager policy:v4 resolverInfoChanged:1];
    sub_1000654C0(self);
  }
}

- (void)checkPrivacyProxyConnectivityOnInterface:(id)a3 proxyConnectivityCheckType:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 interfaceName];
  v11 = nplog_obj();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%@ received check proxy connectivity for interface %@", buf, 0x16u);
  }

  if (a4 <= 3)
  {
    switch(a4)
    {
      case 1uLL:
        v12 = 0;
        v13 = 5;
        if (!v10)
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
        v12 = [(NSPPrivacyProxyAgentManager *)v25 lastProxyOutageReason];

        v13 = 3;
        if (!v10)
        {
          goto LABEL_29;
        }

        goto LABEL_21;
      case 3uLL:
        v12 = 0;
        v13 = 10;
        if (!v10)
        {
          goto LABEL_29;
        }

        goto LABEL_21;
    }

LABEL_19:
    v13 = 0;
    v12 = 0;
    if ((a4 & 0xFFFFFFFFFFFFFFFELL) != 4)
    {
      goto LABEL_20;
    }

    goto LABEL_11;
  }

  if (a4 - 4 >= 2)
  {
    if (a4 == 6)
    {
      v12 = 0;
      v13 = 12;
      if (!v10)
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
  v12 = sub_10004D0A4(v15);

LABEL_20:
  if (!v10)
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
    v20 = [(NSPConfiguration *)v19 etag];

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
    v27 = v10;
    v23 = v20;
    v34[1] = a4;
    v28 = v23;
    v29 = self;
    v30 = v8;
    v31 = v12;
    v32 = v9;
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
    if ([0 containsObject:v10])
    {
      goto LABEL_23;
    }

    interfacesBeingChecked = 0;
    goto LABEL_28;
  }

  if (![(NSMutableSet *)self->_interfacesBeingChecked containsObject:v10])
  {
    interfacesBeingChecked = self->_interfacesBeingChecked;
LABEL_28:
    [(NSMutableSet *)interfacesBeingChecked addObject:v10];
    goto LABEL_29;
  }

LABEL_23:
  v16 = nplog_obj();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%@ already checking connectivity for interface %@", buf, 0x16u);
  }

  if (v9)
  {
    (*(v9 + 2))(v9, 0);
  }

LABEL_34:
}

- (void)reportPrivacyProxySuccessOnInterface:(id)a3
{
  v4 = a3;
  v5 = [v4 interfaceName];
  v6 = nplog_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v51 = self;
    v52 = 2112;
    v53 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@ reported proxy success on interface %@", buf, 0x16u);
  }

  if (v5)
  {
    if (self)
    {
      if (![(NSMutableSet *)self->_interfacesBeingChecked containsObject:v5])
      {
        goto LABEL_8;
      }

      interfacesBeingChecked = self->_interfacesBeingChecked;
    }

    else
    {
      v41 = [0 containsObject:v5];
      interfacesBeingChecked = 0;
      if ((v41 & 1) == 0)
      {
        if ([v4 type] == 1 || objc_msgSend(v4, "type") == 2)
        {
          goto LABEL_60;
        }

        v42 = v4;
LABEL_59:

        goto LABEL_60;
      }
    }

    [(NSMutableSet *)interfacesBeingChecked removeObject:v5];
  }

LABEL_8:
  if ([v4 type] == 1)
  {
    if (self)
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v8 = [(NSPServiceStatusManager *)self->_serviceStatusManager serviceStatus];
      v9 = [v8 networkStatuses];

      v10 = [v9 countByEnumeratingWithState:&v46 objects:buf count:16];
      if (v10)
      {
        v11 = v10;
        v12 = v5;
        v13 = 0;
        v14 = 0;
        v15 = *v47;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v47 != v15)
            {
              objc_enumerationMutation(v9);
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
                v18 = [v17 networkName];

                v14 = 1;
                v13 = v18;
              }
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v46 objects:buf count:16];
        }

        while (v11);

        if (v14)
        {
          [(NSPServiceStatusManager *)self->_serviceStatusManager reportActiveOnWiFiName:v13];
          v9 = +[NSPPrivacyProxyPolicyHandler sharedHandler];
          [v9 wifiDisabled:0];
LABEL_38:
          v5 = v12;
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

  if ([v4 type] != 2)
  {
    v27 = v4;
    if (self)
    {
      v28 = v27;
      if ([v27 type] == 3)
      {
        v43 = v5;
        v44 = v4;
        v29 = [v28 interfaceName];
        v45 = sub_100073BA0(v29);
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v30 = [(NSPServiceStatusManager *)self->_serviceStatusManager serviceStatus];
        v31 = [v30 networkStatuses];

        v32 = [v31 countByEnumeratingWithState:&v46 objects:buf count:16];
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
                objc_enumerationMutation(v31);
              }

              v37 = *(*(&v46 + 1) + 8 * j);
              if ([v37 networkType] == 3)
              {
                v38 = [v37 networkName];
                v39 = [v38 isEqualToString:v29];

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

            v33 = [v31 countByEnumeratingWithState:&v46 objects:buf count:16];
          }

          while (v33);

          v40 = v45;
          if (v34)
          {
            [(NSPServiceStatusManager *)self->_serviceStatusManager reportActiveOnInterfaceName:v29 displayName:v45 type:3];
            sub_10006815C(self);
          }
        }

        else
        {
LABEL_57:

          v40 = v45;
        }

        v5 = v43;
        v4 = v44;
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
    v19 = [(NSPServiceStatusManager *)self->_serviceStatusManager serviceStatus];
    v9 = [v19 networkStatuses];

    v20 = [v9 countByEnumeratingWithState:&v46 objects:buf count:16];
    if (v20)
    {
      v21 = v20;
      v12 = v5;
      v13 = 0;
      v22 = 0;
      v23 = *v47;
      do
      {
        for (k = 0; k != v21; k = k + 1)
        {
          if (*v47 != v23)
          {
            objc_enumerationMutation(v9);
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
              v26 = [v25 networkName];

              v22 = 1;
              v13 = v26;
            }
          }
        }

        v21 = [v9 countByEnumeratingWithState:&v46 objects:buf count:16];
      }

      while (v21);

      if (v22)
      {
        [(NSPServiceStatusManager *)self->_serviceStatusManager reportActiveOnCellularName:v13];
        v9 = +[NSPPrivacyProxyPolicyHandler sharedHandler];
        [v9 cellularDisabled:0];
        goto LABEL_38;
      }

LABEL_61:
      v5 = v12;
      goto LABEL_41;
    }

LABEL_39:
    v13 = 0;
    goto LABEL_40;
  }

LABEL_60:
}

- (void)reportActivityForApp:(id)a3 path:(id)a4
{
  if (self)
  {
    self = self->_serviceStatusManager;
  }

  [(NSPServer *)self reportActivityForApp:a3 path:a4];
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
    v4 = [(NSPConfigurationManager *)self->_configurationManager mergeProxyTrafficStateWithCurrentPolicy];
    [(NSPServer *)self policiesUpdated:self->_configurationManager policy:v4 resolverInfoChanged:1];
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
    v5 = [(NSPConfigurationManager *)self->_configurationManager mergeProxyTrafficStateWithCurrentPolicy];
    [(NSPServer *)self policiesUpdated:self->_configurationManager policy:v5 resolverInfoChanged:1];
    sub_100064320(self);
    [(NSPPrivacyProxyAgentManager *)self->_privacyProxyAgentManager resetProxyErrors];
    sub_1000654C0(self);
  }
}

- (void)preferredProxyAgentRegistered:(id)a3 agentUUID:(id)a4 domainFilter:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self)
  {
    configuration = self->_configuration;
  }

  else
  {
    configuration = 0;
  }

  v12 = [(NSPConfiguration *)configuration preferredPathRoutingEnabledStatus];
  v13 = [v12 BOOLValue];

  v14 = nplog_obj();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v15)
    {
      v16 = 138412546;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Adding policies for preferred agent %@ / %@", &v16, 0x16u);
    }

    v14 = +[NSPPrivacyProxyPolicyHandler sharedHandler];
    [v14 addPreferredProxy:v8 agentUUID:v9 withDomainFilter:v10];
  }

  else if (v15)
  {
    v16 = 138412546;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Skipping adding policies preferred agent %@ / %@, feature disabled", &v16, 0x16u);
  }
}

- (void)preferredProxyAgentUnregistered:(id)a3
{
  v3 = a3;
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Removing policies for preferred agent %@", &v6, 0xCu);
  }

  v5 = +[NSPPrivacyProxyPolicyHandler sharedHandler];
  [v5 removePreferredProxy:v3 apply:1];
}

- (BOOL)networkDiscoveredProxyInTrustedProxyList:(id)a3
{
  v4 = a3;
  v5 = [v4 host];
  if (v5)
  {
    v6 = [v4 port];

    if (v6)
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

      v8 = [(NSPConfiguration *)configuration proxyConfiguration];
      v9 = [v8 trustedNetworkDiscoveredProxies];

      v10 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
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
              objc_enumerationMutation(v9);
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

                v23 = [v4 host];
                if ([v23 isEqualToString:v20])
                {
                  [v4 port];
                  v24 = v12;
                  v25 = v13;
                  v26 = v9;
                  v28 = v27 = v4;

                  v29 = v28 == v22;
                  v4 = v27;
                  v9 = v26;
                  v13 = v25;
                  v12 = v24;
                  v11 = v31;
                  if (v29)
                  {

                    LOBYTE(v5) = 1;
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
          v11 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
        }

        while (v11);
      }

      LOBYTE(v5) = 0;
LABEL_22:
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (BOOL)canIgnoreInvalidCertsOnInternalBuild
{
  v2 = [[NSPConfiguration alloc] initFromPreferences];
  if (v2 && os_variant_allows_internal_security_policies())
  {
    v3 = [v2 ignoreInvalidCerts];
  }

  else
  {
    v3 = 0;
  }

  return v3;
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
  v5 = [(NSPConfiguration *)v4 configServerHost];
  if ([v5 isEqualToString:@"mask-api.icloud.com"])
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

- (void)didUpdateCountryPlusTimezone:(id)a3
{
  v4 = a3;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412546;
    v7 = self;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@ country+timezone updated to [%@]", &v6, 0x16u);
  }

  sub_10001FDC8(self, v4);
  sub_1000654C0(self);
}

- (void)didUpdateGeohash:(id)a3
{
  v4 = a3;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412546;
    v7 = self;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@ Geohash updated to [%@]", &v6, 0x16u);
  }

  sub_10007080C(self, v4);
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
    v3 = [(NSPConfiguration *)self->_configuration proxyConfiguration];
    v4 = [v3 dnsProbe];

    if (v4)
    {
      v5 = [(NWPathEvaluator *)self->_primaryPhysicalInterfaceEvaluator path];
      v6 = [v5 interface];

      v7 = [v6 cInterface];
      v8 = [(NWPathEvaluator *)self->_primaryPhysicalInterfaceEvaluator path];
      v9 = [v8 status];

      if (v9 == 1)
      {
        if (v7)
        {
          host = nw_endpoint_create_host([v4 UTF8String], "443");
          v11 = nw_parameters_create();
          nw_parameters_require_interface(v11, v7);
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
          v17 = v7;
          nw_resolver_set_update_handler();

          objc_destroyWeak(v18);
          objc_destroyWeak(&location);
        }
      }
    }

    else
    {
      v6 = nplog_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v16[0]) = 0;
        _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "No DNS probe configured, ignoring", v16, 2u);
      }
    }
  }
}

- (void)disableWiFiNetwork:(id)a3
{
  v4 = a3;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v16 = v4;
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

  v7 = [(CWFInterface *)wifiInterface currentKnownNetworkProfile];
  [v7 setPrivacyProxyEnabled:0];
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
  [(CWFInterface *)v9 updateKnownNetworkProfile:v7 properties:0 error:&v14];
  v10 = v14;

  if (v10)
  {
    v11 = nplog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138478083;
      v16 = v4;
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

  [(NSPServiceStatusManager *)serviceStatusManager reportDisabledOnWiFiName:v4];
  v13 = +[NSPPrivacyProxyPolicyHandler sharedHandler];
  [v13 wifiDisabled:1];
}

- (void)disableCellularNetwork:(id)a3
{
  v4 = a3;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v4;
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
  v13 = v4;
  v11 = v4;
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

- (void)updateSavedPrivateCloudComputeEnvironment:(id)a3
{
  v4 = a3;
  if (self)
  {
    privateCloudComputeEnvironment = self->_privateCloudComputeEnvironment;
  }

  else
  {
    privateCloudComputeEnvironment = 0;
  }

  v6 = privateCloudComputeEnvironment;
  v9 = v4;
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