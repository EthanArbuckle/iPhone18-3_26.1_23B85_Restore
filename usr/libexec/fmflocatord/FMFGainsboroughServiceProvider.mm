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
- (id)substituteStandardURLPlaceholders:(id)placeholders;
- (id)wristStatusString;
- (void)logState;
@end

@implementation FMFGainsboroughServiceProvider

+ (BOOL)isSimulationActive
{
  v2 = +[FMSystemInfo sharedInstance];
  isInternalBuild = [v2 isInternalBuild];

  if (!isInternalBuild)
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
  deviceName = [v2 deviceName];
  v4 = [deviceName stringByAppendingString:@"_gainsborough"];

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
  wristStatusString = [(FMFGainsboroughServiceProvider *)self wristStatusString];
  v5 = [wristStatusString isEqualToString:@"on"];

  if (v5)
  {
    [(FMFGainsboroughServiceProvider *)self setLastOnWristDate:v3];
  }

  else
  {
    lastOnWristDate = [(FMFGainsboroughServiceProvider *)self lastOnWristDate];

    if (!lastOnWristDate)
    {
      v7 = [v3 dateByAddingTimeInterval:-300.0];
      [(FMFGainsboroughServiceProvider *)self setLastOnWristDate:v7];
    }

    lastOnWristDate2 = [(FMFGainsboroughServiceProvider *)self lastOnWristDate];

    v3 = lastOnWristDate2;
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
    udid = [(FMFGainsboroughServiceProvider *)self udid];
    v18 = 138412290;
    v19 = udid;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FMFGainsboroughServiceProvider udid %@", &v18, 0xCu);
  }

  v6 = sub_100002830();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    deviceName = [(FMFGainsboroughServiceProvider *)self deviceName];
    v18 = 138412290;
    v19 = deviceName;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FMFGainsboroughServiceProvider deviceName %@", &v18, 0xCu);
  }

  v8 = sub_100002830();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    connectionStatusString = [(FMFGainsboroughServiceProvider *)self connectionStatusString];
    v18 = 138412290;
    v19 = connectionStatusString;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FMFGainsboroughServiceProvider connectionStatusString %@", &v18, 0xCu);
  }

  v10 = sub_100002830();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    wristStatusString = [(FMFGainsboroughServiceProvider *)self wristStatusString];
    v18 = 138412290;
    v19 = wristStatusString;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "FMFGainsboroughServiceProvider wristStatusString %@", &v18, 0xCu);
  }

  v12 = sub_100002830();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    lastActiveDate = [(FMFGainsboroughServiceProvider *)self lastActiveDate];
    v18 = 138412290;
    v19 = lastActiveDate;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FMFGainsboroughServiceProvider lastActiveDate %@", &v18, 0xCu);
  }

  v14 = sub_100002830();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    companionUDID = [(FMFGainsboroughServiceProvider *)self companionUDID];
    v18 = 138412290;
    v19 = companionUDID;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "FMFGainsboroughServiceProvider companionUDID %@", &v18, 0xCu);
  }

  v16 = sub_100002830();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    companionUDID2 = [(FMFGainsboroughServiceProvider *)self companionUDID];
    v18 = 138412290;
    v19 = companionUDID2;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "FMFGainsboroughServiceProvider pairingId %@", &v18, 0xCu);
  }
}

- (id)substituteStandardURLPlaceholders:(id)placeholders
{
  placeholdersCopy = placeholders;
  v5 = +[PreferencesMgr sharedInstance];
  hostportOverride = [v5 hostportOverride];

  if ([hostportOverride length])
  {
    v7 = [placeholdersCopy stringByReplacingOccurrencesOfString:@"${hostname}" withString:hostportOverride];
  }

  else
  {
    account = [(ServiceProvider *)self account];
    serverHost = [account serverHost];

    if (!serverHost)
    {
      goto LABEL_6;
    }

    account2 = [(ServiceProvider *)self account];
    serverHost2 = [account2 serverHost];
    v7 = [placeholdersCopy stringByReplacingOccurrencesOfString:@"${hostname}" withString:serverHost2];

    placeholdersCopy = account2;
  }

  placeholdersCopy = v7;
LABEL_6:
  v12 = +[PreferencesMgr sharedInstance];
  protocolSchemeOverride = [v12 protocolSchemeOverride];

  if ([protocolSchemeOverride length])
  {
    v14 = [placeholdersCopy stringByReplacingOccurrencesOfString:@"${scheme}" withString:protocolSchemeOverride];
  }

  else
  {
    account3 = [(ServiceProvider *)self account];
    serverProtocolScheme = [account3 serverProtocolScheme];

    if (!serverProtocolScheme)
    {
      goto LABEL_11;
    }

    account4 = [(ServiceProvider *)self account];
    serverProtocolScheme2 = [account4 serverProtocolScheme];
    v14 = [placeholdersCopy stringByReplacingOccurrencesOfString:@"${scheme}" withString:serverProtocolScheme2];

    placeholdersCopy = account4;
  }

  placeholdersCopy = v14;
LABEL_11:
  serviceIdentifierInURL = [(FMFServiceProvider *)self serviceIdentifierInURL];

  if (serviceIdentifierInURL)
  {
    serviceIdentifierInURL2 = [(FMFServiceProvider *)self serviceIdentifierInURL];
    v21 = [placeholdersCopy stringByReplacingOccurrencesOfString:@"${service}" withString:serviceIdentifierInURL2];

    placeholdersCopy = v21;
  }

  account5 = [(ServiceProvider *)self account];
  authId = [account5 authId];

  if (authId)
  {
    account6 = [(ServiceProvider *)self account];
    authId2 = [account6 authId];
    v26 = [placeholdersCopy stringByReplacingOccurrencesOfString:@"${dsid}" withString:authId2];

    placeholdersCopy = v26;
  }

  udid = [(FMFGainsboroughServiceProvider *)self udid];
  if (udid)
  {
    v28 = [placeholdersCopy stringByReplacingOccurrencesOfString:@"${udid}" withString:udid];

    placeholdersCopy = v28;
  }

  return placeholdersCopy;
}

