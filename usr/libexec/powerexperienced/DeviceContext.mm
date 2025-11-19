@interface DeviceContext
+ (DeviceContext)sharedInstance;
- (DeviceContext)init;
- (id)objectForKeyedSubscript:(id)a3;
- (void)getBatteryProperties;
- (void)handleAdapterDetails;
- (void)handleBatteryLevelChange;
- (void)handleChargingState;
- (void)handleClamshellStateChange;
- (void)handleEarlyThermalWarning;
- (void)handleLPMStateChange;
- (void)handleLockStateChange;
- (void)handleMobileChargerStatus;
- (void)handlePowerSourceChange;
- (void)handleTestDefaultsUpdate;
- (void)handleThermalWarning;
- (void)handleXPCEvent:(id)a3;
- (void)initCSPNNotifications;
- (void)initClamshellStateChange;
- (void)initEarlyThermalWarning;
- (void)initLockStateChange;
- (void)initLowPowerModeChange;
- (void)initPSTimeRemainingChange;
- (void)initPowerSourceChange;
- (void)initTestDefaultsChange;
- (void)initThermalWarning;
- (void)initializeMonitors;
- (void)setObject:(id)a3 forKeyedSubscript:(id)a4;
- (void)start;
- (void)startInPocketDetection;
- (void)stopInPocketDetection;
@end

@implementation DeviceContext

+ (DeviceContext)sharedInstance
{
  if (qword_100036B88 != -1)
  {
    sub_100018BBC();
  }

  v3 = qword_100036B80;

  return v3;
}

- (void)handleLockStateChange
{
  v3 = sub_100001600();
  dispatch_assert_queue_V2(v3);

  state64 = 0;
  if (notify_get_state(dword_100036B64, &state64))
  {
    v4 = [(DeviceContext *)self log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100018AEC();
    }
  }

  else
  {
    v5 = [NSNumber numberWithUnsignedLongLong:state64];
    [(DeviceContext *)self setObject:v5 forKeyedSubscript:@"kLockStateContext"];

    v4 = [(DeviceContext *)self log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(DeviceContext *)self objectForKeyedSubscript:@"kLockStateContext"];
      *buf = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Updating lock state %@", buf, 0xCu);
    }
  }
}

- (DeviceContext)init
{
  v13.receiver = self;
  v13.super_class = DeviceContext;
  v2 = [(DeviceContext *)&v13 init];
  if (v2)
  {
    v3 = sub_100001600();
    [(DeviceContext *)v2 setQueue:v3];

    v4 = os_log_create("com.apple.powerexperienced", "contextmonitor");
    log = v2->_log;
    v2->_log = v4;

    v6 = objc_alloc_init(NSMutableDictionary);
    currentContext = v2->_currentContext;
    v2->_currentContext = v6;

    v8 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.powerexperienced.test.devicecontext"];
    testDefaults = v2->_testDefaults;
    v2->_testDefaults = v8;

    v10 = +[NSMutableSet set];
    overridenKeys = v2->_overridenKeys;
    v2->_overridenKeys = v10;
  }

  return v2;
}

- (void)start
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Starting Device Context", v4, 2u);
  }

  [(DeviceContext *)self initializeMonitors];
}

- (void)initializeMonitors
{
  v3 = MGGetStringAnswer();
  v4 = [v3 isEqualToString:@"iPhone"];

  if (v4)
  {
    [(DeviceContext *)self setObject:@"iPhone" forKeyedSubscript:@"kPlatformContext"];
    v5 = MGGetStringAnswer();
    v6 = qword_100036B90;
    qword_100036B90 = v5;

    v7 = qword_100036B90;
    v8 = @"kHardwarePlatformContext";
LABEL_8:
    [(DeviceContext *)self setObject:v7 forKeyedSubscript:v8];
    goto LABEL_9;
  }

  v9 = MGGetStringAnswer();
  v10 = [v9 isEqualToString:@"Watch"];

  if (v10)
  {
    v7 = @"Watch";
LABEL_7:
    v8 = @"kPlatformContext";
    goto LABEL_8;
  }

  v11 = MGGetStringAnswer();
  v12 = [v11 isEqualToString:@"AppleTV"];

  if (v12)
  {
    v7 = @"TV";
    goto LABEL_7;
  }

  v13 = MGGetStringAnswer();
  v14 = [v13 isEqualToString:@"Mac"];

  if (v14)
  {
    [(DeviceContext *)self setObject:@"Mac" forKeyedSubscript:@"kPlatformContext"];
    [(DeviceContext *)self initClamshellStateChange];
    [(DeviceContext *)self initPowerStateChange];
  }

LABEL_9:
  [(DeviceContext *)self initPowerSourceChange];
  [(DeviceContext *)self initPSTimeRemainingChange];
  [(DeviceContext *)self initLockStateChange];
  [(DeviceContext *)self initEarlyThermalWarning];
  [(DeviceContext *)self initThermalWarning];
  [(DeviceContext *)self initLowPowerModeChange];
  [(DeviceContext *)self initTestDefaultsChange];

  [(DeviceContext *)self initCSPNNotifications];
}

