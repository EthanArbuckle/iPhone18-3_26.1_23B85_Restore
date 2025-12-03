@interface ServerDeviceInfo
+ (id)sharedInstance;
- (BOOL)shouldIncludeTheftAndLossCoverage:(id)coverage covered:(BOOL)covered;
- (id)_accessoryConfigurationDeviceInfo;
- (id)_constructPairedDevicesInfo;
- (id)_nonCriticalDeviceInfoForAccount:(id)account;
- (id)_nonVolatileDeviceInfoForAccount:(id)account;
- (id)_volatileDeviceInfoForAccount:(id)account completedFirstRegister:(BOOL)register;
- (id)completeDeviceInfoForAccount:(id)account accessory:(id)accessory;
- (id)deviceInfoForAccount:(id)account;
- (id)deviceInfoForAccount:(id)account accessory:(id)accessory;
- (id)identityDeviceInfoForAccount:(id)account;
- (id)lastKnownLocationDeviceInfoForAccount:(id)account accessory:(id)accessory;
- (id)locationDeviceInfoForAccount:(id)account;
- (id)locationDeviceInfoForAccount:(id)account accessory:(id)accessory;
- (void)_addOctagonStatusToDict:(id)dict;
@end

@implementation ServerDeviceInfo

- (id)_constructPairedDevicesInfo
{
  v2 = +[NSMutableArray array];
  v16 = +[FMDServiceProvider activeServiceProvider];
  accessoryRegistry = [v16 accessoryRegistry];
  allAccessories = [accessoryRegistry allAccessories];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = allAccessories;
  v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        deviceInfoForHostRegister = [*(*(&v18 + 1) + 8 * i) deviceInfoForHostRegister];
        v10 = [deviceInfoForHostRegister mutableCopy];

        v11 = [v10 valueForKey:@"udid"];
        v12 = +[FMDSharedConfigurationManager sharedInstance];
        v13 = [v12 theftAndLossCoverageWithUDID:v11];

        if (v13)
        {
          v14 = @"true";
        }

        else
        {
          v14 = @"false";
        }

        [v10 fm_safelyMapKey:@"brassStatus" toObject:v14];
        [v2 fm_safeAddObject:v10];
      }

      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  return v2;
}

- (id)_accessoryConfigurationDeviceInfo
{
  v2 = +[FMDExtConfigurationRegistry sharedInstance];
  v3 = objc_alloc_init(NSMutableDictionary);
  version = [v2 version];
  [v3 fm_safeSetObject:version forKey:@"accessoryTypeListVersion"];

  [v3 fm_safeSetObject:@"true" forKey:@"supportsDataUpdate"];
  v5 = +[(FMDServiceProvider *)FMDFMIPServiceProvider];
  detachNotificationManager = [v5 detachNotificationManager];
  notifWhenDetachedListVersion = [detachNotificationManager notifWhenDetachedListVersion];

  [v3 fm_safeSetObject:notifWhenDetachedListVersion forKey:@"nwdListVersion"];
  v8 = +[FMDMagSafeDataStore sharedInstance];
  readLostModeAccessoriesListVersion = [v8 readLostModeAccessoriesListVersion];

  [v3 fm_safeSetObject:readLostModeAccessoriesListVersion forKey:@"lostModeInfoVersion"];

  return v3;
}

+ (id)sharedInstance
{
  if (qword_100314640 != -1)
  {
    sub_100228834();
  }

  v3 = qword_100314638;

  return v3;
}

