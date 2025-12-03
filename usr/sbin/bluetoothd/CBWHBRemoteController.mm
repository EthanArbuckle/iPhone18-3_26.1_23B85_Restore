@interface CBWHBRemoteController
- (id)description;
- (void)activate;
- (void)invalidate;
- (void)setDiscoveryFlags:(unint64_t)flags;
@end

@implementation CBWHBRemoteController

- (id)description
{
  v4 = sub_100119550(self->_remoteDevice);
  v2 = NSPrintF_safe();

  return v2;
}

- (void)setDiscoveryFlags:(unint64_t)flags
{
  if (self->_discoveryFlags != flags)
  {
    self->_discoveryFlags = flags;
    [(CBDiscovery *)self->_activatedDiscovery setDiscoveryFlags:flags & 0xFFFFBFFFFFFFFFFFLL];
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
    xpcListenerEndpoint = [(CBDaemonServer *)self->_daemonServer xpcListenerEndpoint];
    if (xpcListenerEndpoint)
    {
      [(CBDiscovery *)v3 setTestListenerEndpoint:xpcListenerEndpoint];
      v6 = objc_alloc_init(CBDevice);
      idsDeviceIdentifier = [(RPCompanionLinkDevice *)self->_remoteDevice idsDeviceIdentifier];
      [v6 setIdentifier:idsDeviceIdentifier];

      [(CBDiscovery *)v3 setRemoteDevice:v6];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100119888;
      v16[3] = &unk_100ADF718;
      v8 = v3;
      v17 = v8;
      selfCopy = self;
      [(CBDiscovery *)v8 setDeviceFoundHandler:v16];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1001198A8;
      v13[3] = &unk_100ADF718;
      v9 = v8;
      v14 = v9;
      selfCopy2 = self;
      [(CBDiscovery *)v9 setDeviceLostHandler:v13];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1001198C8;
      v10[3] = &unk_100ADF740;
      v11 = v9;
      selfCopy3 = self;
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