@interface InUseChargingMode
+ (id)powerModeInstance;
- (BOOL)evaluatePowerModeWithResourceHints:(id)a3 andContext:(id)a4;
- (InUseChargingMode)init;
- (void)enterPowerMode;
- (void)exitPowerMode;
- (void)updateChargingPolicy;
@end

@implementation InUseChargingMode

- (InUseChargingMode)init
{
  if (_os_feature_enabled_impl())
  {
    v8.receiver = self;
    v8.super_class = InUseChargingMode;
    self = [(InUseChargingMode *)&v8 init];
    v3 = os_log_create("com.apple.powerexperienced", "InUseChargingMode");
    [(PowerModeObjImpl *)self setLog:v3];

    [(PowerModeObjImpl *)self setState:0];
    [(PowerModeObjImpl *)self setEnabled:1];
    [(PowerModeObjImpl *)self setEntryDelay:30.0];
    v4 = +[DeviceContext sharedInstance];
    v5 = [v4 objectForKeyedSubscript:@"kPlatformContext"];
    -[PowerModeObjImpl setSupportedPlatform:](self, "setSupportedPlatform:", [v5 isEqual:@"iPhone"]);

    [(PowerModeObjImpl *)self setAppliesChargingPolicy:1];
  }

  v6 = self;

  return v6;
}

+ (id)powerModeInstance
{
  if (qword_100036AF0 != -1)
  {
    sub_100018668();
  }

  v3 = qword_100036AF8;

  return v3;
}

- (BOOL)evaluatePowerModeWithResourceHints:(id)a3 andContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v33 = [(PowerModeObjImpl *)self state];
  v8 = [(PowerModeObjImpl *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v35 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "evaluatePowerMode resources %@", buf, 0xCu);
  }

  v9 = [v6 objectForKeyedSubscript:@"Display"];
  v31 = [v9 state];
  v10 = [v6 objectForKeyedSubscript:@"CarPlay"];

  v11 = [v10 state];
  v12 = [v6 objectForKeyedSubscript:@"Camera"];

  v32 = [v12 state];
  v13 = [v6 objectForKeyedSubscript:@"PersonalHotspot"];

  v14 = [v13 state];
  v15 = [v7 objectForKeyedSubscript:@"kPluggedInContext"];
  v16 = [v15 BOOLValue];

  v17 = [v7 objectForKeyedSubscript:@"kLockStateContext"];
  v18 = [v17 BOOLValue];

  v19 = 1;
  if (((v31 == 101) & (v18 ^ 1)) == 0 && v11 != 1)
  {
    v19 = v32 == 1 || v14 == 1;
  }

  v21 = [v7 objectForKeyedSubscript:@"kBatteryLevelContext"];

  v22 = [v21 intValue];
  if ((v16 & 1) == 0)
  {
    v23 = 0;
    if ((v33 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_21;
  }

  v23 = v22 > 19 && v19;
  if (!(v33 & 1 | ((v23 & 1) == 0)) && v11 != 1)
  {
    v24 = +[ChargeDurationPredictor sharedInstance];
    v23 = [v24 inTypicalUsageEnvironment];
  }

  if (v33 != v23)
  {
LABEL_21:
    v25 = [(PowerModeObjImpl *)self log];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      *buf = 138413570;
      v35 = v27;
      v36 = 1024;
      v37 = v23;
      v38 = 1024;
      v39 = v31 == 101;
      v40 = 1024;
      v41 = v11 == 1;
      v42 = 1024;
      v43 = v32 == 1;
      v44 = 1024;
      v45 = v16;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "evaluatePowerMode: %@: %d display %d, carPlaySession %d cameraActive %d, pluggedIn %d", buf, 0x2Au);
    }

    if (v23)
    {
      LOBYTE(v23) = 1;
    }

    else
    {
      v28 = 5;
      if (v22 > 19)
      {
        v28 = 1;
      }

      if (!v19)
      {
        v28 = 2;
      }

      if (v16)
      {
        v29 = v28;
      }

      else
      {
        v29 = 4;
      }

      [(PowerModeObjImpl *)self setExitReason:v29];
      LOBYTE(v23) = 0;
    }
  }

LABEL_33:

  return v23;
}

- (void)enterPowerMode
{
  v3.receiver = self;
  v3.super_class = InUseChargingMode;
  [(PowerModeObjImpl *)&v3 enterPowerMode];
  [(PowerModeObjImpl *)self logStatusToPowerLog];
}

- (void)exitPowerMode
{
  v3.receiver = self;
  v3.super_class = InUseChargingMode;
  [(PowerModeObjImpl *)&v3 exitPowerMode];
  [(PowerModeObjImpl *)self logStatusToPowerLog];
}

- (void)updateChargingPolicy
{
  v3 = +[SMCSensorExchangeHelper sharedInstance];
  [v3 updateCLTMChargingPolicy:{-[PowerModeObjImpl state](self, "state")}];
}

@end