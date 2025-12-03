@interface _DASDynamicRuntimeAllocator
+ (id)identifierForActivity:(id)activity;
+ (id)sharedAllocator;
- (BOOL)allocationEligibleForActivity:(id)activity;
- (BOOL)isEngaged;
- (BOOL)isRuntimeAllocatedForActivity:(id)activity;
- (BOOL)shouldDelaySuspendingRunningActivity:(id)activity forPendingTask:(id)task;
- (BOOL)significantChangeToAllocatedDuration;
- (BOOL)unprotectedAllocationEligibleForActivity:(id)activity asEnabled:(BOOL)enabled;
- (_DASDynamicRuntimeAllocator)init;
- (double)remainingAllocatedRuntimeForActivity:(id)activity;
- (double)updateWeightsAndGetTotalWeight;
- (double)weightForActivity:(id)activity withAllocationStrategy:(unint64_t)strategy;
- (void)allocateRuntime;
- (void)dasTrialManager:(id)manager hasUpdatedParametersForNamespace:(id)namespace;
- (void)logActivitiesAtPlugin;
- (void)logPredictionInfo;
- (void)logPredictionResults;
- (void)logRuntimeAllocationInfo;
- (void)reallocateRuntimeFromActivity:(id)activity asCompletion:(BOOL)completion;
- (void)reallocateRuntimeWithActivities:(id)activities;
- (void)updateActivityRuntimeAllocationInfoWithTasks:(id)tasks;
- (void)updateConcurrencyLimit:(int64_t)limit;
- (void)updateLatestActivityAllocationStats;
- (void)updatePredictedDuration;
- (void)updateTrialParameters;
@end

@implementation _DASDynamicRuntimeAllocator

- (_DASDynamicRuntimeAllocator)init
{
  v33.receiver = self;
  v33.super_class = _DASDynamicRuntimeAllocator;
  v2 = [(_DASDynamicRuntimeAllocator *)&v33 init];
  if (v2)
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x2050000000;
    v3 = qword_10020B2B8;
    v37 = qword_10020B2B8;
    if (!qword_10020B2B8)
    {
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v39 = sub_100060FE0;
      v40 = &unk_1001B5798;
      v41 = &v34;
      sub_100060FE0(&buf);
      v3 = v35[3];
    }

    v4 = v3;
    _Block_object_dispose(&v34, 8);
    predictor = [v3 predictor];
    pluggedInPredictor = v2->_pluggedInPredictor;
    v2->_pluggedInPredictor = predictor;

    v7 = +[_DASTrialManager sharedInstance];
    trialManager = v2->_trialManager;
    v2->_trialManager = v7;

    [(_DASTrialManager *)v2->_trialManager addDelegate:v2];
    v2->_concurrencyLimit = 2;
    [(_DASDynamicRuntimeAllocator *)v2 updateTrialParameters];
    v9 = +[_DASRuntimeTrackerManager sharedRuntimeTrackerManager];
    runtimeTrackerManager = v2->_runtimeTrackerManager;
    v2->_runtimeTrackerManager = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.duetactivityscheduler.runtimePredictionMonitor", v11);
    queue = v2->_queue;
    v2->_queue = v12;

    obj = [[BMBiomeScheduler alloc] initWithIdentifier:@"dasRuntimePredictionMonitor" targetQueue:v2->_queue];
    v14 = BiomeLibrary();
    device = [v14 Device];
    power = [device Power];
    pluggedIn = [power PluggedIn];
    dSLPublisher = [pluggedIn DSLPublisher];
    v19 = [dSLPublisher subscribeOn:obj];
    v28 = _NSConcreteStackBlock;
    v29 = 3221225472;
    v30 = sub_10005CC0C;
    v31 = &unk_1001B6088;
    v20 = v2;
    v32 = v20;
    v21 = [v19 sinkWithCompletion:&stru_1001B69B8 receiveInput:&v28];

    objc_storeStrong(&v20->_scheduler, obj);
    objc_storeStrong(&v20->_sink, v21);
    v22 = [(_DASTrialManager *)v2->_trialManager factorWithName:@"DynamicRuntimeAllocationFeatureFlag"];
    LOBYTE(device) = [v22 BOOLeanValue];

    v20->_isEnabled = device;
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      v20->_isEnabled = 0;
    }

    v23 = [_DASDaemonLogger logForCategory:@"dynamicRuntimeLimit", obj, v28, v29, v30, v31];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [NSNumber numberWithBool:v20->_isEnabled];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Dynamic Runtime Allocator FF is %@", &buf, 0xCu);
    }
  }

  return v2;
}

+ (id)sharedAllocator
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005CF00;
  block[3] = &unk_1001B54A0;
  block[4] = self;
  if (qword_10020B2A8 != -1)
  {
    dispatch_once(&qword_10020B2A8, block);
  }

  v2 = qword_10020B2B0;

  return v2;
}

- (BOOL)isEngaged
{
  if (!self->_isEnabled)
  {
    return 0;
  }

  if (!self->_lastPluggedInState)
  {
    return 0;
  }

  pluggedInPrediction = self->_pluggedInPrediction;
  if (!pluggedInPrediction)
  {
    return 0;
  }

  predictionDate = [(_DASPluginPrediction *)pluggedInPrediction predictionDate];
  v4 = predictionDate != 0;

  return v4;
}

