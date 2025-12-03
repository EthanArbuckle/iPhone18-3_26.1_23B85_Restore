@interface NIServerSessionContainer
- ($115C4C562B26FF47E01F9F4EA65B5887)clientAuditToken;
- (BOOL)_isBackgroundOperationAllowed;
- (BOOL)_isClientInternalTool;
- (BOOL)_isClientOnDLTDOAInternalAllowlist;
- (BOOL)_isClientOnGeneralEntitlementAllowlist;
- (BOOL)_isClientOnSystemShutdownAllowlist;
- (BOOL)_supportedPlatform;
- (BOOL)_updateInterruptionForUWBSystemOffWithCause:(int)cause;
- (BOOL)addObservers:(id)observers;
- (BOOL)entitlementGranted:(int)granted;
- (BOOL)longRangeEnabled;
- (BOOL)removeObservers:(id)observers;
- (BOOL)requiresBiasCorrection;
- (BOOL)requiresLargeRegions;
- (NIRecentlyObservedObjectsCache)nearbyObjectsCache;
- (NIServerSessionActivationGuard)activationGuard;
- (NIServerSessionAggregateStateProvider)aggregateStateProvider;
- (NIServerSessionContainer)initWithClient:(id)client clientInfo:(const NIServerClientInfo *)info connection:(id)connection authorizationManager:(id)manager;
- (NIServerSessionObservationRegistrar)observationRegistrar;
- (NSString)description;
- (NSString)processNameBestGuess;
- (PRUWBServiceProviding)uwbProvider;
- (PRWiFiServiceProviding)wifiProvider;
- (basic_string<char,)_interruptionsMapAsString;
- (id).cxx_construct;
- (id)_augmentDiscoveryTokenWithDeviceCapabilities:(id)capabilities;
- (id)_augmentDiscoveryTokenWithMmsNumFragments:(id)fragments;
- (id)_augmentDiscoveryTokenWithNbUwbAcquisitionChannel:(id)channel;
- (id)_displayPermissionsPromptIfNeeded;
- (id)_fatalErrorForUwbServiceState:(int)state cause:(int)cause;
- (id)_getCapabilities;
- (id)_getExpandedCapabilities;
- (id)canHandleAcwgMsg:(id)msg;
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
- (void)_addObject:(id)object reply:(id)reply;
- (void)_dumpInterruptionsMapWithDebugString:(id)string;
- (void)_handleBluetoothBecameAvailable;
- (void)_handleBluetoothBecameUnavailable;
- (void)_handleSpecializedSessionBackgroundSupportUpdate:(BOOL)update;
- (void)_handleSpecializedSessionInvalidation:(id)invalidation;
- (void)_populateClientEntitlements;
- (void)_processBluetoothSample:(id)sample;
- (void)_processCarKeyEvent:(id)event reply:(id)reply;
- (void)_processFindingEvent:(id)event reply:(id)reply;
- (void)_processSystemEvent:(id)event reply:(id)reply;
- (void)_provideTruthTag:(id)tag;
- (void)_removeObject:(id)object reply:(id)reply;
- (void)_setContainerState:(unsigned __int8)state;
- (void)_setURSKTTL:(unint64_t)l reply:(id)reply;
- (void)_updateClientAppVisibilityInterruption;
- (void)_updateInterruptionForUWBSystemError;
- (void)_updateInterruptionForUWBSystemReady;
- (void)activate:(id)activate;
- (void)arSessionDidFailWithError:(id)error;
- (void)arSessionInterruptionEnded;
- (void)arSessionWasInterrupted;
- (void)arSessionWillRunWithInvalidConfiguration;
- (void)bluetoothAdvertisingAddressChanged:(unint64_t)changed;
- (void)bluetoothDidChangeState:(int64_t)state;
- (void)bluetoothServiceInterrupted;
- (void)dealloc;
- (void)deleteURSKs:(id)ks;
- (void)didDiscoverDevice:(id)device;
- (void)didFailWithErrorCode:(int64_t)code errorString:(const void *)string;
- (void)didFinishActivatingWithDiscoveryTokenData:(id)data error:(id)error;
- (void)didLoseDevice:(id)device;
- (void)didReceiveNewSolution:(const void *)solution;
- (void)didReceiveRemoteData:(const void *)data;
- (void)didReceiveSessionStartNotification:(const void *)notification;
- (void)discoveredDevice:(id)device didUpdate:(id)update;
- (void)generateDiscoveryToken;
- (void)getActivelyInteractingDiscoveryTokens:(id)tokens;
- (void)getInteractableDiscoveryTokens:(id)tokens;
- (void)getLocalDevicePrintableState:(id)state;
- (void)interruptSessionWithReason:(int64_t)reason monotonicTimeSeconds:(double)seconds;
- (void)interruptionReasonEnded:(int64_t)ended monotonicTimeSeconds:(double)seconds;
- (void)invalidate;
- (void)isExtendedDistanceMeasurementAllowed:(id)allowed;
- (void)isPreciseRangingAllowed:(id)allowed;
- (void)isRangingLimitExceeded:(id)exceeded;
- (void)monitoredApp:(int)app didChangeState:(int)state;
- (void)notifySystemShutdownWithReason:(int64_t)reason reply:(id)reply;
- (void)pause:(id)pause;
- (void)processAcwgM1Msg:(id)msg withSessionTriggerReason:(int64_t)reason;
- (void)processAcwgM3Msg:(id)msg;
- (void)processBluetoothHostTimeSyncWithType:(int64_t)type btcClockTicks:(unint64_t)ticks eventCounter:(unint64_t)counter reply:(id)reply;
- (void)processDCKMessage:(id)message reply:(id)reply;
- (void)processVisionInput:(id)input;
- (void)queryDeviceCapabilities:(id)capabilities;
- (void)rangingServiceDidUpdateState:(int)state cause:(int)cause;
- (void)runWithConfiguration:(id)configuration reply:(id)reply;
- (void)serviceRequestDidUpdateStatus:(ServiceRequestStatusUpdate)status;
- (void)setAppStateMonitor:(id)monitor;
- (void)setLocalDeviceCanInteract:(BOOL)interact withDiscoveryTokens:(id)tokens reply:(id)reply;
- (void)setLocalDeviceDebugParameters:(id)parameters reply:(id)reply;
- (void)setLocalDeviceInteractableDiscoveryTokens:(id)tokens reply:(id)reply;
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
  _getExpandedCapabilities = [(NIServerSessionContainer *)self _getExpandedCapabilities];
  v3 = [_getExpandedCapabilities objectForKeyedSubscript:@"SupportedPlatform"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (id)_getExpandedCapabilities
{
  v3 = objc_opt_new();
  _getCapabilities = [(NIServerSessionContainer *)self _getCapabilities];
  [v3 addEntriesFromDictionary:_getCapabilities];

  devicePresenceResource = [(NIServerSessionContainer *)self devicePresenceResource];
  internalObserver = [devicePresenceResource internalObserver];
  LODWORD(_getCapabilities) = [internalObserver deviceCapabilities];

  v7 = [v3 objectForKey:@"UWBSupportedPlatform"];
  LODWORD(devicePresenceResource) = [v7 BOOLValue];

  v8 = [v3 objectForKey:@"WifiSupportedPlatform"];
  LODWORD(v7) = [v8 BOOLValue];

  v9 = [NSNumber numberWithBool:[(NIServerSessionContainer *)self entitlementGranted:5]& _getCapabilities | devicePresenceResource | [(NIServerSessionContainer *)self entitlementGranted:2]& v7];
  [v3 setObject:v9 forKey:@"SupportedPlatform"];

  return v3;
}

- (id)_getCapabilities
{
  v3 = objc_opt_new();
  uwbProvider = [(NIServerSessionContainer *)self uwbProvider];
  deviceCapabilities = [uwbProvider deviceCapabilities];

  wifiProvider = [(NIServerSessionContainer *)self wifiProvider];
  LOBYTE(self) = [wifiProvider deviceCapabilities];

  v7 = [NSNumber numberWithBool:deviceCapabilities & 1];
  [v3 setObject:v7 forKey:@"UWBSupportedPlatform"];

  v8 = [NSNumber numberWithBool:(deviceCapabilities >> 8) & 1];
  [v3 setObject:v8 forKey:@"UWBSupportedPlatformPDOA"];

  v9 = [NSNumber numberWithBool:HIWORD(deviceCapabilities) & 1];
  [v3 setObject:v9 forKey:@"UWBSupportedPlatformExtendedDistance"];

  v10 = [NSNumber numberWithBool:self & 1];
  [v3 setObject:v10 forKey:@"WifiSupportedPlatform"];

  v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", +[NIPlatformInfo supportsSyntheticAperture]);
  [v3 setObject:v11 forKey:@"UWBSupportedPlatformSyntheticAperture"];

  return v3;
}

- (PRUWBServiceProviding)uwbProvider
{
  selfCopy = self;
  if (!self->_uwbProvider)
  {
    v2 = [PRUWBManagerAgent alloc];
    sub_1001D07D8();
  }

  uwbProvider = selfCopy->_uwbProvider;

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

- (NIServerSessionContainer)initWithClient:(id)client clientInfo:(const NIServerClientInfo *)info connection:(id)connection authorizationManager:(id)manager
{
  clientCopy = client;
  connectionCopy = connection;
  managerCopy = manager;
  _queue = [connectionCopy _queue];
  dispatch_assert_queue_V2(_queue);

  if (connectionCopy)
  {
    if (managerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v34 = +[NSAssertionHandler currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"NIServerSessionContainer.mm" lineNumber:303 description:{@"Invalid parameter not satisfying: %@", @"connection"}];

    if (managerCopy)
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
    v17 = [NIServerClientPublisher publisherForClient:clientCopy];
    client = v16->_client;
    v16->_client = v17;

    objc_storeStrong(&v16->_connection, connection);
    _queue2 = [connectionCopy _queue];
    connectionQueue = v16->_connectionQueue;
    v16->_connectionQueue = _queue2;

    v21 = objc_opt_new();
    sessionIdentifier = v16->_sessionIdentifier;
    v16->_sessionIdentifier = v21;

    objc_storeStrong(&v16->_signingIdentity, info->var0);
    bundleIdentifier = v16->_bundleIdentifier;
    v16->_bundleIdentifier = 0;

    v16->_pid = info->var1;
    *v16->_clientEntitlementsArray.__elems_ = 0;
    *&v16->_clientEntitlementsArray.__elems_[7] = 0;
    objc_storeStrong(&v16->_authManager, manager);
    v24 = qword_1009F9820;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      signingIdentity = [(NIServerSessionContainer *)v16 signingIdentity];
      v26 = [(NIServerSessionContainer *)v16 pid];
      v27 = v16->_sessionIdentifier;
      *buf = 138412802;
      v38 = signingIdentity;
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
    uwbProvider = [(NIServerSessionContainer *)self uwbProvider];
    [uwbProvider disconnect];

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

- (BOOL)addObservers:(id)observers
{
  observersCopy = observers;
  supportsSessionObservers = [(NIServerBaseSession *)self->_specializedSession supportsSessionObservers];
  if (supportsSessionObservers)
  {
    [(NIServerClientPublisher *)self->_client addObservers:observersCopy];
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A5620();
  }

  return supportsSessionObservers;
}

- (BOOL)removeObservers:(id)observers
{
  observersCopy = observers;
  supportsSessionObservers = [(NIServerBaseSession *)self->_specializedSession supportsSessionObservers];
  if (supportsSessionObservers)
  {
    [(NIServerClientPublisher *)self->_client removeObservers:observersCopy];
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A565C();
  }

  return supportsSessionObservers;
}

- (void)queryDeviceCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    signingIdentity = [(NIServerSessionContainer *)self signingIdentity];
    v7 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    v11 = 138412802;
    v12 = signingIdentity;
    v13 = 1024;
    v14 = v7;
    v15 = 2112;
    v16 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - queryDeviceCapabilities. Signing identity: %@, pid: %d, session identifier: %@", &v11, 0x1Cu);
  }

  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  _getExpandedCapabilities = [(NIServerSessionContainer *)self _getExpandedCapabilities];
  capabilitiesCopy[2](capabilitiesCopy, _getExpandedCapabilities);
}

- (void)activate:(id)activate
{
  activateCopy = activate;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    signingIdentity = [(NIServerSessionContainer *)self signingIdentity];
    v7 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    *buf = 138412802;
    v32 = signingIdentity;
    v33 = 1024;
    v34 = v7;
    v35 = 2112;
    v36 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - activate. Signing identity: %@, pid: %d, session identifier: %@", buf, 0x1Cu);
  }

  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

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
    activationGuard = [(NIServerSessionContainer *)self activationGuard];
    if ([activationGuard isSessionAllowedToActivate:self])
    {
      v16 = [[NIServerAnalyticsManager alloc] initWithBundleIdentifier:self->_bundleIdentifier];
      analyticsManager = self->_analyticsManager;
      self->_analyticsManager = v16;

      uwbProvider = [(NIServerSessionContainer *)self uwbProvider];
      deviceCapabilities = [uwbProvider deviceCapabilities];

      if (deviceCapabilities)
      {
        uwbProvider2 = [(NIServerSessionContainer *)self uwbProvider];
        [uwbProvider2 connect];

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
      activateCopy[2](activateCopy, v14, 0);
    }

    else
    {
      v25 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5885 userInfo:0];
      activationError = self->_activationError;
      p_activationError = &self->_activationError;
      *p_activationError = v25;

      (activateCopy)[2](activateCopy, v14, *p_activationError);
    }
  }

  else
  {
    v22 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5889 userInfo:0];
    v24 = self->_activationError;
    v23 = &self->_activationError;
    *v23 = v22;

    (activateCopy)[2](activateCopy, v14, *v23);
  }
}

