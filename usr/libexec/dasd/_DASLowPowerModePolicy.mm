@interface _DASLowPowerModePolicy
+ (id)policyInstance;
- (BOOL)appliesToActivity:(id)activity;
- (BOOL)isChallengedForBatteryLife;
- (BOOL)isLowPowerModeEnabledWithContext:(id)context;
- (BOOL)isLowPowerModePolicyEnforced:(id)enforced;
- (BOOL)shouldIgnoreTrigger:(id)trigger withState:(id)state;
- (_DASLowPowerModePolicy)init;
- (id)initializeTriggers;
- (id)responseForActivity:(id)activity withState:(id)state;
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
    initializeTriggers = [(_DASLowPowerModePolicy *)v3 initializeTriggers];
    triggers = v3->_triggers;
    v3->_triggers = initializeTriggers;

    lpmEngagementDate = v3->_lpmEngagementDate;
    v3->_lpmEngagementDate = 0;

    v14 = dispatch_queue_create("com.apple.duetActivityScheduler.lowPowerModePolicy.notify", 0);
    notifyQueue = v3->_notifyQueue;
    v3->_notifyQueue = v14;
  }

  return v3;
}

- (BOOL)shouldIgnoreTrigger:(id)trigger withState:(id)state
{
  triggerCopy = trigger;
  stateCopy = state;
  if (([triggerCopy isEqualToString:@"com.apple.das.lpmchange"] & 1) != 0 || !objc_msgSend(triggerCopy, "isEqualToString:", @"com.apple.das.lowpowermodepolicy.batterylevelchange"))
  {
    v11 = 0;
  }

  else
  {
    v8 = [stateCopy objectForKeyedSubscript:self->_batteryLevelKeyPath];
    integerValue = [v8 integerValue];

    lastSavedBatteryLevel = self->_lastSavedBatteryLevel;
    v11 = integerValue - lastSavedBatteryLevel < 5;
    if (integerValue - lastSavedBatteryLevel > 4 || integerValue < lastSavedBatteryLevel)
    {
      self->_lastSavedBatteryLevel = integerValue;
    }

    else
    {
      v11 = 1;
    }
  }

  return v11;
}

