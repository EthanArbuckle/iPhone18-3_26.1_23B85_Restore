@interface AppleHPM
+ (id)createWithBusService:(unsigned int)a3 andLogger:(id)a4;
- (id)initializeWithHPMDeviceService:(unsigned int)a3 andHPMInterfaceService:(unsigned int)a4 andLogger:(id)a5 atRid:(unsigned __int8)a6;
- (int)collectAllAnalytics;
- (int)getAppLoaded;
- (int)getFWVersion;
- (int)getHealthCheck;
- (int)getMode;
@end

@implementation AppleHPM

+ (id)createWithBusService:(unsigned int)a3 andLogger:(id)a4
{
  v5 = a4;
  v6 = IOServiceMatching("AppleTCController");
  v7 = IOServiceMatching("AppleHPMDevice");
  valuePtr = 0;
  CFProperty = IORegistryEntryCreateCFProperty(a3, @"RID", kCFAllocatorDefault, 0);
  if (CFProperty)
  {
    v9 = CFProperty;
    CFNumberGetValue(CFProperty, kCFNumberIntType, &valuePtr);
    CFRelease(v9);
  }

  child = 0;
  IORegistryEntryGetChildEntry(a3, "IOService", &child);
  v10 = child;
  if (child)
  {
    v11 = 0;
    do
    {
      matches = 0;
      matched = IOServiceMatchPropertyTable(v10, v7, &matches);
      v13 = child;
      if (!matched && matches)
      {
        IOObjectRetain(child);
        v13 = child;
        v11 = child;
      }

      if (IOServiceMatchPropertyTable(v13, v6, &matches))
      {
        v14 = 1;
      }

      else
      {
        v14 = matches == 0;
      }

      if (!v14)
      {
        IOObjectRetain(child);
        v15 = child;
        goto LABEL_16;
      }

      IOObjectRelease(child);
      IORegistryEntryGetChildEntry(child, "IOService", &child);
      v10 = child;
    }

    while (child);
    v15 = 0;
  }

  else
  {
    v15 = 0;
    v11 = 0;
  }

LABEL_16:
  CFRelease(v6);
  CFRelease(v7);
  v16 = 0;
  if (v15 && v11)
  {
    v17 = IORegistryEntryCreateCFProperty(v11, @"Device ID", kCFAllocatorDefault, 0);
    if (v17)
    {
      v18 = v17;
      matches = 0;
      CFNumberGetValue(v17, kCFNumberIntType, &matches);
      CFRelease(v18);
      if ((matches - 33628196) < 4)
      {
        v19 = off_100004118;
LABEL_25:
        v20 = objc_alloc(*v19);
        v16 = [v20 initializeWithHPMDeviceService:v11 andHPMInterfaceService:v15 andLogger:v5 atRid:valuePtr];

        goto LABEL_27;
      }

      if (matches == 5890)
      {
        v19 = &off_100004120;
        goto LABEL_25;
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100001A64();
    }

    v16 = 0;
  }

LABEL_27:

  return v16;
}

- (id)initializeWithHPMDeviceService:(unsigned int)a3 andHPMInterfaceService:(unsigned int)a4 andLogger:(id)a5 atRid:(unsigned __int8)a6
{
  v6 = a6;
  v10 = objc_alloc_init(NSMutableDictionary);
  analyticsDict = self->_analyticsDict;
  self->_analyticsDict = v10;

  if (self->_analyticsDict)
  {
    self->appleHPMInterfaceService = a4;
    self->appleHPMDeviceService = a3;
    self->_rid = v6;
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (int)collectAllAnalytics
{
  v3 = [(AppleHPM *)self getMode];
  v4 = [(AppleHPM *)self getAppLoaded]| v3;
  v5 = [(AppleHPM *)self getFWVersion];
  v6 = v4 | v5 | [(AppleHPM *)self getBootFlags];
  if (v6 | [(AppleHPM *)self getHealthCheck])
  {
    return -536870212;
  }

  else
  {
    return 0;
  }
}

- (int)getAppLoaded
{
  CFProperty = IORegistryEntryCreateCFProperty(self->appleHPMInterfaceService, @"AppLoaded Count", kCFAllocatorDefault, 0);
  if (CFProperty)
  {
    v4 = CFProperty;
    valuePtr = 0;
    CFNumberGetValue(CFProperty, kCFNumberIntType, &valuePtr);
    CFRelease(v4);
    v5 = [NSNumber numberWithUnsignedInt:valuePtr];
    [(NSMutableDictionary *)self->_analyticsDict setObject:v5 forKeyedSubscript:@"AppLoaded"];

    return 0;
  }

  else
  {
    v6 = -536870212;
    if (os_log_type_enabled(self->logger, OS_LOG_TYPE_ERROR))
    {
      sub_100001A98();
    }
  }

  return v6;
}

- (int)getMode
{
  CFProperty = IORegistryEntryCreateCFProperty(self->appleHPMDeviceService, @"HPM Mode Register on Boot", kCFAllocatorDefault, 0);
  if (CFProperty)
  {
    v4 = CFProperty;
    v9.location = 0;
    v9.length = 4;
    CFDataGetBytes(CFProperty, v9, buffer);
    CFRelease(v4);
    v5 = [[NSString alloc] initWithBytes:buffer length:4 encoding:1];
    [(NSMutableDictionary *)self->_analyticsDict setObject:v5 forKeyedSubscript:@"Mode"];

    return 0;
  }

  else
  {
    v6 = -536870212;
    if (os_log_type_enabled(self->logger, OS_LOG_TYPE_ERROR))
    {
      sub_100001ACC();
    }
  }

  return v6;
}

- (int)getHealthCheck
{
  CFProperty = IORegistryEntryCreateCFProperty(self->appleHPMInterfaceService, @"HChk", kCFAllocatorDefault, 0);
  if (CFProperty)
  {
    v4 = CFProperty;
    BytePtr = CFDataGetBytePtr(CFProperty);
    if (BytePtr)
    {
      v6 = BytePtr;
      v7 = [NSNumber numberWithUnsignedInt:*BytePtr];
      [(NSMutableDictionary *)self->_analyticsDict setObject:v7 forKeyedSubscript:@"SoftWDTCount"];

      v8 = [NSNumber numberWithUnsignedInt:v6[1]];
      [(NSMutableDictionary *)self->_analyticsDict setObject:v8 forKeyedSubscript:@"HardWDTCount"];

      v9 = v6[2] || v6[3] || v6[4] || v6[5] != 0;
      v10 = [NSNumber numberWithBool:v9];
      [(NSMutableDictionary *)self->_analyticsDict setObject:v10 forKeyedSubscript:@"ParityFailureFound"];

      CFRelease(v4);
      return 0;
    }

    else
    {
      v11 = -536870212;
      CFRelease(v4);
    }
  }

  else
  {
    v11 = -536870212;
    if (os_log_type_enabled(self->logger, OS_LOG_TYPE_ERROR))
    {
      sub_100001B00();
    }
  }

  return v11;
}

- (int)getFWVersion
{
  CFProperty = IORegistryEntryCreateCFProperty(self->appleHPMDeviceService, @"Version", kCFAllocatorDefault, 0);
  if (CFProperty)
  {
    v4 = CFProperty;
    valuePtr[0] = 0;
    CFNumberGetValue(CFProperty, kCFNumberIntType, valuePtr);
    CFRelease(v4);
    v5 = [NSMutableString stringWithFormat:@"%x.%x.%x", ((v10 << 24) | (v9 << 16)) >> 20, valuePtr[1] | ((v9 & 0xF) << 8), valuePtr[0]];
    [(NSMutableDictionary *)self->_analyticsDict setObject:v5 forKeyedSubscript:@"FWVersion"];

    return 0;
  }

  else
  {
    v6 = -536870212;
    if (os_log_type_enabled(self->logger, OS_LOG_TYPE_ERROR))
    {
      sub_100001B34();
    }
  }

  return v6;
}

@end