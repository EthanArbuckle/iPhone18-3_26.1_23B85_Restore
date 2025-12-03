@interface _DASPowerNapPolicy
+ (id)policyInstance;
- (_DASPowerNapPolicy)init;
- (id)responseForActivity:(id)activity withState:(id)state;
@end

@implementation _DASPowerNapPolicy

- (_DASPowerNapPolicy)init
{
  v6.receiver = self;
  v6.super_class = _DASPowerNapPolicy;
  v2 = [(_DASPowerNapPolicy *)&v6 init];
  v3 = v2;
  if (v2)
  {
    policyName = v2->_policyName;
    v2->_policyName = @"Power Nap Policy";
  }

  return v3;
}

+ (id)policyInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006958C;
  block[3] = &unk_1001B54A0;
  block[4] = self;
  if (qword_10020B3A0 != -1)
  {
    dispatch_once(&qword_10020B3A0, block);
  }

  v2 = qword_10020B3A8;

  return v2;
}

- (id)responseForActivity:(id)activity withState:(id)state
{
  activityCopy = activity;
  v5 = +[_DASDaemon sharedInstance];
  v6 = [_DASSleepWakeMonitor sharedMonitorWithDaemon:v5];

  v7 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:@"Power Nap Policy"];
  v8 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 inADarkWake]);
  v9 = [NSPredicate predicateWithFormat:@"inADarkWake == %@", v8];
  [(_DASPolicyResponseRationale *)v7 addRationaleWithCondition:v9];

  if (([activityCopy darkWakeEligible] & 1) != 0 && objc_msgSend(activityCopy, "beforeDaysFirstActivity"))
  {
    v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [activityCopy beforeDaysFirstActivity]);
    [NSPredicate predicateWithFormat:@"appRefresh == %@", v10];
  }

  else
  {
    v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [activityCopy darkWakeEligible]);
    [NSPredicate predicateWithFormat:@"darkWakeEligible == %@", v10];
  }
  v11 = ;
  [(_DASPolicyResponseRationale *)v7 addRationaleWithCondition:v11];

  if (([v6 canRunInCurrentWakeState:activityCopy] & 1) == 0)
  {
    wakeStateDescription = [v6 wakeStateDescription];
    if (wakeStateDescription)
    {
      v15 = [NSPredicate predicateWithFormat:@"wakeState == (%@)", wakeStateDescription];
      [(_DASPolicyResponseRationale *)v7 addRationaleWithCondition:v15];
    }

    goto LABEL_12;
  }

  if ([activityCopy darkWakeEligible])
  {
    if (([activityCopy beforeDaysFirstActivity] & 1) == 0)
    {
      name = [activityCopy name];
      v13 = [v6 hasFinishedRunningSinceLastWake:name];

      if (v13)
      {
        wakeStateDescription = [NSPredicate predicateWithFormat:@"runSinceLastWake == YES"];
        [(_DASPolicyResponseRationale *)v7 addRationaleWithCondition:wakeStateDescription];
LABEL_12:

        v16 = 33;
        goto LABEL_14;
      }
    }
  }

  v16 = 0;
LABEL_14:
  v17 = [_DASPolicyResponse policyResponseWithDecision:v16 validityDuration:v7 rationale:0x384uLL];

  return v17;
}

@end