- (void)runWithConfiguration:(id)configuration reply:(id)reply
{
  configurationCopy = configuration;
  replyCopy = reply;
  v8 = qword_1009F9820;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    signingIdentity = [(NIServerSessionContainer *)self signingIdentity];
    v10 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    LODWORD(buf[0]) = 138412802;
    *(buf + 4) = signingIdentity;
    WORD2(buf[1]) = 1024;
    *(&buf[1] + 6) = v10;
    WORD1(buf[2]) = 2112;
    *(&buf[2] + 4) = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - runWithConfiguration. Signing identity: %@, pid: %d, session identifier: %@", buf, 0x1Cu);
  }

  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  if ([(NIServerSessionContainer *)self _supportedPlatform])
  {
    if (configurationCopy)
    {
      [(NIServerSessionContainer *)self _setContainerState:3];
      _internalIsMemoryAssertionRequired = [configurationCopy _internalIsMemoryAssertionRequired];
      assertionManager = self->_assertionManager;
      if (_internalIsMemoryAssertionRequired)
      {
        [(NIServerAssertionManager *)assertionManager acquireMemoryAssertion];
      }

      else
      {
        [(NIServerAssertionManager *)assertionManager releaseMemoryAssertion];
      }

      _internalIsPowerAssertionRequired = [configurationCopy _internalIsPowerAssertionRequired];
      v18 = self->_assertionManager;
      if (_internalIsPowerAssertionRequired)
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

        replyCopy[2](replyCopy, self->_activationError);
        goto LABEL_22;
      }

      uwbProvider = [(NIServerSessionContainer *)self uwbProvider];
      deviceCapabilities = [uwbProvider deviceCapabilities];

      _displayPermissionsPromptIfNeeded = [(NIServerSessionContainer *)self _displayPermissionsPromptIfNeeded];
      if (_displayPermissionsPromptIfNeeded)
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
            _displayPermissionsPromptIfNeeded = v25 = 0;
            if (_displayPermissionsPromptIfNeeded)
            {
LABEL_162:
              if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
              {
                sub_1004A5780(self);
              }

LABEL_20:
              replyCopy[2](replyCopy, _displayPermissionsPromptIfNeeded);
LABEL_21:

              goto LABEL_22;
            }

LABEL_44:
            specializedSession = self->_specializedSession;
            if (specializedSession)
            {
              if ([(NIServerBaseSession *)specializedSession updateConfiguration:configurationCopy])
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

              lastConfiguration = [(NIServerBaseSession *)self->_specializedSession lastConfiguration];
              v30 = [lastConfiguration isEqual:configurationCopy];

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
                lastConfiguration2 = [(NIServerBaseSession *)self->_specializedSession lastConfiguration];
                LODWORD(buf[0]) = 138412546;
                *(buf + 4) = lastConfiguration2;
                WORD2(buf[1]) = 2112;
                *(&buf[1] + 6) = configurationCopy;
                _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#ses-container,Existing session with different config.\nCurrent:%@\nNew:%@", buf, 0x16u);
              }
            }

            v31 = 1;
