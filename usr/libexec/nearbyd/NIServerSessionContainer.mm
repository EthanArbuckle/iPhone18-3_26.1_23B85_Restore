@interface NIServerSessionContainer
- ($115C4C562B26FF47E01F9F4EA65B5887)clientAuditToken;
- (BOOL)_isBackgroundOperationAllowed;
- (BOOL)_isClientInternalTool;
- (BOOL)_isClientOnDLTDOAInternalAllowlist;
- (BOOL)_isClientOnGeneralEntitlementAllowlist;
- (BOOL)_isClientOnSystemShutdownAllowlist;
- (BOOL)_supportedPlatform;
- (BOOL)_updateInterruptionForUWBSystemOffWithCause:(int)a3;
- (BOOL)addObservers:(id)a3;
- (BOOL)entitlementGranted:(int)a3;
- (BOOL)longRangeEnabled;
- (BOOL)removeObservers:(id)a3;
- (BOOL)requiresBiasCorrection;
- (BOOL)requiresLargeRegions;
- (NIRecentlyObservedObjectsCache)nearbyObjectsCache;
- (NIServerSessionActivationGuard)activationGuard;
- (NIServerSessionAggregateStateProvider)aggregateStateProvider;
- (NIServerSessionContainer)initWithClient:(id)a3 clientInfo:(const NIServerClientInfo *)a4 connection:(id)a5 authorizationManager:(id)a6;
- (NIServerSessionObservationRegistrar)observationRegistrar;
- (NSString)description;
- (NSString)processNameBestGuess;
- (PRUWBServiceProviding)uwbProvider;
- (PRWiFiServiceProviding)wifiProvider;
- (basic_string<char,)_interruptionsMapAsString;
- (id).cxx_construct;
- (id)_augmentDiscoveryTokenWithDeviceCapabilities:(id)a3;
- (id)_augmentDiscoveryTokenWithMmsNumFragments:(id)a3;
- (id)_augmentDiscoveryTokenWithNbUwbAcquisitionChannel:(id)a3;
- (id)_displayPermissionsPromptIfNeeded;
- (id)_fatalErrorForUwbServiceState:(int)a3 cause:(int)a4;
- (id)_getCapabilities;
- (id)_getExpandedCapabilities;
- (id)canHandleAcwgMsg:(id)a3;
- (id)devicePresenceResource;
- (id)discoveryToken;
- (id)printableState;
- (id)remote;
- (id)uwbResource;
- (id)wifiResource;
- (shared_ptr<rose::PowerBudgetProvider>)powerBudgetProvider;
- (shared_ptr<rose::protobuf::Logger>)protobufLogger;
- (unsigned)_getDiscoveryTokenFlags;
- (void)_acquireClientMessageHandlingRuntimeAssertionIfNecessary;
- (void)_activateBluetoothResource;
- (void)_addObject:(id)a3 reply:(id)a4;
- (void)_dumpInterruptionsMapWithDebugString:(id)a3;
- (void)_handleBluetoothBecameAvailable;
- (void)_handleBluetoothBecameUnavailable;
- (void)_handleSpecializedSessionBackgroundSupportUpdate:(BOOL)a3;
- (void)_handleSpecializedSessionInvalidation:(id)a3;
- (void)_populateClientEntitlements;
- (void)_processBluetoothSample:(id)a3;
- (void)_processCarKeyEvent:(id)a3 reply:(id)a4;
- (void)_processFindingEvent:(id)a3 reply:(id)a4;
- (void)_processSystemEvent:(id)a3 reply:(id)a4;
- (void)_provideTruthTag:(id)a3;
- (void)_removeObject:(id)a3 reply:(id)a4;
- (void)_setContainerState:(unsigned __int8)a3;
- (void)_setURSKTTL:(unint64_t)a3 reply:(id)a4;
- (void)_updateClientAppVisibilityInterruption;
- (void)_updateInterruptionForUWBSystemError;
- (void)_updateInterruptionForUWBSystemReady;
- (void)activate:(id)a3;
- (void)arSessionDidFailWithError:(id)a3;
- (void)arSessionInterruptionEnded;
- (void)arSessionWasInterrupted;
- (void)arSessionWillRunWithInvalidConfiguration;
- (void)bluetoothAdvertisingAddressChanged:(unint64_t)a3;
- (void)bluetoothDidChangeState:(int64_t)a3;
- (void)bluetoothServiceInterrupted;
- (void)dealloc;
- (void)deleteURSKs:(id)a3;
- (void)didDiscoverDevice:(id)a3;
- (void)didFailWithErrorCode:(int64_t)a3 errorString:(const void *)a4;
- (void)didFinishActivatingWithDiscoveryTokenData:(id)a3 error:(id)a4;
- (void)didLoseDevice:(id)a3;
- (void)didReceiveNewSolution:(const void *)a3;
- (void)didReceiveRemoteData:(const void *)a3;
- (void)didReceiveSessionStartNotification:(const void *)a3;
- (void)discoveredDevice:(id)a3 didUpdate:(id)a4;
- (void)generateDiscoveryToken;
- (void)getActivelyInteractingDiscoveryTokens:(id)a3;
- (void)getInteractableDiscoveryTokens:(id)a3;
- (void)getLocalDevicePrintableState:(id)a3;
- (void)interruptSessionWithReason:(int64_t)a3 monotonicTimeSeconds:(double)a4;
- (void)interruptionReasonEnded:(int64_t)a3 monotonicTimeSeconds:(double)a4;
- (void)invalidate;
- (void)isExtendedDistanceMeasurementAllowed:(id)a3;
- (void)isPreciseRangingAllowed:(id)a3;
- (void)isRangingLimitExceeded:(id)a3;
- (void)monitoredApp:(int)a3 didChangeState:(int)a4;
- (void)notifySystemShutdownWithReason:(int64_t)a3 reply:(id)a4;
- (void)pause:(id)a3;
- (void)processAcwgM1Msg:(id)a3 withSessionTriggerReason:(int64_t)a4;
- (void)processAcwgM3Msg:(id)a3;
- (void)processBluetoothHostTimeSyncWithType:(int64_t)a3 btcClockTicks:(unint64_t)a4 eventCounter:(unint64_t)a5 reply:(id)a6;
- (void)processDCKMessage:(id)a3 reply:(id)a4;
- (void)processVisionInput:(id)a3;
- (void)queryDeviceCapabilities:(id)a3;
- (void)rangingServiceDidUpdateState:(int)a3 cause:(int)a4;
- (void)runWithConfiguration:(id)a3 reply:(id)a4;
- (void)serviceRequestDidUpdateStatus:(ServiceRequestStatusUpdate)a3;
- (void)setAppStateMonitor:(id)a3;
- (void)setLocalDeviceCanInteract:(BOOL)a3 withDiscoveryTokens:(id)a4 reply:(id)a5;
- (void)setLocalDeviceDebugParameters:(id)a3 reply:(id)a4;
- (void)setLocalDeviceInteractableDiscoveryTokens:(id)a3 reply:(id)a4;
@end

@implementation NIServerSessionContainer

- (id)devicePresenceResource
{
  devicePresenceProvider = self->_devicePresenceProvider;
  if (!devicePresenceProvider)
  {
    objc_initWeak(&location, self);
    v4 = [NIServerBluetoothSampleConsumer alloc];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100008CF4;
    v8[3] = &unk_10099C750;
    objc_copyWeak(&v9, &location);
    v5 = [(NIServerBluetoothSampleConsumer *)v4 initWithConsumerBlock:v8];
    v6 = self->_devicePresenceProvider;
    self->_devicePresenceProvider = v5;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    devicePresenceProvider = self->_devicePresenceProvider;
  }

  return devicePresenceProvider;
}

- (BOOL)_supportedPlatform
{
  v2 = [(NIServerSessionContainer *)self _getExpandedCapabilities];
  v3 = [v2 objectForKeyedSubscript:@"SupportedPlatform"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)_getExpandedCapabilities
{
  v3 = objc_opt_new();
  v4 = [(NIServerSessionContainer *)self _getCapabilities];
  [v3 addEntriesFromDictionary:v4];

  v5 = [(NIServerSessionContainer *)self devicePresenceResource];
  v6 = [v5 internalObserver];
  LODWORD(v4) = [v6 deviceCapabilities];

  v7 = [v3 objectForKey:@"UWBSupportedPlatform"];
  LODWORD(v5) = [v7 BOOLValue];

  v8 = [v3 objectForKey:@"WifiSupportedPlatform"];
  LODWORD(v7) = [v8 BOOLValue];

  v9 = [NSNumber numberWithBool:[(NIServerSessionContainer *)self entitlementGranted:5]& v4 | v5 | [(NIServerSessionContainer *)self entitlementGranted:2]& v7];
  [v3 setObject:v9 forKey:@"SupportedPlatform"];

  return v3;
}

- (id)_getCapabilities
{
  v3 = objc_opt_new();
  v4 = [(NIServerSessionContainer *)self uwbProvider];
  v5 = [v4 deviceCapabilities];

  v6 = [(NIServerSessionContainer *)self wifiProvider];
  LOBYTE(self) = [v6 deviceCapabilities];

  v7 = [NSNumber numberWithBool:v5 & 1];
  [v3 setObject:v7 forKey:@"UWBSupportedPlatform"];

  v8 = [NSNumber numberWithBool:(v5 >> 8) & 1];
  [v3 setObject:v8 forKey:@"UWBSupportedPlatformPDOA"];

  v9 = [NSNumber numberWithBool:HIWORD(v5) & 1];
  [v3 setObject:v9 forKey:@"UWBSupportedPlatformExtendedDistance"];

  v10 = [NSNumber numberWithBool:self & 1];
  [v3 setObject:v10 forKey:@"WifiSupportedPlatform"];

  v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", +[NIPlatformInfo supportsSyntheticAperture]);
  [v3 setObject:v11 forKey:@"UWBSupportedPlatformSyntheticAperture"];

  return v3;
}

- (PRUWBServiceProviding)uwbProvider
{
  v5 = self;
  if (!self->_uwbProvider)
  {
    v2 = [PRUWBManagerAgent alloc];
    sub_1001D07D8();
  }

  uwbProvider = v5->_uwbProvider;

  return uwbProvider;
}

- (PRWiFiServiceProviding)wifiProvider
{
  wifiProvider = self->_wifiProvider;
  if (!wifiProvider)
  {
    v4 = objc_alloc_init(PRWiFiManagerAgent);
    v5 = self->_wifiProvider;
    self->_wifiProvider = v4;

    wifiProvider = self->_wifiProvider;
  }

  return wifiProvider;
}

- (NIServerSessionContainer)initWithClient:(id)a3 clientInfo:(const NIServerClientInfo *)a4 connection:(id)a5 authorizationManager:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = [v12 _queue];
  dispatch_assert_queue_V2(v14);

  if (v12)
  {
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v34 = +[NSAssertionHandler currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"NIServerSessionContainer.mm" lineNumber:303 description:{@"Invalid parameter not satisfying: %@", @"connection"}];

    if (v13)
    {
      goto LABEL_3;
    }
  }

  v35 = +[NSAssertionHandler currentHandler];
  [v35 handleFailureInMethod:a2 object:self file:@"NIServerSessionContainer.mm" lineNumber:304 description:{@"Invalid parameter not satisfying: %@", @"authorizationManager"}];

LABEL_3:
  v36.receiver = self;
  v36.super_class = NIServerSessionContainer;
  v15 = [(NIServerSessionContainer *)&v36 init];
  v16 = v15;
  if (v15)
  {
    v15->_entitlementsLock._os_unfair_lock_opaque = 0;
    v17 = [NIServerClientPublisher publisherForClient:v11];
    client = v16->_client;
    v16->_client = v17;

    objc_storeStrong(&v16->_connection, a5);
    v19 = [v12 _queue];
    connectionQueue = v16->_connectionQueue;
    v16->_connectionQueue = v19;

    v21 = objc_opt_new();
    sessionIdentifier = v16->_sessionIdentifier;
    v16->_sessionIdentifier = v21;

    objc_storeStrong(&v16->_signingIdentity, a4->var0);
    bundleIdentifier = v16->_bundleIdentifier;
    v16->_bundleIdentifier = 0;

    v16->_pid = a4->var1;
    *v16->_clientEntitlementsArray.__elems_ = 0;
    *&v16->_clientEntitlementsArray.__elems_[7] = 0;
    objc_storeStrong(&v16->_authManager, a6);
    v24 = qword_1009F9820;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [(NIServerSessionContainer *)v16 signingIdentity];
      v26 = [(NIServerSessionContainer *)v16 pid];
      v27 = v16->_sessionIdentifier;
      *buf = 138412802;
      v38 = v25;
      v39 = 1024;
      v40 = v26;
      v41 = 2112;
      v42 = v27;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#ses-container,Container init. Signing identity: %@, pid: %d, session identifier: %@", buf, 0x1Cu);
    }

    localDiscoveryToken = v16->_localDiscoveryToken;
    v16->_localDiscoveryToken = 0;

    *&v16->_latestSessionContainerState = 0;
    v16->_latestBluetoothState = 0;
    v16->_latestAppState = 0;
    v29 = [[NIServerAssertionManager alloc] initWithClientPid:v16->_pid signingIdentity:v16->_signingIdentity sessionIdentifier:v16->_sessionIdentifier];
    assertionManager = v16->_assertionManager;
    v16->_assertionManager = v29;

    v16->_connectedToUwbProvider = 0;
    activationError = v16->_activationError;
    v16->_activationError = 0;

    v32 = sub_100005288();
    v16->_initTime = v32;
    v16->_timeOfLatestContainerState = v32;
  }

  return v16;
}

