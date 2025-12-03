@interface ClientCommonAudioProfile
+ (id)eventToString:(unsigned __int8)string;
+ (id)stateToString:(unsigned __int8)string withCurrentSM:(const CAPStateMachine *)m;
- (BOOL)anyAcceptorPendingStateTransition;
- (BOOL)buildCIG;
- (BOOL)coordinatedSetMembersUnLocked;
- (BOOL)isCIGInUse;
- (BOOL)isPeripheralConnected:(id)connected;
- (BOOL)isPeripheralResolvable:(id)resolvable;
- (BOOL)matchCentralToPeripheralQosParams:(id)params withCIS:(id)s;
- (BOOL)matchPeripheralToCentralQosParams:(id)params withCIS:(id)s;
- (BOOL)sendRelativeVolumeDownRequest:(id)request;
- (BOOL)sendRelativeVolumeUpRequest:(id)request;
- (BOOL)useCSIPOrderedAccessProcedure;
- (BOOL)validateQoSParamsForAcceptor:(id)acceptor withCIS:(id)s;
- (ClientCommonAudioProfile)init;
- (id)getAudioConfigList;
- (id)getConnectedPeripherals;
- (id)getNextAcceptor:(BOOL)acceptor;
- (id)getOrderedAccessSet:(id)set;
- (id)sortAcceptorsByRank:(id)rank;
- (unsigned)calculateCoordinatedSetSize:(unsigned __int8)size;
- (unsigned)connectCISforCIG;
- (unsigned)determineChannelCount:(unsigned int)count;
- (unsigned)getAudioConfigIndex:(BOOL)index;
- (unsigned)getCAPProcType;
- (unsigned)getNumOfConnectedPeripherals;
- (unsigned)matchAudioDevicesHandler;
- (unsigned)matchConnectedDevices:(id)devices;
- (unsigned)translatePhyMask:(unsigned __int8)mask;
- (unsigned)updateMetadataForDevice:(id)device;
- (void)CAPSmActionChangeMicGainSettingNext;
- (void)CAPSmActionChangeVolumeMuteNext;
- (void)CAPSmActionChangeVolumeNext;
- (void)CAPSmActionChangeVolumeOffsetNext;
- (void)CAPSmActionConfigCIG;
- (void)CAPSmActionConfigCodecNext;
- (void)CAPSmActionConfigQoSNext;
- (void)CAPSmActionDisableNext;
- (void)CAPSmActionEnableNext;
- (void)CAPSmActionLockComplete;
- (void)CAPSmActionLockNext;
- (void)CAPSmActionMatchAvailability;
- (void)CAPSmActionMicMuteNext;
- (void)CAPSmActionNone;
- (void)CAPSmActionOpenCIS;
- (void)CAPSmActionProcedureComplete;
- (void)CAPSmActionReadyRxStartNext;
- (void)CAPSmActionReadyRxStopNext;
- (void)CAPSmActionReleaseNext;
- (void)CAPSmActionSetMetadata;
- (void)CAPSmActionUnlockAll;
- (void)CAPSmActionUnlockNext;
- (void)CAPSmActionUpdateMetadataNext;
- (void)CAPSmActionValidate;
- (void)CAPUnicastAudioStart:(id)start withAudioChanConfig:(id)config;
- (void)CAPUnicastAudioStopDisable:(id)disable;
- (void)CAPUnicastAudioStopRelease:(id)release;
- (void)CAPUnicastAudioUpdate:(id)update withAudioChanConfig:(id)config;
- (void)addAcceptorToSet:(id)set;
- (void)cancelProcedureTimeoutTimer;
- (void)checkNextUpcomingProcedure;
- (void)clearAudioConfigList;
- (void)clearPendingStateTransition;
- (void)createCIG;
- (void)determineAudioConfigFromHALConfig:(id)config;
- (void)disconnectCISRequestHandler;
- (void)initPendingStateTransition;
- (void)joinCIG;
- (void)peripheralDisconnected:(id)disconnected;
- (void)procedureTimeoutTimerFired;
- (void)processSM:(id)m;
- (void)publishHALDevice:(id)device;
- (void)queueAudioStreamProcedure:(id)procedure withNextProcedure:(const CAPStateMachine *)nextProcedure;
- (void)resolvePeripheral:(id)peripheral withAdv:(id)adv;
- (void)sendAbsoluteVolumeRequest:(unsigned __int8)request;
- (void)sendCIGCreate:(id)create additionalCIS:(BOOL)s bidirectionCIS:(BOOL)iS;
- (void)sendCodecConfigRequest;
- (void)sendDisableRequest;
- (void)sendDisableRequestForDevice:(id)device;
- (void)sendEnableRequestForDevice:(id)device withSnkAseID:(id)d withSrcAseID:(id)iD;
- (void)sendEnableRequestWithSnkAseID:(id)d withSrcAseID:(id)iD;
- (void)sendMicrophoneGainSettingRequest:(char)request inputType:(unsigned __int8)type;
- (void)sendMicrophoneMuteRequest:(unsigned __int8)request;
- (void)sendQoSConfigRequest;
- (void)sendQoSConfigRequestForDevice:(id)device;
- (void)sendReceiverStartReadyRequest;
- (void)sendReceiverStartReadyRequestForDevice:(id)device;
- (void)sendReceiverStopReadyRequest;
- (void)sendReceiverStopReadyRequestForDevice:(id)device;
- (void)sendRelativeVolumeDownRequest;
- (void)sendRelativeVolumeUpRequest;
- (void)sendReleaseRequest;
- (void)sendReleaseRequestForDevice:(id)device;
- (void)sendUpdateMetadataRequest;
- (void)sendUpdateMetadataRequestForDevice:(id)device;
- (void)sendVolumeMuteRequest:(BOOL)request;
- (void)sendVolumeOffsetRequest:(signed __int16)request audioLocation:(unsigned int)location;
- (void)sessionCompleteHandler:(id)handler withAttributes:(id)attributes;
- (void)setSIRK:(id)k withIdentifier:(id)identifier;
- (void)setTargetLatency:(unsigned __int8)latency;
- (void)setUnicastAudioConfig:(id)config;
- (void)setupCIG:(id)g;
- (void)setupCIGForPublishedHALDevice;
- (void)startProcedureTimeoutTimer;
- (void)tearDownCIG;
@end

@implementation ClientCommonAudioProfile

- (ClientCommonAudioProfile)init
{
  v29.receiver = self;
  v29.super_class = ClientCommonAudioProfile;
  v2 = [(ClientCommonAudioProfile *)&v29 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_setSize = 0;
    *&v2->_cigID = -256;
    v4 = objc_alloc_init(NSMutableSet);
    resolvedPeripherals = v3->_resolvedPeripherals;
    v3->_resolvedPeripherals = v4;

    v6 = objc_alloc_init(NSMutableDictionary);
    coordinatedSet = v3->_coordinatedSet;
    v3->_coordinatedSet = v6;

    v8 = objc_alloc_init(NSMutableData);
    setIRK = v3->_setIRK;
    v3->_setIRK = v8;

    v10 = +[NSUUID UUID];
    sessionID = v3->_sessionID;
    v3->_sessionID = v10;

    v12 = objc_alloc_init(NSMapTable);
    unicastServerAudioConfig = v3->_unicastServerAudioConfig;
    v3->_unicastServerAudioConfig = v12;

    v14 = objc_alloc_init(NSMutableArray);
    audioConfigToMatch = v3->_audioConfigToMatch;
    v3->_audioConfigToMatch = v14;

    *&v3->_targetLatency = 515;
    v16 = [[LeCigParams alloc] initWithCIGID:255];
    v17 = [[ConnectedIsoGroup alloc] initWithCIGParams:v16];
    connIsoGroup = v3->_connIsoGroup;
    v3->_connIsoGroup = v17;

    currentCAPProcedure = v3->_currentCAPProcedure;
    v3->_currentCAPProcedure = 0;

    orderedSet = v3->_orderedSet;
    v3->_orderedSet = 0;

    v21 = objc_alloc_init(NSMutableArray);
    streamCAPProcQueue = v3->_streamCAPProcQueue;
    v3->_streamCAPProcQueue = v21;

    v23 = objc_alloc_init(NSMutableArray);
    renderingCAPProcQueue = v3->_renderingCAPProcQueue;
    v3->_renderingCAPProcQueue = v23;

    v25 = objc_alloc_init(NSMutableArray);
    capturingCAPProcQueue = v3->_capturingCAPProcQueue;
    v3->_capturingCAPProcQueue = v25;

    v3->_useCSIPOrderedAccessWithCaptureRendering = 1;
    *&v3->_isHALPublished = 0;
    *&v3->_outputAudioConfigIdx = -1;
    v3->_procedureTimeout = 10;
    procedureTimeoutTimer = v3->_procedureTimeoutTimer;
    v3->_procedureTimeoutTimer = 0;

    v3->_procedureStatus = 0;
  }

  return v3;
}

- (void)startProcedureTimeoutTimer
{
  if ([(ClientCommonAudioProfile *)self procedureTimeout])
  {
    [(ClientCommonAudioProfile *)self setProcedureStatus:0];
    procedureTimeoutTimer = [(ClientCommonAudioProfile *)self procedureTimeoutTimer];

    if (procedureTimeoutTimer)
    {
      procedureTimeoutTimer2 = [(ClientCommonAudioProfile *)self procedureTimeoutTimer];
      dispatch_suspend(procedureTimeoutTimer2);
    }

    else
    {
      v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
      [(ClientCommonAudioProfile *)self setProcedureTimeoutTimer:v6];

      procedureTimeoutTimer3 = [(ClientCommonAudioProfile *)self procedureTimeoutTimer];
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10000E8B4;
      handler[3] = &unk_100094CB8;
      handler[4] = self;
      dispatch_source_set_cancel_handler(procedureTimeoutTimer3, handler);

      procedureTimeoutTimer2 = [(ClientCommonAudioProfile *)self procedureTimeoutTimer];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10000E8C0;
      v15[3] = &unk_100094CB8;
      v15[4] = self;
      dispatch_source_set_event_handler(procedureTimeoutTimer2, v15);
    }

    procedureTimeoutTimer4 = [(ClientCommonAudioProfile *)self procedureTimeoutTimer];

    if (procedureTimeoutTimer4)
    {
      v9 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        procedureTimeout = [(ClientCommonAudioProfile *)self procedureTimeout];
        *buf = 67109120;
        v18 = procedureTimeout;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Starting procedureTimeout timer of %d seconds", buf, 8u);
      }

      procedureTimeoutTimer5 = [(ClientCommonAudioProfile *)self procedureTimeoutTimer];
      v13 = dispatch_time(0, 1000000000 * [(ClientCommonAudioProfile *)self procedureTimeout]);
      dispatch_source_set_timer(procedureTimeoutTimer5, v13, 0xFFFFFFFFFFFFFFFFLL, 0);

      procedureTimeoutTimer6 = [(ClientCommonAudioProfile *)self procedureTimeoutTimer];
      dispatch_resume(procedureTimeoutTimer6);
    }
  }

  else
  {
    v5 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "procedureTimeout timer is disabled", buf, 2u);
    }
  }
}

- (void)cancelProcedureTimeoutTimer
{
  procedureTimeoutTimer = [(ClientCommonAudioProfile *)self procedureTimeoutTimer];

  if (procedureTimeoutTimer)
  {
    procedureTimeoutTimer2 = [(ClientCommonAudioProfile *)self procedureTimeoutTimer];
    dispatch_source_cancel(procedureTimeoutTimer2);
  }
}

- (void)procedureTimeoutTimerFired
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CAP procedureTimeout timer fired", buf, 2u);
  }

  currentCAPProcedure = [(ClientCommonAudioProfile *)self currentCAPProcedure];

  if (currentCAPProcedure)
  {
    [(ClientCommonAudioProfile *)self setProcedureStatus:15];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000EA84;
    block[3] = &unk_100094CB8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  else if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
  {
    sub_10005BB00();
  }
}

- (void)resolvePeripheral:(id)peripheral withAdv:(id)adv
{
  peripheralCopy = peripheral;
  advCopy = adv;
  v8 = advCopy;
  if (!advCopy)
  {
    goto LABEL_4;
  }

  resolvedPeripherals = [advCopy objectForKeyedSubscript:CBCoordinatedSetRSIAdv];
  if (![resolvedPeripherals length])
  {
    v13 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "No RSI available to be resolved with Sirk", &v14, 2u);
    }

    goto LABEL_7;
  }

  setIRK = [(ClientCommonAudioProfile *)self setIRK];
  v11 = [CSISInterface ResolveRSIWithSirk:resolvedPeripherals withSirk:setIRK];

  if (v11)
  {
LABEL_4:
    v12 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = peripheralCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Found resolved %@", &v14, 0xCu);
    }

    resolvedPeripherals = [(ClientCommonAudioProfile *)self resolvedPeripherals];
    [resolvedPeripherals addObject:peripheralCopy];
LABEL_7:
  }
}

- (BOOL)isPeripheralResolvable:(id)resolvable
{
  resolvableCopy = resolvable;
  resolvedPeripherals = [(ClientCommonAudioProfile *)self resolvedPeripherals];
  v6 = [resolvedPeripherals containsObject:resolvableCopy];

  return v6;
}

- (BOOL)isPeripheralConnected:(id)connected
{
  connectedCopy = connected;
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  v6 = [coordinatedSet objectForKey:connectedCopy];

  return v6 != 0;
}

- (void)addAcceptorToSet:(id)set
{
  setCopy = set;
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  peripheral = [setCopy peripheral];
  identifier = [peripheral identifier];
  v8 = [coordinatedSet objectForKey:identifier];

  if (!v8)
  {
    [setCopy setParentCap:self];
    objc_initWeak(&location, setCopy);
    [setCopy setSirkDiscoveryHandler:&stru_100094CF8];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10000F320;
    v36[3] = &unk_100094D20;
    v36[4] = self;
    [setCopy setIsoDataPathManagementHandler:v36];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10000F3B4;
    v35[3] = &unk_100094D48;
    v35[4] = self;
    [setCopy setCisDisconnectHandler:v35];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10000F3C4;
    v33[3] = &unk_100094D98;
    v33[4] = self;
    objc_copyWeak(&v34, &location);
    [setCopy setControlPointHandler:v33];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10000F568;
    v31[3] = &unk_100094DC0;
    v31[4] = self;
    objc_copyWeak(&v32, &location);
    [setCopy setAseUpdateHandler:v31];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10000FA38;
    v29[3] = &unk_100094DE8;
    v29[4] = self;
    objc_copyWeak(&v30, &location);
    [setCopy setLockStateHandler:v29];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10000FC90;
    v27[3] = &unk_100094E10;
    v27[4] = self;
    objc_copyWeak(&v28, &location);
    [setCopy setCaptureHandler:v27];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10001083C;
    v25[3] = &unk_100094E38;
    objc_copyWeak(&v26, &location);
    v25[4] = self;
    [setCopy setRenderingHandler:v25];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100011154;
    v24[3] = &unk_100094E60;
    v24[4] = self;
    [setCopy setPublishDeviceHandler:v24];
    coordinatedSet2 = [(ClientCommonAudioProfile *)self coordinatedSet];
    peripheral2 = [setCopy peripheral];
    identifier2 = [peripheral2 identifier];
    [coordinatedSet2 setObject:setCopy forKey:identifier2];

    v12 = qword_1000A9FE0;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      peripheral3 = [setCopy peripheral];
      identifier3 = [peripheral3 identifier];
      *buf = 138412290;
      v39 = identifier3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Acceptor %@ added to Coordinated Set", buf, 0xCu);
    }

    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_1000111E8;
    v21 = &unk_100094E88;
    selfCopy = self;
    objc_copyWeak(&v23, &location);
    [setCopy setSessionCompleteHandler:&v18];
    v15 = [LEAudioXPCListener instance:v18];
    peripheral4 = [setCopy peripheral];
    identifier4 = [peripheral4 identifier];
    [v15 addDevice:identifier4 toSession:self->_sessionID];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&v30);
    objc_destroyWeak(&v32);
    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }
}

- (void)peripheralDisconnected:(id)disconnected
{
  disconnectedCopy = disconnected;
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  identifier = [disconnectedCopy identifier];
  v7 = [coordinatedSet objectForKeyedSubscript:identifier];

  if (v7)
  {
    v8 = +[LEAudioXPCListener instance];
    identifier2 = [disconnectedCopy identifier];
    sessionID = [(ClientCommonAudioProfile *)self sessionID];
    [v8 removeDevice:identifier2 fromSession:sessionID];

    coordinatedSet2 = [(ClientCommonAudioProfile *)self coordinatedSet];
    if ([coordinatedSet2 count] == 1)
    {
      connIsoGroup = [(ClientCommonAudioProfile *)self connIsoGroup];
      numEstablishedCIS = [connIsoGroup numEstablishedCIS];

      if (!numEstablishedCIS)
      {
        [(ClientCommonAudioProfile *)self tearDownCIG];
      }
    }

    else
    {
    }

    coordinatedSet3 = [(ClientCommonAudioProfile *)self coordinatedSet];
    identifier3 = [disconnectedCopy identifier];
    [coordinatedSet3 removeObjectForKey:identifier3];

    v17 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      identifier4 = [disconnectedCopy identifier];
      v20 = 138412290;
      v21 = identifier4;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Acceptor %@ removed from Coordinated Set", &v20, 0xCu);
    }
  }

  else
  {
    v14 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005BE10(v14);
    }
  }
}

- (BOOL)sendRelativeVolumeUpRequest:(id)request
{
  requestCopy = request;
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  v6 = [coordinatedSet objectForKey:requestCopy];

  if (v6)
  {
    setRelativeVolumeUp = [v6 setRelativeVolumeUp];
  }

  else
  {
    setRelativeVolumeUp = 0;
  }

  return setRelativeVolumeUp;
}

- (BOOL)sendRelativeVolumeDownRequest:(id)request
{
  requestCopy = request;
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  v6 = [coordinatedSet objectForKey:requestCopy];

  if (v6)
  {
    setRelativeVolumeDown = [v6 setRelativeVolumeDown];
  }

  else
  {
    setRelativeVolumeDown = 0;
  }

  return setRelativeVolumeDown;
}

- (void)sendCodecConfigRequest
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  unicastServerAudioConfig = [(ClientCommonAudioProfile *)self unicastServerAudioConfig];
  v4 = [unicastServerAudioConfig countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(unicastServerAudioConfig);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        unicastServerAudioConfig2 = [(ClientCommonAudioProfile *)self unicastServerAudioConfig];
        v10 = [unicastServerAudioConfig2 objectForKey:v8];

        [v10 sendCodecConfigRequestWithAudioConfig:v8];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [unicastServerAudioConfig countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)sendQoSConfigRequestForDevice:(id)device
{
  deviceCopy = device;
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  v7 = [coordinatedSet objectForKey:deviceCopy];

  v6 = v7;
  if (v7)
  {
    [v7 sendQoSConfigRequest];
    v6 = v7;
  }
}

- (void)sendEnableRequestForDevice:(id)device withSnkAseID:(id)d withSrcAseID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  deviceCopy = device;
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  v11 = [coordinatedSet objectForKey:deviceCopy];

  if (v11)
  {
    [v11 sendEnableRequestWithSnkAseID:dCopy WithSrcAseID:iDCopy];
  }
}

- (void)sendReceiverStartReadyRequestForDevice:(id)device
{
  deviceCopy = device;
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  v7 = [coordinatedSet objectForKey:deviceCopy];

  v6 = v7;
  if (v7)
  {
    [v7 sendReceiverStartReadyRequest];
    v6 = v7;
  }
}

- (void)sendReceiverStopReadyRequestForDevice:(id)device
{
  deviceCopy = device;
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  v7 = [coordinatedSet objectForKey:deviceCopy];

  v6 = v7;
  if (v7)
  {
    [v7 sendReceiverStopReadyRequest];
    v6 = v7;
  }
}

