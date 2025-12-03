@interface _DASInCarPolicy
+ (id)policyInstance;
- (BOOL)shouldIgnoreTrigger:(id)trigger withState:(id)state;
- (_DASInCarPolicy)init;
- (id)initializeTriggers;
- (id)responseForActivity:(id)activity withState:(id)state;
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

    initializeTriggers = [(_DASInCarPolicy *)v3 initializeTriggers];
    triggers = v3->_triggers;
    v3->_triggers = initializeTriggers;
  }

  return v3;
}

+ (id)policyInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000588B0;
  block[3] = &unk_1001B54A0;
  block[4] = self;
  if (qword_10020B248 != -1)
  {
    dispatch_once(&qword_10020B248, block);
  }

  v2 = qword_10020B250;

  return v2;
}

- (BOOL)shouldIgnoreTrigger:(id)trigger withState:(id)state
{
  triggerCopy = trigger;
  stateCopy = state;
  if ([triggerCopy isEqualToString:@"com.apple.duetactivityscheduler.incarpolicy.incar"])
  {
    v8 = 32;
  }

  else
  {
    if (![triggerCopy isEqualToString:@"com.apple.duetactivityscheduler.incarpolicy.nav"])
    {
      bOOLValue = 0;
      goto LABEL_7;
    }

    v8 = 40;
  }

  v9 = [stateCopy objectForKeyedSubscript:*(&self->super.isa + v8)];
  bOOLValue = [v9 BOOLValue];

LABEL_7:
  return bOOLValue;
}

- (id)responseForActivity:(id)activity withState:(id)state
{
  activityCopy = activity;
  inCarKeyPath = self->_inCarKeyPath;
  stateCopy = state;
  v9 = [stateCopy objectForKeyedSubscript:inCarKeyPath];
  bOOLValue = [v9 BOOLValue];

  v11 = [stateCopy objectForKeyedSubscript:self->_navigationKeyPath];

  bOOLValue2 = [v11 BOOLValue];
  if ((bOOLValue & 1) == 0 && (bOOLValue2 & 1) == 0)
  {
    v13 = [_DASPolicyResponse policyResponseWithDecision:0 validityDuration:0 rationale:0x384uLL];
    goto LABEL_18;
  }

  isIntensive = [activityCopy isIntensive];
  requiresDeviceInactivity = [activityCopy requiresDeviceInactivity];
  v16 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:@"In Car Policy"];
  if (!bOOLValue2)
  {
    v18 = 1.0;
    if (bOOLValue)
    {
      v19 = [NSPredicate predicateWithFormat:@"inCar == YES"];
      [(_DASPolicyResponseRationale *)v16 addRationaleWithCondition:v19];

      v18 = 0.5;
      if (isIntensive)
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

  if (!isIntensive)
  {
    if (requiresDeviceInactivity)
    {
      [NSPredicate predicateWithFormat:@"requiresInactive == %u", 1];
      goto LABEL_12;
    }

    schedulingPriority = [activityCopy schedulingPriority];
    v18 = 0.1;
    if (schedulingPriority < _DASSchedulingPriorityUtility)
    {
      startBefore = [activityCopy startBefore];
      [startBefore timeIntervalSinceNow];
      v25 = v24;

      if (v25 > 0.0)
      {
        +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"priority == %llu && timeUntilDeadline > 0", [activityCopy schedulingPriority]);
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