- (void)dealloc
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    signingIdentity = self->_signingIdentity;
    pid = self->_pid;
    sessionIdentifier = self->_sessionIdentifier;
    *buf = 138412802;
    v10 = signingIdentity;
    v11 = 1024;
    v12 = pid;
    v13 = 2112;
    v14 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-container,Container dealloc. Signing identity: %@, pid: %d, session identifier: %@", buf, 0x1Cu);
  }

  if (self->_connectedToUwbProvider)
  {
    v7 = [(NIServerSessionContainer *)self uwbProvider];
    [v7 disconnect];

    self->_connectedToUwbProvider = 0;
  }

  v8.receiver = self;
  v8.super_class = NIServerSessionContainer;
  [(NIServerSessionContainer *)&v8 dealloc];
}

- (NSString)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NIServerBaseSession *)self->_specializedSession description];
  v7 = [v3 initWithFormat:@"<Session Container %@ running with specialized session: %@>", v5, v6];

  return v7;
}

- (BOOL)addObservers:(id)a3
{
  v4 = a3;
  v5 = [(NIServerBaseSession *)self->_specializedSession supportsSessionObservers];
  if (v5)
  {
    [(NIServerClientPublisher *)self->_client addObservers:v4];
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A5620();
  }

  return v5;
}

- (BOOL)removeObservers:(id)a3
{
  v4 = a3;
  v5 = [(NIServerBaseSession *)self->_specializedSession supportsSessionObservers];
  if (v5)
  {
    [(NIServerClientPublisher *)self->_client removeObservers:v4];
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A565C();
  }

  return v5;
}

- (void)queryDeviceCapabilities:(id)a3
{
  v4 = a3;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NIServerSessionContainer *)self signingIdentity];
    v7 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    v11 = 138412802;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 2112;
    v16 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - queryDeviceCapabilities. Signing identity: %@, pid: %d, session identifier: %@", &v11, 0x1Cu);
  }

  v9 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [(NIServerSessionContainer *)self _getExpandedCapabilities];
  v4[2](v4, v10);
}

- (void)activate:(id)a3
{
  v4 = a3;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NIServerSessionContainer *)self signingIdentity];
    v7 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    *buf = 138412802;
    v32 = v6;
    v33 = 1024;
    v34 = v7;
    v35 = 2112;
    v36 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - activate. Signing identity: %@, pid: %d, session identifier: %@", buf, 0x1Cu);
  }

  v9 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v9);

  [(NIServerSessionContainer *)self _setContainerState:1];
  if (+[NIPlatformInfo isInternalBuild])
  {
    v10 = +[NSUserDefaults standardUserDefaults];
    v11 = [v10 BOOLForKey:@"ForceCrash_SessionActivate"];

    if (v11)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004A5698();
      }

      v28 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v32 = "/Library/Caches/com.apple.xbs/Sources/Proximity/Daemon/Services/NearbyInteraction/Session/NIServerSessionContainer.mm";
        v33 = 1024;
        v34 = 423;
        v35 = 2080;
        v36 = "[NIServerSessionContainer activate:]";
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "#ses-container,%s:%d: assertion failure in %s", buf, 0x1Cu);
      }

      abort();
    }
  }

  v12 = [NSNumber numberWithBool:[(NIServerSessionContainer *)self entitlementGranted:0, @"InternalClient"]];
  v30 = v12;
  v13 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v14 = [NSMutableDictionary dictionaryWithDictionary:v13];

  if ([(NIServerSessionContainer *)self _supportedPlatform])
  {
    v15 = [(NIServerSessionContainer *)self activationGuard];
    if ([v15 isSessionAllowedToActivate:self])
    {
      v16 = [[NIServerAnalyticsManager alloc] initWithBundleIdentifier:self->_bundleIdentifier];
      analyticsManager = self->_analyticsManager;
      self->_analyticsManager = v16;

      v18 = [(NIServerSessionContainer *)self uwbProvider];
      v19 = [v18 deviceCapabilities];

      if (v19)
      {
        v20 = [(NIServerSessionContainer *)self uwbProvider];
        [v20 connect];

        self->_connectedToUwbProvider = 1;
      }

      v21 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v32 = v14;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#ses-container,activation success. Response: %{private}@", buf, 0xCu);
      }

      [(NIServerSessionContainer *)self _setContainerState:2];
      v4[2](v4, v14, 0);
    }

    else
    {
      v25 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5885 userInfo:0];
      activationError = self->_activationError;
      p_activationError = &self->_activationError;
      *p_activationError = v25;

      (v4)[2](v4, v14, *p_activationError);
    }
  }

  else
  {
    v22 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5889 userInfo:0];
    v24 = self->_activationError;
    v23 = &self->_activationError;
    *v23 = v22;

    (v4)[2](v4, v14, *v23);
  }
}

- (void)runWithConfiguration:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_1009F9820;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(NIServerSessionContainer *)self signingIdentity];
    v10 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    LODWORD(buf[0]) = 138412802;
    *(buf + 4) = v9;
    WORD2(buf[1]) = 1024;
    *(&buf[1] + 6) = v10;
    WORD1(buf[2]) = 2112;
    *(&buf[2] + 4) = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - runWithConfiguration. Signing identity: %@, pid: %d, session identifier: %@", buf, 0x1Cu);
  }

  v12 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v12);

  if ([(NIServerSessionContainer *)self _supportedPlatform])
  {
    if (v6)
    {
      [(NIServerSessionContainer *)self _setContainerState:3];
      v13 = [v6 _internalIsMemoryAssertionRequired];
      assertionManager = self->_assertionManager;
      if (v13)
      {
        [(NIServerAssertionManager *)assertionManager acquireMemoryAssertion];
      }

      else
      {
        [(NIServerAssertionManager *)assertionManager releaseMemoryAssertion];
      }

      v17 = [v6 _internalIsPowerAssertionRequired];
      v18 = self->_assertionManager;
      if (v17)
      {
        [(NIServerAssertionManager *)v18 acquirePowerAssertion];
      }

      else
      {
        [(NIServerAssertionManager *)v18 releasePowerAssertion];
      }

      if (self->_activationError)
      {
        v19 = qword_1009F9820;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_1004A5738(buf, [(NSError *)self->_activationError code], v19);
        }

        v7[2](v7, self->_activationError);
        goto LABEL_22;
      }

      v20 = [(NIServerSessionContainer *)self uwbProvider];
      v21 = [v20 deviceCapabilities];

      v22 = [(NIServerSessionContainer *)self _displayPermissionsPromptIfNeeded];
      if (v22)
      {
        goto LABEL_20;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = off_1009894E8;
LABEL_43:
        v24 = *v23;
        v25 = objc_opt_class();
        goto LABEL_44;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = &off_100989508;
        goto LABEL_43;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = off_1009894B8;
        goto LABEL_43;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = off_1009894F0;
        goto LABEL_43;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = off_1009894C0;
        goto LABEL_43;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = off_1009894A0;
        goto LABEL_43;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = off_100989490;
        goto LABEL_43;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = off_1009894D0;
        goto LABEL_43;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = off_1009894A8;
        goto LABEL_43;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = off_1009894F8;
        goto LABEL_43;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = off_100989500;
          goto LABEL_43;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
            v22 = v25 = 0;
            if (v22)
            {
LABEL_162:
              if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
              {
                sub_1004A5780(self);
              }

LABEL_20:
              v7[2](v7, v22);
LABEL_21:

              goto LABEL_22;
            }

LABEL_44:
            specializedSession = self->_specializedSession;
            if (specializedSession)
            {
              if ([(NIServerBaseSession *)specializedSession updateConfiguration:v6])
              {
                v27 = qword_1009F9820;
                if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(buf[0]) = 0;
                  v28 = "#ses-container,runWithConfiguration can update previous configuration.";
LABEL_51:
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v28, buf, 2u);
                  goto LABEL_52;
                }

                goto LABEL_52;
              }

              v29 = [(NIServerBaseSession *)self->_specializedSession lastConfiguration];
              v30 = [v29 isEqual:v6];

              v27 = qword_1009F9820;
              if (v30)
              {
                if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(buf[0]) = 0;
                  v28 = "#ses-container,runWithConfiguration with previously run configuration.";
                  goto LABEL_51;
                }

LABEL_52:
                v31 = 0;
                goto LABEL_57;
              }

              v32 = qword_1009F9820;
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                v33 = [(NIServerBaseSession *)self->_specializedSession lastConfiguration];
                LODWORD(buf[0]) = 138412546;
                *(buf + 4) = v33;
                WORD2(buf[1]) = 2112;
                *(&buf[1] + 6) = v6;
                _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#ses-container,Existing session with different config.\nCurrent:%@\nNew:%@", buf, 0x16u);
              }
            }

            v31 = 1;