- (unsigned)updateMetadataForDevice:(id)device
{
  deviceCopy = device;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = objc_alloc_init(NSMutableArray);
  v7 = objc_alloc_init(NSMutableArray);
  v8 = objc_alloc_init(NSMutableArray);
  [(ClientCommonAudioProfile *)self getAudioConfigList];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v46 = 0u;
  v9 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v44;
    v32 = *v44;
    v33 = deviceCopy;
    v37 = v8;
    do
    {
      v12 = 0;
      v34 = v10;
      do
      {
        if (*v44 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v43 + 1) + 8 * v12);
        matchedAcceptor = [v13 matchedAcceptor];

        if (matchedAcceptor == deviceCopy)
        {
          v36 = v12;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          audioChanConfigArray = [v13 audioChanConfigArray];
          v15 = [audioChanConfigArray countByEnumeratingWithState:&v39 objects:v47 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v40;
            do
            {
              for (i = 0; i != v16; i = i + 1)
              {
                if (*v40 != v17)
                {
                  objc_enumerationMutation(audioChanConfigArray);
                }

                v19 = *(*(&v39 + 1) + 8 * i);
                if (([v19 excludeFromProcedure] & 1) == 0)
                {
                  v20 = objc_opt_new();
                  [v20 setContextType:{objc_msgSend(v19, "contextTypes")}];
                  ccid = [v19 ccid];
                  v22 = v7;
                  v23 = v6;
                  v24 = v5;
                  v25 = [ccid mutableCopy];
                  [v20 setCcidList:v25];

                  isSink = [v19 isSink];
                  v5 = v24;
                  v6 = v23;
                  v7 = v22;
                  v27 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v19 aseID]);
                  if (isSink)
                  {
                    v28 = v5;
                  }

                  else
                  {
                    v28 = v6;
                  }

                  if (isSink)
                  {
                    v29 = v22;
                  }

                  else
                  {
                    v29 = v37;
                  }

                  [v28 addObject:v27];

                  [v29 addObject:v20];
                }
              }

              v16 = [audioChanConfigArray countByEnumeratingWithState:&v39 objects:v47 count:16];
            }

            while (v16);
          }

          v11 = v32;
          deviceCopy = v33;
          v12 = v36;
          v8 = v37;
          v10 = v34;
        }

        v12 = v12 + 1;
      }

      while (v12 != v10);
      v10 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v10);
  }

  if ([v5 count] || objc_msgSend(v6, "count"))
  {
    v30 = [deviceCopy sendUpdateMetadataRequestForASE:v5 withSourceAseID:v6 withSinkContextType:v7 withSourceContextType:v8];
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (void)sendUpdateMetadataRequestForDevice:(id)device
{
  deviceCopy = device;
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  v7 = [coordinatedSet objectForKey:deviceCopy];

  v6 = v7;
  if (v7)
  {
    [(ClientCommonAudioProfile *)self updateMetadataForDevice:v7];
    v6 = v7;
  }
}

- (void)sendReleaseRequestForDevice:(id)device
{
  deviceCopy = device;
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  v7 = [coordinatedSet objectForKey:deviceCopy];

  v6 = v7;
  if (v7)
  {
    [v7 sendReleaseRequest];
    v6 = v7;
  }
}

- (void)sendDisableRequestForDevice:(id)device
{
  deviceCopy = device;
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  v7 = [coordinatedSet objectForKey:deviceCopy];

  v6 = v7;
  if (v7)
  {
    [v7 sendDisableRequest];
    v6 = v7;
  }
}

- (void)clearAudioConfigList
{
  audioConfigToMatch = [(ClientCommonAudioProfile *)self audioConfigToMatch];
  [audioConfigToMatch removeAllObjects];

  unicastServerAudioConfig = [(ClientCommonAudioProfile *)self unicastServerAudioConfig];
  [unicastServerAudioConfig removeAllObjects];

  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  allValues = [coordinatedSet allValues];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = allValues;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11) setIsMatched:{0, v12}];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)setUnicastAudioConfig:(id)config
{
  configCopy = config;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v8[0] = 67109376;
    v8[1] = [configCopy sinkAudioLocMask];
    v9 = 1024;
    sourceAudioLocMask = [configCopy sourceAudioLocMask];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting unicast audio config - sinkAudioLocMask: 0x%02x, sourceAudioLocMask: 0x%02x", v8, 0xEu);
  }

  audioConfigToMatch = [(ClientCommonAudioProfile *)self audioConfigToMatch];
  [audioConfigToMatch addObject:configCopy];
}

- (id)getAudioConfigList
{
  audioConfigToMatch = [(ClientCommonAudioProfile *)self audioConfigToMatch];
  v3 = [audioConfigToMatch copy];

  return v3;
}

- (unsigned)matchConnectedDevices:(id)devices
{
  devicesCopy = devices;
  selfCopy = self;
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  allValues = [coordinatedSet allValues];

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v7 = allValues;
  v8 = [v7 countByEnumeratingWithState:&v62 objects:v69 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v63;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v63 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v62 + 1) + 8 * i);
        unicastServerAudioConfig = [(ClientCommonAudioProfile *)selfCopy unicastServerAudioConfig];
        v14 = [unicastServerAudioConfig objectForKey:devicesCopy];

        if (v14 == v12)
        {
          v42 = qword_1000A9FE0;
          if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
          {
            v43 = v42;
            peripheral = [v12 peripheral];
            identifier = [peripheral identifier];
            uUIDString = [identifier UUIDString];
            *buf = 138412290;
            v68 = uUIDString;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "audioConfig is already coupled with Acceptor: %@", buf, 0xCu);
          }

          LOBYTE(v17) = 0;
          goto LABEL_42;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v62 objects:v69 count:16];
    }

    while (v9);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v54 = v7;
  obj = v7;
  v15 = [obj countByEnumeratingWithState:&v58 objects:v66 count:16];
  if (!v15)
  {
LABEL_38:
    LOBYTE(v17) = 0;
    goto LABEL_39;
  }

  v16 = v15;
  LOBYTE(v17) = 0;
  v18 = *v59;
  v19 = &qword_1000A9FE0;
  while (2)
  {
    for (j = 0; j != v16; j = j + 1)
    {
      if (*v59 != v18)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v58 + 1) + 8 * j);
      v22 = *v19;
      if (os_log_type_enabled(*v19, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v22;
        [v21 peripheral];
        v24 = v57 = v21;
        identifier2 = [v24 identifier];
        [identifier2 UUIDString];
        v26 = v16;
        v27 = v19;
        v28 = v18;
        v30 = v29 = devicesCopy;
        *buf = 138412290;
        v68 = v30;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "matchConnectedDevices for Acceptor: %@", buf, 0xCu);

        devicesCopy = v29;
        v18 = v28;
        v19 = v27;
        v16 = v26;

        v21 = v57;
      }

      if ([v21 isMatched])
      {
        v31 = *v19;
        if (os_log_type_enabled(*v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Acceptor is matched move on", buf, 2u);
        }
      }

      else
      {
        v32 = [v21 matchContextTypeAvailabilityForConfig:devicesCopy];
        if (v32)
        {
          v17 = v32;
          v33 = *v19;
          if (!os_log_type_enabled(*v19, OS_LOG_TYPE_DEFAULT))
          {
            continue;
          }

          v34 = v33;
          v35 = [ClientCommonAudioProfile statusToString:v17];
          *buf = 138412290;
          v68 = v35;
          v36 = v34;
          v37 = "Acceptor match fail for matchContextTypeAvailabilityForConfig %@";
          goto LABEL_28;
        }

        v38 = [v21 supportsCodecConfigurationForConfig:devicesCopy];
        if (v38)
        {
          v17 = v38;
          v39 = *v19;
          if (!os_log_type_enabled(*v19, OS_LOG_TYPE_DEFAULT))
          {
            continue;
          }

          v34 = v39;
          v35 = [ClientCommonAudioProfile statusToString:v17];
          *buf = 138412290;
          v68 = v35;
          v36 = v34;
          v37 = "Acceptor match fail for supportsCodecConfigurationForConfig %@";
          goto LABEL_28;
        }

        v17 = [v21 supportsAudioLocationForConfig:devicesCopy];
        v40 = *v19;
        v41 = os_log_type_enabled(*v19, OS_LOG_TYPE_DEFAULT);
        if (!v17)
        {
          if (v41)
          {
            v47 = v40;
            peripheral2 = [v21 peripheral];
            identifier3 = [peripheral2 identifier];
            uUIDString2 = [identifier3 UUIDString];
            *buf = 138412290;
            v68 = uUIDString2;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Successfully matched device %@", buf, 0xCu);
          }

          unicastServerAudioConfig2 = [(ClientCommonAudioProfile *)selfCopy unicastServerAudioConfig];
          [unicastServerAudioConfig2 setObject:v21 forKey:devicesCopy];

          [v21 setIsMatched:1];
          [devicesCopy setMatchedAcceptor:v21];
          goto LABEL_38;
        }

        if (v41)
        {
          v34 = v40;
          v35 = [ClientCommonAudioProfile statusToString:v17];
          *buf = 138412290;
          v68 = v35;
          v36 = v34;
          v37 = "Acceptor match fail for supportsAudioLocationForConfig %@";
LABEL_28:
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, v37, buf, 0xCu);

          continue;
        }
      }
    }

    v16 = [obj countByEnumeratingWithState:&v58 objects:v66 count:16];
    if (v16)
    {
      continue;
    }

    break;
  }

LABEL_39:

  v52 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
  {
    sub_10005BEA8(v52);
  }

  v7 = v54;
LABEL_42:

  return v17;
}

- (void)setTargetLatency:(unsigned __int8)latency
{
  self->_targetLatency = latency;
  if ([(ClientCommonAudioProfile *)self targetLatency]== 1)
  {
    v4 = &unk_1000700B0;
  }

  else
  {
    if ([(ClientCommonAudioProfile *)self targetLatency]!= 3)
    {
      return;
    }

    v4 = &unk_1000701F0;
  }

  qword_1000A9FF8 = v4;
}

- (unsigned)getAudioConfigIndex:(BOOL)index
{
  if (index)
  {
    return [(ClientCommonAudioProfile *)self inputAudioConfigIdx];
  }

  else
  {
    return [(ClientCommonAudioProfile *)self outputAudioConfigIdx];
  }
}

- (unsigned)calculateCoordinatedSetSize:(unsigned __int8)size
{
  sizeCopy = size;
  getSetSize = [(ClientCommonAudioProfile *)self getSetSize];
  v6 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 67109376;
    v19 = getSetSize;
    v20 = 1024;
    v21 = sizeCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "coordinatedSetSize: %u, numConnectedDevices: %u", &v18, 0xEu);
  }

  if (!getSetSize)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
      allValues = [coordinatedSet allValues];
      firstObject = [allValues firstObject];

      coordinatedSet2 = [(ClientCommonAudioProfile *)self coordinatedSet];
      v11 = [coordinatedSet2 objectForKeyedSubscript:firstObject];

      hasInterface = [v11 hasInterface];
      LOBYTE(allValues) = [hasInterface binauralHearingAid];

      if (allValues)
      {
        sizeCopy = 2;
      }

      else
      {
        hasInterface2 = [v11 hasInterface];
        if ([hasInterface2 monauralHearingAid])
        {

          sizeCopy = 1;
        }

        else
        {
          hasInterface3 = [v11 hasInterface];
          bandedHearingAid = [hasInterface3 bandedHearingAid];

          if (bandedHearingAid)
          {
            sizeCopy = 1;
          }
        }
      }
    }

    v16 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 67109120;
      v19 = sizeCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Calculated coordinatedSetSize %u", &v18, 8u);
    }

    LOBYTE(getSetSize) = sizeCopy;
  }

  return getSetSize;
}

- (unsigned)translatePhyMask:(unsigned __int8)mask
{
  if ((mask & 4) != 0)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  if (mask)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if ((mask & 2) != 0)
  {
    return 2;
  }

  else
  {
    return v4;
  }
}

- (void)joinCIG
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *buf = 67109120;
    cigToJoin = [(ClientCommonAudioProfile *)self cigToJoin];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Attempting to join CIG ID %u ", buf, 8u);
  }

  connIsoGroup = [(ClientCommonAudioProfile *)self connIsoGroup];
  cigParams = [connIsoGroup cigParams];
  if ([cigParams cigID] == 255)
  {

    goto LABEL_10;
  }

  connIsoGroup2 = [(ClientCommonAudioProfile *)self connIsoGroup];
  cigParams2 = [connIsoGroup2 cigParams];
  cigID = [cigParams2 cigID];
  cigToJoin2 = [(ClientCommonAudioProfile *)self cigToJoin];

  if (cigID != cigToJoin2)
  {
LABEL_10:
    v19 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      cigToJoin3 = [(ClientCommonAudioProfile *)self cigToJoin];
      connIsoGroup3 = [(ClientCommonAudioProfile *)self connIsoGroup];
      cigParams3 = [connIsoGroup3 cigParams];
      cigID2 = [cigParams3 cigID];
      *buf = 67109376;
      cigToJoin = cigToJoin3;
      v55 = 1024;
      LODWORD(v56) = cigID2;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Join CIG ID %u does not match active CIG ID %u", buf, 0xEu);
    }

    v18 = 21;
    goto LABEL_13;
  }

  connIsoGroup4 = [(ClientCommonAudioProfile *)self connIsoGroup];
  allCISEstablished = [connIsoGroup4 allCISEstablished];

  if (allCISEstablished)
  {
    v13 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      connIsoGroup5 = [(ClientCommonAudioProfile *)self connIsoGroup];
      cigParams4 = [connIsoGroup5 cigParams];
      cigID3 = [cigParams4 cigID];
      *buf = 67109120;
      cigToJoin = cigID3;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "All CISes in CIG ID %u already established", buf, 8u);
    }

    v18 = 22;
LABEL_13:
    [(ClientCommonAudioProfile *)self setProcedureStatus:v18];
    v25 = 14;
    goto LABEL_14;
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  orderedSet = [(ClientCommonAudioProfile *)self orderedSet];
  v28 = [orderedSet countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (!v28)
  {
    goto LABEL_25;
  }

  v29 = v28;
  v30 = *v50;
  while (2)
  {
    v31 = 0;
    do
    {
      if (*v50 != v30)
      {
        objc_enumerationMutation(orderedSet);
      }

      v32 = *(*(&v49 + 1) + 8 * v31);
      connIsoGroup6 = [(ClientCommonAudioProfile *)self connIsoGroup];
      peripheral = [v32 peripheral];
      identifier = [peripheral identifier];
      v36 = [connIsoGroup6 getCISwithDeviceID:identifier];

      if (!v36)
      {
        connIsoGroup7 = [(ClientCommonAudioProfile *)self connIsoGroup];
        v36 = [connIsoGroup7 getCISwithDeviceID:0];

        if (v36)
        {
          if ([(ClientCommonAudioProfile *)self validateQoSParamsForAcceptor:v32 withCIS:v36])
          {
            goto LABEL_23;
          }

          v43 = qword_1000A9FE0;
          if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
          {
            v44 = v43;
            cigToJoin4 = [(ClientCommonAudioProfile *)self cigToJoin];
            peripheral2 = [v32 peripheral];
            identifier2 = [peripheral2 identifier];
            *buf = 67109378;
            cigToJoin = cigToJoin4;
            v55 = 2112;
            v56 = identifier2;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "CIS params in CIG ID %u didn't match for %@", buf, 0x12u);
          }

          v18 = 24;
        }

        else
        {
          v38 = qword_1000A9FE0;
          if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
          {
            v39 = v38;
            cigToJoin5 = [(ClientCommonAudioProfile *)self cigToJoin];
            peripheral3 = [v32 peripheral];
            identifier3 = [peripheral3 identifier];
            *buf = 67109378;
            cigToJoin = cigToJoin5;
            v55 = 2112;
            v56 = identifier3;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "No available CIS found in CIG ID %u for %@", buf, 0x12u);
          }

          v18 = 23;
        }

        goto LABEL_13;
      }

LABEL_23:

      v31 = v31 + 1;
    }

    while (v29 != v31);
    v29 = [orderedSet countByEnumeratingWithState:&v49 objects:v57 count:16];
    if (v29)
    {
      continue;
    }

    break;
  }

LABEL_25:

  v25 = 13;
LABEL_14:
  currentCAPProcedure = [(ClientCommonAudioProfile *)self currentCAPProcedure];
  [currentCAPProcedure setNextEvent:v25];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013214;
  block[3] = &unk_100094CB8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (BOOL)validateQoSParamsForAcceptor:(id)acceptor withCIS:(id)s
{
  acceptorCopy = acceptor;
  sCopy = s;
  getAudioStreamEndpoints = [acceptorCopy getAudioStreamEndpoints];
  if ([getAudioStreamEndpoints count])
  {
    selfCopy = self;
    v9 = 0;
    v67 = 0;
    v10 = 0;
    v68 = sCopy;
    while (1)
    {
      v11 = [getAudioStreamEndpoints objectAtIndexedSubscript:v9];
      if (([v11 inUse] & 1) == 0)
      {
        goto LABEL_6;
      }

      v12 = [getAudioStreamEndpoints objectAtIndexedSubscript:v9];
      state = [v12 state];

      if (state != 1)
      {
        goto LABEL_7;
      }

      v11 = [getAudioStreamEndpoints objectAtIndexedSubscript:v9];
      if ([v11 cigID] != 255)
      {
LABEL_6:

        goto LABEL_7;
      }

      v14 = [getAudioStreamEndpoints objectAtIndexedSubscript:v9];
      cisID = [v14 cisID];

      if (cisID == 255)
      {
        break;
      }

LABEL_7:
      v9 = ++v10;
      if ([getAudioStreamEndpoints count] <= v10)
      {
        goto LABEL_42;
      }
    }

    v16 = [getAudioStreamEndpoints objectAtIndexedSubscript:v9];
    type = [v16 type];

    v18 = [getAudioStreamEndpoints objectAtIndexedSubscript:v9];
    if (type)
    {
      v19 = [(ClientCommonAudioProfile *)selfCopy matchPeripheralToCentralQosParams:v18 withCIS:sCopy];

      if (!v19)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v20 = [(ClientCommonAudioProfile *)selfCopy matchCentralToPeripheralQosParams:v18 withCIS:sCopy];

      if ((v20 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v21 = v10 + 1;
    if ([getAudioStreamEndpoints count] <= (v10 + 1))
    {
      goto LABEL_38;
    }

    v22 = (v10 + 1);
    LOBYTE(v23) = 1;
    while (1)
    {
      v24 = [getAudioStreamEndpoints objectAtIndexedSubscript:v22];
      if (([v24 inUse] & 1) == 0)
      {
        goto LABEL_19;
      }

      v25 = [getAudioStreamEndpoints objectAtIndexedSubscript:v22];
      state2 = [v25 state];

      if (state2 != 1)
      {
        goto LABEL_28;
      }

      v24 = [getAudioStreamEndpoints objectAtIndexedSubscript:v22];
      sCopy = v68;
      if ([v24 cigID] == 255)
      {
        v27 = [getAudioStreamEndpoints objectAtIndexedSubscript:v22];
        cisID2 = [v27 cisID];

        sCopy = v68;
        if (cisID2 == 255)
        {
          v29 = [getAudioStreamEndpoints objectAtIndexedSubscript:v9];
          type2 = [v29 type];
          v31 = [getAudioStreamEndpoints objectAtIndexedSubscript:v22];
          if (type2 == [v31 type])
          {

            LOBYTE(v23) = 0;
          }

          else
          {
            v65 = acceptorCopy;
            v32 = [getAudioStreamEndpoints objectAtIndexedSubscript:v9];
            v33 = [getAudioStreamEndpoints objectAtIndexedSubscript:v22];
            v23 = [v32 matchPrefferedQoSParamsForASE:v33];

            if (v23)
            {
              v34 = [getAudioStreamEndpoints objectAtIndexedSubscript:v22];
              type3 = [v34 type];

              v36 = [getAudioStreamEndpoints objectAtIndexedSubscript:v22];
              sCopy = v68;
              if (type3)
              {
                v37 = selfCopy;
                v23 = [(ClientCommonAudioProfile *)selfCopy matchPeripheralToCentralQosParams:v36 withCIS:v68];

                if (!v23)
                {
                  goto LABEL_36;
                }
              }

              else
              {
                v37 = selfCopy;
                v38 = [(ClientCommonAudioProfile *)selfCopy matchCentralToPeripheralQosParams:v36 withCIS:v68];

                if ((v38 & 1) == 0)
                {
                  LOBYTE(v23) = 0;
LABEL_36:
                  acceptorCopy = v65;
                  goto LABEL_29;
                }
              }

              cigID = [(ClientCommonAudioProfile *)v37 cigID];
              v40 = [getAudioStreamEndpoints objectAtIndexedSubscript:v22];
              [v40 setCigID:cigID];

              v41 = [getAudioStreamEndpoints objectAtIndexedSubscript:v22];
              [v68 setASEForOppositeDirection:v41];

              v42 = qword_1000A9FE0;
              if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
              {
                v43 = v42;
                v44 = [getAudioStreamEndpoints objectAtIndexedSubscript:v22];
                aSE_ID = [v44 ASE_ID];
                v46 = [getAudioStreamEndpoints objectAtIndexedSubscript:v22];
                cigID2 = [v46 cigID];
                v48 = [getAudioStreamEndpoints objectAtIndexedSubscript:v22];
                cisID3 = [v48 cisID];
                *buf = 67109632;
                v70 = aSE_ID;
                v71 = 1024;
                v72 = cigID2;
                sCopy = v68;
                v73 = 1024;
                v74 = cisID3;
                _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "ASE ID %u coupled CIG ID %u and CIS ID %u (bidirectional CIS)", buf, 0x14u);
              }

              LOBYTE(v23) = 1;
              goto LABEL_36;
            }

            acceptorCopy = v65;
          }

LABEL_28:
          sCopy = v68;
        }
      }

      else
      {
LABEL_19:
      }

LABEL_29:
      v22 = ++v21;
      if ([getAudioStreamEndpoints count] <= v21)
      {
        if (v23)
        {
LABEL_38:
          cigID3 = [(ClientCommonAudioProfile *)selfCopy cigID];
          [getAudioStreamEndpoints objectAtIndexedSubscript:v9];
          v52 = v51 = acceptorCopy;
          [v52 setCigID:cigID3];

          v53 = [getAudioStreamEndpoints objectAtIndexedSubscript:v9];
          peripheral = [v51 peripheral];
          identifier = [peripheral identifier];
          [sCopy setASEForDirection:v53 forDevice:identifier];

          v56 = qword_1000A9FE0;
          if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
          {
            v57 = v56;
            v58 = [getAudioStreamEndpoints objectAtIndexedSubscript:v9];
            aSE_ID2 = [v58 ASE_ID];
            v60 = [getAudioStreamEndpoints objectAtIndexedSubscript:v9];
            cigID4 = [v60 cigID];
            v62 = [getAudioStreamEndpoints objectAtIndexedSubscript:v9];
            cisID4 = [v62 cisID];
            *buf = 67109632;
            v70 = aSE_ID2;
            v71 = 1024;
            v72 = cigID4;
            sCopy = v68;
            v73 = 1024;
            v74 = cisID4;
            _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "ASE ID %u coupled to CIG ID %u and CIS ID %u", buf, 0x14u);
          }

          v67 = 1;
          acceptorCopy = v51;
        }

        goto LABEL_7;
      }
    }
  }

  v67 = 0;
LABEL_42:

  return v67 & 1;
}

- (BOOL)matchCentralToPeripheralQosParams:(id)params withCIS:(id)s
{
  paramsCopy = params;
  sCopy = s;
  connIsoGroup = [(ClientCommonAudioProfile *)self connIsoGroup];
  cigParams = [connIsoGroup cigParams];
  sduIntervalCToP = [cigParams sduIntervalCToP];
  if (sduIntervalCToP != [paramsCopy clientSduInterval])
  {
    goto LABEL_9;
  }

  connIsoGroup2 = [(ClientCommonAudioProfile *)self connIsoGroup];
  cigParams2 = [connIsoGroup2 cigParams];
  framing = [cigParams2 framing];
  if (framing != [paramsCopy clientFraming])
  {

LABEL_9:
    goto LABEL_10;
  }

  connIsoGroup3 = [(ClientCommonAudioProfile *)self connIsoGroup];
  cigParams3 = [connIsoGroup3 cigParams];
  maxTransLatencyCToP = [cigParams3 maxTransLatencyCToP];
  maxTransportLatency = [paramsCopy maxTransportLatency];

  if (maxTransLatencyCToP > maxTransportLatency)
  {
LABEL_10:
    v26 = qword_1000A9FE0;
    if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
LABEL_13:
      v25 = 0;
      goto LABEL_14;
    }

    v27 = v26;
    v31 = 67109888;
    aSE_ID = [paramsCopy ASE_ID];
    v33 = 1024;
    clientSduInterval = [paramsCopy clientSduInterval];
    v35 = 1024;
    clientFraming = [paramsCopy clientFraming];
    v37 = 1024;
    maxTransportLatency2 = [paramsCopy maxTransportLatency];
    v28 = "CIG params don't match for Sink ASE ID %u (SDU Int %u, Framing %d, Max Trans Lat %u)";
LABEL_12:
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v28, &v31, 0x1Au);

    goto LABEL_13;
  }

  cisParams = [sCopy cisParams];
  maxSduCToP = [cisParams maxSduCToP];
  if (maxSduCToP != [paramsCopy clientMaxSdu])
  {
LABEL_16:

    goto LABEL_17;
  }

  cisParams2 = [sCopy cisParams];
  rtnCToP = [cisParams2 rtnCToP];
  if (rtnCToP != [paramsCopy clientRetransmissionNumber])
  {

    goto LABEL_16;
  }

  cisParams3 = [sCopy cisParams];
  phyCToP = [cisParams3 phyCToP];
  preferredPhy = [paramsCopy preferredPhy];

  if (phyCToP != preferredPhy)
  {
LABEL_17:
    v30 = qword_1000A9FE0;
    if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v27 = v30;
    v31 = 67109888;
    aSE_ID = [paramsCopy ASE_ID];
    v33 = 1024;
    clientSduInterval = [paramsCopy clientMaxSdu];
    v35 = 1024;
    clientFraming = [paramsCopy clientRetransmissionNumber];
    v37 = 1024;
    maxTransportLatency2 = [paramsCopy preferredPhy];
    v28 = "CIS params don't match for Sink ASE ID %u (Max SDU %u, RTN %d, PHY %u)";
    goto LABEL_12;
  }

  v25 = 1;
