@interface _DASProgressTracker
+ (void)initialize;
- (BOOL)isStalled;
- (BOOL)isValidProgressUpdate:(id)a3;
- (NSDate)lastUpdateDate;
- (NSProgress)lastProgress;
- (_DASProgressTracker)initWithActivity:(id)a3;
- (_DASProgressTracker)initWithActivity:(id)a3 startingProgress:(id)a4;
- (double)computeInstantaneousProgressRate;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionForConfigurationField:(int64_t)a3;
- (id)descriptionForState:(int64_t)a3;
- (int64_t)health;
- (void)eventResultReceivedForEvent:(int64_t)a3 result:(int64_t)a4;
- (void)handleSlowBaselineROP;
- (void)handleSlowExtendedROP;
- (void)handleStalled;
- (void)processUpdate:(id)a3;
- (void)setHasReported:(BOOL)a3;
- (void)setLastProgress:(id)a3;
- (void)setLastUpdateDate:(id)a3;
- (void)transitionTo:(int64_t)a3;
- (void)unsafe_step;
- (void)unsafe_stepForBaselineDeviationMonitoring;
- (void)unsafe_stepForBaselineWarmup;
- (void)unsafe_stepForCompleted;
- (void)unsafe_stepForExpired;
- (void)unsafe_stepForStalled;
- (void)unsafe_stepForStart;
- (void)unsafe_stepForSteady;
@end

@implementation _DASProgressTracker

+ (void)initialize
{
  +[_DASConfig isiPad];
  qword_10020B290 = 0x3FE0000000000000;
  v2 = +[_DASConfig isiPad];
  v3 = 300.0;
  if (v2)
  {
    v3 = 600.0;
  }

  qword_10020B298 = *&v3;
  v4 = +[_DASConfig isiPad];
  v5 = 3600.0;
  if (v4)
  {
    v5 = 28800.0;
  }

  qword_10020B2A0 = *&v5;
}

- (_DASProgressTracker)initWithActivity:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = _DASProgressTracker;
  v6 = [(_DASProgressTracker *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_activity, a3);
    v7->_health = 0;
    v8 = +[NSProgress indeterminateProgress];
    lastProgress = v7->_lastProgress;
    v7->_lastProgress = v8;

    v7->_hasReported = 0;
    v7->_currentState = 0;
    v7->_baselineProgressRate = *&qword_10020B290 / (*&qword_10020B298 / 60.0);
    v7->_configurationField = [(_DASProgressTracker *)v7 loadConfigurationField];
    v10 = [[_DASProgressTrackerStrategyConstantDeviation alloc] initWithBaselineRateOfProgress:v7->_baselineProgressRate deviatedThresholdPercent:0.2 sustainedDeviationDurationSeconds:60.0];
    deviationStrategy = v7->_deviationStrategy;
    v7->_deviationStrategy = v10;

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.dasd.ProgressTracker", v12);
    stateQueue = v7->_stateQueue;
    v7->_stateQueue = v13;

    v15 = [_DASDaemonLogger logForCategory:@"ProgressTracker"];
    log = v7->_log;
    v7->_log = v15;
  }

  return v7;
}

- (_DASProgressTracker)initWithActivity:(id)a3 startingProgress:(id)a4
{
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = _DASProgressTracker;
  v9 = [(_DASProgressTracker *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_activity, a3);
    v10->_health = 0;
    objc_storeStrong(&v10->_lastProgress, a4);
    v11 = +[NSDate now];
    lastUpdateDate = v10->_lastUpdateDate;
    v10->_lastUpdateDate = v11;

    v10->_hasReported = 0;
    v10->_currentState = 0;
    v10->_baselineProgressRate = *&qword_10020B290 / (*&qword_10020B298 / 60.0);
    v10->_configurationField = [(_DASProgressTracker *)v10 loadConfigurationField];
    v13 = [[_DASProgressTrackerStrategyConstantDeviation alloc] initWithBaselineRateOfProgress:v10->_baselineProgressRate deviatedThresholdPercent:0.2 sustainedDeviationDurationSeconds:60.0];
    deviationStrategy = v10->_deviationStrategy;
    v10->_deviationStrategy = v13;

    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("com.apple.dasd.ProgressTracker", v15);
    stateQueue = v10->_stateQueue;
    v10->_stateQueue = v16;

    v18 = [_DASDaemonLogger logForCategory:@"ProgressTracker"];
    log = v10->_log;
    v10->_log = v18;
  }

  return v10;
}

