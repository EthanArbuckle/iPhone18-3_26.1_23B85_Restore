@interface NRRemoteObjectTinker
- (NRRemoteObjectTinker)initWithDelegate:(id)a3 andQueue:(id)a4;
- (void)sendMigrationRequestToDestinations:(id)a3 shouldCancel:(BOOL)a4 withSentBlock:(id)a5 withResponseBlock:(id)a6;
- (void)sendSystemVersionsRequestToCompanionWithSentBlock:(id)a3 withResponseBlock:(id)a4;
- (void)sendSystemVersionsResponseWithSystemVersions:(id)a3 forRequest:(id)a4;
- (void)sendSystemVersionsToDestinations:(id)a3 withSentBlock:(id)a4;
- (void)sendTermsEventToDestinations:(id)a3 termsEvent:(id)a4 withSentBlock:(id)a5 withResponseBlock:(id)a6;
- (void)sendWatchTransferRequestToDestination:(id)a3 withWatchTransferStagingRequest:(id)a4 withSentBlock:(id)a5;
@end

@implementation NRRemoteObjectTinker

- (NRRemoteObjectTinker)initWithDelegate:(id)a3 andQueue:(id)a4
{
  v5.receiver = self;
  v5.super_class = NRRemoteObjectTinker;
  return [(NRRemoteObject *)&v5 initWithServiceName:@"com.apple.private.alloy.tinker.nanoregistry" isAlwaysConnected:1 andClientQueue:a4 andDelegate:a3];
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
  v18[2] = sub_100083D04;
  v18[3] = &unk_100175C68;
  v19 = v10;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100083DBC;
  v16[3] = &unk_100177FB0;
  v17 = v11;
  v14 = v11;
  v15 = v10;
  [(NRRemoteObject *)self sendTinkerRequest:v13 type:0 withTimeout:&off_100187838 withResponseTimeout:&off_100187838 withDescription:@"Tinker migration request" onlyOneFor:@"migrationRequest" priority:300 toDestinations:v12 didSend:v18 andResponse:v16];
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
  v18[2] = sub_100084110;
  v18[3] = &unk_100175C68;
  v19 = v9;
  v17 = v9;
  [(NRRemoteObject *)self sendCloudRequest:v12 type:1 withTimeout:&off_100187838 withResponseTimeout:&off_100187838 withDescription:@"Terms Event" onlyOneFor:0 priority:300 toDestinations:v11 didSend:v18 andResponse:0];
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

  [(NRRemoteObject *)self sendCloudRequest:v6 type:4 withTimeout:&off_100187838 withResponseTimeout:&off_100187838 withDescription:@"SystemVersion" onlyOneFor:0 priority:300 toDestinations:v5 didSend:&stru_100178528 andResponse:0];
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

  [(NRRemoteObject *)self sendCloudResponse:v10 type:3 withRequest:v6 withTimeout:&off_100187838 withDescription:@"SystemVersion" onlyOneFor:0 priority:300 didSend:&stru_100178548];
}

- (void)sendSystemVersionsRequestToCompanionWithSentBlock:(id)a3 withResponseBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(NRPBSystemVersionResponse);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100084728;
  v13[3] = &unk_100175C68;
  v14 = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000847E0;
  v11[3] = &unk_100177FB0;
  v12 = v7;
  v9 = v7;
  v10 = v6;
  [(NRRemoteObject *)self sendCompanionCloudRequest:v8 type:3 withTimeout:&off_100187838 withResponseTimeout:&off_100187838 withDescription:@"SystemVersion Request" onlyOneFor:0 priority:300 didSend:v13 andResponse:v11];
}

- (void)sendWatchTransferRequestToDestination:(id)a3 withWatchTransferStagingRequest:(id)a4 withSentBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [NSSet setWithObject:a3];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100084A54;
  v12[3] = &unk_100175C68;
  v13 = v8;
  v11 = v8;
  [(NRRemoteObject *)self sendCloudRequest:v9 type:5 withTimeout:&off_100187838 withResponseTimeout:&off_100187838 withDescription:@"Phone Side Information for Watch transfer" onlyOneFor:0 priority:300 toDestinations:v10 didSend:v12 andResponse:0];
}

@end