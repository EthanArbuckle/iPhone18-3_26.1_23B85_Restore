@interface ServerDeviceInfo
+ (id)sharedInstance;
- (BOOL)shouldIncludeTheftAndLossCoverage:(id)a3 covered:(BOOL)a4;
- (id)_accessoryConfigurationDeviceInfo;
- (id)_constructPairedDevicesInfo;
- (id)_nonCriticalDeviceInfoForAccount:(id)a3;
- (id)_nonVolatileDeviceInfoForAccount:(id)a3;
- (id)_volatileDeviceInfoForAccount:(id)a3 completedFirstRegister:(BOOL)a4;
- (id)completeDeviceInfoForAccount:(id)a3 accessory:(id)a4;
- (id)deviceInfoForAccount:(id)a3;
- (id)deviceInfoForAccount:(id)a3 accessory:(id)a4;
- (id)identityDeviceInfoForAccount:(id)a3;
- (id)lastKnownLocationDeviceInfoForAccount:(id)a3 accessory:(id)a4;
- (id)locationDeviceInfoForAccount:(id)a3;
- (id)locationDeviceInfoForAccount:(id)a3 accessory:(id)a4;
- (void)_addOctagonStatusToDict:(id)a3;
@end

@implementation ServerDeviceInfo

- (id)_constructPairedDevicesInfo
{
  v2 = +[NSMutableArray array];
  v16 = +[FMDServiceProvider activeServiceProvider];
  v3 = [v16 accessoryRegistry];
  v4 = [v3 allAccessories];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v4;
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

        v9 = [*(*(&v18 + 1) + 8 * i) deviceInfoForHostRegister];
        v10 = [v9 mutableCopy];

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
  v4 = [v2 version];
  [v3 fm_safeSetObject:v4 forKey:@"accessoryTypeListVersion"];

  [v3 fm_safeSetObject:@"true" forKey:@"supportsDataUpdate"];
  v5 = +[(FMDServiceProvider *)FMDFMIPServiceProvider];
  v6 = [v5 detachNotificationManager];
  v7 = [v6 notifWhenDetachedListVersion];

  [v3 fm_safeSetObject:v7 forKey:@"nwdListVersion"];
  v8 = +[FMDMagSafeDataStore sharedInstance];
  v9 = [v8 readLostModeAccessoriesListVersion];

  [v3 fm_safeSetObject:v9 forKey:@"lostModeInfoVersion"];

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

- (id)deviceInfoForAccount:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = objc_alloc_init(NSMutableDictionary);
    v6 = [(ServerDeviceInfo *)self _nonVolatileDeviceInfoForAccount:v4];
    [v5 addEntriesFromDictionary:v6];

    v7 = [(ServerDeviceInfo *)self _volatileDeviceInfoForAccount:v4 completedFirstRegister:1];
    [v5 addEntriesFromDictionary:v7];

    v8 = [(ServerDeviceInfo *)self _nonCriticalDeviceInfoForAccount:v4];

    [v5 addEntriesFromDictionary:v8];
    v9 = [(ServerDeviceInfo *)self _accessoryConfigurationDeviceInfo];
    [v5 addEntriesFromDictionary:v9];

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

- (id)locationDeviceInfoForAccount:(id)a3
{
  v3 = [(ServerDeviceInfo *)self deviceInfoForAccount:a3];
  v4 = +[FMDPreferencesMgr locationDeviceInfoOverrides];
  if (v4)
  {
    [v3 addEntriesFromDictionary:v4];
  }

  return v3;
}

- (id)identityDeviceInfoForAccount:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = +[FMDSystemConfig sharedInstance];
  v6 = [v5 deviceUDID];
  [v4 fm_safelyMapKey:@"udid" toObject:v6];

  v7 = +[FMDDaemon sharedInstance];
  v8 = [v3 apsEnvironmentConstant];

  v9 = [v7 apsHandlerForEnvironment:v8];

  v10 = [v9 apsToken];
  [v4 fm_safelyMapKey:@"aps-token" toObject:v10];

  v11 = +[FMDSystemConfig sharedInstance];
  v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v11 alCapability]);
  [v4 fm_safelyMapKey:@"alCapability" toObject:v12];

  v13 = +[FMDSystemConfig sharedInstance];
  v14 = [v13 suinfoLastModifiedTimestamp];
  [v4 fm_safelyMapKey:@"pscSUILastModified" toObject:v14];

  return v4;
}

