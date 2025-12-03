@interface _DASBootTimePolicy
+ (id)getDeviceBootTime;
+ (id)policyInstance;
- (BOOL)appliesToActivity:(id)activity;
- (_DASBootTimePolicy)init;
- (id)responseForActivity:(id)activity withState:(id)state;
@end

@implementation _DASBootTimePolicy

- (_DASBootTimePolicy)init
{
  v8.receiver = self;
  v8.super_class = _DASBootTimePolicy;
  v2 = [(_DASBootTimePolicy *)&v8 init];
  v3 = v2;
  if (v2)
  {
    policyName = v2->_policyName;
    v2->_policyName = @"Boot Time Policy";

    v5 = +[_DASBootTimePolicy getDeviceBootTime];
    bootTime = v3->_bootTime;
    v3->_bootTime = v5;

    *&v3->_didExceedMinDurationAfterBoot = 0;
    v3->_didExceedMinDurationAfterBootNonRepeatingNonDiscretionary = 0;
  }

  return v3;
}

+ (id)policyInstance
{
  if (qword_10020B060 != -1)
  {
    sub_10011E63C();
  }

  v3 = qword_10020B068;

  return v3;
}

- (BOOL)appliesToActivity:(id)activity
{
  activityCopy = activity;
  fastPass = [activityCopy fastPass];
  if (fastPass || ([activityCopy requestsImmediateRuntime] & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    schedulingPriority = [activityCopy schedulingPriority];
    v5 = schedulingPriority < _DASSchedulingPriorityUserInitiated;
  }

  return v5;
}

+ (id)getDeviceBootTime
{
  v2 = qword_10020B070;
  if (!qword_10020B070)
  {
    v6 = 0;
    v7 = 0;
    *v9 = 0x1500000001;
    v8 = 16;
    if (sysctl(v9, 2u, &v6, &v8, 0, 0) != -1)
    {
      v3 = [NSDate dateWithTimeIntervalSince1970:v7 / 1000000.0 + v6];
      v4 = qword_10020B070;
      qword_10020B070 = v3;
    }

    v2 = qword_10020B070;
  }

  return v2;
}

- (id)responseForActivity:(id)activity withState:(id)state
{
  activityCopy = activity;
  v6 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:self->_policyName];
  if (!self->_bootTime)
  {
    v7 = +[_DASBootTimePolicy getDeviceBootTime];
    bootTime = self->_bootTime;
    self->_bootTime = v7;
  }

  schedulingPriority = [activityCopy schedulingPriority];
  if (schedulingPriority >= _DASSchedulingPriorityUtility)
  {
    [activityCopy interval];
    v10 = v11 == 0.0;
  }

  else
  {
    v10 = 0;
  }

  requiresNetwork = [activityCopy requiresNetwork];
  if (!self->_bootTime || self->_didExceedMinDurationAfterBoot || (v16 = requiresNetwork) != 0 && self->_didExceedMinDurationAfterBootNetworkActivites || v10 && self->_didExceedMinDurationAfterBootNonRepeatingNonDiscretionary)
  {
    v13 = 0;
    goto LABEL_9;
  }

  v17 = +[NSDate date];
  [v17 timeIntervalSinceDate:self->_bootTime];
  v19 = v18;

  if (v19 >= -15.0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 301.0;
  }

  v21 = 120.0;
  if (!v16)
  {
    v21 = 300.0;
  }

  if (v10)
  {
    v21 = 15.0;
  }

  if (v20 > 300.0)
  {
    self->_didExceedMinDurationAfterBoot = 1;
LABEL_29:
    self->_didExceedMinDurationAfterBootNetworkActivites = 1;
    goto LABEL_30;
  }

  if (v20 > 120.0)
  {
    v22 = v16;
  }

  else
  {
    v22 = 0;
  }

  if (v22)
  {
    goto LABEL_29;
  }

  if (v20 <= 15.0 || !v10)
  {
    v13 = 33;
    goto LABEL_31;
  }

LABEL_30:
  v13 = 0;
  self->_didExceedMinDurationAfterBootNonRepeatingNonDiscretionary = 1;
LABEL_31:
  [(_DASPolicyResponseRationale *)v6 addRationaleForCondition:@"Minimum seconds after boot" withRequiredValue:v21 withCurrentValue:?];
LABEL_9:
  v14 = [_DASPolicyResponse policyResponseWithDecision:v13 validityDuration:v6 rationale:0x384uLL];

  return v14;
}

@end