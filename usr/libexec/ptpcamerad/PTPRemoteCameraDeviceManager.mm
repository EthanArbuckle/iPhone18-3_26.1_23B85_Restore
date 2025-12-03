@interface PTPRemoteCameraDeviceManager
- (BOOL)startUSBPTPInterfaceNotifications;
- (PTPRemoteCameraDeviceManager)init;
- (id)uuidStringForDeviceProperties:(id)properties;
- (void)cameraReset:(id)reset;
- (void)dealloc;
- (void)immediateMatch;
@end

@implementation PTPRemoteCameraDeviceManager

- (PTPRemoteCameraDeviceManager)init
{
  v9.receiver = self;
  v9.super_class = PTPRemoteCameraDeviceManager;
  v2 = [(PTPRemoteCameraDeviceManager *)&v9 initManaging:@"PTPCameraDevice" systemDaemon:1];
  v3 = v2;
  if (v2)
  {
    p_notifyPort = &v2->_deviceMatchingInfo.notifyPort;
    v2->_deviceMatchingInfo.notifyPort = 0;
    *&v2->_deviceMatchingInfo.ptpNotifyIterator = 0;
    v2->_deviceMatchingInfo.notifyPort = IONotificationPortCreate(kIOMainPortDefault);
    Main = CFRunLoopGetMain();
    RunLoopSource = IONotificationPortGetRunLoopSource(*p_notifyPort);
    CFRunLoopAddSource(Main, RunLoopSource, kCFRunLoopDefaultMode);
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v3 selector:"cameraReset:" name:@"PTPRemoteCameraResetSession" object:0];
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PTPRemoteCameraDeviceManager;
  [(PTPRemoteCameraDeviceManager *)&v4 dealloc];
}

- (BOOL)startUSBPTPInterfaceNotifications
{
  p_deviceMatchingInfo = &self->_deviceMatchingInfo;
  if (self->_deviceMatchingInfo.ptpNotifyIterator)
  {
    return 1;
  }

  *notification = 0;
  v5 = IOServiceMatching("IOUSBInterface");
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  [(__CFDictionary *)v6 setObject:&off_10002F4E0 forKeyedSubscript:@"bInterfaceClass"];
  [(__CFDictionary *)v6 setObject:&off_10002F4F8 forKeyedSubscript:@"bInterfaceSubClass"];
  [(__CFDictionary *)v6 setObject:&off_10002F4F8 forKeyedSubscript:@"bInterfaceProtocol"];
  v7 = IOServiceAddMatchingNotification(p_deviceMatchingInfo->notifyPort, "IOServiceFirstMatch", v6, sub_10001BF84, self, &notification[1]);

  if (v7)
  {
    v3 = 0;
    v8 = 0;
  }

  else
  {
    v8 = IOServiceMatching("IOUSBInterface");
    [(__CFDictionary *)v8 setObject:&off_10002F4E0 forKeyedSubscript:@"bInterfaceClass"];
    [(__CFDictionary *)v8 setObject:&off_10002F4F8 forKeyedSubscript:@"bInterfaceSubClass"];
    [(__CFDictionary *)v8 setObject:&off_10002F4F8 forKeyedSubscript:@"bInterfaceProtocol"];
    if (IOServiceAddMatchingNotification(p_deviceMatchingInfo->notifyPort, "IOServiceTerminate", v8, sub_10001C160, self, notification))
    {
      v3 = 0;
    }

    else
    {
      while (1)
      {
        v9 = IOIteratorNext(notification[0]);
        if (!v9)
        {
          break;
        }

        IOObjectRelease(v9);
      }

      ptpDeathIterator = p_deviceMatchingInfo->ptpDeathIterator;
      if (ptpDeathIterator)
      {
        IOObjectRelease(ptpDeathIterator);
      }

      p_deviceMatchingInfo->ptpDeathIterator = notification[0];
      ptpNotifyIterator = p_deviceMatchingInfo->ptpNotifyIterator;
      if (ptpNotifyIterator)
      {
        IOObjectRelease(ptpNotifyIterator);
      }

      v12 = notification[1];
      p_deviceMatchingInfo->ptpNotifyIterator = notification[1];
      sub_10001BF84(self, v12);
      [(PTPRemoteCameraDeviceManager *)self immediateMatch];
      v3 = 1;
    }
  }

  return v3;
}

