@interface ClientCommonAudioProfile
+ (id)eventToString:(unsigned __int8)a3;
+ (id)stateToString:(unsigned __int8)a3 withCurrentSM:(const CAPStateMachine *)a4;
- (BOOL)anyAcceptorPendingStateTransition;
- (BOOL)buildCIG;
- (BOOL)coordinatedSetMembersUnLocked;
- (BOOL)isCIGInUse;
- (BOOL)isPeripheralConnected:(id)a3;
- (BOOL)isPeripheralResolvable:(id)a3;
- (BOOL)matchCentralToPeripheralQosParams:(id)a3 withCIS:(id)a4;
- (BOOL)matchPeripheralToCentralQosParams:(id)a3 withCIS:(id)a4;
- (BOOL)sendRelativeVolumeDownRequest:(id)a3;
- (BOOL)sendRelativeVolumeUpRequest:(id)a3;
- (BOOL)useCSIPOrderedAccessProcedure;
- (BOOL)validateQoSParamsForAcceptor:(id)a3 withCIS:(id)a4;
- (ClientCommonAudioProfile)init;
- (id)getAudioConfigList;
- (id)getConnectedPeripherals;
- (id)getNextAcceptor:(BOOL)a3;
- (id)getOrderedAccessSet:(id)a3;
- (id)sortAcceptorsByRank:(id)a3;
- (unsigned)calculateCoordinatedSetSize:(unsigned __int8)a3;
- (unsigned)connectCISforCIG;
- (unsigned)determineChannelCount:(unsigned int)a3;
- (unsigned)getAudioConfigIndex:(BOOL)a3;
- (unsigned)getCAPProcType;
- (unsigned)getNumOfConnectedPeripherals;
- (unsigned)matchAudioDevicesHandler;
- (unsigned)matchConnectedDevices:(id)a3;
- (unsigned)translatePhyMask:(unsigned __int8)a3;
- (unsigned)updateMetadataForDevice:(id)a3;
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
- (void)CAPUnicastAudioStart:(id)a3 withAudioChanConfig:(id)a4;
- (void)CAPUnicastAudioStopDisable:(id)a3;
- (void)CAPUnicastAudioStopRelease:(id)a3;
- (void)CAPUnicastAudioUpdate:(id)a3 withAudioChanConfig:(id)a4;
- (void)addAcceptorToSet:(id)a3;
- (void)cancelProcedureTimeoutTimer;
- (void)checkNextUpcomingProcedure;
- (void)clearAudioConfigList;
- (void)clearPendingStateTransition;
- (void)createCIG;
- (void)determineAudioConfigFromHALConfig:(id)a3;
- (void)disconnectCISRequestHandler;
- (void)initPendingStateTransition;
- (void)joinCIG;
- (void)peripheralDisconnected:(id)a3;
- (void)procedureTimeoutTimerFired;
- (void)processSM:(id)a3;
- (void)publishHALDevice:(id)a3;
- (void)queueAudioStreamProcedure:(id)a3 withNextProcedure:(const CAPStateMachine *)a4;
- (void)resolvePeripheral:(id)a3 withAdv:(id)a4;
- (void)sendAbsoluteVolumeRequest:(unsigned __int8)a3;
- (void)sendCIGCreate:(id)a3 additionalCIS:(BOOL)a4 bidirectionCIS:(BOOL)a5;
- (void)sendCodecConfigRequest;
- (void)sendDisableRequest;
- (void)sendDisableRequestForDevice:(id)a3;
- (void)sendEnableRequestForDevice:(id)a3 withSnkAseID:(id)a4 withSrcAseID:(id)a5;
- (void)sendEnableRequestWithSnkAseID:(id)a3 withSrcAseID:(id)a4;
- (void)sendMicrophoneGainSettingRequest:(char)a3 inputType:(unsigned __int8)a4;
- (void)sendMicrophoneMuteRequest:(unsigned __int8)a3;
- (void)sendQoSConfigRequest;
- (void)sendQoSConfigRequestForDevice:(id)a3;
- (void)sendReceiverStartReadyRequest;
- (void)sendReceiverStartReadyRequestForDevice:(id)a3;
- (void)sendReceiverStopReadyRequest;
- (void)sendReceiverStopReadyRequestForDevice:(id)a3;
- (void)sendRelativeVolumeDownRequest;
- (void)sendRelativeVolumeUpRequest;
- (void)sendReleaseRequest;
- (void)sendReleaseRequestForDevice:(id)a3;
- (void)sendUpdateMetadataRequest;
- (void)sendUpdateMetadataRequestForDevice:(id)a3;
- (void)sendVolumeMuteRequest:(BOOL)a3;
- (void)sendVolumeOffsetRequest:(signed __int16)a3 audioLocation:(unsigned int)a4;
- (void)sessionCompleteHandler:(id)a3 withAttributes:(id)a4;
- (void)setSIRK:(id)a3 withIdentifier:(id)a4;
- (void)setTargetLatency:(unsigned __int8)a3;
- (void)setUnicastAudioConfig:(id)a3;
- (void)setupCIG:(id)a3;
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
    v3 = [(ClientCommonAudioProfile *)self procedureTimeoutTimer];

    if (v3)
    {
      v4 = [(ClientCommonAudioProfile *)self procedureTimeoutTimer];
      dispatch_suspend(v4);
    }

    else
    {
      v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
      [(ClientCommonAudioProfile *)self setProcedureTimeoutTimer:v6];

      v7 = [(ClientCommonAudioProfile *)self procedureTimeoutTimer];
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10000E8B4;
      handler[3] = &unk_100094CB8;
      handler[4] = self;
      dispatch_source_set_cancel_handler(v7, handler);

      v4 = [(ClientCommonAudioProfile *)self procedureTimeoutTimer];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10000E8C0;
      v15[3] = &unk_100094CB8;
      v15[4] = self;
      dispatch_source_set_event_handler(v4, v15);
    }

    v8 = [(ClientCommonAudioProfile *)self procedureTimeoutTimer];

    if (v8)
    {
      v9 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        v11 = [(ClientCommonAudioProfile *)self procedureTimeout];
        *buf = 67109120;
        v18 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Starting procedureTimeout timer of %d seconds", buf, 8u);
      }

      v12 = [(ClientCommonAudioProfile *)self procedureTimeoutTimer];
      v13 = dispatch_time(0, 1000000000 * [(ClientCommonAudioProfile *)self procedureTimeout]);
      dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0);

      v14 = [(ClientCommonAudioProfile *)self procedureTimeoutTimer];
      dispatch_resume(v14);
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
  v3 = [(ClientCommonAudioProfile *)self procedureTimeoutTimer];

  if (v3)
  {
    v4 = [(ClientCommonAudioProfile *)self procedureTimeoutTimer];
    dispatch_source_cancel(v4);
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

  v4 = [(ClientCommonAudioProfile *)self currentCAPProcedure];

  if (v4)
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

- (void)resolvePeripheral:(id)a3 withAdv:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v7)
  {
    goto LABEL_4;
  }

  v9 = [v7 objectForKeyedSubscript:CBCoordinatedSetRSIAdv];
  if (![v9 length])
  {
    v13 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "No RSI available to be resolved with Sirk", &v14, 2u);
    }

    goto LABEL_7;
  }

  v10 = [(ClientCommonAudioProfile *)self setIRK];
  v11 = [CSISInterface ResolveRSIWithSirk:v9 withSirk:v10];

  if (v11)
  {
LABEL_4:
    v12 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Found resolved %@", &v14, 0xCu);
    }

    v9 = [(ClientCommonAudioProfile *)self resolvedPeripherals];
    [v9 addObject:v6];
LABEL_7:
  }
}

- (BOOL)isPeripheralResolvable:(id)a3
{
  v4 = a3;
  v5 = [(ClientCommonAudioProfile *)self resolvedPeripherals];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (BOOL)isPeripheralConnected:(id)a3
{
  v4 = a3;
  v5 = [(ClientCommonAudioProfile *)self coordinatedSet];
  v6 = [v5 objectForKey:v4];

  return v6 != 0;
}

- (void)addAcceptorToSet:(id)a3
{
  v4 = a3;
  v5 = [(ClientCommonAudioProfile *)self coordinatedSet];
  v6 = [v4 peripheral];
  v7 = [v6 identifier];
  v8 = [v5 objectForKey:v7];

  if (!v8)
  {
    [v4 setParentCap:self];
    objc_initWeak(&location, v4);
    [v4 setSirkDiscoveryHandler:&stru_100094CF8];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10000F320;
    v36[3] = &unk_100094D20;
    v36[4] = self;
    [v4 setIsoDataPathManagementHandler:v36];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10000F3B4;
    v35[3] = &unk_100094D48;
    v35[4] = self;
    [v4 setCisDisconnectHandler:v35];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10000F3C4;
    v33[3] = &unk_100094D98;
    v33[4] = self;
    objc_copyWeak(&v34, &location);
    [v4 setControlPointHandler:v33];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10000F568;
    v31[3] = &unk_100094DC0;
    v31[4] = self;
    objc_copyWeak(&v32, &location);
    [v4 setAseUpdateHandler:v31];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10000FA38;
    v29[3] = &unk_100094DE8;
    v29[4] = self;
    objc_copyWeak(&v30, &location);
    [v4 setLockStateHandler:v29];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10000FC90;
    v27[3] = &unk_100094E10;
    v27[4] = self;
    objc_copyWeak(&v28, &location);
    [v4 setCaptureHandler:v27];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10001083C;
    v25[3] = &unk_100094E38;
    objc_copyWeak(&v26, &location);
    v25[4] = self;
    [v4 setRenderingHandler:v25];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100011154;
    v24[3] = &unk_100094E60;
    v24[4] = self;
    [v4 setPublishDeviceHandler:v24];
    v9 = [(ClientCommonAudioProfile *)self coordinatedSet];
    v10 = [v4 peripheral];
    v11 = [v10 identifier];
    [v9 setObject:v4 forKey:v11];

    v12 = qword_1000A9FE0;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v4 peripheral];
      v14 = [v13 identifier];
      *buf = 138412290;
      v39 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Acceptor %@ added to Coordinated Set", buf, 0xCu);
    }

    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_1000111E8;
    v21 = &unk_100094E88;
    v22 = self;
    objc_copyWeak(&v23, &location);
    [v4 setSessionCompleteHandler:&v18];
    v15 = [LEAudioXPCListener instance:v18];
    v16 = [v4 peripheral];
    v17 = [v16 identifier];
    [v15 addDevice:v17 toSession:self->_sessionID];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&v30);
    objc_destroyWeak(&v32);
    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }
}

- (void)peripheralDisconnected:(id)a3
{
  v4 = a3;
  v5 = [(ClientCommonAudioProfile *)self coordinatedSet];
  v6 = [v4 identifier];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = +[LEAudioXPCListener instance];
    v9 = [v4 identifier];
    v10 = [(ClientCommonAudioProfile *)self sessionID];
    [v8 removeDevice:v9 fromSession:v10];

    v11 = [(ClientCommonAudioProfile *)self coordinatedSet];
    if ([v11 count] == 1)
    {
      v12 = [(ClientCommonAudioProfile *)self connIsoGroup];
      v13 = [v12 numEstablishedCIS];

      if (!v13)
      {
        [(ClientCommonAudioProfile *)self tearDownCIG];
      }
    }

    else
    {
    }

    v15 = [(ClientCommonAudioProfile *)self coordinatedSet];
    v16 = [v4 identifier];
    [v15 removeObjectForKey:v16];

    v17 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      v19 = [v4 identifier];
      v20 = 138412290;
      v21 = v19;
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

- (BOOL)sendRelativeVolumeUpRequest:(id)a3
{
  v4 = a3;
  v5 = [(ClientCommonAudioProfile *)self coordinatedSet];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = [v6 setRelativeVolumeUp];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)sendRelativeVolumeDownRequest:(id)a3
{
  v4 = a3;
  v5 = [(ClientCommonAudioProfile *)self coordinatedSet];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = [v6 setRelativeVolumeDown];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)sendCodecConfigRequest
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(ClientCommonAudioProfile *)self unicastServerAudioConfig];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = [(ClientCommonAudioProfile *)self unicastServerAudioConfig];
        v10 = [v9 objectForKey:v8];

        [v10 sendCodecConfigRequestWithAudioConfig:v8];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)sendQoSConfigRequestForDevice:(id)a3
{
  v4 = a3;
  v5 = [(ClientCommonAudioProfile *)self coordinatedSet];
  v7 = [v5 objectForKey:v4];

  v6 = v7;
  if (v7)
  {
    [v7 sendQoSConfigRequest];
    v6 = v7;
  }
}

