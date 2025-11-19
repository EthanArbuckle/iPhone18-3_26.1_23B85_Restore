@interface FMDSystemConfig_ios
- (BOOL)_BOOLGestaltQueryForKey:(__CFString *)a3;
- (BOOL)allowsActivationLock;
- (BOOL)deviceSupportsUltraLowPowerNetworking;
- (BOOL)hasCellularCapability;
- (BOOL)hasNFC;
- (BOOL)hasSecureElement;
- (BOOL)isFMIPLocationServicesEnabled;
- (BOOL)isLocationServicesEnabledForShareMyLocation;
- (BOOL)isLocked;
- (BOOL)isLowPowerModeEnabled;
- (BOOL)isPasscodeChangeRestricted;
- (BOOL)isPasscodeSet;
- (BOOL)isRegionMonitoringAvailable;
- (BOOL)isRoseCapable;
- (FMDSystemConfig_ios)init;
- (id)_numberGestaltQueryForKey:(__CFString *)a3;
- (id)_stringGestaltQueryForKey:(__CFString *)a3;
- (id)backOfEnclosureColor;
- (id)btMacAddress;
- (id)buildVersion;
- (id)chipId;
- (id)coverGlassColor;
- (id)currentPasscodeConstraintStr;
- (id)deviceClassString;
- (id)deviceColor;
- (id)deviceEnclosureColor;
- (id)deviceModel;
- (id)deviceName;
- (id)deviceRegion;
- (id)deviceUDID;
- (id)ecid;
- (id)escrowHash;
- (id)housingColor;
- (id)locale;
- (id)productName;
- (id)productType;
- (id)productVersion;
- (id)pscSUIURL;
- (id)serialNumber;
- (id)suinfoLastModifiedTimestamp;
- (id)timezone;
- (id)wifiMacAddress;
- (int)currentPasscodeConstraint;
- (int64_t)connectionStatus;
- (int64_t)deviceClass;
- (unint64_t)unlockState;
- (void)_handleGestaltError:(int)a3 forKey:(__CFString *)a4;
- (void)currentPasscodeStateMayNeedUpdate;
- (void)dealloc;
- (void)deviceNameMayNeedUpdate;
- (void)initializeSystemConfig;
@end

@implementation FMDSystemConfig_ios

- (BOOL)hasSecureElement
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019A68C;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  if (qword_1003148C0 != -1)
  {
    dispatch_once(&qword_1003148C0, block);
  }

  return byte_1003148B8;
}

- (id)deviceModel
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019A328;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  if (qword_100314850 != -1)
  {
    dispatch_once(&qword_100314850, block);
  }

  return qword_100314848;
}

- (id)housingColor
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019A5CC;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  if (qword_1003148A0 != -1)
  {
    dispatch_once(&qword_1003148A0, block);
  }

  return qword_100314898;
}

- (id)timezone
{
  v2 = +[NSTimeZone systemTimeZone];
  v3 = [v2 name];

  return v3;
}

- (id)locale
{
  v2 = +[NSLocale autoupdatingCurrentLocale];
  v3 = [v2 localeIdentifier];

  return v3;
}

- (id)deviceName
{
  if (qword_1003147D0 != -1)
  {
    sub_10022C0D4();
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10000AAC4;
  v10 = sub_100002B2C;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100002E34;
  v5[3] = &unk_1002CE5F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(qword_1003147C8, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)hasNFC
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019A6B8;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  if (qword_1003148D0 != -1)
  {
    dispatch_once(&qword_1003148D0, block);
  }

  return byte_1003148C8;
}

- (id)deviceRegion
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019A36C;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  if (qword_100314860 != -1)
  {
    dispatch_once(&qword_100314860, block);
  }

  return qword_100314858;
}

- (id)backOfEnclosureColor
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019A62C;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  if (qword_1003148B0 != -1)
  {
    dispatch_once(&qword_1003148B0, block);
  }

  return qword_1003148A8;
}

- (id)coverGlassColor
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019A56C;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  if (qword_100314890 != -1)
  {
    dispatch_once(&qword_100314890, block);
  }

  return qword_100314888;
}

- (BOOL)isRoseCapable
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019ACD4;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  if (qword_100314978 != -1)
  {
    dispatch_once(&qword_100314978, block);
  }

  return qword_100314970 != 0;
}

- (BOOL)isLocationServicesEnabledForShareMyLocation
{
  v2 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/FMF.framework"];
  v3 = [CLLocationManager authorizationStatusForBundle:v2];

  return v3 == 3;
}

