@interface NIServerHomeDeviceSession
- (BOOL)_isWifiRangingAllowed;
- (BOOL)_requiresScreenOn;
- (BOOL)_validateDiscoveryTokenDict:(id)dict;
- (BOOL)isInterestedInSamplesForDevice:(id)device;
- (BOOL)supportsDevicePresence;
- (BOOL)updateConfiguration:(id)configuration;
- (NIServerHomeDeviceSession)initWithResourcesManager:(id)manager configuration:(id)configuration error:(id *)error;
- (id).cxx_construct;
- (id)_addPeers:(id)peers;
- (id)_triggerInitiatorRanging;
- (id)addObject:(id)object;
- (id)configure;
- (id)objectFromIdentifier:(unint64_t)identifier;
- (id)pauseWithSource:(int64_t)source;
- (id)printableState;
- (id)removeObject:(id)object;
- (id)run;
- (int)_intentPredictorConfigFromDiscoveryToken:(id)token;
- (int)_intentPredictorConfigFromModelString:(id)string;
- (int)_magneticFieldStrengthCheckOptionFromDiscoveryToken:(id)token;
- (int64_t)_regionCategoryFromDiscoveryToken:(id)token;
- (int64_t)_regionCategoryFromModelString:(id)string;
- (int64_t)_roseMotionStateToNIMotionActivityState:(int)state;
- (shared_ptr<WiFiRanging::Session>)_buildWifiSession;
- (unsigned)_flagsFromDiscoveryToken:(id)token;
- (unsigned)_homeAnchorVariantFromDiscoveryToken:(id)token;
- (void)_calculateMagneticFieldBias;
- (void)_handleBackoffManagerRecommendation:(int)recommendation machContinuousTimeSec:(double)sec screenState:(int)state;
- (void)_handleScreenStateChange:(int)change;
- (void)_handleUWBSystemStateReadinessUpdate:(BOOL)update;
- (void)_handleWifiRangingAvailableUpdate:(BOOL)update;
- (void)_notifyPeerRemoval:(id)removal withReason:(unint64_t)reason;
- (void)_pauseWifiRanging;
- (void)_peerHungUp:(unint64_t)up;
- (void)_removePeerObject:(id)object uwbIdentifier:(unint64_t)identifier withReason:(unint64_t)reason;
- (void)_resumeWifiRanging;
- (void)_roseSession:(shared_ptr<rose:(int)session :objects::RoseBaseSession>)a3 invalidatedWithReason:;
- (void)_sendHangupSignalForSession:(shared_ptr<rose::objects::GRSession>)session;
- (void)_stopWiFiSessionsWithReason:(id)reason;
- (void)_updateAnalyticsAboutRangingRateForDevice:(id)device responseSkipRatio:(float)ratio cycleRate:(duration<long)long;
- (void)adjustResponderThrottleRateIfNeeded:(id)needed object:(id)object;
- (void)bluetoothAdvertisingAddressChanged:(unint64_t)changed;
- (void)consumeBluetoothSample:(id)sample;
- (void)dealloc;
- (void)device:(id)device rediscovered:(id)rediscovered;
- (void)deviceDiscovered:(id)discovered;
- (void)deviceLost:(id)lost;
- (void)didReceiveDeviceMotion:(const void *)motion;
- (void)didReceiveMagnetometerData:(NIServerHomeDeviceSession *)self at:(SEL)at;
- (void)didReceiveNewSolution:(const void *)solution;
- (void)didReceiveRemoteData:(const void *)data;
- (void)didUpdateMinimumPreferredUpdateRate:(int64_t)rate;
- (void)invalidate;
- (void)peerInactivityPeriodExceeded:(id)exceeded;
- (void)responderServiceTicketId:(unsigned __int16)id didChangeRangingUpdateRate:(int)rate newThrottleRate:(float)throttleRate prevThrottleRate:(float)prevThrottleRate effectiveSinceCycleInde:(int)inde;
- (void)responderSessionDidInvalidatedWithReason:(int)reason serviceTicketId:(unsigned __int16)id;
- (void)setupBackoffResumeManager;
- (void)updatesEngine:(id)engine didUpdateNearbyObjects:(id)objects;
- (void)updatesEngine:(id)engine object:(id)object didUpdateRegion:(id)region previousRegion:(id)previousRegion regionTransitionSuppressed:(BOOL)suppressed;
@end

@implementation NIServerHomeDeviceSession

- (NIServerHomeDeviceSession)initWithResourcesManager:(id)manager configuration:(id)configuration error:(id *)error
{
  managerCopy = manager;
  configurationCopy = configuration;
  v11 = objc_opt_class();
  if (v11 != objc_opt_class())
  {
    v26 = +[NSAssertionHandler currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"NIServerHomeDeviceSession.mm" lineNumber:476 description:@"NIServerHomeDeviceSession given invalid configuration."];
  }

  serverSessionIdentifier = [managerCopy serverSessionIdentifier];

  if (!serverSessionIdentifier)
  {
    v27 = +[NSAssertionHandler currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"NIServerHomeDeviceSession.mm" lineNumber:477 description:{@"Invalid parameter not satisfying: %@", @"resourcesManager.serverSessionIdentifier"}];
  }

  v29.receiver = self;
  v29.super_class = NIServerHomeDeviceSession;
  v13 = [(NIServerBaseSession *)&v29 initWithResourcesManager:managerCopy configuration:configurationCopy error:error];
  if (v13)
  {
    uwbResource = [managerCopy uwbResource];
    v15 = *(v13 + 29);
    *(v13 + 29) = uwbResource;

    if (managerCopy)
    {
      [managerCopy protobufLogger];
      v16 = v28;
    }

    else
    {
      v16 = 0uLL;
    }

    v17 = *(v13 + 7);
    *(v13 + 3) = v16;
    if (v17)
    {
      sub_10000AD84(v17);
    }

    *(v13 + 200) = 100;
    clientConnectionQueue = [managerCopy clientConnectionQueue];
    v19 = *(v13 + 10);
    *(v13 + 10) = clientConnectionQueue;

    v20 = [configurationCopy copy];
    v21 = *(v13 + 90);
    *(v13 + 90) = v20;

    serverSessionIdentifier2 = [managerCopy serverSessionIdentifier];
    uUIDString = [serverSessionIdentifier2 UUIDString];
    v24 = *(v13 + 11);
    *(v13 + 11) = uUIDString;

    *(v13 + 96) = 0;
    *(v13 + 26) = 3;
    operator new();
  }

  return 0;
}

- (id)configure
{
  dispatch_assert_queue_V2(self->_clientQueue);
  if (!self->_configuration)
  {
    sub_1004AE80C();
  }

  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    configuration = self->_configuration;
    *buf = 138412290;
    v60 = configuration;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-home,Configure. Configuration given: %@", buf, 0xCu);
  }

  v5 = +[NSUserDefaults standardUserDefaults];
  if ([v5 BOOLForKey:@"NIHomeDisable"])
  {
    v6 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "#ses-home,NIHomeDisable set in defaults. Skip configuring session";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 2u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (self->_isRunning)
  {
    v6 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "#ses-home,Session is running, skip re-configure";
      goto LABEL_10;
    }

LABEL_11:
    v8 = 0;
    goto LABEL_58;
  }

  v8 = 232;
  currentServiceState = [(PRUWBServiceProviding *)self->_uwbResource currentServiceState];
  v10 = 1;
  if (currentServiceState != 1)
  {
    v10 = [(PRUWBServiceProviding *)self->_uwbResource currentServiceState]== 2;
  }

  self->_uwbSystemAvailable = v10;
  self->_shouldHandleUWBStateReadinessUpdates = 1;
  [(NIServerHomeDeviceSession *)self setupBackoffResumeManager];
  v55.receiver = self;
  v55.super_class = NIServerHomeDeviceSession;
  resourcesManager = [(NIServerBaseSession *)&v55 resourcesManager];
  if (!self->_updatesEngine)
  {
    v12 = [NINearbyUpdatesEngine alloc];
    v13 = self->_configuration;
    clientQueue = self->_clientQueue;
    analytics = [resourcesManager analytics];
    cntrl = self->_pbLogger.__cntrl_;
    ptr = self->_pbLogger.__ptr_;
    v54 = cntrl;
    if (cntrl)
    {
      atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
    }

    v52 = 0;
    v17 = [(NINearbyUpdatesEngine *)v12 initWithConfiguration:v13 queue:clientQueue delegate:self dataSource:self analyticsManager:analytics protobufLogger:&ptr error:&v52];
    v8 = v52;
    updatesEngine = self->_updatesEngine;
    self->_updatesEngine = v17;

    if (v54)
    {
      sub_10000AD84(v54);
    }

    if (!self->_updatesEngine)
    {
      goto LABEL_57;
    }
  }

  if (![(NIHomeDeviceConfiguration *)self->_configuration allowedDevices])
  {
    v66 = NSLocalizedDescriptionKey;
    v67 = @"NIRelationshipSpecifierNone is not a valid relationship specifier for this configuration.";
    v20 = [NSDictionary dictionaryWithObjects:&v67 forKeys:&v66 count:1];
    v8 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:v20];
    goto LABEL_56;
  }

  sessionKey = [(NIHomeDeviceConfiguration *)self->_configuration sessionKey];
  v20 = sessionKey;
  if (sessionKey && [sessionKey length] != 16)
  {
    v25 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"sessionKey has invalid length. Expected: %d bytes. Got: %lu", 16, [v20 length]);
    v64 = NSLocalizedDescriptionKey;
    v65 = v25;
    v26 = [NSDictionary dictionaryWithObjects:&v65 forKeys:&v64 count:1];
    v8 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:v26];

    goto LABEL_56;
  }

  if ([(NIHomeDeviceConfiguration *)self->_configuration isAnchor]|| ![(NIHomeDeviceConfiguration *)self->_configuration antennaDiversityOverride])
  {
    v23 = *(sub_1000054A8() + 144);
    if ([(NIHomeDeviceConfiguration *)self->_configuration isAnchor])
    {
      self->_currentSessionRole = 0;
      if (!self->_initiatorSession.__ptr_ && self->_uwbSystemAvailable)
      {
        [(NIServerHomeDeviceSession *)self _prepareServiceRequestWithConfig:sub_10041C974(v23)];
        if ((v61 & 1) == 0)
        {
          v42 = [NSString stringWithFormat:@"Unable to prepare service request."];
          v57 = NSLocalizedDescriptionKey;
          v58 = v42;
          v43 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
          v8 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v43];

          goto LABEL_56;
        }

        [(NIServerHomeDeviceSession *)self _buildRoseSession:buf];
        if (v50 && (*(v50 + 754) & 1) != 0)
        {
          v44 = v51;
          if (v51)
          {
            atomic_fetch_add_explicit(v51 + 1, 1uLL, memory_order_relaxed);
          }

          v45 = self->_initiatorSession.__cntrl_;
          self->_initiatorSession.__ptr_ = v50;
          self->_initiatorSession.__cntrl_ = v44;
          if (v45)
          {
            sub_10000AD84(v45);
          }

          v24 = 1;
        }

        else
        {
          v8 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:0];
          v24 = 0;
        }

        if (v51)
        {
          sub_10000AD84(v51);
        }

        if ((v24 & 1) == 0)
        {
          goto LABEL_56;
        }
      }
    }

    else
    {
      self->_currentSessionRole = 1;
    }

    v27 = sub_10041C8F0(v23);
    v28 = 10;
    if (!v27)
    {
      v28 = 0;
    }

    self->_recommendedProcessingOptions.regionSizeCategory = v28;
    v29 = [v5 objectForKey:@"NIHomeLocalRegionSizeRecommendationOverride"];
    v30 = v29 == 0;

    if (v30)
    {
LABEL_46:
      v33 = objc_alloc_init(NSMutableArray);
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      monitoredRegions = [(NIHomeDeviceConfiguration *)self->_configuration monitoredRegions];
      v35 = [monitoredRegions countByEnumeratingWithState:&v46 objects:v56 count:16];
      if (v35)
      {
        v36 = *v47;
        do
        {
          for (i = 0; i != v35; i = i + 1)
          {
            if (*v47 != v36)
            {
              objc_enumerationMutation(monitoredRegions);
            }

            v38 = *(*(&v46 + 1) + 8 * i);
            if (![v38 regionSizeCategory])
            {
              [v33 addObject:v38];
            }
          }

          v35 = [monitoredRegions countByEnumeratingWithState:&v46 objects:v56 count:16];
        }

        while (v35);
      }

      nominalCycleRate = [(NIServerHomeDeviceSession *)self nominalCycleRate];
      v40 = [v33 copy];
      sub_10026C698(&self->_handoffCAManager, v40, nominalCycleRate);

      v8 = 0;
      goto LABEL_56;
    }

    v31 = [v5 stringForKey:@"NIHomeLocalRegionSizeRecommendationOverride"];
    if ([v31 isEqualToString:@"Default"])
    {
      v32 = 0;
    }

    else
    {
      if (![v31 isEqualToString:@"Large"])
      {
LABEL_45:

        goto LABEL_46;
      }

      v32 = 10;
    }

    self->_recommendedProcessingOptions.regionSizeCategory = v32;
    goto LABEL_45;
  }

  v21 = [NSString stringWithFormat:@"antenna diversity option is invalid for responders"];
  v62 = NSLocalizedDescriptionKey;
  v63 = v21;
  v22 = [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1];
  v8 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:v22];