- (void)sendEnableRequestForDevice:(id)a3 withSnkAseID:(id)a4 withSrcAseID:(id)a5
{
  v12 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(ClientCommonAudioProfile *)self coordinatedSet];
  v11 = [v10 objectForKey:v9];

  if (v11)
  {
    [v11 sendEnableRequestWithSnkAseID:v12 WithSrcAseID:v8];
  }
}

- (void)sendReceiverStartReadyRequestForDevice:(id)a3
{
  v4 = a3;
  v5 = [(ClientCommonAudioProfile *)self coordinatedSet];
  v7 = [v5 objectForKey:v4];

  v6 = v7;
  if (v7)
  {
    [v7 sendReceiverStartReadyRequest];
    v6 = v7;
  }
}

- (void)sendReceiverStopReadyRequestForDevice:(id)a3
{
  v4 = a3;
  v5 = [(ClientCommonAudioProfile *)self coordinatedSet];
  v7 = [v5 objectForKey:v4];

  v6 = v7;
  if (v7)
  {
    [v7 sendReceiverStopReadyRequest];
    v6 = v7;
  }
}

- (unsigned)updateMetadataForDevice:(id)a3
{
  v4 = a3;
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
    v33 = v4;
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
        v14 = [v13 matchedAcceptor];

        if (v14 == v4)
        {
          v36 = v12;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v38 = [v13 audioChanConfigArray];
          v15 = [v38 countByEnumeratingWithState:&v39 objects:v47 count:16];
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
                  objc_enumerationMutation(v38);
                }

                v19 = *(*(&v39 + 1) + 8 * i);
                if (([v19 excludeFromProcedure] & 1) == 0)
                {
                  v20 = objc_opt_new();
                  [v20 setContextType:{objc_msgSend(v19, "contextTypes")}];
                  v21 = [v19 ccid];
                  v22 = v7;
                  v23 = v6;
                  v24 = v5;
                  v25 = [v21 mutableCopy];
                  [v20 setCcidList:v25];

                  v26 = [v19 isSink];
                  v5 = v24;
                  v6 = v23;
                  v7 = v22;
                  v27 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v19 aseID]);
                  if (v26)
                  {
                    v28 = v5;
                  }

                  else
                  {
                    v28 = v6;
                  }

                  if (v26)
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

              v16 = [v38 countByEnumeratingWithState:&v39 objects:v47 count:16];
            }

            while (v16);
          }

          v11 = v32;
          v4 = v33;
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
    v30 = [v4 sendUpdateMetadataRequestForASE:v5 withSourceAseID:v6 withSinkContextType:v7 withSourceContextType:v8];
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (void)sendUpdateMetadataRequestForDevice:(id)a3
{
  v4 = a3;
  v5 = [(ClientCommonAudioProfile *)self coordinatedSet];
  v7 = [v5 objectForKey:v4];

  v6 = v7;
  if (v7)
  {
    [(ClientCommonAudioProfile *)self updateMetadataForDevice:v7];
    v6 = v7;
  }
}

- (void)sendReleaseRequestForDevice:(id)a3
{
  v4 = a3;
  v5 = [(ClientCommonAudioProfile *)self coordinatedSet];
  v7 = [v5 objectForKey:v4];

  v6 = v7;
  if (v7)
  {
    [v7 sendReleaseRequest];
    v6 = v7;
  }
}

- (void)sendDisableRequestForDevice:(id)a3
{
  v4 = a3;
  v5 = [(ClientCommonAudioProfile *)self coordinatedSet];
  v7 = [v5 objectForKey:v4];

  v6 = v7;
  if (v7)
  {
    [v7 sendDisableRequest];
    v6 = v7;
  }
}

- (void)clearAudioConfigList
{
  v3 = [(ClientCommonAudioProfile *)self audioConfigToMatch];
  [v3 removeAllObjects];

  v4 = [(ClientCommonAudioProfile *)self unicastServerAudioConfig];
  [v4 removeAllObjects];

  v5 = [(ClientCommonAudioProfile *)self coordinatedSet];
  v6 = [v5 allValues];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
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

- (void)setUnicastAudioConfig:(id)a3
{
  v4 = a3;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v8[0] = 67109376;
    v8[1] = [v4 sinkAudioLocMask];
    v9 = 1024;
    v10 = [v4 sourceAudioLocMask];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting unicast audio config - sinkAudioLocMask: 0x%02x, sourceAudioLocMask: 0x%02x", v8, 0xEu);
  }

  v7 = [(ClientCommonAudioProfile *)self audioConfigToMatch];
  [v7 addObject:v4];
}

- (id)getAudioConfigList
{
  v2 = [(ClientCommonAudioProfile *)self audioConfigToMatch];
  v3 = [v2 copy];

  return v3;
}

- (unsigned)matchConnectedDevices:(id)a3
{
  v4 = a3;
  v55 = self;
  v5 = [(ClientCommonAudioProfile *)self coordinatedSet];
  v6 = [v5 allValues];

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v7 = v6;
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
        v13 = [(ClientCommonAudioProfile *)v55 unicastServerAudioConfig];
        v14 = [v13 objectForKey:v4];

        if (v14 == v12)
        {
          v42 = qword_1000A9FE0;
          if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
          {
            v43 = v42;
            v44 = [v12 peripheral];
            v45 = [v44 identifier];
            v46 = [v45 UUIDString];
            *buf = 138412290;
            v68 = v46;
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
        v25 = [v24 identifier];
        [v25 UUIDString];
        v26 = v16;
        v27 = v19;
        v28 = v18;
        v30 = v29 = v4;
        *buf = 138412290;
        v68 = v30;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "matchConnectedDevices for Acceptor: %@", buf, 0xCu);

        v4 = v29;
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
        v32 = [v21 matchContextTypeAvailabilityForConfig:v4];
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

        v38 = [v21 supportsCodecConfigurationForConfig:v4];
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

        v17 = [v21 supportsAudioLocationForConfig:v4];
        v40 = *v19;
        v41 = os_log_type_enabled(*v19, OS_LOG_TYPE_DEFAULT);
        if (!v17)
        {
          if (v41)
          {
            v47 = v40;
            v48 = [v21 peripheral];
            v49 = [v48 identifier];
            v50 = [v49 UUIDString];
            *buf = 138412290;
            v68 = v50;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Successfully matched device %@", buf, 0xCu);
          }

          v51 = [(ClientCommonAudioProfile *)v55 unicastServerAudioConfig];
          [v51 setObject:v21 forKey:v4];

          [v21 setIsMatched:1];
          [v4 setMatchedAcceptor:v21];
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

- (void)setTargetLatency:(unsigned __int8)a3
{
  self->_targetLatency = a3;
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

- (unsigned)getAudioConfigIndex:(BOOL)a3
{
  if (a3)
  {
    return [(ClientCommonAudioProfile *)self inputAudioConfigIdx];
  }

  else
  {
    return [(ClientCommonAudioProfile *)self outputAudioConfigIdx];
  }
}

- (unsigned)calculateCoordinatedSetSize:(unsigned __int8)a3
{
  v3 = a3;
  v5 = [(ClientCommonAudioProfile *)self getSetSize];
  v6 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 67109376;
    v19 = v5;
    v20 = 1024;
    v21 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "coordinatedSetSize: %u, numConnectedDevices: %u", &v18, 0xEu);
  }

  if (!v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(ClientCommonAudioProfile *)self coordinatedSet];
      v8 = [v7 allValues];
      v9 = [v8 firstObject];

      v10 = [(ClientCommonAudioProfile *)self coordinatedSet];
      v11 = [v10 objectForKeyedSubscript:v9];

      v12 = [v11 hasInterface];
      LOBYTE(v8) = [v12 binauralHearingAid];

      if (v8)
      {
        v3 = 2;
      }

      else
      {
        v13 = [v11 hasInterface];
        if ([v13 monauralHearingAid])
        {

          v3 = 1;
        }

        else
        {
          v14 = [v11 hasInterface];
          v15 = [v14 bandedHearingAid];

          if (v15)
          {
            v3 = 1;
          }
        }
      }
    }

    v16 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 67109120;
      v19 = v3;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Calculated coordinatedSetSize %u", &v18, 8u);
    }

    LOBYTE(v5) = v3;
  }

  return v5;
}

- (unsigned)translatePhyMask:(unsigned __int8)a3
{
  if ((a3 & 4) != 0)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  if (a3)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if ((a3 & 2) != 0)
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
    v54 = [(ClientCommonAudioProfile *)self cigToJoin];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Attempting to join CIG ID %u ", buf, 8u);
  }

  v5 = [(ClientCommonAudioProfile *)self connIsoGroup];
  v6 = [v5 cigParams];
  if ([v6 cigID] == 255)
  {

    goto LABEL_10;
  }

  v7 = [(ClientCommonAudioProfile *)self connIsoGroup];
  v8 = [v7 cigParams];
  v9 = [v8 cigID];
  v10 = [(ClientCommonAudioProfile *)self cigToJoin];

  if (v9 != v10)
  {
LABEL_10:
    v19 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      v21 = [(ClientCommonAudioProfile *)self cigToJoin];
      v22 = [(ClientCommonAudioProfile *)self connIsoGroup];
      v23 = [v22 cigParams];
      v24 = [v23 cigID];
      *buf = 67109376;
      v54 = v21;
      v55 = 1024;
      LODWORD(v56) = v24;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Join CIG ID %u does not match active CIG ID %u", buf, 0xEu);
    }

    v18 = 21;
    goto LABEL_13;
  }

  v11 = [(ClientCommonAudioProfile *)self connIsoGroup];
  v12 = [v11 allCISEstablished];

  if (v12)
  {
    v13 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = [(ClientCommonAudioProfile *)self connIsoGroup];
      v16 = [v15 cigParams];
      v17 = [v16 cigID];
      *buf = 67109120;
      v54 = v17;
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
  v27 = [(ClientCommonAudioProfile *)self orderedSet];
  v28 = [v27 countByEnumeratingWithState:&v49 objects:v57 count:16];
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
        objc_enumerationMutation(v27);
      }

      v32 = *(*(&v49 + 1) + 8 * v31);
      v33 = [(ClientCommonAudioProfile *)self connIsoGroup];
      v34 = [v32 peripheral];
      v35 = [v34 identifier];
      v36 = [v33 getCISwithDeviceID:v35];

      if (!v36)
      {
        v37 = [(ClientCommonAudioProfile *)self connIsoGroup];
        v36 = [v37 getCISwithDeviceID:0];

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
            v45 = [(ClientCommonAudioProfile *)self cigToJoin];
            v46 = [v32 peripheral];
            v47 = [v46 identifier];
            *buf = 67109378;
            v54 = v45;
            v55 = 2112;
            v56 = v47;
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
            v40 = [(ClientCommonAudioProfile *)self cigToJoin];
            v41 = [v32 peripheral];
            v42 = [v41 identifier];
            *buf = 67109378;
            v54 = v40;
            v55 = 2112;
            v56 = v42;
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
    v29 = [v27 countByEnumeratingWithState:&v49 objects:v57 count:16];
    if (v29)
    {
      continue;
    }

    break;
  }

LABEL_25:

  v25 = 13;
