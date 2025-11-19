@interface _DASApplicationPolicy
+ (id)focalApplicationsWithContext:(id)a3;
+ (id)policyInstance;
- (BOOL)appliesToActivity:(id)a3;
- (BOOL)isDaemon:(id)a3;
- (BOOL)shouldIgnoreTrigger:(id)a3 withState:(id)a4;
- (_DASApplicationPolicy)init;
- (_DASPredictionTimeline)topNPrediction;
- (double)scoreForActivity:(id)a3 atDate:(id)a4 withRationale:(id)a5;
- (double)scoreForAnyAppActivity:(id)a3 atDate:(id)a4;
- (double)weightForActivity:(id)a3;
- (id)initializeTriggers;
- (id)predictionTimelineForBundleID:(id)a3;
- (id)responseForActivity:(id)a3 withState:(id)a4;
- (unsigned)jitter;
- (void)updateAppLaunchedRecently:(id)a3;
- (void)updateRecentApplications;
@end

@implementation _DASApplicationPolicy

+ (id)policyInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004267C;
  block[3] = &unk_1001B54A0;
  block[4] = a1;
  if (qword_10020B010 != -1)
  {
    dispatch_once(&qword_10020B010, block);
  }

  v2 = qword_10020B018;

  return v2;
}

- (unsigned)jitter
{
  v2 = +[NSDate now];
  v3 = v2;
  if (!qword_10020B030 || ([v2 timeIntervalSinceDate:?], v4 >= 300.0))
  {
    dword_10020B028 = arc4random_uniform(0x546u);
  }

  v5 = qword_10020B030;
  qword_10020B030 = v3;

  return dword_10020B028;
}

- (id)initializeTriggers
{
  v2 = +[_CDContextQueries keyPathForAppUsageDataDictionaries];
  v3 = [_CDContextualPredicate predicateForChangeAtKeyPath:v2];

  v7[0] = @"identifier";
  v7[1] = @"predicate";
  v8[0] = @"com.apple.das.apppolicy.appchanged";
  v8[1] = v3;
  v7[2] = @"deviceSet";
  v7[3] = @"mustWake";
  v8[2] = &off_1001C9808;
  v8[3] = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];
  v9 = v4;
  v5 = [NSArray arrayWithObjects:&v9 count:1];

  return v5;
}

- (_DASApplicationPolicy)init
{
  v28.receiver = self;
  v28.super_class = _DASApplicationPolicy;
  v2 = [(_DASApplicationPolicy *)&v28 init];
  v3 = v2;
  if (v2)
  {
    policyName = v2->_policyName;
    v2->_policyName = @"Application Policy";

    v5 = os_log_create("com.apple.DuetActivityScheduler", "ApplicationPolicy");
    log = v3->_log;
    v3->_log = v5;

    v7 = +[_DASPredictionManager sharedManager];
    predictionManager = v3->_predictionManager;
    v3->_predictionManager = v7;

    v9 = +[NSMutableDictionary dictionary];
    lastApplicationTimelineUpdate = v3->_lastApplicationTimelineUpdate;
    v3->_lastApplicationTimelineUpdate = v9;

    v11 = +[NSMutableDictionary dictionary];
    lastApplicationTimelineRequest = v3->_lastApplicationTimelineRequest;
    v3->_lastApplicationTimelineRequest = v11;

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_attr_make_with_qos_class(v13, QOS_CLASS_BACKGROUND, 0);
    v15 = dispatch_queue_create("com.apple.dasd.DASApplicationPolicy.predictionQueue", v14);
    predictionQueue = v3->_predictionQueue;
    v3->_predictionQueue = v15;

    v17 = +[NSMutableSet set];
    daemons = v3->_daemons;
    v3->_daemons = v17;

    v19 = [(_DASApplicationPolicy *)v3 initializeTriggers];
    triggers = v3->_triggers;
    v3->_triggers = v19;

    v21 = +[NSMutableSet set];
    recentlyUsedApplications = v3->_recentlyUsedApplications;
    v3->_recentlyUsedApplications = v21;

    v23 = +[_DASProcessLifecycleMonitor sharedMonitor];
    processMonitor = v3->_processMonitor;
    v3->_processMonitor = v23;

    [(_DASApplicationPolicy *)v3 updateRecentApplications];
    v25 = +[_DASComplicationManager sharedInstance];
    complicationManager = v3->_complicationManager;
    v3->_complicationManager = v25;
  }

  return v3;
}