- (id)deviceInfoForAccount:(id)account
{
  if (account)
  {
    accountCopy = account;
    v5 = objc_alloc_init(NSMutableDictionary);
    v6 = [(ServerDeviceInfo *)self _nonVolatileDeviceInfoForAccount:accountCopy];
    [v5 addEntriesFromDictionary:v6];

    v7 = [(ServerDeviceInfo *)self _volatileDeviceInfoForAccount:accountCopy completedFirstRegister:1];
    [v5 addEntriesFromDictionary:v7];

    v8 = [(ServerDeviceInfo *)self _nonCriticalDeviceInfoForAccount:accountCopy];

    [v5 addEntriesFromDictionary:v8];
    _accessoryConfigurationDeviceInfo = [(ServerDeviceInfo *)self _accessoryConfigurationDeviceInfo];
    [v5 addEntriesFromDictionary:_accessoryConfigurationDeviceInfo];

    v10 = +[FMDPreferencesMgr deviceInfoOverrides];
    if (v10)
    {
      [v5 addEntriesFromDictionary:v10];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)locationDeviceInfoForAccount:(id)account
{
  v3 = [(ServerDeviceInfo *)self deviceInfoForAccount:account];
  v4 = +[FMDPreferencesMgr locationDeviceInfoOverrides];
  if (v4)
  {
    [v3 addEntriesFromDictionary:v4];
  }

  return v3;
}

- (id)identityDeviceInfoForAccount:(id)account
{
  accountCopy = account;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = +[FMDSystemConfig sharedInstance];
  deviceUDID = [v5 deviceUDID];
  [v4 fm_safelyMapKey:@"udid" toObject:deviceUDID];

  v7 = +[FMDDaemon sharedInstance];
  apsEnvironmentConstant = [accountCopy apsEnvironmentConstant];

  v9 = [v7 apsHandlerForEnvironment:apsEnvironmentConstant];

  apsToken = [v9 apsToken];
  [v4 fm_safelyMapKey:@"aps-token" toObject:apsToken];

  v11 = +[FMDSystemConfig sharedInstance];
  v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v11 alCapability]);
  [v4 fm_safelyMapKey:@"alCapability" toObject:v12];

  v13 = +[FMDSystemConfig sharedInstance];
  suinfoLastModifiedTimestamp = [v13 suinfoLastModifiedTimestamp];
  [v4 fm_safelyMapKey:@"pscSUILastModified" toObject:suinfoLastModifiedTimestamp];

  return v4;
}

- (id)deviceInfoForAccount:(id)account accessory:(id)accessory
{
  if (accessory)
  {
    deviceInfo = [accessory deviceInfo];
    v6 = [deviceInfo mutableCopy];

    [v6 fm_safelyMapKey:@"aps-token" toObject:@"TOKEN"];
    _accessoryConfigurationDeviceInfo = [(ServerDeviceInfo *)self _accessoryConfigurationDeviceInfo];
    [v6 addEntriesFromDictionary:_accessoryConfigurationDeviceInfo];
  }

  else
  {
    v6 = [(ServerDeviceInfo *)self deviceInfoForAccount:account];
  }

  return v6;
}

- (id)locationDeviceInfoForAccount:(id)account accessory:(id)accessory
{
  locationDeviceInfo = [accessory locationDeviceInfo];
  v5 = [locationDeviceInfo mutableCopy];

  return v5;
}

- (id)lastKnownLocationDeviceInfoForAccount:(id)account accessory:(id)accessory
{
  lastKnownLocationDeviceInfo = [accessory lastKnownLocationDeviceInfo];
  v5 = [lastKnownLocationDeviceInfo mutableCopy];

  return v5;
}

- (id)completeDeviceInfoForAccount:(id)account accessory:(id)accessory
{
  completeDeviceInfo = [accessory completeDeviceInfo];
  v5 = [completeDeviceInfo mutableCopy];

  [v5 fm_safelyMapKey:@"aps-token" toObject:@"TOKEN"];

  return v5;
}

