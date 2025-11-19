@interface _DASDataBudgetPolicy
+ (BOOL)budget:(id)a3 isPositive:(id)a4;
+ (BOOL)budgetIsPositive:(id)a3;
+ (BOOL)isBudgetAvailable:(id)a3;
+ (id)policyInstance;
- (BOOL)appliesToActivity:(id)a3;
- (BOOL)budgetAvailableForActivity:(id)a3 withContext:(id)a4 rationale:(id)a5;
- (BOOL)shouldIgnoreBudgetForActivity:(id)a3 withState:(id)a4 rationale:(id)a5;
- (BOOL)shouldIgnoreTrigger:(id)a3 withState:(id)a4;
- (_DASDataBudgetPolicy)init;
- (double)projectedUsageForActivity:(id)a3 withContext:(id)a4;
- (id)initializeTriggers;
- (id)responseForActivity:(id)a3 withState:(id)a4;
- (void)updateSystemConstraintsWithContext:(id)a3;
@end

@implementation _DASDataBudgetPolicy

- (id)initializeTriggers
{
  v2 = +[_CDContextQueries keyPathForNetworkingBudgetRemainingStatus];
  v3 = [_CDContextualPredicate predicateForChangeAtKeyPath:v2];

  v4 = +[_DASBudgetManager sharedInstance];
  v5 = [v4 budgetKeyPathForBudgetName:@"com.apple.dasd.baCellular"];
  v6 = [_CDContextualPredicate predicateForChangeAtKeyPath:v5];

  v13[0] = @"identifier";
  v13[1] = @"predicate";
  v14[0] = @"com.apple.duetactivityscheduler.databudgetpolicy.status";
  v14[1] = v3;
  v13[2] = @"deviceSet";
  v13[3] = @"mustWake";
  v14[2] = &off_1001C9940;
  v14[3] = &__kCFBooleanTrue;
  v7 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:4];
  v15[0] = v7;
  v11[0] = @"identifier";
  v11[1] = @"predicate";
  v12[0] = @"com.apple.das.databaudget.ba.status";
  v12[1] = v6;
  v11[2] = @"deviceSet";
  v11[3] = @"mustWake";
  v12[2] = &off_1001C9940;
  v12[3] = &__kCFBooleanTrue;
  v8 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:4];
  v15[1] = v8;
  v9 = [NSArray arrayWithObjects:v15 count:2];

  return v9;
}

- (_DASDataBudgetPolicy)init
{
  v10.receiver = self;
  v10.super_class = _DASDataBudgetPolicy;
  v2 = [(_DASDataBudgetPolicy *)&v10 init];
  v3 = v2;
  if (v2)
  {
    policyName = v2->_policyName;
    v2->_policyName = @"Data Budget Policy";

    v5 = [(_DASDataBudgetPolicy *)v3 initializeTriggers];
    triggers = v3->_triggers;
    v3->_triggers = v5;

    v7 = +[_DASComplicationManager sharedInstance];
    complicationManager = v3->_complicationManager;
    v3->_complicationManager = v7;
  }

  return v3;
}

+ (id)policyInstance
{
  if (qword_10020B118 != -1)
  {
    sub_10011F240();
  }

  v3 = qword_10020B120;

  return v3;
}

+ (BOOL)isBudgetAvailable:(id)a3
{
  v3 = a3;
  if ([_CDNetworkContext wifiQuality:v3]<= 0)
  {
    v5 = +[_CDContextQueries keyPathForNetworkingBudgetRemainingStatus];
    v4 = [_DASDataBudgetPolicy budget:v5 isPositive:v3];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (BOOL)budgetIsPositive:(id)a3
{
  v4 = a3;
  v5 = +[_CDContextQueries keyPathForNetworkingBudgetRemainingStatus];
  LOBYTE(a1) = [a1 budget:v5 isPositive:v4];

  return a1;
}

+ (BOOL)budget:(id)a3 isPositive:(id)a4
{
  v4 = [a4 objectForKeyedSubscript:a3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 BOOLValue];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)updateSystemConstraintsWithContext:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() isBudgetAvailable:v3];

  v5 = +[_DASDaemon sharedInstance];
  v6 = v5;
  if (v4)
  {
    [v5 removeConstraint:8 forSchedulingPriority:_DASSchedulingPriorityMaintenance];
  }

  else
  {
    [v5 addConstraint:8 forSchedulingPriority:_DASSchedulingPriorityMaintenance];
  }
}

