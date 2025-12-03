@interface NIServerItemLocalizerSession
- (BOOL)_isExtendedDistanceMeasurementLocallySupported;
- (BOOL)_isSessionRunning;
- (BOOL)_setCompanionDeviceRoseMacAddress;
- (BOOL)_shouldRange;
- (BOOL)_stopRangingMangagerAndCompanion:(id *)companion shouldReconfigureLocalRangingSession:(BOOL)session;
- (BOOL)_updateNBAMMSCompanionConfigurationCommandWithRequest:(const void *)request rangeConfig:(RangeConfigNBAMMS *)config;
- (BOOL)isExtendedDistanceMeasurementEnabled;
- (BOOL)updateConfiguration:(id)configuration;
- (NIServerItemLocalizerSession)initWithResourcesManager:(id)manager configuration:(id)configuration error:(id *)error;
- (RoseDeviceDescriptor)_getCompanionDescriptor;
- (RoseStartRangingOptions)_populateP2PRoseStartRangingOptions;
- (basic_string<char,)uniqueIdentifierForEngine:(std::allocator<char>> *__return_ptr)retstr;
- (float)_adjustDutyCycleForInterfaceDelays:(float)delays schedulingInterval:(unsigned int)interval;
- (id).cxx_construct;
- (id)_bringUpUpdatesEngine;
- (id)_buildRoseSession:(const void *)session;
- (id)_configureRangingSession;
- (id)_getDictFromRangeConfigNBAMMS:(RangeConfigNBAMMS *)s;
- (id)_populateRoseStartOptionsAndStartRanging;
- (id)_reconfigureRangingSession;
- (id)_resetToPrewarmedState;
- (id)configure;
- (id)discoveryTokenFromIdentifier:(unint64_t)identifier;
- (id)getResourcesManager;
- (id)objectFromIdentifier:(unint64_t)identifier;
- (id)pauseWithSource:(int64_t)source;
- (id)run;
- (optional<rose::RoseServiceRequest>)_prepareNBAMMSServiceRequest;
- (optional<rose::RoseServiceRequest>)_prepareP2PServiceRequest;
- (optional<unsigned)_getDitherConst:(BOOL)const;
- (optional<unsigned)_getRoseServiceRequestTicketId;
- (optional<unsigned)identifierFromDiscoveryToken:(id)token;
- (unint64_t)macAddressForIRK:(id)k;
- (unint64_t)requiresNarrowbandToRun;
- (unsigned)_pickRandomNbUwbAcquisitionChannelWithUUID:(id)d;
- (void)_cbBluetoothStateChangedHandler;
- (void)_cbErrorHandler:(id)handler;
- (void)_cbInterruptionHandler;
- (void)_checkForNearbyObjectRemovalUponLosingDistanceUpdates;
- (void)_cleanupRangingManagerAndCompanionAfterError:(id)error;
- (void)_combineAndReportLocalAndCompanionRangingRequestStatus;
- (void)_configureCompanionForRanging;
- (void)_deinitCompanion;
- (void)_handleError:(id)error;
- (void)_informClientOfNearbyObjectRemoval;
- (void)_initCompanion:(id)companion;
- (void)_invalidateRangingSession;
- (void)_populateRangingSessionMacMode;
- (void)_printState;
- (void)_processXPCEvent:(id)event;
- (void)_selectNBAMMSMode;
- (void)_sendRangingStartOrEndXPCmessageToWRM:(BOOL)m;
- (void)_sendRegistrationMessageToWRM;
- (void)_startAltitudeUpdates;
- (void)_startDeviceMotionUpdates;
- (void)_startPDRUpdates;
- (void)_startRanging;
- (void)_startSensorUpdates;
- (void)_stopAltitudeUpdates;
- (void)_stopDeviceMotionUpdates;
- (void)_stopPDRUpdates;
- (void)_stopSensorUpdates;
- (void)_updateAnalyticsWithRangingMode;
- (void)_updateNearbyObjectStatusWithDisconnect;
- (void)_updateNearbyObjectStatusWithSuccessfulConfiguration;
- (void)didInvalidateUWBSession;
- (void)didReceiveNewSolution:(const void *)solution;
- (void)didReceiveSessionStartNotification:(const void *)notification;
- (void)didReceiveUnsuccessfulSolution:(const void *)solution;
- (void)didServiceRequestUpdateStatus:(ServiceRequestStatusUpdate)status;
- (void)findMyAccessoryManager:(id)manager didCompleteRangingOnDevice:(id)device withStatus:(unsigned int)status endReason:(unsigned __int8)reason error:(id)error;
- (void)findMyAccessoryManager:(id)manager didConfigureRangingOnDevice:(id)device withStatus:(unsigned int)status error:(id)error;
- (void)findMyAccessoryManager:(id)manager didConnectDevice:(id)device error:(id)error;
- (void)findMyAccessoryManager:(id)manager didDeinitRangingOnDevice:(id)device withStatus:(unsigned int)status error:(id)error;
- (void)findMyAccessoryManager:(id)manager didDisconnectDevice:(id)device;
- (void)findMyAccessoryManager:(id)manager didFailWithError:(id)error forDevice:(id)device;
- (void)findMyAccessoryManager:(id)manager didFetchAccessoryInformationForDevice:(id)device ownershipType:(unint64_t)type communicationProtocol:(unint64_t)protocol accessoryTypeName:(id)name error:(id)error;
- (void)findMyAccessoryManager:(id)manager didFetchFindingCapabilitiesOnDevice:(id)device withFindingCapabilities:(id)capabilities error:(id)error;
- (void)findMyAccessoryManager:(id)manager didHaveRangingMovementOnDevice:(id)device;
- (void)findMyAccessoryManager:(id)manager didInitRangingOnDevice:(id)device withStatus:(unsigned int)status error:(id)error;
- (void)findMyAccessoryManager:(id)manager didPrepareRangingOnDevice:(id)device withConnInterval:(id)interval error:(id)error;
- (void)findMyAccessoryManager:(id)manager didStartRangingOnDevice:(id)device error:(id)error;
- (void)invalidate;
- (void)processVisionInput:(id)input;
- (void)updatesEngine:(id)engine didUpdateAlgorithmConvergenceState:(id)state forObject:(id)object;
- (void)updatesEngine:(id)engine didUpdateNearbyObjects:(id)objects;
@end

@implementation NIServerItemLocalizerSession

- (NIServerItemLocalizerSession)initWithResourcesManager:(id)manager configuration:(id)configuration error:(id *)error
{
  managerCopy = manager;
  configurationCopy = configuration;
  v11 = objc_opt_class();
  if (v11 != objc_opt_class())
  {
    v66 = +[NSAssertionHandler currentHandler];
    [v66 handleFailureInMethod:a2 object:self file:@"NIServerItemLocalizerSession.mm" lineNumber:460 description:@"NIServerItemLocalizerSession given invalid configuration."];
  }

  serverSessionIdentifier = [managerCopy serverSessionIdentifier];

  if (!serverSessionIdentifier)
  {
    v67 = +[NSAssertionHandler currentHandler];
    [v67 handleFailureInMethod:a2 object:self file:@"NIServerItemLocalizerSession.mm" lineNumber:461 description:{@"Invalid parameter not satisfying: %@", @"resourcesManager.serverSessionIdentifier"}];
  }

  v13 = sub_1000054A8();
  if ((sub_100460AF8(v13) & 1) == 0)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BDE10();
    }

    selfCopy2 = 0;
    goto LABEL_50;
  }

  v83.receiver = self;
  v83.super_class = NIServerItemLocalizerSession;
  selfCopy2 = [(NIServerBaseSession *)&v83 initWithResourcesManager:managerCopy configuration:configurationCopy error:error];
  if (selfCopy2)
  {
    clientConnectionQueue = [managerCopy clientConnectionQueue];
    clientQueue = selfCopy2->_clientQueue;
    selfCopy2->_clientQueue = clientConnectionQueue;

    v17 = [configurationCopy copy];
    machContinuousTimeSec = selfCopy2->_machTimeConverter.fStartTimes.machContinuousTimeSec;
    *&selfCopy2->_machTimeConverter.fStartTimes.machContinuousTimeSec = v17;

    sessionDiscoveryToken = [*&selfCopy2->_machTimeConverter.fStartTimes.machContinuousTimeSec sessionDiscoveryToken];
    v20 = sessionDiscoveryToken == 0;

    if (v20)
    {
      v68 = +[NSAssertionHandler currentHandler];
      [v68 handleFailureInMethod:a2 object:selfCopy2 file:@"NIServerItemLocalizerSession.mm" lineNumber:475 description:@"NIServerItemLocalizerSession given invalid configuration without discovery token."];
    }

    v21 = qword_1009F9820;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      descriptionInternal = [*&selfCopy2->_machTimeConverter.fStartTimes.machContinuousTimeSec descriptionInternal];
      *buf = 138412290;
      *&buf[4] = descriptionInternal;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,NI item localizer configuration %@", buf, 0xCu);
    }

    serverSessionIdentifier2 = [managerCopy serverSessionIdentifier];
    uUIDString = [serverSessionIdentifier2 UUIDString];
    containerUniqueIdentifier = selfCopy2->_containerUniqueIdentifier;
    selfCopy2->_containerUniqueIdentifier = uUIDString;

    [*&selfCopy2->_machTimeConverter.fStartTimes.machContinuousTimeSec setSupportsCameraAssistance:{+[NIPlatformInfo supportsSyntheticAperture](NIPlatformInfo, "supportsSyntheticAperture")}];
    selfCopy2->_hasFetchedFindingCapability = 0;
    selfCopy2->_accessorySupportsFC1ND = 1;
    selfCopy2->_accessorySupportsNBAMMS = 0;
    *&selfCopy2->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_slot_sz_250us.var0.__null_state_ = 0;
    selfCopy2->_companionRoseState = 0;
    selfCopy2->_companionConnectionState = 0;
    selfCopy2->_companionRangingState = 0;
    selfCopy2->_localRangingState = 1;
    selfCopy2->_clientRequestState = 0;
    selfCopy2->_nearbyObjectStatus = 0;
    selfCopy2->_didHaveDistanceInlastUpdatesEngineObject = 0;
    selfCopy2->_didSuspendSessionAccessoryInUse = 0;
    selfCopy2->_cleaningUponDidFail = 0;
    if (managerCopy)
    {
      [managerCopy protobufLogger];
      v26 = *buf;
    }

    else
    {
      v26 = 0;
    }

    *buf = 0;
    *&buf[8] = 0;
    cntrl = selfCopy2->_pbLogger.__cntrl_;
    selfCopy2->_pbLogger = v26;
    if (cntrl)
    {
      sub_10000AD84(cntrl);
    }

    if (*&buf[8])
    {
      sub_10000AD84(*&buf[8]);
    }

    if (selfCopy2->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_pkt_type.__engaged_)
    {
      selfCopy2->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_pkt_type.__engaged_ = 0;
    }

    selfCopy2->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_bch.var0.__null_state_ = 0;
    selfCopy2->_accessoryInformationRequestState = 0;
    selfCopy2->_ownershipType = 0;
    selfCopy2->_communicationProtocol = 0;
    sessionDiscoveryToken2 = [*&selfCopy2->_machTimeConverter.fStartTimes.machContinuousTimeSec sessionDiscoveryToken];
    v71 = sub_1003005A0(sessionDiscoveryToken2);

    v29 = [NSString alloc];
    v30 = [v71 objectForKeyedSubscript:&off_1009C4100];
    v70 = [v29 initWithData:v30 encoding:4];

    v69 = [[NSUUID alloc] initWithUUIDString:v70];
    v31 = [[CompanionDevice alloc] initWithCompanionUUID:v69];
    companionDevice = selfCopy2->_companionDevice;
    selfCopy2->_companionDevice = v31;

    v33 = qword_1009F9820;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      uUID = [(CompanionDevice *)selfCopy2->_companionDevice UUID];
      *buf = 138412290;
      *&buf[4] = uUID;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Session initialized for %@", buf, 0xCu);
    }

    selfCopy2->_useMixedMMSForNBARanging = 0;
    selfCopy2->_useTimeDitheringForNBARanging = 1;
    selfCopy2->_usePreambleRandomizationForNBARanging = 1;
    v35 = +[NSUserDefaults standardUserDefaults];
    v36 = [v35 objectForKey:@"NBTimeDitheringForItemFinding"];
    v37 = v36 == 0;

    if (!v37)
    {
      v38 = [v35 BOOLForKey:@"NBTimeDitheringForItemFinding"];
      v39 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v40 = "NO";
        if (v38)
        {
          v40 = "YES";
        }

        *buf = 136315138;
        *&buf[4] = v40;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,NBTimeDitheringForItemFinding defaults set to %s", buf, 0xCu);
      }

      selfCopy2->_useTimeDitheringForNBARanging = v38;
    }

    v41 = [v35 objectForKey:@"NBPreambleRandomizationForItemFinding"];
    v42 = v41 == 0;

    if (!v42)
    {
      v43 = [v35 BOOLForKey:@"NBPreambleRandomizationForItemFinding"];
      v44 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v45 = "NO";
        if (v43)
        {
          v45 = "YES";
        }

        *buf = 136315138;
        *&buf[4] = v45;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,NBPreambleRandomizationForItemFinding defaults set to %s", buf, 0xCu);
      }

      selfCopy2->_usePreambleRandomizationForNBARanging = v43;
    }

    selfCopy2->_noAvailableSlotForNBARanging = 0;
    v46 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v47 = "NO";
      if (selfCopy2->_useTimeDitheringForNBARanging)
      {
        v48 = "YES";
      }

      else
      {
        v48 = "NO";
      }

      if (selfCopy2->_usePreambleRandomizationForNBARanging)
      {
        v47 = "YES";
      }

      *buf = 136315394;
      *&buf[4] = v48;
      *&buf[12] = 2080;
      *&buf[14] = v47;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,_useTimeDitheringForNBARanging set to %s, _usePreambleRandomizationForNBARanging set to %s", buf, 0x16u);
    }

    mach_service = xpc_connection_create_mach_service("com.apple.WirelessCoexManager", selfCopy2->_clientQueue, 0);
    coexConnection = selfCopy2->_coexConnection;
    selfCopy2->_coexConnection = mach_service;

    v51 = selfCopy2->_coexConnection;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100317C54;
    handler[3] = &unk_1009A4A48;
    self = selfCopy2;
    selfCopy = self;
    xpc_connection_set_event_handler(v51, handler);
    xpc_connection_resume(selfCopy2->_coexConnection);
    [(NIServerItemLocalizerSession *)self _sendRegistrationMessageToWRM];
    if ([(NIServerItemLocalizerSession *)self _setCompanionDeviceRoseMacAddress])
    {
      v52 = [[CLFindMyAccessoryManager alloc] initWithDelegate:self delegateQueue:selfCopy2->_clientQueue];
      companionRangingManager = self->_companionRangingManager;
      self->_companionRangingManager = v52;

      v54 = objc_alloc_init(NSOperationQueue);
      v55 = *&self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.nb_channel_selection_mask.var0.__null_state_;
      *&self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.nb_channel_selection_mask.var0.__null_state_ = v54;

      [*&self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.nb_channel_selection_mask.var0.__null_state_ setUnderlyingQueue:selfCopy2->_clientQueue];
      v56 = objc_opt_new();
      v57 = *&self->_machTimeConverter.fStartTimes.valid;
      *&self->_machTimeConverter.fStartTimes.valid = v56;

      [*&self->_machTimeConverter.fStartTimes.valid setDispatchQueue:selfCopy2->_clientQueue];
      v58 = [NSString stringWithFormat:@"nearbyd-itemLocalizer"];
      [*&self->_machTimeConverter.fStartTimes.valid setLabel:v58];

      objc_initWeak(buf, self);
      v79[0] = _NSConcreteStackBlock;
      v79[1] = 3221225472;
      v79[2] = sub_100317CDC;
      v79[3] = &unk_10098AB18;
      objc_copyWeak(&v80, buf);
      [*&self->_machTimeConverter.fStartTimes.valid setInterruptionHandler:v79];
      v77[0] = _NSConcreteStackBlock;
      v77[1] = 3221225472;
      v77[2] = sub_100317D38;
      v77[3] = &unk_10098AB40;
      objc_copyWeak(&v78, buf);
      [*&self->_machTimeConverter.fStartTimes.valid setErrorHandler:v77];
      v75[0] = _NSConcreteStackBlock;
      v75[1] = 3221225472;
      v75[2] = sub_100317DAC;
      v75[3] = &unk_10098AB18;
      objc_copyWeak(&v76, buf);
      [*&self->_machTimeConverter.fStartTimes.valid setBluetoothStateChangedHandler:v75];
      v59 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v74 = 0;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,CBController: Activating", v74, 2u);
      }

      v60 = sub_100005288();
      v61 = *&self->_machTimeConverter.fStartTimes.valid;
      v72[0] = _NSConcreteStackBlock;
      v72[1] = 3221225472;
      v72[2] = sub_100317E08;
      v72[3] = &unk_10099BB00;
      v73[1] = *&v60;
      objc_copyWeak(v73, buf);
      [v61 activateWithCompletion:v72];
      getResourcesManager = [(NIServerItemLocalizerSession *)self getResourcesManager];
      analytics = [getResourcesManager analytics];
      machAbsoluteTimeSec = self->_machTimeConverter.fStartTimes.machAbsoluteTimeSec;
      *&self->_machTimeConverter.fStartTimes.machAbsoluteTimeSec = analytics;

      selfCopy2 = self;
      objc_destroyWeak(v73);
      objc_destroyWeak(&v76);
      objc_destroyWeak(&v78);
      objc_destroyWeak(&v80);
      objc_destroyWeak(buf);
    }

    else
    {
      selfCopy2 = 0;
    }