- (id)deviceInfoForAccount:(id)a3 accessory:(id)a4
{
  if (a4)
  {
    v5 = [a4 deviceInfo];
    v6 = [v5 mutableCopy];

    [v6 fm_safelyMapKey:@"aps-token" toObject:@"TOKEN"];
    v7 = [(ServerDeviceInfo *)self _accessoryConfigurationDeviceInfo];
    [v6 addEntriesFromDictionary:v7];
  }

  else
  {
    v6 = [(ServerDeviceInfo *)self deviceInfoForAccount:a3];
  }

  return v6;
}

- (id)locationDeviceInfoForAccount:(id)a3 accessory:(id)a4
{
  v4 = [a4 locationDeviceInfo];
  v5 = [v4 mutableCopy];

  return v5;
}

- (id)lastKnownLocationDeviceInfoForAccount:(id)a3 accessory:(id)a4
{
  v4 = [a4 lastKnownLocationDeviceInfo];
  v5 = [v4 mutableCopy];

  return v5;
}

- (id)completeDeviceInfoForAccount:(id)a3 accessory:(id)a4
{
  v4 = [a4 completeDeviceInfo];
  v5 = [v4 mutableCopy];

  [v5 fm_safelyMapKey:@"aps-token" toObject:@"TOKEN"];

  return v5;
}

- (id)_volatileDeviceInfoForAccount:(id)a3 completedFirstRegister:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = objc_alloc_init(NSMutableDictionary);
  v7 = +[FMDSystemConfig sharedInstance];
  v8 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 isLocationServicesEnabled]);
  [v6 setObject:v8 forKeyedSubscript:@"locationServicesEnabled"];

  v9 = +[FMDSystemConfig sharedInstance];
  v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 isFMIPLocationServicesEnabled]);
  [v6 setObject:v10 forKeyedSubscript:@"fmipLS"];

  v11 = +[FMDSystemConfig sharedInstance];
  v12 = [v11 deviceName];
  [v6 fm_safelyMapKey:@"deviceName" toObject:v12];

  v13 = +[FMDSystemConfig sharedInstance];
  v14 = [v13 timezone];
  [v6 fm_safelyMapKey:@"timezone" toObject:v14];

  v15 = +[FMDSystemConfig sharedInstance];
  v16 = [v15 locale];
  [v6 fm_safelyMapKey:@"locale" toObject:v16];

  v17 = objc_alloc_init(EmbeddedOSSupport);
  v18 = [(EmbeddedOSSupport *)v17 bioLockState];
  [v6 fm_safelyMapKey:@"bioLock" toObject:v18];

  v19 = +[FMDDaemon sharedInstance];
  v20 = [v19 isFirstRunAfterBoot];
  if (v20 && v4)
  {
    v21 = +[FMDSystemConfig sharedInstance];
    v22 = [v21 unlockState];

    if (v22 != 1)
    {
LABEL_4:
      v23 = +[FMDSystemConfig sharedInstance];
      v24 = [v23 baUUID];
      goto LABEL_7;
    }
  }

  else
  {

    if (!v20)
    {
      goto LABEL_4;
    }
  }

  v23 = +[FMDSystemConfig sharedInstance];
  v24 = [v23 fetchBaUUIDBeforeFirstRegister];
