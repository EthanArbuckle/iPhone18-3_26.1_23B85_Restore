@interface MIBUDeviceController
+ (id)sharedInstance;
- (BOOL)_isD5x;
- (BOOL)_readBTFWOKFlagFromIOPMUService:(id *)service;
- (BOOL)_readLPMFlagFromIOPMUService:(id *)service;
- (BOOL)_updateIOPMUBootLPMCtrl;
- (BOOL)isActivated:(id *)activated;
- (BOOL)isInBoxUpdateMode;
- (BOOL)isInDiagnosticMode;
- (BOOL)isInitialBuddySetupComplete;
- (BOOL)isLPMSet:(id *)set;
- (BOOL)isOnLockScreen;
- (BOOL)setSystemTime:(int64_t)time;
- (BOOL)setToLPMWithOptions:(id)options error:(id *)error;
- (BOOL)shutdownInLPM;
- (BOOL)wakedUpFromLPM;
- (MIBUDeviceController)init;
- (id)_batteryVirtualTemperature;
- (id)_dataFromInt32:(unsigned int)int32;
- (id)_dataFromInt8:(unsigned __int8)int8;
- (id)_dictFromSMCKeyMapping:(id)mapping;
- (id)_dictFromTmpSensorKeyMapping:(id)mapping;
- (id)_smcHelper;
- (id)batteryDetails;
- (id)buildVersion;
- (id)getBatteryLevel;
- (id)osVersion;
- (id)thermalDetails;
- (int64_t)thermalPressureLevel;
- (unsigned)_findServicePmuPrimary;
- (void)_writeSMCKey:(id)key withData:(id)data usingHelper:(id)helper andReadInterval:(id)interval andReadbackData:(id)readbackData error:(id *)error;
- (void)disableCarrierMode;
- (void)enableCarrierMode;
- (void)reboot;
- (void)setShelfLifeMode;
- (void)shutdown;
@end

@implementation MIBUDeviceController

- (MIBUDeviceController)init
{
  v5.receiver = self;
  v5.super_class = MIBUDeviceController;
  v2 = [(MIBUDeviceController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MIBUDeviceController *)v2 setBatteryLimitToken:0];
  }

  return v3;
}

+ (id)sharedInstance
{
  if (qword_1000B8400 != -1)
  {
    sub_10005D174();
  }

  v3 = qword_1000B83F8;

  return v3;
}

- (BOOL)isInBoxUpdateMode
{
  if (os_variant_has_internal_content() && (+[MIBUTestPreferences sharedInstance](MIBUTestPreferences, "sharedInstance"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 inBoxUpdateMode], v3, v4))
  {
    v5 = +[MIBUTestPreferences sharedInstance];
    inBoxUpdateMode = [v5 inBoxUpdateMode];

    if (qword_1000B84A8[0] != -1)
    {
      sub_10005D188();
    }

    v7 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      v13[0] = 67109120;
      v13[1] = inBoxUpdateMode;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Overriding InBoxUpdateMode = %d", v13, 8u);
    }
  }

  else
  {
    v8 = +[MIBUCertHelper SUCertPresent];
    v9 = [(MIBUDeviceController *)self isActivated:0];
    if ([(MIBUDeviceController *)self isOnLockScreen])
    {
      v10 = ![(MIBUDeviceController *)self isInitialBuddySetupComplete];
    }

    else
    {
      LOBYTE(v10) = 0;
    }

    v11 = v10 & (v9 ^ 1);
    if (v8)
    {
      LOBYTE(inBoxUpdateMode) = v11;
    }

    else
    {
      LOBYTE(inBoxUpdateMode) = 0;
    }
  }

  return inBoxUpdateMode;
}

- (BOOL)isInDiagnosticMode
{
  v2 = [MIBUDefaultPreferences objectForKey:@"CurrentOperation"];
  v3 = [v2 integerValue] == 2;

  return v3;
}

- (BOOL)isActivated:(id *)activated
{
  if (os_variant_has_internal_content())
  {
    v4 = +[MIBUTestPreferences sharedInstance];
    isActivated = [v4 isActivated];

    if (isActivated)
    {
      v6 = +[MIBUTestPreferences sharedInstance];
      isActivated2 = [v6 isActivated];
      bOOLValue = [isActivated2 BOOLValue];

      if (qword_1000B84A8[0] != -1)
      {
        sub_10005D19C();
      }

      v9 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v15 = bOOLValue;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Overrding isActivated = %d", buf, 8u);
      }

      v10 = 0;
      v11 = 0;
      if (!activated)
      {
        goto LABEL_12;
      }

LABEL_11:
      v12 = v11;
      *activated = v11;
      goto LABEL_12;
    }
  }

  v10 = MAEGetActivationStateWithError();
  v11 = 0;
  if (!v11)
  {
    LOBYTE(bOOLValue) = [v10 isEqualToString:kMAActivationStateActivated];
    if (!activated)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (qword_1000B84A8[0] != -1)
  {
    sub_10005D1B0();
  }

  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    sub_10005D1D8();
  }

  LOBYTE(bOOLValue) = 0;
  if (activated)
  {
    goto LABEL_11;
  }