- (id)_volatileDeviceInfoForAccount:(id)account completedFirstRegister:(BOOL)register
{
  registerCopy = register;
  accountCopy = account;
  v6 = objc_alloc_init(NSMutableDictionary);
  v7 = +[FMDSystemConfig sharedInstance];
  v8 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 isLocationServicesEnabled]);
  [v6 setObject:v8 forKeyedSubscript:@"locationServicesEnabled"];

  v9 = +[FMDSystemConfig sharedInstance];
  v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 isFMIPLocationServicesEnabled]);
  [v6 setObject:v10 forKeyedSubscript:@"fmipLS"];

  v11 = +[FMDSystemConfig sharedInstance];
  deviceName = [v11 deviceName];
  [v6 fm_safelyMapKey:@"deviceName" toObject:deviceName];

  v13 = +[FMDSystemConfig sharedInstance];
  timezone = [v13 timezone];
  [v6 fm_safelyMapKey:@"timezone" toObject:timezone];

  v15 = +[FMDSystemConfig sharedInstance];
  locale = [v15 locale];
  [v6 fm_safelyMapKey:@"locale" toObject:locale];

  v17 = objc_alloc_init(EmbeddedOSSupport);
  bioLockState = [(EmbeddedOSSupport *)v17 bioLockState];
  [v6 fm_safelyMapKey:@"bioLock" toObject:bioLockState];

  v19 = +[FMDDaemon sharedInstance];
  isFirstRunAfterBoot = [v19 isFirstRunAfterBoot];
  if (isFirstRunAfterBoot && registerCopy)
  {
    v21 = +[FMDSystemConfig sharedInstance];
    unlockState = [v21 unlockState];

    if (unlockState != 1)
    {
LABEL_4:
      v23 = +[FMDSystemConfig sharedInstance];
      baUUID = [v23 baUUID];
      goto LABEL_7;
    }
  }

  else
  {

    if (!isFirstRunAfterBoot)
    {
      goto LABEL_4;
    }
  }

  v23 = +[FMDSystemConfig sharedInstance];
  baUUID = [v23 fetchBaUUIDBeforeFirstRegister];
