@interface CBStackDeviceMonitorBTStack
- (CBStackDeviceMonitorBTStack)init;
- (id)descriptionWithLevel:(int)level;
- (int)_updatePowerSources;
- (void)_invalidated;
- (void)_updateDeviceBLE:(id)e flags:(unint64_t)flags;
- (void)_updateDeviceClassic:(void *)classic flags:(unint64_t)flags;
- (void)_updateDevicesConnected;
- (void)_updateDevicesPaired;
- (void)activate;
- (void)invalidate;
- (void)localDeviceEvent:(int)event;
- (void)updateDevices;
@end

@implementation CBStackDeviceMonitorBTStack

- (void)updateDevices
{
  if (self->_addedMonitor)
  {
    [(NSMutableDictionary *)self->_deviceMap enumerateKeysAndObjectsUsingBlock:&stru_100ADF888];
    discoveryFlags = self->_discoveryFlags;
    if ((discoveryFlags & 0x800000) != 0)
    {
      [(CBStackDeviceMonitorBTStack *)self _updateDevicesPaired];
      discoveryFlags = self->_discoveryFlags;
    }

    if ((discoveryFlags & 0x200000) != 0)
    {
      [(CBStackDeviceMonitorBTStack *)self _updateDevicesConnected];
    }

    deviceMap = self->_deviceMap;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000E6DFC;
    v18[3] = &unk_100ADF8B0;
    v18[4] = self;
    [(NSMutableDictionary *)deviceMap enumerateKeysAndObjectsUsingBlock:v18];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    allKeys = [(NSMutableDictionary *)self->_deviceMap allKeys];
    v6 = [allKeys countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v6)
    {
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(allKeys);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = [(NSMutableDictionary *)self->_deviceMap objectForKeyedSubscript:v9, v13];
          if (([v10 discoveryFlags] & 0xA00000) == 0)
          {
            [(NSMutableDictionary *)self->_deviceMap setObject:0 forKeyedSubscript:v9];
            if (dword_100B507C8 <= 30 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
            {
              v13 = v10;
              LogPrintF_safe();
            }

            v11 = objc_retainBlock(self->_deviceLostHandler);
            v12 = v11;
            if (v11)
            {
              (*(v11 + 2))(v11, v10);
            }
          }
        }

        v6 = [allKeys countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v6);
    }
  }
}

- (void)_updateDevicesPaired
{
  __p = 0;
  v16 = 0;
  v17 = 0;
  if (qword_100B508A0 != -1)
  {
    sub_1007FFA20();
  }

  if (sub_10009E064(off_100B50898, &__p))
  {
    if (dword_100B507C8 > 90)
    {
      goto LABEL_12;
    }

    if (dword_100B507C8 != -1 || _LogCategory_Initialize())
    {
      v10 = CUPrintErrorCode();
      LogPrintF_safe();
    }
  }

  if (dword_100B507C8 <= 30 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
  {
    v10 = (v16 - __p) >> 3;
    LogPrintF_safe();
  }

LABEL_12:
  v3 = __p;
  v4 = v16;
  while (v3 != v4)
  {
    [(CBStackDeviceMonitorBTStack *)self _updateDeviceClassic:*v3++ flags:0x800000];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  if (qword_100B508C0 != -1)
  {
    sub_1007FFB18();
  }

  v5 = sub_10009DA04(off_100B508B8);
  v6 = 0;
  v7 = [v5 countByEnumeratingWithState:&v11 objects:v18 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      v6 += v7;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(CBStackDeviceMonitorBTStack *)self _updateDeviceBLE:*(*(&v11 + 1) + 8 * v9) flags:0x800000, v10];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v18 count:16];
    }

    while (v7);
  }

  if (dword_100B507C8 <= 30 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }
}

