@interface TBSService
+ (id)sharedInstance;
- (TBSService)init;
- (id)bearerListCurrentCallsData;
- (id)bearerProviderNameData;
- (id)bearerTechnologyData;
- (id)bearerUniformCallerIdentifierData;
- (id)bearerUriSchemesSupportedListData;
- (id)callControlPointOptionalOpcodesData;
- (id)callProviderIdentifierFromTBSURIScheme:(id)scheme;
- (id)callStateData;
- (id)contentControlIdData;
- (id)getCallInfoWithSharedCallIndex:(unsigned __int8)index;
- (id)incomingCallData;
- (id)statusFlagsData;
- (void)callControlPointNotification:(unsigned __int8)notification callIndex:(unsigned __int8)index result:(unsigned __int8)result;
- (void)handleCallControlPointWrite:(id)write;
- (void)handleOriginateCallRequest:(id)request;
- (void)handleSubscribersForCharacteristic:(id)characteristic withNotificationHandler:(id)handler;
- (void)notifyBearerListCurrentCalls;
- (void)notifyBearerProviderName;
- (void)notifyBearerTechnology;
- (void)notifyCallStateChange;
- (void)notifyCallTerminationReason:(unsigned __int8)reason reason:(unsigned __int8)a4;
- (void)notifyCentralsOfCharacteristicsSubscribed;
- (void)notifyIncomingCall;
- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheralManager:(id)manager central:(id)central didSubscribeToCharacteristic:(id)characteristic;
- (void)peripheralManager:(id)manager central:(id)central didUnsubscribeFromCharacteristic:(id)characteristic;
- (void)peripheralManager:(id)manager didReceiveReadRequest:(id)request;
- (void)peripheralManager:(id)manager didReceiveWriteRequests:(id)requests;
- (void)providerNameChanged:(id)changed;
@end

@implementation TBSService

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100050708;
  block[3] = &unk_1000953F0;
  block[4] = self;
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
    service = [(Service *)v2 service];
    [service setCharacteristics:v58];
  }

  return v2;
}

- (void)peripheralManager:(id)manager didReceiveReadRequest:(id)request
{
  managerCopy = manager;
  requestCopy = request;
  v8 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    characteristic = [requestCopy characteristic];
    uUID = [characteristic UUID];
    v36 = 136315394;
    v37 = "[TBSService peripheralManager:didReceiveReadRequest:]";
    v38 = 2112;
    v39 = uUID;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s : called for %@", &v36, 0x16u);
  }

  characteristic2 = [requestCopy characteristic];
  bearerProviderNameCharacteristic = [(TBSService *)self bearerProviderNameCharacteristic];

  if (characteristic2 == bearerProviderNameCharacteristic)
  {
    bearerProviderNameData = [(TBSService *)self bearerProviderNameData];
LABEL_26:
    v35 = bearerProviderNameData;
    [requestCopy setValue:bearerProviderNameData];

    v33 = 0;
    goto LABEL_27;
  }

  characteristic3 = [requestCopy characteristic];
  bearerUniformCallerIdentifierCharacteristic = [(TBSService *)self bearerUniformCallerIdentifierCharacteristic];

  if (characteristic3 == bearerUniformCallerIdentifierCharacteristic)
  {
    bearerProviderNameData = [(TBSService *)self bearerUniformCallerIdentifierData];
    goto LABEL_26;
  }

  characteristic4 = [requestCopy characteristic];
  bearerTechnologyCharacteristic = [(TBSService *)self bearerTechnologyCharacteristic];

  if (characteristic4 == bearerTechnologyCharacteristic)
  {
    bearerProviderNameData = [(TBSService *)self bearerTechnologyData];
    goto LABEL_26;
  }

  characteristic5 = [requestCopy characteristic];
  bearerUriSchemesSupportedListCharacteristic = [(TBSService *)self bearerUriSchemesSupportedListCharacteristic];

  if (characteristic5 == bearerUriSchemesSupportedListCharacteristic)
  {
    bearerProviderNameData = [(TBSService *)self bearerUriSchemesSupportedListData];
    goto LABEL_26;
  }

  characteristic6 = [requestCopy characteristic];
  bearerListCurrentCallsCharacteristic = [(TBSService *)self bearerListCurrentCallsCharacteristic];

  if (characteristic6 == bearerListCurrentCallsCharacteristic)
  {
    bearerProviderNameData = [(TBSService *)self bearerListCurrentCallsData];
    goto LABEL_26;
  }

  characteristic7 = [requestCopy characteristic];
  contentControlIdCharacteristic = [(TBSService *)self contentControlIdCharacteristic];

  if (characteristic7 == contentControlIdCharacteristic)
  {
    bearerProviderNameData = [(TBSService *)self contentControlIdData];
    goto LABEL_26;
  }

  characteristic8 = [requestCopy characteristic];
  statusFlagsCharacteristic = [(TBSService *)self statusFlagsCharacteristic];

  if (characteristic8 == statusFlagsCharacteristic)
  {
    bearerProviderNameData = [(TBSService *)self statusFlagsData];
    goto LABEL_26;
  }

  characteristic9 = [requestCopy characteristic];
  callStateCharacteristic = [(TBSService *)self callStateCharacteristic];

  if (characteristic9 == callStateCharacteristic)
  {
    bearerProviderNameData = [(TBSService *)self callStateData];
    goto LABEL_26;
  }

  characteristic10 = [requestCopy characteristic];
  callControlPointOptionalOpcodesCharacteristic = [(TBSService *)self callControlPointOptionalOpcodesCharacteristic];

  if (characteristic10 == callControlPointOptionalOpcodesCharacteristic)
  {
    bearerProviderNameData = [(TBSService *)self callControlPointOptionalOpcodesData];
    goto LABEL_26;
  }

  characteristic11 = [requestCopy characteristic];
  incomingCallCharacteristic = [(TBSService *)self incomingCallCharacteristic];

  if (characteristic11 == incomingCallCharacteristic)
  {
    bearerProviderNameData = [(TBSService *)self incomingCallData];
    goto LABEL_26;
  }

  v32 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
  {
    sub_10005F048(v32, requestCopy);
  }

  v33 = 14;
