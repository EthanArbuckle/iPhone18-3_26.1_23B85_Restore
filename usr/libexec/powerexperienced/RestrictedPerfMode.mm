@interface RestrictedPerfMode
+ (id)powerModeInstance;
- (BOOL)evaluatePowerModeWithResourceHints:(id)hints andContext:(id)context;
- (RestrictedPerfMode)init;
- (void)enterPowerMode;
- (void)exitPowerMode;
- (void)logStatusToPowerLog;
- (void)restoreState:(id)state;
@end

@implementation RestrictedPerfMode

- (RestrictedPerfMode)init
{
  v17.receiver = self;
  v17.super_class = RestrictedPerfMode;
  v2 = [(RestrictedPerfMode *)&v17 init];
  v3 = os_log_create("com.apple.powerexperienced", "RestrictedPerfMode");
  [(PowerModeObjImpl *)v2 setLog:v3];

  [(PowerModeObjImpl *)v2 setState:0];
  [(PowerModeObjImpl *)v2 setEnabled:1];
  [(PowerModeObjImpl *)v2 setEntryDelay:3.0];
  byte_100036B10 = _os_feature_enabled_impl();
  v4 = +[DeviceContext sharedInstance];
  v5 = [v4 objectForKeyedSubscript:@"kPlatformContext"];
  if ([v5 isEqual:@"iPhone"])
  {
    [(PowerModeObjImpl *)v2 setSupportedPlatform:1];
  }

  else
  {
    v6 = +[DeviceContext sharedInstance];
    v7 = [v6 objectForKeyedSubscript:@"kPlatformContext"];
    if ([v7 isEqual:@"Watch"])
    {
      [(PowerModeObjImpl *)v2 setSupportedPlatform:1];
    }

    else
    {
      v8 = +[DeviceContext sharedInstance];
      v9 = [v8 objectForKeyedSubscript:@"kPlatformContext"];
      -[PowerModeObjImpl setSupportedPlatform:](v2, "setSupportedPlatform:", [v9 isEqual:@"Mac"]);
    }
  }

  [(RestrictedPerfMode *)v2 setAllowOnCharger:0];
  if (![(PowerModeObjImpl *)v2 supportedPlatform])
  {
    v11 = [(PowerModeObjImpl *)v2 log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Restricted perf mode not supported on this platform", buf, 2u);
    }

    goto LABEL_18;
  }

  [(PowerModeObjImpl *)v2 setAppliesPowerTarget:1];
  if (byte_100036B10 == 1 && (MGGetBoolAnswer() & 1) == 0)
  {
    v15 = 0;
    v10 = [CLPCPolicyInterface createClient:&v15];
    v11 = v15;
    [(RestrictedPerfMode *)v2 setClpcClient:v10];

    v12 = [(PowerModeObjImpl *)v2 log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Initialized CLPC Policy Interface", buf, 2u);
    }

    if (v11)
    {
      v13 = [(PowerModeObjImpl *)v2 log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100018690(v11, v13);
      }

LABEL_18:
    }
  }

  return v2;
}

+ (id)powerModeInstance
{
  if (qword_100036B18 != -1)
  {
    sub_100018708();
  }

  v3 = qword_100036B20;

  return v3;
}

- (void)restoreState:(id)state
{
  [(PowerModeObjImpl *)self setState:0];

  [(PowerModeObjImpl *)self updatePowerTarget];
}

