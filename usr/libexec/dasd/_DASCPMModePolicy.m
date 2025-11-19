@interface _DASCPMModePolicy
+ (id)policyInstance;
- (BOOL)appliesToActivity:(id)a3;
- (_DASCPMModePolicy)init;
- (id)initializeTriggers;
- (id)responseForActivity:(id)a3 withState:(id)a4;
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

    v5 = [(_DASCPMModePolicy *)v3 initializeTriggers];
    triggers = v3->_triggers;
    v3->_triggers = v5;

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
  block[4] = a1;
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

- (BOOL)appliesToActivity:(id)a3
{
  v3 = a3;
  if ([v3 requiresPlugin] && (objc_msgSend(v3, "requestsImmediateRuntime") & 1) == 0)
  {
    v5 = [v3 fileProtection];
    v6 = +[_DASFileProtection complete];
    if ([v5 isEqual:v6])
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      v7 = [v3 fileProtection];
      v8 = +[_DASFileProtection completeUnlessOpen];
      if ([v7 isEqual:v8])
      {
        LOBYTE(v4) = 0;
      }

      else
      {
        v9 = [v3 startDate];
        if (v9)
        {
          LOBYTE(v4) = 0;
        }

        else
        {
          v4 = ![_DASConditionScore isPremiumClient:v3];
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

- (id)responseForActivity:(id)a3 withState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_DASCPMModeMonitor *)self->_monitor currentMode];
  v9 = [_DASDaemonLogger logForCategory:@"cpmModes"];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1001269E4(v6, v8, v9);
  }

  if (!v8)
  {
    v16 = [_DASPolicyResponse policyResponseWithDecision:0 validityDuration:0 rationale:0x384uLL];
    goto LABEL_16;
  }

  v10 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:@"CPM Mode Policy"];
  v11 = [NSPredicate predicateWithFormat:@"activeMode == %@", v8];
  [(_DASPolicyResponseRationale *)v10 addRationaleWithCondition:v11];

  if (![v8 isEqual:@"InUseChargingMode"])
  {
    if ([v8 isEqual:@"AcceleratedChargingMode"])
    {
      v17 = 0x384uLL;
      v18 = 33;
    }

    else
    {
      if (![v8 isEqual:@"InBoxUpdateMode"])
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
  v13 = [v7 lastModifiedDateForContextualKeyPath:v12];

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