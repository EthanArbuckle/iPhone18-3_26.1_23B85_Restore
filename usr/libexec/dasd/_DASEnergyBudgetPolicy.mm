@interface _DASEnergyBudgetPolicy
+ (BOOL)budgetIsPositive:(id)a3;
+ (BOOL)isBudgetAvailable:(id)a3;
+ (id)policyInstance;
- (BOOL)appliesToActivity:(id)a3;
- (BOOL)shouldIgnoreBudgetForActivity:(id)a3 withState:(id)a4;
- (BOOL)shouldIgnoreTrigger:(id)a3 withState:(id)a4;
- (_DASEnergyBudgetPolicy)init;
- (id)initializeTriggers;
- (id)responseForActivity:(id)a3 withState:(id)a4;
- (void)updateSystemConstraintsWithContext:(id)a3;
@end

@implementation _DASEnergyBudgetPolicy

- (id)initializeTriggers
{
  v2 = +[_CDContextQueries keyPathForEnergyBudgetRemainingStatus];
  v3 = [_CDContextualPredicate predicateForChangeAtKeyPath:v2];

  v10[0] = @"identifier";
  v10[1] = @"predicate";
  v11[0] = @"com.apple.duetactivityscheduler.energybudgetpolicy.status";
  v11[1] = v3;
  v10[2] = @"deviceSet";
  v10[3] = @"mustWake";
  v11[2] = &off_1001C9988;
  v11[3] = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:4];
  v12[0] = v4;
  v8 = @"identifier";
  v9 = @"com.apple.duetactivityscheduler.pluggedinpolicy.ispluggedin";
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v12[1] = v5;
  v6 = [NSArray arrayWithObjects:v12 count:2];

  return v6;
}

- (_DASEnergyBudgetPolicy)init
{
  v10.receiver = self;
  v10.super_class = _DASEnergyBudgetPolicy;
  v2 = [(_DASEnergyBudgetPolicy *)&v10 init];
  v3 = v2;
  if (v2)
  {
    policyName = v2->_policyName;
    v2->_policyName = @"Energy Budget Policy";

    v5 = [(_DASEnergyBudgetPolicy *)v3 initializeTriggers];
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
  if (qword_10020B1E0 != -1)
  {
    sub_10011FA10();
  }

  v3 = qword_10020B1E8;

  return v3;
}

+ (BOOL)isBudgetAvailable:(id)a3
{
  v3 = a3;
  v4 = +[_CDContextQueries keyPathForPluginStatus];
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = [_DASEnergyBudgetPolicy budgetIsPositive:v3];
  }

  return v7;
}

+ (BOOL)budgetIsPositive:(id)a3
{
  v3 = a3;
  v4 = +[_CDContextQueries keyPathForEnergyBudgetRemainingStatus];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [v5 BOOLValue];
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
    [v5 removeConstraint:4 forSchedulingPriority:_DASSchedulingPriorityMaintenance];
  }

  else
  {
    [v5 addConstraint:4 forSchedulingPriority:_DASSchedulingPriorityMaintenance];
  }
}

- (BOOL)shouldIgnoreTrigger:(id)a3 withState:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v6 isEqualToString:@"com.apple.duetactivityscheduler.energybudgetpolicy.status"] & 1) == 0 && !objc_msgSend(v6, "isEqualToString:", @"com.apple.duetactivityscheduler.pluggedinpolicy.ispluggedin"))
  {
    goto LABEL_6;
  }

  [(_DASEnergyBudgetPolicy *)self updateSystemConstraintsWithContext:v7];
  v8 = [_DASEnergyBudgetPolicy budgetIsPositive:v7];
  v9 = +[_DASPLLogger sharedInstance];
  [v9 reportNewStatus:v8 forTrigger:off_10020ACC0];

  v10 = +[_CDContextQueries keyPathForPluginStatus];
  v11 = [v7 objectForKeyedSubscript:v10];
  v12 = [v11 BOOLValue];

  if (![v6 isEqualToString:@"com.apple.duetactivityscheduler.energybudgetpolicy.status"] || !v8 || v12)
  {
    v13 = [v6 isEqualToString:@"com.apple.duetactivityscheduler.pluggedinpolicy.ispluggedin"] ^ 1 | v8 | v12 ^ 1;
  }

  else
  {
LABEL_6:
    v13 = 0;
  }

  return v13;
}

