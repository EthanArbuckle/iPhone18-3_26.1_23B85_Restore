@interface TBSService
+ (id)sharedInstance;
- (TBSService)init;
- (id)bearerListCurrentCallsData;
- (id)bearerProviderNameData;
- (id)bearerTechnologyData;
- (id)bearerUniformCallerIdentifierData;
- (id)bearerUriSchemesSupportedListData;
- (id)callControlPointOptionalOpcodesData;
- (id)callProviderIdentifierFromTBSURIScheme:(id)a3;
- (id)callStateData;
- (id)contentControlIdData;
- (id)getCallInfoWithSharedCallIndex:(unsigned __int8)a3;
- (id)incomingCallData;
- (id)statusFlagsData;
- (void)callControlPointNotification:(unsigned __int8)a3 callIndex:(unsigned __int8)a4 result:(unsigned __int8)a5;
- (void)handleCallControlPointWrite:(id)a3;
- (void)handleOriginateCallRequest:(id)a3;
- (void)handleSubscribersForCharacteristic:(id)a3 withNotificationHandler:(id)a4;
- (void)notifyBearerListCurrentCalls;
- (void)notifyBearerProviderName;
- (void)notifyBearerTechnology;
- (void)notifyCallStateChange;
- (void)notifyCallTerminationReason:(unsigned __int8)a3 reason:(unsigned __int8)a4;
- (void)notifyCentralsOfCharacteristicsSubscribed;
- (void)notifyIncomingCall;
- (void)peripheral:(id)a3 didUpdateNotificationStateForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheralManager:(id)a3 central:(id)a4 didSubscribeToCharacteristic:(id)a5;
- (void)peripheralManager:(id)a3 central:(id)a4 didUnsubscribeFromCharacteristic:(id)a5;
- (void)peripheralManager:(id)a3 didReceiveReadRequest:(id)a4;
- (void)peripheralManager:(id)a3 didReceiveWriteRequests:(id)a4;
- (void)providerNameChanged:(id)a3;
@end

@implementation TBSService

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100050708;
  block[3] = &unk_1000953F0;
  block[4] = a1;
  if (qword_1000AA0A8 != -1)
  {
    dispatch_once(&qword_1000AA0A8, block);
  }

  v2 = qword_1000AA0A0;

  return v2;
}

