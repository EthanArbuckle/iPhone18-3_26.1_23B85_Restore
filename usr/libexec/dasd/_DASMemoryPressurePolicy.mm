@interface _DASMemoryPressurePolicy
+ (id)policyInstance;
- (BOOL)appliesToActivity:(id)activity;
- (_DASMemoryPressurePolicy)init;
- (id)responseForActivity:(id)activity withState:(id)state;
- (int64_t)systemMemoryPressure;
- (void)dasTrialManager:(id)manager hasUpdatedParametersForNamespace:(id)namespace;
- (void)updateTrialParameters;
@end

@implementation _DASMemoryPressurePolicy

- (int64_t)systemMemoryPressure
{
  v4 = 1;
  v3 = 8;
  sysctlbyname("kern.memorystatus_vm_pressure_level", &v4, &v3, 0, 0);
  return v4;
}

- (_DASMemoryPressurePolicy)init
{
  v18.receiver = self;
  v18.super_class = _DASMemoryPressurePolicy;
  v2 = [(_DASMemoryPressurePolicy *)&v18 init];
  v3 = v2;
  if (v2)
  {
    policyName = v2->_policyName;
    v2->_policyName = @"Memory Pressure Policy";

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.dasd.memoryPressure", v5);
    queue = v3->_queue;
    v3->_queue = v6;

    v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3->_queue);
    timer = v3->_timer;
    v3->_timer = v8;

    v10 = v3->_timer;
    dispatch_set_qos_class_fallback();
    dispatch_source_set_timer(v3->_timer, 0, 0x37E11D600uLL, 0x3B9ACA00uLL);
    v11 = v3->_timer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100002D44;
    handler[3] = &unk_1001B5668;
    v12 = v3;
    v17 = v12;
    dispatch_source_set_event_handler(v11, handler);
    v13 = +[_DASTrialManager sharedInstance];
    v14 = v12[9];
    v12[9] = v13;

    [v12[9] addDelegate:v12];
    [v12 updateTrialParameters];
    dispatch_activate(v3->_timer);
  }

  return v3;
}

+ (id)policyInstance
{
  if (qword_10020B258 != -1)
  {
    sub_10011FD78();
  }

  v3 = qword_10020B260;

  return v3;
}

- (void)dasTrialManager:(id)manager hasUpdatedParametersForNamespace:(id)namespace
{
  if ([namespace isEqualToString:@"COREOS_DAS"])
  {

    [(_DASMemoryPressurePolicy *)self updateTrialParameters];
  }
}

- (void)updateTrialParameters
{
  v3 = [(_DASTrialManager *)self->_trialManager factorWithName:@"PolicyMemoryExemptsAll"];
  bOOLeanValue = [v3 BOOLeanValue];

  self->_trialExemptsAll = bOOLeanValue;
  v5 = [_DASDaemonLogger logForCategory:@"trial"];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    trialExemptsAll = self->_trialExemptsAll;
    v19 = 67109120;
    v20 = trialExemptsAll;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PolicyMemoryExemptsAll is %u", &v19, 8u);
  }

  v7 = [(_DASTrialManager *)self->_trialManager factorWithName:@"PolicyMemoryExemptsAllInactive"];
  bOOLeanValue2 = [v7 BOOLeanValue];

  self->_trialExemptsAllInactive = bOOLeanValue2;
  v9 = [_DASDaemonLogger logForCategory:@"trial"];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    trialExemptsAllInactive = self->_trialExemptsAllInactive;
    v19 = 67109120;
    v20 = trialExemptsAllInactive;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PolicyMemoryExemptsAllInactive is %u", &v19, 8u);
  }

  v11 = [(_DASTrialManager *)self->_trialManager factorWithName:@"PolicyMemoryAllCritical"];
  bOOLeanValue3 = [v11 BOOLeanValue];

  self->_trialAllCritical = bOOLeanValue3;
  v13 = [_DASDaemonLogger logForCategory:@"trial"];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    trialAllCritical = self->_trialAllCritical;
    v19 = 67109120;
    v20 = trialAllCritical;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "PolicyMemoryAllCritical is %u", &v19, 8u);
  }

  v15 = [(_DASTrialManager *)self->_trialManager factorWithName:@"PolicyMemoryExemptsiCPL"];
  bOOLeanValue4 = [v15 BOOLeanValue];

  self->_trialExemptsiCPL = bOOLeanValue4;
  v17 = [_DASDaemonLogger logForCategory:@"trial"];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    trialExemptsiCPL = self->_trialExemptsiCPL;
    v19 = 67109120;
    v20 = trialExemptsiCPL;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "PolicyMemoryExemptsiCPL is %u", &v19, 8u);
  }
}

