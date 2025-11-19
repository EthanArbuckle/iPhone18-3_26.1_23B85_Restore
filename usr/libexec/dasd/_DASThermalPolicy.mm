@interface _DASThermalPolicy
+ (id)policyInstance;
- (BOOL)appliesToActivity:(id)a3;
- (BOOL)isRestoreInProgressWithContext:(id)a3;
- (BOOL)shouldIgnoreThermalsForActivity:(id)a3 withState:(id)a4;
- (BOOL)shouldIgnoreTrigger:(id)a3 withState:(id)a4;
- (_DASThermalPolicy)init;
- (double)getScoreForThermalLevel:(int)a3;
- (id)initializeTriggers;
- (id)responseForActivity:(id)a3 withState:(id)a4;
- (int)maxAllowableThermalPressureForActivity:(id)a3 restoreInProgress:(BOOL)a4 deviceInUse:(BOOL)a5;
- (int)thermalPressureWithState:(id)a3;
- (int64_t)getReasonForThermalLevel:(int)a3;
- (void)dasTrialManager:(id)a3 hasUpdatedParametersForNamespace:(id)a4;
- (void)updateSystemConstraintsWithContext:(id)a3;
- (void)updateTrialParameters;
@end

@implementation _DASThermalPolicy

+ (id)policyInstance
{
  if (qword_10020B400 != -1)
  {
    sub_100120E94();
  }

  v3 = qword_10020B408;

  return v3;
}

- (id)initializeTriggers
{
  v10 = [_CDContextualPredicate predicateForChangeAtKeyPath:self->_thermalPressureLevelKeyPath];
  v9 = [_CDContextualPredicate predicateForChangeAtKeyPath:self->_watchThermalPressureLevelKeyPath];
  v3 = [_CDContextualPredicate predicateForChangeAtKeyPath:self->_restoreInProgressKeyPath];
  v15[0] = @"identifier";
  v15[1] = @"predicate";
  v16[0] = @"com.apple.duetactivityscheduler.thermalpolicypolicy.thermalpressurechange";
  v16[1] = v10;
  v15[2] = @"deviceSet";
  v15[3] = @"mustWake";
  v16[2] = &off_1001C9B20;
  v16[3] = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:4];
  v17[0] = v4;
  v13[0] = @"identifier";
  v13[1] = @"predicate";
  v14[0] = @"com.apple.duetactivityscheduler.thermalpolicypolicy.watchthermalpressurechange";
  v14[1] = v9;
  v13[2] = @"deviceSet";
  v13[3] = @"mustWake";
  v14[2] = &off_1001C9B20;
  v14[3] = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:4];
  v17[1] = v5;
  v11[0] = @"identifier";
  v11[1] = @"predicate";
  v12[0] = @"com.apple.duetactivityscheduler.thermalpolicy.restore";
  v12[1] = v3;
  v11[2] = @"deviceSet";
  v11[3] = @"mustWake";
  v12[2] = &off_1001C9B20;
  v12[3] = &__kCFBooleanTrue;
  v6 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:4];
  v17[2] = v6;
  v7 = [NSArray arrayWithObjects:v17 count:3];

  return v7;
}

- (_DASThermalPolicy)init
{
  v16.receiver = self;
  v16.super_class = _DASThermalPolicy;
  v2 = [(_DASThermalPolicy *)&v16 init];
  v3 = v2;
  if (v2)
  {
    policyName = v2->_policyName;
    v2->_policyName = @"Thermal Policy";

    v5 = +[_CDContextQueries keyPathForThermalPressureLevel];
    thermalPressureLevelKeyPath = v3->_thermalPressureLevelKeyPath;
    v3->_thermalPressureLevelKeyPath = v5;

    v7 = +[_CDContextQueries keyPathForDefaultPairedDeviceThermalPressureLevel];
    watchThermalPressureLevelKeyPath = v3->_watchThermalPressureLevelKeyPath;
    v3->_watchThermalPressureLevelKeyPath = v7;

    v9 = [_CDContextualKeyPath ephemeralKeyPathWithKey:@"/restore/inProgress"];
    restoreInProgressKeyPath = v3->_restoreInProgressKeyPath;
    v3->_restoreInProgressKeyPath = v9;

    v11 = [(_DASThermalPolicy *)v3 initializeTriggers];
    triggers = v3->_triggers;
    v3->_triggers = v11;

    v13 = +[_DASTrialManager sharedInstance];
    trialManager = v3->_trialManager;
    v3->_trialManager = v13;

    [(_DASTrialManager *)v3->_trialManager addDelegate:v3];
    [(_DASThermalPolicy *)v3 updateTrialParameters];
    if (!v3->_continuedProcessingInUseMax)
    {
      v3->_continuedProcessingInUseMax = 10;
    }

    if (!v3->_continuedProcessingSignificantInactivityMax)
    {
      v3->_continuedProcessingSignificantInactivityMax = 20;
    }
  }

  return v3;
}

