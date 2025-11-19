@interface UARPPersonalizationCompleteService
- (BOOL)acceptNewConnection:(id)a3;
- (BOOL)activateListener;
- (BOOL)activateToolMode;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (UARPPersonalizationCompleteService)initWithUARPHostManager:(id)a3 queue:(id)a4;
- (void)dealloc;
@end

@implementation UARPPersonalizationCompleteService

- (UARPPersonalizationCompleteService)initWithUARPHostManager:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = UARPPersonalizationCompleteService;
  v9 = [(UARPPersonalizationCompleteService *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_hostManager, a3);
    objc_storeStrong(&v10->_internalQueue, a4);
    v11 = os_log_create("com.apple.uarp", "personalizationcomplete");
    log = v10->_log;
    v10->_log = v11;

    objc_storeStrong(&v10->_xpcServiceName, kUarpAssetPersonalizationCompleteXpcServiceName);
  }

  return v10;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener invalidate];
  v3.receiver = self;
  v3.super_class = UARPPersonalizationCompleteService;
  [(UARPPersonalizationCompleteService *)&v3 dealloc];
}

- (BOOL)activateListener
{
  listener = self->_listener;
  if (!listener)
  {
    v4 = [[NSXPCListener alloc] initWithMachServiceName:self->_xpcServiceName];
    v5 = self->_listener;
    self->_listener = v4;

    [(NSXPCListener *)self->_listener setDelegate:self];
    [(NSXPCListener *)self->_listener activate];
  }

  return listener == 0;
}

- (BOOL)activateToolMode
{
  listener = self->_listener;
  if (!listener)
  {
    v4 = +[NSXPCListener anonymousListener];
    v5 = self->_listener;
    self->_listener = v4;

    [(NSXPCListener *)self->_listener setDelegate:self];
    [(NSXPCListener *)self->_listener activate];
  }

  return listener == 0;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016758;
  block[3] = &unk_1000B8AB0;
  v10 = v5;
  v11 = self;
  v12 = &v13;
  v7 = v5;
  dispatch_sync(internalQueue, block);
  LOBYTE(internalQueue) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return internalQueue;
}

- (BOOL)acceptNewConnection:(id)a3
{
  v4 = a3;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___UARPAssetPersonalizationCompleteProtocol];
  [v4 setExportedInterface:v5];

  v6 = [v4 exportedInterface];
  UARPAssetPersonalizationCompleteProtocolSetupInterface();

  [v4 setExportedObject:self->_hostManager];
  objc_initWeak(&location, self);
  objc_initWeak(&from, v4);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000169FC;
  v14[3] = &unk_1000B8C68;
  objc_copyWeak(&v15, &location);
  objc_copyWeak(&v16, &from);
  [v4 setInterruptionHandler:v14];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100016A78;
  v11 = &unk_1000B8C68;
  objc_copyWeak(&v12, &location);
  objc_copyWeak(&v13, &from);
  [v4 setInvalidationHandler:&v8];
  [v4 _setQueue:{self->_internalQueue, v8, v9, v10, v11}];
  [v4 resume];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return 1;
}

@end