LABEL_57:
            v34 = qword_1009F9820;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              signingIdentity2 = [(NIServerSessionContainer *)self signingIdentity];
              v36 = [(NIServerSessionContainer *)self pid];
              LODWORD(buf[0]) = 67109634;
              HIDWORD(buf[0]) = v31;
              LOWORD(buf[1]) = 2112;
              *(&buf[1] + 2) = signingIdentity2;
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
              v39 = [[v25 alloc] initWithResourcesManager:self configuration:configurationCopy error:&v126];
              _displayPermissionsPromptIfNeeded = v126;
              v40 = self->_specializedSession;
              self->_specializedSession = v39;

              if (_displayPermissionsPromptIfNeeded)
              {
                if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
                {
                  sub_1004A57EC(self);
                }

                replyCopy[2](replyCopy, _displayPermissionsPromptIfNeeded);
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

              if (deviceCapabilities)
              {
                uwbProvider2 = [(NIServerSessionContainer *)self uwbProvider];
                [uwbProvider2 requestAsyncServiceStatusUpdate];
              }

              [(NIServerSessionContainer *)self _handleSpecializedSessionBackgroundSupportUpdate:[(NIServerBaseSession *)self->_specializedSession supportsBackgroundedClients]];
              objc_destroyWeak(&v123);
              objc_destroyWeak(&v125);
              objc_destroyWeak(buf);
            }

            requiresUWBToRun = [(NIServerBaseSession *)self->_specializedSession requiresUWBToRun];
            requiresNarrowbandToRun = [(NIServerBaseSession *)self->_specializedSession requiresNarrowbandToRun];
            if (requiresNarrowbandToRun == 2 && requiresUWBToRun != 2)
            {
              __assert_rtn("[NIServerSessionContainer runWithConfiguration:reply:]", "NIServerSessionContainer.mm", 783, "requiresUWBToRun");
            }

            if (requiresUWBToRun == 2)
            {
              uwbProvider3 = [(NIServerSessionContainer *)self uwbProvider];
              currentServiceState = [uwbProvider3 currentServiceState];

              v52 = currentServiceState == 1;
              if (requiresNarrowbandToRun != 2)
              {
                v52 = (currentServiceState - 1) < 2;
              }

              if (!v52)
              {
                v55 = qword_1009F9820;
                if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
                {
                  v63 = self->_sessionIdentifier;
                  v64 = @"NO";
                  LODWORD(buf[0]) = 138413314;
                  if (requiresNarrowbandToRun == 2)
                  {
                    v65 = @"YES";
                  }

                  else
                  {
                    v65 = @"NO";
                  }

                  *(buf + 4) = v63;
                  WORD2(buf[1]) = 2112;
                  if ((currentServiceState - 1) >= 2)
                  {
                    v66 = @"NO";
                  }

                  else
                  {
                    v66 = @"YES";
                  }

                  *(&buf[1] + 6) = @"YES";
                  if (currentServiceState == 1)
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

                _displayPermissionsPromptIfNeeded = [(NIServerSessionContainer *)self _fatalErrorForUwbServiceState:currentServiceState cause:HIDWORD(currentServiceState)];
                if (!_displayPermissionsPromptIfNeeded)
                {
                  if (![(NIServerSessionContainer *)self _updateInterruptionForUWBServiceState:currentServiceState cause:HIDWORD(currentServiceState) requiresNarrowBand:requiresNarrowbandToRun == 2])
                  {
                    __assert_rtn("[NIServerSessionContainer runWithConfiguration:reply:]", "NIServerSessionContainer.mm", 830, "false");
                  }

                  replyCopy[2](replyCopy, 0);
                  _displayPermissionsPromptIfNeeded = 0;
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

                remote = [(NIServerSessionContainer *)self remote];
                [remote uwbSessionInterruptedWithReason:9 timestamp:sub_100005288()];
LABEL_80:

                _displayPermissionsPromptIfNeeded = 0;
                goto LABEL_21;
              }
            }

            _displayPermissionsPromptIfNeeded = [(NIServerBaseSession *)self->_specializedSession configure];
            if (_displayPermissionsPromptIfNeeded)
            {
              if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
              {
                sub_1004A5858(self);
              }

LABEL_87:
              replyCopy[2](replyCopy, _displayPermissionsPromptIfNeeded);
              goto LABEL_21;
            }

            if (!-[NIServerBaseSession supportsCameraAssistance](self->_specializedSession, "supportsCameraAssistance") && [configurationCopy _internalIsCameraAssistanceEnabled])
            {
              if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
              {
                sub_1004A58C4(self);
              }

              _displayPermissionsPromptIfNeeded = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
              (replyCopy[2])(replyCopy);
              goto LABEL_21;
            }

            if ([(NIServerBaseSession *)self->_specializedSession supportsSessionObservers])
            {
              observationRegistrar = [(NIServerSessionContainer *)self observationRegistrar];
              [observationRegistrar registerObserversForSession:self];
            }

            if ([configurationCopy _internalIsCameraAssistanceEnabled])
            {
              v57 = +[NIServerVisionDataDistributor sharedProvider];
              [v57 registerForVisionInput:self->_specializedSession];
            }

            if (![(NIServerBaseSession *)self->_specializedSession supportsDevicePresence])
            {
LABEL_115:
              _displayPermissionsPromptIfNeeded = [(NIServerBaseSession *)self->_specializedSession run];
              if (_displayPermissionsPromptIfNeeded)
              {
                if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
                {
                  sub_1004A5938(self);
                }

                v67 = +[NIServerVisionDataDistributor sharedProvider];
                [v67 unregisterForVisionInput:self->_specializedSession];

                devicePresenceResource = [(NIServerSessionContainer *)self devicePresenceResource];
                internalObserver = [devicePresenceResource internalObserver];
                [internalObserver stopLeechingForConsumer:self];

                devicePresenceResource2 = [(NIServerSessionContainer *)self devicePresenceResource];
                internalObserver2 = [devicePresenceResource2 internalObserver];
                [internalObserver2 unregisterForInternalBluetoothSamples:self];

                replyCopy[2](replyCopy, _displayPermissionsPromptIfNeeded);
                goto LABEL_21;
              }

              [(NIServerSessionContainer *)self _setContainerState:4];
              replyCopy[2](replyCopy, 0);
              remote = kTCCServiceNearbyInteraction;
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
                  v75 = [PATCCAccess accessWithAccessor:v74 forService:remote];
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

              if ([configurationCopy _internalIsCameraAssistanceEnabled] && (objc_msgSend(configurationCopy, "_internalIsCameraAssistanceInClientProcess") & 1) == 0)
              {
                v79 = [NIServerVisionInternalSessionRequest alloc];
                uUIDString = [(NSUUID *)self->_sessionIdentifier UUIDString];
                v81 = [(NIServerVisionInternalSessionRequest *)v79 initWithIdentifier:uUIDString observer:self];
                visionSessionRequest = self->_visionSessionRequest;
                self->_visionSessionRequest = v81;

                [(NIServerVisionInternalSessionRequest *)self->_visionSessionRequest activate];
              }

              [(NIServerAnalyticsManager *)self->_analyticsManager sessionSuccessfullyRanWithConfig:configurationCopy withTimestamp:sub_100005288()];

              goto LABEL_80;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              devicePresenceResource4 = configurationCopy;
              token = [devicePresenceResource4 token];
              v60 = token == 0;

              if (!v60)
              {
                devicePresenceResource3 = [(NIServerSessionContainer *)self devicePresenceResource];
                internalObserver3 = [devicePresenceResource3 internalObserver];
                [internalObserver3 registerForInternalBluetoothSamples:self reportCache:0];

LABEL_114:
                goto LABEL_115;
              }
            }

            devicePresenceResource4 = [(NIServerSessionContainer *)self devicePresenceResource];
            devicePresenceResource3 = [devicePresenceResource4 internalObserver];
            [devicePresenceResource3 registerForInternalBluetoothSamples:self];
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

          _isClientOnDLTDOAInternalAllowlist = [(NIServerSessionContainer *)self _isClientOnDLTDOAInternalAllowlist];
          if (v93)
          {
            v93 = +[NIPlatformInfo isInternalBuild];
          }

          if ((_isClientOnDLTDOAInternalAllowlist | v93 | [(NIServerSessionContainer *)self entitlementGranted:10]))
          {
            v87 = objc_opt_class();
            goto LABEL_181;
          }

          v99 = qword_1009F9820;
          if (os_log_type_enabled(v99, OS_LOG_TYPE_FAULT))
          {
            signingIdentity3 = [(NIServerSessionContainer *)self signingIdentity];
            v120 = [(NIServerSessionContainer *)self pid];
            v121 = self->_sessionIdentifier;
            LODWORD(buf[0]) = 138412802;
            *(buf + 4) = signingIdentity3;
            WORD2(buf[1]) = 1024;
            *(&buf[1] + 6) = v120;
            WORD1(buf[2]) = 2112;
            *(&buf[2] + 4) = v121;
            _os_log_fault_impl(&_mh_execute_header, v99, OS_LOG_TYPE_FAULT, "#ses-container,NI DL-TDOA configuration not allowed. Signing identity: %@, pid: %d, session identifier: %@.", buf, 0x1Cu);
          }

          v132 = NSLocalizedFailureReasonErrorKey;
          v133 = @"Not authorized to run DL-TDOA configuration.";
          v100 = [NSDictionary dictionaryWithObjects:&v133 forKeys:&v132 count:1];
          _displayPermissionsPromptIfNeeded = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:v100];

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
          signingIdentity4 = [(NIServerSessionContainer *)self signingIdentity];
          v117 = [(NIServerSessionContainer *)self pid];
          v118 = self->_sessionIdentifier;
          LODWORD(buf[0]) = 138412802;
          *(buf + 4) = signingIdentity4;
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
        _displayPermissionsPromptIfNeeded = v89;
        goto LABEL_160;
      }

      if (![(NIServerSessionContainer *)self entitlementGranted:4])
      {
        v88 = qword_1009F9820;
        if (os_log_type_enabled(v88, OS_LOG_TYPE_FAULT))
        {
          signingIdentity5 = [(NIServerSessionContainer *)self signingIdentity];
          v102 = [(NIServerSessionContainer *)self pid];
          v103 = self->_sessionIdentifier;
          LODWORD(buf[0]) = 138412802;
          *(buf + 4) = signingIdentity5;
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

      v83 = configurationCopy;
      discoveryTokenVariant = [v83 discoveryTokenVariant];
      v25 = 0;
      if (discoveryTokenVariant > 1)
      {
        if (discoveryTokenVariant == 2)
        {
          requestedMeasurementQuality = [v83 requestedMeasurementQuality];
          v25 = 0;
          if (requestedMeasurementQuality > 1)
          {
            if (requestedMeasurementQuality == 2)
            {
              v90 = qword_1009F9820;
              if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
              {
                signingIdentity6 = [(NIServerSessionContainer *)self signingIdentity];
                v108 = [(NIServerSessionContainer *)self pid];
                v109 = self->_sessionIdentifier;
                LODWORD(buf[0]) = 138412802;
                *(buf + 4) = signingIdentity6;
                WORD2(buf[1]) = 1024;
                *(&buf[1] + 6) = v108;
                WORD1(buf[2]) = 2112;
                *(&buf[2] + 4) = v109;
                _os_log_error_impl(&_mh_execute_header, v90, OS_LOG_TYPE_ERROR, "#ses-container,Unable to create specialized session for NIFindingConfiguration with coarse measurement quality. Signing identity: %@, pid: %d, session identifier: %@.", buf, 0x1Cu);
              }
            }

            else
            {
              if (requestedMeasurementQuality != 3)
              {
                goto LABEL_175;
              }

              monitoredRegions = [v83 monitoredRegions];
              v97 = monitoredRegions == 0;

              if (!v97)
              {
                v85 = off_100989498;
                goto LABEL_138;
              }

              v90 = qword_1009F9820;
              if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
              {
                signingIdentity7 = [(NIServerSessionContainer *)self signingIdentity];
                v114 = [(NIServerSessionContainer *)self pid];
                v115 = self->_sessionIdentifier;
                LODWORD(buf[0]) = 138412802;
                *(buf + 4) = signingIdentity7;
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
            if (requestedMeasurementQuality)
            {
              if (requestedMeasurementQuality == 1)
              {
                v85 = off_1009894C8;
                goto LABEL_138;
              }

LABEL_175:
              _displayPermissionsPromptIfNeeded = 0;
              goto LABEL_161;
            }

            v90 = qword_1009F9820;
            if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
            {
              signingIdentity8 = [(NIServerSessionContainer *)self signingIdentity];
              v105 = [(NIServerSessionContainer *)self pid];
              v106 = self->_sessionIdentifier;
              LODWORD(buf[0]) = 138412802;
              *(buf + 4) = signingIdentity8;
              WORD2(buf[1]) = 1024;
              *(&buf[1] + 6) = v105;
              WORD1(buf[2]) = 2112;
              *(&buf[2] + 4) = v106;
              _os_log_error_impl(&_mh_execute_header, v90, OS_LOG_TYPE_ERROR, "#ses-container,Unable to create specialized session for NIFindingConfiguration with unspecified measurement quality. Signing identity: %@, pid: %d, session identifier: %@.", buf, 0x1Cu);
            }
          }

          goto LABEL_152;
        }

        if (discoveryTokenVariant != 3)
        {
          goto LABEL_175;
        }
      }

      else if (discoveryTokenVariant)
      {
        if (discoveryTokenVariant == 1)
        {
          v85 = off_1009894B0;
LABEL_138:
          v86 = *v85;
          v87 = objc_opt_class();
LABEL_181:
          v25 = v87;
          _displayPermissionsPromptIfNeeded = 0;
LABEL_161:

          if (_displayPermissionsPromptIfNeeded)
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
        signingIdentity9 = [(NIServerSessionContainer *)self signingIdentity];
        v111 = [(NIServerSessionContainer *)self pid];
        v112 = self->_sessionIdentifier;
        LODWORD(buf[0]) = 138412802;
        *(buf + 4) = signingIdentity9;
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
    replyCopy[2](replyCopy, v16);

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A59A4();
    }
  }

  else
  {
    v15 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5889 userInfo:0];
    replyCopy[2](replyCopy, v15);

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A56CC();
    }
  }

LABEL_22:
}

- (void)pause:(id)pause
{
  pauseCopy = pause;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    signingIdentity = [(NIServerSessionContainer *)self signingIdentity];
    v7 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    v15 = 138412802;
    v16 = signingIdentity;
    v17 = 1024;
    v18 = v7;
    v19 = 2112;
    v20 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - pause. Signing identity: %@, pid: %d, session identifier: %@", &v15, 0x1Cu);
  }

  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

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

      pauseCopy[2](pauseCopy, v12);
    }

    else
    {
      v14 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
      pauseCopy[2](pauseCopy, v14);

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004A59A4();
      }
    }
  }

  else
  {
    v13 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5889 userInfo:0];
    pauseCopy[2](pauseCopy, v13);

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
    signingIdentity = [(NIServerSessionContainer *)self signingIdentity];
    v5 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    v8 = 138412802;
    v9 = signingIdentity;
    v10 = 1024;
    v11 = v5;
    v12 = 2112;
    v13 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - generateDiscoveryToken. Signing identity: %@, pid: %d, session identifier: %@", &v8, 0x1Cu);
  }

  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  [(NIServerSessionContainer *)self _activateBluetoothResource];
}