- (void)updateRecentApplications
{
  v3 = +[_DASPredictionManager predictionGenerationQueue];
  v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3);
  v5 = qword_10020B020;
  qword_10020B020 = v4;

  v6 = qword_10020B020;
  v7 = dispatch_walltime(0, 0);
  dispatch_source_set_timer(v6, v7, 0x1A3185C5000uLL, 0x29E8D60800uLL);
  dispatch_set_qos_class_fallback();
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000427C0;
  handler[3] = &unk_1001B5668;
  handler[4] = self;
  dispatch_source_set_event_handler(qword_10020B020, handler);
  dispatch_resume(qword_10020B020);
}

+ (id)focalApplicationsWithContext:(id)a3
{
  v3 = +[_DASProcessLifecycleMonitor sharedMonitor];
  v4 = [v3 foregroundedApplications];

  return v4;
}

- (void)updateAppLaunchedRecently:(id)a3
{
  v4 = a3;
  v5 = self->_recentlyUsedApplications;
  objc_sync_enter(v5);
  v6 = [(NSMutableSet *)self->_recentlyUsedApplications count];
  recentlyUsedApplications = self->_recentlyUsedApplications;
  if (v6 >= 0x19)
  {
    if (([(NSMutableSet *)recentlyUsedApplications containsObject:v4]& 1) != 0)
    {
      goto LABEL_5;
    }

    v8 = self->_recentlyUsedApplications;
    v9 = [(NSMutableSet *)v8 anyObject];
    [(NSMutableSet *)v8 removeObject:v9];

    recentlyUsedApplications = self->_recentlyUsedApplications;
  }

  [(NSMutableSet *)recentlyUsedApplications addObject:v4];
LABEL_5:
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v11 = self->_recentlyUsedApplications;
    v12 = 138412290;
    v13 = v11;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Recent Applications: %@", &v12, 0xCu);
  }

  objc_sync_exit(v5);
}

- (BOOL)isDaemon:(id)a3
{
  v3 = a3;
  v4 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v3 allowPlaceholder:0 error:0];

  v5 = [v4 compatibilityObject];

  return v5 == 0;
}