- (void)immediateMatch
{
  existing = 0;
  v3 = IOServiceMatching("IOUSBInterface");
  MatchingServices = IOServiceGetMatchingServices(kIOMainPortDefault, v3, &existing);
  if (MatchingServices)
  {
    v5 = MatchingServices;
    __ICOSLogCreate();
    v6 = @"usb";
    if ([@"usb" length] >= 0x15)
    {
      v7 = [@"usb" substringWithRange:{0, 18}];
      v6 = [v7 stringByAppendingString:@".."];
    }

    v8 = [NSString stringWithFormat:@"IOServiceGetMatchingServices returned: %x", v5];
    v9 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v6;
      v11 = v9;
      uTF8String = [(__CFString *)v6 UTF8String];
      *buf = 136446466;
      *&buf[4] = uTF8String;
      v33 = 2114;
      v34 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v13 = IOIteratorNext(existing);
    if (v13)
    {
      v14 = v13;
      do
      {
        *buf = 0;
        if (!IORegistryEntryCreateCFProperties(v14, buf, kCFAllocatorDefault, 0))
        {
          v15 = *buf;
          v16 = [*buf objectForKey:@"bInterfaceClass"];
          unsignedCharValue = [v16 unsignedCharValue];

          v18 = [v15 objectForKey:@"bInterfaceSubClass"];
          unsignedCharValue2 = [v18 unsignedCharValue];

          v20 = [v15 objectForKey:@"bInterfaceProtocol"];
          unsignedCharValue3 = [v20 unsignedCharValue];

          if (unsignedCharValue == 6 && unsignedCharValue2 == 1 && unsignedCharValue3 == 1)
          {
            v22 = [v15 objectForKey:@"locationID"];
            parent = 0;
            v23 = +[NSUUID UUID];
            uUIDString = [v23 UUIDString];

            if (!IORegistryEntryGetParentEntry(v14, "IOService", &parent))
            {
              if (parent)
              {
                properties = 0;
                if (!IORegistryEntryCreateCFProperties(parent, &properties, kCFAllocatorDefault, 0))
                {
                  v25 = properties;
                  v26 = [(PTPRemoteCameraDeviceManager *)self uuidStringForDeviceProperties:properties];

                  uUIDString = v26;
                }
              }
            }

            v27 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lu", [v22 unsignedIntegerValue]);
            v28 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"LOC:%lu", [v22 unsignedIntegerValue]);
            [(PTPRemoteCameraDeviceManager *)self notifyClientDeviceAdded:v27 uuidString:uUIDString deviceName:v28];
          }
        }

        IOObjectRelease(v14);
        v14 = IOIteratorNext(existing);
      }

      while (v14);
    }

    IOObjectRelease(existing);
  }
}

- (void)cameraReset:(id)reset
{
  userInfo = [reset userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"locationID"];
  v6 = v5;
  if (v5)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001C854;
    block[3] = &unk_10002C900;
    v10 = v5;
    selfCopy = self;
    dispatch_async(&_dispatch_main_q, block);
    v7 = dispatch_time(0, 2000000000);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10001C9EC;
    v8[3] = &unk_10002C950;
    v8[4] = self;
    dispatch_after(v7, &_dispatch_main_q, v8);
  }
}

