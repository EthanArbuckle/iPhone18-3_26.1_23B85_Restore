@interface _DASPLLogger
+ (id)sharedInstance;
- (BOOL)activityExemptedFromSafeguards:(id)safeguards;
- (BOOL)didCoalesceWithPrevious:(id)previous;
- (BOOL)shouldLogActivity:(id)activity;
- (BOOL)shouldLogAppPrediction:(id)prediction;
- (BOOL)shouldLogPrediction:(id)prediction;
- (_DASPLLogger)init;
- (double)newDurationForStartDates:(id)dates withPreviousDurations:(id)durations;
- (id)commaDelimitedEntriesFrom:(id)from;
- (id)createRecordFromActivity:(id)activity;
- (id)getCurrentBootSessionUUID;
- (id)getValuesFromTimeline:(id)timeline valueMultiplier:(id)multiplier;
- (void)logActivities;
- (void)logDailyActivities;
- (void)logPredictions;
- (void)recordActivity:(id)activity;
- (void)recordActivityLifeCycleEnd:(id)end;
- (void)recordActivityLifeCycleStart:(id)start;
- (void)recordActivityLifeCycleSuspend:(id)suspend;
- (void)recordAppPrediction:(id)prediction app:(id)app;
- (void)recordCAEventsForActivity:(id)activity withParams:(id)params;
- (void)reportEndScheduledIntensiveWork:(id)work;
- (void)reportStartScheduledIntensiveWork:(id)work;
- (void)resetTriggerReport;
- (void)sendAnalyticsEventForStream:(id)stream withActivity:(id)activity withMetricValueKey:(id)key withMetricValue:(id)value;
- (void)setupTimers;
- (void)updateDataDurationWithTrigger:(id)trigger andState:(BOOL)state;
- (void)updateEnergyDurationWithTrigger:(id)trigger andState:(BOOL)state;
@end

@implementation _DASPLLogger

+ (id)sharedInstance
{
  if (qword_10020B960 != -1)
  {
    sub_100009CBC();
  }

  v3 = qword_10020B968;

  return v3;
}

- (_DASPLLogger)init
{
  v44.receiver = self;
  v44.super_class = _DASPLLogger;
  v2 = [(_DASPLLogger *)&v44 init];
  if (!v2)
  {
LABEL_13:
    v25 = v2;
    goto LABEL_14;
  }

  v3 = dlopen_preflight("/System/Library/PrivateFrameworks/PowerLog.framework/PowerLog");
  v2->_powerLogExists = v3;
  if (v3)
  {
    v2->_taskCount = 0;
    v2->_droppedCount = 0;
    v2->_eventsCoalesced = 0;
    v4 = +[NSDate distantPast];
    lastCoalesced = v2->_lastCoalesced;
    v2->_lastCoalesced = v4;

    v6 = +[NSMutableArray array];
    activities = v2->_activities;
    v2->_activities = v6;

    v8 = +[NSMutableDictionary dictionary];
    predictions = v2->_predictions;
    v2->_predictions = v8;

    v10 = +[NSMutableDictionary dictionary];
    appPredictions = v2->_appPredictions;
    v2->_appPredictions = v10;

    v12 = +[NSMutableDictionary dictionary];
    multiplier = v2->_multiplier;
    v2->_multiplier = v12;

    v2->_lock._os_unfair_lock_opaque = 0;
    v14 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.duetactivityscheduler"];
    defaults = v2->_defaults;
    v2->_defaults = v14;

    v16 = +[NSMutableDictionary dictionary];
    triggerReport = v2->_triggerReport;
    v2->_triggerReport = v16;

    v18 = [NSArray arrayWithObjects:off_10020ACC0, off_10020ACC8, off_10020ACD0, off_10020ACD8, 0];
    triggers = v2->_triggers;
    v2->_triggers = v18;

    [(_DASPLLogger *)v2 resetTriggerReport];
    off_10020ACC0 = [NSString stringWithFormat:@"%@Available", off_10020ACC0];
    v21 = [(NSMutableDictionary *)v2->_triggerReport objectForKeyedSubscript:off_10020ACC0];
    if (v21)
    {
      v22 = [(NSMutableDictionary *)v2->_triggerReport objectForKeyedSubscript:off_10020ACC0];
      bOOLValue = [v22 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    [(_DASPLLogger *)v2 logToPowerLogTrigger:off_10020ACC0 withStatus:bOOLValue];
    off_10020ACC8 = [NSString stringWithFormat:@"%@Available", off_10020ACC8];

    v27 = [(NSMutableDictionary *)v2->_triggerReport objectForKeyedSubscript:off_10020ACC8];
    if (v27)
    {
      v28 = [(NSMutableDictionary *)v2->_triggerReport objectForKeyedSubscript:off_10020ACC8];
      bOOLValue2 = [v28 BOOLValue];
    }

    else
    {
      bOOLValue2 = 0;
    }

    [(_DASPLLogger *)v2 logToPowerLogTrigger:off_10020ACC8 withStatus:bOOLValue2];
    [(_DASPLLogger *)v2 setupTimers];
    *buf = 0;
    syncQueue = v2->_syncQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100112FCC;
    handler[3] = &unk_1001B5B78;
    v31 = v2;
    v43 = v31;
    notify_register_dispatch("com.apple.dasd.plloger.logActivities", buf, syncQueue, handler);
    v32 = +[NSMutableDictionary dictionary];
    activityToLifeCycle = v31->_activityToLifeCycle;
    v31->_activityToLifeCycle = v32;

    v34 = +[NSMutableDictionary dictionary];
    cpuIntensiveProcessToActivityCount = v31->_cpuIntensiveProcessToActivityCount;
    v31->_cpuIntensiveProcessToActivityCount = v34;

    v36 = objc_alloc_init(SafeguardsManagingClient);
    safeguardsManagingClient = v31->_safeguardsManagingClient;
    v31->_safeguardsManagingClient = v36;

    v38 = dispatch_get_global_queue(0, 0);
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_100112FD4;
    v40[3] = &unk_1001B5B78;
    v41 = v31;
    notify_register_dispatch("PLPowerExceptionsExemptionsSyncNotification", buf, v38, v40);

    goto LABEL_13;
  }

  v24 = [_DASDaemonLogger logForCategory:@"PowerLog"];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v46 = "/System/Library/PrivateFrameworks/PowerLog.framework/PowerLog";
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Powerlog library at %s does not exist", buf, 0xCu);
  }

  v25 = 0;
LABEL_14:

  return v25;
}

- (void)setupTimers
{
  uTF8String = [@"com.apple.duetactivityschedulerpowerlog.hourlysyncqueue" UTF8String];
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create(uTF8String, v4);
  syncQueue = self->_syncQueue;
  self->_syncQueue = v5;

  v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_syncQueue);
  shortPeriodTimer = self->_shortPeriodTimer;
  self->_shortPeriodTimer = v7;

  v9 = self->_shortPeriodTimer;
  dispatch_set_qos_class_fallback();
  v10 = self->_shortPeriodTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100113480;
  handler[3] = &unk_1001B5668;
  handler[4] = self;
  dispatch_source_set_event_handler(v10, handler);
  v11 = self->_shortPeriodTimer;
  v12 = dispatch_walltime(0, 817405952);
  dispatch_source_set_timer(v11, v12, 0x34630B8A000uLL, 0x45D964B800uLL);
  dispatch_resume(self->_shortPeriodTimer);
  v13 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_syncQueue);
  longPeriodTimer = self->_longPeriodTimer;
  self->_longPeriodTimer = v13;

  v15 = self->_longPeriodTimer;
  dispatch_set_qos_class_fallback();
  v16 = self->_longPeriodTimer;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100113488;
  v33[3] = &unk_1001B5668;
  v33[4] = self;
  dispatch_source_set_event_handler(v16, v33);
  v17 = self->_longPeriodTimer;
  v18 = dispatch_walltime(0, -1025343488);
  dispatch_source_set_timer(v17, v18, 0xD18C2E28000uLL, 0x45D964B800uLL);
  dispatch_resume(self->_longPeriodTimer);
  v19 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_syncQueue);
  dailyPeriodTimer = self->_dailyPeriodTimer;
  self->_dailyPeriodTimer = v19;

  v21 = [(NSUserDefaults *)self->_defaults objectForKey:@"nextTriggerReport"];

  defaults = self->_defaults;
  if (v21)
  {
    [(NSUserDefaults *)self->_defaults doubleForKey:@"nextTriggerReport"];
    v23 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    [v23 timeIntervalSinceNow];
    v24 = 0.0;
    if (v25 > 0.0)
    {
      [v23 timeIntervalSinceNow];
      v24 = v26;
    }
  }

  else
  {
    v24 = 86400.0;
    v23 = [NSDate dateWithTimeIntervalSinceNow:86400.0];
    [v23 timeIntervalSinceReferenceDate];
    [(NSUserDefaults *)defaults setDouble:@"nextTriggerReport" forKey:?];
  }

  v27 = [_DASDaemonLogger logForCategory:@"PowerLog"];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = [NSNumber numberWithDouble:v24 / 60.0];
    *buf = 138412290;
    v36 = v28;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Will report in %@ minutes", buf, 0xCu);
  }

  v29 = self->_dailyPeriodTimer;
  v30 = dispatch_walltime(0, (v24 * 1000000000.0));
  dispatch_source_set_timer(v29, v30, 0x4E94914F0000uLL, 0x45D964B800uLL);
  v31 = self->_dailyPeriodTimer;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100113490;
  v32[3] = &unk_1001B5668;
  v32[4] = self;
  dispatch_source_set_event_handler(v31, v32);
  dispatch_activate(self->_dailyPeriodTimer);
}