- (void)notifySystemShutdownWithReason:(int64_t)reason reply:(id)reply
{
  replyCopy = reply;
  v7 = qword_1009F9820;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    signingIdentity = [(NIServerSessionContainer *)self signingIdentity];
    v9 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    *buf = 138412802;
    v24 = signingIdentity;
    v25 = 1024;
    v26 = v9;
    v27 = 2112;
    v28 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - notifySystemShutdownWithReason. Signing identity: %@, pid: %d, session identifier: %@", buf, 0x1Cu);
  }

  if ([(NIServerSessionContainer *)self entitlementGranted:6])
  {
    if ((reason - 1) >= 2)
    {
      if (reason)
      {
        v19 = NSLocalizedDescriptionKey;
        v20 = @"Invalid reason.";
        v14 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
        reason = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v14];
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
        reason = 0;
      }

      else
      {
        v17 = NSLocalizedDescriptionKey;
        v18 = @"Shutdown operation failed.";
        v15 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
        reason = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v15];
      }

      v16 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#ses-container,#shutdown FINISHED non-user shutdown tasks", buf, 2u);
      }
    }

    replyCopy[2](replyCopy, reason);
  }

  else
  {
    v21 = NSLocalizedDescriptionKey;
    v22 = @"Operation disallowed.";
    reason = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v13 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:reason];
    replyCopy[2](replyCopy, v13);
  }
}

- (void)_provideTruthTag:(id)tag
{
  tagCopy = tag;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    signingIdentity = [(NIServerSessionContainer *)self signingIdentity];
    v7 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    v10 = 138412802;
    v11 = signingIdentity;
    v12 = 1024;
    v13 = v7;
    v14 = 2112;
    v15 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - _provideTruthTag. Signing identity: %@, pid: %d, session identifier: %@", &v10, 0x1Cu);
  }

  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  sub_10005E284(tagCopy);
}

- (void)_addObject:(id)object reply:(id)reply
{
  objectCopy = object;
  replyCopy = reply;
  v8 = qword_1009F9820;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    signingIdentity = [(NIServerSessionContainer *)self signingIdentity];
    v10 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    v17 = 138412802;
    v18 = signingIdentity;
    v19 = 1024;
    v20 = v10;
    v21 = 2112;
    v22 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - _addObject. Signing identity: %@, pid: %d, session identifier: %@", &v17, 0x1Cu);
  }

  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  if ([(NIServerSessionContainer *)self _supportedPlatform])
  {
    specializedSession = self->_specializedSession;
    if (specializedSession)
    {
      v14 = [(NIServerBaseSession *)specializedSession addObject:objectCopy];
      replyCopy[2](replyCopy, v14);
    }

    else
    {
      v16 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
      replyCopy[2](replyCopy, v16);

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004A59A4();
      }
    }
  }

  else
  {
    v15 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5889 userInfo:0];
    replyCopy[2](replyCopy, v15);

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A56CC();
    }
  }
}

- (void)_removeObject:(id)object reply:(id)reply
{
  objectCopy = object;
  replyCopy = reply;
  v8 = qword_1009F9820;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    signingIdentity = [(NIServerSessionContainer *)self signingIdentity];
    v10 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    v17 = 138412802;
    v18 = signingIdentity;
    v19 = 1024;
    v20 = v10;
    v21 = 2112;
    v22 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - _removeObject. Signing identity: %@, pid: %d, session identifier: %@", &v17, 0x1Cu);
  }

  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  if ([(NIServerSessionContainer *)self _supportedPlatform])
  {
    specializedSession = self->_specializedSession;
    if (specializedSession)
    {
      v14 = [(NIServerBaseSession *)specializedSession removeObject:objectCopy];
      replyCopy[2](replyCopy, v14);
    }

    else
    {
      v16 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
      replyCopy[2](replyCopy, v16);

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004A59A4();
      }
    }
  }

  else
  {
    v15 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5889 userInfo:0];
    replyCopy[2](replyCopy, v15);

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A56CC();
    }
  }
}

- (void)isPreciseRangingAllowed:(id)allowed
{
  allowedCopy = allowed;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    signingIdentity = [(NIServerSessionContainer *)self signingIdentity];
    v7 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    v11 = 138412802;
    v12 = signingIdentity;
    v13 = 1024;
    v14 = v7;
    v15 = 2112;
    v16 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - isPreciseRangingAllowed. Signing identity: %@, pid: %d, session identifier: %@", &v11, 0x1Cu);
  }

  v9 = sub_10035D02C();
  v10 = (*(*v9 + 160))(v9);
  allowedCopy[2](allowedCopy, v10, 0);
}

- (void)isExtendedDistanceMeasurementAllowed:(id)allowed
{
  allowedCopy = allowed;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    signingIdentity = [(NIServerSessionContainer *)self signingIdentity];
    v7 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    v12 = 138412802;
    v13 = signingIdentity;
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

  allowedCopy[2](allowedCopy, v11, 0);
}

- (void)processDCKMessage:(id)message reply:(id)reply
{
  messageCopy = message;
  replyCopy = reply;
  v8 = qword_1009F9820;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    signingIdentity = [(NIServerSessionContainer *)self signingIdentity];
    v10 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    v27 = 138412802;
    v28 = signingIdentity;
    v29 = 1024;
    v30 = v10;
    v31 = 2112;
    v32 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - processDCKMessage. Signing identity: %@, pid: %d, session identifier: %@", &v27, 0x1Cu);
  }

  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  if (self->_interruptionsMap.__table_.__size_)
  {
    v13 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10014 userInfo:0];
    replyCopy[2](replyCopy, 0, v13);

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
      v23 = [(NIServerBaseSession *)specializedSession processDCKMessage:messageCopy];
      v25 = v24;
      (replyCopy)[2](replyCopy, v23, v24);
    }

    else
    {
      v26 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
      replyCopy[2](replyCopy, 0, v26);

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004A59A4();
      }
    }
  }
}

- (void)processBluetoothHostTimeSyncWithType:(int64_t)type btcClockTicks:(unint64_t)ticks eventCounter:(unint64_t)counter reply:(id)reply
{
  replyCopy = reply;
  v11 = qword_1009F9820;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    signingIdentity = [(NIServerSessionContainer *)self signingIdentity];
    v13 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    *buf = 138412802;
    v33 = signingIdentity;
    v34 = 1024;
    v35 = v13;
    v36 = 2112;
    v37 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - processBluetoothHostTimeSyncWithType. Signing identity: %@, pid: %d, session identifier: %@", buf, 0x1Cu);
  }

  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  v16 = sub_100005288();
  specializedSession = self->_specializedSession;
  if (specializedSession)
  {
    v29 = 0;
    v18 = [(NIServerBaseSession *)specializedSession processBluetoothHostTimeSyncWithType:type btcClockTicks:ticks eventCounter:counter monotonicTimeSec:&v29 response:v16];
    v19 = v29;
    replyCopy[2](replyCopy, v19, v18);
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

    replyCopy[2](replyCopy, 0, v18);
  }
}

- (void)isRangingLimitExceeded:(id)exceeded
{
  exceededCopy = exceeded;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    signingIdentity = [(NIServerSessionContainer *)self signingIdentity];
    v7 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    v17 = 138412802;
    v18 = signingIdentity;
    v19 = 1024;
    v20 = v7;
    v21 = 2112;
    v22 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - isRangingLimitExceeded. Signing identity: %@, pid: %d, session identifier: %@", &v17, 0x1Cu);
  }

  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  specializedSession = self->_specializedSession;
  if (specializedSession)
  {
    isRangingLimitExceeded = [(NIServerBaseSession *)specializedSession isRangingLimitExceeded];
    v12 = isRangingLimitExceeded;
    v14 = v13;
    if (isRangingLimitExceeded)
    {
      bOOLValue = [isRangingLimitExceeded BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    exceededCopy[2](exceededCopy, bOOLValue, v14);
  }

  else
  {
    v16 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
    exceededCopy[2](exceededCopy, 0, v16);

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A59A4();
    }
  }
}

