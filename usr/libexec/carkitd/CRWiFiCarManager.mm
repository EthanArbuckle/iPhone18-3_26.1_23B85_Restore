@interface CRWiFiCarManager
- (BOOL)isPowered;
- (BOOL)removeNetworkCredentialsForCarPlayUUID:(id)d;
- (BOOL)saveNetworkCredentials:(id)credentials forCarPlayUUID:(id)d;
- (CRWiFiCarManager)init;
- (__WiFiManagerClient)_lock_wifiManager;
- (__WiFiNetwork)firstNetworkPassingTest:(id)test;
- (__WiFiNetwork)networkForCarPlayUUID:(id)d;
- (__WiFiNetwork)networkForSSID:(id)d;
- (id)_getSecurityTypeForNetwork:(__WiFiNetwork *)network;
- (void)_lock_setWiFiDevice:(__WiFiDeviceClient *)device;
- (void)_powerStateDidChange;
- (void)_setSecurityType:(id)type forNetwork:(__WiFiNetwork *)network;
- (void)_updateWiFiDevice;
- (void)dealloc;
- (void)disassociateFromNetworkWithCarPlayUUID:(id)d;
- (void)invalidate;
- (void)removeNetworkCredentialsForCarPlayNetwork:(__WiFiNetwork *)network;
- (void)setInCar:(BOOL)car carPlayUUID:(id)d;
- (void)setPowered:(BOOL)powered;
- (void)updateExistingNetwork:(__WiFiNetwork *)network password:(id)password securityType:(id)type channel:(id)channel carPlayUUID:(id)d;
@end

@implementation CRWiFiCarManager

- (CRWiFiCarManager)init
{
  v8.receiver = self;
  v8.super_class = CRWiFiCarManager;
  v2 = [(CRWiFiCarManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSRecursiveLock);
    lock = v2->_lock;
    v2->_lock = v3;

    [(NSRecursiveLock *)v2->_lock lock];
    [(CRWiFiCarManager *)v2 _lock_wifiManager];
    [(NSRecursiveLock *)v2->_lock unlock];
    v5 = objc_alloc_init(CWFInterface);
    wifiInterface = v2->_wifiInterface;
    v2->_wifiInterface = v5;

    [(CWFInterface *)v2->_wifiInterface activate];
  }

  return v2;
}

- (void)dealloc
{
  [(CRWiFiCarManager *)self invalidate];
  v3.receiver = self;
  v3.super_class = CRWiFiCarManager;
  [(CRWiFiCarManager *)&v3 dealloc];
}

- (void)invalidate
{
  [(NSRecursiveLock *)self->_lock lock];
  if (self->_wifiManager)
  {
    WiFiManagerClientRegisterServerRestartCallback();
    wifiManager = self->_wifiManager;
    WiFiManagerClientRegisterDeviceAttachmentCallback();
    CFRelease(self->_wifiManager);
    self->_wifiManager = 0;
  }

  if (self->_device)
  {
    WiFiDeviceClientRegisterPowerCallback();
    CFRelease(self->_device);
    self->_device = 0;
  }

  [(NSRecursiveLock *)self->_lock unlock];
  [(CWFInterface *)self->_wifiInterface invalidate];
  wifiInterface = self->_wifiInterface;
  self->_wifiInterface = 0;
}

- (BOOL)isPowered
{
  [(NSRecursiveLock *)self->_lock lock];
  if (!self->_poweredHasBeenSet)
  {
    self->_poweredHasBeenSet = 1;
  }

  powered = self->_powered;
  [(NSRecursiveLock *)self->_lock unlock];
  return powered;
}