- (_DASPredictionTimeline)topNPrediction
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100042F2C;
  v10 = sub_100042F3C;
  v11 = 0;
  predictionQueue = self->_predictionQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100042F44;
  v5[3] = &unk_1001B5708;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(predictionQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)predictionTimelineForBundleID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100042F2C;
  v16 = sub_100042F3C;
  v17 = 0;
  predictionQueue = self->_predictionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000432C0;
  block[3] = &unk_1001B5AB8;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(predictionQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (BOOL)shouldIgnoreTrigger:(id)a3 withState:(id)a4
{
  if (![a3 isEqualToString:{@"com.apple.das.apppolicy.appchanged", a4}])
  {
    return 0;
  }

  v5 = [(_DASProcessLifecycleMonitor *)self->_processMonitor foregroundedApplications];
  v6 = [v5 count] == 0;

  return v6;
}

- (double)weightForActivity:(id)a3
{
  v3 = a3;
  if ([v3 requestsApplicationLaunch])
  {
    v4 = 50.0;
  }

  else
  {
    v5 = [v3 schedulingPriority];
    if (v5 >= _DASSchedulingPriorityUtility)
    {
      v4 = 25.0;
    }

    else
    {
      v4 = 5.0;
    }
  }

  return v4;
}

- (BOOL)appliesToActivity:(id)a3
{
  v3 = a3;
  v4 = [v3 launchReason];
  if ([v4 isEqualToString:_DASLaunchReasonBackgroundProcessing])
  {
    v5 = 0;
  }

  else
  {
    v6 = [v3 launchReason];
    if ([v6 isEqualToString:_DASLaunchReasonHealthResearch])
    {
      v5 = 0;
    }

    else
    {
      v7 = [v3 launchReason];
      if ([v7 isEqualToString:_DASLaunchReasonHealthKit])
      {
        v5 = 0;
      }

      else
      {
        v8 = [v3 widgetID];
        if (v8 || ([v3 requestsImmediateRuntime] & 1) != 0)
        {
          v5 = 0;
        }

        else if ([v3 supportsAnyApplication] & 1) != 0 || (objc_msgSend(v3, "requestsApplicationLaunch"))
        {
          v5 = 1;
        }

        else
        {
          v10 = [v3 relatedApplications];
          v5 = [v10 count] != 0;
        }
      }
    }
  }

  return v5;
}

- (double)scoreForAnyAppActivity:(id)a3 atDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_DASApplicationPolicy *)self topNPrediction];
  v28 = v7;
  v9 = [v7 dateByAddingTimeInterval:450.0];
  v27 = v8;
  v10 = [v8 valueAtDate:v9];
  v11 = [v6 relatedApplications];
  if ([v11 count])
  {
    [v6 relatedApplications];
  }

  else
  {
    [v10 allKeys];
  }
  v12 = ;

  v13 = +[NSMutableArray array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v30;
    v18 = 1.0;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v29 + 1) + 8 * i);
        v21 = [v10 objectForKeyedSubscript:v20];
        v22 = v21;
        if (v21)
        {
          [v21 doubleValue];
          v18 = v18 * (1.0 - v23);
          [v13 addObject:v20];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v16);
  }

  else
  {
    v18 = 1.0;
  }

  v24 = objc_autoreleasePoolPush();
  if ([v13 count])
  {
    v25 = [NSArray arrayWithArray:v13];
    [v6 setSchedulerRecommendedApplications:v25];
  }

  objc_autoreleasePoolPop(v24);

  return fmax(sqrt(1.0 - v18), 0.01);
}

- (double)scoreForActivity:(id)a3 atDate:(id)a4 withRationale:(id)a5
{
  v8 = a3;
  v9 = a4;
  v51 = a5;
  v53 = v8;
  v50 = v9;
  if ([v8 supportsAnyApplication])
  {
    [(_DASApplicationPolicy *)self scoreForAnyAppActivity:v8 atDate:v9];
    v11 = v10;
    goto LABEL_63;
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v12 = [v8 relatedApplications];
  v13 = [v12 countByEnumeratingWithState:&v58 objects:v65 count:16];
  if (v13)
  {
    v14 = *v59;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v59 != v14)
        {
          objc_enumerationMutation(v12);
        }

        if ([(_DASComplicationManager *)self->_complicationManager isActiveComplication:*(*(&v58 + 1) + 8 * i)])
        {

          v11 = 1.0;
          goto LABEL_63;
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v58 objects:v65 count:16];
    }

    while (v13);
  }

  v52 = [v50 dateByAddingTimeInterval:{-[_DASApplicationPolicy jitter](self, "jitter") + 450.0}];
  v49 = os_transaction_create();
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v16 = [v53 relatedApplications];
  v17 = [v16 countByEnumeratingWithState:&v54 objects:v64 count:16];
  if (!v17)
  {
    v19 = 1.0;
    goto LABEL_35;
  }

  v18 = *v55;
  v19 = 1.0;
  do
  {
    for (j = 0; j != v17; j = j + 1)
    {
      if (*v55 != v18)
      {
        objc_enumerationMutation(v16);
      }

      v21 = *(*(&v54 + 1) + 8 * j);
      v22 = self->_daemons;
      objc_sync_enter(v22);
      if ([(NSMutableSet *)self->_daemons containsObject:v21])
      {
        v23 = [v53 schedulingPriority];
        v19 = v19 * 0.99;
        if (v23 > _DASSchedulingPriorityUtility)
        {
          log = self->_log;
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v63 = v21;
            _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Daemon %@ doing high-priority work!", buf, 0xCu);
          }
        }

LABEL_24:
        objc_sync_exit(v22);
        goto LABEL_30;
      }

      if ([(_DASApplicationPolicy *)self isDaemon:v21])
      {
        v25 = self->_log;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v63 = v21;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%@ is a daemon. Ignoring prediction", buf, 0xCu);
        }

        [(NSMutableSet *)self->_daemons addObject:v21];
        v19 = v19 * 0.9999;
        goto LABEL_24;
      }

      objc_sync_exit(v22);

      v22 = [(_DASApplicationPolicy *)self predictionTimelineForBundleID:v21];
      v26 = [(NSMutableSet *)v22 valueAtDate:v52];
      v27 = v26;
      v28 = 0.0025;
      if (v22)
      {
        v28 = 0.0025;
        if (v26)
        {
          [v26 doubleValue];
          v28 = v29;
          if (v51)
          {
            v30 = [NSNumber numberWithDouble:v29];
            v31 = [NSPredicate predicateWithFormat:@"%@.likelihood == %@", v21, v30];
            [v51 addRationaleWithCondition:v31];
          }
        }
      }

      v19 = v19 * (1.0 - v28);