- (void)handleXPCEvent:(id)a3
{
  v4 = a3;
  v5 = sub_100001600();
  dispatch_assert_queue_V2(v5);

  string = xpc_dictionary_get_string(v4, _xpc_event_key_name);
  if (!strcmp(string, "com.apple.system.powersources.source"))
  {

    [(DeviceContext *)self handlePowerSourceChange];
  }

  else if (!strcmp(string, "com.apple.system.powersources.timeremaining"))
  {
    [(DeviceContext *)self handleMobileChargerStatus];
    [(DeviceContext *)self getBatteryProperties];

    [(DeviceContext *)self handleChargingState];
  }

  else if (!strcmp(string, "com.apple.system.powermanagement.clamshellstate"))
  {

    [(DeviceContext *)self handleClamshellStateChange];
  }

  else if (!strcmp(string, "com.apple.springboard.lockstate"))
  {

    [(DeviceContext *)self handleLockStateChange];
  }

  else if (!strcmp(string, "com.apple.system.earlythermalnotification"))
  {

    [(DeviceContext *)self handleEarlyThermalWarning];
  }

  else if (!strcmp(string, "com.apple.system.lowpowermode"))
  {

    [(DeviceContext *)self handleLPMStateChange];
  }

  else if (!strcmp(string, kOSThermalNotificationPressureLevelName))
  {

    [(DeviceContext *)self handleThermalWarning];
  }

  else if (!strcmp(string, "com.apple.powerexperienced.testdevicecontext.changed"))
  {

    [(DeviceContext *)self handleTestDefaultsUpdate];
  }
}

- (void)handlePowerSourceChange
{
  v3 = [NSNumber numberWithBool:IOPSDrawingUnlimitedPower()];
  [(DeviceContext *)self setObject:v3 forKeyedSubscript:@"kPluggedInContext"];

  [(DeviceContext *)self handleMobileChargerStatus];

  [(DeviceContext *)self handleAdapterDetails];
}

- (void)handleChargingState
{
  out_token = 0;
  v10 = 0;
  if (!notify_register_check("com.apple.system.powersources.timeremaining", &out_token))
  {
    notify_get_state(out_token, &v10);
    v3 = [(DeviceContext *)self log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_100018938(&v10, v3);
    }

    v4 = v10 & 0x20000;
    v5 = [(DeviceContext *)self currentContext];
    v6 = [v5 objectForKeyedSubscript:@"kIsChargingContext"];
    v7 = [v6 BOOLValue];

    if (v7 != v4 >> 17)
    {
      v8 = [NSNumber numberWithBool:v4 != 0];
      v9 = [(DeviceContext *)self currentContext];
      [v9 setObject:v8 forKeyedSubscript:@"kIsChargingContext"];
    }
  }
}

- (void)handleMobileChargerStatus
{
  out_token = 0;
  state64 = 0;
  if (!notify_register_check("com.apple.system.powersources.timeremaining", &out_token))
  {
    notify_get_state(out_token, &state64);
    v3 = [(DeviceContext *)self log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_100018938(&state64, v3);
    }

    v4 = state64 & 0x4010000;
    v5 = [(DeviceContext *)self objectForKeyedSubscript:@"kMobileChargerContext"];
    v6 = [v5 BOOLValue];

    if (v4 == 0x4000000)
    {
      if (v6)
      {
        return;
      }

      v7 = [(DeviceContext *)self log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "MobileCharger attached", v14, 2u);
      }

      v8 = [(DeviceContext *)self overridenKeys];
      v9 = [v8 containsObject:@"kMobileChargerContext"];

      if (!v9)
      {
        [(DeviceContext *)self setObject:&__kCFBooleanTrue forKeyedSubscript:@"kMobileChargerContext"];
        [(DeviceContext *)self startInPocketDetection];
        return;
      }

      v10 = [(DeviceContext *)self log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
LABEL_19:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "MobileChargerContext value overriden. Ignoring update", v14, 2u);
      }
    }

    else
    {
      if (v6)
      {
        v11 = [(DeviceContext *)self log];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "MobileCharger detached", v14, 2u);
        }
      }

      v12 = [(DeviceContext *)self overridenKeys];
      v13 = [v12 containsObject:@"kMobileChargerContext"];

      if (!v13)
      {
        [(DeviceContext *)self setObject:&__kCFBooleanFalse forKeyedSubscript:@"kMobileChargerContext"];
        [(DeviceContext *)self stopInPocketDetection];
        return;
      }

      v10 = [(DeviceContext *)self log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        goto LABEL_19;
      }
    }
  }
}