- (TBSService)init
{
  v61.receiver = self;
  v61.super_class = TBSService;
  v2 = [(TBSService *)&v61 init];
  if (v2)
  {
    v3 = objc_alloc_init(TelephonyManager);
    telephoneBearer = v2->_telephoneBearer;
    v2->_telephoneBearer = v3;

    [(TelephonyManager *)v2->_telephoneBearer setDelegate:v2];
    v5 = +[NSMutableDictionary dictionary];
    subscribedCentrals = v2->_subscribedCentrals;
    v2->_subscribedCentrals = v5;

    v7 = [CBMutableCharacteristic alloc];
    v8 = [CBUUID UUIDWithString:CBUUIDBearerProviderNameCharacteristicString];
    v9 = [v7 initWithType:v8 properties:18 value:0 permissions:1];
    bearerProviderNameCharacteristic = v2->_bearerProviderNameCharacteristic;
    v2->_bearerProviderNameCharacteristic = v9;

    v11 = [CBMutableCharacteristic alloc];
    v12 = [CBUUID UUIDWithString:CBUUIDBearerUciCharacteristicString];
    v13 = [v11 initWithType:v12 properties:2 value:0 permissions:1];
    bearerUniformCallerIdentifierCharacteristic = v2->_bearerUniformCallerIdentifierCharacteristic;
    v2->_bearerUniformCallerIdentifierCharacteristic = v13;

    v15 = [CBMutableCharacteristic alloc];
    v16 = [CBUUID UUIDWithString:CBUUIDBearerTechnologyCharacteristicString];
    v17 = [v15 initWithType:v16 properties:18 value:0 permissions:1];
    bearerTechnologyCharacteristic = v2->_bearerTechnologyCharacteristic;
    v2->_bearerTechnologyCharacteristic = v17;

    v19 = [CBMutableCharacteristic alloc];
    v20 = [CBUUID UUIDWithString:CBUUIDBearerUriSchemesSupportedListCharacteristicString];
    v21 = [v19 initWithType:v20 properties:18 value:0 permissions:1];
    bearerUriSchemesSupportedListCharacteristic = v2->_bearerUriSchemesSupportedListCharacteristic;
    v2->_bearerUriSchemesSupportedListCharacteristic = v21;

    v23 = [CBMutableCharacteristic alloc];
    v24 = [CBUUID UUIDWithString:CBUUIDBearerListCurrentCallsCharacteristicString];
    v25 = [v23 initWithType:v24 properties:18 value:0 permissions:1];
    bearerListCurrentCallsCharacteristic = v2->_bearerListCurrentCallsCharacteristic;
    v2->_bearerListCurrentCallsCharacteristic = v25;

    v27 = [CBMutableCharacteristic alloc];
    v28 = [CBUUID UUIDWithString:CBUUIDContentControlIdCharacteristicString];
    v29 = [v27 initWithType:v28 properties:2 value:0 permissions:1];
    contentControlIdCharacteristic = v2->_contentControlIdCharacteristic;
    v2->_contentControlIdCharacteristic = v29;

    v31 = [CBMutableCharacteristic alloc];
    v32 = [CBUUID UUIDWithString:CBUUIDStatusFlagsCharacteristicString];
    v33 = [v31 initWithType:v32 properties:18 value:0 permissions:1];
    statusFlagsCharacteristic = v2->_statusFlagsCharacteristic;
    v2->_statusFlagsCharacteristic = v33;

    v35 = [CBMutableCharacteristic alloc];
    v36 = [CBUUID UUIDWithString:CBUUIDCallStateCharacteristicString];
    v37 = [v35 initWithType:v36 properties:18 value:0 permissions:1];
    callStateCharacteristic = v2->_callStateCharacteristic;
    v2->_callStateCharacteristic = v37;

    v39 = [CBMutableCharacteristic alloc];
    v40 = [CBUUID UUIDWithString:CBUUIDCallControlPointCharacteristicString];
    v41 = [v39 initWithType:v40 properties:28 value:0 permissions:2];
    callControlPointCharacteristic = v2->_callControlPointCharacteristic;
    v2->_callControlPointCharacteristic = v41;

    v43 = [CBMutableCharacteristic alloc];
    v44 = [CBUUID UUIDWithString:CBUUIDCallControlPointOptionalOpcodesCharacteristicString];
    v45 = [v43 initWithType:v44 properties:2 value:0 permissions:1];
    callControlPointOptionalOpcodesCharacteristic = v2->_callControlPointOptionalOpcodesCharacteristic;
    v2->_callControlPointOptionalOpcodesCharacteristic = v45;

    v47 = [CBMutableCharacteristic alloc];
    v48 = [CBUUID UUIDWithString:CBUUIDTerminationReasonCharacteristicString];
    v49 = [v47 initWithType:v48 properties:16 value:0 permissions:0];
    terminationReasonCharacteristic = v2->_terminationReasonCharacteristic;
    v2->_terminationReasonCharacteristic = v49;

    v51 = [CBMutableCharacteristic alloc];
    v52 = [CBUUID UUIDWithString:CBUUIDIncomingCallCharacteristicString];
    v53 = [v51 initWithType:v52 properties:18 value:0 permissions:1];
    incomingCallCharacteristic = v2->_incomingCallCharacteristic;
    v2->_incomingCallCharacteristic = v53;

    v55 = [CBMutableService alloc];
    v56 = [CBUUID UUIDWithString:CBUUIDGenericTelephoneBearerServiceString];
    v57 = [v55 initWithType:v56 primary:1];
    [(Service *)v2 setService:v57];

    v62[0] = v2->_bearerProviderNameCharacteristic;
    v62[1] = v2->_bearerUniformCallerIdentifierCharacteristic;
    v62[2] = v2->_bearerTechnologyCharacteristic;
    v62[3] = v2->_bearerUriSchemesSupportedListCharacteristic;
    v62[4] = v2->_bearerListCurrentCallsCharacteristic;
    v62[5] = v2->_contentControlIdCharacteristic;
    v62[6] = v2->_statusFlagsCharacteristic;
    v62[7] = v2->_callStateCharacteristic;
    v62[8] = v2->_callControlPointCharacteristic;
    v62[9] = v2->_callControlPointOptionalOpcodesCharacteristic;
    v62[10] = v2->_terminationReasonCharacteristic;
    v62[11] = v2->_incomingCallCharacteristic;
    v58 = [NSArray arrayWithObjects:v62 count:12];
    v59 = [(Service *)v2 service];
    [v59 setCharacteristics:v58];
  }

  return v2;
}

