@interface _DASSmartPowerNapPolicy
+ (id)policyInstance;
- (BOOL)appliesToActivity:(id)activity;
- (_DASSmartPowerNapPolicy)init;
- (id)responseForActivity:(id)activity withState:(id)state;
@end

@implementation _DASSmartPowerNapPolicy

+ (id)policyInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100075FDC;
  block[3] = &unk_1001B54A0;
  block[4] = self;
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

- (BOOL)appliesToActivity:(id)activity
{
  activityCopy = activity;
  if ([activityCopy useStatisticalModelForTriggersRestart])
  {
    v4 = 0;
  }

  else
  {
    fastPass = [activityCopy fastPass];
    if (fastPass || ([activityCopy requestsImmediateRuntime] & 1) != 0)
    {
      v4 = 0;
    }

    else
    {
      schedulingPriority = [activityCopy schedulingPriority];
      v4 = schedulingPriority < _DASSchedulingPriorityUserInitiated;
    }
  }

  return v4;
}

- (id)responseForActivity:(id)activity withState:(id)state
{
  activityCopy = activity;
  stateCopy = state;
  v8 = +[_DASDaemon sharedInstance];
  v9 = [_DASSmartPowerNapMonitor sharedMonitorWithDaemon:v8];

  inSmartPowerNap = [v9 inSmartPowerNap];
  v11 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:self->_policyName];
  if (![activityCopy requiresSignificantUserInactivity])
  {
    if (!inSmartPowerNap)
    {
      goto LABEL_13;
    }

    launchReason = [activityCopy launchReason];
    if ([launchReason isEqualToString:_DASLaunchReasonBackgroundRefresh])
    {
    }

    else
    {
      launchReason2 = [activityCopy launchReason];
      v15 = [launchReason2 isEqualToString:_DASLaunchReasonBackgroundFetch];

      if ((v15 & 1) == 0)
      {
        widgetID = [activityCopy widgetID];
        if (widgetID)
        {
          v19 = widgetID;
          targetDevice = [activityCopy targetDevice];

          if (!targetDevice)
          {
            v12 = @"smartPowerNap == YES AND LocalWidget == YES";
            goto LABEL_9;
          }
        }

        v21 = [stateCopy objectForKeyedSubscript:self->_pluginStatusKeyPath];
        bOOLValue = [v21 BOOLValue];

        if ((bOOLValue & 1) == 0)
        {
          startBefore = [activityCopy startBefore];
          startAfter = [activityCopy startAfter];
          [startBefore timeIntervalSinceDate:startAfter];
          v28 = v27;

          startAfter2 = [activityCopy startAfter];
          [startAfter2 timeIntervalSinceNow];
          v31 = v30;

          if ([activityCopy budgeted])
          {
            v12 = @"smartPowerNap == YES";
            goto LABEL_9;
          }

          if (v28 < 1.0)
          {
            v28 = 1.0;
          }

          schedulingPriority = [activityCopy schedulingPriority];
          v12 = @"smartPowerNap == YES";
          if (schedulingPriority < _DASSchedulingPriorityUtility || -v31 / v28 < 0.9)
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

  if ((inSmartPowerNap & 1) == 0)
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