- (void)_updateDevicesConnected
{
  __p = 0;
  v16 = 0;
  v17 = 0;
  if (qword_100B508A0 != -1)
  {
    sub_1007FFA20();
  }

  if (sub_1000AD9D8(off_100B50898, &__p))
  {
    if (dword_100B507C8 > 90)
    {
      goto LABEL_12;
    }

    if (dword_100B507C8 != -1 || _LogCategory_Initialize())
    {
      v10 = CUPrintErrorCode();
      LogPrintF_safe();
    }
  }

  if (dword_100B507C8 <= 30 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
  {
    v10 = (v16 - __p) >> 3;
    LogPrintF_safe();
  }

LABEL_12:
  v3 = __p;
  v4 = v16;
  while (v3 != v4)
  {
    [(CBStackDeviceMonitorBTStack *)self _updateDeviceClassic:*v3++ flags:0x200000];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  if (qword_100B508B0 != -1)
  {
    sub_1007FFAF0();
  }

  v5 = sub_100029630(off_100B508A8);
  v6 = 0;
  v7 = [v5 countByEnumeratingWithState:&v11 objects:v18 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      v6 += v7;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(CBStackDeviceMonitorBTStack *)self _updateDeviceBLE:*(*(&v11 + 1) + 8 * v9) flags:0x200000, v10];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v18 count:16];
    }

    while (v7);
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    [(CBStackDeviceMonitorBTStack *)self _updatePowerSources];
  }

  if (dword_100B507C8 <= 30 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }
}

- (CBStackDeviceMonitorBTStack)init
{
  v8.receiver = self;
  v8.super_class = CBStackDeviceMonitorBTStack;
  v2 = [(CBStackDeviceMonitorBTStack *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_powerTimeRemainingToken = -1;
    v4 = [CBUtil getBluetoothDebugSettingString:@"BluetoothCustomerLogging" InKey:@"PrivateDataLogging"];
    privateDataLoggingEnabled = v3->_privateDataLoggingEnabled;
    v3->_privateDataLoggingEnabled = v4;

    v3->_profileChangedToken = -1;
    v6 = v3;
  }

  return v3;
}

- (id)descriptionWithLevel:(int)level
{
  levelCopy = level;
  v5 = [(NSMutableDictionary *)self->_deviceMap count];
  if (levelCopy < 0x15)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = sub_100042194;
    v24 = sub_10004255C;
    v25 = 0;
    v19 = 0;
    v11 = CUPrintFlags64();
    NSAppendPrintF_safe();
    objc_storeStrong(&v25, 0);

    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    deviceMap = self->_deviceMap;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000EF15C;
    v13[3] = &unk_100ADF7F8;
    v13[4] = &v20;
    v13[5] = &v15;
    v14 = levelCopy;
    [(NSMutableDictionary *)deviceMap enumerateKeysAndObjectsUsingBlock:v13, v11, v5];
    if (v5 > v16[3])
    {
      v8 = v21;
      obj = v21[5];
      NSAppendPrintF_safe();
      objc_storeStrong(v8 + 5, obj);
    }

    v6 = v21[5];
    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v10 = CUPrintFlags64();
    v6 = NSPrintF_safe();
  }

  return v6;
}