LABEL_50:
  }

  return selfCopy2;
}

- (id)configure
{
  dispatch_assert_queue_V2(self->_clientQueue);
  if (!*&self->_machTimeConverter.fStartTimes.machContinuousTimeSec)
  {
    sub_1004BDEF8();
  }

  v3 = qword_1009F9820;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [(CompanionDevice *)self->_companionDevice UUID];
    v24 = 138412290;
    v25 = uUID;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,configure for device %@", &v24, 0xCu);
  }

  if ([(NIServerItemLocalizerSession *)self _shouldRange])
  {
    _bringUpUpdatesEngine = [(NIServerItemLocalizerSession *)self _bringUpUpdatesEngine];
    if (_bringUpUpdatesEngine)
    {
      v6 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Can't update configuration, updateEngine couldn't be brought up", &v24, 2u);
      }

      goto LABEL_44;
    }

    [(NIServerItemLocalizerSession *)self _startSensorUpdates];
  }

  else
  {
    updatesEngine = self->_updatesEngine;
    if (updatesEngine)
    {
      [(NINearbyUpdatesEngine *)updatesEngine invalidate];
      v8 = self->_updatesEngine;
    }

    else
    {
      v8 = 0;
    }

    self->_updatesEngine = 0;

    [(NIServerItemLocalizerSession *)self _stopSensorUpdates];
    self->_didHaveDistanceInlastUpdatesEngineObject = 0;
    [(NIServerItemLocalizerSession *)self _checkForNearbyObjectRemovalUponLosingDistanceUpdates];
  }

  accessoryInformationRequestState = self->_accessoryInformationRequestState;
  if (accessoryInformationRequestState == 1)
  {
    goto LABEL_43;
  }

  if (!accessoryInformationRequestState)
  {
    v10 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,[CL] fetchAccessoryInformation", &v24, 2u);
    }

    companionRangingManager = self->_companionRangingManager;
    uUID2 = [(CompanionDevice *)self->_companionDevice UUID];
    [(CLFindMyAccessoryManager *)companionRangingManager fetchAccessoryInformationForDevice:uUID2];

    _bringUpUpdatesEngine = 0;
    self->_accessoryInformationRequestState = 1;
    goto LABEL_44;
  }

  if ([*&self->_machTimeConverter.fStartTimes.machContinuousTimeSec preferredUpdateRate] == 3 && -[NIServerItemLocalizerSession _isSessionRunning](self, "_isSessionRunning"))
  {
    _resetToPrewarmedState = [(NIServerItemLocalizerSession *)self _resetToPrewarmedState];
    _bringUpUpdatesEngine = _resetToPrewarmedState;
    if (_resetToPrewarmedState)
    {
      v14 = _resetToPrewarmedState;
    }

    else
    {
      v22 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Reset running session to prewarmed state", &v24, 2u);
      }
    }

    goto LABEL_44;
  }

  if (![(NIServerItemLocalizerSession *)self _shouldPrewarmRanging])
  {
    goto LABEL_43;
  }

  v15 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v24) = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Prewarming Stage", &v24, 2u);
  }

  if (!self->_hasFetchedFindingCapability || ([(NIServerItemLocalizerSession *)self _configureRangingSession], (_bringUpUpdatesEngine = objc_claimAutoreleasedReturnValue()) == 0))
  {
    [(NIServerItemLocalizerSession *)self _combineAndReportLocalAndCompanionRangingRequestStatus];
    _bringUpUpdatesEngine = 0;
    companionConnectionState = self->_companionConnectionState;
    if (companionConnectionState > 2)
    {
      if (companionConnectionState != 4)
      {
        if (companionConnectionState != 3)
        {
          goto LABEL_44;
        }

        v20 = qword_1009F9820;
        if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_43;
        }

        LOWORD(v24) = 0;
        v21 = "#ses-item-loc,Already connected - waiting for other callbacks from CL";
        goto LABEL_42;
      }
    }

    else
    {
      if (companionConnectionState < 2)
      {
        self->_companionConnectionState = 2;
        self->_clientRequestState = 1;
        v17 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v24) = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,[CL] connectDevice", &v24, 2u);
        }

        v18 = self->_companionRangingManager;
        uUID3 = [(CompanionDevice *)self->_companionDevice UUID];
        [(CLFindMyAccessoryManager *)v18 connectDevice:uUID3];

        goto LABEL_43;
      }

      if (companionConnectionState != 2)
      {
        goto LABEL_44;
      }
    }

    v20 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      v21 = "#ses-item-loc,Attempting to connect or disconnect - waiting for callback from CL";
LABEL_42:
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v21, &v24, 2u);
    }

LABEL_43:
    _bringUpUpdatesEngine = 0;
  }

LABEL_44:

  return _bringUpUpdatesEngine;
}

- (id)run
{
  dispatch_assert_queue_V2(self->_clientQueue);
  v3 = qword_1009F9820;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [(CompanionDevice *)self->_companionDevice UUID];
    *buf = 138412290;
    v33 = uUID;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,run for device %@", buf, 0xCu);
  }

  if (![(NIServerItemLocalizerSession *)self _shouldRange])
  {
    goto LABEL_15;
  }

  if (self->_accessoryInformationRequestState != 2)
  {
    v9 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "#ses-item-loc,Still fetching information from CL. Cannot run session now";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 2u);
    }

LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  if (self->_companionConnectionState != 3 || self->_companionRoseState != 3)
  {
    v9 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "#ses-item-loc,Waiting for prewarming to complete. Cannot run session now";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  uUID2 = [(CompanionDevice *)self->_companionDevice UUID];
  v6 = uUID2 == 0;

  if (v6)
  {
    v30 = NSLocalizedDescriptionKey;
    v31 = @"Remote device must have a valid UUID.";
    v12 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v8 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v12];
  }

  else if (([(NIServerItemLocalizerSession *)self _getRoseServiceRequestTicketId]& 0x10000) != 0)
  {
    if (self->_localRangingState == 1)
    {
      if (self->_companionRangingState == 1)
      {
        v13 = *&self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_slot_sz_250us.var0.__null_state_;
        if (v13 == 1)
        {
          if (!self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_pkt_type.__engaged_)
          {
            sub_1004BDF24();
          }

          v19 = [NSData dataWithBytes:&self->_roseServiceRequest.var0.__val_.range_enable_params.localization.peer_addr_arr.__elems_[6] length:16];
          v20 = qword_1009F9820;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = CUPrintNSObjectMasked();
            *buf = 138412290;
            v33 = v21;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,[CL] startNBRangingOnDevice with irk: %@", buf, 0xCu);
          }

          if (!self->_nbRangingRunning)
          {
            [(NIServerItemLocalizerSession *)self _sendRangingStartOrEndXPCmessageToWRM:1];
            self->_nbRangingRunning = 1;
          }

          companionRangingManager = self->_companionRangingManager;
          uUID3 = [(CompanionDevice *)self->_companionDevice UUID];
          [(CLFindMyAccessoryManager *)companionRangingManager startNBRangingOnDevice:uUID3 withIRK:v19];

          self->_companionRangingState = 4;
          [(NIServerItemLocalizerSession *)self _startRanging];
        }

        else if (!v13)
        {
          v14 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,[CL] prepareRangingOnDevice", buf, 2u);
          }

          v15 = self->_companionRangingManager;
          uUID4 = [(CompanionDevice *)self->_companionDevice UUID];
          [(CLFindMyAccessoryManager *)v15 prepareRangingOnDevice:uUID4];

          self->_companionRangingState = 2;
        }

        v8 = 0;
        self->_clientRequestState = 3;
      }

      else
      {
        v24 = NSLocalizedDescriptionKey;
        v25 = @"Companion ranging != STOPPED, cannot start.";
        v18 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
        v8 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v18];
      }
    }

    else
    {
      v26 = NSLocalizedDescriptionKey;
      v27 = @"Local ranging != STOPPED, cannot start.";
      v17 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v8 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v17];
    }
  }

  else
  {
    v28 = NSLocalizedDescriptionKey;
    v29 = @"Asked to start ranging with invalid ticket id. Was ranging configured first?";
    v7 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v8 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v7];
  }

LABEL_16:

  return v8;
}

- (void)_sendRangingStartOrEndXPCmessageToWRM:(BOOL)m
{
  mCopy = m;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "FALSE";
    if (mCopy)
    {
      v6 = "TRUE";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,_sendRangingStartOrEndXPCmessageToWRM, WCMR1NBRangingActive = %s", &buf, 0xCu);
  }

  v7 = xpc_BOOL_create(mCopy);
  *&buf = "kMessageId";
  *(&buf + 1) = "kMessageArgs";
  v11[0] = xpc_uint64_create(0x322uLL);
  v8 = v7;
  v11[1] = v8;
  v9 = xpc_dictionary_create(&buf, v11, 2uLL);
  xpc_connection_send_message(self->_coexConnection, v9);

  for (i = 1; i != -1; --i)
  {
  }
}

- (void)_processXPCEvent:(id)event
{
  eventCopy = event;
  type = xpc_get_type(eventCopy);
  if (type == &_xpc_type_dictionary)
  {
    v7 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Ignore any incoming message from WCM", v10, 2u);
    }
  }

  else if (type == &_xpc_type_error)
  {
    if (eventCopy == &_xpc_error_connection_interrupted)
    {
      [(NIServerItemLocalizerSession *)self _sendRegistrationMessageToWRM];
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004BE004();
      }
    }

    else
    {
      v8 = qword_1009F9820;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        string = xpc_dictionary_get_string(eventCopy, _xpc_error_key_description);
        sub_1004BDFC0(string, v10);
      }
    }
  }

  else
  {
    v6 = xpc_copy_description(eventCopy);
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BDF50();
    }

    free(v6);
  }
}

- (void)_sendRegistrationMessageToWRM
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BE038();
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v3, "kWCMRegisterProcess_ProcessId", 0x1DuLL);
  keys[0] = "kMessageId";
  keys[1] = "kMessageArgs";
  values[0] = xpc_uint64_create(1uLL);
  v4 = v3;
  values[1] = v4;
  v5 = xpc_dictionary_create(keys, values, 2uLL);
  xpc_connection_send_message(self->_coexConnection, v5);

  for (i = 1; i != -1; --i)
  {
  }
}

- (id)pauseWithSource:(int64_t)source
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Pause", v10, 2u);
  }

  dispatch_assert_queue_V2(self->_clientQueue);
  uUID = [(CompanionDevice *)self->_companionDevice UUID];
  v6 = uUID == 0;

  if (v6)
  {
    v11 = NSLocalizedDescriptionKey;
    v12 = @"Remote device must have a valid UUID.";
    v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v7 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v8];
  }

  else
  {
    [(NIServerItemLocalizerSession *)self _cleanupRangingManagerAndCompanionAfterError:0];
    v7 = 0;
  }

  return v7;
}

- (void)invalidate
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Invalidate", buf, 2u);
  }

  dispatch_assert_queue_V2(self->_clientQueue);
  if (self->_companionDevice)
  {
    v4 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      companionDevice = self->_companionDevice;
      *buf = 138412290;
      v12 = companionDevice;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Tearing down item localizer session. Companion: %@", buf, 0xCu);
    }

    [(NIServerItemLocalizerSession *)self _deinitCompanion];
  }

  companionRangingManager = self->_companionRangingManager;
  self->_companionRangingManager = 0;

  [(NIServerItemLocalizerSession *)self _invalidateRangingSession];
  machContinuousTimeSec = self->_machTimeConverter.fStartTimes.machContinuousTimeSec;
  self->_machTimeConverter.fStartTimes.machContinuousTimeSec = 0.0;

  self->_cachedSolutionMacAddr = 0;
  [(NINearbyUpdatesEngine *)self->_updatesEngine invalidate];
  [(NIServerItemLocalizerSession *)self _stopSensorUpdates];
  if (*&self->_machTimeConverter.fStartTimes.valid)
  {
    v8 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,CBController: Invalidating", buf, 2u);
    }

    [*&self->_machTimeConverter.fStartTimes.valid invalidate];
    v9 = *&self->_machTimeConverter.fStartTimes.valid;
    *&self->_machTimeConverter.fStartTimes.valid = 0;
  }

  if (self->_nbRangingRunning)
  {
    [(NIServerItemLocalizerSession *)self _sendRangingStartOrEndXPCmessageToWRM:0];
  }

  xpc_connection_cancel(self->_coexConnection);
  self->_nbRangingRunning = 0;
  v10.receiver = self;
  v10.super_class = NIServerItemLocalizerSession;
  [(NIServerBaseSession *)&v10 invalidate];
}

- (BOOL)updateConfiguration:(id)configuration
{
  configurationCopy = configuration;
  dispatch_assert_queue_V2(self->_clientQueue);
  if (configurationCopy && *&self->_machTimeConverter.fStartTimes.machContinuousTimeSec && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [configurationCopy copy];
    v6 = [*&self->_machTimeConverter.fStartTimes.machContinuousTimeSec canUpdateToConfiguration:v5];
    v7 = qword_1009F9820;
    v8 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        containerUniqueIdentifier = self->_containerUniqueIdentifier;
        machContinuousTimeSec = self->_machTimeConverter.fStartTimes.machContinuousTimeSec;
        v17 = 138543874;
        v18 = containerUniqueIdentifier;
        v19 = 2114;
        v20 = machContinuousTimeSec;
        v21 = 2114;
        v22 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Update configuration [%{public}@]\nOld: %{public}@\nNew: %{public}@", &v17, 0x20u);
      }

      objc_storeStrong(&self->_machTimeConverter.fStartTimes.machContinuousTimeSec, v5);
    }

    else if (v8)
    {
      v14 = self->_containerUniqueIdentifier;
      v15 = self->_machTimeConverter.fStartTimes.machContinuousTimeSec;
      v17 = 138412802;
      v18 = v14;
      v19 = 2112;
      v20 = v15;
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Can't update configuration, parameters are too different [%@]\nOld: %@\nNew: %@", &v17, 0x20u);
    }
  }

  else
  {
    v11 = qword_1009F9820;
    v6 = 0;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v12 = self->_containerUniqueIdentifier;
      v13 = self->_machTimeConverter.fStartTimes.machContinuousTimeSec;
      v17 = 138412802;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      v21 = 2112;
      v22 = configurationCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Can't update configuration, one is nil or wrong type [%@]\nOld: %@\nNew: %@", &v17, 0x20u);
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)requiresNarrowbandToRun
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  if ([(NIServerItemLocalizerSession *)self _isExtendedDistanceMeasurementLocallySupported])
  {
    return 2;
  }

  return 0;
}

- (id)getResourcesManager
{
  v4.receiver = self;
  v4.super_class = NIServerItemLocalizerSession;
  resourcesManager = [(NIServerBaseSession *)&v4 resourcesManager];

  return resourcesManager;
}