LABEL_14:
  v26 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
  [v26 setNextEvent:v25];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013214;
  block[3] = &unk_100094CB8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (BOOL)validateQoSParamsForAcceptor:(id)a3 withCIS:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 getAudioStreamEndpoints];
  if ([v8 count])
  {
    v66 = self;
    v9 = 0;
    v67 = 0;
    v10 = 0;
    v68 = v7;
    while (1)
    {
      v11 = [v8 objectAtIndexedSubscript:v9];
      if (([v11 inUse] & 1) == 0)
      {
        goto LABEL_6;
      }

      v12 = [v8 objectAtIndexedSubscript:v9];
      v13 = [v12 state];

      if (v13 != 1)
      {
        goto LABEL_7;
      }

      v11 = [v8 objectAtIndexedSubscript:v9];
      if ([v11 cigID] != 255)
      {
LABEL_6:

        goto LABEL_7;
      }

      v14 = [v8 objectAtIndexedSubscript:v9];
      v15 = [v14 cisID];

      if (v15 == 255)
      {
        break;
      }

LABEL_7:
      v9 = ++v10;
      if ([v8 count] <= v10)
      {
        goto LABEL_42;
      }
    }

    v16 = [v8 objectAtIndexedSubscript:v9];
    v17 = [v16 type];

    v18 = [v8 objectAtIndexedSubscript:v9];
    if (v17)
    {
      v19 = [(ClientCommonAudioProfile *)v66 matchPeripheralToCentralQosParams:v18 withCIS:v7];

      if (!v19)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v20 = [(ClientCommonAudioProfile *)v66 matchCentralToPeripheralQosParams:v18 withCIS:v7];

      if ((v20 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v21 = v10 + 1;
    if ([v8 count] <= (v10 + 1))
    {
      goto LABEL_38;
    }

    v22 = (v10 + 1);
    LOBYTE(v23) = 1;
    while (1)
    {
      v24 = [v8 objectAtIndexedSubscript:v22];
      if (([v24 inUse] & 1) == 0)
      {
        goto LABEL_19;
      }

      v25 = [v8 objectAtIndexedSubscript:v22];
      v26 = [v25 state];

      if (v26 != 1)
      {
        goto LABEL_28;
      }

      v24 = [v8 objectAtIndexedSubscript:v22];
      v7 = v68;
      if ([v24 cigID] == 255)
      {
        v27 = [v8 objectAtIndexedSubscript:v22];
        v28 = [v27 cisID];

        v7 = v68;
        if (v28 == 255)
        {
          v29 = [v8 objectAtIndexedSubscript:v9];
          v30 = [v29 type];
          v31 = [v8 objectAtIndexedSubscript:v22];
          if (v30 == [v31 type])
          {

            LOBYTE(v23) = 0;
          }

          else
          {
            v65 = v6;
            v32 = [v8 objectAtIndexedSubscript:v9];
            v33 = [v8 objectAtIndexedSubscript:v22];
            v23 = [v32 matchPrefferedQoSParamsForASE:v33];

            if (v23)
            {
              v34 = [v8 objectAtIndexedSubscript:v22];
              v35 = [v34 type];

              v36 = [v8 objectAtIndexedSubscript:v22];
              v7 = v68;
              if (v35)
              {
                v37 = v66;
                v23 = [(ClientCommonAudioProfile *)v66 matchPeripheralToCentralQosParams:v36 withCIS:v68];

                if (!v23)
                {
                  goto LABEL_36;
                }
              }

              else
              {
                v37 = v66;
                v38 = [(ClientCommonAudioProfile *)v66 matchCentralToPeripheralQosParams:v36 withCIS:v68];

                if ((v38 & 1) == 0)
                {
                  LOBYTE(v23) = 0;
LABEL_36:
                  v6 = v65;
                  goto LABEL_29;
                }
              }

              v39 = [(ClientCommonAudioProfile *)v37 cigID];
              v40 = [v8 objectAtIndexedSubscript:v22];
              [v40 setCigID:v39];

              v41 = [v8 objectAtIndexedSubscript:v22];
              [v68 setASEForOppositeDirection:v41];

              v42 = qword_1000A9FE0;
              if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
              {
                v43 = v42;
                v44 = [v8 objectAtIndexedSubscript:v22];
                v45 = [v44 ASE_ID];
                v46 = [v8 objectAtIndexedSubscript:v22];
                v47 = [v46 cigID];
                v48 = [v8 objectAtIndexedSubscript:v22];
                v49 = [v48 cisID];
                *buf = 67109632;
                v70 = v45;
                v71 = 1024;
                v72 = v47;
                v7 = v68;
                v73 = 1024;
                v74 = v49;
                _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "ASE ID %u coupled CIG ID %u and CIS ID %u (bidirectional CIS)", buf, 0x14u);
              }

              LOBYTE(v23) = 1;
              goto LABEL_36;
            }

            v6 = v65;
          }

LABEL_28:
          v7 = v68;
        }
      }

      else
      {
LABEL_19:
      }

LABEL_29:
      v22 = ++v21;
      if ([v8 count] <= v21)
      {
        if (v23)
        {
LABEL_38:
          v50 = [(ClientCommonAudioProfile *)v66 cigID];
          [v8 objectAtIndexedSubscript:v9];
          v52 = v51 = v6;
          [v52 setCigID:v50];

          v53 = [v8 objectAtIndexedSubscript:v9];
          v54 = [v51 peripheral];
          v55 = [v54 identifier];
          [v7 setASEForDirection:v53 forDevice:v55];

          v56 = qword_1000A9FE0;
          if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
          {
            v57 = v56;
            v58 = [v8 objectAtIndexedSubscript:v9];
            v59 = [v58 ASE_ID];
            v60 = [v8 objectAtIndexedSubscript:v9];
            v61 = [v60 cigID];
            v62 = [v8 objectAtIndexedSubscript:v9];
            v63 = [v62 cisID];
            *buf = 67109632;
            v70 = v59;
            v71 = 1024;
            v72 = v61;
            v7 = v68;
            v73 = 1024;
            v74 = v63;
            _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "ASE ID %u coupled to CIG ID %u and CIS ID %u", buf, 0x14u);
          }

          v67 = 1;
          v6 = v51;
        }

        goto LABEL_7;
      }
    }
  }

  v67 = 0;
LABEL_42:

  return v67 & 1;
}

- (BOOL)matchCentralToPeripheralQosParams:(id)a3 withCIS:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ClientCommonAudioProfile *)self connIsoGroup];
  v9 = [v8 cigParams];
  v10 = [v9 sduIntervalCToP];
  if (v10 != [v6 clientSduInterval])
  {
    goto LABEL_9;
  }

  v11 = [(ClientCommonAudioProfile *)self connIsoGroup];
  v12 = [v11 cigParams];
  v13 = [v12 framing];
  if (v13 != [v6 clientFraming])
  {

LABEL_9:
    goto LABEL_10;
  }

  v14 = [(ClientCommonAudioProfile *)self connIsoGroup];
  v15 = [v14 cigParams];
  v16 = [v15 maxTransLatencyCToP];
  v17 = [v6 maxTransportLatency];

  if (v16 > v17)
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
    v32 = [v6 ASE_ID];
    v33 = 1024;
    v34 = [v6 clientSduInterval];
    v35 = 1024;
    v36 = [v6 clientFraming];
    v37 = 1024;
    v38 = [v6 maxTransportLatency];
    v28 = "CIG params don't match for Sink ASE ID %u (SDU Int %u, Framing %d, Max Trans Lat %u)";
LABEL_12:
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v28, &v31, 0x1Au);

    goto LABEL_13;
  }

  v18 = [v7 cisParams];
  v19 = [v18 maxSduCToP];
  if (v19 != [v6 clientMaxSdu])
  {
LABEL_16:

    goto LABEL_17;
  }

  v20 = [v7 cisParams];
  v21 = [v20 rtnCToP];
  if (v21 != [v6 clientRetransmissionNumber])
  {

    goto LABEL_16;
  }

  v22 = [v7 cisParams];
  v23 = [v22 phyCToP];
  v24 = [v6 preferredPhy];

  if (v23 != v24)
  {
LABEL_17:
    v30 = qword_1000A9FE0;
    if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v27 = v30;
    v31 = 67109888;
    v32 = [v6 ASE_ID];
    v33 = 1024;
    v34 = [v6 clientMaxSdu];
    v35 = 1024;
    v36 = [v6 clientRetransmissionNumber];
    v37 = 1024;
    v38 = [v6 preferredPhy];
    v28 = "CIS params don't match for Sink ASE ID %u (Max SDU %u, RTN %d, PHY %u)";
    goto LABEL_12;
  }

  v25 = 1;
LABEL_14:

  return v25;
}

- (BOOL)matchPeripheralToCentralQosParams:(id)a3 withCIS:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ClientCommonAudioProfile *)self connIsoGroup];
  v9 = [v8 cigParams];
  v10 = [v9 sduIntervalPToC];
  if (v10 != [v6 clientSduInterval])
  {
    goto LABEL_9;
  }

  v11 = [(ClientCommonAudioProfile *)self connIsoGroup];
  v12 = [v11 cigParams];
  v13 = [v12 framing];
  if (v13 != [v6 clientFraming])
  {

LABEL_9:
    goto LABEL_10;
  }

  v14 = [(ClientCommonAudioProfile *)self connIsoGroup];
  v15 = [v14 cigParams];
  v16 = [v15 maxTransLatencyPToC];
  v17 = [v6 maxTransportLatency];

  if (v16 > v17)
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
    v32 = [v6 ASE_ID];
    v33 = 1024;
    v34 = [v6 clientSduInterval];
    v35 = 1024;
    v36 = [v6 clientFraming];
    v37 = 1024;
    v38 = [v6 maxTransportLatency];
    v28 = "CIG params don't match for Source ASE ID %u (SDU Int %u, Framing %d, Max Trans Lat %u)";
LABEL_12:
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v28, &v31, 0x1Au);

    goto LABEL_13;
  }

  v18 = [v7 cisParams];
  v19 = [v18 maxSduPToC];
  if (v19 != [v6 clientMaxSdu])
  {
LABEL_16:

    goto LABEL_17;
  }

  v20 = [v7 cisParams];
  v21 = [v20 rtnPToC];
  if (v21 != [v6 clientRetransmissionNumber])
  {

    goto LABEL_16;
  }

  v22 = [v7 cisParams];
  v23 = [v22 phyPToC];
  v24 = [v6 preferredPhy];

  if (v23 != v24)
  {
LABEL_17:
    v30 = qword_1000A9FE0;
    if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v27 = v30;
    v31 = 67109888;
    v32 = [v6 ASE_ID];
    v33 = 1024;
    v34 = [v6 clientMaxSdu];
    v35 = 1024;
    v36 = [v6 clientRetransmissionNumber];
    v37 = 1024;
    v38 = [v6 preferredPhy];
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

  v5 = [(ClientCommonAudioProfile *)self connIsoGroup];
  v6 = [v5 cigParams];
  if ([v6 cigID] == 255)
  {
  }

  else
  {
    v7 = [(ClientCommonAudioProfile *)self connIsoGroup];
    v8 = [v7 cigParams];
    v9 = [v8 cigID];
    v10 = [(ClientCommonAudioProfile *)self cigID];

    if (v9 != v10)
    {
      v11 = 19;
LABEL_19:
      v22 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
      {
        sub_10005BF50(v11, v22);
      }

      [(ClientCommonAudioProfile *)self setProcedureStatus:v11];
      v23 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
      [v23 setNextEvent:14];

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100014208;
      block[3] = &unk_100094CB8;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
      return;
    }
  }

  v12 = [(ClientCommonAudioProfile *)self buildCIG];
  v13 = [(ClientCommonAudioProfile *)self connIsoGroup];
  v14 = [v13 cisSet];
  v15 = [v14 count];

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
      if (v12)
      {
        v17 = @"unidirectional";
      }

      else
      {
        v17 = @"bidirectional";
      }

      v18 = v16;
      v19 = [(ClientCommonAudioProfile *)self cigID];
      *buf = 138412546;
      v26 = v17;
      v27 = 1024;
      v28 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Additional %@ CIS needed for GID ID %u", buf, 0x12u);
    }

    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  v21 = [(ClientCommonAudioProfile *)self connIsoGroup];
  [(ClientCommonAudioProfile *)self sendCIGCreate:v21 additionalCIS:v20 bidirectionCIS:v12 ^ 1];
}