- (BOOL)evaluatePowerModeWithResourceHints:(id)hints andContext:(id)context
{
  hintsCopy = hints;
  contextCopy = context;
  if (![(PowerModeObjImpl *)self supportedPlatform])
  {
    v20 = [(PowerModeObjImpl *)self log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v33 = "Platform not supported";
LABEL_33:
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, v33, buf, 2u);
    }

LABEL_34:
    v34 = 0;
    goto LABEL_35;
  }

  if (![(PowerModeObjImpl *)self enabled])
  {
    v20 = [(PowerModeObjImpl *)self log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v33 = "Restriced Perf Mode is disabled";
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  v8 = [hintsCopy objectForKeyedSubscript:@"Display"];
  state = [v8 state];
  [v8 state];
  v9 = [hintsCopy objectForKeyedSubscript:@"CarPlay"];

  state2 = [v9 state];
  v10 = [hintsCopy objectForKeyedSubscript:@"NFCSession"];

  state3 = [v10 state];
  v12 = [hintsCopy objectForKeyedSubscript:@"AudioPlayback"];

  state4 = [v12 state];
  v13 = [hintsCopy objectForKeyedSubscript:@"SleepInProgress"];

  state5 = [v13 state];
  v15 = [hintsCopy objectForKeyedSubscript:@"WakeInProgress"];

  state6 = [v15 state];
  v17 = [hintsCopy objectForKeyedSubscript:@"OnenessSession"];

  state7 = [v17 state];
  v18 = [hintsCopy objectForKeyedSubscript:@"SiriAudio"];

  state8 = [v18 state];
  v19 = [hintsCopy objectForKeyedSubscript:@"FitnessIntelligenceWorkoutVoice"];

  state9 = [v19 state];
  v20 = [hintsCopy objectForKeyedSubscript:@"DataMigrationInProgress"];

  state10 = [v20 state];
  v22 = [contextCopy objectForKeyedSubscript:@"kPluggedInContext"];
  bOOLValue = [v22 BOOLValue];

  v24 = 0;
  v43 = state6;
  if (state6 == 1 || state5 == 1)
  {
    v25 = state;
  }

  else
  {
    v25 = state;
    if (state10 != 1)
    {
      v32 = state == 101 || state2 == 1 || state3 == 1 || state4 == 1 || state7 == 1 || state8 == 1 || state9 == 1;
      if ([(RestrictedPerfMode *)self allowOnCharger])
      {
        v24 = !v32;
      }

      else
      {
        v24 = (bOOLValue | v32) ^ 1;
      }
    }
  }

  v45 = v24;
  log = [(PowerModeObjImpl *)self log];
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    HIDWORD(v41) = state5 == 1;
    LODWORD(v41) = state4 == 1;
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    *buf = 138415618;
    v52 = v37;
    v53 = 1024;
    v54 = v45 & 1;
    v55 = 1024;
    v56 = v25 == 101;
    v57 = 1024;
    v58 = state2 == 1;
    v59 = 1024;
    v60 = state3 == 1;
    v61 = 1024;
    v62 = v41;
    v63 = 1024;
    v64 = HIDWORD(v41);
    v65 = 1024;
    v66 = v43 == 1;
    v67 = 1024;
    v68 = state7 == 1;
    v69 = 1024;
    v70 = state8 == 1;
    v71 = 1024;
    v72 = state9 == 1;
    v73 = 1024;
    v74 = state10 == 1;
    v75 = 1024;
    v76 = bOOLValue;
    v25 = state;
    v77 = 1024;
    allowOnCharger = [(RestrictedPerfMode *)self allowOnCharger];
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "evaluatePowerMode: %@: %d display %d, carPlaySession %d, nFCSession %d, audioSession %d, sleepInProgress %d, wakeInProgress %d, onenessSession %d, siriAudio %d, fitnessIntelligence %d, dataMigrationInProgress %d, pluggedIn %d (allowOnCharger: %d)", buf, 0x5Au);
  }

  v38 = (4 * (v25 == 101)) | (8 * (state2 == 1)) | (16 * (state3 == 1)) | (32 * (state4 == 1));
  if (state5 == 1)
  {
    ++v38;
  }

  [(RestrictedPerfMode *)self setClientResponsible:(v38 | (2 * (v43 == 1)) | ((state7 == 1) << 7)) + ((state8 == 1) << 10) + ((state9 == 1) << 17) + ((state10 == 1) << 18), v41];
  v34 = v45;
  if ((v45 & 1) == 0 && [(PowerModeObjImpl *)self state])
  {
    v39 = [(PowerModeObjImpl *)self log];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      clientResponsible = [(RestrictedPerfMode *)self clientResponsible];
      *buf = 134217984;
      v52 = clientResponsible;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Client responsible %llu", buf, 0xCu);
    }

    [(PowerModeObjImpl *)self setExitReason:3];
  }

LABEL_35:

  return v34 & 1;
}

- (void)enterPowerMode
{
  if (![(PowerModeObjImpl *)self state])
  {
    v5.receiver = self;
    v5.super_class = RestrictedPerfMode;
    [(PowerModeObjImpl *)&v5 enterPowerMode];
    v3 = [(PowerModeObjImpl *)self log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      state = [(PowerModeObjImpl *)self state];
      *buf = 67109120;
      v7 = state;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Entering restricted perf mode. New state %d", buf, 8u);
    }

    [(RestrictedPerfMode *)self logStatusToPowerLog];
  }
}

- (void)exitPowerMode
{
  if ([(PowerModeObjImpl *)self state])
  {
    v5.receiver = self;
    v5.super_class = RestrictedPerfMode;
    [(PowerModeObjImpl *)&v5 exitPowerMode];
    v3 = [(PowerModeObjImpl *)self log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      state = [(PowerModeObjImpl *)self state];
      *buf = 67109120;
      v7 = state;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Exiting restricted perf mode. New state %d", buf, 8u);
    }

    [(RestrictedPerfMode *)self logStatusToPowerLog];
  }
}

- (void)logStatusToPowerLog
{
  if (![(PowerModeObjImpl *)self powerlogIdentifier])
  {
    [(PowerModeObjImpl *)self setPowerlogIdentifier:PPSCreateTelemetryIdentifier()];
  }

  if ([(PowerModeObjImpl *)self powerlogIdentifier])
  {
    v9[0] = @"status";
    v3 = [NSNumber numberWithBool:[(PowerModeObjImpl *)self state]];
    v9[1] = @"client";
    v10[0] = v3;
    v4 = [NSNumber numberWithUnsignedLongLong:[(RestrictedPerfMode *)self clientResponsible]];
    v10[1] = v4;
    v5 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

    [(PowerModeObjImpl *)self powerlogIdentifier];
    PPSSendTelemetry();
    v6 = [(PowerModeObjImpl *)self log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Logging to powerlog %@", &v7, 0xCu);
    }
  }

  else
  {
    v5 = [(PowerModeObjImpl *)self log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10001871C(v5);
    }
  }
}

@end