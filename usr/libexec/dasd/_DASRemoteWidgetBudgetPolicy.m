@interface _DASRemoteWidgetBudgetPolicy
+ (BOOL)budgetIsPositive:(id)a3;
+ (BOOL)isBudgetAvailable:(id)a3;
+ (id)policyInstance;
- (BOOL)appliesToActivity:(id)a3;
- (BOOL)shouldIgnoreTrigger:(id)a3 withState:(id)a4;
- (_DASRemoteWidgetBudgetPolicy)init;
- (id)initializeTriggers;
- (id)responseForActivity:(id)a3 withState:(id)a4;
- (void)loadUnavailable;
- (void)logActualUnavailableDurationWithState:(id)a3;
- (void)logExhaustedDuration:(double)a3 withPluginConsideration:(BOOL)a4;
- (void)logUnavailableDurationWithState:(id)a3;
- (void)registerDailyTimer;
- (void)saveActualUnavailableDate:(id)a3;
- (void)saveUnavailableDate:(id)a3;
@end

@implementation _DASRemoteWidgetBudgetPolicy

- (id)initializeTriggers
{
  v2 = +[_DASBudgetManager sharedInstance];
  v3 = [v2 budgetKeyPathForBudgetName:@"com.apple.dasd.remoteWidget"];
  v4 = [_CDContextualPredicate predicateForChangeAtKeyPath:v3];

  v11[0] = @"identifier";
  v11[1] = @"predicate";
  v12[0] = @"com.apple.das.remoteWidgetBudget";
  v12[1] = v4;
  v11[2] = @"deviceSet";
  v11[3] = @"mustWake";
  v12[2] = &off_1001CA300;
  v12[3] = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:4];
  v13[0] = v5;
  v9 = @"identifier";
  v10 = @"com.apple.duetactivityscheduler.pluggedinpolicy.ispluggedin";
  v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v13[1] = v6;
  v7 = [NSArray arrayWithObjects:v13 count:2];

  return v7;
}

- (_DASRemoteWidgetBudgetPolicy)init
{
  v10.receiver = self;
  v10.super_class = _DASRemoteWidgetBudgetPolicy;
  v2 = [(_DASRemoteWidgetBudgetPolicy *)&v10 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.duetactivityscheduler", "remotewidgetbudget");
    log = v2->_log;
    v2->_log = v3;

    policyName = v2->_policyName;
    v2->_policyName = @"Remote Widget Budget Policy";

    policyDescription = v2->_policyDescription;
    v2->_policyDescription = @"Blocks remote widget activities based on remaining budget.";

    v7 = [(_DASRemoteWidgetBudgetPolicy *)v2 initializeTriggers];
    triggers = v2->_triggers;
    v2->_triggers = v7;

    [(_DASRemoteWidgetBudgetPolicy *)v2 loadUnavailable];
    [(_DASRemoteWidgetBudgetPolicy *)v2 registerDailyTimer];
  }

  return v2;
}

+ (id)policyInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AAF20;
  block[3] = &unk_1001B54A0;
  block[4] = a1;
  if (qword_10020B6E0 != -1)
  {
    dispatch_once(&qword_10020B6E0, block);
  }

  v2 = qword_10020B6E8;

  return v2;
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
    v7 = [_DASRemoteWidgetBudgetPolicy budgetIsPositive:v3];
  }

  return v7;
}

+ (BOOL)budgetIsPositive:(id)a3
{
  v3 = a3;
  v4 = +[_DASBudgetManager sharedInstance];
  v5 = [v4 budgetKeyPathForBudgetName:@"com.apple.dasd.remoteWidget"];
  v6 = [v3 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)registerDailyTimer
{
  v3 = +[NSDate now];
  v4 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.duetactivityscheduler"];
  v5 = [v4 objectForKey:@"remoteWidgetLoggingInterval"];
  [v5 doubleValue];
  v7 = v6;

  [v3 timeIntervalSinceReferenceDate];
  v9 = v8;
  v10 = dispatch_get_global_queue(-32768, 0);
  v11 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v10);

  if (v9 >= v7)
  {
    v15 = dispatch_walltime(0, 86400000000000);
    dispatch_source_set_timer(v11, v15, 0x4E94914F0000uLL, 0x3B9ACA00uLL);
    v13 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.duetactivityscheduler"];
    v14 = [NSNumber numberWithDouble:v9 + 86400.0];
    [v13 setObject:v14 forKey:@"remoteWidgetLoggingInterval"];
    goto LABEL_5;
  }

  v12 = dispatch_walltime(0, ((v7 - v9) * 1000000000.0));
  dispatch_source_set_timer(v11, v12, 0x4E94914F0000uLL, 0x3B9ACA00uLL);
  v13 = [_DASDaemonLogger logForCategory:@"remoteWidgetBudget"];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [NSDate dateWithTimeIntervalSinceReferenceDate:v7];
    *buf = 138412290;
    v18 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Analytics will fire at %@", buf, 0xCu);
LABEL_5:
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000AB328;
  handler[3] = &unk_1001B5668;
  handler[4] = self;
  dispatch_source_set_event_handler(v11, handler);
  dispatch_activate(v11);
}

