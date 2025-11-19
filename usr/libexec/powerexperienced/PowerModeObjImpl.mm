@interface PowerModeObjImpl
- (void)enterPowerMode;
- (void)exitPowerMode;
- (void)logStatusToPowerLog;
- (void)restoreState:(id)a3;
- (void)updatePowerTarget;
- (void)updateSMCDebugKey;
@end

@implementation PowerModeObjImpl

- (void)enterPowerMode
{
  [(PowerModeObjImpl *)self setState:1];
  v3 = +[NSDate date];
  [(PowerModeObjImpl *)self setLastEntryTime:v3];

  [(PowerModeObjImpl *)self setExitReason:0];
  v4 = +[DeviceContext sharedInstance];
  v5 = [v4 objectForKeyedSubscript:@"kBatteryLevelContext"];
  [(PowerModeObjImpl *)self setStartingSOC:v5];

  v6 = [(PowerModeObjImpl *)self log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v18 = 138412290;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Entering Contextual Power Mode %@", &v18, 0xCu);
  }

  if ([(PowerModeObjImpl *)self appliesPowerTarget]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v9 = [(PowerModeObjImpl *)self log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v18 = 138412290;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Updating power target for %@", &v18, 0xCu);
    }

    [(PowerModeObjImpl *)self updatePowerTarget];
  }

  if ([(PowerModeObjImpl *)self appliesChargingPolicy]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v12 = [(PowerModeObjImpl *)self log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v18 = 138412290;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Updating charging policy for %@", &v18, 0xCu);
    }

    [(PowerModeObjImpl *)self updateChargingPolicy];
  }

  if ([(PowerModeObjImpl *)self appliesThermalPolicy]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v15 = [(PowerModeObjImpl *)self log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = 138412290;
      v19 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Updating thermal policy for %@", &v18, 0xCu);
    }

    [(PowerModeObjImpl *)self updateThermalPolicy];
  }

  [(PowerModeObjImpl *)self updateSMCDebugKey];
}

- (void)exitPowerMode
{
  [(PowerModeObjImpl *)self setState:0];
  v3 = +[NSDate date];
  [(PowerModeObjImpl *)self setLastExitTime:v3];

  v4 = [(PowerModeObjImpl *)self log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v27 = 138412290;
    v28 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Exiting Contextual Power Mode %@", &v27, 0xCu);
  }

  if ([(PowerModeObjImpl *)self appliesPowerTarget]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [(PowerModeObjImpl *)self log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v27 = 138412290;
      v28 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updating power target for %@", &v27, 0xCu);
    }

    [(PowerModeObjImpl *)self updatePowerTarget];
  }

  if ([(PowerModeObjImpl *)self appliesChargingPolicy]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v10 = [(PowerModeObjImpl *)self log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v27 = 138412290;
      v28 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Updating charging policy for %@", &v27, 0xCu);
    }

    [(PowerModeObjImpl *)self updateChargingPolicy];
  }

  if ([(PowerModeObjImpl *)self appliesThermalPolicy]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v13 = [(PowerModeObjImpl *)self log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v27 = 138412290;
      v28 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Updating thermal policy for %@", &v27, 0xCu);
    }

    [(PowerModeObjImpl *)self updateThermalPolicy];
  }

  v16 = +[DeviceContext sharedInstance];
  v17 = [v16 objectForKeyedSubscript:@"kBatteryLevelContext"];
  [(PowerModeObjImpl *)self setEndingSOC:v17];

  [(PowerModeObjImpl *)self updateSMCDebugKey];
  v18 = +[AnalyticsLogger logger];
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v21 = [(PowerModeObjImpl *)self lastEntryTime];
  v22 = [(PowerModeObjImpl *)self lastExitTime];
  v23 = [(PowerModeObjImpl *)self startingSOC];
  v24 = [(PowerModeObjImpl *)self endingSOC];
  v25 = [(PowerModeObjImpl *)self exitReason]- 1;
  if (v25 > 4)
  {
    v26 = @"Unknown";
  }

  else
  {
    v26 = off_10002C668[v25];
  }

  [v18 logCAEventforMode:v20 startDate:v21 endDate:v22 startingSOC:v23 endingSOC:v24 exitReason:v26];
}

- (void)restoreState:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = log;
    *buf = 138412546;
    v22 = objc_opt_class();
    v23 = 2112;
    v24 = v4;
    v7 = v22;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Restoring state for %@: %@", buf, 0x16u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v4 allKeys];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v13 isEqualToString:@"state"])
        {
          v14 = [v4 objectForKeyedSubscript:@"state"];
          -[PowerModeObjImpl setState:](self, "setState:", [v14 BOOLValue]);
        }

        if ([v13 isEqualToString:@"lastExitTime"])
        {
          v15 = [v4 objectForKeyedSubscript:@"lastExitTime"];
          [(PowerModeObjImpl *)self setLastExitTime:v15];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }
}

- (void)logStatusToPowerLog
{
  if (![(PowerModeObjImpl *)self powerlogIdentifier])
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    [(PowerModeObjImpl *)self setPowerlogIdentifier:PPSCreateTelemetryIdentifier()];
  }

  if ([(PowerModeObjImpl *)self powerlogIdentifier])
  {
    if ([(PowerModeObjImpl *)self exitReason])
    {
      v13[0] = @"status";
      v5 = [NSNumber numberWithBool:[(PowerModeObjImpl *)self state]];
      v13[1] = @"ExitReason";
      v14[0] = v5;
      v6 = [NSNumber numberWithUnsignedInteger:[(PowerModeObjImpl *)self exitReason]];
      v14[1] = v6;
      v7 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
    }

    else
    {
      v11 = @"status";
      v5 = [NSNumber numberWithBool:[(PowerModeObjImpl *)self state]];
      v12 = v5;
      v7 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    }

    v8 = [(PowerModeObjImpl *)self log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Logging %@ to powerlog", &v9, 0xCu);
    }

    [(PowerModeObjImpl *)self powerlogIdentifier];
    PPSSendTelemetry();
  }
}

- (void)updatePowerTarget
{
  v5 = +[CLPCPolicyInterfaceHelper sharedInstance];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [v5 updatePowerTargetForMode:v4 withState:{-[PowerModeObjImpl state](self, "state")}];
}

- (void)updateSMCDebugKey
{
  v5 = +[SMCSensorExchangeHelper sharedInstance];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [v5 updateSMCDebugKey:v4 withState:{-[PowerModeObjImpl state](self, "state")}];
}

@end