@interface CBStackAccessoryMonitorBTStack
- (CBStackAccessoryMonitorBTStack)init;
- (id)getAudioAccessoryDeviceArray;
- (void)_accessoryContextMessageData:(id)a3 device:(id)a4;
- (void)_accessoryConversationDetectMessageData:(id)a3 device:(id)a4;
- (void)_accessoryPMEConfigData:(id)a3 device:(id)a4;
- (void)_accessoryRawGestureMessageData:(id)a3 device:(id)a4;
- (void)_accessorySleepDetectionMessageData:(id)a3 device:(id)a4;
- (void)_accessoryUsageSummaryMessageData:(id)a3 device:(id)a4;
- (void)_audioAccessoryEventWithType:(unsigned __int8)a3 data:(id)a4 device:(id)a5;
- (void)_invalidated;
- (void)_updateAudioAccessoryDeviceInfo:(void *)a3 flags:(unint64_t)a4;
- (void)_updateConnectedAudioAccessories;
- (void)_updatePairedAudioAccessories;
- (void)activate;
- (void)invalidate;
- (void)localDeviceEvent:(int)a3;
- (void)updateAccessoryInfo;
@end

@implementation CBStackAccessoryMonitorBTStack

- (CBStackAccessoryMonitorBTStack)init
{
  v6.receiver = self;
  v6.super_class = CBStackAccessoryMonitorBTStack;
  v2 = [(CBStackAccessoryMonitorBTStack *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (id)getAudioAccessoryDeviceArray
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100042264;
  v11 = sub_1000425C4;
  v12 = 0;
  v2 = self;
  objc_sync_enter(v2);
  accessoryDeviceInfoMap = v2->_accessoryDeviceInfoMap;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001624B4;
  v6[3] = &unk_100AE2DB0;
  v6[4] = &v7;
  [(NSMutableDictionary *)accessoryDeviceInfoMap enumerateKeysAndObjectsUsingBlock:v6];
  objc_sync_exit(v2);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)activate
{
  if (!self->_audioAccessoryEventHandler)
  {
    sub_10080F53C();
    goto LABEL_15;
  }

  if (!self->_audioAccessoryInfoChangedHandler)
  {
LABEL_15:
    sub_10080F524();
    goto LABEL_16;
  }

  dispatchQueue = self->_dispatchQueue;
  if (!dispatchQueue)
  {
LABEL_16:
    sub_10080F50C();
    goto LABEL_17;
  }

  dispatch_assert_queue_V2(dispatchQueue);
  if (self->_invalidateCalled)
  {
LABEL_17:
    v4 = sub_10080F4F4();
    sub_1001626D4(v4, v5);
    return;
  }

  if (dword_100B51310 <= 30 && (dword_100B51310 != -1 || _LogCategory_Initialize()))
  {
    sub_10080F4D8();
  }

  if (!self->_addedMonitor)
  {
    os_unfair_lock_lock(&unk_100B55370);
    if (!qword_100B55378)
    {
      operator new();
    }

    sub_1001626D4(qword_100B55378, self);
    os_unfair_lock_unlock(&unk_100B55370);
    self->_addedMonitor = 1;
  }
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    if (dword_100B51310 <= 30 && (dword_100B51310 != -1 || _LogCategory_Initialize()))
    {
      sub_10080F590();
    }

    if (self->_addedMonitor)
    {
      os_unfair_lock_lock(&unk_100B55370);
      if (qword_100B55378)
      {
        sub_100162908(qword_100B55378, self);
      }

      os_unfair_lock_unlock(&unk_100B55370);
      self->_addedMonitor = 0;
    }

    [(CBStackAccessoryMonitorBTStack *)self _invalidated];
  }
}

- (void)_invalidated
{
  if (!self->_invalidateDone)
  {
    audioAccessoryEventHandler = self->_audioAccessoryEventHandler;
    self->_audioAccessoryEventHandler = 0;

    audioAccessoryInfoChangedHandler = self->_audioAccessoryInfoChangedHandler;
    self->_audioAccessoryInfoChangedHandler = 0;

    v6 = objc_retainBlock(self->_invalidationHandler);
    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    if (v6)
    {
      v6[2]();
    }

    self->_invalidateDone = 1;
    if (dword_100B51310 <= 30 && (dword_100B51310 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }
}

- (void)localDeviceEvent:(int)a3
{
  if (!self->_addedMonitor)
  {
    return;
  }

  if (a3 != 4)
  {
    if (a3 != 5)
    {
      return;
    }

    if (dword_100B51310 > 30 || dword_100B51310 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  if (dword_100B51310 <= 30 && (dword_100B51310 != -1 || _LogCategory_Initialize()))
  {
LABEL_15:
    sub_10080F5AC();
  }

LABEL_12:

  [(CBStackAccessoryMonitorBTStack *)self updateAccessoryInfo];
}

- (void)_audioAccessoryEventWithType:(unsigned __int8)a3 data:(id)a4 device:(id)a5
{
  v6 = a3;
  v11 = a4;
  v8 = a5;
  v9 = objc_retainBlock(self->_audioAccessoryEventHandler);
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9, v6, v11, v8);
  }
}

- (void)_accessoryContextMessageData:(id)a3 device:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = objc_retainBlock(self->_audioAccessoryEventHandler);
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, 4, v9, v6);
  }
}

