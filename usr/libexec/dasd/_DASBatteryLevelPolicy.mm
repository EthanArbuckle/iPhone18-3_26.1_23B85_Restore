@interface _DASBatteryLevelPolicy
+ (id)policyInstance;
- (BOOL)appliesToActivity:(id)activity;
- (BOOL)backgroundTaskAllowedWithType:(id)type withRationale:(id)rationale withBatteryLevel:(double)level isPluggedIn:(BOOL)in;
- (BOOL)shouldIgnoreTrigger:(id)trigger withState:(id)state;
- (_DASBatteryLevelPolicy)init;
- (double)getScoreForActivity:(id)activity forBatteryLevel:(double)level isPluggedIn:(BOOL)in;
- (id)initializeTriggers;
- (id)responseForActivity:(id)activity withState:(id)state;
- (void)updateSystemConstraintsWithContext:(id)context;
@end

@implementation _DASBatteryLevelPolicy

- (id)initializeTriggers
{
  v3 = [_CDContextualPredicate predicateForChangeAtKeyPath:self->_batteryLevelKeyPath];
  v4 = [_CDContextualPredicate predicateForChangeAtKeyPath:self->_defaultPairedBatteryKeyPath];
  v11[0] = @"identifier";
  v11[1] = @"predicate";
  v12[0] = @"com.apple.das.batterylevelpolicy.batterylevelchange";
  v12[1] = v3;
  v11[2] = @"deviceSet";
  v11[3] = @"mustWake";
  v12[2] = &off_1001C9820;
  v12[3] = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:4];
  v13[0] = v5;
  v9[0] = @"identifier";
  v9[1] = @"predicate";
  v10[0] = @"com.apple.das.batterylevelpolicy.watchbatterylevelchange";
  v10[1] = v4;
  v9[2] = @"deviceSet";
  v9[3] = @"mustWake";
  v10[2] = &off_1001C9820;
  v10[3] = &__kCFBooleanTrue;
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:4];
  v13[1] = v6;
  v7 = [NSArray arrayWithObjects:v13 count:2];

  return v7;
}

- (_DASBatteryLevelPolicy)init
{
  v16.receiver = self;
  v16.super_class = _DASBatteryLevelPolicy;
  v2 = [(_DASBatteryLevelPolicy *)&v16 init];
  v3 = v2;
  if (v2)
  {
    policyName = v2->_policyName;
    v2->_policyName = @"Battery Level Policy";

    v5 = +[_CDContextQueries keyPathForBatteryLevel];
    batteryLevelKeyPath = v3->_batteryLevelKeyPath;
    v3->_batteryLevelKeyPath = v5;

    v7 = +[_CDContextQueries keyPathForPluginStatus];
    pluginStatusKeyPath = v3->_pluginStatusKeyPath;
    v3->_pluginStatusKeyPath = v7;

    v9 = +[_CDContextQueries keyPathForDefaultPairedDeviceBatteryLevel];
    defaultPairedBatteryKeyPath = v3->_defaultPairedBatteryKeyPath;
    v3->_defaultPairedBatteryKeyPath = v9;

    v11 = +[_CDContextQueries keyPathForDefaultPairedDevicePluginStatus];
    defaultPairedPluginKeyPath = v3->_defaultPairedPluginKeyPath;
    v3->_defaultPairedPluginKeyPath = v11;

    v3->_isiPad = +[_DASConfig isiPad];
    initializeTriggers = [(_DASBatteryLevelPolicy *)v3 initializeTriggers];
    triggers = v3->_triggers;
    v3->_triggers = initializeTriggers;

    v3->_lastSavedBatteryLevel = 0;
  }

  return v3;
}

+ (id)policyInstance
{
  if (qword_10020B048 != -1)
  {
    sub_10011E628();
  }

  v3 = qword_10020B050;

  return v3;
}

- (void)updateSystemConstraintsWithContext:(id)context
{
  v3 = [context objectForKeyedSubscript:self->_batteryLevelKeyPath];
  integerValue = [v3 integerValue];

  v5 = +[_DASDaemon sharedInstance];
  v6 = v5;
  if (integerValue > 9)
  {
    if (integerValue > 0x13)
    {
      [v5 removeConstraint:1 forSchedulingPriority:_DASSchedulingPriorityMaintenance];
    }

    else
    {
      [v5 addConstraint:1 forSchedulingPriority:_DASSchedulingPriorityMaintenance];
    }

    [v6 removeConstraint:1 forSchedulingPriority:_DASSchedulingPriorityUtility];
  }

  else
  {
    [v5 addConstraint:1 forSchedulingPriority:_DASSchedulingPriorityMaintenance];
    [v6 addConstraint:1 forSchedulingPriority:_DASSchedulingPriorityUtility];
  }
}