LABEL_7:
  v25 = baUUID;
  [v6 fm_safelyMapKey:@"baUUID" toObject:baUUID];

  v26 = +[FMDSystemConfig sharedInstance];
  v27 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v26 baRegistrationStatus]);
  [v6 fm_safelyMapKey:@"baStatus" toObject:v27];

  v28 = +[FMDLocalActivationLockInfoManager sharedInstance];
  maskedAppleIDValue = [v28 maskedAppleIDValue];

  v91 = maskedAppleIDValue;
  [v6 fm_safelyMapKey:@"maskedAppleID" toObject:maskedAppleIDValue];
  v30 = +[FMDLostModeManager sharedInstance];
  lostModeEnabled = [v30 lostModeEnabled];

  v32 = [NSNumber numberWithBool:lostModeEnabled];
  [v6 setObject:v32 forKeyedSubscript:@"lostModeEnabled"];

  v33 = +[FMDServiceProvider activeServiceProvider];
  locationTracker = [v33 locationTracker];

  v35 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [locationTracker trackingStatus]);
  [v6 setObject:v35 forKeyedSubscript:@"trackingStatus"];

  if ([locationTracker isTrackingOn])
  {
    v36 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [locationTracker trackNotifyEnabled]);
    [v6 setObject:v36 forKeyedSubscript:@"trackNotifyEnabled"];
  }

  v37 = +[FMDSystemConfig sharedInstance];
  v38 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v37 isFMIPLocationServicesEnabled]);
  [v6 setObject:v38 forKeyedSubscript:@"fmipLS"];

  v39 = +[FMDSystemConfig sharedInstance];
  v40 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v39 isLocationServicesEnabledForShareMyLocation]);
  [v6 setObject:v40 forKeyedSubscript:@"smlLS"];

  [v6 fm_safelyMapKey:@"fmipVersion" toObject:@"517"];
  [v6 fm_safelyMapKey:@"fmipBuildVersion" toObject:@"5.0"];
  username = [accountCopy username];
  [v6 fm_safelyMapKey:@"appleId" toObject:username];

  accountAddTime = [accountCopy accountAddTime];

  if (accountAddTime)
  {
    accountAddTime2 = [accountCopy accountAddTime];
    [accountAddTime2 timeIntervalSince1970];
    v45 = [NSNumber numberWithDouble:floor(v44)];
    [v6 fm_safelyMapKey:@"enableTS" toObject:v45];
  }

  v46 = +[FMDSystemConfig sharedInstance];
  allowsActivationLock = [v46 allowsActivationLock];

  v48 = [NSNumber numberWithBool:allowsActivationLock];
  [v6 fm_safelyMapKey:@"activationLock" toObject:v48];

  v49 = +[FMDSystemConfig sharedInstance];
  v50 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v49 hasCellularCapability]);
  [v6 setObject:v50 forKeyedSubscript:@"hasCellularCapability"];

  v51 = +[FMDSystemConfig sharedInstance];
  isPasscodeSet = [v51 isPasscodeSet];

  v53 = [NSNumber numberWithBool:isPasscodeSet];
  [v6 setObject:v53 forKeyedSubscript:@"passcodeIsSet"];

  v54 = +[FMDSystemConfig sharedInstance];
  currentPasscodeConstraintStr = [v54 currentPasscodeConstraintStr];
  [v6 fm_safelyMapKey:@"passcodeConstraint" toObject:currentPasscodeConstraintStr];

  if (isPasscodeSet)
  {
    v56 = +[FMDSystemConfig sharedInstance];
    v57 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v56 unlockState]);
    [v6 setObject:v57 forKeyedSubscript:@"unlockState"];
  }

  v58 = +[FMDSystemConfig sharedInstance];
  isPasscodeChangeRestricted = [v58 isPasscodeChangeRestricted];

  if (isPasscodeChangeRestricted)
  {
    [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:@"passcodeRestricted"];
  }

  _constructPairedDevicesInfo = [v90 _constructPairedDevicesInfo];
  [v6 setObject:_constructPairedDevicesInfo forKeyedSubscript:@"otherDevices"];
  v61 = +[FMSystemInfo sharedInstance];
  if (![v61 isInternalBuild])
  {

    goto LABEL_19;
  }

  v62 = [FMPreferencesUtil BOOLForKey:@"DisableRemoteAccessoryConfig" inDomain:kFMDNotBackedUpPrefDomain];

  if ((v62 & 1) == 0)
  {
LABEL_19:
    v63 = +[FMDServiceProvider activeServiceProvider];
    supportedAccessoryRegistry = [v63 supportedAccessoryRegistry];
    supportedAccessoriesVersion = [supportedAccessoryRegistry supportedAccessoriesVersion];

    [v6 fm_safelyMapKey:@"accConfigVersion" toObject:supportedAccessoriesVersion];
  }

  v66 = +[FMDSystemConfig sharedInstance];
  suinfoLastModifiedTimestamp = [v66 suinfoLastModifiedTimestamp];
  [v6 fm_safelyMapKey:@"pscSUILastModified" toObject:suinfoLastModifiedTimestamp];

  v68 = +[FMDSystemConfig sharedInstance];
  v69 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v68 alCapability]);
  [v6 fm_safelyMapKey:@"alCapability" toObject:v69];

  v70 = +[FMDSystemConfig sharedInstance];
  ecid = [v70 ecid];
  [v6 fm_safelyMapKey:@"ecid" toObject:ecid];

  v72 = +[FMDSystemConfig sharedInstance];
  chipId = [v72 chipId];
  [v6 fm_safelyMapKey:@"chipId" toObject:chipId];

  v74 = accountCopy;
  lastIdentityTime = [v74 lastIdentityTime];
  v76 = lastIdentityTime;
  if (lastIdentityTime)
  {
    [lastIdentityTime timeIntervalSince1970];
    v78 = [NSNumber numberWithDouble:v77 * 1000.0];
    [v6 setObject:v78 forKeyedSubscript:@"lastIdentityTime"];
  }

  lastUnregisterFailedTime = [v74 lastUnregisterFailedTime];
  v80 = lastUnregisterFailedTime;
  if (lastUnregisterFailedTime)
  {
    [lastUnregisterFailedTime timeIntervalSince1970];
    v82 = [NSNumber numberWithDouble:v81 * 1000.0];
    [v6 setObject:v82 forKeyedSubscript:@"lastUnlockActivationFailedTime"];
  }

  fmipEnableContext = [v74 fmipEnableContext];
  if (fmipEnableContext)
  {
    v84 = [NSNumber numberWithUnsignedInteger:fmipEnableContext];
    [v6 setObject:v84 forKeyedSubscript:@"fmipEnableReason"];
  }

  v85 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v74 lowBatteryLocateEnabled]);
  [v6 setObject:v85 forKeyedSubscript:@"lowBatteryLocate"];

  v86 = +[FMDSystemConfig sharedInstance];
  v87 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v86 isLowPowerModeEnabled]);
  [v6 setObject:v87 forKeyedSubscript:@"lowPowerMode"];

  return v6;
}