- (BOOL)_isExtendedDistanceMeasurementLocallySupported
{
  v2 = sub_1000054A8();
  if (!sub_1000149D4(v2))
  {
    v5 = qword_1009F9820;
    v6 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
    if (!v6)
    {
      return v6;
    }

    v12 = 0;
    v7 = "#ses-item-loc,Extended distance measurement not available on device";
    v8 = &v12;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    LOBYTE(v6) = 0;
    return v6;
  }

  v3 = sub_10035D02C();
  v4 = (*(*v3[814] + 72))(v3[814]);
  v5 = qword_1009F9820;
  v6 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
  if (v4 != 1)
  {
    if (!v6)
    {
      return v6;
    }

    *buf = 0;
    v7 = "#ses-item-loc,Extended distance measurement not available due to regulations";
    v8 = buf;
    goto LABEL_10;
  }

  if (v6)
  {
    v10[0] = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Extended distance measurement available", v10, 2u);
  }

  LOBYTE(v6) = 1;
  return v6;
}

- (BOOL)isExtendedDistanceMeasurementEnabled
{
  _isExtendedDistanceMeasurementLocallySupported = [(NIServerItemLocalizerSession *)self _isExtendedDistanceMeasurementLocallySupported];
  accessorySupportsNBAMMS = self->_accessorySupportsNBAMMS;
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 objectForKey:@"ItemSupportsEDM"];

  if (v6)
  {
    v7 = [v5 BOOLForKey:@"ItemSupportsEDM"];
    v8 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "NO";
      if (v7)
      {
        v9 = "YES";
      }

      v12 = 136315138;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,ItemSupportsEDM defaults set to %s", &v12, 0xCu);
    }

    if (v7)
    {
      goto LABEL_7;
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  if (!accessorySupportsNBAMMS)
  {
    goto LABEL_9;
  }

LABEL_7:
  v10 = _isExtendedDistanceMeasurementLocallySupported & !self->_noAvailableSlotForNBARanging;
LABEL_10:

  return v10;
}

- (void)didReceiveNewSolution:(const void *)solution
{
  v4 = (solution + 32);
  v3 = *(solution + 8);
  v5 = v3 > 4;
  v6 = (1 << v3) & 0x1A;
  if (v5 || v6 == 0)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004BE154(v4);
    }
  }

  else if (*(solution + 24))
  {
    self->_cachedSolutionMacAddr = *(solution + 5);
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004BE0A8(&self->_cachedSolutionMacAddr);
    }

    v10 = [(NIServerItemLocalizerSession *)self discoveryTokenFromIdentifier:self->_cachedSolutionMacAddr];
    if (v10)
    {
      [(NINearbyUpdatesEngine *)self->_updatesEngine acceptRoseSolution:solution];
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BE120();
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BE074();
  }
}

- (void)didReceiveUnsuccessfulSolution:(const void *)solution
{
  if (*(solution + 24) == 1)
  {
    v5 = [(NIServerItemLocalizerSession *)self discoveryTokenFromIdentifier:*(solution + 5)];
    if (v5)
    {
      [(NINearbyUpdatesEngine *)self->_updatesEngine acceptUnsuccessfulRoseSolution:solution];
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BE1CC();
    }
  }
}

- (void)didServiceRequestUpdateStatus:(ServiceRequestStatusUpdate)status
{
  var2 = status.var2;
  v4 = *&status.var0;
  v6 = qword_1009F9820;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    sub_100004A08(v22, off_1009A4FE0[v4 >> 32]);
    v7 = v23;
    v8 = *v22;
    sub_100004A08(__p, off_1009A5058[var2]);
    v9 = v22;
    if (v7 < 0)
    {
      v9 = v8;
    }

    if (v21 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    *buf = 136315394;
    v33 = v9;
    v34 = 2080;
    v35 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,serviceRequestDidUpdateStatus - update: %s, reason: %s", buf, 0x16u);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    if (v23 < 0)
    {
      operator delete(*v22);
    }
  }

  if ((HIDWORD(v4) - 5) >= 0xA)
  {
    if (SHIDWORD(v4) > 1)
    {
      if (HIDWORD(v4) == 2)
      {
        if (self->_localRangingState != 3)
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004BE234();
          }

          v28 = NSLocalizedDescriptionKey;
          v29 = @"Unexpected RangingFailedToStart";
          v18 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
          v19 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v18];

          [(NIServerItemLocalizerSession *)self _handleError:v19];
        }
      }

      else
      {
        if (HIDWORD(v4) != 3)
        {
          return;
        }

        if ((self->_localRangingState & 0xFFFFFFFE) != 4)
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004BE200();
          }

          v26 = NSLocalizedDescriptionKey;
          v27 = @"Unexpected RangingStopped";
          v14 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
          v15 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v14];

          [(NIServerItemLocalizerSession *)self _handleError:v15];
        }
      }

      self->_localRangingState = 1;
      [(NIServerItemLocalizerSession *)self _combineAndReportLocalAndCompanionRangingRequestStatus];
      return;
    }

    if (HIDWORD(v4))
    {
      if (HIDWORD(v4) == 1)
      {
        if (self->_localRangingState != 3)
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004BE268();
          }

          v30 = NSLocalizedDescriptionKey;
          v31 = @"Unexpected RangingDidStart";
          v12 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
          v13 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v12];

          [(NIServerItemLocalizerSession *)self _handleError:v13];
        }

        self->_localRangingState = 4;
        [(NIServerItemLocalizerSession *)self _combineAndReportLocalAndCompanionRangingRequestStatus];
      }
    }

    else
    {
      v24 = NSLocalizedDescriptionKey;
      v25 = @"Unexpected Unspecified";
      v16 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v17 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v16];

      [(NIServerItemLocalizerSession *)self _handleError:v17];
    }
  }

  else
  {
    v11 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Not acting upon these status updates", v22, 2u);
    }
  }
}

- (void)didReceiveSessionStartNotification:(const void *)notification
{
  if (*&self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_slot_sz_250us.var0.__null_state_)
  {
    sub_1004BE29C();
  }

  if (self->_localRangingState != 2)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BE2C8(&self->_localRangingState);
    }

    v21 = NSLocalizedDescriptionKey;
    v22 = @"Unexpected didReceiveSessionStartNotification due to localRangingState";
    v5 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v6 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v5];

    [(NIServerItemLocalizerSession *)self _handleError:v6];
    goto LABEL_13;
  }

  if (self->_companionRangingState != 3)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BE340(&self->_companionRangingState);
    }

    v19 = NSLocalizedDescriptionKey;
    v20 = @"Unexpected didReceiveSessionStartNotification due to companionRangingState";
    v7 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v6 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v7];

    [(NIServerItemLocalizerSession *)self _handleError:v6];
    goto LABEL_13;
  }

  v4 = *(notification + 16);
  if (*notification)
  {
    self->_localRangingState = 3;
    if ((v4 & 1) == 0)
    {
      sub_1000195BC();
    }

    goto LABEL_16;
  }

  if ((*(notification + 16) & 1) == 0)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BE3B8();
    }

    v17 = NSLocalizedDescriptionKey;
    v18 = @"Unexpected didReceiveSessionStartNotification notification values";
    v14 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v6 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v14];

    [(NIServerItemLocalizerSession *)self _handleError:v6];
LABEL_13:
    v8 = v6;
    goto LABEL_21;
  }

  self->_localRangingState = 3;
LABEL_16:
  v8 = [NSNumber numberWithUnsignedLongLong:*(notification + 1)];
  v9 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,[CL cb] didReceiveSessionStartNotification: futureEventCounterValue = %@ ", &v15, 0xCu);
  }

  intValue = [v8 intValue];
  v11 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,[CL] startRangingOnDeviceWithTargetEvtCounter", &v15, 2u);
  }

  companionRangingManager = self->_companionRangingManager;
  uUID = [(CompanionDevice *)self->_companionDevice UUID];
  [(CLFindMyAccessoryManager *)companionRangingManager startRangingOnDevice:uUID targetEventCounter:intValue];

  self->_companionRangingState = 4;
LABEL_21:
}

- (void)didInvalidateUWBSession
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Invalidating NI item localizer session", buf, 2u);
  }

  [(NIServerItemLocalizerSession *)self invalidate];
  v6.receiver = self;
  v6.super_class = NIServerItemLocalizerSession;
  invalidationHandler = [(NIServerBaseSession *)&v6 invalidationHandler];
  v5 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:0];
  (invalidationHandler)[2](invalidationHandler, v5);
}

- (id)objectFromIdentifier:(unint64_t)identifier
{
  if (*&self->_machTimeConverter.fStartTimes.machContinuousTimeSec)
  {
    v4 = [NINearbyObject alloc];
    sessionDiscoveryToken = [*&self->_machTimeConverter.fStartTimes.machContinuousTimeSec sessionDiscoveryToken];
    v6 = [(NINearbyObject *)v4 initWithToken:sessionDiscoveryToken];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)discoveryTokenFromIdentifier:(unint64_t)identifier
{
  machContinuousTimeSec = self->_machTimeConverter.fStartTimes.machContinuousTimeSec;
  if (machContinuousTimeSec != 0.0)
  {
    [*&machContinuousTimeSec sessionDiscoveryToken];
    machContinuousTimeSec = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v3 = vars8;
  }

  return *&machContinuousTimeSec;
}

- (optional<unsigned)identifierFromDiscoveryToken:(id)token
{
  cachedSolutionMacAddr = self->_cachedSolutionMacAddr;
  v4 = 1;
  result.__engaged_ = v4;
  result.var0 = cachedSolutionMacAddr;
  return result;
}

- (basic_string<char,)uniqueIdentifierForEngine:(std::allocator<char>> *__return_ptr)retstr
{
  v3 = v1;
  v8 = v2;
  v5 = *(v3 + 48);
  if (!v5)
  {
    __assert_rtn("[NIServerItemLocalizerSession uniqueIdentifierForEngine:]", "NIServerItemLocalizerSession.mm", 1218, "_algorithmsIdentifier != nil");
  }

  uUIDString = [v5 UUIDString];
  sub_100004A08(retstr, [uUIDString UTF8String]);

  return result;
}

- (void)processVisionInput:(id)input
{
  inputCopy = input;
  dispatch_assert_queue_V2(self->_clientQueue);
  [(NINearbyUpdatesEngine *)self->_updatesEngine acceptVisionInput:inputCopy];
}

- (void)updatesEngine:(id)engine didUpdateNearbyObjects:(id)objects
{
  engineCopy = engine;
  objectsCopy = objects;
  v8 = objectsCopy;
  if (self->_updatesEngine != engineCopy)
  {
    __assert_rtn("[NIServerItemLocalizerSession updatesEngine:didUpdateNearbyObjects:]", "NIServerItemLocalizerSession.mm", 1233, "engine == _updatesEngine");
  }

  if ([objectsCopy count])
  {
    didHaveDistanceInlastUpdatesEngineObject = self->_didHaveDistanceInlastUpdatesEngineObject;
    v10 = [v8 objectAtIndexedSubscript:0];
    [v10 distance];
    self->_didHaveDistanceInlastUpdatesEngineObject = v11 != NINearbyObjectDistanceNotAvailable;

    if (didHaveDistanceInlastUpdatesEngineObject == self->_didHaveDistanceInlastUpdatesEngineObject)
    {
      if (didHaveDistanceInlastUpdatesEngineObject)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v12 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_didHaveDistanceInlastUpdatesEngineObject)
      {
        v13 = "YES";
      }

      else
      {
        v13 = "NO";
      }

      *buf = 136315138;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,_didHaveDistanceInlastUpdatesEngineObject changed to %s", buf, 0xCu);
    }

    if (!self->_didHaveDistanceInlastUpdatesEngineObject)
    {
LABEL_12:
      [(NIServerItemLocalizerSession *)self _checkForNearbyObjectRemovalUponLosingDistanceUpdates];
    }
  }

LABEL_13:
  clientQueue = self->_clientQueue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10031A7E4;
  v16[3] = &unk_10098A2E8;
  v16[4] = self;
  v17 = v8;
  v15 = v8;
  dispatch_async(clientQueue, v16);
}

- (void)updatesEngine:(id)engine didUpdateAlgorithmConvergenceState:(id)state forObject:(id)object
{
  engineCopy = engine;
  stateCopy = state;
  objectCopy = object;
  if (self->_updatesEngine != engineCopy)
  {
    __assert_rtn("[NIServerItemLocalizerSession updatesEngine:didUpdateAlgorithmConvergenceState:forObject:]", "NIServerItemLocalizerSession.mm", 1255, "engine == _updatesEngine");
  }

  clientQueue = self->_clientQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10031A9AC;
  block[3] = &unk_10099BB28;
  block[4] = self;
  v15 = stateCopy;
  v16 = objectCopy;
  v12 = objectCopy;
  v13 = stateCopy;
  dispatch_async(clientQueue, block);
}

- (void)_cbBluetoothStateChangedHandler
{
  dispatch_assert_queue_V2(self->_clientQueue);
  v3 = *&self->_machTimeConverter.fStartTimes.valid;
  if (v3)
  {
    bluetoothState = [v3 bluetoothState];
    v5 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      if (bluetoothState > 0xA)
      {
        v6 = "?";
      }

      else
      {
        v6 = off_1009A50F8[bluetoothState];
      }

      v10 = 136315138;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,CBController: State changed: %s", &v10, 0xCu);
    }

    if (bluetoothState - 2 < 2)
    {
      v8 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004BE3EC(bluetoothState, v8);
      }
    }

    else if (bluetoothState == 5)
    {
      getResourcesManager = [(NIServerItemLocalizerSession *)self getResourcesManager];
      [getResourcesManager interruptionReasonEnded:9 monotonicTimeSeconds:sub_100005288()];
    }

    else if (bluetoothState == 4)
    {
      getResourcesManager2 = [(NIServerItemLocalizerSession *)self getResourcesManager];
      [getResourcesManager2 interruptSessionWithReason:9 monotonicTimeSeconds:sub_100005288()];
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BE474();
  }
}

- (void)_cbInterruptionHandler
{
  dispatch_assert_queue_V2(self->_clientQueue);
  v3 = *&self->_machTimeConverter.fStartTimes.valid;
  v4 = qword_1009F9820;
  if (v3)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,CBController: Interrupted", v5, 2u);
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BE4A8();
  }
}

- (void)_cbErrorHandler:(id)handler
{
  handlerCopy = handler;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BE4DC();
  }
}

- (BOOL)_shouldRange
{
  machContinuousTimeSec = self->_machTimeConverter.fStartTimes.machContinuousTimeSec;
  if (machContinuousTimeSec == 0.0)
  {
    sub_1004BE54C();
  }

  return [*&machContinuousTimeSec preferredUpdateRate] == 2;
}

- (void)_handleError:(id)error
{
  errorCopy = error;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BE578();
  }

  domain = [errorCopy domain];
  if ([domain isEqualToString:kCLErrorDomainPrivate])
  {
    code = [errorCopy code];

    if (code == 12 && !self->_didSuspendSessionAccessoryInUse)
    {
      v7 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Suspend session - accessory in use", buf, 2u);
      }

      self->_didSuspendSessionAccessoryInUse = 1;
      clientQueue = self->_clientQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10031AF28;
      block[3] = &unk_10098BD28;
      block[4] = self;
      dispatch_async(clientQueue, block);
    }
  }

  else
  {
  }

  [(NIServerItemLocalizerSession *)self _cleanupRangingManagerAndCompanionAfterError:errorCopy];
  getResourcesManager = [(NIServerItemLocalizerSession *)self getResourcesManager];
  remote = [getResourcesManager remote];
  [remote uwbSessionDidFailWithError:errorCopy];
}