LABEL_57:
            v34 = qword_1009F9820;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              v35 = [(NIServerSessionContainer *)self signingIdentity];
              v36 = [(NIServerSessionContainer *)self pid];
              LODWORD(buf[0]) = 67109634;
              HIDWORD(buf[0]) = v31;
              LOWORD(buf[1]) = 2112;
              *(&buf[1] + 2) = v35;
              WORD1(buf[2]) = 1024;
              HIDWORD(buf[2]) = v36;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#ses-container,Creating a new session: %d, Signing identity: %@, pid: %d.", buf, 0x18u);
            }

            if (v31)
            {
              [(NIServerBaseSession *)self->_specializedSession invalidate];
              lifeCycleManager = self->_lifeCycleManager;
              self->_lifeCycleManager = 0;

              v38 = self->_specializedSession;
              self->_specializedSession = 0;

              sub_100022400(&self->_interruptionsMap.__table_.__bucket_list_.__ptr_);
              v126 = 0;
              v39 = [[v25 alloc] initWithResourcesManager:self configuration:v6 error:&v126];
              v22 = v126;
              v40 = self->_specializedSession;
              self->_specializedSession = v39;

              if (v22)
              {
                if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
                {
                  sub_1004A57EC(self);
                }

                v7[2](v7, v22);
                goto LABEL_21;
              }

              objc_initWeak(buf, self);
              v41 = self->_specializedSession;
              v124[0] = _NSConcreteStackBlock;
              v124[1] = 3221225472;
              v124[2] = sub_1001C71C4;
              v124[3] = &unk_10098AB40;
              objc_copyWeak(&v125, buf);
              [(NIServerBaseSession *)v41 setInvalidationHandler:v124];
              v42 = self->_specializedSession;
              v122[0] = _NSConcreteStackBlock;
              v122[1] = 3221225472;
              v122[2] = sub_1001C7238;
              v122[3] = &unk_10099C6D8;
              objc_copyWeak(&v123, buf);
              [(NIServerBaseSession *)v42 setBackgroundSupportUpdateHandler:v122];
              v43 = [[NIServerSessionLifeCycleManager alloc] initWithSessionIdentifier:self->_sessionIdentifier cycleRate:[(NIServerBaseSession *)self->_specializedSession nominalCycleRate] updatesQueue:self->_connectionQueue analyticsManager:self->_analyticsManager];
              v44 = self->_lifeCycleManager;
              self->_lifeCycleManager = v43;

              [(NIServerSessionLifeCycleManager *)self->_lifeCycleManager addObserver:self->_specializedSession];
              v45 = self->_specializedSession;
              v46 = voucher_copy();
              [(NIServerBaseSession *)v45 setClientVoucher:v46];

              if (v21)
              {
                v47 = [(NIServerSessionContainer *)self uwbProvider];
                [v47 requestAsyncServiceStatusUpdate];
              }

              [(NIServerSessionContainer *)self _handleSpecializedSessionBackgroundSupportUpdate:[(NIServerBaseSession *)self->_specializedSession supportsBackgroundedClients]];
              objc_destroyWeak(&v123);
              objc_destroyWeak(&v125);
              objc_destroyWeak(buf);
            }

            v48 = [(NIServerBaseSession *)self->_specializedSession requiresUWBToRun];
            v49 = [(NIServerBaseSession *)self->_specializedSession requiresNarrowbandToRun];
            if (v49 == 2 && v48 != 2)
            {
              __assert_rtn("[NIServerSessionContainer runWithConfiguration:reply:]", "NIServerSessionContainer.mm", 783, "requiresUWBToRun");
            }

            if (v48 == 2)
            {
              v50 = [(NIServerSessionContainer *)self uwbProvider];
              v51 = [v50 currentServiceState];

              v52 = v51 == 1;
              if (v49 != 2)
              {
                v52 = (v51 - 1) < 2;
              }

              if (!v52)
              {
                v55 = qword_1009F9820;
                if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
                {
                  v63 = self->_sessionIdentifier;
                  v64 = @"NO";
                  LODWORD(buf[0]) = 138413314;
                  if (v49 == 2)
                  {
                    v65 = @"YES";
                  }

                  else
                  {
                    v65 = @"NO";
                  }

                  *(buf + 4) = v63;
                  WORD2(buf[1]) = 2112;
                  if ((v51 - 1) >= 2)
                  {
                    v66 = @"NO";
                  }

                  else
                  {
                    v66 = @"YES";
                  }

                  *(&buf[1] + 6) = @"YES";
                  if (v51 == 1)
                  {
                    v64 = @"YES";
                  }

                  HIWORD(buf[2]) = 2112;
                  buf[3] = v65;
                  v128 = 2112;
                  v129 = v66;
                  v130 = 2112;
                  v131 = v64;
                  _os_log_error_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "#ses-container,Specialized session %@, requires UWB: %@, requires NB: %@, UWB available: %@, NB available: %@", buf, 0x34u);
                }

                v22 = [(NIServerSessionContainer *)self _fatalErrorForUwbServiceState:v51 cause:HIDWORD(v51)];
                if (!v22)
                {
                  if (![(NIServerSessionContainer *)self _updateInterruptionForUWBServiceState:v51 cause:HIDWORD(v51) requiresNarrowBand:v49 == 2])
                  {
                    __assert_rtn("[NIServerSessionContainer runWithConfiguration:reply:]", "NIServerSessionContainer.mm", 830, "false");
                  }

                  v7[2](v7, 0);
                  v22 = 0;
                  goto LABEL_21;
                }

                goto LABEL_87;
              }
            }

            if ([(NIServerBaseSession *)self->_specializedSession requiresSpatialInteractionBluetoothResource])
            {
              [(NIServerSessionContainer *)self _activateBluetoothResource];
            }

            if ([(NIServerBaseSession *)self->_specializedSession requiresBluetoothConnection])
            {
              buf[0] = 9;
              if (sub_100009978(&self->_interruptionsMap.__table_.__bucket_list_.__ptr_, buf))
              {
                v53 = qword_1009F9820;
                if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(buf[0]) = 0;
                  _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#ses-container,Session interrupted since BT unavailable, wait for session suspension to end", buf, 2u);
                }

                v54 = [(NIServerSessionContainer *)self remote];
                [v54 uwbSessionInterruptedWithReason:9 timestamp:sub_100005288()];
LABEL_80:

                v22 = 0;
                goto LABEL_21;
              }
            }

            v22 = [(NIServerBaseSession *)self->_specializedSession configure];
            if (v22)
            {
              if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
              {
                sub_1004A5858(self);
              }

LABEL_87:
              v7[2](v7, v22);
              goto LABEL_21;
            }

            if (!-[NIServerBaseSession supportsCameraAssistance](self->_specializedSession, "supportsCameraAssistance") && [v6 _internalIsCameraAssistanceEnabled])
            {
              if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
              {
                sub_1004A58C4(self);
              }

              v22 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
              (v7[2])(v7);
              goto LABEL_21;
            }

            if ([(NIServerBaseSession *)self->_specializedSession supportsSessionObservers])
            {
              v56 = [(NIServerSessionContainer *)self observationRegistrar];
              [v56 registerObserversForSession:self];
            }

            if ([v6 _internalIsCameraAssistanceEnabled])
            {
              v57 = +[NIServerVisionDataDistributor sharedProvider];
              [v57 registerForVisionInput:self->_specializedSession];
            }

            if (![(NIServerBaseSession *)self->_specializedSession supportsDevicePresence])
            {
LABEL_115:
              v22 = [(NIServerBaseSession *)self->_specializedSession run];
              if (v22)
              {
                if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
                {
                  sub_1004A5938(self);
                }

                v67 = +[NIServerVisionDataDistributor sharedProvider];
                [v67 unregisterForVisionInput:self->_specializedSession];

                v68 = [(NIServerSessionContainer *)self devicePresenceResource];
                v69 = [v68 internalObserver];
                [v69 stopLeechingForConsumer:self];

                v70 = [(NIServerSessionContainer *)self devicePresenceResource];
                v71 = [v70 internalObserver];
                [v71 unregisterForInternalBluetoothSamples:self];

                v7[2](v7, v22);
                goto LABEL_21;
              }

              [(NIServerSessionContainer *)self _setContainerState:4];
              v7[2](v7, 0);
              v54 = kTCCServiceNearbyInteraction;
              connection = self->_connection;
              if (connection)
              {
                [(NSXPCConnection *)connection auditToken];
              }

              else
              {
                memset(buf, 0, sizeof(buf));
              }

              v73 = PAAuthenticatedClientIdentity();
              if (v73)
              {
                v74 = [[PAApplication alloc] initWithTCCIdentity:v73];
                if (v74)
                {
                  v75 = [PATCCAccess accessWithAccessor:v74 forService:v54];
                  if (v75)
                  {
                    v76 = +[PAAccessLogger sharedInstance];
                    v77 = [v76 beginIntervalForAccess:v75];
                    paAccessInterval = self->_paAccessInterval;
                    self->_paAccessInterval = v77;

                    goto LABEL_128;
                  }
                }
              }

              else
              {
                v74 = 0;
              }

              v75 = 0;
              v76 = self->_paAccessInterval;
              self->_paAccessInterval = 0;
LABEL_128:

              if ([v6 _internalIsCameraAssistanceEnabled] && (objc_msgSend(v6, "_internalIsCameraAssistanceInClientProcess") & 1) == 0)
              {
                v79 = [NIServerVisionInternalSessionRequest alloc];
                v80 = [(NSUUID *)self->_sessionIdentifier UUIDString];
                v81 = [(NIServerVisionInternalSessionRequest *)v79 initWithIdentifier:v80 observer:self];
                visionSessionRequest = self->_visionSessionRequest;
                self->_visionSessionRequest = v81;

                [(NIServerVisionInternalSessionRequest *)self->_visionSessionRequest activate];
              }

              [(NIServerAnalyticsManager *)self->_analyticsManager sessionSuccessfullyRanWithConfig:v6 withTimestamp:sub_100005288()];

              goto LABEL_80;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v58 = v6;
              v59 = [v58 token];
              v60 = v59 == 0;

              if (!v60)
              {
                v61 = [(NIServerSessionContainer *)self devicePresenceResource];
                v62 = [v61 internalObserver];
                [v62 registerForInternalBluetoothSamples:self reportCache:0];

LABEL_114:
                goto LABEL_115;
              }
            }

            v58 = [(NIServerSessionContainer *)self devicePresenceResource];
            v61 = [v58 internalObserver];
            [v61 registerForInternalBluetoothSamples:self];
            goto LABEL_114;
          }

          v83 = +[NSUserDefaults standardUserDefaults];
          v91 = [v83 objectForKey:@"NIEnableDLTDOA"];
          v92 = v91 == 0;

          if (v92)
          {
            v93 = 0;
          }

          else
          {
            v93 = [v83 BOOLForKey:@"NIEnableDLTDOA"];
          }

          v98 = [(NIServerSessionContainer *)self _isClientOnDLTDOAInternalAllowlist];
          if (v93)
          {
            v93 = +[NIPlatformInfo isInternalBuild];
          }

          if ((v98 | v93 | [(NIServerSessionContainer *)self entitlementGranted:10]))
          {
            v87 = objc_opt_class();
            goto LABEL_181;
          }

          v99 = qword_1009F9820;
          if (os_log_type_enabled(v99, OS_LOG_TYPE_FAULT))
          {
            v119 = [(NIServerSessionContainer *)self signingIdentity];
            v120 = [(NIServerSessionContainer *)self pid];
            v121 = self->_sessionIdentifier;
            LODWORD(buf[0]) = 138412802;
            *(buf + 4) = v119;
            WORD2(buf[1]) = 1024;
            *(&buf[1] + 6) = v120;
            WORD1(buf[2]) = 2112;
            *(&buf[2] + 4) = v121;
            _os_log_fault_impl(&_mh_execute_header, v99, OS_LOG_TYPE_FAULT, "#ses-container,NI DL-TDOA configuration not allowed. Signing identity: %@, pid: %d, session identifier: %@.", buf, 0x1Cu);
          }

          v132 = NSLocalizedFailureReasonErrorKey;
          v133 = @"Not authorized to run DL-TDOA configuration.";
          v100 = [NSDictionary dictionaryWithObjects:&v133 forKeys:&v132 count:1];
          v22 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:v100];

LABEL_160:
          v25 = 0;
          goto LABEL_161;
        }

        if ([(NIServerSessionContainer *)self entitlementGranted:9])
        {
          v23 = off_1009894C8;
          goto LABEL_43;
        }

        v94 = qword_1009F9820;
        if (os_log_type_enabled(v94, OS_LOG_TYPE_FAULT))
        {
          v116 = [(NIServerSessionContainer *)self signingIdentity];
          v117 = [(NIServerSessionContainer *)self pid];
          v118 = self->_sessionIdentifier;
          LODWORD(buf[0]) = 138412802;
          *(buf + 4) = v116;
          WORD2(buf[1]) = 1024;
          *(&buf[1] + 6) = v117;
          WORD1(buf[2]) = 2112;
          *(&buf[2] + 4) = v118;
          _os_log_fault_impl(&_mh_execute_header, v94, OS_LOG_TYPE_FAULT, "#ses-container,Item localizer configuration not allowed. Signing identity: %@, pid: %d, session identifier: %@.", buf, 0x1Cu);
        }

        v134 = NSLocalizedFailureReasonErrorKey;
        v135 = @"Item localizer configuration not allowed.";
        v83 = [NSDictionary dictionaryWithObjects:&v135 forKeys:&v134 count:1];
        v89 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:v83];
LABEL_159:
        v22 = v89;
        goto LABEL_160;
      }

      if (![(NIServerSessionContainer *)self entitlementGranted:4])
      {
        v88 = qword_1009F9820;
        if (os_log_type_enabled(v88, OS_LOG_TYPE_FAULT))
        {
          v101 = [(NIServerSessionContainer *)self signingIdentity];
          v102 = [(NIServerSessionContainer *)self pid];
          v103 = self->_sessionIdentifier;
          LODWORD(buf[0]) = 138412802;
          *(buf + 4) = v101;
          WORD2(buf[1]) = 1024;
          *(&buf[1] + 6) = v102;
          WORD1(buf[2]) = 2112;
          *(&buf[2] + 4) = v103;
          _os_log_fault_impl(&_mh_execute_header, v88, OS_LOG_TYPE_FAULT, "#ses-container,Finding configuration not allowed. Signing identity: %@, pid: %d, session identifier: %@.", buf, 0x1Cu);
        }

        v136 = NSLocalizedFailureReasonErrorKey;
        v137 = @"Finding configuration not allowed.";
        v83 = [NSDictionary dictionaryWithObjects:&v137 forKeys:&v136 count:1];
        v89 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:v83];
        goto LABEL_159;
      }

      v83 = v6;
      v84 = [v83 discoveryTokenVariant];
      v25 = 0;
      if (v84 > 1)
      {
        if (v84 == 2)
        {
          v95 = [v83 requestedMeasurementQuality];
          v25 = 0;
          if (v95 > 1)
          {
            if (v95 == 2)
            {
              v90 = qword_1009F9820;
              if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
              {
                v107 = [(NIServerSessionContainer *)self signingIdentity];
                v108 = [(NIServerSessionContainer *)self pid];
                v109 = self->_sessionIdentifier;
                LODWORD(buf[0]) = 138412802;
                *(buf + 4) = v107;
                WORD2(buf[1]) = 1024;
                *(&buf[1] + 6) = v108;
                WORD1(buf[2]) = 2112;
                *(&buf[2] + 4) = v109;
                _os_log_error_impl(&_mh_execute_header, v90, OS_LOG_TYPE_ERROR, "#ses-container,Unable to create specialized session for NIFindingConfiguration with coarse measurement quality. Signing identity: %@, pid: %d, session identifier: %@.", buf, 0x1Cu);
              }
            }

            else
            {
              if (v95 != 3)
              {
                goto LABEL_175;
              }

              v96 = [v83 monitoredRegions];
              v97 = v96 == 0;

              if (!v97)
              {
                v85 = off_100989498;
                goto LABEL_138;
              }

              v90 = qword_1009F9820;
              if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
              {
                v113 = [(NIServerSessionContainer *)self signingIdentity];
                v114 = [(NIServerSessionContainer *)self pid];
                v115 = self->_sessionIdentifier;
                LODWORD(buf[0]) = 138412802;
                *(buf + 4) = v113;
                WORD2(buf[1]) = 1024;
                *(&buf[1] + 6) = v114;
                WORD1(buf[2]) = 2112;
                *(&buf[2] + 4) = v115;
                _os_log_error_impl(&_mh_execute_header, v90, OS_LOG_TYPE_ERROR, "#ses-container,Unable to create specialized session for NIFindingConfiguration with poor measurement quality but no monitored regions. Signing identity: %@, pid: %d, session identifier: %@.", buf, 0x1Cu);
              }
            }
          }

          else
          {
            if (v95)
            {
              if (v95 == 1)
              {
                v85 = off_1009894C8;
                goto LABEL_138;
              }

LABEL_175:
              v22 = 0;
              goto LABEL_161;
            }

            v90 = qword_1009F9820;
            if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
            {
              v104 = [(NIServerSessionContainer *)self signingIdentity];
              v105 = [(NIServerSessionContainer *)self pid];
              v106 = self->_sessionIdentifier;
              LODWORD(buf[0]) = 138412802;
              *(buf + 4) = v104;
              WORD2(buf[1]) = 1024;
              *(&buf[1] + 6) = v105;
              WORD1(buf[2]) = 2112;
              *(&buf[2] + 4) = v106;
              _os_log_error_impl(&_mh_execute_header, v90, OS_LOG_TYPE_ERROR, "#ses-container,Unable to create specialized session for NIFindingConfiguration with unspecified measurement quality. Signing identity: %@, pid: %d, session identifier: %@.", buf, 0x1Cu);
            }
          }

          goto LABEL_152;
        }

        if (v84 != 3)
        {
          goto LABEL_175;
        }
      }

      else if (v84)
      {
        if (v84 == 1)
        {
          v85 = off_1009894B0;
LABEL_138:
          v86 = *v85;
          v87 = objc_opt_class();
LABEL_181:
          v25 = v87;
          v22 = 0;
LABEL_161:

          if (v22)
          {
            goto LABEL_162;
          }

          goto LABEL_44;
        }

        goto LABEL_175;
      }

      v90 = qword_1009F9820;
      if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
      {
        v110 = [(NIServerSessionContainer *)self signingIdentity];
        v111 = [(NIServerSessionContainer *)self pid];
        v112 = self->_sessionIdentifier;
        LODWORD(buf[0]) = 138412802;
        *(buf + 4) = v110;
        WORD2(buf[1]) = 1024;
        *(&buf[1] + 6) = v111;
        WORD1(buf[2]) = 2112;
        *(&buf[2] + 4) = v112;
        _os_log_error_impl(&_mh_execute_header, v90, OS_LOG_TYPE_ERROR, "#ses-container,Unable to create specialized session for NIFindingConfiguration with unspecified or invalid token variant. Signing identity: %@, pid: %d, session identifier: %@.", buf, 0x1Cu);
      }