- (BOOL)buildCIG
{
  v3 = [(ClientCommonAudioProfile *)self cigID];
  v4 = [(ClientCommonAudioProfile *)self connIsoGroup];
  v5 = [v4 cigParams];
  [v5 setCigID:v3];

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = self;
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
        v8 = [(ClientCommonAudioProfile *)v63 coordinatedSet];
        v62 = v7;
        v9 = [v8 objectForKeyedSubscript:v7];

        v64 = v9;
        v10 = [v9 getAudioStreamEndpoints];
        if ([v10 count])
        {
          v11 = 0;
          v12 = 0;
          while (1)
          {
            v13 = [v10 objectAtIndexedSubscript:v11];
            if (![v13 inUse])
            {
              goto LABEL_11;
            }

            v14 = [v10 objectAtIndexedSubscript:v11];
            v15 = [v14 state];

            if (v15 == 1)
            {
              break;
            }

LABEL_12:
            v11 = ++v12;
            if ([v10 count] <= v12)
            {
              goto LABEL_32;
            }
          }

          v13 = [v10 objectAtIndexedSubscript:v11];
          if ([v13 cigID] == 255)
          {
            v16 = [v10 objectAtIndexedSubscript:v11];
            v17 = [v16 cisID];

            if (v17 != 255)
            {
              goto LABEL_12;
            }

            v18 = [(ClientCommonAudioProfile *)v63 connIsoGroup];
            v19 = [v10 objectAtIndexedSubscript:v11];
            v59 = [v18 addCISwithASE:v19 forDevice:v62];

            v20 = [(ClientCommonAudioProfile *)v63 cigID];
            v21 = [v10 objectAtIndexedSubscript:v11];
            [v21 setCigID:v20];

            v22 = qword_1000A9FE0;
            if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
            {
              v23 = v22;
              v24 = [v10 objectAtIndexedSubscript:v11];
              v25 = [v24 ASE_ID];
              v26 = [v10 objectAtIndexedSubscript:v11];
              v27 = [v26 cigID];
              v28 = [v10 objectAtIndexedSubscript:v11];
              v29 = [v28 cisID];
              *buf = 67109632;
              v70 = v25;
              v71 = 1024;
              v72 = v27;
              v73 = 1024;
              v74 = v29;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "ASE ID %u assigned CIG ID %u and CIS ID %u", buf, 0x14u);
            }

            v30 = v12 + 1;
            if ([v10 count] <= (v12 + 1))
            {
              goto LABEL_12;
            }

            v31 = (v12 + 1);
            while (2)
            {
              v32 = [v10 objectAtIndexedSubscript:v31];
              if ([v32 inUse])
              {
                v33 = [v10 objectAtIndexedSubscript:v31];
                v34 = [v33 state];

                if (v34 == 1)
                {
                  v32 = [v10 objectAtIndexedSubscript:v31];
                  if ([v32 cigID] != 255)
                  {
                    goto LABEL_22;
                  }

                  v35 = [v10 objectAtIndexedSubscript:v31];
                  v36 = [v35 cisID];

                  if (v36 == 255)
                  {
                    v37 = [v10 objectAtIndexedSubscript:v11];
                    v38 = [v37 type];
                    v39 = [v10 objectAtIndexedSubscript:v31];
                    if (v38 == [v39 type])
                    {
                    }

                    else
                    {
                      v40 = [v10 objectAtIndexedSubscript:v11];
                      v41 = [v10 objectAtIndexedSubscript:v31];
                      v56 = [v40 matchPrefferedQoSParamsForASE:v41];

                      if (v56)
                      {
                        v42 = [(ClientCommonAudioProfile *)v63 cigID];
                        v43 = [v10 objectAtIndexedSubscript:v31];
                        [v43 setCigID:v42];

                        v44 = [(ClientCommonAudioProfile *)v63 connIsoGroup];
                        v45 = [v44 getCISwithID:v59];
                        v46 = [v10 objectAtIndexedSubscript:v31];
                        [v45 setASEForOppositeDirection:v46];

                        v47 = qword_1000A9FE0;
                        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
                        {
                          v48 = v47;
                          v57 = [v10 objectAtIndexedSubscript:v31];
                          v49 = [v57 ASE_ID];
                          v50 = [v10 objectAtIndexedSubscript:v31];
                          v51 = [v50 cigID];
                          v52 = [v10 objectAtIndexedSubscript:v31];
                          v53 = [v52 cisID];
                          *buf = 67109632;
                          v70 = v49;
                          v71 = 1024;
                          v72 = v51;
                          v73 = 1024;
                          v74 = v53;
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
              if ([v10 count] <= v30)
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

- (void)sendCIGCreate:(id)a3 additionalCIS:(BOOL)a4 bidirectionCIS:(BOOL)a5
{
  LODWORD(v81) = a5;
  HIDWORD(v81) = a4;
  v5 = a3;
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
  v84 = v5;
  obj = [v5 cisSet];
  v7 = [obj countByEnumeratingWithState:&v89 objects:v97 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = *v90;
    v85 = 100;
    v87 = 100;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v90 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v89 + 1) + 8 * i);
        v15 = [v14 sinkASE];

        if (v15)
        {
          v16 = [v14 sinkASE];
          v17 = [v16 clientMaxTransportLatency];

          if (v17 < v87)
          {
            v18 = [v14 sinkASE];
            v87 = [v18 clientMaxTransportLatency];
          }

          v19 = [v14 sinkASE];
          v20 = [v19 clientMaxSdu];
          v21 = [v14 cisParams];
          [v21 setMaxSduCToP:v20];

          v22 = [v14 sinkASE];
          v23 = [v22 clientRetransmissionNumber];
          v24 = [v14 cisParams];
          [v24 setRtnCToP:v23];

          [v14 sinkASE];
          v11 = v25 = v11;
        }

        else
        {
          v26 = [v14 cisParams];
          [v26 setMaxSduCToP:0];

          v25 = [v14 cisParams];
          [v25 setRtnCToP:0];
        }

        v27 = [v14 sourceASE];
        if (v27 && (v28 = v27, v29 = [(ClientCommonAudioProfile *)self requiresInput], v28, v29))
        {
          v30 = [v14 sourceASE];
          v31 = [v30 clientMaxTransportLatency];

          if (v31 < v85)
          {
            v32 = [v14 sourceASE];
            v85 = [v32 clientMaxTransportLatency];
          }

          v33 = [v14 sourceASE];
          v34 = [v33 clientMaxSdu];
          v35 = [v14 cisParams];
          [v35 setMaxSduPToC:v34];

          v36 = [v14 sourceASE];
          v37 = [v36 clientRetransmissionNumber];
          v38 = [v14 cisParams];
          [v38 setRtnPToC:v37];

          [v14 sourceASE];
          v10 = v39 = v10;
        }

        else
        {
          v40 = [v14 cisParams];
          [v40 setMaxSduPToC:0];

          v39 = [v14 cisParams];
          [v39 setRtnPToC:0];
        }

        v41 = v11;
        if (v11 || (v41 = v10) != 0)
        {
          v9 = -[ClientCommonAudioProfile translatePhyMask:](self, "translatePhyMask:", [v41 clientPHY]);
        }

        v42 = [v14 cisParams];
        [v42 setPhyCToP:v9];

        v43 = [v14 cisParams];
        [v43 setPhyPToC:v9];
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
    v85 = 100;
    v87 = 100;
  }

  if (v83 && v11 | v10)
  {
    v44 = [(ClientCommonAudioProfile *)self connIsoGroup];
    v45 = [v44 addCIS];

    v46 = [(ClientCommonAudioProfile *)self connIsoGroup];
    v47 = [v46 getCISwithID:v45];

    if (v11)
    {
      v48 = [v11 clientMaxSdu];
      v49 = [v47 cisParams];
      [v49 setMaxSduCToP:v48];

      v50 = [v11 clientRetransmissionNumber];
      v51 = [v47 cisParams];
      [v51 setRtnCToP:v50];

      if ((v82 & 1) == 0)
      {
        goto LABEL_39;
      }

      if (!v10 || ![(ClientCommonAudioProfile *)self requiresInput])
      {
        if ([(ClientCommonAudioProfile *)self requiresInput])
        {
          v52 = [v11 clientMaxSdu];
          v53 = [v47 cisParams];
          [v53 setMaxSduCToP:v52];

          v54 = [v11 clientRetransmissionNumber];
          v55 = [v47 cisParams];
          [v55 setRtnCToP:v54];
LABEL_38:

          v63 = @"bidirectional";
LABEL_40:
          v64 = [v47 cisParams];
          [v64 setPhyCToP:v9];

          v65 = [v47 cisParams];
          [v65 setPhyPToC:v9];

          [(ClientCommonAudioProfile *)self setQosValidated:0];
          v66 = qword_1000A9FE0;
          if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v94 = v63;
            v95 = 1024;
            v96 = v45;
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

      v56 = [v10 clientMaxSdu];
      v57 = [v47 cisParams];
      [v57 setMaxSduPToC:v56];

      v58 = [v10 clientRetransmissionNumber];
      v59 = [v47 cisParams];
      [v59 setRtnPToC:v58];

      if ((v82 & 1) == 0 || ![(ClientCommonAudioProfile *)self requiresInput])
      {
        goto LABEL_39;
      }
    }

    v60 = [v10 clientMaxSdu];
    v61 = [v47 cisParams];
    [v61 setMaxSduPToC:v60];

    v62 = [v10 clientRetransmissionNumber];
    v55 = [v47 cisParams];
    [v55 setRtnPToC:v62];
    goto LABEL_38;
  }

LABEL_43:
  v67 = [v84 cigParams];
  [v67 setPeripheralClockAccuracy:7];

  v68 = [v84 cigParams];
  [v68 setPacking:0];

  if (v11)
  {
    v69 = [v11 clientSduInterval];
    v70 = [v84 cigParams];
    [v70 setSduIntervalCToP:v69];

    v71 = [v84 cigParams];
    [v71 setMaxTransLatencyCToP:v87];

    v72 = [v11 clientFraming];
    v73 = [v84 cigParams];
    [v73 setFraming:v72];
  }

  else
  {
    v74 = [v84 cigParams];
    [v74 setSduIntervalCToP:255];

    v73 = [v84 cigParams];
    [v73 setMaxTransLatencyCToP:5];
  }

  if (v10)
  {
    v75 = [v10 clientSduInterval];
    v76 = [v84 cigParams];
    [v76 setSduIntervalPToC:v75];

    v77 = [v84 cigParams];
    [v77 setMaxTransLatencyPToC:v85];

    v78 = [v10 clientFraming];
    v79 = [v84 cigParams];
    [v79 setFraming:v78];
  }

  else
  {
    v80 = [v84 cigParams];
    [v80 setSduIntervalPToC:255];

    v79 = [v84 cigParams];
    [v79 setMaxTransLatencyPToC:5];
  }

  [(ClientCommonAudioProfile *)self setupCIG:v84];
}

- (void)setupCIG:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionary];
  v50 = objc_alloc_init(NSMutableArray);
  v49 = objc_alloc_init(NSMutableArray);
  v52 = objc_alloc_init(NSMutableArray);
  v51 = objc_alloc_init(NSMutableArray);
  v5 = objc_alloc_init(NSMutableArray);
  v6 = objc_alloc_init(NSMutableArray);
  v48 = objc_alloc_init(NSMutableArray);
  v7 = [v3 cigParams];
  v8 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v7 cigID]);
  [v4 setObject:v8 forKey:@"kCBLEAudioArgCigId"];

  v9 = [v3 cigParams];
  v10 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v9 sduIntervalCToP]);
  [v4 setObject:v10 forKey:@"kCBLEAudioArgSduIntervalCToP"];

  v11 = [v3 cigParams];
  v12 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v11 sduIntervalPToC]);
  [v4 setObject:v12 forKey:@"kCBLEAudioArgSduIntervalPToC"];

  v13 = [v3 cigParams];
  v14 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v13 peripheralClockAccuracy]);
  [v4 setObject:v14 forKey:@"kCBLEAudioArgPeripheralClockAccuracy"];

  v15 = [v3 cigParams];
  v16 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v15 packing]);
  [v4 setObject:v16 forKey:@"kCBLEAudioArgPacking"];

  v17 = [v3 cigParams];
  v18 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v17 framing]);
  [v4 setObject:v18 forKey:@"kCBLEAudioArgFraming"];

  v19 = [v3 cigParams];
  v20 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v19 maxTransLatencyCToP]);
  [v4 setObject:v20 forKey:@"kCBLEAudioArgMaxTransLatencyCtoP"];

  v21 = [v3 cigParams];
  v22 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v21 maxTransLatencyPToC]);
  [v4 setObject:v22 forKey:@"kCBLEAudioArgMaxTransLatencyPtoC"];

  v23 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v3 numOfCIS]);
  v46 = v4;
  [v4 setObject:v23 forKey:@"kCBLEAudioArgCisCount"];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v47 = v3;
  v24 = [v3 cisSet];
  v25 = [v24 countByEnumeratingWithState:&v54 objects:v58 count:16];
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
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v54 + 1) + 8 * i);
        v30 = [v29 cisParams];
        v31 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v30 cisID]);
        [v5 addObject:v31];

        v32 = [v29 cisParams];
        v33 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v32 maxSduCToP]);
        [v49 addObject:v33];

        v34 = [v29 cisParams];
        v35 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v34 maxSduPToC]);
        [v50 addObject:v35];

        v36 = [v29 cisParams];
        v37 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v36 rtnCToP]);
        [v48 addObject:v37];

        v38 = [v29 cisParams];
        v39 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v38 rtnPToC]);
        [v6 addObject:v39];

        v40 = [v29 cisParams];
        v41 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v40 phyCToP]);
        [v51 addObject:v41];

        v42 = [v29 cisParams];
        v43 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v42 phyPToC]);
        [v52 addObject:v43];
      }

      v26 = [v24 countByEnumeratingWithState:&v54 objects:v58 count:16];
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
  v3 = [(ClientCommonAudioProfile *)self connIsoGroup];
  v4 = [v3 cigParams];
  v5 = [v4 cigID];

  if (v5 != 255)
  {
    v6 = [(ClientCommonAudioProfile *)self connIsoGroup];
    v7 = [v6 tearDownInProgress];

    if (v7)
    {
      v8 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
        v10 = [(ClientCommonAudioProfile *)self connIsoGroup];
        v11 = [v10 cigParams];
        *buf = 67109120;
        v24 = [v11 cigID];
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "tearDownCIG - already in progress for CIG ID %d ", buf, 8u);
      }
    }

    else
    {
      v12 = +[NSMutableDictionary dictionary];
      v13 = [(ClientCommonAudioProfile *)self connIsoGroup];
      v14 = [v13 cigParams];
      v15 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v14 cigID]);
      [v12 setObject:v15 forKey:@"kCBLEAudioArgCigId"];

      v16 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        v18 = [(ClientCommonAudioProfile *)self connIsoGroup];
        v19 = [v18 cigParams];
        *buf = 67109120;
        v24 = [v19 cigID];
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Tearing down Connected Iso Group %d", buf, 8u);
      }

      v20 = [(ClientCommonAudioProfile *)self connIsoGroup];
      [v20 setTearDownInProgress:1];

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
  v2 = [(ClientCommonAudioProfile *)self connIsoGroup];
  v3 = [v2 cigParams];
  v4 = [v3 cigID] != 255;

  return v4;
}

