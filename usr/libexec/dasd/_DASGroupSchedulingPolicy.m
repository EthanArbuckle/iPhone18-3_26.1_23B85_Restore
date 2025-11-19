@interface _DASGroupSchedulingPolicy
+ (id)policyInstance;
- (BOOL)appliesToActivity:(id)a3;
- (_DASGroupSchedulingPolicy)init;
- (id)responseForActivity:(id)a3 withState:(id)a4;
@end

@implementation _DASGroupSchedulingPolicy

+ (id)policyInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005817C;
  block[3] = &unk_1001B54A0;
  block[4] = a1;
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

- (BOOL)appliesToActivity:(id)a3
{
  v3 = a3;
  v4 = [v3 groupName];
  if (v4 && ([v3 requestsImmediateRuntime] & 1) == 0)
  {
    v6 = [v3 schedulingPriority];
    v5 = v6 < _DASSchedulingPriorityUserInitiatedOvercommit;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)responseForActivity:(id)a3 withState:(id)a4
{
  v4 = a3;
  v5 = +[_DASDaemon sharedInstance];
  v6 = [v4 groupName];
  if (_os_feature_enabled_impl())
  {
    v7 = [v4 internalGroupNames];
    v8 = [v7 count];

    if (v8)
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v9 = [v4 internalGroupNames];
      v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v25 + 1) + 8 * i);
            v15 = [v5 additionalCapacityForActivity:v4 inGroupWithName:v14 shouldTryToSuspend:1];
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

          v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
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

  v16 = [v5 additionalCapacityForActivity:v4 inGroupWithName:v6 shouldTryToSuspend:1];
  if (v16 >= 1)
  {
LABEL_13:
    v17 = [_DASPolicyResponse policyResponseWithDecision:0 validityDuration:0 rationale:0x384uLL];
    goto LABEL_16;
  }

  v21 = v16;
  v22 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:@"Activity Group Policy"];
  v23 = [NSPredicate predicateWithFormat:@"%@.currentAvailableLimit == %ld", v6, v21];
  [(_DASPolicyResponseRationale *)v22 addRationaleWithCondition:v23];

  [(_DASPolicyResponseRationale *)v22 setResponseOptions:[(_DASPolicyResponseRationale *)v22 responseOptions]| 1];
  v17 = [_DASPolicyResponse policyResponseWithDecision:33 validityDuration:v22 rationale:0x384uLL];

LABEL_16:

  return v17;
}

@end