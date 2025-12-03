@interface LongChargingMode
+ (id)powerModeInstance;
- (BOOL)evaluatePowerModeWithResourceHints:(id)hints andContext:(id)context;
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

  selfCopy = self;

  return selfCopy;
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

- (BOOL)evaluatePowerModeWithResourceHints:(id)hints andContext:(id)context
{
  contextCopy = context;
  hintsCopy = hints;
  v7 = [contextCopy objectForKeyedSubscript:@"kPluggedInContext"];
  bOOLValue = [v7 BOOLValue];

  v8 = [hintsCopy objectForKeyedSubscript:@"Display"];
  state = [v8 state];
  v10 = [contextCopy objectForKeyedSubscript:@"kLockStateContext"];

  bOOLValue2 = [v10 BOOLValue];
  v12 = [hintsCopy objectForKeyedSubscript:@"CarPlay"];

  state2 = [v12 state];
  v14 = [hintsCopy objectForKeyedSubscript:@"AudioSession"];

  state3 = [v14 state];
  v16 = [hintsCopy objectForKeyedSubscript:@"PhoneCall"];

  state4 = [v16 state];
  v18 = [hintsCopy objectForKeyedSubscript:@"OnenessSession"];

  state5 = [v18 state];
  v20 = [hintsCopy objectForKeyedSubscript:@"USBDeviceMode"];

  state6 = [v20 state];
  v22 = 1;
  if (((state == 101) & (bOOLValue2 ^ 1)) != 0 || state2 == 1 || state3 == 1)
  {
    selfCopy2 = self;
LABEL_16:
    if (![(PowerModeObjImpl *)selfCopy2 state])
    {
      goto LABEL_31;
    }

    v28 = 0;
    LOBYTE(longChargeExpected) = 0;
LABEL_21:
    v29 = [(PowerModeObjImpl *)selfCopy2 log];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      *buf = 138413314;
      v38 = v31;
      v39 = 1024;
      v40 = v28;
      v41 = 1024;
      v42 = state == 101;
      v43 = 1024;
      v44 = state2 == 1;
      v45 = 1024;
      v46 = bOOLValue;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "evaluatePowerMode: %@: %d display %d, carPlay %d, pluggedIn %d", buf, 0x24u);
    }

    if (longChargeExpected)
    {
      LOBYTE(longChargeExpected) = 1;
      goto LABEL_32;
    }

    v32 = 4;
    if (bOOLValue)
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

    [(PowerModeObjImpl *)selfCopy2 setExitReason:v33];
LABEL_31:
    LOBYTE(longChargeExpected) = 0;
    goto LABEL_32;
  }

  v24 = state4 == 1;
  selfCopy2 = self;
  if (v24)
  {
    goto LABEL_16;
  }

  v24 = state5 == 1 || state6 == 1;
  v22 = v24;
  if (!bOOLValue || (v22 & 1) != 0)
  {
    goto LABEL_16;
  }

  v25 = +[ChargeDurationPredictor sharedInstance];
  v26 = v25;
  if (v25)
  {
    longChargeExpected = [v25 longChargeExpected];
  }

  else
  {
    longChargeExpected = 0;
  }

  if (longChargeExpected != [(PowerModeObjImpl *)self state])
  {
    v22 = 0;
    v28 = longChargeExpected;
    goto LABEL_21;
  }

LABEL_32:

  return longChargeExpected;
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