- (id)getCurrentBootSessionUUID
{
  size = 0;
  sysctlbyname("kern.bootsessionuuid", 0, &size, 0, 0);
  v2 = malloc_type_malloc(size, 0x100004077774924uLL);
  sysctlbyname("kern.bootsessionuuid", v2, &size, 0, 0);
  v3 = [NSString stringWithUTF8String:v2];
  free(v2);

  return v3;
}

- (void)resetTriggerReport
{
  v3 = [(NSUserDefaults *)self->_defaults objectForKey:@"triggerReport"];
  getCurrentBootSessionUUID = [(_DASPLLogger *)self getCurrentBootSessionUUID];
  v5 = [(NSUserDefaults *)self->_defaults stringForKey:@"lastBootUUID"];
  v6 = [_DASDaemonLogger logForCategory:@"PowerLog"];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v33 = getCurrentBootSessionUUID;
    v34 = 2112;
    v35 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Current Boot UUID is %@, Previous was %@", buf, 0x16u);
  }

  v25 = getCurrentBootSessionUUID;
  v26 = v3;
  v24 = v5;
  if (v3 && [getCurrentBootSessionUUID isEqualToString:v5])
  {
    [(NSMutableDictionary *)self->_triggerReport setDictionary:v3];
  }

  else
  {
    [(NSUserDefaults *)self->_defaults setObject:getCurrentBootSessionUUID forKey:@"lastBootUUID"];
    [(NSMutableDictionary *)self->_triggerReport removeAllObjects];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = self->_triggers;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    do
    {
      v11 = 0;
      do
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v27 + 1) + 8 * v11);
        if ([v12 isEqualToString:off_10020ACC0])
        {
          v13 = +[_CDClientContext userContext];
          v14 = +[_CDContextQueries keyPathForEnergyBudgetRemainingStatus];
          v15 = [v13 objectForKeyedSubscript:v14];
          bOOLValue = [v15 BOOLValue];

LABEL_19:
          goto LABEL_20;
        }

        if ([v12 isEqualToString:off_10020ACC8])
        {
          v13 = +[_CDClientContext userContext];
          v17 = +[_CDContextQueries keyPathForNetworkingBudgetRemainingStatus];
LABEL_18:
          v18 = v17;
          v19 = [v13 objectForKeyedSubscript:v17];
          bOOLValue = [v19 BOOLValue];

          goto LABEL_19;
        }

        if ([v12 isEqualToString:off_10020ACD0])
        {
          v13 = +[_CDClientContext userContext];
          v17 = +[_CDContextQueries keyPathForPluginStatus];
          goto LABEL_18;
        }

        if ([v12 isEqualToString:off_10020ACD8])
        {
          v13 = +[_CDClientContext userContext];
          bOOLValue = [_CDNetworkContext wifiQuality:v13]> 20;
          goto LABEL_19;
        }

        bOOLValue = 1;
LABEL_20:
        v20 = [NSString stringWithFormat:@"%@Available", v12, v24, v25, v26, v27];
        v21 = [(NSMutableDictionary *)self->_triggerReport objectForKeyedSubscript:v20];
        bOOLValue2 = [v21 BOOLValue];

        if (bOOLValue != bOOLValue2)
        {
          [(_DASPLLogger *)self reportNewStatus:bOOLValue forTrigger:v12];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v23 = [(NSArray *)v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
      v9 = v23;
    }

    while (v23);
  }

  [(NSUserDefaults *)self->_defaults setObject:self->_triggerReport forKey:@"triggerReport"];
}

