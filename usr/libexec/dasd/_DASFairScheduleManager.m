@interface _DASFairScheduleManager
- (_DASFairScheduleManager)init;
- (int64_t)compareActivity:(id)a3 withActivity:(id)a4;
- (int64_t)dynamicRuntimeCompareActivity:(id)a3 withActivity:(id)a4;
- (void)activityStarted:(id)a3;
- (void)handleActivityEnd:(id)a3 withLoggingReason:(id)a4;
- (void)handleTimerFired;
- (void)loadFSMFromDefaults;
- (void)reset;
- (void)saveLastResetDate;
- (void)savePriorityQueue;
@end

@implementation _DASFairScheduleManager

- (void)savePriorityQueue
{
  obj = self->_fairSchedulingPreferences;
  objc_sync_enter(obj);
  [(NSUserDefaults *)self->_fairSchedulingPreferences setObject:self->_activityToDuration forKey:@"priorityQueue"];
  objc_sync_exit(obj);
}

- (_DASFairScheduleManager)init
{
  v15.receiver = self;
  v15.super_class = _DASFairScheduleManager;
  v2 = [(_DASFairScheduleManager *)&v15 init];
  if (v2)
  {
    v3 = [_DASDaemonLogger logForCategory:@"fairScheduling"];
    v4 = *(v2 + 5);
    *(v2 + 5) = v3;

    [v2 loadFSMFromDefaults];
    v5 = +[_DASDynamicRuntimeAllocator sharedAllocator];
    v6 = *(v2 + 6);
    *(v2 + 6) = v5;

    v7 = dispatch_get_global_queue(-32768, 0);
    v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v7);
    v9 = *(v2 + 4);
    *(v2 + 4) = v8;

    dispatch_source_set_timer(*(v2 + 4), 0, 0x274A48A78000uLL, 0x3B9ACA00uLL);
    objc_initWeak(&location, v2);
    v10 = *(v2 + 4);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000FDD88;
    v12[3] = &unk_1001B5468;
    objc_copyWeak(&v13, &location);
    dispatch_source_set_event_handler(v10, v12);
    dispatch_activate(*(v2 + 4));
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)saveLastResetDate
{
  obj = self->_fairSchedulingPreferences;
  objc_sync_enter(obj);
  [(NSUserDefaults *)self->_fairSchedulingPreferences setObject:self->_lastResetDate forKey:@"lastResetDate"];
  objc_sync_exit(obj);
}

- (void)loadFSMFromDefaults
{
  v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.das.fairscheduling"];
  fairSchedulingPreferences = self->_fairSchedulingPreferences;
  self->_fairSchedulingPreferences = v3;

  v5 = [(NSUserDefaults *)self->_fairSchedulingPreferences objectForKey:@"priorityQueue"];
  v6 = [v5 mutableCopy];
  activityToDuration = self->_activityToDuration;
  self->_activityToDuration = v6;

  if (!self->_activityToDuration || (v8 = objc_opt_class(), v8 != objc_opt_class()))
  {
    v9 = +[NSMutableDictionary dictionary];
    v10 = self->_activityToDuration;
    self->_activityToDuration = v9;
  }

  v11 = [(NSUserDefaults *)self->_fairSchedulingPreferences objectForKey:@"lastResetDate"];
  lastResetDate = self->_lastResetDate;
  self->_lastResetDate = v11;

  if (!self->_lastResetDate || (v13 = objc_opt_class(), v13 != objc_opt_class()) || ([(NSDate *)self->_lastResetDate timeIntervalSinceNow], v14 < -604800.0))
  {
    v15 = +[NSDate now];
    v16 = self->_lastResetDate;
    self->_lastResetDate = v15;

    [(_DASFairScheduleManager *)self saveLastResetDate];
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v19 = self->_activityToDuration;
    v18 = self->_lastResetDate;
    v20 = 138412546;
    v21 = v18;
    v22 = 2112;
    v23 = v19;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Loading FSM, Last reset date: %@,\nQueue: %@", &v20, 0x16u);
  }
}