- (void)processUpdate:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005B4A8;
  v7[3] = &unk_1001B56E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (void)eventResultReceivedForEvent:(int64_t)a3 result:(int64_t)a4
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    activity = self->_activity;
    v9 = log;
    v10 = [NSNumber numberWithInteger:a3];
    v11 = [NSNumber numberWithInteger:a4];
    v18 = 134218754;
    v19 = self;
    v20 = 2112;
    v21 = activity;
    v22 = 2112;
    v23 = v10;
    v24 = 2112;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%p:%@] Received event result %@ for %@", &v18, 0x2Au);
  }

  if (a4 == 2)
  {
    v12 = +[_DASDaemon sharedInstance];
    v13 = [NSSet setWithObject:self->_activity];
    [v12 cancelActivities:v13];
  }

  else
  {
    v14 = self->_log;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = self->_activity;
      v16 = v14;
      v17 = [NSNumber numberWithInteger:a4];
      v18 = 134218498;
      v19 = self;
      v20 = 2112;
      v21 = v15;
      v22 = 2112;
      v23 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%p:%@] Did not act on result: %@", &v18, 0x20u);
    }
  }
}

- (void)unsafe_step
{
  dispatch_assert_queue_V2(self->_stateQueue);
  p_currentState = &self->_currentState;
  currentState = self->_currentState;
  if (currentState <= 2)
  {
    if (currentState)
    {
      if (currentState == 1)
      {

        [(_DASProgressTracker *)self unsafe_stepForBaselineWarmup];
      }

      else
      {
        if (currentState != 2)
        {
LABEL_21:
          log = self->_log;
          if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
          {
            sub_1001201C0(p_currentState, log);
          }

          return;
        }

        [(_DASProgressTracker *)self unsafe_stepForBaselineDeviationMonitoring];
      }
    }

    else
    {

      [(_DASProgressTracker *)self unsafe_stepForStart];
    }
  }

  else
  {
    if (currentState <= 4)
    {
      if (currentState == 3)
      {

        [(_DASProgressTracker *)self unsafe_stepForSteady];
      }

      else
      {

        [(_DASProgressTracker *)self unsafe_stepForStalled];
      }

      return;
    }

    if (currentState != 5)
    {
      if (currentState == 6)
      {

        [(_DASProgressTracker *)self unsafe_stepForExpired];
        return;
      }

      goto LABEL_21;
    }

    [(_DASProgressTracker *)self unsafe_stepForCompleted];
  }
}

- (void)unsafe_stepForStart
{
  dispatch_assert_queue_V2(self->_stateQueue);
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100120270(self);
  }

  if ((self->_configurationField & 8) != 0)
  {
    v3 = 3;
  }

  else
  {
    v3 = 1;
  }

  [(_DASProgressTracker *)self transitionTo:v3];
}

- (void)unsafe_stepForBaselineWarmup
{
  dispatch_assert_queue_V2(self->_stateQueue);
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100120270(self);
  }

  if ([(_DASProgressTracker *)self isStalled])
  {
    [(_DASProgressTracker *)self handleStalled];
    v3 = self;
    v4 = 4;
LABEL_9:
    [(_DASProgressTracker *)v3 transitionTo:v4];
    return;
  }

  v5 = [(_DASActivity *)self->_activity startDate];
  v6 = [v5 haveNSecondsElapsed:*&qword_10020B298];

  if (v6)
  {
    [(_DASProgressTracker *)self computeInstantaneousProgressRate];
    if (v7 < self->_baselineProgressRate)
    {
      [(_DASProgressTracker *)self handleSlowBaselineROP];
    }

    v3 = self;
    v4 = 2;
    goto LABEL_9;
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_10012030C(self, &self->_activity, log);
  }
}

