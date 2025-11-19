@interface _DASMemoryPressurePolicy
+ (id)policyInstance;
- (BOOL)appliesToActivity:(id)a3;
- (_DASMemoryPressurePolicy)init;
- (id)responseForActivity:(id)a3 withState:(id)a4;
- (int64_t)systemMemoryPressure;
- (void)dasTrialManager:(id)a3 hasUpdatedParametersForNamespace:(id)a4;
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

- (void)dasTrialManager:(id)a3 hasUpdatedParametersForNamespace:(id)a4
{
  if ([a4 isEqualToString:@"COREOS_DAS"])
  {

    [(_DASMemoryPressurePolicy *)self updateTrialParameters];
  }
}

- (void)updateTrialParameters
{
  v3 = [(_DASTrialManager *)self->_trialManager factorWithName:@"PolicyMemoryExemptsAll"];
  v4 = [v3 BOOLeanValue];

  self->_trialExemptsAll = v4;
  v5 = [_DASDaemonLogger logForCategory:@"trial"];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    trialExemptsAll = self->_trialExemptsAll;
    v19 = 67109120;
    v20 = trialExemptsAll;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PolicyMemoryExemptsAll is %u", &v19, 8u);
  }

  v7 = [(_DASTrialManager *)self->_trialManager factorWithName:@"PolicyMemoryExemptsAllInactive"];
  v8 = [v7 BOOLeanValue];

  self->_trialExemptsAllInactive = v8;
  v9 = [_DASDaemonLogger logForCategory:@"trial"];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    trialExemptsAllInactive = self->_trialExemptsAllInactive;
    v19 = 67109120;
    v20 = trialExemptsAllInactive;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PolicyMemoryExemptsAllInactive is %u", &v19, 8u);
  }

  v11 = [(_DASTrialManager *)self->_trialManager factorWithName:@"PolicyMemoryAllCritical"];
  v12 = [v11 BOOLeanValue];

  self->_trialAllCritical = v12;
  v13 = [_DASDaemonLogger logForCategory:@"trial"];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    trialAllCritical = self->_trialAllCritical;
    v19 = 67109120;
    v20 = trialAllCritical;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "PolicyMemoryAllCritical is %u", &v19, 8u);
  }

  v15 = [(_DASTrialManager *)self->_trialManager factorWithName:@"PolicyMemoryExemptsiCPL"];
  v16 = [v15 BOOLeanValue];

  self->_trialExemptsiCPL = v16;
  v17 = [_DASDaemonLogger logForCategory:@"trial"];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    trialExemptsiCPL = self->_trialExemptsiCPL;
    v19 = 67109120;
    v20 = trialExemptsiCPL;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "PolicyMemoryExemptsiCPL is %u", &v19, 8u);
  }
}

- (BOOL)appliesToActivity:(id)a3
{
  v4 = a3;
  if (!self->_trialExemptsAll && (!self->_trialExemptsiCPL || ![_DASPhotosPolicy isiCPLActivity:v4]))
  {
    if ([v4 isContinuedProcessingTask])
    {
      LOBYTE(v5) = 1;
      goto LABEL_3;
    }

    v7 = [v4 schedulingPriority];
    if (v7 < _DASSchedulingPriorityUserInitiated && ([v4 triggersRestart] & 1) == 0)
    {
      v5 = [v4 requestsImmediateRuntime] ^ 1;
      goto LABEL_3;
    }
  }

  LOBYTE(v5) = 0;
LABEL_3:

  return v5;
}

- (id)responseForActivity:(id)a3 withState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_DASMemoryPressurePolicy *)self memoryPressureLevelWithContext:v7];
  v9 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:@"Memory Pressure Policy"];
  if ([v6 isContinuedProcessingTask] && objc_msgSend(v6, "isRunning"))
  {
    v10 = [_DASPolicyResponse policyResponseWithDecision:0 validityDuration:v9 rationale:0x384uLL];
    goto LABEL_33;
  }

  v11 = +[NSDate date];
  v12 = [v6 startBefore];
  [v12 timeIntervalSinceDate:v11];
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

  else if (self->_trialExemptsAllInactive && ![_DASDeviceActivityPolicy isDeviceInUse:v7])
  {
    goto LABEL_21;
  }

  if (v14 < 0.0)
  {
    v15 = [_DASSystemContext isPluggedIn:v7];
    v16 = [_DASDeviceActivityPolicy isDeviceInUse:v7];
    if (v15)
    {
      if ((v16 & 1) == 0)
      {
        v17 = [v6 schedulingPriority];
        v18 = 2.0;
        if (v17 > _DASSchedulingPriorityBackground)
        {
          v18 = 4.0;
        }

        [(_DASPolicyResponseRationale *)v9 addRationaleForCondition:@"memoryPressure" withRequiredValue:v18 withCurrentValue:v8];
        if ((v8 & 4) == 0 || (v27 = [v6 schedulingPriority], v27 > _DASSchedulingPriorityBackground) || v14 <= -86400.0)
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

  v21 = [v6 schedulingPriority];
  v22 = v8;
  if (v21 <= _DASSchedulingPriorityBackground)
  {
    v23 = 1.0;
    [(_DASPolicyResponseRationale *)v9 addRationaleForCondition:@"memoryPressure" withRequiredValue:1.0 withCurrentValue:v22];
    v25 = ![_DASDeviceActivityPolicy isDeviceInUse:v7];
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