- (id)_constructVolatileFullDeviceInfo
{
  v3 = objc_alloc_init(NSMutableDictionary);
  apsToken = [(FindBaseServiceProvider *)self apsToken];
  [v3 fm_safelyMapKey:@"aps-token" toObject:apsToken];
  v5 = +[SystemConfig sharedInstance];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 isLocationServicesEnabled]);
  [v3 setObject:v6 forKeyedSubscript:@"locationServicesEnabled"];

  v7 = +[SystemConfig sharedInstance];
  v8 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 isShareMyLocationSystemServiceEnabled]);
  [v3 setObject:v8 forKeyedSubscript:@"smlLS"];

  deviceName = [(FMFGainsboroughServiceProvider *)self deviceName];
  [v3 fm_safelyMapKey:@"deviceName" toObject:deviceName];

  v10 = +[SystemConfig sharedInstance];
  timezone = [v10 timezone];
  [v3 fm_safelyMapKey:@"timezone" toObject:timezone];

  v12 = +[SystemConfig sharedInstance];
  locale = [v12 locale];
  [v3 fm_safelyMapKey:@"locale" toObject:locale];

  v14 = +[SystemConfig sharedInstance];
  v15 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v14 processIdentifier]);
  stringValue = [v15 stringValue];
  [v3 fm_safelyMapKey:@"processId" toObject:stringValue];

  v17 = +[SystemConfig sharedInstance];
  v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v17 unlockState]);
  [v3 setObject:v18 forKeyedSubscript:@"unlockState"];

  connectionStatusString = [(FMFGainsboroughServiceProvider *)self connectionStatusString];
  [v3 fm_safelyMapKey:@"connectionStatus" toObject:connectionStatusString];

  wristStatusString = [(FMFGainsboroughServiceProvider *)self wristStatusString];
  [v3 fm_safelyMapKey:@"wristStatus" toObject:wristStatusString];

  lastOnWristTime = [(FMFGainsboroughServiceProvider *)self lastOnWristTime];
  v22 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [lastOnWristTime fm_epoch]);
  [v3 fm_safelyMapKey:@"lastOnWristTime" toObject:v22];

  v23 = +[SystemConfig sharedInstance];
  v24 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v23 hasCellularCapability]);
  [v3 fm_safelyMapKey:@"hasGainsborough" toObject:v24];

  v25 = +[FMFFencesMgr sharedInstance];
  fenceVersion = [v25 fenceVersion];
  [v3 fm_safelyMapKey:@"fenceVersion" toObject:fenceVersion];

  _constructPairedDevicesInfo = [(FMFGainsboroughServiceProvider *)self _constructPairedDevicesInfo];
  [v3 setObject:_constructPairedDevicesInfo forKeyedSubscript:@"otherDevices"];
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
  udid = [(FMFGainsboroughServiceProvider *)self udid];
  [v3 fm_safelyMapKey:@"udid" toObject:udid];

  [v3 fm_safelyMapKey:@"deviceClass" toObject:@"watch"];
  v5 = +[SystemConfig sharedInstance];
  buildVersion = [v5 buildVersion];
  [v3 fm_safelyMapKey:@"buildVersion" toObject:buildVersion];

  [v3 fm_safelyMapKey:@"platform" toObject:@"watchos"];
  v7 = +[FMSystemInfo sharedInstance];
  v8 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 isInternalBuild]);
  [v3 fm_safelyMapKey:@"isInternal" toObject:v8];

  v9 = +[SystemConfig sharedInstance];
  serialNumber = [v9 serialNumber];
  [v3 fm_safelyMapKey:@"serialNumber" toObject:serialNumber];

  account = [(ServiceProvider *)self account];
  versionHistory = [account versionHistory];
  v13 = [versionHistory componentsJoinedByString:{@", "}];
  [v3 fm_safelyMapKey:@"versionHistory" toObject:v13];

  v14 = +[SystemConfig sharedInstance];
  deviceColor = [v14 deviceColor];
  [v3 fm_safelyMapKey:@"deviceColor" toObject:deviceColor];

  v16 = +[SystemConfig sharedInstance];
  deviceEnclosureColor = [v16 deviceEnclosureColor];
  [v3 fm_safelyMapKey:@"enclosureColor" toObject:deviceEnclosureColor];

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
  udid = [(FMFGainsboroughServiceProvider *)self udid];
  [v3 fm_safelyMapKey:@"udid" toObject:udid];

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
  lastActiveDate = [(FMFGainsboroughServiceProvider *)self lastActiveDate];
  v6 = lastActiveDate;
  if (lastActiveDate)
  {
    v7 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [lastActiveDate fm_epoch]);
  }

  else
  {
    v7 = &off_100062F28;
  }

  [v4 fm_safelyMapKey:@"lastActiveTime" toObject:v7];
  companionUDID = [(FMFGainsboroughServiceProvider *)self companionUDID];
  [v4 fm_safelyMapKey:@"udid" toObject:companionUDID];

  companionUDID2 = [(FMFGainsboroughServiceProvider *)self companionUDID];
  [v4 fm_safelyMapKey:@"pairingId" toObject:companionUDID2];

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