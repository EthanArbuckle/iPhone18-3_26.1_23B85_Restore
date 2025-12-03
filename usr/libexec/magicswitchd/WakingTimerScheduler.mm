@interface WakingTimerScheduler
+ (id)sharedInstance;
+ (void)cancelScheduledWake:(id)wake;
- (WakingTimerScheduler)init;
- (void)cancelScheduledWake;
- (void)cancelTimer:(id)timer;
- (void)clearDispatchTimer;
- (void)evaluateTimers;
- (void)evaluateTimers:(unint64_t)timers;
- (void)scheduleTimer:(id)timer;
- (void)scheduleTimerWithEarliestDeadline:(id)deadline now:(unint64_t)now;
- (void)scheduleWakeWithDelayBeforeFireTime:(unint64_t)time gracePeriod:(double)period;
- (void)systemPowerChanged:(unsigned int)changed notificationID:(void *)d;
@end

@implementation WakingTimerScheduler

- (WakingTimerScheduler)init
{
  v37.receiver = self;
  v37.super_class = WakingTimerScheduler;
  v2 = [(WakingTimerScheduler *)&v37 init];
  if (v2)
  {
    v3 = +[NSHashTable weakObjectsHashTable];
    v4 = *(v2 + 3);
    *(v2 + 3) = v3;

    v5 = +[MagicSwitchEnabler sharedInstance];
    workQueue = [v5 workQueue];
    v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, workQueue);
    v8 = *(v2 + 5);
    *(v2 + 5) = v7;

    v9 = *(v2 + 5);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000067F0;
    handler[3] = &unk_100018538;
    v10 = v2;
    v36 = v10;
    dispatch_source_set_event_handler(v9, handler);
    dispatch_source_set_timer(*(v2 + 5), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_activate(*(v2 + 5));
    out_token = 0;
    v11 = +[MagicSwitchEnabler sharedInstance];
    workQueue2 = [v11 workQueue];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100006864;
    v32[3] = &unk_100018650;
    v13 = v10;
    v33 = v13;
    v14 = notify_register_dispatch("com.apple.system.timezone", &out_token, workQueue2, v32);

    if (v14)
    {
      v15 = qword_100021420;
      if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v39 = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "WakingTimerScheduler --- Failed to register observer for the time zone change notification with status: (%u)", buf, 8u);
      }
    }

    v16 = +[MagicSwitchEnabler sharedInstance];
    workQueue3 = [v16 workQueue];
    v27 = _NSConcreteStackBlock;
    v28 = 3221225472;
    v29 = sub_1000068D8;
    v30 = &unk_100018650;
    v18 = v13;
    v31 = v18;
    v19 = notify_register_dispatch("com.apple.system.clock_set", &out_token, workQueue3, &v27);

    if (v19)
    {
      v20 = qword_100021420;
      if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v39 = v19;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "WakingTimerScheduler --- Failed to register observer for the system clock change notification with status: (%u)", buf, 8u);
      }
    }

    v21 = IORegisterForSystemPower(v18, v18 + 7, j__objc_msgSend_systemPowerChanged_notificationID_, v18 + 4);
    *(v18 + 3) = v21;
    if (v21)
    {
      v22 = *(v18 + 7);
      v23 = [MagicSwitchEnabler sharedInstance:v27];
      workQueue4 = [v23 workQueue];
      IONotificationPortSetDispatchQueue(v22, workQueue4);
    }

    else
    {
      v25 = qword_100021420;
      if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "WakingTimerScheduler --- Failed to register for Power events!", buf, 2u);
      }
    }
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000069F0;
  block[3] = &unk_100018670;
  block[4] = self;
  if (qword_100021408 != -1)
  {
    dispatch_once(&qword_100021408, block);
  }

  v2 = qword_100021400;

  return v2;
}

- (void)scheduleTimer:(id)timer
{
  timerCopy = timer;
  if ([(NSHashTable *)self->_timers containsObject:timerCopy])
  {
    v5 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Timer already scheduled", &v14, 2u);
    }
  }

  v6 = qword_100021420;
  if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    identifier = [timerCopy identifier];
    v14 = 134218242;
    v15 = timerCopy;
    v16 = 2112;
    v17 = identifier;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "WakingTimerScheduler --- Scheduling timer (%p) with identifier: (%@)", &v14, 0x16u);
  }

  [(NSHashTable *)self->_timers addObject:timerCopy];
  v9 = [objc_opt_class() now];
  [timerCopy setStartTime:v9];
  startTime = [timerCopy startTime];
  [timerCopy delay];
  [timerCopy setEarliestFireTime:(startTime + v11 * 1000000000.0)];
  earliestFireTime = [timerCopy earliestFireTime];
  [timerCopy gracePeriod];
  [timerCopy setDeadline:(earliestFireTime + v13 * 1000000000.0)];
  [(WakingTimerScheduler *)self evaluateTimers:v9];
}