- (void)peripheralManager:(id)a3 didReceiveReadRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v7 characteristic];
    v11 = [v10 UUID];
    v36 = 136315394;
    v37 = "[TBSService peripheralManager:didReceiveReadRequest:]";
    v38 = 2112;
    v39 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s : called for %@", &v36, 0x16u);
  }

  v12 = [v7 characteristic];
  v13 = [(TBSService *)self bearerProviderNameCharacteristic];

  if (v12 == v13)
  {
    v34 = [(TBSService *)self bearerProviderNameData];
LABEL_26:
    v35 = v34;
    [v7 setValue:v34];

    v33 = 0;
    goto LABEL_27;
  }

  v14 = [v7 characteristic];
  v15 = [(TBSService *)self bearerUniformCallerIdentifierCharacteristic];

  if (v14 == v15)
  {
    v34 = [(TBSService *)self bearerUniformCallerIdentifierData];
    goto LABEL_26;
  }

  v16 = [v7 characteristic];
  v17 = [(TBSService *)self bearerTechnologyCharacteristic];

  if (v16 == v17)
  {
    v34 = [(TBSService *)self bearerTechnologyData];
    goto LABEL_26;
  }

  v18 = [v7 characteristic];
  v19 = [(TBSService *)self bearerUriSchemesSupportedListCharacteristic];

  if (v18 == v19)
  {
    v34 = [(TBSService *)self bearerUriSchemesSupportedListData];
    goto LABEL_26;
  }

  v20 = [v7 characteristic];
  v21 = [(TBSService *)self bearerListCurrentCallsCharacteristic];

  if (v20 == v21)
  {
    v34 = [(TBSService *)self bearerListCurrentCallsData];
    goto LABEL_26;
  }

  v22 = [v7 characteristic];
  v23 = [(TBSService *)self contentControlIdCharacteristic];

  if (v22 == v23)
  {
    v34 = [(TBSService *)self contentControlIdData];
    goto LABEL_26;
  }

  v24 = [v7 characteristic];
  v25 = [(TBSService *)self statusFlagsCharacteristic];

  if (v24 == v25)
  {
    v34 = [(TBSService *)self statusFlagsData];
    goto LABEL_26;
  }

  v26 = [v7 characteristic];
  v27 = [(TBSService *)self callStateCharacteristic];

  if (v26 == v27)
  {
    v34 = [(TBSService *)self callStateData];
    goto LABEL_26;
  }

  v28 = [v7 characteristic];
  v29 = [(TBSService *)self callControlPointOptionalOpcodesCharacteristic];

  if (v28 == v29)
  {
    v34 = [(TBSService *)self callControlPointOptionalOpcodesData];
    goto LABEL_26;
  }

  v30 = [v7 characteristic];
  v31 = [(TBSService *)self incomingCallCharacteristic];

  if (v30 == v31)
  {
    v34 = [(TBSService *)self incomingCallData];
    goto LABEL_26;
  }

  v32 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
  {
    sub_10005F048(v32, v7);
  }

  v33 = 14;
LABEL_27:
  [(Service *)self respondToRequest:v7 withResult:v33];
}

- (void)peripheralManager:(id)a3 didReceiveWriteRequests:(id)a4
{
  v5 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v20;
    *&v7 = 136315394;
    v18 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v11 characteristic];
        v13 = [(TBSService *)self callControlPointCharacteristic];

        if (v12 == v13)
        {
          [(TBSService *)self handleCallControlPointWrite:v11];
        }

        else
        {
          v14 = qword_1000A9FE0;
          if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
          {
            v15 = v14;
            v16 = [v11 characteristic];
            v17 = [v16 UUID];
            *buf = v18;
            v24 = "[TBSService peripheralManager:didReceiveWriteRequests:]";
            v25 = 2112;
            v26 = v17;
            _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s : Write attempt on unsupported characteristic %@. Rejecting request.", buf, 0x16u);
          }

          [(Service *)self respondToRequest:v11 withResult:3];
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v8);
  }
}

