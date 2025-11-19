@interface CBWHBDiscoveryDaemon
- (id)descriptionWithLevel:(int)a3;
- (id)localDeviceForStableId:(id)a3;
- (id)optimalHostIdForStableId:(id)a3 result:(int *)a4;
- (void)_receivedWHBUpdateEvent:(id)a3 options:(id)a4;
- (void)_reportLostDevicesForController:(id)a3;
- (void)activate;
- (void)deviceFound:(id)a3 remoteController:(id)a4;
- (void)deviceLost:(id)a3 remoteController:(id)a4;
- (void)diagnosticControl:(id)a3;
- (void)invalidate;
- (void)remoteControllersChanged;
@end

@implementation CBWHBDiscoveryDaemon

- (id)descriptionWithLevel:(int)a3
{
  v3 = a3;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_100042204;
  v33 = sub_100042594;
  v34 = 0;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(NSMutableDictionary *)v4->_aggregateDeviceMap count];
  v6 = v30;
  v28 = v30[5];
  v7 = [objc_opt_class() description];
  v16 = [(NSMutableDictionary *)v4->_remoteControllerMap count];
  NSAppendPrintF_safe();
  objc_storeStrong(v6 + 5, v28);

  v8 = v30 + 5;
  if (v3 > 0x14u)
  {
    v17 = v30[5];
    NSAppendPrintF_safe();
    objc_storeStrong(v8, v17);
  }

  else
  {
    v27 = v30[5];
    NSAppendPrintF_safe();
    objc_storeStrong(v8, v27);
    remoteControllerMap = v4->_remoteControllerMap;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100117A98;
    v26[3] = &unk_100AE0CA0;
    v26[4] = &v29;
    [(NSMutableDictionary *)remoteControllerMap enumerateKeysAndObjectsUsingBlock:v26, v7, v16, v5];
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    aggregateDeviceMap = v4->_aggregateDeviceMap;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100117AE8;
    v20[3] = &unk_100AE0CC8;
    v20[4] = &v29;
    v20[5] = &v22;
    v21 = v3;
    [(NSMutableDictionary *)aggregateDeviceMap enumerateKeysAndObjectsUsingBlock:v20];
    if (v5 > v23[3])
    {
      v11 = v30;
      obj = v30[5];
      NSAppendPrintF_safe();
      objc_storeStrong(v11 + 5, obj);
    }

    v12 = v30;
    v18 = v30[5];
    v15 = CUDescriptionWithLevel();
    NSAppendPrintF_safe();
    objc_storeStrong(v12 + 5, v18);

    _Block_object_dispose(&v22, 8);
  }

  objc_sync_exit(v4);

  v13 = v30[5];
  _Block_object_dispose(&v29, 8);

  return v13;
}

- (void)activate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  self->_aggregateDiscoveryFlags = 0;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v3 = self->_discoveryArray;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v32;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v31 + 1) + 8 * i);
        v9 = [v8 discoveryFlags];
        self->_aggregateDiscoveryFlags |= [v8 extraDiscoveryFlags] | v9;
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v5);
  }

  if (dword_100B50DC0 <= 30 && (dword_100B50DC0 != -1 || _LogCategory_Initialize()))
  {
    sub_100806BE4();
  }

  v10 = self->_whbRouter;
  if (!v10)
  {
    v10 = objc_alloc_init(CBWHBRouter);
    whbRouter = self->_whbRouter;
    self->_whbRouter = v10;

    [(CBWHBRouter *)self->_whbRouter activate];
  }

  if (!self->_whbEventRegistered)
  {
    v12 = self->_remoteClient;
    if (!v12 && dword_100B50DC0 <= 90 && (dword_100B50DC0 != -1 || _LogCategory_Initialize()))
    {
      sub_100806C48();
    }

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100117F4C;
    v30[3] = &unk_100AE0CF0;
    v30[4] = v12;
    v30[5] = self;
    [(RPCompanionLinkClient *)v12 registerEventID:@"com.apple.bluetooth.whbU" options:0 handler:v30];
    self->_whbEventRegistered = 1;
  }

  v13 = self->_localDiscovery;
  if (!v13)
  {
    v14 = objc_alloc_init(CBDiscovery);
    localDiscovery = self->_localDiscovery;
    self->_localDiscovery = v14;

    [(CBDiscovery *)v14 setDispatchQueue:self->_dispatchQueue];
    [(CBDiscovery *)v14 setDiscoveryFlags:self->_aggregateDiscoveryFlags & 0xFFFFBFFFFFFFFFFFLL];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100117F6C;
    v27[3] = &unk_100ADF718;
    v16 = v14;
    v28 = v16;
    v29 = self;
    [(CBDiscovery *)v16 setDeviceFoundHandler:v27];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100117FFC;
    v24[3] = &unk_100ADF718;
    v17 = v16;
    v25 = v17;
    v26 = self;
    [(CBDiscovery *)v17 setDeviceLostHandler:v24];
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_10011801C;
    v21 = &unk_100ADF740;
    v13 = v17;
    v22 = v13;
    v23 = self;
    [(CBDiscovery *)v13 activateWithCompletion:&v18];
  }

  [(CBWHBDiscoveryDaemon *)self remoteControllersChanged:v18];
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100B50DC0 <= 30 && (dword_100B50DC0 != -1 || _LogCategory_Initialize()))
  {
    sub_100806CD8();
  }

  [(CBDiscovery *)self->_localDiscovery invalidate];
  localDiscovery = self->_localDiscovery;
  self->_localDiscovery = 0;

  [(RPCompanionLinkClient *)self->_remoteClient deregisterEventID:@"com.apple.bluetooth.whbU"];
  self->_whbEventRegistered = 0;
  [(NSMutableDictionary *)self->_remoteControllerMap enumerateKeysAndObjectsUsingBlock:&stru_100AE0D30];
  [(CBWHBRouter *)self->_whbRouter invalidate];
  whbRouter = self->_whbRouter;
  self->_whbRouter = 0;

  deviceFoundHandler = self->_deviceFoundHandler;
  self->_deviceFoundHandler = 0;

  deviceLostHandler = self->_deviceLostHandler;
  self->_deviceLostHandler = 0;

  remoteControllerMap = self->_remoteControllerMap;
  self->_remoteControllerMap = 0;
}