LABEL_14:

  return v25;
}

- (BOOL)matchPeripheralToCentralQosParams:(id)params withCIS:(id)s
{
  paramsCopy = params;
  sCopy = s;
  connIsoGroup = [(ClientCommonAudioProfile *)self connIsoGroup];
  cigParams = [connIsoGroup cigParams];
  sduIntervalPToC = [cigParams sduIntervalPToC];
  if (sduIntervalPToC != [paramsCopy clientSduInterval])
  {
    goto LABEL_9;
  }

  connIsoGroup2 = [(ClientCommonAudioProfile *)self connIsoGroup];
  cigParams2 = [connIsoGroup2 cigParams];
  framing = [cigParams2 framing];
  if (framing != [paramsCopy clientFraming])
  {

LABEL_9:
    goto LABEL_10;
  }

  connIsoGroup3 = [(ClientCommonAudioProfile *)self connIsoGroup];
  cigParams3 = [connIsoGroup3 cigParams];
  maxTransLatencyPToC = [cigParams3 maxTransLatencyPToC];
  maxTransportLatency = [paramsCopy maxTransportLatency];

  if (maxTransLatencyPToC > maxTransportLatency)
  {
LABEL_10:
    v26 = qword_1000A9FE0;
    if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
LABEL_13:
      v25 = 0;
      goto LABEL_14;
    }

    v27 = v26;
    v31 = 67109888;
    aSE_ID = [paramsCopy ASE_ID];
    v33 = 1024;
    clientSduInterval = [paramsCopy clientSduInterval];
    v35 = 1024;
    clientFraming = [paramsCopy clientFraming];
    v37 = 1024;
    maxTransportLatency2 = [paramsCopy maxTransportLatency];
    v28 = "CIG params don't match for Source ASE ID %u (SDU Int %u, Framing %d, Max Trans Lat %u)";
LABEL_12:
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v28, &v31, 0x1Au);

    goto LABEL_13;
  }

  cisParams = [sCopy cisParams];
  maxSduPToC = [cisParams maxSduPToC];
  if (maxSduPToC != [paramsCopy clientMaxSdu])
  {
LABEL_16:

    goto LABEL_17;
  }

  cisParams2 = [sCopy cisParams];
  rtnPToC = [cisParams2 rtnPToC];
  if (rtnPToC != [paramsCopy clientRetransmissionNumber])
  {

    goto LABEL_16;
  }

  cisParams3 = [sCopy cisParams];
  phyPToC = [cisParams3 phyPToC];
  preferredPhy = [paramsCopy preferredPhy];

  if (phyPToC != preferredPhy)
  {
LABEL_17:
    v30 = qword_1000A9FE0;
    if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v27 = v30;
    v31 = 67109888;
    aSE_ID = [paramsCopy ASE_ID];
    v33 = 1024;
    clientSduInterval = [paramsCopy clientMaxSdu];
    v35 = 1024;
    clientFraming = [paramsCopy clientRetransmissionNumber];
    v37 = 1024;
    maxTransportLatency2 = [paramsCopy preferredPhy];
    v28 = "CIS params don't match for Source ASE ID %u (Max SDU %u, RTN %d, PHY %u)";
    goto LABEL_12;
  }

  v25 = 1;
LABEL_14:

  return v25;
}

- (void)createCIG
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *buf = 67109120;
    LODWORD(v26) = [(ClientCommonAudioProfile *)self cigID];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Attempting to create CIG ID %u", buf, 8u);
  }

  connIsoGroup = [(ClientCommonAudioProfile *)self connIsoGroup];
  cigParams = [connIsoGroup cigParams];
  if ([cigParams cigID] == 255)
  {
  }

  else
  {
    connIsoGroup2 = [(ClientCommonAudioProfile *)self connIsoGroup];
    cigParams2 = [connIsoGroup2 cigParams];
    cigID = [cigParams2 cigID];
    cigID2 = [(ClientCommonAudioProfile *)self cigID];

    if (cigID != cigID2)
    {
      v11 = 19;
LABEL_19:
      v22 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
      {
        sub_10005BF50(v11, v22);
      }

      [(ClientCommonAudioProfile *)self setProcedureStatus:v11];
      currentCAPProcedure = [(ClientCommonAudioProfile *)self currentCAPProcedure];
      [currentCAPProcedure setNextEvent:14];

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100014208;
      block[3] = &unk_100094CB8;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
      return;
    }
  }

  buildCIG = [(ClientCommonAudioProfile *)self buildCIG];
  connIsoGroup3 = [(ClientCommonAudioProfile *)self connIsoGroup];
  cisSet = [connIsoGroup3 cisSet];
  v15 = [cisSet count];

  if (!v15)
  {
    v11 = 18;
    goto LABEL_19;
  }

  if ([(ClientCommonAudioProfile *)self getNumOfConnectedPeripherals]== 1 && [(ClientCommonAudioProfile *)self calculateCoordinatedSetSize:1]>= 2)
  {
    v16 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      if (buildCIG)
      {
        v17 = @"unidirectional";
      }

      else
      {
        v17 = @"bidirectional";
      }

      v18 = v16;
      cigID3 = [(ClientCommonAudioProfile *)self cigID];
      *buf = 138412546;
      v26 = v17;
      v27 = 1024;
      v28 = cigID3;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Additional %@ CIS needed for GID ID %u", buf, 0x12u);
    }

    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  connIsoGroup4 = [(ClientCommonAudioProfile *)self connIsoGroup];
  [(ClientCommonAudioProfile *)self sendCIGCreate:connIsoGroup4 additionalCIS:v20 bidirectionCIS:buildCIG ^ 1];
}

- (BOOL)buildCIG
{
  cigID = [(ClientCommonAudioProfile *)self cigID];
  connIsoGroup = [(ClientCommonAudioProfile *)self connIsoGroup];
  cigParams = [connIsoGroup cigParams];
  [cigParams setCigID:cigID];

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  selfCopy = self;
  obj = [(ClientCommonAudioProfile *)self coordinatedSet];
  v61 = [obj countByEnumeratingWithState:&v65 objects:v75 count:16];
  if (v61)
  {
    v55 = 0;
    v60 = *v66;
    while (1)
    {
      for (i = 0; i != v61; i = i + 1)
      {
        if (*v66 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v65 + 1) + 8 * i);
        coordinatedSet = [(ClientCommonAudioProfile *)selfCopy coordinatedSet];
        v62 = v7;
        v9 = [coordinatedSet objectForKeyedSubscript:v7];

        v64 = v9;
        getAudioStreamEndpoints = [v9 getAudioStreamEndpoints];
        if ([getAudioStreamEndpoints count])
        {
          v11 = 0;
          v12 = 0;
          while (1)
          {
            v13 = [getAudioStreamEndpoints objectAtIndexedSubscript:v11];
            if (![v13 inUse])
            {
              goto LABEL_11;
            }

            v14 = [getAudioStreamEndpoints objectAtIndexedSubscript:v11];
            state = [v14 state];

            if (state == 1)
            {
              break;
            }

LABEL_12:
            v11 = ++v12;
            if ([getAudioStreamEndpoints count] <= v12)
            {
              goto LABEL_32;
            }
          }

          v13 = [getAudioStreamEndpoints objectAtIndexedSubscript:v11];
          if ([v13 cigID] == 255)
          {
            v16 = [getAudioStreamEndpoints objectAtIndexedSubscript:v11];
            cisID = [v16 cisID];

            if (cisID != 255)
            {
              goto LABEL_12;
            }

            connIsoGroup2 = [(ClientCommonAudioProfile *)selfCopy connIsoGroup];
            v19 = [getAudioStreamEndpoints objectAtIndexedSubscript:v11];
            v59 = [connIsoGroup2 addCISwithASE:v19 forDevice:v62];

            cigID2 = [(ClientCommonAudioProfile *)selfCopy cigID];
            v21 = [getAudioStreamEndpoints objectAtIndexedSubscript:v11];
            [v21 setCigID:cigID2];

            v22 = qword_1000A9FE0;
            if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
            {
              v23 = v22;
              v24 = [getAudioStreamEndpoints objectAtIndexedSubscript:v11];
              aSE_ID = [v24 ASE_ID];
              v26 = [getAudioStreamEndpoints objectAtIndexedSubscript:v11];
              cigID3 = [v26 cigID];
              v28 = [getAudioStreamEndpoints objectAtIndexedSubscript:v11];
              cisID2 = [v28 cisID];
              *buf = 67109632;
              v70 = aSE_ID;
              v71 = 1024;
              v72 = cigID3;
              v73 = 1024;
              v74 = cisID2;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "ASE ID %u assigned CIG ID %u and CIS ID %u", buf, 0x14u);
            }

            v30 = v12 + 1;
            if ([getAudioStreamEndpoints count] <= (v12 + 1))
            {
              goto LABEL_12;
            }

            v31 = (v12 + 1);
            while (2)
            {
              v32 = [getAudioStreamEndpoints objectAtIndexedSubscript:v31];
              if ([v32 inUse])
              {
                v33 = [getAudioStreamEndpoints objectAtIndexedSubscript:v31];
                state2 = [v33 state];

                if (state2 == 1)
                {
                  v32 = [getAudioStreamEndpoints objectAtIndexedSubscript:v31];
                  if ([v32 cigID] != 255)
                  {
                    goto LABEL_22;
                  }

                  v35 = [getAudioStreamEndpoints objectAtIndexedSubscript:v31];
                  cisID3 = [v35 cisID];

                  if (cisID3 == 255)
                  {
                    v37 = [getAudioStreamEndpoints objectAtIndexedSubscript:v11];
                    type = [v37 type];
                    v39 = [getAudioStreamEndpoints objectAtIndexedSubscript:v31];
                    if (type == [v39 type])
                    {
                    }

                    else
                    {
                      v40 = [getAudioStreamEndpoints objectAtIndexedSubscript:v11];
                      v41 = [getAudioStreamEndpoints objectAtIndexedSubscript:v31];
                      v56 = [v40 matchPrefferedQoSParamsForASE:v41];

                      if (v56)
                      {
                        cigID4 = [(ClientCommonAudioProfile *)selfCopy cigID];
                        v43 = [getAudioStreamEndpoints objectAtIndexedSubscript:v31];
                        [v43 setCigID:cigID4];

                        connIsoGroup3 = [(ClientCommonAudioProfile *)selfCopy connIsoGroup];
                        v45 = [connIsoGroup3 getCISwithID:v59];
                        v46 = [getAudioStreamEndpoints objectAtIndexedSubscript:v31];
                        [v45 setASEForOppositeDirection:v46];

                        v47 = qword_1000A9FE0;
                        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
                        {
                          v48 = v47;
                          v57 = [getAudioStreamEndpoints objectAtIndexedSubscript:v31];
                          aSE_ID2 = [v57 ASE_ID];
                          v50 = [getAudioStreamEndpoints objectAtIndexedSubscript:v31];
                          cigID5 = [v50 cigID];
                          v52 = [getAudioStreamEndpoints objectAtIndexedSubscript:v31];
                          cisID4 = [v52 cisID];
                          *buf = 67109632;
                          v70 = aSE_ID2;
                          v71 = 1024;
                          v72 = cigID5;
                          v73 = 1024;
                          v74 = cisID4;
                          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "ASE ID %u assigned CIG ID %u and CIS ID %u (bidirectional CIS)", buf, 0x14u);
                        }

                        v55 = 1;
                      }
                    }
                  }
                }
              }

              else
              {
LABEL_22:
              }

              v31 = ++v30;
              if ([getAudioStreamEndpoints count] <= v30)
              {
                goto LABEL_12;
              }

              continue;
            }
          }

LABEL_11:

          goto LABEL_12;
        }

LABEL_32:
      }

      v61 = [obj countByEnumeratingWithState:&v65 objects:v75 count:16];
      if (!v61)
      {
        goto LABEL_36;
      }
    }
  }

  v55 = 0;
LABEL_36:

  return v55 & 1;
}

- (void)sendCIGCreate:(id)create additionalCIS:(BOOL)s bidirectionCIS:(BOOL)iS
{
  LODWORD(v81) = iS;
  HIDWORD(v81) = s;
  createCopy = create;
  v6 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting up CIG for endpoints", buf, 2u);
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v84 = createCopy;
  obj = [createCopy cisSet];
  v7 = [obj countByEnumeratingWithState:&v89 objects:v97 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = *v90;
    clientMaxTransportLatency4 = 100;
    clientMaxTransportLatency2 = 100;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v90 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v89 + 1) + 8 * i);
        sinkASE = [v14 sinkASE];

        if (sinkASE)
        {
          sinkASE2 = [v14 sinkASE];
          clientMaxTransportLatency = [sinkASE2 clientMaxTransportLatency];

          if (clientMaxTransportLatency < clientMaxTransportLatency2)
          {
            sinkASE3 = [v14 sinkASE];
            clientMaxTransportLatency2 = [sinkASE3 clientMaxTransportLatency];
          }

          sinkASE4 = [v14 sinkASE];
          clientMaxSdu = [sinkASE4 clientMaxSdu];
          cisParams = [v14 cisParams];
          [cisParams setMaxSduCToP:clientMaxSdu];

          sinkASE5 = [v14 sinkASE];
          clientRetransmissionNumber = [sinkASE5 clientRetransmissionNumber];
          cisParams2 = [v14 cisParams];
          [cisParams2 setRtnCToP:clientRetransmissionNumber];

          [v14 sinkASE];
          v11 = cisParams4 = v11;
        }

        else
        {
          cisParams3 = [v14 cisParams];
          [cisParams3 setMaxSduCToP:0];

          cisParams4 = [v14 cisParams];
          [cisParams4 setRtnCToP:0];
        }

        sourceASE = [v14 sourceASE];
        if (sourceASE && (v28 = sourceASE, v29 = [(ClientCommonAudioProfile *)self requiresInput], v28, v29))
        {
          sourceASE2 = [v14 sourceASE];
          clientMaxTransportLatency3 = [sourceASE2 clientMaxTransportLatency];

          if (clientMaxTransportLatency3 < clientMaxTransportLatency4)
          {
            sourceASE3 = [v14 sourceASE];
            clientMaxTransportLatency4 = [sourceASE3 clientMaxTransportLatency];
          }

          sourceASE4 = [v14 sourceASE];
          clientMaxSdu2 = [sourceASE4 clientMaxSdu];
          cisParams5 = [v14 cisParams];
          [cisParams5 setMaxSduPToC:clientMaxSdu2];

          sourceASE5 = [v14 sourceASE];
          clientRetransmissionNumber2 = [sourceASE5 clientRetransmissionNumber];
          cisParams6 = [v14 cisParams];
          [cisParams6 setRtnPToC:clientRetransmissionNumber2];

          [v14 sourceASE];
          v10 = cisParams8 = v10;
        }

        else
        {
          cisParams7 = [v14 cisParams];
          [cisParams7 setMaxSduPToC:0];

          cisParams8 = [v14 cisParams];
          [cisParams8 setRtnPToC:0];
        }

        v41 = v11;
        if (v11 || (v41 = v10) != 0)
        {
          v9 = -[ClientCommonAudioProfile translatePhyMask:](self, "translatePhyMask:", [v41 clientPHY]);
        }

        cisParams9 = [v14 cisParams];
        [cisParams9 setPhyCToP:v9];

        cisParams10 = [v14 cisParams];
        [cisParams10 setPhyPToC:v9];
      }

      v8 = [obj countByEnumeratingWithState:&v89 objects:v97 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    clientMaxTransportLatency4 = 100;
    clientMaxTransportLatency2 = 100;
  }

  if (v83 && v11 | v10)
  {
    connIsoGroup = [(ClientCommonAudioProfile *)self connIsoGroup];
    addCIS = [connIsoGroup addCIS];

    connIsoGroup2 = [(ClientCommonAudioProfile *)self connIsoGroup];
    v47 = [connIsoGroup2 getCISwithID:addCIS];

    if (v11)
    {
      clientMaxSdu3 = [v11 clientMaxSdu];
      cisParams11 = [v47 cisParams];
      [cisParams11 setMaxSduCToP:clientMaxSdu3];

      clientRetransmissionNumber3 = [v11 clientRetransmissionNumber];
      cisParams12 = [v47 cisParams];
      [cisParams12 setRtnCToP:clientRetransmissionNumber3];

      if ((v82 & 1) == 0)
      {
        goto LABEL_39;
      }

      if (!v10 || ![(ClientCommonAudioProfile *)self requiresInput])
      {
        if ([(ClientCommonAudioProfile *)self requiresInput])
        {
          clientMaxSdu4 = [v11 clientMaxSdu];
          cisParams13 = [v47 cisParams];
          [cisParams13 setMaxSduCToP:clientMaxSdu4];

          clientRetransmissionNumber4 = [v11 clientRetransmissionNumber];
          cisParams14 = [v47 cisParams];
          [cisParams14 setRtnCToP:clientRetransmissionNumber4];
LABEL_38:

          v63 = @"bidirectional";
LABEL_40:
          cisParams15 = [v47 cisParams];
          [cisParams15 setPhyCToP:v9];

          cisParams16 = [v47 cisParams];
          [cisParams16 setPhyPToC:v9];

          [(ClientCommonAudioProfile *)self setQosValidated:0];
          v66 = qword_1000A9FE0;
          if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v94 = v63;
            v95 = 1024;
            v96 = addCIS;
            _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Additional %@ CIS with ID %u added", buf, 0x12u);
          }

          goto LABEL_43;
        }

LABEL_39:
        v63 = @"unidirectional";
        goto LABEL_40;
      }
    }

    else
    {
      if (!v10)
      {
        goto LABEL_39;
      }

      clientMaxSdu5 = [v10 clientMaxSdu];
      cisParams17 = [v47 cisParams];
      [cisParams17 setMaxSduPToC:clientMaxSdu5];

      clientRetransmissionNumber5 = [v10 clientRetransmissionNumber];
      cisParams18 = [v47 cisParams];
      [cisParams18 setRtnPToC:clientRetransmissionNumber5];

      if ((v82 & 1) == 0 || ![(ClientCommonAudioProfile *)self requiresInput])
      {
        goto LABEL_39;
      }
    }

    clientMaxSdu6 = [v10 clientMaxSdu];
    cisParams19 = [v47 cisParams];
    [cisParams19 setMaxSduPToC:clientMaxSdu6];

    clientRetransmissionNumber6 = [v10 clientRetransmissionNumber];
    cisParams14 = [v47 cisParams];
    [cisParams14 setRtnPToC:clientRetransmissionNumber6];
    goto LABEL_38;
  }