- (unsigned)connectCISforCIG
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = objc_alloc_init(NSMutableArray);
  v49 = objc_alloc_init(NSMutableArray);
  v5 = [(ClientCommonAudioProfile *)self connIsoGroup];
  v6 = [v5 cigParams];
  v7 = [v6 cigID];

  v8 = &MGGetBoolAnswer_ptr;
  v9 = [NSNumber numberWithUnsignedChar:v7];
  v47 = v3;
  [v3 setObject:v9 forKey:@"kCBLEAudioArgCigId"];

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v46 = self;
  v10 = [(ClientCommonAudioProfile *)self connIsoGroup];
  v11 = [v10 cisSet];

  v12 = [v11 countByEnumeratingWithState:&v52 objects:v58 count:16];
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
          objc_enumerationMutation(v11);
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
          v19 = [v16 cisParams];
          v20 = [v19 cisID];
          *buf = 67109120;
          v57 = v20;
          v21 = v18;
          v22 = "CIS %d already established.";
LABEL_15:
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v22, buf, 8u);

          continue;
        }

        v23 = [v16 deviceID];

        if (!v23)
        {
          v30 = qword_1000A9FE0;
          if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
          {
            continue;
          }

          v18 = v30;
          v19 = [v16 cisParams];
          v31 = [v19 cisID];
          *buf = 67109120;
          v57 = v31;
          v21 = v18;
          v22 = "CIS %d not coupled to any acceptor";
          goto LABEL_15;
        }

        v24 = v8[239];
        v25 = [v16 cisParams];
        v26 = [v24 numberWithInt:{objc_msgSend(v25, "cisID")}];
        [v4 addObject:v26];

        v27 = [v16 sinkASE];
        if (v27)
        {
          v28 = v27;
          v29 = [v16 sinkASE];
          if ([v29 state] == 2)
          {

LABEL_18:
            v35 = [v16 sinkASE];
            goto LABEL_25;
          }

          v32 = [v16 sinkASE];
          v33 = [v32 state];

          v8 = &MGGetBoolAnswer_ptr;
          v34 = v33 == 3;
          v4 = v48;
          if (v34)
          {
            goto LABEL_18;
          }
        }

        v36 = [v16 sourceASE];
        if (!v36)
        {
          continue;
        }

        v37 = v36;
        v38 = [v16 sourceASE];
        if ([v38 state] == 2)
        {

LABEL_24:
          v35 = [v16 sourceASE];
LABEL_25:
          v41 = v35;
          v42 = [v35 peripheralID];
          [v49 addObject:v42];

          continue;
        }

        v39 = [v16 sourceASE];
        v40 = [v39 state];

        v4 = v48;
        v34 = v40 == 3;
        v8 = &MGGetBoolAnswer_ptr;
        if (v34)
        {
          goto LABEL_24;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v52 objects:v58 count:16];
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
  v51[4] = v46;
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_10001675C;
  v50[3] = &unk_100094ED8;
  v50[4] = v46;
  [v44 connectCIS:v47 withConnectionCompletion:v51 withDisconnectionCompletion:v50];

  LOBYTE(v44) = [v4 count];
  return v44;
}

- (unsigned)getNumOfConnectedPeripherals
{
  v2 = [(ClientCommonAudioProfile *)self coordinatedSet];
  v3 = [v2 count];

  return v3;
}

- (void)setSIRK:(id)a3 withIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ClientCommonAudioProfile *)self setIRK];
  [v8 setData:v6];

  v9 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [(ClientCommonAudioProfile *)self resolvedPeripherals];
    v17 = 138412802;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    v21 = 2048;
    v22 = [v11 count];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "CAP SetSIRK with %@, device %@ count %lu", &v17, 0x20u);
  }

  if (v7)
  {
    v12 = [(ClientCommonAudioProfile *)self resolvedPeripherals];
    [v12 addObject:v7];

    if ([(ClientCommonAudioProfile *)self setSize]== 1)
    {
      v13 = 1;
    }

    else
    {
      v14 = [(ClientCommonAudioProfile *)self resolvedPeripherals];
      v15 = [v14 count];
      v13 = v15 < [(ClientCommonAudioProfile *)self setSize];
    }

    v16 = +[ConnectionManager instance];
    [v16 scanPeripherals:v13];
  }
}

- (void)publishHALDevice:(id)a3
{
  v4 = a3;
  [(ClientCommonAudioProfile *)self determineAudioConfigFromHALConfig:v4];
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
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending Audio Device Publish Request %@", &v10, 0xCu);
    }

    v8 = +[LEAudioXPCListener instance];
    v9 = [(ClientCommonAudioProfile *)self sessionID];
    [v8 publishAudioDeviceForSession:v9 withDeviceInfo:v4];
  }
}

- (void)determineAudioConfigFromHALConfig:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kCoordinatedSetSize"];
  v6 = [v5 unsignedIntValue];

  v7 = [v4 objectForKeyedSubscript:@"kSinkAudioLocations"];
  v8 = [v7 unsignedIntValue];

  v9 = [v4 objectForKeyedSubscript:@"kSourceAudioLocations"];

  v10 = [v9 unsignedIntValue];
  v11 = [(ClientCommonAudioProfile *)self coordinatedSet];
  v12 = [v11 count];

  if (v6 < 2u)
  {
    if (!v8)
    {
      if (!v10)
      {
        return;
      }

      if ([(ClientCommonAudioProfile *)self determineChannelCount:v10]<= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = 14;
      }

      goto LABEL_24;
    }

    if ([(ClientCommonAudioProfile *)self determineChannelCount:v8]<= 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = 3;
    }

    [(ClientCommonAudioProfile *)self setOutputAudioConfigIdx:v14];
    if (v10)
    {
      if ([(ClientCommonAudioProfile *)self determineChannelCount:v8]<= 1)
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
    if (v6 <= v12)
    {
      if (v8)
      {
        [(ClientCommonAudioProfile *)self setOutputAudioConfigIdx:6];
        if (!v10)
        {
          return;
        }

        v13 = 10;
      }

      else
      {
        if (!v10)
        {
          return;
        }

        v13 = 13;
      }

      goto LABEL_24;
    }

    if (v8)
    {
      [(ClientCommonAudioProfile *)self setOutputAudioConfigIdx:0];
    }

    if (v10)
    {
      v13 = 2;
      goto LABEL_24;
    }
  }
}

- (unsigned)determineChannelCount:(unsigned int)a3
{
  v3.i32[0] = a3;
  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (a3)
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
  v4 = [(ClientCommonAudioProfile *)self connIsoGroup];
  v5 = [v4 cisSet];

  obj = v5;
  v58 = [v5 countByEnumeratingWithState:&v105 objects:v116 count:16];
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
        v9 = [v7 cisParams];
        v10 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v9 cisID]);
        [v8 setValue:v10 forKey:@"kLEAudioXPCMsgArgCisID"];

        v11 = [(ClientCommonAudioProfile *)self connIsoGroup];
        v12 = [v11 cigParams];
        v13 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v12 cigID]);
        [v8 setValue:v13 forKey:@"kLEAudioXPCMsgArgCigID"];

        v14 = [v7 deviceID];
        v15 = [v14 UUIDString];
        [v8 setValue:v15 forKey:@"kLEAudioXPCMsgArgDeviceID"];

        v16 = [v7 sinkASE];

        v104 = v8;
        if (v16)
        {
          v114[0] = @"kLEAudioXPCMsgArgAudioEndPointType";
          v101 = [v7 sinkASE];
          v99 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v101 type]);
          v115[0] = v99;
          v114[1] = @"kLEAudioXPCMsgArgAudioEndPointFraming";
          v97 = [v7 sinkASE];
          v95 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v97 framing]);
          v115[1] = v95;
          v114[2] = @"kLEAudioXPCMsgArgAudioEndPointMaxTransportLatency";
          v93 = [v7 sinkASE];
          v91 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v93 maxTransportLatency]);
          v115[2] = v91;
          v114[3] = @"kLEAudioXPCMsgArgAudioEndPointPhy";
          v89 = [v7 sinkASE];
          v87 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v89 clientPHY]);
          v115[3] = v87;
          v114[4] = @"kLEAudioXPCMsgArgAudioEndPointPresentationDelay";
          v85 = [v7 sinkASE];
          v83 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v85 clientPresentationDelay]);
          v115[4] = v83;
          v114[5] = @"kLEAudioXPCMsgArgAudioEndPointCodecID";
          v81 = [v7 sinkASE];
          v79 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v81 codecID]);
          v115[5] = v79;
          v114[6] = @"kLEAudioXPCMsgArgAudioEndPointSamplingFrequency";
          v77 = [v7 sinkASE];
          v75 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v77 samplingFrequency]);
          v115[6] = v75;
          v114[7] = @"kLEAudioXPCMsgArgAudioEndPointFrameDuration";
          v73 = [v7 sinkASE];
          v71 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v73 frameDuration]);
          v115[7] = v71;
          v114[8] = @"kLEAudioXPCMsgArgAudioEndPointAudioChannelCount";
          v69 = [v7 sinkASE];
          v67 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v69 audioChanAllocMask]);
          v115[8] = v67;
          v114[9] = @"kLEAudioXPCMsgArgAudioEndPointOctetsPerCodecFrame";
          v65 = [v7 sinkASE];
          v63 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v65 octetsPerCodecFrame]);
          v115[9] = v63;
          v114[10] = @"kLEAudioXPCMsgArgAudioEndPointCodecFramePerSdu";
          v61 = [v7 sinkASE];
          v59 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v61 codecFramePerSdu]);
          v115[10] = v59;
          v114[11] = @"kLEAudioXPCMsgArgAudioEndPointMaxSdu";
          v17 = [v7 sinkASE];
          v18 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v17 clientMaxSdu]);
          v115[11] = v18;
          v114[12] = @"kLEAudioXPCMsgArgAudioEndPointTargetLatency";
          v19 = [v7 sinkASE];
          v20 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v19 targetLatency]);
          v115[12] = v20;
          v114[13] = @"kLEAudioXPCMsgArgAudioEndPointAudioLocation";
          v21 = [v7 sinkASE];
          v22 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v21 audioChanAllocMask]);
          v115[13] = v22;
          v114[14] = @"kLEAudioXPCMsgArgAudioEndPointClientSDUInterval";
          v23 = [v7 sinkASE];
          v24 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v23 clientSduInterval]);
          v115[14] = v24;
          v25 = [NSDictionary dictionaryWithObjects:v115 forKeys:v114 count:15];

          v8 = v104;
          [v104 setValue:v25 forKey:@"kLEAudioXPCMsgArgAudioEndPointSink"];
          v26 = qword_1000A9FE0;
          if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
          {
            v27 = v26;
            v28 = [v7 cisParams];
            v29 = [v28 cisID];
            v30 = [v7 sinkASE];
            v31 = [v30 audioChanAllocMask];
            *buf = 67109376;
            *v110 = v29;
            *&v110[4] = 1024;
            *&v110[6] = v31;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "CIG setup for CIS %d for Sink Location 0x%02x", buf, 0xEu);
          }
        }

        v32 = [v7 sourceASE];

        if (v32)
        {
          v112[0] = @"kLEAudioXPCMsgArgAudioEndPointType";
          v102 = [v7 sourceASE];
          v100 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v102 type]);
          v113[0] = v100;
          v112[1] = @"kLEAudioXPCMsgArgAudioEndPointFraming";
          v98 = [v7 sourceASE];
          v96 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v98 framing]);
          v113[1] = v96;
          v112[2] = @"kLEAudioXPCMsgArgAudioEndPointMaxTransportLatency";
          v94 = [v7 sourceASE];
          v92 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v94 maxTransportLatency]);
          v113[2] = v92;
          v112[3] = @"kLEAudioXPCMsgArgAudioEndPointPhy";
          v90 = [v7 sourceASE];
          v88 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v90 clientPHY]);
          v113[3] = v88;
          v112[4] = @"kLEAudioXPCMsgArgAudioEndPointPresentationDelay";
          v86 = [v7 sourceASE];
          v84 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v86 clientPresentationDelay]);
          v113[4] = v84;
          v112[5] = @"kLEAudioXPCMsgArgAudioEndPointCodecID";
          v82 = [v7 sourceASE];
          v80 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v82 codecID]);
          v113[5] = v80;
          v112[6] = @"kLEAudioXPCMsgArgAudioEndPointSamplingFrequency";
          v78 = [v7 sourceASE];
          v76 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v78 samplingFrequency]);
          v113[6] = v76;
          v112[7] = @"kLEAudioXPCMsgArgAudioEndPointFrameDuration";
          v74 = [v7 sourceASE];
          v72 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v74 frameDuration]);
          v113[7] = v72;
          v112[8] = @"kLEAudioXPCMsgArgAudioEndPointAudioChannelCount";
          v70 = [v7 sourceASE];
          v68 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v70 audioChanAllocMask]);
          v113[8] = v68;
          v112[9] = @"kLEAudioXPCMsgArgAudioEndPointOctetsPerCodecFrame";
          v66 = [v7 sourceASE];
          v64 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v66 octetsPerCodecFrame]);
          v113[9] = v64;
          v112[10] = @"kLEAudioXPCMsgArgAudioEndPointCodecFramePerSdu";
          v62 = [v7 sourceASE];
          v60 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v62 codecFramePerSdu]);
          v113[10] = v60;
          v112[11] = @"kLEAudioXPCMsgArgAudioEndPointMaxSdu";
          v33 = [v7 sourceASE];
          v34 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v33 clientMaxSdu]);
          v113[11] = v34;
          v112[12] = @"kLEAudioXPCMsgArgAudioEndPointTargetLatency";
          v35 = [v7 sourceASE];
          v36 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v35 targetLatency]);
          v113[12] = v36;
          v112[13] = @"kLEAudioXPCMsgArgAudioEndPointAudioLocation";
          v37 = [v7 sourceASE];
          v38 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v37 audioChanAllocMask]);
          v113[13] = v38;
          v112[14] = @"kLEAudioXPCMsgArgAudioEndPointClientSDUInterval";
          v39 = [v7 sourceASE];
          v40 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v39 clientSduInterval]);
          v113[14] = v40;
          v41 = [NSDictionary dictionaryWithObjects:v113 forKeys:v112 count:15];

          v8 = v104;
          [v104 setValue:v41 forKey:@"kLEAudioXPCMsgArgAudioEndPointSource"];
          v42 = qword_1000A9FE0;
          if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
          {
            v43 = v42;
            v44 = [v7 cisParams];
            v45 = [v44 cisID];
            v46 = [v7 sourceASE];
            v47 = [v46 audioChanAllocMask];
            *buf = 67109376;
            *v110 = v45;
            *&v110[4] = 1024;
            *&v110[6] = v47;
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
  v52 = [(ClientCommonAudioProfile *)self sessionID];
  [v51 setupCIGForHALSession:v52 withDeviceInfo:v53];
}

