@interface FMFGainsboroughServiceProvider
+ (BOOL)isSimulationActive;
- (FMFGainsboroughServiceProvider)init;
- (id)_constructLocationDeviceInfo;
- (id)_constructNonVolatileFullDeviceInfo;
- (id)_constructPairedDevicesInfo;
- (id)_constructVolatileFullDeviceInfo;
- (id)connectionStatusString;
- (id)deviceName;
- (id)lastActiveDate;
- (id)lastOnWristTime;
- (id)substituteStandardURLPlaceholders:(id)a3;
- (id)wristStatusString;
- (void)logState;
@end

@implementation FMFGainsboroughServiceProvider

+ (BOOL)isSimulationActive
{
  v2 = +[FMSystemInfo sharedInstance];
  v3 = [v2 isInternalBuild];

  if (!v3)
  {
    return 0;
  }

  return [FMPreferencesUtil BOOLForKey:@"GainsboroughSimulationWatch" inDomain:@"com.apple.icloud.fmflocatord.notbackedup"];
}

- (FMFGainsboroughServiceProvider)init
{
  v5.receiver = self;
  v5.super_class = FMFGainsboroughServiceProvider;
  v2 = [(FMFServiceProvider *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(FMFGainsboroughServiceProvider *)v2 logState];
  }

  return v3;
}

- (id)deviceName
{
  v2 = +[SystemConfig sharedInstance];
  v3 = [v2 deviceName];
  v4 = [v3 stringByAppendingString:@"_gainsborough"];

  return v4;
}

- (id)connectionStatusString
{
  v2 = @"unknown";
  v3 = [FMPreferencesUtil integerForKey:@"GainsboroughConnectionStatus" inDomain:@"com.apple.icloud.fmflocatord.notbackedup"];
  if (v3 <= 3)
  {
    v4 = *(&off_10005D040)[v3];

    v2 = v4;
  }

  return v2;
}

- (id)wristStatusString
{
  v2 = @"Unknown";
  v3 = [FMPreferencesUtil integerForKey:@"GainsboroughWristStatus" inDomain:@"com.apple.icloud.fmflocatord.notbackedup"];
  if (v3)
  {
    if (v3 != 1)
    {
      goto LABEL_6;
    }

    v4 = &off_10005E200;
  }

  else
  {
    v4 = &off_10005E208;
  }

  v5 = *v4;

  v2 = v5;
LABEL_6:

  return v2;
}

- (id)lastOnWristTime
{
  v3 = +[NSDate date];
  v4 = [(FMFGainsboroughServiceProvider *)self wristStatusString];
  v5 = [v4 isEqualToString:@"on"];

  if (v5)
  {
    [(FMFGainsboroughServiceProvider *)self setLastOnWristDate:v3];
  }

  else
  {
    v6 = [(FMFGainsboroughServiceProvider *)self lastOnWristDate];

    if (!v6)
    {
      v7 = [v3 dateByAddingTimeInterval:-300.0];
      [(FMFGainsboroughServiceProvider *)self setLastOnWristDate:v7];
    }

    v8 = [(FMFGainsboroughServiceProvider *)self lastOnWristDate];

    v3 = v8;
  }

  return v3;
}

- (id)lastActiveDate
{
  v2 = [FMPreferencesUtil integerForKey:@"GainsboroughLastActiveTime" inDomain:@"com.apple.icloud.fmflocatord.notbackedup"];
  if ((v2 - 1) > 3)
  {
    v3 = -0.0;
  }

  else
  {
    v3 = dbl_100044BB0[(v2 - 1)];
  }

  return [NSDate dateWithTimeIntervalSinceNow:v3];
}

- (void)logState
{
  v3 = sub_100002830();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "FMFGainsboroughServiceProvider simulation active", &v18, 2u);
  }

  v4 = sub_100002830();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(FMFGainsboroughServiceProvider *)self udid];
    v18 = 138412290;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FMFGainsboroughServiceProvider udid %@", &v18, 0xCu);
  }

  v6 = sub_100002830();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(FMFGainsboroughServiceProvider *)self deviceName];
    v18 = 138412290;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FMFGainsboroughServiceProvider deviceName %@", &v18, 0xCu);
  }

  v8 = sub_100002830();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(FMFGainsboroughServiceProvider *)self connectionStatusString];
    v18 = 138412290;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FMFGainsboroughServiceProvider connectionStatusString %@", &v18, 0xCu);
  }

  v10 = sub_100002830();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(FMFGainsboroughServiceProvider *)self wristStatusString];
    v18 = 138412290;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "FMFGainsboroughServiceProvider wristStatusString %@", &v18, 0xCu);
  }

  v12 = sub_100002830();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(FMFGainsboroughServiceProvider *)self lastActiveDate];
    v18 = 138412290;
    v19 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FMFGainsboroughServiceProvider lastActiveDate %@", &v18, 0xCu);
  }

  v14 = sub_100002830();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(FMFGainsboroughServiceProvider *)self companionUDID];
    v18 = 138412290;
    v19 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "FMFGainsboroughServiceProvider companionUDID %@", &v18, 0xCu);
  }

  v16 = sub_100002830();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [(FMFGainsboroughServiceProvider *)self companionUDID];
    v18 = 138412290;
    v19 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "FMFGainsboroughServiceProvider pairingId %@", &v18, 0xCu);
  }
}