LABEL_43:
  cigParams = [v84 cigParams];
  [cigParams setPeripheralClockAccuracy:7];

  cigParams2 = [v84 cigParams];
  [cigParams2 setPacking:0];

  if (v11)
  {
    clientSduInterval = [v11 clientSduInterval];
    cigParams3 = [v84 cigParams];
    [cigParams3 setSduIntervalCToP:clientSduInterval];

    cigParams4 = [v84 cigParams];
    [cigParams4 setMaxTransLatencyCToP:clientMaxTransportLatency2];

    clientFraming = [v11 clientFraming];
    cigParams5 = [v84 cigParams];
    [cigParams5 setFraming:clientFraming];
  }

  else
  {
    cigParams6 = [v84 cigParams];
    [cigParams6 setSduIntervalCToP:255];

    cigParams5 = [v84 cigParams];
    [cigParams5 setMaxTransLatencyCToP:5];
  }

  if (v10)
  {
    clientSduInterval2 = [v10 clientSduInterval];
    cigParams7 = [v84 cigParams];
    [cigParams7 setSduIntervalPToC:clientSduInterval2];

    cigParams8 = [v84 cigParams];
    [cigParams8 setMaxTransLatencyPToC:clientMaxTransportLatency4];

    clientFraming2 = [v10 clientFraming];
    cigParams9 = [v84 cigParams];
    [cigParams9 setFraming:clientFraming2];
  }

  else
  {
    cigParams10 = [v84 cigParams];
    [cigParams10 setSduIntervalPToC:255];

    cigParams9 = [v84 cigParams];
    [cigParams9 setMaxTransLatencyPToC:5];
  }

  [(ClientCommonAudioProfile *)self setupCIG:v84];
}

- (void)setupCIG:(id)g
{
  gCopy = g;
  v4 = +[NSMutableDictionary dictionary];
  v50 = objc_alloc_init(NSMutableArray);
  v49 = objc_alloc_init(NSMutableArray);
  v52 = objc_alloc_init(NSMutableArray);
  v51 = objc_alloc_init(NSMutableArray);
  v5 = objc_alloc_init(NSMutableArray);
  v6 = objc_alloc_init(NSMutableArray);
  v48 = objc_alloc_init(NSMutableArray);
  cigParams = [gCopy cigParams];
  v8 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [cigParams cigID]);
  [v4 setObject:v8 forKey:@"kCBLEAudioArgCigId"];

  cigParams2 = [gCopy cigParams];
  v10 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [cigParams2 sduIntervalCToP]);
  [v4 setObject:v10 forKey:@"kCBLEAudioArgSduIntervalCToP"];

  cigParams3 = [gCopy cigParams];
  v12 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [cigParams3 sduIntervalPToC]);
  [v4 setObject:v12 forKey:@"kCBLEAudioArgSduIntervalPToC"];

  cigParams4 = [gCopy cigParams];
  v14 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [cigParams4 peripheralClockAccuracy]);
  [v4 setObject:v14 forKey:@"kCBLEAudioArgPeripheralClockAccuracy"];

  cigParams5 = [gCopy cigParams];
  v16 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [cigParams5 packing]);
  [v4 setObject:v16 forKey:@"kCBLEAudioArgPacking"];

  cigParams6 = [gCopy cigParams];
  v18 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [cigParams6 framing]);
  [v4 setObject:v18 forKey:@"kCBLEAudioArgFraming"];

  cigParams7 = [gCopy cigParams];
  v20 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [cigParams7 maxTransLatencyCToP]);
  [v4 setObject:v20 forKey:@"kCBLEAudioArgMaxTransLatencyCtoP"];

  cigParams8 = [gCopy cigParams];
  v22 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [cigParams8 maxTransLatencyPToC]);
  [v4 setObject:v22 forKey:@"kCBLEAudioArgMaxTransLatencyPtoC"];

  v23 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [gCopy numOfCIS]);
  v46 = v4;
  [v4 setObject:v23 forKey:@"kCBLEAudioArgCisCount"];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v47 = gCopy;
  cisSet = [gCopy cisSet];
  v25 = [cisSet countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v55;
    do
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v55 != v27)
        {
          objc_enumerationMutation(cisSet);
        }

        v29 = *(*(&v54 + 1) + 8 * i);
        cisParams = [v29 cisParams];
        v31 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [cisParams cisID]);
        [v5 addObject:v31];

        cisParams2 = [v29 cisParams];
        v33 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [cisParams2 maxSduCToP]);
        [v49 addObject:v33];

        cisParams3 = [v29 cisParams];
        v35 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [cisParams3 maxSduPToC]);
        [v50 addObject:v35];

        cisParams4 = [v29 cisParams];
        v37 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [cisParams4 rtnCToP]);
        [v48 addObject:v37];

        cisParams5 = [v29 cisParams];
        v39 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [cisParams5 rtnPToC]);
        [v6 addObject:v39];

        cisParams6 = [v29 cisParams];
        v41 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [cisParams6 phyCToP]);
        [v51 addObject:v41];

        cisParams7 = [v29 cisParams];
        v43 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [cisParams7 phyPToC]);
        [v52 addObject:v43];
      }

      v26 = [cisSet countByEnumeratingWithState:&v54 objects:v58 count:16];
    }

    while (v26);
  }

  [v46 setObject:v5 forKeyedSubscript:@"kCBLEAudioArgCisId"];
  [v46 setObject:v50 forKeyedSubscript:@"kCBLEAudioArgCisMaxSduPToC"];
  [v46 setObject:v49 forKeyedSubscript:@"kCBLEAudioArgCisMaxSduCToP"];
  [v46 setObject:v52 forKeyedSubscript:@"kCBLEAudioArgCisPhyPToC"];
  [v46 setObject:v51 forKeyedSubscript:@"kCBLEAudioArgCisPhyCToP"];
  [v46 setObject:v6 forKeyedSubscript:@"kCBLEAudioArgCisRtnPToC"];
  [v46 setObject:v48 forKeyedSubscript:@"kCBLEAudioArgCisRtnCToP"];
  v44 = +[ConnectionManager instance];
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_1000157E0;
  v53[3] = &unk_100094EB0;
  v53[4] = self;
  [v44 setupCIG:v46 withCompletion:v53];
}

- (void)tearDownCIG
{
  connIsoGroup = [(ClientCommonAudioProfile *)self connIsoGroup];
  cigParams = [connIsoGroup cigParams];
  cigID = [cigParams cigID];

  if (cigID != 255)
  {
    connIsoGroup2 = [(ClientCommonAudioProfile *)self connIsoGroup];
    tearDownInProgress = [connIsoGroup2 tearDownInProgress];

    if (tearDownInProgress)
    {
      v8 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
        connIsoGroup3 = [(ClientCommonAudioProfile *)self connIsoGroup];
        cigParams2 = [connIsoGroup3 cigParams];
        *buf = 67109120;
        cigID2 = [cigParams2 cigID];
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "tearDownCIG - already in progress for CIG ID %d ", buf, 8u);
      }
    }

    else
    {
      v12 = +[NSMutableDictionary dictionary];
      connIsoGroup4 = [(ClientCommonAudioProfile *)self connIsoGroup];
      cigParams3 = [connIsoGroup4 cigParams];
      v15 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [cigParams3 cigID]);
      [v12 setObject:v15 forKey:@"kCBLEAudioArgCigId"];

      v16 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        connIsoGroup5 = [(ClientCommonAudioProfile *)self connIsoGroup];
        cigParams4 = [connIsoGroup5 cigParams];
        *buf = 67109120;
        cigID2 = [cigParams4 cigID];
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Tearing down Connected Iso Group %d", buf, 8u);
      }

      connIsoGroup6 = [(ClientCommonAudioProfile *)self connIsoGroup];
      [connIsoGroup6 setTearDownInProgress:1];

      v21 = +[ConnectionManager instance];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100015C34;
      v22[3] = &unk_100094EB0;
      v22[4] = self;
      [v21 tearDownCIG:v12 withCompletion:v22];
    }
  }
}

- (BOOL)isCIGInUse
{
  connIsoGroup = [(ClientCommonAudioProfile *)self connIsoGroup];
  cigParams = [connIsoGroup cigParams];
  v4 = [cigParams cigID] != 255;

  return v4;
}

- (unsigned)connectCISforCIG
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = objc_alloc_init(NSMutableArray);
  v49 = objc_alloc_init(NSMutableArray);
  connIsoGroup = [(ClientCommonAudioProfile *)self connIsoGroup];
  cigParams = [connIsoGroup cigParams];
  cigID = [cigParams cigID];

  v8 = &MGGetBoolAnswer_ptr;
  v9 = [NSNumber numberWithUnsignedChar:cigID];
  v47 = v3;
  [v3 setObject:v9 forKey:@"kCBLEAudioArgCigId"];

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  selfCopy = self;
  connIsoGroup2 = [(ClientCommonAudioProfile *)self connIsoGroup];
  cisSet = [connIsoGroup2 cisSet];

  v12 = [cisSet countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v53;
    v48 = v4;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v53 != v14)
        {
          objc_enumerationMutation(cisSet);
        }

        v16 = *(*(&v52 + 1) + 8 * i);
        if ([v16 established])
        {
          v17 = qword_1000A9FE0;
          if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
          {
            continue;
          }

          v18 = v17;
          cisParams = [v16 cisParams];
          cisID = [cisParams cisID];
          *buf = 67109120;
          v57 = cisID;
          v21 = v18;
          v22 = "CIS %d already established.";
LABEL_15:
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v22, buf, 8u);

          continue;
        }

        deviceID = [v16 deviceID];

        if (!deviceID)
        {
          v30 = qword_1000A9FE0;
          if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
          {
            continue;
          }

          v18 = v30;
          cisParams = [v16 cisParams];
          cisID2 = [cisParams cisID];
          *buf = 67109120;
          v57 = cisID2;
          v21 = v18;
          v22 = "CIS %d not coupled to any acceptor";
          goto LABEL_15;
        }

        v24 = v8[239];
        cisParams2 = [v16 cisParams];
        v26 = [v24 numberWithInt:{objc_msgSend(cisParams2, "cisID")}];
        [v4 addObject:v26];

        sinkASE = [v16 sinkASE];
        if (sinkASE)
        {
          v28 = sinkASE;
          sinkASE2 = [v16 sinkASE];
          if ([sinkASE2 state] == 2)
          {

LABEL_18:
            sinkASE3 = [v16 sinkASE];
            goto LABEL_25;
          }

          sinkASE4 = [v16 sinkASE];
          state = [sinkASE4 state];

          v8 = &MGGetBoolAnswer_ptr;
          v34 = state == 3;
          v4 = v48;
          if (v34)
          {
            goto LABEL_18;
          }
        }

        sourceASE = [v16 sourceASE];
        if (!sourceASE)
        {
          continue;
        }

        v37 = sourceASE;
        sourceASE2 = [v16 sourceASE];
        if ([sourceASE2 state] == 2)
        {

LABEL_24:
          sinkASE3 = [v16 sourceASE];
LABEL_25:
          v41 = sinkASE3;
          peripheralID = [sinkASE3 peripheralID];
          [v49 addObject:peripheralID];

          continue;
        }

        sourceASE3 = [v16 sourceASE];
        state2 = [sourceASE3 state];

        v4 = v48;
        v34 = state2 == 3;
        v8 = &MGGetBoolAnswer_ptr;
        if (v34)
        {
          goto LABEL_24;
        }
      }

      v13 = [cisSet countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v13);
  }

  [v47 setObject:v4 forKeyedSubscript:@"kCBLEAudioArgCisId"];
  [v47 setObject:v49 forKeyedSubscript:@"kCBLEAudioArgCisIdentifiers"];
  v43 = [v8[239] numberWithUnsignedLong:{objc_msgSend(v4, "count")}];
  [v47 setObject:v43 forKey:@"kCBLEAudioArgCisCount"];

  v44 = +[ConnectionManager instance];
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_1000162AC;
  v51[3] = &unk_100094ED8;
  v51[4] = selfCopy;
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_10001675C;
  v50[3] = &unk_100094ED8;
  v50[4] = selfCopy;
  [v44 connectCIS:v47 withConnectionCompletion:v51 withDisconnectionCompletion:v50];

  LOBYTE(v44) = [v4 count];
  return v44;
}

- (unsigned)getNumOfConnectedPeripherals
{
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  v3 = [coordinatedSet count];

  return v3;
}

- (void)setSIRK:(id)k withIdentifier:(id)identifier
{
  kCopy = k;
  identifierCopy = identifier;
  setIRK = [(ClientCommonAudioProfile *)self setIRK];
  [setIRK setData:kCopy];

  v9 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    resolvedPeripherals = [(ClientCommonAudioProfile *)self resolvedPeripherals];
    v17 = 138412802;
    v18 = kCopy;
    v19 = 2112;
    v20 = identifierCopy;
    v21 = 2048;
    v22 = [resolvedPeripherals count];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "CAP SetSIRK with %@, device %@ count %lu", &v17, 0x20u);
  }

  if (identifierCopy)
  {
    resolvedPeripherals2 = [(ClientCommonAudioProfile *)self resolvedPeripherals];
    [resolvedPeripherals2 addObject:identifierCopy];

    if ([(ClientCommonAudioProfile *)self setSize]== 1)
    {
      v13 = 1;
    }

    else
    {
      resolvedPeripherals3 = [(ClientCommonAudioProfile *)self resolvedPeripherals];
      v15 = [resolvedPeripherals3 count];
      v13 = v15 < [(ClientCommonAudioProfile *)self setSize];
    }

    v16 = +[ConnectionManager instance];
    [v16 scanPeripherals:v13];
  }
}

- (void)publishHALDevice:(id)device
{
  deviceCopy = device;
  [(ClientCommonAudioProfile *)self determineAudioConfigFromHALConfig:deviceCopy];
  if (self->_isHALPublished)
  {
    v5 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      isHALPublished = self->_isHALPublished;
      v10 = 67109120;
      LODWORD(v11) = isHALPublished;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Not publishing HAL Device. HAL Published: %d.", &v10, 8u);
    }
  }

  else
  {
    [(ClientCommonAudioProfile *)self setIsHALPublished:1];
    v7 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = deviceCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending Audio Device Publish Request %@", &v10, 0xCu);
    }

    v8 = +[LEAudioXPCListener instance];
    sessionID = [(ClientCommonAudioProfile *)self sessionID];
    [v8 publishAudioDeviceForSession:sessionID withDeviceInfo:deviceCopy];
  }
}

- (void)determineAudioConfigFromHALConfig:(id)config
{
  configCopy = config;
  v5 = [configCopy objectForKeyedSubscript:@"kCoordinatedSetSize"];
  unsignedIntValue = [v5 unsignedIntValue];

  v7 = [configCopy objectForKeyedSubscript:@"kSinkAudioLocations"];
  unsignedIntValue2 = [v7 unsignedIntValue];

  v9 = [configCopy objectForKeyedSubscript:@"kSourceAudioLocations"];

  unsignedIntValue3 = [v9 unsignedIntValue];
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  v12 = [coordinatedSet count];

  if (unsignedIntValue < 2u)
  {
    if (!unsignedIntValue2)
    {
      if (!unsignedIntValue3)
      {
        return;
      }

      if ([(ClientCommonAudioProfile *)self determineChannelCount:unsignedIntValue3]<= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = 14;
      }

      goto LABEL_24;
    }

    if ([(ClientCommonAudioProfile *)self determineChannelCount:unsignedIntValue2]<= 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = 3;
    }

    [(ClientCommonAudioProfile *)self setOutputAudioConfigIdx:v14];
    if (unsignedIntValue3)
    {
      if ([(ClientCommonAudioProfile *)self determineChannelCount:unsignedIntValue2]<= 1)
      {
        v13 = 2;
      }

      else
      {
        v13 = 4;
      }

LABEL_24:

      [(ClientCommonAudioProfile *)self setInputAudioConfigIdx:v13];
    }
  }

  else
  {
    if (unsignedIntValue <= v12)
    {
      if (unsignedIntValue2)
      {
        [(ClientCommonAudioProfile *)self setOutputAudioConfigIdx:6];
        if (!unsignedIntValue3)
        {
          return;
        }

        v13 = 10;
      }

      else
      {
        if (!unsignedIntValue3)
        {
          return;
        }

        v13 = 13;
      }

      goto LABEL_24;
    }

    if (unsignedIntValue2)
    {
      [(ClientCommonAudioProfile *)self setOutputAudioConfigIdx:0];
    }

    if (unsignedIntValue3)
    {
      v13 = 2;
      goto LABEL_24;
    }
  }
}

- (unsigned)determineChannelCount:(unsigned int)count
{
  v3.i32[0] = count;
  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (count)
  {
    return v4.i32[0];
  }

  else
  {
    return 1;
  }
}

