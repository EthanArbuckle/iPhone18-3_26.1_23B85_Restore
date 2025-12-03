@interface _DASEnvironmentalPolicy
+ (id)policyInstance;
- (BOOL)appliesToActivity:(id)activity;
- (_DASEnvironmentalPolicy)init;
- (id)initializeTriggers;
- (id)responseForActivity:(id)activity withState:(id)state;
@end

@implementation _DASEnvironmentalPolicy

- (id)initializeTriggers
{
  v2 = +[_CDContextQueries keyPathForPluginStatus];
  v3 = [_CDContextualPredicate predicateForChangeAtKeyPath:v2];

  v7[0] = @"identifier";
  v7[1] = @"predicate";
  v8[0] = @"com.apple.duetactivityscheduler.environmentpolicy.ispluggedin";
  v8[1] = v3;
  v7[2] = @"deviceSet";
  v7[3] = @"mustWake";
  v8[2] = &off_1001C9838;
  v8[3] = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];
  v9 = v4;
  v5 = [NSArray arrayWithObjects:&v9 count:1];

  return v5;
}

- (_DASEnvironmentalPolicy)init
{
  v8.receiver = self;
  v8.super_class = _DASEnvironmentalPolicy;
  v2 = [(_DASEnvironmentalPolicy *)&v8 init];
  v3 = v2;
  if (v2)
  {
    policyName = v2->_policyName;
    v2->_policyName = @"Environmental Policy";

    initializeTriggers = [(_DASEnvironmentalPolicy *)v3 initializeTriggers];
    triggers = v3->_triggers;
    v3->_triggers = initializeTriggers;
  }

  return v3;
}

+ (id)policyInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100045F90;
  block[3] = &unk_1001B54A0;
  block[4] = self;
  if (qword_10020B078 != -1)
  {
    dispatch_once(&qword_10020B078, block);
  }

  v2 = qword_10020B080;

  return v2;
}

- (BOOL)appliesToActivity:(id)activity
{
  activityCopy = activity;
  if (([activityCopy backlogged] & 1) != 0 || (objc_msgSend(activityCopy, "requestsImmediateRuntime") & 1) != 0 || !objc_msgSend(activityCopy, "requiresPlugin"))
  {
    v5 = 0;
  }

  else
  {
    schedulingPriority = [activityCopy schedulingPriority];
    v5 = schedulingPriority <= _DASSchedulingPriorityBackground;
  }

  return v5;
}

- (id)responseForActivity:(id)activity withState:(id)state
{
  activityCopy = activity;
  v5 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:@"Environmental Policy"];
  if (!+[_DASConfig hasRecentlyUpdated])
  {
    v6 = +[_DASGridDataManager sharedInstance];
    if ([v6 isHighCarbonImpactWindow])
    {
      startDate = [activityCopy startDate];

      if (!startDate)
      {
        [(_DASPolicyResponseRationale *)v5 addRationaleForCondition:@"isInHighCarbonImpactWindow" withRequiredValue:0.0 withCurrentValue:1.0];
        if (!+[_DASActivityDurationTracker shouldTrackActivity:](_DASActivityDurationTracker, "shouldTrackActivity:", activityCopy) || (+[_DASActivityDurationTracker sharedInstance](_DASActivityDurationTracker, "sharedInstance"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 activityHadEnoughRuntime:activityCopy], v8, (v9 & 1) != 0))
        {
          v10 = 33;
          goto LABEL_9;
        }

        [(_DASPolicyResponseRationale *)v5 addRationaleForCondition:@"hadEnoughRuntime" withRequiredValue:1.0 withCurrentValue:0.0];
      }
    }

    else
    {
    }
  }

  v10 = 0;
LABEL_9:
  v11 = [_DASPolicyResponse policyResponseWithDecision:v10 validityDuration:v5 rationale:0x384uLL];

  return v11;
}

@end