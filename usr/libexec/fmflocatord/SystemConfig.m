@interface SystemConfig
+ (id)sharedInstance;
- ($ECBB963D1F6757AE96FAF80058EC9690)batteryStats;
- (BOOL)_BOOLGestaltQueryForKey:(__CFString *)a3;
- (BOOL)deviceSupportsUltraLowPowerNetworking;
- (BOOL)forceTouchAvailable;
- (BOOL)hasCellularCapability;
- (BOOL)isFMFAppRemoved;
- (BOOL)isRegionMonitoringAvailable;
- (BOOL)isShareMyLocationSystemServiceEnabled;
- (NSString)buildVersion;
- (NSString)deviceClassString;
- (NSString)deviceColor;
- (NSString)deviceEnclosureColor;
- (NSString)deviceName;
- (NSString)deviceUDID;
- (NSString)idsDeviceID;
- (NSString)locale;
- (NSString)productName;
- (NSString)productType;
- (NSString)productVersion;
- (NSString)serialNumber;
- (NSString)timezone;
- (id)_stringGestaltQueryForKey:(__CFString *)a3;
- (id)initSingleton;
- (int)processIdentifier;
- (unint64_t)unlockState;
- (void)_handleGestaltError:(int)a3 forKey:(__CFString *)a4;
- (void)dealloc;
- (void)deviceNameMayNeedUpdate;
- (void)localeMayNeedUpdate;
- (void)updateLocationServicesStatus;
- (void)updateShareMyLocationSystemServiceStatus;
@end

@implementation SystemConfig

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"DeviceNameMayHaveChangedNotification" object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"DeviceLocaleMayHaveChangedNotification" object:0];

  v5.receiver = self;
  v5.super_class = SystemConfig;
  [(SystemConfig *)&v5 dealloc];
}

+ (id)sharedInstance
{
  if (qword_100070188 != -1)
  {
    sub_100037E64();
  }

  v3 = qword_100070180;

  return v3;
}

- (id)initSingleton
{
  v17.receiver = self;
  v17.super_class = SystemConfig;
  v2 = [(SystemConfig *)&v17 init];
  if (v2)
  {
    v2->_isLocationServicesEnabled = +[CLLocationManager locationServicesEnabled];
    v3 = sub_100002830();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      isLocationServicesEnabled = v2->_isLocationServicesEnabled;
      *buf = 67109120;
      LODWORD(v19) = isLocationServicesEnabled;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Initial LS auth status: %d", buf, 8u);
    }

    v5 = dispatch_queue_create("com.apple.icloud.fmflocatord.fmfconfig.LSStatusUpdateQ", 0);
    locationServicesStatusUpdateQueue = v2->_locationServicesStatusUpdateQueue;
    v2->_locationServicesStatusUpdateQueue = v5;

    v7 = [[CLLocationManager alloc] initWithEffectiveBundlePath:@"/System/Library/PrivateFrameworks/FMF.framework" delegate:v2 onQueue:v2->_locationServicesStatusUpdateQueue];
    fmfLocationManager = v2->_fmfLocationManager;
    v2->_fmfLocationManager = v7;

    v2->_shareMyLocationSystemServiceStatus = [(CLLocationManager *)v2->_fmfLocationManager authorizationStatus];
    v9 = sub_100002830();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(SystemConfig *)v2 isShareMyLocationSystemServiceEnabled];
      v11 = @"disabled";
      if (v10)
      {
        v11 = @"enabled";
      }

      *buf = 138412290;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Share My Location System Service is initially %@", buf, 0xCu);
    }

    v12 = +[PreferencesMgr sharedInstance];
    [(SystemConfig *)v2 setPreferencesMgr:v12];

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v2 selector:"deviceNameMayNeedUpdate" name:@"DeviceNameMayHaveChangedNotification" object:0];

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v2 selector:"localeMayNeedUpdate" name:@"DeviceLocaleMayHaveChangedNotification" object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_100019DC0, @"com.apple.system.timezone", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v2;
}