- (void)setupCIGForPublishedHALDevice
{
  v2 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Sending a request to match CIG to HAL Device", buf, 2u);
  }

  v53 = objc_alloc_init(NSMutableDictionary);
  v3 = +[NSMutableArray array];
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  connIsoGroup = [(ClientCommonAudioProfile *)self connIsoGroup];
  cisSet = [connIsoGroup cisSet];

  obj = cisSet;
  v58 = [cisSet countByEnumeratingWithState:&v105 objects:v116 count:16];
  if (v58)
  {
    v55 = *v106;
    v56 = v3;
    do
    {
      v6 = 0;
      do
      {
        if (*v106 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v103 = v6;
        v7 = *(*(&v105 + 1) + 8 * v6);
        v8 = objc_alloc_init(NSMutableDictionary);
        cisParams = [v7 cisParams];
        v10 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [cisParams cisID]);
        [v8 setValue:v10 forKey:@"kLEAudioXPCMsgArgCisID"];

        connIsoGroup2 = [(ClientCommonAudioProfile *)self connIsoGroup];
        cigParams = [connIsoGroup2 cigParams];
        v13 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [cigParams cigID]);
        [v8 setValue:v13 forKey:@"kLEAudioXPCMsgArgCigID"];

        deviceID = [v7 deviceID];
        uUIDString = [deviceID UUIDString];
        [v8 setValue:uUIDString forKey:@"kLEAudioXPCMsgArgDeviceID"];

        sinkASE = [v7 sinkASE];

        v104 = v8;
        if (sinkASE)
        {
          v114[0] = @"kLEAudioXPCMsgArgAudioEndPointType";
          sinkASE2 = [v7 sinkASE];
          v99 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [sinkASE2 type]);
          v115[0] = v99;
          v114[1] = @"kLEAudioXPCMsgArgAudioEndPointFraming";
          sinkASE3 = [v7 sinkASE];
          v95 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [sinkASE3 framing]);
          v115[1] = v95;
          v114[2] = @"kLEAudioXPCMsgArgAudioEndPointMaxTransportLatency";
          sinkASE4 = [v7 sinkASE];
          v91 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [sinkASE4 maxTransportLatency]);
          v115[2] = v91;
          v114[3] = @"kLEAudioXPCMsgArgAudioEndPointPhy";
          sinkASE5 = [v7 sinkASE];
          v87 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [sinkASE5 clientPHY]);
          v115[3] = v87;
          v114[4] = @"kLEAudioXPCMsgArgAudioEndPointPresentationDelay";
          sinkASE6 = [v7 sinkASE];
          v83 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [sinkASE6 clientPresentationDelay]);
          v115[4] = v83;
          v114[5] = @"kLEAudioXPCMsgArgAudioEndPointCodecID";
          sinkASE7 = [v7 sinkASE];
          v79 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [sinkASE7 codecID]);
          v115[5] = v79;
          v114[6] = @"kLEAudioXPCMsgArgAudioEndPointSamplingFrequency";
          sinkASE8 = [v7 sinkASE];
          v75 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [sinkASE8 samplingFrequency]);
          v115[6] = v75;
          v114[7] = @"kLEAudioXPCMsgArgAudioEndPointFrameDuration";
          sinkASE9 = [v7 sinkASE];
          v71 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [sinkASE9 frameDuration]);
          v115[7] = v71;
          v114[8] = @"kLEAudioXPCMsgArgAudioEndPointAudioChannelCount";
          sinkASE10 = [v7 sinkASE];
          v67 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [sinkASE10 audioChanAllocMask]);
          v115[8] = v67;
          v114[9] = @"kLEAudioXPCMsgArgAudioEndPointOctetsPerCodecFrame";
          sinkASE11 = [v7 sinkASE];
          v63 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [sinkASE11 octetsPerCodecFrame]);
          v115[9] = v63;
          v114[10] = @"kLEAudioXPCMsgArgAudioEndPointCodecFramePerSdu";
          sinkASE12 = [v7 sinkASE];
          v59 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [sinkASE12 codecFramePerSdu]);
          v115[10] = v59;
          v114[11] = @"kLEAudioXPCMsgArgAudioEndPointMaxSdu";
          sinkASE13 = [v7 sinkASE];
          v18 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [sinkASE13 clientMaxSdu]);
          v115[11] = v18;
          v114[12] = @"kLEAudioXPCMsgArgAudioEndPointTargetLatency";
          sinkASE14 = [v7 sinkASE];
          v20 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [sinkASE14 targetLatency]);
          v115[12] = v20;
          v114[13] = @"kLEAudioXPCMsgArgAudioEndPointAudioLocation";
          sinkASE15 = [v7 sinkASE];
          v22 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [sinkASE15 audioChanAllocMask]);
          v115[13] = v22;
          v114[14] = @"kLEAudioXPCMsgArgAudioEndPointClientSDUInterval";
          sinkASE16 = [v7 sinkASE];
          v24 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [sinkASE16 clientSduInterval]);
          v115[14] = v24;
          v25 = [NSDictionary dictionaryWithObjects:v115 forKeys:v114 count:15];

          v8 = v104;
          [v104 setValue:v25 forKey:@"kLEAudioXPCMsgArgAudioEndPointSink"];
          v26 = qword_1000A9FE0;
          if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
          {
            v27 = v26;
            cisParams2 = [v7 cisParams];
            cisID = [cisParams2 cisID];
            sinkASE17 = [v7 sinkASE];
            audioChanAllocMask = [sinkASE17 audioChanAllocMask];
            *buf = 67109376;
            *v110 = cisID;
            *&v110[4] = 1024;
            *&v110[6] = audioChanAllocMask;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "CIG setup for CIS %d for Sink Location 0x%02x", buf, 0xEu);
          }
        }

        sourceASE = [v7 sourceASE];

        if (sourceASE)
        {
          v112[0] = @"kLEAudioXPCMsgArgAudioEndPointType";
          sourceASE2 = [v7 sourceASE];
          v100 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [sourceASE2 type]);
          v113[0] = v100;
          v112[1] = @"kLEAudioXPCMsgArgAudioEndPointFraming";
          sourceASE3 = [v7 sourceASE];
          v96 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [sourceASE3 framing]);
          v113[1] = v96;
          v112[2] = @"kLEAudioXPCMsgArgAudioEndPointMaxTransportLatency";
          sourceASE4 = [v7 sourceASE];
          v92 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [sourceASE4 maxTransportLatency]);
          v113[2] = v92;
          v112[3] = @"kLEAudioXPCMsgArgAudioEndPointPhy";
          sourceASE5 = [v7 sourceASE];
          v88 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [sourceASE5 clientPHY]);
          v113[3] = v88;
          v112[4] = @"kLEAudioXPCMsgArgAudioEndPointPresentationDelay";
          sourceASE6 = [v7 sourceASE];
          v84 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [sourceASE6 clientPresentationDelay]);
          v113[4] = v84;
          v112[5] = @"kLEAudioXPCMsgArgAudioEndPointCodecID";
          sourceASE7 = [v7 sourceASE];
          v80 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [sourceASE7 codecID]);
          v113[5] = v80;
          v112[6] = @"kLEAudioXPCMsgArgAudioEndPointSamplingFrequency";
          sourceASE8 = [v7 sourceASE];
          v76 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [sourceASE8 samplingFrequency]);
          v113[6] = v76;
          v112[7] = @"kLEAudioXPCMsgArgAudioEndPointFrameDuration";
          sourceASE9 = [v7 sourceASE];
          v72 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [sourceASE9 frameDuration]);
          v113[7] = v72;
          v112[8] = @"kLEAudioXPCMsgArgAudioEndPointAudioChannelCount";
          sourceASE10 = [v7 sourceASE];
          v68 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [sourceASE10 audioChanAllocMask]);
          v113[8] = v68;
          v112[9] = @"kLEAudioXPCMsgArgAudioEndPointOctetsPerCodecFrame";
          sourceASE11 = [v7 sourceASE];
          v64 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [sourceASE11 octetsPerCodecFrame]);
          v113[9] = v64;
          v112[10] = @"kLEAudioXPCMsgArgAudioEndPointCodecFramePerSdu";
          sourceASE12 = [v7 sourceASE];
          v60 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [sourceASE12 codecFramePerSdu]);
          v113[10] = v60;
          v112[11] = @"kLEAudioXPCMsgArgAudioEndPointMaxSdu";
          sourceASE13 = [v7 sourceASE];
          v34 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [sourceASE13 clientMaxSdu]);
          v113[11] = v34;
          v112[12] = @"kLEAudioXPCMsgArgAudioEndPointTargetLatency";
          sourceASE14 = [v7 sourceASE];
          v36 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [sourceASE14 targetLatency]);
          v113[12] = v36;
          v112[13] = @"kLEAudioXPCMsgArgAudioEndPointAudioLocation";
          sourceASE15 = [v7 sourceASE];
          v38 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [sourceASE15 audioChanAllocMask]);
          v113[13] = v38;
          v112[14] = @"kLEAudioXPCMsgArgAudioEndPointClientSDUInterval";
          sourceASE16 = [v7 sourceASE];
          v40 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [sourceASE16 clientSduInterval]);
          v113[14] = v40;
          v41 = [NSDictionary dictionaryWithObjects:v113 forKeys:v112 count:15];

          v8 = v104;
          [v104 setValue:v41 forKey:@"kLEAudioXPCMsgArgAudioEndPointSource"];
          v42 = qword_1000A9FE0;
          if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
          {
            v43 = v42;
            cisParams3 = [v7 cisParams];
            cisID2 = [cisParams3 cisID];
            sourceASE17 = [v7 sourceASE];
            audioChanAllocMask2 = [sourceASE17 audioChanAllocMask];
            *buf = 67109376;
            *v110 = cisID2;
            *&v110[4] = 1024;
            *&v110[6] = audioChanAllocMask2;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "CIG setup for CIS %d for Source Location 0x%02x", buf, 0xEu);
          }
        }

        v3 = v56;
        [v56 addObject:v8];

        v6 = v103 + 1;
      }

      while (v58 != (v103 + 1));
      v58 = [obj countByEnumeratingWithState:&v105 objects:v116 count:16];
    }

    while (v58);
  }

  [v53 setValue:v3 forKey:@"kLEAudioXPCMsgArgCISProperties"];
  v48 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v49 = v48;
    v50 = [v3 count];
    *buf = 134218242;
    *v110 = v50;
    *&v110[8] = 2112;
    v111 = v53;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Sending CIG setup with %lu CIS(es) for HAL device Request %@", buf, 0x16u);
  }

  v51 = +[LEAudioXPCListener instance];
  sessionID = [(ClientCommonAudioProfile *)self sessionID];
  [v51 setupCIGForHALSession:sessionID withDeviceInfo:v53];
}

- (void)CAPUnicastAudioStart:(id)start withAudioChanConfig:(id)config
{
  startCopy = start;
  currentCAPProcedure = [(ClientCommonAudioProfile *)self currentCAPProcedure];

  v7 = qword_1000A9FE0;
  if (currentCAPProcedure)
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005C2D4();
    }

    currentCAPProcedure2 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [currentCAPProcedure2 description];

    [(ClientCommonAudioProfile *)self queueAudioStreamProcedure:startCopy withNextProcedure:&unk_1000A9AC8];
    v9 = +[LEAudioXPCListener instance];
    sessionID = [(ClientCommonAudioProfile *)self sessionID];
    [v9 notifyCAPProcedureComplete:sessionID withInfo:&off_10009B340];
  }

  else
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "***********************************************", buf, 2u);
    }

    v11 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "*** Begin CAP Unicast Audio Start Procedure ***", buf, 2u);
    }

    v12 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "***********************************************", buf, 2u);
    }

    [(ClientCommonAudioProfile *)self setCigToJoin:255];
    [(ClientCommonAudioProfile *)self initPendingStateTransition];
    v13 = objc_alloc_init(CAPProcedure);
    [(ClientCommonAudioProfile *)self setCurrentCAPProcedure:v13];

    v14 = [(ClientCommonAudioProfile *)self sortAcceptorsByRank:startCopy];

    [(ClientCommonAudioProfile *)self setOrderedSet:v14];
    currentCAPProcedure3 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [currentCAPProcedure3 setNextEvent:3];

    currentCAPProcedure4 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [currentCAPProcedure4 setCurrentStateMachine:&unk_1000A9AC8];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100018738;
    block[3] = &unk_100094CB8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)CAPUnicastAudioUpdate:(id)update withAudioChanConfig:(id)config
{
  updateCopy = update;
  currentCAPProcedure = [(ClientCommonAudioProfile *)self currentCAPProcedure];

  v7 = qword_1000A9FE0;
  if (currentCAPProcedure)
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005C2D4();
    }

    currentCAPProcedure2 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [currentCAPProcedure2 description];

    [(ClientCommonAudioProfile *)self queueAudioStreamProcedure:updateCopy withNextProcedure:&unk_1000A9BF0];
    v9 = +[LEAudioXPCListener instance];
    sessionID = [(ClientCommonAudioProfile *)self sessionID];
    [v9 notifyCAPProcedureComplete:sessionID withInfo:&off_10009B390];
  }

  else
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "************************************************", buf, 2u);
    }

    v11 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "*** Begin CAP Unicast Audio Update Procedure ***", buf, 2u);
    }

    v12 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "************************************************", buf, 2u);
    }

    [(ClientCommonAudioProfile *)self initPendingStateTransition];
    v13 = objc_alloc_init(CAPProcedure);
    [(ClientCommonAudioProfile *)self setCurrentCAPProcedure:v13];

    v14 = [(ClientCommonAudioProfile *)self sortAcceptorsByRank:updateCopy];

    [(ClientCommonAudioProfile *)self setOrderedSet:v14];
    currentCAPProcedure3 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [currentCAPProcedure3 setNextEvent:3];

    currentCAPProcedure4 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [currentCAPProcedure4 setCurrentStateMachine:&unk_1000A9BF0];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100018CD0;
    block[3] = &unk_100094CB8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)CAPUnicastAudioStopDisable:(id)disable
{
  disableCopy = disable;
  currentCAPProcedure = [(ClientCommonAudioProfile *)self currentCAPProcedure];

  v6 = qword_1000A9FE0;
  if (currentCAPProcedure)
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005C2D4();
    }

    currentCAPProcedure2 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [currentCAPProcedure2 description];

    [(ClientCommonAudioProfile *)self queueAudioStreamProcedure:disableCopy withNextProcedure:&unk_1000A9C20];
    v8 = +[LEAudioXPCListener instance];
    sessionID = [(ClientCommonAudioProfile *)self sessionID];
    [v8 notifyCAPProcedureComplete:sessionID withInfo:&off_10009B3B8];
  }

  else
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "********************************************************", buf, 2u);
    }

    v10 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "*** Begin CAP Unicast Audio Stop (Disable) Procedure ***", buf, 2u);
    }

    v11 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "********************************************************", buf, 2u);
    }

    [(ClientCommonAudioProfile *)self initPendingStateTransition];
    v12 = objc_alloc_init(CAPProcedure);
    [(ClientCommonAudioProfile *)self setCurrentCAPProcedure:v12];

    v13 = [(ClientCommonAudioProfile *)self sortAcceptorsByRank:disableCopy];

    [(ClientCommonAudioProfile *)self setOrderedSet:v13];
    currentCAPProcedure3 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [currentCAPProcedure3 setNextEvent:3];

    currentCAPProcedure4 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [currentCAPProcedure4 setCurrentStateMachine:&unk_1000A9C20];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100018F94;
    block[3] = &unk_100094CB8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)CAPUnicastAudioStopRelease:(id)release
{
  releaseCopy = release;
  currentCAPProcedure = [(ClientCommonAudioProfile *)self currentCAPProcedure];

  v6 = qword_1000A9FE0;
  if (currentCAPProcedure)
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005C2D4();
    }

    currentCAPProcedure2 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [currentCAPProcedure2 description];

    [(ClientCommonAudioProfile *)self queueAudioStreamProcedure:releaseCopy withNextProcedure:&unk_1000A9C50];
    v8 = +[LEAudioXPCListener instance];
    sessionID = [(ClientCommonAudioProfile *)self sessionID];
    [v8 notifyCAPProcedureComplete:sessionID withInfo:&off_10009B3E0];
  }

  else
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "********************************************************", buf, 2u);
    }

    v10 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "*** Begin CAP Unicast Audio Stop (Release) Procedure ***", buf, 2u);
    }

    v11 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "********************************************************", buf, 2u);
    }

    [(ClientCommonAudioProfile *)self initPendingStateTransition];
    v12 = objc_alloc_init(CAPProcedure);
    [(ClientCommonAudioProfile *)self setCurrentCAPProcedure:v12];

    v13 = [(ClientCommonAudioProfile *)self sortAcceptorsByRank:releaseCopy];

    [(ClientCommonAudioProfile *)self setOrderedSet:v13];
    currentCAPProcedure3 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [currentCAPProcedure3 setNextEvent:3];

    currentCAPProcedure4 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [currentCAPProcedure4 setCurrentStateMachine:&unk_1000A9C50];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100019258;
    block[3] = &unk_100094CB8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)queueAudioStreamProcedure:(id)procedure withNextProcedure:(const CAPStateMachine *)nextProcedure
{
  procedureCopy = procedure;
  v7 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Queuing Audio Stream Procedure", v10, 2u);
  }

  if (nextProcedure == &unk_1000A9C50 || nextProcedure == &unk_1000A9C20 || nextProcedure == &unk_1000A9AC8 || nextProcedure == &unk_1000A9BF0)
  {
    v8 = objc_alloc_init(CAPProcedure);
    v9 = [procedureCopy mutableCopy];
    [(CAPProcedure *)v8 setDevices:v9];

    [(CAPProcedure *)v8 setCurrentStateMachine:nextProcedure];
    [(CAPProcedure *)v8 setNextEvent:3];
    [(NSMutableArray *)self->_streamCAPProcQueue addObject:v8];
  }

  else if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
  {
    sub_10005C308();
  }
}

- (void)checkNextUpcomingProcedure
{
  currentCAPProcedure = [(ClientCommonAudioProfile *)self currentCAPProcedure];

  v4 = qword_1000A9FE0;
  if (currentCAPProcedure)
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005C3A4();
    }

    currentCAPProcedure2 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [currentCAPProcedure2 description];
    goto LABEL_59;
  }

  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    streamCAPProcQueue = self->_streamCAPProcQueue;
    v7 = v4;
    v31 = 134217984;
    v32 = [(NSMutableArray *)streamCAPProcQueue count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Checking CAP Audio Stream Procedure for next procedure. Queue Count: %lu", &v31, 0xCu);
  }

  p_streamCAPProcQueue = &self->_streamCAPProcQueue;
  if ([(NSMutableArray *)self->_streamCAPProcQueue count])
  {
    currentCAPProcedure2 = [(NSMutableArray *)*p_streamCAPProcQueue firstObject];
    if ([currentCAPProcedure2 currentStateMachine] == &unk_1000A9AC8)
    {
      v17 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v31) = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Launching Queued Cap procedure Unicast Audio Start", &v31, 2u);
      }

      devices = [currentCAPProcedure2 devices];
      getAudioConfigList = [(ClientCommonAudioProfile *)self getAudioConfigList];
      [(ClientCommonAudioProfile *)self CAPUnicastAudioStart:devices withAudioChanConfig:getAudioConfigList];
    }

    else
    {
      if ([currentCAPProcedure2 currentStateMachine] == &unk_1000A9C20)
      {
        v20 = qword_1000A9FE0;
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v31) = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Launching Queued Cap procedure Unicast Audio Stop Disable", &v31, 2u);
        }

        devices = [currentCAPProcedure2 devices];
        [(ClientCommonAudioProfile *)self CAPUnicastAudioStopDisable:devices];
        goto LABEL_57;
      }

      if ([currentCAPProcedure2 currentStateMachine] == &unk_1000A9C50)
      {
        v27 = qword_1000A9FE0;
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v31) = 0;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Launching Queued Cap procedure Unicast Audio Stop Release", &v31, 2u);
        }

        devices = [currentCAPProcedure2 devices];
        [(ClientCommonAudioProfile *)self CAPUnicastAudioStopRelease:devices];
        goto LABEL_57;
      }

      currentStateMachine = [currentCAPProcedure2 currentStateMachine];
      v10 = qword_1000A9FE0;
      if (currentStateMachine != &unk_1000A9BF0)
      {
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
        {
          sub_10005C3D8();
        }

        goto LABEL_58;
      }

      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v31) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Launching Queued Cap procedure Unicast Audio Update", &v31, 2u);
      }

      devices = [currentCAPProcedure2 devices];
      getAudioConfigList = [(ClientCommonAudioProfile *)self getAudioConfigList];
      [(ClientCommonAudioProfile *)self CAPUnicastAudioUpdate:devices withAudioChanConfig:getAudioConfigList];
    }

LABEL_57:
LABEL_58:
    [(NSMutableArray *)*p_streamCAPProcQueue removeObject:currentCAPProcedure2];
LABEL_59:

    return;
  }

  v11 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    capturingCAPProcQueue = self->_capturingCAPProcQueue;
    v13 = v11;
    v14 = [(NSMutableArray *)capturingCAPProcQueue count];
    v31 = 134217984;
    v32 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Checking CAP Capturing Procedure for next procedure. Queue Count: %lu", &v31, 0xCu);
  }

  p_streamCAPProcQueue = &self->_capturingCAPProcQueue;
  if ([(NSMutableArray *)self->_capturingCAPProcQueue count])
  {
    currentCAPProcedure2 = [(NSMutableArray *)*p_streamCAPProcQueue firstObject];
    if ([currentCAPProcedure2 currentStateMachine] == &unk_1000A9B28)
    {
      v28 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v31) = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Launching Queued Cap procedure Commander Mic Mute", &v31, 2u);
      }

      devices = [currentCAPProcedure2 devices];
      -[ClientCommonAudioProfile CAPCommanderMicrophoneMuteState:withMute:](self, "CAPCommanderMicrophoneMuteState:withMute:", devices, [currentCAPProcedure2 microphoneMute]);
    }

    else
    {
      currentStateMachine2 = [currentCAPProcedure2 currentStateMachine];
      v16 = qword_1000A9FE0;
      if (currentStateMachine2 != &unk_1000A9B50)
      {
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
        {
          sub_10005C40C();
        }

        goto LABEL_58;
      }

      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v31) = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Launching Queued Cap procedure Commander Mic Gain", &v31, 2u);
      }

      devices = [currentCAPProcedure2 devices];
      -[ClientCommonAudioProfile CAPCommanderChangeMicrophoneGainSetting:withGainSetting:forInputType:](self, "CAPCommanderChangeMicrophoneGainSetting:withGainSetting:forInputType:", devices, [currentCAPProcedure2 gainSetting], objc_msgSend(currentCAPProcedure2, "inputType"));
    }

    goto LABEL_57;
  }

  v21 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    renderingCAPProcQueue = self->_renderingCAPProcQueue;
    v23 = v21;
    v24 = [(NSMutableArray *)renderingCAPProcQueue count];
    v31 = 134217984;
    v32 = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Checking CAP Rendering Procedure for next procedure. Queue Count: %lu", &v31, 0xCu);
  }

  p_streamCAPProcQueue = &self->_renderingCAPProcQueue;
  if ([(NSMutableArray *)self->_renderingCAPProcQueue count])
  {
    currentCAPProcedure2 = [(NSMutableArray *)*p_streamCAPProcQueue firstObject];
    if ([currentCAPProcedure2 currentStateMachine] == &unk_1000A9B78)
    {
      v29 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v31) = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Launching Queued Cap procedure Commander Volume Change", &v31, 2u);
      }

      devices = [currentCAPProcedure2 devices];
      -[ClientCommonAudioProfile CAPCommanderChangeVolume:withVolume:](self, "CAPCommanderChangeVolume:withVolume:", devices, [currentCAPProcedure2 volume]);
    }

    else if ([currentCAPProcedure2 currentStateMachine] == &unk_1000A9BC8)
    {
      v30 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v31) = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Launching Queued Cap procedure Commander Volume Offset", &v31, 2u);
      }

      devices = [currentCAPProcedure2 devices];
      -[ClientCommonAudioProfile CAPCommanderChangeVolumeOffset:withOffset:forAudioLocation:](self, "CAPCommanderChangeVolumeOffset:withOffset:forAudioLocation:", devices, [currentCAPProcedure2 volumeOffset], objc_msgSend(currentCAPProcedure2, "audioLocation"));
    }

    else
    {
      currentStateMachine3 = [currentCAPProcedure2 currentStateMachine];
      v26 = qword_1000A9FE0;
      if (currentStateMachine3 != &unk_1000A9BA0)
      {
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
        {
          sub_10005C440();
        }

        goto LABEL_58;
      }

      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v31) = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Launching Queued Cap procedure Commander Volume Mute", &v31, 2u);
      }

      devices = [currentCAPProcedure2 devices];
      -[ClientCommonAudioProfile CAPCommanderChangeVolumeMuteState:withMute:](self, "CAPCommanderChangeVolumeMuteState:withMute:", devices, [currentCAPProcedure2 volumeMute]);
    }

    goto LABEL_57;
  }
}