LABEL_27:
  [(Service *)self respondToRequest:requestCopy withResult:v33];
}

- (void)peripheralManager:(id)manager didReceiveWriteRequests:(id)requests
{
  requestsCopy = requests;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [requestsCopy countByEnumeratingWithState:&v19 objects:v27 count:16];
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
          objc_enumerationMutation(requestsCopy);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        characteristic = [v11 characteristic];
        callControlPointCharacteristic = [(TBSService *)self callControlPointCharacteristic];

        if (characteristic == callControlPointCharacteristic)
        {
          [(TBSService *)self handleCallControlPointWrite:v11];
        }

        else
        {
          v14 = qword_1000A9FE0;
          if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
          {
            v15 = v14;
            characteristic2 = [v11 characteristic];
            uUID = [characteristic2 UUID];
            *buf = v18;
            v24 = "[TBSService peripheralManager:didReceiveWriteRequests:]";
            v25 = 2112;
            v26 = uUID;
            _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s : Write attempt on unsupported characteristic %@. Rejecting request.", buf, 0x16u);
          }

          [(Service *)self respondToRequest:v11 withResult:3];
        }
      }

      v8 = [requestsCopy countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v8);
  }
}

- (void)peripheralManager:(id)manager central:(id)central didSubscribeToCharacteristic:(id)characteristic
{
  managerCopy = manager;
  centralCopy = central;
  characteristicCopy = characteristic;
  telephoneBearer = [(TBSService *)self telephoneBearer];
  syncObject = [telephoneBearer syncObject];

  objc_sync_enter(syncObject);
  subscribedCentrals = [(TBSService *)self subscribedCentrals];
  uUID = [characteristicCopy UUID];
  v14 = [subscribedCentrals objectForKeyedSubscript:uUID];

  if (!v14)
  {
    v15 = +[NSMutableArray array];
    subscribedCentrals2 = [(TBSService *)self subscribedCentrals];
    uUID2 = [characteristicCopy UUID];
    [subscribedCentrals2 setObject:v15 forKeyedSubscript:uUID2];
  }

  subscribedCentrals3 = [(TBSService *)self subscribedCentrals];
  uUID3 = [characteristicCopy UUID];
  v20 = [subscribedCentrals3 objectForKeyedSubscript:uUID3];
  v21 = [v20 containsObject:centralCopy];

  if ((v21 & 1) == 0)
  {
    subscribedCentrals4 = [(TBSService *)self subscribedCentrals];
    uUID4 = [characteristicCopy UUID];
    v24 = [subscribedCentrals4 objectForKeyedSubscript:uUID4];
    [v24 addObject:centralCopy];

    v25 = qword_1000A9FE0;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [centralCopy identifier];
      uUIDString = [identifier UUIDString];
      uUID5 = [characteristicCopy UUID];
      subscribedCentrals5 = [(TBSService *)self subscribedCentrals];
      uUID6 = [characteristicCopy UUID];
      v31 = [subscribedCentrals5 objectForKeyedSubscript:uUID6];
      *buf = 136315906;
      v34 = "[TBSService peripheralManager:central:didSubscribeToCharacteristic:]";
      v35 = 2112;
      v36 = uUIDString;
      v37 = 2112;
      v38 = uUID5;
      v39 = 2048;
      v40 = [v31 count];
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, " %s: central %@ is now subscribed to characteristic %@, number of subscribers is now %lu", buf, 0x2Au);
    }
  }

  objc_sync_exit(syncObject);
}

