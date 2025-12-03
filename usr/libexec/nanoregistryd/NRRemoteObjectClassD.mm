@interface NRRemoteObjectClassD
- (NRRemoteObjectClassD)initWithDelegate:(id)delegate andQueue:(id)queue;
- (void)idsHandlePingRequest:(id)request;
- (void)idsHandleWatchMigrationCompletionRequest:(id)request;
- (void)idsHandleWatchMigrationMetricSessionID:(id)d;
- (void)idsHandleWillUnpair:(id)unpair;
- (void)registerProtobufHandlers;
- (void)sendGraduationRequestToIDSBTUUID:(id)d withResponseBlock:(id)block;
- (void)sendMigrationCompletionWithStatus:(unint64_t)status toIDSBTUUID:(id)d withResponseBlock:(id)block;
- (void)sendPairingModeRequest:(unsigned __int16)request toIDSBTUUID:(id)d withSentBlock:(id)block;
- (void)sendPairingSessionID:(id)d toIDSBTUUID:(id)iD withResponseBlock:(id)block;
- (void)sendPingRequestType:(int)type withMessagePriority:(int64_t)priority withMessageSize:(unint64_t)size withTimeout:(double)timeout toIDSBTUUID:(id)d withResponseBlock:(id)block;
- (void)sendRTCMigrationMetricSessionID:(id)d toIDSBTUUID:(id)iD withResponseBlock:(id)block;
- (void)sendUnpairMessageWithAdvertisedName:(id)name btUUID:(id)d shouldObliterate:(id)obliterate shouldBrick:(id)brick shouldPreserveESim:(id)sim withPairingFailureCode:(id)code withAbortReason:(id)reason withRequestIdentifier:(id)self0 responseBlock:(id)self1;
@end

@implementation NRRemoteObjectClassD

- (NRRemoteObjectClassD)initWithDelegate:(id)delegate andQueue:(id)queue
{
  v5.receiver = self;
  v5.super_class = NRRemoteObjectClassD;
  return [(NRRemoteObject *)&v5 initWithServiceName:@"com.apple.private.alloy.bluetoothregistry" andClientQueue:queue andDelegate:delegate];
}

- (void)registerProtobufHandlers
{
  [(NRRemoteObject *)self setAlwaysProtobufAction:"idsHandleWillUnpair:" forIncomingRequestsOfType:1];
  [(NRRemoteObject *)self setAlwaysProtobufAction:"idsHandlePingRequest:" forIncomingRequestsOfType:5];
  [(NRRemoteObject *)self setAlwaysProtobufAction:0 forIncomingResponsesOfType:5];
  [(NRRemoteObject *)self setConnectedProtobufAction:"idsHandleWatchMigrationCompletionRequest:" forIncomingRequestsOfType:6];

  [(NRRemoteObject *)self setConnectedProtobufAction:"idsHandleWatchMigrationMetricSessionID:" forIncomingRequestsOfType:9];
}

- (void)sendPairingModeRequest:(unsigned __int16)request toIDSBTUUID:(id)d withSentBlock:(id)block
{
  requestCopy = request;
  blockCopy = block;
  dCopy = d;
  v10 = objc_alloc_init(NRPBPairingModeRequest);
  sub_100101B5C(v10, requestCopy);
  defaultPairedDevice = [(NRRemoteObject *)self defaultPairedDevice];
  sub_100101B0C(v10, [defaultPairedDevice maxCompatibilityVersion]);

  delegate = [(NRRemoteObject *)self delegate];
  sub_100101AE4(v10, [delegate maxPairingCompatibilityVersion]);
  sub_100101B34(v10, [delegate minPairingCompatibilityVersion]);
  v13 = requestCopy;
  v14 = +[NRPairingCompatibilityVersionInfo systemVersions];
  maxPairingCompatibilityVersion = [v14 maxPairingCompatibilityVersion];
  defaultPairedDevice2 = [(NRRemoteObject *)self defaultPairedDevice];
  v17 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Set Compatibility State %ld (P=%d W=%d)", v13, maxPairingCompatibilityVersion, [defaultPairedDevice2 pairingProtocolVersion]);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10006D9C8;
  v19[3] = &unk_100175C68;
  v20 = blockCopy;
  v18 = blockCopy;
  [(NRRemoteObject *)self sendRequest:v10 type:3 withTimeout:0 withResponseTimeout:0 withDescription:v17 onlyOneFor:@"compatibilityState" priority:300 toIDSBTUUID:dCopy didSend:v19 andResponse:0];
}

