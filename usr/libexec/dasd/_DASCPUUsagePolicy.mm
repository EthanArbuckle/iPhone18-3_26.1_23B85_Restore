@interface _DASCPUUsagePolicy
+ (id)initializeTriggers;
+ (id)policyInstance;
- (BOOL)appliesToActivity:(id)activity;
- (BOOL)shouldIgnoreTrigger:(id)trigger withState:(id)state;
- (_DASCPUUsagePolicy)init;
- (id)responseForActivity:(id)activity withState:(id)state;
@end

@implementation _DASCPUUsagePolicy

+ (id)initializeTriggers
{
  v2 = +[_CDContextQueries keyPathForCPUUsageLevel];
  v3 = [_CDContextualPredicate predicateForChangeAtKeyPath:v2];

  v7[0] = @"identifier";
  v7[1] = @"predicate";
  v8[0] = @"com.apple.duetactivityscheduler.cpuusagepolicy.cpuusagelevelchange";
  v8[1] = v3;
  v7[2] = @"deviceSet";
  v7[3] = @"mustWake";
  v8[2] = &off_1001C9910;
  v8[3] = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];
  v9 = v4;
  v5 = [NSArray arrayWithObjects:&v9 count:1];

  return v5;
}

- (_DASCPUUsagePolicy)init
{
  v8.receiver = self;
  v8.super_class = _DASCPUUsagePolicy;
  v2 = [(_DASCPUUsagePolicy *)&v8 init];
  v3 = v2;
  if (v2)
  {
    policyName = v2->_policyName;
    v2->_policyName = @"CPU Usage Policy";

    v5 = +[_DASCPUUsagePolicy initializeTriggers];
    triggers = v3->_triggers;
    v3->_triggers = v5;
  }

  return v3;
}

+ (id)policyInstance
{
  if (qword_10020B0E8 != -1)
  {
    sub_10011F184();
  }

  v3 = qword_10020B0F0;

  return v3;
}

- (BOOL)shouldIgnoreTrigger:(id)trigger withState:(id)state
{
  stateCopy = state;
  if ([trigger isEqualToString:@"com.apple.duetactivityscheduler.cpuusagepolicy.cpuusagelevelchange"])
  {
    v6 = +[_CDContextQueries keyPathForCPUUsageLevel];
    v7 = [stateCopy objectForKeyedSubscript:v6];
    integerValue = [v7 integerValue];

    v9 = integerValue != qword_10020B9C8;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)appliesToActivity:(id)activity
{
  activityCopy = activity;
  if ([activityCopy isContinuedProcessingTask])
  {
    v4 = 1;
  }

  else
  {
    schedulingPriority = [activityCopy schedulingPriority];
    if (schedulingPriority >= _DASSchedulingPriorityUserInitiated || ([activityCopy triggersRestart] & 1) != 0 || (objc_msgSend(activityCopy, "isIntensive") & 1) != 0 || (objc_msgSend(activityCopy, "requestsImmediateRuntime") & 1) != 0)
    {
      v4 = 0;
    }

    else
    {
      startBefore = [activityCopy startBefore];
      [startBefore timeIntervalSinceNow];
      v4 = v8 >= 0.0;
    }
  }

  return v4;
}

- (id)responseForActivity:(id)activity withState:(id)state
{
  activityCopy = activity;
  stateCopy = state;
  v8 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:self->_policyName];
  if ([activityCopy isRunning])
  {
    v9 = 0x384uLL;
    v10 = 0;
LABEL_16:
    v18 = v8;
    goto LABEL_17;
  }

  v11 = +[_CDContextQueries keyPathForCPUUsageLevel];
  v12 = [stateCopy objectForKeyedSubscript:v11];
  integerValue = [v12 integerValue];

  v14 = [_DASDeviceActivityPolicy isDeviceInUse:stateCopy];
  if ((v14 & 1) == 0 && ([_DASPhotosPolicy isiCPLActivity:activityCopy]|| [_DASPhotosPolicy isAppLibraryActivity:activityCopy]))
  {
    v9 = 0x384uLL;
    v10 = 0;
    v18 = 0;
LABEL_17:
    v20 = [_DASPolicyResponse policyResponseWithDecision:v10 validityDuration:v18 rationale:v9];
    goto LABEL_18;
  }

  v15 = qword_10020B9C8;
  schedulingPriority = [activityCopy schedulingPriority];
  if (schedulingPriority <= _DASSchedulingPriorityBackground)
  {
    v19 = &qword_100209E88;
    if (v14)
    {
      v19 = &qword_100209E78;
    }

    v15 = *v19;
  }

  else
  {
    schedulingPriority2 = [activityCopy schedulingPriority];
    if (schedulingPriority2 <= _DASSchedulingPriorityDefault || [activityCopy isContinuedProcessingTask])
    {
      v15 = qword_100209E88;
    }
  }

  if (integerValue > v15)
  {
    [(_DASPolicyResponseRationale *)v8 addRationaleForCondition:@"Max allowed CPU Usage level" withRequiredValue:v15 withCurrentValue:integerValue];
    v9 = 0x384uLL;
    v10 = 33;
    goto LABEL_16;
  }

  v23 = (100 - integerValue) / 100.0;
  v24 = [NSNumber numberWithInteger:integerValue];
  v25 = [NSPredicate predicateWithFormat:@"cpuLevel == %@", v24];
  [(_DASPolicyResponseRationale *)v8 addRationaleWithCondition:v25];

  v20 = [_DASPolicyResponse policyResponseWithScore:v8 validityDuration:v23 rationale:0x384uLL];
LABEL_18:
  v21 = v20;

  return v21;
}

@end