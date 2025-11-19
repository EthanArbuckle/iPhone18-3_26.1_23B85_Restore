@interface NRRemoteObjectCloud
- (NRRemoteObjectCloud)initWithDelegate:(id)a3 andQueue:(id)a4;
- (void)idsHandleAddTermsCloudEvent:(id)a3;
- (void)idsHandleMigratedAwayRequest:(id)a3;
- (void)idsHandleReceiveSystemVersionBroadcast:(id)a3;
- (void)idsHandleSystemVersionRequest:(id)a3;
- (void)registerProtobufHandlers;
- (void)sendMigrationRequestToDestinations:(id)a3 shouldCancel:(BOOL)a4 withSentBlock:(id)a5 withResponseBlock:(id)a6;
- (void)sendSystemVersionsRequestToCompanionWithSentBlock:(id)a3 withResponseBlock:(id)a4;
- (void)sendSystemVersionsResponseWithSystemVersions:(id)a3 forRequest:(id)a4;
- (void)sendSystemVersionsToDestinations:(id)a3 withSentBlock:(id)a4;
- (void)sendTermsEventToDestinations:(id)a3 termsEvent:(id)a4 withSentBlock:(id)a5 withResponseBlock:(id)a6;
@end

@implementation NRRemoteObjectCloud

- (NRRemoteObjectCloud)initWithDelegate:(id)a3 andQueue:(id)a4
{
  v5.receiver = self;
  v5.super_class = NRRemoteObjectCloud;
  return [(NRRemoteObject *)&v5 initWithServiceName:@"com.apple.private.alloy.bluetoothregistry.cloud" isAlwaysConnected:1 andClientQueue:a4 andDelegate:a3];
}

- (void)registerProtobufHandlers
{
  [(NRRemoteObject *)self setConnectedProtobufAction:0 forIncomingResponsesOfType:0];
  [(NRRemoteObject *)self setConnectedProtobufAction:"idsHandleMigratedAwayRequest:" forIncomingRequestsOfType:1];
  [(NRRemoteObject *)self setConnectedProtobufAction:"idsHandleSystemVersionRequest:" forIncomingRequestsOfType:3];

  [(NRRemoteObject *)self setConnectedProtobufAction:"idsHandleReceiveSystemVersionBroadcast:" forIncomingRequestsOfType:4];
}

- (void)sendMigrationRequestToDestinations:(id)a3 shouldCancel:(BOOL)a4 withSentBlock:(id)a5 withResponseBlock:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = a3;
  v13 = objc_opt_new();
  sub_100100944(v13, a4);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000E5BC4;
  v18[3] = &unk_100175C68;
  v19 = v10;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000E5C7C;
  v16[3] = &unk_100177FB0;
  v17 = v11;
  v14 = v11;
  v15 = v10;
  [(NRRemoteObject *)self sendCloudRequest:v13 type:0 withTimeout:&off_100187898 withResponseTimeout:&off_100187898 withDescription:@"Cloud migration request" onlyOneFor:@"migrationRequest" priority:300 toDestinations:v12 didSend:v18 andResponse:v16];
}

- (void)idsHandleMigratedAwayRequest:(id)a3
{
  v4 = a3;
  v5 = [(NRRemoteObject *)self delegate];
  v6 = [NRPBMigratedAwayRequest alloc];
  v7 = [v4 protobuf];

  v8 = [v7 data];
  v9 = [(NRPBMigratedAwayRequest *)v6 initWithData:v8];

  v10 = [(NRRemoteObject *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E5F8C;
  block[3] = &unk_1001758F8;
  v14 = v5;
  v15 = self;
  v16 = v9;
  v11 = v9;
  v12 = v5;
  dispatch_async(v10, block);
}

- (void)idsHandleAddTermsCloudEvent:(id)a3
{
  v4 = a3;
  v5 = [(NRRemoteObject *)self delegate];
  v6 = [NRPBAddTermsEventRequest alloc];
  v7 = [v4 protobuf];
  v8 = [v7 data];
  v9 = [(NRPBAddTermsEventRequest *)v6 initWithData:v8];

  if (v9)
  {
    v10 = sub_100102E28(v9);

    if (v10)
    {
      v11 = [(NRRemoteObject *)self clientQueue];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000E6138;
      v12[3] = &unk_1001756F8;
      v13 = v5;
      v14 = self;
      v15 = v9;
      v16 = v4;
      dispatch_async(v11, v12);
    }
  }
}

- (void)idsHandleSystemVersionRequest:(id)a3
{
  v4 = a3;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received System Version request: %@", buf, 0xCu);
    }
  }

  v8 = [(NRRemoteObject *)self clientQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000E6408;
  v10[3] = &unk_100175598;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  dispatch_async(v8, v10);
}

- (void)idsHandleReceiveSystemVersionBroadcast:(id)a3
{
  v4 = a3;
  v5 = [v4 protobuf];
  v6 = [v5 context];
  v7 = [v6 fromID];

  v8 = nr_daemon_log();
  LODWORD(v6) = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v9 = nr_daemon_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412546;
      v19 = v4;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received System Version Broadcast: %@ from %@", &v18, 0x16u);
    }
  }

  v10 = [(NRRemoteObject *)self service];
  v11 = [v10 linkedDeviceForFromID:v7 withRelationship:3];

  v12 = [(NRRemoteObject *)self delegate];
  v13 = [NRPBSystemVersionResponse alloc];
  v14 = [v4 protobuf];
  v15 = [v14 data];
  v16 = [(NRPBSystemVersionResponse *)v13 initWithData:v15];
  v17 = [v11 uniqueIDOverride];
  [v12 remoteObject:self receivedSystemVersionBroadcast:v16 fromDeviceID:v17];
}