LABEL_7:
  v25 = v24;
  [v6 fm_safelyMapKey:@"baUUID" toObject:v24];

  v26 = +[FMDSystemConfig sharedInstance];
  v27 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v26 baRegistrationStatus]);
  [v6 fm_safelyMapKey:@"baStatus" toObject:v27];

  v28 = +[FMDLocalActivationLockInfoManager sharedInstance];
  v29 = [v28 maskedAppleIDValue];

  v91 = v29;
  [v6 fm_safelyMapKey:@"maskedAppleID" toObject:v29];
  v30 = +[FMDLostModeManager sharedInstance];
  v31 = [v30 lostModeEnabled];

  v32 = [NSNumber numberWithBool:v31];
  [v6 setObject:v32 forKeyedSubscript:@"lostModeEnabled"];

  v33 = +[FMDServiceProvider activeServiceProvider];
  v34 = [v33 locationTracker];

  v35 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v34 trackingStatus]);
  [v6 setObject:v35 forKeyedSubscript:@"trackingStatus"];

  if ([v34 isTrackingOn])
  {
    v36 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v34 trackNotifyEnabled]);
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
  v41 = [v5 username];
  [v6 fm_safelyMapKey:@"appleId" toObject:v41];

  v42 = [v5 accountAddTime];

  if (v42)
  {
    v43 = [v5 accountAddTime];
    [v43 timeIntervalSince1970];
    v45 = [NSNumber numberWithDouble:floor(v44)];
    [v6 fm_safelyMapKey:@"enableTS" toObject:v45];
  }

  v46 = +[FMDSystemConfig sharedInstance];
  v47 = [v46 allowsActivationLock];

  v48 = [NSNumber numberWithBool:v47];
  [v6 fm_safelyMapKey:@"activationLock" toObject:v48];

  v49 = +[FMDSystemConfig sharedInstance];
  v50 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v49 hasCellularCapability]);
  [v6 setObject:v50 forKeyedSubscript:@"hasCellularCapability"];

  v51 = +[FMDSystemConfig sharedInstance];
  v52 = [v51 isPasscodeSet];

  v53 = [NSNumber numberWithBool:v52];
  [v6 setObject:v53 forKeyedSubscript:@"passcodeIsSet"];

  v54 = +[FMDSystemConfig sharedInstance];
  v55 = [v54 currentPasscodeConstraintStr];
  [v6 fm_safelyMapKey:@"passcodeConstraint" toObject:v55];

  if (v52)
  {
    v56 = +[FMDSystemConfig sharedInstance];
    v57 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v56 unlockState]);
    [v6 setObject:v57 forKeyedSubscript:@"unlockState"];
  }

  v58 = +[FMDSystemConfig sharedInstance];
  v59 = [v58 isPasscodeChangeRestricted];

  if (v59)
  {
    [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:@"passcodeRestricted"];
  }

  v60 = [v90 _constructPairedDevicesInfo];
  [v6 setObject:v60 forKeyedSubscript:@"otherDevices"];
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
    v64 = [v63 supportedAccessoryRegistry];
    v65 = [v64 supportedAccessoriesVersion];

    [v6 fm_safelyMapKey:@"accConfigVersion" toObject:v65];
  }

  v66 = +[FMDSystemConfig sharedInstance];
  v67 = [v66 suinfoLastModifiedTimestamp];
  [v6 fm_safelyMapKey:@"pscSUILastModified" toObject:v67];

  v68 = +[FMDSystemConfig sharedInstance];
  v69 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v68 alCapability]);
  [v6 fm_safelyMapKey:@"alCapability" toObject:v69];

  v70 = +[FMDSystemConfig sharedInstance];
  v71 = [v70 ecid];
  [v6 fm_safelyMapKey:@"ecid" toObject:v71];

  v72 = +[FMDSystemConfig sharedInstance];
  v73 = [v72 chipId];
  [v6 fm_safelyMapKey:@"chipId" toObject:v73];

  v74 = v5;
  v75 = [v74 lastIdentityTime];
  v76 = v75;
  if (v75)
  {
    [v75 timeIntervalSince1970];
    v78 = [NSNumber numberWithDouble:v77 * 1000.0];
    [v6 setObject:v78 forKeyedSubscript:@"lastIdentityTime"];
  }

  v79 = [v74 lastUnregisterFailedTime];
  v80 = v79;
  if (v79)
  {
    [v79 timeIntervalSince1970];
    v82 = [NSNumber numberWithDouble:v81 * 1000.0];
    [v6 setObject:v82 forKeyedSubscript:@"lastUnlockActivationFailedTime"];
  }

  v83 = [v74 fmipEnableContext];
  if (v83)
  {
    v84 = [NSNumber numberWithUnsignedInteger:v83];
    [v6 setObject:v84 forKeyedSubscript:@"fmipEnableReason"];
  }

  v85 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v74 lowBatteryLocateEnabled]);
  [v6 setObject:v85 forKeyedSubscript:@"lowBatteryLocate"];

  v86 = +[FMDSystemConfig sharedInstance];
  v87 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v86 isLowPowerModeEnabled]);
  [v6 setObject:v87 forKeyedSubscript:@"lowPowerMode"];

  return v6;
}