- (void)updateLocationServicesStatus
{
  v3 = [(SystemConfig *)self locationServicesStatusUpdateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100019E54;
  block[3] = &unk_10005D2B0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)updateShareMyLocationSystemServiceStatus
{
  v3 = [(SystemConfig *)self locationServicesStatusUpdateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001A138;
  block[3] = &unk_10005D2B0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_handleGestaltError:(int)a3 forKey:(__CFString *)a4
{
  v6 = sub_100002830();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100037F50(a4, a3, v6);
  }
}

- (id)_stringGestaltQueryForKey:(__CFString *)a3
{
  v3 = MGCopyAnswerWithError();

  return v3;
}

- (BOOL)_BOOLGestaltQueryForKey:(__CFString *)a3
{
  v3 = MGCopyAnswerWithError();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CFBooleanGetValue(v3) != 0;
  CFRelease(v4);
  return v5;
}

- (NSString)deviceName
{
  if (qword_1000701A0 != -1)
  {
    sub_100037FD8();
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10001A694;
  v10 = sub_10001A6A4;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001A6AC;
  v5[3] = &unk_10005DCC0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(qword_100070198, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)deviceNameMayNeedUpdate
{
  v3 = sub_100002830();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Device name may need update", buf, 2u);
  }

  v4 = [(SystemConfig *)self deviceName];
  [(SystemConfig *)self setDeviceNameUpToDate:0];
  v5 = [(SystemConfig *)self deviceName];
  v6 = v5;
  if (!v4 && v5 || v4 && !v5 || ([v4 isEqualToString:v5] & 1) == 0)
  {
    v7 = sub_100002830();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Post notification for device name need update", v9, 2u);
    }

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:@"DeviceNameChangedNotification" object:0];
  }
}

- (NSString)deviceClassString
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001A91C;
  block[3] = &unk_10005D2B0;
  block[4] = self;
  if (qword_1000701B0 != -1)
  {
    dispatch_once(&qword_1000701B0, block);
  }

  return qword_1000701A8;
}

- (NSString)deviceUDID
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001AA88;
  block[3] = &unk_10005D2B0;
  block[4] = self;
  if (qword_1000701C0 != -1)
  {
    dispatch_once(&qword_1000701C0, block);
  }

  v2 = +[FMSystemInfo sharedInstance];
  if (![v2 isInternalBuild])
  {
    goto LABEL_9;
  }

  v3 = [FMPreferencesUtil BOOLForKey:@"GainsboroughSimulationPhone" inDomain:@"com.apple.icloud.fmflocatord.notbackedup"];

  if (v3)
  {
    v2 = [FMPreferencesUtil stringForKey:@"GainsboroughPhoneUDID" inDomain:@"com.apple.icloud.fmflocatord.notbackedup"];
    if (v2)
    {
      v4 = v2;
    }

    else
    {
      v4 = qword_1000701B8;
    }

    objc_storeStrong(&qword_1000701B8, v4);
LABEL_9:
  }

  return qword_1000701B8;
}

- (NSString)idsDeviceID
{
  v2 = qword_1000701C8;
  if (!qword_1000701C8)
  {
    v3 = IDSCopyLocalDeviceUniqueID();
    v4 = qword_1000701C8;
    qword_1000701C8 = v3;

    v2 = qword_1000701C8;
    if (!qword_1000701C8)
    {
      v5 = sub_100002830();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100037FEC(v5);
      }

      v2 = qword_1000701C8;
    }
  }

  return v2;
}

- (NSString)productType
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001ABDC;
  block[3] = &unk_10005D2B0;
  block[4] = self;
  if (qword_1000701D8 != -1)
  {
    dispatch_once(&qword_1000701D8, block);
  }

  return qword_1000701D0;
}

- (NSString)productName
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001ACB4;
  block[3] = &unk_10005D2B0;
  block[4] = self;
  if (qword_1000701E8 != -1)
  {
    dispatch_once(&qword_1000701E8, block);
  }

  return qword_1000701E0;
}

- (NSString)productVersion
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001AD8C;
  block[3] = &unk_10005D2B0;
  block[4] = self;
  if (qword_1000701F8 != -1)
  {
    dispatch_once(&qword_1000701F8, block);
  }

  return qword_1000701F0;
}

- (NSString)buildVersion
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001AEA0;
  block[3] = &unk_10005D2B0;
  block[4] = self;
  if (qword_100070208 != -1)
  {
    dispatch_once(&qword_100070208, block);
  }

  return qword_100070200;
}

- (NSString)deviceColor
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001AFDC;
  block[3] = &unk_10005D2B0;
  block[4] = self;
  if (qword_100070218 != -1)
  {
    dispatch_once(&qword_100070218, block);
  }

  return qword_100070210;
}

- (NSString)deviceEnclosureColor
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B0B4;
  block[3] = &unk_10005D2B0;
  block[4] = self;
  if (qword_100070228 != -1)
  {
    dispatch_once(&qword_100070228, block);
  }

  return qword_100070220;
}

- (NSString)serialNumber
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B18C;
  block[3] = &unk_10005D2B0;
  block[4] = self;
  if (qword_100070238 != -1)
  {
    dispatch_once(&qword_100070238, block);
  }

  return qword_100070230;
}

- (NSString)timezone
{
  v2 = +[NSTimeZone systemTimeZone];
  v3 = [v2 name];

  return v3;
}

- (NSString)locale
{
  v2 = CFPreferencesCopyAppValue(@"AppleLocale", kCFPreferencesCurrentApplication);

  return v2;
}

- (void)localeMayNeedUpdate
{
  CFPreferencesAppSynchronize(kCFPreferencesCurrentApplication);
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"LocaleChangedNotification" object:0];
}