LABEL_30:
    }

    v17 = [v16 countByEnumeratingWithState:&v54 objects:v64 count:16];
  }

  while (v17);
LABEL_35:

  v32 = [v53 requestsApplicationLaunch];
  v33 = sqrt(1.0 - v19);
  if ((v32 & (v33 > 0.25)) != 0)
  {
    v34 = 1.0;
  }

  else
  {
    v34 = v33;
  }

  if (v34 > 2.22044605e-16 && [v53 requestsApplicationLaunch])
  {
    v35 = [v53 relatedApplications];
    v36 = [v35 firstObject];

    v37 = +[_DASDaemon sharedInstance];
    v38 = [v37 requestCountForApplication:v36];

    if (v38)
    {
      v34 = v34 + (v38 - 1) * 0.1;
    }
  }

  if ([v53 beforeApplicationLaunch])
  {
    v39 = 0.0;
  }

  else
  {
    v39 = 0.01;
  }

  if ([v53 requestsApplicationLaunch])
  {
    v40 = +[NSDate now];
    [v50 timeIntervalSinceDate:v40];
    v42 = v41 < 0.0;

    if (v42)
    {
      v43 = self->_recentlyUsedApplications;
      objc_sync_enter(v43);
      v44 = [v53 relatedApplications];
      v45 = [v44 firstObject];

      v34 = v34 * 0.65;
      if (v45 && [(NSMutableSet *)self->_recentlyUsedApplications containsObject:v45])
      {
        v34 = v34 + 0.35;
      }

      objc_sync_exit(v43);
    }

    if (v34 > 0.5)
    {
      v34 = 1.0;
    }

    v46 = [v53 schedulingPriority];
    if (v46 < _DASSchedulingPriorityUserInitiated && ![v53 requestsNewsstandLaunch])
    {
      v39 = 0.0;
    }
  }

  v47 = 1.0;
  if (v34 <= 1.0)
  {
    v47 = v34;
  }

  if (v39 >= v47)
  {
    v11 = v39;
  }

  else
  {
    v11 = v47;
  }

LABEL_63:
  return v11;
}