- (void)peripheralManager:(id)a3 central:(id)a4 didSubscribeToCharacteristic:(id)a5
{
  v32 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(TBSService *)self telephoneBearer];
  v11 = [v10 syncObject];

  objc_sync_enter(v11);
  v12 = [(TBSService *)self subscribedCentrals];
  v13 = [v9 UUID];
  v14 = [v12 objectForKeyedSubscript:v13];

  if (!v14)
  {
    v15 = +[NSMutableArray array];
    v16 = [(TBSService *)self subscribedCentrals];
    v17 = [v9 UUID];
    [v16 setObject:v15 forKeyedSubscript:v17];
  }

  v18 = [(TBSService *)self subscribedCentrals];
  v19 = [v9 UUID];
  v20 = [v18 objectForKeyedSubscript:v19];
  v21 = [v20 containsObject:v8];

  if ((v21 & 1) == 0)
  {
    v22 = [(TBSService *)self subscribedCentrals];
    v23 = [v9 UUID];
    v24 = [v22 objectForKeyedSubscript:v23];
    [v24 addObject:v8];

    v25 = qword_1000A9FE0;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [v8 identifier];
      v27 = [v26 UUIDString];
      v28 = [v9 UUID];
      v29 = [(TBSService *)self subscribedCentrals];
      v30 = [v9 UUID];
      v31 = [v29 objectForKeyedSubscript:v30];
      *buf = 136315906;
      v34 = "[TBSService peripheralManager:central:didSubscribeToCharacteristic:]";
      v35 = 2112;
      v36 = v27;
      v37 = 2112;
      v38 = v28;
      v39 = 2048;
      v40 = [v31 count];
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, " %s: central %@ is now subscribed to characteristic %@, number of subscribers is now %lu", buf, 0x2Au);
    }
  }

  objc_sync_exit(v11);
}

- (void)peripheralManager:(id)a3 central:(id)a4 didUnsubscribeFromCharacteristic:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v7 identifier];
    v12 = [v11 UUIDString];
    v13 = [v8 UUID];
    v17 = 136315650;
    v18 = "[TBSService peripheralManager:central:didUnsubscribeFromCharacteristic:]";
    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, " %s: central %@ is now unsubscribed to characteristic %@", &v17, 0x20u);
  }

  v14 = [(TBSService *)self subscribedCentrals];
  v15 = [v8 UUID];
  v16 = [v14 objectForKeyedSubscript:v15];
  [v16 removeObject:v7];
}

- (void)peripheral:(id)a3 didUpdateNotificationStateForCharacteristic:(id)a4 error:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v9)
  {
    v11 = [v8 isNotifying];
    v12 = qword_1000A9FE0;
    v13 = os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (!v13)
      {
        goto LABEL_10;
      }

      v14 = v12;
      v15 = [v8 UUID];
      v17 = 136315394;
      v18 = "[TBSService peripheral:didUpdateNotificationStateForCharacteristic:error:]";
      v19 = 2112;
      v20 = v15;
      v16 = "%s : Started notifying for characteristic %@";
    }

    else
    {
      if (!v13)
      {
        goto LABEL_10;
      }

      v14 = v12;
      v15 = [v8 UUID];
      v17 = 136315394;
      v18 = "[TBSService peripheral:didUpdateNotificationStateForCharacteristic:error:]";
      v19 = 2112;
      v20 = v15;
      v16 = "%s : Stopped notifying for characteristic %@";
    }

    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v16, &v17, 0x16u);

    goto LABEL_10;
  }

  v10 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
  {
    sub_10005F11C(v10, v8, v9);
  }

LABEL_10:
}

- (void)providerNameChanged:(id)a3
{
  v4 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a3;
    v6 = v4;
    v7 = 136315394;
    v8 = "[TBSService providerNameChanged:]";
    v9 = 2080;
    v10 = [a3 UTF8String];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s : Provider name changed passed to TBS: %s", &v7, 0x16u);
  }
}