- (id)substituteStandardURLPlaceholders:(id)a3
{
  v4 = a3;
  v5 = +[PreferencesMgr sharedInstance];
  v6 = [v5 hostportOverride];

  if ([v6 length])
  {
    v7 = [v4 stringByReplacingOccurrencesOfString:@"${hostname}" withString:v6];
  }

  else
  {
    v8 = [(ServiceProvider *)self account];
    v9 = [v8 serverHost];

    if (!v9)
    {
      goto LABEL_6;
    }

    v10 = [(ServiceProvider *)self account];
    v11 = [v10 serverHost];
    v7 = [v4 stringByReplacingOccurrencesOfString:@"${hostname}" withString:v11];

    v4 = v10;
  }

  v4 = v7;
LABEL_6:
  v12 = +[PreferencesMgr sharedInstance];
  v13 = [v12 protocolSchemeOverride];

  if ([v13 length])
  {
    v14 = [v4 stringByReplacingOccurrencesOfString:@"${scheme}" withString:v13];
  }

  else
  {
    v15 = [(ServiceProvider *)self account];
    v16 = [v15 serverProtocolScheme];

    if (!v16)
    {
      goto LABEL_11;
    }

    v17 = [(ServiceProvider *)self account];
    v18 = [v17 serverProtocolScheme];
    v14 = [v4 stringByReplacingOccurrencesOfString:@"${scheme}" withString:v18];

    v4 = v17;
  }

  v4 = v14;
LABEL_11:
  v19 = [(FMFServiceProvider *)self serviceIdentifierInURL];

  if (v19)
  {
    v20 = [(FMFServiceProvider *)self serviceIdentifierInURL];
    v21 = [v4 stringByReplacingOccurrencesOfString:@"${service}" withString:v20];

    v4 = v21;
  }

  v22 = [(ServiceProvider *)self account];
  v23 = [v22 authId];

  if (v23)
  {
    v24 = [(ServiceProvider *)self account];
    v25 = [v24 authId];
    v26 = [v4 stringByReplacingOccurrencesOfString:@"${dsid}" withString:v25];

    v4 = v26;
  }

  v27 = [(FMFGainsboroughServiceProvider *)self udid];
  if (v27)
  {
    v28 = [v4 stringByReplacingOccurrencesOfString:@"${udid}" withString:v27];

    v4 = v28;
  }

  return v4;
}

- (id)_constructVolatileFullDeviceInfo
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(FindBaseServiceProvider *)self apsToken];
  [v3 fm_safelyMapKey:@"aps-token" toObject:v4];
  v5 = +[SystemConfig sharedInstance];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 isLocationServicesEnabled]);
  [v3 setObject:v6 forKeyedSubscript:@"locationServicesEnabled"];

  v7 = +[SystemConfig sharedInstance];
  v8 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 isShareMyLocationSystemServiceEnabled]);
  [v3 setObject:v8 forKeyedSubscript:@"smlLS"];

  v9 = [(FMFGainsboroughServiceProvider *)self deviceName];
  [v3 fm_safelyMapKey:@"deviceName" toObject:v9];

  v10 = +[SystemConfig sharedInstance];
  v11 = [v10 timezone];
  [v3 fm_safelyMapKey:@"timezone" toObject:v11];

  v12 = +[SystemConfig sharedInstance];
  v13 = [v12 locale];
  [v3 fm_safelyMapKey:@"locale" toObject:v13];

  v14 = +[SystemConfig sharedInstance];
  v15 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v14 processIdentifier]);
  v16 = [v15 stringValue];
  [v3 fm_safelyMapKey:@"processId" toObject:v16];

  v17 = +[SystemConfig sharedInstance];
  v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v17 unlockState]);
  [v3 setObject:v18 forKeyedSubscript:@"unlockState"];

  v19 = [(FMFGainsboroughServiceProvider *)self connectionStatusString];
  [v3 fm_safelyMapKey:@"connectionStatus" toObject:v19];

  v20 = [(FMFGainsboroughServiceProvider *)self wristStatusString];
  [v3 fm_safelyMapKey:@"wristStatus" toObject:v20];

  v21 = [(FMFGainsboroughServiceProvider *)self lastOnWristTime];
  v22 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v21 fm_epoch]);
  [v3 fm_safelyMapKey:@"lastOnWristTime" toObject:v22];

  v23 = +[SystemConfig sharedInstance];
  v24 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v23 hasCellularCapability]);
  [v3 fm_safelyMapKey:@"hasGainsborough" toObject:v24];

  v25 = +[FMFFencesMgr sharedInstance];
  v26 = [v25 fenceVersion];
  [v3 fm_safelyMapKey:@"fenceVersion" toObject:v26];

  v27 = [(FMFGainsboroughServiceProvider *)self _constructPairedDevicesInfo];
  [v3 setObject:v27 forKeyedSubscript:@"otherDevices"];
  v28 = sub_100002830();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 138412290;
    v31 = v3;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "FMFGainsboroughServiceProvider simulated device info %@", &v30, 0xCu);
  }

  return v3;
}

