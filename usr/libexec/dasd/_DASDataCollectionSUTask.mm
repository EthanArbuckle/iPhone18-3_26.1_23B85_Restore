@interface _DASDataCollectionSUTask
+ (id)taskWithName:(id)a3 intervalDuration:(double)a4 withLogger:(id)a5;
- (BOOL)isEligibleNow;
- (_DASDataCollectionSUTask)initWithName:(id)a3 intervalDuration:(double)a4 withLogger:(id)a5;
- (void)addExperimentInformationWithDictionary:(id)a3;
- (void)evaluateActivityOnTick;
- (void)evaluatePolicies;
- (void)handleTaskExpiration;
- (void)handleTaskExpirationNeverEligible;
- (void)markAsCompleted;
- (void)reportBlockersOnEvaluation:(id)a3;
- (void)reportBlockersStatisticsOnExpiration;
- (void)reportSuccessOnEvaluation;
- (void)reportTaskBecomingEligible;
- (void)reportTaskExpiration;
- (void)resetCurrentEligibilityWindow;
- (void)setCurrentEligibilityWindowEnd;
- (void)setCurrentEligibilityWindowStart;
@end

@implementation _DASDataCollectionSUTask

- (_DASDataCollectionSUTask)initWithName:(id)a3 intervalDuration:(double)a4 withLogger:(id)a5
{
  v8 = a3;
  v9 = a5;
  v32.receiver = self;
  v32.super_class = _DASDataCollectionSUTask;
  v10 = [(_DASDataCollectionSUTask *)&v32 init];
  if (v10)
  {
    v11 = _DASSchedulingPriorityUtility;
    v12 = _DASActivityDurationShort;
    v13 = +[NSDate date];
    v14 = +[NSDate date];
    v15 = [v14 dateByAddingTimeInterval:86400.0];
    v16 = [_DASActivity activityWithName:v8 priority:v11 duration:v12 startingAfter:v13 startingBefore:v15];
    v17 = *(v10 + 3);
    *(v10 + 3) = v16;

    [*(v10 + 3) setTriggersRestart:1];
    *(v10 + 2) = a4;
    objc_storeStrong(v10 + 9, a5);
    *(v10 + 4) = 0;
    v18 = +[NSMutableSet set];
    v19 = *(v10 + 7);
    *(v10 + 7) = v18;

    v20 = +[NSMutableSet set];
    v21 = *(v10 + 8);
    *(v10 + 8) = v20;

    v22 = +[_DASDaemon sharedInstance];
    v23 = [v22 evaluationQueue];
    v24 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v23);
    v25 = *(v10 + 1);
    *(v10 + 1) = v24;

    v26 = *(v10 + 1);
    v27 = dispatch_walltime(0, (*(v10 + 2) * 1000000000.0));
    dispatch_source_set_timer(v26, v27, (*(v10 + 2) * 1000000000.0), 0x3B9ACA00uLL);
    v28 = *(v10 + 1);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000B3240;
    handler[3] = &unk_1001B5668;
    v31 = v10;
    dispatch_source_set_event_handler(v28, handler);
    dispatch_activate(*(v10 + 1));
  }

  return v10;
}

+ (id)taskWithName:(id)a3 intervalDuration:(double)a4 withLogger:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[a1 alloc] initWithName:v9 intervalDuration:v8 withLogger:a4];

  return v10;
}

- (BOOL)isEligibleNow
{
  v3 = +[_DASDaemon sharedInstance];
  v4 = [_DASSmartPowerNapMonitor sharedMonitorWithDaemon:v3];

  v5 = [v4 inSmartPowerNap];
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
  {
    sub_10012865C(v5, logger);
  }

  return v5;
}