LABEL_56:
LABEL_57:

LABEL_58:

  return v8;
}

- (id)run
{
  dispatch_assert_queue_V2(self->_clientQueue);
  self->_pendingRerunSessionWhenUWBStateUpddate = 0;
  v3 = +[NSUserDefaults standardUserDefaults];
  if ([v3 BOOLForKey:@"NIHomeDisable"])
  {
    v4 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ses-home,NIHomeDisable set in defaults. Skip running session", buf, 2u);
    }

    _triggerInitiatorRanging = 0;
  }

  else if (self->_currentSessionRole == 100)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004AE838();
    }

    _triggerInitiatorRanging = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
  }

  else
  {
    v6 = sub_100014B54();
    atomic_store(sub_1000322F0(v6), &self->_wifiServiceAllowsRanging);
    v49.receiver = self;
    v49.super_class = NIServerHomeDeviceSession;
    resourcesManager = [(NIServerBaseSession *)&v49 resourcesManager];
    btResource = [resourcesManager btResource];
    [btResource setDeviceRelationshipFlags:{-[NIHomeDeviceConfiguration allowedDevices](self->_configuration, "allowedDevices")}];

    if ([(NIServerHomeDeviceSession *)self _isWifiRangingAllowed])
    {
      btResource2 = [resourcesManager btResource];
      [btResource2 setWifiRangingActiveAdvertisement];
    }

    else
    {
      btResource2 = [resourcesManager btResource];
      [btResource2 clearWifiRangingActiveAdvertisement];
    }

    if (self->_isRunning)
    {
      v10 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#ses-home,Session is running, return", buf, 2u);
      }

      _triggerInitiatorRanging = 0;
    }

    else
    {
      self->_firstWifiMeasurementsReceived = 0;
      btResource3 = [resourcesManager btResource];
      [btResource3 startAdvertising];

      v12 = +[NSUserDefaults standardUserDefaults];
      v13 = [v12 BOOLForKey:@"HomeDeviceSessionBTLeechingEnabled"];

      if (v13)
      {
        v14 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#ses-home,Disable UWB-aided handoff with HomeDeviceSessionBTLeechingEnabled", buf, 2u);
        }

        v15 = objc_opt_new();
        leechingAidingAdvertiser = self->_leechingAidingAdvertiser;
        self->_leechingAidingAdvertiser = v15;

        [(CBAdvertiser *)self->_leechingAidingAdvertiser setDispatchQueue:self->_clientQueue];
        [(CBAdvertiser *)self->_leechingAidingAdvertiser setLabel:@"ProximityLeechingAidForHomeDeviceSession"];
        [(CBAdvertiser *)self->_leechingAidingAdvertiser setAdvertiseRate:50];
        [(CBAdvertiser *)self->_leechingAidingAdvertiser setNearbyActionType:17];
        [(CBAdvertiser *)self->_leechingAidingAdvertiser setNearbyActionFlags:64];
        [(CBAdvertiser *)self->_leechingAidingAdvertiser activateWithCompletion:&stru_10099FAF8];
        devicePresenceResource = [resourcesManager devicePresenceResource];
        internalObserver = [devicePresenceResource internalObserver];
        [internalObserver startBTScanningWithMaxRateForPrototypeHomeSession:self];
      }

      if (![(NIServerHomeDeviceSession *)self _requiresScreenOn])
      {
        btResource4 = [resourcesManager btResource];
        [btResource4 allowScreenOffOperation:1];
      }

      selfCopy = self;
      sub_100004A08(buf, [(NSString *)selfCopy->_containerUniqueIdentifier UTF8String]);
      v21 = sub_100014B54();
      if (SHIBYTE(v48) < 0)
      {
        sub_1000056BC(__p, *buf, *&buf[8]);
      }

      else
      {
        *__p = *buf;
        v46 = v48;
      }

      v22 = selfCopy;
      v51[0] = off_10099FB50;
      v51[1] = v22;
      v51[3] = v51;
      sub_10002DF20(v21, __p, v51, self->_clientQueue);
      sub_1000197C8(v51);
      if (SHIBYTE(v46) < 0)
      {
        operator delete(__p[0]);
      }

      [v3 doubleForKey:@"HomeDeviceInitialScanBurstDurationSecondsOverride"];
      v24 = v23;
      v25 = 5.0;
      if (v23 > 0.0)
      {
        v26 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *v50 = 134217984;
          *&v50[4] = v24;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#ses-home,* Initial scan burst duration set from defaults write: %0.2f seconds", v50, 0xCu);
        }

        v25 = v24;
      }

      btResource5 = [resourcesManager btResource];
      [btResource5 startScanningWithBurstPeriod:v25];

      lifecycleSupervisor = [resourcesManager lifecycleSupervisor];
      [lifecycleSupervisor runWithConfigurationCalled];

      v29 = sub_100005288();
      sub_10026C6D0(&v22->_handoffCAManager, v29);
      sub_10033AF4C(v22->_wifiCAManager.__ptr_, v29);
      btResource6 = [resourcesManager btResource];
      nonConnectableAdvertisingAddress = [btResource6 nonConnectableAdvertisingAddress];
      if (v32)
      {
        *v50 = nonConnectableAdvertisingAddress;
        v33 = [[NSData alloc] initWithBytes:v50 length:6];
        v34 = sub_100014B54();
        sub_10002DBAC(v34, v33);
      }

      if (v22->_initiatorSession.__ptr_)
      {
        _triggerInitiatorRanging = [(NIServerHomeDeviceSession *)v22 _triggerInitiatorRanging];
      }

      else
      {
        _triggerInitiatorRanging = 0;
      }

      self->_isRunning = _triggerInitiatorRanging == 0;
      v22->_shouldDeliverUpdates = _triggerInitiatorRanging == 0;
      if (self->_isRunning)
      {
        clientQueue = self->_clientQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100233A7C;
        block[3] = &unk_10098A2E8;
        v43 = resourcesManager;
        v44 = v22;
        dispatch_async(clientQueue, block);
      }

      objc_initWeak(v50, v22);
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_100233AF0;
      v40[3] = &unk_10099FB20;
      objc_copyWeak(&v41, v50);
      v36 = objc_retainBlock(v40);
      [(CMMotionManager *)v22->_motionManager startMagnetometerUpdatesToQueue:v22->_operationQueue withHandler:v36];
      v37 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#ses-home,streaming raw magnetometer data started", v39, 2u);
      }

      objc_destroyWeak(&v41);
      objc_destroyWeak(v50);

      if (SHIBYTE(v48) < 0)
      {
        operator delete(*buf);
      }
    }
  }

  return _triggerInitiatorRanging;
}

- (id)pauseWithSource:(int64_t)source
{
  dispatch_assert_queue_V2(self->_clientQueue);
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 BOOLForKey:@"NIHomeDeviceSessionForceScreenOffOperation"];

  if (v5)
  {
    v6 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#ses-home,[Prototype only] Ignore pause in case it's coming from screen off state", buf, 2u);
    }

    v7 = 0;
  }

  else
  {
    self->_isRunning = 0;
    self->_shouldDeliverUpdates = 0;
    self->_pendingRerunSessionWhenUWBStateUpddate = 0;
    sub_1001C1ED8(&self->_cachedRegionUpdateEvent);
    v7 = [(NIServerHomeDeviceSession *)self _disableAllServicesAndSendHangupSignal:0];
    v12.receiver = self;
    v12.super_class = NIServerHomeDeviceSession;
    resourcesManager = [(NIServerBaseSession *)&v12 resourcesManager];
    lifecycleSupervisor = [resourcesManager lifecycleSupervisor];
    [lifecycleSupervisor pauseCalled];

    v10 = sub_100005288();
    sub_10026C730(&self->_handoffCAManager, v10);
    sub_10033A8AC(self->_wifiCAManager.__ptr_);
    self->_firstWifiMeasurementsReceived = 0;
  }

  return v7;
}

- (void)setupBackoffResumeManager
{
  if (!self->_configuration)
  {
    sub_1004AE8E8();
  }

  [(NIServerHomeDeviceSession *)self _requiresScreenOn];
  if ([(NIHomeDeviceConfiguration *)self->_configuration isAnchor])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v7 = ([(NIConfiguration *)self->_configuration suspensionPolicy]& 2) != 0;
    v3 = ([(NIConfiguration *)self->_configuration suspensionPolicy]>> 2) & 1;
    if (!self->_uwbSystemAvailable)
    {
      v4 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ses-home,Overriding lock screen only suspension policy: ENABLED.", buf, 2u);
      }

      LOBYTE(v3) = 1;
    }
  }

  cntrl = self->_backoffResumeManager.__cntrl_;
  if (!cntrl || (*(cntrl + 1) & 0x8000000000000000) != 0)
  {
    selfCopy = self;
    operator new();
  }

  buf[0] = v3;
  sub_1002D2D2C(self->_backoffResumeManager.__ptr_, buf);
}

- (BOOL)updateConfiguration:(id)configuration
{
  configurationCopy = configuration;
  dispatch_assert_queue_V2(self->_clientQueue);
  if (!self->_isRunning)
  {
    v10 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      configuration = self->_configuration;
      v15 = 138412546;
      configurationCopy2 = configuration;
      v17 = 2112;
      v18 = configurationCopy;
      v12 = "#ses-home,Can't update configuration, not running\nOld: %@\nNew: %@";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v12, &v15, 0x16u);
    }

LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  if (!configurationCopy || !self->_configuration || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v13 = self->_configuration;
      v15 = 138412546;
      configurationCopy2 = v13;
      v17 = 2112;
      v18 = configurationCopy;
      v12 = "#ses-home,Can't update configuration, one is nil or wrong type\nOld: %@\nNew: %@";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v5 = [(NIHomeDeviceConfiguration *)configurationCopy copy];
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v7 = self->_configuration;
    v15 = 138412546;
    configurationCopy2 = v7;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#ses-home,Update configuration\nOld: %@\nNew: %@", &v15, 0x16u);
  }

  v8 = self->_configuration;
  self->_configuration = v5;

  v9 = 1;
LABEL_14:

  return v9;
}

- (id)addObject:(id)object
{
  objectCopy = object;
  dispatch_assert_queue_V2(self->_clientQueue);
  v10.receiver = self;
  v10.super_class = NIServerHomeDeviceSession;
  resourcesManager = [(NIServerBaseSession *)&v10 resourcesManager];
  v11 = objectCopy;
  v6 = [NSArray arrayWithObjects:&v11 count:1];
  v7 = [(NIServerHomeDeviceSession *)self _addPeers:v6];

  if (v7)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004AE914(v7, self);
    }

    lifecycleSupervisor = [resourcesManager lifecycleSupervisor];
    [lifecycleSupervisor failedToAddPeer];
  }

  return 0;
}

- (id)removeObject:(id)object
{
  objectCopy = object;
  dispatch_assert_queue_V2(self->_clientQueue);
  v15.receiver = self;
  v15.super_class = NIServerHomeDeviceSession;
  resourcesManager = [(NIServerBaseSession *)&v15 resourcesManager];
  v14.receiver = self;
  v14.super_class = NIServerHomeDeviceSession;
  v6 = [(NIServerBaseSession *)&v14 identifierFromDiscoveryToken:objectCopy];
  if (v7)
  {
    v8 = 0;
    [(NIServerHomeDeviceSession *)self _removePeerObject:objectCopy uwbIdentifier:v6 withReason:2];
  }

  else
  {
    objectCopy = [NSString stringWithFormat:@"Token %@ has no associated identifier.", objectCopy];
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004AE9A4();
    }

    v17 = NSLocalizedDescriptionKey;
    v18 = objectCopy;
    v10 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v8 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v10];
  }

  lifecycleSupervisor = [resourcesManager lifecycleSupervisor];
  v16 = objectCopy;
  v12 = [NSArray arrayWithObjects:&v16 count:1];
  [lifecycleSupervisor stoppedDiscoveringPeersWithTokens:v12];

  return 0;
}