- (BOOL)isShareMyLocationSystemServiceEnabled
{
  v3 = [(SystemConfig *)self shareMyLocationSystemServiceStatus];
  if (v3 == 3)
  {
    return 1;
  }

  if (!v3)
  {
    AnalyticsSendEventLazy();
    v4 = sub_100002830();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100038030(v4);
    }

    v5 = [(SystemConfig *)self fmfLocationManager];
    [v5 requestAlwaysAuthorization];
  }

  return 0;
}

- (BOOL)isRegionMonitoringAvailable
{
  v2 = objc_opt_class();

  return [CLLocationManager isMonitoringAvailableForClass:v2];
}

- (BOOL)forceTouchAvailable
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B438;
  block[3] = &unk_10005D2B0;
  block[4] = self;
  if (qword_100070248 != -1)
  {
    dispatch_once(&qword_100070248, block);
  }

  return byte_100070240;
}

- (BOOL)deviceSupportsUltraLowPowerNetworking
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B4F4;
  block[3] = &unk_10005D2B0;
  block[4] = self;
  if (qword_100070258 != -1)
  {
    dispatch_once(&qword_100070258, block);
  }

  return byte_100070250;
}

- (BOOL)hasCellularCapability
{
  v2 = [(SystemConfig *)self _BOOLGestaltQueryForKey:@"cellular-data"];
  v3 = MAGetActivationState();
  v4 = sub_100002830();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100038074(v2, v3, v4);
  }

  return v2 & v3;
}

- (unint64_t)unlockState
{
  v2 = MKBDeviceUnlockedSinceBoot();
  v3 = sub_100002830();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100038104(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  if (v2 != 1 && (v2 & 0x80000000) == 0)
  {
    return 1;
  }

  v11 = MKBGetDeviceLockState();
  if (v11 == 4 || v11 == 1)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

- (int)processIdentifier
{
  v2 = +[NSProcessInfo processInfo];
  v3 = [v2 processIdentifier];

  return v3;
}

- ($ECBB963D1F6757AE96FAF80058EC9690)batteryStats
{
  *&retstr->var0 = 0;
  retstr->var2 = 0;
  *&retstr->var3 = 0;
  v4 = objc_autoreleasePoolPush();
  v5 = IOServiceMatching("IOPMPowerSource");
  if (v5)
  {
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v5);
    if (MatchingService)
    {
      v7 = MatchingService;
      retstr->var0 = 1;
      CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"FullyCharged", kCFAllocatorDefault, 0);
      v9 = IORegistryEntryCreateCFProperty(v7, @"IsCharging", kCFAllocatorDefault, 0);
      v10 = v9;
      if (CFProperty)
      {
        v11 = v9 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        retstr->var2 = 2;
        if (!CFProperty)
        {
          if (!v9)
          {
            goto LABEL_11;
          }

          goto LABEL_10;
        }
      }

      else
      {
        v17 = IORegistryEntryCreateCFProperty(v7, @"ExternalConnected", kCFAllocatorDefault, 0);
        if (v17)
        {
          v18 = v17;
          v19 = CFBooleanGetValue(v17) != 0;
          CFRelease(v18);
        }

        else
        {
          v19 = 0;
        }

        retstr->var1 = v19;
        Value = CFBooleanGetValue(CFProperty);
        if (CFBooleanGetValue(v10))
        {
          v22 = Value == 0;
        }

        else
        {
          v22 = 0;
        }

        v23 = !v22;
        retstr->var2 = v23;
      }

      CFRelease(CFProperty);
      if (!v10)
      {
LABEL_11:
        v12 = IORegistryEntryCreateCFProperty(v7, @"CurrentCapacity", kCFAllocatorDefault, 0);
        v13 = IORegistryEntryCreateCFProperty(v7, @"MaxCapacity", kCFAllocatorDefault, 0);
        v14 = v13;
        if (v12)
        {
          v15 = v13 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (v15)
        {
          if (!v12)
          {
            if (!v13)
            {
LABEL_19:
              IOObjectRelease(v7);
              goto LABEL_20;
            }

LABEL_18:
            CFRelease(v14);
            goto LABEL_19;
          }
        }

        else
        {
          valuePtr = 0;
          CFNumberGetValue(v12, kCFNumberFloatType, &valuePtr + 4);
          CFNumberGetValue(v14, kCFNumberFloatType, &valuePtr);
          v20 = *(&valuePtr + 1) / *&valuePtr;
          if (COERCE_INT(fabs(*(&valuePtr + 1) / *&valuePtr)) >= 2139095040)
          {
            v20 = 0.0;
          }

          retstr->var3 = v20;
        }

        CFRelease(v12);
        if (!v14)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

LABEL_10:
      CFRelease(v10);
      goto LABEL_11;
    }
  }

LABEL_20:
  objc_autoreleasePoolPop(v4);
  return result;
}

- (BOOL)isFMFAppRemoved
{
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  v3 = [v2 applicationIsInstalled:@"com.apple.findmy"];

  return v3 ^ 1;
}

@end