- (void)CAPUnicastAudioStart:(id)a3 withAudioChanConfig:(id)a4
{
  v5 = a3;
  v6 = [(ClientCommonAudioProfile *)self currentCAPProcedure];

  v7 = qword_1000A9FE0;
  if (v6)
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005C2D4();
    }

    v8 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [v8 description];

    [(ClientCommonAudioProfile *)self queueAudioStreamProcedure:v5 withNextProcedure:&unk_1000A9AC8];
    v9 = +[LEAudioXPCListener instance];
    v10 = [(ClientCommonAudioProfile *)self sessionID];
    [v9 notifyCAPProcedureComplete:v10 withInfo:&off_10009B340];
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

    v14 = [(ClientCommonAudioProfile *)self sortAcceptorsByRank:v5];

    [(ClientCommonAudioProfile *)self setOrderedSet:v14];
    v15 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [v15 setNextEvent:3];

    v16 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [v16 setCurrentStateMachine:&unk_1000A9AC8];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100018738;
    block[3] = &unk_100094CB8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)CAPUnicastAudioUpdate:(id)a3 withAudioChanConfig:(id)a4
{
  v5 = a3;
  v6 = [(ClientCommonAudioProfile *)self currentCAPProcedure];

  v7 = qword_1000A9FE0;
  if (v6)
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005C2D4();
    }

    v8 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [v8 description];

    [(ClientCommonAudioProfile *)self queueAudioStreamProcedure:v5 withNextProcedure:&unk_1000A9BF0];
    v9 = +[LEAudioXPCListener instance];
    v10 = [(ClientCommonAudioProfile *)self sessionID];
    [v9 notifyCAPProcedureComplete:v10 withInfo:&off_10009B390];
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

    v14 = [(ClientCommonAudioProfile *)self sortAcceptorsByRank:v5];

    [(ClientCommonAudioProfile *)self setOrderedSet:v14];
    v15 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [v15 setNextEvent:3];

    v16 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [v16 setCurrentStateMachine:&unk_1000A9BF0];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100018CD0;
    block[3] = &unk_100094CB8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)CAPUnicastAudioStopDisable:(id)a3
{
  v4 = a3;
  v5 = [(ClientCommonAudioProfile *)self currentCAPProcedure];

  v6 = qword_1000A9FE0;
  if (v5)
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005C2D4();
    }

    v7 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [v7 description];

    [(ClientCommonAudioProfile *)self queueAudioStreamProcedure:v4 withNextProcedure:&unk_1000A9C20];
    v8 = +[LEAudioXPCListener instance];
    v9 = [(ClientCommonAudioProfile *)self sessionID];
    [v8 notifyCAPProcedureComplete:v9 withInfo:&off_10009B3B8];
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

    v13 = [(ClientCommonAudioProfile *)self sortAcceptorsByRank:v4];

    [(ClientCommonAudioProfile *)self setOrderedSet:v13];
    v14 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [v14 setNextEvent:3];

    v15 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [v15 setCurrentStateMachine:&unk_1000A9C20];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100018F94;
    block[3] = &unk_100094CB8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)CAPUnicastAudioStopRelease:(id)a3
{
  v4 = a3;
  v5 = [(ClientCommonAudioProfile *)self currentCAPProcedure];

  v6 = qword_1000A9FE0;
  if (v5)
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005C2D4();
    }

    v7 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [v7 description];

    [(ClientCommonAudioProfile *)self queueAudioStreamProcedure:v4 withNextProcedure:&unk_1000A9C50];
    v8 = +[LEAudioXPCListener instance];
    v9 = [(ClientCommonAudioProfile *)self sessionID];
    [v8 notifyCAPProcedureComplete:v9 withInfo:&off_10009B3E0];
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

    v13 = [(ClientCommonAudioProfile *)self sortAcceptorsByRank:v4];

    [(ClientCommonAudioProfile *)self setOrderedSet:v13];
    v14 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [v14 setNextEvent:3];

    v15 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [v15 setCurrentStateMachine:&unk_1000A9C50];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100019258;
    block[3] = &unk_100094CB8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)queueAudioStreamProcedure:(id)a3 withNextProcedure:(const CAPStateMachine *)a4
{
  v6 = a3;
  v7 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Queuing Audio Stream Procedure", v10, 2u);
  }

  if (a4 == &unk_1000A9C50 || a4 == &unk_1000A9C20 || a4 == &unk_1000A9AC8 || a4 == &unk_1000A9BF0)
  {
    v8 = objc_alloc_init(CAPProcedure);
    v9 = [v6 mutableCopy];
    [(CAPProcedure *)v8 setDevices:v9];

    [(CAPProcedure *)v8 setCurrentStateMachine:a4];
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
  v3 = [(ClientCommonAudioProfile *)self currentCAPProcedure];

  v4 = qword_1000A9FE0;
  if (v3)
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005C3A4();
    }

    v5 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [v5 description];
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
    v5 = [(NSMutableArray *)*p_streamCAPProcQueue firstObject];
    if ([v5 currentStateMachine] == &unk_1000A9AC8)
    {
      v17 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v31) = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Launching Queued Cap procedure Unicast Audio Start", &v31, 2u);
      }

      v18 = [v5 devices];
      v19 = [(ClientCommonAudioProfile *)self getAudioConfigList];
      [(ClientCommonAudioProfile *)self CAPUnicastAudioStart:v18 withAudioChanConfig:v19];
    }

    else
    {
      if ([v5 currentStateMachine] == &unk_1000A9C20)
      {
        v20 = qword_1000A9FE0;
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v31) = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Launching Queued Cap procedure Unicast Audio Stop Disable", &v31, 2u);
        }

        v18 = [v5 devices];
        [(ClientCommonAudioProfile *)self CAPUnicastAudioStopDisable:v18];
        goto LABEL_57;
      }

      if ([v5 currentStateMachine] == &unk_1000A9C50)
      {
        v27 = qword_1000A9FE0;
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v31) = 0;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Launching Queued Cap procedure Unicast Audio Stop Release", &v31, 2u);
        }

        v18 = [v5 devices];
        [(ClientCommonAudioProfile *)self CAPUnicastAudioStopRelease:v18];
        goto LABEL_57;
      }

      v9 = [v5 currentStateMachine];
      v10 = qword_1000A9FE0;
      if (v9 != &unk_1000A9BF0)
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

      v18 = [v5 devices];
      v19 = [(ClientCommonAudioProfile *)self getAudioConfigList];
      [(ClientCommonAudioProfile *)self CAPUnicastAudioUpdate:v18 withAudioChanConfig:v19];
    }

LABEL_57:
LABEL_58:
    [(NSMutableArray *)*p_streamCAPProcQueue removeObject:v5];
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
    v5 = [(NSMutableArray *)*p_streamCAPProcQueue firstObject];
    if ([v5 currentStateMachine] == &unk_1000A9B28)
    {
      v28 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v31) = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Launching Queued Cap procedure Commander Mic Mute", &v31, 2u);
      }

      v18 = [v5 devices];
      -[ClientCommonAudioProfile CAPCommanderMicrophoneMuteState:withMute:](self, "CAPCommanderMicrophoneMuteState:withMute:", v18, [v5 microphoneMute]);
    }

    else
    {
      v15 = [v5 currentStateMachine];
      v16 = qword_1000A9FE0;
      if (v15 != &unk_1000A9B50)
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

      v18 = [v5 devices];
      -[ClientCommonAudioProfile CAPCommanderChangeMicrophoneGainSetting:withGainSetting:forInputType:](self, "CAPCommanderChangeMicrophoneGainSetting:withGainSetting:forInputType:", v18, [v5 gainSetting], objc_msgSend(v5, "inputType"));
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
    v5 = [(NSMutableArray *)*p_streamCAPProcQueue firstObject];
    if ([v5 currentStateMachine] == &unk_1000A9B78)
    {
      v29 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v31) = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Launching Queued Cap procedure Commander Volume Change", &v31, 2u);
      }

      v18 = [v5 devices];
      -[ClientCommonAudioProfile CAPCommanderChangeVolume:withVolume:](self, "CAPCommanderChangeVolume:withVolume:", v18, [v5 volume]);
    }

    else if ([v5 currentStateMachine] == &unk_1000A9BC8)
    {
      v30 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v31) = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Launching Queued Cap procedure Commander Volume Offset", &v31, 2u);
      }

      v18 = [v5 devices];
      -[ClientCommonAudioProfile CAPCommanderChangeVolumeOffset:withOffset:forAudioLocation:](self, "CAPCommanderChangeVolumeOffset:withOffset:forAudioLocation:", v18, [v5 volumeOffset], objc_msgSend(v5, "audioLocation"));
    }

    else
    {
      v25 = [v5 currentStateMachine];
      v26 = qword_1000A9FE0;
      if (v25 != &unk_1000A9BA0)
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

      v18 = [v5 devices];
      -[ClientCommonAudioProfile CAPCommanderChangeVolumeMuteState:withMute:](self, "CAPCommanderChangeVolumeMuteState:withMute:", v18, [v5 volumeMute]);
    }

    goto LABEL_57;
  }
}