- (BOOL)shouldIgnoreTrigger:(id)a3 withState:(id)a4
{
  v6 = a4;
  if ([a3 isEqualToString:@"com.apple.duetactivityscheduler.databudgetpolicy.status"])
  {
    [(_DASDataBudgetPolicy *)self updateSystemConstraintsWithContext:v6];
    v7 = [_DASDataBudgetPolicy budgetIsPositive:v6];
    v8 = +[_DASPLLogger sharedInstance];
    [v8 reportNewStatus:v7 forTrigger:off_10020ACC8];

    v9 = !v7;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)appliesToActivity:(id)a3
{
  v3 = a3;
  v4 = [v3 widgetID];
  if (!v4 || (v5 = [v3 schedulingPriority], v5 >= _DASSchedulingPriorityUserInitiated))
  {
    if (![v3 requiresNetwork])
    {
      v6 = 0;
      goto LABEL_8;
    }

    if (([v3 budgeted] & 1) == 0)
    {
      v6 = [v3 dataBudgeted];
      goto LABEL_8;
    }
  }

  v6 = 1;
LABEL_8:

  return v6;
}

- (BOOL)shouldIgnoreBudgetForActivity:(id)a3 withState:(id)a4 rationale:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([_DASPhotosPolicy isiCPLActivity:v7])
  {
    v10 = +[_DASPhotosPolicy keyPathForPhotosBudgetOverride];
    v11 = [v8 objectForKeyedSubscript:v10];
    v12 = [v11 unsignedIntegerValue];

    if (v12)
    {
      v13 = @"shouldOverrideBudget == YES";
LABEL_7:
      v14 = [NSPredicate predicateWithFormat:v13];
      [v9 addRationaleWithCondition:v14];

      goto LABEL_8;
    }
  }

  if ([_CDNetworkContext cellQuality:v8]>= 1)
  {
    if (![v7 deferred])
    {
      v15 = 0;
      goto LABEL_10;
    }

    v13 = @"deferred == YES";
    goto LABEL_7;
  }

LABEL_8:
  v15 = 1;
LABEL_10:

  return v15;
}

- (double)projectedUsageForActivity:(id)a3 withContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[_DASNetworkEvaluationMonitor inexpensivePathAvailable];
  v8 = [_CDNetworkContext cellQuality:v5];

  v9 = &unk_1001588D0;
  if ((v7 & (v8 > 20)) == 0)
  {
    v9 = &unk_1001588D8;
  }

  v10 = *v9;
  v11 = [v6 transferSize];

  return v10 * (v11 << 10);
}

