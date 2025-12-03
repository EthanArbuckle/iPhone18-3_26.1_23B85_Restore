@interface _DASGroupSchedulingPolicy
+ (id)policyInstance;
- (BOOL)appliesToActivity:(id)activity;
- (_DASGroupSchedulingPolicy)init;
- (id)responseForActivity:(id)activity withState:(id)state;
@end

@implementation _DASGroupSchedulingPolicy

+ (id)policyInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005817C;
  block[3] = &unk_1001B54A0;
  block[4] = self;
  if (qword_10020B238 != -1)
  {
    dispatch_once(&qword_10020B238, block);
  }

  v2 = qword_10020B240;

  return v2;
}

- (_DASGroupSchedulingPolicy)init
{
  v6.receiver = self;
  v6.super_class = _DASGroupSchedulingPolicy;
  v2 = [(_DASGroupSchedulingPolicy *)&v6 init];
  v3 = v2;
  if (v2)
  {
    policyName = v2->_policyName;
    v2->_policyName = @"Activity Group Policy";
  }

  return v3;
}

- (BOOL)appliesToActivity:(id)activity
{
  activityCopy = activity;
  groupName = [activityCopy groupName];
  if (groupName && ([activityCopy requestsImmediateRuntime] & 1) == 0)
  {
    schedulingPriority = [activityCopy schedulingPriority];
    v5 = schedulingPriority < _DASSchedulingPriorityUserInitiatedOvercommit;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)responseForActivity:(id)activity withState:(id)state
{
  activityCopy = activity;
  v5 = +[_DASDaemon sharedInstance];
  groupName = [activityCopy groupName];
  if (_os_feature_enabled_impl())
  {
    internalGroupNames = [activityCopy internalGroupNames];
    v8 = [internalGroupNames count];

    if (v8)
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      internalGroupNames2 = [activityCopy internalGroupNames];
      v10 = [internalGroupNames2 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v26;
        while (2)
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v26 != v12)
            {
              objc_enumerationMutation(internalGroupNames2);
            }

            v14 = *(*(&v25 + 1) + 8 * i);
            v15 = [v5 additionalCapacityForActivity:activityCopy inGroupWithName:v14 shouldTryToSuspend:1];
            if (v15 < 1)
            {
              v18 = v15;
              v19 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:@"Activity Group Policy"];
              v20 = [NSPredicate predicateWithFormat:@"%@.currentAvailableLimit == %ld", v14, v18];
              [(_DASPolicyResponseRationale *)v19 addRationaleWithCondition:v20];

              [(_DASPolicyResponseRationale *)v19 setResponseOptions:[(_DASPolicyResponseRationale *)v19 responseOptions]| 1];
              v17 = [_DASPolicyResponse policyResponseWithDecision:33 validityDuration:v19 rationale:0x384uLL];

              goto LABEL_16;
            }
          }

          v11 = [internalGroupNames2 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }
    }

    goto LABEL_13;
  }

  v16 = [v5 additionalCapacityForActivity:activityCopy inGroupWithName:groupName shouldTryToSuspend:1];
  if (v16 >= 1)
  {
LABEL_13:
    v17 = [_DASPolicyResponse policyResponseWithDecision:0 validityDuration:0 rationale:0x384uLL];
    goto LABEL_16;
  }

  v21 = v16;
  v22 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:@"Activity Group Policy"];
  v23 = [NSPredicate predicateWithFormat:@"%@.currentAvailableLimit == %ld", groupName, v21];
  [(_DASPolicyResponseRationale *)v22 addRationaleWithCondition:v23];

  [(_DASPolicyResponseRationale *)v22 setResponseOptions:[(_DASPolicyResponseRationale *)v22 responseOptions]| 1];
  v17 = [_DASPolicyResponse policyResponseWithDecision:33 validityDuration:v22 rationale:0x384uLL];

LABEL_16:

  return v17;
}

@end