- (void)_cleanupRangingManagerAndCompanionAfterError:(id)error
{
  errorCopy = error;
  cleaningUponDidFail = self->_cleaningUponDidFail;
  v6 = qword_1009F9820;
  v7 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
  if (cleaningUponDidFail)
  {
    if (v7)
    {
      *buf = 138412290;
      v14 = errorCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Received an error while cleaning up: %@", buf, 0xCu);
    }
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Cleanup", buf, 2u);
    }

    self->_cleaningUponDidFail = 1;
    v12 = 0;
    [(NIServerItemLocalizerSession *)self _stopRangingMangagerAndCompanion:&v12 shouldReconfigureLocalRangingSession:0];
    v8 = v12;
    if (([(NIServerItemLocalizerSession *)self _getRoseServiceRequestTicketId]& 0x10000) != 0)
    {
      _getRoseServiceRequestTicketId = [(NIServerItemLocalizerSession *)self _getRoseServiceRequestTicketId];
      if ((_getRoseServiceRequestTicketId & 0x10000) == 0)
      {
        sub_1000195BC();
      }

      if (_getRoseServiceRequestTicketId)
      {
        [(NIServerItemLocalizerSession *)self _invalidateRangingSession];
      }
    }

    [(NIServerItemLocalizerSession *)self _deinitCompanion];
    v10 = [[CLFindMyAccessoryManager alloc] initWithDelegate:self delegateQueue:self->_clientQueue];
    companionRangingManager = self->_companionRangingManager;
    self->_companionRangingManager = v10;

    self->_companionRoseState = 0;
    self->_companionConnectionState = 0;
    self->_companionRangingState = 0;
    self->_clientRequestState = 0;
    self->_localRangingState = 1;
    self->_hasFetchedFindingCapability = 0;
    if (self->_accessoryInformationRequestState != 2)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004BE5E8();
      }

      self->_accessoryInformationRequestState = 0;
    }

    if (self->_connectionIntervalUs.__engaged_)
    {
      self->_connectionIntervalUs.__engaged_ = 0;
    }

    self->_cleaningUponDidFail = 0;
  }
}

- (void)_startRanging
{
  dispatch_assert_queue_V2(self->_clientQueue);
  if (!*&self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_slot_sz_250us.var0.__null_state_)
  {
    v3 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,[CL] startEventCounterForDevice", v9, 2u);
    }

    companionRangingManager = self->_companionRangingManager;
    uUID = [(CompanionDevice *)self->_companionDevice UUID];
    [(CLFindMyAccessoryManager *)companionRangingManager startEventCounterForDevice:uUID];
  }

  _populateRoseStartOptionsAndStartRanging = [(NIServerItemLocalizerSession *)self _populateRoseStartOptionsAndStartRanging];
  if (_populateRoseStartOptionsAndStartRanging)
  {
    [(NIServerItemLocalizerSession *)self _handleError:_populateRoseStartOptionsAndStartRanging];
  }

  v7 = *&self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_slot_sz_250us.var0.__null_state_;
  if (!v7)
  {
    v8 = 2;
    goto LABEL_11;
  }

  if (v7 == 1)
  {
    v8 = 3;
LABEL_11:
    self->_localRangingState = v8;
  }
}

- (BOOL)_stopRangingMangagerAndCompanion:(id *)companion shouldReconfigureLocalRangingSession:(BOOL)session
{
  sessionCopy = session;
  v7 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v8 = self->_localRangingState - 1;
    if (v8 > 4)
    {
      v9 = "Invalid";
    }

    else
    {
      v9 = off_1009A51F8[v8];
    }

    v10 = sub_10031B88C(self->_companionRangingState);
    *buf = 136315394;
    v36 = v9;
    v37 = 2080;
    v38 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,_stopRangingMangagerAndCompanion, Local Ranging State: %s, Companion Ranging State: %s", buf, 0x16u);
  }

  localRangingState = self->_localRangingState;
  if ((localRangingState - 2) < 2)
  {
    if (companion)
    {
      v31 = NSLocalizedDescriptionKey;
      v32 = @"Received stopCompanionRanging while Local ranging is starting.";
      uUID = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v13 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:uUID];
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if (localRangingState == 4)
  {
    if (([(NIServerItemLocalizerSession *)self _getRoseServiceRequestTicketId]& 0x10000) != 0)
    {
      self->_localRangingState = 5;
      if (sessionCopy)
      {
        _reconfigureRangingSession = [(NIServerItemLocalizerSession *)self _reconfigureRangingSession];
        uUID = _reconfigureRangingSession;
        if (_reconfigureRangingSession)
        {
          if (!companion)
          {
            v14 = 0;
            goto LABEL_14;
          }

          v22 = _reconfigureRangingSession;
          v13 = uUID;
LABEL_13:
          v14 = 0;
          *companion = v13;
LABEL_14:

          goto LABEL_20;
        }
      }

      else
      {
        [(NIServerItemLocalizerSession *)self _invalidateRangingSession];
      }

      v14 = 1;
      self->_localRangingState = 1;
      if (!*&self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_slot_sz_250us.var0.__null_state_)
      {
        v23 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,[CL] stopEventCounterForDevice", buf, 2u);
        }

        companionRangingManager = self->_companionRangingManager;
        uUID = [(CompanionDevice *)self->_companionDevice UUID];
        [(CLFindMyAccessoryManager *)companionRangingManager stopEventCounterForDevice:uUID];
        v14 = 1;
        goto LABEL_14;
      }

      goto LABEL_20;
    }

    if (companion)
    {
      v29[0] = NSLocalizedDescriptionKey;
      v29[1] = NSLocalizedFailureReasonErrorKey;
      v30[0] = @"Failed to stop ranging";
      v30[1] = @"No service request.";
      uUID = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];
      v13 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:uUID];
      goto LABEL_13;
    }

LABEL_18:
    v14 = 0;
    goto LABEL_20;
  }

  if (!localRangingState)
  {
    if (companion)
    {
      v33 = NSLocalizedDescriptionKey;
      v34 = @"Local ranging state is not valid, cannot stop.";
      uUID = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v13 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:uUID];
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  v14 = 1;
LABEL_20:
  companionRangingState = self->_companionRangingState;
  if ((companionRangingState - 2) < 3)
  {
    if (companion)
    {
      v25 = NSLocalizedDescriptionKey;
      v26 = @"Received stopCompanionRanging while Companion ranging is starting.  ";
      uUID2 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v17 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:uUID2];
LABEL_27:
      v14 = 0;
      *companion = v17;
LABEL_32:

      return v14;
    }

    return 0;
  }

  if (companionRangingState == 5)
  {
    v18 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,[CL] stopRangingOnDevice", buf, 2u);
    }

    self->_companionRangingState = 6;
    v19 = self->_companionRangingManager;
    uUID2 = [(CompanionDevice *)self->_companionDevice UUID];
    [(CLFindMyAccessoryManager *)v19 stopRangingOnDevice:uUID2];
    goto LABEL_32;
  }

  if (!companionRangingState)
  {
    if (companion)
    {
      v27 = NSLocalizedDescriptionKey;
      v28 = @"Companion ranging state is not valid, cannot stop.  ";
      uUID2 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      v17 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:uUID2];
      goto LABEL_27;
    }

    return 0;
  }

  return v14;
}

- (void)_printState
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,================== Print State: Item Localizer Session ==================", &v19, 2u);
  }

  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v5 = self->_clientRequestState - 1;
    if (v5 > 6)
    {
      v6 = "Client Initialized";
    }

    else
    {
      v6 = off_1009A5180[v5];
    }

    v19 = 136315138;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Client Request State:       %s", &v19, 0xCu);
  }

  v7 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v8 = self->_localRangingState - 1;
    if (v8 > 4)
    {
      v9 = "Invalid";
    }

    else
    {
      v9 = off_1009A51F8[v8];
    }

    v19 = 136315138;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Local Ranging State:        %s", &v19, 0xCu);
  }

  v10 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v11 = self->_companionConnectionState - 1;
    if (v11 > 3)
    {
      v12 = "Unknown";
    }

    else
    {
      v12 = off_1009A51B8[v11];
    }

    v19 = 136315138;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Companion Connection State: %s", &v19, 0xCu);
  }

  v13 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v14 = sub_10031B88C(self->_companionRangingState);
    v19 = 136315138;
    v20 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Companion Ranging State:    %s", &v19, 0xCu);
  }

  v15 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v16 = self->_companionRoseState - 1;
    if (v16 > 3)
    {
      v17 = "Rose off";
    }

    else
    {
      v17 = off_1009A51D8[v16];
    }

    v19 = 136315138;
    v20 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Companion Rose State:       %s", &v19, 0xCu);
  }

  v18 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,=========================================================================", &v19, 2u);
  }
}

- (void)_combineAndReportLocalAndCompanionRangingRequestStatus
{
  [(NIServerItemLocalizerSession *)self _printState];
  localRangingState = self->_localRangingState;
  if (localRangingState == 4)
  {
    if (self->_companionRangingState != 5)
    {
      return;
    }

    clientRequestState = self->_clientRequestState;
    if (clientRequestState == 4)
    {
      v8 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Absorbing PRRangingRequestStatusDidStart from a retry.  ", buf, 2u);
      }
    }

    else
    {
      if (clientRequestState == 3)
      {
        v5 = 4;
        goto LABEL_11;
      }

      v15 = NSLocalizedDescriptionKey;
      v16 = @"Unexpected new status ServiceRequestStatusUpdate::Type::RangingDidStart";
      v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      v12 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v11];

      [(NIServerItemLocalizerSession *)self _handleError:v12];
    }
  }

  else if (localRangingState == 1 && self->_companionRangingState == 1)
  {
    v4 = self->_clientRequestState;
    if (v4 == 4)
    {
      v7 = [(NIServerItemLocalizerSession *)self run];
      if (v7)
      {
        v13 = v7;
        [(NIServerItemLocalizerSession *)self _handleError:v7];
      }
    }

    else
    {
      if (v4 == 5)
      {
        v5 = 6;
LABEL_11:
        self->_clientRequestState = v5;
        return;
      }

      v17 = NSLocalizedDescriptionKey;
      v18 = @"Unexpected new status ServiceRequestStatusUpdate::Type::RangingStopped";
      v9 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v10 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v9];

      [(NIServerItemLocalizerSession *)self _handleError:v10];
    }
  }
}

- (void)_initCompanion:(id)companion
{
  companionCopy = companion;
  if (self->_companionRoseState)
  {
    uUID3 = qword_1009F9820;
    if (os_log_type_enabled(uUID3, OS_LOG_TYPE_DEFAULT))
    {
      uUID = [companionCopy UUID];
      v11 = 138412290;
      v12 = uUID;
      _os_log_impl(&_mh_execute_header, uUID3, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Skipping init companion. UUID: %@", &v11, 0xCu);
    }
  }

  else
  {
    self->_companionRoseState = 1;
    v7 = qword_1009F9820;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      uUID2 = [companionCopy UUID];
      v11 = 138412290;
      v12 = uUID2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,[CL] Init companion. UUID: %@", &v11, 0xCu);
    }

    companionRangingManager = self->_companionRangingManager;
    uUID3 = [companionCopy UUID];
    roseMACAddress = [companionCopy roseMACAddress];
    [(CLFindMyAccessoryManager *)companionRangingManager initRangingOnDevice:uUID3 macAddress:roseMACAddress];
  }
}

- (void)_deinitCompanion
{
  if (self->_companionRoseState)
  {
    self->_companionRangingState = 0;
    self->_companionRoseState = 4;
    v3 = qword_1009F9820;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      uUID = [(CompanionDevice *)self->_companionDevice UUID];
      v7 = 138412290;
      v8 = uUID;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,[CL] Deinit companion. UUID: %@", &v7, 0xCu);
    }

    companionRangingManager = self->_companionRangingManager;
    uUID2 = [(CompanionDevice *)self->_companionDevice UUID];
    [(CLFindMyAccessoryManager *)companionRangingManager deinitRangingOnDevice:uUID2];
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BE624();
  }
}

- (void)_configureCompanionForRanging
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [(CompanionDevice *)self->_companionDevice UUID];
    *buf = 138412290;
    *&buf[4] = uUID;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Configure companion for ranging. UUID: %@", buf, 0xCu);
  }

  v10 = sub_10035D02C();
  v11 = *(v10 + 406);
  v12 = *(v10 + 407);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v11)
  {
    if (self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_pkt_type.__engaged_)
    {
      v13 = *&self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_slot_sz_250us.var0.__null_state_;
      if (v13 == 1)
      {
        *buf = 0;
        *&buf[8] = 0;
        *&buf[15] = 0;
        if ([(NIServerItemLocalizerSession *)self _updateNBAMMSCompanionConfigurationCommandWithRequest:&self->_roseServiceRequest rangeConfig:buf])
        {
          self->_companionRoseState = 2;
          uUID3 = [(NIServerItemLocalizerSession *)self _getDictFromRangeConfigNBAMMS:buf];
          v30 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *v36 = 0;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,[CL] configureNBRangingOnDevice", v36, 2u);
          }

          companionRangingManager = self->_companionRangingManager;
          uUID2 = [(CompanionDevice *)self->_companionDevice UUID];
          [(CLFindMyAccessoryManager *)companionRangingManager configureNBRangingOnDevice:uUID2 withParams:uUID3];
        }

        else
        {
          v37 = NSLocalizedDescriptionKey;
          v38 = @"Failed to construct companion range config command.";
          v34 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
          uUID3 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v34];

          [(NIServerItemLocalizerSession *)self _handleError:uUID3];
        }
      }

      else
      {
        if (v13)
        {
          goto LABEL_38;
        }

        *v36 = 0;
        if (sub_10032A118(v11, &self->_roseServiceRequest, v36, v5, v6, v7, v8, v9))
        {
          v14 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,+++++++++++++++++++++++++++++++++++++++++", buf, 2u);
          }

          v15 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Sent command to remote device:", buf, 2u);
          }

          v16 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = v36[0];
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,   countryCode: 0x%x", buf, 8u);
          }

          v17 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = v36[1] & 3;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,   channel: 0x%x", buf, 8u);
          }

          v18 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = (v36[1] >> 2) & 3;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,   txPreamble: 0x%x", buf, 8u);
          }

          v19 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = (v36[1] >> 4) & 3;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,   rxPreamble: 0x%x", buf, 8u);
          }

          v20 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = *&v36[2];
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,   intervalMs: %d", buf, 8u);
          }

          v21 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,+++++++++++++++++++++++++++++++++++++++++", buf, 2u);
          }

          self->_companionRoseState = 2;
          v22 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,[CL] configureRangingOnDevice", buf, 2u);
          }

          v23 = self->_companionRangingManager;
          uUID3 = [(CompanionDevice *)self->_companionDevice UUID];
          roseMACAddress = [(CompanionDevice *)self->_companionDevice roseMACAddress];
          LOWORD(v35) = *&v36[2];
          [(CLFindMyAccessoryManager *)v23 configureRangingOnDevice:uUID3 macAddress:roseMACAddress countryCode:v36[0] uwbChannel:v36[1] & 3 acqPreamble:(v36[1] >> 2) & 3 trackingPreamble:(v36[1] >> 4) & 3 interval:v35];
        }

        else
        {
          v40 = NSLocalizedDescriptionKey;
          v41 = @"Failed to construct companion range config command.";
          v33 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
          uUID3 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v33];

          [(NIServerItemLocalizerSession *)self _handleError:uUID3];
        }
      }
    }

    else
    {
      v42 = NSLocalizedDescriptionKey;
      v43 = @"No cached ranging request.";
      v28 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v29 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v28];

      [(NIServerItemLocalizerSession *)self _handleError:v29];
    }
  }

  else
  {
    v44 = NSLocalizedDescriptionKey;
    v45 = @"Configuration Manager Error.";
    v26 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    v27 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v26];

    [(NIServerItemLocalizerSession *)self _handleError:v27];
  }

LABEL_38:
  if (v12)
  {
    sub_10000AD84(v12);
  }
}

- (BOOL)_isSessionRunning
{
  v2 = self->_localRangingState == 4 && self->_companionRangingState == 5;
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Session currently running = %d", v5, 8u);
  }

  return v2;
}

- (id)_resetToPrewarmedState
{
  uUID = [(CompanionDevice *)self->_companionDevice UUID];

  if (!uUID)
  {
    v13 = NSLocalizedDescriptionKey;
    v14 = @"Remote device must have a valid UUID.";
    v6 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v9 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v6];
LABEL_8:
    v8 = v9;
    goto LABEL_9;
  }

  v12 = 0;
  v4 = [(NIServerItemLocalizerSession *)self _stopRangingMangagerAndCompanion:&v12 shouldReconfigureLocalRangingSession:1];
  v5 = v12;
  v6 = v5;
  if ((v4 & 1) == 0)
  {
    v9 = v5;
    v6 = v9;
    goto LABEL_8;
  }

  self->_companionRoseState = 3;
  self->_clientRequestState = 5;
  v7 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Stopping ranging and in prewarmed stage", v11, 2u);
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (RoseDeviceDescriptor)_getCompanionDescriptor
{
  v9 = 0;
  roseMACAddress = [(CompanionDevice *)self->_companionDevice roseMACAddress];
  [roseMACAddress getBytes:&v9 range:{0, 8}];

  uUID = [(CompanionDevice *)self->_companionDevice UUID];
  [uUID getUUIDBytes:&v8];

  retstr->type = 3;
  retstr->uuid.var0 = v8;
  retstr->uuid.__engaged_ = 1;
  retstr->rose_mac_address.var0 = v9;
  *&retstr->rose_mac_address.__engaged_ = 1;
  retstr->bt_adv_address.__engaged_ = 0;
  return result;
}

