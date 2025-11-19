@interface NRRemoteObjectClassD
- (NRRemoteObjectClassD)initWithDelegate:(id)a3 andQueue:(id)a4;
- (void)idsHandlePingRequest:(id)a3;
- (void)idsHandleWatchMigrationCompletionRequest:(id)a3;
- (void)idsHandleWatchMigrationMetricSessionID:(id)a3;
- (void)idsHandleWillUnpair:(id)a3;
- (void)registerProtobufHandlers;
- (void)sendGraduationRequestToIDSBTUUID:(id)a3 withResponseBlock:(id)a4;
- (void)sendMigrationCompletionWithStatus:(unint64_t)a3 toIDSBTUUID:(id)a4 withResponseBlock:(id)a5;
- (void)sendPairingModeRequest:(unsigned __int16)a3 toIDSBTUUID:(id)a4 withSentBlock:(id)a5;
- (void)sendPairingSessionID:(id)a3 toIDSBTUUID:(id)a4 withResponseBlock:(id)a5;
- (void)sendPingRequestType:(int)a3 withMessagePriority:(int64_t)a4 withMessageSize:(unint64_t)a5 withTimeout:(double)a6 toIDSBTUUID:(id)a7 withResponseBlock:(id)a8;
- (void)sendRTCMigrationMetricSessionID:(id)a3 toIDSBTUUID:(id)a4 withResponseBlock:(id)a5;
- (void)sendUnpairMessageWithAdvertisedName:(id)a3 btUUID:(id)a4 shouldObliterate:(id)a5 shouldBrick:(id)a6 shouldPreserveESim:(id)a7 withPairingFailureCode:(id)a8 withAbortReason:(id)a9 withRequestIdentifier:(id)a10 responseBlock:(id)a11;
@end

@implementation NRRemoteObjectClassD

- (NRRemoteObjectClassD)initWithDelegate:(id)a3 andQueue:(id)a4
{
  v5.receiver = self;
  v5.super_class = NRRemoteObjectClassD;
  return [(NRRemoteObject *)&v5 initWithServiceName:@"com.apple.private.alloy.bluetoothregistry" andClientQueue:a4 andDelegate:a3];
}

- (void)registerProtobufHandlers
{
  [(NRRemoteObject *)self setAlwaysProtobufAction:"idsHandleWillUnpair:" forIncomingRequestsOfType:1];
  [(NRRemoteObject *)self setAlwaysProtobufAction:"idsHandlePingRequest:" forIncomingRequestsOfType:5];
  [(NRRemoteObject *)self setAlwaysProtobufAction:0 forIncomingResponsesOfType:5];
  [(NRRemoteObject *)self setConnectedProtobufAction:"idsHandleWatchMigrationCompletionRequest:" forIncomingRequestsOfType:6];

  [(NRRemoteObject *)self setConnectedProtobufAction:"idsHandleWatchMigrationMetricSessionID:" forIncomingRequestsOfType:9];
}

- (void)sendPairingModeRequest:(unsigned __int16)a3 toIDSBTUUID:(id)a4 withSentBlock:(id)a5
{
  v6 = a3;
  v8 = a5;
  v9 = a4;
  v10 = objc_alloc_init(NRPBPairingModeRequest);
  sub_100101B5C(v10, v6);
  v11 = [(NRRemoteObject *)self defaultPairedDevice];
  sub_100101B0C(v10, [v11 maxCompatibilityVersion]);

  v12 = [(NRRemoteObject *)self delegate];
  sub_100101AE4(v10, [v12 maxPairingCompatibilityVersion]);
  sub_100101B34(v10, [v12 minPairingCompatibilityVersion]);
  v13 = v6;
  v14 = +[NRPairingCompatibilityVersionInfo systemVersions];
  v15 = [v14 maxPairingCompatibilityVersion];
  v16 = [(NRRemoteObject *)self defaultPairedDevice];
  v17 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Set Compatibility State %ld (P=%d W=%d)", v13, v15, [v16 pairingProtocolVersion]);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10006D9C8;
  v19[3] = &unk_100175C68;
  v20 = v8;
  v18 = v8;
  [(NRRemoteObject *)self sendRequest:v10 type:3 withTimeout:0 withResponseTimeout:0 withDescription:v17 onlyOneFor:@"compatibilityState" priority:300 toIDSBTUUID:v9 didSend:v19 andResponse:0];
}