- (void)updateConcurrencyLimit:(int64_t)limit
{
  if (self->_concurrencyLimit != limit)
  {
    v8[10] = v3;
    v8[11] = v4;
    queue = [(_DASDynamicRuntimeAllocator *)self queue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10005D03C;
    v8[3] = &unk_1001B6250;
    v8[4] = self;
    v8[5] = limit;
    dispatch_async(queue, v8);
  }
}

- (double)remainingAllocatedRuntimeForActivity:(id)activity
{
  activityCopy = activity;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005D2CC;
  block[3] = &unk_1001B69E0;
  v10 = activityCopy;
  v11 = &v12;
  block[4] = self;
  v6 = activityCopy;
  dispatch_sync(queue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

- (double)weightForActivity:(id)activity withAllocationStrategy:(unint64_t)strategy
{
  activityCopy = activity;
  queue = [(_DASDynamicRuntimeAllocator *)self queue];
  dispatch_assert_queue_V2(queue);

  weights = self->_weights;
  if (weights && ([activityCopy name], v9 = objc_claimAutoreleasedReturnValue(), -[NSDictionary objectForKeyedSubscript:](weights, "objectForKeyedSubscript:", v9), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
  {
    v11 = self->_weights;
    name = [activityCopy name];
    v13 = [(NSDictionary *)v11 objectForKeyedSubscript:name];
    [v13 doubleValue];
    v15 = v14;
  }

  else if (strategy == 2)
  {
    name = +[_DASRuntimeLimiter sharedLimiter];
    [name dynamicDurationForActivity:activityCopy];
    v15 = 0.5;
    if (v25 <= 0.0)
    {
      [name staticDurationForActivity:activityCopy];
      if (v26 <= 0.0)
      {
        v15 = 0.1;
      }
    }
  }

  else
  {
    if (strategy != 1)
    {
      v15 = 0.1;
      goto LABEL_18;
    }

    latestActivityRuntimeAllocationInfo = self->_latestActivityRuntimeAllocationInfo;
    name2 = [activityCopy name];
    name = [(NSMutableDictionary *)latestActivityRuntimeAllocationInfo objectForKeyedSubscript:name2];

    v18 = 0.1;
    if (name)
    {
      [name allocatedRuntime];
      v20 = v19 <= 0.0;
      v18 = 0.1;
      if (!v20)
      {
        [name utilizedRuntime];
        v20 = v21 <= 0.0;
        v18 = 0.1;
        if (!v20)
        {
          [name utilizedRuntime];
          v23 = v22;
          [name allocatedRuntime];
          v18 = v23 / v24;
        }
      }
    }

    if (v18 >= 0.1)
    {
      v15 = v18;
    }

    else
    {
      v15 = 0.1;
    }
  }

LABEL_18:
  return v15;
}

+ (id)identifierForActivity:(id)activity
{
  activityCopy = activity;
  identifier = [activityCopy identifier];

  if (identifier)
  {
    identifier2 = [activityCopy identifier];
  }

  else
  {
    uuid = [activityCopy uuid];

    identifier2 = [uuid UUIDString];
    activityCopy = uuid;
  }

  return identifier2;
}

- (BOOL)allocationEligibleForActivity:(id)activity
{
  activityCopy = activity;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = [(_DASDynamicRuntimeAllocator *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005D660;
  block[3] = &unk_1001B5D98;
  v9 = activityCopy;
  v10 = &v11;
  block[4] = self;
  v6 = activityCopy;
  dispatch_sync(queue, block);

  LOBYTE(activityCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return activityCopy;
}

- (BOOL)shouldDelaySuspendingRunningActivity:(id)activity forPendingTask:(id)task
{
  activityCopy = activity;
  taskCopy = task;
  if ([activityCopy uninterruptibleDuration])
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    queue = [(_DASDynamicRuntimeAllocator *)self queue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10005D7D4;
    v11[3] = &unk_1001B6A08;
    v11[4] = self;
    v12 = activityCopy;
    v13 = taskCopy;
    v14 = &v15;
    dispatch_sync(queue, v11);

    v9 = *(v16 + 24);
    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (BOOL)isRuntimeAllocatedForActivity:(id)activity
{
  activityCopy = activity;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = [(_DASDynamicRuntimeAllocator *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005DAB8;
  block[3] = &unk_1001B5AB8;
  block[4] = self;
  v9 = activityCopy;
  v10 = &v11;
  v6 = activityCopy;
  dispatch_sync(queue, block);

  LOBYTE(activityCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return activityCopy;
}

- (BOOL)unprotectedAllocationEligibleForActivity:(id)activity asEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  activityCopy = activity;
  queue = [(_DASDynamicRuntimeAllocator *)self queue];
  dispatch_assert_queue_V2(queue);

  if (enabledCopy && [activityCopy isIntensive] && objc_msgSend(activityCopy, "requiresPlugin") && (pluggedInPrediction = self->_pluggedInPrediction) != 0 && (-[_DASPluginPrediction predictionDate](pluggedInPrediction, "predictionDate"), v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    predictionDate = [(_DASPluginPrediction *)self->_pluggedInPrediction predictionDate];
    [(_DASPluginPrediction *)self->_pluggedInPrediction duration];
    v11 = [predictionDate dateByAddingTimeInterval:?];

    startAfter = [activityCopy startAfter];
    v13 = [startAfter laterDate:v11];
    startAfter2 = [activityCopy startAfter];
    if (v13 == startAfter2)
    {
      startAfter3 = [activityCopy startAfter];
      v15 = [startAfter3 isEqualToDate:v11];
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)significantChangeToAllocatedDuration
{
  [(_DASDynamicRuntimeAllocator *)self totalAllocatedDuration];
  v4 = v3;
  [(_DASRuntimeTrackerManager *)self->_runtimeTrackerManager allocatedRuntime];
  return v4 - (v5 + (self->_currentReallocatedRuntime - self->_reallocatedRuntime)) > 60.0;
}

- (void)reallocateRuntimeFromActivity:(id)activity asCompletion:(BOOL)completion
{
  activityCopy = activity;
  suspendRequestDate = [activityCopy suspendRequestDate];

  if (!suspendRequestDate)
  {
    queue = [(_DASDynamicRuntimeAllocator *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005DD88;
    block[3] = &unk_1001B6A30;
    block[4] = self;
    v10 = activityCopy;
    completionCopy = completion;
    dispatch_async(queue, block);
  }
}

- (void)reallocateRuntimeWithActivities:(id)activities
{
  activitiesCopy = activities;
  queue = [(_DASDynamicRuntimeAllocator *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005E4C0;
  v7[3] = &unk_1001B56E0;
  v7[4] = self;
  v8 = activitiesCopy;
  v6 = activitiesCopy;
  dispatch_async(queue, v7);
}

- (void)allocateRuntime
{
  queue = [(_DASDynamicRuntimeAllocator *)self queue];
  dispatch_assert_queue_V2(queue);

  if (__PAIR64__(self->_isEnabled, self->_lastPluggedInState) != 0x100000001)
  {
    return;
  }

  pluggedInPrediction = self->_pluggedInPrediction;
  if (!pluggedInPrediction)
  {
    return;
  }

  [(_DASPluginPrediction *)pluggedInPrediction duration];
  v6 = v5;
  [(_DASDynamicRuntimeAllocator *)self updateWeightsAndGetTotalWeight];
  v8 = v7;
  allKeys = [(NSDictionary *)self->_weights allKeys];
  v10 = allKeys;
  v11 = v6 * self->_preallocatedPercentage;
  if (v8 == 0.0)
  {
    if (![allKeys count])
    {
      v12 = 0.0;
      goto LABEL_11;
    }

    v14 = v11 * self->_concurrencyLimit;
    v12 = v14 / [v10 count];
    v13 = [_DASDaemonLogger logForCategory:@"dynamicRuntimeLimit"];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v12 = v11 * self->_concurrencyLimit * 0.1 / v8;
  if ([allKeys count])
  {
    v13 = [_DASDaemonLogger logForCategory:@"dynamicRuntimeLimit"];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
LABEL_10:

      goto LABEL_11;
    }

LABEL_9:
    v15 = [NSNumber numberWithDouble:v12];
    *buf = 138412290;
    v51 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Default duration allocated is %@", buf, 0xCu);

    goto LABEL_10;
  }

LABEL_11:
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v16 = v10;
  v17 = [v16 countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (v17)
  {
    v19 = v17;
    v20 = *v47;
    p_info = &OBJC_METACLASS____DASDaemonLogger.info;
    v22 = @"dynamicRuntimeLimit";
    *&v18 = 138412802;
    v44 = v18;
    do
    {
      v23 = 0;
      v45 = v19;
      do
      {
        if (*v47 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v24 = *(*(&v46 + 1) + 8 * v23);
        v25 = v12;
        if (v8 != 0.0)
        {
          v26 = v11 * self->_concurrencyLimit;
          v27 = [(NSDictionary *)self->_weights objectForKeyedSubscript:*(*(&v46 + 1) + 8 * v23)];
          [v27 doubleValue];
          v25 = v26 * v28 / v8;
        }

        if (v25 >= v11)
        {
          v25 = v11;
        }

        if ([(_DASRuntimeTrackerManager *)self->_runtimeTrackerManager isTrackingDynamicRuntimeActivity:v24, v44])
        {
          [(_DASRuntimeTrackerManager *)self->_runtimeTrackerManager allocatedRuntimeForActivity:v24];
          if (v12 != v25)
          {
            v30 = v29;
            v31 = [p_info + 1 logForCategory:v22];
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              [NSNumber numberWithDouble:v30];
              v32 = v20;
              v33 = v22;
              v34 = p_info;
              v36 = v35 = v16;
              v37 = [NSNumber numberWithDouble:v25];
              *buf = v44;
              v51 = v24;
              v52 = 2112;
              v53 = v36;
              v54 = 2112;
              v55 = v37;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Changing allocated runtime for %@ from %@ to %@", buf, 0x20u);

              v16 = v35;
              p_info = v34;
              v22 = v33;
              v20 = v32;
              v19 = v45;
            }
          }

          [(_DASRuntimeTrackerManager *)self->_runtimeTrackerManager updateTracker:v24 withMaximumRuntime:1 conditionally:v25];
        }

        else
        {
          v38 = [p_info + 1 logForCategory:v22];
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v39 = [NSNumber numberWithDouble:v25];
            *buf = 138412546;
            v51 = v24;
            v52 = 2112;
            v53 = v39;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "New allocation for %@ to %@", buf, 0x16u);
          }

          [(_DASRuntimeTrackerManager *)self->_runtimeTrackerManager submitRuntimeActivityTracker:v24 inGroup:off_10020A088[0] withMaximumRuntime:v25];
        }

        v23 = v23 + 1;
      }

      while (v19 != v23);
      v19 = [v16 countByEnumeratingWithState:&v46 objects:v56 count:16];
    }

    while (v19);
  }

  if ([(_DASDynamicRuntimeAllocator *)self significantChangeToAllocatedDuration])
  {
    v40 = [_DASDaemonLogger logForCategory:@"dynamicRuntimeLimit"];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      [(_DASRuntimeTrackerManager *)self->_runtimeTrackerManager allocatedRuntime];
      v41 = [NSNumber numberWithDouble:?];
      [(_DASDynamicRuntimeAllocator *)self totalAllocatedDuration];
      v42 = [NSNumber numberWithDouble:?];
      v43 = [(_DASRuntimeTrackerManager *)self->_runtimeTrackerManager description];
      *buf = 138412802;
      v51 = v41;
      v52 = 2112;
      v53 = v42;
      v54 = 2112;
      v55 = v43;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Allocate resulted in changes to total allocated runtime %@ != %@ : %@", buf, 0x20u);
    }
  }
}

- (void)updatePredictedDuration
{
  queue = [(_DASDynamicRuntimeAllocator *)self queue];
  dispatch_assert_queue_V2(queue);

  pluggedInPredictor = self->_pluggedInPredictor;
  v22 = 0;
  v5 = [(_OSChargingPredictor *)pluggedInPredictor chargePredictionOutputOfScheme:6 withError:&v22];
  v6 = v22;
  if (v6)
  {
    v7 = [_DASDaemonLogger logForCategory:@"dynamicRuntimeLimit"];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      [v6 localizedDescription];
      v8 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412290;
      v24 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Error querying the predictor through the client %@", buf, 0xCu);
    }
  }

  [v5 confidence];
  v10 = v9;
  [v5 chargingDuration];
  v12 = v11;
  minimumAllocationDuration = self->_minimumAllocationDuration;
  v14 = [_DASDaemonLogger logForCategory:@"dynamicRuntimeLimit"];
  v15 = os_log_type_enabled(&v14->super, OS_LOG_TYPE_DEFAULT);
  if (v12 >= minimumAllocationDuration)
  {
    if (v15)
    {
      *buf = 134218240;
      v24 = v12;
      v25 = 2048;
      v26 = *&v10;
      _os_log_impl(&_mh_execute_header, &v14->super, OS_LOG_TYPE_DEFAULT, "Predicted Interval:%lf, Confidence:%lf", buf, 0x16u);
    }

    v14 = [[_DASPluginPrediction alloc] initWithDuration:v12 withConfidence:v10];
    objc_storeStrong(&self->_pluggedInPrediction, v14);
    [(_DASDynamicRuntimeAllocator *)self allocateRuntime];
    v16 = [_DASDaemonLogger logForCategory:@"dynamicRuntimeLimit"];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      [(_DASPluginPrediction *)self->_pluggedInPrediction duration];
      v18 = v17;
      [(_DASRuntimeTrackerManager *)self->_runtimeTrackerManager allocatedRuntime];
      v20 = v19;
      v21 = [(_DASRuntimeTrackerManager *)self->_runtimeTrackerManager description];
      *buf = 134218498;
      v24 = v18;
      v25 = 2048;
      v26 = v20;
      v27 = 2112;
      v28 = v21;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Predicted Duration %f, Allocated Duration %f, Allocated Activity Runtimes %@", buf, 0x20u);
    }
  }

  else if (v15)
  {
    *buf = 134218240;
    v24 = v12;
    v25 = 2048;
    v26 = 600;
    _os_log_impl(&_mh_execute_header, &v14->super, OS_LOG_TYPE_DEFAULT, "Too short of predicted interval:%lf < %ld", buf, 0x16u);
  }
}

- (void)updateActivityRuntimeAllocationInfoWithTasks:(id)tasks
{
  tasksCopy = tasks;
  queue = [(_DASDynamicRuntimeAllocator *)self queue];
  dispatch_assert_queue_V2(queue);

  latestActivityRuntimeAllocationInfo = self->_latestActivityRuntimeAllocationInfo;
  if (!latestActivityRuntimeAllocationInfo || ![(NSMutableDictionary *)latestActivityRuntimeAllocationInfo count])
  {
    goto LABEL_11;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = tasksCopy;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v8)
  {

    goto LABEL_12;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v17;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v17 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = self->_latestActivityRuntimeAllocationInfo;
      name = [*(*(&v16 + 1) + 8 * i) name];
      v15 = [(NSMutableDictionary *)v13 objectForKey:name];
      LOBYTE(v13) = v15 == 0;

      v10 |= v13;
    }

    v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (v9);

  if (v10)
  {
LABEL_11:
    [(_DASDynamicRuntimeAllocator *)self updateLatestActivityAllocationStats];
  }

LABEL_12:
}

- (double)updateWeightsAndGetTotalWeight
{
  queue = [(_DASDynamicRuntimeAllocator *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = +[_DASDaemon sharedInstance];
  allPendingTasks = [v4 allPendingTasks];

  if (self->_allocationStrategy == 1)
  {
    [(_DASDynamicRuntimeAllocator *)self updateActivityRuntimeAllocationInfoWithTasks:allPendingTasks];
  }

  v34 = +[NSMutableDictionary dictionary];
  v6 = +[NSMutableSet set];
  weights = self->_weights;
  location = &self->_weights;
  if (weights)
  {
    v8 = [(NSDictionary *)weights mutableCopy];
  }

  else
  {
    v8 = +[NSMutableDictionary dictionary];
  }

  v9 = v8;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v10 = allPendingTasks;
  v11 = [v10 countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v40;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v40 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v39 + 1) + 8 * i);
        if ([(_DASDynamicRuntimeAllocator *)self unprotectedAllocationEligibleForActivity:v15 asEnabled:self->_isEnabled])
        {
          [(_DASDynamicRuntimeAllocator *)self weightForActivity:v15 withAllocationStrategy:self->_allocationStrategy];
          v16 = [NSNumber numberWithDouble:?];
          name = [v15 name];
          [v9 setObject:v16 forKeyedSubscript:name];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v12);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v18 = v9;
  v19 = [v18 countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v36;
    v22 = 0.0;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v36 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v35 + 1) + 8 * j);
        v25 = [v18 objectForKeyedSubscript:v24];
        [v25 doubleValue];
        v27 = v26;

        if (v27 == 0.1)
        {
          [v6 addObject:v24];
        }

        else
        {
          v28 = [NSNumber numberWithDouble:v27];
          [v34 setObject:v28 forKeyedSubscript:v24];
        }

        v22 = v22 + v27;
      }

      v20 = [v18 countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v20);
  }

  else
  {
    v22 = 0.0;
  }

  objc_storeStrong(locationa, v9);
  v29 = [_DASDaemonLogger logForCategory:@"dynamicRuntimeLimit"];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = [NSNumber numberWithDouble:v22];
    *buf = 138412546;
    v44 = v34;
    v45 = 2112;
    v46 = v30;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Custom Weights: %@, TotalWeight: %@", buf, 0x16u);
  }

  return v22;
}

- (void)logPredictionInfo
{
  pluggedInPrediction = self->_pluggedInPrediction;
  if (!pluggedInPrediction || ([(_DASPluginPrediction *)pluggedInPrediction predictionDate], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v13 = [_DASDaemonLogger logForCategory:@"dynamicRuntimeLimit"];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100120620();
    }

    goto LABEL_9;
  }

  predictionDate = [(_DASPluginPrediction *)self->_pluggedInPrediction predictionDate];
  [predictionDate timeIntervalSinceNow];
  v7 = v6;

  if (v7 >= -15.0)
  {
    v13 = [_DASDaemonLogger logForCategory:@"dynamicRuntimeLimit"];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "logPredictionInfo: Plugin was too short to log", buf, 2u);
    }

LABEL_9:

    return;
  }

  v14 = +[NSMutableDictionary dictionary];
  [(_DASPluginPrediction *)self->_pluggedInPrediction duration];
  v8 = [NSNumber numberWithDouble:?];
  [v14 setObject:v8 forKeyedSubscript:@"PredictionDuration"];

  predictionDate2 = [(_DASPluginPrediction *)self->_pluggedInPrediction predictionDate];
  [predictionDate2 timeIntervalSince1970];
  v10 = [NSNumber numberWithDouble:?];
  [v14 setObject:v10 forKeyedSubscript:@"PredictionDate"];

  v11 = [NSNumber numberWithUnsignedInteger:[(_DASPluginPrediction *)self->_pluggedInPrediction predictionWindowID]];
  [v14 setObject:v11 forKeyedSubscript:@"PredictionWindowID"];

  v12 = +[_DASPPSDataManager sharedInstance];
  [v12 sendDataToPPS:v14 subsystem:@"BackgroundProcessing" category:@"PluginPrediction"];
}

- (void)logActivitiesAtPlugin
{
  v3 = +[NSMutableDictionary dictionary];
  pluggedInPrediction = self->_pluggedInPrediction;
  if (pluggedInPrediction)
  {
    predictionDate = [(_DASPluginPrediction *)pluggedInPrediction predictionDate];

    if (predictionDate)
    {
      [(_DASPluginPrediction *)self->_pluggedInPrediction duration];
      v7 = v6;
      v8 = [NSNumber numberWithDouble:?];
      [v3 setObject:v8 forKeyedSubscript:@"predictedDuration"];

      v9 = [NSNumber numberWithInt:1200 * vcvtmd_s64_f64(v7 / 1200.0)];
      [v3 setObject:v9 forKeyedSubscript:@"predictedDurationRounded"];
    }
  }

  if (!self->_isEnabled)
  {
    v13 = +[_DASDaemon sharedInstance];
    allPendingTasks = [v13 allPendingTasks];
    v15 = [allPendingTasks copy];

    v12 = +[NSMutableSet set];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    allKeys = v15;
    v16 = [allKeys countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v27;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(allKeys);
          }

          v20 = *(*(&v26 + 1) + 8 * i);
          if ([(_DASDynamicRuntimeAllocator *)self unprotectedAllocationEligibleForActivity:v20 asEnabled:1])
          {
            [v12 addObject:v20];
          }
        }

        v17 = [allKeys countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v17);
    }

    v21 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 count]);
    [v3 setObject:v21 forKeyedSubscript:@"activityCount"];

    goto LABEL_17;
  }

  weights = self->_weights;
  if (weights)
  {
    allKeys = [(NSDictionary *)weights allKeys];
    v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [allKeys count]);
    [v3 setObject:v12 forKeyedSubscript:@"activityCount"];
LABEL_17:

    goto LABEL_18;
  }

  [v3 setObject:&off_1001C99E8 forKeyedSubscript:@"activityCount"];
LABEL_18:
  v22 = [NSNumber numberWithInteger:self->_model];
  [v3 setObject:v22 forKeyedSubscript:@"modelInfo"];

  v23 = [_DASDaemonLogger logForCategory:@"dynamicRuntimeLimit"];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = v3;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Logging... %@", buf, 0xCu);
  }

  v25 = v3;
  v24 = v3;
  AnalyticsSendEventLazy();
}

- (void)logPredictionResults
{
  pluggedInPrediction = self->_pluggedInPrediction;
  if (pluggedInPrediction && ([(_DASPluginPrediction *)pluggedInPrediction predictionDate], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    predictionDate = [(_DASPluginPrediction *)self->_pluggedInPrediction predictionDate];
    [predictionDate timeIntervalSinceNow];
    v7 = v6;

    if (v7 < -15.0)
    {
      predictionDate2 = [(_DASPluginPrediction *)self->_pluggedInPrediction predictionDate];
      [(_DASPluginPrediction *)self->_pluggedInPrediction duration];
      v9 = [predictionDate2 dateByAddingTimeInterval:?];

      v10 = +[NSMutableDictionary dictionary];
      [(_DASPluginPrediction *)self->_pluggedInPrediction duration];
      v11 = [NSNumber numberWithDouble:?];
      [v10 setObject:v11 forKeyedSubscript:@"predictedDuration"];

      [(_DASPluginPrediction *)self->_pluggedInPrediction duration];
      v13 = [NSNumber numberWithInt:1200 * vcvtmd_s64_f64(v12 / 1200.0)];
      [v10 setObject:v13 forKeyedSubscript:@"predictedDurationRounded"];

      v14 = [NSNumber numberWithInteger:self->_concurrencyLimit];
      [v10 setObject:v14 forKeyedSubscript:@"concurrency"];

      [v9 timeIntervalSinceNow];
      v16 = v15;
      if (v15 <= 0.0)
      {
        v17 = &__kCFBooleanFalse;
      }

      else
      {
        v17 = &__kCFBooleanTrue;
      }

      [v10 setObject:v17 forKeyedSubscript:@"overPredicted"];
      v18 = [NSNumber numberWithDouble:v16];
      [v10 setObject:v18 forKeyedSubscript:@"variance"];

      v19 = [NSNumber numberWithInt:(600 * (v16 / 600.0))];
      [v10 setObject:v19 forKeyedSubscript:@"varianceRounded"];

      [(_DASPluginPrediction *)self->_pluggedInPrediction duration];
      v21 = (v20 - v16);
      v22 = [NSNumber numberWithInteger:v21];
      [v10 setObject:v22 forKeyedSubscript:@"actualDuration"];

      if ((1200 * (v21 / 1200)) << 32)
      {
        v23 = [NSNumber numberWithInteger:1200 * (v21 / 1200)];
        [v10 setObject:v23 forKeyedSubscript:@"actualDurationRounded"];
      }

      else
      {
        if (v21)
        {
          v24 = &off_1001C9A00;
        }

        else
        {
          v24 = &off_1001C99E8;
        }

        [v10 setObject:v24 forKeyedSubscript:@"actualDurationRounded"];
      }

      runtimeTrackerManager = self->_runtimeTrackerManager;
      if (runtimeTrackerManager)
      {
        v26 = [NSNumber numberWithUnsignedInteger:[(_DASRuntimeTrackerManager *)runtimeTrackerManager activitiesTracked]];
        [v10 setObject:v26 forKeyedSubscript:@"activityCount"];
      }

      else
      {
        [v10 setObject:&off_1001C99E8 forKeyedSubscript:@"activityCount"];
      }

      [(_DASRuntimeTrackerManager *)self->_runtimeTrackerManager allocatedRuntime];
      v28 = v27;
      [(_DASRuntimeTrackerManager *)self->_runtimeTrackerManager utilizedAllocatedRuntime];
      v30 = v29;
      [(_DASRuntimeTrackerManager *)self->_runtimeTrackerManager excessRuntime];
      v32 = v31;
      [(_DASRuntimeTrackerManager *)self->_runtimeTrackerManager totalReallocatedRuntime];
      v34 = v33;
      v35 = [NSNumber numberWithDouble:v28];
      [v10 setObject:v35 forKeyedSubscript:@"allocatedRuntime"];

      v36 = [NSNumber numberWithDouble:v30];
      [v10 setObject:v36 forKeyedSubscript:@"utilizedRuntime"];

      v37 = [NSNumber numberWithDouble:v32];
      [v10 setObject:v37 forKeyedSubscript:@"excessRuntime"];

      v38 = [NSNumber numberWithDouble:v34];
      [v10 setObject:v38 forKeyedSubscript:@"reallocatedRuntime"];

      v39 = [NSNumber numberWithUnsignedInteger:self->_currentReallocatedRuntime - self->_reallocatedRuntime];
      [v10 setObject:v39 forKeyedSubscript:@"unallocatedRuntime"];

      v40 = [NSNumber numberWithUnsignedInteger:[(_DASRuntimeTrackerManager *)self->_runtimeTrackerManager reallocatedTaskCount]];
      [v10 setObject:v40 forKeyedSubscript:@"reallocatedTasks"];

      LODWORD(v41) = 1.0;
      [(_DASRuntimeTrackerManager *)self->_runtimeTrackerManager taskCountWithUtilization:v41];
      v42 = [NSNumber numberWithDouble:?];
      [v10 setObject:v42 forKeyedSubscript:@"utilizedFullRuntimeTasks"];

      LODWORD(v43) = 0.5;
      [(_DASRuntimeTrackerManager *)self->_runtimeTrackerManager taskCountWithUtilization:v43];
      v44 = [NSNumber numberWithDouble:?];
      [v10 setObject:v44 forKeyedSubscript:@"utilizedHalfRuntimeTasks"];

      v45 = v28 + (self->_currentReallocatedRuntime - self->_reallocatedRuntime);
      [(_DASPluginPrediction *)self->_pluggedInPrediction duration];
      if (v46 == 0.0)
      {
        [v10 setObject:&off_1001C9A18 forKeyedSubscript:@"allocatedPredictionPercentage"];
      }

      else
      {
        [(_DASDynamicRuntimeAllocator *)self totalAllocatedDuration];
        v48 = [NSNumber numberWithDouble:v45 / v47];
        [v10 setObject:v48 forKeyedSubscript:@"allocatedPredictionPercentage"];
      }

      if (v45 == 0.0)
      {
        [v10 setObject:&off_1001C9A18 forKeyedSubscript:@"utilizedAllocatedPercentage"];
        if (v21)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v49 = [NSNumber numberWithDouble:v30 / v45];
        [v10 setObject:v49 forKeyedSubscript:@"utilizedAllocatedPercentage"];

        if (v21)
        {
LABEL_25:
          v50 = [NSNumber numberWithDouble:v45 / (self->_concurrencyLimit * v21)];
          [v10 setObject:v50 forKeyedSubscript:@"allocatedPluginPercentage"];

          v51 = [NSNumber numberWithDouble:v32 / (self->_concurrencyLimit * v21)];
          [v10 setObject:v51 forKeyedSubscript:@"excessPluginPercentage"];

LABEL_28:
          [(_DASPluginPrediction *)self->_pluggedInPrediction duration];
          if (v52 == 0.0)
          {
            [v10 setObject:&off_1001C9A18 forKeyedSubscript:@"excessPredictionPercentage"];
          }

          else
          {
            [(_DASDynamicRuntimeAllocator *)self totalAllocatedDuration];
            v54 = [NSNumber numberWithDouble:v32 / v53];
            [v10 setObject:v54 forKeyedSubscript:@"excessPredictionPercentage"];
          }

          v55 = [NSNumber numberWithInteger:self->_model];
          [v10 setObject:v55 forKeyedSubscript:@"modelInfo"];

          v56 = [_DASDaemonLogger logForCategory:@"dynamicRuntimeLimit"];
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v60 = v10;
            _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Logging... %@", buf, 0xCu);
          }

          v58 = v10;
          v57 = v10;
          AnalyticsSendEventLazy();

          goto LABEL_34;
        }
      }

      [v10 setObject:&off_1001C9A18 forKeyedSubscript:@"allocatedPluginPercentage"];
      [v10 setObject:&off_1001C9A18 forKeyedSubscript:@"excessPluginPercentage"];
      goto LABEL_28;
    }

    v9 = [_DASDaemonLogger logForCategory:@"dynamicRuntimeLimit"];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Plugin was too short to log", buf, 2u);
    }
  }

  else
  {
    v9 = [_DASDaemonLogger logForCategory:@"dynamicRuntimeLimit"];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100120654();
    }
  }

LABEL_34:
}

- (void)logRuntimeAllocationInfo
{
  selfCopy = self;
  pluggedInPrediction = self->_pluggedInPrediction;
  if (pluggedInPrediction && ([(_DASPluginPrediction *)pluggedInPrediction predictionDate], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    predictionDate = [(_DASPluginPrediction *)selfCopy->_pluggedInPrediction predictionDate];
    [predictionDate timeIntervalSinceNow];
    v7 = v6;

    if (v7 >= -15.0)
    {
      v11 = [_DASDaemonLogger logForCategory:@"dynamicRuntimeLimit"];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Plugin was too short to log", buf, 2u);
      }
    }

    else
    {
      allocationStatsPerActivity = [(_DASRuntimeTrackerManager *)selfCopy->_runtimeTrackerManager allocationStatsPerActivity];
      v9 = [allocationStatsPerActivity count];
      if (v9 != [(_DASRuntimeTrackerManager *)selfCopy->_runtimeTrackerManager activitiesTracked])
      {
        v10 = [_DASDaemonLogger logForCategory:@"dynamicRuntimeLimit"];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_100120688(allocationStatsPerActivity, &selfCopy->_runtimeTrackerManager, v10);
        }
      }

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v11 = allocationStatsPerActivity;
      v12 = [v11 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v12)
      {
        v13 = v12;
        v26 = @"BackgroundProcessing";
        v27 = *v29;
        do
        {
          v14 = 0;
          do
          {
            v15 = selfCopy;
            if (*v29 != v27)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v28 + 1) + 8 * v14);
            v17 = +[NSMutableDictionary dictionary];
            [v17 setObject:v16 forKeyedSubscript:@"TaskName"];
            v18 = [v11 objectForKeyedSubscript:v16];
            [v18 allocatedRuntime];
            v19 = [NSNumber numberWithDouble:?];
            [v17 setObject:v19 forKeyedSubscript:@"AllocatedRuntime"];

            v20 = [v11 objectForKeyedSubscript:v16];
            [v20 utilizedRuntime];
            v21 = [NSNumber numberWithDouble:?];
            [v17 setObject:v21 forKeyedSubscript:@"UtilizedRuntime"];

            v22 = [v11 objectForKeyedSubscript:v16];
            [v22 reallocatedDuration];
            v23 = [NSNumber numberWithDouble:?];
            [v17 setObject:v23 forKeyedSubscript:@"ReallocatedDuration"];

            selfCopy = v15;
            v24 = [NSNumber numberWithUnsignedInteger:[(_DASPluginPrediction *)v15->_pluggedInPrediction predictionWindowID]];
            [v17 setObject:v24 forKeyedSubscript:@"PredictionWindowID"];

            v25 = +[_DASPPSDataManager sharedInstance];
            [v25 sendDataToPPS:v17 subsystem:v26 category:@"TaskRuntimeAllocation"];

            v14 = v14 + 1;
          }

          while (v13 != v14);
          v13 = [v11 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v13);
      }
    }
  }

  else
  {
    v11 = [_DASDaemonLogger logForCategory:@"dynamicRuntimeLimit"];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100120654();
    }
  }
}