- (void)_populateRangingSessionMacMode
{
  *&self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_slot_sz_250us.var0.__null_state_ = 0;
  if (_os_feature_enabled_impl())
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004BE660();
    }

    if ([(NIServerItemLocalizerSession *)self isExtendedDistanceMeasurementEnabled])
    {
      *&self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_slot_sz_250us.var0.__null_state_ = 1;
      [(NIServerItemLocalizerSession *)self _selectNBAMMSMode];
    }
  }

  [(NIServerItemLocalizerSession *)self _updateAnalyticsWithRangingMode];
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    if (*&self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_slot_sz_250us.var0.__null_state_)
    {
      v4 = "NBAMMS";
    }

    else
    {
      v4 = "P2P";
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Using ranging mac mode %s", &v5, 0xCu);
  }
}

- (BOOL)_setCompanionDeviceRoseMacAddress
{
  debugParameters = [*&self->_machTimeConverter.fStartTimes.machContinuousTimeSec debugParameters];
  if (!debugParameters)
  {
    goto LABEL_6;
  }

  debugParameters2 = [*&self->_machTimeConverter.fStartTimes.machContinuousTimeSec debugParameters];
  v5 = PRP2PBaseAddress;
  v6 = [debugParameters2 objectForKey:PRP2PBaseAddress];

  if (v6)
  {
    debugParameters3 = [*&self->_machTimeConverter.fStartTimes.machContinuousTimeSec debugParameters];
    v8 = [debugParameters3 objectForKey:v5];

    v9 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      buf[0].i32[0] = 138412290;
      *(buf + 4) = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Using client provided roseMACAddress %@", buf, 0xCu);
    }

    [(CompanionDevice *)self->_companionDevice setRoseMACAddress:v8];
  }

  else
  {
LABEL_6:
    v8 = +[NSUUID UUID];
    *buf[0].i8 = 0uLL;
    [v8 getUUIDBytes:buf];
    v10 = vceqz_s8(buf[0]);
    if (v10.i8[0])
    {
      buf[0].i8[0] = 1;
    }

    if (v10.i8[1])
    {
      buf[0].i8[1] = 1;
    }

    if (v10.i8[2])
    {
      buf[0].i8[2] = 1;
    }

    if (v10.i8[3])
    {
      buf[0].i8[3] = 1;
    }

    if (v10.i8[4])
    {
      buf[0].i8[4] = 1;
    }

    if (v10.i8[5])
    {
      buf[0].i8[5] = 1;
    }

    if (v10.i8[6])
    {
      buf[0].i8[6] = 1;
    }

    if (v10.i8[7])
    {
      buf[0].i8[7] = 1;
    }

    v11 = [NSData dataWithBytes:buf length:8];
    v12 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Using randomized UUID generated base mac address %@", &v14, 0xCu);
    }

    [(CompanionDevice *)self->_companionDevice setRoseMACAddress:v11];
  }

  return 1;
}

- (id)_configureRangingSession
{
  dispatch_assert_queue_V2(self->_clientQueue);
  if (self->_p2pSession.__ptr_ || self->_nbammsSession.__ptr_)
  {
    if (self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_pkt_type.__engaged_)
    {
      v3 = 0;
      goto LABEL_10;
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BE69C();
    }

    v12 = NSLocalizedDescriptionKey;
    v13 = @"Service request unavailable.";
    v4 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v5 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v4];
    goto LABEL_8;
  }

  v7 = *&self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_slot_sz_250us.var0.__null_state_;
  if (v7)
  {
    if (v7 != 1)
    {
      goto LABEL_18;
    }

    [(NIServerItemLocalizerSession *)self _prepareNBAMMSServiceRequest];
  }

  else
  {
    [(NIServerItemLocalizerSession *)self _prepareP2PServiceRequest];
  }

  memcpy(&self->_roseServiceRequest, __src, 0x241uLL);
LABEL_18:
  if (self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_pkt_type.__engaged_)
  {
    v8 = [(NIServerItemLocalizerSession *)self _buildRoseSession:?];
    v4 = v8;
    if (!v8)
    {
      v3 = 0;
      goto LABEL_9;
    }

    v5 = v8;
    v4 = v5;
  }

  else
  {
    v9 = NSLocalizedDescriptionKey;
    v10 = @"Could not configure ranging session.";
    v4 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v5 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v4];
  }

LABEL_8:
  v3 = v5;
LABEL_9:

LABEL_10:

  return v3;
}

- (id)_buildRoseSession:(const void *)session
{
  dispatch_assert_queue_V2(self->_clientQueue);
  selfCopy = self;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Registering for UWB service.", buf, 2u);
  }

  v6 = *&selfCopy->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_slot_sz_250us.var0.__null_state_;
  if (v6 == 1)
  {
    sub_100004A08(__p, [(NSString *)selfCopy->_containerUniqueIdentifier UTF8String]);
    operator new();
  }

  if (!v6)
  {
    sub_100004A08(__p, [(NSString *)selfCopy->_containerUniqueIdentifier UTF8String]);
    operator new();
  }

  return 0;
}

- (optional<unsigned)_getRoseServiceRequestTicketId
{
  v2 = *&self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_slot_sz_250us.var0.__null_state_;
  if (v2 == 1)
  {
    v3 = 96;
  }

  else
  {
    if (v2)
    {
      return 0;
    }

    v3 = 80;
  }

  v4 = *(&self->super.super.isa + v3);
  if (!v4)
  {
    return 0;
  }

  return (*(v4 + 752) & 0xFFFFFF);
}

- (id)_populateRoseStartOptionsAndStartRanging
{
  v4 = *&self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_slot_sz_250us.var0.__null_state_;
  if (v4 != 1)
  {
    if (v4)
    {
      goto LABEL_12;
    }

    [(NIServerItemLocalizerSession *)self _populateP2PRoseStartRangingOptions];
    v5 = sub_10034024C(self->_p2pSession.__ptr_, v17);
    if (v5)
    {
      v6 = qword_1009F9820;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100342F8C(v5, v12);
        sub_1004BE788(v12);
      }

      v15 = NSLocalizedDescriptionKey;
      v16 = @"User triggered ranging start failed";
      v7 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      v2 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v7];

      goto LABEL_12;
    }

LABEL_11:
    v2 = 0;
    goto LABEL_12;
  }

  [(NIServerItemLocalizerSession *)self _populateNBAMMSRoseStartRangingOptions:self->_isInitiator];
  v8 = sub_10034024C(self->_nbammsSession.__ptr_, v17);
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = qword_1009F9820;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_100342F8C(v8, v12);
    sub_1004BE788(v12);
  }

  v13 = NSLocalizedDescriptionKey;
  v14 = @"User triggered ranging start failed";
  v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v2 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v10];

LABEL_12:

  return v2;
}

- (void)_invalidateRangingSession
{
  dispatch_assert_queue_V2(self->_clientQueue);
  p_p2pSession = &self->_p2pSession;
  if (self->_p2pSession.__ptr_)
  {
    v4 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,NIItemLocalizer P2P session: invalidate", buf, 2u);
    }

    sub_10033B864(*p_p2pSession);
    cntrl = self->_p2pSession.__cntrl_;
    *p_p2pSession = 0;
    self->_p2pSession.__cntrl_ = 0;
    if (cntrl)
    {
      sub_10000AD84(cntrl);
    }
  }

  p_nbammsSession = &self->_nbammsSession;
  if (self->_nbammsSession.__ptr_)
  {
    v7 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,NIItemLocalizer NBAMMS session: invalidate", v9, 2u);
    }

    sub_10033B864(*p_nbammsSession);
    v8 = self->_nbammsSession.__cntrl_;
    *p_nbammsSession = 0;
    self->_nbammsSession.__cntrl_ = 0;
    if (v8)
    {
      sub_10000AD84(v8);
    }
  }

  if (self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_pkt_type.__engaged_)
  {
    self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_pkt_type.__engaged_ = 0;
  }

  self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_bch.var0.__null_state_ = 0;
}

- (id)_reconfigureRangingSession
{
  dispatch_assert_queue_V2(self->_clientQueue);
  p_p2pSession = &self->_p2pSession;
  if (self->_p2pSession.__ptr_)
  {
    v4 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,NIItemLocalizer P2P session: invalidate", v15, 2u);
    }

    sub_10033B864(*p_p2pSession);
    cntrl = self->_p2pSession.__cntrl_;
    *p_p2pSession = 0;
    self->_p2pSession.__cntrl_ = 0;
    if (cntrl)
    {
      sub_10000AD84(cntrl);
    }
  }

  p_nbammsSession = &self->_nbammsSession;
  if (self->_nbammsSession.__ptr_)
  {
    v7 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,NIItemLocalizer NBAMMS session: invalidate", v15, 2u);
    }

    sub_10033B864(*p_nbammsSession);
    v8 = self->_nbammsSession.__cntrl_;
    *p_nbammsSession = 0;
    self->_nbammsSession.__cntrl_ = 0;
    if (v8)
    {
      sub_10000AD84(v8);
    }
  }

  if (!self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_pkt_type.__engaged_)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BE7E4();
    }

    v16 = NSLocalizedDescriptionKey;
    v17 = @"Unable to reconfigure ranging session";
    v9 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v12 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:303 userInfo:v9];
    goto LABEL_19;
  }

  v9 = [(NIServerItemLocalizerSession *)self _buildRoseSession:?];
  v10 = qword_1009F9820;
  v11 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,NIItemLocalizer Failed to rebuild rose session", v15, 2u);
    }

    v12 = v9;
    v9 = v12;
LABEL_19:
    v13 = v12;
    goto LABEL_20;
  }

  if (v11)
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,NIItemLocalizer Rebuilt rose session", v15, 2u);
  }

  v13 = 0;
LABEL_20:

  return v13;
}

- (id)_bringUpUpdatesEngine
{
  if (self->_updatesEngine)
  {
    v2 = 0;
  }

  else
  {
    v5 = objc_opt_new();
    algorithmsIdentifier = self->_algorithmsIdentifier;
    self->_algorithmsIdentifier = v5;

    v7 = [NINearbyUpdatesEngine alloc];
    machContinuousTimeSec = self->_machTimeConverter.fStartTimes.machContinuousTimeSec;
    clientQueue = self->_clientQueue;
    machAbsoluteTimeSec = self->_machTimeConverter.fStartTimes.machAbsoluteTimeSec;
    getResourcesManager = [(NIServerItemLocalizerSession *)self getResourcesManager];
    v12 = getResourcesManager;
    if (getResourcesManager)
    {
      [getResourcesManager protobufLogger];
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    v17 = 0;
    v13 = [(NINearbyUpdatesEngine *)v7 initWithConfiguration:*&machContinuousTimeSec queue:clientQueue delegate:self dataSource:self analyticsManager:*&machAbsoluteTimeSec protobufLogger:&v18 error:&v17];
    v2 = v17;
    updatesEngine = self->_updatesEngine;
    self->_updatesEngine = v13;

    if (v19)
    {
      sub_10000AD84(v19);
    }

    if (v2)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004BE818();
      }
    }

    else
    {
      v15 = qword_1009F9820;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        uUIDString = [(NSUUID *)self->_algorithmsIdentifier UUIDString];
        *buf = 138412290;
        v21 = uUIDString;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,NIItemLocalizer instantiated a new updates engine with identifier: %@", buf, 0xCu);
      }
    }
  }

  return v2;
}

- (void)_startSensorUpdates
{
  [(NIServerItemLocalizerSession *)self _startDeviceMotionUpdates];
  [(NIServerItemLocalizerSession *)self _startWatchOrientationUpdates];
  [(NIServerItemLocalizerSession *)self _startAltitudeUpdates];

  [(NIServerItemLocalizerSession *)self _startPDRUpdates];
}

- (void)_stopSensorUpdates
{
  [(NIServerItemLocalizerSession *)self _stopDeviceMotionUpdates];
  [(NIServerItemLocalizerSession *)self _stopWatchOrientationUpdates];
  [(NIServerItemLocalizerSession *)self _stopAltitudeUpdates];

  [(NIServerItemLocalizerSession *)self _stopPDRUpdates];
}

- (void)_startDeviceMotionUpdates
{
  v3 = *self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.irk;
  v4 = qword_1009F9820;
  v5 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Device motion updates already started", buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Starting device motion updates", buf, 2u);
    }

    v6 = sub_1000054A8();
    if (sub_10041C748(v6[144]) || (v7 = sub_1000054A8(), sub_100003AA8(v7[144])))
    {
      v8 = objc_alloc_init(CMMotionManager);
      v9 = *self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.irk;
      *self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.irk = v8;

      v10 = *self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.irk;
      if (v10)
      {
        [v10 setDeviceMotionUpdateInterval:0.01];
        objc_initWeak(buf, self);
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_10031E988;
        v12[3] = &unk_10099F088;
        objc_copyWeak(&v13, buf);
        v11 = objc_retainBlock(v12);
        [*self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.irk startDeviceMotionUpdatesToQueue:*&self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.nb_channel_selection_mask.var0.__null_state_ withHandler:v11];

        objc_destroyWeak(&v13);
        objc_destroyWeak(buf);
      }
    }
  }
}

- (void)_stopDeviceMotionUpdates
{
  if (*self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.irk)
  {
    v3 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Stopping device motion updates", v5, 2u);
    }

    [*self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.irk stopDeviceMotionUpdates];
    v4 = *self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.irk;
    *self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.irk = 0;
  }
}

- (void)_startAltitudeUpdates
{
  v3 = *&self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.irk[8];
  v4 = qword_1009F9820;
  v5 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Altitude updates already started", buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Starting altitude updates", buf, 2u);
    }

    v6 = objc_alloc_init(CMAltimeter);
    v7 = *&self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.irk[8];
    *&self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.irk[8] = v6;

    if (*&self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.irk[8])
    {
      objc_initWeak(buf, self);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10031EF30;
      v9[3] = &unk_10099EF20;
      objc_copyWeak(&v10, buf);
      v8 = objc_retainBlock(v9);
      [*&self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.irk[8] startRelativeAltitudeUpdatesToQueue:*&self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.nb_channel_selection_mask.var0.__null_state_ withHandler:v8];

      objc_destroyWeak(&v10);
      objc_destroyWeak(buf);
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004BE960();
    }
  }
}

- (void)_stopAltitudeUpdates
{
  if (*&self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.irk[8])
  {
    v3 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Stopping altitude updates", v5, 2u);
    }

    [*&self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.irk[8] stopRelativeAltitudeUpdates];
    v4 = *&self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.irk[8];
    *&self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.irk[8] = 0;
  }
}

- (void)_startPDRUpdates
{
  v3 = *&self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.antenna_diversity_mask.var0.__null_state_;
  v4 = qword_1009F9820;
  v5 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Pdr updates already started", buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Starting pdr updates", buf, 2u);
    }

    v6 = objc_alloc_init(CMOdometryManager);
    v7 = *&self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.antenna_diversity_mask.var0.__null_state_;
    *&self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.antenna_diversity_mask.var0.__null_state_ = v6;

    if (*&self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.antenna_diversity_mask.var0.__null_state_)
    {
      objc_initWeak(buf, self);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10031F2E4;
      v9[3] = &unk_10099F040;
      objc_copyWeak(&v10, buf);
      v8 = objc_retainBlock(v9);
      [*&self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.antenna_diversity_mask.var0.__null_state_ setOdometryUpdateInterval:0.1];
      [*&self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.antenna_diversity_mask.var0.__null_state_ startOdometryUpdatesToQueue:*&self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.nb_channel_selection_mask.var0.__null_state_ withHandler:v8];

      objc_destroyWeak(&v10);
      objc_destroyWeak(buf);
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BEA40();
    }
  }
}