- (id)_nonVolatileDeviceInfoForAccount:(id)account
{
  accountCopy = account;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = +[FMDSystemConfig sharedInstance];
  idsDeviceID = [v5 idsDeviceID];
  [v4 fm_safelyMapKey:@"deviceDiscoveryId" toObject:idsDeviceID];

  v7 = +[FMDSystemConfig sharedInstance];
  deviceUDID = [v7 deviceUDID];
  [v4 fm_safelyMapKey:@"udid" toObject:deviceUDID];

  v9 = +[FMDSystemConfig sharedInstance];
  deviceClassString = [v9 deviceClassString];
  [v4 fm_safelyMapKey:@"deviceClass" toObject:deviceClassString];

  v11 = +[FMDSystemConfig sharedInstance];
  productType = [v11 productType];
  [v4 fm_safelyMapKey:@"productType" toObject:productType];

  v13 = +[FMDSystemConfig sharedInstance];
  buildVersion = [v13 buildVersion];
  [v4 fm_safelyMapKey:@"buildVersion" toObject:buildVersion];

  v15 = +[FMDSystemConfig sharedInstance];
  productVersion = [v15 productVersion];
  [v4 fm_safelyMapKey:@"productVersion" toObject:productVersion];

  v17 = +[FMDSystemConfig sharedInstance];
  platform = [v17 platform];
  [v4 fm_safelyMapKey:@"platform" toObject:platform];

  v19 = +[FMSystemInfo sharedInstance];
  v20 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v19 isInternalBuild]);
  [v4 fm_safelyMapKey:@"isInternal" toObject:v20];

  v21 = +[FMDSystemConfig sharedInstance];
  serialNumber = [v21 serialNumber];

  [v4 fm_safelyMapKey:@"serialNumber" toObject:serialNumber];
  v23 = +[FMDSharedConfigurationManager sharedInstance];
  v70 = serialNumber;
  LOBYTE(v19) = [v23 theftAndLossCoverageWithSerialNumber:serialNumber];

  if (v19)
  {
    v24 = @"true";
  }

  else
  {
    v24 = @"false";
  }

  [v4 fm_safelyMapKey:@"brassStatus" toObject:v24];
  v25 = +[FMDSystemConfig sharedInstance];
  mlbSerialNumber = [v25 mlbSerialNumber];
  [v4 fm_safelyMapKey:@"mlbSerialNumber" toObject:mlbSerialNumber];

  versionHistory = [accountCopy versionHistory];
  v28 = [versionHistory componentsJoinedByString:{@", "}];
  [v4 fm_safelyMapKey:@"versionHistory" toObject:v28];

  [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"supportsLostModeV2"];
  [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"findMyiPhone"];
  v29 = +[FMSystemInfo sharedInstance];
  if ([v29 isInternalBuild])
  {
    v30 = [FMPreferencesUtil BOOLForKey:@"SendSEID" inDomain:kFMDNotBackedUpPrefDomain];

    if (!v30)
    {
      goto LABEL_8;
    }

    v29 = +[FMDSystemConfig sharedInstance];
    secureElementId = [v29 secureElementId];
    [v4 fm_safelyMapKey:@"seid" toObject:secureElementId];
  }