- (void)setPowered:(BOOL)powered
{
  [(NSRecursiveLock *)self->_lock lock];
  if (!self->_poweredHasBeenSet)
  {
    self->_poweredHasBeenSet = 1;
  }

  if ([(CRWiFiCarManager *)self _lock_wifiManager])
  {
    WiFiManagerClientSetPower();
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)disassociateFromNetworkWithCarPlayUUID:(id)d
{
  dCopy = d;
  currentKnownNetworkProfile = [(CWFInterface *)self->_wifiInterface currentKnownNetworkProfile];
  v6 = currentKnownNetworkProfile;
  if (currentKnownNetworkProfile && [currentKnownNetworkProfile isCarPlay])
  {
    carplayUUID = [v6 carplayUUID];
    if ([dCopy isEqualToString:carplayUUID])
    {
      v8 = CarGeneralLogging();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "disassociate wifi", v9, 2u);
      }

      [(CWFInterface *)self->_wifiInterface disassociateWithReason:2];
    }
  }
}

- (__WiFiNetwork)firstNetworkPassingTest:(id)test
{
  testCopy = test;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  [(NSRecursiveLock *)self->_lock lock];
  [(CRWiFiCarManager *)self _lock_wifiManager];
  v5 = WiFiManagerClientCopyNetworks();
  [(NSRecursiveLock *)self->_lock unlock];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100076B2C;
  v10[3] = &unk_1000E0208;
  v6 = testCopy;
  v11 = v6;
  v12 = &v13;
  [v5 enumerateObjectsUsingBlock:v10];
  v7 = v14[3];
  if (v7)
  {
    CFAutorelease(v7);
    v8 = v14[3];
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v13, 8);
  return v8;
}

- (__WiFiNetwork)networkForCarPlayUUID:(id)d
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100076C6C;
  v6[3] = &unk_1000E0230;
  selfCopy = self;
  dCopy = d;
  v3 = dCopy;
  v4 = [(CRWiFiCarManager *)selfCopy firstNetworkPassingTest:v6];

  return v4;
}

- (__WiFiNetwork)networkForSSID:(id)d
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100076D54;
  v7[3] = &unk_1000E0258;
  dCopy = d;
  v4 = dCopy;
  v5 = [(CRWiFiCarManager *)self firstNetworkPassingTest:v7];

  return v5;
}

- (void)updateExistingNetwork:(__WiFiNetwork *)network password:(id)password securityType:(id)type channel:(id)channel carPlayUUID:(id)d
{
  passwordCopy = password;
  typeCopy = type;
  channelCopy = channel;
  dCopy = d;
  v16 = WiFiNetworkCopyPassword();
  v30 = v16;
  if (passwordCopy && v16)
  {
    if ([v16 isEqual:passwordCopy])
    {
LABEL_4:
      v17 = 0;
      goto LABEL_9;
    }
  }

  else if (!passwordCopy)
  {
    goto LABEL_4;
  }

  v18 = CarGeneralLogging();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = dCopy;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "updating password for existing network %@", buf, 0xCu);
  }

  WiFiNetworkSetProperty();
  v17 = 1;
LABEL_9:
  v19 = [(CRWiFiCarManager *)self _getSecurityTypeForNetwork:network];
  v20 = v19;
  if (typeCopy && v19)
  {
    if ([v19 isEqual:typeCopy])
    {
      goto LABEL_17;
    }
  }

  else if (!typeCopy)
  {
    goto LABEL_17;
  }

  v21 = CarGeneralLogging();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v32 = v20;
    v33 = 2112;
    v34 = typeCopy;
    v35 = 2112;
    v36 = dCopy;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "updating securityType from %@ to %@ for existing network %@", buf, 0x20u);
  }

  [(CRWiFiCarManager *)self _setSecurityType:typeCopy forNetwork:network];
  v17 = 1;
LABEL_17:
  v22 = WiFiNetworkGetChannel();
  v23 = v22;
  if (channelCopy && v22)
  {
    if ([v22 isEqual:channelCopy])
    {
      goto LABEL_25;
    }
  }

  else if (!channelCopy)
  {
    goto LABEL_25;
  }

  v24 = CarGeneralLogging();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v32 = v23;
    v33 = 2112;
    v34 = channelCopy;
    v35 = 2112;
    v36 = dCopy;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "updating channel from %@ to %@ for existing network %@", buf, 0x20u);
  }

  WiFiNetworkSetProperty();
  v17 = 1;