LABEL_152:

      v89 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
      goto LABEL_159;
    }

    v16 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
    v7[2](v7, v16);

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A59A4();
    }
  }

  else
  {
    v15 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5889 userInfo:0];
    v7[2](v7, v15);

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A56CC();
    }
  }

LABEL_22:
}

- (void)pause:(id)a3
{
  v4 = a3;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NIServerSessionContainer *)self signingIdentity];
    v7 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    v15 = 138412802;
    v16 = v6;
    v17 = 1024;
    v18 = v7;
    v19 = 2112;
    v20 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - pause. Signing identity: %@, pid: %d, session identifier: %@", &v15, 0x1Cu);
  }

  v9 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v9);

  if ([(NIServerSessionContainer *)self _supportedPlatform])
  {
    if (self->_specializedSession)
    {
      [(NIServerSessionContainer *)self _setContainerState:5];
      [(NIServerAssertionManager *)self->_assertionManager releasePowerAssertion];
      paAccessInterval = self->_paAccessInterval;
      if (paAccessInterval)
      {
        [(PAAccessInterval *)paAccessInterval end];
        v11 = self->_paAccessInterval;
        self->_paAccessInterval = 0;
      }

      [(NIServerAnalyticsManager *)self->_analyticsManager sessionPausedWithTimestamp:sub_100005288()];
      [(NIServerBaseSession *)self->_specializedSession setClientVoucher:0];
      v12 = [(NIServerBaseSession *)self->_specializedSession pauseWithSource:1];
      if (!v12)
      {
        [(NIServerSessionContainer *)self _setContainerState:6];
      }

      v4[2](v4, v12);
    }

    else
    {
      v14 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
      v4[2](v4, v14);

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004A59A4();
      }
    }
  }

  else
  {
    v13 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5889 userInfo:0];
    v4[2](v4, v13);

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A56CC();
    }
  }
}

- (void)generateDiscoveryToken
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NIServerSessionContainer *)self signingIdentity];
    v5 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    v8 = 138412802;
    v9 = v4;
    v10 = 1024;
    v11 = v5;
    v12 = 2112;
    v13 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - generateDiscoveryToken. Signing identity: %@, pid: %d, session identifier: %@", &v8, 0x1Cu);
  }

  v7 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v7);

  [(NIServerSessionContainer *)self _activateBluetoothResource];
}

- (void)notifySystemShutdownWithReason:(int64_t)a3 reply:(id)a4
{
  v6 = a4;
  v7 = qword_1009F9820;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(NIServerSessionContainer *)self signingIdentity];
    v9 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    *buf = 138412802;
    v24 = v8;
    v25 = 1024;
    v26 = v9;
    v27 = 2112;
    v28 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - notifySystemShutdownWithReason. Signing identity: %@, pid: %d, session identifier: %@", buf, 0x1Cu);
  }

  if ([(NIServerSessionContainer *)self entitlementGranted:6])
  {
    if ((a3 - 1) >= 2)
    {
      if (a3)
      {
        v19 = NSLocalizedDescriptionKey;
        v20 = @"Invalid reason.";
        v14 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
        a3 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v14];
      }
    }

    else
    {
      v11 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#ses-container,#shutdown STARTING non-user shutdown tasks", buf, 2u);
      }

      v12 = sub_10035D02C();
      if (sub_10035D2A4(v12))
      {
        a3 = 0;
      }

      else
      {
        v17 = NSLocalizedDescriptionKey;
        v18 = @"Shutdown operation failed.";
        v15 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
        a3 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v15];
      }

      v16 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#ses-container,#shutdown FINISHED non-user shutdown tasks", buf, 2u);
      }
    }

    v6[2](v6, a3);
  }

  else
  {
    v21 = NSLocalizedDescriptionKey;
    v22 = @"Operation disallowed.";
    a3 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v13 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:a3];
    v6[2](v6, v13);
  }
}

- (void)_provideTruthTag:(id)a3
{
  v4 = a3;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NIServerSessionContainer *)self signingIdentity];
    v7 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    v10 = 138412802;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    v14 = 2112;
    v15 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - _provideTruthTag. Signing identity: %@, pid: %d, session identifier: %@", &v10, 0x1Cu);
  }

  v9 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v9);

  sub_10005E284(v4);
}

- (void)_addObject:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_1009F9820;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(NIServerSessionContainer *)self signingIdentity];
    v10 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    v17 = 138412802;
    v18 = v9;
    v19 = 1024;
    v20 = v10;
    v21 = 2112;
    v22 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - _addObject. Signing identity: %@, pid: %d, session identifier: %@", &v17, 0x1Cu);
  }

  v12 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v12);

  if ([(NIServerSessionContainer *)self _supportedPlatform])
  {
    specializedSession = self->_specializedSession;
    if (specializedSession)
    {
      v14 = [(NIServerBaseSession *)specializedSession addObject:v6];
      v7[2](v7, v14);
    }

    else
    {
      v16 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
      v7[2](v7, v16);

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004A59A4();
      }
    }
  }

  else
  {
    v15 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5889 userInfo:0];
    v7[2](v7, v15);

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A56CC();
    }
  }
}

- (void)_removeObject:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_1009F9820;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(NIServerSessionContainer *)self signingIdentity];
    v10 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    v17 = 138412802;
    v18 = v9;
    v19 = 1024;
    v20 = v10;
    v21 = 2112;
    v22 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - _removeObject. Signing identity: %@, pid: %d, session identifier: %@", &v17, 0x1Cu);
  }

  v12 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v12);

  if ([(NIServerSessionContainer *)self _supportedPlatform])
  {
    specializedSession = self->_specializedSession;
    if (specializedSession)
    {
      v14 = [(NIServerBaseSession *)specializedSession removeObject:v6];
      v7[2](v7, v14);
    }

    else
    {
      v16 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
      v7[2](v7, v16);

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004A59A4();
      }
    }
  }

  else
  {
    v15 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5889 userInfo:0];
    v7[2](v7, v15);

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A56CC();
    }
  }
}

- (void)isPreciseRangingAllowed:(id)a3
{
  v4 = a3;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NIServerSessionContainer *)self signingIdentity];
    v7 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    v11 = 138412802;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 2112;
    v16 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - isPreciseRangingAllowed. Signing identity: %@, pid: %d, session identifier: %@", &v11, 0x1Cu);
  }

  v9 = sub_10035D02C();
  v10 = (*(*v9 + 160))(v9);
  v4[2](v4, v10, 0);
}

- (void)isExtendedDistanceMeasurementAllowed:(id)a3
{
  v4 = a3;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NIServerSessionContainer *)self signingIdentity];
    v7 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    v12 = 138412802;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    v16 = 2112;
    v17 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - isExtendedDistanceMeasurementAllowed. Signing identity: %@, pid: %d, session identifier: %@", &v12, 0x1Cu);
  }

  v9 = sub_10035D02C();
  if ((*(*v9 + 160))(v9))
  {
    v10 = sub_10035D02C();
    v11 = (*(*v10 + 168))(v10);
  }

  else
  {
    v11 = 0;
  }

  v4[2](v4, v11, 0);
}

- (void)processDCKMessage:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_1009F9820;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(NIServerSessionContainer *)self signingIdentity];
    v10 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    v27 = 138412802;
    v28 = v9;
    v29 = 1024;
    v30 = v10;
    v31 = 2112;
    v32 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - processDCKMessage. Signing identity: %@, pid: %d, session identifier: %@", &v27, 0x1Cu);
  }

  v12 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v12);

  if (self->_interruptionsMap.__table_.__size_)
  {
    v13 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10014 userInfo:0];
    v7[2](v7, 0, v13);

    v14 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A5A10(v14, v15, v16, v17, v18, v19, v20, v21);
    }

    [(NIServerSessionContainer *)self _dumpInterruptionsMapWithDebugString:@"processDCKMessage"];
  }

  else
  {
    specializedSession = self->_specializedSession;
    if (specializedSession)
    {
      v23 = [(NIServerBaseSession *)specializedSession processDCKMessage:v6];
      v25 = v24;
      (v7)[2](v7, v23, v24);
    }

    else
    {
      v26 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
      v7[2](v7, 0, v26);

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004A59A4();
      }
    }
  }
}

- (void)processBluetoothHostTimeSyncWithType:(int64_t)a3 btcClockTicks:(unint64_t)a4 eventCounter:(unint64_t)a5 reply:(id)a6
{
  v10 = a6;
  v11 = qword_1009F9820;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(NIServerSessionContainer *)self signingIdentity];
    v13 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    *buf = 138412802;
    v33 = v12;
    v34 = 1024;
    v35 = v13;
    v36 = 2112;
    v37 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - processBluetoothHostTimeSyncWithType. Signing identity: %@, pid: %d, session identifier: %@", buf, 0x1Cu);
  }

  v15 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v15);

  v16 = sub_100005288();
  specializedSession = self->_specializedSession;
  if (specializedSession)
  {
    v29 = 0;
    v18 = [(NIServerBaseSession *)specializedSession processBluetoothHostTimeSyncWithType:a3 btcClockTicks:a4 eventCounter:a5 monotonicTimeSec:&v29 response:v16];
    v19 = v29;
    v10[2](v10, v19, v18);
  }

  else
  {
    v20 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A5A84(v20, v21, v22, v23, v24, v25, v26, v27);
    }

    v30 = NSLocalizedDescriptionKey;
    v31 = @"processBluetoothHostTimeSyncWithType called before -runWithConfiguration:";
    v28 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v18 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v28];

    v10[2](v10, 0, v18);
  }
}

- (void)isRangingLimitExceeded:(id)a3
{
  v4 = a3;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NIServerSessionContainer *)self signingIdentity];
    v7 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    v17 = 138412802;
    v18 = v6;
    v19 = 1024;
    v20 = v7;
    v21 = 2112;
    v22 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - isRangingLimitExceeded. Signing identity: %@, pid: %d, session identifier: %@", &v17, 0x1Cu);
  }

  v9 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v9);

  specializedSession = self->_specializedSession;
  if (specializedSession)
  {
    v11 = [(NIServerBaseSession *)specializedSession isRangingLimitExceeded];
    v12 = v11;
    v14 = v13;
    if (v11)
    {
      v15 = [v11 BOOLValue];
    }

    else
    {
      v15 = 0;
    }

    v4[2](v4, v15, v14);
  }

  else
  {
    v16 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
    v4[2](v4, 0, v16);

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A59A4();
    }
  }
}

- (void)deleteURSKs:(id)a3
{
  v4 = a3;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NIServerSessionContainer *)self signingIdentity];
    v7 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    v13 = 138412802;
    v14 = v6;
    v15 = 1024;
    v16 = v7;
    v17 = 2112;
    v18 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - deleteURSKs. Signing identity: %@, pid: %d, session identifier: %@", &v13, 0x1Cu);
  }

  v9 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v9);

  specializedSession = self->_specializedSession;
  if (specializedSession)
  {
    v11 = [(NIServerBaseSession *)specializedSession deleteURSKs];
    v4[2](v4, v11);
  }

  else
  {
    v12 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
    v4[2](v4, v12);

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A59A4();
    }
  }
}

- (void)_setURSKTTL:(unint64_t)a3 reply:(id)a4
{
  v6 = a4;
  v7 = qword_1009F9820;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(NIServerSessionContainer *)self signingIdentity];
    v9 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    v15 = 138412802;
    v16 = v8;
    v17 = 1024;
    v18 = v9;
    v19 = 2112;
    v20 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - _setURSKTTL. Signing identity: %@, pid: %d, session identifier: %@", &v15, 0x1Cu);
  }

  v11 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v11);

  specializedSession = self->_specializedSession;
  if (specializedSession)
  {
    v13 = [(NIServerBaseSession *)specializedSession _setURSKTTL:a3];
    v6[2](v6, v13);
  }

  else
  {
    v14 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
    v6[2](v6, v14);

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A59A4();
    }
  }
}

- (void)_processCarKeyEvent:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_1009F9820;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(NIServerSessionContainer *)self signingIdentity];
    v10 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    v16 = 138412802;
    v17 = v9;
    v18 = 1024;
    v19 = v10;
    v20 = 2112;
    v21 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - _processCarKeyEvent. Signing identity: %@, pid: %d, session identifier: %@", &v16, 0x1Cu);
  }

  v12 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v12);

  specializedSession = self->_specializedSession;
  if (specializedSession)
  {
    v14 = [(NIServerBaseSession *)specializedSession _processCarKeyEvent:v6];
    v7[2](v7, v14);
  }

  else
  {
    v15 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
    v7[2](v7, v15);

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A59A4();
    }
  }
}

- (id)canHandleAcwgMsg:(id)a3
{
  v4 = a3;
  if (self->_interruptionsMap.__table_.__size_)
  {
    v5 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10014 userInfo:0];
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A5B70();
    }

    [(NIServerSessionContainer *)self _dumpInterruptionsMapWithDebugString:v4];
  }

  else if (self->_specializedSession)
  {
    v5 = 0;
  }

  else
  {
    v5 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A5BF0();
    }
  }

  return v5;
}

