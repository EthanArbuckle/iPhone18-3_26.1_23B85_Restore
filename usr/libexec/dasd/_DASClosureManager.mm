@interface _DASClosureManager
- (BOOL)extractSignposts:(id)signposts startDate:(id)date chunkedByInterval:(double)interval context:(id)context error:(id *)error;
- (BOOL)isDeletableApp:(id)app;
- (BOOL)isNotContinuouslyRunningApplication:(id)application;
- (BOOL)isUserInstalledApp:(id)app;
- (_DASClosureManager)init;
- (id)appsLaunchedSinceBoot;
- (id)mostRecentBootTime;
- (id)recentlyInstalledAppsLimitedTo:(int)to;
- (void)buildClosuresForApps:(id)apps withTask:(id)task onBoot:(BOOL)boot;
- (void)collectClosureTelemetryWithTask:(id)task;
- (void)collectLaunchDataWithBootBatchTimestamp:(double)timestamp opportunisticBatchTimestamp:(double)batchTimestamp completion:(id)completion;
- (void)collectPrewarmingDataWithCompletion:(id)completion;
- (void)initializeLogs;
- (void)registerForActivities;
@end

@implementation _DASClosureManager

- (_DASClosureManager)init
{
  v9.receiver = self;
  v9.super_class = _DASClosureManager;
  v2 = [(_DASClosureManager *)&v9 init];
  v3 = v2;
  if (v2)
  {
    [(_DASClosureManager *)v2 initializeLogs];
    [(_DASClosureManager *)v3 registerForActivities];
    v4 = objc_opt_new();
    collectTelemetryActivityContext = v3->_collectTelemetryActivityContext;
    v3->_collectTelemetryActivityContext = v4;

    v6 = +[_DASPredictionManager sharedTimelinePredictor];
    timelinePredictor = v3->_timelinePredictor;
    v3->_timelinePredictor = v6;
  }

  return v3;
}

- (void)initializeLogs
{
  if (!qword_10020B5C0)
  {
    v2 = os_log_create("com.apple.dasd.signpost", "DuetClosuresTelemetry");
    v3 = qword_10020B5C0;
    qword_10020B5C0 = v2;
  }

  if (!qword_10020B5C8)
  {
    v4 = [_DASDaemonLogger logForCategory:@"closureManager"];
    v5 = qword_10020B5C8;
    qword_10020B5C8 = v4;

    _objc_release_x1(v4, v5);
  }
}

- (void)registerForActivities
{
  v3 = +[BGSystemTaskScheduler sharedScheduler];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10008B8DC;
  v22[3] = &unk_1001B7250;
  v22[4] = self;
  [v3 registerForTaskWithIdentifier:@"com.apple.dasd.closureOnBoot" usingQueue:0 launchHandler:v22];

  v4 = +[BGSystemTaskScheduler sharedScheduler];
  v5 = [v4 taskRequestForIdentifier:@"com.apple.dasd.closureOnBoot"];

  if (!v5)
  {
    v6 = [[BGNonRepeatingSystemTaskRequest alloc] initWithIdentifier:@"com.apple.dasd.closureOnBoot"];
    [v6 setPriority:2];
    [v6 setRequiresExternalPower:0];
    [v6 setTrySchedulingBefore:0.0];
    v7 = +[BGSystemTaskScheduler sharedScheduler];
    v21 = 0;
    v8 = [v7 submitTaskRequest:v6 error:&v21];
    v9 = v21;

    if ((v8 & 1) == 0)
    {
      v10 = +[_DASDaemonLogger defaultCategory];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Failed to submit task with error: %@", buf, 0xCu);
      }
    }
  }

  v11 = +[BGSystemTaskScheduler sharedScheduler];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10008B9B4;
  v20[3] = &unk_1001B7250;
  v20[4] = self;
  [v11 registerForTaskWithIdentifier:@"com.apple.dasd.closureOpportunistic" usingQueue:0 launchHandler:v20];

  v12 = +[BGSystemTaskScheduler sharedScheduler];
  v13 = [v12 taskRequestForIdentifier:@"com.apple.dasd.closureOpportunistic"];

  if (!v13)
  {
    v14 = [[BGNonRepeatingSystemTaskRequest alloc] initWithIdentifier:@"com.apple.dasd.closureOpportunistic"];
    [v14 setPriority:1];
    [v14 setRequiresExternalPower:1];
    [v14 setRequiresUserInactivity:1];
    [v14 setTrySchedulingBefore:21600.0];
    v15 = +[BGSystemTaskScheduler sharedScheduler];
    v19 = 0;
    v16 = [v15 submitTaskRequest:v14 error:&v19];
    v17 = v19;

    if ((v16 & 1) == 0)
    {
      v18 = +[_DASDaemonLogger defaultCategory];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Failed to submit task with error: %@", buf, 0xCu);
      }
    }
  }
}