- (void)peripheralManager:(id)manager central:(id)central didUnsubscribeFromCharacteristic:(id)characteristic
{
  centralCopy = central;
  characteristicCopy = characteristic;
  v9 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    identifier = [centralCopy identifier];
    uUIDString = [identifier UUIDString];
    uUID = [characteristicCopy UUID];
    v17 = 136315650;
    v18 = "[TBSService peripheralManager:central:didUnsubscribeFromCharacteristic:]";
    v19 = 2112;
    v20 = uUIDString;
    v21 = 2112;
    v22 = uUID;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, " %s: central %@ is now unsubscribed to characteristic %@", &v17, 0x20u);
  }

  subscribedCentrals = [(TBSService *)self subscribedCentrals];
  uUID2 = [characteristicCopy UUID];
  v16 = [subscribedCentrals objectForKeyedSubscript:uUID2];
  [v16 removeObject:centralCopy];
}

- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  if (!errorCopy)
  {
    isNotifying = [characteristicCopy isNotifying];
    v12 = qword_1000A9FE0;
    v13 = os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT);
    if (isNotifying)
    {
      if (!v13)
      {
        goto LABEL_10;
      }

      v14 = v12;
      uUID = [characteristicCopy UUID];
      v17 = 136315394;
      v18 = "[TBSService peripheral:didUpdateNotificationStateForCharacteristic:error:]";
      v19 = 2112;
      v20 = uUID;
      v16 = "%s : Started notifying for characteristic %@";
    }

    else
    {
      if (!v13)
      {
        goto LABEL_10;
      }

      v14 = v12;
      uUID = [characteristicCopy UUID];
      v17 = 136315394;
      v18 = "[TBSService peripheral:didUpdateNotificationStateForCharacteristic:error:]";
      v19 = 2112;
      v20 = uUID;
      v16 = "%s : Stopped notifying for characteristic %@";
    }

    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v16, &v17, 0x16u);

    goto LABEL_10;
  }

  v10 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
  {
    sub_10005F11C(v10, characteristicCopy, errorCopy);
  }

LABEL_10:
}

- (void)providerNameChanged:(id)changed
{
  v4 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    changedCopy = changed;
    v6 = v4;
    v7 = 136315394;
    v8 = "[TBSService providerNameChanged:]";
    v9 = 2080;
    uTF8String = [changed UTF8String];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s : Provider name changed passed to TBS: %s", &v7, 0x16u);
  }
}