- (void)deleteURSKs:(id)ks
{
  ksCopy = ks;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    signingIdentity = [(NIServerSessionContainer *)self signingIdentity];
    v7 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    v13 = 138412802;
    v14 = signingIdentity;
    v15 = 1024;
    v16 = v7;
    v17 = 2112;
    v18 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - deleteURSKs. Signing identity: %@, pid: %d, session identifier: %@", &v13, 0x1Cu);
  }

  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  specializedSession = self->_specializedSession;
  if (specializedSession)
  {
    deleteURSKs = [(NIServerBaseSession *)specializedSession deleteURSKs];
    ksCopy[2](ksCopy, deleteURSKs);
  }

  else
  {
    v12 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
    ksCopy[2](ksCopy, v12);

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A59A4();
    }
  }
}

- (void)_setURSKTTL:(unint64_t)l reply:(id)reply
{
  replyCopy = reply;
  v7 = qword_1009F9820;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    signingIdentity = [(NIServerSessionContainer *)self signingIdentity];
    v9 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    v15 = 138412802;
    v16 = signingIdentity;
    v17 = 1024;
    v18 = v9;
    v19 = 2112;
    v20 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - _setURSKTTL. Signing identity: %@, pid: %d, session identifier: %@", &v15, 0x1Cu);
  }

  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  specializedSession = self->_specializedSession;
  if (specializedSession)
  {
    v13 = [(NIServerBaseSession *)specializedSession _setURSKTTL:l];
    replyCopy[2](replyCopy, v13);
  }

  else
  {
    v14 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
    replyCopy[2](replyCopy, v14);

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A59A4();
    }
  }
}

- (void)_processCarKeyEvent:(id)event reply:(id)reply
{
  eventCopy = event;
  replyCopy = reply;
  v8 = qword_1009F9820;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    signingIdentity = [(NIServerSessionContainer *)self signingIdentity];
    v10 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    v16 = 138412802;
    v17 = signingIdentity;
    v18 = 1024;
    v19 = v10;
    v20 = 2112;
    v21 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - _processCarKeyEvent. Signing identity: %@, pid: %d, session identifier: %@", &v16, 0x1Cu);
  }

  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  specializedSession = self->_specializedSession;
  if (specializedSession)
  {
    v14 = [(NIServerBaseSession *)specializedSession _processCarKeyEvent:eventCopy];
    replyCopy[2](replyCopy, v14);
  }

  else
  {
    v15 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
    replyCopy[2](replyCopy, v15);

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A59A4();
    }
  }
}

- (id)canHandleAcwgMsg:(id)msg
{
  msgCopy = msg;
  if (self->_interruptionsMap.__table_.__size_)
  {
    v5 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10014 userInfo:0];
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A5B70();
    }

    [(NIServerSessionContainer *)self _dumpInterruptionsMapWithDebugString:msgCopy];
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

- (void)processAcwgM1Msg:(id)msg withSessionTriggerReason:(int64_t)reason
{
  msgCopy = msg;
  v7 = qword_1009F9820;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    signingIdentity = [(NIServerSessionContainer *)self signingIdentity];
    v9 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    v14 = 138412802;
    v15 = signingIdentity;
    v16 = 1024;
    v17 = v9;
    v18 = 2112;
    v19 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - processAcwgM1Msg. Signing identity: %@, pid: %d, session identifier: %@", &v14, 0x1Cu);
  }

  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  v12 = [(NIServerSessionContainer *)self canHandleAcwgMsg:@"processAcwgM1Msg"];
  if (v12)
  {
    remote = [(NIServerSessionContainer *)self remote];
    [remote didProcessAcwgM1MsgWithResponse:0 error:v12];
  }

  else
  {
    [(NIServerBaseSession *)self->_specializedSession processAcwgM1Msg:msgCopy withSessionTriggerReason:reason];
  }
}

- (void)processAcwgM3Msg:(id)msg
{
  msgCopy = msg;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    signingIdentity = [(NIServerSessionContainer *)self signingIdentity];
    v7 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    v12 = 138412802;
    v13 = signingIdentity;
    v14 = 1024;
    v15 = v7;
    v16 = 2112;
    v17 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - processAcwgM3Msg. Signing identity: %@, pid: %d, session identifier: %@", &v12, 0x1Cu);
  }

  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  v10 = [(NIServerSessionContainer *)self canHandleAcwgMsg:@"processAcwgM3Msg"];
  if (v10)
  {
    remote = [(NIServerSessionContainer *)self remote];
    [remote didProcessAcwgM3MsgWithResponse:0 error:v10];
  }

  else
  {
    [(NIServerBaseSession *)self->_specializedSession processAcwgM3Msg:msgCopy];
  }
}

- (void)_processBluetoothSample:(id)sample
{
  sampleCopy = sample;
  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  devicePresenceResource = [(NIServerSessionContainer *)self devicePresenceResource];
  [devicePresenceResource consumeBluetoothSample:sampleCopy];
}

- (void)processVisionInput:(id)input
{
  inputCopy = input;
  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  v5 = +[NIServerVisionDataDistributor sharedProvider];
  [v5 processVisionInput:inputCopy];
}

- (void)arSessionDidFailWithError:(id)error
{
  errorCopy = error;
  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  userInfo = [errorCopy userInfo];
  v6 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10010 userInfo:userInfo];

  [(NIServerBaseSession *)self->_specializedSession invalidate];
  remote = [(NIServerSessionContainer *)self remote];
  [remote uwbSessionDidFailWithError:v6];
}

- (void)arSessionWasInterrupted
{
  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  v4 = sub_100005288();

  [(NIServerSessionContainer *)self interruptSessionWithReason:6 monotonicTimeSeconds:v4];
}

- (void)arSessionInterruptionEnded
{
  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  v4 = sub_100005288();

  [(NIServerSessionContainer *)self interruptionReasonEnded:6 monotonicTimeSeconds:v4];
}

- (void)arSessionWillRunWithInvalidConfiguration
{
  v4 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5883 userInfo:0];
  [(NIServerBaseSession *)self->_specializedSession invalidate];
  remote = [(NIServerSessionContainer *)self remote];
  [remote uwbSessionDidFailWithError:v4];
}

- (void)setLocalDeviceCanInteract:(BOOL)interact withDiscoveryTokens:(id)tokens reply:(id)reply
{
  interactCopy = interact;
  tokensCopy = tokens;
  replyCopy = reply;
  v10 = qword_1009F9820;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    signingIdentity = [(NIServerSessionContainer *)self signingIdentity];
    v12 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    *buf = 138412802;
    *&buf[4] = signingIdentity;
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
    if (interactCopy)
    {
      v15 = "YES";
    }

    *buf = 136315138;
    *&buf[4] = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#ses-container,canInteract: %s", buf, 0xCu);
  }

  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  LOBYTE(connectionQueue) = [(NIServerSessionContainer *)self entitlementGranted:3];
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
  v30 = connectionQueue;
  v17 = replyCopy;
  selfCopy = self;
  v28 = v17;
  v29 = buf;
  [tokensCopy enumerateObjectsUsingBlock:&v23];
  if ([NIPlatformInfo isInternalBuild:v23])
  {
    sub_100347330(*(*&buf[8] + 40));
  }

  if ([*(*&buf[8] + 40) count])
  {
    +[NIServerFindableDeviceProxySessionManager sharedInstance];
    if (interactCopy)
      v18 = {;
      v19 = *(*&buf[8] + 40);
      processNameBestGuess = [(NIServerSessionContainer *)self processNameBestGuess];
      [v18 startBeingFindableWithDiscoveryTokens:v19 tokenGroup:processNameBestGuess];
    }

    else
      v18 = {;
      v22 = *(*&buf[8] + 40);
      processNameBestGuess = [(NIServerSessionContainer *)self processNameBestGuess];
      [v18 stopBeingFindableWithDiscoveryTokens:v22 tokenGroup:processNameBestGuess];
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

- (void)setLocalDeviceInteractableDiscoveryTokens:(id)tokens reply:(id)reply
{
  tokensCopy = tokens;
  replyCopy = reply;
  v8 = qword_1009F9820;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    signingIdentity = [(NIServerSessionContainer *)self signingIdentity];
    v10 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    *buf = 138412802;
    *&buf[4] = signingIdentity;
    *&buf[12] = 1024;
    *&buf[14] = v10;
    *&buf[18] = 2112;
    *&buf[20] = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - setLocalDeviceInteractableDiscoveryTokens. Signing identity: %@, pid: %d, session identifier: %@", buf, 0x1Cu);
  }

  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  LOBYTE(connectionQueue) = [(NIServerSessionContainer *)self entitlementGranted:3];
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
  v25 = connectionQueue;
  v13 = replyCopy;
  selfCopy = self;
  v23 = v13;
  v24 = buf;
  [tokensCopy enumerateObjectsUsingBlock:&v18];
  if ([NIPlatformInfo isInternalBuild:v18])
  {
    sub_100347330(*(*&buf[8] + 40));
  }

  v14 = +[NIServerFindableDeviceProxySessionManager sharedInstance];
  v15 = *(*&buf[8] + 40);
  processNameBestGuess = [(NIServerSessionContainer *)self processNameBestGuess];
  v17 = [v14 setFindableDiscoveryTokens:v15 tokenGroup:processNameBestGuess];

  (*(v13 + 2))(v13, v17);
  _Block_object_dispose(buf, 8);
}

- (void)setLocalDeviceDebugParameters:(id)parameters reply:(id)reply
{
  parametersCopy = parameters;
  replyCopy = reply;
  v8 = qword_1009F9820;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    signingIdentity = [(NIServerSessionContainer *)self signingIdentity];
    v10 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    *buf = 138412802;
    v20 = signingIdentity;
    v21 = 1024;
    v22 = v10;
    v23 = 2112;
    v24 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - setLocalDeviceDebugParameters:reply:. Signing identity: %@, pid: %d, session identifier: %@", buf, 0x1Cu);
  }

  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  if ([(NIServerSessionContainer *)self entitlementGranted:3])
  {
    v13 = +[NIServerFindableDeviceProxySessionManager sharedInstance];
    v14 = [v13 setLocalDeviceDebugParameters:parametersCopy];

    replyCopy[2](replyCopy, v14);
  }

  else
  {
    v17 = NSLocalizedFailureReasonErrorKey;
    v18 = @"Not allowed to configure findable local device.";
    v15 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v16 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v15];
    replyCopy[2](replyCopy, v16);

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

- (void)getInteractableDiscoveryTokens:(id)tokens
{
  tokensCopy = tokens;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    signingIdentity = [(NIServerSessionContainer *)self signingIdentity];
    v7 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    v14 = 138412802;
    v15 = signingIdentity;
    v16 = 1024;
    v17 = v7;
    v18 = 2112;
    v19 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - getInteractableDiscoveryTokens. Signing identity: %@, pid: %d, session identifier: %@", &v14, 0x1Cu);
  }

  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  v10 = objc_opt_new();
  if ([(NIServerSessionContainer *)self entitlementGranted:3])
  {
    v11 = +[NIServerFindableDeviceProxySessionManager sharedInstance];
    processNameBestGuess = [(NIServerSessionContainer *)self processNameBestGuess];
    v13 = [v11 findableDiscoveryTokensForGroup:processNameBestGuess];

    [v10 addObjectsFromArray:v13];
  }

  tokensCopy[2](tokensCopy, v10, 0);
}