- (id)sortAcceptorsByRank:(id)rank
{
  rankCopy = rank;
  v5 = objc_alloc_init(NSMutableArray);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = rankCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
        v13 = [coordinatedSet objectForKey:v11];

        [v13 setCsisRank:{objc_msgSend(v13, "getCoordinatedSetMemberRank")}];
        [v5 addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [v5 sortUsingComparator:&stru_100094F18];

  return v5;
}

- (id)getOrderedAccessSet:(id)set
{
  v4 = [(ClientCommonAudioProfile *)self sortAcceptorsByRank:set];
  [(ClientCommonAudioProfile *)self setOrderedSet:v4];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  orderedSet = [(ClientCommonAudioProfile *)self orderedSet];
  v6 = [orderedSet countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(orderedSet);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        getCoordinatedSetLock = [v10 getCoordinatedSetLock];
        v12 = qword_1000A9FE0;
        if (getCoordinatedSetLock == 2)
        {
          if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
          {
            sub_10005C474(v12);
          }

          orderedSet2 = 0;
          goto LABEL_15;
        }

        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v12;
          peripheral = [v10 peripheral];
          identifier = [peripheral identifier];
          getCoordinatedSetMemberRank = [v10 getCoordinatedSetMemberRank];
          *buf = 138412546;
          v24 = identifier;
          v25 = 1024;
          v26 = getCoordinatedSetMemberRank;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Ordered Access: Set Member %@ Member Rank %u", buf, 0x12u);
        }
      }

      v7 = [orderedSet countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  orderedSet2 = [(ClientCommonAudioProfile *)self orderedSet];
LABEL_15:

  return orderedSet2;
}

- (void)processSM:(id)m
{
  mCopy = m;
  currentCAPProcedure = [(ClientCommonAudioProfile *)self currentCAPProcedure];

  v6 = qword_1000A9FE0;
  v7 = os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT);
  if (currentCAPProcedure)
  {
    if (v7)
    {
      v29 = 136315138;
      v30 = "[ClientCommonAudioProfile processSM:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "*** Begin %s ***", &v29, 0xCu);
    }

    currentCAPProcedure2 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [currentCAPProcedure2 description];

    currentCAPProcedure3 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    findCurrentStateMachine = [currentCAPProcedure3 findCurrentStateMachine];

    if (findCurrentStateMachine && *findCurrentStateMachine)
    {
      v11 = 0;
      v12 = findCurrentStateMachine;
      while (1)
      {
        currentCAPProcedure4 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
        nextEvent = [currentCAPProcedure4 nextEvent];
        v15 = *v12;

        if (nextEvent == v15)
        {
          break;
        }

        v12 = &findCurrentStateMachine[3 * ++v11];
        if (!*v12)
        {
          goto LABEL_22;
        }
      }

      v19 = [off_1000A9AC0 objectAtIndexedSubscript:v12[2]];
      v20 = NSSelectorFromString(v19);

      v21 = v12[1];
      currentCAPProcedure5 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
      [currentCAPProcedure5 setCurrentState:v21];

      if (v20)
      {
        if (mCopy)
        {
          [mCopy setPendingStateTransition:0];
        }

        v23 = qword_1000A9FE0;
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v29) = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "===========================================================", &v29, 2u);
        }

        v24 = qword_1000A9FE0;
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
        {
          v25 = v24;
          Name = sel_getName(v20);
          v29 = 136315138;
          v30 = Name;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "======= Performing Action: %s =======", &v29, 0xCu);
        }

        v27 = qword_1000A9FE0;
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v29) = 0;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "===========================================================", &v29, 2u);
        }

        [self v20];
      }
    }

LABEL_22:
    v28 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 136315138;
      v30 = "[ClientCommonAudioProfile processSM:]";
      v16 = "*** End %s ***";
      v17 = v28;
      v18 = 12;
      goto LABEL_24;
    }
  }

  else if (v7)
  {
    LOWORD(v29) = 0;
    v16 = "No Active CAP Procedure";
    v17 = v6;
    v18 = 2;
LABEL_24:
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, &v29, v18);
  }
}

- (id)getNextAcceptor:(BOOL)acceptor
{
  acceptorCopy = acceptor;
  v5 = &qword_1000A9FE0;
  v6 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    currentAcceptorIndex = [(ClientCommonAudioProfile *)self currentAcceptorIndex];
    orderedSet = [(ClientCommonAudioProfile *)self orderedSet];
    v10 = [orderedSet count];
    v11 = @"forward";
    *buf = 67109634;
    *&buf[4] = currentAcceptorIndex;
    if (acceptorCopy)
    {
      v11 = @"reverse";
    }

    *&buf[8] = 2048;
    *&buf[10] = v10;
    v29 = 2112;
    v30 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Current Acceptor Index: %d ordered set count: %lu. Going in %@ order.", buf, 0x1Cu);
  }

  orderedSet2 = [(ClientCommonAudioProfile *)self orderedSet];
  v13 = [orderedSet2 count];

  if (v13 <= [(ClientCommonAudioProfile *)self currentAcceptorIndex])
  {
LABEL_13:
    v17 = 0;
  }

  else
  {
    *&v14 = 138412546;
    v27 = v14;
    while (1)
    {
      v15 = [(ClientCommonAudioProfile *)self currentAcceptorIndex:v27];
      [(ClientCommonAudioProfile *)self setCurrentAcceptorIndex:(v15 + 1)];
      if (acceptorCopy)
      {
        v15 = ~v15 + v13;
      }

      orderedSet3 = [(ClientCommonAudioProfile *)self orderedSet];
      v17 = [orderedSet3 objectAtIndexedSubscript:v15];

      peripheral = [v17 peripheral];
      state = [peripheral state];

      v20 = *v5;
      v21 = os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT);
      if (state == 2)
      {
        break;
      }

      if (v21)
      {
        v22 = v20;
        peripheral2 = [v17 peripheral];
        [peripheral2 identifier];
        v25 = v24 = v5;
        *buf = v27;
        *&buf[4] = v25;
        *&buf[12] = 1024;
        *&buf[14] = v15;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Accetpor %@ at index %d not in Connected State", buf, 0x12u);

        v5 = v24;
      }

      if (v13 <= [(ClientCommonAudioProfile *)self currentAcceptorIndex])
      {
        goto LABEL_13;
      }
    }

    if (v21)
    {
      *buf = 67109120;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Accessing ordered set index: %u", buf, 8u);
    }
  }

  return v17;
}

- (void)CAPSmActionNone
{
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
  {
    sub_10005C524();
  }
}

- (void)CAPSmActionLockNext
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[ClientCommonAudioProfile CAPSmActionLockNext]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "*** Enter CAP Action %s ***", buf, 0xCu);
  }

  if (![(ClientCommonAudioProfile *)self useCSIPOrderedAccessProcedure])
  {
    v5 = [(ClientCommonAudioProfile *)self getNextAcceptor:0];
    if (v5)
    {
      v7 = v5;
      *&v6 = 67109120;
      v15 = v6;
      do
      {
        [v7 setIsLocked:{objc_msgSend(v7, "setCoordinatedSetLock:", 2, v15)}];
        v8 = qword_1000A9FE0;
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
        {
          v9 = v8;
          isLocked = [v7 isLocked];
          *buf = v15;
          LODWORD(v18) = isLocked;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Lock state: %u", buf, 8u);
        }

        [v7 setPendingStateTransition:{objc_msgSend(v7, "isLocked")}];
        v11 = [(ClientCommonAudioProfile *)self getNextAcceptor:0];

        v7 = v11;
      }

      while (v11);
    }

    if ([(ClientCommonAudioProfile *)self anyAcceptorPendingStateTransition])
    {
      v12 = qword_1000A9FE0;
      if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 136315138;
      v18 = "[ClientCommonAudioProfile CAPSmActionLockNext]";
      v13 = "*** Exit CAP Action %s - waiting for all Acceptors to transition to Lock state ***";
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if ([(ClientCommonAudioProfile *)self coordinatedSetMembersUnLocked])
  {
LABEL_14:
    v4 = 4;
    goto LABEL_15;
  }

  [(ClientCommonAudioProfile *)self setProcedureStatus:25];
  v4 = 6;
LABEL_15:
  currentCAPProcedure = [(ClientCommonAudioProfile *)self currentCAPProcedure];
  [currentCAPProcedure setNextEvent:v4];

  [(ClientCommonAudioProfile *)self initPendingStateTransition];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B930;
  block[3] = &unk_100094CB8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
  v12 = qword_1000A9FE0;
  if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    return;
  }

  *buf = 136315138;
  v18 = "[ClientCommonAudioProfile CAPSmActionLockNext]";
  v13 = "*** Exit CAP Action %s ***";
LABEL_17:
  _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 0xCu);
}

- (void)CAPSmActionLockComplete
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[ClientCommonAudioProfile CAPSmActionLockComplete]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "*** Enter CAP Action %s ***", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001BA94;
  block[3] = &unk_100094CB8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
  v4 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[ClientCommonAudioProfile CAPSmActionLockComplete]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "*** Exit CAP Action %s ***", buf, 0xCu);
  }
}

- (void)CAPSmActionUnlockAll
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[ClientCommonAudioProfile CAPSmActionUnlockAll]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "*** Enter CAP Action %s ***", buf, 0xCu);
  }

  useCSIPOrderedAccessProcedure = [(ClientCommonAudioProfile *)self useCSIPOrderedAccessProcedure];
  currentCAPProcedure = [(ClientCommonAudioProfile *)self currentCAPProcedure];
  v6 = currentCAPProcedure;
  if (useCSIPOrderedAccessProcedure)
  {
    v7 = 5;
  }

  else
  {
    v7 = 3;
  }

  [currentCAPProcedure setNextEvent:v7];

  [(ClientCommonAudioProfile *)self initPendingStateTransition];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001BC34;
  block[3] = &unk_100094CB8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
  v8 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[ClientCommonAudioProfile CAPSmActionUnlockAll]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "*** Exit CAP Action %s ***", buf, 0xCu);
  }
}

- (void)CAPSmActionUnlockNext
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[ClientCommonAudioProfile CAPSmActionUnlockNext]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "*** Enter CAP Action %s ***", buf, 0xCu);
  }

  v4 = [(ClientCommonAudioProfile *)self getNextAcceptor:1];
  if (v4)
  {
    v5 = v4;
    do
    {
      [v5 setIsLocked:0];
      [v5 setPendingStateTransition:{objc_msgSend(v5, "setCoordinatedSetLock:", 1)}];
      v6 = [(ClientCommonAudioProfile *)self getNextAcceptor:1];

      v5 = v6;
    }

    while (v6);
  }

  if ([(ClientCommonAudioProfile *)self procedureStatus]== 15 || ![(ClientCommonAudioProfile *)self anyAcceptorPendingStateTransition])
  {
    currentCAPProcedure = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [currentCAPProcedure setNextEvent:5];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001BE70;
    block[3] = &unk_100094CB8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
    v7 = qword_1000A9FE0;
    if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    v12 = "[ClientCommonAudioProfile CAPSmActionUnlockNext]";
    v8 = "*** Exit CAP Action %s ***";
  }

  else
  {
    v7 = qword_1000A9FE0;
    if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    v12 = "[ClientCommonAudioProfile CAPSmActionUnlockNext]";
    v8 = "*** Exit CAP Action %s - waiting for all Acceptors to transition to Unlocked state ***";
  }

  _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 0xCu);
}

- (BOOL)coordinatedSetMembersUnLocked
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  orderedSet = [(ClientCommonAudioProfile *)self orderedSet];
  v3 = [orderedSet countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v19;
    *&v4 = 138412546;
    v17 = v4;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(orderedSet);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        getCoordinatedSetLock = [v8 getCoordinatedSetLock];
        v10 = qword_1000A9FE0;
        if (getCoordinatedSetLock == 2)
        {
          if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
          {
            sub_10005C558(v10);
          }

          v15 = 0;
          goto LABEL_15;
        }

        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
        {
          v11 = v10;
          peripheral = [v8 peripheral];
          identifier = [peripheral identifier];
          getCoordinatedSetMemberRank = [v8 getCoordinatedSetMemberRank];
          *buf = v17;
          v23 = identifier;
          v24 = 1024;
          v25 = getCoordinatedSetMemberRank;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Ordered Access: member %@ unlocked with rank %u", buf, 0x12u);
        }
      }

      v5 = [orderedSet countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v15 = 1;
LABEL_15:

  return v15;
}

- (BOOL)useCSIPOrderedAccessProcedure
{
  if (![(ClientCommonAudioProfile *)self useCSIPOrderedAccess])
  {
    goto LABEL_6;
  }

  currentCAPProcedure = [(ClientCommonAudioProfile *)self currentCAPProcedure];
  if ([currentCAPProcedure currentStateMachine] == &unk_1000A9AC8)
  {
LABEL_13:

    return 1;
  }

  currentCAPProcedure2 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
  if ([currentCAPProcedure2 currentStateMachine] == &unk_1000A9BF0)
  {
LABEL_12:

    goto LABEL_13;
  }

  currentCAPProcedure3 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
  if ([currentCAPProcedure3 currentStateMachine] == &unk_1000A9C20)
  {

    goto LABEL_12;
  }

  currentCAPProcedure4 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
  currentStateMachine = [currentCAPProcedure4 currentStateMachine];

  if (currentStateMachine == &unk_1000A9C50)
  {
    return 1;
  }

LABEL_6:
  if (![(ClientCommonAudioProfile *)self useCSIPOrderedAccessWithCaptureRendering])
  {
    return 0;
  }

  currentCAPProcedure = [(ClientCommonAudioProfile *)self currentCAPProcedure];
  if ([currentCAPProcedure currentStateMachine] == &unk_1000A9B78)
  {
    goto LABEL_13;
  }

  currentCAPProcedure2 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
  if ([currentCAPProcedure2 currentStateMachine] == &unk_1000A9BA0)
  {
    goto LABEL_12;
  }

  currentCAPProcedure5 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
  currentStateMachine2 = [currentCAPProcedure5 currentStateMachine];

  return currentStateMachine2 == &unk_1000A9B28;
}

- (unsigned)getCAPProcType
{
  currentCAPProcedure = [(ClientCommonAudioProfile *)self currentCAPProcedure];
  currentStateMachine = [currentCAPProcedure currentStateMachine];

  if (currentStateMachine == &unk_1000A9AC8)
  {
    return [(ClientCommonAudioProfile *)self cigToJoin]!= 255;
  }

  currentCAPProcedure2 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
  currentStateMachine2 = [currentCAPProcedure2 currentStateMachine];

  if (currentStateMachine2 == &unk_1000A9BF0)
  {
    return 2;
  }

  currentCAPProcedure3 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
  currentStateMachine3 = [currentCAPProcedure3 currentStateMachine];

  if (currentStateMachine3 == &unk_1000A9C20)
  {
    return 3;
  }

  currentCAPProcedure4 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
  currentStateMachine4 = [currentCAPProcedure4 currentStateMachine];

  if (currentStateMachine4 == &unk_1000A9C50)
  {
    return 4;
  }

  currentCAPProcedure5 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
  currentStateMachine5 = [currentCAPProcedure5 currentStateMachine];

  if (currentStateMachine5 == &unk_1000A9B78)
  {
    return 5;
  }

  currentCAPProcedure6 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
  currentStateMachine6 = [currentCAPProcedure6 currentStateMachine];

  if (currentStateMachine6 == &unk_1000A9BA0)
  {
    return 7;
  }

  currentCAPProcedure7 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
  currentStateMachine7 = [currentCAPProcedure7 currentStateMachine];

  if (currentStateMachine7 == &unk_1000A9B28)
  {
    return 8;
  }

  else
  {
    return -1;
  }
}

- (void)CAPSmActionProcedureComplete
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315138;
    v19 = "[ClientCommonAudioProfile CAPSmActionProcedureComplete]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "*** Enter CAP Action %s ***", &v18, 0xCu);
  }

  v4 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Canceling procedureTimeout timer", &v18, 2u);
  }

  [(ClientCommonAudioProfile *)self cancelProcedureTimeoutTimer];
  getCAPProcType = [(ClientCommonAudioProfile *)self getCAPProcType];
  v22[0] = @"kLEAudioXPCMsgArgCAPProcedureType";
  v6 = [NSNumber numberWithUnsignedChar:getCAPProcType];
  v22[1] = @"kLEAudioXPCMsgArgCAPProcedureStatus";
  v23[0] = v6;
  v7 = [NSNumber numberWithUnsignedChar:[(ClientCommonAudioProfile *)self procedureStatus]];
  v23[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];

  v9 = +[LEAudioXPCListener instance];
  sessionID = [(ClientCommonAudioProfile *)self sessionID];
  [v9 notifyCAPProcedureComplete:sessionID withInfo:v8];

  currentCAPProcedure = [(ClientCommonAudioProfile *)self currentCAPProcedure];
  [currentCAPProcedure setCurrentState:0];

  currentCAPProcedure2 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
  [currentCAPProcedure2 setNextEvent:0];

  [(ClientCommonAudioProfile *)self setCurrentCAPProcedure:0];
  [(ClientCommonAudioProfile *)self clearPendingStateTransition];
  [(ClientCommonAudioProfile *)self setOrderedSet:0];
  v13 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = [ClientCommonAudioProfile procTypeToString:getCAPProcType];
    v16 = [ClientCommonAudioProfile statusToString:[(ClientCommonAudioProfile *)self procedureStatus]];
    v18 = 138412546;
    v19 = v15;
    v20 = 2112;
    v21 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "CAP %@ procedure completed with status: %@", &v18, 0x16u);
  }

  [(ClientCommonAudioProfile *)self checkNextUpcomingProcedure];
  v17 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315138;
    v19 = "[ClientCommonAudioProfile CAPSmActionProcedureComplete]";
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "*** Exit CAP Action %s ***", &v18, 0xCu);
  }
}