- (void)logDailyActivities
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  AnalyticsSendEventLazy();
  defaults = selfCopy->_defaults;
  v4 = [NSDate dateWithTimeIntervalSinceNow:86400.0];
  [v4 timeIntervalSinceReferenceDate];
  [(NSUserDefaults *)defaults setDouble:@"nextTriggerReport" forKey:?];

  [(_DASPLLogger *)selfCopy resetTriggerReport];
  objc_sync_exit(selfCopy);
}

- (double)newDurationForStartDates:(id)dates withPreviousDurations:(id)durations
{
  datesCopy = dates;
  [durations doubleValue];
  v7 = v6;
  if ([datesCopy count])
  {
    lastObject = [datesCopy lastObject];
    [lastObject timeIntervalSinceNow];
    v10 = v9;

    if (v10 < 0.0)
    {
      v7 = v7 - v10;
    }
  }

  return v7;
}

- (void)updateEnergyDurationWithTrigger:(id)trigger andState:(BOOL)state
{
  stateCopy = state;
  triggerCopy = trigger;
  bOOLValue = stateCopy;
  if (([triggerCopy isEqualToString:off_10020ACC0] & 1) == 0)
  {
    v7 = [(NSMutableDictionary *)self->_triggerReport objectForKeyedSubscript:@"energyAvailable"];
    bOOLValue = [v7 BOOLValue];
  }

  if (([triggerCopy isEqualToString:off_10020ACD0] & 1) == 0)
  {
    v8 = [(NSMutableDictionary *)self->_triggerReport objectForKeyedSubscript:@"pluginAvailable"];
    stateCopy = [v8 BOOLValue];
  }

  if ((stateCopy & bOOLValue & 1) == 0)
  {
    v9 = [NSString stringWithFormat:@"%@ActualUnavailableStartDates", @"energy"];
    v10 = [NSString stringWithFormat:@"%@ActualUnavailableDuration", @"energy"];
    v11 = [(NSMutableDictionary *)self->_triggerReport objectForKeyedSubscript:v9];
    if (v11)
    {
      v12 = [(NSMutableDictionary *)self->_triggerReport objectForKeyedSubscript:v9];
      v13 = [v12 mutableCopy];
    }

    else
    {
      v13 = +[NSMutableArray array];
    }

    if (bOOLValue == stateCopy)
    {
      if ((stateCopy | bOOLValue))
      {
        v19 = 0;
LABEL_15:
        [v13 addObject:v19];
        [(NSMutableDictionary *)self->_triggerReport setObject:v13 forKeyedSubscript:v9];

        goto LABEL_16;
      }

      v18 = +[NSDate date];
    }

    else
    {
      v14 = [(NSMutableDictionary *)self->_triggerReport objectForKeyedSubscript:v10];
      [(_DASPLLogger *)self newDurationForStartDates:v13 withPreviousDurations:v14];
      v16 = v15;

      v17 = [NSNumber numberWithDouble:v16];
      [(NSMutableDictionary *)self->_triggerReport setObject:v17 forKeyedSubscript:v10];

      v18 = +[NSDate distantFuture];
    }

    v19 = v18;
    goto LABEL_15;
  }

LABEL_16:
}

- (void)updateDataDurationWithTrigger:(id)trigger andState:(BOOL)state
{
  stateCopy = state;
  triggerCopy = trigger;
  bOOLValue = stateCopy;
  if (([triggerCopy isEqualToString:off_10020ACC8] & 1) == 0)
  {
    v7 = [(NSMutableDictionary *)self->_triggerReport objectForKeyedSubscript:@"dataAvailable"];
    bOOLValue = [v7 BOOLValue];
  }

  if (([triggerCopy isEqualToString:off_10020ACD8] & 1) == 0)
  {
    v8 = [(NSMutableDictionary *)self->_triggerReport objectForKeyedSubscript:@"wifiAvailable"];
    stateCopy = [v8 BOOLValue];
  }

  if ((stateCopy & bOOLValue & 1) == 0)
  {
    v9 = [NSString stringWithFormat:@"%@ActualUnavailableStartDates", @"data"];
    v10 = [NSString stringWithFormat:@"%@ActualUnavailableDuration", @"data"];
    v11 = [(NSMutableDictionary *)self->_triggerReport objectForKeyedSubscript:v9];
    if (v11)
    {
      v12 = [(NSMutableDictionary *)self->_triggerReport objectForKeyedSubscript:v9];
      v13 = [v12 mutableCopy];
    }

    else
    {
      v13 = +[NSMutableArray array];
    }

    if (bOOLValue == stateCopy)
    {
      if ((stateCopy | bOOLValue))
      {
        v19 = 0;
LABEL_15:
        [v13 addObject:v19];
        [(NSMutableDictionary *)self->_triggerReport setObject:v13 forKeyedSubscript:v9];

        goto LABEL_16;
      }

      v18 = +[NSDate date];
    }

    else
    {
      v14 = [(NSMutableDictionary *)self->_triggerReport objectForKeyedSubscript:v10];
      [(_DASPLLogger *)self newDurationForStartDates:v13 withPreviousDurations:v14];
      v16 = v15;

      v17 = [NSNumber numberWithDouble:v16];
      [(NSMutableDictionary *)self->_triggerReport setObject:v17 forKeyedSubscript:v10];

      v18 = +[NSDate distantFuture];
    }

    v19 = v18;
    goto LABEL_15;
  }

LABEL_16:
}

- (void)logActivities
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = +[_DASDaemon sharedInstance];
  submittedTaskCount = [v4 submittedTaskCount];

  v13[0] = @"queuedTasks";
  v6 = [NSNumber numberWithUnsignedInteger:submittedTaskCount];
  v13[1] = @"eventsCoalesced";
  v14[0] = v6;
  v7 = [NSNumber numberWithInt:self->_eventsCoalesced];
  v14[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];

  v9 = objc_autoreleasePoolPush();
  v10 = self->_activities;
  objc_sync_enter(v10);
  [v3 setObject:self->_activities forKeyedSubscript:@"dasTasks"];
  v11 = [NSNumber numberWithInt:self->_droppedCount];
  [v3 setObject:v11 forKeyedSubscript:@"droppedCount"];

  v12 = [_DASDaemonLogger logForCategory:@"powerlog"];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_10012D9F8(v3, v12);
  }

  PLLogRegisteredEvent();
  PLLogRegisteredEvent();
  [(NSMutableArray *)self->_activities removeAllObjects];
  self->_taskCount = 0;
  self->_droppedCount = 0;
  self->_eventsCoalesced = 0;
  objc_sync_exit(v10);

  objc_autoreleasePoolPop(v9);
}

