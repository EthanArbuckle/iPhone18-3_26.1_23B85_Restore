@interface NRRemoteObjectCloud
- (NRRemoteObjectCloud)initWithDelegate:(id)delegate andQueue:(id)queue;
- (void)idsHandleAddTermsCloudEvent:(id)event;
- (void)idsHandleMigratedAwayRequest:(id)request;
- (void)idsHandleReceiveSystemVersionBroadcast:(id)broadcast;
- (void)idsHandleSystemVersionRequest:(id)request;
- (void)registerProtobufHandlers;
- (void)sendMigrationRequestToDestinations:(id)destinations shouldCancel:(BOOL)cancel withSentBlock:(id)block withResponseBlock:(id)responseBlock;
- (void)sendSystemVersionsRequestToCompanionWithSentBlock:(id)block withResponseBlock:(id)responseBlock;
- (void)sendSystemVersionsResponseWithSystemVersions:(id)versions forRequest:(id)request;
- (void)sendSystemVersionsToDestinations:(id)destinations withSentBlock:(id)block;
- (void)sendTermsEventToDestinations:(id)destinations termsEvent:(id)event withSentBlock:(id)block withResponseBlock:(id)responseBlock;
@end

@implementation NRRemoteObjectCloud

- (NRRemoteObjectCloud)initWithDelegate:(id)delegate andQueue:(id)queue
{
  v5.receiver = self;
  v5.super_class = NRRemoteObjectCloud;
  return [(NRRemoteObject *)&v5 initWithServiceName:@"com.apple.private.alloy.bluetoothregistry.cloud" isAlwaysConnected:1 andClientQueue:queue andDelegate:delegate];
}

- (void)registerProtobufHandlers
{
  [(NRRemoteObject *)self setConnectedProtobufAction:0 forIncomingResponsesOfType:0];
  [(NRRemoteObject *)self setConnectedProtobufAction:"idsHandleMigratedAwayRequest:" forIncomingRequestsOfType:1];
  [(NRRemoteObject *)self setConnectedProtobufAction:"idsHandleSystemVersionRequest:" forIncomingRequestsOfType:3];

  [(NRRemoteObject *)self setConnectedProtobufAction:"idsHandleReceiveSystemVersionBroadcast:" forIncomingRequestsOfType:4];
}

- (void)sendMigrationRequestToDestinations:(id)destinations shouldCancel:(BOOL)cancel withSentBlock:(id)block withResponseBlock:(id)responseBlock
{
  blockCopy = block;
  responseBlockCopy = responseBlock;
  destinationsCopy = destinations;
  v13 = objc_opt_new();
  sub_100100944(v13, cancel);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000E5BC4;
  v18[3] = &unk_100175C68;
  v19 = blockCopy;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000E5C7C;
  v16[3] = &unk_100177FB0;
  v17 = responseBlockCopy;
  v14 = responseBlockCopy;
  v15 = blockCopy;
  [(NRRemoteObject *)self sendCloudRequest:v13 type:0 withTimeout:&off_100187898 withResponseTimeout:&off_100187898 withDescription:@"Cloud migration request" onlyOneFor:@"migrationRequest" priority:300 toDestinations:destinationsCopy didSend:v18 andResponse:v16];
}

- (void)idsHandleMigratedAwayRequest:(id)request
{
  requestCopy = request;
  delegate = [(NRRemoteObject *)self delegate];
  v6 = [NRPBMigratedAwayRequest alloc];
  protobuf = [requestCopy protobuf];

  data = [protobuf data];
  v9 = [(NRPBMigratedAwayRequest *)v6 initWithData:data];

  clientQueue = [(NRRemoteObject *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E5F8C;
  block[3] = &unk_1001758F8;
  v14 = delegate;
  selfCopy = self;
  v16 = v9;
  v11 = v9;
  v12 = delegate;
  dispatch_async(clientQueue, block);
}

- (void)idsHandleAddTermsCloudEvent:(id)event
{
  eventCopy = event;
  delegate = [(NRRemoteObject *)self delegate];
  v6 = [NRPBAddTermsEventRequest alloc];
  protobuf = [eventCopy protobuf];
  data = [protobuf data];
  v9 = [(NRPBAddTermsEventRequest *)v6 initWithData:data];

  if (v9)
  {
    v10 = sub_100102E28(v9);

    if (v10)
    {
      clientQueue = [(NRRemoteObject *)self clientQueue];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000E6138;
      v12[3] = &unk_1001756F8;
      v13 = delegate;
      selfCopy = self;
      v15 = v9;
      v16 = eventCopy;
      dispatch_async(clientQueue, v12);
    }
  }
}

- (void)idsHandleSystemVersionRequest:(id)request
{
  requestCopy = request;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = requestCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received System Version request: %@", buf, 0xCu);
    }
  }

  clientQueue = [(NRRemoteObject *)self clientQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000E6408;
  v10[3] = &unk_100175598;
  v10[4] = self;
  v11 = requestCopy;
  v9 = requestCopy;
  dispatch_async(clientQueue, v10);
}

- (void)idsHandleReceiveSystemVersionBroadcast:(id)broadcast
{
  broadcastCopy = broadcast;
  protobuf = [broadcastCopy protobuf];
  context = [protobuf context];
  fromID = [context fromID];

  v8 = nr_daemon_log();
  LODWORD(context) = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (context)
  {
    v9 = nr_daemon_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412546;
      v19 = broadcastCopy;
      v20 = 2112;
      v21 = fromID;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received System Version Broadcast: %@ from %@", &v18, 0x16u);
    }
  }

  service = [(NRRemoteObject *)self service];
  v11 = [service linkedDeviceForFromID:fromID withRelationship:3];

  delegate = [(NRRemoteObject *)self delegate];
  v13 = [NRPBSystemVersionResponse alloc];
  protobuf2 = [broadcastCopy protobuf];
  data = [protobuf2 data];
  v16 = [(NRPBSystemVersionResponse *)v13 initWithData:data];
  uniqueIDOverride = [v11 uniqueIDOverride];
  [delegate remoteObject:self receivedSystemVersionBroadcast:v16 fromDeviceID:uniqueIDOverride];
}