LABEL_12:

  return bOOLValue;
}

- (BOOL)isInitialBuddySetupComplete
{
  if (os_variant_has_internal_content() && (+[MIBUTestPreferences sharedInstance](MIBUTestPreferences, "sharedInstance"), v2 = objc_claimAutoreleasedReturnValue(), [v2 initialBuddySetupComplete], v3 = objc_claimAutoreleasedReturnValue(), v3, v2, v3))
  {
    v4 = +[MIBUTestPreferences sharedInstance];
    initialBuddySetupComplete = [v4 initialBuddySetupComplete];
    byte_1000B8408 = [initialBuddySetupComplete BOOLValue];

    if (qword_1000B84A8[0] != -1)
    {
      sub_10005D248();
    }

    v6 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109120;
      v9[1] = byte_1000B8408;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Overrding InitialBuddySetupComplete = %d", v9, 8u);
    }

    HasCompletedInitialRun = byte_1000B8408;
  }

  else
  {
    HasCompletedInitialRun = BYSetupAssistantHasCompletedInitialRun();
    byte_1000B8408 = HasCompletedInitialRun;
  }

  return HasCompletedInitialRun & 1;
}

- (BOOL)isOnLockScreen
{
  if (os_variant_has_internal_content() && (+[MIBUTestPreferences sharedInstance](MIBUTestPreferences, "sharedInstance"), v3 = objc_claimAutoreleasedReturnValue(), [v3 isOnLockScreen], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    v5 = +[MIBUTestPreferences sharedInstance];
    isOnLockScreen = [v5 isOnLockScreen];
    bOOLValue = [isOnLockScreen BOOLValue];

    if (qword_1000B84A8[0] != -1)
    {
      sub_10005D25C();
    }

    v8 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v12 = bOOLValue;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Overrding OnLockScreen = %d", buf, 8u);
    }
  }

  else if ([(MIBUDeviceController *)self isInDiagnosticMode])
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005D270();
    }

    v9 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Diagnostic mode detected. Skipping lock screen check", buf, 2u);
    }

    LOBYTE(bOOLValue) = 1;
  }

  else
  {
    SBSSpringBoardBlockableServerPort();
    SBGetScreenLockStatus();
    LOBYTE(bOOLValue) = 0;
  }

  return bOOLValue;
}

- (BOOL)setSystemTime:(int64_t)time
{
  *&v6.tv_usec = 0;
  v7 = 0;
  v6.tv_sec = time;
  time(&v7);
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005D284();
  }

  v4 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v9 = v7;
    v10 = 2048;
    timeCopy = time;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Current system time is %lu; setting system time to %lu", buf, 0x16u);
  }

  return settimeofday(&v6, 0) == 0;
}

- (id)getBatteryLevel
{
  if (IOPSGetPercentRemaining())
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005D2AC();
    }

    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_10005D2D4();
    }

    v2 = -1.0;
  }

  else
  {
    v2 = 100;
  }

  v3 = [NSNumber numberWithDouble:v2];

  return v3;
}

- (void)setShelfLifeMode
{
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005D348();
  }

  v3 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting Device to Shelf Life Mode ...", buf, 2u);
  }

  _smcHelper = [(MIBUDeviceController *)self _smcHelper];
  if (_smcHelper)
  {
    if ([(MIBUDeviceController *)self _isD5x])
    {
      sub_10005D3EC();
    }

    else if ([(MIBUDeviceController *)self _isN104])
    {
      sub_10005D35C();
    }

    else
    {
      v5 = [(MIBUDeviceController *)self _dataFromInt8:1];
      v6 = [(MIBUDeviceController *)self _dataFromInt8:2];
      v8 = 0;
      [(MIBUDeviceController *)self _writeSMCKey:@"BCSL" withData:v5 usingHelper:_smcHelper andReadInterval:0 andReadbackData:v6 error:&v8];
      v7 = v8;
    }
  }

  else
  {
    sub_10005D47C();
  }
}

- (void)enableCarrierMode
{
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005D510();
  }

  v3 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Limiting battery charge levels...", buf, 2u);
  }

  if (IOPSLimitBatteryLevelRegister())
  {
    sub_10005D524();
  }

  else
  {
    [(MIBUDeviceController *)self setBatteryLimitToken:0];
    if (IOPSLimitBatteryLevel())
    {
      sub_10005D5E8();
    }
  }
}