- (void)idsHandleWillUnpair:(id)a3
{
  v4 = a3;
  v5 = [NRPBDeviceWillUnpairRequest alloc];
  v6 = [v4 protobuf];
  v7 = [v6 data];
  v8 = [(NRPBDeviceWillUnpairRequest *)v5 initWithData:v7];

  v9 = [(NRRemoteObject *)self delegate];
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

  v16 = [(NRRemoteObject *)self clientQueue];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10006DC24;
  v20[3] = &unk_1001756F8;
  v21 = v9;
  v22 = self;
  v23 = v8;
  v24 = v4;
  v17 = v4;
  v18 = v8;
  v19 = v9;
  dispatch_async(v16, v20);
}

- (void)sendUnpairMessageWithAdvertisedName:(id)a3 btUUID:(id)a4 shouldObliterate:(id)a5 shouldBrick:(id)a6 shouldPreserveESim:(id)a7 withPairingFailureCode:(id)a8 withAbortReason:(id)a9 withRequestIdentifier:(id)a10 responseBlock:(id)a11
{
  v31 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v30 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  if (v22)
  {
    v24 = v19;
    v25 = v18;
    v26 = objc_opt_new();
    v27 = v17;
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10006E090;
    v36[3] = &unk_100175C68;
    v37 = v23;
    [(NRRemoteObject *)self sendResponse:v26 type:1 requestUUID:v22 withTimeout:&off_100186D90 withDescription:@"willUnpairResponse" onlyOneFor:0 priority:300 didSend:v36];

    v28 = v37;
  }

  else
  {
    v29 = objc_alloc_init(NRPBDeviceWillUnpairRequest);
    v28 = v29;
    if (v31)
    {
      sub_100101F14(v29, v31);
    }

    if (v18)
    {
      sub_100101E14(v28, [v18 BOOLValue]);
    }

    if (v19)
    {
      sub_100101E94(v28, [v19 BOOLValue]);
    }

    v24 = v19;
    if (v30)
    {
      sub_100101ED4(v28, [v30 BOOLValue]);
    }

    v25 = v18;
    if (v20)
    {
      sub_100101E54(v28, [v20 intValue]);
    }

    v27 = v17;
    if (v21)
    {
      sub_100101F28(v28, v21);
    }

    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10006E0A8;
    v34[3] = &unk_100175C68;
    v35 = v23;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10006E0C4;
    v32[3] = &unk_100177FB0;
    v33 = v35;
    [(NRRemoteObject *)self sendRequest:v28 type:1 withTimeout:&off_100186D90 withResponseTimeout:&off_100186DA8 withDescription:@"willUnpairRequest" onlyOneFor:0 priority:300 toIDSBTUUID:v17 didSend:v34 andResponse:v32];
  }
}

