@interface _DASBatteryLevelPolicy
+ (id)policyInstance;
- (BOOL)appliesToActivity:(id)a3;
- (BOOL)backgroundTaskAllowedWithType:(id)a3 withRationale:(id)a4 withBatteryLevel:(double)a5 isPluggedIn:(BOOL)a6;
- (BOOL)shouldIgnoreTrigger:(id)a3 withState:(id)a4;
- (_DASBatteryLevelPolicy)init;
- (double)getScoreForActivity:(id)a3 forBatteryLevel:(double)a4 isPluggedIn:(BOOL)a5;
- (id)initializeTriggers;
- (id)responseForActivity:(id)a3 withState:(id)a4;
- (void)updateSystemConstraintsWithContext:(id)a3;
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
    v13 = [(_DASBatteryLevelPolicy *)v3 initializeTriggers];
    triggers = v3->_triggers;
    v3->_triggers = v13;

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

- (void)updateSystemConstraintsWithContext:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:self->_batteryLevelKeyPath];
  v4 = [v3 integerValue];

  v5 = +[_DASDaemon sharedInstance];
  v6 = v5;
  if (v4 > 9)
  {
    if (v4 > 0x13)
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

- (BOOL)shouldIgnoreTrigger:(id)a3 withState:(id)a4
{
  v6 = a4;
  if ([a3 isEqualToString:@"com.apple.das.batterylevelpolicy.batterylevelchange"])
  {
    v7 = [v6 objectForKeyedSubscript:self->_batteryLevelKeyPath];
    v8 = [v7 integerValue];

    [(_DASBatteryLevelPolicy *)self updateSystemConstraintsWithContext:v6];
    lastSavedBatteryLevel = self->_lastSavedBatteryLevel;
    v10 = v8 - lastSavedBatteryLevel < 5;
    if (v8 - lastSavedBatteryLevel > 4 || v8 < lastSavedBatteryLevel)
    {
      self->_lastSavedBatteryLevel = v8;
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

- (BOOL)appliesToActivity:(id)a3
{
  v3 = a3;
  if ([v3 allowsUnrestrictedBackgroundLaunches])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 schedulingPriority];
    v4 = v5 < _DASSchedulingPriorityUserInitiated;
  }

  return v4;
}

- (double)getScoreForActivity:(id)a3 forBatteryLevel:(double)a4 isPluggedIn:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = [v7 userInfo];
  v9 = [v8 objectForKeyedSubscript:_DASCTSMinBatteryLevelKey];
  v10 = [v9 integerValue];

  v11 = 0.0;
  if (v10 <= a4)
  {
    v12 = [v7 schedulingPriority];
    if (v12 >= _DASSchedulingPriorityUserInitiated)
    {
      v15 = 5.0;
      v14 = 0.25;
    }

    else
    {
      v13 = [v7 schedulingPriority];
      v14 = 0.5;
      if (v13 >= _DASSchedulingPriorityUtility)
      {
        v14 = 0.4;
      }

      v15 = 10.0;
      if (v13 < _DASSchedulingPriorityUtility)
      {
        v15 = 20.0;
      }
    }

    v16 = pow((a4 - v15) / (100.0 - v15), v14);
    if (v5)
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

- (BOOL)backgroundTaskAllowedWithType:(id)a3 withRationale:(id)a4 withBatteryLevel:(double)a5 isPluggedIn:(BOOL)a6
{
  v10 = a4;
  v11 = [a3 isEqualToString:_DASLaunchReasonBackgroundProcessing];
  v12 = 1;
  if (v11 && !a6 && (a5 < 75.0 || !self->_isiPad))
  {
    v13 = [NSNumber numberWithDouble:a5];
    v14 = [NSPredicate predicateWithFormat:@"launchType == PROCESSING AND batteryLevel == %@", v13];
    [v10 addRationaleWithCondition:v14];

    v12 = 0;
  }

  return v12;
}

- (id)responseForActivity:(id)a3 withState:(id)a4
{
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000456E8;
  block[3] = &unk_1001B56E0;
  block[4] = self;
  v7 = a4;
  v36 = v7;
  if (qword_10020B058 != -1)
  {
    dispatch_once(&qword_10020B058, block);
  }

  v8 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:self->_policyName];
  v9 = [v7 objectForKeyedSubscript:self->_batteryLevelKeyPath];
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

  v15 = [v9 unsignedIntegerValue];
  v16 = [NSPredicate predicateWithFormat:@"batteryLevel == %ld", v15];
  [(_DASPolicyResponseRationale *)v8 addRationaleWithCondition:v16];

  v17 = [v7 objectForKeyedSubscript:self->_pluginStatusKeyPath];
  v18 = [v17 BOOLValue];

  v19 = [NSNumber numberWithBool:v18];
  v20 = [NSPredicate predicateWithFormat:@"pluggedIn == %@", v19];
  [(_DASPolicyResponseRationale *)v8 addRationaleWithCondition:v20];

  if ([v6 requestsApplicationLaunch])
  {
    v21 = [v6 launchReason];
    v22 = v15;
    v23 = [(_DASBatteryLevelPolicy *)self backgroundTaskAllowedWithType:v21 withRationale:v8 withBatteryLevel:v18 isPluggedIn:v15];

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
    v22 = v15;
  }

  [(_DASBatteryLevelPolicy *)self getScoreForActivity:v6 forBatteryLevel:v18 isPluggedIn:v22];
  v25 = v24;
  if ([v6 targetDevice] == 1 || objc_msgSend(v6, "targetDevice") == 2)
  {
    v26 = [v7 objectForKeyedSubscript:self->_defaultPairedBatteryKeyPath];
    v27 = v26;
    if (v26)
    {
      v28 = [v26 unsignedIntegerValue];
      v29 = [NSPredicate predicateWithFormat:@"watchBatteryLevel == %ld", v28];
      [(_DASPolicyResponseRationale *)v8 addRationaleWithCondition:v29];

      v30 = [v7 objectForKeyedSubscript:self->_defaultPairedPluginKeyPath];
      v31 = [v30 BOOLValue];

      [(_DASBatteryLevelPolicy *)self getScoreForActivity:v6 forBatteryLevel:v31 isPluggedIn:v28];
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