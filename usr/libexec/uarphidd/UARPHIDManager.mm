@interface UARPHIDManager
- (BOOL)ensureDatabaseExists;
- (BOOL)loadMappingDatabase;
- (UARPHIDManager)initWithTempFolder:(id)folder transportReleasePolicy:(int64_t)policy;
- (id)checkDatabaseForKnownVendorID:(id)d productID:(id)iD serialNumber:(id)number;
- (id)knownDevices;
- (void)clearDatabase;
- (void)flushDatabase;
- (void)handleIOKitMatching:(id)matching;
- (void)handleServiceMatching:(unsigned int)matching;
- (void)hidDeviceDisconnect:(id)disconnect;
- (void)startIOKitMatching;
- (void)startMonitoringForDevices:(id)devices;
- (void)stopMonitoringForDevices;
@end

@implementation UARPHIDManager

- (UARPHIDManager)initWithTempFolder:(id)folder transportReleasePolicy:(int64_t)policy
{
  folderCopy = folder;
  v23.receiver = self;
  v23.super_class = UARPHIDManager;
  v7 = [(UARPHIDManager *)&v23 init];
  if (v7)
  {
    v8 = [folderCopy copy];
    tmpFolderBasePath = v7->_tmpFolderBasePath;
    v7->_tmpFolderBasePath = v8;

    v10 = dispatch_queue_create("com.apple.uarp.uarphidd.hidmanager", 0);
    internalQueue = v7->_internalQueue;
    v7->_internalQueue = v10;

    v12 = os_log_create("com.apple.uarp", "hidmanager");
    log = v7->_log;
    v7->_log = v12;

    v14 = objc_opt_new();
    devices = v7->_devices;
    v7->_devices = v14;

    v16 = objc_opt_new();
    ignoredDeviceClassesInternal = v7->_ignoredDeviceClassesInternal;
    v7->_ignoredDeviceClassesInternal = v16;

    v18 = objc_opt_new();
    uuidDatabase = v7->_uuidDatabase;
    v7->_uuidDatabase = v18;

    v7->_transportReleasePolicy = policy;
    v20 = objc_opt_new();
    allowedSerialNumbers = v7->_allowedSerialNumbers;
    v7->_allowedSerialNumbers = v20;
  }

  return v7;
}

- (void)startIOKitMatching
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100003044;
  v4[3] = &unk_10000C3E0;
  v4[4] = self;
  v3 = objc_retainBlock(v4);
  xpc_set_event_stream_handler("com.apple.iokit.matching", self->_internalQueue, v3);
}

- (void)handleIOKitMatching:(id)matching
{
  matchingCopy = matching;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    object = 136315138;
    v11 = "[UARPHIDManager handleIOKitMatching:]";
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s", &object, 0xCu);
  }

  string = xpc_dictionary_get_string(matchingCopy, _xpc_event_key_name);
  v7 = self->_log;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    object = 136315394;
    v11 = "[UARPHIDManager handleIOKitMatching:]";
    v12 = 2080;
    v13 = string;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s: IOKit matching on %s", &object, 0x16u);
  }

  uint64 = xpc_dictionary_get_uint64(matchingCopy, "IOMatchLaunchServiceID");
  v9 = IORegistryEntryIDMatching(uint64);
  object = 0;
  if (IOServiceGetMatchingServices(kIOMainPortDefault, v9, &object))
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100004CD0();
    }
  }

  else
  {
    [(UARPHIDManager *)self handleServiceMatching:object];
    IOObjectRelease(object);
  }
}

- (void)handleServiceMatching:(unsigned int)matching
{
  v5 = IOIteratorNext(matching);
  if (v5)
  {
    v6 = v5;
    do
    {
      [(UARPHIDManager *)self startService:v6];
      IOObjectRelease(v6);
      v6 = IOIteratorNext(matching);
    }

    while (v6);
  }
}

- (void)hidDeviceDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003688;
  v7[3] = &unk_10000C368;
  v7[4] = self;
  v8 = disconnectCopy;
  v6 = disconnectCopy;
  dispatch_async(internalQueue, v7);
}

- (void)startMonitoringForDevices:(id)devices
{
  devicesCopy = devices;
  if (self->_notifyPort)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_100004F50(log, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  else if (self->_notifyIterator)
  {
    v14 = self->_log;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100004FC8(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  else
  {
    objc_storeStrong(&self->_listener, devices);
    v22 = IONotificationPortCreate(kIOMainPortDefault);
    self->_notifyPort = v22;
    IONotificationPortSetDispatchQueue(v22, self->_internalQueue);
    v23 = IOServiceMatching("IOHIDDevice");
    [(__CFDictionary *)v23 setObject:&off_10000C8A0 forKeyedSubscript:@"DeviceUsage"];
    [(__CFDictionary *)v23 setObject:&off_10000C8B8 forKeyedSubscript:@"DeviceUsagePage"];
    [(__CFDictionary *)v23 setObject:&__kCFBooleanTrue forKeyedSubscript:@"IOMatchLaunchStream"];
    notifyPort = self->_notifyPort;
    v25 = v23;
    if (IOServiceAddMatchingNotification(notifyPort, "IOServiceMatched", v25, sub_100003954, self, &self->_notifyIterator))
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_100005040();
      }
    }

    else if (self->_notifyIterator)
    {
      [(UARPHIDManager *)self handleServiceMatching:?];
    }

    else
    {
      v26 = self->_log;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_1000050BC(v26, v27, v28, v29, v30, v31, v32, v33);
      }
    }
  }
}

- (void)stopMonitoringForDevices
{
  notifyPort = self->_notifyPort;
  if (notifyPort)
  {
    IONotificationPortDestroy(notifyPort);
    self->_notifyPort = 0;
  }
}