- (void)handleCallControlPointWrite:(id)write
{
  writeCopy = write;
  value = [writeCopy value];
  v6 = [DataInputStream inputStreamWithData:value byteOrder:1];

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
    callDescription = [v7 callDescription];
    *buf = 136315906;
    v37 = "[TBSService handleCallControlPointWrite:]";
    v38 = 2112;
    *v39 = v11;
    *&v39[8] = 1024;
    *&v39[10] = v12;
    v40 = 2112;
    v41 = callDescription;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s : Received call control point write request opcode %@, peripheralCallIndex %u, for call %@", buf, 0x26u);
  }

  if (HIBYTE(v35) == 1)
  {
    v17 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      callDescription2 = [v7 callDescription];
      *buf = 136315394;
      v37 = "[TBSService handleCallControlPointWrite:]";
      v38 = 2112;
      *v39 = callDescription2;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s : Terminating call %@", buf, 0x16u);
    }

    telephoneBearer = [(TBSService *)self telephoneBearer];
    identifier = [v7 identifier];
    v22 = [telephoneBearer terminateCallWithIdentifier:identifier];

    if (!v22)
    {
      v15 = 2;
LABEL_19:
      v16 = 14;
      goto LABEL_20;
    }

    telephoneBearer2 = [(TBSService *)self telephoneBearer];
    syncObject = [telephoneBearer2 syncObject];

    objc_sync_enter(syncObject);
    telephoneBearer3 = [(TBSService *)self telephoneBearer];
    [telephoneBearer3 deleteCallWithSharedCallIndex:{objc_msgSend(v7, "sharedCallIdx")}];

    objc_sync_exit(syncObject);
    [(Service *)self respondToRequest:writeCopy withResult:0];
    v15 = 0;
  }

  else
  {
    if (HIBYTE(v35))
    {
      v15 = 1;
      v16 = 6;
LABEL_20:
      [(Service *)self respondToRequest:writeCopy withResult:v16];
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

    telephoneBearer4 = [(TBSService *)self telephoneBearer];
    identifier2 = [v7 identifier];
    v29 = [telephoneBearer4 acceptCallWithIdentifier:identifier2];

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

    [(Service *)self respondToRequest:writeCopy withResult:v30];
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

- (void)handleOriginateCallRequest:(id)request
{
  v11 = [request componentsSeparatedByString:@":"];
  v4 = [v11 count] == 2;
  v5 = v11;
  if (v4)
  {
    firstObject = [v11 firstObject];
    v7 = [(TBSService *)self callProviderIdentifierFromTBSURIScheme:firstObject];

    lastObject = [v11 lastObject];
    v9 = lastObject;
    if (v7 && lastObject)
    {
      telephoneBearer = [(TBSService *)self telephoneBearer];
      [telephoneBearer dialCall:v9 withProvider:v7];
    }

    v5 = v11;
  }
}

- (void)notifyCentralsOfCharacteristicsSubscribed
{
  telephoneBearer = [(TBSService *)self telephoneBearer];
  syncObject = [telephoneBearer syncObject];

  objc_sync_enter(syncObject);
  [(TBSService *)self notifyCallStateChange];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  telephoneBearer2 = [(TBSService *)self telephoneBearer];
  callList = [telephoneBearer2 callList];

  v7 = [callList countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v7)
  {
    v8 = *v11;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(callList);
        }

        if (![*(*(&v10 + 1) + 8 * i) callState])
        {
          [(TBSService *)self notifyIncomingCall];
          goto LABEL_11;
        }
      }

      v7 = [callList countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(TBSService *)self notifyBearerListCurrentCalls];
  objc_sync_exit(syncObject);
}

- (void)notifyCallStateChange
{
  callStateCharacteristic = [(TBSService *)self callStateCharacteristic];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000521E0;
  v4[3] = &unk_100095518;
  v4[4] = self;
  [(TBSService *)self handleSubscribersForCharacteristic:callStateCharacteristic withNotificationHandler:v4];
}

- (void)notifyBearerListCurrentCalls
{
  bearerListCurrentCallsCharacteristic = [(TBSService *)self bearerListCurrentCallsCharacteristic];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000522FC;
  v4[3] = &unk_100095518;
  v4[4] = self;
  [(TBSService *)self handleSubscribersForCharacteristic:bearerListCurrentCallsCharacteristic withNotificationHandler:v4];
}

- (void)notifyBearerProviderName
{
  bearerProviderNameCharacteristic = [(TBSService *)self bearerProviderNameCharacteristic];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100052418;
  v4[3] = &unk_100095518;
  v4[4] = self;
  [(TBSService *)self handleSubscribersForCharacteristic:bearerProviderNameCharacteristic withNotificationHandler:v4];
}

- (void)notifyBearerTechnology
{
  bearerTechnologyCharacteristic = [(TBSService *)self bearerTechnologyCharacteristic];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100052534;
  v4[3] = &unk_100095518;
  v4[4] = self;
  [(TBSService *)self handleSubscribersForCharacteristic:bearerTechnologyCharacteristic withNotificationHandler:v4];
}

- (void)notifyIncomingCall
{
  incomingCallCharacteristic = [(TBSService *)self incomingCallCharacteristic];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100052650;
  v4[3] = &unk_100095518;
  v4[4] = self;
  [(TBSService *)self handleSubscribersForCharacteristic:incomingCallCharacteristic withNotificationHandler:v4];
}

- (void)notifyCallTerminationReason:(unsigned __int8)reason reason:(unsigned __int8)a4
{
  terminationReasonCharacteristic = [(TBSService *)self terminationReasonCharacteristic];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100052784;
  v8[3] = &unk_100095540;
  reasonCopy = reason;
  v10 = a4;
  v8[4] = self;
  [(TBSService *)self handleSubscribersForCharacteristic:terminationReasonCharacteristic withNotificationHandler:v8];
}

- (void)callControlPointNotification:(unsigned __int8)notification callIndex:(unsigned __int8)index result:(unsigned __int8)result
{
  callControlPointCharacteristic = [(TBSService *)self callControlPointCharacteristic];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000529C8;
  v10[3] = &unk_100095BC8;
  notificationCopy = notification;
  indexCopy = index;
  resultCopy = result;
  v10[4] = self;
  [(TBSService *)self handleSubscribersForCharacteristic:callControlPointCharacteristic withNotificationHandler:v10];
}

- (id)bearerProviderNameData
{
  v2 = [DataOutputStream outputStreamWithByteOrder:1];
  v3 = [@"Verizon" dataUsingEncoding:4];
  [v2 writeData:v3];
  data = [v2 data];
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v8 = 136315394;
    v9 = "[TBSService bearerProviderNameData]";
    v10 = 2048;
    v11 = [data length];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s : Bearer Provider Name NSData length = %lu", &v8, 0x16u);
  }

  return data;
}

