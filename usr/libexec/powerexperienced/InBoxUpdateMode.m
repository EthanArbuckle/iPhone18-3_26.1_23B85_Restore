@interface InBoxUpdateMode
+ (id)powerModeInstance;
- (BOOL)evaluatePowerModeWithResourceHints:(id)a3 andContext:(id)a4;
- (InBoxUpdateMode)init;
- (void)enterPowerMode;
- (void)exitPowerMode;
- (void)updatePowerAssertion;
- (void)updateThermalPolicy;
@end

@implementation InBoxUpdateMode

- (InBoxUpdateMode)init
{
  v9.receiver = self;
  v9.super_class = InBoxUpdateMode;
  v2 = [(InBoxUpdateMode *)&v9 init];
  v3 = os_log_create("com.apple.powerexperienced", "InBoxUpdateMode");
  [(PowerModeObjImpl *)v2 setLog:v3];

  [(PowerModeObjImpl *)v2 setState:0];
  [(PowerModeObjImpl *)v2 setEnabled:1];
  v4 = +[DeviceContext sharedInstance];
  v5 = [v4 objectForKeyedSubscript:@"kPlatformContext"];
  -[PowerModeObjImpl setSupportedPlatform:](v2, "setSupportedPlatform:", [v5 isEqual:@"Mac"]);

  if ([(PowerModeObjImpl *)v2 supportedPlatform])
  {
    [(PowerModeObjImpl *)v2 setAppliesPowerTarget:1];
    [(PowerModeObjImpl *)v2 setAppliesThermalPolicy:1];
  }

  else
  {
    v6 = [(PowerModeObjImpl *)v2 log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "InBoxUpdateMode not supported on this platform", v8, 2u);
    }
  }

  return v2;
}

+ (id)powerModeInstance
{
  if (qword_100036CD8 != -1)
  {
    sub_100019CF0();
  }

  v3 = qword_100036CE0;

  return v3;
}

- (BOOL)evaluatePowerModeWithResourceHints:(id)a3 andContext:(id)a4
{
  v5 = a3;
  if ([(PowerModeObjImpl *)self supportedPlatform])
  {
    v6 = [v5 objectForKeyedSubscript:@"InBoxSoftwareUpdate"];
    v7 = [v6 state] == 1;
  }

  else
  {
    v8 = [(PowerModeObjImpl *)self log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Platform not supported", v10, 2u);
    }

    v7 = 0;
  }

  return v7;
}

- (void)updateThermalPolicy
{
  v4 = +[SMCSensorExchangeHelper sharedInstance];
  if ([(PowerModeObjImpl *)self state])
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  [v4 updateCLTMThermalPolicy:v3];
}

- (void)updatePowerAssertion
{
  if ([(PowerModeObjImpl *)self state])
  {
    v12[0] = @"AssertType";
    v12[1] = @"AssertName";
    v13[0] = @"SoftwareUpdateTask";
    v13[1] = @"InBoxSoftwareUpdate";
    v12[2] = @"TimeoutSeconds";
    v3 = [NSNumber numberWithInt:7200];
    v13[2] = v3;
    v4 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];

    AssertionID = 0;
    v5 = IOPMAssertionCreateWithProperties(v4, &AssertionID);
    v6 = [(PowerModeObjImpl *)self log];
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        *buf = 67109120;
        v11 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Failed to create a power assertion 0x%x", buf, 8u);
      }
    }

    else
    {
      if (v7)
      {
        *buf = 67109120;
        v11 = AssertionID;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Created power assertion with ID %u", buf, 8u);
      }

      [(InBoxUpdateMode *)self setAssertionID:AssertionID];
    }
  }

  else
  {
    IOPMAssertionRelease([(InBoxUpdateMode *)self assertionID]);
    v4 = [(PowerModeObjImpl *)self log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_assertionID;
      *buf = 67109120;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Released power assertion with ID %u", buf, 8u);
    }
  }
}

- (void)enterPowerMode
{
  if (![(PowerModeObjImpl *)self state])
  {
    v3.receiver = self;
    v3.super_class = InBoxUpdateMode;
    [(PowerModeObjImpl *)&v3 enterPowerMode];
    [(InBoxUpdateMode *)self updatePowerAssertion];
    [(PowerModeObjImpl *)self logStatusToPowerLog];
  }
}

- (void)exitPowerMode
{
  if ([(PowerModeObjImpl *)self state])
  {
    v3.receiver = self;
    v3.super_class = InBoxUpdateMode;
    [(PowerModeObjImpl *)&v3 exitPowerMode];
    [(InBoxUpdateMode *)self updatePowerAssertion];
    [(PowerModeObjImpl *)self logStatusToPowerLog];
  }
}

@end