- (void)handleBatteryLevelChange
{
  if (!IOPSGetPercentRemaining())
  {
    v3 = [NSNumber numberWithInt:0];
    [(DeviceContext *)self setObject:v3 forKeyedSubscript:@"kBatteryLevelContext"];
  }
}

- (void)handleAdapterDetails
{
  v5 = IOPSCopyExternalPowerAdapterDetails();
  v3 = [(__CFDictionary *)v5 objectForKeyedSubscript:@"IsWireless"];
  v4 = [(DeviceContext *)self currentContext];
  [v4 setObject:v3 forKeyedSubscript:@"kWirelessChargerContext"];
}

- (void)getBatteryProperties
{
  v3 = [(DeviceContext *)self currentContext];
  v4 = [v3 objectForKeyedSubscript:@"kPluggedInContext"];

  if (v4)
  {
    v5 = IOServiceMatching("IOPMPowerSource");
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v5);
    if (MatchingService)
    {
      properties = 0;
      if (!IORegistryEntryCreateCFProperties(MatchingService, &properties, kCFAllocatorDefault, 0))
      {
        v7 = properties;
        if (properties)
        {
          v8 = [(DeviceContext *)self currentContext];
          [v8 setObject:v7 forKeyedSubscript:@"kBatteryPropertiesContext"];
        }
      }
    }
  }
}