- (void)dasTrialManager:(id)a3 hasUpdatedParametersForNamespace:(id)a4
{
  if ([a4 isEqualToString:@"COREOS_DAS"])
  {

    [(_DASThermalPolicy *)self updateTrialParameters];
  }
}

- (void)updateTrialParameters
{
  v3 = [(_DASTrialManager *)self->_trialManager factorWithName:@"PolicyThermalUtilityMaxAllowable"];
  v4 = [v3 longValue];

  self->_utilityMax = [(_DASThermalPolicy *)self levelFromTrialLevel:v4];
  v5 = [_DASDaemonLogger logForCategory:@"trial"];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    utilityMax = self->_utilityMax;
    v39 = 138412546;
    v40 = @"PolicyThermalUtilityMaxAllowable";
    v41 = 1024;
    v42 = utilityMax;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is %u", &v39, 0x12u);
  }

  v7 = [(_DASTrialManager *)self->_trialManager factorWithName:@"PolicyThermalUtilityInUseMaxAllowable"];
  v8 = [v7 longValue];

  self->_utilityInUseMax = [(_DASThermalPolicy *)self levelFromTrialLevel:v8];
  v9 = [_DASDaemonLogger logForCategory:@"trial"];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    utilityInUseMax = self->_utilityInUseMax;
    v39 = 138412546;
    v40 = @"PolicyThermalUtilityInUseMaxAllowable";
    v41 = 1024;
    v42 = utilityInUseMax;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ is %u", &v39, 0x12u);
  }

  v11 = [(_DASTrialManager *)self->_trialManager factorWithName:@"PolicyThermalUtilityInactivityMaxAllowable"];
  v12 = [v11 longValue];

  self->_utilitySignificantInactivityMax = [(_DASThermalPolicy *)self levelFromTrialLevel:v12];
  v13 = [_DASDaemonLogger logForCategory:@"trial"];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    utilitySignificantInactivityMax = self->_utilitySignificantInactivityMax;
    v39 = 138412546;
    v40 = @"PolicyThermalUtilityInactivityMaxAllowable";
    v41 = 1024;
    v42 = utilitySignificantInactivityMax;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@ is %u", &v39, 0x12u);
  }

  v15 = [(_DASTrialManager *)self->_trialManager factorWithName:@"PolicyThermalMaintenanceMaxAllowable"];
  v16 = [v15 longValue];

  self->_maintenanceMax = [(_DASThermalPolicy *)self levelFromTrialLevel:v16];
  v17 = [_DASDaemonLogger logForCategory:@"trial"];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    maintenanceMax = self->_maintenanceMax;
    v39 = 138412546;
    v40 = @"PolicyThermalMaintenanceMaxAllowable";
    v41 = 1024;
    v42 = maintenanceMax;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@ is %u", &v39, 0x12u);
  }

  v19 = [(_DASTrialManager *)self->_trialManager factorWithName:@"PolicyThermalMaintenanceInUseMaxAllowable"];
  v20 = [v19 longValue];

  self->_maintenanceInUseMax = [(_DASThermalPolicy *)self levelFromTrialLevel:v20];
  v21 = [_DASDaemonLogger logForCategory:@"trial"];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    maintenanceInUseMax = self->_maintenanceInUseMax;
    v39 = 138412546;
    v40 = @"PolicyThermalMaintenanceInUseMaxAllowable";
    v41 = 1024;
    v42 = maintenanceInUseMax;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@ is %u", &v39, 0x12u);
  }

  v23 = [(_DASTrialManager *)self->_trialManager factorWithName:@"PolicyThermalMaintenanceInactivityMaxAllowable"];
  v24 = [v23 longValue];

  self->_maintenanceSignificantInactivityMax = [(_DASThermalPolicy *)self levelFromTrialLevel:v24];
  v25 = [_DASDaemonLogger logForCategory:@"trial"];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    maintenanceSignificantInactivityMax = self->_maintenanceSignificantInactivityMax;
    v39 = 138412546;
    v40 = @"PolicyThermalMaintenanceInactivityMaxAllowable";
    v41 = 1024;
    v42 = maintenanceSignificantInactivityMax;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%@ is %u", &v39, 0x12u);
  }

  v27 = [(_DASTrialManager *)self->_trialManager factorWithName:@"PolicyThermalMaintenanceNetworkMaxAllowable"];
  v28 = [v27 longValue];

  self->_maintenanceNWMax = [(_DASThermalPolicy *)self levelFromTrialLevel:v28];
  v29 = [_DASDaemonLogger logForCategory:@"trial"];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    maintenanceNWMax = self->_maintenanceNWMax;
    v39 = 138412546;
    v40 = @"PolicyThermalMaintenanceNetworkMaxAllowable";
    v41 = 1024;
    v42 = maintenanceNWMax;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%@ is %u", &v39, 0x12u);
  }

  v31 = [(_DASTrialManager *)self->_trialManager factorWithName:@"PolicyThermalContinuedProcessingMaxInUseAllowable"];
  v32 = [v31 longValue];

  self->_continuedProcessingInUseMax = [(_DASThermalPolicy *)self levelFromTrialLevel:v32];
  v33 = [_DASDaemonLogger logForCategory:@"trial"];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    continuedProcessingInUseMax = self->_continuedProcessingInUseMax;
    v39 = 138412546;
    v40 = @"PolicyThermalContinuedProcessingMaxInUseAllowable";
    v41 = 1024;
    v42 = continuedProcessingInUseMax;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%@ is %u", &v39, 0x12u);
  }

  v35 = [(_DASTrialManager *)self->_trialManager factorWithName:@"PolicyThermalContinuedProcessingMaxSignificantInactivityAllowablePressure"];
  v36 = [v35 longValue];

  self->_continuedProcessingSignificantInactivityMax = [(_DASThermalPolicy *)self levelFromTrialLevel:v36];
  v37 = [_DASDaemonLogger logForCategory:@"trial"];
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    continuedProcessingSignificantInactivityMax = self->_continuedProcessingSignificantInactivityMax;
    v39 = 138412546;
    v40 = @"PolicyThermalContinuedProcessingMaxSignificantInactivityAllowablePressure";
    v41 = 1024;
    v42 = continuedProcessingSignificantInactivityMax;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%@ is %u", &v39, 0x12u);
  }
}

