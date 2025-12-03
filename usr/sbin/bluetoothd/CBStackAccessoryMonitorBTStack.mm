@interface CBStackAccessoryMonitorBTStack
- (CBStackAccessoryMonitorBTStack)init;
- (id)getAudioAccessoryDeviceArray;
- (void)_accessoryContextMessageData:(id)data device:(id)device;
- (void)_accessoryConversationDetectMessageData:(id)data device:(id)device;
- (void)_accessoryPMEConfigData:(id)data device:(id)device;
- (void)_accessoryRawGestureMessageData:(id)data device:(id)device;
- (void)_accessorySleepDetectionMessageData:(id)data device:(id)device;
- (void)_accessoryUsageSummaryMessageData:(id)data device:(id)device;
- (void)_audioAccessoryEventWithType:(unsigned __int8)type data:(id)data device:(id)device;
- (void)_invalidated;
- (void)_updateAudioAccessoryDeviceInfo:(void *)info flags:(unint64_t)flags;
- (void)_updateConnectedAudioAccessories;
- (void)_updatePairedAudioAccessories;
- (void)activate;
- (void)invalidate;
- (void)localDeviceEvent:(int)event;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  accessoryDeviceInfoMap = selfCopy->_accessoryDeviceInfoMap;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001624B4;
  v6[3] = &unk_100AE2DB0;
  v6[4] = &v7;
  [(NSMutableDictionary *)accessoryDeviceInfoMap enumerateKeysAndObjectsUsingBlock:v6];
  objc_sync_exit(selfCopy);

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

- (void)localDeviceEvent:(int)event
{
  if (!self->_addedMonitor)
  {
    return;
  }

  if (event != 4)
  {
    if (event != 5)
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

- (void)_audioAccessoryEventWithType:(unsigned __int8)type data:(id)data device:(id)device
{
  typeCopy = type;
  dataCopy = data;
  deviceCopy = device;
  v9 = objc_retainBlock(self->_audioAccessoryEventHandler);
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9, typeCopy, dataCopy, deviceCopy);
  }
}

- (void)_accessoryContextMessageData:(id)data device:(id)device
{
  dataCopy = data;
  deviceCopy = device;
  v7 = objc_retainBlock(self->_audioAccessoryEventHandler);
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, 4, dataCopy, deviceCopy);
  }
}

- (void)_accessoryConversationDetectMessageData:(id)data device:(id)device
{
  dataCopy = data;
  deviceCopy = device;
  v7 = objc_retainBlock(self->_audioAccessoryEventHandler);
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, 2, dataCopy, deviceCopy);
  }
}

- (void)_accessoryPMEConfigData:(id)data device:(id)device
{
  dataCopy = data;
  deviceCopy = device;
  v7 = objc_retainBlock(self->_audioAccessoryEventHandler);
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, 5, dataCopy, deviceCopy);
  }
}

- (void)_accessorySleepDetectionMessageData:(id)data device:(id)device
{
  dataCopy = data;
  deviceCopy = device;
  v7 = objc_retainBlock(self->_audioAccessoryEventHandler);
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, 8, dataCopy, deviceCopy);
  }
}

- (void)_accessoryRawGestureMessageData:(id)data device:(id)device
{
  dataCopy = data;
  deviceCopy = device;
  v7 = objc_retainBlock(self->_audioAccessoryEventHandler);
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, 9, dataCopy, deviceCopy);
  }
}

- (void)_accessoryUsageSummaryMessageData:(id)data device:(id)device
{
  dataCopy = data;
  deviceCopy = device;
  v7 = objc_retainBlock(self->_audioAccessoryEventHandler);
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, 11, dataCopy, deviceCopy);
  }
}

- (void)updateAccessoryInfo
{
  if (self->_addedMonitor)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(NSMutableDictionary *)selfCopy->_accessoryDeviceInfoMap enumerateKeysAndObjectsUsingBlock:&stru_100AE2DF0];
    objc_sync_exit(selfCopy);

    [(CBStackAccessoryMonitorBTStack *)selfCopy _updatePairedAudioAccessories];
    [(CBStackAccessoryMonitorBTStack *)selfCopy _updateConnectedAudioAccessories];
    v3 = selfCopy;
    objc_sync_enter(v3);
    accessoryDeviceInfoMap = selfCopy->_accessoryDeviceInfoMap;
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
    allKeys = [(NSMutableDictionary *)selfCopy->_accessoryDeviceInfoMap allKeys];
    v6 = [allKeys countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v6)
    {
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(allKeys);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = [(NSMutableDictionary *)selfCopy->_accessoryDeviceInfoMap objectForKeyedSubscript:v9, identifier];
          if (([v10 discoveryFlags] & 0xA00000) == 0)
          {
            v11 = v3;
            objc_sync_enter(v11);
            [(NSMutableDictionary *)selfCopy->_accessoryDeviceInfoMap setObject:0 forKeyedSubscript:v9];
            objc_sync_exit(v11);

            if (dword_100B51310 <= 30 && (dword_100B51310 != -1 || _LogCategory_Initialize()))
            {
              identifier = [v10 identifier];
              LogPrintF_safe();
            }
          }
        }

        v6 = [allKeys countByEnumeratingWithState:&v13 objects:v18 count:16];
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

- (void)_updateAudioAccessoryDeviceInfo:(void *)info flags:(unint64_t)flags
{
  memset(v16, 0, sizeof(v16));
  if ((sub_1000DFC04(info, v16) & 1) != 0 && ((flags & 0x200000) == 0 || sub_100548DB8(info)))
  {
    v15 = 0;
    v7 = [[CBDevice alloc] initWithBTStackDevice:info error:&v15];
    v8 = v15;
    if (v7)
    {
      identifier = [v7 identifier];
      selfCopy = self;
      objc_sync_enter(selfCopy);
      v11 = [(NSMutableDictionary *)selfCopy->_accessoryDeviceInfoMap objectForKeyedSubscript:identifier];
      if (!v11)
      {
        v11 = objc_alloc_init(AudioAccessoryDeviceInfo);
        [(AudioAccessoryDeviceInfo *)v11 setIdentifier:identifier];
        accessoryDeviceInfoMap = selfCopy->_accessoryDeviceInfoMap;
        if (!accessoryDeviceInfoMap)
        {
          v13 = objc_alloc_init(NSMutableDictionary);
          v14 = selfCopy->_accessoryDeviceInfoMap;
          selfCopy->_accessoryDeviceInfoMap = v13;

          accessoryDeviceInfoMap = selfCopy->_accessoryDeviceInfoMap;
        }

        [(NSMutableDictionary *)accessoryDeviceInfoMap setObject:v11 forKeyedSubscript:identifier];
      }

      [(AudioAccessoryDeviceInfo *)v11 setChangeFlags:[(AudioAccessoryDeviceInfo *)v11 changeFlags]| [(AudioAccessoryDeviceInfo *)v11 updateWithClassicDevice:info]];
      [(AudioAccessoryDeviceInfo *)v11 setDiscoveryFlags:[(AudioAccessoryDeviceInfo *)v11 discoveryFlags]| flags];

      objc_sync_exit(selfCopy);
    }

    else
    {
      if (dword_100B51310 > 90 || dword_100B51310 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      identifier = CUPrintNSError();
      LogPrintF_safe();
    }

LABEL_11:
  }

  v17 = v16;
  sub_1000161FC(&v17);
}

@end