- (void)updateLatestActivityAllocationStats
{
  queue = [(_DASDynamicRuntimeAllocator *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = +[_DASPPSDataManager sharedInstance];
  v31 = 0;
  v5 = [v4 getPPSTimeSeries:@"BackgroundProcessing" category:@"TaskRuntimeAllocation" valueFilter:0 metrics:0 timeFilter:0 filepath:0 error:&v31];
  v6 = v31;

  if (!v6 && v5)
  {
    v7 = +[NSMutableDictionary dictionary];
    latestActivityRuntimeAllocationInfo = self->_latestActivityRuntimeAllocationInfo;
    self->_latestActivityRuntimeAllocationInfo = v7;

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = v5;
    obj = v5;
    v9 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v28;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(obj);
          }

          metricKeysAndValues = [*(*(&v27 + 1) + 8 * i) metricKeysAndValues];
          v14 = [metricKeysAndValues objectForKeyedSubscript:@"TaskName"];
          v15 = [metricKeysAndValues objectForKeyedSubscript:@"AllocatedRuntime"];
          v16 = [metricKeysAndValues objectForKeyedSubscript:@"UtilizedRuntime"];
          v17 = [metricKeysAndValues objectForKeyedSubscript:@"ReallocatedDuration"];
          v18 = [_DASActivityRuntimeAllocationInfo alloc];
          [v15 doubleValue];
          v20 = v19;
          [v16 doubleValue];
          v22 = v21;
          [v17 doubleValue];
          v24 = [(_DASActivityRuntimeAllocationInfo *)v18 initActivityRuntimeAllocationInfo:v14 allocatedRuntime:v20 utilizedRuntime:v22 reallocatedDuration:v23];
          [(NSMutableDictionary *)self->_latestActivityRuntimeAllocationInfo setObject:v24 forKeyedSubscript:v14];
        }

        v10 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v10);
    }

    v6 = 0;
    v5 = v25;
  }
}