- (void)sendPingRequestType:(int)a3 withMessagePriority:(int64_t)a4 withMessageSize:(unint64_t)a5 withTimeout:(double)a6 toIDSBTUUID:(id)a7 withResponseBlock:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = objc_alloc_init(NRPBPingRequest);
  sub_1001060D8(v16, a4);
  sub_100106108(v16, a6);
  sub_100106130(v16, a3);
  v17 = [(NRPBPingRequest *)v16 data];
  v18 = [v17 length];

  if (v18 < a5)
  {
    if (a5 >= v18)
    {
      v19 = a5 - v18;
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

  v24 = [NSNumber numberWithDouble:a6];
  v25 = [NSNumber numberWithDouble:a6];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10006E2B4;
  v27[3] = &unk_100177FD8;
  v29 = v23;
  v28 = v14;
  v26 = v14;
  [(NRRemoteObject *)self sendRequest:v16 type:5 withTimeout:v24 withResponseTimeout:v25 withDescription:@"Ping request" onlyOneFor:0 priority:a4 toIDSBTUUID:v15 didSend:0 andResponse:v27];
}

- (void)idsHandlePingRequest:(id)a3
{
  v4 = a3;
  v5 = [NRPBPingRequest alloc];
  v6 = [v4 protobuf];
  v7 = [v6 data];
  v8 = [(NRPBPingRequest *)v5 initWithData:v7];

  v9 = objc_opt_new();
  v10 = +[NSDate date];
  [v10 timeIntervalSinceReferenceDate];
  sub_100102784(v9, v11);

  v12 = [(NRPBPingRequest *)v8 data];
  v13 = [v12 length];

  v14 = [v9 data];
  v15 = [v14 length];

  if (v13 > v15)
  {
    v16 = [NSData dataWithRandomBytesOfSize:v13 - v15];
    sub_100102750(v9, v16);
  }

  v17 = [NSNumber numberWithDouble:sub_1001060EC(v8)];
  [(NRRemoteObject *)self sendResponse:v9 type:5 withRequest:v4 withTimeout:v17 withDescription:@"Ping response" onlyOneFor:0 priority:sub_1001060C4(v8) didSend:0];

  v18 = [(NRRemoteObject *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v19 = [(NRRemoteObject *)self clientQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006E614;
    block[3] = &unk_100175598;
    v21 = v18;
    v22 = v8;
    dispatch_async(v19, block);
  }
}

- (void)idsHandleWatchMigrationCompletionRequest:(id)a3
{
  v4 = a3;
  v5 = [NRPBWatchMigrationCompletionRequest alloc];
  v6 = [v4 protobuf];

  v7 = [v6 data];
  v8 = [(NRPBWatchMigrationCompletionRequest *)v5 initWithData:v7];

  v9 = nr_daemon_log();
  LODWORD(v6) = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v17 = sub_1000FDF00(v8);
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "received watch migration completion request status: %d", buf, 8u);
    }
  }

  v11 = [(NRRemoteObject *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v12 = [(NRRemoteObject *)self clientQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10006E828;
    v13[3] = &unk_100175598;
    v14 = v11;
    v15 = v8;
    dispatch_async(v12, v13);
  }
}

- (void)idsHandleWatchMigrationMetricSessionID:(id)a3
{
  v4 = a3;
  v5 = [NRPBRTCMigrationMetricSessionID alloc];
  v6 = [v4 protobuf];

  v7 = [v6 data];
  v8 = [(NRPBRTCMigrationMetricSessionID *)v5 initWithData:v7];

  v9 = nr_daemon_log();
  LODWORD(v6) = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v6)
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

  v12 = [(NRRemoteObject *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v13 = [(NRRemoteObject *)self clientQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10006EA48;
    v14[3] = &unk_100175598;
    v15 = v12;
    v16 = v8;
    dispatch_async(v13, v14);
  }
}

- (void)sendMigrationCompletionWithStatus:(unint64_t)a3 toIDSBTUUID:(id)a4 withResponseBlock:(id)a5
{
  v6 = a3;
  v8 = a5;
  v9 = a4;
  v10 = objc_alloc_init(NRPBWatchMigrationCompletionRequest);
  sub_1000FDED8(v10, v6);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10006EBA0;
  v12[3] = &unk_100178000;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [(NRRemoteObject *)self sendRequest:v10 type:6 withTimeout:&off_100186DA8 withResponseTimeout:&off_100186DA8 withDescription:@"Watch migration completion request" onlyOneFor:0 priority:300 toIDSBTUUID:v9 didSend:v12 andResponse:0];
}

- (void)sendGraduationRequestToIDSBTUUID:(id)a3 withResponseBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(NRPBGraduationRequest);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006ED7C;
  v10[3] = &unk_100178000;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [(NRRemoteObject *)self sendRequest:v8 type:11 withTimeout:&off_100186DA8 withResponseTimeout:&off_100186DA8 withDescription:@"Watch graduation request" onlyOneFor:0 priority:300 toIDSBTUUID:v7 didSend:v10 andResponse:0];
}

- (void)sendRTCMigrationMetricSessionID:(id)a3 toIDSBTUUID:(id)a4 withResponseBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(NRPBRTCMigrationMetricSessionID);
  sub_100103C44(v11, v10);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10006EF70;
  v13[3] = &unk_100178000;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [(NRRemoteObject *)self sendRequest:v11 type:9 withTimeout:&off_100186DA8 withResponseTimeout:&off_100186DA8 withDescription:@"RTC Migration metric session ID" onlyOneFor:0 priority:300 toIDSBTUUID:v9 didSend:v13 andResponse:0];
}

- (void)sendPairingSessionID:(id)a3 toIDSBTUUID:(id)a4 withResponseBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(NRPBPairingSessionID);
  sub_1000FD8DC(v11, v10);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10006F164;
  v13[3] = &unk_100178000;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [(NRRemoteObject *)self sendRequest:v11 type:10 withTimeout:&off_100186DA8 withResponseTimeout:&off_100186DA8 withDescription:@"Pairing session id" onlyOneFor:0 priority:300 toIDSBTUUID:v9 didSend:v13 andResponse:0];
}

@end