- (void)diagnosticControl:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v5 = a3;
  dispatch_assert_queue_V2(dispatchQueue);
  [(RPCompanionLinkClient *)self->_remoteClient sendEventID:@"com.apple.bluetooth.whbU" event:v5 destinationID:RPDestinationIdentifierSameHome options:0 completion:0];
}

- (void)_reportLostDevicesForController:(id)a3
{
  v4 = a3;
  [v4 controllerID];

  v5 = [v4 activatedDiscovery];
  v6 = [v5 discoveredDevices];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(CBWHBDiscoveryDaemon *)self deviceLost:*(*(&v12 + 1) + 8 * v11) remoteController:v4, v12];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)remoteControllersChanged
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = [(RPCompanionLinkClient *)self->_remoteClient activeDevices];
  v4 = 0;
  v5 = [v3 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v5)
  {
    v6 = *v30;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v29 + 1) + 8 * i);
        v9 = [v8 serviceTypes];
        v10 = [v9 containsObject:@"com.apple.bluetooth.remote"];

        if (v10)
        {
          v11 = [v8 idsDeviceIdentifier];
          if (v11)
          {
            if (!v4)
            {
              v4 = objc_alloc_init(NSMutableDictionary);
            }

            [v4 setObject:v8 forKeyedSubscript:v11];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v5);
  }

  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  v25 = 0u;
  v12 = [(NSMutableDictionary *)self->_remoteControllerMap allKeys];
  v13 = 0;
  v14 = [v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v14)
  {
    v15 = *v26;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v25 + 1) + 8 * j);
        v18 = [v4 objectForKeyedSubscript:v17];

        if (!v18)
        {
          v19 = [(NSMutableDictionary *)self->_remoteControllerMap objectForKeyedSubscript:v17];
          [(NSMutableDictionary *)self->_remoteControllerMap setObject:0 forKeyedSubscript:v17];
          [(CBWHBRouter *)self->_whbRouter hostConnectionInterruptedOn:v17];
          [(CBWHBDiscoveryDaemon *)self _reportLostDevicesForController:v19];
          [v19 invalidate];

          ++v13;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v14);
  }

  remoteControllerMap = self->_remoteControllerMap;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10011878C;
  v24[3] = &unk_100AE0D58;
  v24[4] = self;
  [(NSMutableDictionary *)remoteControllerMap enumerateKeysAndObjectsUsingBlock:v24];
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 0;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001187A0;
  v21[3] = &unk_100AE0D80;
  v21[4] = self;
  v21[5] = v22;
  [v4 enumerateKeysAndObjectsUsingBlock:v21];
  if (dword_100B50DC0 <= 30 && (dword_100B50DC0 != -1 || _LogCategory_Initialize()))
  {
    [(NSMutableDictionary *)self->_remoteControllerMap count];
    LogPrintF_safe();
  }

  _Block_object_dispose(v22, 8);
}

