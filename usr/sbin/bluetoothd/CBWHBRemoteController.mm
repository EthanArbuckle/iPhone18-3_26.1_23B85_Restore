@interface CBWHBRemoteController
- (id)description;
- (void)activate;
- (void)invalidate;
- (void)setDiscoveryFlags:(unint64_t)a3;
@end

@implementation CBWHBRemoteController

- (id)description
{
  v4 = sub_100119550(self->_remoteDevice);
  v2 = NSPrintF_safe();

  return v2;
}

- (void)setDiscoveryFlags:(unint64_t)a3
{
  if (self->_discoveryFlags != a3)
  {
    self->_discoveryFlags = a3;
    [(CBDiscovery *)self->_activatedDiscovery setDiscoveryFlags:a3 & 0xFFFFBFFFFFFFFFFFLL];
  }
}

- (void)activate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100B50DC0 <= 30 && (dword_100B50DC0 != -1 || _LogCategory_Initialize()))
  {
    sub_100806E94(self);
  }

  v3 = self->_activatedDiscovery;
  if (!v3)
  {
    v3 = objc_alloc_init(CBDiscovery);
    activatedDiscovery = self->_activatedDiscovery;
    self->_activatedDiscovery = v3;

    [(CBDiscovery *)v3 setDiscoveryFlags:self->_discoveryFlags & 0xFFFFBFFFFFFFFFFFLL];
    [(CBDiscovery *)v3 setDispatchQueue:self->_dispatchQueue];
    v5 = [(CBDaemonServer *)self->_daemonServer xpcListenerEndpoint];
    if (v5)
    {
      [(CBDiscovery *)v3 setTestListenerEndpoint:v5];
      v6 = objc_alloc_init(CBDevice);
      v7 = [(RPCompanionLinkDevice *)self->_remoteDevice idsDeviceIdentifier];
      [v6 setIdentifier:v7];

      [(CBDiscovery *)v3 setRemoteDevice:v6];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100119888;
      v16[3] = &unk_100ADF718;
      v8 = v3;
      v17 = v8;
      v18 = self;
      [(CBDiscovery *)v8 setDeviceFoundHandler:v16];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1001198A8;
      v13[3] = &unk_100ADF718;
      v9 = v8;
      v14 = v9;
      v15 = self;
      [(CBDiscovery *)v9 setDeviceLostHandler:v13];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1001198C8;
      v10[3] = &unk_100ADF740;
      v11 = v9;
      v12 = self;
      [(CBDiscovery *)v11 activateWithCompletion:v10];
    }

    else
    {
      sub_100806EF4();
    }
  }
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100B50DC0 <= 30 && (dword_100B50DC0 != -1 || _LogCategory_Initialize()))
  {
    sub_100807008(self);
  }

  [(CBDiscovery *)self->_activatedDiscovery invalidate];
  activatedDiscovery = self->_activatedDiscovery;
  self->_activatedDiscovery = 0;

  self->_invalidated = 1;
}

@end