- (void)logPredictions
{
  v3 = objc_autoreleasePoolPush();
  v4 = +[NSMutableDictionary dictionary];
  v5 = +[NSMutableArray array];
  v6 = self->_predictions;
  objc_sync_enter(v6);
  predictions = self->_predictions;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100114EA4;
  v17[3] = &unk_1001B8F10;
  v17[4] = self;
  v8 = v4;
  v18 = v8;
  [(NSMutableDictionary *)predictions enumerateKeysAndObjectsUsingBlock:v17];
  v9 = [(NSMutableDictionary *)self->_predictions count];
  [(NSMutableDictionary *)self->_predictions removeAllObjects];

  objc_sync_exit(v6);
  v10 = self->_appPredictions;
  objc_sync_enter(v10);
  appPredictions = self->_appPredictions;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100114F58;
  v14[3] = &unk_1001B8F38;
  v14[4] = self;
  v15 = &off_1001CA9F0;
  v12 = v5;
  v16 = v12;
  [(NSMutableDictionary *)appPredictions enumerateKeysAndObjectsUsingBlock:v14];
  v13 = [(NSMutableDictionary *)self->_appPredictions count];
  [(NSMutableDictionary *)self->_appPredictions removeAllObjects];
  self->_appPredictionCount = 0;

  objc_sync_exit(v10);
  [v8 setObject:v12 forKeyedSubscript:@"applicationUsagePrediction"];
  if (v9 | v13)
  {
    PLLogRegisteredEvent();
  }

  objc_autoreleasePoolPop(v3);
}