- (void)updateSystemConstraintsWithContext:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:self->_thermalPressureLevelKeyPath];
  v4 = [v3 unsignedIntValue];

  v5 = +[_DASDaemon sharedInstance];
  v6 = v5;
  if (v4)
  {
    [v5 addConstraint:2 forSchedulingPriority:_DASSchedulingPriorityMaintenance];

    v7 = +[_DASDaemon sharedInstance];
    v8 = _DASSchedulingPriorityUtility;
    v9 = v7;
    if (v4 >= 0x15)
    {
      [v7 addConstraint:2 forSchedulingPriority:_DASSchedulingPriorityUtility];
      goto LABEL_6;
    }
  }

  else
  {
    [v5 removeConstraint:2 forSchedulingPriority:_DASSchedulingPriorityUtility];

    v7 = +[_DASDaemon sharedInstance];
    v8 = _DASSchedulingPriorityMaintenance;
    v9 = v7;
  }

  [v7 removeConstraint:2 forSchedulingPriority:v8];
LABEL_6:
}

- (BOOL)shouldIgnoreTrigger:(id)a3 withState:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"com.apple.duetactivityscheduler.thermalpolicypolicy.thermalpressurechange"])
  {
    [(_DASThermalPolicy *)self updateSystemConstraintsWithContext:v7];
    thermalPressureLevelKeyPath = self->_thermalPressureLevelKeyPath;
LABEL_5:
    v9 = [v7 objectForKeyedSubscript:thermalPressureLevelKeyPath];
    v10 = [v9 unsignedIntValue];

    v11 = v10 != 0;
    goto LABEL_6;
  }

  if ([v6 isEqualToString:@"com.apple.duetactivityscheduler.thermalpolicypolicy.watchthermalpressurechange"])
  {
    thermalPressureLevelKeyPath = self->_watchThermalPressureLevelKeyPath;
    goto LABEL_5;
  }

  if ([v6 isEqualToString:@"com.apple.duetactivityscheduler.thermalpolicy.restore"])
  {
    v11 = [(_DASThermalPolicy *)self isRestoreInProgressWithContext:v7];
  }

  else
  {
    v11 = 0;
  }