- (void)getActivelyInteractingDiscoveryTokens:(id)tokens
{
  tokensCopy = tokens;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    signingIdentity = [(NIServerSessionContainer *)self signingIdentity];
    v7 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    v14 = 138412802;
    v15 = signingIdentity;
    v16 = 1024;
    v17 = v7;
    v18 = 2112;
    v19 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - getActivelyInteractingDiscoveryTokens. Signing identity: %@, pid: %d, session identifier: %@", &v14, 0x1Cu);
  }

  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  v10 = objc_opt_new();
  if ([(NIServerSessionContainer *)self entitlementGranted:3])
  {
    v11 = +[NIServerFindableDeviceProxySessionManager sharedInstance];
    processNameBestGuess = [(NIServerSessionContainer *)self processNameBestGuess];
    v13 = [v11 interactingFinderDiscoveryTokensForGroup:processNameBestGuess];

    [v10 addObjectsFromArray:v13];
  }

  tokensCopy[2](tokensCopy, v10, 0);
}

- (void)getLocalDevicePrintableState:(id)state
{
  stateCopy = state;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    signingIdentity = [(NIServerSessionContainer *)self signingIdentity];
    v7 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    *buf = 138412802;
    v19 = signingIdentity;
    v20 = 1024;
    v21 = v7;
    v22 = 2112;
    v23 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-container,XPC Command - getLocalDevicePrintableState. Signing identity: %@, pid: %d, session identifier: %@", buf, 0x1Cu);
  }

  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  if (![(NIServerSessionContainer *)self entitlementGranted:0])
  {
    v16 = NSLocalizedFailureReasonErrorKey;
    v17 = @"Not allowed to get local device state.";
    v10 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v11 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v10];

    stateCopy[2](stateCopy, 0, v11);
  }

  objc_initWeak(buf, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001CB6B8;
  v13[3] = &unk_10099C728;
  objc_copyWeak(&v15, buf);
  v14 = stateCopy;
  v12 = stateCopy;
  dispatch_async(&_dispatch_main_q, v13);

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (void)_processFindingEvent:(id)event reply:(id)reply
{
  eventCopy = event;
  replyCopy = reply;
  v8 = qword_1009F9820;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    signingIdentity = [(NIServerSessionContainer *)self signingIdentity];
    v14 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    v16 = 138412802;
    v17 = signingIdentity;
    v18 = 1024;
    v19 = v14;
    v20 = 2112;
    v21 = sessionIdentifier;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "#ses-container,XPC Command - _processFindingEvent. Signing identity: %@, pid: %d, session identifier: %@", &v16, 0x1Cu);
  }

  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  specializedSession = self->_specializedSession;
  if (specializedSession)
  {
    v11 = [(NIServerBaseSession *)specializedSession _processFindingEvent:eventCopy];
    replyCopy[2](replyCopy, v11);
  }

  else
  {
    v12 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
    replyCopy[2](replyCopy, v12);

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A59A4();
    }
  }
}

- (void)_processSystemEvent:(id)event reply:(id)reply
{
  eventCopy = event;
  replyCopy = reply;
  v8 = qword_1009F9820;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    signingIdentity = [(NIServerSessionContainer *)self signingIdentity];
    v14 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    v16 = 138412802;
    v17 = signingIdentity;
    v18 = 1024;
    v19 = v14;
    v20 = 2112;
    v21 = sessionIdentifier;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "#ses-container,XPC Command - _processSystemEvent. Signing identity: %@, pid: %d, session identifier: %@", &v16, 0x1Cu);
  }

  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  specializedSession = self->_specializedSession;
  if (specializedSession)
  {
    v11 = [(NIServerBaseSession *)specializedSession _processSystemEvent:eventCopy];
    replyCopy[2](replyCopy, v11);
  }

  else
  {
    v12 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
    replyCopy[2](replyCopy, v12);

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

    uwbProvider = [(NIServerSessionContainer *)self uwbProvider];
    deviceCapabilities = [uwbProvider deviceCapabilities];

    wifiProvider = [(NIServerSessionContainer *)self wifiProvider];
    if ([wifiProvider deviceCapabilities])
    {
      v13 = [(NIServerSessionContainer *)self entitlementGranted:2];
    }

    else
    {
      v13 = 0;
    }

    v14 = self->_bleProvider;
    connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
    v16 = self->_bleProviderSessionIRK;
    v17 = self->_bleProviderSessionIdentifier;
    _getDiscoveryTokenFlags = [(NIServerSessionContainer *)self _getDiscoveryTokenFlags];
    v19 = 256;
    if (!v13)
    {
      v19 = 0;
    }

    [(PRBLEDiscoverySession *)v14 activateWithDelegate:self delegateQueue:connectionQueue sessionIRK:v16 sessionIdentifier:v17 controlFlags:v19 | deviceCapabilities & 1 tokenFlags:_getDiscoveryTokenFlags];
  }
}

- (unsigned)_getDiscoveryTokenFlags
{
  longRangeEnabled = [(NIServerSessionContainer *)self longRangeEnabled];
  if ([(NIServerSessionContainer *)self requiresBiasCorrection])
  {
    longRangeEnabled |= 2u;
  }

  if ([(NIServerSessionContainer *)self requiresLargeRegions])
  {
    return longRangeEnabled | 4;
  }

  else
  {
    return longRangeEnabled;
  }
}

