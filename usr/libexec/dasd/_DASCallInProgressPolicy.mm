@interface _DASCallInProgressPolicy
+ (id)policyInstance;
- (BOOL)shouldIgnoreTrigger:(id)trigger withState:(id)state;
- (_DASCallInProgressPolicy)init;
- (id)initializeTriggers;
- (id)responseForActivity:(id)activity withState:(id)state;
@end

@implementation _DASCallInProgressPolicy

- (id)initializeTriggers
{
  v2 = +[_CDContextQueries keyPathForCallInProgressStatus];
  v3 = [_CDContextualPredicate predicateForChangeAtKeyPath:v2];

  v7[0] = @"identifier";
  v7[1] = @"predicate";
  v8[0] = @"com.apple.duetactivityscheduler.callinprogresspolicy.callinprogress";
  v8[1] = v3;
  v7[2] = @"deviceSet";
  v7[3] = @"mustWake";
  v8[2] = &off_1001C98E0;
  v8[3] = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];
  v9 = v4;
  v5 = [NSArray arrayWithObjects:&v9 count:1];

  return v5;
}

- (_DASCallInProgressPolicy)init
{
  v8.receiver = self;
  v8.super_class = _DASCallInProgressPolicy;
  v2 = [(_DASCallInProgressPolicy *)&v8 init];
  v3 = v2;
  if (v2)
  {
    policyName = v2->_policyName;
    v2->_policyName = @"Call In Progress Policy";

    initializeTriggers = [(_DASCallInProgressPolicy *)v3 initializeTriggers];
    triggers = v3->_triggers;
    v3->_triggers = initializeTriggers;
  }

  return v3;
}

+ (id)policyInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004A6B4;
  block[3] = &unk_1001B54A0;
  block[4] = self;
  if (qword_10020B0C8 != -1)
  {
    dispatch_once(&qword_10020B0C8, block);
  }

  v2 = qword_10020B0D0;

  return v2;
}

- (BOOL)shouldIgnoreTrigger:(id)trigger withState:(id)state
{
  stateCopy = state;
  if ([trigger isEqualToString:@"com.apple.duetactivityscheduler.callinprogresspolicy.callinprogress"])
  {
    v6 = +[_CDContextQueries keyPathForCallInProgressStatus];
    v7 = [stateCopy objectForKeyedSubscript:v6];
    bOOLValue = [v7 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)responseForActivity:(id)activity withState:(id)state
{
  activityCopy = activity;
  stateCopy = state;
  v7 = +[_CDContextQueries keyPathForCallInProgressStatus];
  v8 = [stateCopy objectForKeyedSubscript:v7];

  bOOLValue = [v8 BOOLValue];
  v10 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:@"Call In Progress Policy"];
  v11 = [NSNumber numberWithBool:bOOLValue];
  v12 = [NSPredicate predicateWithFormat:@"callInProgress = %@", v11];
  [(_DASPolicyResponseRationale *)v10 addRationaleWithCondition:v12];

  v13 = 1.0;
  if (bOOLValue)
  {
    if (([activityCopy requiresDeviceInactivity] & 1) != 0 || objc_msgSend(activityCopy, "requestsApplicationLaunch"))
    {
      v14 = [_DASPolicyResponse policyResponseWithDecision:33 validityDuration:v10 rationale:0x384uLL];
      goto LABEL_7;
    }

    v13 = 0.1;
  }

  v14 = [_DASPolicyResponse policyResponseWithScore:v10 validityDuration:v13 rationale:0x384uLL];
LABEL_7:
  v15 = v14;

  return v15;
}

@end