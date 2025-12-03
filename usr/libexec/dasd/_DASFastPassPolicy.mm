@interface _DASFastPassPolicy
+ (id)policyInstance;
- (BOOL)appliesToActivity:(id)activity;
- (_DASFastPassPolicy)init;
- (id)rationaleWithAllSystemConditions;
- (id)responseForActivity:(id)activity withState:(id)state;
- (int64_t)makeDecisionBasedOnSystemConstraints;
- (void)updateFastPassShallYield:(BOOL)yield;
@end

@implementation _DASFastPassPolicy

+ (id)policyInstance
{
  if (qword_10020B208 != -1)
  {
    sub_10011FB74();
  }

  v3 = qword_10020B210;

  return v3;
}

- (_DASFastPassPolicy)init
{
  v6.receiver = self;
  v6.super_class = _DASFastPassPolicy;
  v2 = [(_DASFastPassPolicy *)&v6 init];
  v3 = v2;
  if (v2)
  {
    policyName = v2->_policyName;
    v2->_policyName = @"Fast Pass Policy";

    v3->_fastPassShallYield = 0;
  }

  return v3;
}

- (BOOL)appliesToActivity:(id)activity
{
  activityCopy = activity;
  if (_os_feature_enabled_impl())
  {
    fastPass = [activityCopy fastPass];
    v5 = fastPass != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)updateFastPassShallYield:(BOOL)yield
{
  yieldCopy = yield;
  if (_os_feature_enabled_impl())
  {
    self->_fastPassShallYield = yieldCopy;
    if (yieldCopy)
    {
      v5 = dispatch_time(0, 900000000000);
      v6 = dispatch_get_global_queue(9, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100055AA8;
      block[3] = &unk_1001B5668;
      block[4] = self;
      dispatch_after(v5, v6, block);
    }
  }

  else
  {
    v7 = [_DASDaemonLogger logForCategory:@"fastpasspolicy"];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10011FB88(v7);
    }
  }
}

- (id)responseForActivity:(id)activity withState:(id)state
{
  v5 = [(_DASFastPassPolicy *)self makeDecisionBasedOnSystemConstraints:activity];
  rationaleWithAllSystemConditions = [(_DASFastPassPolicy *)self rationaleWithAllSystemConditions];
  v7 = [_DASPolicyResponse policyResponseWithDecision:v5 validityDuration:rationaleWithAllSystemConditions rationale:900.0];

  return v7;
}

- (int64_t)makeDecisionBasedOnSystemConstraints
{
  if (self->_fastPassShallYield)
  {
    return 100;
  }

  else
  {
    return 0;
  }
}

- (id)rationaleWithAllSystemConditions
{
  v3 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:@"Fast Pass Policy"];
  LOBYTE(v4) = self->_fastPassShallYield;
  [(_DASPolicyResponseRationale *)v3 addRationaleForCondition:@"fastPassShallYield" withRequiredValue:0.0 withCurrentValue:v4];

  return v3;
}

@end