- (BOOL)didCoalesceWithPrevious:(id)previous
{
  previousCopy = previous;
  if ([previousCopy requiresNetwork])
  {
    v5 = self->_lastCoalesced;
    objc_sync_enter(v5);
    startDate = [previousCopy startDate];
    if (startDate)
    {
      startDate2 = [previousCopy startDate];
      [startDate2 timeIntervalSinceDate:self->_lastCoalesced];
      v9 = v8 < 10.0;
    }

    else
    {
      v9 = 0;
    }

    startDate3 = [previousCopy startDate];
    lastCoalesced = self->_lastCoalesced;
    self->_lastCoalesced = startDate3;

    objc_sync_exit(v5);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)shouldLogActivity:(id)activity
{
  activityCopy = activity;
  startDate = [activityCopy startDate];
  if (startDate)
  {
    v6 = +[NSDate date];
    startDate2 = [activityCopy startDate];
    [v6 timeIntervalSinceDate:startDate2];
    v10 = v8 > 5.0 && (v9 = [activityCopy schedulingPriority], v9 < _DASSchedulingPriorityUserInitiated) && self->_taskCount < 100;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)shouldLogPrediction:(id)prediction
{
  if (!prediction)
  {
    return 0;
  }

  startDate = [prediction startDate];
  [startDate timeIntervalSinceNow];
  v5 = v4 <= 64800.0;

  return v5;
}

- (BOOL)shouldLogAppPrediction:(id)prediction
{
  if (self->_appPredictionCount > 19)
  {
    return 0;
  }

  else
  {
    return [(_DASPLLogger *)self shouldLogPrediction:prediction];
  }
}

- (void)recordActivity:(id)activity
{
  activityCopy = activity;
  if (activityCopy)
  {
    v7 = activityCopy;
    v5 = self->_activities;
    objc_sync_enter(v5);
    if ([(_DASPLLogger *)self shouldLogActivity:v7])
    {
      v6 = [(_DASPLLogger *)self createRecordFromActivity:v7];
      [(NSMutableArray *)self->_activities addObject:v6];
      ++self->_taskCount;
    }

    else
    {
      ++self->_droppedCount;
    }

    if ([(_DASPLLogger *)self didCoalesceWithPrevious:v7])
    {
      ++self->_eventsCoalesced;
    }

    objc_sync_exit(v5);

    activityCopy = v7;
  }
}

- (id)getValuesFromTimeline:(id)timeline valueMultiplier:(id)multiplier
{
  timelineCopy = timeline;
  multiplierCopy = multiplier;
  v8 = objc_autoreleasePoolPush();
  [multiplierCopy doubleValue];
  v10 = v9;
  v11 = [NSDate dateWithTimeIntervalSinceNow:14400.0];
  v12 = [_DASPredictionManager getValuesForPrediction:timelineCopy tillEndDate:v11 withIntervals:900.0];

  if (v12)
  {
    v13 = [NSMutableArray arrayWithArray:v12];
    if ([v13 count])
    {
      v14 = 0;
      do
      {
        v15 = [v13 objectAtIndexedSubscript:v14];
        intValue = [v15 intValue];

        if (intValue != -1)
        {
          v17 = [v13 objectAtIndexedSubscript:v14];
          [v17 doubleValue];
          v19 = [(_DASPLLogger *)self numberFromDouble:v10 * v18];
          [v13 setObject:v19 atIndexedSubscript:v14];
        }

        ++v14;
      }

      while (v14 < [v13 count]);
    }
  }

  else
  {
    v13 = 0;
  }

  objc_autoreleasePoolPop(v8);

  return v13;
}

- (void)recordAppPrediction:(id)prediction app:(id)app
{
  predictionCopy = prediction;
  appCopy = app;
  if ([(_DASPLLogger *)self shouldLogAppPrediction:predictionCopy])
  {
    v7 = self->_appPredictions;
    objc_sync_enter(v7);
    [(NSMutableDictionary *)self->_appPredictions setObject:predictionCopy forKeyedSubscript:appCopy];
    ++self->_appPredictionCount;
    objc_sync_exit(v7);
  }
}

- (id)commaDelimitedEntriesFrom:(id)from
{
  fromCopy = from;
  if ([fromCopy count])
  {
    v4 = [fromCopy sortedArrayUsingSelector:"caseInsensitiveCompare:"];
    firstObject = [v4 firstObject];
    v6 = [NSMutableString stringWithString:firstObject];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if (([v12 isEqualToString:firstObject] & 1) == 0)
          {
            v13 = [NSString stringWithFormat:@", %@", v12];
            [v6 appendString:v13];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)createRecordFromActivity:(id)activity
{
  activityCopy = activity;
  v5 = +[NSDate date];
  startDate = [activityCopy startDate];
  [v5 timeIntervalSinceDate:startDate];
  v8 = v7;

  v9 = +[NSMutableDictionary dictionary];
  name = [activityCopy name];
  [v9 setObject:name forKeyedSubscript:@"taskName"];

  v11 = -[_DASPLLogger numberFromDouble:](self, "numberFromDouble:", [activityCopy schedulingPriority]);
  [v9 setObject:v11 forKeyedSubscript:@"priority"];

  startAfter = [activityCopy startAfter];
  [v9 setObject:startAfter forKeyedSubscript:@"startTime"];

  startDate2 = [activityCopy startDate];
  [v9 setObject:startDate2 forKeyedSubscript:@"timeWhenRun"];

  startBefore = [activityCopy startBefore];
  [v9 setObject:startBefore forKeyedSubscript:@"endTime"];

  v15 = [(_DASPLLogger *)self numberFromDouble:v8];
  [v9 setObject:v15 forKeyedSubscript:@"duration"];

  [activityCopy predictedOptimalScore];
  v17 = [(_DASPLLogger *)self numberFromDouble:v16 * 100.0];
  [v9 setObject:v17 forKeyedSubscript:@"optimalScore"];

  v18 = activityCopy;
  objc_sync_enter(v18);
  policyResponseMetadata = [v18 policyResponseMetadata];
  v20 = [policyResponseMetadata objectForKeyedSubscript:@"scoreWhenRun"];

  if (v20)
  {
    [v20 score];
    v22 = v21;
    v23 = [(_DASPLLogger *)self numberFromDouble:v21 * 100.0];
    [v9 setObject:v23 forKeyedSubscript:@"scoreWhenRun"];

    policyResponseMetadata2 = [v18 policyResponseMetadata];
    [policyResponseMetadata2 removeObjectForKey:@"scoreWhenRun"];
  }

  else
  {
    v22 = -1.0;
    [v9 setObject:&off_1001CAA08 forKeyedSubscript:@"scoreWhenRun"];
  }

  objc_sync_exit(v18);
  [v18 predictedOptimalScore];
  v26 = [(_DASPLLogger *)self numberFromDouble:v22 / v25 * 100.0];
  [v9 setObject:v26 forKeyedSubscript:@"optimalScorePercentage"];

  if ([v18 requiresPlugin])
  {
    v27 = &__kCFBooleanTrue;
  }

  else
  {
    v27 = &__kCFBooleanFalse;
  }

  [v9 setObject:v27 forKeyedSubscript:@"requiresPlugin"];
  if ([v18 requiresInexpensiveNetworking])
  {
    v28 = &__kCFBooleanTrue;
  }

  else
  {
    v28 = &__kCFBooleanFalse;
  }

  [v9 setObject:v28 forKeyedSubscript:@"requiresInexpensiveNetworking"];
  if ([v18 transferSize])
  {
    v29 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v18 transferSize]);
    [v9 setObject:v29 forKeyedSubscript:@"networkTaskSize"];
  }

  if ([v18 requiresDeviceInactivity])
  {
    v30 = &__kCFBooleanTrue;
  }

  else
  {
    v30 = &__kCFBooleanFalse;
  }

  [v9 setObject:v30 forKeyedSubscript:@"requiresDeviceInactivity"];
  if ([v18 cpuIntensive])
  {
    v31 = &__kCFBooleanTrue;
  }

  else
  {
    v31 = &__kCFBooleanFalse;
  }

  [v9 setObject:v31 forKeyedSubscript:@"isCpuIntensive"];
  if ([v18 memoryIntensive])
  {
    v32 = &__kCFBooleanTrue;
  }

  else
  {
    v32 = &__kCFBooleanFalse;
  }

  [v9 setObject:v32 forKeyedSubscript:@"isMemoryIntensive"];
  if ([v18 aneIntensive])
  {
    v33 = &__kCFBooleanTrue;
  }

  else
  {
    v33 = &__kCFBooleanFalse;
  }

  [v9 setObject:v33 forKeyedSubscript:@"isANEIntensive"];
  if ([v18 gpuIntensive])
  {
    v34 = &__kCFBooleanTrue;
  }

  else
  {
    v34 = &__kCFBooleanFalse;
  }

  [v9 setObject:v34 forKeyedSubscript:@"isGPUIntensive"];
  bundleId = [v18 bundleId];

  if (bundleId)
  {
    bundleId2 = [v18 bundleId];
    [v9 setObject:bundleId2 forKeyedSubscript:@"bundleID"];
  }

  relatedApplications = [v18 relatedApplications];
  v38 = [(_DASPLLogger *)self commaDelimitedEntriesFrom:relatedApplications];

  if (v38)
  {
    [v9 setObject:v38 forKeyedSubscript:@"application"];
  }

  involvedProcesses = [v18 involvedProcesses];
  v40 = [(_DASPLLogger *)self commaDelimitedEntriesFrom:involvedProcesses];

  if (v40)
  {
    [v9 setObject:v40 forKeyedSubscript:@"involvedProcesses"];
  }

  v41 = v18;
  objc_sync_enter(v41);
  policyResponseMetadata3 = [v41 policyResponseMetadata];
  v43 = [policyResponseMetadata3 count];

  if (v43)
  {
    policyResponseMetadata4 = [v41 policyResponseMetadata];
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_100115E28;
    v46[3] = &unk_1001B8F80;
    v47 = v9;
    selfCopy = self;
    [policyResponseMetadata4 enumerateKeysAndObjectsUsingBlock:v46];
  }

  objc_sync_exit(v41);

  return v9;
}

- (void)recordActivityLifeCycleStart:(id)start
{
  startCopy = start;
  v5 = startCopy;
  if (startCopy)
  {
    v6 = [startCopy pid];
    if (v6)
    {
      v7 = v6;
      v8 = [_DASUtils processNameFromPID:v6];
      if (![(__CFString *)v8 length])
      {
        v9 = [_DASDaemonLogger logForCategory:@"powerlog"];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          LODWORD(v20[0]) = 67109378;
          DWORD1(v20[0]) = v7;
          WORD4(v20[0]) = 2114;
          *(v20 + 10) = v5;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Failed to resolve process name for PID %d for activity %{public}@", v20, 0x12u);
        }
      }

      os_unfair_lock_lock(&self->_lock);
      v10 = +[NSMutableDictionary dictionary];
      v11 = [NSNumber numberWithUnsignedLongLong:[(_DASPLLogger *)self uptime]];
      [v10 setObject:v11 forKeyedSubscript:@"UptimeAtStart"];

      v12 = +[NSDate now];
      [v10 setObject:v12 forKeyedSubscript:@"WalltimeAtStart"];

      v13 = [NSNumber numberWithInt:v7];
      [v10 setObject:v13 forKeyedSubscript:@"PID"];

      [v10 setObject:v8 forKeyedSubscript:@"ProcessName"];
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
      memset(v20, 0, sizeof(v20));
      if (!proc_pid_rusage(v7, 6, v20))
      {
        v14 = [NSNumber numberWithUnsignedLongLong:*(&v21 + 1)];
        [v10 setObject:v14 forKeyedSubscript:@"BilledEnergyAtStart"];
      }

      activityToLifeCycle = self->_activityToLifeCycle;
      v16 = [v5 description];
      [(NSMutableDictionary *)activityToLifeCycle setObject:v10 forKeyedSubscript:v16];

      if ([(_DASPLLogger *)self activityExemptedFromSafeguards:v5]&& [(__CFString *)v8 length])
      {
        v17 = +[NSMutableArray array];
        [v17 addObject:v8];
        involvedProcesses = [v5 involvedProcesses];

        if (involvedProcesses)
        {
          involvedProcesses2 = [v5 involvedProcesses];
          [v17 addObjectsFromArray:involvedProcesses2];
        }

        [(_DASPLLogger *)self reportStartScheduledIntensiveWork:v17];
      }

      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      v10 = [_DASDaemonLogger logForCategory:@"powerlog"];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        LODWORD(v20[0]) = 138543362;
        *(v20 + 4) = v5;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "No PID for activity %{public}@", v20, 0xCu);
      }

      v8 = &stru_1001BA3C0;
    }
  }
}