- (void)handleCallControlPointWrite:(id)a3
{
  v4 = a3;
  v5 = [v4 value];
  v6 = [DataInputStream inputStreamWithData:v5 byteOrder:1];

  v35 = 0;
  [v6 readUint8:&v35 + 1];
  [v6 readUint8:&v35];
  v7 = [(TBSService *)self getCallInfoWithSharedCallIndex:v35];
  v8 = qword_1000A9FE0;
  if (!v7)
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      v31 = v35;
      v32 = HIBYTE(v35);
      v33 = v8;
      v34 = [(TBSService *)self opcodesToString:v32];
      *buf = 136315650;
      v37 = "[TBSService handleCallControlPointWrite:]";
      v38 = 1024;
      *v39 = v31;
      *&v39[4] = 2112;
      *&v39[6] = v34;
      _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%s : peripheral call index %hhu not found!! Cannot preform write %@", buf, 0x1Cu);
    }

    v15 = 3;
    v16 = 10;
    goto LABEL_20;
  }

  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v9 = HIBYTE(v35);
    v10 = v8;
    v11 = [(TBSService *)self opcodesToString:v9];
    v12 = v35;
    v13 = [v7 callDescription];
    *buf = 136315906;
    v37 = "[TBSService handleCallControlPointWrite:]";
    v38 = 2112;
    *v39 = v11;
    *&v39[8] = 1024;
    *&v39[10] = v12;
    v40 = 2112;
    v41 = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s : Received call control point write request opcode %@, peripheralCallIndex %u, for call %@", buf, 0x26u);
  }

  if (HIBYTE(v35) == 1)
  {
    v17 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      v19 = [v7 callDescription];
      *buf = 136315394;
      v37 = "[TBSService handleCallControlPointWrite:]";
      v38 = 2112;
      *v39 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s : Terminating call %@", buf, 0x16u);
    }

    v20 = [(TBSService *)self telephoneBearer];
    v21 = [v7 identifier];
    v22 = [v20 terminateCallWithIdentifier:v21];

    if (!v22)
    {
      v15 = 2;
LABEL_19:
      v16 = 14;
      goto LABEL_20;
    }

    v23 = [(TBSService *)self telephoneBearer];
    v24 = [v23 syncObject];

    objc_sync_enter(v24);
    v25 = [(TBSService *)self telephoneBearer];
    [v25 deleteCallWithSharedCallIndex:{objc_msgSend(v7, "sharedCallIdx")}];

    objc_sync_exit(v24);
    [(Service *)self respondToRequest:v4 withResult:0];
    v15 = 0;
  }

  else
  {
    if (HIBYTE(v35))
    {
      v15 = 1;
      v16 = 6;
LABEL_20:
      [(Service *)self respondToRequest:v4 withResult:v16];
LABEL_21:
      v26 = 0;
      LOBYTE(v35) = 0;
      goto LABEL_22;
    }

    if ([v7 callState])
    {
      v14 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
      {
        sub_10005F200(v14, v7);
      }

      v15 = 4;
      goto LABEL_19;
    }

    v27 = [(TBSService *)self telephoneBearer];
    v28 = [v7 identifier];
    v29 = [v27 acceptCallWithIdentifier:v28];

    if (v29)
    {
      v30 = 0;
    }

    else
    {
      v30 = 14;
    }

    if (v29)
    {
      v15 = 0;
    }

    else
    {
      v15 = 2;
    }

    [(Service *)self respondToRequest:v4 withResult:v30];
    if (!v29)
    {
      goto LABEL_21;
    }
  }

  v26 = v35;
LABEL_22:
  [(TBSService *)self callControlPointNotification:HIBYTE(v35) callIndex:v26 result:v15];
  if (HIBYTE(v35) == 1)
  {
    -[TBSService notifyCallTerminationReason:reason:](self, "notifyCallTerminationReason:reason:", [v7 sharedCallIdx], 6);
  }
}

- (void)handleOriginateCallRequest:(id)a3
{
  v11 = [a3 componentsSeparatedByString:@":"];
  v4 = [v11 count] == 2;
  v5 = v11;
  if (v4)
  {
    v6 = [v11 firstObject];
    v7 = [(TBSService *)self callProviderIdentifierFromTBSURIScheme:v6];

    v8 = [v11 lastObject];
    v9 = v8;
    if (v7 && v8)
    {
      v10 = [(TBSService *)self telephoneBearer];
      [v10 dialCall:v9 withProvider:v7];
    }

    v5 = v11;
  }
}

- (void)notifyCentralsOfCharacteristicsSubscribed
{
  v3 = [(TBSService *)self telephoneBearer];
  v4 = [v3 syncObject];

  objc_sync_enter(v4);
  [(TBSService *)self notifyCallStateChange];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [(TBSService *)self telephoneBearer];
  v6 = [v5 callList];

  v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v7)
  {
    v8 = *v11;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v6);
        }

        if (![*(*(&v10 + 1) + 8 * i) callState])
        {
          [(TBSService *)self notifyIncomingCall];
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(TBSService *)self notifyBearerListCurrentCalls];
  objc_sync_exit(v4);
}