- (void)unsafe_stepForBaselineDeviationMonitoring
{
  dispatch_assert_queue_V2(self->_stateQueue);
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100120270(self);
  }

  if ([(_DASProgressTracker *)self isStalled])
  {
    [(_DASProgressTracker *)self handleStalled];
    v3 = 4;
LABEL_12:
    [(_DASProgressTracker *)self transitionTo:v3];
    return;
  }

  if (_os_feature_enabled_impl())
  {
    v4 = [(_DASActivity *)self->_activity startDate];
    v5 = [v4 haveNSecondsElapsed:*&qword_10020B2A0];

    if (v5)
    {
      [(_DASProgressTracker *)self handleExtendedDurationPrompt];
LABEL_11:
      v3 = 3;
      goto LABEL_12;
    }
  }

  deviationStrategy = self->_deviationStrategy;
  if (deviationStrategy && [(_DASProgressTrackerStrategy *)deviationStrategy isDeviated])
  {
    [(_DASProgressTracker *)self handleSlowExtendedROP];
    goto LABEL_11;
  }
}

- (void)unsafe_stepForSteady
{
  dispatch_assert_queue_V2(self->_stateQueue);
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100120270(self);
  }

  if ([(_DASProgressTracker *)self isStalled])
  {
    [(_DASProgressTracker *)self handleStalled];
    [(_DASProgressTracker *)self transitionTo:4];
  }
}

- (void)unsafe_stepForStalled
{
  dispatch_assert_queue_V2(self->_stateQueue);
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100120270(self);
  }
}

- (void)unsafe_stepForCompleted
{
  dispatch_assert_queue_V2(self->_stateQueue);
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100120270(self);
  }
}

- (void)unsafe_stepForExpired
{
  dispatch_assert_queue_V2(self->_stateQueue);
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100120270(self);
  }
}

- (void)transitionTo:(int64_t)a3
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    activity = self->_activity;
    v7 = log;
    v8 = [(_DASProgressTracker *)self descriptionForState:[(_DASProgressTracker *)self currentState]];
    v9 = [(_DASProgressTracker *)self descriptionForState:a3];
    v10 = 134218754;
    v11 = self;
    v12 = 2112;
    v13 = activity;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%p:%@] Performing transition: %@ -> %@", &v10, 0x2Au);
  }

  [(_DASProgressTracker *)self setCurrentState:a3];
}

- (void)handleSlowBaselineROP
{
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100120424(self);
  }

  deviationStrategy = self->_deviationStrategy;
  self->_configurationField |= 1uLL;
  [(_DASProgressTracker *)self computeInstantaneousProgressRate];
  [(_DASProgressTrackerStrategy *)deviationStrategy updateExpectedRate:?];
  v4 = +[_DASContinuedProcessingTaskUIClient sharedClient];
  v5 = [(_DASActivity *)self->_activity uuid];
  [v4 postActivityEvent:0 forIdentifier:v5];
}

- (void)handleSlowExtendedROP
{
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100120424(self);
  }

  deviationStrategy = self->_deviationStrategy;
  self->_configurationField |= 2uLL;
  self->_deviationStrategy = 0;

  v4 = +[_DASContinuedProcessingTaskUIClient sharedClient];
  v5 = [(_DASActivity *)self->_activity uuid];
  [v4 postActivityEvent:0 forIdentifier:v5];
}

- (double)computeInstantaneousProgressRate
{
  v3 = [(_DASActivity *)self->_activity startDate];
  [v3 timeIntervalSinceNow];
  v5 = fabs(v4) / 60.0;

  v6 = [(_DASProgressTracker *)self lastProgress];
  [v6 fractionCompleted];
  v8 = fmin(v7 / v5, 1.0);

  return v8;
}

