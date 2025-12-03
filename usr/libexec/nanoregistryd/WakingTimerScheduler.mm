@interface WakingTimerScheduler
+ (id)sharedInstance;
+ (id)timerQueue;
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

- (void)clearDispatchTimer
{
  if (self->_dispatchTimerScheduled)
  {
    dispatch_source_set_timer(self->_dispatchTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    self->_dispatchTimerScheduled = 0;
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

+ (id)timerQueue
{
  if (qword_1001B3888 != -1)
  {
    sub_100100C60();
  }

  v3 = qword_1001B3880;

  return v3;
}

- (WakingTimerScheduler)init
{
  v38.receiver = self;
  v38.super_class = WakingTimerScheduler;
  v2 = [(WakingTimerScheduler *)&v38 init];
  if (v2)
  {
    v3 = [NSHashTable hashTableWithOptions:0];
    v4 = *(v2 + 3);
    *(v2 + 3) = v3;

    v5 = +[WakingTimerScheduler timerQueue];
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v5);
    v7 = *(v2 + 5);
    *(v2 + 5) = v6;

    v8 = *(v2 + 5);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10006F6D8;
    handler[3] = &unk_100175660;
    v9 = v2;
    v37 = v9;
    dispatch_source_set_event_handler(v8, handler);
    dispatch_source_set_timer(*(v2 + 5), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_activate(*(v2 + 5));
    out_token = 0;
    v10 = +[WakingTimerScheduler timerQueue];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10006F774;
    v33[3] = &unk_1001759E8;
    v11 = v9;
    v34 = v11;
    v12 = notify_register_dispatch("com.apple.system.timezone", &out_token, v10, v33);

    if (v12)
    {
      v13 = nr_daemon_log();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

      if (v14)
      {
        v15 = nr_daemon_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v40 = v12;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Failed to register observer for the time zone change notification with status: (%u)", buf, 8u);
        }
      }
    }

    v16 = +[WakingTimerScheduler timerQueue];
    v28 = _NSConcreteStackBlock;
    v29 = 3221225472;
    v30 = sub_10006F810;
    v31 = &unk_1001759E8;
    v17 = v11;
    v32 = v17;
    v18 = notify_register_dispatch("com.apple.system.clock_set", &out_token, v16, &v28);

    if (v18)
    {
      v19 = nr_daemon_log();
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

      if (v20)
      {
        v21 = nr_daemon_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v40 = v18;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Failed to register observer for the system clock change notification with status: (%u)", buf, 8u);
        }
      }
    }

    v22 = IORegisterForSystemPower(v17, v17 + 7, j__objc_msgSend_systemPowerChanged_notificationID_, v17 + 4);
    *(v17 + 3) = v22;
    if (v22)
    {
      v23 = *(v17 + 7);
      v24 = [WakingTimerScheduler timerQueue:v28];
      IONotificationPortSetDispatchQueue(v23, v24);
    }

    else
    {
      v26 = nr_daemon_log();
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);

      if (!v27)
      {
        goto LABEL_15;
      }

      v24 = nr_daemon_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Failed to register for Power events!", buf, 2u);
      }
    }

LABEL_15:
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006F94C;
  block[3] = &unk_1001756A8;
  block[4] = self;
  if (qword_1001B3898 != -1)
  {
    dispatch_once(&qword_1001B3898, block);
  }

  v2 = qword_1001B3890;

  return v2;
}