- (void)handleTimerFired
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    activityToDuration = self->_activityToDuration;
    lastResetDate = self->_lastResetDate;
    v9 = 138412546;
    v10 = lastResetDate;
    v11 = 2112;
    v12 = activityToDuration;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "FSM, Last reset date: %@,\nQueue: %@", &v9, 0x16u);
  }

  [(NSDate *)self->_lastResetDate timeIntervalSinceNow];
  if (v6 < -604800.0)
  {
    v7 = self->_log;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_lastResetDate;
      v9 = 138412546;
      v10 = &off_1001CAE68;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Resetting FSM since %@ days have elapsed since the last reset at %@", &v9, 0x16u);
    }

    [(_DASFairScheduleManager *)self reset];
  }
}

- (void)reset
{
  obj = self;
  objc_sync_enter(obj);
  [(NSMutableDictionary *)obj->_activityToDuration removeAllObjects];
  [(NSUserDefaults *)obj->_fairSchedulingPreferences removeObjectForKey:@"priorityQueue"];
  v2 = +[NSDate now];
  lastResetDate = obj->_lastResetDate;
  obj->_lastResetDate = v2;

  [(NSUserDefaults *)obj->_fairSchedulingPreferences setObject:obj->_lastResetDate forKey:@"lastResetDate"];
  objc_sync_exit(obj);
}

- (int64_t)dynamicRuntimeCompareActivity:(id)a3 withActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 name];
  v9 = [v7 name];
  [(_DASDynamicRuntimeAllocator *)self->_dynamicRuntimeAllocator remainingAllocatedRuntimeForActivity:v6];
  v11 = v10;
  [(_DASDynamicRuntimeAllocator *)self->_dynamicRuntimeAllocator remainingAllocatedRuntimeForActivity:v7];
  v13 = v12;
  v14 = [(_DASDynamicRuntimeAllocator *)self->_dynamicRuntimeAllocator isRuntimeAllocatedForActivity:v6];
  v15 = [(_DASDynamicRuntimeAllocator *)self->_dynamicRuntimeAllocator isRuntimeAllocatedForActivity:v7];
  if (v13 > 0.0 || v11 <= 0.0)
  {
    if ((v11 > 0.0 || v13 <= 0.0) && (!v14 || v11 >= [v6 uninterruptibleDuration] || v13 < objc_msgSend(v7, "uninterruptibleDuration")))
    {
      if (v15 && v13 < [v7 uninterruptibleDuration] && v11 >= objc_msgSend(v6, "uninterruptibleDuration"))
      {
        goto LABEL_3;
      }

      v18 = [(NSMutableDictionary *)self->_activityToDuration objectForKeyedSubscript:v8];

      v19 = 0.0;
      v20 = 0.0;
      if (v18)
      {
        v21 = [(NSMutableDictionary *)self->_activityToDuration objectForKeyedSubscript:v8];
        [v21 doubleValue];
        v20 = v22;
      }

      v23 = [(NSMutableDictionary *)self->_activityToDuration objectForKeyedSubscript:v9];

      if (v23)
      {
        v24 = [(NSMutableDictionary *)self->_activityToDuration objectForKeyedSubscript:v9];
        [v24 doubleValue];
        v19 = v25;
      }

      if (v20 < v19)
      {
        goto LABEL_3;
      }

      if (v20 <= v19)
      {
        v26 = [v6 uninterruptibleDuration];
        if (v26 <= [v7 uninterruptibleDuration])
        {
          v27 = [v6 uninterruptibleDuration];
          if (v27 >= [v7 uninterruptibleDuration])
          {
            v28 = [v6 startBefore];
            v29 = [v7 startBefore];
            v16 = [v28 compare:v29];

            goto LABEL_7;
          }

          goto LABEL_3;
        }
      }
    }

    v16 = 1;
    goto LABEL_7;
  }

LABEL_3:
  v16 = -1;
LABEL_7:

  return v16;
}