- (void)notifyCallStateChange
{
  v3 = [(TBSService *)self callStateCharacteristic];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000521E0;
  v4[3] = &unk_100095518;
  v4[4] = self;
  [(TBSService *)self handleSubscribersForCharacteristic:v3 withNotificationHandler:v4];
}

- (void)notifyBearerListCurrentCalls
{
  v3 = [(TBSService *)self bearerListCurrentCallsCharacteristic];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000522FC;
  v4[3] = &unk_100095518;
  v4[4] = self;
  [(TBSService *)self handleSubscribersForCharacteristic:v3 withNotificationHandler:v4];
}

- (void)notifyBearerProviderName
{
  v3 = [(TBSService *)self bearerProviderNameCharacteristic];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100052418;
  v4[3] = &unk_100095518;
  v4[4] = self;
  [(TBSService *)self handleSubscribersForCharacteristic:v3 withNotificationHandler:v4];
}

- (void)notifyBearerTechnology
{
  v3 = [(TBSService *)self bearerTechnologyCharacteristic];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100052534;
  v4[3] = &unk_100095518;
  v4[4] = self;
  [(TBSService *)self handleSubscribersForCharacteristic:v3 withNotificationHandler:v4];
}

- (void)notifyIncomingCall
{
  v3 = [(TBSService *)self incomingCallCharacteristic];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100052650;
  v4[3] = &unk_100095518;
  v4[4] = self;
  [(TBSService *)self handleSubscribersForCharacteristic:v3 withNotificationHandler:v4];
}

- (void)notifyCallTerminationReason:(unsigned __int8)a3 reason:(unsigned __int8)a4
{
  v7 = [(TBSService *)self terminationReasonCharacteristic];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100052784;
  v8[3] = &unk_100095540;
  v9 = a3;
  v10 = a4;
  v8[4] = self;
  [(TBSService *)self handleSubscribersForCharacteristic:v7 withNotificationHandler:v8];
}

- (void)callControlPointNotification:(unsigned __int8)a3 callIndex:(unsigned __int8)a4 result:(unsigned __int8)a5
{
  v9 = [(TBSService *)self callControlPointCharacteristic];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000529C8;
  v10[3] = &unk_100095BC8;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v10[4] = self;
  [(TBSService *)self handleSubscribersForCharacteristic:v9 withNotificationHandler:v10];
}

- (id)bearerProviderNameData
{
  v2 = [DataOutputStream outputStreamWithByteOrder:1];
  v3 = [@"Verizon" dataUsingEncoding:4];
  [v2 writeData:v3];
  v4 = [v2 data];
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v8 = 136315394;
    v9 = "[TBSService bearerProviderNameData]";
    v10 = 2048;
    v11 = [v4 length];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s : Bearer Provider Name NSData length = %lu", &v8, 0x16u);
  }

  return v4;
}

- (id)bearerUniformCallerIdentifierData
{
  v3 = [DataOutputStream outputStreamWithByteOrder:1];
  v4 = [(TBSService *)self telephoneBearer];
  v5 = [v4 activeSharedCallIdx];

  if (v5)
  {
    v6 = [(TBSService *)self telephoneBearer];
    v7 = -[TBSService getCallInfoWithSharedCallIndex:](self, "getCallInfoWithSharedCallIndex:", [v6 activeSharedCallIdx]);

    v8 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [v7 callURI];
      v18 = 136315650;
      v19 = "[TBSService bearerUniformCallerIdentifierData]";
      v20 = 2112;
      v21 = @"un000";
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s : bearerUCI Scheme %@, phone number = %@", &v18, 0x20u);
    }
  }

  else
  {
    v11 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315394;
      v19 = "[TBSService bearerUniformCallerIdentifierData]";
      v20 = 2112;
      v21 = @"un000";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s : bearerUCI Scheme %@", &v18, 0x16u);
    }
  }

  v12 = [@"un000" dataUsingEncoding:4];
  [v3 writeData:v12];
  v13 = [v3 data];
  v14 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    v16 = [v13 length];
    v18 = 136315394;
    v19 = "[TBSService bearerUniformCallerIdentifierData]";
    v20 = 2048;
    v21 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s : URI Schemes NSData length = %lu", &v18, 0x16u);
  }

  return v13;
}