- (void)logExhaustedDuration:(double)a3 withPluginConsideration:(BOOL)a4
{
  v4 = a4;
  v6 = [_DASDaemonLogger logForCategory:@"remoteWidgetBudget"];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v7)
    {
      sub_100127808(a3);
    }

    v8 = v11;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v9 = sub_1000AB558;
  }

  else
  {
    if (v7)
    {
      sub_10012776C(a3);
    }

    v8 = v10;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v9 = sub_1000AB618;
  }

  *(v8 + 2) = v9;
  *(v8 + 3) = &unk_1001B7BB0;
  v8[4] = a3;
  AnalyticsSendEventLazy();
}

- (void)logUnavailableDurationWithState:(id)a3
{
  v4 = a3;
  v5 = [_DASRemoteWidgetBudgetPolicy budgetIsPositive:v4];
  p_unavailableDate = &self->_unavailableDate;
  unavailableDate = self->_unavailableDate;
  if (v5)
  {
    if (unavailableDate)
    {
      [(NSDate *)unavailableDate timeIntervalSinceNow];
      if (v8 >= -86400.0)
      {
        [(_DASRemoteWidgetBudgetPolicy *)self logExhaustedDuration:0 withPluginConsideration:-v8];
      }

      else
      {
        v9 = [_DASDaemonLogger logForCategory:@"remoteWidgetBudget"];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_1001278A4(&self->_unavailableDate);
        }
      }

      v12 = *p_unavailableDate;
      if (*p_unavailableDate || self->_unavailableToday)
      {
        self->_unavailableDate = 0;

        self->_unavailableToday = 0;
        goto LABEL_13;
      }
    }
  }

  else if (!unavailableDate)
  {
    v10 = +[NSDate now];
    v11 = self->_unavailableDate;
    self->_unavailableDate = v10;

LABEL_13:
    [(_DASRemoteWidgetBudgetPolicy *)self saveUnavailableDate:self->_unavailableDate];
  }

  [(_DASRemoteWidgetBudgetPolicy *)self logActualUnavailableDurationWithState:v4];
}

- (void)logActualUnavailableDurationWithState:(id)a3
{
  v4 = [_DASRemoteWidgetBudgetPolicy isBudgetAvailable:a3];
  p_actualUnavailableDate = &self->_actualUnavailableDate;
  actualUnavailableDate = self->_actualUnavailableDate;
  if (v4)
  {
    if (actualUnavailableDate)
    {
      [(NSDate *)actualUnavailableDate timeIntervalSinceNow];
      if (v7 >= -86400.0)
      {
        [(_DASRemoteWidgetBudgetPolicy *)self logExhaustedDuration:1 withPluginConsideration:-v7];
LABEL_14:
        v12 = *p_actualUnavailableDate;
        if (*p_actualUnavailableDate)
        {
          self->_actualUnavailableDate = 0;

          [(_DASRemoteWidgetBudgetPolicy *)self saveActualUnavailableDate:self->_actualUnavailableDate];
        }

        return;
      }

      v8 = [_DASDaemonLogger logForCategory:@"remoteWidgetBudget"];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10012791C(&self->_actualUnavailableDate);
      }
    }

    else
    {
      v8 = [_DASDaemonLogger logForCategory:@"remoteWidgetBudget"];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100127994();
      }
    }

    goto LABEL_14;
  }

  if (!actualUnavailableDate)
  {
    v9 = +[NSDate now];
    v10 = self->_actualUnavailableDate;
    self->_actualUnavailableDate = v9;

    v11 = self->_actualUnavailableDate;

    [(_DASRemoteWidgetBudgetPolicy *)self saveActualUnavailableDate:v11];
  }
}

