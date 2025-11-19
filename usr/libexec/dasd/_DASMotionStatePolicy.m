@interface _DASMotionStatePolicy
+ (id)initializeTriggers;
+ (id)policyInstance;
- (BOOL)appliesToActivity:(id)a3;
- (_DASMotionStatePolicy)init;
- (id)responseForActivity:(id)a3 withState:(id)a4;
@end

@implementation _DASMotionStatePolicy

+ (id)initializeTriggers
{
  v2 = +[_CDContextQueries keyPathForMotionState];
  v3 = [_CDContextualPredicate predicateForChangeAtKeyPath:v2];

  v7[0] = @"identifier";
  v7[1] = @"predicate";
  v8[0] = @"com.apple.duetactivityscheduler.motionstatepolicy.motionstatechange";
  v8[1] = v3;
  v7[2] = @"deviceSet";
  v7[3] = @"mustWake";
  v8[2] = &off_1001C9A60;
  v8[3] = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];
  v9 = v4;
  v5 = [NSArray arrayWithObjects:&v9 count:1];

  return v5;
}

- (_DASMotionStatePolicy)init
{
  v8.receiver = self;
  v8.super_class = _DASMotionStatePolicy;
  v2 = [(_DASMotionStatePolicy *)&v8 init];
  v3 = v2;
  if (v2)
  {
    policyName = v2->_policyName;
    v2->_policyName = @"Motion State Policy";

    v5 = +[_DASMotionStatePolicy initializeTriggers];
    triggers = v3->_triggers;
    v3->_triggers = v5;
  }

  return v3;
}

+ (id)policyInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100063CB0;
  block[3] = &unk_1001B54A0;
  block[4] = a1;
  if (qword_10020B330 != -1)
  {
    dispatch_once(&qword_10020B330, block);
  }

  v2 = qword_10020B338;

  return v2;
}

- (BOOL)appliesToActivity:(id)a3
{
  v3 = a3;
  v4 = [v3 motionState];
  if (v4 != _DASMotionStateAny)
  {
LABEL_7:
    v6 = 1;
    goto LABEL_8;
  }

  v5 = [v3 schedulingPriority];
  if (v5 < _DASSchedulingPriorityUserInitiated && ([v3 requestsImmediateRuntime] & 1) == 0)
  {
    if (([v3 requiresNetwork] & 1) == 0 && (objc_msgSend(v3, "isIntensive") & 1) == 0)
    {
      v6 = [v3 requiresSignificantUserInactivity];
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (id)responseForActivity:(id)a3 withState:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[_CDContextQueries keyPathForMotionState];
  v8 = [v6 objectForKeyedSubscript:v7];

  v9 = [v8 integerValue];
  v10 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:@"Motion State Policy"];
  v11 = [NSNumber numberWithInteger:v9];
  v12 = [NSPredicate predicateWithFormat:@"motionState = %@", v11];
  [(_DASPolicyResponseRationale *)v10 addRationaleWithCondition:v12];

  v13 = [v5 motionState];
  if (v13 != _DASMotionStateAny)
  {
    if (v9 == [v5 motionState])
    {
      v21 = 0;
    }

    else
    {
      v21 = 33;
    }

    v20 = 0x384uLL;
    goto LABEL_15;
  }

  if (v9 == v13 || v9 == _DASMotionStateStationary)
  {
    goto LABEL_14;
  }

  v14 = [v5 startBefore];
  [v14 timeIntervalSinceNow];
  v16 = v15;

  if (v16 <= 0.0 || ([v5 isIntensive] & 1) == 0 && !objc_msgSend(v5, "requiresSignificantUserInactivity"))
  {
    if ([v5 requiresNetwork])
    {
      v22 = [NSPredicate predicateWithFormat:@"requiresNetwork == YES"];
      [(_DASPolicyResponseRationale *)v10 addRationaleWithCondition:v22];

      v23 = [_DASPolicyResponse policyResponseWithScore:v10 validityDuration:0.1 rationale:0x384uLL];
      goto LABEL_16;
    }

LABEL_14:
    v20 = 0x384uLL;
    v21 = 0;
    goto LABEL_15;
  }

  v17 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 requiresSignificantUserInactivity]);
  v18 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 isIntensive]);
  v19 = [NSPredicate predicateWithFormat:@"requiresSignificantUserInactivity == %@ AND isIntensive == %@", v17, v18];
  [(_DASPolicyResponseRationale *)v10 addRationaleWithCondition:v19];

  v20 = 0x384uLL;
  v21 = 33;
LABEL_15:
  v23 = [_DASPolicyResponse policyResponseWithDecision:v21 validityDuration:v10 rationale:v20];
LABEL_16:
  v24 = v23;

  return v24;
}

@end