- (id)bearerTechnologyData
{
  v2 = [DataOutputStream outputStreamWithByteOrder:1];
  [v2 writeUint8:5];
  v3 = [v2 data];

  return v3;
}

- (id)bearerUriSchemesSupportedListData
{
  v2 = [DataOutputStream outputStreamWithByteOrder:1];
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[TBSService bearerUriSchemesSupportedListData]";
    v12 = 2112;
    v13 = @"tel";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s : URI Scheme %@", &v10, 0x16u);
  }

  v4 = [@"tel" dataUsingEncoding:4];
  [v2 writeData:v4];
  v5 = [v2 data];
  v6 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v5 length];
    v10 = 136315394;
    v11 = "[TBSService bearerUriSchemesSupportedListData]";
    v12 = 2048;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s : URI Schemes NSData length = %lu", &v10, 0x16u);
  }

  return v5;
}

- (id)bearerListCurrentCallsData
{
  v3 = [(TBSService *)self telephoneBearer];
  v4 = [v3 callList];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(TBSService *)self telephoneBearer];
    obj = [v6 syncObject];

    objc_sync_enter(obj);
    v7 = [DataOutputStream outputStreamWithByteOrder:1];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v8 = [(TBSService *)self telephoneBearer];
    v9 = [v8 callList];

    v10 = [v9 countByEnumeratingWithState:&v28 objects:v44 count:16];
    if (v10)
    {
      v27 = *v29;
      v26 = v9;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v29 != v27)
          {
            objc_enumerationMutation(v26);
          }

          v12 = *(*(&v28 + 1) + 8 * i);
          v13 = [v12 callURI];
          v14 = [v13 lengthOfBytesUsingEncoding:4];

          v15 = v14 + 4;
          [v7 writeUint8:(v14 + 4)];
          [v7 writeUint8:{objc_msgSend(v12, "sharedCallIdx")}];
          [v7 writeUint8:{objc_msgSend(v12, "callState")}];
          [v7 writeUint8:{objc_msgSend(v12, "callFlags")}];
          v16 = [v12 callURI];
          v17 = [v16 dataUsingEncoding:4];

          [v7 writeData:v17];
          v18 = qword_1000A9FE0;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = [v12 sharedCallIdx];
            v20 = [v12 callState];
            v21 = [v12 callFlags];
            v22 = [v12 callURI];
            *buf = 136316418;
            v33 = "[TBSService bearerListCurrentCallsData]";
            v34 = 1024;
            v35 = v15;
            v36 = 1024;
            v37 = v19;
            v38 = 1024;
            v39 = v20;
            v40 = 1024;
            v41 = v21;
            v42 = 2112;
            v43 = v22;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s : ListItemLength %u, shared call index %u, call state %u, call flags %u, call URI %@", buf, 0x2Eu);
          }
        }

        v9 = v26;
        v10 = [v26 countByEnumeratingWithState:&v28 objects:v44 count:16];
      }

      while (v10);
    }

    v23 = [v7 data];

    objc_sync_exit(obj);
  }

  else
  {
    v23 = +[NSData data];
  }

  return v23;
}

- (id)contentControlIdData
{
  v2 = [DataOutputStream outputStreamWithByteOrder:1];
  [v2 writeUint8:128];
  v3 = [v2 data];

  return v3;
}

- (id)statusFlagsData
{
  v2 = [DataOutputStream outputStreamWithByteOrder:1];
  [v2 writeUint16:1];
  v3 = [v2 data];

  return v3;
}