- (BOOL)budgetAvailableForActivity:(id)a3 withContext:(id)a4 rationale:(id)a5
{
  v8 = a3;
  v9 = a5;
  [(_DASDataBudgetPolicy *)self projectedUsageForActivity:v8 withContext:a4];
  v11 = v10;
  v12 = +[_DASBudgetManager sharedInstance];
  [v12 balanceForBudgetWithName:@"com.apple.dasd.systemCellular"];
  v14 = v13;
  [v12 capacityForBudgetWithName:@"com.apple.dasd.systemCellular"];
  v16 = v15;
  v17 = [v8 startDate];

  if (v17)
  {
    v18 = [NSNumber numberWithDouble:v14];
    v19 = [NSPredicate predicateWithFormat:@"remainingBudget == %@", v18];
    [v9 addRationaleWithCondition:v19];

    v20 = v14 > 0.0;
  }

  else
  {
    v21 = [v8 userInfo];
    v22 = [v21 objectForKeyedSubscript:_DASCTSMinDataBudgetPercentRemainingKey];

    [v22 doubleValue];
    if (v22)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0.5;
      if (v11 <= v16 * 0.5)
      {
        v24 = v11 / v16;
      }
    }

    v20 = v14 >= v16 * v24;
    if (v14 < v16 * v24)
    {
      v25 = [NSNumber numberWithDouble:v14];
      v26 = [NSNumber numberWithDouble:v11];
      v27 = [NSNumber numberWithDouble:v24];
      v28 = [NSPredicate predicateWithFormat:@"remainingBudget == %@ AND projectedUsage == %@ and percentage == %@", v25, v26, v27];
      [v9 addRationaleWithCondition:v28];
    }
  }

  return v20;
}

- (id)responseForActivity:(id)a3 withState:(id)a4
{
  v6 = a3;
  v27 = _NSConcreteStackBlock;
  v28 = 3221225472;
  v29 = sub_10004CE08;
  v30 = &unk_1001B56E0;
  v31 = self;
  v7 = a4;
  v32 = v7;
  if (qword_10020B128 != -1)
  {
    dispatch_once(&qword_10020B128, &v27);
  }

  v8 = [v6 clientDataBudgetName];

  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = +[_DASBudgetManager sharedInstance];
  v10 = [v6 clientDataBudgetName];
  v11 = [v9 budgetKeyPathForBudgetName:v10];

  if (!v11)
  {
LABEL_5:
    v11 = +[_CDContextQueries keyPathForNetworkingBudgetRemainingStatus];
  }

  v12 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:self->_policyName];
  if ([(_DASDataBudgetPolicy *)self shouldIgnoreBudgetForActivity:v6 withState:v7 rationale:v12])
  {
    goto LABEL_7;
  }

  if ([_DASDataBudgetPolicy budget:v11 isPositive:v7])
  {
    v14 = +[_DASNetworkQualityPolicy policyInstance];
    if ([v14 privateNetworkCellConnection])
    {

LABEL_7:
      v13 = 0;
      goto LABEL_15;
    }

    v16 = [(_DASDataBudgetPolicy *)self budgetAvailableForActivity:v6 withContext:v7 rationale:v12];

    if (v16)
    {
      v13 = 0;
    }

    else
    {
      v13 = 33;
    }
  }

  else
  {
    v15 = [v11 key];
    [(_DASPolicyResponseRationale *)v12 addRationaleForCondition:v15 withRequiredValue:1.0 withCurrentValue:0.0];

    v13 = 33;
  }

LABEL_15:
  v17 = [_CDNetworkContext wifiQuality:v7];
  if (v17 >= 1)
  {
    [(_DASPolicyResponseRationale *)v12 addRationaleForCondition:@"wifiQuality" withRequiredValue:20.0 withCurrentValue:v17];
    v13 = 0;
  }

  v18 = [_CDNetworkContext wiredQuality:v7];
  if (v18 < 1)
  {
    if (v13)
    {
      v19 = +[NSDate date];
      complicationManager = self->_complicationManager;
      v21 = [v6 relatedApplications];
      if ([(_DASComplicationManager *)complicationManager isAnyActiveComplication:v21])
      {
        v22 = [v6 startAfter];
        [v19 timeIntervalSinceDate:v22];
        v24 = v23;

        if (v24 > 1800.0)
        {
          v13 = 0;
        }
      }

      else
      {
      }
    }
  }

  else
  {
    [(_DASPolicyResponseRationale *)v12 addRationaleForCondition:@"wiredQuality" withRequiredValue:20.0 withCurrentValue:v18];
    v13 = 0;
  }

  v25 = [_DASPolicyResponse policyResponseWithDecision:v13 validityDuration:v12 rationale:0x384uLL];

  return v25;
}

@end