- (void)processAcwgM1Msg:(id)a3 withSessionTriggerReason:(int64_t)a4
{
  v6 = a3;
  v7 = qword_1009F9820;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(NIServerSessionContainer *)self signingIdentity];
    v9 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    v14 = 138412802;
    v15 = v8;
    v16 = 1024;
    v17 = v9;
    v18 = 2112;
    v19 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - processAcwgM1Msg. Signing identity: %@, pid: %d, session identifier: %@", &v14, 0x1Cu);
  }

  v11 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [(NIServerSessionContainer *)self canHandleAcwgMsg:@"processAcwgM1Msg"];
  if (v12)
  {
    v13 = [(NIServerSessionContainer *)self remote];
    [v13 didProcessAcwgM1MsgWithResponse:0 error:v12];
  }

  else
  {
    [(NIServerBaseSession *)self->_specializedSession processAcwgM1Msg:v6 withSessionTriggerReason:a4];
  }
}

- (void)processAcwgM3Msg:(id)a3
{
  v4 = a3;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NIServerSessionContainer *)self signingIdentity];
    v7 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    v12 = 138412802;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    v16 = 2112;
    v17 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - processAcwgM3Msg. Signing identity: %@, pid: %d, session identifier: %@", &v12, 0x1Cu);
  }

  v9 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [(NIServerSessionContainer *)self canHandleAcwgMsg:@"processAcwgM3Msg"];
  if (v10)
  {
    v11 = [(NIServerSessionContainer *)self remote];
    [v11 didProcessAcwgM3MsgWithResponse:0 error:v10];
  }

  else
  {
    [(NIServerBaseSession *)self->_specializedSession processAcwgM3Msg:v4];
  }
}

- (void)_processBluetoothSample:(id)a3
{
  v6 = a3;
  v4 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(NIServerSessionContainer *)self devicePresenceResource];
  [v5 consumeBluetoothSample:v6];
}

- (void)processVisionInput:(id)a3
{
  v6 = a3;
  v4 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v4);

  v5 = +[NIServerVisionDataDistributor sharedProvider];
  [v5 processVisionInput:v6];
}

- (void)arSessionDidFailWithError:(id)a3
{
  v8 = a3;
  v4 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [v8 userInfo];
  v6 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10010 userInfo:v5];

  [(NIServerBaseSession *)self->_specializedSession invalidate];
  v7 = [(NIServerSessionContainer *)self remote];
  [v7 uwbSessionDidFailWithError:v6];
}

- (void)arSessionWasInterrupted
{
  v3 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v3);

  v4 = sub_100005288();

  [(NIServerSessionContainer *)self interruptSessionWithReason:6 monotonicTimeSeconds:v4];
}

- (void)arSessionInterruptionEnded
{
  v3 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v3);

  v4 = sub_100005288();

  [(NIServerSessionContainer *)self interruptionReasonEnded:6 monotonicTimeSeconds:v4];
}

- (void)arSessionWillRunWithInvalidConfiguration
{
  v4 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5883 userInfo:0];
  [(NIServerBaseSession *)self->_specializedSession invalidate];
  v3 = [(NIServerSessionContainer *)self remote];
  [v3 uwbSessionDidFailWithError:v4];
}

- (void)setLocalDeviceCanInteract:(BOOL)a3 withDiscoveryTokens:(id)a4 reply:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  v10 = qword_1009F9820;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(NIServerSessionContainer *)self signingIdentity];
    v12 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    *buf = 138412802;
    *&buf[4] = v11;
    *&buf[12] = 1024;
    *&buf[14] = v12;
    *&buf[18] = 2112;
    *&buf[20] = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - setLocalDeviceCanInteract:withDiscoveryTokens:. Signing identity: %@, pid: %d, session identifier: %@", buf, 0x1Cu);
  }

  v14 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v15 = "NO";
    if (v6)
    {
      v15 = "YES";
    }

    *buf = 136315138;
    *&buf[4] = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#ses-container,canInteract: %s", buf, 0xCu);
  }

  v16 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v16);

  LOBYTE(v16) = [(NIServerSessionContainer *)self entitlementGranted:3];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = sub_1001CA678;
  v32 = sub_1001CA688;
  v33 = objc_opt_new();
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_1001CA690;
  v26 = &unk_10099C700;
  v30 = v16;
  v17 = v9;
  v27 = self;
  v28 = v17;
  v29 = buf;
  [v8 enumerateObjectsUsingBlock:&v23];
  if ([NIPlatformInfo isInternalBuild:v23])
  {
    sub_100347330(*(*&buf[8] + 40));
  }

  if ([*(*&buf[8] + 40) count])
  {
    +[NIServerFindableDeviceProxySessionManager sharedInstance];
    if (v6)
      v18 = {;
      v19 = *(*&buf[8] + 40);
      v20 = [(NIServerSessionContainer *)self processNameBestGuess];
      [v18 startBeingFindableWithDiscoveryTokens:v19 tokenGroup:v20];
    }

    else
      v18 = {;
      v22 = *(*&buf[8] + 40);
      v20 = [(NIServerSessionContainer *)self processNameBestGuess];
      [v18 stopBeingFindableWithDiscoveryTokens:v22 tokenGroup:v20];
    }
    v21 = ;
  }

  else
  {
    v21 = 0;
  }

  (*(v17 + 2))(v17, v21);

  _Block_object_dispose(buf, 8);
}

- (void)setLocalDeviceInteractableDiscoveryTokens:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_1009F9820;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(NIServerSessionContainer *)self signingIdentity];
    v10 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    *buf = 138412802;
    *&buf[4] = v9;
    *&buf[12] = 1024;
    *&buf[14] = v10;
    *&buf[18] = 2112;
    *&buf[20] = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - setLocalDeviceInteractableDiscoveryTokens. Signing identity: %@, pid: %d, session identifier: %@", buf, 0x1Cu);
  }

  v12 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v12);

  LOBYTE(v12) = [(NIServerSessionContainer *)self entitlementGranted:3];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = sub_1001CA678;
  v27 = sub_1001CA688;
  v28 = objc_opt_new();
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_1001CAB70;
  v21 = &unk_10099C700;
  v25 = v12;
  v13 = v7;
  v22 = self;
  v23 = v13;
  v24 = buf;
  [v6 enumerateObjectsUsingBlock:&v18];
  if ([NIPlatformInfo isInternalBuild:v18])
  {
    sub_100347330(*(*&buf[8] + 40));
  }

  v14 = +[NIServerFindableDeviceProxySessionManager sharedInstance];
  v15 = *(*&buf[8] + 40);
  v16 = [(NIServerSessionContainer *)self processNameBestGuess];
  v17 = [v14 setFindableDiscoveryTokens:v15 tokenGroup:v16];

  (*(v13 + 2))(v13, v17);
  _Block_object_dispose(buf, 8);
}

- (void)setLocalDeviceDebugParameters:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_1009F9820;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(NIServerSessionContainer *)self signingIdentity];
    v10 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    *buf = 138412802;
    v20 = v9;
    v21 = 1024;
    v22 = v10;
    v23 = 2112;
    v24 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - setLocalDeviceDebugParameters:reply:. Signing identity: %@, pid: %d, session identifier: %@", buf, 0x1Cu);
  }

  v12 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v12);

  if ([(NIServerSessionContainer *)self entitlementGranted:3])
  {
    v13 = +[NIServerFindableDeviceProxySessionManager sharedInstance];
    v14 = [v13 setLocalDeviceDebugParameters:v6];

    v7[2](v7, v14);
  }

  else
  {
    v17 = NSLocalizedFailureReasonErrorKey;
    v18 = @"Not allowed to configure findable local device.";
    v15 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v16 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v15];
    v7[2](v7, v16);

    v14 = qword_1009F9820;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [(NIServerSessionContainer *)self signingIdentity];
      objc_claimAutoreleasedReturnValue();
      [(NIServerSessionContainer *)self pid];
      sub_1004A5C70();
    }
  }
}

- (void)getInteractableDiscoveryTokens:(id)a3
{
  v4 = a3;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NIServerSessionContainer *)self signingIdentity];
    v7 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    v14 = 138412802;
    v15 = v6;
    v16 = 1024;
    v17 = v7;
    v18 = 2112;
    v19 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - getInteractableDiscoveryTokens. Signing identity: %@, pid: %d, session identifier: %@", &v14, 0x1Cu);
  }

  v9 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v9);

  v10 = objc_opt_new();
  if ([(NIServerSessionContainer *)self entitlementGranted:3])
  {
    v11 = +[NIServerFindableDeviceProxySessionManager sharedInstance];
    v12 = [(NIServerSessionContainer *)self processNameBestGuess];
    v13 = [v11 findableDiscoveryTokensForGroup:v12];

    [v10 addObjectsFromArray:v13];
  }

  v4[2](v4, v10, 0);
}

- (void)getActivelyInteractingDiscoveryTokens:(id)a3
{
  v4 = a3;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NIServerSessionContainer *)self signingIdentity];
    v7 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    v14 = 138412802;
    v15 = v6;
    v16 = 1024;
    v17 = v7;
    v18 = 2112;
    v19 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - getActivelyInteractingDiscoveryTokens. Signing identity: %@, pid: %d, session identifier: %@", &v14, 0x1Cu);
  }

  v9 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v9);

  v10 = objc_opt_new();
  if ([(NIServerSessionContainer *)self entitlementGranted:3])
  {
    v11 = +[NIServerFindableDeviceProxySessionManager sharedInstance];
    v12 = [(NIServerSessionContainer *)self processNameBestGuess];
    v13 = [v11 interactingFinderDiscoveryTokensForGroup:v12];

    [v10 addObjectsFromArray:v13];
  }

  v4[2](v4, v10, 0);
}

- (void)getLocalDevicePrintableState:(id)a3
{
  v4 = a3;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NIServerSessionContainer *)self signingIdentity];
    v7 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    *buf = 138412802;
    v19 = v6;
    v20 = 1024;
    v21 = v7;
    v22 = 2112;
    v23 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - getLocalDevicePrintableState. Signing identity: %@, pid: %d, session identifier: %@", buf, 0x1Cu);
  }

  v9 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v9);

  if (![(NIServerSessionContainer *)self entitlementGranted:0])
  {
    v16 = NSLocalizedFailureReasonErrorKey;
    v17 = @"Not allowed to get local device state.";
    v10 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v11 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v10];

    v4[2](v4, 0, v11);
  }

  objc_initWeak(buf, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001CB6B8;
  v13[3] = &unk_10099C728;
  objc_copyWeak(&v15, buf);
  v14 = v4;
  v12 = v4;
  dispatch_async(&_dispatch_main_q, v13);

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (void)_processFindingEvent:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_1009F9820;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v13 = [(NIServerSessionContainer *)self signingIdentity];
    v14 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    v16 = 138412802;
    v17 = v13;
    v18 = 1024;
    v19 = v14;
    v20 = 2112;
    v21 = sessionIdentifier;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "#ses-container,XPC Command - _processFindingEvent. Signing identity: %@, pid: %d, session identifier: %@", &v16, 0x1Cu);
  }

  v9 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v9);

  specializedSession = self->_specializedSession;
  if (specializedSession)
  {
    v11 = [(NIServerBaseSession *)specializedSession _processFindingEvent:v6];
    v7[2](v7, v11);
  }

  else
  {
    v12 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
    v7[2](v7, v12);

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A59A4();
    }
  }
}

- (void)_processSystemEvent:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_1009F9820;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v13 = [(NIServerSessionContainer *)self signingIdentity];
    v14 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    v16 = 138412802;
    v17 = v13;
    v18 = 1024;
    v19 = v14;
    v20 = 2112;
    v21 = sessionIdentifier;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "#ses-container,XPC Command - _processSystemEvent. Signing identity: %@, pid: %d, session identifier: %@", &v16, 0x1Cu);
  }

  v9 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v9);

  specializedSession = self->_specializedSession;
  if (specializedSession)
  {
    v11 = [(NIServerBaseSession *)specializedSession _processSystemEvent:v6];
    v7[2](v7, v11);
  }

  else
  {
    v12 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
    v7[2](v7, v12);

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A59A4();
    }
  }
}

- (void)_activateBluetoothResource
{
  if (!self->_bleProvider)
  {
    if (!self->_bleProviderSessionIRK)
    {
      v3 = NSRandomData();
      bleProviderSessionIRK = self->_bleProviderSessionIRK;
      self->_bleProviderSessionIRK = v3;
    }

    if (!self->_bleProviderSessionIdentifier)
    {
      v5 = NSRandomData();
      bleProviderSessionIdentifier = self->_bleProviderSessionIdentifier;
      self->_bleProviderSessionIdentifier = v5;
    }

    v7 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-container,Activating Bluetooth resource", v20, 2u);
    }

    v8 = objc_opt_new();
    bleProvider = self->_bleProvider;
    self->_bleProvider = v8;

    v10 = [(NIServerSessionContainer *)self uwbProvider];
    v11 = [v10 deviceCapabilities];

    v12 = [(NIServerSessionContainer *)self wifiProvider];
    if ([v12 deviceCapabilities])
    {
      v13 = [(NIServerSessionContainer *)self entitlementGranted:2];
    }

    else
    {
      v13 = 0;
    }

    v14 = self->_bleProvider;
    v15 = [(NIServerSessionContainer *)self connectionQueue];
    v16 = self->_bleProviderSessionIRK;
    v17 = self->_bleProviderSessionIdentifier;
    v18 = [(NIServerSessionContainer *)self _getDiscoveryTokenFlags];
    v19 = 256;
    if (!v13)
    {
      v19 = 0;
    }

    [(PRBLEDiscoverySession *)v14 activateWithDelegate:self delegateQueue:v15 sessionIRK:v16 sessionIdentifier:v17 controlFlags:v19 | v11 & 1 tokenFlags:v18];
  }
}

