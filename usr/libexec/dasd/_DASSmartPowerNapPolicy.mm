@interface _DASSmartPowerNapPolicy
+ (id)policyInstance;
- (BOOL)appliesToActivity:(id)a3;
- (_DASSmartPowerNapPolicy)init;
- (id)responseForActivity:(id)a3 withState:(id)a4;
@end

@implementation _DASSmartPowerNapPolicy

+ (id)policyInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100075FDC;
  block[3] = &unk_1001B54A0;
  block[4] = a1;
  if (qword_10020B4B8 != -1)
  {
    dispatch_once(&qword_10020B4B8, block);
  }

  v2 = qword_10020B4C0;

  return v2;
}

- (_DASSmartPowerNapPolicy)init
{
  v8.receiver = self;
  v8.super_class = _DASSmartPowerNapPolicy;
  v2 = [(_DASSmartPowerNapPolicy *)&v8 init];
  v3 = v2;
  if (v2)
  {
    policyName = v2->_policyName;
    v2->_policyName = @"SmartPowerNap Policy";

    v5 = +[_CDContextQueries keyPathForPluginStatus];
    pluginStatusKeyPath = v3->_pluginStatusKeyPath;
    v3->_pluginStatusKeyPath = v5;
  }

  return v3;
}

- (BOOL)appliesToActivity:(id)a3
{
  v3 = a3;
  if ([v3 useStatisticalModelForTriggersRestart])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 fastPass];
    if (v5 || ([v3 requestsImmediateRuntime] & 1) != 0)
    {
      v4 = 0;
    }

    else
    {
      v7 = [v3 schedulingPriority];
      v4 = v7 < _DASSchedulingPriorityUserInitiated;
    }
  }

  return v4;
}

- (id)responseForActivity:(id)a3 withState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[_DASDaemon sharedInstance];
  v9 = [_DASSmartPowerNapMonitor sharedMonitorWithDaemon:v8];

  v10 = [v9 inSmartPowerNap];
  v11 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:self->_policyName];
  if (![v6 requiresSignificantUserInactivity])
  {
    if (!v10)
    {
      goto LABEL_13;
    }

    v13 = [v6 launchReason];
    if ([v13 isEqualToString:_DASLaunchReasonBackgroundRefresh])
    {
    }

    else
    {
      v14 = [v6 launchReason];
      v15 = [v14 isEqualToString:_DASLaunchReasonBackgroundFetch];

      if ((v15 & 1) == 0)
      {
        v18 = [v6 widgetID];
        if (v18)
        {
          v19 = v18;
          v20 = [v6 targetDevice];

          if (!v20)
          {
            v12 = @"smartPowerNap == YES AND LocalWidget == YES";
            goto LABEL_9;
          }
        }

        v21 = [v7 objectForKeyedSubscript:self->_pluginStatusKeyPath];
        v22 = [v21 BOOLValue];

        if ((v22 & 1) == 0)
        {
          v25 = [v6 startBefore];
          v26 = [v6 startAfter];
          [v25 timeIntervalSinceDate:v26];
          v28 = v27;

          v29 = [v6 startAfter];
          [v29 timeIntervalSinceNow];
          v31 = v30;

          if ([v6 budgeted])
          {
            v12 = @"smartPowerNap == YES";
            goto LABEL_9;
          }

          if (v28 < 1.0)
          {
            v28 = 1.0;
          }

          v32 = [v6 schedulingPriority];
          v12 = @"smartPowerNap == YES";
          if (v32 < _DASSchedulingPriorityUtility || -v31 / v28 < 0.9)
          {
            goto LABEL_9;
          }
        }

        goto LABEL_13;
      }
    }

    v12 = @"smartPowerNap == YES AND LaunchReason == BackgroundRefresh";
    goto LABEL_9;
  }

  if ((v10 & 1) == 0)
  {
    v12 = @"smartPowerNap == NO";
LABEL_9:
    v16 = [NSPredicate predicateWithFormat:v12];
    [(_DASPolicyResponseRationale *)v11 addRationaleWithCondition:v16];

    v17 = 33;
    goto LABEL_14;
  }

LABEL_13:
  v17 = 0;
LABEL_14:
  v23 = [_DASPolicyResponse policyResponseWithDecision:v17 validityDuration:v11 rationale:0x384uLL];

  return v23;
}

@end