- (id)uuidStringForDeviceProperties:(id)properties
{
  propertiesCopy = properties;
  v4 = [propertiesCopy objectForKey:@"USB Serial Number"];
  v5 = [propertiesCopy objectForKeyedSubscript:@"idVendor"];
  unsignedShortValue = [v5 unsignedShortValue];

  v7 = [propertiesCopy objectForKeyedSubscript:@"idProduct"];
  unsignedShortValue2 = [v7 unsignedShortValue];

  if ([v4 length] == 24 && unsignedShortValue == 1452)
  {
    v9 = [v4 substringWithRange:{0, 8}];
    v10 = [v4 substringFromIndex:9];
    v11 = [NSString stringWithFormat:@"%@-%@", v9, v10];

    v4 = v11;
  }

  if (!v4)
  {
    v32 = [propertiesCopy objectForKeyedSubscript:@"locationID"];
    unsignedIntValue = [v32 unsignedIntValue];

    v34 = CFUUIDCreateWithBytes(kCFAllocatorDefault, HIBYTE(unsignedIntValue), BYTE2(unsignedIntValue), BYTE1(unsignedIntValue), unsignedIntValue, 0, 0, 0, 0, 0, 0, 0, 0, BYTE1(unsignedShortValue), unsignedShortValue, BYTE1(unsignedShortValue2), unsignedShortValue2);
    if (v34)
    {
      v35 = v34;
      uUIDString = CFUUIDCreateString(kCFAllocatorDefault, v34);
      CFRelease(v35);
    }

    else
    {
      uUIDString = 0;
    }

    __ICOSLogCreate();
    v36 = @"UUID Gen";
    if ([@"UUID Gen" length] >= 0x15)
    {
      v37 = [@"UUID Gen" substringWithRange:{0, 18}];
      v36 = [v37 stringByAppendingString:@".."];
    }

    v38 = [NSString stringWithFormat:@"Device Serial Missing: %d/%d, Setting: %@", unsignedShortValue, unsignedShortValue2, uUIDString];
    v39 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      sub_10001D360(v36, v39);
    }

LABEL_22:
    if (uUIDString)
    {
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  __src[0] = 0;
  __src[1] = 0;
  v46 = 0;
  uUIDString = 0;
  if (![v4 getBytes:__src maxLength:16 usedLength:&v46 encoding:objc_msgSend(v4 options:"smallestEncoding") range:1 remainingRange:{0, objc_msgSend(v4, "length"), 0}])
  {
    goto LABEL_22;
  }

  byte15 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  byte7 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  *byte6 = 0;
  v48 = 0;
  if (v46 >= 0x10)
  {
    v29 = 0;
  }

  else
  {
    v29 = 16 - v46;
  }

  if (v29 <= 15)
  {
    memcpy(&byte6[v29], __src, (15 - v29) + 1);
    v28 = byte6[0];
    v27 = byte6[1];
    v26 = byte6[2];
    v25 = byte6[3];
    v24 = byte6[4];
    v23 = byte6[5];
    v22 = byte6[6];
    byte7 = byte6[7];
    v20 = v48;
    v19 = BYTE1(v48);
    v18 = BYTE2(v48);
    v17 = BYTE3(v48);
    v16 = BYTE4(v48);
    v15 = BYTE5(v48);
    v14 = BYTE6(v48);
    byte15 = HIBYTE(v48);
  }

  v30 = CFUUIDCreateWithBytes(kCFAllocatorDefault, v28, v27, v26, v25, v24, v23, v22, byte7, v20, v19, v18, v17, v16, v15, v14, byte15);
  if (!v30 || (v31 = v30, uUIDString = CFUUIDCreateString(kCFAllocatorDefault, v30), CFRelease(v31), !uUIDString))
  {
LABEL_23:
    v40 = +[NSUUID UUID];
    uUIDString = [v40 UUIDString];

    __ICOSLogCreate();
    v41 = @"UUID Gen";
    if ([@"UUID Gen" length] >= 0x15)
    {
      v42 = [@"UUID Gen" substringWithRange:{0, 18}];
      v41 = [v42 stringByAppendingString:@".."];
    }

    v43 = [NSString stringWithFormat:@"UUID Generation failed: %@/%d/%d, Setting: %@", v4, unsignedShortValue, unsignedShortValue2, uUIDString];
    v44 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      sub_10001D360(v41, v44);
    }
  }

LABEL_28:

  return uUIDString;
}

@end