- (BOOL)_isWifiRangingAllowed
{
  if ([(NIConfiguration *)self->_configuration enabledGestures]& 2) != 0 && (v3 = atomic_load(&self->_wifiServiceAllowsRanging), (v3))
  {
    v4 = atomic_load(&self->_wifiRangingAllowedLockscreen);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (void)_resumeWifiRanging
{
  if ([(NIServerHomeDeviceSession *)self _isWifiRangingAllowed])
  {
    v15.receiver = self;
    v15.super_class = NIServerHomeDeviceSession;
    resourcesManager = [(NIServerBaseSession *)&v15 resourcesManager];
    btResource = [resourcesManager btResource];
    [btResource setWifiRangingActiveAdvertisement];

    if (self->_wifiSessions.__table_.__size_)
    {
      next = self->_wifiSessions.__table_.__first_node_.__next_;
      if (next)
      {
        sub_10023CFC8(buf, (next[3] + 120));
        if (v14 == 1)
        {

          v6 = next[3];
          sub_10023CFC8(buf, (v6 + 120));
          if (v14)
          {
            sub_100040350(v6, buf);
          }

          sub_1000195BC();
        }

        v7 = next[2];
        configuration = [(NIServerHomeDeviceSession *)self configuration];
        if ([configuration isAnchor])
        {
          v9 = 2;
        }

        else
        {
          v9 = 1;
        }

        sub_10003FBF8(buf, v7, v9);

        sub_100040350(next[3], buf);
      }
    }
  }

  else
  {
    v10 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#ses-home,wifi ranging is not allowed at this time", buf, 2u);
    }
  }
}

- (void)_pauseWifiRanging
{
  v6.receiver = self;
  v6.super_class = NIServerHomeDeviceSession;
  resourcesManager = [(NIServerBaseSession *)&v6 resourcesManager];
  btResource = [resourcesManager btResource];
  [btResource clearWifiRangingActiveAdvertisement];

  if (self->_wifiSessions.__table_.__size_)
  {
    for (i = &self->_wifiSessions.__table_.__first_node_; ; sub_1000400F0(i[3].__next_))
    {
      i = i->__next_;
      if (!i)
      {
        break;
      }
    }
  }
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->_clientQueue);
  self->_isRunning = 0;
  self->_shouldDeliverUpdates = 0;
  self->_shouldHandleUWBStateReadinessUpdates = 0;
  self->_pendingRerunSessionWhenUWBStateUpddate = 0;
  [(CBAdvertiser *)self->_leechingAidingAdvertiser invalidate];
  leechingAidingAdvertiser = self->_leechingAidingAdvertiser;
  self->_leechingAidingAdvertiser = 0;

  v19.receiver = self;
  v19.super_class = NIServerHomeDeviceSession;
  resourcesManager = [(NIServerBaseSession *)&v19 resourcesManager];
  devicePresenceResource = [resourcesManager devicePresenceResource];
  internalObserver = [devicePresenceResource internalObserver];
  [internalObserver stopBTScanningWithMaxRateForPrototypeHomeSession];

  sub_1001C1ED8(&self->_cachedRegionUpdateEvent);
  ptr = self->_backoffResumeManager.__ptr_;
  if (ptr)
  {
    sub_1002D26E0(ptr);
    cntrl = self->_backoffResumeManager.__cntrl_;
    self->_backoffResumeManager.__ptr_ = 0;
    self->_backoffResumeManager.__cntrl_ = 0;
    if (cntrl)
    {
      sub_10000AD84(cntrl);
    }
  }

  motionManager = self->_motionManager;
  self->_motionManager = 0;

  disableAllServices = [(NIServerHomeDeviceSession *)self disableAllServices];
  v11 = sub_100005288();
  sub_10026C730(&self->_handoffCAManager, v11);
  sub_10033A8AC(self->_wifiCAManager.__ptr_);
  sub_100004A08(v17, [(NSString *)self->_containerUniqueIdentifier UTF8String]);
  v12 = sub_100014B54();
  if (SHIBYTE(v18) < 0)
  {
    sub_1000056BC(__p, v17[0], v17[1]);
  }

  else
  {
    *__p = *v17;
    v16 = v18;
  }

  sub_10002E05C(v12, __p);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  self->_firstWifiMeasurementsReceived = 0;
  v14.receiver = self;
  v14.super_class = NIServerHomeDeviceSession;
  [(NIServerBaseSession *)&v14 invalidate];
  v13 = +[NIServerHomeDeviceService sharedInstance];
  [v13 removeServiceClientWithIdentifier:self->_containerUniqueIdentifier];

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }
}

- (void)dealloc
{
  v3 = +[NIServerHomeDeviceService sharedInstance];
  [v3 removeServiceClientWithIdentifier:self->_containerUniqueIdentifier];

  v4.receiver = self;
  v4.super_class = NIServerHomeDeviceSession;
  [(NIServerHomeDeviceSession *)&v4 dealloc];
}

- (void)deviceDiscovered:(id)discovered
{
  discoveredCopy = discovered;
  dispatch_assert_queue_V2(self->_clientQueue);
  if (self->_currentSessionRole == 100)
  {
    goto LABEL_118;
  }

  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 BOOLForKey:@"HomeDeviceSessionBTLeechingEnabled"];

  v7 = qword_1009F9820;
  v8 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
  if (!v6)
  {
    if (v8)
    {
      containerUniqueIdentifier = self->_containerUniqueIdentifier;
      *buf = 138412546;
      *&buf[4] = containerUniqueIdentifier;
      *&buf[12] = 2112;
      *&buf[14] = discoveredCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-home,Device discovered. Session Identifier: %@. Device: %@", buf, 0x16u);
    }

    v97.receiver = self;
    v97.super_class = NIServerHomeDeviceSession;
    resourcesManager = [(NIServerBaseSession *)&v97 resourcesManager];
    wifiResource = [resourcesManager wifiResource];
    deviceCapabilities = [wifiResource deviceCapabilities];

    if ([discoveredCopy isUwbCapable])
    {
      uwbSystemAvailable = self->_uwbSystemAvailable;
    }

    else
    {
      uwbSystemAvailable = 0;
    }

    HIDWORD(v88) = [discoveredCopy isWifiRangingCapable];
    v95 = xmmword_100567098;
    v96 = 1;
    v90 = +[NSUserDefaults standardUserDefaults];
    if ([discoveredCopy systemKeyRelationship])
    {
      cbDevice = [discoveredCopy cbDevice];
      model = [cbDevice model];

      if (!model)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004AEC88();
        }

        goto LABEL_117;
      }

      v15 = [v90 objectForKey:@"NIHomeDisableAllowListPolicy"];
      v16 = v15 == 0;

      if (v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = [v90 BOOLForKey:@"NIHomeDisableAllowListPolicy"];
      }

      v24 = sub_10001E184(model);
      v25 = v24;
      if ((uwbSystemAvailable & ~v17 & 1) != 0 && (v24 & 0xFFFFFFFD) == 0x3E5)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004AEC18();
        }

        goto LABEL_117;
      }

      LOBYTE(v95) = [model hasPrefix:{@"AudioAccessory6, 1"}];
      if ([model hasPrefix:{@"AudioAccessory6, 1"}])
      {
        v26 = 2;
      }

      else
      {
        v26 = 1;
      }

      DWORD1(v95) = v26;
      sub_10041C974(v25);
      LODWORD(v96) = [(NIServerHomeDeviceSession *)self _intentPredictorConfigFromModelString:model];
      if ([(NIServerHomeDeviceSession *)self _regionCategoryFromModelString:model]== 10)
      {
        regionSizeCategory = 10;
      }

      else
      {
        regionSizeCategory = self->_recommendedProcessingOptions.regionSizeCategory;
        if (regionSizeCategory != 10)
        {
          regionSizeCategory = 0;
        }
      }

      *(&v95 + 1) = regionSizeCategory;
    }

    else
    {
      discoveryToken = [discoveredCopy discoveryToken];
      LOBYTE(v95) = [(NIServerHomeDeviceSession *)self _biasCorrectionRequirementFromDiscoveryToken:discoveryToken];

      discoveryToken2 = [discoveredCopy discoveryToken];
      DWORD1(v95) = [(NIServerHomeDeviceSession *)self _magneticFieldStrengthCheckOptionFromDiscoveryToken:discoveryToken2];

      discoveryToken3 = [discoveredCopy discoveryToken];
      [(NIServerHomeDeviceSession *)self _homeAnchorVariantFromDiscoveryToken:discoveryToken3];

      discoveryToken4 = [discoveredCopy discoveryToken];
      LODWORD(v96) = [(NIServerHomeDeviceSession *)self _intentPredictorConfigFromDiscoveryToken:discoveryToken4];

      discoveryToken5 = [discoveredCopy discoveryToken];
      v23 = [(NIServerHomeDeviceSession *)self _regionCategoryFromDiscoveryToken:discoveryToken5];

      if (v23 == 10 || self->_recommendedProcessingOptions.regionSizeCategory == 10)
      {
        *(&v95 + 1) = 10;
      }

      else
      {
        *(&v95 + 1) = 0;
      }
    }

    lifecycleSupervisor = [resourcesManager lifecycleSupervisor];
    discoveryToken6 = [discoveredCopy discoveryToken];
    v100 = discoveryToken6;
    v30 = [NSArray arrayWithObjects:&v100 count:1];
    [lifecycleSupervisor startedDiscoveringPeersWithTokens:v30];

    v31 = qword_1009F9820;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v88) = deviceCapabilities;
      sub_100193120(buf);
      v32 = sub_10000EA44(&buf[16], "require bias correction: ", 25);
      if (v95)
      {
        v33 = "yes";
      }

      else
      {
        v33 = "no";
      }

      if (v95)
      {
        v34 = 3;
      }

      else
      {
        v34 = 2;
      }

      v35 = sub_10000EA44(v32, v33, v34);
      std::ios_base::getloc((v35 + *(*v35 - 24)));
      v36 = std::locale::use_facet(&v98, &std::ctype<char>::id);
      (v36->__vftable[2].~facet_0)(v36, 10);
      std::locale::~locale(&v98);
      std::ostream::put();
      std::ostream::flush();
      sub_10000EA44(&buf[16], "magnetic field strength check options: ", 39);
      v37 = std::ostream::operator<<();
      std::ios_base::getloc((v37 + *(*v37 - 24)));
      v38 = std::locale::use_facet(&v98, &std::ctype<char>::id);
      (v38->__vftable[2].~facet_0)(v38, 10);
      std::locale::~locale(&v98);
      std::ostream::put();
      std::ostream::flush();
      sub_10000EA44(&buf[16], "region size category: ", 22);
      v39 = std::ostream::operator<<();
      std::ios_base::getloc((v39 + *(*v39 - 24)));
      v40 = std::locale::use_facet(&v98, &std::ctype<char>::id);
      (v40->__vftable[2].~facet_0)(v40, 10);
      std::locale::~locale(&v98);
      std::ostream::put();
      std::ostream::flush();
      sub_10000EA44(&buf[16], "intent predictor config: ", 25);
      v41 = std::ostream::operator<<();
      std::ios_base::getloc((v41 + *(*v41 - 24)));
      v42 = std::locale::use_facet(&v98, &std::ctype<char>::id);
      (v42->__vftable[2].~facet_0)(v42, 10);
      std::locale::~locale(&v98);
      std::ostream::put();
      std::ostream::flush();
      std::stringbuf::str();
      *&buf[16] = v43;
      if (v104 < 0)
      {
        operator delete(v103[7].__locale_);
      }

      std::locale::~locale(v103);
      std::iostream::~basic_iostream();
      std::ios::~ios();
      v44 = &v92;
      if (v94 < 0)
      {
        v44 = v92;
      }

      *v99 = 136315138;
      *&v99[4] = v44;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#ses-home,processing options are %s", v99, 0xCu);
      if (v94 < 0)
      {
        operator delete(v92);
      }
    }

    model = [NINearbyObject objectFromBluetoothDevice:discoveredCopy];
    if (!model)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004AEBDC();
      }

      goto LABEL_117;
    }

    remote = [resourcesManager remote];
    [remote didDiscoverNearbyObject:model];

    if (self->_pbLogger.__ptr_)
    {
      v46 = sub_100005288();
      ptr = self->_pbLogger.__ptr_;
      u64Identifier = [discoveredCopy u64Identifier];
      sub_1002D63A8(model, buf);
      sub_1002E1DCC(ptr, u64Identifier, buf, v46);
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }
    }

    if (![(NIServerHomeDeviceSession *)self _shouldRespondToDevice:discoveredCopy, v88])
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004AEA14();
      }

      goto LABEL_117;
    }

    if (uwbSystemAvailable)
    {
      if (!self->_currentSessionRole)
      {
        goto LABEL_117;
      }

      if (self->_currentSessionRole != 1)
      {
        __assert_rtn("[NIServerHomeDeviceSession deviceDiscovered:]", "NIServerHomeDeviceSession.mm", 1327, "_currentSessionRole == Role::Responder");
      }

      if (([v90 BOOLForKey:@"NIHomeAllowMobileAsAnchor"] & 1) == 0 && objc_msgSend(discoveredCopy, "isMobilePhoneModel"))
      {
        v49 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = discoveredCopy;
          v50 = "#ses-home,No uwb responding to another mobile: %@";
LABEL_104:
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, v50, buf, 0xCu);
          goto LABEL_117;
        }

        goto LABEL_117;
      }

      v55 = +[NIServerGRResponderRangingService sharedInstance];
      v56 = [v55 getSessionTicketForDevice:discoveredCopy clientIdentifier:self->_containerUniqueIdentifier clientQueue:self->_clientQueue forDelegate:self];
      LOWORD(v98.__locale_) = v56;
      BYTE2(v98.__locale_) = BYTE2(v56);

      if (BYTE2(v98.__locale_) == 1)
      {
        *v99 = [discoveredCopy u64Identifier];
        v57 = sub_100009978(&self->_responderSessions.__table_.__bucket_list_.__ptr_, v99);
        if (v57)
        {
          v58 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            *&buf[4] = *v99;
            _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "#ses-home,Evicting previous UWB session with same identitifer: 0x%llx", buf, 0xCu);
          }

          sub_1000223BC(&self->_responderSessions.__table_.__bucket_list_.__ptr_, v57);
        }

        v59 = [(NIServerHomeDeviceSession *)self objectFromIdentifier:*v99];
        discoveryToken7 = [v59 discoveryToken];

        if (discoveryToken7)
        {
          v61 = sub_100005288();
          sub_10026C2C0(&self->_handoffCAManager, [discoveryToken7 hash], -[NIServerHomeDeviceSession nominalCycleRate](self, "nominalCycleRate"), v61);
        }

        if ((BYTE2(v98.__locale_) & 1) == 0)
        {
          sub_1000195BC();
        }

        v92 = v99;
        *buf = &v95;
        *&buf[8] = &v98;
        sub_10023DAAC(&self->_responderSessions.__table_.__bucket_list_.__ptr_, v99);
        if ((v62 & 1) == 0 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004AEAFC(v99);
        }

        v63 = qword_1009F9820;
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          u64Identifier2 = [discoveredCopy u64Identifier];
          if (v95)
          {
            v65 = "YES";
          }

          else
          {
            v65 = "NO";
          }

          v66 = sub_1002D6258(*(&v95 + 1));
          v67 = v66;
          uTF8String = [v66 UTF8String];
          *buf = 134218754;
          *&buf[4] = u64Identifier2;
          *&buf[12] = 2080;
          *&buf[14] = v65;
          *&buf[22] = 2080;
          v102 = uTF8String;
          LOWORD(v103[0].__locale_) = 1024;
          *(&v103[0].__locale_ + 2) = DWORD1(v95);
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#ses-home,recorded mac addr 0x%llx needs bias correction: %s, regionCategory: %s, magnetic field strength check option: %d", buf, 0x26u);
        }

        v69 = +[NIServerGRResponderRangingService sharedInstance];
        v70 = v69;
        if ((BYTE2(v98.__locale_) & 1) == 0)
        {
          sub_1000195BC();
        }

        v71 = [v69 triggerRangingForTicket:LOWORD(v98.__locale_) device:discoveredCopy updatedDevice:discoveredCopy clientIdentifier:self->_containerUniqueIdentifier uwbAddressRotated:0];

        if (v71)
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004AEB6C();
          }

          remote2 = [resourcesManager remote];
          [remote2 uwbSessionDidFailWithError:v71];
        }

        goto LABEL_117;
      }
    }

    else
    {
      if ((v89 & deviceCapabilities) == 0)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004AEA84();
        }

        goto LABEL_117;
      }

      cbDevice2 = [discoveredCopy cbDevice];
      model2 = [cbDevice2 model];
      if ([model2 hasPrefix:@"AudioAccessory"])
      {
        configuration = [(NIServerHomeDeviceSession *)self configuration];
        isAnchor = [configuration isAnchor];

        if (isAnchor)
        {
          v49 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = discoveredCopy;
            v50 = "#ses-home,No wifi responding to another anchor: %@";
            goto LABEL_104;
          }

LABEL_117:

          goto LABEL_118;
        }
      }

      else
      {
      }

      if ([discoveredCopy isMobilePhoneModel])
      {
        configuration2 = [(NIServerHomeDeviceSession *)self configuration];
        isAnchor2 = [configuration2 isAnchor];

        if ((isAnchor2 & 1) == 0)
        {
          v49 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = discoveredCopy;
            v50 = "#ses-home,No wifi initiating to another mobile: %@";
            goto LABEL_104;
          }

          goto LABEL_117;
        }
      }

      v75 = qword_1009F9820;
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        cbDevice3 = [discoveredCopy cbDevice];
        model3 = [cbDevice3 model];
        *buf = 138412290;
        *&buf[4] = model3;
        _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "#ses-home,Starting a wifi session with a peer model: %@", buf, 0xCu);
      }

      [(NIServerHomeDeviceSession *)self _buildWifiSession];
      v78 = v92;
      if (v92)
      {
        u64Identifier3 = [discoveredCopy u64Identifier];
        configuration3 = [(NIServerHomeDeviceSession *)self configuration];
        if ([configuration3 isAnchor])
        {
          v81 = 2;
        }

        else
        {
          v81 = 1;
        }

        sub_10003FBF8(buf, u64Identifier3, v81);

        v82 = sub_100005288();
        sub_10033B03C(self->_wifiCAManager.__ptr_, v82);
        if ([(NIServerHomeDeviceSession *)self _isWifiRangingAllowed])
        {
          sub_100040350(v92, buf);
        }

        v83 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *v99 = 0;
          _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "#ses-home,WiFi ranging is not allowed at this time.", v99, 2u);
        }

        v98.__locale_ = [discoveredCopy u64Identifier];
        *v99 = &v98;
        v84 = sub_10023DD04(&self->_wifiSessions.__table_.__bucket_list_.__ptr_, &v98);
        v86 = v92;
        v85 = v93;
        if (v93)
        {
          atomic_fetch_add_explicit(&v93->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v87 = v84[4];
        v84[3] = v86;
        v84[4] = v85;
        if (v87)
        {
          sub_10000AD84(v87);
        }
      }

      if (v93)
      {
        sub_10000AD84(v93);
      }

      if (v78)
      {
        goto LABEL_117;
      }
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004AEAC0();
    }

    goto LABEL_117;
  }

  if (v8)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-home,Disable UWB-aided handoff with HomeDeviceSessionBTLeechingEnabled", buf, 2u);
  }