- (BOOL)appliesToActivity:(id)activity
{
  activityCopy = activity;
  if ([activityCopy allowsUnrestrictedBackgroundLaunches] & 1) != 0 || (objc_msgSend(activityCopy, "isSoftwareUpdateActivity"))
  {
    goto LABEL_6;
  }

  name = [activityCopy name];
  if ([name isEqualToString:@"com.apple.dasd.dataCollectiontask.dummyAutoSU"])
  {

LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  name2 = [activityCopy name];
  v6 = [name2 isEqualToString:@"com.apple.osintelligence.iblm.evaluate"];

  if (v6)
  {
    goto LABEL_6;
  }

  if ([activityCopy isContinuedProcessingTask])
  {
    v7 = 1;
  }

  else
  {
    schedulingPriority = [activityCopy schedulingPriority];
    v7 = schedulingPriority < _DASSchedulingPriorityUserInitiated;
  }

LABEL_7:

  return v7;
}

- (BOOL)isLowPowerModeEnabledWithContext:(id)context
{
  v4 = [context objectForKeyedSubscript:self->_lpmKeyPath];
  bOOLValue = [v4 BOOLValue];

  lpmEngagementDate = self->_lpmEngagementDate;
  if (!bOOLValue)
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

  return bOOLValue;
}

- (BOOL)isLowPowerModePolicyEnforced:(id)enforced
{
  enforcedCopy = enforced;
  v5 = [enforcedCopy objectForKeyedSubscript:self->_batteryLevelKeyPath];
  [v5 doubleValue];
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  else
  {
    unsignedIntegerValue = [v5 unsignedIntegerValue];
    v9 = [enforcedCopy objectForKeyedSubscript:self->_pluginStatusKeyPath];
    bOOLValue = [v9 BOOLValue];

    v11 = [(_DASLowPowerModePolicy *)self isLowPowerModeEnabledWithContext:enforcedCopy];
    v12 = bOOLValue ^ 1;
    if (unsignedIntegerValue < 0x1E)
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

- (id)responseForActivity:(id)activity withState:(id)state
{
  activityCopy = activity;
  stateCopy = state;
  v8 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:self->_policyName];
  if (![(_DASLowPowerModePolicy *)self isLowPowerModePolicyEnforced:stateCopy])
  {
    v14 = [stateCopy objectForKeyedSubscript:self->_pluginStatusKeyPath];
    bOOLValue = [v14 BOOLValue];

    if ((bOOLValue & 1) != 0 || ![(_DASLowPowerModePolicy *)self isChallengedForBatteryLife])
    {
      goto LABEL_15;
    }

    v16 = +[NSDate date];
    startBefore = [activityCopy startBefore];
    startAfter = [activityCopy startAfter];
    [startBefore timeIntervalSinceDate:startAfter];
    v20 = v19;

    if (v20 >= 1.0)
    {
      v21 = v20;
    }

    else
    {
      v21 = 1.0;
    }

    startAfter2 = [activityCopy startAfter];
    [v16 timeIntervalSinceDate:startAfter2];
    v24 = v23;

    v25 = v24 / v21;
    schedulingPriority = [activityCopy schedulingPriority];
    if (schedulingPriority >= _DASSchedulingPriorityUtility || v25 >= 0.9)
    {
      schedulingPriority2 = [activityCopy schedulingPriority];
      v27 = v25 < 0.5 && schedulingPriority2 < _DASSchedulingPriorityUserInitiated;
    }

    else
    {
      v27 = 1;
    }

    fastPass = [activityCopy fastPass];
    if (fastPass || ([activityCopy isContinuedProcessingTask] & 1) != 0 || (objc_msgSend(activityCopy, "requestsImmediateRuntime") & 1) != 0)
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

  if ([activityCopy isContinuedProcessingTask])
  {
    if (([activityCopy isRunning] & 1) != 0 || !self->_lpmEngagementDate || (objc_msgSend(activityCopy, "submitDate"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isAfter:", self->_lpmEngagementDate), v9, v10))
    {
      v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [activityCopy isContinuedProcessingTask]);
      v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [activityCopy isRunning]);
      v13 = [NSPredicate predicateWithFormat:@"continuedProcessingTask == %@ AND (activity.isRunning == %@ OR lpmEngagementDate < activity.startDate)", v11, v12];
      [(_DASPolicyResponseRationale *)v8 addRationaleWithCondition:v13];

LABEL_15:
      v28 = [_DASPolicyResponse policyResponseWithDecision:0 validityDuration:v8 rationale:0x384uLL];
      goto LABEL_38;
    }
  }

  v16 = +[NSDate date];
  startBefore2 = [activityCopy startBefore];
  startAfter3 = [activityCopy startAfter];
  [startBefore2 timeIntervalSinceDate:startAfter3];
  v32 = v31;

  if (v32 >= 1.0)
  {
    v33 = v32;
  }

  else
  {
    v33 = 1.0;
  }

  startAfter4 = [activityCopy startAfter];
  [v16 timeIntervalSinceDate:startAfter4];
  v36 = v35;

  v37 = [NSPredicate predicateWithFormat:@"lowPowerModeEnforced == %@", &__kCFBooleanTrue];
  [(_DASPolicyResponseRationale *)v8 addRationaleWithCondition:v37];

  if (([activityCopy isContinuedProcessingTask] & 1) == 0 && (objc_msgSend(activityCopy, "budgeted") & 1) == 0)
  {
    schedulingPriority3 = [activityCopy schedulingPriority];
    if (schedulingPriority3 >= _DASSchedulingPriorityUtility)
    {
      v38 = v36 / v33;
      if (v36 / v33 >= 0.9)
      {
        fastPass2 = [activityCopy fastPass];

        if (!fastPass2)
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