@interface InUseChargingMode
+ (id)powerModeInstance;
- (BOOL)evaluatePowerModeWithResourceHints:(id)hints andContext:(id)context;
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

  selfCopy = self;

  return selfCopy;
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

- (BOOL)evaluatePowerModeWithResourceHints:(id)hints andContext:(id)context
{
  hintsCopy = hints;
  contextCopy = context;
  state = [(PowerModeObjImpl *)self state];
  v8 = [(PowerModeObjImpl *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v35 = hintsCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "evaluatePowerMode resources %@", buf, 0xCu);
  }

  v9 = [hintsCopy objectForKeyedSubscript:@"Display"];
  state2 = [v9 state];
  v10 = [hintsCopy objectForKeyedSubscript:@"CarPlay"];

  state3 = [v10 state];
  v12 = [hintsCopy objectForKeyedSubscript:@"Camera"];

  state4 = [v12 state];
  v13 = [hintsCopy objectForKeyedSubscript:@"PersonalHotspot"];

  state5 = [v13 state];
  v15 = [contextCopy objectForKeyedSubscript:@"kPluggedInContext"];
  bOOLValue = [v15 BOOLValue];

  v17 = [contextCopy objectForKeyedSubscript:@"kLockStateContext"];
  bOOLValue2 = [v17 BOOLValue];

  v19 = 1;
  if (((state2 == 101) & (bOOLValue2 ^ 1)) == 0 && state3 != 1)
  {
    v19 = state4 == 1 || state5 == 1;
  }

  v21 = [contextCopy objectForKeyedSubscript:@"kBatteryLevelContext"];

  intValue = [v21 intValue];
  if ((bOOLValue & 1) == 0)
  {
    inTypicalUsageEnvironment = 0;
    if ((state & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_21;
  }

  inTypicalUsageEnvironment = intValue > 19 && v19;
  if (!(state & 1 | ((inTypicalUsageEnvironment & 1) == 0)) && state3 != 1)
  {
    v24 = +[ChargeDurationPredictor sharedInstance];
    inTypicalUsageEnvironment = [v24 inTypicalUsageEnvironment];
  }

  if (state != inTypicalUsageEnvironment)
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
      v37 = inTypicalUsageEnvironment;
      v38 = 1024;
      v39 = state2 == 101;
      v40 = 1024;
      v41 = state3 == 1;
      v42 = 1024;
      v43 = state4 == 1;
      v44 = 1024;
      v45 = bOOLValue;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "evaluatePowerMode: %@: %d display %d, carPlaySession %d cameraActive %d, pluggedIn %d", buf, 0x2Au);
    }

    if (inTypicalUsageEnvironment)
    {
      LOBYTE(inTypicalUsageEnvironment) = 1;
    }

    else
    {
      v28 = 5;
      if (intValue > 19)
      {
        v28 = 1;
      }

      if (!v19)
      {
        v28 = 2;
      }

      if (bOOLValue)
      {
        v29 = v28;
      }

      else
      {
        v29 = 4;
      }

      [(PowerModeObjImpl *)self setExitReason:v29];
      LOBYTE(inTypicalUsageEnvironment) = 0;
    }
  }

LABEL_33:

  return inTypicalUsageEnvironment;
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