- (void)deviceFound:(id)a3 remoteController:(id)a4
{
  v22 = a3;
  v6 = a4;
  v7 = [v6 controllerID];
  v8 = v7;
  v9 = @"CBLocalHostID";
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  if (dword_100B50DC0 <= 30 && (dword_100B50DC0 != -1 || _LogCategory_Initialize()))
  {
    v20 = v22;
    v21 = v10;
    LogPrintF_safe();
  }

  v11 = [v22 stableIdentifier];
  if (v11)
  {
    [v22 setLastSeenTicks:mach_absolute_time()];
    [v22 setRemoteHostID:v10];
    v12 = self;
    objc_sync_enter(v12);
    v13 = [(NSMutableDictionary *)v12->_aggregateDeviceMap objectForKeyedSubscript:v11];
    if (!v13)
    {
      v13 = objc_alloc_init(CBWHBAggregateDevice);
      aggregateDeviceMap = v12->_aggregateDeviceMap;
      if (!aggregateDeviceMap)
      {
        v15 = objc_alloc_init(NSMutableDictionary);
        v16 = v12->_aggregateDeviceMap;
        v12->_aggregateDeviceMap = v15;

        aggregateDeviceMap = v12->_aggregateDeviceMap;
      }

      [(NSMutableDictionary *)aggregateDeviceMap setObject:v13 forKeyedSubscript:v11];
    }

    v17 = [(CBWHBAggregateDevice *)v13 deviceControllerMap];
    if (!v17)
    {
      v17 = objc_alloc_init(NSMutableDictionary);
      [(CBWHBAggregateDevice *)v13 setDeviceControllerMap:v17];
    }

    [(CBWHBRouter *)v12->_whbRouter deviceFound:v22];
    if ((*(&v12->_aggregateDiscoveryFlags + 1) & 0x2001000) != 0 && ([v22 discoveryFlags] & 0x1400000) != 0 && (objc_msgSend(v22, "changeFlags") & 0x1000000000000) != 0 || (objc_msgSend(v17, "objectForKeyedSubscript:", v10), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEquivalentToCBDevice:compareFlags:", v22, 1), v18, (v19 & 1) == 0))
    {
      [(CBWHBAggregateDevice *)v13 setLatestDevice:v22];
      [v17 setObject:v22 forKeyedSubscript:v10];
      sub_100806CF4(v17, v13, &v12->super.isa, v22);
    }

    else
    {

      objc_sync_exit(v12);
    }
  }
}

- (void)deviceLost:(id)a3 remoteController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 controllerID];
  v9 = v8;
  v10 = @"CBLocalHostID";
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  if (dword_100B50DC0 <= 30 && (dword_100B50DC0 != -1 || _LogCategory_Initialize()))
  {
    v20 = v6;
    v22 = v11;
    LogPrintF_safe();
  }

  v12 = [v6 stableIdentifier];
  if (v12)
  {
    v13 = self;
    objc_sync_enter(v13);
    v14 = [(NSMutableDictionary *)v13->_aggregateDeviceMap objectForKeyedSubscript:v12];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 deviceControllerMap];
      v17 = [v16 objectForKeyedSubscript:v11];
      [v16 setObject:0 forKeyedSubscript:v11];
      [v17 setRemoteHostID:v11];
      [(CBWHBRouter *)v13->_whbRouter deviceLost:v17];
      v18 = objc_retainBlock(v13->_deviceLostHandler);
      v19 = v18;
      if (v18)
      {
        (*(v18 + 2))(v18, v17);
      }

      if ([v16 count])
      {
        v26 = 0;
        v27 = &v26;
        v28 = 0x3032000000;
        v29 = sub_100042204;
        v30 = sub_100042594;
        v31 = 0;
        v25[0] = 0;
        v25[1] = v25;
        v25[2] = 0x2020000000;
        v25[3] = 0;
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_100118E9C;
        v24[3] = &unk_100AE0DA8;
        v24[4] = &v26;
        v24[5] = v25;
        [v16 enumerateKeysAndObjectsUsingBlock:v24];
        if (!v27[5] && dword_100B50DC0 <= 115 && (dword_100B50DC0 != -1 || _LogCategory_Initialize()))
        {
          v21 = v6;
          v23 = v11;
          LogPrintF_safe();
        }

        [v15 setLatestDevice:{v27[5], v21, v23}];
        _Block_object_dispose(v25, 8);
        _Block_object_dispose(&v26, 8);
      }

      else
      {
        [(NSMutableDictionary *)v13->_aggregateDeviceMap setObject:0 forKeyedSubscript:v12];
      }
    }

    objc_sync_exit(v13);
  }
}

- (id)localDeviceForStableId:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_aggregateDeviceMap objectForKeyedSubscript:v4];
  v7 = [v6 deviceControllerMap];
  v8 = [v7 objectForKeyedSubscript:@"CBLocalHostID"];

  objc_sync_exit(v5);

  return v8;
}

- (id)optimalHostIdForStableId:(id)a3 result:(int *)a4
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  whbRouter = self->_whbRouter;
  if (!a4 || whbRouter)
  {
    v8 = [(CBWHBRouter *)whbRouter optimalWHBHostForStableIdentifier:v6 result:a4];
  }

  else
  {
    v8 = 0;
    *a4 = 1702;
  }

  return v8;
}

- (void)_receivedWHBUpdateEvent:(id)a3 options:(id)a4
{
  v9 = a3;
  v6 = a4;
  CFStringGetTypeID();
  v7 = CFDictionaryGetTypedValue();

  if (v7)
  {
    v8 = self->_whbRouter;
    if (v8)
    {
      if (dword_100B50DC0 <= 30 && (dword_100B50DC0 != -1 || _LogCategory_Initialize()))
      {
        sub_100806D74();
      }

      [(CBWHBRouter *)v8 receivedUpdateEvent:v9 hostID:v7];
    }

    else
    {
      sub_100806DE0(dword_100B50DC0 < 31, dword_100B50DC0);
    }
  }

  else
  {
    sub_100806E34();
  }
}

@end