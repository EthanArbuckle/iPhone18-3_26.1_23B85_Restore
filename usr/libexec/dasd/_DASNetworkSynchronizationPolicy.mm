@interface _DASNetworkSynchronizationPolicy
+ (id)policyInstance;
- (BOOL)appliesToActivity:(id)a3;
- (BOOL)shouldIgnoreTrigger:(id)a3 withState:(id)a4;
- (_DASNetworkSynchronizationPolicy)init;
- (id)initializeTriggers;
- (id)lastWakeDate;
- (id)responseForActivity:(id)a3 withState:(id)a4;
- (id)secondsFromSpikeMinutes:(id)a3 secondsBeforeSpike:(unint64_t)a4 secondsAfterSpike:(unint64_t)a5;
- (void)handleTimerFireAtDate:(id)a3 withContext:(id)a4;
- (void)postNotificationInWindow:(BOOL)a3;
@end

@implementation _DASNetworkSynchronizationPolicy

- (id)initializeTriggers
{
  v2 = +[_CDContextQueries keyPathForInUseStatus];
  v3 = [_CDContextualPredicate predicateForChangeAtKeyPath:v2];

  v7[0] = @"identifier";
  v7[1] = @"predicate";
  v8[0] = @"Network Synchronization Policy";
  v8[1] = v3;
  v7[2] = @"deviceSet";
  v7[3] = @"mustWake";
  v8[2] = &off_1001C9868;
  v8[3] = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];
  v9 = v4;
  v5 = [NSArray arrayWithObjects:&v9 count:1];

  return v5;
}

- (void)handleTimerFireAtDate:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSCalendar currentCalendar];
  v9 = [v8 components:192 fromDate:v6];
  v10 = [v9 minute];
  v11 = [v9 second] + 60 * v10;
  v12 = [(NSIndexSet *)self->_affectedSeconds indexGreaterThanOrEqualToIndex:v11];
  if (v12 != 0x7FFFFFFFFFFFFFFFLL && v12 == v11)
  {
    v18 = [_DASDaemonLogger logForCategory:@"policy"];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_10011E6CC(v11, v18);
    }

    v19 = +[_CDContextQueries keyPathForInUseStatus];
    v20 = [v7 objectForKeyedSubscript:v19];

    v21 = [v20 BOOLValue];
    v22 = +[_CDContextQueries keyPathForLastUseDate];
    v23 = [v7 objectForKeyedSubscript:v22];

    v24 = [(_DASNetworkSynchronizationPolicy *)self lastWakeDate];
    [v6 timeIntervalSinceDate:v24];
    v26 = v25;
    [v6 timeIntervalSinceDate:v23];
    self->_lastUserInactivity = v27;
    if ((v21 & 1) == 0 && v26 > 0.0 && v26 < self->_recentWakeInterval && v27 > self->_recentActivityInterval)
    {
      if (!self->_inPossibleSynchronizationWindow)
      {
        [(_DASNetworkSynchronizationPolicy *)self postNotificationInWindow:1];
      }

      self->_inPossibleSynchronizationWindow = 1;
      v28 = [_DASDaemonLogger logForCategory:@"policy"];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        sub_10011E744(v28);
      }
    }

    v29 = self->_secondsAfterSpike + self->_secondsBeforeSpike;
    v30 = arc4random_uniform(self->_randomizationInterval);
    timer = self->_timer;
    v32 = dispatch_walltime(0, 1000000000 * (v29 + v30));
    dispatch_source_set_timer(timer, v32, 0xFFFFFFFFFFFFFFFFLL, 1uLL);
  }

  else
  {
    v14 = v12;
    if (self->_inPossibleSynchronizationWindow)
    {
      [(_DASNetworkSynchronizationPolicy *)self postNotificationInWindow:0];
    }

    v15 = [_DASDaemonLogger logForCategory:@"policy"];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_10011E688(v15);
    }

    self->_inPossibleSynchronizationWindow = 0;
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = [(NSIndexSet *)self->_affectedSeconds firstIndex]+ 3600;
    }

    v16 = self->_timer;
    v17 = dispatch_walltime(0, 1000000000 * (v14 - v11));
    dispatch_source_set_timer(v16, v17, 0xFFFFFFFFFFFFFFFFLL, 1uLL);
  }
}

- (id)secondsFromSpikeMinutes:(id)a3 secondsBeforeSpike:(unint64_t)a4 secondsAfterSpike:(unint64_t)a5
{
  v7 = a3;
  v8 = +[NSMutableIndexSet indexSet];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v20 = *v22;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v22 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v12 = 60 * [*(*(&v21 + 1) + 8 * i) unsignedLongValue];
        if (a4)
        {
          v13 = v12 + 3599;
          v14 = a4;
          do
          {
            [v8 addIndex:v13 % 0xE10];
            --v13;
            --v14;
          }

          while (v14);
        }

        v15 = 0;
        v16 = v12;
        do
        {
          [v8 addIndex:v15 + v12 - 3600 * (v16 / 0xE10)];
          ++v15;
          ++v16;
        }

        while (v15 <= a5);
      }

      v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v17 = [v8 copy];

  return v17;
}