- (void)evaluateActivityOnTick
{
  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
  {
    sub_1001286D8();
  }

  if (self->_currentEligibilityState == 1)
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
    {
      sub_10012870C();
    }

    [(_DASDataCollectionSUTask *)self evaluatePolicies];
  }

  v3 = [(_DASDataCollectionSUTask *)self isEligibleNow];
  currentEligibilityState = self->_currentEligibilityState;
  if (currentEligibilityState || !v3)
  {
    if ((currentEligibilityState != 1) | v3 & 1)
    {
      if ((currentEligibilityState != 2) | v3 & 1)
      {
        if ((currentEligibilityState != 0) | v3 & 1)
        {
          return;
        }

        v5 = +[NSDate date];
        v6 = [(_DASActivity *)self->_activity startBefore];
        v7 = [v6 earlierDate:v5];
        v8 = [(_DASActivity *)self->_activity startBefore];
        v9 = [v7 isEqualToDate:v8];

        if (!v9)
        {
          goto LABEL_27;
        }

        [(_DASDataCollectionSUTask *)self handleTaskExpirationNeverEligible];
        if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
        {
          sub_100128810();
        }

        v10 = +[NSDate date];
        [(_DASActivity *)self->_activity setStartAfter:v10];

        v11 = [(_DASActivity *)self->_activity startAfter];
        v12 = [v11 dateByAddingTimeInterval:86400.0];
        [(_DASActivity *)self->_activity setStartBefore:v12];

LABEL_26:
LABEL_27:

        return;
      }

      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
      {
        sub_1001287DC();
      }
    }

    else
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
      {
        sub_100128774();
      }

      self->_currentEligibilityState = 3;
      [(_DASDataCollectionSUTask *)self setCurrentEligibilityWindowEnd];
      [(_DASDataCollectionSUTask *)self handleTaskExpiration];
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
      {
        sub_1001287A8();
      }
    }

    self->_currentEligibilityState = 0;
    [(_DASDataCollectionSUTask *)self resetCurrentEligibilityWindow];
    v13 = +[NSDate date];
    [(_DASActivity *)self->_activity setStartAfter:v13];

    v5 = [(_DASActivity *)self->_activity startAfter];
    v11 = [v5 dateByAddingTimeInterval:86400.0];
    [(_DASActivity *)self->_activity setStartBefore:v11];
    goto LABEL_26;
  }

  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
  {
    sub_100128740();
  }

  [(_DASDataCollectionSUTask *)self reportTaskBecomingEligible];
  self->_currentEligibilityState = 1;
  [(_DASDataCollectionSUTask *)self setCurrentEligibilityWindowStart];
  [(_DASDataCollectionSUTask *)self evaluatePolicies];
}

- (void)evaluatePolicies
{
  v2 = self;
  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
  {
    sub_100128844();
  }

  v31 = os_transaction_create();
  context = objc_autoreleasePoolPush();
  v3 = +[_DASPolicyManager allPoliciesForPlatform];
  v4 = +[NSMutableSet set];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v35;
    do
    {
      v8 = 0;
      v32 = v6;
      do
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v34 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        if ([v9 appliesToActivity:v2->_activity])
        {
          v11 = objc_autoreleasePoolPush();
          v12 = v2;
          activity = v2->_activity;
          +[_DASDaemon sharedInstance];
          v15 = v14 = v4;
          v16 = [v15 context];
          v17 = [v9 responseForActivity:activity withState:v16];

          v4 = v14;
          objc_autoreleasePoolPop(v11);
          if ([v17 policyDecision] == 33 || objc_msgSend(v17, "policyDecision") == 100)
          {
            v18 = [v9 policyName];
            [v14 addObject:v18];

            if (objc_opt_respondsToSelector())
            {
              v19 = [v9 blockReasons:v17];
              [v14 addObjectsFromArray:v19];
            }
          }

          v2 = v12;
          v6 = v32;
        }

        objc_autoreleasePoolPop(v10);
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v6);
  }

  v20 = [v4 count];
  logger = v2->_logger;
  v22 = os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT);
  if (v20)
  {
    if (v22)
    {
      v23 = logger;
      v24 = [v4 count];
      *buf = 134217984;
      v39 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "SUTelemetryTask: found %lu blockers.", buf, 0xCu);
    }

    [(_DASDataCollectionSUTask *)v2 reportBlockersOnEvaluation:v4];
    blockReasonsSoFar = v2->_blockReasonsSoFar;
    [v4 allObjects];
    v27 = v26 = v4;
    [(NSMutableSet *)blockReasonsSoFar addObjectsFromArray:v27];

    v28 = [(NSMutableSet *)v2->_persistentBlockers count];
    persistentBlockers = v2->_persistentBlockers;
    if (v28)
    {
      [(NSMutableSet *)persistentBlockers intersectSet:v26];
    }

    else
    {
      [(NSMutableSet *)persistentBlockers unionSet:v26];
    }

    v4 = v26;
  }

  else
  {
    if (v22)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, logger, OS_LOG_TYPE_DEFAULT, "SUTelemetryTask: no blocking policies.", buf, 2u);
    }

    [(_DASDataCollectionSUTask *)v2 markAsCompleted];
    [(_DASDataCollectionSUTask *)v2 reportSuccessOnEvaluation];
  }

  objc_autoreleasePoolPop(context);
}