- (BOOL)allowsActivationLock
{
  v3 = +[MCProfileConnection sharedConnection];
  if ([v3 isActivationLockAllowed] && (+[FMPreferencesUtil BOOLForKey:inDomain:](FMPreferencesUtil, "BOOLForKey:inDomain:", @"StoreDemoMode", @"com.apple.demo-settings") & 1) == 0 && -[FMDSystemConfig_ios isBuddyDone](self, "isBuddyDone"))
  {
    v4 = [FMPreferencesUtil BOOLForKey:@"BlockActivationLock" inDomain:kFMDNotBackedUpPrefDomain]^ 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_100002880();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v4)
    {
      v6 = @"YES";
    }

    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Activation lock is allowed - [%@]", &v8, 0xCu);
  }

  return v4;
}

- (BOOL)hasCellularCapability
{
  if ([(FMDSystemConfig_ios *)self _BOOLGestaltQueryForKey:@"CellularTelephonyCapability"])
  {
    return 1;
  }

  return [(FMDSystemConfig_ios *)self _BOOLGestaltQueryForKey:@"cellular-data"];
}

- (BOOL)isPasscodeSet
{
  if (qword_100314950 != -1)
  {
    sub_10022C1EC();
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100009C84;
  v5[3] = &unk_1002CE5F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(qword_100314948, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)currentPasscodeConstraintStr
{
  if (qword_100314968 != -1)
  {
    sub_10022C200();
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10000AAC4;
  v10 = sub_100002B2C;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100009E2C;
  v5[3] = &unk_1002CE5F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(qword_100314960, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (int)currentPasscodeConstraint
{
  if (qword_100314938 != -1)
  {
    sub_10022C0E8();
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100009FAC;
  v5[3] = &unk_1002CE5F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(qword_100314930, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)unlockState
{
  v2 = MKBDeviceUnlockedSinceBoot();
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10022C174(v2, v3);
  }

  if (v2 != 1 && (v2 & 0x80000000) == 0)
  {
    return 1;
  }

  v5 = MKBGetDeviceLockState();
  v6 = 2;
  if (v5 != 1)
  {
    v6 = 3;
  }

  if (v5 == 2)
  {
    return 4;
  }

  else
  {
    return v6;
  }
}

- (BOOL)isPasscodeChangeRestricted
{
  v2 = +[MCProfileConnection sharedConnection];
  v3 = [v2 isPasscodeModificationAllowed];

  return v3 ^ 1;
}

- (id)suinfoLastModifiedTimestamp
{
  v2 = [(FMDSystemConfig_ios *)self pscSUIURL];
  v11 = 0;
  v10 = 0;
  [v2 getResourceValue:&v11 forKey:NSURLContentModificationDateKey error:&v10];
  v3 = v11;
  v4 = v10;
  v5 = v4;
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v3 == 0;
  }

  if (v6)
  {
    if (v4)
    {
      v7 = sub_100002880();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10022C214(v2, v5, v7);
      }
    }

    v8 = 0;
  }

  else
  {
    v8 = [v3 fm_epochObject];
  }

  return v8;
}

- (id)pscSUIURL
{
  v2 = container_system_group_path_for_identifier();
  if (v2)
  {
    v3 = v2;
    v4 = sub_100002880();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "System group container path is %s", &v8, 0xCu);
    }

    v5 = [NSURL fileURLWithFileSystemRepresentation:v3 isDirectory:1 relativeToURL:0];
    free(v3);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 URLByAppendingPathComponent:@"Library/ProvenanceV2/psc.sui" isDirectory:0];

  return v6;
}

- (id)ecid
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019A824;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  if (qword_100314900 != -1)
  {
    dispatch_once(&qword_100314900, block);
  }

  return qword_1003148F8;
}

- (id)chipId
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019A7E0;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  if (qword_1003148F0 != -1)
  {
    dispatch_once(&qword_1003148F0, block);
  }

  return qword_1003148E8;
}

- (BOOL)isLowPowerModeEnabled
{
  v2 = +[NSProcessInfo processInfo];
  v3 = [v2 isLowPowerModeEnabled];

  return v3;
}

- (BOOL)isFMIPLocationServicesEnabled
{
  v2 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/FindMyDevice.framework"];
  v3 = [CLLocationManager authorizationStatusForBundle:v2];

  return v3 == 3;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"FMDDevicePasscodeMayHaveChangedNotification" object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"FMDDeviceNameMayHaveChangedNotification" object:0];

  v5.receiver = self;
  v5.super_class = FMDSystemConfig_ios;
  [(FMDSystemConfig_ios *)&v5 dealloc];
}

- (FMDSystemConfig_ios)init
{
  [NSException raise:NSInternalInconsistencyException format:@"*** Trying to explicitly init FMDSystemConfig_iOS. Use '+sharedInstance'"];
  v4.receiver = self;
  v4.super_class = FMDSystemConfig_ios;

  return 0;
}