- (void)_accessoryConversationDetectMessageData:(id)a3 device:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = objc_retainBlock(self->_audioAccessoryEventHandler);
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, 2, v9, v6);
  }
}

- (void)_accessoryPMEConfigData:(id)a3 device:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = objc_retainBlock(self->_audioAccessoryEventHandler);
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, 5, v9, v6);
  }
}

- (void)_accessorySleepDetectionMessageData:(id)a3 device:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = objc_retainBlock(self->_audioAccessoryEventHandler);
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, 8, v9, v6);
  }
}

- (void)_accessoryRawGestureMessageData:(id)a3 device:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = objc_retainBlock(self->_audioAccessoryEventHandler);
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, 9, v9, v6);
  }
}

- (void)_accessoryUsageSummaryMessageData:(id)a3 device:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = objc_retainBlock(self->_audioAccessoryEventHandler);
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, 11, v9, v6);
  }
}

- (void)updateAccessoryInfo
{
  if (self->_addedMonitor)
  {
    v2 = self;
    objc_sync_enter(v2);
    [(NSMutableDictionary *)v2->_accessoryDeviceInfoMap enumerateKeysAndObjectsUsingBlock:&stru_100AE2DF0];
    objc_sync_exit(v2);

    [(CBStackAccessoryMonitorBTStack *)v2 _updatePairedAudioAccessories];
    [(CBStackAccessoryMonitorBTStack *)v2 _updateConnectedAudioAccessories];
    v3 = v2;
    objc_sync_enter(v3);
    accessoryDeviceInfoMap = v2->_accessoryDeviceInfoMap;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100163434;
    v17[3] = &unk_100AE2E18;
    v17[4] = v3;
    [(NSMutableDictionary *)accessoryDeviceInfoMap enumerateKeysAndObjectsUsingBlock:v17];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [(NSMutableDictionary *)v2->_accessoryDeviceInfoMap allKeys];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v6)
    {
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = [(NSMutableDictionary *)v2->_accessoryDeviceInfoMap objectForKeyedSubscript:v9, v12];
          if (([v10 discoveryFlags] & 0xA00000) == 0)
          {
            v11 = v3;
            objc_sync_enter(v11);
            [(NSMutableDictionary *)v2->_accessoryDeviceInfoMap setObject:0 forKeyedSubscript:v9];
            objc_sync_exit(v11);

            if (dword_100B51310 <= 30 && (dword_100B51310 != -1 || _LogCategory_Initialize()))
            {
              v12 = [v10 identifier];
              LogPrintF_safe();
            }
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v6);
    }

    objc_sync_exit(v3);
  }
}

