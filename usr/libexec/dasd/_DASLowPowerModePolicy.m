@interface _DASLowPowerModePolicy
+ (id)policyInstance;
- (BOOL)appliesToActivity:(id)a3;
- (BOOL)isChallengedForBatteryLife;
- (BOOL)isLowPowerModeEnabledWithContext:(id)a3;
- (BOOL)isLowPowerModePolicyEnforced:(id)a3;
- (BOOL)shouldIgnoreTrigger:(id)a3 withState:(id)a4;
- (_DASLowPowerModePolicy)init;
- (id)initializeTriggers;
- (id)responseForActivity:(id)a3 withState:(id)a4;
@end

@implementation _DASLowPowerModePolicy

+ (id)policyInstance
{
  if (qword_10020AF50 != -1)
  {
    sub_1000046B0();
  }

  v3 = qword_10020AF58;

  return v3;
}

- (BOOL)isChallengedForBatteryLife
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  v2 = +[PMPowerMitigations sharedInstance];
  v3 = [v2 getCurrentMitigationInfoForClientIdentifier:@"com.apple.pmmitigation.das"];

  v4 = [v3 mitigationLevel] == 50;
  return v4;
}

- (id)initializeTriggers
{
  v3 = [_CDContextualPredicate predicateForChangeAtKeyPath:self->_batteryLevelKeyPath];
  v4 = [_CDContextualPredicate predicateForChangeAtKeyPath:self->_lpmKeyPath];
  v11[0] = @"identifier";
  v11[1] = @"predicate";
  v12[0] = @"com.apple.das.lowpowermodepolicy.batterylevelchange";
  v12[1] = v3;
  v11[2] = @"deviceSet";
  v11[3] = @"mustWake";
  v12[2] = &off_1001C97D8;
  v12[3] = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:4];
  v13[0] = v5;
  v9[0] = @"identifier";
  v9[1] = @"predicate";
  v10[0] = @"com.apple.das.lpmchange";
  v10[1] = v4;
  v9[2] = @"deviceSet";
  v9[3] = @"mustWake";
  v10[2] = &off_1001C97D8;
  v10[3] = &__kCFBooleanTrue;
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:4];
  v13[1] = v6;
  v7 = [NSArray arrayWithObjects:v13 count:2];

  return v7;
}

- (_DASLowPowerModePolicy)init
{
  v17.receiver = self;
  v17.super_class = _DASLowPowerModePolicy;
  v2 = [(_DASLowPowerModePolicy *)&v17 init];
  v3 = v2;
  if (v2)
  {
    policyName = v2->_policyName;
    v2->_policyName = @"Low Power Mode Policy";

    v5 = +[_CDContextQueries keyPathForBatteryLevel];
    batteryLevelKeyPath = v3->_batteryLevelKeyPath;
    v3->_batteryLevelKeyPath = v5;

    v7 = +[_CDContextQueries keyPathForLowPowerModeStatus];
    lpmKeyPath = v3->_lpmKeyPath;
    v3->_lpmKeyPath = v7;

    v9 = +[_CDContextQueries keyPathForPluginStatus];
    pluginStatusKeyPath = v3->_pluginStatusKeyPath;
    v3->_pluginStatusKeyPath = v9;

    v3->_lastSavedBatteryLevel = 0;
    v11 = [(_DASLowPowerModePolicy *)v3 initializeTriggers];
    triggers = v3->_triggers;
    v3->_triggers = v11;

    lpmEngagementDate = v3->_lpmEngagementDate;
    v3->_lpmEngagementDate = 0;

    v14 = dispatch_queue_create("com.apple.duetActivityScheduler.lowPowerModePolicy.notify", 0);
    notifyQueue = v3->_notifyQueue;
    v3->_notifyQueue = v14;
  }

  return v3;
}

- (BOOL)shouldIgnoreTrigger:(id)a3 withState:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v6 isEqualToString:@"com.apple.das.lpmchange"] & 1) != 0 || !objc_msgSend(v6, "isEqualToString:", @"com.apple.das.lowpowermodepolicy.batterylevelchange"))
  {
    v11 = 0;
  }

  else
  {
    v8 = [v7 objectForKeyedSubscript:self->_batteryLevelKeyPath];
    v9 = [v8 integerValue];

    lastSavedBatteryLevel = self->_lastSavedBatteryLevel;
    v11 = v9 - lastSavedBatteryLevel < 5;
    if (v9 - lastSavedBatteryLevel > 4 || v9 < lastSavedBatteryLevel)
    {
      self->_lastSavedBatteryLevel = v9;
    }

    else
    {
      v11 = 1;
    }
  }

  return v11;
}

- (BOOL)appliesToActivity:(id)a3
{
  v3 = a3;
  if ([v3 allowsUnrestrictedBackgroundLaunches] & 1) != 0 || (objc_msgSend(v3, "isSoftwareUpdateActivity"))
  {
    goto LABEL_6;
  }

  v4 = [v3 name];
  if ([v4 isEqualToString:@"com.apple.dasd.dataCollectiontask.dummyAutoSU"])
  {

LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  v5 = [v3 name];
  v6 = [v5 isEqualToString:@"com.apple.osintelligence.iblm.evaluate"];

  if (v6)
  {
    goto LABEL_6;
  }

  if ([v3 isContinuedProcessingTask])
  {
    v7 = 1;
  }

  else
  {
    v9 = [v3 schedulingPriority];
    v7 = v9 < _DASSchedulingPriorityUserInitiated;
  }

LABEL_7:

  return v7;
}

- (BOOL)isLowPowerModeEnabledWithContext:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:self->_lpmKeyPath];
  v5 = [v4 BOOLValue];

  lpmEngagementDate = self->_lpmEngagementDate;
  if (!v5)
  {
    v7 = 0;
    goto LABEL_5;
  }

  if (!lpmEngagementDate)
  {
    v7 = +[NSDate now];
    lpmEngagementDate = self->_lpmEngagementDate;
LABEL_5:
    self->_lpmEngagementDate = v7;
  }

  return v5;
}

