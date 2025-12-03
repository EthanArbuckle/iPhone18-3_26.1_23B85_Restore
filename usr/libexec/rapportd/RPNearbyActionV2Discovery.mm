@interface RPNearbyActionV2Discovery
- (RPNearbyActionV2Discovery)init;
- (id)description;
- (void)_deviceFound:(id)found;
- (void)_deviceLost:(id)lost;
- (void)activateWithCompletion:(id)completion;
- (void)invalidate;
@end

@implementation RPNearbyActionV2Discovery

- (RPNearbyActionV2Discovery)init
{
  v7.receiver = self;
  v7.super_class = RPNearbyActionV2Discovery;
  v2 = [(RPNearbyActionV2Discovery *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    actionV2Devices = v2->_actionV2Devices;
    v2->_actionV2Devices = v3;

    *&v2->_useCase = 0x1E00020000;
    v2->_bleScanRateScreenOff = 20;
    v5 = v2;
  }

  return v2;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!self->_actionV2Discovery)
  {
    v5 = objc_alloc_init(off_1001D3B68());
    actionV2Discovery = self->_actionV2Discovery;
    self->_actionV2Discovery = v5;

    [(CBDiscovery *)self->_actionV2Discovery setDispatchQueue:self->_dispatchQueue];
    [(CBDiscovery *)self->_actionV2Discovery setDiscoveryFlags:self->_discoveryFlags];
    [(CBDiscovery *)self->_actionV2Discovery setLabel:@"CLink"];
    [(CBDiscovery *)self->_actionV2Discovery setUseCase:self->_useCase];
    [(CBDiscovery *)self->_actionV2Discovery setBleScanRate:self->_bleScanRate];
    [(CBDiscovery *)self->_actionV2Discovery setBleScanRateScreenOff:self->_bleScanRateScreenOff];
    [(CBDiscovery *)self->_actionV2Discovery setBleRSSIThresholdHint:4294967216];
    if (dword_1001D3AF8 <= 30 && (dword_1001D3AF8 != -1 || _LogCategory_Initialize()))
    {
      sub_100118630(&self->_useCase, &self->_bleScanRate, &self->_bleScanRateScreenOff);
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100059F74;
    v11[3] = &unk_1001AB630;
    v11[4] = self;
    [(CBDiscovery *)self->_actionV2Discovery setDeviceFoundHandler:v11];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100059F80;
    v10[3] = &unk_1001AB630;
    v10[4] = self;
    [(CBDiscovery *)self->_actionV2Discovery setDeviceLostHandler:v10];
    v7 = self->_actionV2Discovery;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100059F8C;
    v8[3] = &unk_1001AC998;
    v9 = completionCopy;
    [(CBDiscovery *)v7 activateWithCompletion:v8];
  }
}

- (void)invalidate
{
  [(CBDiscovery *)self->_actionV2Discovery invalidate];
  actionV2Discovery = self->_actionV2Discovery;
  self->_actionV2Discovery = 0;

  [(NSMutableArray *)self->_actionV2Devices removeAllObjects];
  actionV2Devices = self->_actionV2Devices;
  self->_actionV2Devices = 0;

  updateHandler = self->_updateHandler;
  self->_updateHandler = 0;

  if (dword_1001D3AF8 <= 30 && (dword_1001D3AF8 != -1 || _LogCategory_Initialize()))
  {
    sub_100118844();
  }
}

- (void)_deviceFound:(id)found
{
  foundCopy = found;
  stableIdentifier = [foundCopy stableIdentifier];
  if (stableIdentifier || ([foundCopy identifier], (stableIdentifier = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = stableIdentifier;
    actionV2Devices = self->_actionV2Devices;
    if (!actionV2Devices)
    {
      v8 = objc_alloc_init(NSMutableArray);
      v9 = self->_actionV2Devices;
      self->_actionV2Devices = v8;

      actionV2Devices = self->_actionV2Devices;
    }

    if (([(NSMutableArray *)actionV2Devices containsObject:v6]& 1) != 0)
    {
      if (dword_1001D3AF8 <= 30 && (dword_1001D3AF8 != -1 || _LogCategory_Initialize()))
      {
        sub_100118AB0();
      }
    }

    else
    {
      [(NSMutableArray *)self->_actionV2Devices addObject:v6];
      if (dword_1001D3AF8 <= 30 && (dword_1001D3AF8 != -1 || _LogCategory_Initialize()))
      {
        sub_100118A70();
      }

      v10 = sub_10005A438();
      v11 = sub_10005A438();
      v12 = os_signpost_id_make_with_pointer(v11, self);

      if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
      {
        v15 = 138412290;
        v16 = foundCopy;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_EVENT, v12, "BLE NearbyActionV2 device found", "BLE NearbyActionV2 device found: %@\n", &v15, 0xCu);
      }
    }

    v13 = objc_retainBlock(self->_updateHandler);
    v14 = v13;
    if (v13)
    {
      (*(v13 + 2))(v13);
    }
  }

  else
  {
    sub_100118AF0();
  }
}

- (id)description
{
  NSAppendPrintF();
  v7 = 0;
  actionV2Discovery = self->_actionV2Discovery;
  NSAppendPrintF();
  v3 = v7;

  [(NSMutableArray *)self->_actionV2Devices count];
  NSAppendPrintF();
  v4 = v3;

  return v3;
}

- (void)_deviceLost:(id)lost
{
  lostCopy = lost;
  stableIdentifier = [lostCopy stableIdentifier];
  if (stableIdentifier || ([lostCopy identifier], (stableIdentifier = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = stableIdentifier;
    if ([(NSMutableArray *)self->_actionV2Devices containsObject:stableIdentifier])
    {
      [(NSMutableArray *)self->_actionV2Devices removeObject:v5];
      if (dword_1001D3AF8 <= 30 && (dword_1001D3AF8 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v6 = objc_retainBlock(self->_updateHandler);
      v7 = v6;
      if (v6)
      {
        (*(v6 + 2))(v6);
      }
    }
  }

  else
  {
    if (dword_1001D3AF8 <= 90 && (dword_1001D3AF8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v5 = 0;
  }
}

@end