- (void)_stopPDRUpdates
{
  if (*&self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.antenna_diversity_mask.var0.__null_state_)
  {
    v3 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Stopping pdr updates", v5, 2u);
    }

    [*&self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.antenna_diversity_mask.var0.__null_state_ stopOdometryUpdates];
    v4 = *&self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.antenna_diversity_mask.var0.__null_state_;
    *&self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.antenna_diversity_mask.var0.__null_state_ = 0;
  }
}

- (void)_updateNearbyObjectStatusWithSuccessfulConfiguration
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,_updateNearbyObjectStatusWithSuccessfulConfiguration", buf, 2u);
  }

  nearbyObjectStatus = self->_nearbyObjectStatus;
  if ((nearbyObjectStatus - 1) >= 2)
  {
    if (!nearbyObjectStatus)
    {
      v6 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,_updateNearbyObjectStatusWithSuccessfulConfiguration: Calling didDiscoverNearbyObject", buf, 2u);
      }

      v7 = [NINearbyObject alloc];
      sessionDiscoveryToken = [*&self->_machTimeConverter.fStartTimes.machContinuousTimeSec sessionDiscoveryToken];
      v9 = [(NINearbyObject *)v7 initWithToken:sessionDiscoveryToken];

      clientQueue = self->_clientQueue;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10031FA54;
      v12[3] = &unk_10098A2E8;
      v12[4] = self;
      v13 = v9;
      v11 = v9;
      dispatch_async(clientQueue, v12);
    }
  }

  else
  {
    v5 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,_updateNearbyObjectStatusWithSuccessfulConfiguration: No change", buf, 2u);
    }
  }

  self->_nearbyObjectStatus = 1;
}

- (void)_updateNearbyObjectStatusWithDisconnect
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,_updateNearbyObjectStatusWithDisconnect", buf, 2u);
  }

  nearbyObjectStatus = self->_nearbyObjectStatus;
  if ((nearbyObjectStatus - 1) >= 2)
  {
    if (!nearbyObjectStatus)
    {
      v6 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,_updateNearbyObjectStatusWithDisconnect: No change", v10, 2u);
      }
    }
  }

  else if (self->_didHaveDistanceInlastUpdatesEngineObject)
  {
    v5 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,_updateNearbyObjectStatusWithDisconnect: updated to LOST_BUT_UPDATING", v9, 2u);
    }

    self->_nearbyObjectStatus = 2;
  }

  else
  {
    [(NIServerItemLocalizerSession *)self _informClientOfNearbyObjectRemoval];
    v7 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,_updateNearbyObjectStatusWithDisconnect: updated to NOT_DISCOVERED", v8, 2u);
    }

    self->_nearbyObjectStatus = 0;
  }
}

- (void)_checkForNearbyObjectRemovalUponLosingDistanceUpdates
{
  if (self->_nearbyObjectStatus == 2)
  {
    v3 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,_checkForNearbyObjectRemovalUponLosingDistanceUpdates: update to NOT_DISCOVERED", v4, 2u);
    }

    [(NIServerItemLocalizerSession *)self _informClientOfNearbyObjectRemoval];
    self->_nearbyObjectStatus = 0;
  }
}

- (void)_informClientOfNearbyObjectRemoval
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Calling didRemoveNearbyObjects", buf, 2u);
  }

  v4 = [NINearbyObject alloc];
  sessionDiscoveryToken = [*&self->_machTimeConverter.fStartTimes.machContinuousTimeSec sessionDiscoveryToken];
  v6 = [(NINearbyObject *)v4 initWithToken:sessionDiscoveryToken];

  clientQueue = self->_clientQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10031FE20;
  v9[3] = &unk_10098A2E8;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(clientQueue, v9);
}

- (void)_updateAnalyticsWithRangingMode
{
  v2 = *&self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_slot_sz_250us.var0.__null_state_;
  if (v2 == 1)
  {
    if (self->_useMixedMMSForNBARanging)
    {
      v3 = 3;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = v2 == 0;
  }

  machAbsoluteTimeSec = self->_machTimeConverter.fStartTimes.machAbsoluteTimeSec;
  if (machAbsoluteTimeSec != 0.0)
  {
    [*&machAbsoluteTimeSec updateWithRangingMode:v3];
  }
}

- (optional<rose::RoseServiceRequest>)_prepareP2PServiceRequest
{
  dispatch_assert_queue_V2(self->_clientQueue);
  [(NIServerItemLocalizerSession *)self _getCompanionDescriptor];
  *v43 = 0;
  v44 = &v50;
  communicationProtocol = self->_communicationProtocol;
  v45 = 1;
  v46 = communicationProtocol == 2;
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 objectForKey:@"CompanionFeature1Disable"];
  v8 = v7 == 0;

  if (!v8)
  {
    v45 = [v6 BOOLForKey:@"CompanionFeature1Disable"] ^ 1;
  }

  v9 = [v6 objectForKey:@"GattRanging"];
  v10 = v9 == 0;

  if (!v10)
  {
    v46 = [v6 BOOLForKey:@"GattRanging"];
  }

  debugParameters = [*&self->_machTimeConverter.fStartTimes.machContinuousTimeSec debugParameters];
  if (debugParameters)
  {
    debugParameters2 = [*&self->_machTimeConverter.fStartTimes.machContinuousTimeSec debugParameters];
    v13 = [debugParameters2 objectForKey:@"CompanionFeature1Disable"];
    v14 = v13 == 0;

    if (!v14)
    {
      debugParameters3 = [*&self->_machTimeConverter.fStartTimes.machContinuousTimeSec debugParameters];
      v16 = [debugParameters3 objectForKey:@"CompanionFeature1Disable"];
      v45 = [v16 BOOLValue] ^ 1;
    }
  }

  v17 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v18 = "NO";
    if (v45)
    {
      v19 = "YES";
    }

    else
    {
      v19 = "NO";
    }

    if (v46)
    {
      v18 = "YES";
    }

    *buf = 136315394;
    *&buf[4] = v19;
    *&buf[12] = 2080;
    *&buf[14] = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,useAoA: %s, useGattRangingInterval: %s", buf, 0x16u);
  }

  v20 = sub_10035D02C();
  v21 = *(v20 + 406);
  v22 = *(v20 + 407);
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v23 = qword_1009F9820;
  v24 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
  if (!v21)
  {
    if (!v24)
    {
      goto LABEL_35;
    }

    *buf = 0;
    v38 = "#ses-item-loc,PRRangingManager configuration manager undefined.";
    v39 = v23;
    goto LABEL_34;
  }

  if (v24)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,PRRangingManager prepareRangingServiceRequest #companion-retry", buf, 2u);
  }

  if (!sub_1003299D8(v21, &v42, v43, 0))
  {
    v40 = qword_1009F9820;
    if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    *buf = 0;
    v38 = "#ses-item-loc,PRRangingManager configuration manager unable to get preferred channels.";
    v39 = v40;
LABEL_34:
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, v38, buf, 2u);
LABEL_35:
    retstr->var0.__null_state_ = 0;
    retstr->var0.__val_.range_enable_params.nbamms.mms_pkt_type.__engaged_ = 0;
    if (!v22)
    {
      goto LABEL_37;
    }

LABEL_36:
    sub_10000AD84(v22);
    goto LABEL_37;
  }

  sub_10019B9DC(&v42, buf);
  debugParameters4 = [*&self->_machTimeConverter.fStartTimes.machContinuousTimeSec debugParameters];
  if (debugParameters4)
  {
    debugParameters5 = [*&self->_machTimeConverter.fStartTimes.machContinuousTimeSec debugParameters];
    v27 = [debugParameters5 objectForKey:@"R1Preamble"];
    v28 = v27 == 0;

    if (!v28)
    {
      debugParameters6 = [*&self->_machTimeConverter.fStartTimes.machContinuousTimeSec debugParameters];
      v30 = [debugParameters6 objectForKey:@"R1Preamble"];
      integerValue = [v30 integerValue];

      v32 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v47 = 134217984;
        v48 = integerValue;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Setting special R1 preamble %lli", v47, 0xCu);
      }

      v33 = [NSNumber numberWithInteger:integerValue];
      [0 setObject:v33 forKeyedSubscript:PRP2PArgsTxPreamble];

      v34 = [NSNumber numberWithInteger:integerValue];
      [0 setObject:v34 forKeyedSubscript:PRP2PArgsRxPreamble];
    }
  }

  debugParameters7 = [*&self->_machTimeConverter.fStartTimes.machContinuousTimeSec debugParameters];
  v36 = debugParameters7 == 0;

  if (!v36)
  {
    debugParameters8 = [*&self->_machTimeConverter.fStartTimes.machContinuousTimeSec debugParameters];
    [0 addEntriesFromDictionary:debugParameters8];
  }

  memcpy(retstr, buf, 0x240uLL);
  retstr->var0.__val_.range_enable_params.nbamms.mms_pkt_type.__engaged_ = 1;
  if (v22)
  {
    goto LABEL_36;
  }

LABEL_37:

  return result;
}

- (RoseStartRangingOptions)_populateP2PRoseStartRangingOptions
{
  if (self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_bch.var0.__null_state_ == 1)
  {
    v5 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Using conservative start time offset", buf, 2u);
    }

    self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_bch.var0.__null_state_ = 0;
    v6 = 1500000;
  }

  else
  {
    v6 = 510000;
  }

  v27 = v6;
  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = [v7 objectForKey:@"TimeSyncPathListeningWindowMSec"];
  v9 = v8;
  if (v8)
  {
    intValue2 = 1000 * [v8 intValue];
    v11 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = intValue2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,listeningWindowSizeUsec overridden by defaults writes to %u", buf, 8u);
    }
  }

  else
  {
    intValue2 = 3000;
  }

  debugParameters = [*&self->_machTimeConverter.fStartTimes.machContinuousTimeSec debugParameters];
  v13 = debugParameters == 0;

  if (!v13)
  {
    debugParameters2 = [*&self->_machTimeConverter.fStartTimes.machContinuousTimeSec debugParameters];
    v15 = [debugParameters2 objectForKey:PRP2PArgsStartTimeOffsetUsec];

    if (v15)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        intValue = [v15 intValue];
        v17 = qword_1009F9820;
        v27 = intValue;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = intValue;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Client override startTimeOffsetUsec: %llu", buf, 0xCu);
        }
      }
    }

    debugParameters3 = [*&self->_machTimeConverter.fStartTimes.machContinuousTimeSec debugParameters];
    v19 = [debugParameters3 objectForKey:PRP2PArgsListeningWindowSizeUsec];

    if (v19)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        intValue2 = [v19 intValue];
        v20 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = intValue2;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Client override listeningWindowSizeUsec: %u", buf, 8u);
        }
      }
    }
  }

  if (self->_connectionIntervalUs.__engaged_)
  {
    val = self->_connectionIntervalUs.var0.__val_;
  }

  else
  {
    val = 30000;
  }

  v22 = [v7 objectForKey:@"connectionIntervalOverride"];
  v23 = v22;
  if (v22)
  {
    val = [v22 intValue];
    v24 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = val;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,connection interval value overridden to %llu us", buf, 0xCu);
    }
  }

  [(NIServerItemLocalizerSession *)self _getCompanionDescriptor];
  v25 = v29;
  *&retstr->peer.var0.__null_state_ = *buf;
  *(&retstr->peer.var0.__val_.uuid.var0 + 12) = v25;
  *&retstr->peer.var0.__val_.bt_adv_address.var0.__val_.__elems_[2] = v30;
  retstr->peer.__engaged_ = 1;
  retstr->start_time_or_offset_usec = val * vcvtad_u64_f64(v27 / val);
  retstr->start_time_type = 2;
  retstr->listening_window_usec = intValue2;
  *&retstr->scheduling_interval_usec = 0;
  retstr->conn_evt_trigger_desc = (&_mh_execute_header & 0xFFFFFFFF00000000 | val);
  *&retstr->dither_constant_msec.var0.__null_state_ = 0u;
  *&retstr->secondary_scheduling_interval_usec.var0.__null_state_ = 0u;

  return result;
}

- (optional<rose::RoseServiceRequest>)_prepareNBAMMSServiceRequest
{
  dispatch_assert_queue_V2(self->_clientQueue);
  self->_isInitiator = 0;
  v22 = 0;
  LOBYTE(v23) = 0;
  v24 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v30 = 0;
  v20 = 0;
  v21 = 0;
  LODWORD(v25) = 0;
  *(&v25 + 3) = 0;
  v29[0] = 0;
  *(v29 + 3) = 0;
  memset(v31, 0, sizeof(v31));
  v32 = 1;
  v34 = 0;
  v35 = 0;
  memset(v33, 0, 7);
  v37 = 0;
  v36 = 0;
  v38 = 1;
  v39 = 0;
  v40 = 0;
  LOBYTE(v41) = 0;
  v42 = 0;
  LOBYTE(v43) = 0;
  v44 = 0;
  v45 = 0uLL;
  uUID = [(CompanionDevice *)self->_companionDevice UUID];
  v6 = [(NIServerItemLocalizerSession *)self _pickRandomNbUwbAcquisitionChannelWithUUID:uUID];

  v19[0] = 6;
  LOBYTE(v19[1]) = 0;
  v19[2] = v6;
  LOBYTE(v19[3]) = 1;
  v23 = sub_100428478(v19);
  v24 = 1;
  v7 = sub_1000054A8();
  v32 = sub_100460ADC(v7);
  v8 = NSRandomData();
  v9 = v8;
  if (!v8)
  {
    v17 = "IRK != nil";
    v18 = 2622;
    goto LABEL_13;
  }

  if ([v8 length] != 16)
  {
    v17 = "[IRK length] == kNbammsIRKLengthBytes";
    v18 = 2623;
LABEL_13:
    __assert_rtn("[NIServerItemLocalizerSession _prepareNBAMMSServiceRequest]", "NIServerItemLocalizerSession.mm", v18, v17);
  }

  v10 = v9;
  v45 = *[v9 bytes];
  if (self->_useMixedMMSForNBARanging)
  {
    v11 = &word_1009F537A;
  }

  else
  {
    v11 = &word_1009F5378;
  }

  HIWORD(v25) = *v11;
  v26 = 1;
  v43 = [(NIServerItemLocalizerSession *)self macAddressForIRK:v9];
  v44 = 1;
  v42 = 1;
  v41 = 4864;
  v46 = 4;
  v12 = sub_1000054A8();
  LOBYTE(v33[0]) = sub_100460AC0(v12);
  v13 = +[NSUserDefaults standardUserDefaults];
  v14 = [v13 BOOLForKey:@"DisableDualRxChain"];

  if (v14)
  {
    LOBYTE(v33[0]) = 0;
  }

  HIBYTE(v33[0]) = self->_useTimeDitheringForNBARanging;
  LOBYTE(v33[1]) = self->_usePreambleRandomizationForNBARanging;
  v15 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v19[0] = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,PRRangingManager prepareNBAMMSServiceRequest #companion-retry", v19, 2u);
  }

  sub_10019DD0C(&v20, !self->_isInitiator, v19);
  memcpy(retstr, v19, 0x240uLL);
  retstr->var0.__val_.range_enable_params.nbamms.mms_pkt_type.__engaged_ = 1;

  return result;
}

- (BOOL)_updateNBAMMSCompanionConfigurationCommandWithRequest:(const void *)request rangeConfig:(RangeConfigNBAMMS *)config
{
  *&config->var0 = 0;
  *&config->var8 = 0;
  *&config->var13 = 0;
  if (*(request + 546) != 1)
  {
    goto LABEL_14;
  }

  config->var9 = *(request + 272);
  if (*(request + 531) != 1)
  {
    goto LABEL_14;
  }

  config->var10 = *(request + 530);
  if (*(request + 533) != 1)
  {
    goto LABEL_14;
  }

  config->var11 = *(request + 532);
  if (*(request + 535) != 1)
  {
    goto LABEL_14;
  }

  config->var12 = *(request + 534);
  if (*(request + 541) != 1)
  {
    goto LABEL_14;
  }

  config->var13 = *(request + 540);
  if (*(request + 174) != 1)
  {
    goto LABEL_14;
  }

  config->var14 = *(request + 86);
  config->var0 = 0;
  v7 = sub_10035D02C();
  v8 = *(v7 + 406);
  v9 = *(v7 + 407);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = sub_10032A2B0(v8);
  if (v9)
  {
    sub_10000AD84(v9);
  }

  if ((v10 & 0x1000000) != 0)
  {
    config->var1 = (16 * self->_useMixedMMSForNBARanging) | (2 * (v10 & 7));
    config->var2 = BYTE1(v10) & 0xF;
    config->var3 = BYTE2(v10) & 0xF;
    config->var15 = self->_useTimeDitheringForNBARanging | (2 * self->_usePreambleRandomizationForNBARanging);
    config->var4 = 60;
    [(NIServerItemLocalizerSession *)self _populateNBAMMSRoseStartRangingOptions:!self->_isInitiator];
    config->var5 = v19 / 0x3E8;
    if (v21)
    {
      v12 = v20;
    }

    else
    {
      v12 = 0;
    }

    config->var6 = v12;
    config->var7 = 2;
    if ((*(request + 522) & 1) == 0)
    {
      sub_1004BEB88();
    }

    v13 = *(request + 260);
    v15 = 6;
    v16 = 0;
    v17 = v13;
    v18 = 1;
    config->var8 = sub_100428478(&v15);
    LOBYTE(v11) = 1;
  }

  else
  {
    v11 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
    if (v11)
    {
      sub_1004BEBB4();
LABEL_14:
      LOBYTE(v11) = 0;
    }
  }

  return v11;
}

