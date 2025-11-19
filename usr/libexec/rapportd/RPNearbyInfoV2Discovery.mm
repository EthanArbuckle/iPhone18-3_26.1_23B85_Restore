@interface RPNearbyInfoV2Discovery
- (RPNearbyInfoV2Discovery)init;
- (id)description;
- (void)_deviceFound:(id)a3;
- (void)_deviceLost:(id)a3;
- (void)activateWithCompletion:(id)a3;
- (void)invalidate;
@end

@implementation RPNearbyInfoV2Discovery

- (RPNearbyInfoV2Discovery)init
{
  v7.receiver = self;
  v7.super_class = RPNearbyInfoV2Discovery;
  v2 = [(RPNearbyInfoV2Discovery *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    devices = v2->_devices;
    v2->_devices = v3;

    *&v2->_discoveryType = 0x2000000000000;
    v5 = v2;
  }

  return v2;
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  if (!self->_discovery)
  {
    v5 = objc_alloc_init(off_1001D4328());
    discovery = self->_discovery;
    self->_discovery = v5;

    [(CBDiscovery *)self->_discovery setDispatchQueue:self->_dispatchQueue];
    [(CBDiscovery *)self->_discovery setLabel:@"CLink"];
    [(CBDiscovery *)self->_discovery setUseCase:self->_useCase];
    if (self->_discoveryType)
    {
      [(CBDiscovery *)self->_discovery addDiscoveryType:?];
    }

    [(CBDiscovery *)self->_discovery setBleRSSIThresholdHint:4294967216];
    if (dword_1001D42B8 <= 30 && (dword_1001D42B8 != -1 || _LogCategory_Initialize()))
    {
      sub_10011E154(&self->_useCase);
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10007B118;
    v11[3] = &unk_1001AB630;
    v11[4] = self;
    [(CBDiscovery *)self->_discovery setDeviceFoundHandler:v11];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10007B124;
    v10[3] = &unk_1001AB630;
    v10[4] = self;
    [(CBDiscovery *)self->_discovery setDeviceLostHandler:v10];
    v7 = self->_discovery;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10007B130;
    v8[3] = &unk_1001AC998;
    v9 = v4;
    [(CBDiscovery *)v7 activateWithCompletion:v8];
  }
}

- (void)invalidate
{
  [(CBDiscovery *)self->_discovery invalidate];
  discovery = self->_discovery;
  self->_discovery = 0;

  [(NSMutableArray *)self->_devices removeAllObjects];
  devices = self->_devices;
  self->_devices = 0;

  deviceFoundHandler = self->_deviceFoundHandler;
  self->_deviceFoundHandler = 0;

  deviceLostHandler = self->_deviceLostHandler;
  self->_deviceLostHandler = 0;

  if (dword_1001D42B8 <= 30 && (dword_1001D42B8 != -1 || _LogCategory_Initialize()))
  {
    sub_10011EB7C();
  }
}

- (void)_deviceFound:(id)a3
{
  v11 = a3;
  v4 = [v11 stableIdentifier];
  if (!v4)
  {
    v4 = [v11 identifier];
    if (!v4)
    {
      sub_10011EBD4();
      goto LABEL_16;
    }
  }

  v5 = v4;
  devices = self->_devices;
  if (!devices)
  {
    v7 = objc_alloc_init(NSMutableArray);
    v8 = self->_devices;
    self->_devices = v7;

    devices = self->_devices;
  }

  if (([(NSMutableArray *)devices containsObject:v5]& 1) != 0)
  {
    if (dword_1001D42B8 > 30 || dword_1001D42B8 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_13;
    }
  }

  else
  {
    [(NSMutableArray *)self->_devices addObject:v5];
    if (dword_1001D42B8 > 30 || dword_1001D42B8 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_13;
    }
  }

  sub_10011EB98();
LABEL_13:
  v9 = objc_retainBlock(self->_deviceFoundHandler);
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9, v11);
  }

LABEL_16:
}

- (id)description
{
  NSAppendPrintF();
  v7 = 0;
  discovery = self->_discovery;
  NSAppendPrintF();
  v3 = v7;

  [(NSMutableArray *)self->_devices count];
  NSAppendPrintF();
  v4 = v3;

  return v3;
}

- (void)_deviceLost:(id)a3
{
  v8 = a3;
  v4 = [v8 stableIdentifier];
  if (v4 || ([v8 identifier], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    if ([(NSMutableArray *)self->_devices containsObject:v4])
    {
      [(NSMutableArray *)self->_devices removeObject:v5];
      if (dword_1001D42B8 <= 30 && (dword_1001D42B8 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v6 = objc_retainBlock(self->_deviceLostHandler);
      v7 = v6;
      if (v6)
      {
        (*(v6 + 2))(v6, v8);
      }
    }
  }

  else
  {
    if (dword_1001D42B8 <= 90 && (dword_1001D42B8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v5 = 0;
  }
}

@end