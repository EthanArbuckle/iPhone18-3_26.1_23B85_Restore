@interface MobileChargingController
+ (id)sharedInstance;
- (BOOL)activeUse;
- (BOOL)boostMode;
- (BOOL)emergencyCharge;
- (BOOL)inPocket;
- (MobileChargingController)init;
- (void)clearPolicy;
- (void)evaluateChargingPolicy;
- (void)handleTestDefaultsChange;
- (void)handleXPCEvent:(id)a3;
- (void)logToPowerlog;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)recordMobileChargerAttach;
- (void)registerForTestDefaultsChange;
- (void)restoreFromDefaults;
- (void)saveToDefaults;
- (void)start;
- (void)updateChargingPolicyWithTemperature:(unint64_t)a3 andPower:(unint64_t)a4;
@end

@implementation MobileChargingController

+ (id)sharedInstance
{
  if (qword_100036C90 != -1)
  {
    sub_100003170();
  }

  v3 = qword_100036C88;

  return v3;
}

- (void)evaluateChargingPolicy
{
  v3 = [(MobileChargingController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100014A64;
  block[3] = &unk_10002C738;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)recordMobileChargerAttach
{
  v3 = [(MobileChargingController *)self deviceContext];
  v4 = [v3 objectForKeyedSubscript:@"kMobileChargerContext"];
  v5 = [v4 BOOLValue];

  v6 = [(MobileChargingController *)self mobileChargerAttached];
  if (v5)
  {
    if ((v6 & 1) == 0)
    {
      [(MobileChargingController *)self setMobileChargerAttached:1];
      v7 = +[NSDate now];
      [(MobileChargingController *)self setAttachTime:v7];

      v8 = qword_100036C98;
      if (os_log_type_enabled(qword_100036C98, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 0;
        v9 = "Mobile charger attached";
        v10 = &v12;
LABEL_8:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
      }
    }
  }

  else if (v6)
  {
    [(MobileChargingController *)self setMobileChargerAttached:0];
    [(MobileChargingController *)self setAttachTime:0];
    v8 = qword_100036C98;
    if (os_log_type_enabled(qword_100036C98, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v9 = "Mobile charger detached";
      v10 = &v11;
      goto LABEL_8;
    }
  }
}

- (MobileChargingController)init
{
  v20.receiver = self;
  v20.super_class = MobileChargingController;
  v2 = [(MobileChargingController *)&v20 init];
  if (v2)
  {
    v3 = +[DeviceContext sharedInstance];
    deviceContext = v2->_deviceContext;
    v2->_deviceContext = v3;

    v5 = +[ResourceManager sharedInstance];
    resourceManager = v2->_resourceManager;
    v2->_resourceManager = v5;

    v7 = [(DeviceContext *)v2->_deviceContext objectForKeyedSubscript:@"kPlatformContext"];
    v2->_supportedPlatform = [v7 isEqual:@"iPhone"];

    if (!v2->_supportedPlatform)
    {
      v8 = qword_100036C98;
      if (os_log_type_enabled(qword_100036C98, OS_LOG_TYPE_DEFAULT))
      {
        v19[0] = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "MobileChargingController not supported on this platform", v19, 2u);
      }
    }

    v9 = +[SMCSensorExchangeHelper sharedInstance];
    smcHelper = v2->_smcHelper;
    v2->_smcHelper = v9;

    v2->_currentChargingOption = 0;
    v2->_currentPowerOption = 0;
    v2->_boostModeMaxEngagement = 900.0;
    v11 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.powerexperienced.test.mobilecharingcontroller"];
    testDefaults = v2->_testDefaults;
    v2->_testDefaults = v11;

    v13 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.powerexperienced.mobilecharging"];
    defaults = v2->_defaults;
    v2->_defaults = v13;

    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("com.apple.powerexperienced.mobilechargingcontroller", v15);
    queue = v2->_queue;
    v2->_queue = v16;
  }

  return v2;
}

- (void)start
{
  v3 = [(MobileChargingController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000145BC;
  block[3] = &unk_10002C738;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v7 = [(MobileChargingController *)self queue:a3];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000146CC;
  block[3] = &unk_10002C738;
  block[4] = self;
  dispatch_async(v7, block);
}

- (BOOL)inPocket
{
  v2 = [(MobileChargingController *)self deviceContext];
  v3 = [v2 objectForKeyedSubscript:@"kInPocketContext"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)emergencyCharge
{
  v2 = [(MobileChargingController *)self deviceContext];
  v3 = [v2 objectForKeyedSubscript:@"kBatteryLevelContext"];
  v4 = [v3 intValue];

  return v4 < 20;
}

- (BOOL)boostMode
{
  v3 = [(MobileChargingController *)self deviceContext];
  v4 = [v3 objectForKeyedSubscript:@"kBatteryLevelContext"];
  v5 = [v4 intValue];

  if (v5 > 79)
  {
    return 0;
  }

  v6 = +[NSDate now];
  v7 = [(MobileChargingController *)self attachTime];
  [v6 timeIntervalSinceDate:v7];
  v9 = v8;

  v10 = qword_100036C98;
  if (os_log_type_enabled(qword_100036C98, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134217984;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "timeSinceAttach %f ", &v14, 0xCu);
  }

  [(MobileChargingController *)self boostModeMaxEngagement];
  v12 = v11;

  return v9 <= v12;
}

- (BOOL)activeUse
{
  v3 = [(MobileChargingController *)self deviceContext];
  v4 = [v3 currentContext];

  v5 = [(MobileChargingController *)self resourceManager];
  v6 = [v5 resourceHints];

  v7 = [v4 objectForKeyedSubscript:@"kLockStateContext"];
  v8 = [v7 BOOLValue];

  v9 = [v6 objectForKeyedSubscript:@"Display"];
  v10 = [v9 state] != 101;
  v11 = [v6 objectForKeyedSubscript:@"CarPlay"];

  v12 = [v11 state];
  v13 = [v6 objectForKeyedSubscript:@"Camera"];

  v14 = [v13 state];
  v15 = [v6 objectForKeyedSubscript:@"PersonalHotspot"];

  v16 = [v15 state];
  v18 = v14 == 1 || v16 == 1;
  if (v12 == 1)
  {
    v18 = 1;
  }

  v19 = ((v10 | v8) & 1) == 0 || v18;

  return v19;
}

- (void)updateChargingPolicyWithTemperature:(unint64_t)a3 andPower:(unint64_t)a4
{
  v7 = [(MobileChargingController *)self smcHelper];
  [v7 updateCLTMMobileChargingPolicy:a3];

  v8 = [(MobileChargingController *)self smcHelper];
  [v8 updateInductiveChargingPowerPolicy:a4];
}

- (void)clearPolicy
{
  self->_chargingScenario = 0;
  self->_currentChargingOption = 0;
  self->_currentPowerOption = 0;
  [(MobileChargingController *)self updateChargingPolicyWithTemperature:0 andPower:0];

  [(MobileChargingController *)self saveToDefaults];
}

- (void)saveToDefaults
{
  v3 = qword_100036C98;
  if (os_log_type_enabled(qword_100036C98, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(MobileChargingController *)self chargingScenario]- 1;
    if (v5 > 4)
    {
      v6 = @"MobileChargingScenarioNone";
    }

    else
    {
      v6 = *(&off_10002CBC0 + v5);
    }

    v7 = [NSNumber numberWithUnsignedInteger:[(MobileChargingController *)self currentPowerOption]];
    v8 = [NSNumber numberWithUnsignedInteger:[(MobileChargingController *)self currentChargingOption]];
    *buf = 138412802;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "saving to defaults Scenario %@ power option %@ charging option %@", buf, 0x20u);
  }

  v9 = [NSNumber numberWithUnsignedInteger:[(MobileChargingController *)self currentPowerOption]];
  v18[0] = v9;
  v17[1] = @"ChargingOption";
  v10 = [NSNumber numberWithUnsignedInteger:[(MobileChargingController *)self currentChargingOption]];
  v18[1] = v10;
  v17[2] = @"ChargingScenarioDescription";
  v11 = [(MobileChargingController *)self chargingScenario];
  if (v11 - 1 > 4)
  {
    v12 = @"MobileChargingScenarioNone";
  }

  else
  {
    v12 = *(&off_10002CBC0 + v11 - 1);
  }

  v18[2] = v12;
  v17[3] = @"ChargingScenario";
  v13 = [NSNumber numberWithUnsignedInteger:[(MobileChargingController *)self chargingScenario]];
  v18[3] = v13;
  v17[4] = @"Timestamp";
  v14 = +[NSDate now];
  v18[4] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:5];

  v16 = [(MobileChargingController *)self defaults];
  [v16 setValue:v15 forKey:@"MobileChargingMode"];
}

- (void)restoreFromDefaults
{
  v3 = [(MobileChargingController *)self defaults];
  v4 = [v3 objectForKey:@"MobileChargingMode"];

  if (v4)
  {
    v5 = [v4 objectForKey:@"PowerOption"];
    v6 = [v4 objectForKey:@"ChargingOption"];
    v7 = [v4 objectForKey:@"ChargingScenario"];
    v8 = qword_100036C98;
    if (os_log_type_enabled(qword_100036C98, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v20 = *&v7;
      v21 = 2112;
      v22 = v5;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "restoring from defaults scenario %@ powerOption %@ chargingOption %@", buf, 0x20u);
    }

    if (v5)
    {
      self->_currentPowerOption = [v5 intValue];
    }

    if (v6)
    {
      self->_currentChargingOption = [v6 intValue];
    }

    if (v7)
    {
      self->_chargingScenario = [v7 intValue];
    }
  }

  if (self->_chargingScenario == 4)
  {
    v9 = [(MobileChargingController *)self defaults];
    v10 = [v9 objectForKey:@"timestamp"];

    [(MobileChargingController *)self setAttachTime:v10];
    [(MobileChargingController *)self boostModeMaxEngagement];
    v11 = [v10 dateByAddingTimeInterval:?];
    [v11 timeIntervalSinceNow];
    v13 = v12;
    [v10 timeIntervalSinceNow];
    if (v14 <= 0.0)
    {
      [(MobileChargingController *)self evaluateChargingPolicy];
    }

    else
    {
      v15 = qword_100036C98;
      if (os_log_type_enabled(qword_100036C98, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v20 = v13;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Setting timer to fire in %f to evaluate boost mode", buf, 0xCu);
      }

      v16 = dispatch_time(0, (v13 * 1000000000.0));
      v17 = [(MobileChargingController *)self queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000155BC;
      block[3] = &unk_10002C738;
      block[4] = self;
      dispatch_after(v16, v17, block);
    }
  }
}

- (void)logToPowerlog
{
  if (![(MobileChargingController *)self powerlogIdentifier])
  {
    [(MobileChargingController *)self setPowerlogIdentifier:PPSCreateTelemetryIdentifier()];
  }

  if ([(MobileChargingController *)self powerlogIdentifier])
  {
    v8 = @"option";
    v3 = [NSNumber numberWithUnsignedInteger:[(MobileChargingController *)self chargingScenario]];
    v9 = v3;
    v4 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];

    [(MobileChargingController *)self powerlogIdentifier];
    PPSSendTelemetry();
    v5 = qword_100036C98;
    if (os_log_type_enabled(qword_100036C98, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Logging to powerlog %@", &v6, 0xCu);
    }
  }

  else if (os_log_type_enabled(qword_100036C98, OS_LOG_TYPE_ERROR))
  {
    sub_100019B68();
  }
}

- (void)handleXPCEvent:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100015834;
  v7[3] = &unk_10002C698;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)registerForTestDefaultsChange
{
  if (notify_register_check("com.apple.powerexperienced.testmobilechargingcontroller.changed", &unk_100036CA0) && os_log_type_enabled(qword_100036C98, OS_LOG_TYPE_ERROR))
  {
    sub_100019BA8();
  }

  [(MobileChargingController *)self handleTestDefaultsChange];
}

- (void)handleTestDefaultsChange
{
  v3 = qword_100036C98;
  if (os_log_type_enabled(qword_100036C98, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Test defaults have changed", v8, 2u);
  }

  v4 = [(MobileChargingController *)self testDefaults];
  v5 = [v4 objectForKey:@"testDefaults"];

  v6 = [v5 objectForKeyedSubscript:@"boostModeEnagementDuration"];

  if (v6)
  {
    v7 = [v5 objectForKeyedSubscript:@"boostModeEnagementDuration"];
    [v7 doubleValue];
    [(MobileChargingController *)self setBoostModeMaxEngagement:?];

    [(MobileChargingController *)self evaluateChargingPolicy];
  }

  else
  {
    [(MobileChargingController *)self setBoostModeMaxEngagement:900.0];
  }
}

@end