@interface PTPRemoteCameraDeviceManager
- (BOOL)startUSBPTPInterfaceNotifications;
- (PTPRemoteCameraDeviceManager)init;
- (id)uuidStringForDeviceProperties:(id)a3;
- (void)cameraReset:(id)a3;
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
      v12 = [(__CFString *)v6 UTF8String];
      *buf = 136446466;
      *&buf[4] = v12;
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
          v17 = [v16 unsignedCharValue];

          v18 = [v15 objectForKey:@"bInterfaceSubClass"];
          v19 = [v18 unsignedCharValue];

          v20 = [v15 objectForKey:@"bInterfaceProtocol"];
          v21 = [v20 unsignedCharValue];

          if (v17 == 6 && v19 == 1 && v21 == 1)
          {
            v22 = [v15 objectForKey:@"locationID"];
            parent = 0;
            v23 = +[NSUUID UUID];
            v24 = [v23 UUIDString];

            if (!IORegistryEntryGetParentEntry(v14, "IOService", &parent))
            {
              if (parent)
              {
                properties = 0;
                if (!IORegistryEntryCreateCFProperties(parent, &properties, kCFAllocatorDefault, 0))
                {
                  v25 = properties;
                  v26 = [(PTPRemoteCameraDeviceManager *)self uuidStringForDeviceProperties:properties];

                  v24 = v26;
                }
              }
            }

            v27 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lu", [v22 unsignedIntegerValue]);
            v28 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"LOC:%lu", [v22 unsignedIntegerValue]);
            [(PTPRemoteCameraDeviceManager *)self notifyClientDeviceAdded:v27 uuidString:v24 deviceName:v28];
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

- (void)cameraReset:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"locationID"];
  v6 = v5;
  if (v5)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001C854;
    block[3] = &unk_10002C900;
    v10 = v5;
    v11 = self;
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

- (id)uuidStringForDeviceProperties:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"USB Serial Number"];
  v5 = [v3 objectForKeyedSubscript:@"idVendor"];
  v6 = [v5 unsignedShortValue];

  v7 = [v3 objectForKeyedSubscript:@"idProduct"];
  v8 = [v7 unsignedShortValue];

  if ([v4 length] == 24 && v6 == 1452)
  {
    v9 = [v4 substringWithRange:{0, 8}];
    v10 = [v4 substringFromIndex:9];
    v11 = [NSString stringWithFormat:@"%@-%@", v9, v10];

    v4 = v11;
  }

  if (!v4)
  {
    v32 = [v3 objectForKeyedSubscript:@"locationID"];
    v33 = [v32 unsignedIntValue];

    v34 = CFUUIDCreateWithBytes(kCFAllocatorDefault, HIBYTE(v33), BYTE2(v33), BYTE1(v33), v33, 0, 0, 0, 0, 0, 0, 0, 0, BYTE1(v6), v6, BYTE1(v8), v8);
    if (v34)
    {
      v35 = v34;
      v12 = CFUUIDCreateString(kCFAllocatorDefault, v34);
      CFRelease(v35);
    }

    else
    {
      v12 = 0;
    }

    __ICOSLogCreate();
    v36 = @"UUID Gen";
    if ([@"UUID Gen" length] >= 0x15)
    {
      v37 = [@"UUID Gen" substringWithRange:{0, 18}];
      v36 = [v37 stringByAppendingString:@".."];
    }

    v38 = [NSString stringWithFormat:@"Device Serial Missing: %d/%d, Setting: %@", v6, v8, v12];
    v39 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      sub_10001D360(v36, v39);
    }

LABEL_22:
    if (v12)
    {
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  __src[0] = 0;
  __src[1] = 0;
  v46 = 0;
  v12 = 0;
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
  if (!v30 || (v31 = v30, v12 = CFUUIDCreateString(kCFAllocatorDefault, v30), CFRelease(v31), !v12))
  {
LABEL_23:
    v40 = +[NSUUID UUID];
    v12 = [v40 UUIDString];

    __ICOSLogCreate();
    v41 = @"UUID Gen";
    if ([@"UUID Gen" length] >= 0x15)
    {
      v42 = [@"UUID Gen" substringWithRange:{0, 18}];
      v41 = [v42 stringByAppendingString:@".."];
    }

    v43 = [NSString stringWithFormat:@"UUID Generation failed: %@/%d/%d, Setting: %@", v4, v6, v8, v12];
    v44 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      sub_10001D360(v41, v44);
    }
  }

LABEL_28:

  return v12;
}

@end