- (unsigned)_getDiscoveryTokenFlags
{
  v3 = [(NIServerSessionContainer *)self longRangeEnabled];
  if ([(NIServerSessionContainer *)self requiresBiasCorrection])
  {
    v3 |= 2u;
  }

  if ([(NIServerSessionContainer *)self requiresLargeRegions])
  {
    return v3 | 4;
  }

  else
  {
    return v3;
  }
}

- (id)_augmentDiscoveryTokenWithNbUwbAcquisitionChannel:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NIServerSessionContainer *)self discoveryToken];
    v6 = [v5 getIRK];
    v7 = [NSNumber numberWithInt:sub_100347044(5u, 0xBu, v6)];

    v11 = &off_1009C3E60;
    v12 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v9 = sub_10030079C(v8, v4);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_augmentDiscoveryTokenWithMmsNumFragments:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = sub_10035D02C();
    v5 = *(v4 + 406);
    v6 = *(v4 + 407);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = [NSNumber numberWithInt:sub_100329F8C(v5)];
    if (v6)
    {
      sub_10000AD84(v6);
    }

    v11 = &off_1009C3E78;
    v12 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v9 = sub_10030079C(v8, v3);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_augmentDiscoveryTokenWithDeviceCapabilities:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NIServerSessionContainer *)self _getCapabilities];
    v6 = [v5 objectForKey:@"UWBSupportedPlatform"];
    v7 = [v6 BOOLValue];

    v8 = [v5 objectForKey:@"WifiSupportedPlatform"];
    v9 = [v8 BOOLValue];

    v10 = [v5 objectForKey:@"UWBSupportedPlatformPDOA"];
    v11 = [v10 BOOLValue];

    v12 = [v5 objectForKey:@"UWBSupportedPlatformSyntheticAperture"];
    v13 = [v12 BOOLValue];

    v14 = [v5 objectForKey:@"UWBSupportedPlatformExtendedDistance"];
    v15 = [v14 BOOLValue];

    v16 = [[NIDeviceCapabilities alloc] initWithFineRangingSupport:v7 coarseRangingSupport:v9 aoaSupport:v11 extendedDistanceMeasurementSupport:v15 syntheticApertureSupport:v13];
    v21 = &off_1009C3E90;
    v17 = [NSNumber numberWithUnsignedInt:[(NIDeviceCapabilities *)v16 toBitmap]];
    v22 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];

    v19 = sub_10030079C(v18, v4);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)_handleSpecializedSessionInvalidation:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A5CB4();
  }

  objc_initWeak(&location, self);
  v5 = [(NIServerSessionContainer *)self connectionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CC894;
  block[3] = &unk_10098B940;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_handleSpecializedSessionBackgroundSupportUpdate:(BOOL)a3
{
  v3 = a3;
  v5 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v5);

  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#ses-container,Specialized session updated background support: %d", &buf, 8u);
  }

  if (v3)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  self->_specializedSessionBackgroundSupport = v7;
  objc_initWeak(&buf, self);
  v8 = [(NIServerSessionContainer *)self connectionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CCAA0;
  block[3] = &unk_10098AB18;
  objc_copyWeak(&v10, &buf);
  dispatch_async(v8, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&buf);
}

- (void)_updateClientAppVisibilityInterruption
{
  v3 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(NIServerSessionContainer *)self _isBackgroundOperationAllowed];
  *v17 = 0;
  v5 = sub_100009978(&self->_interruptionsMap.__table_.__bucket_list_.__ptr_, v17);
  v6 = (self->_latestAppState == 4) & (v4 ^ 1);
  v7 = qword_1009F9820;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(NIServerSessionContainer *)self signingIdentity];
    v9 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    v11 = sub_100208CC4(self->_latestAppState);
    v12 = v11;
    v13 = "N";
    *v17 = 138413826;
    *&v17[4] = v8;
    v18 = 1024;
    if (v6)
    {
      v14 = "Y";
    }

    else
    {
      v14 = "N";
    }

    v19 = v9;
    if (v5)
    {
      v15 = "Y";
    }

    else
    {
      v15 = "N";
    }

    v20 = 2112;
    if (v4)
    {
      v13 = "Y";
    }

    v21 = sessionIdentifier;
    v22 = 2080;
    v23 = v15;
    v24 = 2080;
    v25 = v14;
    v26 = 2112;
    v27 = v11;
    v28 = 2080;
    v29 = v13;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-container,Update client visibility interruption. Signing identity: %@, pid: %d, session identifier: %@, already interrupted: %s, should be interrupted now: %s, app state: %@. BG allowed: %s", v17, 0x44u);
  }

  if ((v5 != 0) != v6)
  {
    v16 = sub_100005288();
    if (v6)
    {
      [(NIServerSessionContainer *)self interruptSessionWithReason:0 monotonicTimeSeconds:v16];
    }

    else
    {
      [(NIServerSessionContainer *)self interruptionReasonEnded:0 monotonicTimeSeconds:v16];
    }
  }
}

- (void)setAppStateMonitor:(id)a3
{
  v5 = a3;
  v6 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v6);

  objc_storeStrong(&self->_appStateMonitor, a3);
  [(PRAppStateMonitor *)self->_appStateMonitor addObserver:self];
  self->_latestAppState = [(PRAppStateMonitor *)self->_appStateMonitor currentAppState];
  if ([(PRAppStateMonitor *)self->_appStateMonitor isRunningBoardApp])
  {
    connection = self->_connection;
    if (connection)
    {
      [(NSXPCConnection *)connection auditToken];
    }

    else
    {
      memset(buf, 0, 32);
    }

    v19 = 0;
    v11 = [LSBundleRecord bundleRecordForAuditToken:buf error:&v19];
    v12 = v19;
    v10 = v12;
    if (!v11 || v12)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004A5D1C(self);
      }

      bundleIdentifier = self->_bundleIdentifier;
      self->_bundleIdentifier = 0;
    }

    else
    {
      v13 = [v11 bundleIdentifier];
      v14 = self->_bundleIdentifier;
      self->_bundleIdentifier = v13;

      v15 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        pid = self->_pid;
        v17 = self->_bundleIdentifier;
        *buf = 67109378;
        *&buf[4] = pid;
        *&buf[8] = 2112;
        *&buf[10] = v17;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#ses-container,Pid %d bundle identifier is %@", buf, 0x12u);
      }
    }
  }

  else
  {
    v8 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_pid;
      *buf = 67109120;
      *&buf[4] = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ses-container,Pid %d is not a RunningBoard app. Bundle identifier will be nil", buf, 8u);
    }

    v10 = self->_bundleIdentifier;
    self->_bundleIdentifier = 0;
  }

  [(NIServerSessionContainer *)self _populateClientEntitlements];
}

- (BOOL)_isBackgroundOperationAllowed
{
  v3 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v3);

  if ([(PRAppStateMonitor *)self->_appStateMonitor isUIBackgroundModeEnabled]&& self->_specializedSessionBackgroundSupport != 2)
  {
    v5 = qword_1009F9820;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(PRAppStateMonitor *)self->_appStateMonitor monitoredProcessName];
      specializedSessionBackgroundSupport = self->_specializedSessionBackgroundSupport;
      v13 = 138412546;
      v14 = v10;
      v15 = 1024;
      v16 = specializedSessionBackgroundSupport;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-container,BG operation allowed for process %@. Process enables UIBackgroundMode. Specialized session support: %d", &v13, 0x12u);
    }

    goto LABEL_11;
  }

  v4 = [(NIServerSessionContainer *)self entitlementGranted:1];
  v5 = qword_1009F9820;
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = [(PRAppStateMonitor *)self->_appStateMonitor monitoredProcessName];
      v13 = 138412290;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-container,BG operation allowed for process %@. Process is granted entitlement", &v13, 0xCu);
    }

LABEL_11:
    v9 = 1;
    goto LABEL_12;
  }

  if (v6)
  {
    v8 = [(PRAppStateMonitor *)self->_appStateMonitor monitoredProcessName];
    v13 = 138412290;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-container,BG operation NOT allowed for process %@", &v13, 0xCu);
  }

  v9 = 0;
LABEL_12:

  return v9;
}

- (void)_acquireClientMessageHandlingRuntimeAssertionIfNecessary
{
  v3 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v3);

  if (![(PRAppStateMonitor *)self->_appStateMonitor isDaemon]&& [(PRAppStateMonitor *)self->_appStateMonitor isRunningBoardApp])
  {
    assertionManager = self->_assertionManager;

    [(NIServerAssertionManager *)assertionManager acquireClientMessageHandlingRuntimeAssertion];
  }
}

- (BOOL)_isClientInternalTool
{
  if (!self->_appStateMonitor)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"NIServerSessionContainer.mm" lineNumber:1858 description:@"AppStateMonitor is required for to check if client is internal tool."];
  }

  v3 = [(NIServerSessionContainer *)self processNameBestGuess];
  if ([&off_1009C3BA8 containsObject:v3])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(PRAppStateMonitor *)self->_appStateMonitor monitoredProcessName];
    v4 = [&off_1009C3BC0 containsObject:v5];
  }

  return v4;
}

- (BOOL)_isClientOnGeneralEntitlementAllowlist
{
  if (!self->_appStateMonitor)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"NIServerSessionContainer.mm" lineNumber:1877 description:@"AppStateMonitor is required for to check if client is on general entitlement allowlist."];
  }

  v3 = [(NIServerSessionContainer *)self _isClientInternalTool];
  v4 = +[NIPlatformInfo isInternalBuild];
  [@"com.apple.nearbyd" UTF8String];
  v5 = os_variant_allows_internal_security_policies();
  if ([(PRAppStateMonitor *)self->_appStateMonitor isDaemon])
  {
    return 1;
  }

  v6 = 1;
  if (![(PRAppStateMonitor *)self->_appStateMonitor isXPCService]&& (v3 & (v4 | v5) & 1) == 0)
  {
    v7 = [(NIServerSessionContainer *)self processNameBestGuess];
    v6 = [&off_1009C3BD8 containsObject:v7];
  }

  return v6;
}

- (BOOL)_isClientOnDLTDOAInternalAllowlist
{
  if (!self->_appStateMonitor)
  {
    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"NIServerSessionContainer.mm" lineNumber:1911 description:@"AppStateMonitor is required for to check if client is on Indoor Position Internal allowlist."];
  }

  if (![(NIServerSessionContainer *)self _isClientInternalTool])
  {
    return 0;
  }

  v3 = [(NIServerSessionContainer *)self processNameBestGuess];
  v4 = [&off_1009C3BF0 containsObject:v3];

  return v4;
}

- (BOOL)_isClientOnSystemShutdownAllowlist
{
  if (!self->_appStateMonitor)
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"NIServerSessionContainer.mm" lineNumber:1925 description:@"AppStateMonitor is required for to check if client is on system shutdown entitlement allowlist."];
  }

  v3 = [(NIServerSessionContainer *)self _isClientInternalTool];
  v4 = +[NIPlatformInfo isInternalBuild];
  [@"com.apple.nearbyd" UTF8String];
  v5 = os_variant_allows_internal_security_policies();
  v6 = [(PRAppStateMonitor *)self->_appStateMonitor launchdJobLabel];
  if ([v6 isEqualToString:@"com.apple.SpringBoard"])
  {
    v7 = 1;
  }

  else
  {
    v8 = [(PRAppStateMonitor *)self->_appStateMonitor launchdJobLabel];
    if ([v8 isEqualToString:@"com.apple.Carousel"])
    {
      v7 = 1;
    }

    else
    {
      v7 = v3 & (v4 | v5);
    }
  }

  return v7;
}

- (void)_populateClientEntitlements
{
  v4 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v4);

  if (!self->_appStateMonitor)
  {
    v26 = +[NSAssertionHandler currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"NIServerSessionContainer.mm" lineNumber:1942 description:@"AppStateMonitor is required for populating client entitlements."];
  }

  v5 = [(NIServerSessionContainer *)self _isClientInternalTool];
  v6 = [(NIServerSessionContainer *)self _isClientOnGeneralEntitlementAllowlist];
  v27 = [(NIServerSessionContainer *)self _isClientOnSystemShutdownAllowlist];
  v7 = qword_1009F9820;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(NIServerSessionContainer *)self processNameBestGuess];
    bundleIdentifier = self->_bundleIdentifier;
    v10 = [(PRAppStateMonitor *)self->_appStateMonitor launchdJobLabel];
    v11 = [(PRAppStateMonitor *)self->_appStateMonitor monitoredProcessName];
    v12 = [(NIServerSessionContainer *)self signingIdentity];
    *buf = 138414082;
    v29 = v8;
    v30 = 2112;
    v31 = bundleIdentifier;
    v32 = 2112;
    *v33 = v10;
    *&v33[8] = 2112;
    *&v33[10] = v11;
    v34 = 2112;
    v35 = v12;
    v36 = 1024;
    v37 = v5;
    v38 = 1024;
    v39 = v6;
    v40 = 1024;
    v41 = v27;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-container,Populating entitlements for client %@ [bundle ID: %@, job label: %@, monitored name: %@, signing identity: %@, internal flags %d|%d|%d]", buf, 0x46u);
  }

  os_unfair_lock_lock(&self->_entitlementsLock);
  v13 = 0;
  *&self->_clientEntitlementsArray.__elems_[7] = 0;
  *self->_clientEntitlementsArray.__elems_ = 0;
  do
  {
    v14 = off_10099C990[v13];
    v15 = [(NSXPCConnection *)self->_connection valueForEntitlement:off_10099C938[v13]];
    if (v15)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        self->_clientEntitlementsArray.__elems_[v13] = [v15 BOOLValue];
      }
    }

    v16 = v6;
    if (v13 >= 3)
    {
      v16 = v6;
      if (v13 != 5)
      {
        if (v13 != 6)
        {
          goto LABEL_14;
        }

        v16 = v27;
      }
    }

    self->_clientEntitlementsArray.__elems_[v13] &= v16;