LABEL_25:
  Property = WiFiNetworkGetProperty();
  if (!Property || !CFEqual(Property, kCFBooleanTrue))
  {
    v26 = CarGeneralLogging();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "updating network type to CarPlay for existing network", buf, 2u);
    }

    WiFiNetworkSetProperty();
    v17 = 1;
  }

  v27 = [(CRWiFiCarManager *)self _uuidForNetwork:network];
  v28 = v27;
  if (dCopy && v27)
  {
    if ([v27 isEqual:dCopy])
    {
      goto LABEL_33;
    }
  }

  else if (!dCopy)
  {
LABEL_33:
    if (!v17)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v29 = CarGeneralLogging();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v32 = dCopy;
    v33 = 2112;
    v34 = v28;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "updating CarPlay UUID to %@ for existing network %@", buf, 0x16u);
  }

  WiFiNetworkSetProperty();
LABEL_39:
  [(NSRecursiveLock *)self->_lock lock];
  [(CRWiFiCarManager *)self _lock_wifiManager];
  WiFiManagerClientUpdateNetwork();
  [(NSRecursiveLock *)self->_lock unlock];
LABEL_40:
}

- (BOOL)saveNetworkCredentials:(id)credentials forCarPlayUUID:(id)d
{
  credentialsCopy = credentials;
  dCopy = d;
  if (dCopy)
  {
    v8 = [credentialsCopy objectForKey:@"SSID_STR"];
    v9 = [credentialsCopy objectForKey:@"password"];
    v10 = [credentialsCopy objectForKey:@"CHANNEL"];
    v11 = [credentialsCopy objectForKey:@"securityType"];
    if (v8 && [v8 length])
    {
      if (v9 && [v9 length])
      {
        v56 = v11;
        v12 = &xpc_remote_connection_cancel_ptr;
        if (!v10)
        {
          v13 = CarGeneralLogging();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "invalid Wi-Fi channel, set channel to 1", buf, 2u);
          }

          v10 = [NSNumber numberWithInt:1];
        }

        v14 = [credentialsCopy objectForKey:@"CARPLAY_PPID"];
        v15 = +[CARAnalytics sharedInstance];
        [v15 setWifiChannel:v10];

        v16 = CarGeneralLogging();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v58 = v8;
          v59 = 2112;
          v60 = v10;
          v61 = 2112;
          v62 = v56;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "received network credentials SSID: %@, channel: %@, securityType: %@", buf, 0x20u);
        }

        v17 = [(CRWiFiCarManager *)self networkForCarPlayUUID:dCopy];
        if (v17)
        {
          v18 = v17;
          v19 = CarGeneralLogging();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "network already exists, checking if updates are required", buf, 2u);
          }

          v20 = WiFiNetworkGetSSID();
          v21 = v20;
          if (v20 && ([v20 isEqual:v8] & 1) != 0)
          {
            v11 = v56;
            [(CRWiFiCarManager *)self updateExistingNetwork:v18 password:v9 securityType:v56 channel:v10 carPlayUUID:dCopy];

LABEL_55:
            v29 = 1;
            goto LABEL_24;
          }

          v38 = CarGeneralLogging();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v58 = dCopy;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "updated SSID, removing network %@, will be re-added", buf, 0xCu);
          }

          if (!v21 || ![v21 length])
          {
            WiFiNetworkSetProperty();
          }

          [(CRWiFiCarManager *)self removeNetworkCredentialsForCarPlayNetwork:v18];

          v12 = &xpc_remote_connection_cancel_ptr;
        }

        else
        {
          v39 = [(CRWiFiCarManager *)self networkForSSID:v8];
          if (v39)
          {
            v40 = v39;
            v41 = [(CRWiFiCarManager *)self _uuidForNetwork:v39];

            if (!v41)
            {
              v54 = CarGeneralLogging();
              if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "network already exists as internet-only, updating", buf, 2u);
              }

              v11 = v56;
              [(CRWiFiCarManager *)self updateExistingNetwork:v40 password:v9 securityType:v56 channel:v10 carPlayUUID:dCopy];
              goto LABEL_55;
            }
          }
        }

        v42 = +[NSMutableDictionary dictionary];
        [v42 setObject:dCopy forKey:@"CARPLAY_UUID"];
        [v42 setObject:&__kCFBooleanTrue forKey:@"CARPLAY_NETWORK"];
        v43 = v12[494];
        v44 = v42;
        v45 = [v43 numberWithInt:2];
        [v44 setObject:v45 forKey:@"AP_MODE"];

        [v44 setObject:v8 forKey:@"SSID_STR"];
        if (v10)
        {
          [v44 setValue:v10 forKey:@"CHANNEL"];
        }

        else
        {
          v46 = CarGeneralLogging();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v58 = v8;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Channel information not present for CarPlay network %@", buf, 0xCu);
          }
        }

        v11 = v56;
        if (v14)
        {
          [v44 setValue:v14 forKey:@"CARPLAY_PPID"];
          v47 = CarGeneralLogging();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v58 = v14;
            v48 = "PPID information was included for network credentials: %@";
            v49 = v47;
            v50 = 12;
LABEL_44:
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, v48, buf, v50);
          }
        }

        else
        {
          v47 = CarGeneralLogging();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v48 = "PPID information not included for network credentials";
            v49 = v47;
            v50 = 2;
            goto LABEL_44;
          }
        }

        v55 = v44;
        v51 = WiFiNetworkCreate();
        v29 = v51 != 0;
        if (v51)
        {
          v52 = v51;
          WiFiNetworkSetPasswordSyncable();
          WiFiNetworkSetProperty();
          [(CRWiFiCarManager *)self _setSecurityType:v56 forNetwork:v52, v55];
          if (v10)
          {
            [NSNumber numberWithInt:0];
            WiFiNetworkSetProperty();
          }

          v53 = CarGeneralLogging();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v58 = dCopy;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "adding network %@", buf, 0xCu);
          }

          [(NSRecursiveLock *)self->_lock lock];
          [(CRWiFiCarManager *)self _lock_wifiManager];
          WiFiManagerClientAddNetwork();
          [(NSRecursiveLock *)self->_lock unlock];
          CFRelease(v52);
          v11 = v56;
        }

        goto LABEL_24;
      }

      v14 = CarGeneralLogging();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10008A09C(v14, v30, v31, v32, v33, v34, v35, v36);
      }
    }

    else
    {
      v14 = CarGeneralLogging();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10008A0D4(v14, v22, v23, v24, v25, v26, v27, v28);
      }
    }

    v29 = 0;
