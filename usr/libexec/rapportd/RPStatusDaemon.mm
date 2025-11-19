@interface RPStatusDaemon
+ (id)sharedStatusDaemon;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (RPStatusDaemon)init;
- (id)descriptionWithLevel:(int)a3;
- (void)_activate;
- (void)_invalidate;
- (void)_invalidated;
- (void)_xpcConnectionInvalidated:(id)a3;
- (void)activate;
- (void)invalidate;
@end

@implementation RPStatusDaemon

+ (id)sharedStatusDaemon
{
  if (qword_1001D6590 != -1)
  {
    sub_10012AF9C();
  }

  v3 = qword_1001D6588;

  return v3;
}

- (RPStatusDaemon)init
{
  v6.receiver = self;
  v6.super_class = RPStatusDaemon;
  v2 = [(RPStatusDaemon *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, &_dispatch_main_q);
    v4 = v3;
  }

  return v3;
}

- (id)descriptionWithLevel:(int)a3
{
  if (a3 < 21)
  {
    v26 = 0;
    NSAppendPrintF();
    v4 = 0;
    v5 = [(NSMutableSet *)self->_xpcConnections count];
    if (v5)
    {
      v25 = v4;
      v19 = v5;
      NSAppendPrintF();
      v6 = v4;

      v4 = v6;
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = self->_xpcConnections;
    v7 = [(NSMutableSet *)obj countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          v12 = [v11 xpcCnx];
          v19 = [v12 processIdentifier];
          NSAppendPrintF();
          v13 = v4;

          v14 = [v11 subscriber];
          if (v14)
          {
            v19 = CUDescriptionWithLevel();
            NSAppendPrintF();
            v15 = v13;

            v13 = v15;
          }

          v16 = [v11 provider];
          if (v16)
          {
            v19 = CUDescriptionWithLevel();
            NSAppendPrintF();
            v17 = v13;

            v13 = v17;
          }

          NSAppendPrintF();
          v4 = v13;
        }

        v8 = [(NSMutableSet *)obj countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v4 = NSPrintF();
  }

  return v4;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BB43C;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  if (dword_1001D4D10 <= 30 && (dword_1001D4D10 != -1 || _LogCategory_Initialize()))
  {
    sub_10012AFB0();
  }

  if (!self->_xpcListener)
  {
    v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.rapport.StatusUpdates"];
    xpcListener = self->_xpcListener;
    self->_xpcListener = v3;

    [(NSXPCListener *)self->_xpcListener setDelegate:self];
    [(NSXPCListener *)self->_xpcListener _setQueue:self->_dispatchQueue];
    [(NSXPCListener *)self->_xpcListener resume];
  }

  if (!self->_messenger)
  {
    v5 = +[RPCompanionLinkDaemon sharedCompanionLinkDaemon];
    messenger = self->_messenger;
    self->_messenger = v5;

    v8 = @"statusFlags";
    v9 = &off_1001B8050;
    v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    [(RPMessageable *)self->_messenger registerEventID:@"_statusInfo" options:v7 handler:&stru_1001AF390];
  }

  [(RPStatusDaemon *)self prefsChanged];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BB6B8;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (!self->_invalidateCalled)
  {
    v8 = v2;
    self->_invalidateCalled = 1;
    if (dword_1001D4D10 <= 30 && (dword_1001D4D10 != -1 || _LogCategory_Initialize()))
    {
      sub_10012AFCC();
    }

    [(RPMessageable *)self->_messenger deregisterEventID:@"_statusInfo", v3, v8, v4];
    [(NSXPCListener *)self->_xpcListener invalidate];
    xpcListener = self->_xpcListener;
    self->_xpcListener = 0;

    [(RPStatusDaemon *)self _invalidated];
  }
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled && !self->_invalidateDone)
  {
    self->_invalidateDone = 1;
    if (dword_1001D4D10 <= 30 && (dword_1001D4D10 != -1 || _LogCategory_Initialize()))
    {
      sub_10012AFE8();
    }
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v6 = [[RPStatusUpdatableXPCConnection alloc] initWithDaemon:self xpcCnx:v5];
  [(RPStatusUpdatableXPCConnection *)v6 setDispatchQueue:self->_dispatchQueue];
  xpcConnections = self->_xpcConnections;
  if (!xpcConnections)
  {
    v8 = objc_alloc_init(NSMutableSet);
    v9 = self->_xpcConnections;
    self->_xpcConnections = v8;

    xpcConnections = self->_xpcConnections;
  }

  [(NSMutableSet *)xpcConnections addObject:v6];
  v10 = self->_xpcClientInterface;
  if (!v10)
  {
    v32 = [NSSet alloc];
    v30 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v32 initWithObjects:{v30, v11, v12, v13, v14, v15, v16, objc_opt_class(), 0}];
    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RPStatusUpdatableXPCClientInterface];
    [(NSXPCInterface *)v10 setClasses:v17 forSelector:"xpcStatusUpdatableGiveStatusUpdate:peerDevice:currentState:statusInfo:" argumentIndex:1 ofReply:0];
    objc_storeStrong(&self->_xpcClientInterface, v10);
  }

  v18 = self->_xpcDaemonInterface;
  if (!v18)
  {
    v33 = [NSSet alloc];
    v31 = objc_opt_class();
    v29 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = [v33 initWithObjects:{v31, v29, v19, v20, v21, v22, v23, objc_opt_class(), 0}];
    v25 = [NSSet alloc];
    v26 = objc_opt_class();
    v27 = [v25 initWithObjects:{v26, objc_opt_class(), 0}];
    v18 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RPStatusUpdatableXPCDaemonInterface];
    [(NSXPCInterface *)v18 setClasses:v27 forSelector:"xpcStatusSubscriberActivate:completion:" argumentIndex:0 ofReply:1];
    [(NSXPCInterface *)v18 setClasses:v27 forSelector:"xpcStatusProviderActivate:completion:" argumentIndex:0 ofReply:1];
    [(NSXPCInterface *)v18 setClasses:v24 forSelector:"xpcStatusUpdatableProvideStatus:statusInfo:" argumentIndex:0 ofReply:0];
    [(NSXPCInterface *)v18 setClass:objc_opt_class() forSelector:"xpcStatusUpdatableCancelProvideStatus:" argumentIndex:0 ofReply:0];
    [(NSXPCInterface *)v18 setClass:objc_opt_class() forSelector:"xpcStatusUpdatableSubscribeToStatus:" argumentIndex:0 ofReply:0];
    [(NSXPCInterface *)v18 setClass:objc_opt_class() forSelector:"xpcStatusUpdatableUnsubscribeToStatus:" argumentIndex:0 ofReply:0];
    objc_storeStrong(&self->_xpcDaemonInterface, v18);
  }

  [v5 setExportedInterface:v18];
  [v5 setExportedObject:v6];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000BBC84;
  v34[3] = &unk_1001AB488;
  v34[4] = self;
  v34[5] = v6;
  [v5 setInvalidationHandler:v34];
  [v5 setRemoteObjectInterface:v10];
  [v5 _setQueue:self->_dispatchQueue];
  [v5 resume];
  if (dword_1001D4D10 <= 20 && (dword_1001D4D10 != -1 || _LogCategory_Initialize()))
  {
    sub_10012B004(v5);
  }

  return 1;
}

- (void)_xpcConnectionInvalidated:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v5 = a3;
  dispatch_assert_queue_V2(dispatchQueue);
  [v5 connectionInvalidated];
  [(NSMutableSet *)self->_xpcConnections removeObject:v5];

  [(RPStatusDaemon *)self _update];
}

@end