LABEL_118:
}

- (void)bluetoothAdvertisingAddressChanged:(unint64_t)changed
{
  changedCopy = changed;
  v3 = [[NSData alloc] initWithBytes:&changedCopy length:6];
  v4 = sub_100014B54();
  sub_10002DBAC(v4, v3);
}

- (void)device:(id)device rediscovered:(id)rediscovered
{
  deviceCopy = device;
  rediscoveredCopy = rediscovered;
  v71 = deviceCopy;
  dispatch_assert_queue_V2(self->_clientQueue);
  u64Identifier = [deviceCopy u64Identifier];
  v8 = sub_100009978(&self->_responderSessions.__table_.__bucket_list_.__ptr_, &u64Identifier);
  v9 = sub_100009978(&self->_wifiSessions.__table_.__bucket_list_.__ptr_, &u64Identifier);
  if (v8 | v9)
  {
    v73.receiver = self;
    v73.super_class = NIServerHomeDeviceSession;
    resourcesManager = [(NIServerBaseSession *)&v73 resourcesManager];
    discoveryToken = [deviceCopy discoveryToken];
    v68 = rediscoveredCopy;
    if (!discoveryToken)
    {
      goto LABEL_12;
    }

    lifecycleSupervisor = [resourcesManager lifecycleSupervisor];
    if (([lifecycleSupervisor isTrackingPeer:discoveryToken] & 1) == 0)
    {
      systemKeyRelationship = [rediscoveredCopy systemKeyRelationship];

      if (!systemKeyRelationship)
      {
        goto LABEL_12;
      }

      v12 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = discoveryToken;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#ses-home,Re-discovered peer has systemKeyRelationship but isn't being tracked, retracking peer with token: %@", buf, 0xCu);
      }

      lifecycleSupervisor = [resourcesManager lifecycleSupervisor];
      v78 = discoveryToken;
      v13 = [NSArray arrayWithObjects:&v78 count:1];
      [lifecycleSupervisor startedDiscoveringPeersWithTokens:v13];
    }

LABEL_12:
    if (self->_pbLogger.__ptr_)
    {
      v14 = sub_100005288();
      v15 = [NINearbyObject objectFromBluetoothDevice:rediscoveredCopy];
      if (v15)
      {
        ptr = self->_pbLogger.__ptr_;
        u64Identifier2 = [rediscoveredCopy u64Identifier];
        sub_1002D63A8(v15, buf);
        sub_1002E1DCC(ptr, u64Identifier2, buf, v14);
        if (*buf)
        {
          *&buf[8] = *buf;
          operator delete(*buf);
        }
      }

      else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004AEBDC();
      }
    }

    u64Identifier3 = [rediscoveredCopy u64Identifier];
    u64Identifier4 = [rediscoveredCopy u64Identifier];
    u64Identifier5 = [deviceCopy u64Identifier];
    isWifiRangingCapable = [rediscoveredCopy isWifiRangingCapable];
    isWifiRangingCapable2 = [deviceCopy isWifiRangingCapable];
    currentSessionRole = self->_currentSessionRole;
    v23 = qword_1009F9820;
    if (u64Identifier4 != u64Identifier5 && currentSessionRole == 1 && v8)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#ses-home,Device rediscovered decision: restarting UWB session since address is change, role == responder and there's active UWB session.", buf, 2u);
      }

      v24 = *(v8 + 40);
      *buf = *(v8 + 24);
      *&buf[16] = v24;
      rediscoveredCopy = v68;
      sub_10023DF54(&self->_responderSessions.__table_.__bucket_list_.__ptr_, (v8 + 16));
      *v75 = &u64Identifier3;
      *v76 = buf;
      *&v76[8] = &buf[24];
      sub_10023DAAC(&self->_responderSessions.__table_.__bucket_list_.__ptr_, &u64Identifier3);
      v25 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v76 = 134218240;
        *&v76[4] = u64Identifier;
        *&v76[12] = 2048;
        *&v76[14] = u64Identifier3;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#ses-home,updated mac addr 0x%llx -> 0x%llx in processing info dictionary", v76, 0x16u);
      }

      v26 = +[NIServerGRResponderRangingService sharedInstance];
      v27 = [v26 triggerRangingForTicket:*&buf[24] device:deviceCopy updatedDevice:v68 clientIdentifier:self->_containerUniqueIdentifier uwbAddressRotated:1];

      if (v27)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004AED04();
        }

        remote = [resourcesManager remote];
        [remote uwbSessionDidFailWithError:v27];
      }

LABEL_31:
      v29 = discoveryToken;
LABEL_32:

      goto LABEL_33;
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109632;
      *&buf[4] = u64Identifier4 != u64Identifier5;
      *&buf[8] = 1024;
      *&buf[10] = currentSessionRole == 1;
      *&buf[14] = 1024;
      *&buf[16] = v8 != 0;
      _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "#ses-home,Device rediscovered decision: Not restarting UWB session since addressChange?: %d, role == responder?: %d and active UWB session?:%d", buf, 0x14u);
    }

    v30 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      containerUniqueIdentifier = self->_containerUniqueIdentifier;
      *buf = 138412802;
      *&buf[4] = containerUniqueIdentifier;
      *&buf[12] = 2112;
      *&buf[14] = v68;
      *&buf[22] = 2112;
      *&buf[24] = deviceCopy;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#ses-home,Device re-discovered. Session Identifier: %@. New Device: %@, cached device: %@", buf, 0x20u);
    }

    v32 = isWifiRangingCapable ^ isWifiRangingCapable2;
    v29 = discoveryToken;
    if (u64Identifier4 == u64Identifier5)
    {
      rediscoveredCopy = v68;
      if (v32)
      {
        goto LABEL_43;
      }
    }

    else
    {
      rediscoveredCopy = v68;
      if ((v9 != 0) | v32 & 1)
      {
        goto LABEL_43;
      }
    }

    if (([v71 isWifiRangingCapable] & 1) == 0)
    {
      if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_32;
      }

      sub_1004AECC4();
      goto LABEL_31;
    }