- (void)markAsCompleted
{
  self->_currentEligibilityState = 2;
  [(_DASDataCollectionSUTask *)self setCurrentEligibilityWindowEnd];
  [(NSMutableSet *)self->_blockReasonsSoFar removeAllObjects];
  persistentBlockers = self->_persistentBlockers;

  [(NSMutableSet *)persistentBlockers removeAllObjects];
}

- (void)handleTaskExpiration
{
  [(_DASDataCollectionSUTask *)self reportTaskExpiration];
  [(_DASDataCollectionSUTask *)self reportBlockersStatisticsOnExpiration];
  [(NSMutableSet *)self->_blockReasonsSoFar removeAllObjects];
  persistentBlockers = self->_persistentBlockers;

  [(NSMutableSet *)persistentBlockers removeAllObjects];
}

- (void)setCurrentEligibilityWindowStart
{
  v3 = +[NSDate date];
  currentEligibilityWindowStart = self->_currentEligibilityWindowStart;
  self->_currentEligibilityWindowStart = v3;

  _objc_release_x1(v3, currentEligibilityWindowStart);
}

- (void)setCurrentEligibilityWindowEnd
{
  v3 = +[NSDate date];
  currentEligibilityWindowEnd = self->_currentEligibilityWindowEnd;
  self->_currentEligibilityWindowEnd = v3;

  _objc_release_x1(v3, currentEligibilityWindowEnd);
}

- (void)resetCurrentEligibilityWindow
{
  currentEligibilityWindowStart = self->_currentEligibilityWindowStart;
  self->_currentEligibilityWindowStart = 0;

  currentEligibilityWindowEnd = self->_currentEligibilityWindowEnd;
  self->_currentEligibilityWindowEnd = 0;
}

- (void)addExperimentInformationWithDictionary:(id)a3
{
  v8 = a3;
  v3 = +[_DASTrialManager sharedInstance];
  v4 = [v3 experimentID];

  if (v4)
  {
    v5 = [v3 experimentID];
    [v8 setObject:v5 forKeyedSubscript:@"ExperimentID"];

    v6 = [v3 treatmentID];
    [v8 setObject:v6 forKeyedSubscript:@"TreatmentID"];

    v7 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 deploymentID]);
    [v8 setObject:v7 forKeyedSubscript:@"DeploymentID"];
  }
}

- (void)handleTaskExpirationNeverEligible
{
  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
  {
    sub_100128878();
  }

  v3 = +[NSMutableDictionary dictionary];
  [(_DASDataCollectionSUTask *)self addExperimentInformationWithDictionary:v3];
  [v3 setObject:@"NeverEligible" forKeyedSubscript:@"Decision"];
  v5 = v3;
  AnalyticsSendEventLazy();
  [v5 setObject:@"NeverEligible" forKeyedSubscript:@"BlockReason"];
  v4 = v5;
  AnalyticsSendEventLazy();
  [(NSMutableSet *)self->_blockReasonsSoFar removeAllObjects:_NSConcreteStackBlock];
  [(NSMutableSet *)self->_persistentBlockers removeAllObjects];
}

- (void)reportBlockersOnEvaluation:(id)a3
{
  v4 = a3;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
  {
    sub_1001288AC(logger, v4);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = +[NSMutableDictionary dictionary];
        [(_DASDataCollectionSUTask *)self addExperimentInformationWithDictionary:v11];
        [v11 setObject:v10 forKeyedSubscript:@"Decision"];
        v12 = v11;
        AnalyticsSendEventLazy();
      }

      v7 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)reportSuccessOnEvaluation
{
  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
  {
    sub_100128938();
  }

  v3 = +[NSMutableDictionary dictionary];
  [(_DASDataCollectionSUTask *)self addExperimentInformationWithDictionary:v3];
  [v3 setObject:@"Success" forKeyedSubscript:@"Decision"];
  if (self->_currentEligibilityWindowStart && self->_currentEligibilityWindowEnd)
  {
    v4 = [_CDDateRange periodWithStart:"periodWithStart:end:" end:?];
    [v4 duration];
    v5 = [NSNumber numberWithDouble:?];
    [v3 setObject:v5 forKeyedSubscript:@"WindowDuration"];
  }

  v7 = v3;
  AnalyticsSendEventLazy();
  [v7 setObject:@"Success" forKeyedSubscript:@"BlockReason"];
  v6 = v7;
  AnalyticsSendEventLazy();
}