- (id)sortAcceptorsByRank:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
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
        v12 = [(ClientCommonAudioProfile *)self coordinatedSet];
        v13 = [v12 objectForKey:v11];

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

- (id)getOrderedAccessSet:(id)a3
{
  v4 = [(ClientCommonAudioProfile *)self sortAcceptorsByRank:a3];
  [(ClientCommonAudioProfile *)self setOrderedSet:v4];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(ClientCommonAudioProfile *)self orderedSet];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v10 getCoordinatedSetLock];
        v12 = qword_1000A9FE0;
        if (v11 == 2)
        {
          if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
          {
            sub_10005C474(v12);
          }

          v17 = 0;
          goto LABEL_15;
        }

        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v12;
          v14 = [v10 peripheral];
          v15 = [v14 identifier];
          v16 = [v10 getCoordinatedSetMemberRank];
          *buf = 138412546;
          v24 = v15;
          v25 = 1024;
          v26 = v16;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Ordered Access: Set Member %@ Member Rank %u", buf, 0x12u);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v17 = [(ClientCommonAudioProfile *)self orderedSet];
LABEL_15:

  return v17;
}

- (void)processSM:(id)a3
{
  v4 = a3;
  v5 = [(ClientCommonAudioProfile *)self currentCAPProcedure];

  v6 = qword_1000A9FE0;
  v7 = os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v29 = 136315138;
      v30 = "[ClientCommonAudioProfile processSM:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "*** Begin %s ***", &v29, 0xCu);
    }

    v8 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [v8 description];

    v9 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    v10 = [v9 findCurrentStateMachine];

    if (v10 && *v10)
    {
      v11 = 0;
      v12 = v10;
      while (1)
      {
        v13 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
        v14 = [v13 nextEvent];
        v15 = *v12;

        if (v14 == v15)
        {
          break;
        }

        v12 = &v10[3 * ++v11];
        if (!*v12)
        {
          goto LABEL_22;
        }
      }

      v19 = [off_1000A9AC0 objectAtIndexedSubscript:v12[2]];
      v20 = NSSelectorFromString(v19);

      v21 = v12[1];
      v22 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
      [v22 setCurrentState:v21];

      if (v20)
      {
        if (v4)
        {
          [v4 setPendingStateTransition:0];
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

- (id)getNextAcceptor:(BOOL)a3
{
  v3 = a3;
  v5 = &qword_1000A9FE0;
  v6 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [(ClientCommonAudioProfile *)self currentAcceptorIndex];
    v9 = [(ClientCommonAudioProfile *)self orderedSet];
    v10 = [v9 count];
    v11 = @"forward";
    *buf = 67109634;
    *&buf[4] = v8;
    if (v3)
    {
      v11 = @"reverse";
    }

    *&buf[8] = 2048;
    *&buf[10] = v10;
    v29 = 2112;
    v30 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Current Acceptor Index: %d ordered set count: %lu. Going in %@ order.", buf, 0x1Cu);
  }

  v12 = [(ClientCommonAudioProfile *)self orderedSet];
  v13 = [v12 count];

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
      if (v3)
      {
        v15 = ~v15 + v13;
      }

      v16 = [(ClientCommonAudioProfile *)self orderedSet];
      v17 = [v16 objectAtIndexedSubscript:v15];

      v18 = [v17 peripheral];
      v19 = [v18 state];

      v20 = *v5;
      v21 = os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT);
      if (v19 == 2)
      {
        break;
      }

      if (v21)
      {
        v22 = v20;
        v23 = [v17 peripheral];
        [v23 identifier];
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
          v10 = [v7 isLocked];
          *buf = v15;
          LODWORD(v18) = v10;
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
  v14 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
  [v14 setNextEvent:v4];

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

  v4 = [(ClientCommonAudioProfile *)self useCSIPOrderedAccessProcedure];
  v5 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
  v6 = v5;
  if (v4)
  {
    v7 = 5;
  }

  else
  {
    v7 = 3;
  }

  [v5 setNextEvent:v7];

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
    v9 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [v9 setNextEvent:5];

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
  v2 = [(ClientCommonAudioProfile *)self orderedSet];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v26 count:16];
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
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = [v8 getCoordinatedSetLock];
        v10 = qword_1000A9FE0;
        if (v9 == 2)
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
          v12 = [v8 peripheral];
          v13 = [v12 identifier];
          v14 = [v8 getCoordinatedSetMemberRank];
          *buf = v17;
          v23 = v13;
          v24 = 1024;
          v25 = v14;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Ordered Access: member %@ unlocked with rank %u", buf, 0x12u);
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v18 objects:v26 count:16];
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

  v3 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
  if ([v3 currentStateMachine] == &unk_1000A9AC8)
  {
LABEL_13:

    return 1;
  }

  v4 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
  if ([v4 currentStateMachine] == &unk_1000A9BF0)
  {
LABEL_12:

    goto LABEL_13;
  }

  v5 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
  if ([v5 currentStateMachine] == &unk_1000A9C20)
  {

    goto LABEL_12;
  }

  v6 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
  v7 = [v6 currentStateMachine];

  if (v7 == &unk_1000A9C50)
  {
    return 1;
  }

LABEL_6:
  if (![(ClientCommonAudioProfile *)self useCSIPOrderedAccessWithCaptureRendering])
  {
    return 0;
  }

  v3 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
  if ([v3 currentStateMachine] == &unk_1000A9B78)
  {
    goto LABEL_13;
  }

  v4 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
  if ([v4 currentStateMachine] == &unk_1000A9BA0)
  {
    goto LABEL_12;
  }

  v8 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
  v9 = [v8 currentStateMachine];

  return v9 == &unk_1000A9B28;
}

- (unsigned)getCAPProcType
{
  v3 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
  v4 = [v3 currentStateMachine];

  if (v4 == &unk_1000A9AC8)
  {
    return [(ClientCommonAudioProfile *)self cigToJoin]!= 255;
  }

  v5 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
  v6 = [v5 currentStateMachine];

  if (v6 == &unk_1000A9BF0)
  {
    return 2;
  }

  v7 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
  v8 = [v7 currentStateMachine];

  if (v8 == &unk_1000A9C20)
  {
    return 3;
  }

  v9 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
  v10 = [v9 currentStateMachine];

  if (v10 == &unk_1000A9C50)
  {
    return 4;
  }

  v11 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
  v12 = [v11 currentStateMachine];

  if (v12 == &unk_1000A9B78)
  {
    return 5;
  }

  v13 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
  v14 = [v13 currentStateMachine];

  if (v14 == &unk_1000A9BA0)
  {
    return 7;
  }

  v15 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
  v16 = [v15 currentStateMachine];

  if (v16 == &unk_1000A9B28)
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
  v5 = [(ClientCommonAudioProfile *)self getCAPProcType];
  v22[0] = @"kLEAudioXPCMsgArgCAPProcedureType";
  v6 = [NSNumber numberWithUnsignedChar:v5];
  v22[1] = @"kLEAudioXPCMsgArgCAPProcedureStatus";
  v23[0] = v6;
  v7 = [NSNumber numberWithUnsignedChar:[(ClientCommonAudioProfile *)self procedureStatus]];
  v23[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];

  v9 = +[LEAudioXPCListener instance];
  v10 = [(ClientCommonAudioProfile *)self sessionID];
  [v9 notifyCAPProcedureComplete:v10 withInfo:v8];

  v11 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
  [v11 setCurrentState:0];

  v12 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
  [v12 setNextEvent:0];

  [(ClientCommonAudioProfile *)self setCurrentCAPProcedure:0];
  [(ClientCommonAudioProfile *)self clearPendingStateTransition];
  [(ClientCommonAudioProfile *)self setOrderedSet:0];
  v13 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = [ClientCommonAudioProfile procTypeToString:v5];
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

  v5 = [(ClientCommonAudioProfile *)self cigToJoin];
  v6 = [(ClientCommonAudioProfile *)self connIsoGroup];
  v7 = [v6 cigParams];
  v8 = [v7 cigID];
  v56 = self;
  if (v5 == 255)
  {
    if (v8 == 255)
    {
    }

    else
    {
      v14 = [(ClientCommonAudioProfile *)self connIsoGroup];
      v15 = [v14 cigParams];
      v16 = [v15 cigID];
      v17 = [(ClientCommonAudioProfile *)v56 cigID];

      v13 = v16 == v17;
      self = v56;
      if (!v13)
      {
        v18 = qword_1000A9FE0;
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v18;
          v20 = [(ClientCommonAudioProfile *)v56 cigID];
          v21 = [(ClientCommonAudioProfile *)v56 connIsoGroup];
          v22 = [v21 cigParams];
          v23 = [v22 cigID];
          *buf = 67109376;
          LODWORD(v63) = v20;
          WORD2(v63) = 1024;
          *(&v63 + 6) = v23;
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

    v29 = [(ClientCommonAudioProfile *)self connIsoGroup];
    v30 = [v29 cisSet];
    v31 = [v30 count];

    if (v31)
    {
      v32 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        v33 = v32;
        v34 = [(ClientCommonAudioProfile *)self connIsoGroup];
        v35 = [v34 cigParams];
        v36 = [v35 cigID];
        *buf = 67109376;
        LODWORD(v63) = v36;
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
    if (v8 == 255)
    {

      goto LABEL_13;
    }

    v9 = [(ClientCommonAudioProfile *)self connIsoGroup];
    v10 = [v9 cigParams];
    v11 = [v10 cigID];
    v12 = [(ClientCommonAudioProfile *)v56 cigToJoin];

    v13 = v11 == v12;
    self = v56;
    if (!v13)
    {
LABEL_13:
      v25 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v25;
        v26 = [(ClientCommonAudioProfile *)self cigToJoin];
        v21 = [(ClientCommonAudioProfile *)self connIsoGroup];
        v22 = [v21 cigParams];
        v27 = [v22 cigID];
        *buf = 67109376;
        LODWORD(v63) = v26;
        WORD2(v63) = 1024;
        *(&v63 + 6) = v27;
        v24 = "Join CIG ID %u does not match active CIG ID %u";
        goto LABEL_15;
      }

      goto LABEL_16;
    }
  }

  v37 = [(ClientCommonAudioProfile *)self getAudioConfigList];
  v38 = [v37 count];
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
  v40 = v37;
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
          v50 = [v46 sinkAudioLocMask];
          v51 = [v46 sourceAudioLocMask];
          *buf = v55;
          LODWORD(v63) = v50;
          v3 = v49;
          self = v56;
          WORD2(v63) = 1024;
          *(&v63 + 6) = v51;
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
  v53 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
  [v53 setNextEvent:v52];

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
      v7 = [(ClientCommonAudioProfile *)self unicastServerAudioConfig];
      v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v8)
      {
        v9 = *v23;
        while (2)
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v23 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v22 + 1) + 8 * i);
            v12 = [(ClientCommonAudioProfile *)self unicastServerAudioConfig];
            v13 = [v12 objectForKey:v11];

            if (v13 == v6)
            {
              v8 = v11;
              goto LABEL_15;
            }
          }

          v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
    v19 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [v19 setNextEvent:11];

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
      v7 = [v6 sendQoSConfigRequest];
      v8 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v13;
        LODWORD(v16) = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Number of ASE(s) pending transition to QoS Config state: %u", buf, 8u);
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
    v16 = "[ClientCommonAudioProfile CAPSmActionConfigQoSNext]";
    v11 = "*** Exit CAP Action %s - waiting for all Acceptors to transition to QoS Config state ***";
  }

  else
  {
    v12 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [v12 setNextEvent:16];

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

  v4 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
  [v4 setNextEvent:18];

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
    v12 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [v12 setNextEvent:21];

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

  v4 = [(ClientCommonAudioProfile *)self connectCISforCIG];
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v10) = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%u number of CIS(es) attempting to establish", buf, 8u);
  }

  if (!v4)
  {
    v6 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [v6 setNextEvent:23];

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
      v7 = [v6 sendReceiverStartReadyRequest];
      v8 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v13;
        LODWORD(v16) = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Number of ASE(s) pending transition to Streaming state: %u", buf, 8u);
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
    v16 = "[ClientCommonAudioProfile CAPSmActionReadyRxStartNext]";
    v11 = "*** Exit CAP Action %s - waiting for all Acceptors to transition to Streaming state ***";
  }

  else
  {
    v12 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [v12 setNextEvent:26];

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
      v7 = [v6 sendDisableRequest];
      v8 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v13;
        LODWORD(v16) = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Number of ASE(s) pending transition to Disabling or QoS Config state: %u", buf, 8u);
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
    v16 = "[ClientCommonAudioProfile CAPSmActionDisableNext]";
    v11 = "*** Exit CAP Action %s waiting t for all Acceptors to transition to Disabling or QoS Config state ***";
  }

  else
  {
    v12 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [v12 setNextEvent:36];

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
      v7 = [v6 sendReceiverStopReadyRequest];
      v8 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v13;
        LODWORD(v16) = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Number of ASE(s) pending transition to QoS Configured state: %u", buf, 8u);
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
    v16 = "[ClientCommonAudioProfile CAPSmActionReadyRxStopNext]";
    v11 = "*** Exit CAP Action %s - waiting for all Acceptors to transition to QoS Config state ***";
  }

  else
  {
    v12 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [v12 setNextEvent:39];

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

  v4 = [(ClientCommonAudioProfile *)self getAudioConfigList];
  v5 = [(ClientCommonAudioProfile *)self getNextAcceptor:0];
  if (v5)
  {
    v7 = v5;
    v6 = 0uLL;
    do
    {
      v23 = v6;
      v24 = v6;
      v21 = v6;
      v22 = v6;
      v8 = v4;
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
            v14 = [v13 matchedAcceptor];

            if (v14 == v7)
            {
              v15 = [v7 matchContextTypeAvailabilityForConfig:v13];
              if (v15)
              {
                v17 = v15;

                [(ClientCommonAudioProfile *)self setProcedureStatus:v17];
                v18 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
                [v18 setNextEvent:31];

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

      v7 = v16;
      v6 = 0uLL;
    }

    while (v16);
  }

  v7 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
  [v7 setNextEvent:30];
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
    v12 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [v12 setNextEvent:33];

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
      v7 = [v6 sendReleaseRequest];
      v8 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v13;
        LODWORD(v16) = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Number of ASE(s) pending transition to Releasing state: %u", buf, 8u);
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
    v16 = "[ClientCommonAudioProfile CAPSmActionReleaseNext]";
    v11 = "*** Exit CAP Action %s - waiting for all Acceptors to transition to Releasing state ***";
  }

  else
  {
    v12 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [v12 setNextEvent:42];

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
      v7 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
      [v6 setPendingStateTransition:{objc_msgSend(v6, "setAbsoluteVolume:", objc_msgSend(v7, "volume"))}];

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

        v11 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
        v12 = [v11 volume];
        *buf = v17;
        v20 = v10;
        v21 = 1024;
        v22 = v12;
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
    v16 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [v16 setNextEvent:45];

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
      v7 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
      v8 = [v7 volumeOffset];
      v9 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
      [v6 setPendingStateTransition:{objc_msgSend(v6, "setVolumeOffset:audioLocation:", v8, objc_msgSend(v9, "audioLocation"))}];

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

        v13 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
        v14 = [v13 volumeOffset];
        v15 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
        v16 = [v15 audioLocation];
        *buf = v21;
        v24 = v12;
        v25 = 1024;
        v26 = v14;
        v27 = 1024;
        v28 = v16;
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
    v20 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [v20 setNextEvent:51];

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
      v7 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
      [v6 setPendingStateTransition:{objc_msgSend(v6, "setVolumeMute:", objc_msgSend(v7, "volumeMute") != 0)}];

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

        v11 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
        v12 = [v11 volumeMute];
        *buf = v17;
        v20 = v10;
        v21 = 1024;
        v22 = v12;
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
    v16 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [v16 setNextEvent:47];

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
      v7 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
      [v6 setPendingStateTransition:{objc_msgSend(v6, "setMicrophoneMute:", objc_msgSend(v7, "microphoneMute"))}];

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

        v11 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
        v12 = [v11 microphoneMute];
        *buf = v17;
        v20 = v10;
        v21 = 1024;
        v22 = v12;
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
    v16 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [v16 setNextEvent:49];

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
      v7 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
      v8 = [v7 gainSetting];
      v9 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
      [v6 setPendingStateTransition:{objc_msgSend(v6, "setMicrophoneGainSetting:inputType:", v8, objc_msgSend(v9, "inputType"))}];

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

        v13 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
        v14 = [v13 gainSetting];
        v15 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
        v16 = [v15 inputType];
        *buf = v21;
        v24 = v12;
        v25 = 1024;
        v26 = v14;
        v27 = 1024;
        v28 = v16;
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
    v20 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    [v20 setNextEvent:53];

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
  v3 = [(ClientCommonAudioProfile *)self coordinatedSet];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001F9C0;
  v4[3] = &unk_100094F40;
  v4[4] = self;
  [v3 enumerateKeysAndObjectsUsingBlock:v4];

  [(ClientCommonAudioProfile *)self setupCIGForPublishedHALDevice];
}

- (void)sendEnableRequestWithSnkAseID:(id)a3 withSrcAseID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ClientCommonAudioProfile *)self coordinatedSet];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001FAA4;
  v11[3] = &unk_100094F68;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 enumerateKeysAndObjectsUsingBlock:v11];
}