- (void)scheduleTimer:(id)timer
{
  timerCopy = timer;
  v5 = +[WakingTimerScheduler timerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006FA3C;
  v7[3] = &unk_100175598;
  v8 = timerCopy;
  selfCopy = self;
  v6 = timerCopy;
  dispatch_async(v5, v7);
}

- (void)cancelTimer:(id)timer
{
  timerCopy = timer;
  v5 = +[WakingTimerScheduler timerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006FC78;
  v7[3] = &unk_100175598;
  v8 = timerCopy;
  selfCopy = self;
  v6 = timerCopy;
  dispatch_sync(v5, v7);
}

- (void)evaluateTimers:(unint64_t)timers
{
  selfCopy = self;
  allObjects = [(NSHashTable *)self->_timers allObjects];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = [allObjects countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v32;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(allObjects);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        if ([v11 earliestFireTime] < timers)
        {
          if (!v8)
          {
            v8 = objc_opt_new();
          }

          [v8 addObject:v11];
          [(NSHashTable *)selfCopy->_timers removeObject:v11];
        }
      }

      v7 = [allObjects countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  if ([v8 count])
  {
    v12 = sub_1000DF61C("com.apple.NanoRegistry.WakingTimerScheduler.Fire");
    v13 = +[WakingTimerScheduler timerQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000700EC;
    block[3] = &unk_100178048;
    v29 = v8;
    v30 = v12;
    dispatch_async(v13, block);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = selfCopy->_timers;
  v15 = [(NSHashTable *)v14 countByEnumeratingWithState:&v24 objects:v35 count:16];
  if (!v15)
  {

LABEL_31:
    [(WakingTimerScheduler *)selfCopy clearDispatchTimer];
    [(WakingTimerScheduler *)selfCopy cancelScheduledWake];
    v17 = 0;
    goto LABEL_32;
  }

  v16 = v15;
  v23 = selfCopy;
  v17 = 0;
  v18 = *v25;
  do
  {
    for (j = 0; j != v16; j = j + 1)
    {
      if (*v25 != v18)
      {
        objc_enumerationMutation(v14);
      }

      v20 = *(*(&v24 + 1) + 8 * j);
      if (v17)
      {
        deadline = [*(*(&v24 + 1) + 8 * j) deadline];
        if (deadline < [(WakingTimer *)v17 deadline])
        {
          v22 = v20;

          v17 = v22;
        }
      }

      else
      {
        v17 = v20;
      }
    }

    v16 = [(NSHashTable *)v14 countByEnumeratingWithState:&v24 objects:v35 count:16];
  }

  while (v16);

  selfCopy = v23;
  if (!v17)
  {
    goto LABEL_31;
  }

  if (v17 != v23->_timerWithEarliestDeadline)
  {
    [(WakingTimerScheduler *)v23 scheduleTimerWithEarliestDeadline:v17 now:timers];
  }

LABEL_32:
  [(NSHashTable *)selfCopy->_timers count];
}

- (void)scheduleTimerWithEarliestDeadline:(id)deadline now:(unint64_t)now
{
  deadlineCopy = deadline;
  v7 = [(WakingTimer *)deadlineCopy earliestFireTime]- now;
  [(WakingTimer *)deadlineCopy gracePeriod];
  v9 = (v8 * 1000000000.0);
  v10 = nr_daemon_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = nr_daemon_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134218496;
      v15 = deadlineCopy;
      v16 = 2048;
      v17 = v7 / 1000000000.0;
      v18 = 2048;
      v19 = v9 / 1000000000.0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Scheduling wake for timer (%p) in (%.3f) sec with (%.3f) sec leeway", &v14, 0x20u);
    }
  }

  v13 = dispatch_walltime(0, v7);
  dispatch_source_set_timer(self->_dispatchTimer, v13, 0xFFFFFFFFFFFFFFFFLL, v9);
  self->_dispatchTimerScheduled = 1;
  [(WakingTimer *)deadlineCopy gracePeriod];
  [(WakingTimerScheduler *)self scheduleWakeWithDelayBeforeFireTime:v7 gracePeriod:?];
  self->_timerWithEarliestDeadline = deadlineCopy;
}

- (void)scheduleWakeWithDelayBeforeFireTime:(unint64_t)time gracePeriod:(double)period
{
  if (self->_requestedWakeDate)
  {
    [(WakingTimerScheduler *)self cancelScheduledWake];
  }

  v7 = [NSDate dateWithTimeIntervalSinceNow:(time / 0x3B9ACA00)];
  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      [v7 timeIntervalSinceNow];
      v20 = 134218240;
      v21 = v7;
      v22 = 2048;
      periodCopy = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Scheduling wake for date (%p) in (%.3f) seconds", &v20, 0x16u);
    }
  }

  v27[0] = v7;
  v26[0] = @"time";
  v26[1] = @"leeway";
  v12 = [NSNumber numberWithDouble:period];
  v26[2] = @"scheduledby";
  v27[1] = v12;
  v27[2] = @"com.apple.NanoRegistry.WakingTimerScheduler.IOPM";
  v13 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:3];

  v14 = IOPMRequestSysWake();
  if (!v14)
  {
    v19 = v7;
    p_super = &self->_requestedWakeDate->super;
    self->_requestedWakeDate = v19;
LABEL_12:

    goto LABEL_13;
  }

  v15 = v14;
  v16 = nr_daemon_log();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

  if (v17)
  {
    p_super = nr_daemon_log();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412802;
      v21 = v7;
      v22 = 2048;
      periodCopy = period;
      v24 = 1024;
      v25 = v15;
      _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEFAULT, "Failed to schedule wake at date (%@) with grace period (%f) with error: (%d)", &v20, 0x1Cu);
    }

    goto LABEL_12;
  }

LABEL_13:
}

+ (void)cancelScheduledWake:(id)wake
{
  wakeCopy = wake;
  v4 = nr_daemon_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = nr_daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134217984;
      v18 = wakeCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Cancelling wake for date: (%p)", &v17, 0xCu);
    }
  }

  v7 = IOPMCancelScheduledPowerEvent(wakeCopy, @"com.apple.NanoRegistry.WakingTimerScheduler.IOPM", @"wake");
  if (v7)
  {
    v8 = v7;
    if (v7 == -536870160)
    {
      v9 = nr_daemon_log();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

      if (v10)
      {
        v11 = nr_daemon_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 138412290;
          v18 = wakeCopy;
          v12 = "Failed to cancel wake for date (%@) with error: kIOReturnNotFound";
          v13 = v11;
          v14 = 12;
LABEL_13:
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, &v17, v14);
          goto LABEL_14;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v15 = nr_daemon_log();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

      if (v16)
      {
        v11 = nr_daemon_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 138412546;
          v18 = wakeCopy;
          v19 = 1024;
          v20 = v8;
          v12 = "Failed to cancel wake for date (%@) with error: (%d)";
          v13 = v11;
          v14 = 18;
          goto LABEL_13;
        }

LABEL_14:
      }
    }
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
      v9 = nr_daemon_log();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

      if (v10)
      {
        v11 = nr_daemon_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12[0] = 67109376;
          v12[1] = changed;
          v13 = 1024;
          v14 = v8;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Failed allow Power change (%u) with error: (%d)", v12, 0xEu);
        }
      }
    }
  }
}

@end