- (void)saveUnavailableDate:(id)a3
{
  v4 = a3;
  v12 = v4;
  if (!v4)
  {
    v5 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.duetactivityscheduler"];
    [v5 removeObjectForKey:@"remoteWidgetUnavailableInterval"];

    v6 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.duetactivityscheduler"];
    [v6 removeObjectForKey:@"remoteWidgetUnavailableToday"];

    v4 = 0;
  }

  [v4 timeIntervalSinceReferenceDate];
  v8 = v7;
  v9 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.duetactivityscheduler"];
  v10 = [NSNumber numberWithDouble:v8];
  [v9 setObject:v10 forKey:@"remoteWidgetUnavailableInterval"];

  v11 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.duetactivityscheduler"];
  [v11 setBool:self->_unavailableToday forKey:@"remoteWidgetUnavailableToday"];
}

- (void)saveActualUnavailableDate:(id)a3
{
  v3 = a3;
  v9 = v3;
  if (!v3)
  {
    v4 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.duetactivityscheduler"];
    [v4 removeObjectForKey:@"remoteWidgetActualUnavailableInterval"];

    v3 = 0;
  }

  [v3 timeIntervalSinceReferenceDate];
  v6 = v5;
  v7 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.duetactivityscheduler"];
  v8 = [NSNumber numberWithDouble:v6];
  [v7 setObject:v8 forKey:@"remoteWidgetActualUnavailableInterval"];
}

- (void)loadUnavailable
{
  actualUnavailableDate = self->_actualUnavailableDate;
  self->_actualUnavailableDate = 0;

  unavailableDate = self->_unavailableDate;
  self->_unavailableDate = 0;

  v5 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.duetactivityscheduler"];
  self->_unavailableToday = [v5 BOOLForKey:@"remoteWidgetUnavailableToday"];

  v6 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.duetactivityscheduler"];
  v7 = [v6 objectForKey:@"remoteWidgetUnavailableInterval"];

  [v7 doubleValue];
  if (v8 == 0.0)
  {
    v15 = v7;
  }

  else
  {
    v9 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    v10 = self->_unavailableDate;
    self->_unavailableDate = v9;

    v11 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.duetactivityscheduler"];
    v16 = [v11 objectForKey:@"remoteWidgetActualUnavailableInterval"];

    [v16 doubleValue];
    if (v12 != 0.0)
    {
      v13 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      v14 = self->_actualUnavailableDate;
      self->_actualUnavailableDate = v13;
    }

    v15 = v16;
  }
}

- (BOOL)shouldIgnoreTrigger:(id)a3 withState:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v6 isEqualToString:@"com.apple.das.remoteWidgetBudget"] & 1) == 0 && !objc_msgSend(v6, "isEqualToString:", @"com.apple.duetactivityscheduler.pluggedinpolicy.ispluggedin"))
  {
    goto LABEL_5;
  }

  v8 = [_DASRemoteWidgetBudgetPolicy budgetIsPositive:v7];
  v9 = +[_CDContextQueries keyPathForPluginStatus];
  v10 = [v7 objectForKeyedSubscript:v9];
  v11 = [v10 BOOLValue];

  if (![v6 isEqualToString:@"com.apple.das.remoteWidgetBudget"])
  {
    [(_DASRemoteWidgetBudgetPolicy *)self logActualUnavailableDurationWithState:v7];
    if (!(v8 & 1 | ((v11 & 1) == 0)))
    {
      goto LABEL_5;
    }

LABEL_7:
    v12 = 1;
    goto LABEL_8;
  }

  [(_DASRemoteWidgetBudgetPolicy *)self logUnavailableDurationWithState:v7];
  if (v11 & 1 | ((v8 & 1) == 0))
  {
    goto LABEL_7;
  }

LABEL_5:
  v12 = 0;
LABEL_8:

  return v12;
}

- (BOOL)appliesToActivity:(id)a3
{
  v3 = a3;
  v4 = [v3 schedulingPriority];
  if (v4 <= _DASSchedulingPriorityUtility && [v3 targetDevice] == 3)
  {
    v5 = [v3 widgetID];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)responseForActivity:(id)a3 withState:(id)a4
{
  v5 = a4;
  v6 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:self->_policyName];
  v7 = [_DASRemoteWidgetBudgetPolicy isBudgetAvailable:v5];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    [(_DASPolicyResponseRationale *)v6 addRationaleForCondition:@"remoteWidgetBudget" withRequiredValue:1.0 withCurrentValue:0.0];
    v8 = 100;
  }

  v9 = [_DASPolicyResponse policyResponseWithDecision:v8 validityDuration:v6 rationale:0x384uLL];

  return v9;
}

@end