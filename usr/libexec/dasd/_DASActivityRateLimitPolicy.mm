@interface _DASActivityRateLimitPolicy
+ (id)policyInstance;
- (BOOL)appliesToActivity:(id)activity;
- (BOOL)shouldIgnoreTrigger:(id)trigger withState:(id)state;
- (_DASActivityRateLimitPolicy)init;
- (id)initializeTriggers;
- (id)responseForActivity:(id)activity withState:(id)state;
@end

@implementation _DASActivityRateLimitPolicy

- (id)initializeTriggers
{
  v8 = @"identifier";
  v9 = @"com.apple.duetactivityscheduler.pluggedinpolicy.ispluggedin";
  v2 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v10[0] = v2;
  v6 = @"identifier";
  v7 = @"com.apple.das.lpmchange";
  v3 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v10[1] = v3;
  v4 = [NSArray arrayWithObjects:v10 count:2];

  return v4;
}

- (_DASActivityRateLimitPolicy)init
{
  v9.receiver = self;
  v9.super_class = _DASActivityRateLimitPolicy;
  v2 = [(_DASActivityRateLimitPolicy *)&v9 init];
  v3 = v2;
  if (v2)
  {
    policyName = v2->_policyName;
    v2->_policyName = @"ActivityRateLimitPolicy";

    policyDescription = v3->_policyDescription;
    v3->_policyDescription = @"Blocks rate limited activities if rate limit configuration group is at capacity.";

    initializeTriggers = [(_DASActivityRateLimitPolicy *)v3 initializeTriggers];
    triggers = v3->_triggers;
    v3->_triggers = initializeTriggers;
  }

  return v3;
}

+ (id)policyInstance
{
  if (qword_10020AFA0 != -1)
  {
    sub_10011DED8();
  }

  v3 = qword_10020AFA8;

  return v3;
}

- (BOOL)appliesToActivity:(id)activity
{
  rateLimitConfigurationName = [activity rateLimitConfigurationName];
  v4 = rateLimitConfigurationName != 0;

  return v4;
}

- (id)responseForActivity:(id)activity withState:(id)state
{
  activityCopy = activity;
  v6 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:self->_policyName];
  rateLimitConfigurationName = [activityCopy rateLimitConfigurationName];
  if (rateLimitConfigurationName && ([activityCopy startDate], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    v10 = +[_DASActivityRateLimitManager sharedLimiter];
    v11 = [v10 evaluateRateLimitedActivity:activityCopy];

    maxedRateLimits = [v11 maxedRateLimits];
    v13 = [maxedRateLimits count];

    if (v13)
    {
      [(_DASPolicyResponseRationale *)v6 addRationaleForCondition:@"ratelimited" withRequiredValue:1.0 withCurrentValue:0.0];
      v14 = 33;
    }

    else
    {
      v14 = 0;
    }

    v9 = [_DASPolicyResponse policyResponseWithDecision:v14 validityDuration:v6 rationale:0x384uLL];
  }

  else
  {
    v9 = [_DASPolicyResponse policyResponseWithDecision:0 validityDuration:v6 rationale:0x384uLL];
  }

  return v9;
}

- (BOOL)shouldIgnoreTrigger:(id)trigger withState:(id)state
{
  triggerCopy = trigger;
  stateCopy = state;
  if ((([triggerCopy isEqualToString:@"com.apple.das.lpmchange"] & 1) != 0 || objc_msgSend(triggerCopy, "isEqualToString:", @"com.apple.duetactivityscheduler.pluggedinpolicy.ispluggedin")) && !+[_DASRateLimiterUtilities consideredInLPMWithState:](_DASRateLimiterUtilities, "consideredInLPMWithState:", stateCopy))
  {
    v8 = +[_DASActivityRateLimitManager sharedLimiter];
    [v8 recalculateStartDates];

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end