- (void)disableCarrierMode
{
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005D6AC();
  }

  v3 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Disabling Battery charge levels ...", v12, 2u);
  }

  if ([(MIBUDeviceController *)self batteryLimitToken])
  {
    [(MIBUDeviceController *)self batteryLimitToken];
    if (IOPSLimitBatteryLevelCancel())
    {
      sub_10005D6C0();
    }

    else
    {
      [(MIBUDeviceController *)self setBatteryLimitToken:0];
    }
  }

  else
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005D784();
    }

    v4 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_10005D7AC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }
}

- (void)reboot
{
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005D7E4();
  }

  v2 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Rebooting...", v5, 2u);
  }

  v3 = [[FBSShutdownOptions alloc] initWithReason:@"Rebooting device from inboxupdaterd."];
  [v3 setRebootType:1];
  [v3 setSource:1];
  v4 = +[FBSSystemService sharedService];
  [v4 shutdownWithOptions:v3];
}

- (void)shutdown
{
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005D7F8();
  }

  v2 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Shutting down...", v5, 2u);
  }

  v3 = [[FBSShutdownOptions alloc] initWithReason:@"Shutting down device from inboxupdaterd."];
  [v3 setSource:1];
  v4 = +[FBSSystemService sharedService];
  [v4 shutdownWithOptions:v3];
}

- (BOOL)shutdownInLPM
{
  if (os_variant_has_internal_content() && (+[MIBUTestPreferences sharedInstance](MIBUTestPreferences, "sharedInstance"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 useSrNmForDeviceKey], v3, v4))
  {
    v5 = MGCopyAnswer();
    v6 = [v5 dataUsingEncoding:4];
    v16 = @"LPMScanPayload";
    v17 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  }

  else
  {
    v7 = 0;
  }

  v13 = 0;
  v8 = [(MIBUDeviceController *)self setToLPMWithOptions:v7 error:&v13];
  v9 = v13;
  v10 = v9;
  if (v8 && !v9)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005D80C();
    }

    v11 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: device will shutdown in low power mode now.", buf, 0xCu);
    }

    [(MIBUDeviceController *)self shutdown];
    LOBYTE(v8) = 1;
  }

  return v8;
}

- (id)thermalDetails
{
  v3 = objc_opt_new();
  thermalPressureLevel = [(MIBUDeviceController *)self thermalPressureLevel];
  _batteryVirtualTemperature = [(MIBUDeviceController *)self _batteryVirtualTemperature];
  if ([(MIBUDeviceController *)self _isD5x]|| [(MIBUDeviceController *)self _isN104])
  {
    v11[0] = @"TSRM/TVRM";
    v11[1] = @"TSRR/TVRR";
    v12[0] = &off_1000A8328;
    v12[1] = &off_1000A8340;
    v11[2] = @"TSBE/TVBE";
    v11[3] = @"TSBQ/TVBQ";
    v12[2] = &off_1000A8358;
    v12[3] = &off_1000A8370;
    v11[4] = @"TSBR/TVBR";
    v11[5] = @"TSLR/TVRH";
    v12[4] = &off_1000A8388;
    v12[5] = &off_1000A83A0;
    v6 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:6];
    v7 = [(MIBUDeviceController *)self _dictFromTmpSensorKeyMapping:v6];
  }

  else
  {
    v13[0] = @"TSRM/TVRM";
    v13[1] = @"TSRR/TVRR";
    v14[0] = @"TVRM";
    v14[1] = @"TVRR";
    v13[2] = @"TVRQ";
    v13[3] = @"TSBE/TVBE";
    v14[2] = @"TVRQ";
    v14[3] = @"TVBE";
    v13[4] = @"TSBQ/TVBQ";
    v13[5] = @"TSBR/TVBR";
    v14[4] = @"TVBQ";
    v14[5] = @"TVBR";
    v13[6] = @"TSLR/TVRH";
    v13[7] = @"TG0V";
    v14[6] = @"TVRH";
    v14[7] = @"TG0V";
    v6 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:8];
    v7 = [(MIBUDeviceController *)self _dictFromSMCKeyMapping:v6];
  }

  v8 = v7;

  if (_batteryVirtualTemperature)
  {
    [v8 setObject:_batteryVirtualTemperature forKey:@"TG0V"];
  }

  if (v8)
  {
    v9 = [NSNumber numberWithInteger:thermalPressureLevel];
    [v8 setObject:v9 forKey:@"ThermalPressure"];
  }

  return v8;
}

- (int64_t)thermalPressureLevel
{
  out_token = 0;
  state64 = 0;
  if (notify_register_check(kOSThermalNotificationPressureLevelName, &out_token))
  {
    sub_10005D834();
    return v5;
  }

  if (notify_get_state(out_token, &state64))
  {
    sub_10005D8FC();
    return v5;
  }

  if (notify_cancel(out_token))
  {
    sub_10005D9C4();
    return v5;
  }

  return state64;
}

- (id)batteryDetails
{
  v6[0] = @"WARP";
  v6[1] = @"WAVR";
  v7[0] = @"WARP";
  v7[1] = @"WAVR";
  v3 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];
  v4 = [(MIBUDeviceController *)self _dictFromSMCKeyMapping:v3];

  return v4;
}