- (BOOL)isStalled
{
  v3 = 30.0;
  if (!self->_hasReported)
  {
    v4 = [(_DASProgressTracker *)self lastProgress];
    v5 = [v4 isIndeterminate];

    if (v5)
    {
      v3 = 45.0;
    }

    else
    {
      v3 = 30.0;
    }
  }

  v6 = [(_DASProgressTracker *)self lastUpdateDate];
  [v6 timeIntervalSinceNow];
  v8 = fabs(v7) > v3;

  return v8;
}

- (void)handleStalled
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    sub_1001204D4(self, log);
  }

  self->_health = 2;
}

- (BOOL)isValidProgressUpdate:(id)a3
{
  v4 = a3;
  v5 = [(_DASProgressTracker *)self lastProgress];
  v6 = [v5 completedUnitCount];
  v7 = [v4 completedUnitCount];

  return v6 < v7;
}

- (int64_t)health
{
  v2 = self;
  objc_sync_enter(v2);
  if ([(_DASProgressTracker *)v2 isStalled]&& v2->_health != 2)
  {
    [(_DASProgressTracker *)v2 handleStalled];
  }

  health = v2->_health;
  objc_sync_exit(v2);

  return health;
}

- (void)setHasReported:(BOOL)a3
{
  if (!self->_hasReported)
  {
    self->_hasReported = a3;
  }
}

- (NSDate)lastUpdateDate
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_lastUpdateDate;
  objc_sync_exit(v2);

  return v3;
}

- (void)setLastUpdateDate:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  lastUpdateDate = obj->_lastUpdateDate;
  obj->_lastUpdateDate = v4;

  objc_sync_exit(obj);
}

- (NSProgress)lastProgress
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_lastProgress;
  objc_sync_exit(v2);

  return v3;
}

- (void)setLastProgress:(id)a3
{
  v7 = a3;
  if ([(_DASProgressTracker *)self isValidProgressUpdate:?])
  {
    v5 = self;
    objc_sync_enter(v5);
    objc_storeStrong(&v5->_lastProgress, a3);
    objc_sync_exit(v5);

    v6 = +[NSDate now];
    [(_DASProgressTracker *)v5 setLastUpdateDate:v6];

    [(_DASProgressTracker *)v5 setHasReported:1];
  }
}

- (id)descriptionForState:(int64_t)a3
{
  if (a3 >= 7)
  {
    v4 = [NSNumber numberWithInteger:?];
    v3 = [NSString stringWithFormat:@"Unknown (%@)", v4];
  }

  else
  {
    v3 = *(&off_1001B6960 + a3);
  }

  return v3;
}

- (id)descriptionForConfigurationField:(int64_t)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v5 = v4;
  if (v3)
  {
    [v4 addObject:@"FirstROPPrompt"];
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v5 addObject:@"SecondROPPrompt"];
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  [v5 addObject:@"ExtendedDurationPrompt"];
  if ((v3 & 8) != 0)
  {
LABEL_5:
    [v5 addObject:@"BypassROPPrompts"];
  }

LABEL_6:
  v6 = [v5 componentsJoinedByString:@" | "];
  v7 = [NSString stringWithFormat:@"[ %@ ]", v6];

  return v7;
}

- (id)description
{
  activity = self->_activity;
  v4 = [(_DASProgressTracker *)self lastProgress];
  v5 = [(_DASProgressTracker *)self descriptionForState:self->_currentState];
  v6 = [(_DASProgressTracker *)self descriptionForConfigurationField:self->_configurationField];
  v7 = [NSString stringWithFormat:@"<_DASProgressTracker [%p:%@] %@, State: %@, ConfigurationField: %@>", self, activity, v4, v5, v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_DASProgressTracker alloc];
  activity = self->_activity;
  v6 = [(_DASProgressTracker *)self lastProgress];
  v7 = [v6 copy];
  v8 = [(_DASProgressTracker *)v4 initWithActivity:activity startingProgress:v7];

  [(_DASProgressTracker *)v8 setHealth:self->_health];
  [(_DASProgressTracker *)v8 setCurrentState:self->_currentState];
  [(_DASProgressTracker *)v8 setConfigurationField:self->_configurationField];
  [(_DASProgressTracker *)v8 setHasReported:self->_hasReported];
  return v8;
}

@end