- (_DASNetworkSynchronizationPolicy)init
{
  v22.receiver = self;
  v22.super_class = _DASNetworkSynchronizationPolicy;
  v2 = [(_DASNetworkSynchronizationPolicy *)&v22 init];
  v3 = v2;
  if (v2)
  {
    policyName = v2->_policyName;
    v2->_policyName = @"Network Synchronization Policy";

    v5 = +[_CDClientContext userContext];
    context = v3->_context;
    v3->_context = v5;

    v7 = [(_DASNetworkSynchronizationPolicy *)v3 initializeTriggers];
    triggers = v3->_triggers;
    v3->_triggers = v7;

    v9 = [NSSet setWithObjects:&off_1001C9880, &off_1001C9898, &off_1001C98B0, &off_1001C98C8, 0];
    spikeMinutes = v3->_spikeMinutes;
    v3->_spikeMinutes = v9;

    *&v3->_secondsBeforeSpike = xmmword_100158A60;
    v11 = [(_DASNetworkSynchronizationPolicy *)v3 secondsFromSpikeMinutes:v3->_spikeMinutes secondsBeforeSpike:30 secondsAfterSpike:15];
    affectedSeconds = v3->_affectedSeconds;
    v3->_affectedSeconds = v11;

    v3->_recentActivityInterval = 300;
    *&v3->_randomizationInterval = 0xA000001C2;
    if ([(NSIndexSet *)v3->_affectedSeconds count])
    {
      v13 = dispatch_get_global_queue(-2, 0);
      v14 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v13);
      timer = v3->_timer;
      v3->_timer = v14;

      v16 = v3->_timer;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100047434;
      handler[3] = &unk_1001B5668;
      v17 = v3;
      v21 = v17;
      dispatch_source_set_event_handler(v16, handler);
      v18 = +[NSDate now];
      [(_DASNetworkSynchronizationPolicy *)v17 handleTimerFireAtDate:v18 withContext:v3->_context];

      dispatch_activate(v3->_timer);
    }
  }

  return v3;
}

+ (id)policyInstance
{
  if (qword_10020B0A8 != -1)
  {
    sub_10011E788();
  }

  v3 = qword_10020B0B0;

  return v3;
}

- (BOOL)shouldIgnoreTrigger:(id)a3 withState:(id)a4
{
  v6 = a4;
  if ([a3 isEqualToString:@"Network Synchronization Policy"])
  {
    if ([_DASDeviceActivityPolicy isDeviceInUse:v6]&& self->_inPossibleSynchronizationWindow)
    {
      v7 = 0;
      self->_inPossibleSynchronizationWindow = 0;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)appliesToActivity:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_inPossibleSynchronizationWindow && [v4 requiresNetwork] && (v6 = objc_msgSend(v5, "schedulingPriority"), v6 <= _DASSchedulingPriorityUtility))
  {
    v9 = [v5 startDate];
    if (v9 || [_DASPhotosPolicy isiCPLActivity:v5]|| [_DASPhotosPolicy isAppLibraryActivity:v5])
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      v10 = [v5 fastPass];
      if (v10)
      {
        LOBYTE(v7) = 0;
      }

      else
      {
        v7 = [v5 requestsImmediateRuntime] ^ 1;
      }
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)lastWakeDate
{
  v6 = 0;
  v7 = 0;
  v5 = 16;
  sysctlbyname("kern.waketime", &v6, &v5, 0, 0);
  v2 = [NSDate dateWithTimeIntervalSince1970:v7 / 1000000000.0 + v6];
  v3 = [_DASDaemonLogger logForCategory:@"policy"];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Last wake date: %@", buf, 0xCu);
  }

  return v2;
}

- (void)postNotificationInWindow:(BOOL)a3
{
  v4 = dispatch_get_global_queue(-2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100047848;
  block[3] = &unk_1001B6490;
  v6 = a3;
  dispatch_async(v4, block);
}

- (id)responseForActivity:(id)a3 withState:(id)a4
{
  v5 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:self->_policyName];
  if (self->_inPossibleSynchronizationWindow && _os_feature_enabled_impl())
  {
    [(_DASPolicyResponseRationale *)v5 addRationaleForCondition:@"lastUserActivity" withRequiredValue:self->_recentActivityInterval withCurrentValue:self->_lastUserInactivity];
    v6 = 33;
  }

  else
  {
    v6 = 0;
  }

  v7 = [_DASPolicyResponse policyResponseWithDecision:v6 validityDuration:v5 rationale:0x384uLL];

  return v7;
}

@end