- (id)osVersion
{
  v2 = _CFCopySupplementalVersionDictionary();
  v3 = [v2 objectForKey:_kCFSystemVersionShortVersionStringKey];

  return v3;
}

- (id)buildVersion
{
  v2 = _CFCopySupplementalVersionDictionary();
  v3 = [v2 objectForKey:_kCFSystemVersionBuildVersionKey];

  return v3;
}

- (BOOL)setToLPMWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v82 = 0;
  v83 = &v82;
  v84 = 0x3032000000;
  v85 = sub_10002DEF4;
  v86 = sub_10002DF04;
  v87 = 0;
  v67 = objc_alloc_init(CBController);
  v65 = dispatch_semaphore_create(0);
  v4 = objc_opt_new();
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005DA8C();
  }

  v5 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *v89 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting device to LPM mode with options: %{public}@", buf, 0xCu);
  }

  if (!os_variant_has_internal_content())
  {
LABEL_28:
    v74 = 0;
    v6 = [MIBUCryptoHelper deriveDeviceKeyForSeaship:&v74];
    v21 = v74;
    if (!v6)
    {
      sub_10005DD34();
      v50 = (v83 + 5);
      v73 = v83[5];
      sub_100016130(&v73, 3489660932, 0, @"Failed to compute Seaship Device Key", v51, v52, v53, v54, v60);
      objc_storeStrong(v50, v73);

      goto LABEL_44;
    }

    [v4 setActionType:1];
    [v4 setConfigFlags:1];
    v23 = NSDataWithHex();
    [v4 setDataBlob:v23];

    v24 = NSDataWithHex();
    [v4 setDataMask:v24];

    [v4 setDeviceIDAdvScanCount:2];
    [v4 setMaxClockDriftSeconds:2129];
    v25 = NSDataWithHex();
    [v4 setDeviceIDDiagInfo:v25];

    [v4 setDeviceIDDiagLength:10];
    v26 = NSDataWithHex();
    [v4 setDeviceIDInfo:v26];

    [v4 setDeviceIDInputKeyMaterial:v6];
    [v4 setDeviceIDLength:10];
    v27 = NSDataWithHex();
    [v4 setDeviceIDSalt:v27];

    [v4 setDeviceIDTimestampEffectiveBits:19];
    [v4 setDeviceIDTimestampFrequency:0];
    [v4 setDeviceIDTimestampLsbsTruncated:0];
    [v4 setDiagnosticTxAdvBackoff:0];
    [v4 setDiagnosticTxAdvDuration:200];
    [v4 setDiagnosticTxAdvInterval:200];
    [v4 setGpioAssertionTime:700];
    v28 = NSDataWithHex();
    [v4 setMacKeyDiagInfo:v28];

    [v4 setMacKeyDiagLength:10];
    [v4 setNextScanDelay:0];
    [v4 setNumberOfDelayIterations:0];
    [v4 setPacketLength:11];
    [v4 setRssiThresholdValue:4294967206];
    [v4 setScanDelayStart:0];
    [v4 setScanDuration:20];
    [v4 setScanInterval:1545];
    [v4 setScanWindow:48];
    goto LABEL_32;
  }

  v6 = [optionsCopy objectForKey:@"LPMTemplateFile"];
  if (v6)
  {
    v61 = v6;
    v7 = [NSURL fileURLWithPath:v6];
    v81 = 0;
    v8 = [NSDictionary dictionaryWithContentsOfURL:v7 error:&v81];
    v62 = v81;

    if (!v8)
    {
      sub_10005DBA0();
      v55 = (v83 + 5);
      v80 = v83[5];
      sub_100016130(&v80, 3489660932, 0, @"Unable to read template file", v56, v57, v58, v59, v60);
      objc_storeStrong(v55, v80);
LABEL_43:

      goto LABEL_44;
    }

    v79 = 0u;
    v77 = 0u;
    v78 = 0u;
    v76 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v76 objects:v91 count:16];
    if (v10)
    {
      v11 = *v77;
      v12 = v8;
      while (2)
      {
        v13 = 0;
        do
        {
          if (*v77 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v76 + 1) + 8 * v13);
          v15 = objc_opt_class();
          v16 = v14;
          if (!class_getProperty(v15, [v14 UTF8String]))
          {
            sub_10005DADC();
            v42 = (v83 + 5);
            v75 = v83[5];
            sub_100016130(&v75, 3489660932, 0, @"Unknown LPM parameter key: %@", v43, v44, v45, v46, v14);
            objc_storeStrong(v42, v75);

            goto LABEL_43;
          }

          v17 = [v9 objectForKeyedSubscript:v14];
          if (qword_1000B84A8[0] != -1)
          {
            sub_10005DAB4();
          }

          v18 = qword_1000B84A0;
          if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            *v89 = v14;
            *&v89[8] = 2114;
            v90 = v17;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Setting LPM parameter key: %{public}@ with value: %{public}@", buf, 0x16u);
          }

          [v4 setValue:v17 forKey:v14];
          v8 = v12;

          v13 = v13 + 1;
        }

        while (v10 != v13);
        v10 = [v9 countByEnumeratingWithState:&v76 objects:v91 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v6 = v61;
  }

  v19 = [optionsCopy objectForKey:@"LPMScanPayload"];
  v20 = v19;
  if (!v19)
  {

    if (v6)
    {
      goto LABEL_33;
    }

    goto LABEL_28;
  }

  if ([v19 length] < 0xB)
  {
    v21 = v20;
  }

  else
  {
    v21 = [NSData adjustData:v20 toLength:10];

    if (qword_1000B84A8[0] != -1)
    {
      sub_10005DC64();
    }

    v22 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *v89 = v21;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Truncating payload data to %{public}@", buf, 0xCu);
    }
  }

  [v4 setDataBlob:v21];
  v29 = NSDataWithHex();
  [v4 setDataMask:v29];

  [v4 setPacketLength:11];
  [v4 setConfigFlags:34];
  [v4 setScanDelayStart:0];
  [v4 setScanWindow:48];
  [v4 setScanInterval:1545];
  [v4 setScanDuration:1800];
  [v4 setNextScanDelay:0];
  [v4 setGpioAssertionTime:700];
  [v4 setRssiThresholdValue:4294967206];
  [v4 setActionType:1];
