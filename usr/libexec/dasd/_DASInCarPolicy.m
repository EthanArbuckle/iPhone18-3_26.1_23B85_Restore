@interface _DASInCarPolicy
+ (id)policyInstance;
- (BOOL)shouldIgnoreTrigger:(id)a3 withState:(id)a4;
- (_DASInCarPolicy)init;
- (id)initializeTriggers;
- (id)responseForActivity:(id)a3 withState:(id)a4;
@end

@implementation _DASInCarPolicy

- (id)initializeTriggers
{
  v3 = [_CDContextualPredicate predicateForChangeAtKeyPath:self->_inCarKeyPath];
  v4 = [_CDContextualPredicate predicateForChangeAtKeyPath:self->_navigationKeyPath];
  v11[0] = @"identifier";
  v11[1] = @"predicate";
  v12[0] = @"com.apple.duetactivityscheduler.incarpolicy.incar";
  v12[1] = v3;
  v11[2] = @"deviceSet";
  v11[3] = @"mustWake";
  v12[2] = &off_1001C99B8;
  v12[3] = &__kCFBooleanFalse;
  v5 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:4];
  v13[0] = v5;
  v9[0] = @"identifier";
  v9[1] = @"predicate";
  v10[0] = @"com.apple.duetactivityscheduler.incarpolicy.nav";
  v10[1] = v4;
  v9[2] = @"deviceSet";
  v9[3] = @"mustWake";
  v10[2] = &off_1001C99B8;
  v10[3] = &__kCFBooleanFalse;
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:4];
  v13[1] = v6;
  v7 = [NSArray arrayWithObjects:v13 count:2];

  return v7;
}

- (_DASInCarPolicy)init
{
  v12.receiver = self;
  v12.super_class = _DASInCarPolicy;
  v2 = [(_DASInCarPolicy *)&v12 init];
  v3 = v2;
  if (v2)
  {
    policyName = v2->_policyName;
    v2->_policyName = @"In Car Policy";

    v5 = [_CDContextualKeyPath ephemeralKeyPathWithKey:@"/car/isConnected"];
    inCarKeyPath = v3->_inCarKeyPath;
    v3->_inCarKeyPath = v5;

    v7 = [_CDContextualKeyPath ephemeralKeyPathWithKey:@"/maps/navigationInProgress"];
    navigationKeyPath = v3->_navigationKeyPath;
    v3->_navigationKeyPath = v7;

    v9 = [(_DASInCarPolicy *)v3 initializeTriggers];
    triggers = v3->_triggers;
    v3->_triggers = v9;
  }

  return v3;
}

+ (id)policyInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000588B0;
  block[3] = &unk_1001B54A0;
  block[4] = a1;
  if (qword_10020B248 != -1)
  {
    dispatch_once(&qword_10020B248, block);
  }

  v2 = qword_10020B250;

  return v2;
}

- (BOOL)shouldIgnoreTrigger:(id)a3 withState:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"com.apple.duetactivityscheduler.incarpolicy.incar"])
  {
    v8 = 32;
  }

  else
  {
    if (![v6 isEqualToString:@"com.apple.duetactivityscheduler.incarpolicy.nav"])
    {
      v10 = 0;
      goto LABEL_7;
    }

    v8 = 40;
  }

  v9 = [v7 objectForKeyedSubscript:*(&self->super.isa + v8)];
  v10 = [v9 BOOLValue];

LABEL_7:
  return v10;
}

- (id)responseForActivity:(id)a3 withState:(id)a4
{
  v6 = a3;
  inCarKeyPath = self->_inCarKeyPath;
  v8 = a4;
  v9 = [v8 objectForKeyedSubscript:inCarKeyPath];
  v10 = [v9 BOOLValue];

  v11 = [v8 objectForKeyedSubscript:self->_navigationKeyPath];

  v12 = [v11 BOOLValue];
  if ((v10 & 1) == 0 && (v12 & 1) == 0)
  {
    v13 = [_DASPolicyResponse policyResponseWithDecision:0 validityDuration:0 rationale:0x384uLL];
    goto LABEL_18;
  }

  v14 = [v6 isIntensive];
  v15 = [v6 requiresDeviceInactivity];
  v16 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:@"In Car Policy"];
  if (!v12)
  {
    v18 = 1.0;
    if (v10)
    {
      v19 = [NSPredicate predicateWithFormat:@"inCar == YES"];
      [(_DASPolicyResponseRationale *)v16 addRationaleWithCondition:v19];

      v18 = 0.5;
      if (v14)
      {
        goto LABEL_9;
      }
    }

LABEL_16:
    v21 = [_DASPolicyResponse policyResponseWithScore:v16 validityDuration:v18 rationale:0x384uLL];
    goto LABEL_17;
  }

  v17 = [NSPredicate predicateWithFormat:@"navigationInProgress == YES"];
  [(_DASPolicyResponseRationale *)v16 addRationaleWithCondition:v17];

  if (!v14)
  {
    if (v15)
    {
      [NSPredicate predicateWithFormat:@"requiresInactive == %u", 1];
      goto LABEL_12;
    }

    v22 = [v6 schedulingPriority];
    v18 = 0.1;
    if (v22 < _DASSchedulingPriorityUtility)
    {
      v23 = [v6 startBefore];
      [v23 timeIntervalSinceNow];
      v25 = v24;

      if (v25 > 0.0)
      {
        +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"priority == %llu && timeUntilDeadline > 0", [v6 schedulingPriority]);
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_9:
  [NSPredicate predicateWithFormat:@"isIntensive == %u", 1];
  v20 = LABEL_12:;
  [(_DASPolicyResponseRationale *)v16 addRationaleWithCondition:v20];

  v21 = [_DASPolicyResponse policyResponseWithDecision:33 validityDuration:v16 rationale:0x384uLL];
LABEL_17:
  v13 = v21;

LABEL_18:

  return v13;
}

@end