LABEL_8:
  v32 = +[FMDSystemConfig sharedInstance];
  isRunningInRecovery = [v32 isRunningInRecovery];

  if ((isRunningInRecovery & 1) == 0)
  {
    v34 = +[FMDSystemConfig sharedInstance];
    v35 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v34 hasSecureElement]);
    [v4 fm_safelyMapKey:@"secureElement" toObject:v35];
  }

  v36 = +[FMDDaemon sharedInstance];
  apsEnvironmentConstant = [accountCopy apsEnvironmentConstant];
  v38 = [v36 apsHandlerForEnvironment:apsEnvironmentConstant];

  v69 = v38;
  apsToken = [v38 apsToken];
  [v4 fm_safelyMapKey:@"aps-token" toObject:apsToken];

  v40 = +[FMDSystemConfig sharedInstance];
  LODWORD(apsToken) = [v40 hasSecureElement];

  if (apsToken)
  {
    [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"hasSM1"];
  }

  v41 = +[FMDSystemConfig sharedInstance];
  hasNFC = [v41 hasNFC];

  if (hasNFC)
  {
    [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"hasSM2"];
  }

  v43 = +[FMDSystemConfig sharedInstance];
  v44 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v43 hasNFC]);
  [v4 fm_safelyMapKey:@"nfc" toObject:v44];

  v45 = +[FMDSystemConfig sharedInstance];
  deviceModel = [v45 deviceModel];
  [v4 fm_safelyMapKey:@"model" toObject:deviceModel];

  v47 = +[FMDSystemConfig sharedInstance];
  deviceRegion = [v47 deviceRegion];
  [v4 fm_safelyMapKey:@"region" toObject:deviceRegion];

  v49 = +[FMDSystemConfig sharedInstance];
  housingColor = [v49 housingColor];

  v51 = +[FMDSystemConfig sharedInstance];
  backOfEnclosureColor = [v51 backOfEnclosureColor];

  v53 = +[FMDSystemConfig sharedInstance];
  coverGlassColor = [v53 coverGlassColor];

  if ([housingColor isEqualToString:@"0"] && objc_msgSend(backOfEnclosureColor, "isEqualToString:", @"0") && (objc_msgSend(coverGlassColor, "isEqualToString:", @"0") & 1) != 0)
  {
    +[FMDSystemConfig sharedInstance];
    v56 = v55 = accountCopy;
    deviceColor = [v56 deviceColor];
    [v4 fm_safelyMapKey:@"deviceColor" toObject:deviceColor];

    v58 = +[FMDSystemConfig sharedInstance];
    deviceEnclosureColor = [v58 deviceEnclosureColor];
    [v4 fm_safelyMapKey:@"enclosureColor" toObject:deviceEnclosureColor];

    accountCopy = v55;
  }

  else
  {
    [v4 fm_safelyMapKey:@"coverGlassColor" toObject:coverGlassColor];
    [v4 fm_safelyMapKey:@"housingColor" toObject:housingColor];
    [v4 fm_safelyMapKey:@"backingColor" toObject:backOfEnclosureColor];
  }

  [accountCopy dsid];
  v61 = v60 = accountCopy;
  v62 = sub_100002F84(v61);

  v63 = [v62 base64EncodedStringWithOptions:0];
  [v4 fm_safelyMapKey:@"mid" toObject:v63];

  v64 = +[FMDSystemConfig sharedInstance];
  v65 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v64 isRoseCapable]);
  [v4 setObject:v65 forKeyedSubscript:@"roseCapable"];

  v66 = +[FMDSystemConfig sharedInstance];
  v67 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v66 deviceSupportsUltraLowPowerNetworking]);
  [v4 setObject:v67 forKeyedSubscript:@"ulpnCapable"];

  return v4;
}