LABEL_32:

LABEL_33:
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005DC8C();
  }

  v30 = qword_1000B84A0;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    scanWindow = [v4 scanWindow];
    scanInterval = [v4 scanInterval];
    *buf = 67109376;
    *v89 = scanWindow;
    *&v89[4] = 1024;
    *&v89[6] = scanInterval;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Setting device to LPM mode; scanWindow = 0x%X; scanInterval = 0x%X", buf, 0xEu);
  }

  if ([(MIBUDeviceController *)self _updateIOPMUBootLPMCtrl])
  {
    v69[0] = _NSConcreteStackBlock;
    v69[1] = 3221225472;
    v69[2] = sub_10002E1E4;
    v69[3] = &unk_10009A1B0;
    v71 = &v82;
    v37 = v65;
    v70 = v37;
    [v67 setLowPowerModeWithParams:3 params:v4 completion:v69];

    dispatch_semaphore_wait(v37, 0xFFFFFFFFFFFFFFFFLL);
    v38 = (v83 + 5);
    if (!v83[5])
    {
      obj = 0;
      v39 = [v67 setLowPowerModeWithReason:2 error:&obj];
      objc_storeStrong(v38, obj);
      if (v39)
      {
        [v67 invalidate];
        v40 = 1;
        goto LABEL_41;
      }

      if (qword_1000B84A8[0] != -1)
      {
        sub_10005DCB4();
      }

      v48 = qword_1000B84A0;
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v83[5] localizedDescription];
        sub_10005DCDC(localizedDescription, buf, v48);
      }
    }
  }

  else
  {
    v47 = (v83 + 5);
    v72 = v83[5];
    sub_100016130(&v72, 3489660932, 0, @"Failed to update PMU register", v33, v34, v35, v36, v60);
    objc_storeStrong(v47, v72);
  }

LABEL_44:
  if (error)
  {
    *error = v83[5];
  }

  [v67 invalidate];
  v40 = 0;
LABEL_41:

  _Block_object_dispose(&v82, 8);
  return v40;
}

- (BOOL)isLPMSet:(id *)set
{
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005DE0C();
  }

  v5 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Checking if device has LPM mode set...", buf, 2u);
  }

  v16 = 0;
  v6 = [(MIBUDeviceController *)self _readLPMFlagFromIOPMUService:&v16];
  v7 = v16;
  v8 = v7;
  if (v7)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005DE20();
    }

    v9 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_10005DE48();
    }

    v11 = 0;
  }

  else
  {
    v15 = v7;
    v9 = [(MIBUDeviceController *)self _readBTFWOKFlagFromIOPMUService:&v15];
    v10 = v15;

    if (v10)
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_10005DEB8();
      }

      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
      {
        sub_10005DEE0();
      }

      v11 = 0;
    }

    else
    {
      v11 = v6 & v9;
    }

    v8 = v10;
  }

  if (qword_1000B84A8[0] != -1)
  {
    sub_10005DF50();
  }

  v12 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v18 = v6;
    v19 = 1024;
    v20 = v9 & 1;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Device has LPM flags set: btLPMFlag=%{BOOL}d btFWOKFlag=%{BOOL}d", buf, 0xEu);
  }

  if (set)
  {
    v13 = v8;
    *set = v8;
  }

  return v11;
}