LABEL_6:

  return v11;
}

- (BOOL)shouldIgnoreThermalsForActivity:(id)a3 withState:(id)a4
{
  v6 = a4;
  if (![_DASPhotosPolicy isiCPLActivity:a3])
  {
    goto LABEL_5;
  }

  v7 = +[_DASPhotosPolicy keyPathForPhotosBudgetOverride];
  v8 = [v6 objectForKeyedSubscript:v7];
  v9 = [v8 unsignedIntegerValue];

  v10 = [v6 objectForKeyedSubscript:self->_thermalPressureLevelKeyPath];
  v11 = [v10 unsignedIntValue];

  if ((v9 & 0x800) == 0)
  {
    goto LABEL_5;
  }

  if (v11 < 0x15)
  {
    v12 = 1;
  }

  else
  {
LABEL_5:
    v12 = 0;
  }

  return v12;
}

- (BOOL)appliesToActivity:(id)a3
{
  v3 = a3;
  if ([v3 isContinuedProcessingTask])
  {
    v4 = 1;
  }

  else
  {
    v5 = [v3 schedulingPriority];
    v4 = v5 < _DASSchedulingPriorityUserInitiated;
  }

  return v4;
}

- (double)getScoreForThermalLevel:(int)a3
{
  result = 1.0;
  if (a3 <= 29)
  {
    if (a3 == 10)
    {
      return 0.6;
    }

    else if (a3 == 20)
    {
      return 0.2;
    }
  }

  else if (a3 == 30)
  {
    return 0.1;
  }

  else if (a3 == 40 || a3 == 50)
  {
    return 0.0;
  }

  return result;
}

- (int64_t)getReasonForThermalLevel:(int)a3
{
  result = 1;
  if (a3 <= 29)
  {
    v4 = 4;
    if (a3 != 20)
    {
      v4 = 1;
    }

    if (a3 == 10)
    {
      return 2;
    }

    else
    {
      return v4;
    }
  }

  else if (a3 == 30)
  {
    return 8;
  }

  else if (a3 == 40 || a3 == 50)
  {
    return 16;
  }

  return result;
}

- (int)maxAllowableThermalPressureForActivity:(id)a3 restoreInProgress:(BOOL)a4 deviceInUse:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = [v8 schedulingPriority];
  if (v9 < _DASSchedulingPriorityUserInitiated || [v8 isContinuedProcessingTask])
  {
    v10 = +[_DASDaemon sharedInstance];
    v11 = [_DASSmartPowerNapMonitor sharedMonitorWithDaemon:v10];

    v12 = [v11 inSmartPowerNap];
    if ([v8 isContinuedProcessingTask])
    {
      if (v12)
      {
        continuedProcessingSignificantInactivityMax = self->_continuedProcessingSignificantInactivityMax;
      }

      else
      {
        continuedProcessingSignificantInactivityMax = self->_continuedProcessingInUseMax;
      }

      goto LABEL_27;
    }

    v14 = +[_DASInternetSharingPolicy policyInstance];
    v15 = [v14 enabled];

    v16 = [v8 schedulingPriority];
    if (v16 >= _DASSchedulingPriorityUtility)
    {
      if (v5)
      {
        continuedProcessingSignificantInactivityMax = self->_utilityInUseMax;
LABEL_27:

        goto LABEL_28;
      }

      if ((v15 & 1) == 0)
      {
        if (v12)
        {
          continuedProcessingSignificantInactivityMax = self->_utilitySignificantInactivityMax;
        }

        else
        {
          continuedProcessingSignificantInactivityMax = self->_utilityMax;
        }

        goto LABEL_27;
      }
    }

    else
    {
      if (v6)
      {
        v17 = [v8 relatedApplications];
        v18 = [v17 containsObject:@"com.apple.icloud.restore"];

        if (v18)
        {
          continuedProcessingSignificantInactivityMax = 10;
        }

        else
        {
          continuedProcessingSignificantInactivityMax = 0;
        }

        goto LABEL_27;
      }

      if (v12)
      {
        continuedProcessingSignificantInactivityMax = self->_maintenanceSignificantInactivityMax;
        goto LABEL_27;
      }

      if ([v8 requiresNetwork])
      {
        continuedProcessingSignificantInactivityMax = self->_maintenanceNWMax;
        goto LABEL_27;
      }

      if (([v8 triggersRestart] & 1) == 0)
      {
        if (v5)
        {
          continuedProcessingSignificantInactivityMax = self->_maintenanceInUseMax;
        }

        else if (v15)
        {
          continuedProcessingSignificantInactivityMax = 0;
        }

        else
        {
          continuedProcessingSignificantInactivityMax = self->_maintenanceMax;
        }

        goto LABEL_27;
      }
    }

    continuedProcessingSignificantInactivityMax = 10;
    goto LABEL_27;
  }

  continuedProcessingSignificantInactivityMax = 30;