- (BOOL)loadMappingDatabase
{
  if ([(UARPHIDManager *)self ensureDatabaseExists])
  {
    p_uuidDatabaseURL = &self->_uuidDatabaseURL;
    v4 = [NSData dataWithContentsOfURL:self->_uuidDatabaseURL];
    v5 = v4;
    if (v4 && [v4 length])
    {
      v20[0] = objc_opt_class();
      v20[1] = objc_opt_class();
      v20[2] = objc_opt_class();
      v20[3] = objc_opt_class();
      v20[4] = objc_opt_class();
      v6 = [NSArray arrayWithObjects:v20 count:5];
      v7 = [NSSet setWithArray:v6];

      v8 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v7 fromData:v5 error:0];
      v9 = v8;
      v10 = v8 != 0;
      if (v8)
      {
        v11 = [v8 mutableCopy];
        uuidDatabase = self->_uuidDatabase;
        self->_uuidDatabase = v11;
      }

      else
      {
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          sub_1000051C4(p_uuidDatabaseURL, log);
        }
      }
    }

    else
    {
      v14 = self->_log;
      v10 = 1;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = *p_uuidDatabaseURL;
        v16 = v14;
        path = [v15 path];
        *buf = 138412290;
        v22 = path;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Assume no entries in HID UUID Database at %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v13 = self->_log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100005134(self, v13);
    }

    return 0;
  }

  return v10;
}

- (BOOL)ensureDatabaseExists
{
  v3 = objc_opt_new();
  [v3 addObject:self->_tmpFolderBasePath];
  v4 = [NSString stringWithUTF8String:"hid"];
  [v3 addObject:v4];

  v5 = [NSURL fileURLWithPathComponents:v3];
  v6 = [NSString stringWithUTF8String:"hidDevices.plist"];
  [v3 addObject:v6];

  v7 = [NSURL fileURLWithPathComponents:v3];
  p_uuidDatabaseURL = &self->_uuidDatabaseURL;
  uuidDatabaseURL = self->_uuidDatabaseURL;
  self->_uuidDatabaseURL = v7;

  v10 = +[NSFileManager defaultManager];
  path = [v5 path];
  v12 = [v10 createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:0];

  if ((v12 & 1) == 0)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_100005254(p_uuidDatabaseURL, log);
    }

    goto LABEL_7;
  }

  path2 = [*p_uuidDatabaseURL path];
  v14 = [v10 fileExistsAtPath:path2];

  if ((v14 & 1) == 0)
  {
    path3 = [*p_uuidDatabaseURL path];
    v16 = [v10 createFileAtPath:path3 contents:0 attributes:0];

    if ((v16 & 1) == 0)
    {
      v20 = self->_log;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1000052E4(p_uuidDatabaseURL, v20);
      }

LABEL_7:
      v17 = 0;
      goto LABEL_8;
    }
  }

  v17 = 1;
LABEL_8:

  return v17;
}

- (id)checkDatabaseForKnownVendorID:(id)d productID:(id)iD serialNumber:(id)number
{
  dCopy = d;
  iDCopy = iD;
  numberCopy = number;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  selfCopy = self;
  v11 = self->_uuidDatabase;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        vendorID = [v16 vendorID];
        v18 = [vendorID isEqual:dCopy];

        if (v18)
        {
          productID = [v16 productID];
          v20 = [productID isEqual:iDCopy];

          if (v20)
          {
            serialNumber = [v16 serialNumber];
            v22 = [serialNumber isEqualToString:numberCopy];

            if (v22)
            {
              log = selfCopy->_log;
              if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v34 = v16;
                _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Found entry in UUID Database; %@", buf, 0xCu);
              }

              v24 = v16;
              goto LABEL_18;
            }
          }
        }
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v29 objects:v35 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v11 = [[UARPHIDDatabaseEntry alloc] initWithVendorID:dCopy productID:iDCopy serialNumber:numberCopy];
  v23 = os_log_type_enabled(selfCopy->_log, OS_LOG_TYPE_ERROR);
  if (v11)
  {
    if (v23)
    {
      sub_100005374();
    }

    [(NSMutableArray *)selfCopy->_uuidDatabase addObject:v11];
    [(UARPHIDManager *)selfCopy flushDatabase];
    v24 = v11;
    v11 = v24;
LABEL_18:
    v26 = v24;
  }

  else
  {
    if (v23)
    {
      sub_1000053DC();
    }

    v26 = 0;
  }

  return v26;
}

- (id)knownDevices
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100004138;
  v10 = sub_100004148;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100004150;
  v5[3] = &unk_10000C408;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)clearDatabase
{
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000421C;
  block[3] = &unk_10000C340;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

- (void)flushDatabase
{
  uuidDatabase = self->_uuidDatabase;
  v19 = 0;
  v4 = [NSKeyedArchiver archivedDataWithRootObject:uuidDatabase requiringSecureCoding:1 error:&v19];
  v5 = v19;
  if (v4)
  {
    uuidDatabaseURL = self->_uuidDatabaseURL;
    v18 = 0;
    v7 = [NSFileHandle fileHandleForWritingToURL:uuidDatabaseURL error:&v18];
    v8 = v18;
    if (v7)
    {
      v17 = 0;
      v9 = [v7 truncateAtOffset:0 error:&v17];
      v10 = v17;
      if (v9)
      {
        v16 = 0;
        v11 = [v7 writeData:v4 error:&v16];
        v12 = v16;
        if (v11)
        {
          v15 = 0;
          v13 = [v7 closeAndReturnError:&v15];
          v14 = v15;
          if ((v13 & 1) == 0 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            sub_1000054EC();
          }
        }

        else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
        {
          sub_100005484();
        }
      }

      else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_10000541C();
      }
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100005554();
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_1000055BC();
  }
}

@end