- (id)_smcHelper
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!qword_1000B8410)
  {
    v3 = objc_alloc_init(MIBUSMCHelper);
    v4 = qword_1000B8410;
    qword_1000B8410 = v3;

    v10 = 0;
    [qword_1000B8410 openAppleSMC:&v10];
    v5 = v10;
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005DF78();
    }

    v6 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SMC Helper opened with error: %{public}@", buf, 0xCu);
    }

    if (v5)
    {
      v7 = qword_1000B8410;
      qword_1000B8410 = 0;
    }
  }

  objc_sync_exit(selfCopy);

  v8 = qword_1000B8410;

  return v8;
}

- (BOOL)_isD5x
{
  v2 = 1;
  v3 = MGGetProductType();
  if (v3 > 3885279869)
  {
    if (v3 == 3885279870)
    {
      return v2;
    }

    v4 = 4201643249;
  }

  else
  {
    if (v3 == 1169082144)
    {
      return v2;
    }

    v4 = 3001488778;
  }

  if (v3 != v4)
  {
    return 0;
  }

  return v2;
}

- (id)_dataFromInt32:(unsigned int)int32
{
  int32Copy = int32;
  v3 = [NSData dataWithBytes:&int32Copy length:4];

  return v3;
}

- (id)_dataFromInt8:(unsigned __int8)int8
{
  int8Copy = int8;
  v3 = [NSData dataWithBytes:&int8Copy length:1];

  return v3;
}

- (id)_batteryVirtualTemperature
{
  _smcHelper = [(MIBUDeviceController *)self _smcHelper];
  v3 = _smcHelper;
  if (_smcHelper)
  {
    v4 = [_smcHelper readSMCKey:@"TG0V" error:0];
  }

  else
  {
    sub_10005DFA0(&v6);
    v4 = v6;
  }

  return v4;
}

- (id)_dictFromSMCKeyMapping:(id)mapping
{
  mappingCopy = mapping;
  v5 = objc_opt_new();
  _smcHelper = [(MIBUDeviceController *)self _smcHelper];
  if (_smcHelper)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = mappingCopy;
    v7 = mappingCopy;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          v13 = [v7 objectForKey:{v12, v17}];
          if ([_smcHelper isKeySupported:v13])
          {
            v18 = 0;
            v14 = [_smcHelper readSMCKey:v13 error:&v18];
            v15 = v18;
            if (v14)
            {
              [v5 setObject:v14 forKey:v12];
            }
          }

          else
          {
            v15 = 0;
            v14 = 0;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    mappingCopy = v17;
  }

  else
  {
    sub_10005E030();
  }

  return v5;
}

- (id)_dictFromTmpSensorKeyMapping:(id)mapping
{
  mappingCopy = mapping;
  v18 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = mappingCopy;
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = [v4 objectForKey:v9];
        unsignedIntValue = [v10 unsignedIntValue];

        v20 = 0;
        v12 = [MIBUTempSensorHelper readKey:unsignedIntValue error:&v20];
        v13 = v20;
        if (v12)
        {
          [v12 floatValue];
          v19 = v14;
          v15 = [NSData dataWithBytes:&v19 length:4];
          if (v15)
          {
            v16 = v15;
            [v18 setObject:v15 forKey:v9];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  return v18;
}

- (unsigned)_findServicePmuPrimary
{
  v19 = 0;
  v2 = IOServiceMatching("AppleDialogSPMIPMU");
  if (!v2)
  {
    goto LABEL_11;
  }

  if (IOServiceGetMatchingServices(kIOMainPortDefault, v2, &v19))
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005E0C4();
    }

    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_10005E0EC();
    }

    v3 = 0;
  }

  else
  {
    v3 = IOIteratorNext(v19);
    if (v3)
    {
      while (1)
      {
        size = 4;
        v18 = 0;
        Property = IORegistryEntryGetProperty(v3, "IOPMUPrimary", &v18, &size);
        if (!Property)
        {
          break;
        }

        v14 = Property;
        if (qword_1000B84A8[0] != -1)
        {
          sub_10005E160();
        }

        v15 = qword_1000B84A0;
        if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
        {
          _20[0] = 67109120;
          _20[1] = v14;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "IORegistryEntryGetProperty returned 0x%x when trying to get property value of IOPMUPrimary for current pmu entry.", _20, 8u);
        }

        v3 = IOIteratorNext(v19);
        if (!v3)
        {
          goto LABEL_8;
        }
      }

      if (qword_1000B84A8[0] != -1)
      {
        sub_10005E188();
      }

      v16 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(_20[0]) = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "IORegistryEntryGetProperty completed successfully!", _20, 2u);
      }
    }
  }

LABEL_8:
  if (v19)
  {
    IOObjectRelease(v19);
  }

  if (!v3)
  {
LABEL_11:
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005E1B0();
    }

    v4 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_10005E1D8(v4, v5, v6, v7, v8, v9, v10, v11);
    }

    return 0;
  }

  return v3;
}

