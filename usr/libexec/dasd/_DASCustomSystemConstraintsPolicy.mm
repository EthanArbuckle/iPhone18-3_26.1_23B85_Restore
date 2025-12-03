@interface _DASCustomSystemConstraintsPolicy
+ (id)policyInstance;
- (_DASCustomSystemConstraintsPolicy)init;
- (id)initializeTriggers;
- (id)responseForActivity:(id)activity withState:(id)state;
- (void)armResetTimer;
- (void)cancelResetTimer;
- (void)reevaluateAllActivitiesWithDaemon:(id)daemon;
- (void)updateHeavyDiskUsage:(BOOL)usage;
@end

@implementation _DASCustomSystemConstraintsPolicy

- (id)initializeTriggers
{
  v5 = @"identifier";
  v6 = @"com.apple.duetactivityscheduler.customsystemconstraint";
  v2 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v7 = v2;
  v3 = [NSArray arrayWithObjects:&v7 count:1];

  return v3;
}

- (_DASCustomSystemConstraintsPolicy)init
{
  v14.receiver = self;
  v14.super_class = _DASCustomSystemConstraintsPolicy;
  v2 = [(_DASCustomSystemConstraintsPolicy *)&v14 init];
  v3 = v2;
  if (v2)
  {
    policyName = v2->_policyName;
    v2->_policyName = @"Custom System Constraints Policy";

    v3->_heavyDiskUsage = 0;
    v5 = +[NSMutableDictionary dictionary];
    workloadDates = v3->_workloadDates;
    v3->_workloadDates = v5;

    resetTimer = v3->_resetTimer;
    v3->_gpWorkloadCounts = 0;
    v3->_resetTimer = 0;

    initializeTriggers = [(_DASCustomSystemConstraintsPolicy *)v3 initializeTriggers];
    triggers = v3->_triggers;
    v3->_triggers = initializeTriggers;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.dasd.sysConstraint", v10);
    queue = v3->_queue;
    v3->_queue = v11;
  }

  return v3;
}

+ (id)policyInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FEDB8;
  block[3] = &unk_1001B54A0;
  block[4] = self;
  if (qword_10020B848 != -1)
  {
    dispatch_once(&qword_10020B848, block);
  }

  v2 = qword_10020B850;

  return v2;
}

- (void)reevaluateAllActivitiesWithDaemon:(id)daemon
{
  v5 = [(NSMutableDictionary *)self->_workloadDates objectForKeyedSubscript:kDASSystemContextMCWorkloadRunningState];
  if (v5)
  {

LABEL_4:
    v7 = 0;
    goto LABEL_5;
  }

  v6 = [(NSMutableDictionary *)self->_workloadDates objectForKeyedSubscript:kDASSystemContextGPWorkloadRunningState];

  if (v6)
  {
    goto LABEL_4;
  }

  v13 = [_DASDaemonLogger logForCategory:@"customsysconstraints"];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Reevaluate to unblock activities from system constraint policy!", v14, 2u);
  }

  v7 = 1;
LABEL_5:
  v8 = [(NSMutableDictionary *)self->_workloadDates objectForKeyedSubscript:kDASSystemContextGPWorkloadRunningState];
  if (v8)
  {
  }

  else
  {
    v9 = [(NSMutableDictionary *)self->_workloadDates objectForKeyedSubscript:kDASSystemContextMCWorkloadRunningState];

    if (!v9)
    {
      if (!v7)
      {
        return;
      }

      goto LABEL_11;
    }
  }

  v10 = [_DASDaemonLogger logForCategory:@"customsysconstraints"];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Reevaluate to block activities from system constraint policy!", v14, 2u);
  }

LABEL_11:
  if (daemon)
  {
    daemon = self->_daemon;
    v15 = @"com.apple.duetactivityscheduler.customsystemconstraint";
    v12 = [NSArray arrayWithObjects:&v15 count:1];
    [(_DASDaemon *)daemon handleTriggersBatched:v12];
  }

  else
  {
    v12 = [_DASDaemonLogger logForCategory:@"customsysconstraints"];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10012CB70(v12);
    }
  }
}

- (void)armResetTimer
{
  if (!self->_resetTimer)
  {
    v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
    resetTimer = self->_resetTimer;
    self->_resetTimer = v3;

    v5 = self->_resetTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000FF190;
    handler[3] = &unk_1001B5668;
    handler[4] = self;
    dispatch_source_set_event_handler(v5, handler);
    v6 = self->_resetTimer;
    v7 = dispatch_walltime(0, 300000000000);
    dispatch_source_set_timer(v6, v7, 0x45D964B800uLL, 0xDF8475800uLL);
    dispatch_activate(self->_resetTimer);
    v8 = [_DASDaemonLogger logForCategory:@"customsysconstraints"];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = &off_1001CA540;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Armed timer to fire in %@", buf, 0xCu);
    }
  }
}

- (void)cancelResetTimer
{
  v3 = [_DASDaemonLogger logForCategory:@"customsysconstraints"];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10012CBB4(v3);
  }

  resetTimer = self->_resetTimer;
  if (resetTimer && !dispatch_source_testcancel(resetTimer))
  {
    v5 = [_DASDaemonLogger logForCategory:@"customsysconstraints"];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Canceled timer", v7, 2u);
    }

    dispatch_source_cancel(self->_resetTimer);
    v6 = self->_resetTimer;
    self->_resetTimer = 0;
  }
}

- (void)updateHeavyDiskUsage:(BOOL)usage
{
  usageCopy = usage;
  v5 = [_DASDaemonLogger logForCategory:@"customsysconstraints"];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = usageCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting _heavyDiskUsage = %d", buf, 8u);
  }

  self->_heavyDiskUsage = usageCopy;
  if (usageCopy)
  {
    v6 = dispatch_time(0, 15000000000);
    v7 = dispatch_get_global_queue(9, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000FF6E4;
    block[3] = &unk_1001B5668;
    block[4] = self;
    dispatch_after(v6, v7, block);
  }
}

- (id)responseForActivity:(id)activity withState:(id)state
{
  activityCopy = activity;
  stateCopy = state;
  v8 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:@"Custom System Constraints Policy"];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_heavyDiskUsage)
  {
    [(_DASPolicyResponseRationale *)v8 addRationaleForCondition:@"heavyDiskUsage" withRequiredValue:0.0 withCurrentValue:1.0];
    v10 = 100;
  }

  else
  {
    v10 = 0;
  }

  if (![_DASPhotosPolicy isiCPLActivity:activityCopy])
  {
    v11 = [(NSMutableDictionary *)selfCopy->_workloadDates objectForKeyedSubscript:kDASSystemContextGPWorkloadRunningState];
    if (v11)
    {
      relatedApplications = [activityCopy relatedApplications];
      v13 = [relatedApplications containsObject:@"com.apple.GenerativePlaygroundApp"];

      if ((v13 & 1) == 0)
      {
        [(_DASPolicyResponseRationale *)v8 addRationaleForCondition:@"gpRunning" withRequiredValue:0.0 withCurrentValue:1.0];
        v10 = 100;
      }
    }

    v14 = [(NSMutableDictionary *)selfCopy->_workloadDates objectForKeyedSubscript:kDASSystemContextMCWorkloadRunningState];

    if (v14)
    {
      [(_DASPolicyResponseRationale *)v8 addRationaleForCondition:@"mcRunning" withRequiredValue:0.0 withCurrentValue:1.0];
      v10 = 100;
    }
  }

  v15 = [_DASPolicyResponse policyResponseWithDecision:v10 validityDuration:v8 rationale:15.0];
  objc_sync_exit(selfCopy);

  return v15;
}

@end