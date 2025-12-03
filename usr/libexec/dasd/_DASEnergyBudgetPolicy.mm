@interface _DASEnergyBudgetPolicy
+ (BOOL)budgetIsPositive:(id)positive;
+ (BOOL)isBudgetAvailable:(id)available;
+ (id)policyInstance;
- (BOOL)appliesToActivity:(id)activity;
- (BOOL)shouldIgnoreBudgetForActivity:(id)activity withState:(id)state;
- (BOOL)shouldIgnoreTrigger:(id)trigger withState:(id)state;
- (_DASEnergyBudgetPolicy)init;
- (id)initializeTriggers;
- (id)responseForActivity:(id)activity withState:(id)state;
- (void)updateSystemConstraintsWithContext:(id)context;
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

    initializeTriggers = [(_DASEnergyBudgetPolicy *)v3 initializeTriggers];
    triggers = v3->_triggers;
    v3->_triggers = initializeTriggers;

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

+ (BOOL)isBudgetAvailable:(id)available
{
  availableCopy = available;
  v4 = +[_CDContextQueries keyPathForPluginStatus];
  v5 = [availableCopy objectForKeyedSubscript:v4];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    v7 = 1;
  }

  else
  {
    v7 = [_DASEnergyBudgetPolicy budgetIsPositive:availableCopy];
  }

  return v7;
}

+ (BOOL)budgetIsPositive:(id)positive
{
  positiveCopy = positive;
  v4 = +[_CDContextQueries keyPathForEnergyBudgetRemainingStatus];
  v5 = [positiveCopy objectForKeyedSubscript:v4];

  if (v5)
  {
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (void)updateSystemConstraintsWithContext:(id)context
{
  contextCopy = context;
  v4 = [objc_opt_class() isBudgetAvailable:contextCopy];

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

- (BOOL)shouldIgnoreTrigger:(id)trigger withState:(id)state
{
  triggerCopy = trigger;
  stateCopy = state;
  if (([triggerCopy isEqualToString:@"com.apple.duetactivityscheduler.energybudgetpolicy.status"] & 1) == 0 && !objc_msgSend(triggerCopy, "isEqualToString:", @"com.apple.duetactivityscheduler.pluggedinpolicy.ispluggedin"))
  {
    goto LABEL_6;
  }

  [(_DASEnergyBudgetPolicy *)self updateSystemConstraintsWithContext:stateCopy];
  v8 = [_DASEnergyBudgetPolicy budgetIsPositive:stateCopy];
  v9 = +[_DASPLLogger sharedInstance];
  [v9 reportNewStatus:v8 forTrigger:off_10020ACC0];

  v10 = +[_CDContextQueries keyPathForPluginStatus];
  v11 = [stateCopy objectForKeyedSubscript:v10];
  bOOLValue = [v11 BOOLValue];

  if (![triggerCopy isEqualToString:@"com.apple.duetactivityscheduler.energybudgetpolicy.status"] || !v8 || bOOLValue)
  {
    v13 = [triggerCopy isEqualToString:@"com.apple.duetactivityscheduler.pluggedinpolicy.ispluggedin"] ^ 1 | v8 | bOOLValue ^ 1;
  }

  else
  {
LABEL_6:
    v13 = 0;
  }

  return v13;
}

- (BOOL)appliesToActivity:(id)activity
{
  activityCopy = activity;
  if (![activityCopy budgeted] || (objc_msgSend(activityCopy, "requiresPlugin") & 1) != 0)
  {
    goto LABEL_3;
  }

  if (![activityCopy requestsImmediateRuntime])
  {
    LOBYTE(v4) = 1;
    goto LABEL_4;
  }

  if ([_DASPhotosPolicy isPhotosSyncActivity:activityCopy])
  {
LABEL_3:
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = ![_DASPhotosPolicy isAppLibraryActivity:activityCopy];
  }

LABEL_4:

  return v4;
}

- (BOOL)shouldIgnoreBudgetForActivity:(id)activity withState:(id)state
{
  stateCopy = state;
  v9 = 0;
  if ([_DASPhotosPolicy isiCPLActivity:activity])
  {
    v6 = +[_DASPhotosPolicy keyPathForPhotosBudgetOverride];
    v7 = [stateCopy objectForKeyedSubscript:v6];
    unsignedIntegerValue = [v7 unsignedIntegerValue];

    if ((unsignedIntegerValue & 2) != 0)
    {
      v9 = 1;
    }
  }

  return v9;
}

- (id)responseForActivity:(id)activity withState:(id)state
{
  activityCopy = activity;
  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_100054BF4;
  v27 = &unk_1001B56E0;
  selfCopy = self;
  stateCopy = state;
  v29 = stateCopy;
  if (qword_10020B1F0 != -1)
  {
    dispatch_once(&qword_10020B1F0, &v24);
  }

  v8 = [_DASPolicyResponseRationale alloc];
  selfCopy = [(_DASPolicyResponseRationale *)v8 initWithPolicyName:self->_policyName, v24, v25, v26, v27, selfCopy];
  if ([_DASEnergyBudgetPolicy budgetIsPositive:stateCopy])
  {
    goto LABEL_6;
  }

  [(_DASPolicyResponseRationale *)selfCopy addRationaleForCondition:@"energyBudget" withRequiredValue:1.0 withCurrentValue:0.0];
  if ([(_DASEnergyBudgetPolicy *)self shouldIgnoreBudgetForActivity:activityCopy withState:stateCopy])
  {
    v10 = [NSPredicate predicateWithFormat:@"shouldOverrideBudget == YES"];
    [(_DASPolicyResponseRationale *)selfCopy addRationaleWithCondition:v10];

LABEL_6:
    v11 = 0;
    v12 = 1;
    goto LABEL_8;
  }

  v12 = 0;
  v11 = 33;
LABEL_8:
  v13 = +[_CDContextQueries keyPathForPluginStatus];
  v14 = [stateCopy objectForKeyedSubscript:v13];
  bOOLValue = [v14 BOOLValue];

  if (bOOLValue)
  {
    [(_DASPolicyResponseRationale *)selfCopy addRationaleForCondition:@"pluggedInStatus" withRequiredValue:1.0 withCurrentValue:1.0];
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
  relatedApplications = [activityCopy relatedApplications];
  if ([(_DASComplicationManager *)complicationManager isAnyActiveComplication:relatedApplications])
  {
    startAfter = [activityCopy startAfter];
    [v16 timeIntervalSinceDate:startAfter];
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
  v22 = [_DASPolicyResponse policyResponseWithDecision:v11 validityDuration:selfCopy rationale:0x384uLL];

  return v22;
}

@end