- (void)sendTermsEventToDestinations:(id)a3 termsEvent:(id)a4 withSentBlock:(id)a5 withResponseBlock:(id)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = objc_alloc_init(NRPBAddTermsEventRequest);
  sub_100102E10(v12, v10);
  v13 = sub_100102E28(v12);
  [v13 setWritable:1];

  v14 = [v10 termsText];

  v15 = sub_100102E28(v12);
  [v15 setTermsText:v14];

  v16 = sub_100102E28(v12);
  [v16 setWritable:0];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000E67CC;
  v18[3] = &unk_100175C68;
  v19 = v9;
  v17 = v9;
  [(NRRemoteObject *)self sendCloudRequest:v12 type:2 withTimeout:&off_100187898 withResponseTimeout:&off_100187898 withDescription:@"Terms Event" onlyOneFor:0 priority:300 toDestinations:v11 didSend:v18 andResponse:0];
}

- (void)sendSystemVersionsToDestinations:(id)a3 withSentBlock:(id)a4
{
  v5 = a3;
  v6 = objc_alloc_init(NRPBSystemVersionResponse);
  v7 = +[NRPairingCompatibilityVersionInfo systemVersions];
  sub_1001009D0(v6, [v7 minPairingCompatibilityVersion]);
  sub_1001009A8(v6, [v7 maxPairingCompatibilityVersion]);
  sub_1001009F8(v6, [v7 minQuickSwitchCompatibilityVersion]);
  sub_100100980(v6, [v7 pairingCompatibilityVersion]);
  sub_100100A20(v6, [v7 isOverrideActive]);
  v8 = MGCopyAnswer();
  sub_100100A48(v6, v8);

  v9 = nr_daemon_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = nr_daemon_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "sendSystemVersionsToDestinations: %@", buf, 0xCu);
    }
  }

  [(NRRemoteObject *)self sendCloudRequest:v6 type:4 withTimeout:&off_100187898 withResponseTimeout:&off_100187898 withDescription:@"SystemVersion" onlyOneFor:0 priority:300 toDestinations:v5 didSend:&stru_100179A30 andResponse:0];
}

- (void)sendSystemVersionsResponseWithSystemVersions:(id)a3 forRequest:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = objc_alloc_init(NRPBSystemVersionResponse);
  sub_1001009D0(v10, [v7 minPairingCompatibilityVersion]);
  sub_1001009A8(v10, [v7 maxPairingCompatibilityVersion]);
  sub_1001009F8(v10, [v7 minQuickSwitchCompatibilityVersion]);
  sub_100100980(v10, [v7 pairingCompatibilityVersion]);
  v8 = [v7 isOverrideActive];

  sub_100100A20(v10, v8);
  v9 = MGCopyAnswer();
  sub_100100A48(v10, v9);

  [(NRRemoteObject *)self sendCloudResponse:v10 type:3 withRequest:v6 withTimeout:&off_100187898 withDescription:@"SystemVersion" onlyOneFor:0 priority:300 didSend:&stru_100179A50];
}

- (void)sendSystemVersionsRequestToCompanionWithSentBlock:(id)a3 withResponseBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(NRPBSystemVersionResponse);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000E6E30;
  v13[3] = &unk_100175C68;
  v14 = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000E6EE8;
  v11[3] = &unk_100177FB0;
  v12 = v7;
  v9 = v7;
  v10 = v6;
  [(NRRemoteObject *)self sendCompanionCloudRequest:v8 type:3 withTimeout:&off_100187898 withResponseTimeout:&off_100187898 withDescription:@"SystemVersion Request" onlyOneFor:0 priority:300 didSend:v13 andResponse:v11];
}

@end