- (void)initializeSystemConfig
{
  v6.receiver = self;
  v6.super_class = FMDSystemConfig_ios;
  [(FMDSystemConfig *)&v6 initializeSystemConfig];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"currentPasscodeStateMayNeedUpdate" name:@"FMDDevicePasscodeMayHaveChangedNotification" object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"deviceNameMayNeedUpdate" name:@"FMDDeviceNameMayHaveChangedNotification" object:0];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_100199968, @"com.apple.system.timezone", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_handleGestaltError:(int)a3 forKey:(__CFString *)a4
{
  v6 = sub_100002880();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10022C04C(a4, a3, v6);
  }
}

- (id)_stringGestaltQueryForKey:(__CFString *)a3
{
  v3 = MGCopyAnswerWithError();

  return v3;
}

- (id)_numberGestaltQueryForKey:(__CFString *)a3
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

- (void)deviceNameMayNeedUpdate
{
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Device name may need update", buf, 2u);
  }

  v4 = [(FMDSystemConfig_ios *)self deviceName];
  self->_deviceNameUpToDate = 0;
  v5 = [(FMDSystemConfig_ios *)self deviceName];
  v6 = v5;
  if (!v4 && v5 || v4 && !v5 || ([v4 isEqualToString:v5] & 1) == 0)
  {
    v7 = sub_100002880();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Post notification for device name need update", v9, 2u);
    }

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:@"FMDDeviceNameChangedNotification" object:0];
  }
}

- (id)deviceClassString
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100199D48;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  if (qword_1003147E0 != -1)
  {
    dispatch_once(&qword_1003147E0, block);
  }

  return qword_1003147D8;
}

- (int64_t)deviceClass
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100199E1C;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  if (qword_1003147F0 != -1)
  {
    dispatch_once(&qword_1003147F0, block);
  }

  return qword_1003147E8;
}

- (id)deviceUDID
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100199F44;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  if (qword_100314800 != -1)
  {
    dispatch_once(&qword_100314800, block);
  }

  return qword_1003147F8;
}

- (id)productType
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019A01C;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  if (qword_100314810 != -1)
  {
    dispatch_once(&qword_100314810, block);
  }

  return qword_100314808;
}

- (id)productName
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019A0F4;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  if (qword_100314820 != -1)
  {
    dispatch_once(&qword_100314820, block);
  }

  return qword_100314818;
}

- (id)productVersion
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019A1CC;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  if (qword_100314830 != -1)
  {
    dispatch_once(&qword_100314830, block);
  }

  return qword_100314828;
}

- (id)buildVersion
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019A2C4;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  if (qword_100314840 != -1)
  {
    dispatch_once(&qword_100314840, block);
  }

  return qword_100314838;
}

- (id)deviceColor
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019A450;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  if (qword_100314870 != -1)
  {
    dispatch_once(&qword_100314870, block);
  }

  return qword_100314868;
}

- (id)deviceEnclosureColor
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019A528;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  if (qword_100314880 != -1)
  {
    dispatch_once(&qword_100314880, block);
  }

  return qword_100314878;
}

- (id)serialNumber
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019A79C;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  if (qword_1003148E0 != -1)
  {
    dispatch_once(&qword_1003148E0, block);
  }

  return qword_1003148D8;
}

- (id)wifiMacAddress
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019A8FC;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  if (qword_100314910 != -1)
  {
    dispatch_once(&qword_100314910, block);
  }

  return qword_100314908;
}

- (id)btMacAddress
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019A9D4;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  if (qword_100314920 != -1)
  {
    dispatch_once(&qword_100314920, block);
  }

  return qword_100314918;
}

- (BOOL)isLocked
{
  v2 = MKBGetDeviceLockState();
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10022C0FC(v2, v3);
  }

  return v2 == 1 || v2 == 4;
}

- (void)currentPasscodeStateMayNeedUpdate
{
  v3 = [(FMDSystemConfig_ios *)self currentPasscodeConstraint];
  self->_passcodeConstraintUpToDate = 0;
  v4 = [(FMDSystemConfig_ios *)self currentPasscodeConstraint];
  v5 = [(FMDSystemConfig_ios *)self isPasscodeSet];
  self->_passcodeStateUpToDate = 0;
  v6 = [(FMDSystemConfig_ios *)self isPasscodeSet];
  if (v3 != v4 || v5 != v6)
  {
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 postNotificationName:@"FMDPasscodeStateChangedNotification" object:0];
  }
}

- (BOOL)isRegionMonitoringAvailable
{
  v2 = objc_opt_class();

  return [CLLocationManager isMonitoringAvailableForClass:v2];
}

- (id)escrowHash
{
  v2 = +[MCProfileConnection sharedConnection];
  v3 = [v2 activationLockBypassHash];

  return v3;
}

- (int64_t)connectionStatus
{
  v2 = +[FMNetworkMonitor sharedInstance];
  if ([v2 isMonitoring])
  {
    if ([v2 isNetworkUp])
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)deviceSupportsUltraLowPowerNetworking
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019AE30;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  if (qword_100314988 != -1)
  {
    dispatch_once(&qword_100314988, block);
  }

  return byte_100314980;
}

@end