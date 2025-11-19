@interface _DASCarPlayPolicy
+ (id)policyInstance;
- (BOOL)appliesToActivity:(id)a3;
- (BOOL)shouldIgnoreTrigger:(id)a3 withState:(id)a4;
- (_DASCarPlayPolicy)init;
- (id)initializeTriggers;
- (id)responseForActivity:(id)a3 withState:(id)a4;
@end

@implementation _DASCarPlayPolicy

- (id)initializeTriggers
{
  v2 = +[_CDContextQueries keyPathForCarplayConnectedStatus];
  v3 = [_CDContextualPredicate predicateForChangeAtKeyPath:v2];

  v7[0] = @"identifier";
  v7[1] = @"predicate";
  v8[0] = @"com.apple.duetactivityscheduler.carplaypolicy.carplayconnected";
  v8[1] = v3;
  v7[2] = @"deviceSet";
  v7[3] = @"mustWake";
  v8[2] = &off_1001C98F8;
  v8[3] = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];
  v9 = v4;
  v5 = [NSArray arrayWithObjects:&v9 count:1];

  return v5;
}

- (_DASCarPlayPolicy)init
{
  v8.receiver = self;
  v8.super_class = _DASCarPlayPolicy;
  v2 = [(_DASCarPlayPolicy *)&v8 init];
  v3 = v2;
  if (v2)
  {
    policyName = v2->_policyName;
    v2->_policyName = @"Carplay Connected Policy";

    v5 = [(_DASCarPlayPolicy *)v3 initializeTriggers];
    triggers = v3->_triggers;
    v3->_triggers = v5;
  }

  return v3;
}

+ (id)policyInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004ABF0;
  block[3] = &unk_1001B54A0;
  block[4] = a1;
  if (qword_10020B0D8 != -1)
  {
    dispatch_once(&qword_10020B0D8, block);
  }

  v2 = qword_10020B0E0;

  return v2;
}

- (BOOL)shouldIgnoreTrigger:(id)a3 withState:(id)a4
{
  v5 = a4;
  if ([a3 isEqualToString:@"com.apple.duetactivityscheduler.carplaypolicy.carplayconnected"])
  {
    v6 = +[_CDContextQueries keyPathForCarplayConnectedStatus];
    v7 = [v5 objectForKeyedSubscript:v6];
    v8 = [v7 BOOLValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)appliesToActivity:(id)a3
{
  v3 = a3;
  if ([v3 requestsImmediateRuntime])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 schedulingPriority];
    v4 = v5 < _DASSchedulingPriorityUserInitiated;
  }

  return v4;
}

- (id)responseForActivity:(id)a3 withState:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[_CDContextQueries keyPathForCarplayConnectedStatus];
  v8 = [v6 objectForKeyedSubscript:v7];
  v9 = [v8 BOOLValue];

  v10 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:@"Carplay Connected Policy"];
  if (!v9)
  {
    goto LABEL_5;
  }

  v11 = [NSNumber numberWithBool:1];
  v12 = [NSPredicate predicateWithFormat:@"carplayConnected = %@", v11];
  [(_DASPolicyResponseRationale *)v10 addRationaleWithCondition:v12];

  if (([v5 requiresDeviceInactivity] & 1) != 0 || (+[_DASThermalPolicy policyInstance](_DASThermalPolicy, "policyInstance"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "thermalPressureWithState:", v6), v13, v14 >= 0x14))
  {
    v15 = 33;
  }

  else
  {
LABEL_5:
    v15 = 0;
  }

  v16 = [_DASPolicyResponse policyResponseWithDecision:v15 validityDuration:v10 rationale:0x384uLL];

  return v16;
}

@end