- (BOOL)_updateIOPMUBootLPMCtrl
{
  _findServicePmuPrimary = [(MIBUDeviceController *)self _findServicePmuPrimary];
  if (_findServicePmuPrimary)
  {
    v3 = _findServicePmuPrimary;
    v4 = IORegistryEntrySetCFProperties(_findServicePmuPrimary, &off_1000A9FB8);
    v5 = v4 == 0;
    if (v4)
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_10005E210();
      }

      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
      {
        sub_10005E224();
      }
    }

    IOObjectRelease(v3);
  }

  else
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005E294();
    }

    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_10005E2A8();
    }

    return 0;
  }

  return v5;
}

- (BOOL)wakedUpFromLPM
{
  _findServicePmuPrimary = [(MIBUDeviceController *)self _findServicePmuPrimary];
  if (_findServicePmuPrimary)
  {
    v3 = _findServicePmuPrimary;
    size = 4;
    v7 = 0;
    if (IORegistryEntryGetProperty(_findServicePmuPrimary, "IOPMUBootReasonLPMSU", &v7, &size))
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_10005E318();
      }

      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
      {
        sub_10005E340();
      }

      v4 = 0;
    }

    else
    {
      v4 = v7 != 0;
    }

    IOObjectRelease(v3);
  }

  else
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005E3B4();
    }

    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_10005E2A8();
    }

    return 0;
  }

  return v4;
}

- (BOOL)_readLPMFlagFromIOPMUService:(id *)service
{
  _findServicePmuPrimary = [(MIBUDeviceController *)self _findServicePmuPrimary];
  if (_findServicePmuPrimary)
  {
    v9 = _findServicePmuPrimary;
    valuePtr = 0;
    v10 = IORegistryEntrySearchCFProperty(_findServicePmuPrimary, "IOService", @"IOPMUBootLPMCtrl", kCFAllocatorDefault, 1u);
    if (v10)
    {
      v15 = v10;
      v16 = CFGetTypeID(v10);
      if (v16 == CFDictionaryGetTypeID())
      {
        v21 = CFStringCreateWithCString(kCFAllocatorDefault, "lpm3", 0x8000100u);
        Value = CFDictionaryGetValue(v15, v21);
        if (Value)
        {
          v27 = Value;
          CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
          CFRelease(v27);
        }

        else
        {
          sub_100016130(service, 3489660933, 0, @"Unexpected data type found for lpm3 key", v23, v24, v25, v26, v29);
        }

        CFRelease(v21);
      }

      else
      {
        sub_100016130(service, 3489660933, 0, @"Unexpected data type found for IOPMUBootLPMCtrl", v17, v18, v19, v20, v29);
      }

      CFRelease(v15);
    }

    else
    {
      sub_100016130(service, 3489660933, 0, @"Cannot find IO registry entry property for IOPMUBootLPMCtrl", v11, v12, v13, v14, v29);
    }

    IOObjectRelease(v9);
    return valuePtr != 0;
  }

  else
  {
    sub_100016130(service, 3489660933, 0, @"Cannot find IO registry entry for IOPMUPrimary", v5, v6, v7, v8, v29);
    return 0;
  }
}

- (BOOL)_readBTFWOKFlagFromIOPMUService:(id *)service
{
  _findServicePmuPrimary = [(MIBUDeviceController *)self _findServicePmuPrimary];
  if (_findServicePmuPrimary)
  {
    v9 = _findServicePmuPrimary;
    v10 = IORegistryEntrySearchCFProperty(_findServicePmuPrimary, "IOService", @"IOPMUBootLPMFWOK", kCFAllocatorDefault, 1u);
    if (!v10)
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_10005E3C8();
      }

      v18 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
      {
        sub_10005E3DC(v18, v19, v20, v21, v22, v23, v24, v25);
      }

      v17 = 0;
      goto LABEL_16;
    }

    v11 = v10;
    v12 = CFGetTypeID(v10);
    if (v12 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      if (CFNumberGetValue(v11, kCFNumberSInt32Type, &valuePtr))
      {
        v17 = valuePtr != 0;
LABEL_15:
        CFRelease(v11);
LABEL_16:
        IOObjectRelease(v9);
        return v17;
      }

      v26 = @"Cannot get value for IOPMUBootLPMFWOK";
    }

    else
    {
      v26 = @"Unexpected data type found for IOPMUBootLPMFWOK";
    }

    sub_100016130(service, 3489660933, 0, v26, v13, v14, v15, v16, v28);
    v17 = 0;
    goto LABEL_15;
  }

  sub_100016130(service, 3489660933, 0, @"Cannot find IO registry entry for IOPMUPrimary", v5, v6, v7, v8, v28);
  return 0;
}

