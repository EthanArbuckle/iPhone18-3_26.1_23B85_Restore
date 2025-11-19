@interface LongChargingMode
+ (id)powerModeInstance;
- (BOOL)evaluatePowerModeWithResourceHints:(id)a3 andContext:(id)a4;
- (LongChargingMode)init;
- (void)enterPowerMode;
- (void)exitPowerMode;
- (void)updateChargingPolicy;
@end

@implementation LongChargingMode

- (LongChargingMode)init
{
  if (_os_feature_enabled_impl())
  {
    v8.receiver = self;
    v8.super_class = LongChargingMode;
    self = [(LongChargingMode *)&v8 init];
    v3 = os_log_create("com.apple.powerexperience", "LongChargingMode");
    [(PowerModeObjImpl *)self setLog:v3];

    [(PowerModeObjImpl *)self setState:0];
    [(PowerModeObjImpl *)self setEnabled:1];
    v4 = +[DeviceContext sharedInstance];
    v5 = [v4 objectForKeyedSubscript:@"kPlatformContext"];
    -[PowerModeObjImpl setSupportedPlatform:](self, "setSupportedPlatform:", [v5 isEqual:@"iPhone"]);

    [(PowerModeObjImpl *)self setAppliesChargingPolicy:1];
    [(PowerModeObjImpl *)self setMaxEngagementDuration:3600.0];
  }

  v6 = self;

  return v6;
}

+ (id)powerModeInstance
{
  if (qword_100036B00 != -1)
  {
    sub_10001867C();
  }

  v3 = qword_100036B08;

  return v3;
}

- (BOOL)evaluatePowerModeWithResourceHints:(id)a3 andContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:@"kPluggedInContext"];
  v35 = [v7 BOOLValue];

  v8 = [v6 objectForKeyedSubscript:@"Display"];
  v9 = [v8 state];
  v10 = [v5 objectForKeyedSubscript:@"kLockStateContext"];

  v11 = [v10 BOOLValue];
  v12 = [v6 objectForKeyedSubscript:@"CarPlay"];

  v13 = [v12 state];
  v14 = [v6 objectForKeyedSubscript:@"AudioSession"];

  v15 = [v14 state];
  v16 = [v6 objectForKeyedSubscript:@"PhoneCall"];

  v17 = [v16 state];
  v18 = [v6 objectForKeyedSubscript:@"OnenessSession"];

  v19 = [v18 state];
  v20 = [v6 objectForKeyedSubscript:@"USBDeviceMode"];

  v21 = [v20 state];
  v22 = 1;
  if (((v9 == 101) & (v11 ^ 1)) != 0 || v13 == 1 || v15 == 1)
  {
    v23 = self;
LABEL_16:
    if (![(PowerModeObjImpl *)v23 state])
    {
      goto LABEL_31;
    }

    v28 = 0;
    LOBYTE(v27) = 0;
LABEL_21:
    v29 = [(PowerModeObjImpl *)v23 log];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      *buf = 138413314;
      v38 = v31;
      v39 = 1024;
      v40 = v28;
      v41 = 1024;
      v42 = v9 == 101;
      v43 = 1024;
      v44 = v13 == 1;
      v45 = 1024;
      v46 = v35;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "evaluatePowerMode: %@: %d display %d, carPlay %d, pluggedIn %d", buf, 0x24u);
    }

    if (v27)
    {
      LOBYTE(v27) = 1;
      goto LABEL_32;
    }

    v32 = 4;
    if (v35)
    {
      v32 = 1;
    }

    if (v22)
    {
      v33 = 3;
    }

    else
    {
      v33 = v32;
    }

    [(PowerModeObjImpl *)v23 setExitReason:v33];
LABEL_31:
    LOBYTE(v27) = 0;
    goto LABEL_32;
  }

  v24 = v17 == 1;
  v23 = self;
  if (v24)
  {
    goto LABEL_16;
  }

  v24 = v19 == 1 || v21 == 1;
  v22 = v24;
  if (!v35 || (v22 & 1) != 0)
  {
    goto LABEL_16;
  }

  v25 = +[ChargeDurationPredictor sharedInstance];
  v26 = v25;
  if (v25)
  {
    v27 = [v25 longChargeExpected];
  }

  else
  {
    v27 = 0;
  }

  if (v27 != [(PowerModeObjImpl *)self state])
  {
    v22 = 0;
    v28 = v27;
    goto LABEL_21;
  }

LABEL_32:

  return v27;
}

- (void)enterPowerMode
{
  if (![(PowerModeObjImpl *)self state])
  {
    v3.receiver = self;
    v3.super_class = LongChargingMode;
    [(PowerModeObjImpl *)&v3 enterPowerMode];
    [(PowerModeObjImpl *)self logStatusToPowerLog];
  }
}

- (void)exitPowerMode
{
  if ([(PowerModeObjImpl *)self state])
  {
    v3.receiver = self;
    v3.super_class = LongChargingMode;
    [(PowerModeObjImpl *)&v3 exitPowerMode];
    [(PowerModeObjImpl *)self logStatusToPowerLog];
  }
}

- (void)updateChargingPolicy
{
  v3 = +[SMCSensorExchangeHelper sharedInstance];
  [v3 updateCLTMChargingPolicy:{-[PowerModeObjImpl state](self, "state")}];
}

@end