LABEL_43:
    wifiResource = [resourcesManager wifiResource];
    deviceCapabilities = [wifiResource deviceCapabilities];

    if (v9)
    {
      isWifiRangingCapable3 = [rediscoveredCopy isWifiRangingCapable];
      v29 = discoveryToken;
      isWifiRangingCapable4 = [rediscoveredCopy isWifiRangingCapable];
      if ((isWifiRangingCapable3 & ((u64Identifier4 != u64Identifier5) | v32)) != 1)
      {
        if ((isWifiRangingCapable4 & 1) == 0)
        {
          v49 = qword_1009F9820;
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            isWifiRangingCapable5 = [rediscoveredCopy isWifiRangingCapable];
            *buf = 67109376;
            *&buf[4] = u64Identifier4 != u64Identifier5;
            *&buf[8] = 1024;
            *&buf[10] = isWifiRangingCapable5;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#ses-home,Stop Wifi Session due to updated device's wifi ranging capable bit off. advAddressChanged: %d, current device's wifiRanging: %d", buf, 0xEu);
          }

          v51 = *(v9 + 32);
          *buf = *(v9 + 24);
          *&buf[8] = v51;
          if (v51)
          {
            atomic_fetch_add_explicit((v51 + 8), 1uLL, memory_order_relaxed);
          }

          sub_10023DF8C(&self->_wifiSessions.__table_.__bucket_list_.__ptr_, (v9 + 16));
          sub_10023DFC4(&self->_wifiSessions.__table_.__bucket_list_.__ptr_, &u64Identifier3);
          sub_1000400F0(*buf);
          v29 = discoveryToken;
          if (*&buf[8])
          {
            sub_10000AD84(*&buf[8]);
          }
        }

        goto LABEL_32;
      }

      v37 = qword_1009F9820;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        isWifiRangingCapable6 = [rediscoveredCopy isWifiRangingCapable];
        *buf = 67109376;
        *&buf[4] = u64Identifier4 != u64Identifier5;
        *&buf[8] = 1024;
        *&buf[10] = isWifiRangingCapable6;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#ses-home,Restart Wifi Session due to changes in advertisement fields. advAddressChanged: %d, current device's wifiRanging: %d", buf, 0xEu);
      }

      v39 = *(v9 + 32);
      *v76 = *(v9 + 24);
      *&v76[8] = v39;
      if (v39)
      {
        atomic_fetch_add_explicit((v39 + 8), 1uLL, memory_order_relaxed);
      }

      sub_10023DF8C(&self->_wifiSessions.__table_.__bucket_list_.__ptr_, (v9 + 16));
      sub_10023DFC4(&self->_wifiSessions.__table_.__bucket_list_.__ptr_, &u64Identifier3);
      v40 = u64Identifier3;
      configuration = [(NIServerHomeDeviceSession *)self configuration];
      if ([configuration isAnchor])
      {
        v42 = 2;
      }

      else
      {
        v42 = 1;
      }

      sub_10003FBF8(buf, v40, v42);

      sub_1000400F0(*v76);
      if ([(NIServerHomeDeviceSession *)self _isWifiRangingAllowed])
      {
        sub_100040350(*v76, buf);
      }

      v52 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v75 = 0;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#ses-home,not ranging to rediscovered device because wifi ranging is not currently allowed", v75, 2u);
      }

      if (*&v76[8])
      {
        sub_10000AD84(*&v76[8]);
      }

      goto LABEL_31;
    }

    v29 = discoveryToken;
    if (([rediscoveredCopy isWifiRangingCapable] & deviceCapabilities) != 1)
    {
      goto LABEL_32;
    }

    cbDevice = [v71 cbDevice];
    model = [cbDevice model];
    if ([model hasPrefix:@"AudioAccessory"])
    {
      configuration2 = [(NIServerHomeDeviceSession *)self configuration];
      isAnchor = [configuration2 isAnchor];

      if (isAnchor)
      {
        v47 = qword_1009F9820;
        v29 = discoveryToken;
        if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
        {
          goto LABEL_32;
        }

        *buf = 138412290;
        *&buf[4] = v71;
        v48 = "#ses-home,No wifi responding to another anchor: %@";
        goto LABEL_86;
      }
    }

    else
    {
    }

    if (![v71 isMobilePhoneModel] || (-[NIServerHomeDeviceSession configuration](self, "configuration"), v53 = objc_claimAutoreleasedReturnValue(), v54 = objc_msgSend(v53, "isAnchor"), v53, v29 = discoveryToken, (v54 & 1) != 0))
    {
      v55 = qword_1009F9820;
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        cbDevice2 = [v71 cbDevice];
        model2 = [cbDevice2 model];
        *buf = 138412290;
        *&buf[4] = model2;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#ses-home,Starting a wifi session with a peer model: %@", buf, 0xCu);
      }

      [(NIServerHomeDeviceSession *)self _buildWifiSession];
      if (*v76)
      {
        u64Identifier6 = [v71 u64Identifier];
        configuration3 = [(NIServerHomeDeviceSession *)self configuration];
        if ([configuration3 isAnchor])
        {
          v60 = 2;
        }

        else
        {
          v60 = 1;
        }

        sub_10003FBF8(buf, u64Identifier6, v60);

        v61 = sub_100005288();
        sub_10033B03C(self->_wifiCAManager.__ptr_, v61);
        if ([(NIServerHomeDeviceSession *)self _isWifiRangingAllowed])
        {
          sub_100040350(*v76, buf);
        }

        v63 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *v75 = 0;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#ses-home,WiFi ranging is not allowed at this time.", v75, 2u);
        }

        v62 = 0;
      }

      else
      {
        v62 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:0];
      }

      *v75 = [v71 u64Identifier];
      *buf = v75;
      v64 = sub_10023DD04(&self->_wifiSessions.__table_.__bucket_list_.__ptr_, v75);
      v66 = *v76;
      v65 = *&v76[8];
      if (*&v76[8])
      {
        atomic_fetch_add_explicit((*&v76[8] + 8), 1uLL, memory_order_relaxed);
      }

      v67 = v64[4];
      v64[3] = v66;
      v64[4] = v65;
      if (v67)
      {
        sub_10000AD84(v67);
      }

      if (*&v76[8])
      {
        sub_10000AD84(*&v76[8]);
      }

      goto LABEL_31;
    }

    v47 = qword_1009F9820;
    if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
    {
      goto LABEL_32;
    }

    *buf = 138412290;
    *&buf[4] = v71;
    v48 = "#ses-home,No wifi initiating to another mobile: %@";
LABEL_86:
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, v48, buf, 0xCu);
    goto LABEL_32;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004AED74();
  }

  [(NIServerHomeDeviceSession *)self deviceDiscovered:rediscoveredCopy];
LABEL_33:
}

- (void)deviceLost:(id)lost
{
  lostCopy = lost;
  dispatch_assert_queue_V2(self->_clientQueue);
  u64Identifier = [lostCopy u64Identifier];
  v5 = sub_100009978(&self->_wifiSessions.__table_.__bucket_list_.__ptr_, &u64Identifier);
  v6 = qword_1009F9820;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    isWifiRangingCapable = [lostCopy isWifiRangingCapable];
    *buf = 67109120;
    v13 = isWifiRangingCapable;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#ses-home,device lost, current wifi capabilities from cached device: %d", buf, 8u);
  }

  if (v5)
  {
    v8 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ses-home,stopping wifi ranging session due to lost device", buf, 2u);
    }

    v10 = v5[3];
    v9 = v5[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_10023DF8C(&self->_wifiSessions.__table_.__bucket_list_.__ptr_, v5 + 2);
    sub_1000400F0(v10);
    if (v9)
    {
      sub_10000AD84(v9);
    }
  }
}

- (void)didReceiveNewSolution:(const void *)solution
{
  dispatch_assert_queue_V2(self->_clientQueue);
  if ((*(solution + 8) - 1) >= 3)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004AEDB0(solution + 8);
    }
  }

  else
  {
    if (*(solution + 24))
    {
      v5 = *(solution + 2);
      v6 = *(solution + 5);
      v17.receiver = self;
      v17.super_class = NIServerHomeDeviceSession;
      v18 = v6;
      v7 = [(NIServerBaseSession *)&v17 discoveryTokenFromIdentifier:v6];
      if (!v7)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004AEF44();
        }

        goto LABEL_19;
      }

      v16.receiver = self;
      v16.super_class = NIServerHomeDeviceSession;
      resourcesManager = [(NIServerBaseSession *)&v16 resourcesManager];
      lifecycleSupervisor = [resourcesManager lifecycleSupervisor];
      v10 = [lifecycleSupervisor isTrackingPeer:v7];

      if ((v10 & 1) == 0)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004AEE64();
        }

        goto LABEL_18;
      }

      if (self->_currentSessionRole == 1)
      {
        v11 = sub_100009978(&self->_responderSessions.__table_.__bucket_list_.__ptr_, &v18);
        if (!v11)
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004AEED4(&v18);
          }

          goto LABEL_18;
        }

        p_recommendedProcessingOptions = v11 + 1;
      }

      else
      {
        p_recommendedProcessingOptions = &self->_recommendedProcessingOptions;
      }

      v14 = *&p_recommendedProcessingOptions->requiresBiasCorrection;
      v15 = *&p_recommendedProcessingOptions->intentPredictorConfiguration;
      [(NINearbyUpdatesEngine *)self->_updatesEngine acceptRoseSolution:solution withProcessingOptions:&v14];
      lifecycleSupervisor2 = [resourcesManager lifecycleSupervisor];
      [lifecycleSupervisor2 measurementReceivedForToken:v7 contTimestamp:v5];

LABEL_18:
LABEL_19:

      return;
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004AEE28();
    }
  }
}

- (void)didReceiveDeviceMotion:(const void *)motion
{
  dispatch_assert_queue_V2(self->_clientQueue);
  [(NINearbyUpdatesEngine *)self->_updatesEngine acceptDeviceMotion:motion];
  v6 = *motion;
  v7 = *&self->_anon_1c8[32];
  if (v7 == *&self->_anon_1c8[24] || ((v8 = *(v7 - 8), v6 - v8 <= 0.02) ? (_NF = v6 < v8) : (_NF = 1), !_NF))
  {
    v10 = *(motion + 8);
    v11 = *(motion + 18);
    v12 = v10.f64[0] == 0.0;
    v13 = *(motion + 17);
    if (v10.f64[1] != 0.0)
    {
      v12 = 0;
    }

    v14 = v11 == 0.0 && v12;
    v15 = *&self->_anon_1c8[8];
    if (v15 != *self->_anon_1c8 && self->_anon_1a0[24] == 1 && *&self->_anon_1a0[8] >= v6 + -60.0)
    {
      if (v14)
      {
        _S1 = vsubq_f32(*(v15 - 16), self[408]).i32[2];
        __asm { FMLA            S2, S1, V0.S[2] }

        v17 = sqrtf(_S2);
        goto LABEL_16;
      }
    }

    else if (v14)
    {
      return;
    }

    *&v5 = vcvt_f32_f64(v10);
    v16 = v11;
    *(&v5 + 2) = v16;
    v24 = *(motion + 8);
    v25 = v5;
    sub_1002374FC(self->_anon_1f8, &v25, v6);
    [(NIServerHomeDeviceSession *)self _calculateMagneticFieldBias];
    v17 = sqrt(v13 * v13 + *&v24 * *&v24 + v11 * v11);
LABEL_16:
    p_filteredMFStrength = &self->_filteredMFStrength;
    if (self->_filteredMFStrength.__engaged_)
    {
      v17 = v17 * 0.3 + p_filteredMFStrength->var0.__val_ * 0.7;
    }

    else
    {
      self->_filteredMFStrength.__engaged_ = 1;
    }

    p_filteredMFStrength->var0.__val_ = v17;
    [(NINearbyUpdatesEngine *)self->_updatesEngine acceptMagneticFieldStrength:v24];
  }
}

- (void)didReceiveMagnetometerData:(NIServerHomeDeviceSession *)self at:(SEL)at
{
  v4 = v3;
  v5 = v2;
  dispatch_assert_queue_V2(self->_clientQueue);
  v7 = *v5;
  sub_1002374FC(self->_anon_1c8, &v7, v4);
  [(NIServerHomeDeviceSession *)self _calculateMagneticFieldBias];
}

- (void)didReceiveRemoteData:(const void *)data
{
  v4 = data + 8;
  v3 = *(data + 1);
  v5 = data + 16;
  if (*(data + 2) - v3 > 0xFuLL)
  {
    if (*v3 == 2)
    {
      if (v3[1])
      {
        v9 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(data + 5);
          v11 = 134283521;
          v12 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#ses-home,#hangup Received hangup from 0x%{private}llx.", &v11, 0xCu);
        }

        [(NIServerHomeDeviceSession *)self _peerHungUp:*(data + 5)];
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004AEFE0();
    }
  }

  else
  {
    v6 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004AF01C(v5, v4, v6);
    }
  }
}

