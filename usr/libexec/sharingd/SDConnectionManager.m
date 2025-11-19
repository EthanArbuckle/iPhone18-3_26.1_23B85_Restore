@interface SDConnectionManager
+ (id)sharedManager;
- (SDConnectionManager)initWithXPCConnection:(id)a3;
- (SDConnectionManagerDelegate)delegate;
- (void)appleAccountSignedIn;
- (void)appleAccountSignedOut;
- (void)cleanUpConnections;
- (void)createCompanionServiceManagerWithIdentifier:(id)a3 clientProxy:(id)a4 reply:(id)a5;
- (void)createHotspotSessionForClientProxy:(id)a3 reply:(id)a4;
- (void)createStreamsForMessage:(id)a3 reply:(id)a4;
- (void)createUnlockManagerWithReply:(id)a3;
- (void)start;
- (void)unlockSessionDidFinish:(id)a3;
@end

@implementation SDConnectionManager

+ (id)sharedManager
{
  if (qword_100989F68 != -1)
  {
    sub_10014D4E0();
  }

  v3 = qword_100989F60;

  return v3;
}

- (SDConnectionManager)initWithXPCConnection:(id)a3
{
  v5 = a3;
  v22.receiver = self;
  v22.super_class = SDConnectionManager;
  v6 = [(SDConnectionManager *)&v22 init];
  if (v6)
  {
    v7 = +[NSUUID UUID];
    identifier = v6->_identifier;
    v6->_identifier = v7;

    v9 = [v5 _xpcConnection];
    v10 = sub_10000C344(v9);
    bundleID = v6->_bundleID;
    v6->_bundleID = v10;

    serviceManager = v6->_serviceManager;
    v6->_serviceManager = 0;

    v13 = objc_opt_new();
    unlockSessions = v6->_unlockSessions;
    v6->_unlockSessions = v13;

    objc_storeStrong(&v6->_xpcConnection, a3);
    v15 = objc_opt_new();
    companionStreams = v6->_companionStreams;
    v6->_companionStreams = v15;

    v17 = objc_opt_new();
    deviceStreamMap = v6->_deviceStreamMap;
    v6->_deviceStreamMap = v17;

    v19 = objc_opt_new();
    streamIdentifiers = v6->_streamIdentifiers;
    v6->_streamIdentifiers = v19;
  }

  return v6;
}

- (void)start
{
  if (self->_xpcConnection)
  {
    +[SFCompanionXPCManager initialize];
    v3 = +[SFCompanionXPCManager xpcManagerInterface];
    [(NSXPCConnection *)self->_xpcConnection setExportedInterface:v3];

    [(NSXPCConnection *)self->_xpcConnection setExportedObject:self];
    objc_initWeak(&location, self);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10014C3A8;
    v11[3] = &unk_1008CDD98;
    objc_copyWeak(&v12, &location);
    [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:v11];
    v6 = _NSConcreteStackBlock;
    v7 = 3221225472;
    v8 = sub_10014C414;
    v9 = &unk_1008CDD98;
    objc_copyWeak(&v10, &location);
    [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:&v6];
    identifier = self->_identifier;
    v14 = @"SDConnectionManagerIdentifier";
    v15 = identifier;
    v5 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1, v6, v7, v8, v9];
    [(NSXPCConnection *)self->_xpcConnection setUserInfo:v5];

    [(NSXPCConnection *)self->_xpcConnection resume];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (void)cleanUpConnections
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014C6A8;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
  v3 = tethering_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NSUUID *)self->_identifier UUIDString];
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Client invalidated (%@)", buf, 0xCu);
  }

  [(SDHotspotAgent *)self->_hotspotAgent stopBrowsingForClientID:self->_identifier];
  [(SDHotspotAgent *)self->_hotspotAgent removeClientID:self->_identifier];
  hotspotAgent = self->_hotspotAgent;
  self->_hotspotAgent = 0;
}

- (void)createCompanionServiceManagerWithIdentifier:(id)a3 clientProxy:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    v17 = streams_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10014D5C4();
    }

    goto LABEL_17;
  }

  if (!v9)
  {
    v18 = streams_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10014D590();
    }

    v19 = NSPOSIXErrorDomain;
    v26 = NSLocalizedDescriptionKey;
    v27 = @"Missing client proxy";
    v20 = &v27;
    v21 = &v26;
    goto LABEL_16;
  }

  if (!v8)
  {
    v22 = streams_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10014D55C();
    }

    v19 = NSPOSIXErrorDomain;
    v24 = NSLocalizedDescriptionKey;
    v25 = @"Missing identifier";
    v20 = &v25;
    v21 = &v24;
LABEL_16:
    v23 = [NSDictionary dictionaryWithObjects:v20 forKeys:v21 count:1];
    v17 = [NSError errorWithDomain:v19 code:22 userInfo:v23];

    (*(v10 + 2))(v10, 0, 0, 0, 0, v17);
LABEL_17:

    goto LABEL_20;
  }

  if (!self->_serviceManager)
  {
    v11 = [[SDServiceManager alloc] initWithClientProxy:v9 withIdentifier:v8];
    serviceManager = self->_serviceManager;
    self->_serviceManager = v11;

    [(SDServiceManager *)self->_serviceManager setBundleID:self->_bundleID];
    [(SDServiceManager *)self->_serviceManager start];
  }

  v13 = +[SDStatusMonitor sharedMonitor];
  v14 = [v13 someComputerName];

  v15 = sub_1001F28C0();
  if (sub_100117FF0())
  {
    v16 = +[SDCompanionCommon myIPAddress];
  }

  else
  {
    v16 = 0;
  }

  (*(v10 + 2))(v10, self->_serviceManager, v14, v15, v16, 0);

LABEL_20:
}

- (void)createStreamsForMessage:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = streams_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Streams are being requested from service = %@", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014CC90;
  block[3] = &unk_1008CE730;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)createUnlockManagerWithReply:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SDUnlockXPCSession);
  [(SDUnlockXPCSession *)v5 setDelegate:self];
  v4[2](v4, v5, 0);

  v6 = v5;
  sf_dispatch_on_main_queue();
}

- (void)createHotspotSessionForClientProxy:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((SFIsDeviceAppleTV() & 1) != 0 || (+[SDHotspotAgent sharedAgent], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v12 = NSLocalizedDescriptionKey;
    v13 = @"Could not create a hotspot browser";
    v11 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v11];

    v7[2](v7, 0, v10);
  }

  else
  {
    hotspotAgent = self->_hotspotAgent;
    self->_hotspotAgent = v8;
    v10 = v8;

    [(SDHotspotAgent *)v10 addClientID:self->_identifier proxy:v6];
    (v7)[2](v7, v10, 0);
  }
}

- (void)appleAccountSignedIn
{
  v2 = SFMainQueue();
  dispatch_async(v2, &stru_1008D1838);
}

- (void)appleAccountSignedOut
{
  v2 = SFMainQueue();
  dispatch_async(v2, &stru_1008D1858);
}

- (void)unlockSessionDidFinish:(id)a3
{
  v4 = a3;
  v3 = v4;
  sf_dispatch_on_main_queue();
}

- (SDConnectionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end