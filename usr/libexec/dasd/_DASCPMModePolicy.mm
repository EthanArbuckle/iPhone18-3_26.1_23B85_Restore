@interface _DASCPMModePolicy
+ (id)policyInstance;
- (BOOL)appliesToActivity:(id)activity;
- (_DASCPMModePolicy)init;
- (id)initializeTriggers;
- (id)responseForActivity:(id)activity withState:(id)state;
@end

@implementation _DASCPMModePolicy

- (_DASCPMModePolicy)init
{
  v10.receiver = self;
  v10.super_class = _DASCPMModePolicy;
  v2 = [(_DASCPMModePolicy *)&v10 init];
  v3 = v2;
  if (v2)
  {
    policyName = v2->_policyName;
    v2->_policyName = @"CPM Mode Policy";

    initializeTriggers = [(_DASCPMModePolicy *)v3 initializeTriggers];
    triggers = v3->_triggers;
    v3->_triggers = initializeTriggers;

    v7 = +[_DASCPMModeMonitor sharedMonitor];
    monitor = v3->_monitor;
    v3->_monitor = v7;
  }

  return v3;
}

+ (id)policyInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A2254;
  block[3] = &unk_1001B54A0;
  block[4] = self;
  if (qword_10020B6A8 != -1)
  {
    dispatch_once(&qword_10020B6A8, block);
  }

  v2 = qword_10020B6B0;

  return v2;
}

- (id)initializeTriggers
{
  v5 = @"identifier";
  v6 = @"com.apple.das.cpm.modeChanged";
  v2 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v7 = v2;
  v3 = [NSArray arrayWithObjects:&v7 count:1];

  return v3;
}

- (BOOL)appliesToActivity:(id)activity
{
  activityCopy = activity;
  if ([activityCopy requiresPlugin] && (objc_msgSend(activityCopy, "requestsImmediateRuntime") & 1) == 0)
  {
    fileProtection = [activityCopy fileProtection];
    v6 = +[_DASFileProtection complete];
    if ([fileProtection isEqual:v6])
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      fileProtection2 = [activityCopy fileProtection];
      v8 = +[_DASFileProtection completeUnlessOpen];
      if ([fileProtection2 isEqual:v8])
      {
        LOBYTE(v4) = 0;
      }

      else
      {
        startDate = [activityCopy startDate];
        if (startDate)
        {
          LOBYTE(v4) = 0;
        }

        else
        {
          v4 = ![_DASConditionScore isPremiumClient:activityCopy];
        }
      }
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)responseForActivity:(id)activity withState:(id)state
{
  activityCopy = activity;
  stateCopy = state;
  currentMode = [(_DASCPMModeMonitor *)self->_monitor currentMode];
  v9 = [_DASDaemonLogger logForCategory:@"cpmModes"];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1001269E4(activityCopy, currentMode, v9);
  }

  if (!currentMode)
  {
    v16 = [_DASPolicyResponse policyResponseWithDecision:0 validityDuration:0 rationale:0x384uLL];
    goto LABEL_16;
  }

  v10 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:@"CPM Mode Policy"];
  v11 = [NSPredicate predicateWithFormat:@"activeMode == %@", currentMode];
  [(_DASPolicyResponseRationale *)v10 addRationaleWithCondition:v11];

  if (![currentMode isEqual:@"InUseChargingMode"])
  {
    if ([currentMode isEqual:@"AcceleratedChargingMode"])
    {
      v17 = 0x384uLL;
      v18 = 33;
    }

    else
    {
      if (![currentMode isEqual:@"InBoxUpdateMode"])
      {
        goto LABEL_13;
      }

      v17 = 0x384uLL;
      v18 = 100;
    }

LABEL_14:
    v16 = [_DASPolicyResponse policyResponseWithDecision:v18 validityDuration:v10 rationale:v17];
    goto LABEL_15;
  }

  v12 = +[_CDContextQueries keyPathForPluginStatus];
  v13 = [stateCopy lastModifiedDateForContextualKeyPath:v12];

  v14 = +[NSDate now];
  [v14 timeIntervalSinceDate:v13];
  if (v15 >= 900.0)
  {

LABEL_13:
    v17 = 0x384uLL;
    v18 = 0;
    goto LABEL_14;
  }

  v16 = [_DASPolicyResponse policyResponseWithDecision:33 validityDuration:v10 rationale:0x384uLL];

LABEL_15:
LABEL_16:

  return v16;
}

@end