- (id)_nonVolatileDeviceInfoForAccount:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = +[FMDSystemConfig sharedInstance];
  v6 = [v5 idsDeviceID];
  [v4 fm_safelyMapKey:@"deviceDiscoveryId" toObject:v6];

  v7 = +[FMDSystemConfig sharedInstance];
  v8 = [v7 deviceUDID];
  [v4 fm_safelyMapKey:@"udid" toObject:v8];

  v9 = +[FMDSystemConfig sharedInstance];
  v10 = [v9 deviceClassString];
  [v4 fm_safelyMapKey:@"deviceClass" toObject:v10];

  v11 = +[FMDSystemConfig sharedInstance];
  v12 = [v11 productType];
  [v4 fm_safelyMapKey:@"productType" toObject:v12];

  v13 = +[FMDSystemConfig sharedInstance];
  v14 = [v13 buildVersion];
  [v4 fm_safelyMapKey:@"buildVersion" toObject:v14];

  v15 = +[FMDSystemConfig sharedInstance];
  v16 = [v15 productVersion];
  [v4 fm_safelyMapKey:@"productVersion" toObject:v16];

  v17 = +[FMDSystemConfig sharedInstance];
  v18 = [v17 platform];
  [v4 fm_safelyMapKey:@"platform" toObject:v18];

  v19 = +[FMSystemInfo sharedInstance];
  v20 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v19 isInternalBuild]);
  [v4 fm_safelyMapKey:@"isInternal" toObject:v20];

  v21 = +[FMDSystemConfig sharedInstance];
  v22 = [v21 serialNumber];

  [v4 fm_safelyMapKey:@"serialNumber" toObject:v22];
  v23 = +[FMDSharedConfigurationManager sharedInstance];
  v70 = v22;
  LOBYTE(v19) = [v23 theftAndLossCoverageWithSerialNumber:v22];

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
  v26 = [v25 mlbSerialNumber];
  [v4 fm_safelyMapKey:@"mlbSerialNumber" toObject:v26];

  v27 = [v3 versionHistory];
  v28 = [v27 componentsJoinedByString:{@", "}];
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
    v31 = [v29 secureElementId];
    [v4 fm_safelyMapKey:@"seid" toObject:v31];
  }

LABEL_8:
  v32 = +[FMDSystemConfig sharedInstance];
  v33 = [v32 isRunningInRecovery];

  if ((v33 & 1) == 0)
  {
    v34 = +[FMDSystemConfig sharedInstance];
    v35 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v34 hasSecureElement]);
    [v4 fm_safelyMapKey:@"secureElement" toObject:v35];
  }

  v36 = +[FMDDaemon sharedInstance];
  v37 = [v3 apsEnvironmentConstant];
  v38 = [v36 apsHandlerForEnvironment:v37];

  v69 = v38;
  v39 = [v38 apsToken];
  [v4 fm_safelyMapKey:@"aps-token" toObject:v39];

  v40 = +[FMDSystemConfig sharedInstance];
  LODWORD(v39) = [v40 hasSecureElement];

  if (v39)
  {
    [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"hasSM1"];
  }

  v41 = +[FMDSystemConfig sharedInstance];
  v42 = [v41 hasNFC];

  if (v42)
  {
    [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"hasSM2"];
  }

  v43 = +[FMDSystemConfig sharedInstance];
  v44 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v43 hasNFC]);
  [v4 fm_safelyMapKey:@"nfc" toObject:v44];

  v45 = +[FMDSystemConfig sharedInstance];
  v46 = [v45 deviceModel];
  [v4 fm_safelyMapKey:@"model" toObject:v46];

  v47 = +[FMDSystemConfig sharedInstance];
  v48 = [v47 deviceRegion];
  [v4 fm_safelyMapKey:@"region" toObject:v48];

  v49 = +[FMDSystemConfig sharedInstance];
  v50 = [v49 housingColor];

  v51 = +[FMDSystemConfig sharedInstance];
  v52 = [v51 backOfEnclosureColor];

  v53 = +[FMDSystemConfig sharedInstance];
  v54 = [v53 coverGlassColor];

  if ([v50 isEqualToString:@"0"] && objc_msgSend(v52, "isEqualToString:", @"0") && (objc_msgSend(v54, "isEqualToString:", @"0") & 1) != 0)
  {
    +[FMDSystemConfig sharedInstance];
    v56 = v55 = v3;
    v57 = [v56 deviceColor];
    [v4 fm_safelyMapKey:@"deviceColor" toObject:v57];

    v58 = +[FMDSystemConfig sharedInstance];
    v59 = [v58 deviceEnclosureColor];
    [v4 fm_safelyMapKey:@"enclosureColor" toObject:v59];

    v3 = v55;
  }

  else
  {
    [v4 fm_safelyMapKey:@"coverGlassColor" toObject:v54];
    [v4 fm_safelyMapKey:@"housingColor" toObject:v50];
    [v4 fm_safelyMapKey:@"backingColor" toObject:v52];
  }

  [v3 dsid];
  v61 = v60 = v3;
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