- (void)updateTrialParameters
{
  v3 = [(_DASTrialManager *)self->_trialManager factorWithName:@"DynamicRuntimeAllocationFeatureFlag"];
  bOOLeanValue = [v3 BOOLeanValue];

  self->_isEnabled = _os_feature_enabled_impl() & bOOLeanValue;
  v5 = [_DASDaemonLogger logForCategory:@"dynamicRuntimeLimit"];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [NSNumber numberWithBool:self->_isEnabled];
    v27 = 138412546;
    v28 = @"DynamicRuntimeAllocationFeatureFlag";
    v29 = 2112;
    v30 = *&v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is %@", &v27, 0x16u);
  }

  v7 = [(_DASTrialManager *)self->_trialManager factorWithName:@"DynamicRuntimeAllocationPreallocatedPercentage"];
  [v7 doubleValue];
  v9 = v8;

  v10 = 1.0;
  if (v9)
  {
    v10 = v9;
  }

  self->_preallocatedPercentage = v10;
  v11 = [_DASDaemonLogger logForCategory:@"dynamicRuntimeLimit"];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    preallocatedPercentage = self->_preallocatedPercentage;
    v27 = 138412546;
    v28 = @"DynamicRuntimeAllocationPreallocatedPercentage";
    v29 = 2048;
    v30 = preallocatedPercentage;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ is %f", &v27, 0x16u);
  }

  v13 = [(_DASTrialManager *)self->_trialManager factorWithName:@"DynamicRuntimeAllocationMinimumAllocationInterval"];
  longValue = [v13 longValue];

  v15 = 600;
  if (longValue > 0)
  {
    v15 = longValue;
  }

  self->_minimumAllocationDuration = v15;
  v16 = [_DASDaemonLogger logForCategory:@"dynamicRuntimeLimit"];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    minimumAllocationDuration = self->_minimumAllocationDuration;
    v27 = 138412546;
    v28 = @"DynamicRuntimeAllocationMinimumAllocationInterval";
    v29 = 2048;
    v30 = *&minimumAllocationDuration;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@ is %ld", &v27, 0x16u);
  }

  v18 = [(_DASTrialManager *)self->_trialManager factorWithName:@"DynamicRuntimeAllocationModel"];
  longValue2 = [v18 longValue];

  v20 = 6;
  if (longValue2 > 0)
  {
    v20 = longValue2;
  }

  self->_model = v20;
  v21 = [_DASDaemonLogger logForCategory:@"dynamicRuntimeLimit"];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    model = self->_model;
    v27 = 138412546;
    v28 = @"DynamicRuntimeAllocationModel";
    v29 = 2048;
    v30 = *&model;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@ is %ld", &v27, 0x16u);
  }

  v23 = [(_DASTrialManager *)self->_trialManager factorWithName:@"DynamicRuntimeAllocationStrategy"];
  longValue3 = [v23 longValue];

  self->_allocationStrategy = longValue3;
  v25 = [_DASDaemonLogger logForCategory:@"dynamicRuntimeLimit"];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    allocationStrategy = self->_allocationStrategy;
    v27 = 138412546;
    v28 = @"DynamicRuntimeAllocationStrategy";
    v29 = 2048;
    v30 = *&allocationStrategy;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%@ is %ld", &v27, 0x16u);
  }
}

- (void)dasTrialManager:(id)manager hasUpdatedParametersForNamespace:(id)namespace
{
  if ([namespace isEqualToString:@"COREOS_DAS"])
  {

    [(_DASDynamicRuntimeAllocator *)self updateTrialParameters];
  }
}

@end