- (void)recordActivityLifeCycleSuspend:(id)suspend
{
  suspendCopy = suspend;
  if (suspendCopy)
  {
    v26 = suspendCopy;
    os_unfair_lock_lock(&self->_lock);
    activityToLifeCycle = self->_activityToLifeCycle;
    v6 = [v26 description];
    v7 = [(NSMutableDictionary *)activityToLifeCycle objectForKeyedSubscript:v6];

    v8 = &stru_1001BA3C0;
    if (v7)
    {
      v9 = [NSNumber numberWithUnsignedLongLong:[(_DASPLLogger *)self uptime]];
      v10 = self->_activityToLifeCycle;
      v11 = [v26 description];
      v12 = [(NSMutableDictionary *)v10 objectForKeyedSubscript:v11];
      [v12 setObject:v9 forKeyedSubscript:@"UptimeAtSuspension"];

      v13 = +[NSDate now];
      v14 = self->_activityToLifeCycle;
      v15 = [v26 description];
      v16 = [(NSMutableDictionary *)v14 objectForKeyedSubscript:v15];
      [v16 setObject:v13 forKeyedSubscript:@"WalltimeAtSuspension"];

      v17 = self->_activityToLifeCycle;
      v18 = [v26 description];
      v19 = [(NSMutableDictionary *)v17 objectForKeyedSubscript:v18];
      v20 = [v19 objectForKeyedSubscript:@"ProcessName"];
      v21 = v20;
      if (v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = &stru_1001BA3C0;
      }

      v8 = v22;
    }

    os_unfair_lock_unlock(&self->_lock);
    if ([(_DASPLLogger *)self activityExemptedFromSafeguards:v26]&& [(__CFString *)v8 length])
    {
      v23 = +[NSMutableArray array];
      [v23 addObject:v8];
      involvedProcesses = [v26 involvedProcesses];

      if (involvedProcesses)
      {
        involvedProcesses2 = [v26 involvedProcesses];
        [v23 addObjectsFromArray:involvedProcesses2];
      }

      [(_DASPLLogger *)self reportEndScheduledIntensiveWork:v23];
    }

    suspendCopy = v26;
  }
}