LABEL_28:

  return continuedProcessingSignificantInactivityMax;
}

- (BOOL)isRestoreInProgressWithContext:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:self->_restoreInProgressKeyPath];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)responseForActivity:(id)a3 withState:(id)a4
{
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006F050;
  block[3] = &unk_1001B56E0;
  block[4] = self;
  v7 = a4;
  v26 = v7;
  if (qword_10020B410 != -1)
  {
    dispatch_once(&qword_10020B410, block);
  }

  v8 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:self->_policyName];
  v9 = [(_DASThermalPolicy *)self isRestoreInProgressWithContext:v7];
  v10 = [(_DASThermalPolicy *)self maxAllowableThermalPressureForActivity:v6 restoreInProgress:v9 deviceInUse:[_DASDeviceActivityPolicy isDeviceInUse:v7]];
  v11 = [v7 objectForKeyedSubscript:self->_thermalPressureLevelKeyPath];
  v12 = [v11 unsignedIntValue];

  [(_DASPolicyResponseRationale *)v8 setResponseOptions:[(_DASPolicyResponseRationale *)v8 responseOptions]| [(_DASThermalPolicy *)self getReasonForThermalLevel:v12]];
  if (v12 > v10)
  {
    if ([(_DASThermalPolicy *)self shouldIgnoreThermalsForActivity:v6 withState:v7])
    {
      v13 = [NSPredicate predicateWithFormat:@"shouldOverrideModerateThermals == YES"];
      [(_DASPolicyResponseRationale *)v8 addRationaleWithCondition:v13];

      v14 = 0x384uLL;
      v15 = 67;
LABEL_16:
      v20 = [_DASPolicyResponse policyResponseWithDecision:v15 validityDuration:v8 rationale:v14];
      goto LABEL_17;
    }

    v18 = [NSPredicate predicateWithFormat:@"thermalLevel > %ld", v10];
    [(_DASPolicyResponseRationale *)v8 addRationaleWithCondition:v18];
    if (v9)
    {
      v21 = [NSNumber numberWithBool:1];
      v22 = [NSPredicate predicateWithFormat:@"restoreInProgress == %@", v21];
      [(_DASPolicyResponseRationale *)v8 addRationaleWithCondition:v22];
    }

LABEL_14:
    v23 = [_DASPolicyResponse policyResponseWithDecision:100 validityDuration:v8 rationale:0x384uLL];

    goto LABEL_18;
  }

  if ([v6 targetDevice] == 1 || objc_msgSend(v6, "targetDevice") == 2)
  {
    v16 = [v7 objectForKeyedSubscript:self->_watchThermalPressureLevelKeyPath];
    v17 = [v16 unsignedIntValue];

    if (v17 > v10)
    {
      v18 = [NSPredicate predicateWithFormat:@"watchThermalLevel >= %ld", v12];
      [(_DASPolicyResponseRationale *)v8 addRationaleWithCondition:v18];
      goto LABEL_14;
    }
  }

  [(_DASThermalPolicy *)self getScoreForThermalLevel:v12];
  if (v19 <= 0.0)
  {
    v15 = 100;
    v14 = 0x384uLL;
    goto LABEL_16;
  }

  v20 = [_DASPolicyResponse policyResponseWithScore:"policyResponseWithScore:validityDuration:rationale:" validityDuration:v8 rationale:?];
LABEL_17:
  v23 = v20;
LABEL_18:

  return v23;
}

- (int)thermalPressureWithState:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:self->_thermalPressureLevelKeyPath];
  v4 = [v3 unsignedIntValue];

  return v4;
}

@end