LABEL_24:

    goto LABEL_25;
  }

  v29 = 0;
LABEL_25:

  return v29;
}

- (id)_getSecurityTypeForNetwork:(__WiFiNetwork *)network
{
  if (!WiFiNetworkSupportsWPA3())
  {
    return &off_1000E8278;
  }

  if (WiFiNetworkSupportsWPA2())
  {
    return &off_1000E8248;
  }

  return &off_1000E8260;
}

- (void)_setSecurityType:(id)type forNetwork:(__WiFiNetwork *)network
{
  typeCopy = type;
  v5 = typeCopy;
  if (typeCopy && ([typeCopy isEqualToNumber:&off_1000E8260] || objc_msgSend(v5, "isEqualToNumber:", &off_1000E8248)))
  {
    WiFiNetworkSetSAE();
  }

  else
  {
    WiFiNetworkSetWPA();
  }
}

- (BOOL)removeNetworkCredentialsForCarPlayUUID:(id)d
{
  v4 = [(CRWiFiCarManager *)self networkForCarPlayUUID:d];
  if (v4)
  {
    [(CRWiFiCarManager *)self removeNetworkCredentialsForCarPlayNetwork:v4];
  }

  return v4 != 0;
}

- (void)removeNetworkCredentialsForCarPlayNetwork:(__WiFiNetwork *)network
{
  if (WiFiNetworkGetType() == 1)
  {
    v4 = CarGeneralLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "removing password for CarPlay-only network", v5, 2u);
    }

    WiFiNetworkRemovePassword();
  }

  [(NSRecursiveLock *)self->_lock lock];
  [(CRWiFiCarManager *)self _lock_wifiManager];
  WiFiManagerClientRemoveNetworkWithReason();
  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)setInCar:(BOOL)car carPlayUUID:(id)d
{
  dCopy = d;
  v6 = CarGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = dCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "setting WiFiManager to in-car %@", &v7, 0xCu);
  }

  [(NSRecursiveLock *)self->_lock lock];
  [(CRWiFiCarManager *)self _lock_wifiManager];
  WiFiManagerClientSetInCarState();
  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)_updateWiFiDevice
{
  [(NSRecursiveLock *)self->_lock lock];
  [(CRWiFiCarManager *)self _lock_wifiManager];
  v3 = WiFiManagerClientCopyDevices();
  v4 = v3;
  if (v3 && CFArrayGetCount(v3) >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v4, 0);
    if (ValueAtIndex)
    {
      v6 = ValueAtIndex;
      device = self->_device;
      if (!device || !CFEqual(ValueAtIndex, device))
      {
        [(CRWiFiCarManager *)self _lock_setWiFiDevice:v6];
      }
    }

LABEL_12:
    CFRelease(v4);
    goto LABEL_13;
  }

  if (!self->_device)
  {
    v8 = CarGeneralLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10008A10C(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  if (v4)
  {
    goto LABEL_12;
  }

LABEL_13:
  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)_powerStateDidChange
{
  [(NSRecursiveLock *)self->_lock lock];
  powered = self->_powered;
  if (self->_device)
  {
    v4 = WiFiDeviceClientGetPower() != 0;
  }

  else
  {
    v4 = 0;
  }

  self->_powered = v4;
  self->_poweredHasBeenSet = 1;
  [(NSRecursiveLock *)self->_lock unlock];
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109376;
    v6[1] = powered;
    v7 = 1024;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "WiFi _powerStateDidChange from %d to %d", v6, 0xEu);
  }
}