- (int64_t)compareActivity:(id)a3 withActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_activityToDuration;
  objc_sync_enter(v8);
  v9 = [v6 name];
  v10 = [v7 name];
  if ([v6 requiresPlugin] && (objc_msgSend(v7, "requiresPlugin") & 1) == 0)
  {
    goto LABEL_14;
  }

  if ([v7 requiresPlugin] && !objc_msgSend(v6, "requiresPlugin"))
  {
    goto LABEL_16;
  }

  if (![(_DASDynamicRuntimeAllocator *)self->_dynamicRuntimeAllocator isEngaged])
  {
    v12 = [(NSMutableDictionary *)self->_activityToDuration objectForKeyedSubscript:v9];

    if (v12)
    {
      v13 = [(NSMutableDictionary *)self->_activityToDuration objectForKeyedSubscript:v9];
      [v13 doubleValue];
      v15 = v14;
    }

    else
    {
      v15 = 0.0;
    }

    v16 = [(NSMutableDictionary *)self->_activityToDuration objectForKeyedSubscript:v10];

    if (v16)
    {
      v17 = [(NSMutableDictionary *)self->_activityToDuration objectForKeyedSubscript:v10];
      [v17 doubleValue];
      v19 = v18;
    }

    else
    {
      v19 = 0.0;
    }

    if (v15 < v19)
    {
      goto LABEL_14;
    }

    if (v15 > v19)
    {
LABEL_16:
      v11 = 1;
      goto LABEL_17;
    }

    [v6 interval];
    v22 = v21;
    [v7 interval];
    if (v22 <= v23)
    {
      [v6 interval];
      v25 = v24;
      [v7 interval];
      if (v25 < v26)
      {
        goto LABEL_16;
      }

      v27 = [v6 schedulingPriority];
      if (v27 <= [v7 schedulingPriority])
      {
        v28 = [v6 schedulingPriority];
        if (v28 < [v7 schedulingPriority])
        {
          goto LABEL_16;
        }

        v29 = [v6 staticPriority];
        if (v29 >= [v7 staticPriority])
        {
          v30 = [v6 staticPriority];
          if (v30 > [v7 staticPriority])
          {
            goto LABEL_16;
          }

          v31 = [v6 maximumRuntime];
          if (v31 >= [v7 maximumRuntime])
          {
            v32 = [v6 maximumRuntime];
            if (v32 <= [v7 maximumRuntime])
            {
              v33 = [v6 startBefore];
              v34 = [v7 startBefore];
              v11 = [v33 compare:v34];

              goto LABEL_17;
            }

            goto LABEL_16;
          }
        }
      }
    }

LABEL_14:
    v11 = -1;
    goto LABEL_17;
  }

  v11 = [(_DASFairScheduleManager *)self dynamicRuntimeCompareActivity:v6 withActivity:v7];
LABEL_17:

  objc_sync_exit(v8);
  return v11;
}

- (void)handleActivityEnd:(id)a3 withLoggingReason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_activityToDuration;
  objc_sync_enter(v8);
  v9 = [v6 name];
  v10 = [v6 startDate];
  [v10 timeIntervalSinceNow];
  v12 = v11;

  v13 = [(NSMutableDictionary *)self->_activityToDuration objectForKeyedSubscript:v9];
  [v13 doubleValue];
  v15 = v14 - v12;

  v16 = [NSNumber numberWithDouble:v15];
  [(NSMutableDictionary *)self->_activityToDuration setObject:v16 forKeyedSubscript:v9];

  [(_DASFairScheduleManager *)self savePriorityQueue];
  v17 = self->_log;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v6 name];
    v19 = 138413058;
    v20 = v7;
    v21 = 2112;
    v22 = v18;
    v23 = 2048;
    v24 = v12 / -60.0;
    v25 = 2048;
    v26 = v15 / 60.0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@ %@, ran for %.1f mins, total runtime %.1f mins", &v19, 0x2Au);
  }

  objc_sync_exit(v8);
}

- (void)activityStarted:(id)a3
{
  v4 = a3;
  v5 = self->_activityToDuration;
  objc_sync_enter(v5);
  v6 = [v4 name];
  v7 = [(NSMutableDictionary *)self->_activityToDuration objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_activityToDuration objectForKeyedSubscript:v6];
    [v8 doubleValue];
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  objc_sync_exit(v5);
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v12 = log;
    v13 = [v4 name];
    v14 = 138412802;
    v15 = v13;
    v16 = 2048;
    v17 = v10 / 60.0;
    v18 = 2048;
    v19 = [v4 maximumRuntime];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Started %@, total runtime from previous runs %0.1f mins, runtime limit %ld", &v14, 0x20u);
  }
}

@end