- (void)_updatePairedAudioAccessories
{
  if (_os_feature_enabled_impl())
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    if (qword_100B508A0 != -1)
    {
      sub_10080F57C();
    }

    if (sub_10009E064(off_100B50898, &v6) && dword_100B51310 <= 90 && (dword_100B51310 != -1 || _LogCategory_Initialize()))
    {
      v5 = CUPrintErrorCode();
      LogPrintF_safe();
    }

    v3 = v6;
    v4 = v7;
    if (v6 != v7)
    {
      do
      {
        [(CBStackAccessoryMonitorBTStack *)self _updateAudioAccessoryDeviceInfo:*v3 flags:0x800000, v5];
        v3 += 8;
      }

      while (v3 != v4);
      v3 = v6;
    }

    if (v3)
    {
      v7 = v3;
      operator delete(v3);
    }
  }
}

- (void)_updateConnectedAudioAccessories
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (qword_100B508A0 != -1)
  {
    sub_10080F57C();
  }

  if (sub_1000AD9D8(off_100B50898, &v6) && dword_100B51310 <= 90 && (dword_100B51310 != -1 || _LogCategory_Initialize()))
  {
    v5 = CUPrintErrorCode();
    LogPrintF_safe();
  }

  v3 = v6;
  v4 = v7;
  if (v6 != v7)
  {
    do
    {
      [(CBStackAccessoryMonitorBTStack *)self _updateAudioAccessoryDeviceInfo:*v3++ flags:0x200000, v5];
    }

    while (v3 != v4);
    v3 = v6;
  }

  if (v3)
  {
    v7 = v3;
    operator delete(v3);
  }
}

- (void)_updateAudioAccessoryDeviceInfo:(void *)a3 flags:(unint64_t)a4
{
  memset(v16, 0, sizeof(v16));
  if ((sub_1000DFC04(a3, v16) & 1) != 0 && ((a4 & 0x200000) == 0 || sub_100548DB8(a3)))
  {
    v15 = 0;
    v7 = [[CBDevice alloc] initWithBTStackDevice:a3 error:&v15];
    v8 = v15;
    if (v7)
    {
      v9 = [v7 identifier];
      v10 = self;
      objc_sync_enter(v10);
      v11 = [(NSMutableDictionary *)v10->_accessoryDeviceInfoMap objectForKeyedSubscript:v9];
      if (!v11)
      {
        v11 = objc_alloc_init(AudioAccessoryDeviceInfo);
        [(AudioAccessoryDeviceInfo *)v11 setIdentifier:v9];
        accessoryDeviceInfoMap = v10->_accessoryDeviceInfoMap;
        if (!accessoryDeviceInfoMap)
        {
          v13 = objc_alloc_init(NSMutableDictionary);
          v14 = v10->_accessoryDeviceInfoMap;
          v10->_accessoryDeviceInfoMap = v13;

          accessoryDeviceInfoMap = v10->_accessoryDeviceInfoMap;
        }

        [(NSMutableDictionary *)accessoryDeviceInfoMap setObject:v11 forKeyedSubscript:v9];
      }

      [(AudioAccessoryDeviceInfo *)v11 setChangeFlags:[(AudioAccessoryDeviceInfo *)v11 changeFlags]| [(AudioAccessoryDeviceInfo *)v11 updateWithClassicDevice:a3]];
      [(AudioAccessoryDeviceInfo *)v11 setDiscoveryFlags:[(AudioAccessoryDeviceInfo *)v11 discoveryFlags]| a4];

      objc_sync_exit(v10);
    }

    else
    {
      if (dword_100B51310 > 90 || dword_100B51310 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      v9 = CUPrintNSError();
      LogPrintF_safe();
    }

LABEL_11:
  }

  v17 = v16;
  sub_1000161FC(&v17);
}

@end