- (void)cancelTimer:(id)timer
{
  timerCopy = timer;
  v5 = qword_100021420;
  if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = timerCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "WakingTimerScheduler --- Cancelling timer (%p)", &v6, 0xCu);
  }

  [(NSHashTable *)self->_timers removeObject:timerCopy];
  if (self->_timerWithEarliestDeadline == timerCopy)
  {
    self->_timerWithEarliestDeadline = 0;
  }

  [(WakingTimerScheduler *)self evaluateTimers];
}

- (void)evaluateTimers
{
  if ([(NSHashTable *)self->_timers count])
  {
    v3 = [objc_opt_class() now];
  }

  else
  {
    v3 = 0;
  }

  [(WakingTimerScheduler *)self evaluateTimers:v3];
}

- (void)evaluateTimers:(unint64_t)timers
{
  allObjects = [(NSHashTable *)self->_timers allObjects];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = [allObjects countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v36;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(allObjects);
        }

        v11 = *(*(&v35 + 1) + 8 * i);
        if ([v11 earliestFireTime] < timers)
        {
          if (!v8)
          {
            v8 = objc_opt_new();
          }

          [v8 addObject:v11];
          [(NSHashTable *)self->_timers removeObject:v11];
        }
      }

      v7 = [allObjects countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  if ([v8 count])
  {
    v12 = sub_100008D28("com.apple.MagicSwitch.WakingTimerScheduler.Fire");
    v13 = +[MagicSwitchEnabler sharedInstance];
    workQueue = [v13 workQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000070D4;
    block[3] = &unk_100018698;
    v33 = v8;
    v34 = v12;
    dispatch_async(workQueue, block);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v15 = self->_timers;
  v16 = [(NSHashTable *)v15 countByEnumeratingWithState:&v28 objects:v39 count:16];
  if (!v16)
  {

LABEL_31:
    [(WakingTimerScheduler *)self clearDispatchTimer];
    [(WakingTimerScheduler *)self cancelScheduledWake];
    v18 = 0;
    goto LABEL_32;
  }

  v17 = v16;
  v26 = allObjects;
  v18 = 0;
  v19 = *v29;
  do
  {
    for (j = 0; j != v17; j = j + 1)
    {
      if (*v29 != v19)
      {
        objc_enumerationMutation(v15);
      }

      v21 = *(*(&v28 + 1) + 8 * j);
      if (v18)
      {
        deadline = [*(*(&v28 + 1) + 8 * j) deadline];
        if (deadline < [(WakingTimer *)v18 deadline])
        {
          v23 = v21;

          v18 = v23;
        }
      }

      else
      {
        v18 = v21;
      }
    }

    v17 = [(NSHashTable *)v15 countByEnumeratingWithState:&v28 objects:v39 count:16];
  }

  while (v17);

  allObjects = v26;
  if (!v18)
  {
    goto LABEL_31;
  }

  if (v18 != self->_timerWithEarliestDeadline)
  {
    [(WakingTimerScheduler *)self scheduleTimerWithEarliestDeadline:v18 now:timers];
  }

LABEL_32:
  if ([(NSHashTable *)self->_timers count])
  {
    if (!self->_requestedWakeDate)
    {
      v24 = qword_100021420;
      if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "No wake scheduled despite there being a timer", buf, 2u);
      }
    }

    if (!self->_dispatchTimerScheduled)
    {
      v25 = qword_100021420;
      if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Dispatch timer not running despite there being a timer", buf, 2u);
      }
    }
  }
}

- (void)scheduleTimerWithEarliestDeadline:(id)deadline now:(unint64_t)now
{
  deadlineCopy = deadline;
  v7 = [(WakingTimer *)deadlineCopy earliestFireTime]- now;
  [(WakingTimer *)deadlineCopy gracePeriod];
  v9 = (v8 * 1000000000.0);
  v10 = qword_100021420;
  if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134218496;
    v13 = deadlineCopy;
    v14 = 2048;
    v15 = v7 / 1000000000.0;
    v16 = 2048;
    v17 = v9 / 1000000000.0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "WakingTimerScheduler --- Scheduling wake for timer (%p) in (%.3f) sec with (%.3f) sec leeway", &v12, 0x20u);
  }

  v11 = dispatch_walltime(0, v7);
  dispatch_source_set_timer(self->_dispatchTimer, v11, 0xFFFFFFFFFFFFFFFFLL, v9);
  self->_dispatchTimerScheduled = 1;
  [(WakingTimer *)deadlineCopy gracePeriod];
  [(WakingTimerScheduler *)self scheduleWakeWithDelayBeforeFireTime:v7 gracePeriod:?];
  self->_timerWithEarliestDeadline = deadlineCopy;
}