- (id)bearerUniformCallerIdentifierData
{
  v3 = [DataOutputStream outputStreamWithByteOrder:1];
  telephoneBearer = [(TBSService *)self telephoneBearer];
  activeSharedCallIdx = [telephoneBearer activeSharedCallIdx];

  if (activeSharedCallIdx)
  {
    telephoneBearer2 = [(TBSService *)self telephoneBearer];
    v7 = -[TBSService getCallInfoWithSharedCallIndex:](self, "getCallInfoWithSharedCallIndex:", [telephoneBearer2 activeSharedCallIdx]);

    v8 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      callURI = [v7 callURI];
      v18 = 136315650;
      v19 = "[TBSService bearerUniformCallerIdentifierData]";
      v20 = 2112;
      v21 = @"un000";
      v22 = 2112;
      v23 = callURI;
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
  data = [v3 data];
  v14 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    v16 = [data length];
    v18 = 136315394;
    v19 = "[TBSService bearerUniformCallerIdentifierData]";
    v20 = 2048;
    v21 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s : URI Schemes NSData length = %lu", &v18, 0x16u);
  }

  return data;
}

- (id)bearerTechnologyData
{
  v2 = [DataOutputStream outputStreamWithByteOrder:1];
  [v2 writeUint8:5];
  data = [v2 data];

  return data;
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
  data = [v2 data];
  v6 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [data length];
    v10 = 136315394;
    v11 = "[TBSService bearerUriSchemesSupportedListData]";
    v12 = 2048;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s : URI Schemes NSData length = %lu", &v10, 0x16u);
  }

  return data;
}