- (void)activate
{
  if (!self->_deviceFoundHandler)
  {
    sub_1007FF9E0();
    goto LABEL_21;
  }

  if (!self->_deviceLostHandler)
  {
LABEL_21:
    sub_1007FF9C8();
    goto LABEL_22;
  }

  dispatchQueue = self->_dispatchQueue;
  if (!dispatchQueue)
  {
LABEL_22:
    sub_1007FF9B0();
LABEL_23:
    v10 = sub_1007FF998();

    _Unwind_Resume(v10);
  }

  dispatch_assert_queue_V2(dispatchQueue);
  if (self->_invalidateCalled)
  {
    goto LABEL_23;
  }

  if (dword_100B507C8 <= 30 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
  {
    sub_1007FF97C();
  }

  v5 = sub_10000E92C();
  self->_logPrivateData = (*(*v5 + 160))(v5);
  if (!self->_addedMonitor)
  {
    os_unfair_lock_lock(&unk_100B55260);
    if (!qword_100B55268)
    {
      operator new();
    }

    sub_1000EF614(qword_100B55268, self);
    os_unfair_lock_unlock(&unk_100B55260);
    self->_addedMonitor = 1;
  }

  v6 = self->_powerTimeRemainingCoalescer;
  if (!v6)
  {
    v7 = objc_alloc_init(CUCoalescer);
    objc_storeStrong(&self->_powerTimeRemainingCoalescer, v7);
    [v7 setDispatchQueue:self->_dispatchQueue];
    [v7 setMinDelay:1.0];
    [v7 setMaxDelay:5.0];
    [v7 setLeeway:1.0];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000EF854;
    v13[3] = &unk_100ADF820;
    v13[4] = self;
    [v7 setActionHandler:v13];
    v6 = v7;
  }

  if (self->_powerTimeRemainingToken == -1)
  {
    v8 = self->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000EF8BC;
    handler[3] = &unk_100ADF848;
    handler[4] = self;
    notify_register_dispatch("com.apple.system.accpowersources.timeremaining", &self->_powerTimeRemainingToken, v8, handler);
  }

  if (self->_profileChangedToken == -1)
  {
    v9 = self->_dispatchQueue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000EF928;
    v11[3] = &unk_100ADF848;
    v11[4] = self;
    notify_register_dispatch("com.apple.MCX._managementStatusChangedForDomains", &self->_profileChangedToken, v9, v11);
  }

  [(CBStackDeviceMonitorBTStack *)self updateDevices];
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    if (dword_100B507C8 <= 30 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
    {
      sub_1007FFAD4();
    }

    powerTimeRemainingToken = self->_powerTimeRemainingToken;
    if (powerTimeRemainingToken != -1)
    {
      notify_cancel(powerTimeRemainingToken);
      self->_powerTimeRemainingToken = -1;
    }

    profileChangedToken = self->_profileChangedToken;
    if (profileChangedToken != -1)
    {
      notify_cancel(profileChangedToken);
      self->_profileChangedToken = -1;
    }

    [(CUCoalescer *)self->_powerTimeRemainingCoalescer invalidate];
    powerTimeRemainingCoalescer = self->_powerTimeRemainingCoalescer;
    self->_powerTimeRemainingCoalescer = 0;

    if (self->_addedMonitor)
    {
      os_unfair_lock_lock(&unk_100B55260);
      if (qword_100B55268)
      {
        sub_1000EFAFC(qword_100B55268, self);
      }

      os_unfair_lock_unlock(&unk_100B55260);
      self->_addedMonitor = 0;
    }

    [(CBStackDeviceMonitorBTStack *)self _invalidated];
  }
}

- (void)_invalidated
{
  if (!self->_invalidateDone)
  {
    deviceFoundHandler = self->_deviceFoundHandler;
    self->_deviceFoundHandler = 0;

    deviceLostHandler = self->_deviceLostHandler;
    self->_deviceLostHandler = 0;

    v6 = objc_retainBlock(self->_invalidationHandler);
    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    if (v6)
    {
      v6[2]();
    }

    self->_invalidateDone = 1;
    if (dword_100B507C8 <= 30 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }
}

- (void)_updateDeviceBLE:(id)e flags:(unint64_t)flags
{
  eCopy = e;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  if (qword_100B508D0 != -1)
  {
    sub_1007FFB40();
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000EFFAC;
  v13[3] = &unk_100ADF8D8;
  v13[4] = &v14;
  if (sub_1000C320C(off_100B508C8, eCopy, v13) && v15[3])
  {
    uUIDString = [eCopy UUIDString];
    v8 = [(NSMutableDictionary *)self->_deviceMap objectForKeyedSubscript:uUIDString];
    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v8 = objc_alloc_init(CBDevice);
      [v8 setIdentifier:uUIDString];
      [v8 setInternalFlags:4];
      deviceMap = self->_deviceMap;
      if (!deviceMap)
      {
        v11 = objc_alloc_init(NSMutableDictionary);
        v12 = self->_deviceMap;
        self->_deviceMap = v11;

        deviceMap = self->_deviceMap;
      }

      [(NSMutableDictionary *)deviceMap setObject:v8 forKeyedSubscript:uUIDString];
      v9 = 0x4000000;
    }

    [v8 setChangeFlags:{objc_msgSend(v8, "updateWithBLEDevice:btAddr:", eCopy, v15[3]) | v9 | objc_msgSend(v8, "changeFlags")}];
    [v8 setDiscoveryFlags:{objc_msgSend(v8, "discoveryFlags") | flags}];
  }

  _Block_object_dispose(&v14, 8);
}

- (void)_updateDeviceClassic:(void *)classic flags:(unint64_t)flags
{
  v7 = *(classic + 128);
  v8 = *(classic + 129);
  v9 = *(classic + 130);
  v10 = *(classic + 131);
  v11 = *(classic + 132);
  v12 = *(classic + 133);
  if (qword_100B508D0 != -1)
  {
    sub_1007FFA5C();
  }

  v21[0] = 0;
  v21[1] = 0;
  sub_1000498D4(off_100B508C8, (v7 << 40) | (v8 << 32) | (v9 << 24) | (v10 << 16) | (v11 << 8) | v12, 1u, 1u, 0, 0, v21);
  v13 = sub_10004DF60(v21);
  uUIDString = [v13 UUIDString];
  if (uUIDString)
  {
    v15 = [(NSMutableDictionary *)self->_deviceMap objectForKeyedSubscript:uUIDString];
    if (v15)
    {
      v16 = 0;
    }

    else
    {
      v15 = objc_alloc_init(CBDevice);
      [v15 setIdentifier:uUIDString];
      [v15 setInternalFlags:4];
      deviceMap = self->_deviceMap;
      if (!deviceMap)
      {
        v18 = objc_alloc_init(NSMutableDictionary);
        v20 = self->_deviceMap;
        p_deviceMap = &self->_deviceMap;
        *p_deviceMap = v18;

        deviceMap = *p_deviceMap;
      }

      [(NSMutableDictionary *)deviceMap setObject:v15 forKeyedSubscript:uUIDString];
      v16 = 0x4000000;
    }

    [v15 setChangeFlags:{objc_msgSend(v15, "updateWithClassicDevice:deviceUUID:", classic, v13) | v16 | objc_msgSend(v15, "changeFlags")}];
    [v15 setDiscoveryFlags:{objc_msgSend(v15, "discoveryFlags") | flags}];
  }

  else if (dword_100B507C8 <= 90 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }
}

- (int)_updatePowerSources
{
  v3 = IOPSCopyPowerSourcesByType();
  if (v3)
  {
    v4 = v3;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000F0578;
    v22[3] = &unk_100ADF8F8;
    v22[4] = v3;
    v5 = objc_retainBlock(v22);
    v20 = v5;
    v6 = IOPSCopyPowerSourcesList(v4);
    v7 = v6;
    if (v6)
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000F0580;
      v21[3] = &unk_100ADF8F8;
      v21[4] = v6;
      v18 = objc_retainBlock(v21);
      Count = CFArrayGetCount(v7);
      if (Count < 1)
      {
        v19 = 0;
      }

      else
      {
        v9 = 0;
        v19 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v7, v9);
          v11 = IOPSGetPowerSourceDescription(v4, ValueAtIndex);
          v12 = v11;
          if (v11)
          {
            v13 = [v11 objectForKeyedSubscript:@"Accessory Identifier"];
            if (v13)
            {
              v14 = [(NSMutableDictionary *)self->_deviceMap objectForKeyedSubscript:v13];
              v15 = v14;
              if (v14 && ([v14 connectedServices] & 0x400000) != 0)
              {
                [v15 setChangeFlags:{objc_msgSend(v15, "changeFlags") | objc_msgSend(v15, "updateWithPowerSourceDescription:", v12)}];
                ++v19;
              }

              v5 = v20;
            }
          }

          else if (dword_100B507C8 <= 90 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe();
          }

          ++v9;
        }

        while (Count != v9);
      }

      (v18[2])(v18);

      v16 = v19;
    }

    else
    {
      if (dword_100B507C8 <= 90 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }

      v16 = 0;
    }

    (v5[2])(v5);
  }

  else
  {
    sub_1007FFB68(&v23);
    return v23;
  }

  return v16;
}

- (void)localDeviceEvent:(int)event
{
  if (!self->_addedMonitor)
  {
    return;
  }

  if (event == 4)
  {
    if ((self->_discoveryFlags & 0x800000) == 0)
    {
      return;
    }

    if (dword_100B507C8 > 30 || dword_100B507C8 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (event != 5 || (self->_discoveryFlags & 0x200000) == 0)
    {
      return;
    }

    if (dword_100B507C8 > 30 || dword_100B507C8 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_16;
    }
  }

  LogPrintF_safe();
LABEL_16:

  [(CBStackDeviceMonitorBTStack *)self updateDevices];
}

@end