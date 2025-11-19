@interface CBExtension
- (BOOL)triggerIfPending;
- (id)descriptionWithLevel:(int)a3;
- (void)_deviceFound:(id)a3;
- (void)_deviceLost:(id)a3;
- (void)_updateRSSIFilter;
- (void)invalidate;
- (void)reset;
- (void)updateWithXPCDiscoveryInfo:(id)a3;
@end

@implementation CBExtension

- (BOOL)triggerIfPending
{
  if (self->_triggeredUI)
  {
    sub_1007FF594(self, &v7);
    v4 = v7;
  }

  else
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    triggeredDeviceMap = self->_triggeredDeviceMap;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000EE440;
    v6[3] = &unk_100ADF6F0;
    v6[4] = self;
    v6[5] = &v7;
    [(NSMutableDictionary *)triggeredDeviceMap enumerateKeysAndObjectsUsingBlock:v6];
    [(CBExtension *)self _updateRSSIFilter];
    v4 = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  return v4 & 1;
}

- (void)_updateRSSIFilter
{
  if (self->_allowRSSI && !self->_triggeredUI && ([(NSMutableDictionary *)self->_deviceMap count]|| [(NSMutableDictionary *)self->_triggeredDeviceMap count]))
  {
    if (([(CBDiscovery *)self->_discoveryClient discoveryFlags]& 0x200000000) != 0)
    {
      return;
    }

    if (dword_100B50698 <= 30 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
    {
      sub_1007FF6BC();
    }

    discoveryClient = self->_discoveryClient;
    v4 = [(CBDiscovery *)discoveryClient discoveryFlags]| 0x200000000;
  }

  else
  {
    if (([(CBDiscovery *)self->_discoveryClient discoveryFlags]& 0x200000000) == 0)
    {
      return;
    }

    if (dword_100B50698 <= 30 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
    {
      sub_1007FF6FC();
    }

    discoveryClient = self->_discoveryClient;
    v4 = [(CBDiscovery *)discoveryClient discoveryFlags]& 0xFFFFFFFDFFFFFFFFLL;
  }

  [(CBDiscovery *)discoveryClient setDiscoveryFlags:v4];
}

- (id)descriptionWithLevel:(int)a3
{
  v13 = [objc_opt_class() description];
  CUAppendF();
  v4 = 0;

  extensionID = self->_extensionID;
  if (extensionID)
  {
    v14 = extensionID;
    CUAppendF();
    v6 = v4;

    v4 = v6;
  }

  discoveryClient = self->_discoveryClient;
  if (discoveryClient)
  {
    v15 = discoveryClient;
    CUAppendF();
    v8 = v4;

    v4 = v8;
  }

  CUAppendF();
  v9 = v4;

  sceneIdentifier = self->_sceneIdentifier;
  if (sceneIdentifier)
  {
    v16 = sceneIdentifier;
    CUAppendF();
    v11 = v9;

    v9 = v11;
  }

  return v9;
}

- (void)invalidate
{
  discoveryClient = self->_discoveryClient;
  if (discoveryClient)
  {
    if (dword_100B50698 <= 30)
    {
      if (dword_100B50698 != -1 || (v4 = _LogCategory_Initialize(), discoveryClient = self->_discoveryClient, v4))
      {
        extensionID = self->_extensionID;
        v7 = discoveryClient;
        LogPrintF_safe();
        discoveryClient = self->_discoveryClient;
      }
    }

    [(CBDiscovery *)discoveryClient invalidate:extensionID];
    v5 = self->_discoveryClient;
    self->_discoveryClient = 0;
  }
}

- (void)reset
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(NSMutableDictionary *)self->_triggeredDeviceMap allKeys];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = [(NSMutableDictionary *)self->_triggeredDeviceMap objectForKeyedSubscript:v8];
        if ([v9 present])
        {
          if (dword_100B50698 <= 30 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
          {
            sub_1007FF4F4(&self->_extensionID, v9);
          }

          [v9 setUiTicks:0];
        }

        else
        {
          if (dword_100B50698 <= 30 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
          {
            sub_1007FF494(&self->_extensionID, v9);
          }

          [(NSMutableDictionary *)self->_triggeredDeviceMap setObject:0 forKeyedSubscript:v8];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v10 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v5 = v10;
    }

    while (v10);
  }

  if (self->_triggeredUI)
  {
    self->_triggeredUI = 0;
    if (dword_100B50698 <= 30 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
    {
      sub_1007FF554();
    }
  }

  [(CBExtension *)self _updateRSSIFilter];
}

- (void)updateWithXPCDiscoveryInfo:(id)a3
{
  v4 = a3;
  v5 = self->_discoveryClient;
  v6 = v5;
  if (!v5)
  {
    v7 = objc_alloc_init(CBDiscovery);
    discoveryClient = self->_discoveryClient;
    self->_discoveryClient = v7;

    [(CBDiscovery *)v7 setAppID:self->_extensionID];
    [(CBDiscovery *)v7 setDispatchQueue:self->_dispatchQueue];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000EE8DC;
    v23[3] = &unk_100ADF718;
    v9 = v7;
    v24 = v9;
    v25 = self;
    [(CBDiscovery *)v9 setDeviceFoundHandler:v23];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000EE8F8;
    v20[3] = &unk_100ADF718;
    v6 = v9;
    v21 = v6;
    v22 = self;
    [(CBDiscovery *)v6 setDeviceLostHandler:v20];
  }

  v10 = [(CBDiscovery *)v6 updateWithXPCSubscriberInfo:v4];
  if (([(CBDiscovery *)self->_discoveryClient bleRSSIThresholdHint]& 0x80000000) == 0)
  {
    [(CBDiscovery *)self->_discoveryClient setBleRSSIThresholdHint:4294967226];
  }

  if (([gCBDaemonServer prefCBExtensionRSSIOverride] & 0x80000000) != 0)
  {
    -[CBDiscovery setBleRSSIThresholdHint:](self->_discoveryClient, "setBleRSSIThresholdHint:", [gCBDaemonServer prefCBExtensionRSSIOverride]);
  }

  if (v5)
  {
    if (v10)
    {
      if (dword_100B50698 <= 30 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
      {
        extensionID = self->_extensionID;
        v13 = v6;
        LogPrintF_safe();
      }

      v11 = [(CBExtensionsDaemon *)self->_extensionsDaemon daemonServer:extensionID];
      [v11 scheduleDiscoveryUpdateImmediate:0];
    }

    else if (dword_100B50698 <= 20 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
    {
      sub_1007FF73C();
    }
  }

  else
  {
    if (dword_100B50698 <= 30 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
    {
      extensionID = self->_extensionID;
      v13 = v6;
      LogPrintF_safe();
    }

    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_1000EE914;
    v17 = &unk_100ADF740;
    v18 = v6;
    v19 = self;
    [(CBDiscovery *)v18 activateWithCompletion:&v14];
  }

  self->_allowRSSI = ([(CBDiscovery *)self->_discoveryClient bleRSSIThresholdHint:extensionID]& 0x80) != 0;
  [(CBExtension *)self _updateRSSIFilter];
}

- (void)_deviceFound:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  if (v5)
  {
    v6 = [(CBExtensionsDaemon *)self->_extensionsDaemon daemonServer];
    v7 = [v6 prefFilterNearbyActionAuthTag];

    if (v7)
    {
      v8 = [v4 nearbyActionAuthTag];
      v9 = v7;
      v10 = v9;
      if (v8 == v9)
      {
      }

      else
      {
        if (!v8)
        {

          goto LABEL_23;
        }

        v11 = [v8 isEqual:v9];

        if ((v11 & 1) == 0)
        {
LABEL_23:
          sub_1000E0A40();
          if (!(v19 ^ v20 | v18) || v24 == -1 && !_LogCategory_Initialize())
          {
            goto LABEL_48;
          }

          v13 = CUPrintNSDataHex();
          LogPrintF_safe();
LABEL_47:

LABEL_48:
          goto LABEL_49;
        }
      }
    }

    v12 = [(CBExtensionsDaemon *)self->_extensionsDaemon daemonServer];
    v13 = [v12 prefFilterNearbyActionExtraData];

    v14 = [v13 length];
    v15 = [v4 nearbyActionExtraData];
    v16 = v15;
    if (!v14 || [v15 length] >= v14 && !memcmp(objc_msgSend(v16, "bytes"), objc_msgSend(v13, "bytes"), v14))
    {
      v21 = [v4 rssi];
      v22 = [(CBDiscovery *)self->_discoveryClient bleRSSIThresholdHint];
      if (v22 < 0 && (!v21 || v21 < v22))
      {
        sub_1000E0A40();
        if (v19 ^ v20 | v18 && (v25 != -1 || _LogCategory_Initialize()))
        {
          extensionID = self->_extensionID;
          v47 = v4;
          LogPrintF_safe();
        }

        deviceMap = self->_deviceMap;
        if (!deviceMap)
        {
          v35 = objc_alloc_init(NSMutableDictionary);
          v36 = self->_deviceMap;
          self->_deviceMap = v35;

          deviceMap = self->_deviceMap;
        }

        [(NSMutableDictionary *)deviceMap setObject:v4 forKeyedSubscript:v5, extensionID, v47];
        v37 = [(NSMutableDictionary *)self->_triggeredDeviceMap objectForKeyedSubscript:v5];
        v26 = v37;
        if (v37)
        {
          [(CBTriggeredDevice *)v37 setPresent:0];
          sub_1000E0A40();
          if (v19 ^ v20 | v18)
          {
            if (v38 != -1 || _LogCategory_Initialize())
            {
              v39 = self->_extensionID;
              [(CBTriggeredDevice *)v26 device];
              v48 = v46 = v39;
              LogPrintF_safe();
            }
          }
        }

        [(CBExtension *)self _updateRSSIFilter:v46];
      }

      else
      {
        sub_1000E0A40();
        if (v19 ^ v20 | v18 && (v23 != -1 || _LogCategory_Initialize()))
        {
          extensionID = self->_extensionID;
          v47 = v4;
          LogPrintF_safe();
        }

        v26 = [(NSMutableDictionary *)self->_triggeredDeviceMap objectForKeyedSubscript:v5, extensionID, v47];
        if (!v26)
        {
          v26 = objc_alloc_init(CBTriggeredDevice);
          triggeredDeviceMap = self->_triggeredDeviceMap;
          if (!triggeredDeviceMap)
          {
            v28 = objc_alloc_init(NSMutableDictionary);
            v29 = self->_triggeredDeviceMap;
            self->_triggeredDeviceMap = v28;

            triggeredDeviceMap = self->_triggeredDeviceMap;
          }

          [(NSMutableDictionary *)triggeredDeviceMap setObject:v26 forKeyedSubscript:v5];
        }

        [(CBTriggeredDevice *)v26 setDevice:v4];
        [(CBTriggeredDevice *)v26 setPresent:1];
        v30 = mach_absolute_time();
        [(CBTriggeredDevice *)v26 setTriggerTicks:v30];
        if ([(CBTriggeredDevice *)v26 uiTicks])
        {
          sub_1000E0A40();
          if (v19 ^ v20 | v18 && (v40 != -1 || _LogCategory_Initialize()))
          {
            v41 = [(CBTriggeredDevice *)v26 device];
            [(CBTriggeredDevice *)v26 uiTicks];
            UpTicksToSecondsF();
            v50 = CUPrintDurationDouble();
            LogPrintF_safe();
          }
        }

        else if (self->_triggeredUI)
        {
          sub_1000E0A40();
          if (v19 ^ v20 | v18 && (v42 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe();
          }
        }

        else
        {
          v52 = @"unknown";
          if ([(CBExtensionsDaemon *)self->_extensionsDaemon remoteAlertAllowedAndReturnReason:&v52 extension:self])
          {
            extensionsDaemon = self->_extensionsDaemon;
            v51 = 0;
            v32 = [(CBExtensionsDaemon *)extensionsDaemon remoteAlertStartWithCBExtension:self device:v4 error:&v51];
            v33 = v51;
            if (v32)
            {
              [(CBTriggeredDevice *)v26 setUiTicks:v30];
              self->_triggeredUI = 1;
              [(CBExtension *)self _updateRSSIFilter];
            }

            else if (dword_100B50698 <= 90 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
            {
              v49 = CUPrintNSError();
              LogPrintF_safe();
            }
          }

          else
          {
            sub_1000E0A40();
            if (v19 ^ v20 | v18 && (v43 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe();
            }
          }
        }
      }
    }

    else
    {
      sub_1000E0A40();
      if (v19 ^ v20 | v18 && (v17 != -1 || _LogCategory_Initialize()))
      {
        v45 = CUPrintNSDataHex();
        LogPrintF_safe();
      }
    }

    goto LABEL_47;
  }

LABEL_49:
}

- (void)_deviceLost:(id)a3
{
  v4 = a3;
  if (dword_100B50698 <= 30 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
  {
    if (self->_triggeredUI)
    {
      v5 = "yes";
    }

    else
    {
      v5 = "no";
    }

    v13 = v4;
    v14 = v5;
    extensionID = self->_extensionID;
    LogPrintF_safe();
  }

  v6 = [v4 identifier];
  if (v6)
  {
    [(NSMutableDictionary *)self->_deviceMap setObject:0 forKeyedSubscript:v6];
    v7 = [(NSMutableDictionary *)self->_triggeredDeviceMap objectForKeyedSubscript:v6];
    v8 = v7;
    if (v7)
    {
      [v7 setPresent:0];
      [(CBExtension *)self _updateRSSIFilter];
      if (self->_triggeredUI)
      {
        v9 = +[NSDistributedNotificationCenter defaultCenter];
        v15[0] = @"deviceIdentifier";
        v15[1] = @"extensionID";
        v10 = self->_extensionID;
        if (!v10)
        {
          v10 = @"?";
        }

        v16[0] = v6;
        v16[1] = v10;
        v11 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
        [v9 postNotificationName:@"com.apple.bluetooth.extensionDeviceLost" object:0 userInfo:v11 deliverImmediately:1];
      }
    }
  }
}

@end