- (BOOL)appliesToActivity:(id)a3
{
  v3 = a3;
  if (![v3 budgeted] || (objc_msgSend(v3, "requiresPlugin") & 1) != 0)
  {
    goto LABEL_3;
  }

  if (![v3 requestsImmediateRuntime])
  {
    LOBYTE(v4) = 1;
    goto LABEL_4;
  }

  if ([_DASPhotosPolicy isPhotosSyncActivity:v3])
  {
LABEL_3:
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = ![_DASPhotosPolicy isAppLibraryActivity:v3];
  }

LABEL_4:

  return v4;
}

- (BOOL)shouldIgnoreBudgetForActivity:(id)a3 withState:(id)a4
{
  v5 = a4;
  v9 = 0;
  if ([_DASPhotosPolicy isiCPLActivity:a3])
  {
    v6 = +[_DASPhotosPolicy keyPathForPhotosBudgetOverride];
    v7 = [v5 objectForKeyedSubscript:v6];
    v8 = [v7 unsignedIntegerValue];

    if ((v8 & 2) != 0)
    {
      v9 = 1;
    }
  }

  return v9;
}

- (id)responseForActivity:(id)a3 withState:(id)a4
{
  v6 = a3;
  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_100054BF4;
  v27 = &unk_1001B56E0;
  v28 = self;
  v7 = a4;
  v29 = v7;
  if (qword_10020B1F0 != -1)
  {
    dispatch_once(&qword_10020B1F0, &v24);
  }

  v8 = [_DASPolicyResponseRationale alloc];
  v9 = [(_DASPolicyResponseRationale *)v8 initWithPolicyName:self->_policyName, v24, v25, v26, v27, v28];
  if ([_DASEnergyBudgetPolicy budgetIsPositive:v7])
  {
    goto LABEL_6;
  }

  [(_DASPolicyResponseRationale *)v9 addRationaleForCondition:@"energyBudget" withRequiredValue:1.0 withCurrentValue:0.0];
  if ([(_DASEnergyBudgetPolicy *)self shouldIgnoreBudgetForActivity:v6 withState:v7])
  {
    v10 = [NSPredicate predicateWithFormat:@"shouldOverrideBudget == YES"];
    [(_DASPolicyResponseRationale *)v9 addRationaleWithCondition:v10];

LABEL_6:
    v11 = 0;
    v12 = 1;
    goto LABEL_8;
  }

  v12 = 0;
  v11 = 33;
LABEL_8:
  v13 = +[_CDContextQueries keyPathForPluginStatus];
  v14 = [v7 objectForKeyedSubscript:v13];
  v15 = [v14 BOOLValue];

  if (v15)
  {
    [(_DASPolicyResponseRationale *)v9 addRationaleForCondition:@"pluggedInStatus" withRequiredValue:1.0 withCurrentValue:1.0];
LABEL_11:
    v11 = 0;
    goto LABEL_18;
  }

  if (v12)
  {
    goto LABEL_11;
  }

  v16 = +[NSDate date];
  complicationManager = self->_complicationManager;
  v18 = [v6 relatedApplications];
  if ([(_DASComplicationManager *)complicationManager isAnyActiveComplication:v18])
  {
    v19 = [v6 startAfter];
    [v16 timeIntervalSinceDate:v19];
    v21 = v20;

    if (v21 > 1800.0)
    {
      v11 = 0;
    }
  }

  else
  {
  }

LABEL_18:
  v22 = [_DASPolicyResponse policyResponseWithDecision:v11 validityDuration:v9 rationale:0x384uLL];

  return v22;
}

@end