@interface _DASWidgetRefreshBudgetPolicy
+ (id)policyInstance;
- (BOOL)appliesToActivity:(id)activity;
- (BOOL)shouldIgnoreTrigger:(id)trigger withState:(id)state;
- (_DASWidgetRefreshBudgetPolicy)init;
- (id)initializeTriggers;
- (id)responseForActivity:(id)activity withState:(id)state;
@end

@implementation _DASWidgetRefreshBudgetPolicy

- (_DASWidgetRefreshBudgetPolicy)init
{
  v16.receiver = self;
  v16.super_class = _DASWidgetRefreshBudgetPolicy;
  v2 = [(_DASWidgetRefreshBudgetPolicy *)&v16 init];
  if (v2)
  {
    v3 = +[_DASBudgetManager sharedInstance];
    budgetManager = v2->_budgetManager;
    v2->_budgetManager = v3;

    v5 = [_CDContextualKeyPath keyPathWithKey:kDASWidgetOverrideKeyPath];
    widgetOverrideKeypath = v2->_widgetOverrideKeypath;
    v2->_widgetOverrideKeypath = v5;

    initializeTriggers = [(_DASWidgetRefreshBudgetPolicy *)v2 initializeTriggers];
    triggers = v2->_triggers;
    v2->_triggers = initializeTriggers;

    policyName = v2->_policyName;
    v2->_policyName = @"Widget Refresh Policy";

    v10 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.dasd.widgetRefreshBudgets"];
    [v10 doubleForKey:@"usageDelay"];
    if (v11 > 1.0)
    {
      qword_10020ADA0 = *&v11;
    }

    [v10 doubleForKey:@"infrequentCadence"];
    if (v12 > 1.0)
    {
      qword_10020ADA8 = *&v12;
    }

    v13 = [_DASDaemonLogger logForCategory:@"widgetRefreshPolicy"];
    log = v2->_log;
    v2->_log = v13;
  }

  return v2;
}

- (BOOL)appliesToActivity:(id)activity
{
  widgetBudgetID = [activity widgetBudgetID];

  return widgetBudgetID != 0;
}

+ (id)policyInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011B460;
  block[3] = &unk_1001B54A0;
  block[4] = self;
  if (qword_10020B9B0 != -1)
  {
    dispatch_once(&qword_10020B9B0, block);
  }

  v2 = qword_10020B9B8;

  return v2;
}

- (id)initializeTriggers
{
  v2 = [_CDContextualPredicate predicateForChangeAtKeyPath:self->_widgetOverrideKeypath];
  v6[0] = @"identifier";
  v6[1] = @"predicate";
  v7[0] = @"com.apple.duetactivityscheduler.widget.overridelist";
  v7[1] = v2;
  v6[2] = @"deviceSet";
  v6[3] = @"mustWake";
  v7[2] = &off_1001CAA38;
  v7[3] = &__kCFBooleanTrue;
  v3 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:4];
  v8 = v3;
  v4 = [NSArray arrayWithObjects:&v8 count:1];

  return v4;
}

- (id)responseForActivity:(id)activity withState:(id)state
{
  activityCopy = activity;
  stateCopy = state;
  v9 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:@"Widget Refresh Policy"];
  v10 = +[_CDContextQueries keyPathForInUseStatus];
  v11 = [stateCopy objectForKeyedSubscript:v10];
  unsignedLongLongValue = [v11 unsignedLongLongValue];

  if ((unsignedLongLongValue & 0xD) == 0)
  {
    v13 = +[_CDContextQueries keyPathForLastUseDate];
    v14 = [stateCopy objectForKeyedSubscript:v13];

    v15 = +[NSDate date];
    [v15 timeIntervalSinceDate:v14];
    v17 = v16;
    if (v16 > *&qword_10020ADA0)
    {
      startAfter = [activityCopy startAfter];
      [v15 timeIntervalSinceDate:startAfter];
      v20 = v19;
      v21 = *&qword_10020ADA8;

      if (v20 < v21)
      {
        v22 = [NSPredicate predicateWithFormat:@"timeSinceRecentUsage=%d", (v17 / 60)];
        [(_DASPolicyResponseRationale *)v9 addRationaleWithCondition:v22];

        v23 = [_DASPolicyResponse policyResponseWithDecision:33 validityDuration:v9 rationale:0x384uLL];

        goto LABEL_17;
      }
    }
  }

  widgetRefreshBudgetManager = [(_DASBudgetManager *)self->_budgetManager widgetRefreshBudgetManager];
  widgetBudgetID = [activityCopy widgetBudgetID];
  [widgetRefreshBudgetManager balanceForWidgetBudgetID:widgetBudgetID];
  v27 = v26;

  if (v27 == -INFINITY)
  {
    0x80000000 = [NSPredicate predicateWithFormat:@"IndividualBalance=%d", 0x80000000];
    [(_DASPolicyResponseRationale *)v9 addRationaleWithCondition:0x80000000];

    v23 = [_DASPolicyResponse policyResponseWithDecision:33 validityDuration:v9 rationale:0x384uLL];
    goto LABEL_17;
  }

  LODWORD(v4) = vcvtmd_s64_f64(v27);
  v29 = [stateCopy objectForKeyedSubscript:self->_widgetOverrideKeypath];
  widgetBudgetID2 = [activityCopy widgetBudgetID];
  v31 = [v29 containsObject:widgetBudgetID2];

  if (v31)
  {
    v32 = [NSPredicate predicateWithFormat:@"onOverrideList=%d", 1];
    [(_DASPolicyResponseRationale *)v9 addRationaleWithCondition:v32];
  }

  if (v4 < 1)
  {
    v33 = +[_CDContextQueries keyPathForPluginStatus];
    v34 = [stateCopy objectForKeyedSubscript:v33];
    bOOLValue = [v34 BOOLValue];

    v36 = [NSPredicate predicateWithFormat:@"IndividualBalance=%d", v4];
    [(_DASPolicyResponseRationale *)v9 addRationaleWithCondition:v36];

    v37 = 33;
    if (!bOOLValue || v4)
    {
      goto LABEL_16;
    }

    [NSPredicate predicateWithFormat:@"isPluggedIn=%d", 1];
  }

  else
  {
    [NSPredicate predicateWithFormat:@"IndividualBalance=%d", v4];
  }
  v38 = ;
  [(_DASPolicyResponseRationale *)v9 addRationaleWithCondition:v38];

  v37 = 0;
LABEL_16:
  v23 = [_DASPolicyResponse policyResponseWithDecision:v37 validityDuration:v9 rationale:0x384uLL];

LABEL_17:

  return v23;
}

- (BOOL)shouldIgnoreTrigger:(id)trigger withState:(id)state
{
  v5 = [trigger isEqualToString:{@"com.apple.duetactivityscheduler.widget.overridelist", state}];
  if (v5)
  {
    [(_DASBudgetManager *)self->_budgetManager reinstantiateConfiguredBudgets];
  }

  return v5;
}

@end