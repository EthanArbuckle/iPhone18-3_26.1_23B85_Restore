@interface AcceleratedChargingMode
+ (id)powerModeInstance;
- (AcceleratedChargingMode)init;
- (BOOL)evaluatePowerModeWithResourceHints:(id)a3 andContext:(id)a4;
- (void)enterPowerMode;
- (void)exitPowerMode;
@end

@implementation AcceleratedChargingMode

- (AcceleratedChargingMode)init
{
  if (_os_feature_enabled_impl())
  {
    v8.receiver = self;
    v8.super_class = AcceleratedChargingMode;
    self = [(AcceleratedChargingMode *)&v8 init];
    v3 = os_log_create("com.apple.powerexperience", "AcceleratedChargingMode");
    [(PowerModeObjImpl *)self setLog:v3];

    [(PowerModeObjImpl *)self setState:0];
    [(PowerModeObjImpl *)self setEnabled:1];
    [(PowerModeObjImpl *)self setEntryDelay:120.0];
    [(PowerModeObjImpl *)self setMaxEngagementDuration:1800.0];
    v4 = +[DeviceContext sharedInstance];
    v5 = [v4 objectForKeyedSubscript:@"kPlatformContext"];
    -[PowerModeObjImpl setSupportedPlatform:](self, "setSupportedPlatform:", [v5 isEqual:@"iPhone"]);

    [(PowerModeObjImpl *)self setAppliesPowerTarget:1];
  }

  v6 = self;

  return v6;
}

+ (id)powerModeInstance
{
  if (qword_100036B28 != -1)
  {
    sub_100018760();
  }

  v3 = qword_100036B30;

  return v3;
}

- (BOOL)evaluatePowerModeWithResourceHints:(id)a3 andContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 objectForKeyedSubscript:@"kPluggedInContext"];
  v52 = [v8 BOOLValue];

  v9 = [v6 objectForKeyedSubscript:@"kBatteryLevelContext"];
  v49 = [v9 intValue];

  v50 = v6;
  v10 = [v6 objectForKeyedSubscript:@"kLockStateContext"];
  v11 = [v10 BOOLValue] ^ 1;

  v12 = self;
  v13 = [(PowerModeObjImpl *)self log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_100018774(v11, v13);
  }

  v48 = v11;

  v14 = [v7 objectForKeyedSubscript:@"Display"];
  v15 = [v14 state];
  v16 = [v7 objectForKeyedSubscript:@"CarPlay"];

  v17 = [v16 state];
  v18 = [v7 objectForKeyedSubscript:@"AudioSession"];

  v19 = [v18 state];
  v20 = [v7 objectForKeyedSubscript:@"PhoneCall"];

  v21 = [v20 state];
  v22 = [v7 objectForKeyedSubscript:@"OnenessSession"];

  v23 = [v22 state];
  v24 = [v7 objectForKeyedSubscript:@"USBDeviceMode"];

  v25 = [v24 state];
  v26 = [v7 objectForKeyedSubscript:@"DataMigrationInProgress"];

  v51 = v26;
  v27 = [v26 state];
  v28 = v27;
  v29 = 1;
  v47 = v15;
  if (v15 == 101 || v17 == 1)
  {
    v30 = v12;
    v31 = v50;
LABEL_20:
    if (![(PowerModeObjImpl *)v30 state])
    {
      goto LABEL_40;
    }

    v44 = v28;
    v36 = 0;
    LOBYTE(v35) = 0;
    [(PowerModeObjImpl *)v30 log];
    v37 = LABEL_25:;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      v40 = [v31 objectForKeyedSubscript:@"kBatteryLevelContext"];
      *buf = 138414082;
      v54 = v39;
      v55 = 1024;
      v56 = v36;
      v57 = 1024;
      v58 = v47 == 101;
      v59 = 1024;
      v60 = v48;
      v61 = 1024;
      v62 = v17 == 1;
      v63 = 1024;
      v64 = v52;
      v65 = 1024;
      v66 = v45 == 1;
      v67 = 2112;
      v68 = v40;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "evaluatePowerMode: %@: %d display %d unlocked %d, carPlay %d, pluggedIn %d, dataMigrationInProgress %d, batterylevel %@", buf, 0x3Au);
    }

    if (v35)
    {
      LOBYTE(v35) = 1;
      goto LABEL_41;
    }

    if (v45 == 1)
    {
      v41 = 3;
    }

    else
    {
      v41 = 1;
    }

    if (v49 > 50)
    {
      v41 = 5;
    }

    if (!v52)
    {
      v41 = 4;
    }

    if (v29)
    {
      v42 = 3;
    }

    else
    {
      v42 = v41;
    }

    [(PowerModeObjImpl *)v30 setExitReason:v42];
LABEL_40:
    LOBYTE(v35) = 0;
    goto LABEL_41;
  }

  v30 = v12;
  v31 = v50;
  if (v19 == 1 || v21 == 1)
  {
    goto LABEL_20;
  }

  v32 = v23 == 1 || v25 == 1;
  v29 = v32;
  if (!v52 || (v29 & 1) != 0 || v49 > 50 || v27 == 1)
  {
    goto LABEL_20;
  }

  v33 = +[ChargeDurationPredictor sharedInstance];
  v34 = v33;
  if (v33)
  {
    v35 = [v33 shortChargeExpected];
  }

  else
  {
    v35 = 0;
  }

  if (v35 != [(PowerModeObjImpl *)v12 state])
  {
    v46 = v28;
    v29 = 0;
    v36 = v35;
    [(PowerModeObjImpl *)v12 log];
    goto LABEL_25;
  }

LABEL_41:

  return v35;
}

- (void)enterPowerMode
{
  if (![(PowerModeObjImpl *)self state])
  {
    v3.receiver = self;
    v3.super_class = AcceleratedChargingMode;
    [(PowerModeObjImpl *)&v3 enterPowerMode];
    [(PowerModeObjImpl *)self updatePowerTarget];
    [(PowerModeObjImpl *)self logStatusToPowerLog];
  }
}

- (void)exitPowerMode
{
  if ([(PowerModeObjImpl *)self state])
  {
    v3.receiver = self;
    v3.super_class = AcceleratedChargingMode;
    [(PowerModeObjImpl *)&v3 exitPowerMode];
    [(PowerModeObjImpl *)self logStatusToPowerLog];
  }
}

@end