- (void)sendTermsEventToDestinations:(id)destinations termsEvent:(id)event withSentBlock:(id)block withResponseBlock:(id)responseBlock
{
  blockCopy = block;
  eventCopy = event;
  destinationsCopy = destinations;
  v12 = objc_alloc_init(NRPBAddTermsEventRequest);
  sub_100102E10(v12, eventCopy);
  v13 = sub_100102E28(v12);
  [v13 setWritable:1];

  termsText = [eventCopy termsText];

  v15 = sub_100102E28(v12);
  [v15 setTermsText:termsText];

  v16 = sub_100102E28(v12);
  [v16 setWritable:0];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000E67CC;
  v18[3] = &unk_100175C68;
  v19 = blockCopy;
  v17 = blockCopy;
  [(NRRemoteObject *)self sendCloudRequest:v12 type:2 withTimeout:&off_100187898 withResponseTimeout:&off_100187898 withDescription:@"Terms Event" onlyOneFor:0 priority:300 toDestinations:destinationsCopy didSend:v18 andResponse:0];
}

- (void)sendSystemVersionsToDestinations:(id)destinations withSentBlock:(id)block
{
  destinationsCopy = destinations;
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
      v13 = destinationsCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "sendSystemVersionsToDestinations: %@", buf, 0xCu);
    }
  }

  [(NRRemoteObject *)self sendCloudRequest:v6 type:4 withTimeout:&off_100187898 withResponseTimeout:&off_100187898 withDescription:@"SystemVersion" onlyOneFor:0 priority:300 toDestinations:destinationsCopy didSend:&stru_100179A30 andResponse:0];
}

- (void)sendSystemVersionsResponseWithSystemVersions:(id)versions forRequest:(id)request
{
  requestCopy = request;
  versionsCopy = versions;
  v10 = objc_alloc_init(NRPBSystemVersionResponse);
  sub_1001009D0(v10, [versionsCopy minPairingCompatibilityVersion]);
  sub_1001009A8(v10, [versionsCopy maxPairingCompatibilityVersion]);
  sub_1001009F8(v10, [versionsCopy minQuickSwitchCompatibilityVersion]);
  sub_100100980(v10, [versionsCopy pairingCompatibilityVersion]);
  isOverrideActive = [versionsCopy isOverrideActive];

  sub_100100A20(v10, isOverrideActive);
  v9 = MGCopyAnswer();
  sub_100100A48(v10, v9);

  [(NRRemoteObject *)self sendCloudResponse:v10 type:3 withRequest:requestCopy withTimeout:&off_100187898 withDescription:@"SystemVersion" onlyOneFor:0 priority:300 didSend:&stru_100179A50];
}

- (void)sendSystemVersionsRequestToCompanionWithSentBlock:(id)block withResponseBlock:(id)responseBlock
{
  blockCopy = block;
  responseBlockCopy = responseBlock;
  v8 = objc_alloc_init(NRPBSystemVersionResponse);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000E6E30;
  v13[3] = &unk_100175C68;
  v14 = blockCopy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000E6EE8;
  v11[3] = &unk_100177FB0;
  v12 = responseBlockCopy;
  v9 = responseBlockCopy;
  v10 = blockCopy;
  [(NRRemoteObject *)self sendCompanionCloudRequest:v8 type:3 withTimeout:&off_100187898 withResponseTimeout:&off_100187898 withDescription:@"SystemVersion Request" onlyOneFor:0 priority:300 didSend:v13 andResponse:v11];
}

@end