- (id)bearerListCurrentCallsData
{
  telephoneBearer = [(TBSService *)self telephoneBearer];
  callList = [telephoneBearer callList];
  v5 = [callList count];

  if (v5)
  {
    telephoneBearer2 = [(TBSService *)self telephoneBearer];
    obj = [telephoneBearer2 syncObject];

    objc_sync_enter(obj);
    v7 = [DataOutputStream outputStreamWithByteOrder:1];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    telephoneBearer3 = [(TBSService *)self telephoneBearer];
    callList2 = [telephoneBearer3 callList];

    v10 = [callList2 countByEnumeratingWithState:&v28 objects:v44 count:16];
    if (v10)
    {
      v27 = *v29;
      v26 = callList2;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v29 != v27)
          {
            objc_enumerationMutation(v26);
          }

          v12 = *(*(&v28 + 1) + 8 * i);
          callURI = [v12 callURI];
          v14 = [callURI lengthOfBytesUsingEncoding:4];

          v15 = v14 + 4;
          [v7 writeUint8:(v14 + 4)];
          [v7 writeUint8:{objc_msgSend(v12, "sharedCallIdx")}];
          [v7 writeUint8:{objc_msgSend(v12, "callState")}];
          [v7 writeUint8:{objc_msgSend(v12, "callFlags")}];
          callURI2 = [v12 callURI];
          v17 = [callURI2 dataUsingEncoding:4];

          [v7 writeData:v17];
          v18 = qword_1000A9FE0;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            sharedCallIdx = [v12 sharedCallIdx];
            callState = [v12 callState];
            callFlags = [v12 callFlags];
            callURI3 = [v12 callURI];
            *buf = 136316418;
            v33 = "[TBSService bearerListCurrentCallsData]";
            v34 = 1024;
            v35 = v15;
            v36 = 1024;
            v37 = sharedCallIdx;
            v38 = 1024;
            v39 = callState;
            v40 = 1024;
            v41 = callFlags;
            v42 = 2112;
            v43 = callURI3;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s : ListItemLength %u, shared call index %u, call state %u, call flags %u, call URI %@", buf, 0x2Eu);
          }
        }

        callList2 = v26;
        v10 = [v26 countByEnumeratingWithState:&v28 objects:v44 count:16];
      }

      while (v10);
    }

    data = [v7 data];

    objc_sync_exit(obj);
  }

  else
  {
    data = +[NSData data];
  }

  return data;
}

- (id)contentControlIdData
{
  v2 = [DataOutputStream outputStreamWithByteOrder:1];
  [v2 writeUint8:128];
  data = [v2 data];

  return data;
}

- (id)statusFlagsData
{
  v2 = [DataOutputStream outputStreamWithByteOrder:1];
  [v2 writeUint16:1];
  data = [v2 data];

  return data;
}

- (id)callStateData
{
  v3 = [DataOutputStream outputStreamWithByteOrder:1];
  telephoneBearer = [(TBSService *)self telephoneBearer];
  obj = [telephoneBearer syncObject];

  objc_sync_enter(obj);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  telephoneBearer2 = [(TBSService *)self telephoneBearer];
  callList = [telephoneBearer2 callList];

  v7 = [callList countByEnumeratingWithState:&v22 objects:v36 count:16];
  if (v7)
  {
    v21 = *v23;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v21)
        {
          objc_enumerationMutation(callList);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        [v3 writeUint8:{objc_msgSend(v9, "sharedCallIdx")}];
        [v3 writeUint8:{objc_msgSend(v9, "callState")}];
        [v3 writeUint8:{objc_msgSend(v9, "callFlags")}];
        v10 = qword_1000A9FE0;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          identifier = [v9 identifier];
          uUIDString = [identifier UUIDString];
          sharedCallIdx = [v9 sharedCallIdx];
          v14 = [v9 tbsCallStateToString:{objc_msgSend(v9, "callState")}];
          v15 = [v9 callFlagsDescriptionForFlags:{objc_msgSend(v9, "callFlags")}];
          *buf = 136316162;
          v27 = "[TBSService callStateData]";
          v28 = 2112;
          v29 = uUIDString;
          v30 = 1024;
          v31 = sharedCallIdx;
          v32 = 2112;
          v33 = v14;
          v34 = 2112;
          v35 = v15;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s : Collecting Call State Data for call ID %@ - Call Index : %u | Call State : %@ | Call Flags : %@", buf, 0x30u);
        }
      }

      v7 = [callList countByEnumeratingWithState:&v22 objects:v36 count:16];
    }

    while (v7);
  }

  objc_sync_exit(obj);
  data = [v3 data];
  if ([data length])
  {
    v17 = v3;
  }

  else
  {
    v17 = NSData;
  }

  data2 = [v17 data];

  return data2;
}