- (BOOL)isUserInstalledApp:(id)app
{
  appCopy = app;
  v4 = [[LSApplicationRecord alloc] initWithBundleIdentifier:appCopy allowPlaceholder:0 error:0];
  compatibilityObject = [v4 compatibilityObject];

  appState = [compatibilityObject appState];
  if (![appState isValid])
  {
    goto LABEL_6;
  }

  appState2 = [compatibilityObject appState];
  if (([appState2 isInstalled] & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  applicationType = [compatibilityObject applicationType];
  v9 = [applicationType isEqualToString:LSUserApplicationType];

  if (v9)
  {
    v10 = 1;
    goto LABEL_10;
  }

LABEL_7:
  v11 = [_DASDaemonLogger logForCategory:@"closureManager"];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = appCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Skipping system application '%@'", &v13, 0xCu);
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (BOOL)isDeletableApp:(id)app
{
  appCopy = app;
  v4 = [[LSApplicationRecord alloc] initWithBundleIdentifier:appCopy allowPlaceholder:0 error:0];
  applicationState = [v4 applicationState];
  if (![applicationState isValid])
  {
    goto LABEL_6;
  }

  applicationState2 = [v4 applicationState];
  if (([applicationState2 isInstalled] & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  isDeletable = [v4 isDeletable];

  if (isDeletable)
  {
    v8 = 1;
    goto LABEL_9;
  }

LABEL_7:
  v9 = qword_10020B5C8;
  v8 = 0;
  if (os_log_type_enabled(qword_10020B5C8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = appCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Skipping non-deletable app '%@'", &v11, 0xCu);
    v8 = 0;
  }

LABEL_9:

  return v8;
}

- (BOOL)isNotContinuouslyRunningApplication:(id)application
{
  applicationCopy = application;
  v4 = [[LSApplicationRecord alloc] initWithBundleIdentifier:applicationCopy allowPlaceholder:0 error:0];
  uIBackgroundModes = [v4 UIBackgroundModes];
  v6 = [uIBackgroundModes containsObject:@"continuous"];

  if (v6)
  {
    v7 = qword_10020B5C8;
    if (os_log_type_enabled(qword_10020B5C8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = applicationCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Skipping continuous app '%@'", &v9, 0xCu);
    }
  }

  return v6 ^ 1;
}

- (void)buildClosuresForApps:(id)apps withTask:(id)task onBoot:(BOOL)boot
{
  bootCopy = boot;
  appsCopy = apps;
  taskCopy = task;
  v8 = os_signpost_id_generate(qword_10020B5C0);
  v9 = qword_10020B5C0;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    allObjects = [appsCopy allObjects];
    v12 = [allObjects componentsJoinedByString:{@", "}];
    *buf = 67109378;
    *&buf[4] = bootCopy;
    LOWORD(v39) = 2114;
    *(&v39 + 2) = v12;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_EVENT, v8, "DuetClosuresPrewarm", "onBoot:%d, bundleIDs:%{public}@", buf, 0x12u);
  }

  *buf = 0;
  *&v39 = buf;
  *(&v39 + 1) = 0x2020000000;
  v40 = 0;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10008C244;
  v32[3] = &unk_1001B5798;
  v32[4] = buf;
  [taskCopy setExpirationHandler:v32];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = appsCopy;
  v14 = [v13 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v14)
  {
    v15 = *v29;
LABEL_6:
    v16 = 0;
    while (1)
    {
      if (*v29 != v15)
      {
        objc_enumerationMutation(v13);
      }

      if (*(v39 + 24))
      {
        break;
      }

      v17 = *(*(&v28 + 1) + 8 * v16);
      v18 = qword_10020B5C8;
      if (os_log_type_enabled(qword_10020B5C8, OS_LOG_TYPE_DEFAULT))
      {
        *v33 = 138412290;
        v34 = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Building closure for '%@'", v33, 0xCu);
      }

      v19 = +[_APRSPrewarmInterface sharedInstance];
      v20 = [v19 closureBuildLaunchAppFromBundleID:v17];

      if (v20)
      {
        v21 = qword_10020B5C8;
        if (os_log_type_enabled(qword_10020B5C8, OS_LOG_TYPE_DEFAULT))
        {
          *v33 = 138412546;
          v34 = v17;
          v35 = 2112;
          v36 = v20;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Encountered error launching %@: %@", v33, 0x16u);
        }
      }

      if (v14 == ++v16)
      {
        v14 = [v13 countByEnumeratingWithState:&v28 objects:v37 count:16];
        if (v14)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

  if (*(v39 + 24) == 1)
  {
    v27 = 0;
    v22 = [taskCopy setTaskExpiredWithRetryAfter:&v27 error:0.0];
    v23 = v27;
    if ((v22 & 1) == 0)
    {
      v24 = qword_10020B5C0;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        identifier = [taskCopy identifier];
        sub_100123E24(identifier, v23, v33);
      }

      [taskCopy setTaskCompleted];
    }
  }

  else
  {
    [taskCopy setTaskCompleted];
  }

  _Block_object_dispose(buf, 8);
}

- (id)recentlyInstalledAppsLimitedTo:(int)to
{
  v4 = +[NSMutableSet set];
  v5 = [NSDate dateWithTimeIntervalSinceNow:-172800.0];
  v6 = [BMPublisherOptions alloc];
  v7 = +[NSDate now];
  v8 = [v6 initWithStartDate:v7 endDate:v5 maxEvents:to lastN:0 reversed:1];

  v9 = +[_DASBMUtilityProvider sharedUtilityProvider];
  getConsoleUserUid = [v9 getConsoleUserUid];

  v11 = BiomeLibrary();
  v12 = [v11 App];
  install = [v12 Install];
  v14 = [install publisherWithUser:getConsoleUserUid useCase:@"DASBiomeUtilityUseCase" options:v8];

  v15 = [v14 filterWithIsIncluded:&stru_1001B7270];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10008C4A8;
  v24[3] = &unk_1001B5570;
  v25 = v14;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10008C510;
  v22[3] = &unk_1001B6088;
  v16 = v4;
  v23 = v16;
  v17 = v14;
  v18 = [v17 sinkWithCompletion:v24 receiveInput:v22];
  v19 = v23;
  v20 = v16;

  return v16;
}

- (id)appsLaunchedSinceBoot
{
  mostRecentBootTime = [(_DASClosureManager *)self mostRecentBootTime];
  v3 = +[NSDate date];
  [mostRecentBootTime timeIntervalSinceDate:v3];
  if (v4 > 0.0)
  {
    v5 = [mostRecentBootTime dateByAddingTimeInterval:3600.0];

    v3 = v5;
  }

  v6 = [_DASBMHistogramBuilder builderForAppInFocusStreamStarting:mostRecentBootTime ending:v3];
  histogram = [v6 histogram];
  countsDictionary = [histogram countsDictionary];
  allKeys = [countsDictionary allKeys];

  return allKeys;
}

- (id)mostRecentBootTime
{
  v4 = 0;
  v5 = 0;
  *v7 = 0x1500000001;
  v6 = 16;
  if (sysctl(v7, 2u, &v4, &v6, 0, 0) == -1)
  {
    [NSDate dateWithTimeIntervalSinceNow:-86400.0];
  }

  else
  {
    [NSDate dateWithTimeIntervalSince1970:v5 / 1000000.0 + v4];
  }
  v2 = ;

  return v2;
}

- (void)collectClosureTelemetryWithTask:(id)task
{
  taskCopy = task;
  mostRecentBootTime = [(_DASClosureManager *)self mostRecentBootTime];
  v6 = [NSDate dateWithTimeIntervalSinceNow:-86400.0];
  v7 = [mostRecentBootTime laterDate:v6];

  [(_DASCollectTelemetryActivityContext *)self->_collectTelemetryActivityContext updateWithtask:taskCopy prewarmingStartDate:mostRecentBootTime launchStartDate:v7];
  v8 = qword_10020B5C8;
  if (os_log_type_enabled(qword_10020B5C8, OS_LOG_TYPE_DEFAULT))
  {
    collectTelemetryActivityContext = self->_collectTelemetryActivityContext;
    *buf = 138412290;
    v13 = collectTelemetryActivityContext;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Running telemetry collection using context: %@", buf, 0xCu);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10008D218;
  v11[3] = &unk_1001B5668;
  v11[4] = self;
  [taskCopy setExpirationHandler:v11];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10008D228;
  v10[3] = &unk_1001B7360;
  v10[4] = self;
  [(_DASClosureManager *)self collectPrewarmingDataWithCompletion:v10];
}

- (void)collectLaunchDataWithBootBatchTimestamp:(double)timestamp opportunisticBatchTimestamp:(double)batchTimestamp completion:(id)completion
{
  completionCopy = completion;
  v9 = objc_opt_new();
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v39 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v37 = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v35 = 0;
  v10 = objc_alloc_init(SignpostSupportObjectExtractor);
  v11 = objc_alloc_init(SignpostSupportSubsystemCategoryAllowlist);
  [v11 addSubsystem:@"com.apple.app_launch_measurement" category:@"ApplicationLaunch"];
  [v10 setSubsystemCategoryFilter:v11];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10008DC04;
  v27[3] = &unk_1001B7388;
  timestampCopy = timestamp;
  batchTimestampCopy = batchTimestamp;
  v29 = v38;
  v30 = v36;
  v31 = v34;
  v12 = v9;
  v28 = v12;
  [v10 setEndEventProcessingBlock:v27];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10008DEA8;
  v21[3] = &unk_1001B73B0;
  v13 = completionCopy;
  v23 = v13;
  v14 = v12;
  v22 = v14;
  v24 = v38;
  v25 = v36;
  v26 = v34;
  [v10 setProcessingCompletionBlock:v21];
  launchDataCollectionStartDate = [(_DASCollectTelemetryActivityContext *)self->_collectTelemetryActivityContext launchDataCollectionStartDate];
  collectTelemetryActivityContext = self->_collectTelemetryActivityContext;
  v20 = 0;
  v17 = [(_DASClosureManager *)self extractSignposts:v10 startDate:launchDataCollectionStartDate chunkedByInterval:collectTelemetryActivityContext context:&v20 error:3600.0];
  v18 = v20;

  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = v17;
  }

  if ((v19 & 1) == 0 && os_log_type_enabled(qword_10020B5C8, OS_LOG_TYPE_ERROR))
  {
    sub_100123F34();
  }

  _Block_object_dispose(v34, 8);
  _Block_object_dispose(v36, 8);
  _Block_object_dispose(v38, 8);
}

- (void)collectPrewarmingDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = sub_10008E1EC;
  v21[4] = sub_10008E1FC;
  v22 = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = sub_10008E1EC;
  v19[4] = sub_10008E1FC;
  v20 = 0;
  v5 = objc_alloc_init(SignpostSupportObjectExtractor);
  v6 = objc_alloc_init(SignpostSupportSubsystemCategoryAllowlist);
  [v6 addSubsystem:@"com.apple.dasd.signpost" category:@"DuetClosuresTelemetry"];
  [v5 setSubsystemCategoryFilter:v6];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10008E204;
  v18[3] = &unk_1001B73D8;
  v18[5] = v21;
  v18[6] = v19;
  v18[4] = self;
  [v5 setEmitEventProcessingBlock:v18];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10008E404;
  v14[3] = &unk_1001B7400;
  v7 = completionCopy;
  v15 = v7;
  v16 = v21;
  v17 = v19;
  [v5 setProcessingCompletionBlock:v14];
  prewarmingDataCollectionStartDate = [(_DASCollectTelemetryActivityContext *)self->_collectTelemetryActivityContext prewarmingDataCollectionStartDate];
  collectTelemetryActivityContext = self->_collectTelemetryActivityContext;
  v13 = 0;
  v10 = [(_DASClosureManager *)self extractSignposts:v5 startDate:prewarmingDataCollectionStartDate chunkedByInterval:collectTelemetryActivityContext context:&v13 error:3600.0];
  v11 = v13;

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10;
  }

  if ((v12 & 1) == 0 && os_log_type_enabled(qword_10020B5C8, OS_LOG_TYPE_ERROR))
  {
    sub_100123F34();
  }

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v21, 8);
}

- (BOOL)extractSignposts:(id)signposts startDate:(id)date chunkedByInterval:(double)interval context:(id)context error:(id *)error
{
  signpostsCopy = signposts;
  dateCopy = date;
  contextCopy = context;
  v13 = [dateCopy dateByAddingTimeInterval:3600.0];
  v14 = +[NSDate now];
  [dateCopy timeIntervalSinceDate:v14];
  if (v15 >= -3600.0)
  {
    v16 = 0;
    v17 = 1;
    if (!error)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  errorCopy = error;
  v18 = 0;
  while (1)
  {
    wasDeferred = [contextCopy wasDeferred];
    if (wasDeferred)
    {
      v22 = dateCopy;
      v16 = v18;
LABEL_10:
      v17 = wasDeferred ^ 1;
      dateCopy = v22;
      goto LABEL_12;
    }

    v20 = objc_autoreleasePoolPush();
    v27 = v18;
    v21 = [signpostsCopy processLogArchiveWithPath:0 startDate:dateCopy endDate:v13 errorOut:&v27];
    v16 = v27;

    if ((v21 & 1) == 0)
    {
      break;
    }

    v22 = v13;

    v13 = [v22 dateByAddingTimeInterval:3600.0];

    objc_autoreleasePoolPop(v20);
    [v22 timeIntervalSinceDate:v14];
    dateCopy = v22;
    v18 = v16;
    if (v23 >= -3600.0)
    {
      goto LABEL_10;
    }
  }

  objc_autoreleasePoolPop(v20);
  v17 = 0;
LABEL_12:
  error = errorCopy;
  if (errorCopy)
  {
LABEL_13:
    v24 = v16;
    *error = v16;
  }

LABEL_14:

  return v17;
}

@end