- (void)sendReceiverStartReadyRequest
{
  v3 = [(ClientCommonAudioProfile *)self coordinatedSet];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001FB40;
  v4[3] = &unk_100094F40;
  v4[4] = self;
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

- (void)sendReceiverStopReadyRequest
{
  v3 = [(ClientCommonAudioProfile *)self coordinatedSet];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001FBD4;
  v4[3] = &unk_100094F40;
  v4[4] = self;
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

- (void)sendUpdateMetadataRequest
{
  v3 = [(ClientCommonAudioProfile *)self coordinatedSet];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001FC68;
  v4[3] = &unk_100094F40;
  v4[4] = self;
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

- (void)sendReleaseRequest
{
  v3 = [(ClientCommonAudioProfile *)self coordinatedSet];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001FCFC;
  v4[3] = &unk_100094F40;
  v4[4] = self;
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

- (void)sendDisableRequest
{
  v3 = [(ClientCommonAudioProfile *)self coordinatedSet];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001FD90;
  v4[3] = &unk_100094F40;
  v4[4] = self;
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

- (void)disconnectCISRequestHandler
{
  v3 = objc_alloc_init(NSMutableArray);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(ClientCommonAudioProfile *)self coordinatedSet];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = [(ClientCommonAudioProfile *)self coordinatedSet];
        v11 = [v10 objectForKeyedSubscript:v9];

        v12 = [v11 getAudioStreamEndpoints];
        [v3 addObjectsFromArray:v12];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (unsigned)matchAudioDevicesHandler
{
  v3 = [(ClientCommonAudioProfile *)self getAudioConfigList];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = [(ClientCommonAudioProfile *)self matchConnectedDevices:*(*(&v14 + 1) + 8 * i)];
      }

      v9 = v8;
      v5 = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
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
  v4 = [(ClientCommonAudioProfile *)self coordinatedSet];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 getConfiguredASEInfo];
        if (v11)
        {
          v12 = [v10 peripheral];
          [v3 setObject:v11 forKey:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  v3 = [(ClientCommonAudioProfile *)self orderedSet];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        if (v8)
        {
          [v8 setPendingStateTransition:1];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v3 = [(ClientCommonAudioProfile *)self orderedSet];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        if (v8)
        {
          [v8 setPendingStateTransition:0];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v3 = [(ClientCommonAudioProfile *)self orderedSet];
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        if (v8 && ([v8 pendingStateTransition] & 1) != 0)
        {

          return 1;
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
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
    v13 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    v14 = [v13 currentState];
    v15 = [(ClientCommonAudioProfile *)self currentCAPProcedure];
    v16 = +[ClientCommonAudioProfile stateToString:withCurrentSM:](ClientCommonAudioProfile, "stateToString:withCurrentSM:", v14, [v15 currentStateMachine]);
    *buf = 138412290;
    v22 = v16;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No Acceptor pending state transition in %@ state", buf, 0xCu);

    return 0;
  }

  return result;
}

- (void)sendRelativeVolumeUpRequest
{
  v3 = [(ClientCommonAudioProfile *)self coordinatedSet];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000206D4;
  v4[3] = &unk_100094F40;
  v4[4] = self;
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

- (void)sendRelativeVolumeDownRequest
{
  v3 = [(ClientCommonAudioProfile *)self coordinatedSet];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100020768;
  v4[3] = &unk_100094F40;
  v4[4] = self;
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

- (void)sendVolumeMuteRequest:(BOOL)a3
{
  v5 = [(ClientCommonAudioProfile *)self coordinatedSet];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002080C;
  v6[3] = &unk_100094F90;
  v6[4] = self;
  v7 = a3;
  [v5 enumerateKeysAndObjectsUsingBlock:v6];
}

- (void)sendAbsoluteVolumeRequest:(unsigned __int8)a3
{
  v5 = [(ClientCommonAudioProfile *)self coordinatedSet];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000208B8;
  v6[3] = &unk_100094F90;
  v6[4] = self;
  v7 = a3;
  [v5 enumerateKeysAndObjectsUsingBlock:v6];
}

- (void)sendVolumeOffsetRequest:(signed __int16)a3 audioLocation:(unsigned int)a4
{
  v7 = [(ClientCommonAudioProfile *)self coordinatedSet];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002096C;
  v8[3] = &unk_100094FB8;
  v8[4] = self;
  v10 = a3;
  v9 = a4;
  [v7 enumerateKeysAndObjectsUsingBlock:v8];
}

- (void)sendMicrophoneMuteRequest:(unsigned __int8)a3
{
  v5 = [(ClientCommonAudioProfile *)self coordinatedSet];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100020A1C;
  v6[3] = &unk_100094F90;
  v6[4] = self;
  v7 = a3;
  [v5 enumerateKeysAndObjectsUsingBlock:v6];
}

- (void)sendMicrophoneGainSettingRequest:(char)a3 inputType:(unsigned __int8)a4
{
  v7 = [(ClientCommonAudioProfile *)self coordinatedSet];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100020AD0;
  v8[3] = &unk_100094FE0;
  v8[4] = self;
  v9 = a3;
  v10 = a4;
  [v7 enumerateKeysAndObjectsUsingBlock:v8];
}

- (void)sessionCompleteHandler:(id)a3 withAttributes:(id)a4
{
  v6 = a3;
  v11 = [a4 mutableCopy];
  v7 = [(ClientCommonAudioProfile *)self getConnectedPeripherals];
  v8 = [v7 allKeys];
  [v11 setValue:v8 forKey:@"kCBMsgArgLEAudioCoordinatedSetIds"];

  v9 = [(ClientCommonAudioProfile *)self sessionID];
  [v11 setValue:v9 forKey:@"kCBMsgArgLEAudioSessionID"];

  [v11 setValue:v6 forKey:@"kCBMsgArgLEAudioDeviceUUID"];
  v10 = +[LEAudioXPCSession instance];
  [v10 sessionCompleted:v11];
}

+ (id)stateToString:(unsigned __int8)a3 withCurrentSM:(const CAPStateMachine *)a4
{
  if (a3 < 4u)
  {
    return *(&off_100095000 + a3);
  }

  if (a4 == &unk_1000A9AC8)
  {
    if ((a3 - 4) >= 8u)
    {
      return @"Unknown";
    }

    else
    {
      return *(&off_100095020 + (a3 - 4));
    }
  }

  if (a4 == &unk_1000A9BF0)
  {
    v5 = @"Unknown";
    if (a3 == 5)
    {
      v5 = @"Metadata Update";
    }

    v6 = @"Complete/Availability Match";
    goto LABEL_30;
  }

  if (a4 == &unk_1000A9C50)
  {
    v5 = @"Unknown";
    v6 = @"Complete/Release";
    goto LABEL_30;
  }

  if (a4 == &unk_1000A9C20)
  {
    v5 = @"Unknown";
    if (a3 == 5)
    {
      v5 = @"Reciever Stop Ready";
    }

    v6 = @"Complete/Disable";
    goto LABEL_30;
  }

  if (a4 == &unk_1000A9B78)
  {
    v5 = @"Unknown";
    v6 = @"Change Volume";
    goto LABEL_30;
  }

  if (a4 == &unk_1000A9BA0)
  {
    v5 = @"Unknown";
    v6 = @"Change Volume Mute";
    goto LABEL_30;
  }

  if (a4 == &unk_1000A9B28)
  {
    v5 = @"Unknown";
    v6 = @"Microphone Mute";
    goto LABEL_30;
  }

  if (a4 == &unk_1000A9BC8)
  {
    v5 = @"Unknown";
    v6 = @"Change Volume Offset";
LABEL_30:
    if (a3 == 4)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  result = @"Unknown";
  if (a4 == &unk_1000A9B50 && a3 == 4)
  {
    return @"Change Microphone Gain Setting";
  }

  return result;
}

+ (id)eventToString:(unsigned __int8)a3
{
  if (a3 > 0x35u)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_100095060 + a3);
  }
}

@end