- (BOOL)supportsDevicePresence
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"HomeDeviceSessionBTLeechingEnabled"];

  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ses-home,#supportsDevicePresence homeDeviceSessionBTLeechingEnabled: %d", v6, 8u);
  }

  return v3;
}

- (BOOL)isInterestedInSamplesForDevice:(id)device
{
  deviceCopy = device;
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 BOOLForKey:@"HomeDeviceSessionBTLeechingEnabled"];

  if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  if (([(NIHomeDeviceConfiguration *)self->_configuration allowedDevices]| 4) == 4)
  {
    goto LABEL_3;
  }

  if (![deviceCopy rssi])
  {
    goto LABEL_3;
  }

  idsDeviceID = [deviceCopy idsDeviceID];

  if (!idsDeviceID)
  {
    goto LABEL_3;
  }

  idsDeviceID2 = [deviceCopy idsDeviceID];
  if (idsDeviceID2)
  {
  }

  else if ([(NIHomeDeviceConfiguration *)self->_configuration allowedDevices]== 2)
  {
    goto LABEL_3;
  }

  model = [deviceCopy model];
  if (!model)
  {
    goto LABEL_4;
  }

  model2 = [deviceCopy model];
  v12 = [model2 isEqualToString:@"NONE"];

  if ((v12 & 1) == 0)
  {
    LOBYTE(model) = ([deviceCopy deviceFlags] & 0x380) != 0;
    goto LABEL_4;
  }

LABEL_3:
  LOBYTE(model) = 0;
LABEL_4:

  return model;
}

- (void)consumeBluetoothSample:(id)sample
{
  sampleCopy = sample;
  dispatch_assert_queue_V2(self->_clientQueue);
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 BOOLForKey:@"HomeDeviceSessionBTLeechingEnabled"];

  if (v6)
  {
    identifier = [sampleCopy identifier];

    if (identifier)
    {
      model = [sampleCopy model];

      if (!model && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004AF0B4();
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004AF124();
    }
  }
}

- (id)printableState
{
  dispatch_assert_queue_V2(self->_clientQueue);
  v3 = objc_opt_new();
  v4 = [NSMutableString stringWithFormat:@"["];
  v5 = [NSMutableString stringWithFormat:@"["];
  ptr = self->_initiatorSession.__ptr_;
  if (ptr)
  {
    [v4 appendFormat:@"%d", (*(ptr + 188) & ((*(ptr + 188) >> 1) >> 15))];
  }

  next = self->_responderSessions.__table_.__first_node_.__next_;
  if (next)
  {
    v8 = @"%d";
    do
    {
      [v5 appendFormat:v8, *(next + 24)];
      next = *next;
      v8 = @", %d";
    }

    while (next);
  }

  [v4 appendString:@"]"];
  [v5 appendString:@"]"];
  currentSessionRole = self->_currentSessionRole;
  if (currentSessionRole == 100)
  {
    v10 = "Unspecified";
  }

  else if (currentSessionRole == 1)
  {
    v10 = "Responder";
  }

  else
  {
    v10 = "Initiator";
  }

  sub_100004A08(__p, v10);
  v11 = v21;
  v12 = __p[0];
  isRunning = self->_isRunning;
  uwbSystemAvailable = self->_uwbSystemAvailable;
  v15 = [NIInternalUtils NINearbyObjectUpdateRateToString:self->_minimumPreferredUpdateRate];
  v16 = __p;
  if (v11 < 0)
  {
    v16 = v12;
  }

  v17 = [NSString stringWithFormat:@"Role: %s. Running: %d. UWB available: %d. Min upd rate: %s", v16, isRunning, uwbSystemAvailable, v15];
  [v3 addObject:v17];

  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  v18 = [NSString stringWithFormat:@"UWB ranging: initiator tickets %@, responder tickets %@. WiFi ranging: %d sessions", v4, v5, self->_wifiSessions.__table_.__size_];
  [v3 addObject:v18];

  return v3;
}

- (void)_handleUWBSystemStateReadinessUpdate:(BOOL)update
{
  updateCopy = update;
  dispatch_assert_queue_V2(self->_clientQueue);
  if (self->_shouldHandleUWBStateReadinessUpdates)
  {
    v21.receiver = self;
    v21.super_class = NIServerHomeDeviceSession;
    resourcesManager = [(NIServerBaseSession *)&v21 resourcesManager];
    uwbSystemAvailable = self->_uwbSystemAvailable;
    v7 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "N";
      if (uwbSystemAvailable)
      {
        v9 = "Y";
      }

      else
      {
        v9 = "N";
      }

      if (updateCopy)
      {
        v8 = "Y";
      }

      *buf = 136315394;
      v23 = v9;
      v24 = 2080;
      v25 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-home,UWB system readiness update. Previously ready? %s. Now ready? %s", buf, 0x16u);
    }

    if (uwbSystemAvailable != updateCopy)
    {
      self->_uwbSystemAvailable = updateCopy;
      remote = [resourcesManager remote];
      [remote didUpdateHomeDeviceUWBRangingAvailability:self->_uwbSystemAvailable];

      configuration = self->_configuration;
      if (!configuration)
      {
        __assert_rtn("[NIServerHomeDeviceSession _handleUWBSystemStateReadinessUpdate:]", "NIServerHomeDeviceSession.mm", 2191, "_configuration");
      }

      if (self->_backoffResumeManager.__ptr_)
      {
        v20 = ([(NIConfiguration *)configuration suspensionPolicy]& 4) != 0;
        if (!self->_uwbSystemAvailable)
        {
          v12 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#ses-home,Overriding lock screen only suspension policy: ENABLED.", buf, 2u);
          }

          v20 = 1;
        }

        sub_1002D2D2C(self->_backoffResumeManager.__ptr_, &v20);
      }

      if (self->_isRunning)
      {
        if (self->_pendingRerunSessionWhenUWBStateUpddate)
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004AF26C();
          }
        }

        else
        {
          v13 = [(NIServerHomeDeviceSession *)self pauseWithSource:2];
          if (v13)
          {
            v14 = v13;
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
            {
              sub_1004AF1FC();
            }

            remote2 = [resourcesManager remote];
            [remote2 uwbSessionDidFailWithError:v14];
          }

          else
          {
            self->_pendingRerunSessionWhenUWBStateUpddate = 1;
            objc_initWeak(buf, self);
            clientQueue = self->_clientQueue;
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1002382A8;
            block[3] = &unk_10098B940;
            objc_copyWeak(&v19, buf);
            v18 = resourcesManager;
            dispatch_async(clientQueue, block);

            objc_destroyWeak(&v19);
            objc_destroyWeak(buf);
          }
        }
      }
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004AF1C0();
  }
}

- (shared_ptr<WiFiRanging::Session>)_buildWifiSession
{
  v7.receiver = self;
  v7.super_class = NIServerHomeDeviceSession;
  resourcesManager = [(NIServerBaseSession *)&v7 resourcesManager];
  serverSessionIdentifier = [resourcesManager serverSessionIdentifier];
  uUIDString = [serverSessionIdentifier UUIDString];

  v5 = uUIDString;
  sub_100004A08(&__p, [uUIDString UTF8String]);
  operator new();
}

- (void)_stopWiFiSessionsWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-home,Stop WiFi sessions with reason: [%@]", &v8, 0xCu);
  }

  p_wifiSessions = &self->_wifiSessions;
  if (p_wifiSessions->__table_.__size_)
  {
    for (i = &p_wifiSessions->__table_.__first_node_; ; sub_10003FFEC(i[3].__next_))
    {
      i = i->__next_;
      if (!i)
      {
        break;
      }
    }

    sub_10023FC38(p_wifiSessions);
  }
}

- (void)_peerHungUp:(unint64_t)up
{
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134283521;
    upCopy = up;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-home,#hangup from address 0x%{private}llx.", buf, 0xCu);
  }

  v12.receiver = self;
  v12.super_class = NIServerHomeDeviceSession;
  v6 = [(NIServerBaseSession *)&v12 discoveryTokenFromIdentifier:up];
  if (v6)
  {
    v11.receiver = self;
    v11.super_class = NIServerHomeDeviceSession;
    resourcesManager = [(NIServerBaseSession *)&v11 resourcesManager];
    lifecycleSupervisor = [resourcesManager lifecycleSupervisor];
    v9 = [lifecycleSupervisor isTrackingPeer:v6];

    if (v9)
    {
      lifecycleSupervisor2 = [resourcesManager lifecycleSupervisor];
      [lifecycleSupervisor2 peerHangupReceived:v6];

      [(NIServerHomeDeviceSession *)self _removePeerObject:v6 uwbIdentifier:up withReason:1];
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004AF548();
  }
}

- (void)_sendHangupSignalForSession:(shared_ptr<rose::objects::GRSession>)session
{
  if (*session.__ptr_)
  {
    ptr = session.__ptr_;
    v5 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      if ((*(*ptr + 752) & 0x10000) != 0)
      {
        v6 = *(*ptr + 752);
      }

      else
      {
        v6 = 0xFFFF;
      }

      *buf = 67109120;
      *&buf[4] = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-home,#hangup Sending hangup signal for session with ticket ID: %d", buf, 8u);
    }

    LOBYTE(__ns.__rep_) = 0;
    sub_100025100(buf, 16);
    v7 = *buf;
    **buf = 258;
    *(v7 + 2) = 0;
    v7[1] = 0;
    sub_100340788(*ptr, buf);
    v8.__rep_ = [(NIServerHomeDeviceSession *)self nominalCycleRate];
    if (v8.__rep_ >= 1)
    {
      v9 = 1000000 * v8.__rep_;
      if (v8.__rep_ >= 0x8637BD057A0)
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      __ns.__rep_ = v9;
      std::this_thread::sleep_for (&__ns);
    }

    if (*buf)
    {
      v12 = *buf;
      operator delete(*buf);
    }
  }
}

- (id)_addPeers:(id)peers
{
  peersCopy = peers;
  v31.receiver = self;
  v31.super_class = NIServerHomeDeviceSession;
  resourcesManager = [(NIServerBaseSession *)&v31 resourcesManager];
  btResource = [resourcesManager btResource];

  if ([(NIHomeDeviceConfiguration *)self->_configuration isAnchor])
  {
    goto LABEL_8;
  }

  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-home,Not an anchor session, verifying responder limit hasn't been reached.", buf, 2u);
  }

  if ([btResource currentPeerCount] < 4)
  {
LABEL_8:
    v24 = +[NSUserDefaults standardUserDefaults];
    v7 = [v24 objectForKey:@"NIHomeDisableAllowListPolicy"];
    v8 = v7 == 0;

    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = [v24 BOOLForKey:@"NIHomeDisableAllowListPolicy"] ^ 1;
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = peersCopy;
    v11 = [v10 countByEnumeratingWithState:&v27 objects:v36 count:16];
    if (v11)
    {
      v13 = *v28;
      *&v12 = 67109378;
      v23 = v12;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          v16 = [(NIServerHomeDeviceSession *)self _homeAnchorVariantFromDiscoveryToken:v15, v23];
          v17 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            v33 = v16;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#ses-home,#allow-list anchor variant from discovery token: %u", buf, 8u);
          }

          if (v16 > 0x3E6)
          {
            v18 = v9;
          }

          else
          {
            v18 = 0;
          }

          if (v18 == 1)
          {
            v19 = qword_1009F9820;
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              descriptionInternal = [v15 descriptionInternal];
              *buf = v23;
              v33 = v16;
              v34 = 2112;
              v35 = descriptionInternal;
              _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "#ses-home,#allow-list peer device anchor variant (%u) not supported. Will not attempt to range with %@", buf, 0x12u);
            }
          }

          else
          {
            rawToken = [v15 rawToken];
            v6 = [btResource addPeerDiscoveryToken:rawToken];

            if (v6)
            {
              goto LABEL_29;
            }
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v27 objects:v36 count:16];
      }

      while (v11);
    }

    v6 = 0;
LABEL_29:
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004AF5B8();
    }

    v6 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5885 userInfo:0];
  }

  return v6;
}

- (void)_roseSession:(shared_ptr<rose:(int)session :objects::RoseBaseSession>)a3 invalidatedWithReason:
{
  var1 = a3.var1;
  v6 = qword_1009F9820;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100342FC8(var1, v10);
    sub_1004AF634(v10);
  }

  [(NIServerHomeDeviceSession *)self invalidate];
  v9.receiver = self;
  v9.super_class = NIServerHomeDeviceSession;
  invalidationHandler = [(NIServerBaseSession *)&v9 invalidationHandler];
  v8 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:0];
  (invalidationHandler)[2](invalidationHandler, v8);
}