LABEL_14:
    if (+[NIPlatformInfo isInternalBuild])
    {
      v17 = [(NIServerSessionContainer *)self signingIdentity];
      if ([v17 isEqualToString:@"com.apple.dt.xctest.tool"])
      {

LABEL_18:
        self->_clientEntitlementsArray.__elems_[v13] = 1;
        goto LABEL_19;
      }

      v18 = [(NIServerSessionContainer *)self signingIdentity];
      v19 = [v18 isEqualToString:@"com.apple.xctest"];

      if (v19)
      {
        goto LABEL_18;
      }
    }

LABEL_19:
    if (+[NIPlatformInfo isInternalBuild])
    {
      v20 = +[NSUserDefaults standardUserDefaults];
      v21 = [v20 BOOLForKey:@"NIPrototypingBypassEntitlements"];

      if (v21)
      {
        v22 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#ses-container,Prototyping mode on: enable entitlement bypass", buf, 2u);
        }

        self->_clientEntitlementsArray.__elems_[v13] = 1;
      }
    }

    v23 = qword_1009F9820;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [(NIServerSessionContainer *)self processNameBestGuess];
      v25 = self->_clientEntitlementsArray.__elems_[v13];
      *buf = 138413058;
      v29 = v24;
      v30 = 2112;
      v31 = v14;
      v32 = 1024;
      *v33 = v25;
      *&v33[4] = 2112;
      *&v33[6] = v15;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#ses-container,Client: %@, entitlement: %@ | got it: %d, requested it: %@", buf, 0x26u);
    }

    ++v13;
  }

  while (v13 != 11);
  os_unfair_lock_unlock(&self->_entitlementsLock);
}

- (NSString)processNameBestGuess
{
  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier)
  {
    v3 = bundleIdentifier;
  }

  else
  {
    v5 = [(PRAppStateMonitor *)self->_appStateMonitor launchdJobLabel];

    appStateMonitor = self->_appStateMonitor;
    if (v5)
    {
      v3 = [(PRAppStateMonitor *)appStateMonitor launchdJobLabel];
    }

    else
    {
      v7 = [(PRAppStateMonitor *)appStateMonitor monitoredProcessName];

      if (v7)
      {
        v3 = [(PRAppStateMonitor *)self->_appStateMonitor monitoredProcessName];
      }

      else
      {
        v3 = 0;
      }
    }
  }

  return v3;
}

- (id)_displayPermissionsPromptIfNeeded
{
  v3 = [(NIServerSessionContainer *)self entitlementGranted:0];
  if (v3)
  {
    v4 = 3;
  }

  else
  {
    v4 = [(NIPrivacyAuthorizationManager *)self->_authManager authorizationStatusForSession:self promptUserIfUndetermined:1];
  }

  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_10003C870(v4);
    sessionIdentifier = self->_sessionIdentifier;
    v8 = [(NIServerSessionContainer *)self signingIdentity];
    v9 = v8;
    v10 = @"NO";
    *v14 = 138478851;
    *&v14[4] = v6;
    *&v14[12] = 2113;
    if (v3)
    {
      v10 = @"YES";
    }

    *&v14[14] = sessionIdentifier;
    v15 = 2113;
    v16 = v8;
    v17 = 2113;
    v18 = @"Privileged?";
    v19 = 2113;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-container,[Session] User authorization status: %{private}@. Session: %{private}@. Signing identity: %{private}@. %{private}@: %{private}@", v14, 0x34u);
  }

  switch(v4)
  {
    case 0u:
      goto LABEL_11;
    case 4u:
      v11 = -5884;
      goto LABEL_13;
    case 2u:
LABEL_11:
      v11 = -5887;
LABEL_13:
      v12 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:v11 userInfo:0, *v14];
      goto LABEL_15;
  }

  v12 = 0;
LABEL_15:

  return v12;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)clientAuditToken
{
  result = self->_connection;
  if (result)
  {
    return [($115C4C562B26FF47E01F9F4EA65B5887 *)result auditToken];
  }

  *retstr->var0 = 0u;
  *&retstr->var0[4] = 0u;
  return result;
}

- (id)uwbResource
{
  v3 = [(NIServerSessionContainer *)self uwbProvider];

  if (!v3)
  {
    sub_1004A5D94();
  }

  return [(NIServerSessionContainer *)self uwbProvider];
}

- (id)wifiResource
{
  v3 = [(NIServerSessionContainer *)self wifiProvider];

  if (!v3)
  {
    sub_1004A5E2C();
  }

  return [(NIServerSessionContainer *)self wifiProvider];
}

- (id)discoveryToken
{
  if (self->_localDiscoveryToken)
  {
    v3 = [[NIDiscoveryToken alloc] initWithBytes:self->_localDiscoveryToken];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)remote
{
  [(NIServerSessionContainer *)self _acquireClientMessageHandlingRuntimeAssertionIfNecessary];
  client = self->_client;

  return client;
}

- (shared_ptr<rose::protobuf::Logger>)protobufLogger
{
  v3 = v2;
  v4 = sub_10035D02C();
  v6 = *(v4 + 21);
  *v3 = *(v4 + 20);
  v3[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = v5;
  result.__ptr_ = v4;
  return result;
}

- (BOOL)longRangeEnabled
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"DisableLongRangeOverride"];

  if (v3)
  {
    v4 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ses-container,* disable ND through default writes.", v6, 2u);
    }
  }

  return v3 ^ 1;
}

- (BOOL)entitlementGranted:(int)a3
{
  os_unfair_lock_lock(&self->_entitlementsLock);
  if (a3 >= 0xB)
  {
    v6 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004A5EC4(a3, v6);
    }

    v5 = 0;
  }

  else
  {
    v5 = self->_clientEntitlementsArray.__elems_[a3];
  }

  os_unfair_lock_unlock(&self->_entitlementsLock);
  return v5;
}

- (BOOL)requiresBiasCorrection
{
  v2 = *(sub_1000054A8() + 144);

  return sub_10041C8F0(v2);
}

- (BOOL)requiresLargeRegions
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"RegionMonitorRequiresLargeRegionsOverride"];

  if (v3)
  {
    v4 = [v2 BOOLForKey:@"RegionMonitorRequiresLargeRegionsOverride"];
  }

  else
  {
    v5 = sub_1000054A8();
    v4 = sub_10041C8F0(v5[144]);
  }

  v6 = v4;

  return v6;
}

- (shared_ptr<rose::PowerBudgetProvider>)powerBudgetProvider
{
  v3 = v2;
  v4 = sub_10035D02C();
  v6 = *(v4 + 23);
  *v3 = *(v4 + 22);
  v3[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = v5;
  result.__ptr_ = v4;
  return result;
}

- (id)printableState
{
  dispatch_assert_queue_V2(self->_connectionQueue);
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_1001CA678;
  v34 = sub_1001CA688;
  v35 = objc_opt_new();
  v3 = sub_100005288();
  os_unfair_lock_lock(&self->_entitlementsLock);
  v4 = 0;
  v5 = 0;
  do
  {
    if (self->_clientEntitlementsArray.__elems_[v4])
    {
      v6 = (1 << v4);
    }

    else
    {
      v6 = 0;
    }

    v5 |= v6;
    ++v4;
  }

  while (v4 != 11);
  os_unfair_lock_unlock(&self->_entitlementsLock);
  v7 = v31[5];
  sessionIdentifier = self->_sessionIdentifier;
  v9 = [(NIServerSessionContainer *)self discoveryToken];
  v10 = [v9 descriptionInternal];
  v11 = [NSString stringWithFormat:@"Identifier: %@. Token: %@. Entitlements: 0x%llX%s. Assertions: %@", sessionIdentifier, v10, v5, "", self->_assertionManager];
  [v7 addObject:v11];

  v12 = v31[5];
  LOBYTE(v7) = self->_latestSessionContainerState;
  initTime = self->_initTime;
  timeOfLatestContainerState = self->_timeOfLatestContainerState;
  [(NIServerSessionContainer *)self _interruptionsMapAsString];
  v15 = sub_1001CE4C4(v7);
  if (v29 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v17 = [NSString stringWithFormat:@"State: %s. Age: total %.2f s, in-state %.2f s. Interruptions: %s", v15, v3 - initTime, v3 - timeOfLatestContainerState, p_p];
  [v12 addObject:v17];

  if (v29 < 0)
  {
    operator delete(__p);
  }

  v18 = v31[5];
  v19 = [(NIServerBaseSession *)self->_specializedSession lastConfiguration];
  v20 = [NSString stringWithFormat:@"Configuration: %@", v19];
  [v18 addObject:v20];

  v21 = v31[5];
  specializedSession = self->_specializedSession;
  v23 = [NSString stringWithFormat:@"Specialized session: %@", objc_opt_class()];
  [v21 addObject:v23];

  v24 = [(NIServerBaseSession *)self->_specializedSession printableState];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1001CE4F4;
  v27[3] = &unk_10099C778;
  v27[4] = &v30;
  [v24 enumerateObjectsUsingBlock:v27];
  v25 = v31[5];

  _Block_object_dispose(&v30, 8);

  return v25;
}

- (void)didFailWithErrorCode:(int64_t)a3 errorString:(const void *)a4
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004A5F3C();
  }
}

- (void)didReceiveNewSolution:(const void *)a3
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004A5F70();
  }
}

- (void)didReceiveSessionStartNotification:(const void *)a3
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004A5FA4();
  }
}

- (void)didReceiveRemoteData:(const void *)a3
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004A5FD8();
  }
}

- (void)serviceRequestDidUpdateStatus:(ServiceRequestStatusUpdate)a3
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004A600C();
  }
}

- (void)rangingServiceDidUpdateState:(int)a3 cause:(int)a4
{
  v7 = [(NIServerSessionContainer *)self uwbProvider];
  v8 = [v7 getQueue];
  dispatch_assert_queue_V2(v8);

  objc_initWeak(&location, self);
  v9 = [(NIServerSessionContainer *)self connectionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CE7EC;
  block[3] = &unk_10098ABD8;
  objc_copyWeak(&v11, &location);
  v12 = a3;
  v13 = a4;
  dispatch_async(v9, block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)didFinishActivatingWithDiscoveryTokenData:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v9);

  if (v8)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A6040();
    }

LABEL_4:
    bleProvider = self->_bleProvider;
    self->_bleProvider = 0;
    goto LABEL_16;
  }

  if (!v7)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A60A8();
    }

    goto LABEL_4;
  }

  objc_storeStrong(&self->_localDiscoveryToken, a3);
  v11 = +[NSUserDefaults standardUserDefaults];
  v12 = [v11 BOOLForKey:@"NIHomeDisableDeviceSpecificSTS"];

  v13 = sub_1000054A8();
  if (v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_10041C974(v13[144]);
  }

  v15 = [(NIServerSessionContainer *)self _augmentDiscoveryTokenWithDeviceCapabilities:v7];
  localDiscoveryToken = self->_localDiscoveryToken;
  self->_localDiscoveryToken = v15;

  v17 = [(NIServerSessionContainer *)self _augmentDiscoveryToken:self->_localDiscoveryToken withHomeAnchorVariant:v14];
  v18 = self->_localDiscoveryToken;
  self->_localDiscoveryToken = v17;

  v19 = [(NIServerSessionContainer *)self _getCapabilities];
  v20 = [v19 objectForKey:@"UWBSupportedPlatformExtendedDistance"];
  v21 = [v20 BOOLValue];

  if (v21)
  {
    v22 = [(NIServerSessionContainer *)self _augmentDiscoveryTokenWithNbUwbAcquisitionChannel:self->_localDiscoveryToken];
    v23 = self->_localDiscoveryToken;
    self->_localDiscoveryToken = v22;

    v24 = [(NIServerSessionContainer *)self _augmentDiscoveryTokenWithMmsNumFragments:self->_localDiscoveryToken];
    v25 = self->_localDiscoveryToken;
    self->_localDiscoveryToken = v24;
  }

  v26 = qword_1009F9820;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = self->_localDiscoveryToken;
    v28 = CUPrintNSObjectMasked();
    v30 = 138478083;
    v31 = v28;
    v32 = 1024;
    v33 = v14;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#ses-container,BT resource activated. Token: %{private}@. Device anchor variant: %u", &v30, 0x12u);
  }

  bleProvider = [(NIServerSessionContainer *)self remote];
  v29 = [(NIServerSessionContainer *)self discoveryToken];
  [bleProvider didUpdateLocalDiscoveryToken:v29];

LABEL_16:
}

- (void)didDiscoverDevice:(id)a3
{
  v5 = a3;
  v4 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v4);

  [(NIServerBaseSession *)self->_specializedSession deviceDiscovered:v5];
}

- (void)discoveredDevice:(id)a3 didUpdate:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v7);

  [(NIServerBaseSession *)self->_specializedSession device:v8 rediscovered:v6];
}

- (void)didLoseDevice:(id)a3
{
  v5 = a3;
  v4 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v4);

  [(NIServerBaseSession *)self->_specializedSession deviceLost:v5];
}

