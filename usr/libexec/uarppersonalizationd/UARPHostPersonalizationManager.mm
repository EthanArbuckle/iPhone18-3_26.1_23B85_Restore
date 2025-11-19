@interface UARPHostPersonalizationManager
- (UARPHostPersonalizationManager)initWithListener:(id)a3;
- (void)dealloc;
- (void)personalizeAssetWithSSO:(id)a3 endpointUUID:(id)a4 tssOptions:(id)a5 tssServerURL:(id)a6;
- (void)personalizeAssetWithXPCEvent:(id)a3;
- (void)reportPersonalizationTicket:(id)a3 endpointUUID:(id)a4 tssOptions:(id)a5;
- (void)setupXpcConnection;
@end

@implementation UARPHostPersonalizationManager

- (UARPHostPersonalizationManager)initWithListener:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = UARPHostPersonalizationManager;
  v6 = [(UARPHostPersonalizationManager *)&v14 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.uarp.personalization.manager", 0);
    queue = v6->_queue;
    v6->_queue = v7;

    v9 = dispatch_queue_create("com.apple.uarp.personalization.manager.xpc", 0);
    xpcQueue = v6->_xpcQueue;
    v6->_xpcQueue = v9;

    v11 = os_log_create("com.apple.uarp", "hostpersonalizationmanager");
    log = v6->_log;
    v6->_log = v11;

    objc_storeStrong(&v6->_xpcListener, a3);
  }

  return v6;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v3.receiver = self;
  v3.super_class = UARPHostPersonalizationManager;
  [(UARPHostPersonalizationManager *)&v3 dealloc];
}

- (void)personalizeAssetWithXPCEvent:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100000FE0;
  v7[3] = &unk_10000C358;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)personalizeAssetWithSSO:(id)a3 endpointUUID:(id)a4 tssOptions:(id)a5 tssServerURL:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_alloc_init(UARPAssetPersonalizer);
  v39 = 0;
  v15 = [(UARPAssetPersonalizer *)v14 prepareAsAppleConnectSSO:v13 error:&v39];
  v16 = v39;
  v17 = v16;
  if (v15)
  {
    v33 = v10;
    v34 = v16;
    v31 = self;
    v32 = v11;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v18 = v12;
    v19 = [v18 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v36;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v36 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v35 + 1) + 8 * i);
          v24 = [v23 tssRequest];

          if (v24)
          {
            v25 = [v23 tssRequest];
            v26 = [(UARPAssetPersonalizer *)v14 performTatsuRequest:v25];
            [v23 setTssResponse:v26];

            [v23 tssResponse];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v20);
    }

    v11 = v32;
    v10 = v33;
    [(UARPHostPersonalizationManager *)v31 reportPersonalizationTicket:v33 endpointUUID:v32 tssOptions:v18];
    v17 = v34;
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      v28 = log;
      v29 = [v10 UUIDString];
      v30 = [v11 UUIDString];
      *buf = 136316162;
      v42 = "[UARPHostPersonalizationManager personalizeAssetWithSSO:endpointUUID:tssOptions:tssServerURL:]";
      v43 = 2112;
      v44 = v29;
      v45 = 2112;
      v46 = v30;
      v47 = 2112;
      v48 = v13;
      v49 = 2112;
      v50 = v12;
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s: Failed to prepare for personalization; Asset UUID is %@, Endpoint UUID is %@, server URL is %@tss options are %@", buf, 0x34u);
    }

    [(UARPHostPersonalizationManager *)self reportPersonalizationTicket:v10 endpointUUID:v11 tssOptions:v12];
  }
}

- (void)setupXpcConnection
{
  if (self->_xpcConnection)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "XPC connection already started", buf, 2u);
    }
  }

  else
  {
    xpcListener = self->_xpcListener;
    v5 = self->_log;
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
    if (xpcListener)
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Connecting to anonymous listener", buf, 2u);
      }

      v7 = [NSXPCConnection alloc];
      v8 = [(NSXPCListener *)self->_xpcListener endpoint];
      v9 = [v7 initWithListenerEndpoint:v8];
      xpcConnection = self->_xpcConnection;
      self->_xpcConnection = v9;
    }

    else
    {
      v11 = kUarpAssetPersonalizationCompleteXpcServiceName;
      if (v6)
      {
        *buf = 138412290;
        v31 = kUarpAssetPersonalizationCompleteXpcServiceName;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Starting XPC connection to %@", buf, 0xCu);
      }

      v12 = [[NSXPCConnection alloc] initWithMachServiceName:v11 options:4096];
      v8 = self->_xpcConnection;
      self->_xpcConnection = v12;
    }

    if (!self->_xpcConnection)
    {
      v13 = self->_log;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100004768(v13, v14, v15, v16, v17, v18, v19, v20);
      }
    }

    objc_initWeak(buf, self);
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100001A28;
    v28[3] = &unk_10000C380;
    objc_copyWeak(&v29, buf);
    [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:v28];
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_100001A94;
    v26 = &unk_10000C380;
    objc_copyWeak(&v27, buf);
    [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:&v23];
    v21 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___UARPAssetPersonalizationCompleteProtocol, v23, v24, v25, v26];
    [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:v21];

    v22 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
    UARPAssetPersonalizationCompleteProtocolSetupInterface();

    [(NSXPCConnection *)self->_xpcConnection setExportedInterface:0];
    [(NSXPCConnection *)self->_xpcConnection setExportedObject:self];
    [(NSXPCConnection *)self->_xpcConnection _setQueue:self->_xpcQueue];
    [(NSXPCConnection *)self->_xpcConnection activate];
    objc_destroyWeak(&v27);
    objc_destroyWeak(&v29);
    objc_destroyWeak(buf);
  }
}

- (void)reportPersonalizationTicket:(id)a3 endpointUUID:(id)a4 tssOptions:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(UARPHostPersonalizationManager *)self setupXpcConnection];
  xpcQueue = self->_xpcQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100001BF8;
  v15[3] = &unk_10000C3A8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(xpcQueue, v15);
}

@end