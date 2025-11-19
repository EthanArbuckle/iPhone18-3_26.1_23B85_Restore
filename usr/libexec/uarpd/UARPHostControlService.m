@interface UARPHostControlService
- (BOOL)activateListener;
- (BOOL)activateToolMode;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (UARPHostControlService)initWithUARPHostManager:(id)a3 queue:(id)a4;
- (void)dealloc;
@end

@implementation UARPHostControlService

- (UARPHostControlService)initWithUARPHostManager:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = UARPHostControlService;
  v9 = [(UARPHostControlService *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_hostManager, a3);
    objc_storeStrong(&v10->_internalQueue, a4);
    v11 = os_log_create("com.apple.uarp", "controllistener");
    log = v10->_log;
    v10->_log = v11;

    objc_storeStrong(&v10->_xpcServiceName, kUarpDeviceControlXpcServiceName);
  }

  return v10;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener invalidate];
  v3.receiver = self;
  v3.super_class = UARPHostControlService;
  [(UARPHostControlService *)&v3 dealloc];
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
  block[2] = sub_1000066A0;
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

@end