- (void)idsHandleWillUnpair:(id)unpair
{
  unpairCopy = unpair;
  v5 = [NRPBDeviceWillUnpairRequest alloc];
  protobuf = [unpairCopy protobuf];
  data = [protobuf data];
  v8 = [(NRPBDeviceWillUnpairRequest *)v5 initWithData:data];

  delegate = [(NRRemoteObject *)self delegate];
  v10 = nr_pairing_reporter_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = nr_pairing_reporter_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (sub_100101E7C(v8))
      {
        v13 = sub_100101F6C(v8);
      }

      else
      {
        v13 = 0xFFFFFFFFLL;
      }

      v14 = [NSNumber numberWithInt:v13];
      v15 = sub_100101F80(v8);
      *buf = 138543618;
      v26 = v14;
      v27 = 2114;
      v28 = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "IDSHandleWillUnpairCalled with failure code: %{public}@\tabort reason: %{public}@", buf, 0x16u);
    }
  }

  clientQueue = [(NRRemoteObject *)self clientQueue];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10006DC24;
  v20[3] = &unk_1001756F8;
  v21 = delegate;
  selfCopy = self;
  v23 = v8;
  v24 = unpairCopy;
  v17 = unpairCopy;
  v18 = v8;
  v19 = delegate;
  dispatch_async(clientQueue, v20);
}

- (void)sendUnpairMessageWithAdvertisedName:(id)name btUUID:(id)d shouldObliterate:(id)obliterate shouldBrick:(id)brick shouldPreserveESim:(id)sim withPairingFailureCode:(id)code withAbortReason:(id)reason withRequestIdentifier:(id)self0 responseBlock:(id)self1
{
  nameCopy = name;
  dCopy = d;
  obliterateCopy = obliterate;
  brickCopy = brick;
  simCopy = sim;
  codeCopy = code;
  reasonCopy = reason;
  identifierCopy = identifier;
  blockCopy = block;
  if (identifierCopy)
  {
    v24 = brickCopy;
    v25 = obliterateCopy;
    v26 = objc_opt_new();
    v27 = dCopy;
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10006E090;
    v36[3] = &unk_100175C68;
    v37 = blockCopy;
    [(NRRemoteObject *)self sendResponse:v26 type:1 requestUUID:identifierCopy withTimeout:&off_100186D90 withDescription:@"willUnpairResponse" onlyOneFor:0 priority:300 didSend:v36];

    v28 = v37;
  }

  else
  {
    v29 = objc_alloc_init(NRPBDeviceWillUnpairRequest);
    v28 = v29;
    if (nameCopy)
    {
      sub_100101F14(v29, nameCopy);
    }

    if (obliterateCopy)
    {
      sub_100101E14(v28, [obliterateCopy BOOLValue]);
    }

    if (brickCopy)
    {
      sub_100101E94(v28, [brickCopy BOOLValue]);
    }

    v24 = brickCopy;
    if (simCopy)
    {
      sub_100101ED4(v28, [simCopy BOOLValue]);
    }

    v25 = obliterateCopy;
    if (codeCopy)
    {
      sub_100101E54(v28, [codeCopy intValue]);
    }

    v27 = dCopy;
    if (reasonCopy)
    {
      sub_100101F28(v28, reasonCopy);
    }

    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10006E0A8;
    v34[3] = &unk_100175C68;
    v35 = blockCopy;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10006E0C4;
    v32[3] = &unk_100177FB0;
    v33 = v35;
    [(NRRemoteObject *)self sendRequest:v28 type:1 withTimeout:&off_100186D90 withResponseTimeout:&off_100186DA8 withDescription:@"willUnpairRequest" onlyOneFor:0 priority:300 toIDSBTUUID:dCopy didSend:v34 andResponse:v32];
  }
}