- (id)_triggerInitiatorRanging
{
  ptr = self->_initiatorSession.__ptr_;
  if (!ptr)
  {
    sub_1004AF68C();
  }

  LOBYTE(v5) = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0;
  if (sub_10034024C(ptr, &v5))
  {
    v3 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_notifyPeerRemoval:(id)removal withReason:(unint64_t)reason
{
  removalCopy = removal;
  dispatch_assert_queue_V2(self->_clientQueue);
  v15.receiver = self;
  v15.super_class = NIServerHomeDeviceSession;
  resourcesManager = [(NIServerBaseSession *)&v15 resourcesManager];
  remote = [resourcesManager remote];
  v22 = removalCopy;
  v9 = [NSArray arrayWithObjects:&v22 count:1];
  [remote didRemoveNearbyObjects:v9 withReason:reason];

  v10 = sub_100005288();
  discoveryToken = [removalCopy discoveryToken];
  sub_10026C570(&self->_handoffCAManager, [discoveryToken hash], v10);

  if (reason >= 3)
  {
    v12 = &stru_1009B1428;
  }

  else
  {
    v12 = *(&off_1009A02C0 + reason);
  }

  v13 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    containerUniqueIdentifier = self->_containerUniqueIdentifier;
    *buf = 138412802;
    v17 = removalCopy;
    v18 = 2112;
    v19 = v12;
    v20 = 2112;
    v21 = containerUniqueIdentifier;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#ses-home,_notifyPeerRemoval: %@ with reason: %@ for session identifier: %@", buf, 0x20u);
  }
}

- (void)_removePeerObject:(id)object uwbIdentifier:(unint64_t)identifier withReason:(unint64_t)reason
{
  objectCopy = object;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_clientQueue);
  v29.receiver = self;
  v29.super_class = NIServerHomeDeviceSession;
  resourcesManager = [(NIServerBaseSession *)&v29 resourcesManager];
  if (self->_currentSessionRole != 1)
  {
LABEL_7:
    v15 = 1;
    goto LABEL_8;
  }

  v10 = sub_100009978(&self->_responderSessions.__table_.__bucket_list_.__ptr_, &identifierCopy);
  if (v10)
  {
    v11 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(v10 + 24);
      *buf = 67109376;
      LODWORD(v32[0]) = v12;
      WORD2(v32[0]) = 1024;
      *(v32 + 6) = reason != 1;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#ses-home,Invalidating session with ticket ID: %d. Send hangup signal: %d", buf, 0xEu);
    }

    v13 = +[NIServerGRResponderRangingService sharedInstance];
    [v13 stopRangingForTicket:*(v10 + 24) clientIdentifier:self->_containerUniqueIdentifier uwbAddress:identifierCopy sendingHangUp:reason != 1];

    sub_1000223BC(&self->_responderSessions.__table_.__bucket_list_.__ptr_, v10);
    v14 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v32[0] = identifierCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#ses-home,removing 0x%llx from tracked devices", buf, 0xCu);
    }

    goto LABEL_7;
  }

  v15 = 0;
LABEL_8:
  v16 = sub_100009978(&self->_wifiSessions.__table_.__bucket_list_.__ptr_, &identifierCopy);
  v17 = v16;
  if (v16)
  {
    v18 = v16[3];
    if (v18)
    {
      sub_10003FFEC(v18);
    }

    sub_1000237C4(&self->_wifiSessions.__table_.__bucket_list_.__ptr_, v17);
  }

  else if ((v15 & 1) == 0)
  {
    v19 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32[0] = objectCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#ses-home,Did not find a UWB or WiFi ToF session for token: %@", buf, 0xCu);
    }
  }

  [(NINearbyUpdatesEngine *)self->_updatesEngine clearStateForToken:objectCopy];
  v20 = [(NIServerHomeDeviceSession *)self objectFromIdentifier:identifierCopy];
  if (v20)
  {
    [(NIServerHomeDeviceSession *)self _notifyPeerRemoval:v20 withReason:reason];
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004AF6B8();
  }

  btResource = [resourcesManager btResource];
  rawToken = [objectCopy rawToken];
  v23 = [btResource removePeerDiscoveryToken:rawToken];

  if (v23)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004AF6F4();
    }
  }

  else
  {
    btResource2 = [resourcesManager btResource];
    deviceCache = [btResource2 deviceCache];
    rawToken2 = [objectCopy rawToken];
    v27 = [deviceCache uncacheDeviceByTokenData:rawToken2];

    if ((v27 & 1) == 0)
    {
      v28 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v32[0] = objectCopy;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#ses-home,Peer discovery token wasn't cached, so nothing to uncache. Peer likely hadn't been discovered yet. Token: %@", buf, 0xCu);
      }
    }
  }
}

- (int64_t)_roseMotionStateToNIMotionActivityState:(int)state
{
  dispatch_assert_queue_V2(self->_clientQueue);
  if (state == 1)
  {
    return 2;
  }

  else
  {
    return state == 2;
  }
}

- (void)_handleScreenStateChange:(int)change
{
  dispatch_assert_queue_V2(self->_clientQueue);
  v5 = sub_100005288();
  v8.receiver = self;
  v8.super_class = NIServerHomeDeviceSession;
  resourcesManager = [(NIServerBaseSession *)&v8 resourcesManager];
  if (change == 2)
  {
    atomic_store(0, &self->_wifiRangingAllowedLockscreen);
    [(NIServerHomeDeviceSession *)self _stopWiFiSessionsWithReason:@"Not on lock screen."];
    btResource = [resourcesManager btResource];
    [btResource clearWifiRangingActiveAdvertisement];
    goto LABEL_5;
  }

  if (change == 1)
  {
    sub_10033AE6C(self->_wifiCAManager.__ptr_, v5);
    atomic_store(1u, &self->_wifiRangingAllowedLockscreen);
    btResource = [resourcesManager btResource];
    [btResource setWifiRangingActiveAdvertisement];
LABEL_5:
  }
}

- (void)_handleBackoffManagerRecommendation:(int)recommendation machContinuousTimeSec:(double)sec screenState:(int)state
{
  dispatch_assert_queue_V2(self->_clientQueue);
  dispatch_assert_queue_V2(self->_clientQueue);
  v9 = qword_1009F9820;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    sub_1002D435C(recommendation, __p);
    v10 = v19 >= 0 ? __p : __p[0];
    *buf = 136315394;
    v21 = v10;
    v22 = 2048;
    secCopy = sec;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#ses-home,#backoff received backoff-resume manager decision: %s, machContTimeSeconds %f", buf, 0x16u);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v17.receiver = self;
  v17.super_class = NIServerHomeDeviceSession;
  resourcesManager = [(NIServerBaseSession *)&v17 resourcesManager];
  if (recommendation)
  {
    if (recommendation == 1)
    {
      v12 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#ses-home,#backoff notifying interruption ended.", __p, 2u);
      }

      [resourcesManager interruptionReasonEnded:3 monotonicTimeSeconds:sec];
      v13 = ![(NIServerHomeDeviceSession *)self _isWifiRangingAllowed];
      if (state != 1)
      {
        LOBYTE(v13) = 1;
      }

      if ((v13 & 1) == 0)
      {
        btResource = [resourcesManager btResource];
        [btResource setWifiRangingActiveAdvertisement];
      }
    }
  }

  else
  {
    v15 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#ses-home,#backoff notifying interruption started.", __p, 2u);
    }

    btResource2 = [resourcesManager btResource];
    [btResource2 clearWifiRangingActiveAdvertisement];

    [resourcesManager interruptSessionWithReason:3 monotonicTimeSeconds:sec];
  }
}

- (void)_handleWifiRangingAvailableUpdate:(BOOL)update
{
  updateCopy = update;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-home,wifi ranging availability update", buf, 2u);
  }

  atomic_store(updateCopy, &self->_wifiServiceAllowsRanging);
  v6 = qword_1009F9820;
  v7 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
  if (updateCopy)
  {
    if (v7)
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#ses-home,wifi is now available, so wifi ranging is resuming", v9, 2u);
    }

    [(NIServerHomeDeviceSession *)self _resumeWifiRanging];
  }

  else
  {
    if (v7)
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#ses-home,wifi is no longer available, so pausing wifi ranging", v8, 2u);
    }

    [(NIServerHomeDeviceSession *)self _pauseWifiRanging];
  }
}

- (int64_t)_regionCategoryFromModelString:(id)string
{
  if ([string hasPrefix:{@"AudioAccessory6, 1"}])
  {
    return 10;
  }

  else
  {
    return 0;
  }
}

- (void)_calculateMagneticFieldBias
{
  anon_1c8 = self->_anon_1c8;
  if (sub_10023B120(self->_anon_1c8))
  {
    anon_1f8 = self->_anon_1f8;
    if (sub_10023B120(self->_anon_1f8))
    {
      v5 = *(anon_1c8 + 4);
      if (v5 == *(anon_1c8 + 3))
      {
        sub_1004AF790();
      }

      v6 = *&self->_anon_1f8[32];
      if (v6 == *&self->_anon_1f8[24])
      {
        sub_1004AF764();
      }

      v7 = *(v5 - 8);
      v8 = *(v6 - 8);
      if (vabdd_f64(v7, v8) < 0.025)
      {
        v9 = *anon_1c8;
        v10 = 0uLL;
        while (v9 != *(anon_1c8 + 1))
        {
          v11 = *v9++;
          v10 = vaddq_f32(v10, v11);
        }

        v23 = v10;
        *v12.i32 = sub_10023B120(anon_1c8);
        v22 = v12;
        v13 = *anon_1f8;
        v14 = *&self->_anon_1f8[8];
        v15 = 0uLL;
        if (*anon_1f8 != v14)
        {
          do
          {
            v16 = *v13++;
            v15 = vaddq_f32(v15, v16);
          }

          while (v13 != v14);
        }

        v21 = v15;
        *v17.i32 = sub_10023B120(self->_anon_1f8);
        v18 = vsubq_f32(vdivq_f32(v23, vdupq_lane_s32(v22, 0)), vdivq_f32(v21, vdupq_lane_s32(v17, 0)));
        v19 = self->_anon_1a0[24];
        if (v8 >= v7)
        {
          v20 = v8;
        }

        else
        {
          v20 = v7;
        }

        *&self->_estMagneticFieldBias.var0.__null_state_ = v18;
        *&self->_anon_1a0[8] = v20;
        if ((v19 & 1) == 0)
        {
          self->_anon_1a0[24] = 1;
        }
      }
    }
  }
}

- (int)_intentPredictorConfigFromModelString:(id)string
{
  if (sub_10001E184(string) == 201)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (BOOL)_validateDiscoveryTokenDict:(id)dict
{
  dictCopy = dict;
  v4 = dictCopy;
  if (dictCopy)
  {
    v5 = [dictCopy objectForKeyedSubscript:&off_1009C3F98];
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v6 = [v4 objectForKeyedSubscript:&off_1009C3FB0];
      if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v7 = 1;
      }

      else
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004AF7E8();
        }

        v7 = 0;
      }
    }

    else
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004AF824();
      }

      v7 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004AF860();
    }

    v7 = 0;
  }

  return v7;
}

- (unsigned)_flagsFromDiscoveryToken:(id)token
{
  v4 = sub_1003005A0(token);
  if ([(NIServerHomeDeviceSession *)self _validateDiscoveryTokenDict:v4])
  {
    v5 = [v4 objectForKeyedSubscript:&off_1009C3FC8];
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      unsignedIntValue = [v5 unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
    }
  }

  else
  {
    unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

- (int)_magneticFieldStrengthCheckOptionFromDiscoveryToken:(id)token
{
  if ([(NIServerHomeDeviceSession *)self _homeAnchorVariantFromDiscoveryToken:token]== 2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int64_t)_regionCategoryFromDiscoveryToken:(id)token
{
  if (([(NIServerHomeDeviceSession *)self _flagsFromDiscoveryToken:token]& 4) != 0)
  {
    return 10;
  }

  else
  {
    return 0;
  }
}

- (unsigned)_homeAnchorVariantFromDiscoveryToken:(id)token
{
  v4 = sub_1003005A0(token);
  if ([(NIServerHomeDeviceSession *)self _validateDiscoveryTokenDict:v4])
  {
    v5 = [v4 objectForKeyedSubscript:&off_1009C3FE0];
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = sub_10041C9B4([v5 unsignedIntValue]);
      }

      else
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004AF89C();
        }

        v6 = 999;
      }
    }

    else
    {
      v7 = qword_1009F9820;
      v6 = 0;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-home,nil value for HomeAnchorVariant", v9, 2u);
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 999;
  }

  return v6;
}