- (void)reportTaskBecomingEligible
{
  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
  {
    sub_10012896C();
  }

  v3 = +[NSMutableDictionary dictionary];
  [(_DASDataCollectionSUTask *)self addExperimentInformationWithDictionary:v3];
  [v3 setObject:@"Eligible" forKeyedSubscript:@"Decision"];
  v5 = v3;
  AnalyticsSendEventLazy();
  [v5 setObject:@"Eligible" forKeyedSubscript:@"BlockReason"];
  v4 = v5;
  AnalyticsSendEventLazy();
}

- (void)reportTaskExpiration
{
  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
  {
    sub_1001289A0();
  }

  v3 = +[NSMutableDictionary dictionary];
  [(_DASDataCollectionSUTask *)self addExperimentInformationWithDictionary:v3];
  [v3 setObject:@"Expired" forKeyedSubscript:@"Decision"];
  if (self->_currentEligibilityWindowStart && self->_currentEligibilityWindowEnd)
  {
    v4 = [_CDDateRange periodWithStart:"periodWithStart:end:" end:?];
    [v4 duration];
    v5 = [NSNumber numberWithDouble:?];
    [v3 setObject:v5 forKeyedSubscript:@"WindowDuration"];
  }

  v7 = v3;
  AnalyticsSendEventLazy();
  [v7 setObject:@"Expired" forKeyedSubscript:@"BlockReason"];
  v6 = v7;
  AnalyticsSendEventLazy();
}

- (void)reportBlockersStatisticsOnExpiration
{
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
  {
    sub_1001289D4(self, logger);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_persistentBlockers;
  v4 = [(NSMutableSet *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  v5 = &NSLocalizedDescriptionKey_ptr;
  v6 = &unk_1001B6758;
  if (v4)
  {
    v7 = v4;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = [(NSErrorUserInfoKey *)v5[121] dictionary];
        [(_DASDataCollectionSUTask *)self addExperimentInformationWithDictionary:v11];
        [v11 setObject:v10 forKeyedSubscript:@"BlockReason"];
        if (self->_currentEligibilityWindowStart && self->_currentEligibilityWindowEnd)
        {
          [_CDDateRange periodWithStart:"periodWithStart:end:" end:?];
          v12 = v5;
          v14 = v13 = v6;
          [v14 duration];
          v15 = [NSNumber numberWithDouble:?];
          [v11 setObject:v15 forKeyedSubscript:@"WindowDuration"];

          v6 = v13;
          v5 = v12;
        }

        v23 = v11;
        v16 = v11;
        AnalyticsSendEventLazy();
      }

      v7 = [(NSMutableSet *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v7);
  }

  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
  {
    sub_100128A60();
  }

  v17 = [(NSErrorUserInfoKey *)v5[121] dictionary];
  [(_DASDataCollectionSUTask *)self addExperimentInformationWithDictionary:v17];
  v18 = [NSNumber numberWithUnsignedInteger:[(NSMutableSet *)self->_blockReasonsSoFar count]];
  [v17 setObject:v18 forKeyedSubscript:@"NumberOfBlockers"];

  [v17 setObject:&__kCFBooleanTrue forKeyedSubscript:@"Expired"];
  if (self->_currentEligibilityWindowStart && self->_currentEligibilityWindowEnd)
  {
    v19 = [_CDDateRange periodWithStart:"periodWithStart:end:" end:?];
    [v19 duration];
    v20 = [NSNumber numberWithDouble:?];
    [v17 setObject:v20 forKeyedSubscript:@"WindowDuration"];
  }

  v21 = v17;
  AnalyticsSendEventLazy();
}

@end