- (__WiFiManagerClient)_lock_wifiManager
{
  result = self->_wifiManager;
  if (!result)
  {
    if (MobileWiFiContainsRadio())
    {
      v4 = WiFiManagerClientCreate();
      self->_wifiManager = v4;
      if (v4)
      {
LABEL_4:
        CFRunLoopGetCurrent();
        WiFiManagerClientScheduleWithRunLoop();
        Current = CFRunLoopGetCurrent();
        CFRunLoopWakeUp(Current);
        wifiManager = self->_wifiManager;
        WiFiManagerClientRegisterServerRestartCallback();
        v7 = self->_wifiManager;
        WiFiManagerClientRegisterDeviceAttachmentCallback();
        [(CRWiFiCarManager *)self _updateWiFiDevice];
        return self->_wifiManager;
      }
    }

    else if (self->_wifiManager)
    {
      goto LABEL_4;
    }

    return 0;
  }

  return result;
}

- (void)_lock_setWiFiDevice:(__WiFiDeviceClient *)device
{
  if (device)
  {
    device = self->_device;
    if (device)
    {
      if (CFEqual(device, device))
      {
        return;
      }

      if (self->_device)
      {
        v6 = CarGeneralLogging();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v7 = self->_device;
          v8 = 138543618;
          v9 = v7;
          v10 = 2114;
          deviceCopy = device;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Unexpected WiFi device change from %{public}@ -> %{public}@", &v8, 0x16u);
        }

        if (self->_device)
        {
          WiFiDeviceClientRegisterPowerCallback();
          CFRelease(self->_device);
          self->_device = 0;
        }
      }
    }

    self->_device = CFRetain(device);
    WiFiDeviceClientRegisterPowerCallback();
    [(CRWiFiCarManager *)self _powerStateDidChange];
  }
}

@end