- (void)CAPSmActionValidate
{
  v3 = &qword_1000A9FE0;
  v4 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&v63 = "[ClientCommonAudioProfile CAPSmActionValidate]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "*** Enter CAP Action %s ***", buf, 0xCu);
  }

  cigToJoin = [(ClientCommonAudioProfile *)self cigToJoin];
  connIsoGroup = [(ClientCommonAudioProfile *)self connIsoGroup];
  cigParams = [connIsoGroup cigParams];
  cigID = [cigParams cigID];
  selfCopy = self;
  if (cigToJoin == 255)
  {
    if (cigID == 255)
    {
    }

    else
    {
      connIsoGroup2 = [(ClientCommonAudioProfile *)self connIsoGroup];
      cigParams2 = [connIsoGroup2 cigParams];
      cigID2 = [cigParams2 cigID];
      cigID3 = [(ClientCommonAudioProfile *)selfCopy cigID];

      v13 = cigID2 == cigID3;
      self = selfCopy;
      if (!v13)
      {
        v18 = qword_1000A9FE0;
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v18;
          cigID4 = [(ClientCommonAudioProfile *)selfCopy cigID];
          connIsoGroup3 = [(ClientCommonAudioProfile *)selfCopy connIsoGroup];
          cigParams3 = [connIsoGroup3 cigParams];
          cigID5 = [cigParams3 cigID];
          *buf = 67109376;
          LODWORD(v63) = cigID4;
          WORD2(v63) = 1024;
          *(&v63 + 6) = cigID5;
          v24 = "Requested CIG ID %u does not match CAP CIG ID %u";
LABEL_15:
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v24, buf, 0xEu);
        }

LABEL_16:
        v28 = 19;
LABEL_37:
        [(ClientCommonAudioProfile *)self setProcedureStatus:v28];
        v52 = 9;
        goto LABEL_38;
      }
    }

    connIsoGroup4 = [(ClientCommonAudioProfile *)self connIsoGroup];
    cisSet = [connIsoGroup4 cisSet];
    v31 = [cisSet count];

    if (v31)
    {
      v32 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        v33 = v32;
        connIsoGroup5 = [(ClientCommonAudioProfile *)self connIsoGroup];
        cigParams4 = [connIsoGroup5 cigParams];
        cigID6 = [cigParams4 cigID];
        *buf = 67109376;
        LODWORD(v63) = cigID6;
        WORD2(v63) = 2048;
        *(&v63 + 6) = v31;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "CIG ID %u already set up with %lu CISes", buf, 0x12u);
      }

      v28 = 17;
      goto LABEL_37;
    }
  }

  else
  {
    if (cigID == 255)
    {

      goto LABEL_13;
    }

    connIsoGroup6 = [(ClientCommonAudioProfile *)self connIsoGroup];
    cigParams5 = [connIsoGroup6 cigParams];
    cigID7 = [cigParams5 cigID];
    cigToJoin2 = [(ClientCommonAudioProfile *)selfCopy cigToJoin];

    v13 = cigID7 == cigToJoin2;
    self = selfCopy;
    if (!v13)
    {
LABEL_13:
      v25 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v25;
        cigToJoin3 = [(ClientCommonAudioProfile *)self cigToJoin];
        connIsoGroup3 = [(ClientCommonAudioProfile *)self connIsoGroup];
        cigParams3 = [connIsoGroup3 cigParams];
        cigID8 = [cigParams3 cigID];
        *buf = 67109376;
        LODWORD(v63) = cigToJoin3;
        WORD2(v63) = 1024;
        *(&v63 + 6) = cigID8;
        v24 = "Join CIG ID %u does not match active CIG ID %u";
        goto LABEL_15;
      }

      goto LABEL_16;
    }
  }

  getAudioConfigList = [(ClientCommonAudioProfile *)self getAudioConfigList];
  v38 = [getAudioConfigList count];
  v39 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&v63 = v38;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Number of audio configs: %lu", buf, 0xCu);
  }

  if (!v38)
  {

    v28 = 16;
    goto LABEL_37;
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v40 = getAudioConfigList;
  v41 = [v40 countByEnumeratingWithState:&v58 objects:v64 count:16];
  if (v41)
  {
    v43 = v41;
    v44 = *v59;
    *&v42 = 67109632;
    v55 = v42;
    do
    {
      for (i = 0; i != v43; i = i + 1)
      {
        if (*v59 != v44)
        {
          objc_enumerationMutation(v40);
        }

        v46 = *(*(&v58 + 1) + 8 * i);
        v28 = [(ClientCommonAudioProfile *)self matchConnectedDevices:v46, v55];
        v47 = *v3;
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
        {
          v48 = v47;
          v49 = v3;
          sinkAudioLocMask = [v46 sinkAudioLocMask];
          sourceAudioLocMask = [v46 sourceAudioLocMask];
          *buf = v55;
          LODWORD(v63) = sinkAudioLocMask;
          v3 = v49;
          self = selfCopy;
          WORD2(v63) = 1024;
          *(&v63 + 6) = sourceAudioLocMask;
          WORD5(v63) = 1024;
          HIDWORD(v63) = v28;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Audio config sinkAudioLocMask: 0x%02x, sourceAudioLocMask: 0x%02x, match status: 0x%02x", buf, 0x14u);
        }
      }

      v43 = [v40 countByEnumeratingWithState:&v58 objects:v64 count:16];
    }

    while (v43);

    if (v28)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v52 = 8;
LABEL_38:
  currentCAPProcedure = [(ClientCommonAudioProfile *)self currentCAPProcedure];
  [currentCAPProcedure setNextEvent:v52];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001CCA8;
  block[3] = &unk_100094CB8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
  v54 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&v63 = "[ClientCommonAudioProfile CAPSmActionValidate]";
    _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "*** Exit CAP Action %s ***", buf, 0xCu);
  }
}

- (void)CAPSmActionConfigCodecNext
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v28 = "[ClientCommonAudioProfile CAPSmActionConfigCodecNext]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "*** Enter CAP Action %s ***", buf, 0xCu);
  }

  v4 = [(ClientCommonAudioProfile *)self getNextAcceptor:0];
  if (v4)
  {
    v6 = v4;
    *&v5 = 67109120;
    v20 = v5;
    do
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      unicastServerAudioConfig = [(ClientCommonAudioProfile *)self unicastServerAudioConfig];
      v8 = [unicastServerAudioConfig countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v8)
      {
        v9 = *v23;
        while (2)
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v23 != v9)
            {
              objc_enumerationMutation(unicastServerAudioConfig);
            }

            v11 = *(*(&v22 + 1) + 8 * i);
            unicastServerAudioConfig2 = [(ClientCommonAudioProfile *)self unicastServerAudioConfig];
            v13 = [unicastServerAudioConfig2 objectForKey:v11];

            if (v13 == v6)
            {
              v8 = v11;
              goto LABEL_15;
            }
          }

          v8 = [unicastServerAudioConfig countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:

      v14 = [v6 sendCodecConfigRequestWithAudioConfig:v8];
      v15 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v20;
        LODWORD(v28) = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Number of ASE(s) pending transition to Codec Config state: %u", buf, 8u);
      }

      [v6 setPendingStateTransition:v14 != 0];
      v16 = [(ClientCommonAudioProfile *)self getNextAcceptor:0];

      v6 = v16;
    }

    while (v16);
  }

  if ([(ClientCommonAudioProfile *)self anyAcceptorPendingStateTransition])
  {
    v17 = qword_1000A9FE0;
    if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    v28 = "[ClientCommonAudioProfile CAPSmActionConfigCodecNext]";
    v18 = "*** Exit CAP Action %s - waiting for all Acceptors to transition to Codec Config state ***";
  }

  else
  {
    currentCAPProcedure = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [currentCAPProcedure setNextEvent:11];

    [(ClientCommonAudioProfile *)self initPendingStateTransition];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001D018;
    block[3] = &unk_100094CB8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
    v17 = qword_1000A9FE0;
    if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    v28 = "[ClientCommonAudioProfile CAPSmActionConfigCodecNext]";
    v18 = "*** Exit CAP Action %s ***";
  }

  _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
}

- (void)CAPSmActionConfigCIG
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[ClientCommonAudioProfile CAPSmActionConfigCIG]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "*** Enter CAP Action %s ***", &v5, 0xCu);
  }

  if ([(ClientCommonAudioProfile *)self cigToJoin]== 255)
  {
    [(ClientCommonAudioProfile *)self createCIG];
  }

  else
  {
    [(ClientCommonAudioProfile *)self joinCIG];
  }

  v4 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[ClientCommonAudioProfile CAPSmActionConfigCIG]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "*** Exit CAP Action %s ***", &v5, 0xCu);
  }
}

- (void)CAPSmActionConfigQoSNext
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[ClientCommonAudioProfile CAPSmActionConfigQoSNext]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "*** Enter CAP Action %s ***", buf, 0xCu);
  }

  v4 = [(ClientCommonAudioProfile *)self getNextAcceptor:0];
  if (v4)
  {
    v6 = v4;
    *&v5 = 67109120;
    v13 = v5;
    do
    {
      sendQoSConfigRequest = [v6 sendQoSConfigRequest];
      v8 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v13;
        LODWORD(v16) = sendQoSConfigRequest;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Number of ASE(s) pending transition to QoS Config state: %u", buf, 8u);
      }

      [v6 setPendingStateTransition:sendQoSConfigRequest != 0];
      v9 = [(ClientCommonAudioProfile *)self getNextAcceptor:0];

      v6 = v9;
    }

    while (v9);
  }

  if ([(ClientCommonAudioProfile *)self anyAcceptorPendingStateTransition])
  {
    v10 = qword_1000A9FE0;
    if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    v16 = "[ClientCommonAudioProfile CAPSmActionConfigQoSNext]";
    v11 = "*** Exit CAP Action %s - waiting for all Acceptors to transition to QoS Config state ***";
  }

  else
  {
    currentCAPProcedure = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [currentCAPProcedure setNextEvent:16];

    [(ClientCommonAudioProfile *)self initPendingStateTransition];
    [(ClientCommonAudioProfile *)self setupCIGForPublishedHALDevice];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001D3D8;
    block[3] = &unk_100094CB8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
    v10 = qword_1000A9FE0;
    if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    v16 = "[ClientCommonAudioProfile CAPSmActionConfigQoSNext]";
    v11 = "*** Exit CAP Action %s ***";
  }

  _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);
}

- (void)CAPSmActionSetMetadata
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[ClientCommonAudioProfile CAPSmActionSetMetadata]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "*** Enter CAP Action %s ***", buf, 0xCu);
  }

  currentCAPProcedure = [(ClientCommonAudioProfile *)self currentCAPProcedure];
  [currentCAPProcedure setNextEvent:18];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001D558;
  block[3] = &unk_100094CB8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[ClientCommonAudioProfile CAPSmActionSetMetadata]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "*** Exit CAP Action %s ***", buf, 0xCu);
  }
}

- (void)CAPSmActionEnableNext
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[ClientCommonAudioProfile CAPSmActionEnableNext]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "*** Enter CAP Action %s ***", buf, 0xCu);
  }

  v4 = [(ClientCommonAudioProfile *)self getNextAcceptor:0];
  if (v4)
  {
    v6 = v4;
    *&v5 = 67109120;
    v13 = v5;
    do
    {
      v7 = [v6 sendEnableRequestWithSnkAseID:&__NSArray0__struct WithSrcAseID:{&__NSArray0__struct, v13}];
      v8 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v13;
        LODWORD(v16) = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Number of ASE(s) pending transition to Enabling state: %u", buf, 8u);
      }

      [v6 setPendingStateTransition:v7 != 0];
      v9 = [(ClientCommonAudioProfile *)self getNextAcceptor:0];

      v6 = v9;
    }

    while (v9);
  }

  if ([(ClientCommonAudioProfile *)self anyAcceptorPendingStateTransition])
  {
    v10 = qword_1000A9FE0;
    if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    v16 = "[ClientCommonAudioProfile CAPSmActionEnableNext]";
    v11 = "*** Exit CAP Action %s - waiting for all Acceptors to transition to Enabling state ***";
  }

  else
  {
    currentCAPProcedure = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [currentCAPProcedure setNextEvent:21];

    [(ClientCommonAudioProfile *)self initPendingStateTransition];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001D7FC;
    block[3] = &unk_100094CB8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
    v10 = qword_1000A9FE0;
    if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    v16 = "[ClientCommonAudioProfile CAPSmActionEnableNext]";
    v11 = "*** Exit CAP Action %s ***";
  }

  _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);
}

- (void)CAPSmActionOpenCIS
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[ClientCommonAudioProfile CAPSmActionOpenCIS]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "*** Enter CAP Action %s ***", buf, 0xCu);
  }

  connectCISforCIG = [(ClientCommonAudioProfile *)self connectCISforCIG];
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v10) = connectCISforCIG;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%u number of CIS(es) attempting to establish", buf, 8u);
  }

  if (!connectCISforCIG)
  {
    currentCAPProcedure = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [currentCAPProcedure setNextEvent:23];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001D9D4;
    block[3] = &unk_100094CB8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  v7 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[ClientCommonAudioProfile CAPSmActionOpenCIS]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "*** Exit CAP Action %s ***", buf, 0xCu);
  }
}

- (void)CAPSmActionReadyRxStartNext
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[ClientCommonAudioProfile CAPSmActionReadyRxStartNext]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "*** Enter CAP Action %s ***", buf, 0xCu);
  }

  v4 = [(ClientCommonAudioProfile *)self getNextAcceptor:0];
  if (v4)
  {
    v6 = v4;
    *&v5 = 67109120;
    v13 = v5;
    do
    {
      sendReceiverStartReadyRequest = [v6 sendReceiverStartReadyRequest];
      v8 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v13;
        LODWORD(v16) = sendReceiverStartReadyRequest;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Number of ASE(s) pending transition to Streaming state: %u", buf, 8u);
      }

      [v6 setPendingStateTransition:sendReceiverStartReadyRequest != 0];
      v9 = [(ClientCommonAudioProfile *)self getNextAcceptor:0];

      v6 = v9;
    }

    while (v9);
  }

  if ([(ClientCommonAudioProfile *)self anyAcceptorPendingStateTransition])
  {
    v10 = qword_1000A9FE0;
    if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    v16 = "[ClientCommonAudioProfile CAPSmActionReadyRxStartNext]";
    v11 = "*** Exit CAP Action %s - waiting for all Acceptors to transition to Streaming state ***";
  }

  else
  {
    currentCAPProcedure = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [currentCAPProcedure setNextEvent:26];

    [(ClientCommonAudioProfile *)self initPendingStateTransition];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001DC68;
    block[3] = &unk_100094CB8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
    v10 = qword_1000A9FE0;
    if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    v16 = "[ClientCommonAudioProfile CAPSmActionReadyRxStartNext]";
    v11 = "*** Exit CAP Action %s ***";
  }

  _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);
}

- (void)CAPSmActionDisableNext
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[ClientCommonAudioProfile CAPSmActionDisableNext]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "*** Enter CAP Action %s ***", buf, 0xCu);
  }

  v4 = [(ClientCommonAudioProfile *)self getNextAcceptor:0];
  if (v4)
  {
    v6 = v4;
    *&v5 = 67109120;
    v13 = v5;
    do
    {
      sendDisableRequest = [v6 sendDisableRequest];
      v8 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v13;
        LODWORD(v16) = sendDisableRequest;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Number of ASE(s) pending transition to Disabling or QoS Config state: %u", buf, 8u);
      }

      [v6 setPendingStateTransition:sendDisableRequest != 0];
      v9 = [(ClientCommonAudioProfile *)self getNextAcceptor:0];

      v6 = v9;
    }

    while (v9);
  }

  if ([(ClientCommonAudioProfile *)self anyAcceptorPendingStateTransition])
  {
    v10 = qword_1000A9FE0;
    if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    v16 = "[ClientCommonAudioProfile CAPSmActionDisableNext]";
    v11 = "*** Exit CAP Action %s waiting t for all Acceptors to transition to Disabling or QoS Config state ***";
  }

  else
  {
    currentCAPProcedure = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [currentCAPProcedure setNextEvent:36];

    [(ClientCommonAudioProfile *)self initPendingStateTransition];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001DEFC;
    block[3] = &unk_100094CB8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
    v10 = qword_1000A9FE0;
    if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    v16 = "[ClientCommonAudioProfile CAPSmActionDisableNext]";
    v11 = "*** Exit CAP Action %s ***";
  }

  _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);
}

- (void)CAPSmActionReadyRxStopNext
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[ClientCommonAudioProfile CAPSmActionReadyRxStopNext]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "*** Enter CAP Action %s ***", buf, 0xCu);
  }

  v4 = [(ClientCommonAudioProfile *)self getNextAcceptor:0];
  if (v4)
  {
    v6 = v4;
    *&v5 = 67109120;
    v13 = v5;
    do
    {
      sendReceiverStopReadyRequest = [v6 sendReceiverStopReadyRequest];
      v8 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v13;
        LODWORD(v16) = sendReceiverStopReadyRequest;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Number of ASE(s) pending transition to QoS Configured state: %u", buf, 8u);
      }

      [v6 setPendingStateTransition:sendReceiverStopReadyRequest != 0];
      v9 = [(ClientCommonAudioProfile *)self getNextAcceptor:0];

      v6 = v9;
    }

    while (v9);
  }

  if ([(ClientCommonAudioProfile *)self anyAcceptorPendingStateTransition])
  {
    v10 = qword_1000A9FE0;
    if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    v16 = "[ClientCommonAudioProfile CAPSmActionReadyRxStopNext]";
    v11 = "*** Exit CAP Action %s - waiting for all Acceptors to transition to QoS Config state ***";
  }

  else
  {
    currentCAPProcedure = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [currentCAPProcedure setNextEvent:39];

    [(ClientCommonAudioProfile *)self initPendingStateTransition];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001E190;
    block[3] = &unk_100094CB8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
    v10 = qword_1000A9FE0;
    if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    v16 = "[ClientCommonAudioProfile CAPSmActionReadyRxStopNext]";
    v11 = "*** Exit CAP Action %s ***";
  }

  _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);
}

- (void)CAPSmActionMatchAvailability
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v27 = "[ClientCommonAudioProfile CAPSmActionMatchAvailability]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "*** Enter CAP Action %s ***", buf, 0xCu);
  }

  getAudioConfigList = [(ClientCommonAudioProfile *)self getAudioConfigList];
  v5 = [(ClientCommonAudioProfile *)self getNextAcceptor:0];
  if (v5)
  {
    currentCAPProcedure2 = v5;
    v6 = 0uLL;
    do
    {
      v23 = v6;
      v24 = v6;
      v21 = v6;
      v22 = v6;
      v8 = getAudioConfigList;
      v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v22;
        while (2)
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v22 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v21 + 1) + 8 * i);
            matchedAcceptor = [v13 matchedAcceptor];

            if (matchedAcceptor == currentCAPProcedure2)
            {
              v15 = [currentCAPProcedure2 matchContextTypeAvailabilityForConfig:v13];
              if (v15)
              {
                v17 = v15;

                [(ClientCommonAudioProfile *)self setProcedureStatus:v17];
                currentCAPProcedure = [(ClientCommonAudioProfile *)self currentCAPProcedure];
                [currentCAPProcedure setNextEvent:31];

                goto LABEL_17;
              }
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      v16 = [(ClientCommonAudioProfile *)self getNextAcceptor:0];

      currentCAPProcedure2 = v16;
      v6 = 0uLL;
    }

    while (v16);
  }

  currentCAPProcedure2 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
  [currentCAPProcedure2 setNextEvent:30];
LABEL_17:

  [(ClientCommonAudioProfile *)self initPendingStateTransition];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001E470;
  block[3] = &unk_100094CB8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
  v19 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v27 = "[ClientCommonAudioProfile CAPSmActionMatchAvailability]";
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "*** Exit CAP Action %s ***", buf, 0xCu);
  }
}

- (void)CAPSmActionUpdateMetadataNext
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[ClientCommonAudioProfile CAPSmActionUpdateMetadataNext]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "*** Enter CAP Action %s ***", buf, 0xCu);
  }

  v4 = [(ClientCommonAudioProfile *)self getNextAcceptor:0];
  if (v4)
  {
    v6 = v4;
    *&v5 = 67109120;
    v13 = v5;
    do
    {
      v7 = [(ClientCommonAudioProfile *)self updateMetadataForDevice:v6, v13];
      v8 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v13;
        LODWORD(v16) = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Number of ASE(s) pending transition to Enabling or Streaming state: %u", buf, 8u);
      }

      [v6 setPendingStateTransition:v7 != 0];
      v9 = [(ClientCommonAudioProfile *)self getNextAcceptor:0];

      v6 = v9;
    }

    while (v9);
  }

  if ([(ClientCommonAudioProfile *)self anyAcceptorPendingStateTransition])
  {
    v10 = qword_1000A9FE0;
    if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    v16 = "[ClientCommonAudioProfile CAPSmActionUpdateMetadataNext]";
    v11 = "*** Exit CAP Action %s - waiting for all Acceptors to transition to Enabling or Streaming state ***";
  }

  else
  {
    currentCAPProcedure = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [currentCAPProcedure setNextEvent:33];

    [(ClientCommonAudioProfile *)self initPendingStateTransition];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001E708;
    block[3] = &unk_100094CB8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
    v10 = qword_1000A9FE0;
    if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    v16 = "[ClientCommonAudioProfile CAPSmActionUpdateMetadataNext]";
    v11 = "*** Exit CAP Action %s ***";
  }

  _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);
}

- (void)CAPSmActionReleaseNext
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[ClientCommonAudioProfile CAPSmActionReleaseNext]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "*** Enter CAP Action %s ***", buf, 0xCu);
  }

  v4 = [(ClientCommonAudioProfile *)self getNextAcceptor:0];
  if (v4)
  {
    v6 = v4;
    *&v5 = 67109120;
    v13 = v5;
    do
    {
      sendReleaseRequest = [v6 sendReleaseRequest];
      v8 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v13;
        LODWORD(v16) = sendReleaseRequest;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Number of ASE(s) pending transition to Releasing state: %u", buf, 8u);
      }

      [v6 setPendingStateTransition:sendReleaseRequest != 0];
      v9 = [(ClientCommonAudioProfile *)self getNextAcceptor:0];

      v6 = v9;
    }

    while (v9);
  }

  if ([(ClientCommonAudioProfile *)self anyAcceptorPendingStateTransition])
  {
    v10 = qword_1000A9FE0;
    if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    v16 = "[ClientCommonAudioProfile CAPSmActionReleaseNext]";
    v11 = "*** Exit CAP Action %s - waiting for all Acceptors to transition to Releasing state ***";
  }

  else
  {
    currentCAPProcedure = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [currentCAPProcedure setNextEvent:42];

    [(ClientCommonAudioProfile *)self initPendingStateTransition];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001E99C;
    block[3] = &unk_100094CB8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
    v10 = qword_1000A9FE0;
    if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    v16 = "[ClientCommonAudioProfile CAPSmActionReleaseNext]";
    v11 = "*** Exit CAP Action %s ***";
  }

  _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);
}