- (void)recordActivityLifeCycleEnd:(id)end
{
  endCopy = end;
  if (endCopy)
  {
    os_unfair_lock_lock(&self->_lock);
    activityToLifeCycle = self->_activityToLifeCycle;
    v6 = [endCopy description];
    v7 = [(NSMutableDictionary *)activityToLifeCycle objectForKeyedSubscript:v6];

    if (v7)
    {
      v8 = [v7 objectForKeyedSubscript:@"PID"];
      intValue = [v8 intValue];

      v10 = [v7 objectForKeyedSubscript:@"ProcessName"];
      v11 = v10;
      v12 = &stru_1001BA3C0;
      if (v10)
      {
        v12 = v10;
      }

      v79 = v12;

      v13 = [v7 objectForKeyedSubscript:@"UptimeAtStart"];
      unsignedLongValue = [v13 unsignedLongValue];

      v82 = [v7 objectForKeyedSubscript:@"WalltimeAtStart"];
      v15 = [v7 objectForKeyedSubscript:@"UptimeAtSuspension"];
      unsignedLongValue2 = [v15 unsignedLongValue];

      v83 = [v7 objectForKeyedSubscript:@"WalltimeAtSuspension"];
      v17 = [v7 objectForKeyedSubscript:@"BilledEnergyAtStart"];
      unsignedLongValue3 = [v17 unsignedLongValue];

      if (intValue && unsignedLongValue3)
      {
        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        *buffer = 0u;
        proc_pid_rusage(intValue, 6, buffer);
      }

      v19 = self->_activityToLifeCycle;
      v20 = [endCopy description];
      [(NSMutableDictionary *)v19 removeObjectForKey:v20];

      if (!v83 && -[_DASPLLogger activityExemptedFromSafeguards:](self, "activityExemptedFromSafeguards:", endCopy) && [v80 length])
      {
        v21 = +[NSMutableArray array];
        [v21 addObject:v80];
        involvedProcesses = [endCopy involvedProcesses];

        if (involvedProcesses)
        {
          involvedProcesses2 = [endCopy involvedProcesses];
          [v21 addObjectsFromArray:involvedProcesses2];
        }

        [(_DASPLLogger *)self reportEndScheduledIntensiveWork:v21];
      }

      os_unfair_lock_unlock(&self->_lock);
      v81 = +[NSDate date];
      startDate = [endCopy startDate];
      startBefore = [endCopy startBefore];
      [startDate timeIntervalSinceDate:startBefore];
      v27 = v26;

      v28 = +[NSMutableDictionary dictionary];
      name = [endCopy name];
      [v28 setObject:name forKeyedSubscript:@"Name"];

      v30 = -[_DASPLLogger numberFromDouble:](self, "numberFromDouble:", [endCopy schedulingPriority]);
      [v28 setObject:v30 forKeyedSubscript:@"Priority"];

      v31 = [NSNumber numberWithInt:intValue];
      [v28 setObject:v31 forKeyedSubscript:@"PID"];

      [v28 setObject:v80 forKeyedSubscript:@"ProcessName"];
      groupName = [endCopy groupName];
      [v28 setObject:groupName forKeyedSubscript:@"GroupName"];

      [v28 setObject:v82 forKeyedSubscript:@"StartDate"];
      [v28 setObject:v81 forKeyedSubscript:@"EndDate"];
      [v81 timeIntervalSinceDate:v82];
      v34 = v33;
      v35 = (([(_DASPLLogger *)self uptime]- unsignedLongValue) / 0x3B9ACA00uLL);
      if (v34 < v35)
      {
        v35 = v34;
      }

      v36 = [NSNumber numberWithUnsignedLongLong:fmax(v35, 0.0)];
      [v28 setObject:v36 forKeyedSubscript:@"Duration"];

      if (v83)
      {
        [v28 setObject:v83 forKeyedSubscript:@"SuspendRequestDate"];
        0x3B9ACA00uLL = [NSNumber numberWithUnsignedLongLong:([(_DASPLLogger *)self uptime]- unsignedLongValue2) / 0x3B9ACA00uLL];
        [v28 setObject:0x3B9ACA00uLL forKeyedSubscript:@"SuspensionDelay"];

        v38 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [endCopy lastDenialValue]);
        [v28 setObject:v38 forKeyedSubscript:@"SuspensionReason"];
      }

      startAfter = [endCopy startAfter];
      [v28 setObject:startAfter forKeyedSubscript:@"ScheduleAfterDate"];

      startBefore2 = [endCopy startBefore];
      [v28 setObject:startBefore2 forKeyedSubscript:@"ScheduleBeforeDate"];

      v41 = [NSNumber numberWithBool:v27 > 5.0];
      [v28 setObject:v41 forKeyedSubscript:@"BeyondDeadline"];

      [endCopy interval];
      v42 = [(_DASPLLogger *)self numberFromDouble:?];
      [v28 setObject:v42 forKeyedSubscript:@"Interval"];

      fileProtection = [endCopy fileProtection];
      v44 = [fileProtection description];
      [v28 setObject:v44 forKeyedSubscript:@"FileProtection"];

      v45 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [endCopy cpuIntensive]);
      [v28 setObject:v45 forKeyedSubscript:@"IsCPUIntensive"];

      v46 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [endCopy memoryIntensive]);
      [v28 setObject:v46 forKeyedSubscript:@"IsMemoryIntensive"];

      v47 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [endCopy aneIntensive]);
      [v28 setObject:v47 forKeyedSubscript:@"IsANEIntensive"];

      v48 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [endCopy gpuIntensive]);
      [v28 setObject:v48 forKeyedSubscript:@"IsGPUIntensive"];

      v49 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [endCopy requiresPlugin]);
      [v28 setObject:v49 forKeyedSubscript:@"RequiresPlugin"];

      v50 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [endCopy requiresNetwork]);
      [v28 setObject:v50 forKeyedSubscript:@"RequiresNetwork"];

      v51 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [endCopy requiresInexpensiveNetworking]);
      [v28 setObject:v51 forKeyedSubscript:@"RequiresInexpensiveNetworking"];

      v52 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [endCopy requiresUnconstrainedNetworking]);
      [v28 setObject:v52 forKeyedSubscript:@"RequiresUnconstrainedNetworking"];

      v53 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [endCopy requiresDeviceInactivity]);
      [v28 setObject:v53 forKeyedSubscript:@"RequiresDeviceInactivity"];

      v54 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [endCopy requiresSignificantUserInactivity]);
      [v28 setObject:v54 forKeyedSubscript:@"RequiresSignificantUserInactivity"];

      v55 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [endCopy triggersRestart]);
      [v28 setObject:v55 forKeyedSubscript:@"TriggersRestart"];

      [v28 setObject:&off_1001CA9C0 forKeyedSubscript:@"Energy"];
      v56 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [endCopy transferSize]);
      [v28 setObject:v56 forKeyedSubscript:@"NetworkTaskSize"];

      [endCopy predictedOptimalScore];
      v58 = [(_DASPLLogger *)self numberFromDouble:v57 * 100.0];
      [v28 setObject:v58 forKeyedSubscript:@"OptimalScore"];

      limitationResponse = [endCopy limitationResponse];
      v60 = [limitationResponse count];

      if (v60)
      {
        limitationResponse2 = [endCopy limitationResponse];
        v62 = [_DASLimiterResponse bitmaskFromResponses:limitationResponse2];

        v63 = [NSNumber numberWithUnsignedInteger:v62];
        [v28 setObject:v63 forKeyedSubscript:@"Limitations"];
      }

      v64 = endCopy;
      objc_sync_enter(v64);
      policyResponseMetadata = [v64 policyResponseMetadata];
      v66 = [policyResponseMetadata objectForKeyedSubscript:@"scoreWhenRun"];

      if (v66)
      {
        [v66 score];
        v68 = v67;
        v69 = [(_DASPLLogger *)self numberFromDouble:v67 * 100.0];
        [v28 setObject:v69 forKeyedSubscript:@"ScoreWhenRun"];
      }

      else
      {
        v68 = -1.0;
        [v28 setObject:&off_1001CAA08 forKeyedSubscript:@"ScoreWhenRun"];
      }

      objc_sync_exit(v64);
      [v64 predictedOptimalScore];
      v71 = [(_DASPLLogger *)self numberFromDouble:v68 / v70 * 100.0];
      [v28 setObject:v71 forKeyedSubscript:@"OptimalScorePercentage"];

      bundleId = [v64 bundleId];

      if (bundleId)
      {
        bundleId2 = [v64 bundleId];
        [v28 setObject:bundleId2 forKeyedSubscript:@"BundleID"];
      }

      relatedApplications = [v64 relatedApplications];
      v75 = [(_DASPLLogger *)self commaDelimitedEntriesFrom:relatedApplications];

      if (v75)
      {
        [v28 setObject:v75 forKeyedSubscript:@"Application"];
      }

      involvedProcesses3 = [v64 involvedProcesses];
      v77 = [(_DASPLLogger *)self commaDelimitedEntriesFrom:involvedProcesses3];

      if (v77)
      {
        [v28 setObject:v77 forKeyedSubscript:@"InvolvedProcesses"];
      }

      v78 = [_DASDaemonLogger logForCategory:@"powerlog"];
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
      {
        sub_10012DA70(v28, v78);
      }

      PLLogRegisteredEvent();
      [(_DASPLLogger *)self recordCAEventsForActivity:v64 withParams:v28];
    }

    else
    {
      os_unfair_lock_unlock(&self->_lock);
    }
  }
}