- (id)callStateData
{
  v3 = [DataOutputStream outputStreamWithByteOrder:1];
  v4 = [(TBSService *)self telephoneBearer];
  obj = [v4 syncObject];

  objc_sync_enter(obj);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [(TBSService *)self telephoneBearer];
  v6 = [v5 callList];

  v7 = [v6 countByEnumeratingWithState:&v22 objects:v36 count:16];
  if (v7)
  {
    v21 = *v23;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v21)
        {
          objc_enumerationMutation(v6);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        [v3 writeUint8:{objc_msgSend(v9, "sharedCallIdx")}];
        [v3 writeUint8:{objc_msgSend(v9, "callState")}];
        [v3 writeUint8:{objc_msgSend(v9, "callFlags")}];
        v10 = qword_1000A9FE0;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [v9 identifier];
          v12 = [v11 UUIDString];
          v13 = [v9 sharedCallIdx];
          v14 = [v9 tbsCallStateToString:{objc_msgSend(v9, "callState")}];
          v15 = [v9 callFlagsDescriptionForFlags:{objc_msgSend(v9, "callFlags")}];
          *buf = 136316162;
          v27 = "[TBSService callStateData]";
          v28 = 2112;
          v29 = v12;
          v30 = 1024;
          v31 = v13;
          v32 = 2112;
          v33 = v14;
          v34 = 2112;
          v35 = v15;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s : Collecting Call State Data for call ID %@ - Call Index : %u | Call State : %@ | Call Flags : %@", buf, 0x30u);
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v22 objects:v36 count:16];
    }

    while (v7);
  }

  objc_sync_exit(obj);
  v16 = [v3 data];
  if ([v16 length])
  {
    v17 = v3;
  }

  else
  {
    v17 = NSData;
  }

  v18 = [v17 data];

  return v18;
}

- (id)callControlPointOptionalOpcodesData
{
  v2 = [DataOutputStream outputStreamWithByteOrder:1];
  [v2 writeUint16:0];
  v3 = [v2 data];

  return v3;
}

- (id)incomingCallData
{
  v3 = [(TBSService *)self telephoneBearer];
  v4 = [v3 syncObject];

  objc_sync_enter(v4);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [(TBSService *)self telephoneBearer];
  v6 = [v5 callList];

  v7 = [v6 countByEnumeratingWithState:&v22 objects:v36 count:16];
  if (v7)
  {
    v8 = *v23;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        if (![v10 callState])
        {
          v11 = [v10 sharedCallIdx];
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v22 objects:v36 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  objc_sync_exit(v4);
  v12 = [DataOutputStream outputStreamWithByteOrder:1];
  if (v11)
  {
    v13 = [v7 callURI];
    v14 = [v13 dataUsingEncoding:4];

    [v12 writeUint8:v11];
    [v12 writeData:v14];
    v15 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = [v7 callURI];
      v18 = [v12 data];
      *buf = 136316162;
      v27 = "[TBSService incomingCallData]";
      v28 = 1024;
      v29 = v11;
      v30 = 2112;
      v31 = v17;
      v32 = 2112;
      v33 = v14;
      v34 = 2112;
      v35 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s : Incoming Call Index: %u, call uri %@, uriData %@, incomingCallData %@", buf, 0x30u);
    }

    v19 = [v12 data];
  }

  else
  {
    v20 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v27 = "[TBSService incomingCallData]";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s: No longer any incoming calls, notifying subscribed centrals of change in state", buf, 0xCu);
    }

    [v12 writeUint8:0];
    v19 = [v12 data];
  }

  return v19;
}

- (void)handleSubscribersForCharacteristic:(id)a3 withNotificationHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TBSService *)self subscribedCentrals];
  v9 = [v6 UUID];
  v10 = [v8 objectForKeyedSubscript:v9];

  if ([v10 count])
  {
    v7[2](v7, v10);
  }

  else
  {
    v11 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [v6 UUID];
      v14 = 136315394;
      v15 = "[TBSService handleSubscribersForCharacteristic:withNotificationHandler:]";
      v16 = 2112;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s : No subscribers for update to characteristic %@", &v14, 0x16u);
    }
  }
}

- (id)callProviderIdentifierFromTBSURIScheme:(id)a3
{
  v3 = a3;
  if ([v3 isEqual:@"ftime"])
  {
    v4 = @"com.apple.telephonyutilities.callservicesd.FaceTimeProvider";
  }

  else if ([v3 isEqual:@"E.164"])
  {
    v4 = @"com.apple.coretelephony";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)getCallInfoWithSharedCallIndex:(unsigned __int8)a3
{
  v3 = a3;
  v5 = [(TBSService *)self telephoneBearer];
  v6 = [v5 syncObject];

  objc_sync_enter(v6);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [(TBSService *)self telephoneBearer];
  v8 = [v7 callList];

  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([v12 sharedCallIdx] == v3)
        {
          v13 = v12;
          goto LABEL_11;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  objc_sync_exit(v6);

  return v13;
}

@end