- (void)sendPingRequestType:(int)type withMessagePriority:(int64_t)priority withMessageSize:(unint64_t)size withTimeout:(double)timeout toIDSBTUUID:(id)d withResponseBlock:(id)block
{
  blockCopy = block;
  dCopy = d;
  v16 = objc_alloc_init(NRPBPingRequest);
  sub_1001060D8(v16, priority);
  sub_100106108(v16, timeout);
  sub_100106130(v16, type);
  data = [(NRPBPingRequest *)v16 data];
  v18 = [data length];

  if (v18 < size)
  {
    if (size >= v18)
    {
      v19 = size - v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = [NSData dataWithRandomBytesOfSize:v19];
    sub_1001060AC(v16, v20);
  }

  v21 = +[NSDate date];
  [v21 timeIntervalSinceReferenceDate];
  v23 = v22;

  v24 = [NSNumber numberWithDouble:timeout];
  v25 = [NSNumber numberWithDouble:timeout];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10006E2B4;
  v27[3] = &unk_100177FD8;
  v29 = v23;
  v28 = blockCopy;
  v26 = blockCopy;
  [(NRRemoteObject *)self sendRequest:v16 type:5 withTimeout:v24 withResponseTimeout:v25 withDescription:@"Ping request" onlyOneFor:0 priority:priority toIDSBTUUID:dCopy didSend:0 andResponse:v27];
}

- (void)idsHandlePingRequest:(id)request
{
  requestCopy = request;
  v5 = [NRPBPingRequest alloc];
  protobuf = [requestCopy protobuf];
  data = [protobuf data];
  v8 = [(NRPBPingRequest *)v5 initWithData:data];

  v9 = objc_opt_new();
  v10 = +[NSDate date];
  [v10 timeIntervalSinceReferenceDate];
  sub_100102784(v9, v11);

  data2 = [(NRPBPingRequest *)v8 data];
  v13 = [data2 length];

  data3 = [v9 data];
  v15 = [data3 length];

  if (v13 > v15)
  {
    v16 = [NSData dataWithRandomBytesOfSize:v13 - v15];
    sub_100102750(v9, v16);
  }

  v17 = [NSNumber numberWithDouble:sub_1001060EC(v8)];
  [(NRRemoteObject *)self sendResponse:v9 type:5 withRequest:requestCopy withTimeout:v17 withDescription:@"Ping response" onlyOneFor:0 priority:sub_1001060C4(v8) didSend:0];

  delegate = [(NRRemoteObject *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    clientQueue = [(NRRemoteObject *)self clientQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006E614;
    block[3] = &unk_100175598;
    v21 = delegate;
    v22 = v8;
    dispatch_async(clientQueue, block);
  }
}

- (void)idsHandleWatchMigrationCompletionRequest:(id)request
{
  requestCopy = request;
  v5 = [NRPBWatchMigrationCompletionRequest alloc];
  protobuf = [requestCopy protobuf];

  data = [protobuf data];
  v8 = [(NRPBWatchMigrationCompletionRequest *)v5 initWithData:data];

  v9 = nr_daemon_log();
  LODWORD(protobuf) = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (protobuf)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v17 = sub_1000FDF00(v8);
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "received watch migration completion request status: %d", buf, 8u);
    }
  }

  delegate = [(NRRemoteObject *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    clientQueue = [(NRRemoteObject *)self clientQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10006E828;
    v13[3] = &unk_100175598;
    v14 = delegate;
    v15 = v8;
    dispatch_async(clientQueue, v13);
  }
}

- (void)idsHandleWatchMigrationMetricSessionID:(id)d
{
  dCopy = d;
  v5 = [NRPBRTCMigrationMetricSessionID alloc];
  protobuf = [dCopy protobuf];

  data = [protobuf data];
  v8 = [(NRPBRTCMigrationMetricSessionID *)v5 initWithData:data];

  v9 = nr_daemon_log();
  LODWORD(protobuf) = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (protobuf)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = sub_100103C5C(v8);
      *buf = 138412290;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "received watch migration metric session ID: %@", buf, 0xCu);
    }
  }

  delegate = [(NRRemoteObject *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    clientQueue = [(NRRemoteObject *)self clientQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10006EA48;
    v14[3] = &unk_100175598;
    v15 = delegate;
    v16 = v8;
    dispatch_async(clientQueue, v14);
  }
}

- (void)sendMigrationCompletionWithStatus:(unint64_t)status toIDSBTUUID:(id)d withResponseBlock:(id)block
{
  statusCopy = status;
  blockCopy = block;
  dCopy = d;
  v10 = objc_alloc_init(NRPBWatchMigrationCompletionRequest);
  sub_1000FDED8(v10, statusCopy);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10006EBA0;
  v12[3] = &unk_100178000;
  v12[4] = self;
  v13 = blockCopy;
  v11 = blockCopy;
  [(NRRemoteObject *)self sendRequest:v10 type:6 withTimeout:&off_100186DA8 withResponseTimeout:&off_100186DA8 withDescription:@"Watch migration completion request" onlyOneFor:0 priority:300 toIDSBTUUID:dCopy didSend:v12 andResponse:0];
}

- (void)sendGraduationRequestToIDSBTUUID:(id)d withResponseBlock:(id)block
{
  blockCopy = block;
  dCopy = d;
  v8 = objc_alloc_init(NRPBGraduationRequest);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006ED7C;
  v10[3] = &unk_100178000;
  v10[4] = self;
  v11 = blockCopy;
  v9 = blockCopy;
  [(NRRemoteObject *)self sendRequest:v8 type:11 withTimeout:&off_100186DA8 withResponseTimeout:&off_100186DA8 withDescription:@"Watch graduation request" onlyOneFor:0 priority:300 toIDSBTUUID:dCopy didSend:v10 andResponse:0];
}

- (void)sendRTCMigrationMetricSessionID:(id)d toIDSBTUUID:(id)iD withResponseBlock:(id)block
{
  blockCopy = block;
  iDCopy = iD;
  dCopy = d;
  v11 = objc_alloc_init(NRPBRTCMigrationMetricSessionID);
  sub_100103C44(v11, dCopy);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10006EF70;
  v13[3] = &unk_100178000;
  v13[4] = self;
  v14 = blockCopy;
  v12 = blockCopy;
  [(NRRemoteObject *)self sendRequest:v11 type:9 withTimeout:&off_100186DA8 withResponseTimeout:&off_100186DA8 withDescription:@"RTC Migration metric session ID" onlyOneFor:0 priority:300 toIDSBTUUID:iDCopy didSend:v13 andResponse:0];
}

- (void)sendPairingSessionID:(id)d toIDSBTUUID:(id)iD withResponseBlock:(id)block
{
  blockCopy = block;
  iDCopy = iD;
  dCopy = d;
  v11 = objc_alloc_init(NRPBPairingSessionID);
  sub_1000FD8DC(v11, dCopy);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10006F164;
  v13[3] = &unk_100178000;
  v13[4] = self;
  v14 = blockCopy;
  v12 = blockCopy;
  [(NRRemoteObject *)self sendRequest:v11 type:10 withTimeout:&off_100186DA8 withResponseTimeout:&off_100186DA8 withDescription:@"Pairing session id" onlyOneFor:0 priority:300 toIDSBTUUID:iDCopy didSend:v13 andResponse:0];
}

@end