- (void)initPowerSourceChange
{
  if (notify_register_check("com.apple.system.powersources.source", &dword_100036B58))
  {
    v3 = [(DeviceContext *)self log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000189B4();
    }
  }

  v4 = [(DeviceContext *)self queue];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100009734;
  handler[3] = &unk_10002C780;
  handler[4] = self;
  v5 = notify_register_dispatch("com.apple.system.powersources.percent", &dword_100036B5C, v4, handler);

  if (v5)
  {
    v6 = [(DeviceContext *)self log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000189E8();
    }
  }

  v7 = [(DeviceContext *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000973C;
  v8[3] = &unk_10002C738;
  v8[4] = self;
  dispatch_async(v7, v8);
}

- (void)initPSTimeRemainingChange
{
  if (notify_register_check("com.apple.system.powersources.timeremaining", &dword_100036B60))
  {
    v3 = [(DeviceContext *)self log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100018A1C();
    }
  }

  [(DeviceContext *)self handleMobileChargerStatus];
}

- (void)initLockStateChange
{
  if (notify_register_check("com.apple.springboard.lockstate", &dword_100036B64))
  {
    v3 = [(DeviceContext *)self log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100018A50();
    }
  }

  [(DeviceContext *)self handleLockStateChange];
}

- (void)initEarlyThermalWarning
{
  if (notify_register_check("com.apple.system.earlythermalnotification", &dword_100036B68))
  {
    v3 = [(DeviceContext *)self log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100018A84();
    }
  }

  [(DeviceContext *)self handleEarlyThermalWarning];
}

- (void)initThermalWarning
{
  if (notify_register_check(kOSThermalNotificationPressureLevelName, &dword_100036B6C))
  {
    v3 = [(DeviceContext *)self log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100018AB8();
    }
  }

  [(DeviceContext *)self handleThermalWarning];
}

- (void)initCSPNNotifications
{
  v3 = objc_alloc_init(_PMCoreSmartPowerNap);
  v4 = sub_100001600();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100009A24;
  v5[3] = &unk_10002C7A8;
  v5[4] = self;
  [v3 registerWithCallback:v4 callback:v5];
}

- (void)handleEarlyThermalWarning
{
  v3 = sub_100001600();
  dispatch_assert_queue_V2(v3);

  state64 = 0;
  if (!notify_get_state(dword_100036B68, &state64))
  {
    v4 = [NSNumber numberWithUnsignedLongLong:state64];
    [(DeviceContext *)self setObject:v4 forKeyedSubscript:@"kEarlyThermalContext"];
  }
}

- (void)handleThermalWarning
{
  v3 = sub_100001600();
  dispatch_assert_queue_V2(v3);

  state64 = 0;
  if (!notify_get_state(dword_100036B6C, &state64))
  {
    v4 = [NSNumber numberWithUnsignedLongLong:state64];
    [(DeviceContext *)self setObject:v4 forKeyedSubscript:@"kThermalPressureContext"];
  }
}

- (void)handleClamshellStateChange
{
  state64 = 0;
  if (!notify_get_state(dword_100036B70, &state64))
  {
    v3 = [NSNumber numberWithUnsignedLongLong:state64];
    [(DeviceContext *)self setObject:v3 forKeyedSubscript:@"kClamshellStateContext"];
  }
}

- (void)initClamshellStateChange
{
  if (notify_register_check("com.apple.system.powermanagement.clamshellstate", &dword_100036B70))
  {
    v3 = [(DeviceContext *)self log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100018B20();
    }
  }

  [(DeviceContext *)self handleClamshellStateChange];
}

- (void)handleLPMStateChange
{
  v3 = sub_100001600();
  dispatch_assert_queue_V2(v3);

  state64 = 0;
  if (!notify_get_state(dword_100036B74, &state64))
  {
    v4 = [NSNumber numberWithInt:state64 != 0];
    [(DeviceContext *)self setObject:v4 forKeyedSubscript:@"kLPMStateStateContext"];
  }
}

- (void)initLowPowerModeChange
{
  if (notify_register_check("com.apple.system.lowpowermode", &dword_100036B74))
  {
    v3 = [(DeviceContext *)self log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100018B54();
    }
  }

  [(DeviceContext *)self handleLPMStateChange];
}

- (void)startInPocketDetection
{
  v3 = sub_100001600();
  v4 = [InPocketMonitor initWithQueue:v3];
  [(DeviceContext *)self setInPocketMonitor:v4];

  v5 = [(DeviceContext *)self inPocketMonitor];

  if (v5)
  {
    v6 = [(DeviceContext *)self inPocketMonitor];
    [v6 addDelegate:self];

    v7 = [(DeviceContext *)self inPocketMonitor];
    [v7 startMonitoring];
  }
}

- (void)stopInPocketDetection
{
  v3 = [(DeviceContext *)self inPocketMonitor];

  if (v3)
  {
    v4 = [(DeviceContext *)self inPocketMonitor];
    [v4 stopMonitoring];
  }
}

- (void)initTestDefaultsChange
{
  if (notify_register_check("com.apple.powerexperienced.testdevicecontext.changed", &unk_100036B78))
  {
    v3 = [(DeviceContext *)self log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100018B88();
    }
  }

  if (MKBDeviceUnlockedSinceBoot())
  {
    [(DeviceContext *)self handleTestDefaultsUpdate];
  }
}

- (void)handleTestDefaultsUpdate
{
  v3 = [(DeviceContext *)self testDefaults];
  v4 = [v3 objectForKey:@"devicecontext"];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v4;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "test defaults have changed %@", buf, 0xCu);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [v4 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v22;
    *&v8 = 138412546;
    v20 = v8;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = self->_log;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = v13;
          v15 = [v4 objectForKeyedSubscript:v12];
          *buf = v20;
          v26 = v12;
          v27 = 2112;
          v28 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Updating from test context %@:%@", buf, 0x16u);
        }

        v16 = [v4 objectForKeyedSubscript:{v12, v20}];
        [(DeviceContext *)self setObject:v16 forKeyedSubscript:v12];

        v17 = [(DeviceContext *)self overridenKeys];
        [v17 addObject:v12];
      }

      v9 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v9);
  }

  if (!v4)
  {
    v18 = self->_log;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "no test context. removing keys", buf, 2u);
    }

    v19 = [(DeviceContext *)self overridenKeys];
    [v19 removeAllObjects];
  }
}

- (id)objectForKeyedSubscript:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(DeviceContext *)self currentContext];
    v6 = [v5 objectForKeyedSubscript:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setObject:(id)a3 forKeyedSubscript:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(DeviceContext *)self willChangeValueForKey:@"currentContext"];
  v8 = [(DeviceContext *)self currentContext];
  [v8 setObject:v6 forKeyedSubscript:v7];

  [(DeviceContext *)self didChangeValueForKey:@"currentContext"];
  if (v7 != @"kBatteryPropertiesContext")
  {
    v9 = [(DeviceContext *)self log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ is now : %@", &v10, 0x16u);
    }
  }
}

@end