- (BOOL)shouldIgnoreTrigger:(id)trigger withState:(id)state
{
  stateCopy = state;
  if ([trigger isEqualToString:@"com.apple.das.batterylevelpolicy.batterylevelchange"])
  {
    v7 = [stateCopy objectForKeyedSubscript:self->_batteryLevelKeyPath];
    integerValue = [v7 integerValue];

    [(_DASBatteryLevelPolicy *)self updateSystemConstraintsWithContext:stateCopy];
    lastSavedBatteryLevel = self->_lastSavedBatteryLevel;
    v10 = integerValue - lastSavedBatteryLevel < 5;
    if (integerValue - lastSavedBatteryLevel > 4 || integerValue < lastSavedBatteryLevel)
    {
      self->_lastSavedBatteryLevel = integerValue;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)appliesToActivity:(id)activity
{
  activityCopy = activity;
  if ([activityCopy allowsUnrestrictedBackgroundLaunches])
  {
    v4 = 0;
  }

  else
  {
    schedulingPriority = [activityCopy schedulingPriority];
    v4 = schedulingPriority < _DASSchedulingPriorityUserInitiated;
  }

  return v4;
}

- (double)getScoreForActivity:(id)activity forBatteryLevel:(double)level isPluggedIn:(BOOL)in
{
  inCopy = in;
  activityCopy = activity;
  userInfo = [activityCopy userInfo];
  v9 = [userInfo objectForKeyedSubscript:_DASCTSMinBatteryLevelKey];
  integerValue = [v9 integerValue];

  v11 = 0.0;
  if (integerValue <= level)
  {
    schedulingPriority = [activityCopy schedulingPriority];
    if (schedulingPriority >= _DASSchedulingPriorityUserInitiated)
    {
      v15 = 5.0;
      v14 = 0.25;
    }

    else
    {
      schedulingPriority2 = [activityCopy schedulingPriority];
      v14 = 0.5;
      if (schedulingPriority2 >= _DASSchedulingPriorityUtility)
      {
        v14 = 0.4;
      }

      v15 = 10.0;
      if (schedulingPriority2 < _DASSchedulingPriorityUtility)
      {
        v15 = 20.0;
      }
    }

    v16 = pow((level - v15) / (100.0 - v15), v14);
    if (inCopy)
    {
      v16 = v16 * 1.2;
    }

    if (v16 > 1.0)
    {
      v16 = 1.0;
    }

    v11 = fmax(v16, 0.0);
  }

  return v11;
}

- (BOOL)backgroundTaskAllowedWithType:(id)type withRationale:(id)rationale withBatteryLevel:(double)level isPluggedIn:(BOOL)in
{
  rationaleCopy = rationale;
  v11 = [type isEqualToString:_DASLaunchReasonBackgroundProcessing];
  v12 = 1;
  if (v11 && !in && (level < 75.0 || !self->_isiPad))
  {
    v13 = [NSNumber numberWithDouble:level];
    v14 = [NSPredicate predicateWithFormat:@"launchType == PROCESSING AND batteryLevel == %@", v13];
    [rationaleCopy addRationaleWithCondition:v14];

    v12 = 0;
  }

  return v12;
}

- (id)responseForActivity:(id)activity withState:(id)state
{
  activityCopy = activity;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000456E8;
  block[3] = &unk_1001B56E0;
  block[4] = self;
  stateCopy = state;
  v36 = stateCopy;
  if (qword_10020B058 != -1)
  {
    dispatch_once(&qword_10020B058, block);
  }

  v8 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:self->_policyName];
  v9 = [stateCopy objectForKeyedSubscript:self->_batteryLevelKeyPath];
  [v9 doubleValue];
  if (v10 == 0.0)
  {
    v11 = 0x384uLL;
    v12 = 0;
    v13 = 0;
LABEL_5:
    v14 = [_DASPolicyResponse policyResponseWithDecision:v12 validityDuration:v13 rationale:v11];
    goto LABEL_17;
  }

  unsignedIntegerValue = [v9 unsignedIntegerValue];
  v16 = [NSPredicate predicateWithFormat:@"batteryLevel == %ld", unsignedIntegerValue];
  [(_DASPolicyResponseRationale *)v8 addRationaleWithCondition:v16];

  v17 = [stateCopy objectForKeyedSubscript:self->_pluginStatusKeyPath];
  bOOLValue = [v17 BOOLValue];

  v19 = [NSNumber numberWithBool:bOOLValue];
  v20 = [NSPredicate predicateWithFormat:@"pluggedIn == %@", v19];
  [(_DASPolicyResponseRationale *)v8 addRationaleWithCondition:v20];

  if ([activityCopy requestsApplicationLaunch])
  {
    launchReason = [activityCopy launchReason];
    v22 = unsignedIntegerValue;
    v23 = [(_DASBatteryLevelPolicy *)self backgroundTaskAllowedWithType:launchReason withRationale:v8 withBatteryLevel:bOOLValue isPluggedIn:unsignedIntegerValue];

    if ((v23 & 1) == 0)
    {
      v11 = 0x384uLL;
      v12 = 33;
      v13 = v8;
      goto LABEL_5;
    }
  }

  else
  {
    v22 = unsignedIntegerValue;
  }

  [(_DASBatteryLevelPolicy *)self getScoreForActivity:activityCopy forBatteryLevel:bOOLValue isPluggedIn:v22];
  v25 = v24;
  if ([activityCopy targetDevice] == 1 || objc_msgSend(activityCopy, "targetDevice") == 2)
  {
    v26 = [stateCopy objectForKeyedSubscript:self->_defaultPairedBatteryKeyPath];
    v27 = v26;
    if (v26)
    {
      unsignedIntegerValue2 = [v26 unsignedIntegerValue];
      v29 = [NSPredicate predicateWithFormat:@"watchBatteryLevel == %ld", unsignedIntegerValue2];
      [(_DASPolicyResponseRationale *)v8 addRationaleWithCondition:v29];

      v30 = [stateCopy objectForKeyedSubscript:self->_defaultPairedPluginKeyPath];
      bOOLValue2 = [v30 BOOLValue];

      [(_DASBatteryLevelPolicy *)self getScoreForActivity:activityCopy forBatteryLevel:bOOLValue2 isPluggedIn:unsignedIntegerValue2];
      if (v25 >= v32)
      {
        v25 = v32;
      }
    }
  }

  v14 = [_DASPolicyResponse policyResponseWithScore:v8 validityDuration:v25 rationale:0x384uLL];
LABEL_17:
  v33 = v14;

  return v33;
}

@end