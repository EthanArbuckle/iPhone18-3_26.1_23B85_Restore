@interface NRRemoteObjectTinker
- (NRRemoteObjectTinker)initWithDelegate:(id)delegate andQueue:(id)queue;
- (void)sendMigrationRequestToDestinations:(id)destinations shouldCancel:(BOOL)cancel withSentBlock:(id)block withResponseBlock:(id)responseBlock;
- (void)sendSystemVersionsRequestToCompanionWithSentBlock:(id)block withResponseBlock:(id)responseBlock;
- (void)sendSystemVersionsResponseWithSystemVersions:(id)versions forRequest:(id)request;
- (void)sendSystemVersionsToDestinations:(id)destinations withSentBlock:(id)block;
- (void)sendTermsEventToDestinations:(id)destinations termsEvent:(id)event withSentBlock:(id)block withResponseBlock:(id)responseBlock;
- (void)sendWatchTransferRequestToDestination:(id)destination withWatchTransferStagingRequest:(id)request withSentBlock:(id)block;
@end

@implementation NRRemoteObjectTinker

- (NRRemoteObjectTinker)initWithDelegate:(id)delegate andQueue:(id)queue
{
  v5.receiver = self;
  v5.super_class = NRRemoteObjectTinker;
  return [(NRRemoteObject *)&v5 initWithServiceName:@"com.apple.private.alloy.tinker.nanoregistry" isAlwaysConnected:1 andClientQueue:queue andDelegate:delegate];
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
  v18[2] = sub_100083D04;
  v18[3] = &unk_100175C68;
  v19 = blockCopy;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100083DBC;
  v16[3] = &unk_100177FB0;
  v17 = responseBlockCopy;
  v14 = responseBlockCopy;
  v15 = blockCopy;
  [(NRRemoteObject *)self sendTinkerRequest:v13 type:0 withTimeout:&off_100187838 withResponseTimeout:&off_100187838 withDescription:@"Tinker migration request" onlyOneFor:@"migrationRequest" priority:300 toDestinations:destinationsCopy didSend:v18 andResponse:v16];
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
  v18[2] = sub_100084110;
  v18[3] = &unk_100175C68;
  v19 = blockCopy;
  v17 = blockCopy;
  [(NRRemoteObject *)self sendCloudRequest:v12 type:1 withTimeout:&off_100187838 withResponseTimeout:&off_100187838 withDescription:@"Terms Event" onlyOneFor:0 priority:300 toDestinations:destinationsCopy didSend:v18 andResponse:0];
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

  [(NRRemoteObject *)self sendCloudRequest:v6 type:4 withTimeout:&off_100187838 withResponseTimeout:&off_100187838 withDescription:@"SystemVersion" onlyOneFor:0 priority:300 toDestinations:destinationsCopy didSend:&stru_100178528 andResponse:0];
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

  [(NRRemoteObject *)self sendCloudResponse:v10 type:3 withRequest:requestCopy withTimeout:&off_100187838 withDescription:@"SystemVersion" onlyOneFor:0 priority:300 didSend:&stru_100178548];
}

- (void)sendSystemVersionsRequestToCompanionWithSentBlock:(id)block withResponseBlock:(id)responseBlock
{
  blockCopy = block;
  responseBlockCopy = responseBlock;
  v8 = objc_alloc_init(NRPBSystemVersionResponse);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100084728;
  v13[3] = &unk_100175C68;
  v14 = blockCopy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000847E0;
  v11[3] = &unk_100177FB0;
  v12 = responseBlockCopy;
  v9 = responseBlockCopy;
  v10 = blockCopy;
  [(NRRemoteObject *)self sendCompanionCloudRequest:v8 type:3 withTimeout:&off_100187838 withResponseTimeout:&off_100187838 withDescription:@"SystemVersion Request" onlyOneFor:0 priority:300 didSend:v13 andResponse:v11];
}

- (void)sendWatchTransferRequestToDestination:(id)destination withWatchTransferStagingRequest:(id)request withSentBlock:(id)block
{
  blockCopy = block;
  requestCopy = request;
  v10 = [NSSet setWithObject:destination];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100084A54;
  v12[3] = &unk_100175C68;
  v13 = blockCopy;
  v11 = blockCopy;
  [(NRRemoteObject *)self sendCloudRequest:requestCopy type:5 withTimeout:&off_100187838 withResponseTimeout:&off_100187838 withDescription:@"Phone Side Information for Watch transfer" onlyOneFor:0 priority:300 toDestinations:v10 didSend:v12 andResponse:0];
}

@end