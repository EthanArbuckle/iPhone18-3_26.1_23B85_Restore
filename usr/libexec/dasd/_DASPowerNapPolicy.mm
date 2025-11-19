@interface _DASPowerNapPolicy
+ (id)policyInstance;
- (_DASPowerNapPolicy)init;
- (id)responseForActivity:(id)a3 withState:(id)a4;
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
  block[4] = a1;
  if (qword_10020B3A0 != -1)
  {
    dispatch_once(&qword_10020B3A0, block);
  }

  v2 = qword_10020B3A8;

  return v2;
}

- (id)responseForActivity:(id)a3 withState:(id)a4
{
  v4 = a3;
  v5 = +[_DASDaemon sharedInstance];
  v6 = [_DASSleepWakeMonitor sharedMonitorWithDaemon:v5];

  v7 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:@"Power Nap Policy"];
  v8 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 inADarkWake]);
  v9 = [NSPredicate predicateWithFormat:@"inADarkWake == %@", v8];
  [(_DASPolicyResponseRationale *)v7 addRationaleWithCondition:v9];

  if (([v4 darkWakeEligible] & 1) != 0 && objc_msgSend(v4, "beforeDaysFirstActivity"))
  {
    v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 beforeDaysFirstActivity]);
    [NSPredicate predicateWithFormat:@"appRefresh == %@", v10];
  }

  else
  {
    v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 darkWakeEligible]);
    [NSPredicate predicateWithFormat:@"darkWakeEligible == %@", v10];
  }
  v11 = ;
  [(_DASPolicyResponseRationale *)v7 addRationaleWithCondition:v11];

  if (([v6 canRunInCurrentWakeState:v4] & 1) == 0)
  {
    v14 = [v6 wakeStateDescription];
    if (v14)
    {
      v15 = [NSPredicate predicateWithFormat:@"wakeState == (%@)", v14];
      [(_DASPolicyResponseRationale *)v7 addRationaleWithCondition:v15];
    }

    goto LABEL_12;
  }

  if ([v4 darkWakeEligible])
  {
    if (([v4 beforeDaysFirstActivity] & 1) == 0)
    {
      v12 = [v4 name];
      v13 = [v6 hasFinishedRunningSinceLastWake:v12];

      if (v13)
      {
        v14 = [NSPredicate predicateWithFormat:@"runSinceLastWake == YES"];
        [(_DASPolicyResponseRationale *)v7 addRationaleWithCondition:v14];
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