- (id)_augmentDiscoveryTokenWithNbUwbAcquisitionChannel:(id)channel
{
  channelCopy = channel;
  if (channelCopy)
  {
    discoveryToken = [(NIServerSessionContainer *)self discoveryToken];
    getIRK = [discoveryToken getIRK];
    v7 = [NSNumber numberWithInt:sub_100347044(5u, 0xBu, getIRK)];

    v11 = &off_1009C3E60;
    v12 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v9 = sub_10030079C(v8, channelCopy);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_augmentDiscoveryTokenWithMmsNumFragments:(id)fragments
{
  fragmentsCopy = fragments;
  if (fragmentsCopy)
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
    v9 = sub_10030079C(v8, fragmentsCopy);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_augmentDiscoveryTokenWithDeviceCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  if (capabilitiesCopy)
  {
    _getCapabilities = [(NIServerSessionContainer *)self _getCapabilities];
    v6 = [_getCapabilities objectForKey:@"UWBSupportedPlatform"];
    bOOLValue = [v6 BOOLValue];

    v8 = [_getCapabilities objectForKey:@"WifiSupportedPlatform"];
    bOOLValue2 = [v8 BOOLValue];

    v10 = [_getCapabilities objectForKey:@"UWBSupportedPlatformPDOA"];
    bOOLValue3 = [v10 BOOLValue];

    v12 = [_getCapabilities objectForKey:@"UWBSupportedPlatformSyntheticAperture"];
    bOOLValue4 = [v12 BOOLValue];

    v14 = [_getCapabilities objectForKey:@"UWBSupportedPlatformExtendedDistance"];
    bOOLValue5 = [v14 BOOLValue];

    v16 = [[NIDeviceCapabilities alloc] initWithFineRangingSupport:bOOLValue coarseRangingSupport:bOOLValue2 aoaSupport:bOOLValue3 extendedDistanceMeasurementSupport:bOOLValue5 syntheticApertureSupport:bOOLValue4];
    v21 = &off_1009C3E90;
    v17 = [NSNumber numberWithUnsignedInt:[(NIDeviceCapabilities *)v16 toBitmap]];
    v22 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];

    v19 = sub_10030079C(v18, capabilitiesCopy);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)_handleSpecializedSessionInvalidation:(id)invalidation
{
  invalidationCopy = invalidation;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A5CB4();
  }

  objc_initWeak(&location, self);
  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CC894;
  block[3] = &unk_10098B940;
  objc_copyWeak(&v9, &location);
  v8 = invalidationCopy;
  v6 = invalidationCopy;
  dispatch_async(connectionQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_handleSpecializedSessionBackgroundSupportUpdate:(BOOL)update
{
  updateCopy = update;
  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = updateCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#ses-container,Specialized session updated background support: %d", &buf, 8u);
  }

  if (updateCopy)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  self->_specializedSessionBackgroundSupport = v7;
  objc_initWeak(&buf, self);
  connectionQueue2 = [(NIServerSessionContainer *)self connectionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CCAA0;
  block[3] = &unk_10098AB18;
  objc_copyWeak(&v10, &buf);
  dispatch_async(connectionQueue2, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&buf);
}

- (void)_updateClientAppVisibilityInterruption
{
  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  _isBackgroundOperationAllowed = [(NIServerSessionContainer *)self _isBackgroundOperationAllowed];
  *v17 = 0;
  v5 = sub_100009978(&self->_interruptionsMap.__table_.__bucket_list_.__ptr_, v17);
  v6 = (self->_latestAppState == 4) & (_isBackgroundOperationAllowed ^ 1);
  v7 = qword_1009F9820;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    signingIdentity = [(NIServerSessionContainer *)self signingIdentity];
    v9 = [(NIServerSessionContainer *)self pid];
    sessionIdentifier = self->_sessionIdentifier;
    v11 = sub_100208CC4(self->_latestAppState);
    v12 = v11;
    v13 = "N";
    *v17 = 138413826;
    *&v17[4] = signingIdentity;
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
    if (_isBackgroundOperationAllowed)
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

- (void)setAppStateMonitor:(id)monitor
{
  monitorCopy = monitor;
  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  objc_storeStrong(&self->_appStateMonitor, monitor);
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
      bundleIdentifier = [v11 bundleIdentifier];
      v14 = self->_bundleIdentifier;
      self->_bundleIdentifier = bundleIdentifier;

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
  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  if ([(PRAppStateMonitor *)self->_appStateMonitor isUIBackgroundModeEnabled]&& self->_specializedSessionBackgroundSupport != 2)
  {
    v5 = qword_1009F9820;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      monitoredProcessName = [(PRAppStateMonitor *)self->_appStateMonitor monitoredProcessName];
      specializedSessionBackgroundSupport = self->_specializedSessionBackgroundSupport;
      v13 = 138412546;
      v14 = monitoredProcessName;
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
      monitoredProcessName2 = [(PRAppStateMonitor *)self->_appStateMonitor monitoredProcessName];
      v13 = 138412290;
      v14 = monitoredProcessName2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-container,BG operation allowed for process %@. Process is granted entitlement", &v13, 0xCu);
    }

LABEL_11:
    v9 = 1;
    goto LABEL_12;
  }

  if (v6)
  {
    monitoredProcessName3 = [(PRAppStateMonitor *)self->_appStateMonitor monitoredProcessName];
    v13 = 138412290;
    v14 = monitoredProcessName3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-container,BG operation NOT allowed for process %@", &v13, 0xCu);
  }

  v9 = 0;
LABEL_12:

  return v9;
}

- (void)_acquireClientMessageHandlingRuntimeAssertionIfNecessary
{
  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

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

  processNameBestGuess = [(NIServerSessionContainer *)self processNameBestGuess];
  if ([&off_1009C3BA8 containsObject:processNameBestGuess])
  {
    v4 = 1;
  }

  else
  {
    monitoredProcessName = [(PRAppStateMonitor *)self->_appStateMonitor monitoredProcessName];
    v4 = [&off_1009C3BC0 containsObject:monitoredProcessName];
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

  _isClientInternalTool = [(NIServerSessionContainer *)self _isClientInternalTool];
  v4 = +[NIPlatformInfo isInternalBuild];
  [@"com.apple.nearbyd" UTF8String];
  v5 = os_variant_allows_internal_security_policies();
  if ([(PRAppStateMonitor *)self->_appStateMonitor isDaemon])
  {
    return 1;
  }

  v6 = 1;
  if (![(PRAppStateMonitor *)self->_appStateMonitor isXPCService]&& (_isClientInternalTool & (v4 | v5) & 1) == 0)
  {
    processNameBestGuess = [(NIServerSessionContainer *)self processNameBestGuess];
    v6 = [&off_1009C3BD8 containsObject:processNameBestGuess];
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

  processNameBestGuess = [(NIServerSessionContainer *)self processNameBestGuess];
  v4 = [&off_1009C3BF0 containsObject:processNameBestGuess];

  return v4;
}

- (BOOL)_isClientOnSystemShutdownAllowlist
{
  if (!self->_appStateMonitor)
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"NIServerSessionContainer.mm" lineNumber:1925 description:@"AppStateMonitor is required for to check if client is on system shutdown entitlement allowlist."];
  }

  _isClientInternalTool = [(NIServerSessionContainer *)self _isClientInternalTool];
  v4 = +[NIPlatformInfo isInternalBuild];
  [@"com.apple.nearbyd" UTF8String];
  v5 = os_variant_allows_internal_security_policies();
  launchdJobLabel = [(PRAppStateMonitor *)self->_appStateMonitor launchdJobLabel];
  if ([launchdJobLabel isEqualToString:@"com.apple.SpringBoard"])
  {
    v7 = 1;
  }

  else
  {
    launchdJobLabel2 = [(PRAppStateMonitor *)self->_appStateMonitor launchdJobLabel];
    if ([launchdJobLabel2 isEqualToString:@"com.apple.Carousel"])
    {
      v7 = 1;
    }

    else
    {
      v7 = _isClientInternalTool & (v4 | v5);
    }
  }

  return v7;
}

- (void)_populateClientEntitlements
{
  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  if (!self->_appStateMonitor)
  {
    v26 = +[NSAssertionHandler currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"NIServerSessionContainer.mm" lineNumber:1942 description:@"AppStateMonitor is required for populating client entitlements."];
  }

  _isClientInternalTool = [(NIServerSessionContainer *)self _isClientInternalTool];
  _isClientOnGeneralEntitlementAllowlist = [(NIServerSessionContainer *)self _isClientOnGeneralEntitlementAllowlist];
  _isClientOnSystemShutdownAllowlist = [(NIServerSessionContainer *)self _isClientOnSystemShutdownAllowlist];
  v7 = qword_1009F9820;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    processNameBestGuess = [(NIServerSessionContainer *)self processNameBestGuess];
    bundleIdentifier = self->_bundleIdentifier;
    launchdJobLabel = [(PRAppStateMonitor *)self->_appStateMonitor launchdJobLabel];
    monitoredProcessName = [(PRAppStateMonitor *)self->_appStateMonitor monitoredProcessName];
    signingIdentity = [(NIServerSessionContainer *)self signingIdentity];
    *buf = 138414082;
    v29 = processNameBestGuess;
    v30 = 2112;
    v31 = bundleIdentifier;
    v32 = 2112;
    *v33 = launchdJobLabel;
    *&v33[8] = 2112;
    *&v33[10] = monitoredProcessName;
    v34 = 2112;
    v35 = signingIdentity;
    v36 = 1024;
    v37 = _isClientInternalTool;
    v38 = 1024;
    v39 = _isClientOnGeneralEntitlementAllowlist;
    v40 = 1024;
    v41 = _isClientOnSystemShutdownAllowlist;
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

    v16 = _isClientOnGeneralEntitlementAllowlist;
    if (v13 >= 3)
    {
      v16 = _isClientOnGeneralEntitlementAllowlist;
      if (v13 != 5)
      {
        if (v13 != 6)
        {
          goto LABEL_14;
        }

        v16 = _isClientOnSystemShutdownAllowlist;
      }
    }

    self->_clientEntitlementsArray.__elems_[v13] &= v16;
LABEL_14:
    if (+[NIPlatformInfo isInternalBuild])
    {
      signingIdentity2 = [(NIServerSessionContainer *)self signingIdentity];
      if ([signingIdentity2 isEqualToString:@"com.apple.dt.xctest.tool"])
      {

LABEL_18:
        self->_clientEntitlementsArray.__elems_[v13] = 1;
        goto LABEL_19;
      }

      signingIdentity3 = [(NIServerSessionContainer *)self signingIdentity];
      v19 = [signingIdentity3 isEqualToString:@"com.apple.xctest"];

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
      processNameBestGuess2 = [(NIServerSessionContainer *)self processNameBestGuess];
      v25 = self->_clientEntitlementsArray.__elems_[v13];
      *buf = 138413058;
      v29 = processNameBestGuess2;
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
    launchdJobLabel2 = bundleIdentifier;
  }

  else
  {
    launchdJobLabel = [(PRAppStateMonitor *)self->_appStateMonitor launchdJobLabel];

    appStateMonitor = self->_appStateMonitor;
    if (launchdJobLabel)
    {
      launchdJobLabel2 = [(PRAppStateMonitor *)appStateMonitor launchdJobLabel];
    }

    else
    {
      monitoredProcessName = [(PRAppStateMonitor *)appStateMonitor monitoredProcessName];

      if (monitoredProcessName)
      {
        launchdJobLabel2 = [(PRAppStateMonitor *)self->_appStateMonitor monitoredProcessName];
      }

      else
      {
        launchdJobLabel2 = 0;
      }
    }
  }

  return launchdJobLabel2;
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
    signingIdentity = [(NIServerSessionContainer *)self signingIdentity];
    v9 = signingIdentity;
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
    v16 = signingIdentity;
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
  uwbProvider = [(NIServerSessionContainer *)self uwbProvider];

  if (!uwbProvider)
  {
    sub_1004A5D94();
  }

  return [(NIServerSessionContainer *)self uwbProvider];
}

- (id)wifiResource
{
  wifiProvider = [(NIServerSessionContainer *)self wifiProvider];

  if (!wifiProvider)
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

- (BOOL)entitlementGranted:(int)granted
{
  os_unfair_lock_lock(&self->_entitlementsLock);
  if (granted >= 0xB)
  {
    v6 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004A5EC4(granted, v6);
    }

    v5 = 0;
  }

  else
  {
    v5 = self->_clientEntitlementsArray.__elems_[granted];
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
  discoveryToken = [(NIServerSessionContainer *)self discoveryToken];
  descriptionInternal = [discoveryToken descriptionInternal];
  v11 = [NSString stringWithFormat:@"Identifier: %@. Token: %@. Entitlements: 0x%llX%s. Assertions: %@", sessionIdentifier, descriptionInternal, v5, "", self->_assertionManager];
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
  lastConfiguration = [(NIServerBaseSession *)self->_specializedSession lastConfiguration];
  v20 = [NSString stringWithFormat:@"Configuration: %@", lastConfiguration];
  [v18 addObject:v20];

  v21 = v31[5];
  specializedSession = self->_specializedSession;
  v23 = [NSString stringWithFormat:@"Specialized session: %@", objc_opt_class()];
  [v21 addObject:v23];

  printableState = [(NIServerBaseSession *)self->_specializedSession printableState];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1001CE4F4;
  v27[3] = &unk_10099C778;
  v27[4] = &v30;
  [printableState enumerateObjectsUsingBlock:v27];
  v25 = v31[5];

  _Block_object_dispose(&v30, 8);

  return v25;
}

- (void)didFailWithErrorCode:(int64_t)code errorString:(const void *)string
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004A5F3C();
  }
}

- (void)didReceiveNewSolution:(const void *)solution
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004A5F70();
  }
}