- (void)_writeSMCKey:(id)key withData:(id)data usingHelper:(id)helper andReadInterval:(id)interval andReadbackData:(id)readbackData error:(id *)error
{
  keyCopy = key;
  dataCopy = data;
  helperCopy = helper;
  intervalCopy = interval;
  readbackDataCopy = readbackData;
  if ([sub_10002FDF0() isKeySupported:?])
  {
    v67 = 0;
    v18 = [sub_10002FDF0() readSMCKey:? error:?];
    v19 = 0;
    v21 = v19;
    if (v18 && !v19)
    {
      v63 = 1;
      *&v20 = 138543874;
      v62 = v20;
      while (1)
      {

        sub_100017760();
        if (!v22)
        {
          dispatch_once(qword_1000B84A8, &stru_10009D118);
        }

        if (sub_10002FDB4())
        {
          *buf = 138543618;
          v69 = dataCopy;
          v70 = 2114;
          v71 = keyCopy;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Writing %{public}@ to SMC key %{public}@", buf, 0x16u);
        }

        v66 = 0;
        [sub_10002FDF0() writeSMCKey:? data:? error:?];
        v23 = v66;
        if (v23)
        {
          v21 = v23;
          sub_100017760();
          if (!v22)
          {
            dispatch_once(qword_1000B84A8, &stru_10009D138);
          }

          v32 = qword_1000B84A0;
          v33 = os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR);
          if (v33)
          {
            sub_10002FDD0(v33, v34, v35, v36, v37, v38, v39, v40, v58, v59, v60, v61, v62, *(&v62 + 1), v41);
            _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Failed to write to SMC key %{public}@", v42, 0xCu);
          }
        }

        else
        {
          if (!readbackDataCopy)
          {
            v21 = 0;
            goto LABEL_45;
          }

          sub_100017760();
          if (!v22)
          {
            dispatch_once(qword_1000B84A8, &stru_10009D158);
          }

          if (sub_10002FDB4())
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Reading back SMC key value to verify...", buf, 2u);
          }

          if (intervalCopy)
          {
            sub_100017760();
            if (!v22)
            {
              dispatch_once(qword_1000B84A8, &stru_10009D178);
            }

            if (sub_10002FDB4())
            {
              v24 = v21;
              unsignedIntValue = [intervalCopy unsignedIntValue];
              *buf = 67109120;
              LODWORD(v69) = unsignedIntValue;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Waiting for %ds before reading back the value to verify...", buf, 8u);
            }

            sleep([intervalCopy unsignedIntValue]);
          }

          v65 = 0;
          v26 = [sub_10002FDF0() readSMCKey:? error:?];
          v21 = v65;

          if (!v26 || v21)
          {
            sub_100017760();
            if (!v22)
            {
              dispatch_once(qword_1000B84A8, &stru_10009D198);
            }

            v43 = qword_1000B84A0;
            v44 = os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR);
            if (v44)
            {
              sub_10002FDD0(v44, v45, v46, v47, v48, v49, v50, v51, v58, v59, v60, v61, v62, *(&v62 + 1), v52);
              _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Failed to write to SMC key %{public}@", v54, 0xCu);
            }
          }

          else
          {
            if (([v26 isEqualToData:readbackDataCopy]& 1) != 0)
            {
              v21 = 0;
              v18 = v26;
              goto LABEL_45;
            }

            sub_100017760();
            if (!v22)
            {
              dispatch_once(qword_1000B84A8, &stru_10009D1B8);
            }

            v27 = qword_1000B84A0;
            if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
            {
              sub_10002FD60(*&v62);
              v71 = v26;
              v72 = v55;
              v73[0] = readbackDataCopy;
              _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "SMC key %{public}@ : %{public}@ does not have expected val: %{public}@", buf, 0x20u);
            }

            v64 = 0;
            v59 = v26;
            v60 = readbackDataCopy;
            sub_100016130(&v64, 2684354564, 0, @"SMC key %@ : %@ does not have expected val: %@", v28, v29, v30, v31, keyCopy);
            v21 = v64;
          }

          v18 = v26;
        }

        sub_100017760();
        if (!v22)
        {
          dispatch_once(qword_1000B84A8, &stru_10009D1D8);
        }

        v53 = qword_1000B84A0;
        if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
        {
          sub_10002FD60(5.8384e-34);
          v71 = v21;
          v72 = 1024;
          LODWORD(v73[0]) = v63;
          WORD2(v73[0]) = 1024;
          *(v73 + 6) = 3;
          _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "Failed to write SMC key %{public}@ with error: %{public}@, attempt %d/%d; retrying...", buf, 0x22u);
        }

        if (++v63 == 4)
        {
          goto LABEL_45;
        }
      }
    }

    sub_100017760();
    if (!v22)
    {
      dispatch_once(qword_1000B84A8, &stru_10009D0F8);
    }

    v57 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_10002FD60(5.8382e-34);
      v71 = v21;
      _os_log_error_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "Failed to read %{public}@ key with error: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v21 = 0;
    v18 = 0;
  }

LABEL_45:
  if (error)
  {
    v56 = v21;
    *error = v21;
  }
}

@end