@interface _DASResultDependencyPolicy
+ (id)policyInstance;
- (_DASResultDependencyPolicy)init;
- (id)responseForActivity:(id)activity withState:(id)state;
@end

@implementation _DASResultDependencyPolicy

+ (id)policyInstance
{
  if (qword_10020AF10 != -1)
  {
    sub_10011D780();
  }

  v3 = qword_10020AF18;

  return v3;
}

- (_DASResultDependencyPolicy)init
{
  v8.receiver = self;
  v8.super_class = _DASResultDependencyPolicy;
  v2 = [(_DASResultDependencyPolicy *)&v8 init];
  v3 = v2;
  if (v2)
  {
    policyName = v2->_policyName;
    v2->_policyName = @"Result Dependency Policy";

    v5 = +[_DASActivityDependencyManager sharedInstance];
    dependencyManager = v3->_dependencyManager;
    v3->_dependencyManager = v5;
  }

  return v3;
}

- (id)responseForActivity:(id)activity withState:(id)state
{
  state = [(_DASActivityDependencyManager *)self->_dependencyManager areDependenciesSatisfiedFor:activity, state];
  v6 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:self->_policyName];
  if (state)
  {
    v7 = 0;
  }

  else
  {
    v7 = 100;
  }

  v8 = [NSNumber numberWithBool:state];
  v9 = [NSPredicate predicateWithFormat:@"dependencySatisfaction == %@", v8];
  [(_DASPolicyResponseRationale *)v6 addRationaleWithCondition:v9];

  v10 = [_DASPolicyResponse policyResponseWithDecision:v7 validityDuration:v6 rationale:0x384uLL];

  return v10;
}

@end