- (void)didReceiveSessionStartNotification:(const void *)notification
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004A5FA4();
  }
}

- (void)didReceiveRemoteData:(const void *)data
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004A5FD8();
  }
}

- (void)serviceRequestDidUpdateStatus:(ServiceRequestStatusUpdate)status
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004A600C();
  }
}

- (void)rangingServiceDidUpdateState:(int)state cause:(int)cause
{
  uwbProvider = [(NIServerSessionContainer *)self uwbProvider];
  getQueue = [uwbProvider getQueue];
  dispatch_assert_queue_V2(getQueue);

  objc_initWeak(&location, self);
  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CE7EC;
  block[3] = &unk_10098ABD8;
  objc_copyWeak(&v11, &location);
  stateCopy = state;
  causeCopy = cause;
  dispatch_async(connectionQueue, block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)didFinishActivatingWithDiscoveryTokenData:(id)data error:(id)error
{
  dataCopy = data;
  errorCopy = error;
  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  if (errorCopy)
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

  if (!dataCopy)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A60A8();
    }

    goto LABEL_4;
  }

  objc_storeStrong(&self->_localDiscoveryToken, data);
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

  v15 = [(NIServerSessionContainer *)self _augmentDiscoveryTokenWithDeviceCapabilities:dataCopy];
  localDiscoveryToken = self->_localDiscoveryToken;
  self->_localDiscoveryToken = v15;

  v17 = [(NIServerSessionContainer *)self _augmentDiscoveryToken:self->_localDiscoveryToken withHomeAnchorVariant:v14];
  v18 = self->_localDiscoveryToken;
  self->_localDiscoveryToken = v17;

  _getCapabilities = [(NIServerSessionContainer *)self _getCapabilities];
  v20 = [_getCapabilities objectForKey:@"UWBSupportedPlatformExtendedDistance"];
  bOOLValue = [v20 BOOLValue];

  if (bOOLValue)
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
  discoveryToken = [(NIServerSessionContainer *)self discoveryToken];
  [bleProvider didUpdateLocalDiscoveryToken:discoveryToken];

LABEL_16:
}

- (void)didDiscoverDevice:(id)device
{
  deviceCopy = device;
  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  [(NIServerBaseSession *)self->_specializedSession deviceDiscovered:deviceCopy];
}

- (void)discoveredDevice:(id)device didUpdate:(id)update
{
  deviceCopy = device;
  updateCopy = update;
  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  [(NIServerBaseSession *)self->_specializedSession device:deviceCopy rediscovered:updateCopy];
}

- (void)didLoseDevice:(id)device
{
  deviceCopy = device;
  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  [(NIServerBaseSession *)self->_specializedSession deviceLost:deviceCopy];
}

- (void)bluetoothDidChangeState:(int64_t)state
{
  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  if (state <= 2)
  {
    if (state == 1)
    {
      goto LABEL_10;
    }

    if (state == 2 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004A60E4();
    }
  }

  else
  {
    if (state != 3)
    {
      if (state != 4)
      {
        if (state == 5)
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
  [(NIServerSessionContainer *)self setLatestBluetoothState:state];
}

- (void)bluetoothServiceInterrupted
{
  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  [(NIServerSessionContainer *)self _handleBluetoothBecameUnavailable];
}

- (void)bluetoothAdvertisingAddressChanged:(unint64_t)changed
{
  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  specializedSession = self->_specializedSession;
  if (objc_opt_respondsToSelector())
  {
    v7 = self->_specializedSession;

    [(NIServerBaseSession *)v7 bluetoothAdvertisingAddressChanged:changed];
  }
}

- (void)_setContainerState:(unsigned __int8)state
{
  if (self->_latestSessionContainerState != state)
  {
    v5 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_1001CE4C4(state);
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

    self->_latestSessionContainerState = state;
    self->_timeOfLatestContainerState = sub_100005288();
  }
}

- (basic_string<char,)_interruptionsMapAsString
{
  v2 = v1;
  connectionQueue = [v1 connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  sub_100193120(v10);
  sub_10000EA44(&v11, "[", 1);
  for (i = v2[14]; i; i = *i)
  {
    v5 = sub_10036B2EC(i[2]);
    uTF8String = [v5 UTF8String];
    v7 = strlen(uTF8String);
    sub_10000EA44(&v11, uTF8String, v7);
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

- (void)_dumpInterruptionsMapWithDebugString:(id)string
{
  stringCopy = string;
  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

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

    v14 = stringCopy;
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

- (void)interruptSessionWithReason:(int64_t)reason monotonicTimeSeconds:(double)seconds
{
  reasonCopy = reason;
  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  v8 = qword_1009F9820;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    sessionIdentifier = self->_sessionIdentifier;
    v10 = sub_10036B2EC(reason);
    *buf = 138412802;
    *&buf[4] = sessionIdentifier;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    *&buf[22] = 2048;
    secondsCopy = seconds;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ses-container,#interrupt Interrupt session %@ with reason: %@. ContTime: %f", buf, 0x20u);
  }

  [(NIServerSessionContainer *)self _setContainerState:7];
  if (sub_100009978(&self->_interruptionsMap.__table_.__bucket_list_.__ptr_, &reasonCopy))
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
    *buf = reasonCopy;
    *&buf[8] = reasonCopy;
    *&buf[16] = seconds;
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
    [(NIServerAnalyticsManager *)self->_analyticsManager sessionInterruptedWithTimestamp:seconds];
    remote = [(NIServerSessionContainer *)self remote];
    [remote uwbSessionInterruptedWithReason:reasonCopy timestamp:seconds];
  }
}

- (void)interruptionReasonEnded:(int64_t)ended monotonicTimeSeconds:(double)seconds
{
  endedCopy = ended;
  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  v8 = qword_1009F9820;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    sessionIdentifier = self->_sessionIdentifier;
    v10 = sub_10036B2EC(ended);
    *buf = 138412802;
    v15 = sessionIdentifier;
    v16 = 2112;
    v17 = v10;
    v18 = 2048;
    secondsCopy = seconds;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ses-container,#interrupt Session %@ interruption ended. Reason: %@. ContTime: %f", buf, 0x20u);
  }

  v11 = sub_100009978(&self->_interruptionsMap.__table_.__bucket_list_.__ptr_, &endedCopy);
  if (v11)
  {
    sub_1000223BC(&self->_interruptionsMap.__table_.__bucket_list_.__ptr_, v11);
    [(NIServerSessionContainer *)self _dumpInterruptionsMapWithDebugString:@"interruptionEnded"];
    remote = [(NIServerSessionContainer *)self remote];
    [remote uwbSessionInterruptionReasonEnded:endedCopy timestamp:seconds];
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

  devicePresenceResource = [(NIServerSessionContainer *)self devicePresenceResource];
  internalObserver = [devicePresenceResource internalObserver];
  [internalObserver stopLeechingForConsumer:self];

  devicePresenceResource2 = [(NIServerSessionContainer *)self devicePresenceResource];
  internalObserver2 = [devicePresenceResource2 internalObserver];
  [internalObserver2 unregisterForInternalBluetoothSamples:self];

  [(NIServerBaseSession *)self->_specializedSession invalidate];
  specializedSession = self->_specializedSession;
  self->_specializedSession = 0;

  [(PRBLEDiscoverySession *)self->_bleProvider invalidate];
  bleProvider = self->_bleProvider;
  self->_bleProvider = 0;

  appStateMonitor = [(NIServerSessionContainer *)self appStateMonitor];
  [appStateMonitor removeObserver:self];

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

- (id)_fatalErrorForUwbServiceState:(int)state cause:(int)cause
{
  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  v8 = qword_1009F9820;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    sessionIdentifier = self->_sessionIdentifier;
    sub_100004A08(v18, off_10099C8D0[state]);
    v10 = v19;
    v11 = v18[0];
    sub_100004A08(__p, off_10099C8F8[cause]);
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
  if (state == 3 && (cause - 5) <= 1)
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
  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

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

- (BOOL)_updateInterruptionForUWBSystemOffWithCause:(int)cause
{
  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  v6 = 0;
  v7 = 5;
  v8 = sub_100005288();
  if (cause > 2)
  {
    switch(cause)
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

  if (cause)
  {
    if (cause == 1)
    {
LABEL_15:
      [(NIServerSessionContainer *)self interruptSessionWithReason:v7 monotonicTimeSeconds:v8];
      return 1;
    }

    if (cause == 2)
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
  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  v4 = sub_100005288();

  [(NIServerSessionContainer *)self interruptSessionWithReason:4 monotonicTimeSeconds:v4];
}

- (void)_handleBluetoothBecameUnavailable
{
  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  v4 = sub_100005288();

  [(NIServerSessionContainer *)self interruptSessionWithReason:9 monotonicTimeSeconds:v4];
}

- (void)_handleBluetoothBecameAvailable
{
  connectionQueue = [(NIServerSessionContainer *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  v4 = sub_100005288();

  [(NIServerSessionContainer *)self interruptionReasonEnded:9 monotonicTimeSeconds:v4];
}

- (void)monitoredApp:(int)app didChangeState:(int)state
{
  dispatch_assert_queue_V2(self->_connectionQueue);
  v7 = qword_1009F9820;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = sub_100208CC4(state);
    v10[0] = 67109378;
    v10[1] = app;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-container,Monitored app with pid: %d did change state: %@", v10, 0x12u);
  }

  if (!state)
  {
    sub_1004A62B8();
  }

  v9 = sub_100005288();
  self->_latestAppState = state;
  switch(state)
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