- (id)_constructNonVolatileFullDeviceInfo
{
  v3 = objc_alloc_init(NSMutableDictionary);
  [v3 fm_safelyMapKey:@"productType" toObject:{@"Watch3, 1"}];
  [v3 fm_safelyMapKey:@"productVersion" toObject:@"4.0"];
  v4 = [(FMFGainsboroughServiceProvider *)self udid];
  [v3 fm_safelyMapKey:@"udid" toObject:v4];

  [v3 fm_safelyMapKey:@"deviceClass" toObject:@"watch"];
  v5 = +[SystemConfig sharedInstance];
  v6 = [v5 buildVersion];
  [v3 fm_safelyMapKey:@"buildVersion" toObject:v6];

  [v3 fm_safelyMapKey:@"platform" toObject:@"watchos"];
  v7 = +[FMSystemInfo sharedInstance];
  v8 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 isInternalBuild]);
  [v3 fm_safelyMapKey:@"isInternal" toObject:v8];

  v9 = +[SystemConfig sharedInstance];
  v10 = [v9 serialNumber];
  [v3 fm_safelyMapKey:@"serialNumber" toObject:v10];

  v11 = [(ServiceProvider *)self account];
  v12 = [v11 versionHistory];
  v13 = [v12 componentsJoinedByString:{@", "}];
  [v3 fm_safelyMapKey:@"versionHistory" toObject:v13];

  v14 = +[SystemConfig sharedInstance];
  v15 = [v14 deviceColor];
  [v3 fm_safelyMapKey:@"deviceColor" toObject:v15];

  v16 = +[SystemConfig sharedInstance];
  v17 = [v16 deviceEnclosureColor];
  [v3 fm_safelyMapKey:@"enclosureColor" toObject:v17];

  v18 = +[SystemConfig sharedInstance];
  v19 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v18 forceTouchAvailable]);
  [v3 fm_safelyMapKey:@"supportsForceTouch" toObject:v19];

  v20 = +[SystemConfig sharedInstance];
  v21 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v20 isRegionMonitoringAvailable]);
  [v3 setObject:v21 forKeyedSubscript:@"fenceMonitoringCapable"];

  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"supportsNotifyV2"];
  v22 = sub_100002830();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412290;
    v25 = v3;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "FMFGainsboroughServiceProvider simulated device info %@", &v24, 0xCu);
  }

  return v3;
}

- (id)_constructLocationDeviceInfo
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(FMFGainsboroughServiceProvider *)self udid];
  [v3 fm_safelyMapKey:@"udid" toObject:v4];

  v5 = +[SystemConfig sharedInstance];
  v6 = v5;
  if (v5)
  {
    [v5 batteryStats];
  }

  v7 = sub_100002830();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "FMFGainsboroughServiceProvider simulated device info %@", buf, 0xCu);
  }

  return v3;
}

- (id)_constructPairedDevicesInfo
{
  v3 = +[NSMutableArray array];
  v4 = +[NSMutableDictionary dictionary];
  v5 = [(FMFGainsboroughServiceProvider *)self lastActiveDate];
  v6 = v5;
  if (v5)
  {
    v7 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v5 fm_epoch]);
  }

  else
  {
    v7 = &off_100062F28;
  }

  [v4 fm_safelyMapKey:@"lastActiveTime" toObject:v7];
  v8 = [(FMFGainsboroughServiceProvider *)self companionUDID];
  [v4 fm_safelyMapKey:@"udid" toObject:v8];

  v9 = [(FMFGainsboroughServiceProvider *)self companionUDID];
  [v4 fm_safelyMapKey:@"pairingId" toObject:v9];

  [v4 fm_safelyMapKey:@"productType" toObject:{@"iPhone6, 1"}];
  [v4 fm_safelyMapKey:@"deviceClass" toObject:@"iPhone"];
  [v4 fm_safelyMapKey:@"platform" toObject:@"iphoneos"];
  [v4 fm_safelyMapKey:@"deviceName" toObject:@"Gainsborough's iPhone"];
  [v3 addObject:v4];
  v10 = sub_100002830();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "FMFGainsboroughServiceProvider simulated paired device info %@", &v12, 0xCu);
  }

  return v3;
}

@end