- (id)_nonCriticalDeviceInfoForAccount:(id)a3
{
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = objc_alloc_init(FMDBatteryInfo);
  v6 = [(FMDBatteryInfo *)v5 dictionaryValue];
  [v4 setValuesForKeysWithDictionary:v6];

  v7 = +[FMDSystemConfig sharedInstance];
  v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 processIdentifier]);
  v9 = [v8 stringValue];
  [v4 fm_safelyMapKey:@"processId" toObject:v9];

  v10 = +[FMDBLEStateOwner sharedInstance];
  v11 = [v10 blePowerStatus];
  [v4 setObject:v11 forKeyedSubscript:@"bleStatus"];

  [(ServerDeviceInfo *)self _addOctagonStatusToDict:v4];

  return v4;
}

- (BOOL)shouldIncludeTheftAndLossCoverage:(id)a3 covered:(BOOL)a4
{
  v4 = a4;
  if ([a3 category] != 2)
  {
    return 0;
  }

  if (v4)
  {
    v5 = +[FMDSharedConfiguration sharedInstance];
    v6 = [v5 localeString];

    v7 = sub_100002880();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10022888C(v6, v7);
    }

    v8 = +[FMDSharedConfigurationManager sharedInstance];
    [v8 downloadSharedConfigurationWithLocale:v6 reply:&stru_1002CF070];
  }

  v9 = +[FMDSharedConfiguration sharedInstance];
  v10 = [v9 entryForConfiguration:FMDSharedConfigurationKeyTheftAndLoss deviceClasses:@"Watch"];

  v11 = [v10 objectForKeyedSubscript:@"awarenessStrings"];
  v12 = sub_100002880();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_100228904(v11, v12);
  }

  v13 = [v11 isEnabled];
  return v13;
}

- (void)_addOctagonStatusToDict:(id)a3
{
  v3 = a3;
  v4 = +[FMDSPStatusUtil sharedInstance];
  v20 = [v4 beaconZoneCreationDate];

  [v20 timeIntervalSince1970];
  v5 = [NSNumber numberWithDouble:?];
  [v3 fm_safelyMapKey:@"bcnZoneTime" toObject:v5];
  if (v20)
  {
    v6 = @"created";
  }

  else
  {
    v6 = @"notCreated";
  }

  [v3 setObject:v6 forKeyedSubscript:@"bcnZoneStatus"];
  v7 = +[FMDSPStatusUtil sharedInstance];
  v8 = [v7 beaconZoneCreationErrorCode];
  [v3 fm_safelyMapKey:@"bcnZoneErrorCode" toObject:v8];

  v9 = +[FMDSPStatusUtil sharedInstance];
  v10 = [v9 beaconLastKeyRollDate];
  [v10 timeIntervalSince1970];
  v11 = [NSNumber numberWithDouble:?];

  [v3 fm_safelyMapKey:@"bcnKeyLastGenTime" toObject:v11];
  v12 = +[FMDSPStatusUtil sharedInstance];
  v13 = [v12 octStatus];
  [v3 fm_safelyMapKey:@"octStatus" toObject:v13];

  v14 = +[FMDSPStatusUtil sharedInstance];
  v15 = [v14 octStatusError];
  [v3 fm_safelyMapKey:@"octStatusError" toObject:v15];

  v16 = +[FMDSPStatusUtil sharedInstance];
  v17 = [v16 mteStatus];
  [v3 fm_safelyMapKey:@"mteStatus" toObject:v17];

  v18 = +[FMDSPStatusUtil sharedInstance];
  v19 = [v18 mteStatusError];
  [v3 fm_safelyMapKey:@"mteStatusError" toObject:v19];
}

@end