- (void)CAPSmActionChangeVolumeNext
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[ClientCommonAudioProfile CAPSmActionChangeVolumeNext]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "*** Enter CAP Action %s ***", buf, 0xCu);
  }

  v4 = [(ClientCommonAudioProfile *)self getNextAcceptor:0];
  if (v4)
  {
    v6 = v4;
    *&v5 = 138412546;
    v17 = v5;
    do
    {
      currentCAPProcedure = [(ClientCommonAudioProfile *)self currentCAPProcedure];
      [v6 setPendingStateTransition:{objc_msgSend(v6, "setAbsoluteVolume:", objc_msgSend(currentCAPProcedure, "volume"))}];

      v8 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
        if ([v6 pendingStateTransition])
        {
          v10 = @"was";
        }

        else
        {
          v10 = @"wasn't";
        }

        currentCAPProcedure2 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
        volume = [currentCAPProcedure2 volume];
        *buf = v17;
        v20 = v10;
        v21 = 1024;
        v22 = volume;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Change Volume %@ sent for volume %d", buf, 0x12u);
      }

      v13 = [(ClientCommonAudioProfile *)self getNextAcceptor:0];

      v6 = v13;
    }

    while (v13);
  }

  if ([(ClientCommonAudioProfile *)self anyAcceptorPendingStateTransition])
  {
    v14 = qword_1000A9FE0;
    if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    v20 = "[ClientCommonAudioProfile CAPSmActionChangeVolumeNext]";
    v15 = "*** Exit CAP Action %s - waiting for all Acceptors to update their volume ***";
  }

  else
  {
    currentCAPProcedure3 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [currentCAPProcedure3 setNextEvent:45];

    [(ClientCommonAudioProfile *)self initPendingStateTransition];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001EC9C;
    block[3] = &unk_100094CB8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
    v14 = qword_1000A9FE0;
    if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    v20 = "[ClientCommonAudioProfile CAPSmActionChangeVolumeNext]";
    v15 = "*** Exit CAP Action %s ***";
  }

  _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
}

- (void)CAPSmActionChangeVolumeOffsetNext
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "[ClientCommonAudioProfile CAPSmActionChangeVolumeOffsetNext]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "*** Enter CAP Action %s ***", buf, 0xCu);
  }

  v4 = [(ClientCommonAudioProfile *)self getNextAcceptor:0];
  if (v4)
  {
    v6 = v4;
    *&v5 = 138412802;
    v21 = v5;
    do
    {
      currentCAPProcedure = [(ClientCommonAudioProfile *)self currentCAPProcedure];
      volumeOffset = [currentCAPProcedure volumeOffset];
      currentCAPProcedure2 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
      [v6 setPendingStateTransition:{objc_msgSend(v6, "setVolumeOffset:audioLocation:", volumeOffset, objc_msgSend(currentCAPProcedure2, "audioLocation"))}];

      v10 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
        if ([v6 pendingStateTransition])
        {
          v12 = @"was";
        }

        else
        {
          v12 = @"wasn't";
        }

        currentCAPProcedure3 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
        volumeOffset2 = [currentCAPProcedure3 volumeOffset];
        currentCAPProcedure4 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
        audioLocation = [currentCAPProcedure4 audioLocation];
        *buf = v21;
        v24 = v12;
        v25 = 1024;
        v26 = volumeOffset2;
        v27 = 1024;
        v28 = audioLocation;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Change Volume Offset %@ sent for volume offset %d for audio location %d", buf, 0x18u);
      }

      v17 = [(ClientCommonAudioProfile *)self getNextAcceptor:0];

      v6 = v17;
    }

    while (v17);
  }

  if ([(ClientCommonAudioProfile *)self anyAcceptorPendingStateTransition])
  {
    v18 = qword_1000A9FE0;
    if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    v24 = "[ClientCommonAudioProfile CAPSmActionChangeVolumeOffsetNext]";
    v19 = "*** Exit CAP Action %s - waiting for all Acceptors to update their volume offset ***";
  }

  else
  {
    currentCAPProcedure5 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [currentCAPProcedure5 setNextEvent:51];

    [(ClientCommonAudioProfile *)self initPendingStateTransition];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001EFDC;
    block[3] = &unk_100094CB8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
    v18 = qword_1000A9FE0;
    if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    v24 = "[ClientCommonAudioProfile CAPSmActionChangeVolumeOffsetNext]";
    v19 = "*** Exit CAP Action %s ***";
  }

  _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 0xCu);
}

- (void)CAPSmActionChangeVolumeMuteNext
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[ClientCommonAudioProfile CAPSmActionChangeVolumeMuteNext]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "*** Enter CAP Action %s ***", buf, 0xCu);
  }

  v4 = [(ClientCommonAudioProfile *)self getNextAcceptor:0];
  if (v4)
  {
    v6 = v4;
    *&v5 = 138412546;
    v17 = v5;
    do
    {
      currentCAPProcedure = [(ClientCommonAudioProfile *)self currentCAPProcedure];
      [v6 setPendingStateTransition:{objc_msgSend(v6, "setVolumeMute:", objc_msgSend(currentCAPProcedure, "volumeMute") != 0)}];

      v8 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
        if ([v6 pendingStateTransition])
        {
          v10 = @"was";
        }

        else
        {
          v10 = @"wasn't";
        }

        currentCAPProcedure2 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
        volumeMute = [currentCAPProcedure2 volumeMute];
        *buf = v17;
        v20 = v10;
        v21 = 1024;
        v22 = volumeMute;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Change Volume Mute State %@ sent for mute %d", buf, 0x12u);
      }

      v13 = [(ClientCommonAudioProfile *)self getNextAcceptor:0];

      v6 = v13;
    }

    while (v13);
  }

  if ([(ClientCommonAudioProfile *)self anyAcceptorPendingStateTransition])
  {
    v14 = qword_1000A9FE0;
    if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    v20 = "[ClientCommonAudioProfile CAPSmActionChangeVolumeMuteNext]";
    v15 = "*** Exit CAP Action %s - waiting for all Acceptors to update their volume mute ***";
  }

  else
  {
    currentCAPProcedure3 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [currentCAPProcedure3 setNextEvent:47];

    [(ClientCommonAudioProfile *)self initPendingStateTransition];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001F2E0;
    block[3] = &unk_100094CB8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
    v14 = qword_1000A9FE0;
    if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    v20 = "[ClientCommonAudioProfile CAPSmActionChangeVolumeMuteNext]";
    v15 = "*** Exit CAP Action %s ***";
  }

  _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
}

- (void)CAPSmActionMicMuteNext
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[ClientCommonAudioProfile CAPSmActionMicMuteNext]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "*** Enter CAP Action %s ***", buf, 0xCu);
  }

  v4 = [(ClientCommonAudioProfile *)self getNextAcceptor:0];
  if (v4)
  {
    v6 = v4;
    *&v5 = 138412546;
    v17 = v5;
    do
    {
      currentCAPProcedure = [(ClientCommonAudioProfile *)self currentCAPProcedure];
      [v6 setPendingStateTransition:{objc_msgSend(v6, "setMicrophoneMute:", objc_msgSend(currentCAPProcedure, "microphoneMute"))}];

      v8 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
        if ([v6 pendingStateTransition])
        {
          v10 = @"was";
        }

        else
        {
          v10 = @"wasn't";
        }

        currentCAPProcedure2 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
        microphoneMute = [currentCAPProcedure2 microphoneMute];
        *buf = v17;
        v20 = v10;
        v21 = 1024;
        v22 = microphoneMute;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Set Microphone Mute State %@ sent for mute %d", buf, 0x12u);
      }

      v13 = [(ClientCommonAudioProfile *)self getNextAcceptor:0];

      v6 = v13;
    }

    while (v13);
  }

  if ([(ClientCommonAudioProfile *)self anyAcceptorPendingStateTransition])
  {
    v14 = qword_1000A9FE0;
    if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    v20 = "[ClientCommonAudioProfile CAPSmActionMicMuteNext]";
    v15 = "*** Exit CAP Action %s - waiting for all Acceptors to update their microphone mute ***";
  }

  else
  {
    currentCAPProcedure3 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [currentCAPProcedure3 setNextEvent:49];

    [(ClientCommonAudioProfile *)self initPendingStateTransition];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001F5E0;
    block[3] = &unk_100094CB8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
    v14 = qword_1000A9FE0;
    if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    v20 = "[ClientCommonAudioProfile CAPSmActionMicMuteNext]";
    v15 = "*** Exit CAP Action %s ***";
  }

  _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
}

- (void)CAPSmActionChangeMicGainSettingNext
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "[ClientCommonAudioProfile CAPSmActionChangeMicGainSettingNext]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "*** Enter CAP Action %s ***", buf, 0xCu);
  }

  v4 = [(ClientCommonAudioProfile *)self getNextAcceptor:0];
  if (v4)
  {
    v6 = v4;
    *&v5 = 138412802;
    v21 = v5;
    do
    {
      currentCAPProcedure = [(ClientCommonAudioProfile *)self currentCAPProcedure];
      gainSetting = [currentCAPProcedure gainSetting];
      currentCAPProcedure2 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
      [v6 setPendingStateTransition:{objc_msgSend(v6, "setMicrophoneGainSetting:inputType:", gainSetting, objc_msgSend(currentCAPProcedure2, "inputType"))}];

      v10 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
        if ([v6 pendingStateTransition])
        {
          v12 = @"was";
        }

        else
        {
          v12 = @"wasn't";
        }

        currentCAPProcedure3 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
        gainSetting2 = [currentCAPProcedure3 gainSetting];
        currentCAPProcedure4 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
        inputType = [currentCAPProcedure4 inputType];
        *buf = v21;
        v24 = v12;
        v25 = 1024;
        v26 = gainSetting2;
        v27 = 1024;
        v28 = inputType;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Change Microphone Gain Setting %@ sent for gain setting %d for input type %d", buf, 0x18u);
      }

      v17 = [(ClientCommonAudioProfile *)self getNextAcceptor:0];

      v6 = v17;
    }

    while (v17);
  }

  if ([(ClientCommonAudioProfile *)self anyAcceptorPendingStateTransition])
  {
    v18 = qword_1000A9FE0;
    if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    v24 = "[ClientCommonAudioProfile CAPSmActionChangeMicGainSettingNext]";
    v19 = "*** Exit CAP Action %s - waiting for all Acceptors to update their volume ***";
  }

  else
  {
    currentCAPProcedure5 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [currentCAPProcedure5 setNextEvent:53];

    [(ClientCommonAudioProfile *)self initPendingStateTransition];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001F920;
    block[3] = &unk_100094CB8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
    v18 = qword_1000A9FE0;
    if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    v24 = "[ClientCommonAudioProfile CAPSmActionChangeMicGainSettingNext]";
    v19 = "*** Exit CAP Action %s ***";
  }

  _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 0xCu);
}

- (void)sendQoSConfigRequest
{
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001F9C0;
  v4[3] = &unk_100094F40;
  v4[4] = self;
  [coordinatedSet enumerateKeysAndObjectsUsingBlock:v4];

  [(ClientCommonAudioProfile *)self setupCIGForPublishedHALDevice];
}

- (void)sendEnableRequestWithSnkAseID:(id)d withSrcAseID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001FAA4;
  v11[3] = &unk_100094F68;
  v11[4] = self;
  v12 = dCopy;
  v13 = iDCopy;
  v9 = iDCopy;
  v10 = dCopy;
  [coordinatedSet enumerateKeysAndObjectsUsingBlock:v11];
}

- (void)sendReceiverStartReadyRequest
{
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001FB40;
  v4[3] = &unk_100094F40;
  v4[4] = self;
  [coordinatedSet enumerateKeysAndObjectsUsingBlock:v4];
}

- (void)sendReceiverStopReadyRequest
{
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001FBD4;
  v4[3] = &unk_100094F40;
  v4[4] = self;
  [coordinatedSet enumerateKeysAndObjectsUsingBlock:v4];
}

- (void)sendUpdateMetadataRequest
{
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001FC68;
  v4[3] = &unk_100094F40;
  v4[4] = self;
  [coordinatedSet enumerateKeysAndObjectsUsingBlock:v4];
}

- (void)sendReleaseRequest
{
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001FCFC;
  v4[3] = &unk_100094F40;
  v4[4] = self;
  [coordinatedSet enumerateKeysAndObjectsUsingBlock:v4];
}

- (void)sendDisableRequest
{
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001FD90;
  v4[3] = &unk_100094F40;
  v4[4] = self;
  [coordinatedSet enumerateKeysAndObjectsUsingBlock:v4];
}

- (void)disconnectCISRequestHandler
{
  v3 = objc_alloc_init(NSMutableArray);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  v5 = [coordinatedSet countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(coordinatedSet);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        coordinatedSet2 = [(ClientCommonAudioProfile *)self coordinatedSet];
        v11 = [coordinatedSet2 objectForKeyedSubscript:v9];

        getAudioStreamEndpoints = [v11 getAudioStreamEndpoints];
        [v3 addObjectsFromArray:getAudioStreamEndpoints];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [coordinatedSet countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (unsigned)matchAudioDevicesHandler
{
  getAudioConfigList = [(ClientCommonAudioProfile *)self getAudioConfigList];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [getAudioConfigList countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(getAudioConfigList);
        }

        v8 = [(ClientCommonAudioProfile *)self matchConnectedDevices:*(*(&v14 + 1) + 8 * i)];
      }

      v9 = v8;
      v5 = [getAudioConfigList countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v5);
  }

  else
  {
    v9 = 0;
  }

  v10 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = [ClientCommonAudioProfile statusToString:v9];
    *buf = 138412290;
    v19 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Match Device Status: %@", buf, 0xCu);
  }

  return v9;
}

- (id)getConnectedPeripherals
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  allValues = [coordinatedSet allValues];

  v6 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        getConfiguredASEInfo = [v10 getConfiguredASEInfo];
        if (getConfiguredASEInfo)
        {
          peripheral = [v10 peripheral];
          [v3 setObject:getConfiguredASEInfo forKey:peripheral];
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v3;
}

- (void)initPendingStateTransition
{
  [(ClientCommonAudioProfile *)self setCurrentAcceptorIndex:0];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  orderedSet = [(ClientCommonAudioProfile *)self orderedSet];
  v4 = [orderedSet countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(orderedSet);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        if (v8)
        {
          [v8 setPendingStateTransition:1];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [orderedSet countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "initPendingStateTransition called", v10, 2u);
  }
}

- (void)clearPendingStateTransition
{
  [(ClientCommonAudioProfile *)self setCurrentAcceptorIndex:0];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  orderedSet = [(ClientCommonAudioProfile *)self orderedSet];
  v4 = [orderedSet countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(orderedSet);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        if (v8)
        {
          [v8 setPendingStateTransition:0];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [orderedSet countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "clearPendingStateTransition called", v10, 2u);
  }
}

- (BOOL)anyAcceptorPendingStateTransition
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  orderedSet = [(ClientCommonAudioProfile *)self orderedSet];
  v4 = [orderedSet countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(orderedSet);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        if (v8 && ([v8 pendingStateTransition] & 1) != 0)
        {

          return 1;
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [orderedSet countByEnumeratingWithState:&v17 objects:v23 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = qword_1000A9FE0;
  v10 = os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v10)
  {
    v12 = v9;
    currentCAPProcedure = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    currentState = [currentCAPProcedure currentState];
    currentCAPProcedure2 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    v16 = +[ClientCommonAudioProfile stateToString:withCurrentSM:](ClientCommonAudioProfile, "stateToString:withCurrentSM:", currentState, [currentCAPProcedure2 currentStateMachine]);
    *buf = 138412290;
    v22 = v16;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No Acceptor pending state transition in %@ state", buf, 0xCu);

    return 0;
  }

  return result;
}

- (void)sendRelativeVolumeUpRequest
{
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000206D4;
  v4[3] = &unk_100094F40;
  v4[4] = self;
  [coordinatedSet enumerateKeysAndObjectsUsingBlock:v4];
}

- (void)sendRelativeVolumeDownRequest
{
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100020768;
  v4[3] = &unk_100094F40;
  v4[4] = self;
  [coordinatedSet enumerateKeysAndObjectsUsingBlock:v4];
}

- (void)sendVolumeMuteRequest:(BOOL)request
{
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002080C;
  v6[3] = &unk_100094F90;
  v6[4] = self;
  requestCopy = request;
  [coordinatedSet enumerateKeysAndObjectsUsingBlock:v6];
}

- (void)sendAbsoluteVolumeRequest:(unsigned __int8)request
{
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000208B8;
  v6[3] = &unk_100094F90;
  v6[4] = self;
  requestCopy = request;
  [coordinatedSet enumerateKeysAndObjectsUsingBlock:v6];
}

- (void)sendVolumeOffsetRequest:(signed __int16)request audioLocation:(unsigned int)location
{
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002096C;
  v8[3] = &unk_100094FB8;
  v8[4] = self;
  requestCopy = request;
  locationCopy = location;
  [coordinatedSet enumerateKeysAndObjectsUsingBlock:v8];
}

- (void)sendMicrophoneMuteRequest:(unsigned __int8)request
{
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100020A1C;
  v6[3] = &unk_100094F90;
  v6[4] = self;
  requestCopy = request;
  [coordinatedSet enumerateKeysAndObjectsUsingBlock:v6];
}

- (void)sendMicrophoneGainSettingRequest:(char)request inputType:(unsigned __int8)type
{
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100020AD0;
  v8[3] = &unk_100094FE0;
  v8[4] = self;
  requestCopy = request;
  typeCopy = type;
  [coordinatedSet enumerateKeysAndObjectsUsingBlock:v8];
}

- (void)sessionCompleteHandler:(id)handler withAttributes:(id)attributes
{
  handlerCopy = handler;
  v11 = [attributes mutableCopy];
  getConnectedPeripherals = [(ClientCommonAudioProfile *)self getConnectedPeripherals];
  allKeys = [getConnectedPeripherals allKeys];
  [v11 setValue:allKeys forKey:@"kCBMsgArgLEAudioCoordinatedSetIds"];

  sessionID = [(ClientCommonAudioProfile *)self sessionID];
  [v11 setValue:sessionID forKey:@"kCBMsgArgLEAudioSessionID"];

  [v11 setValue:handlerCopy forKey:@"kCBMsgArgLEAudioDeviceUUID"];
  v10 = +[LEAudioXPCSession instance];
  [v10 sessionCompleted:v11];
}

+ (id)stateToString:(unsigned __int8)string withCurrentSM:(const CAPStateMachine *)m
{
  if (string < 4u)
  {
    return *(&off_100095000 + string);
  }

  if (m == &unk_1000A9AC8)
  {
    if ((string - 4) >= 8u)
    {
      return @"Unknown";
    }

    else
    {
      return *(&off_100095020 + (string - 4));
    }
  }

  if (m == &unk_1000A9BF0)
  {
    v5 = @"Unknown";
    if (string == 5)
    {
      v5 = @"Metadata Update";
    }

    v6 = @"Complete/Availability Match";
    goto LABEL_30;
  }

  if (m == &unk_1000A9C50)
  {
    v5 = @"Unknown";
    v6 = @"Complete/Release";
    goto LABEL_30;
  }

  if (m == &unk_1000A9C20)
  {
    v5 = @"Unknown";
    if (string == 5)
    {
      v5 = @"Reciever Stop Ready";
    }

    v6 = @"Complete/Disable";
    goto LABEL_30;
  }

  if (m == &unk_1000A9B78)
  {
    v5 = @"Unknown";
    v6 = @"Change Volume";
    goto LABEL_30;
  }

  if (m == &unk_1000A9BA0)
  {
    v5 = @"Unknown";
    v6 = @"Change Volume Mute";
    goto LABEL_30;
  }

  if (m == &unk_1000A9B28)
  {
    v5 = @"Unknown";
    v6 = @"Microphone Mute";
    goto LABEL_30;
  }

  if (m == &unk_1000A9BC8)
  {
    v5 = @"Unknown";
    v6 = @"Change Volume Offset";
LABEL_30:
    if (string == 4)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  result = @"Unknown";
  if (m == &unk_1000A9B50 && string == 4)
  {
    return @"Change Microphone Gain Setting";
  }

  return result;
}

+ (id)eventToString:(unsigned __int8)string
{
  if (string > 0x35u)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_100095060 + string);
  }
}

@end