- (BOOL)appliesToActivity:(id)activity
{
  activityCopy = activity;
  if (!self->_trialExemptsAll && (!self->_trialExemptsiCPL || ![_DASPhotosPolicy isiCPLActivity:activityCopy]))
  {
    if ([activityCopy isContinuedProcessingTask])
    {
      LOBYTE(v5) = 1;
      goto LABEL_3;
    }

    schedulingPriority = [activityCopy schedulingPriority];
    if (schedulingPriority < _DASSchedulingPriorityUserInitiated && ([activityCopy triggersRestart] & 1) == 0)
    {
      v5 = [activityCopy requestsImmediateRuntime] ^ 1;
      goto LABEL_3;
    }
  }

  LOBYTE(v5) = 0;
LABEL_3:

  return v5;
}

- (id)responseForActivity:(id)activity withState:(id)state
{
  activityCopy = activity;
  stateCopy = state;
  v8 = [(_DASMemoryPressurePolicy *)self memoryPressureLevelWithContext:stateCopy];
  v9 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:@"Memory Pressure Policy"];
  if ([activityCopy isContinuedProcessingTask] && objc_msgSend(activityCopy, "isRunning"))
  {
    v10 = [_DASPolicyResponse policyResponseWithDecision:0 validityDuration:v9 rationale:0x384uLL];
    goto LABEL_33;
  }

  v11 = +[NSDate date];
  startBefore = [activityCopy startBefore];
  [startBefore timeIntervalSinceDate:v11];
  v14 = v13;

  if (self->_trialAllCritical)
  {
    if ((v8 & 4) == 0)
    {
LABEL_21:
      v19 = 0x384uLL;
      v20 = 0;
      v24 = 0;
LABEL_31:
      v26 = [_DASPolicyResponse policyResponseWithDecision:v20 validityDuration:v24 rationale:v19];
      goto LABEL_32;
    }
  }

  else if (self->_trialExemptsAllInactive && ![_DASDeviceActivityPolicy isDeviceInUse:stateCopy])
  {
    goto LABEL_21;
  }

  if (v14 < 0.0)
  {
    v15 = [_DASSystemContext isPluggedIn:stateCopy];
    v16 = [_DASDeviceActivityPolicy isDeviceInUse:stateCopy];
    if (v15)
    {
      if ((v16 & 1) == 0)
      {
        schedulingPriority = [activityCopy schedulingPriority];
        v18 = 2.0;
        if (schedulingPriority > _DASSchedulingPriorityBackground)
        {
          v18 = 4.0;
        }

        [(_DASPolicyResponseRationale *)v9 addRationaleForCondition:@"memoryPressure" withRequiredValue:v18 withCurrentValue:v8];
        if ((v8 & 4) == 0 || (v27 = [activityCopy schedulingPriority], v27 > _DASSchedulingPriorityBackground) || v14 <= -86400.0)
        {
          v19 = 0x384uLL;
          v20 = 0;
LABEL_30:
          v24 = v9;
          goto LABEL_31;
        }

LABEL_29:
        v19 = 0x384uLL;
        v20 = 33;
        goto LABEL_30;
      }
    }
  }

  schedulingPriority2 = [activityCopy schedulingPriority];
  v22 = v8;
  if (schedulingPriority2 <= _DASSchedulingPriorityBackground)
  {
    v23 = 1.0;
    [(_DASPolicyResponseRationale *)v9 addRationaleForCondition:@"memoryPressure" withRequiredValue:1.0 withCurrentValue:v22];
    v25 = ![_DASDeviceActivityPolicy isDeviceInUse:stateCopy];
    if ((v8 & 2) == 0)
    {
      v25 = 1;
    }

    if (v25 != 1 || (v8 & 4) != 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    [(_DASPolicyResponseRationale *)v9 addRationaleForCondition:@"memoryPressure" withRequiredValue:2.0 withCurrentValue:v22];
    if ((v8 & 4) != 0)
    {
      goto LABEL_29;
    }

    if (v8 <= 1)
    {
      v23 = 1.0;
    }

    else
    {
      v23 = 0.5;
    }
  }

  v26 = [_DASPolicyResponse policyResponseWithScore:v9 validityDuration:v23 rationale:0x384uLL];
LABEL_32:
  v10 = v26;

LABEL_33:

  return v10;
}

@end