- (id)responseForActivity:(id)a3 withState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_DASProcessLifecycleMonitor *)self->_processMonitor foregroundedApplications];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v9 = [v6 relatedApplications];
  v10 = [v9 countByEnumeratingWithState:&v61 objects:v66 count:16];
  if (v10)
  {
    v11 = *v62;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v62 != v11)
      {
        objc_enumerationMutation(v9);
      }

      if ([v8 containsObject:*(*(&v61 + 1) + 8 * v12)])
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v9 countByEnumeratingWithState:&v61 objects:v66 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    if ([v6 isContinuedProcessingTask])
    {
      v14 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:@"Application Policy"];
      [(_DASPolicyResponseRationale *)v14 addRationaleForCondition:@"appIsForegrounded" withRequiredValue:1.0 withCurrentValue:1.0];
      [(_DASPolicyResponseRationale *)v14 setResponseOptions:[(_DASPolicyResponseRationale *)v14 responseOptions]| 0x10];
      v15 = [_DASPolicyResponse policyResponseWithDecision:200 validityDuration:v14 rationale:86400.0];

      goto LABEL_35;
    }

    v13 = 1;
  }

  else
  {
LABEL_9:

    v13 = 0;
  }

  if ([v6 requestsApplicationLaunch])
  {
    v16 = [v6 launchReason];
    if ([v16 isEqualToString:_DASLaunchReasonBackgroundRemoteNotification])
    {
    }

    else
    {
      v17 = [v6 launchReason];
      v18 = [v17 isEqualToString:_DASLaunchReasonBackgroundNewsstand];

      if (!v18)
      {
        goto LABEL_20;
      }
    }

    v60 = 0;
    v19 = +[_DASDaemon sharedInstance];
    v20 = [v19 barScheduler];
    v21 = [v6 relatedApplications];
    v22 = [v21 firstObject];
    v23 = [v20 pushLaunchAllowedForApp:v22 immediately:&v60];

    if (v60 == 1)
    {
      v24 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:@"Application Policy"];
      [(_DASPolicyResponseRationale *)v24 addRationaleForCondition:@"appIsForeground" withRequiredValue:1.0 withCurrentValue:1.0];
      [(_DASPolicyResponseRationale *)v24 setResponseOptions:[(_DASPolicyResponseRationale *)v24 responseOptions]| 2];
      v25 = [_DASPolicyResponse policyResponseWithDecision:200 validityDuration:v24 rationale:86400.0];
LABEL_27:
      v15 = v25;

      goto LABEL_35;
    }

    if ((v23 & 1) == 0)
    {
      v24 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:@"Application Policy"];
      [(_DASPolicyResponseRationale *)v24 addRationaleForCondition:@"pushDisallowed" withRequiredValue:0.0 withCurrentValue:1.0];
      v25 = [_DASPolicyResponse policyResponseWithDecision:100 validityDuration:v24 rationale:86400.0];
      goto LABEL_27;
    }
  }