- (BOOL)isLowPowerModePolicyEnforced:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:self->_batteryLevelKeyPath];
  [v5 doubleValue];
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  else
  {
    v8 = [v5 unsignedIntegerValue];
    v9 = [v4 objectForKeyedSubscript:self->_pluginStatusKeyPath];
    v10 = [v9 BOOLValue];

    v11 = [(_DASLowPowerModePolicy *)self isLowPowerModeEnabledWithContext:v4];
    v12 = v10 ^ 1;
    if (v8 < 0x1E)
    {
      v12 = 1;
    }

    if (v11)
    {
      v7 = v12;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)responseForActivity:(id)a3 withState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:self->_policyName];
  if (![(_DASLowPowerModePolicy *)self isLowPowerModePolicyEnforced:v7])
  {
    v14 = [v7 objectForKeyedSubscript:self->_pluginStatusKeyPath];
    v15 = [v14 BOOLValue];

    if ((v15 & 1) != 0 || ![(_DASLowPowerModePolicy *)self isChallengedForBatteryLife])
    {
      goto LABEL_15;
    }

    v16 = +[NSDate date];
    v17 = [v6 startBefore];
    v18 = [v6 startAfter];
    [v17 timeIntervalSinceDate:v18];
    v20 = v19;

    if (v20 >= 1.0)
    {
      v21 = v20;
    }

    else
    {
      v21 = 1.0;
    }

    v22 = [v6 startAfter];
    [v16 timeIntervalSinceDate:v22];
    v24 = v23;

    v25 = v24 / v21;
    v26 = [v6 schedulingPriority];
    if (v26 >= _DASSchedulingPriorityUtility || v25 >= 0.9)
    {
      v43 = [v6 schedulingPriority];
      v27 = v25 < 0.5 && v43 < _DASSchedulingPriorityUserInitiated;
    }

    else
    {
      v27 = 1;
    }

    v45 = [v6 fastPass];
    if (v45 || ([v6 isContinuedProcessingTask] & 1) != 0 || (objc_msgSend(v6, "requestsImmediateRuntime") & 1) != 0)
    {
    }

    else if (v27)
    {
      v47 = [NSPredicate predicateWithFormat:@"isChallengedForBatteryLife == %@", &__kCFBooleanTrue];
      [(_DASPolicyResponseRationale *)v8 addRationaleWithCondition:v47];

      v41 = [(_DASPolicyResponseRationale *)v8 responseOptions]| 2;
      goto LABEL_25;
    }

LABEL_36:
    v42 = 0;
    goto LABEL_37;
  }

  if ([v6 isContinuedProcessingTask])
  {
    if (([v6 isRunning] & 1) != 0 || !self->_lpmEngagementDate || (objc_msgSend(v6, "submitDate"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isAfter:", self->_lpmEngagementDate), v9, v10))
    {
      v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 isContinuedProcessingTask]);
      v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 isRunning]);
      v13 = [NSPredicate predicateWithFormat:@"continuedProcessingTask == %@ AND (activity.isRunning == %@ OR lpmEngagementDate < activity.startDate)", v11, v12];
      [(_DASPolicyResponseRationale *)v8 addRationaleWithCondition:v13];

LABEL_15:
      v28 = [_DASPolicyResponse policyResponseWithDecision:0 validityDuration:v8 rationale:0x384uLL];
      goto LABEL_38;
    }
  }

  v16 = +[NSDate date];
  v29 = [v6 startBefore];
  v30 = [v6 startAfter];
  [v29 timeIntervalSinceDate:v30];
  v32 = v31;

  if (v32 >= 1.0)
  {
    v33 = v32;
  }

  else
  {
    v33 = 1.0;
  }

  v34 = [v6 startAfter];
  [v16 timeIntervalSinceDate:v34];
  v36 = v35;

  v37 = [NSPredicate predicateWithFormat:@"lowPowerModeEnforced == %@", &__kCFBooleanTrue];
  [(_DASPolicyResponseRationale *)v8 addRationaleWithCondition:v37];

  if (([v6 isContinuedProcessingTask] & 1) == 0 && (objc_msgSend(v6, "budgeted") & 1) == 0)
  {
    v39 = [v6 schedulingPriority];
    if (v39 >= _DASSchedulingPriorityUtility)
    {
      v38 = v36 / v33;
      if (v36 / v33 >= 0.9)
      {
        v40 = [v6 fastPass];

        if (!v40)
        {
          goto LABEL_36;
        }
      }
    }
  }

  v41 = [(_DASPolicyResponseRationale *)v8 responseOptions]| 1;
LABEL_25:
  [(_DASPolicyResponseRationale *)v8 setResponseOptions:v41];
  v42 = 33;
LABEL_37:
  v28 = [_DASPolicyResponse policyResponseWithDecision:v42 validityDuration:v8 rationale:0x384uLL];

LABEL_38:

  return v28;
}

@end