- (float)_adjustDutyCycleForInterfaceDelays:(float)delays schedulingInterval:(unsigned int)interval
{
  v5 = ((interval - 17000) - 2000);
  if ((interval * delays) > v5)
  {
    v6 = qword_1009F9820;
    delays = v5 / interval;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Provided duty cycle leads to scan window > scheduling interval - (start time offset + interface delays), using entire available scan window", v8, 2u);
    }
  }

  return delays;
}

- (optional<unsigned)_getDitherConst:(BOOL)const
{
  if (const)
  {
    debugParameters = [*&self->_machTimeConverter.fStartTimes.machContinuousTimeSec debugParameters];

    if (debugParameters)
    {
      debugParameters2 = [*&self->_machTimeConverter.fStartTimes.machContinuousTimeSec debugParameters];
      v6 = [debugParameters2 objectForKey:@"ditherConst"];

      if (v6)
      {
        intValue = [v6 intValue];
      }

      else
      {
        intValue = 2;
      }
    }

    else
    {
      intValue = 2;
    }

    v10 = 1;
  }

  else
  {
    v8 = qword_1009F9820;
    v9 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
    v10 = 0;
    intValue = 0;
    if (v9)
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Dithered duty cycled acquisition not valid for responder", v12, 2u);
      v10 = 0;
      intValue = 0;
    }
  }

  return (intValue | (v10 << 8));
}

- (id)_getDictFromRangeConfigNBAMMS:(RangeConfigNBAMMS *)s
{
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [NSNumber numberWithUnsignedInt:s->var0];
  [v4 setValue:v5 forKey:CLDurianNBRangingVersionKey];

  v6 = [NSNumber numberWithUnsignedInt:s->var1];
  [v4 setValue:v6 forKey:CLDurianNBRangingMMSFragCountryCodeKey];

  v7 = [NSNumber numberWithUnsignedInt:s->var2];
  [v4 setValue:v7 forKey:CLDurianNBRangingNBCountryCodesKey];

  v8 = [NSNumber numberWithUnsignedInt:s->var3];
  [v4 setValue:v8 forKey:CLDurianNBRangingSarCountryCodesKey];

  v9 = [NSNumber numberWithUnsignedInt:s->var4];
  [v4 setValue:v9 forKey:CLDurianNBRangingAcqTimeoutKey];

  v10 = [NSNumber numberWithUnsignedInt:s->var5];
  [v4 setValue:v10 forKey:CLDurianNBRangingAcqRetryIntervalKey];

  v11 = [NSNumber numberWithUnsignedInt:s->var6];
  [v4 setValue:v11 forKey:CLDurianNBRangingAcqDitherMaxKey];

  v12 = [NSNumber numberWithUnsignedInt:s->var7];
  [v4 setValue:v12 forKey:CLDurianNBRangingRangingTimeoutKey];

  v13 = [NSNumber numberWithUnsignedInt:s->var8];
  [v4 setValue:v13 forKey:CLDurianNBRangingNBMaskNapChannelKey];

  v14 = [NSNumber numberWithUnsignedInt:s->var9];
  [v4 setValue:v14 forKey:CLDurianNBRangingNBChannelSelectMaskKey];

  v15 = [NSNumber numberWithUnsignedInt:s->var10 - 1];
  [v4 setValue:v15 forKey:CLDurianNBRangingMMSPSRKey];

  v16 = [NSNumber numberWithUnsignedInt:s->var11];
  [v4 setValue:v16 forKey:CLDurianNBRangingMMSGapKey];

  v17 = [NSNumber numberWithUnsignedInt:s->var12];
  [v4 setValue:v17 forKey:CLDurianNBRangingMMSSequenceIdxKey];

  v18 = [NSNumber numberWithUnsignedInt:s->var13];
  [v4 setValue:v18 forKey:CLDurianNBRangingMMSSlotSizeKey];

  v19 = [NSNumber numberWithUnsignedInt:s->var14];
  [v4 setValue:v19 forKey:CLDurianNBRangingIntervalKey];

  v20 = [NSNumber numberWithUnsignedInt:s->var15];
  [v4 setValue:v20 forKey:CLDurianNBRangingDebugFlagsKey];

  v21 = [v4 mutableCopy];
  v22 = qword_1009F9820;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v21 description];
    v25 = 138412290;
    v26 = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,RangeConfigNBAMMS dict: %@", &v25, 0xCu);
  }

  return v21;
}

- (unsigned)_pickRandomNbUwbAcquisitionChannelWithUUID:(id)d
{
  dCopy = d;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 objectForKey:@"FindingNapChannel"];

  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    LOWORD(v6) = [v5 intValue];
    v7 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v13[0]) = 67109120;
      HIDWORD(v13[0]) = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Using NAP channel %d from defaults writes", v13, 8u);
    }
  }

  else
  {
    v13[0] = 0;
    v13[1] = 0;
    [dCopy getUUIDBytes:v13];
    v8 = [NSData dataWithBytes:v13 length:16];
    v9 = v8;
    [v8 bytes];
    v10 = SipHash();

    v11 = (v10 * 0x2492492492492493uLL) >> 64;
    v6 = v10 - 7 * ((v11 + ((v10 - v11) >> 1)) >> 2) + 5;
  }

  return v6;
}

- (unint64_t)macAddressForIRK:(id)k
{
  kCopy = k;
  [kCopy bytes];
  v4 = SipHash();

  return v4;
}

- (void)_selectNBAMMSMode
{
  self->_useMixedMMSForNBARanging = 0;
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 objectForKey:@"UseMixedMMSForItemFinding"];

  if (v4)
  {
    v5 = [v3 BOOLForKey:@"UseMixedMMSForItemFinding"];
    v6 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "NO";
      if (v5)
      {
        v7 = "YES";
      }

      v10 = 136315138;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,UseMixedMMSForItemFinding defaults set to %s", &v10, 0xCu);
    }

    self->_useMixedMMSForNBARanging = v5;
  }

  v8 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_useMixedMMSForNBARanging)
    {
      v9 = "YES";
    }

    else
    {
      v9 = "NO";
    }

    v10 = 136315138;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,MixedMMS selected for ranging: %s", &v10, 0xCu);
  }
}

- (void)findMyAccessoryManager:(id)manager didFailWithError:(id)error forDevice:(id)device
{
  managerCopy = manager;
  errorCopy = error;
  deviceCopy = device;
  v11 = deviceCopy;
  if (*&self->_machTimeConverter.fStartTimes.machContinuousTimeSec)
  {
    if (!deviceCopy || self->_companionRangingManager == managerCopy && (-[CompanionDevice UUID](self->_companionDevice, "UUID"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v11 isEqual:v12], v12, (v13 & 1) != 0))
    {
      v14 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = errorCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,[CL cb] didFailWithError error:%@", buf, 0xCu);
      }

      v17 = NSLocalizedDescriptionKey;
      v18 = @"Generic companion ranging error.";
      v15 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v16 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:301 userInfo:v15];

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004BEBE8();
      }

      [(NIServerItemLocalizerSession *)self _handleError:v16];
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BEC58();
  }
}

- (void)findMyAccessoryManager:(id)manager didConnectDevice:(id)device error:(id)error
{
  managerCopy = manager;
  deviceCopy = device;
  errorCopy = error;
  if (*&self->_machTimeConverter.fStartTimes.machContinuousTimeSec)
  {
    if (self->_companionRangingManager == managerCopy)
    {
      uUID = [(CompanionDevice *)self->_companionDevice UUID];
      v12 = [deviceCopy isEqual:uUID];

      if (v12)
      {
        if (errorCopy)
        {
          self->_companionConnectionState = 0;
          v18 = NSLocalizedDescriptionKey;
          v19 = @"Error connecting to peer.";
          v13 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
          v14 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:301 userInfo:v13];

          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004BEC8C();
          }

          [(NIServerItemLocalizerSession *)self _handleError:v14];
        }

        else
        {
          v15 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v21 = deviceCopy;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,[CL cb] New Connection: %@", buf, 0xCu);
          }

          machAbsoluteTimeSec = self->_machTimeConverter.fStartTimes.machAbsoluteTimeSec;
          if (machAbsoluteTimeSec != 0.0)
          {
            [*&machAbsoluteTimeSec sessionConnectedToAccessoryWithTimestamp:sub_100005288()];
          }

          companionConnectionState = self->_companionConnectionState;
          self->_companionConnectionState = 3;
          if (companionConnectionState == 2)
          {
            [(NIServerItemLocalizerSession *)self _initCompanion:self->_companionDevice];
          }
        }
      }
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BECFC();
  }
}

- (void)findMyAccessoryManager:(id)manager didDisconnectDevice:(id)device
{
  managerCopy = manager;
  deviceCopy = device;
  if (*&self->_machTimeConverter.fStartTimes.machContinuousTimeSec)
  {
    if (self->_companionRangingManager == managerCopy)
    {
      uUID = [(CompanionDevice *)self->_companionDevice UUID];
      v9 = [deviceCopy isEqual:uUID];

      if (v9)
      {
        companionRoseState = self->_companionRoseState;
        companionConnectionState = self->_companionConnectionState;
        self->_companionRoseState = 0;
        self->_companionRangingState = 0;
        self->_companionConnectionState = 1;
        v12 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          companionDevice = self->_companionDevice;
          *buf = 138412290;
          v24 = companionDevice;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,[CL cb] disconnection: %@", buf, 0xCu);
        }

        if (self->_companionConnectionState == 4)
        {
          v14 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Disconnect complete", buf, 2u);
          }
        }

        else if (companionRoseState)
        {
          v21 = NSLocalizedDescriptionKey;
          v22 = @"Disconnected while rose activity incomplete";
          v15 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
          v16 = PRErrorWithCodeAndUserInfo(302, v15);

          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004BED30();
          }

          [(NIServerItemLocalizerSession *)self _handleError:v16];
        }

        else if (companionConnectionState == 2)
        {
          v19 = NSLocalizedDescriptionKey;
          v20 = @"Disconnected while connecting";
          v17 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
          v18 = PRErrorWithCodeAndUserInfo(302, v17);

          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004BED64();
          }

          [(NIServerItemLocalizerSession *)self _handleError:v18];
        }

        [(NIServerItemLocalizerSession *)self _updateNearbyObjectStatusWithDisconnect];
      }
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BED98();
  }
}

- (void)findMyAccessoryManager:(id)manager didConfigureRangingOnDevice:(id)device withStatus:(unsigned int)status error:(id)error
{
  managerCopy = manager;
  deviceCopy = device;
  errorCopy = error;
  if (*&self->_machTimeConverter.fStartTimes.machContinuousTimeSec)
  {
    if (self->_companionRangingManager == managerCopy)
    {
      uUID = [(CompanionDevice *)self->_companionDevice UUID];
      v14 = [deviceCopy isEqual:uUID];

      if (v14)
      {
        v15 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v29 = errorCopy;
          v30 = 1024;
          statusCopy = status;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,[CL cb] didConfigureRangingOnDevice error:%@, status:%d", buf, 0x12u);
        }

        if (self->_companionRoseState == 2)
        {
          if (errorCopy)
          {
            v24 = NSLocalizedDescriptionKey;
            v25 = @"Error configuring ranging parameters on peer.";
            v16 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
            v17 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:302 userInfo:v16];

            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
            {
              sub_1004BEE00();
            }

            [(NIServerItemLocalizerSession *)self _handleError:v17];
          }

          else
          {
            v20 = qword_1009F9820;
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
            {
              companionDevice = self->_companionDevice;
              *buf = 138412290;
              v29 = companionDevice;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,ConfigureRangingOnDevice: %@", buf, 0xCu);
            }

            self->_companionRoseState = 3;
            self->_companionRangingState = 1;
            self->_clientRequestState = 2;
            [(NIServerItemLocalizerSession *)self _updateNearbyObjectStatusWithSuccessfulConfiguration];
            machAbsoluteTimeSec = self->_machTimeConverter.fStartTimes.machAbsoluteTimeSec;
            if (machAbsoluteTimeSec != 0.0)
            {
              [*&machAbsoluteTimeSec sessionConfiguredAccessoryWithTimestamp:sub_100005288()];
            }

            if ([(NIServerItemLocalizerSession *)self _shouldRange])
            {
              v23 = [(NIServerItemLocalizerSession *)self run];
              if (v23)
              {
                [(NIServerItemLocalizerSession *)self _handleError:v23];
              }
            }
          }
        }

        else
        {
          v26 = NSLocalizedDescriptionKey;
          v27 = @"Unexpected didConfigureRangingOnDevice";
          v18 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
          v19 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:301 userInfo:v18];

          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004BEDCC();
          }

          [(NIServerItemLocalizerSession *)self _handleError:v19];
        }
      }
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BEE70();
  }
}

- (void)findMyAccessoryManager:(id)manager didInitRangingOnDevice:(id)device withStatus:(unsigned int)status error:(id)error
{
  managerCopy = manager;
  deviceCopy = device;
  errorCopy = error;
  if (*&self->_machTimeConverter.fStartTimes.machContinuousTimeSec)
  {
    if (self->_companionRangingManager != managerCopy)
    {
      goto LABEL_30;
    }

    uUID = [(CompanionDevice *)self->_companionDevice UUID];
    v14 = [deviceCopy isEqual:uUID];

    if ((v14 & 1) == 0)
    {
      goto LABEL_30;
    }

    v15 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v36 = errorCopy;
      v37 = 1024;
      statusCopy = status;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,[CL cb] didInitRoseOnDevice error:%@, status:%d", buf, 0x12u);
    }

    if (self->_companionRoseState == 1)
    {
      v16 = qword_1009F9820;
      if (errorCopy)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004BEED8();
        }

        [(NIServerItemLocalizerSession *)self _handleError:errorCopy];
        goto LABEL_30;
      }

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v36) = status;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Remote Device Ready with ROSE_STATUS: 0x%x", buf, 8u);
      }

      if (self->_didSuspendSessionAccessoryInUse)
      {
        v19 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Resume session - accessory no longer in use", buf, 2u);
        }

        self->_didSuspendSessionAccessoryInUse = 0;
        clientQueue = self->_clientQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100322D7C;
        block[3] = &unk_10098BD28;
        block[4] = self;
        dispatch_async(clientQueue, block);
      }

      v21 = +[NSUserDefaults standardUserDefaults];
      if ((status == 1) | [v21 BOOLForKey:@"B389_SimulateLowPower"] & 1)
      {
        v31 = NSLocalizedDescriptionKey;
        v32 = @"Failed to initialize ranging on tag";
        v22 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        v23 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:300 userInfo:v22];

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004BEF48();
        }

LABEL_29:
        [(NIServerItemLocalizerSession *)self _handleError:v23];

        goto LABEL_30;
      }

      if (status)
      {
        v29 = NSLocalizedDescriptionKey;
        v30 = @"Error from R1 while initializing";
        v24 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        v23 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:301 userInfo:v24];

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004BEF48();
        }

        goto LABEL_29;
      }

      if (self->_hasFetchedFindingCapability)
      {
        [(NIServerItemLocalizerSession *)self _configureCompanionForRanging];
      }

      else
      {
        v25 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,[CL] fetchFindingCapabilities", buf, 2u);
        }

        companionRangingManager = self->_companionRangingManager;
        uUID2 = [(CompanionDevice *)self->_companionDevice UUID];
        [(CLFindMyAccessoryManager *)companionRangingManager fetchFindingCapabilities:uUID2];
      }
    }

    else
    {
      v33 = NSLocalizedDescriptionKey;
      v34 = @"Unexpected didInitRoseOnDevice";
      v17 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v18 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:301 userInfo:v17];

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004BEEA4();
      }

      [(NIServerItemLocalizerSession *)self _handleError:v18];
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BEFC4();
  }