- (id)_nonCriticalDeviceInfoForAccount:(id)account
{
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = objc_alloc_init(FMDBatteryInfo);
  dictionaryValue = [(FMDBatteryInfo *)v5 dictionaryValue];
  [v4 setValuesForKeysWithDictionary:dictionaryValue];

  v7 = +[FMDSystemConfig sharedInstance];
  v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 processIdentifier]);
  stringValue = [v8 stringValue];
  [v4 fm_safelyMapKey:@"processId" toObject:stringValue];

  v10 = +[FMDBLEStateOwner sharedInstance];
  blePowerStatus = [v10 blePowerStatus];
  [v4 setObject:blePowerStatus forKeyedSubscript:@"bleStatus"];

  [(ServerDeviceInfo *)self _addOctagonStatusToDict:v4];

  return v4;
}

- (BOOL)shouldIncludeTheftAndLossCoverage:(id)coverage covered:(BOOL)covered
{
  coveredCopy = covered;
  if ([coverage category] != 2)
  {
    return 0;
  }

  if (coveredCopy)
  {
    v5 = +[FMDSharedConfiguration sharedInstance];
    localeString = [v5 localeString];

    v7 = sub_100002880();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10022888C(localeString, v7);
    }

    v8 = +[FMDSharedConfigurationManager sharedInstance];
    [v8 downloadSharedConfigurationWithLocale:localeString reply:&stru_1002CF070];
  }

  v9 = +[FMDSharedConfiguration sharedInstance];
  v10 = [v9 entryForConfiguration:FMDSharedConfigurationKeyTheftAndLoss deviceClasses:@"Watch"];

  v11 = [v10 objectForKeyedSubscript:@"awarenessStrings"];
  v12 = sub_100002880();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_100228904(v11, v12);
  }

  isEnabled = [v11 isEnabled];
  return isEnabled;
}

- (void)_addOctagonStatusToDict:(id)dict
{
  dictCopy = dict;
  v4 = +[FMDSPStatusUtil sharedInstance];
  beaconZoneCreationDate = [v4 beaconZoneCreationDate];

  [beaconZoneCreationDate timeIntervalSince1970];
  v5 = [NSNumber numberWithDouble:?];
  [dictCopy fm_safelyMapKey:@"bcnZoneTime" toObject:v5];
  if (beaconZoneCreationDate)
  {
    v6 = @"created";
  }

  else
  {
    v6 = @"notCreated";
  }

  [dictCopy setObject:v6 forKeyedSubscript:@"bcnZoneStatus"];
  v7 = +[FMDSPStatusUtil sharedInstance];
  beaconZoneCreationErrorCode = [v7 beaconZoneCreationErrorCode];
  [dictCopy fm_safelyMapKey:@"bcnZoneErrorCode" toObject:beaconZoneCreationErrorCode];

  v9 = +[FMDSPStatusUtil sharedInstance];
  beaconLastKeyRollDate = [v9 beaconLastKeyRollDate];
  [beaconLastKeyRollDate timeIntervalSince1970];
  v11 = [NSNumber numberWithDouble:?];

  [dictCopy fm_safelyMapKey:@"bcnKeyLastGenTime" toObject:v11];
  v12 = +[FMDSPStatusUtil sharedInstance];
  octStatus = [v12 octStatus];
  [dictCopy fm_safelyMapKey:@"octStatus" toObject:octStatus];

  v14 = +[FMDSPStatusUtil sharedInstance];
  octStatusError = [v14 octStatusError];
  [dictCopy fm_safelyMapKey:@"octStatusError" toObject:octStatusError];

  v16 = +[FMDSPStatusUtil sharedInstance];
  mteStatus = [v16 mteStatus];
  [dictCopy fm_safelyMapKey:@"mteStatus" toObject:mteStatus];

  v18 = +[FMDSPStatusUtil sharedInstance];
  mteStatusError = [v18 mteStatusError];
  [dictCopy fm_safelyMapKey:@"mteStatusError" toObject:mteStatusError];
}

@end