LABEL_20:
  if (v13)
  {
    if ([v6 requestsApplicationLaunch])
    {
      v26 = [v6 launchReason];
      if ([v26 isEqualToString:_DASLaunchReasonBackgroundFetch])
      {

LABEL_29:
        v29 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:@"Application Policy"];
        [(_DASPolicyResponseRationale *)v29 addRationaleForCondition:@"appIsForeground" withRequiredValue:0.0 withCurrentValue:1.0];
        v15 = [_DASPolicyResponse policyResponseWithDecision:33 validityDuration:v29 rationale:86400.0];

        goto LABEL_35;
      }

      v28 = [v6 isBackgroundTaskActivity];

      if (v28)
      {
        goto LABEL_29;
      }
    }

    else if ([v6 runOnAppForeground])
    {
      [0 addRationaleForCondition:@"appIsForeground" withRequiredValue:1.0 withCurrentValue:1.0];
      v27 = [_DASPolicyResponse policyResponseWithDecision:67 validityDuration:0 rationale:86400.0];
LABEL_34:
      v15 = v27;
      goto LABEL_35;
    }
  }

  v30 = [v6 launchReason];
  if ([v30 isEqualToString:_DASLaunchReasonBackgroundRemoteNotification])
  {

LABEL_33:
    v27 = [_DASPolicyResponse policyResponseWithDecision:0 validityDuration:0 rationale:86400.0];
    goto LABEL_34;
  }

  v31 = [v6 launchReason];
  v32 = [v31 isEqualToString:_DASLaunchReasonBackgroundNewsstand];

  if (v32)
  {
    goto LABEL_33;
  }

  v34 = +[_DASFileProtectionPolicy policyInstance];
  v35 = [v34 isClassCLocked];

  if (v35)
  {
    v36 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:@"Application Policy"];
    [(_DASPolicyResponseRationale *)v36 addRationaleForCondition:@"classCLocked" withRequiredValue:1.0 withCurrentValue:0.0];
    v15 = [_DASPolicyResponse policyResponseWithScore:v36 validityDuration:0.5 rationale:86400.0];

    goto LABEL_35;
  }

  v37 = +[NSDate date];
  [(_DASApplicationPolicy *)self scoreForActivity:v6 atDate:v37 withRationale:0];
  v39 = v38;
  v40 = self->_recentlyUsedApplications;
  objc_sync_enter(v40);
  v41 = [v6 relatedApplications];
  if ([v41 count])
  {
    v42 = [v6 runWhenAppLaunchUnlikely];

    if (v42)
    {
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v43 = [v6 relatedApplications];
      v44 = [v43 countByEnumeratingWithState:&v56 objects:v65 count:16];
      if (v44)
      {
        v45 = *v57;
        while (2)
        {
          for (i = 0; i != v44; i = i + 1)
          {
            if (*v57 != v45)
            {
              objc_enumerationMutation(v43);
            }

            if ([(NSMutableSet *)self->_recentlyUsedApplications containsObject:*(*(&v56 + 1) + 8 * i)])
            {
              v54 = [NSPredicate predicateWithFormat:@"runWhenAppLaunchUnlikely == %@ AND relatedApplicationRecentlyLaunched == %@", &__kCFBooleanTrue, &__kCFBooleanTrue];
              [0 addRationaleWithCondition:v54];

              v15 = [_DASPolicyResponse policyResponseWithDecision:33 validityDuration:0 rationale:0x384uLL];

              goto LABEL_60;
            }
          }

          v44 = [v43 countByEnumeratingWithState:&v56 objects:v65 count:16];
          if (v44)
          {
            continue;
          }

          break;
        }
      }

      if (v39 > 0.5)
      {
        v47 = [NSPredicate predicateWithFormat:@"runWhenAppLaunchUnlikely == %@ AND launchLikelihood == %lf", &__kCFBooleanTrue, *&v39];
        [0 addRationaleWithCondition:v47];

        v15 = [_DASPolicyResponse policyResponseWithDecision:33 validityDuration:0 rationale:0x384uLL];
LABEL_60:
        objc_sync_exit(v40);

        goto LABEL_63;
      }
    }
  }

  else
  {
  }

  objc_sync_exit(v40);

  v48 = [v6 beforeApplicationLaunch];
  if (v39 <= 0.05)
  {
    v49 = v48;
  }

  else
  {
    v49 = 0;
  }

  if (v49 == 1 && (+[_CDContextQueries keyPathForPluginStatus](_CDContextQueries, "keyPathForPluginStatus"), v50 = objc_claimAutoreleasedReturnValue(), [v7 objectForKeyedSubscript:v50], v51 = objc_claimAutoreleasedReturnValue(), v52 = objc_msgSend(v51, "BOOLValue"), v51, v50, (v52 & 1) == 0))
  {
    v55 = [NSPredicate predicateWithFormat:@"isPluggedIn == %@ AND likelihood == %lf", &__kCFBooleanFalse, *&v39];
    [0 addRationaleWithCondition:v55];

    v53 = [_DASPolicyResponse policyResponseWithDecision:33 validityDuration:0 rationale:0x384uLL];
  }

  else
  {
    v53 = [_DASPolicyResponse policyResponseWithScore:0 validityDuration:v39 rationale:0x384uLL];
  }

  v15 = v53;
LABEL_63:

LABEL_35:

  return v15;
}

@end