LABEL_30:
}

- (void)findMyAccessoryManager:(id)manager didDeinitRangingOnDevice:(id)device withStatus:(unsigned int)status error:(id)error
{
  managerCopy = manager;
  deviceCopy = device;
  errorCopy = error;
  if (*&self->_machTimeConverter.fStartTimes.machContinuousTimeSec)
  {
    if (self->_companionRangingManager != managerCopy)
    {
      goto LABEL_23;
    }

    uUID = [(CompanionDevice *)self->_companionDevice UUID];
    v13 = [deviceCopy isEqual:uUID];

    if ((v13 & 1) == 0)
    {
      goto LABEL_23;
    }

    v14 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = errorCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,[CL cb] didDeinitRangingOnDevice error:%@", buf, 0xCu);
    }

    if (self->_companionRoseState == 4)
    {
      if (errorCopy)
      {
        v25 = NSLocalizedDescriptionKey;
        v26 = @"Error deiniting R1 on companion";
        v15 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
        v16 = PRErrorWithCodeAndUserInfo(301, v15);

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004BF02C();
        }

        [(NIServerItemLocalizerSession *)self _handleError:v16];

        goto LABEL_23;
      }

      self->_companionRoseState = 0;
      companionConnectionState = self->_companionConnectionState;
      if (companionConnectionState < 3)
      {
LABEL_19:
        v27 = NSLocalizedDescriptionKey;
        v28 = @"Unexpected BT connection state";
        v20 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        v21 = PRErrorWithCodeAndUserInfo(301, v20);

        [(NIServerItemLocalizerSession *)self _handleError:v21];
        goto LABEL_23;
      }

      if (companionConnectionState != 3)
      {
        if (companionConnectionState != 4)
        {
          goto LABEL_23;
        }

        goto LABEL_19;
      }

      self->_companionConnectionState = 4;
      v22 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,[CL] disconnectFromDevice", buf, 2u);
      }

      companionRangingManager = self->_companionRangingManager;
      uUID2 = [(CompanionDevice *)self->_companionDevice UUID];
      [(CLFindMyAccessoryManager *)companionRangingManager disconnectDevice:uUID2];
    }

    else
    {
      v29 = NSLocalizedDescriptionKey;
      v30 = @"Unexpected didDeinitRangingOnDevice";
      v17 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v18 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:301 userInfo:v17];

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004BEFF8();
      }

      [(NIServerItemLocalizerSession *)self _handleError:v18];
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BF09C();
  }

LABEL_23:
}

- (void)findMyAccessoryManager:(id)manager didStartRangingOnDevice:(id)device error:(id)error
{
  managerCopy = manager;
  deviceCopy = device;
  errorCopy = error;
  if (*&self->_machTimeConverter.fStartTimes.machContinuousTimeSec)
  {
    if (self->_companionRangingManager == managerCopy)
    {
      uUID = [(CompanionDevice *)self->_companionDevice UUID];
      v12 = [deviceCopy isEqual:uUID];

      if (v12)
      {
        v13 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v23 = errorCopy;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,[CL cb] didStartRangingOnDevice error:%@", buf, 0xCu);
        }

        if (self->_companionRangingState == 4)
        {
          if (errorCopy)
          {
            v18 = NSLocalizedDescriptionKey;
            v19 = @"Error starting ranging on companion";
            v14 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
            v15 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:301 userInfo:v14];

            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
            {
              sub_1004BF02C();
            }

            [(NIServerItemLocalizerSession *)self _handleError:v15];
          }

          else
          {
            self->_companionRangingState = 5;
            [(NIServerItemLocalizerSession *)self _combineAndReportLocalAndCompanionRangingRequestStatus];
          }
        }

        else
        {
          v20 = NSLocalizedDescriptionKey;
          v21 = @"Unexpected didStartRangingOnDevice";
          v16 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
          v17 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:301 userInfo:v16];

          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004BF0D0();
          }

          [(NIServerItemLocalizerSession *)self _handleError:v17];
        }
      }
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BF104();
  }
}

- (void)findMyAccessoryManager:(id)manager didCompleteRangingOnDevice:(id)device withStatus:(unsigned int)status endReason:(unsigned __int8)reason error:(id)error
{
  reasonCopy = reason;
  managerCopy = manager;
  deviceCopy = device;
  errorCopy = error;
  if (*&self->_machTimeConverter.fStartTimes.machContinuousTimeSec)
  {
    if (self->_companionRangingManager != managerCopy)
    {
      goto LABEL_16;
    }

    uUID = [(CompanionDevice *)self->_companionDevice UUID];
    v16 = [deviceCopy isEqual:uUID];

    if ((v16 & 1) == 0)
    {
      goto LABEL_16;
    }

    v17 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v36 = deviceCopy;
      v37 = 2112;
      v38 = errorCopy;
      v39 = 1024;
      v40 = reasonCopy;
      v41 = 1024;
      statusCopy2 = status;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "#ses-item-loc,[CL cb] didCompleteRoseRangingOnDevice device: %@, error: %@, endReason: %d, status: %d", buf, 0x22u);
    }

    if ((self->_companionRangingState - 5) >= 2)
    {
      v33 = NSLocalizedDescriptionKey;
      v34 = @"Unexpected didCompleteRoseRangingOnDevice";
      v21 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v22 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:301 userInfo:v21];

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004BF138();
      }

      [(NIServerItemLocalizerSession *)self _handleError:v22];
    }

    else
    {
      if (errorCopy)
      {
        v31 = NSLocalizedDescriptionKey;
        v32 = @"Error reported upon ranging complete";
        v18 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        v19 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:301 userInfo:v18];

        v20 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          *buf = 138413058;
          v36 = deviceCopy;
          v37 = 2112;
          v38 = errorCopy;
          v39 = 1024;
          v40 = reasonCopy;
          v41 = 1024;
          statusCopy2 = status;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "#ses-item-loc,failed to complete Rose ranging on device: %@, error: %@, endReason: %d, status: %d", buf, 0x22u);
        }

        [(NIServerItemLocalizerSession *)self _handleError:v19];

        goto LABEL_16;
      }

      self->_companionRangingState = 1;
      v23 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v36) = status;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Range Complete Event ROSE_STATUS: 0x%x", buf, 8u);
      }

      if (status == 7)
      {
        self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_bch.var0.__null_state_ = 1;
LABEL_26:
        v29 = NSLocalizedDescriptionKey;
        v30 = @"Error reported in ranging complete";
        v26 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        v27 = PRErrorWithCodeAndUserInfo(301, v26);

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004BF16C();
        }

        [(NIServerItemLocalizerSession *)self _handleError:v27];

        goto LABEL_16;
      }

      self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_bch.var0.__null_state_ = 0;
      if (status != 14 && status)
      {
        goto LABEL_26;
      }

      self->_companionRangingState = 1;
      v28 = 0;
      v24 = [(NIServerItemLocalizerSession *)self _stopRangingMangagerAndCompanion:&v28 shouldReconfigureLocalRangingSession:1];
      v25 = v28;
      if ((v24 & 1) == 0)
      {
        [(NIServerItemLocalizerSession *)self _handleError:v25];
      }

      [(NIServerItemLocalizerSession *)self _combineAndReportLocalAndCompanionRangingRequestStatus];
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BF1E0();
  }

LABEL_16:
}

- (void)findMyAccessoryManager:(id)manager didHaveRangingMovementOnDevice:(id)device
{
  managerCopy = manager;
  deviceCopy = device;
  if (*&self->_machTimeConverter.fStartTimes.machContinuousTimeSec)
  {
    if (self->_companionRangingManager == managerCopy)
    {
      uUID = [(CompanionDevice *)self->_companionDevice UUID];
      v9 = [deviceCopy isEqual:uUID];

      if (v9)
      {
        v10 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,[CL cb] didHaveRangingMovementOnDevice", v11, 2u);
        }

        [(NINearbyUpdatesEngine *)self->_updatesEngine acceptNearbyObjectMovement:1];
      }
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BF318();
  }
}

- (void)findMyAccessoryManager:(id)manager didPrepareRangingOnDevice:(id)device withConnInterval:(id)interval error:(id)error
{
  managerCopy = manager;
  deviceCopy = device;
  intervalCopy = interval;
  errorCopy = error;
  if (*&self->_machTimeConverter.fStartTimes.machContinuousTimeSec)
  {
    if (self->_companionRangingManager == managerCopy)
    {
      uUID = [(CompanionDevice *)self->_companionDevice UUID];
      v15 = [deviceCopy isEqual:uUID];

      if (v15)
      {
        v16 = qword_1009F9820;
        if (errorCopy)
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004BF34C();
          }

          [(NIServerItemLocalizerSession *)self _handleError:errorCopy];
        }

        else
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v21) = 0;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,[CL cb] didPrepareForStartRangingOnDevice", &v21, 2u);
          }

          if (self->_companionRangingState != 2)
          {
            v23 = NSLocalizedDescriptionKey;
            v24 = @"Unexpected didPrepareForStartRangingOnDevice";
            v17 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
            v18 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:301 userInfo:v17];

            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
            {
              sub_1004BF380();
            }

            [(NIServerItemLocalizerSession *)self _handleError:v18];
          }

          self->_companionRangingState = 3;
          self->_connectionIntervalUs.var0.__val_ = [intervalCopy unsignedLongLongValue];
          self->_connectionIntervalUs.__engaged_ = 1;
          v19 = qword_1009F9820;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            if (!self->_connectionIntervalUs.__engaged_)
            {
              sub_1000195BC();
            }

            val = self->_connectionIntervalUs.var0.__val_;
            v21 = 134217984;
            v22 = val;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Connection interval set to %llu us", &v21, 0xCu);
          }

          [(NIServerItemLocalizerSession *)self _startRanging];
        }
      }
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BF3B4();
  }
}

- (void)findMyAccessoryManager:(id)manager didFetchAccessoryInformationForDevice:(id)device ownershipType:(unint64_t)type communicationProtocol:(unint64_t)protocol accessoryTypeName:(id)name error:(id)error
{
  managerCopy = manager;
  deviceCopy = device;
  nameCopy = name;
  errorCopy = error;
  if (*&self->_machTimeConverter.fStartTimes.machContinuousTimeSec)
  {
    if (self->_companionRangingManager == managerCopy)
    {
      uUID = [(CompanionDevice *)self->_companionDevice UUID];
      v19 = [deviceCopy isEqual:uUID];

      if (v19)
      {
        if (errorCopy)
        {
          self->_accessoryInformationRequestState = 0;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004BF3E8();
          }

          [(NIServerItemLocalizerSession *)self _handleError:errorCopy];
        }

        else
        {
          self->_accessoryInformationRequestState = 2;
          v20 = qword_1009F9820;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            uTF8String = [nameCopy UTF8String];
            v22 = "Unknown";
            v23 = "CL";
            if (protocol != 1)
            {
              v23 = "Unknown";
            }

            if (type == 1)
            {
              v22 = "Owner";
            }

            if (protocol == 2)
            {
              v23 = "GATT";
            }

            *v26 = 136315650;
            if (type == 2)
            {
              v22 = "NonOwner";
            }

            *&v26[4] = v22;
            v27 = 2080;
            v28 = v23;
            v29 = 2080;
            v30 = uTF8String;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,[CL cb] didFetchAccessoryInformationForDevice, ownership: %s, communicationProtocol: %s, accessoryTypeName: %s", v26, 0x20u);
          }

          self->_ownershipType = type;
          self->_communicationProtocol = protocol;
          objc_storeStrong(&self->_accessoryTypeName, name);
          machAbsoluteTimeSec = self->_machTimeConverter.fStartTimes.machAbsoluteTimeSec;
          if (machAbsoluteTimeSec != 0.0)
          {
            [*&machAbsoluteTimeSec updateWithOwnership:self->_ownershipType == 1 accessoryTypeName:{self->_accessoryTypeName, *v26}];
          }

          configure = [(NIServerItemLocalizerSession *)self configure];
        }
      }
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BF41C();
  }
}

- (void)findMyAccessoryManager:(id)manager didFetchFindingCapabilitiesOnDevice:(id)device withFindingCapabilities:(id)capabilities error:(id)error
{
  managerCopy = manager;
  deviceCopy = device;
  capabilitiesCopy = capabilities;
  errorCopy = error;
  if (*&self->_machTimeConverter.fStartTimes.machContinuousTimeSec)
  {
    if (self->_companionRangingManager != managerCopy)
    {
      goto LABEL_31;
    }

    uUID = [(CompanionDevice *)self->_companionDevice UUID];
    v15 = [deviceCopy isEqual:uUID];

    if ((v15 & 1) == 0)
    {
      goto LABEL_31;
    }

    if (!errorCopy)
    {
      v21 = qword_1009F9820;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v25) = 67109376;
        HIDWORD(v25) = [capabilitiesCopy supportsFC1ND];
        v26 = 1024;
        supportsNBAMMS = [capabilitiesCopy supportsNBAMMS];
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,[CL cb] didFetchFindingCapabilitiesOnDevice, supportsFC1ND: %d, supportsNBAMMS: %d", &v25, 0xEu);
      }

      self->_hasFetchedFindingCapability = 1;
      self->_accessorySupportsFC1ND = [capabilitiesCopy supportsFC1ND];
      self->_accessorySupportsNBAMMS = [capabilitiesCopy supportsNBAMMS];
      goto LABEL_27;
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BF450();
    }

    domain = [errorCopy domain];
    v17 = kCLErrorDomainPrivate;
    if ([domain isEqualToString:kCLErrorDomainPrivate])
    {
      v18 = [errorCopy code] == 38;

      if (v18)
      {
        v19 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v25) = 0;
          v20 = "#ses-item-loc,Fetch Finding Capability not supported for accessory - assuming just FC1-ND support";
LABEL_25:
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v20, &v25, 2u);
          goto LABEL_26;
        }

        goto LABEL_26;
      }
    }

    else
    {
    }

    domain2 = [errorCopy domain];
    if ([domain2 isEqualToString:v17])
    {
      if ([errorCopy code] == 1)
      {

        goto LABEL_23;
      }

      v23 = [errorCopy code] == 31;

      if (v23)
      {
LABEL_23:
        v19 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v25) = 0;
          v20 = "#ses-item-loc,Fetch Finding Capability command not available on accessory - assuming just FC1-ND support";
          goto LABEL_25;
        }

LABEL_26:
        self->_hasFetchedFindingCapability = 1;
        self->_accessorySupportsFC1ND = 1;
        self->_accessorySupportsNBAMMS = 0;
LABEL_27:
        [(NIServerItemLocalizerSession *)self _populateRangingSessionMacMode];
        _configureRangingSession = [(NIServerItemLocalizerSession *)self _configureRangingSession];
        if (_configureRangingSession)
        {
          [(NIServerItemLocalizerSession *)self _handleError:_configureRangingSession];
        }

        else
        {
          [(NIServerItemLocalizerSession *)self _configureCompanionForRanging];
        }

        goto LABEL_31;
      }
    }

    else
    {
    }

    [(NIServerItemLocalizerSession *)self _handleError:errorCopy];
    goto LABEL_31;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BF4C0();
  }

LABEL_31:
}

- (id).cxx_construct
{
  self->_p2pSession.__ptr_ = 0;
  self->_p2pSession.__cntrl_ = 0;
  self->_nbammsSession.__ptr_ = 0;
  self->_nbammsSession.__cntrl_ = 0;
  self->_connectionIntervalUs.var0.__null_state_ = 0;
  self->_connectionIntervalUs.__engaged_ = 0;
  self->_pbLogger.__ptr_ = 0;
  self->_pbLogger.__cntrl_ = 0;
  self->_roseServiceRequest.var0.__null_state_ = 0;
  self->_roseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_pkt_type.__engaged_ = 0;
  sub_1002FE758(&self->_roseServiceRequest.__engaged_, a2);
  return self;
}

@end