- (void)recordCAEventsForActivity:(id)activity withParams:(id)params
{
  activityCopy = activity;
  paramsCopy = params;
  startDate = [activityCopy startDate];
  startBefore = [activityCopy startBefore];
  [startDate timeIntervalSinceDate:startBefore];
  v10 = v9;

  v11 = [NSNumber numberWithInteger:v10 & ~(v10 >> 63)];
  [(_DASPLLogger *)self sendAnalyticsEventForStream:@"com.apple.dasd.metrics.starvation_durations" withActivity:activityCopy withMetricValueKey:@"TimeInSeconds" withMetricValue:v11];

  v12 = [paramsCopy objectForKeyedSubscript:@"Duration"];
  intValue = [v12 intValue];

  v14 = [NSNumber numberWithInteger:intValue];
  [(_DASPLLogger *)self sendAnalyticsEventForStream:@"com.apple.dasd.metrics.runtime_durations" withActivity:activityCopy withMetricValueKey:@"TimeInSeconds" withMetricValue:v14];

  suspendRequestDate = [activityCopy suspendRequestDate];

  if (suspendRequestDate)
  {
    [(_DASPLLogger *)self sendAnalyticsEventForStream:@"com.apple.dasd.metrics.suspension_count" withActivity:activityCopy withMetricValueKey:@"Occurrences" withMetricValue:&off_1001CA9D8];
  }

  v16 = [paramsCopy objectForKeyedSubscript:@"BeyondDeadline"];
  bOOLValue = [v16 BOOLValue];

  if (bOOLValue)
  {
    [(_DASPLLogger *)self sendAnalyticsEventForStream:@"com.apple.dasd.metrics.starvation_count" withActivity:activityCopy withMetricValueKey:@"Occurrences" withMetricValue:&off_1001CA9D8];
  }

  [(_DASPLLogger *)self sendAnalyticsEventForStream:@"com.apple.dasd.metrics.run_count" withActivity:activityCopy withMetricValueKey:@"Occurrences" withMetricValue:&off_1001CA9D8];
}

- (void)sendAnalyticsEventForStream:(id)stream withActivity:(id)activity withMetricValueKey:(id)key withMetricValue:(id)value
{
  activityCopy = activity;
  keyCopy = key;
  valueCopy = value;
  streamCopy = stream;
  v13 = +[_DASActivity prettySchedulingPriorityDescription:](_DASActivity, "prettySchedulingPriorityDescription:", [activityCopy schedulingPriority]);
  fileProtection = [activityCopy fileProtection];
  v15 = +[_DASFileProtection complete];
  v16 = [fileProtection isEqual:v15];

  if (v16)
  {
    v17 = @"Fa";
  }

  else
  {
    fileProtection2 = [activityCopy fileProtection];
    v19 = +[_DASFileProtection completeUnlessOpen];
    v20 = [fileProtection2 isEqual:v19];

    if (v20)
    {
      v17 = @"Fb";
    }

    else
    {
      fileProtection3 = [activityCopy fileProtection];
      v22 = +[_DASFileProtection none];
      v23 = [fileProtection3 isEqual:v22];

      if (v23)
      {
        v17 = @"-";
      }

      else
      {
        v17 = @"Fc";
      }
    }
  }

  +[_DASTrialManager sharedInstance];
  v29 = v13;
  v30 = activityCopy;
  v31 = v17;
  v32 = keyCopy;
  v34 = v33 = valueCopy;
  v24 = v34;
  v25 = valueCopy;
  v26 = keyCopy;
  v27 = activityCopy;
  v28 = v13;
  AnalyticsSendEventLazy();
}

- (void)reportStartScheduledIntensiveWork:(id)work
{
  workCopy = work;
  obj = self->_cpuIntensiveProcessToActivityCount;
  objc_sync_enter(obj);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = workCopy;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  v7 = v5;
  if (!v6)
  {
    goto LABEL_13;
  }

  v8 = 0;
  v9 = *v19;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v19 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v18 + 1) + 8 * i);
      v12 = [(NSMutableDictionary *)self->_cpuIntensiveProcessToActivityCount objectForKeyedSubscript:v11];

      cpuIntensiveProcessToActivityCount = self->_cpuIntensiveProcessToActivityCount;
      if (v12)
      {
        v14 = [(NSMutableDictionary *)cpuIntensiveProcessToActivityCount objectForKeyedSubscript:v11];
        v15 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v14 intValue] + 1);
        [(NSMutableDictionary *)self->_cpuIntensiveProcessToActivityCount setObject:v15 forKeyedSubscript:v11];
      }

      else
      {
        [(NSMutableDictionary *)cpuIntensiveProcessToActivityCount setObject:&off_1001CA9D8 forKeyedSubscript:v11];
        v8 = 1;
      }
    }

    v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v6);

  if (v8)
  {
    allKeys = [(NSMutableDictionary *)self->_cpuIntensiveProcessToActivityCount allKeys];
    v7 = [NSSet setWithArray:allKeys];

    [(SafeguardsManagingClient *)self->_safeguardsManagingClient reportScheduledIntensiveWorkByProcesses:v7];
LABEL_13:
  }

  objc_sync_exit(obj);
}

- (void)reportEndScheduledIntensiveWork:(id)work
{
  workCopy = work;
  obj = self->_cpuIntensiveProcessToActivityCount;
  objc_sync_enter(obj);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = workCopy;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  v7 = v5;
  if (!v6)
  {
    goto LABEL_17;
  }

  v8 = 0;
  v9 = *v20;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v20 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v19 + 1) + 8 * i);
      v12 = [(NSMutableDictionary *)self->_cpuIntensiveProcessToActivityCount objectForKeyedSubscript:v11];

      if (v12)
      {
        v13 = [(NSMutableDictionary *)self->_cpuIntensiveProcessToActivityCount objectForKeyedSubscript:v11];
        if ([v13 intValue] >= 1)
        {
          v14 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v13 intValue] - 1);
          intValue = [v14 intValue];
          cpuIntensiveProcessToActivityCount = self->_cpuIntensiveProcessToActivityCount;
          if (intValue < 1)
          {
            [(NSMutableDictionary *)cpuIntensiveProcessToActivityCount removeObjectForKey:v11];
            v8 = 1;
          }

          else
          {
            [(NSMutableDictionary *)cpuIntensiveProcessToActivityCount setObject:v14 forKeyedSubscript:v11];
          }
        }
      }
    }

    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v6);

  if (v8)
  {
    allKeys = [(NSMutableDictionary *)self->_cpuIntensiveProcessToActivityCount allKeys];
    v7 = [NSSet setWithArray:allKeys];

    [(SafeguardsManagingClient *)self->_safeguardsManagingClient reportScheduledIntensiveWorkByProcesses:v7];
LABEL_17:
  }

  objc_sync_exit(obj);
}

- (BOOL)activityExemptedFromSafeguards:(id)safeguards
{
  safeguardsCopy = safeguards;
  if ([safeguardsCopy isIntensive])
  {
    v4 = 1;
  }

  else
  {
    fastPass = [safeguardsCopy fastPass];
    if (fastPass)
    {
      v4 = 1;
    }

    else
    {
      fileProtection = [safeguardsCopy fileProtection];
      v7 = +[_DASFileProtection complete];
      if (fileProtection == v7)
      {
        v4 = 1;
      }

      else
      {
        v8 = +[_DASRuntimeLimiter sharedLimiter];
        [v8 maximumRuntimeForActivity:safeguardsCopy];
        v4 = v9 == -1.0;
      }
    }
  }

  return v4;
}

@end