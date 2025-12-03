@interface RPNearFieldDaemon
+ (id)sharedNearFieldDaemon;
- (BOOL)hasCurrentTransaction;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
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
  nearFieldController = [(RPNearFieldDaemon *)self nearFieldController];
  hasCurrentTransaction = [nearFieldController hasCurrentTransaction];

  return hasCurrentTransaction;
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
  nearFieldController = [(RPNearFieldDaemon *)self nearFieldController];
  [nearFieldController setEnabled:v3];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v6 = [connectionCopy cuValueForEntitlementNoCache:@"com.apple.rapport.nearfield"];
  v7 = [v6 isEqual:&__kCFBooleanFalse];

  if (v7)
  {
    if (dword_1001D39B8 <= 90 && (dword_1001D39B8 != -1 || _LogCategory_Initialize()))
    {
      sub_100118218(connectionCopy);
    }
  }

  else
  {
    nearFieldController = [(RPNearFieldDaemon *)self nearFieldController];

    if (nearFieldController)
    {
      nearFieldController2 = [(RPNearFieldDaemon *)self nearFieldController];
      [nearFieldController2 invalidate];
    }

    v10 = [[RPNearFieldDaemonController alloc] initWithConnection:connectionCopy dispatchQueue:self->_dispatchQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100057FC4;
    v15[3] = &unk_1001AA970;
    v15[4] = self;
    [(RPNearFieldDaemonController *)v10 setTransactionChangedHandler:v15];
    [(RPNearFieldDaemonController *)v10 setEnabled:self->_prefEnableDiscovery];
    [(RPNearFieldDaemon *)self setNearFieldController:v10];
    _exportedInterface = [(RPNearFieldDaemon *)self _exportedInterface];
    [connectionCopy setExportedInterface:_exportedInterface];

    [connectionCopy setExportedObject:v10];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100058044;
    v14[3] = &unk_1001AA970;
    v14[4] = self;
    [connectionCopy setInvalidationHandler:v14];
    _remoteObjectInterface = [(RPNearFieldDaemon *)self _remoteObjectInterface];
    [connectionCopy setRemoteObjectInterface:_remoteObjectInterface];

    [connectionCopy _setQueue:self->_dispatchQueue];
    [connectionCopy resume];
    if (dword_1001D39B8 <= 30 && (dword_1001D39B8 != -1 || _LogCategory_Initialize()))
    {
      sub_1001181D4(connectionCopy);
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