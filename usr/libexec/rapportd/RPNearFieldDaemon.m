@interface RPNearFieldDaemon
+ (id)sharedNearFieldDaemon;
- (BOOL)hasCurrentTransaction;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (RPNearFieldDaemon)init;
- (id)_exportedInterface;
- (id)_remoteObjectInterface;
- (void)_activate;
- (void)_invalidate;
- (void)_invalidated;
- (void)_updateNearFieldDiscoveryPref;
- (void)activate;
- (void)invalidate;
@end

@implementation RPNearFieldDaemon

- (BOOL)hasCurrentTransaction
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = [(RPNearFieldDaemon *)self nearFieldController];
  v4 = [v3 hasCurrentTransaction];

  return v4;
}

+ (id)sharedNearFieldDaemon
{
  if (qword_1001D6188 != -1)
  {
    sub_100118114();
  }

  v3 = qword_1001D6180;

  return v3;
}

- (RPNearFieldDaemon)init
{
  v5.receiver = self;
  v5.super_class = RPNearFieldDaemon;
  v2 = [(RPNearFieldDaemon *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(RPNearFieldDaemon *)v2 _updateNearFieldDiscoveryPref];
  }

  return v3;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000579CC;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  if (dword_1001D39B8 <= 30 && (dword_1001D39B8 != -1 || _LogCategory_Initialize()))
  {
    sub_100118128();
  }

  if (sub_10005826C())
  {
    if (!self->_xpcListener)
    {
      v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.rapport.nearfield.service"];
      xpcListener = self->_xpcListener;
      self->_xpcListener = v3;

      [(NSXPCListener *)self->_xpcListener setDelegate:self];
      [(NSXPCListener *)self->_xpcListener _setQueue:self->_dispatchQueue];
      [(NSXPCListener *)self->_xpcListener resume];
    }

    self->_invalidateCalled = 0;
    if (dword_1001D39B8 <= 30 && (dword_1001D39B8 != -1 || _LogCategory_Initialize()))
    {
      sub_100118164();
    }
  }

  else if (dword_1001D39B8 <= 90 && (dword_1001D39B8 != -1 || _LogCategory_Initialize()))
  {
    sub_100118144();
  }
}

- (void)invalidate
{
  if (dword_1001D39B8 <= 30 && (dword_1001D39B8 != -1 || _LogCategory_Initialize()))
  {
    sub_100118180();
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100057BA4;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (!self->_invalidateCalled)
  {
    v9 = v2;
    self->_invalidateCalled = 1;
    if (dword_1001D39B8 <= 30 && (dword_1001D39B8 != -1 || _LogCategory_Initialize()))
    {
      sub_10011819C();
    }

    [(NSXPCListener *)self->_xpcListener invalidate:v3];
    xpcListener = self->_xpcListener;
    self->_xpcListener = 0;

    [(RPNearFieldDaemonController *)self->_nearFieldController invalidate];
    nearFieldController = self->_nearFieldController;
    self->_nearFieldController = 0;

    [(RPNearFieldDaemon *)self _invalidated];
  }
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled && !self->_invalidateDone && !self->_nearFieldController && !self->_xpcListener)
  {
    self->_invalidateDone = 1;
    self->_activateCalled = 0;
    if (dword_1001D39B8 <= 30 && (dword_1001D39B8 != -1 || _LogCategory_Initialize()))
    {
      sub_1001181B8();
    }
  }
}

- (void)_updateNearFieldDiscoveryPref
{
  v3 = CFPrefs_GetInt64() != 0;
  self->_prefEnableDiscovery = v3;
  v4 = [(RPNearFieldDaemon *)self nearFieldController];
  [v4 setEnabled:v3];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v6 = [v5 cuValueForEntitlementNoCache:@"com.apple.rapport.nearfield"];
  v7 = [v6 isEqual:&__kCFBooleanFalse];

  if (v7)
  {
    if (dword_1001D39B8 <= 90 && (dword_1001D39B8 != -1 || _LogCategory_Initialize()))
    {
      sub_100118218(v5);
    }
  }

  else
  {
    v8 = [(RPNearFieldDaemon *)self nearFieldController];

    if (v8)
    {
      v9 = [(RPNearFieldDaemon *)self nearFieldController];
      [v9 invalidate];
    }

    v10 = [[RPNearFieldDaemonController alloc] initWithConnection:v5 dispatchQueue:self->_dispatchQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100057FC4;
    v15[3] = &unk_1001AA970;
    v15[4] = self;
    [(RPNearFieldDaemonController *)v10 setTransactionChangedHandler:v15];
    [(RPNearFieldDaemonController *)v10 setEnabled:self->_prefEnableDiscovery];
    [(RPNearFieldDaemon *)self setNearFieldController:v10];
    v11 = [(RPNearFieldDaemon *)self _exportedInterface];
    [v5 setExportedInterface:v11];

    [v5 setExportedObject:v10];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100058044;
    v14[3] = &unk_1001AA970;
    v14[4] = self;
    [v5 setInvalidationHandler:v14];
    v12 = [(RPNearFieldDaemon *)self _remoteObjectInterface];
    [v5 setRemoteObjectInterface:v12];

    [v5 _setQueue:self->_dispatchQueue];
    [v5 resume];
    if (dword_1001D39B8 <= 30 && (dword_1001D39B8 != -1 || _LogCategory_Initialize()))
    {
      sub_1001181D4(v5);
    }
  }

  return v7 ^ 1;
}

- (id)_remoteObjectInterface
{
  v2 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RPNearFieldXPCClientInterface];
  [v2 setClass:objc_opt_class() forSelector:"didBeginTransaction:" argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:"didUpdateTransaction:" argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:"didInterruptTransaction:withError:" argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:"didInterruptTransaction:withError:" argumentIndex:1 ofReply:0];

  return v2;
}

- (id)_exportedInterface
{
  v2 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RPNearFieldXPCDaemonInterface];
  [v2 setClass:objc_opt_class() forSelector:"startPolling:context:" argumentIndex:1 ofReply:0];

  return v2;
}

@end