- (id)callControlPointOptionalOpcodesData
{
  v2 = [DataOutputStream outputStreamWithByteOrder:1];
  [v2 writeUint16:0];
  data = [v2 data];

  return data;
}

- (id)incomingCallData
{
  telephoneBearer = [(TBSService *)self telephoneBearer];
  syncObject = [telephoneBearer syncObject];

  objc_sync_enter(syncObject);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  telephoneBearer2 = [(TBSService *)self telephoneBearer];
  callList = [telephoneBearer2 callList];

  v7 = [callList countByEnumeratingWithState:&v22 objects:v36 count:16];
  if (v7)
  {
    v8 = *v23;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(callList);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        if (![v10 callState])
        {
          sharedCallIdx = [v10 sharedCallIdx];
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [callList countByEnumeratingWithState:&v22 objects:v36 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  sharedCallIdx = 0;
LABEL_11:

  objc_sync_exit(syncObject);
  v12 = [DataOutputStream outputStreamWithByteOrder:1];
  if (sharedCallIdx)
  {
    callURI = [v7 callURI];
    v14 = [callURI dataUsingEncoding:4];

    [v12 writeUint8:sharedCallIdx];
    [v12 writeData:v14];
    v15 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      callURI2 = [v7 callURI];
      data = [v12 data];
      *buf = 136316162;
      v27 = "[TBSService incomingCallData]";
      v28 = 1024;
      v29 = sharedCallIdx;
      v30 = 2112;
      v31 = callURI2;
      v32 = 2112;
      v33 = v14;
      v34 = 2112;
      v35 = data;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s : Incoming Call Index: %u, call uri %@, uriData %@, incomingCallData %@", buf, 0x30u);
    }

    data2 = [v12 data];
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
    data2 = [v12 data];
  }

  return data2;
}

- (void)handleSubscribersForCharacteristic:(id)characteristic withNotificationHandler:(id)handler
{
  characteristicCopy = characteristic;
  handlerCopy = handler;
  subscribedCentrals = [(TBSService *)self subscribedCentrals];
  uUID = [characteristicCopy UUID];
  v10 = [subscribedCentrals objectForKeyedSubscript:uUID];

  if ([v10 count])
  {
    handlerCopy[2](handlerCopy, v10);
  }

  else
  {
    v11 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      uUID2 = [characteristicCopy UUID];
      v14 = 136315394;
      v15 = "[TBSService handleSubscribersForCharacteristic:withNotificationHandler:]";
      v16 = 2112;
      v17 = uUID2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s : No subscribers for update to characteristic %@", &v14, 0x16u);
    }
  }
}

- (id)callProviderIdentifierFromTBSURIScheme:(id)scheme
{
  schemeCopy = scheme;
  if ([schemeCopy isEqual:@"ftime"])
  {
    v4 = @"com.apple.telephonyutilities.callservicesd.FaceTimeProvider";
  }

  else if ([schemeCopy isEqual:@"E.164"])
  {
    v4 = @"com.apple.coretelephony";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)getCallInfoWithSharedCallIndex:(unsigned __int8)index
{
  indexCopy = index;
  telephoneBearer = [(TBSService *)self telephoneBearer];
  syncObject = [telephoneBearer syncObject];

  objc_sync_enter(syncObject);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  telephoneBearer2 = [(TBSService *)self telephoneBearer];
  callList = [telephoneBearer2 callList];

  v9 = [callList countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(callList);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([v12 sharedCallIdx] == indexCopy)
        {
          v13 = v12;
          goto LABEL_11;
        }
      }

      v9 = [callList countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  objc_sync_exit(syncObject);

  return v13;
}

@end