- (void)clearDispatchTimer
{
  if (self->_dispatchTimerScheduled)
  {
    dispatch_source_set_timer(self->_dispatchTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    self->_dispatchTimerScheduled = 0;
  }
}

- (void)scheduleWakeWithDelayBeforeFireTime:(unint64_t)time gracePeriod:(double)period
{
  p_requestedWakeDate = &self->_requestedWakeDate;
  if (self->_requestedWakeDate)
  {
    [(WakingTimerScheduler *)self cancelScheduledWake];
  }

  v7 = [NSDate dateWithTimeIntervalSinceNow:(time / 0x3B9ACA00)];
  v8 = qword_100021420;
  if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEBUG))
  {
    v9 = v8;
    [v7 timeIntervalSinceNow];
    v16 = 134218240;
    v17 = v7;
    v18 = 2048;
    periodCopy = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "WakingTimerScheduler --- Scheduling wake for date (%p) in (%.3f) seconds", &v16, 0x16u);
  }

  v23[0] = v7;
  v22[0] = @"time";
  v22[1] = @"leeway";
  v11 = [NSNumber numberWithDouble:period];
  v22[2] = @"scheduledby";
  v23[1] = v11;
  v23[2] = @"com.apple.MagicSwitch.WakingTimerScheduler.IOPM";
  v12 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:3];

  v13 = IOPMRequestSysWake();
  if (v13)
  {
    v14 = v13;
    v15 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412802;
      v17 = v7;
      v18 = 2048;
      periodCopy = period;
      v20 = 1024;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "WakingTimerScheduler --- Failed to schedule wake at date (%@) with grace period (%f) with error: (%d)", &v16, 0x1Cu);
    }
  }

  else
  {
    objc_storeStrong(p_requestedWakeDate, v7);
  }
}

+ (void)cancelScheduledWake:(id)wake
{
  wakeCopy = wake;
  v4 = qword_100021420;
  if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEBUG))
  {
    v12 = 134217984;
    v13 = wakeCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "WakingTimerScheduler --- Cancelling wake for date: (%p)", &v12, 0xCu);
  }

  v5 = IOPMCancelScheduledPowerEvent(wakeCopy, @"com.apple.MagicSwitch.WakingTimerScheduler.IOPM", @"wake");
  if (v5)
  {
    v6 = v5;
    if (v5 == -536870160)
    {
      v7 = qword_100021420;
      if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = wakeCopy;
        v8 = "WakingTimerScheduler --- Failed to cancel wake for date (%@) with error: kIOReturnNotFound";
        v9 = v7;
        v10 = 12;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, &v12, v10);
      }
    }

    else
    {
      v11 = qword_100021420;
      if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412546;
        v13 = wakeCopy;
        v14 = 1024;
        v15 = v6;
        v8 = "WakingTimerScheduler --- Failed to cancel wake for date (%@) with error: (%d)";
        v9 = v11;
        v10 = 18;
        goto LABEL_9;
      }
    }
  }
}

- (void)cancelScheduledWake
{
  if (self->_requestedWakeDate)
  {
    [objc_opt_class() cancelScheduledWake:self->_requestedWakeDate];
    requestedWakeDate = self->_requestedWakeDate;
    self->_requestedWakeDate = 0;
  }
}

- (void)systemPowerChanged:(unsigned int)changed notificationID:(void *)d
{
  if (changed == -536870288 || (changed == -536870144 || changed == -536870272) && ([(WakingTimerScheduler *)self evaluateTimers], changed == -536870272))
  {
    v7 = IOAllowPowerChange(self->_systemPowerConnection, d);
    if (v7)
    {
      v8 = v7;
      v9 = qword_100021420;
      if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
      {
        v10[0] = 67109376;
        v10[1] = changed;
        v11 = 1024;
        v12 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "WakingTimerScheduler --- Failed allow Power change (%u) with error: (%d)", v10, 0xEu);
      }
    }
  }
}

@end