- (void)bluetoothDidChangeState:(int64_t)a3
{
  v5 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v5);

  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      goto LABEL_10;
    }

    if (a3 == 2 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004A60E4();
    }
  }

  else
  {
    if (a3 != 3)
    {
      if (a3 != 4)
      {
        if (a3 == 5)
        {
          [(NIServerSessionContainer *)self _handleBluetoothBecameAvailable];
        }

        goto LABEL_13;
      }

LABEL_10:
      [(NIServerSessionContainer *)self _handleBluetoothBecameUnavailable];
      goto LABEL_13;
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004A6118();
    }
  }

LABEL_13:
  [(NIServerSessionContainer *)self setLatestBluetoothState:a3];
}

- (void)bluetoothServiceInterrupted
{
  v3 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v3);

  [(NIServerSessionContainer *)self _handleBluetoothBecameUnavailable];
}

- (void)bluetoothAdvertisingAddressChanged:(unint64_t)a3
{
  v5 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v5);

  specializedSession = self->_specializedSession;
  if (objc_opt_respondsToSelector())
  {
    v7 = self->_specializedSession;

    [(NIServerBaseSession *)v7 bluetoothAdvertisingAddressChanged:a3];
  }
}

- (void)_setContainerState:(unsigned __int8)a3
{
  if (self->_latestSessionContainerState != a3)
  {
    v5 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_1001CE4C4(a3);
      v7 = sub_1001CE4C4(self->_latestSessionContainerState);
      signingIdentity = self->_signingIdentity;
      pid = self->_pid;
      sessionIdentifier = self->_sessionIdentifier;
      v11 = 136316162;
      v12 = v6;
      v13 = 2080;
      v14 = v7;
      v15 = 2112;
      v16 = signingIdentity;
      v17 = 1024;
      v18 = pid;
      v19 = 2112;
      v20 = sessionIdentifier;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-container,Container state change. New: %s. Old: %s. Signing identity: %@, pid: %d, session identifier: %@", &v11, 0x30u);
    }

    self->_latestSessionContainerState = a3;
    self->_timeOfLatestContainerState = sub_100005288();
  }
}

- (basic_string<char,)_interruptionsMapAsString
{
  v2 = v1;
  v3 = [v1 connectionQueue];
  dispatch_assert_queue_V2(v3);

  sub_100193120(v10);
  sub_10000EA44(&v11, "[", 1);
  for (i = v2[14]; i; i = *i)
  {
    v5 = sub_10036B2EC(i[2]);
    v6 = [v5 UTF8String];
    v7 = strlen(v6);
    sub_10000EA44(&v11, v6, v7);
    if (*i)
    {
      sub_10000EA44(&v11, ", ", 2);
    }
  }

  sub_10000EA44(&v11, "]", 1);
  std::stringbuf::str();
  v11 = v8;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

- (void)_dumpInterruptionsMapWithDebugString:(id)a3
{
  v4 = a3;
  v5 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v5);

  v6 = qword_1009F9820;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    [(NIServerSessionContainer *)self _interruptionsMapAsString];
    v7 = v12;
    v8 = __p;
    v9 = sub_100005288();
    p_p = &__p;
    *buf = 138412802;
    if (v7 < 0)
    {
      p_p = v8;
    }

    v14 = v4;
    v15 = 2080;
    v16 = p_p;
    v17 = 2048;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#ses-container,#interrupt [%@] Interruptions map: %s, machContTime: %f", buf, 0x20u);
    if (v12 < 0)
    {
      operator delete(__p);
    }
  }
}

- (void)interruptSessionWithReason:(int64_t)a3 monotonicTimeSeconds:(double)a4
{
  v16 = a3;
  v7 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v7);

  v8 = qword_1009F9820;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    sessionIdentifier = self->_sessionIdentifier;
    v10 = sub_10036B2EC(a3);
    *buf = 138412802;
    *&buf[4] = sessionIdentifier;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    *&buf[22] = 2048;
    v18 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ses-container,#interrupt Interrupt session %@ with reason: %@. ContTime: %f", buf, 0x20u);
  }

  [(NIServerSessionContainer *)self _setContainerState:7];
  if (sub_100009978(&self->_interruptionsMap.__table_.__bucket_list_.__ptr_, &v16))
  {
    v11 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#ses-container,#interrupt Not interrupting session with duplicate reason.", buf, 2u);
    }
  }

  else
  {
    *buf = v16;
    *&buf[8] = v16;
    *&buf[16] = a4;
    sub_1001D08BC(&self->_interruptionsMap.__table_.__bucket_list_.__ptr_, buf);
    [(NIServerSessionContainer *)self _dumpInterruptionsMapWithDebugString:@"interruptWithReason"];
    v12 = [(NIServerBaseSession *)self->_specializedSession pauseWithSource:2];
    if (v12 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A614C();
    }

    [(NIServerAssertionManager *)self->_assertionManager releasePowerAssertion];
    paAccessInterval = self->_paAccessInterval;
    if (paAccessInterval)
    {
      [(PAAccessInterval *)paAccessInterval end];
      v14 = self->_paAccessInterval;
      self->_paAccessInterval = 0;
    }

    [(NIServerVisionInternalSessionRequest *)self->_visionSessionRequest invalidate];
    [(NIServerAnalyticsManager *)self->_analyticsManager sessionInterruptedWithTimestamp:a4];
    v15 = [(NIServerSessionContainer *)self remote];
    [v15 uwbSessionInterruptedWithReason:v16 timestamp:a4];
  }
}

- (void)interruptionReasonEnded:(int64_t)a3 monotonicTimeSeconds:(double)a4
{
  v13 = a3;
  v7 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v7);

  v8 = qword_1009F9820;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    sessionIdentifier = self->_sessionIdentifier;
    v10 = sub_10036B2EC(a3);
    *buf = 138412802;
    v15 = sessionIdentifier;
    v16 = 2112;
    v17 = v10;
    v18 = 2048;
    v19 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ses-container,#interrupt Session %@ interruption ended. Reason: %@. ContTime: %f", buf, 0x20u);
  }

  v11 = sub_100009978(&self->_interruptionsMap.__table_.__bucket_list_.__ptr_, &v13);
  if (v11)
  {
    sub_1000223BC(&self->_interruptionsMap.__table_.__bucket_list_.__ptr_, v11);
    [(NIServerSessionContainer *)self _dumpInterruptionsMapWithDebugString:@"interruptionEnded"];
    v12 = [(NIServerSessionContainer *)self remote];
    [v12 uwbSessionInterruptionReasonEnded:v13 timestamp:a4];
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A61B4();
  }
}

- (void)invalidate
{
  [(NIServerSessionContainer *)self _setContainerState:8];
  v3 = +[NIServerVisionDataDistributor sharedProvider];
  [v3 unregisterForVisionInput:self->_specializedSession];

  v4 = [(NIServerSessionContainer *)self devicePresenceResource];
  v5 = [v4 internalObserver];
  [v5 stopLeechingForConsumer:self];

  v6 = [(NIServerSessionContainer *)self devicePresenceResource];
  v7 = [v6 internalObserver];
  [v7 unregisterForInternalBluetoothSamples:self];

  [(NIServerBaseSession *)self->_specializedSession invalidate];
  specializedSession = self->_specializedSession;
  self->_specializedSession = 0;

  [(PRBLEDiscoverySession *)self->_bleProvider invalidate];
  bleProvider = self->_bleProvider;
  self->_bleProvider = 0;

  v10 = [(NIServerSessionContainer *)self appStateMonitor];
  [v10 removeObserver:self];

  [(NIServerAssertionManager *)self->_assertionManager invalidate];
  assertionManager = self->_assertionManager;
  self->_assertionManager = 0;

  paAccessInterval = self->_paAccessInterval;
  if (paAccessInterval)
  {
    [(PAAccessInterval *)paAccessInterval end];
    v13 = self->_paAccessInterval;
    self->_paAccessInterval = 0;
  }

  [(NIServerVisionInternalSessionRequest *)self->_visionSessionRequest invalidate];
  analyticsManager = self->_analyticsManager;
  v15 = sub_100005288();

  [(NIServerAnalyticsManager *)analyticsManager sessionInvalidatedWithTimestamp:v15];
}

- (id)_fatalErrorForUwbServiceState:(int)a3 cause:(int)a4
{
  v7 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v7);

  v8 = qword_1009F9820;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    sessionIdentifier = self->_sessionIdentifier;
    sub_100004A08(v18, off_10099C8D0[a3]);
    v10 = v19;
    v11 = v18[0];
    sub_100004A08(__p, off_10099C8F8[a4]);
    v12 = v18;
    if (v10 < 0)
    {
      v12 = v11;
    }

    if (v17 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    *buf = 138412802;
    v21 = sessionIdentifier;
    v22 = 2080;
    v23 = v12;
    v24 = 2080;
    v25 = v13;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ses-container,Check for fatal error for session %@ for UWB service state %s with cause %s", buf, 0x20u);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    if (v19 < 0)
    {
      operator delete(v18[0]);
    }
  }

  v14 = 0;
  if (a3 == 3 && (a4 - 5) <= 1)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A61F0();
    }

    v14 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5889 userInfo:0];
  }

  return v14;
}

- (void)_updateInterruptionForUWBSystemReady
{
  v3 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v3);

  __src = 0;
  v19 = 0;
  v20 = 0;
  [(NIServerSessionContainer *)self _dumpInterruptionsMapWithDebugString:@"_updateInterruptionForUWBSystemReady"];
  v4 = 32;
  v5 = &qword_100564820;
  do
  {
    if (sub_100009978(&self->_interruptionsMap.__table_.__bucket_list_.__ptr_, v5))
    {
      v6 = v19;
      if (v19 >= v20)
      {
        v8 = __src;
        v9 = v19 - __src;
        v10 = (v19 - __src) >> 3;
        v11 = v10 + 1;
        if ((v10 + 1) >> 61)
        {
          sub_100019B38();
        }

        v12 = v20 - __src;
        if ((v20 - __src) >> 2 > v11)
        {
          v11 = v12 >> 2;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v13 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          sub_100012564(&__src, v13);
        }

        *(8 * v10) = *v5;
        v7 = 8 * v10 + 8;
        memcpy(0, v8, v9);
        v14 = __src;
        __src = 0;
        v19 = v7;
        v20 = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v19 = *v5;
        v7 = (v6 + 8);
      }

      v19 = v7;
    }

    ++v5;
    v4 -= 8;
  }

  while (v4);
  v15 = sub_100005288();
  v16 = __src;
  if (__src != v19)
  {
    v17 = v15;
    do
    {
      [(NIServerSessionContainer *)self interruptionReasonEnded:*v16 monotonicTimeSeconds:v17];
      v16 += 8;
    }

    while (v16 != v19);
  }
}

- (BOOL)_updateInterruptionForUWBSystemOffWithCause:(int)a3
{
  v5 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v5);

  v6 = 0;
  v7 = 5;
  v8 = sub_100005288();
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        v7 = 1;
        break;
      case 4:
        v7 = 2;
        break;
      case 7:
        break;
      default:
        return v6;
    }

    goto LABEL_15;
  }

  if (a3)
  {
    if (a3 == 1)
    {
LABEL_15:
      [(NIServerSessionContainer *)self interruptSessionWithReason:v7 monotonicTimeSeconds:v8];
      return 1;
    }

    if (a3 == 2)
    {
      sub_1004A6258();
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004A6284();
    }

    return 0;
  }

  return v6;
}

- (void)_updateInterruptionForUWBSystemError
{
  v3 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v3);

  v4 = sub_100005288();

  [(NIServerSessionContainer *)self interruptSessionWithReason:4 monotonicTimeSeconds:v4];
}

- (void)_handleBluetoothBecameUnavailable
{
  v3 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v3);

  v4 = sub_100005288();

  [(NIServerSessionContainer *)self interruptSessionWithReason:9 monotonicTimeSeconds:v4];
}

- (void)_handleBluetoothBecameAvailable
{
  v3 = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(v3);

  v4 = sub_100005288();

  [(NIServerSessionContainer *)self interruptionReasonEnded:9 monotonicTimeSeconds:v4];
}

- (void)monitoredApp:(int)a3 didChangeState:(int)a4
{
  dispatch_assert_queue_V2(self->_connectionQueue);
  v7 = qword_1009F9820;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = sub_100208CC4(a4);
    v10[0] = 67109378;
    v10[1] = a3;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-container,Monitored app with pid: %d did change state: %@", v10, 0x12u);
  }

  if (!a4)
  {
    sub_1004A62B8();
  }

  v9 = sub_100005288();
  self->_latestAppState = a4;
  switch(a4)
  {
    case 2:
      [(NIServerAnalyticsManager *)self->_analyticsManager appBecameVisibleWithTimestamp:v9];
      break;
    case 3:
      [(NIServerAnalyticsManager *)self->_analyticsManager appBecameVisibleWithTimestamp:v9];
      [(NIServerAnalyticsManager *)self->_analyticsManager appPresentedLiveActivity];
      break;
    case 4:
      [(NIServerAnalyticsManager *)self->_analyticsManager appBecameNotVisibleWithTimestamp:v9];
      break;
    default:
      return;
  }

  [(NIServerSessionContainer *)self _updateClientAppVisibilityInterruption];
}

- (NIServerSessionActivationGuard)activationGuard
{
  WeakRetained = objc_loadWeakRetained(&self->_activationGuard);

  return WeakRetained;
}

- (NIServerSessionObservationRegistrar)observationRegistrar
{
  WeakRetained = objc_loadWeakRetained(&self->_observationRegistrar);

  return WeakRetained;
}

- (NIServerSessionAggregateStateProvider)aggregateStateProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_aggregateStateProvider);

  return WeakRetained;
}

- (NIRecentlyObservedObjectsCache)nearbyObjectsCache
{
  WeakRetained = objc_loadWeakRetained(&self->_nearbyObjectsCache);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 32) = 1065353216;
  return self;
}

@end