- (int)_intentPredictorConfigFromDiscoveryToken:(id)token
{
  if ([(NIServerHomeDeviceSession *)self _homeAnchorVariantFromDiscoveryToken:token]== 2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (BOOL)_requiresScreenOn
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 BOOLForKey:@"NIHomeDeviceSessionForceScreenOffOperation"];

  if (v4)
  {
    return 0;
  }

  else
  {
    return [(NIConfiguration *)self->_configuration suspensionPolicy]& 1;
  }
}

- (void)responderServiceTicketId:(unsigned __int16)id didChangeRangingUpdateRate:(int)rate newThrottleRate:(float)throttleRate prevThrottleRate:(float)prevThrottleRate effectiveSinceCycleInde:(int)inde
{
  idCopy = id;
  v25.receiver = self;
  v25.super_class = NIServerHomeDeviceSession;
  resourcesManager = [(NIServerBaseSession *)&v25 resourcesManager];
  if (rate)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004AF8D8();
    }

    v26 = NSLocalizedDescriptionKey;
    v27 = @"Failed to adjust ranging rate.";
    v14 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v15 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v14];

    remote = [resourcesManager remote];
    [remote uwbSessionDidFailWithError:v15];
  }

  else
  {
    next = self->_responderSessions.__table_.__first_node_.__next_;
    if (!next)
    {
      goto LABEL_19;
    }

    v18 = 0;
    v19 = 0;
    do
    {
      if (*(next + 24) == idCopy)
      {
        v19 = next[2];
      }

      v18 |= *(next + 24) == idCopy;
      next = *next;
    }

    while (next);
    if (v18)
    {
      v20 = [(NIServerHomeDeviceSession *)self objectFromIdentifier:v19];
      discoveryToken = [v20 discoveryToken];
      v22.__rep_ = [(NIServerHomeDeviceSession *)self nominalCycleRate];
      *&v23 = throttleRate;
      [(NIServerHomeDeviceSession *)self _updateAnalyticsAboutRangingRateForDevice:discoveryToken responseSkipRatio:v22.__rep_ cycleRate:v23];

      v24 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        v29 = v20;
        v30 = 2048;
        throttleRateCopy = throttleRate;
        v32 = 2048;
        prevThrottleRateCopy = prevThrottleRate;
        v34 = 1024;
        indeCopy = inde;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#ses-home,#throttle Adjusting throttle rate succeeded for object %@. New rate %0.2f, old rate: %0.2f, cycle index: %d", buf, 0x26u);
      }
    }

    else
    {
LABEL_19:
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004AF914();
      }
    }
  }
}

- (void)responderSessionDidInvalidatedWithReason:(int)reason serviceTicketId:(unsigned __int16)id
{
  idCopy = id;
  v7 = qword_1009F9820;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100342FC8(reason, v12);
    sub_1004AF634(v12);
  }

  next = self->_responderSessions.__table_.__first_node_.__next_;
  if (next)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      while (*(next + 24) == idCopy)
      {
        v10 = next[2];
        next = *next;
        v9 = 1;
        if (!next)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      next = *next;
    }

    while (next);
    v11 = v10;
    if ((v9 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    sub_10023DF54(&self->_responderSessions.__table_.__bucket_list_.__ptr_, &v11);
  }

  else
  {
LABEL_12:
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004AF950();
    }
  }
}

- (void)updatesEngine:(id)engine didUpdateNearbyObjects:(id)objects
{
  engineCopy = engine;
  objectsCopy = objects;
  if (self->_updatesEngine != engineCopy)
  {
    __assert_rtn("[NIServerHomeDeviceSession updatesEngine:didUpdateNearbyObjects:]", "NIServerHomeDeviceSession.mm", 3215, "engine == _updatesEngine");
  }

  clientQueue = self->_clientQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10023BB2C;
  v10[3] = &unk_10098A2E8;
  v10[4] = self;
  v11 = objectsCopy;
  v9 = objectsCopy;
  dispatch_async(clientQueue, v10);
}

- (void)updatesEngine:(id)engine object:(id)object didUpdateRegion:(id)region previousRegion:(id)previousRegion regionTransitionSuppressed:(BOOL)suppressed
{
  suppressedCopy = suppressed;
  engineCopy = engine;
  objectCopy = object;
  regionCopy = region;
  previousRegionCopy = previousRegion;
  if (self->_updatesEngine != engineCopy)
  {
    __assert_rtn("[NIServerHomeDeviceSession updatesEngine:object:didUpdateRegion:previousRegion:regionTransitionSuppressed:]", "NIServerHomeDeviceSession.mm", 3270, "engine == _updatesEngine");
  }

  v16 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v23 = regionCopy;
    v24 = 2112;
    v25 = previousRegionCopy;
    v26 = 1024;
    v27 = suppressedCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#ses-home,#regions, updatesEngine didUpdateRegion: %@, previousRegion: %@, suppressed: %d", buf, 0x1Cu);
  }

  [(NIServerHomeDeviceSession *)self adjustResponderThrottleRateIfNeeded:regionCopy object:objectCopy];
  if (regionCopy | previousRegionCopy && !suppressedCopy)
  {
    clientQueue = self->_clientQueue;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10023BFA4;
    v18[3] = &unk_10099C2A0;
    v18[4] = self;
    v19 = objectCopy;
    v20 = regionCopy;
    v21 = previousRegionCopy;
    dispatch_async(clientQueue, v18);
  }
}

- (id)objectFromIdentifier:(unint64_t)identifier
{
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_clientQueue);
  v11.receiver = self;
  v11.super_class = NIServerHomeDeviceSession;
  v5 = [(NIServerBaseSession *)&v11 objectFromIdentifier:identifier];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
LABEL_5:
    v9 = v7;
    goto LABEL_6;
  }

  v8 = sub_100009978(&self->_btIdentifierHashToObjectMap.__table_.__bucket_list_.__ptr_, &identifierCopy);
  if (v8)
  {
    v7 = v8[3];
    goto LABEL_5;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004AF98C(&identifierCopy);
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (void)peerInactivityPeriodExceeded:(id)exceeded
{
  exceededCopy = exceeded;
  dispatch_assert_queue_V2(self->_clientQueue);
  v8.receiver = self;
  v8.super_class = NIServerHomeDeviceSession;
  v5 = [(NIServerBaseSession *)&v8 identifierFromDiscoveryToken:exceededCopy];
  if (v6)
  {
    [(NIServerHomeDeviceSession *)self _removePeerObject:exceededCopy uwbIdentifier:v5 withReason:0];
  }

  else
  {
    v7 = [[NINearbyObject alloc] initWithToken:exceededCopy];
    [(NIServerHomeDeviceSession *)self _notifyPeerRemoval:v7 withReason:0];
  }
}

- (void)didUpdateMinimumPreferredUpdateRate:(int64_t)rate
{
  clientQueue = self->_clientQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10023C564;
  v4[3] = &unk_10098A450;
  v4[4] = self;
  v4[5] = rate;
  dispatch_async(clientQueue, v4);
}

- (void)adjustResponderThrottleRateIfNeeded:(id)needed object:(id)object
{
  neededCopy = needed;
  objectCopy = object;
  v8 = objectCopy;
  if (self->_currentSessionRole == 1)
  {
    discoveryToken = [objectCopy discoveryToken];
    v25.receiver = self;
    v25.super_class = NIServerHomeDeviceSession;
    v26 = [(NIServerBaseSession *)&v25 identifierFromDiscoveryToken:discoveryToken];
    v27 = v10;

    if (v27)
    {
      v11 = sub_100009978(&self->_responderSessions.__table_.__bucket_list_.__ptr_, &v26);
      if (v11)
      {
        v12 = +[NSUserDefaults standardUserDefaults];
        v13 = [v12 objectForKey:@"NIHomeForceThrottleRate"];

        if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          [v13 doubleValue];
          v15 = v14;
          v16 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            v29 = v15;
            v30 = 2112;
            *v31 = v8;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#ses-home,#throttle adjustResponderThrottleRateIfNeeded. Force throttle rate: %0.2f. Object: %@", buf, 0x16u);
          }
        }

        else
        {
          if (neededCopy)
          {
            minimumPreferredUpdateRate = [neededCopy preferredUpdateRate];
          }

          else
          {
            minimumPreferredUpdateRate = 0;
          }

          if ([NIInternalUtils nearbyObjectUpdateRate:self->_minimumPreferredUpdateRate isGreaterThan:minimumPreferredUpdateRate])
          {
            minimumPreferredUpdateRate = self->_minimumPreferredUpdateRate;
          }

          if (minimumPreferredUpdateRate)
          {
            if (minimumPreferredUpdateRate == 1)
            {
              v15 = 0.38;
            }

            else
            {
              v15 = 0.0;
              if (minimumPreferredUpdateRate == 3)
              {
                if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
                {
                  sub_1004AFAA8();
                }

                v18 = qword_1009F9820;
                if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315650;
                  v29 = COERCE_DOUBLE("/Library/Caches/com.apple.xbs/Sources/Proximity/Daemon/Services/NearbyInteraction/Session/NIServerHomeDeviceSession.mm");
                  v30 = 1024;
                  *v31 = 3541;
                  *&v31[4] = 2080;
                  *&v31[6] = "[NIServerHomeDeviceSession adjustResponderThrottleRateIfNeeded:object:]";
                  _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "#ses-home,%s:%d: assertion failure in %s", buf, 0x1Cu);
                }

                abort();
              }
            }
          }

          else
          {
            v15 = 0.75;
          }

          v19 = qword_1009F9820;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = [NIInternalUtils NINearbyObjectUpdateRateToString:minimumPreferredUpdateRate];
            *buf = 136315906;
            v29 = *&v20;
            v30 = 2048;
            *v31 = v15;
            *&v31[8] = 2112;
            *&v31[10] = neededCopy;
            v32 = 2112;
            v33 = v8;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#ses-home,#throttle adjustResponderThrottleRateIfNeeded. Update rate: %s. Throttle rate: %0.2f. Region: %@. Object: %@", buf, 0x2Au);
          }
        }

        v21 = +[NIServerGRResponderRangingService sharedInstance];
        *&v22 = v15;
        v23 = [v21 throttleSuperframeParticipationWithRate:*(v11 + 24) forTicket:self->_containerUniqueIdentifier clientIdentifier:v22];

        if (v23)
        {
          v24 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v29 = v15;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#ses-home,#throttle success scheduling throttling request for rate %0.2f", buf, 0xCu);
          }
        }
      }

      else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004AFB18();
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004AFA38();
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004AF9FC();
  }
}

- (void)_updateAnalyticsAboutRangingRateForDevice:(id)device responseSkipRatio:(float)ratio cycleRate:(duration<long)long
{
  deviceCopy = device;
  v8 = [deviceCopy hash];
  v9 = sub_100005288();
  sub_10026C054(&self->_handoffCAManager, v8, ((ratio * 19.0 + 1.0) * a5.__rep_), v9);
}

- (id).cxx_construct
{
  self->_pbLogger.__ptr_ = 0;
  self->_pbLogger.__cntrl_ = 0;
  self->_initiatorSession.__ptr_ = 0;
  self->_initiatorSession.__cntrl_ = 0;
  self->_responderSessions.__table_.__bucket_list_ = 0u;
  *&self->_responderSessions.__table_.__first_node_.__next_ = 0u;
  self->_responderSessions.__table_.__max_load_factor_ = 1.0;
  self->_wifiSessions.__table_.__bucket_list_ = 0u;
  *&self->_wifiSessions.__table_.__first_node_.__next_ = 0u;
  self->_wifiSessions.__table_.__max_load_factor_ = 1.0;
  self->_backoffResumeManager.__ptr_ = 0;
  self->_backoffResumeManager.__cntrl_ = 0;
  sub_10026C050(&self->_handoffCAManager, a2);
  self->_wifiCAManager.__ptr_ = 0;
  self->_wifiCAManager.__cntrl_ = 0;
  self->_filteredMFStrength.var0.__null_state_ = 0;
  self->_filteredMFStrength.__engaged_ = 0;
  self->_estMagneticFieldBias.var0.__null_state_ = 0;
  self->_anon_1a0[24] = 0;
  *&self->_anon_1c8[16] = 0u;
  *&self->_anon_1c8[32] = 0u;
  *self->_anon_1c8 = 0u;
  *self->_anon_1f8 = 0u;
  *&self->_anon_1f8[16] = 0u;
  *&self->_anon_1f8[32] = 0u;
  sub_1002FE758(&self->_machTimeConverter, v3);
  self->_cachedRegionUpdateEvent.var0.__null_state_ = 0;
  self->_cachedRegionUpdateEvent.__engaged_ = 0;
  self->_btIdentifierHashToObjectMap.__table_.__bucket_list_ = 0u;
  *&self->_btIdentifierHashToObjectMap.__table_.__first_node_.__next_ = 0u;
  self->_btIdentifierHashToObjectMap.__table_.__max_load_factor_ = 1.0;
  return self;
}

@end