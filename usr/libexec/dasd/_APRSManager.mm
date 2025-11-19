@interface _APRSManager
+ (_APRSManager)sharedInstance;
- (_APRSManager)init;
- (void)extractResumeLaunchSignposts:(id)a3;
- (void)freezeNewlyRecommendedApps;
- (void)prewarmNewlyRecommendedApps;
- (void)registerForTrial;
- (void)registerFreezerTask;
- (void)registerPrewarmTask;
- (void)registerSignpostExtractionTask;
- (void)registerTasks;
- (void)updateTrialParameters;
@end

@implementation _APRSManager

- (void)extractResumeLaunchSignposts:(id)a3
{
  v4 = a3;
  v5 = os_transaction_create();
  v6 = +[NSDate date];
  signpostReaderDate = self->_signpostReaderDate;
  if (!signpostReaderDate || ([(NSDate *)signpostReaderDate timeIntervalSinceDate:v6], v8 < -86400.0))
  {
    v9 = [NSDate dateWithTimeIntervalSinceNow:-86400.0];
    v10 = self->_signpostReaderDate;
    self->_signpostReaderDate = v9;
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = @"com.apple.appResume.signpostReader";
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Started %@!", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v27 = 0x2020000000;
  v28 = 0;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000FC214;
  v23[3] = &unk_1001B5798;
  v23[4] = &buf;
  [v4 setExpirationHandler:v23];
  [(_APRSSignpostReader *)self->_signpostReader begin];
  *&v12 = 134217984;
  v21 = v12;
  while (1)
  {
    [(NSDate *)self->_signpostReaderDate timeIntervalSinceDate:v6, v21];
    if (v13 >= -3600.0 || (*(*(&buf + 1) + 24) & 1) != 0)
    {
      break;
    }

    v14 = self->_log;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [(NSDate *)self->_signpostReaderDate timeIntervalSinceDate:v6];
      *v24 = v21;
      v25 = v17;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Time interval %f", v24, 0xCu);
    }

    v15 = [(NSDate *)self->_signpostReaderDate dateByAddingTimeInterval:3600.0];
    [(_APRSSignpostReader *)self->_signpostReader logAppResumeAndLaunchesFrom:self->_signpostReaderDate endDate:v15];
    [(NSUserDefaults *)self->_defaults setObject:v15 forKey:@"signpostReaderDate"];
    v16 = self->_signpostReaderDate;
    self->_signpostReaderDate = v15;
  }

  [(_APRSSignpostReader *)self->_signpostReader end];
  if (*(*(&buf + 1) + 24) == 1)
  {
    v22 = 0;
    v18 = [v4 setTaskExpiredWithRetryAfter:&v22 error:0.0];
    v19 = v22;
    if ((v18 & 1) == 0)
    {
      v20 = self->_log;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        sub_10012C81C(v19, v20);
      }

      [v4 setTaskCompleted];
    }
  }

  else
  {
    [v4 setTaskCompleted];
  }

  _Block_object_dispose(&buf, 8);
}

- (void)registerSignpostExtractionTask
{
  v3 = +[BGSystemTaskScheduler sharedScheduler];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000FC4B0;
  v14[3] = &unk_1001B5770;
  v14[4] = self;
  [v3 registerForTaskWithIdentifier:@"com.apple.appResume.signpostReader" usingQueue:0 launchHandler:v14];

  v4 = +[BGSystemTaskScheduler sharedScheduler];
  v5 = [v4 taskRequestForIdentifier:@"com.apple.appResume.signpostReader"];

  if (!v5)
  {
    v6 = [[BGRepeatingSystemTaskRequest alloc] initWithIdentifier:@"com.apple.appResume.signpostReader"];
    [v6 setPriority:1];
    [v6 setInterval:86400.0];
    [v6 setMinDurationBetweenInstances:85400.0];
    [v6 setRequiresUserInactivity:1];
    [v6 setResourceIntensive:1];
    [v6 setResources:7];
    [v6 setRequiresProtectionClass:4];
    [v6 setRequiresExternalPower:1];
    v7 = +[BGSystemTaskScheduler sharedScheduler];
    v13 = 0;
    v8 = [v7 submitTaskRequest:v6 error:&v13];
    v9 = v13;

    if ((v8 & 1) == 0)
    {
      v10 = +[_DASDaemonLogger defaultCategory];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Failed to submit task with error: %@", buf, 0xCu);
      }
    }
  }

  self->_debugNotifyToken = -1;
  queue = self->_queue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000FC4BC;
  handler[3] = &unk_1001B5B78;
  handler[4] = self;
  notify_register_dispatch("com.apple.dasd.appResume.Signpost", &self->_debugNotifyToken, queue, handler);
}

- (void)registerPrewarmTask
{
  v3 = +[BGSystemTaskScheduler sharedScheduler];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000FC714;
  v16[3] = &unk_1001B5770;
  v16[4] = self;
  [v3 registerForTaskWithIdentifier:@"com.apple.appResume.prewarm" usingQueue:0 launchHandler:v16];

  out_token = 0;
  v4 = [@"com.apple.appResume.prewarm" UTF8String];
  queue = self->_queue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000FC768;
  handler[3] = &unk_1001B5B78;
  handler[4] = self;
  notify_register_dispatch(v4, &out_token, queue, handler);
  v6 = +[BGSystemTaskScheduler sharedScheduler];
  v7 = [v6 taskRequestForIdentifier:@"com.apple.appResume.prewarm"];

  if (!v7)
  {
    v8 = [[BGRepeatingSystemTaskRequest alloc] initWithIdentifier:@"com.apple.appResume.prewarm"];
    [v8 setPriority:1];
    [v8 setInterval:900.0];
    [v8 setMinDurationBetweenInstances:900.0];
    [v8 setRequiresProtectionClass:1];
    v9 = +[BGSystemTaskScheduler sharedScheduler];
    v13 = 0;
    v10 = [v9 submitTaskRequest:v8 error:&v13];
    v11 = v13;

    if ((v10 & 1) == 0)
    {
      v12 = +[_DASDaemonLogger defaultCategory];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Failed to submit task with error: %@", buf, 0xCu);
      }
    }
  }
}

- (void)registerFreezerTask
{
  v3 = +[BGSystemTaskScheduler sharedScheduler];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000FC9BC;
  v16[3] = &unk_1001B5770;
  v16[4] = self;
  [v3 registerForTaskWithIdentifier:@"com.apple.appResume.freezer" usingQueue:0 launchHandler:v16];

  out_token = 0;
  v4 = [@"com.apple.appResume.freezer" UTF8String];
  queue = self->_queue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000FCA10;
  handler[3] = &unk_1001B5B78;
  handler[4] = self;
  notify_register_dispatch(v4, &out_token, queue, handler);
  v6 = +[BGSystemTaskScheduler sharedScheduler];
  v7 = [v6 taskRequestForIdentifier:@"com.apple.appResume.freezer"];

  if (!v7)
  {
    v8 = [[BGRepeatingSystemTaskRequest alloc] initWithIdentifier:@"com.apple.appResume.freezer"];
    [v8 setPriority:1];
    [v8 setInterval:1800.0];
    [v8 setMinDurationBetweenInstances:900.0];
    [v8 setRequiresProtectionClass:4];
    v9 = +[BGSystemTaskScheduler sharedScheduler];
    v13 = 0;
    v10 = [v9 submitTaskRequest:v8 error:&v13];
    v11 = v13;

    if ((v10 & 1) == 0)
    {
      v12 = +[_DASDaemonLogger defaultCategory];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Failed to submit task with error: %@", buf, 0xCu);
      }
    }
  }
}

- (void)registerTasks
{
  [(_APRSManager *)self registerSignpostExtractionTask];
  [(_APRSManager *)self registerPrewarmTask];

  [(_APRSManager *)self registerFreezerTask];
}

- (_APRSManager)init
{
  v28.receiver = self;
  v28.super_class = _APRSManager;
  v2 = [(_APRSManager *)&v28 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.aprs", "appResume.manager");
    log = v2->_log;
    v2->_log = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_BACKGROUND, 0);
    v7 = dispatch_queue_create("com.apple.appresume.manager", v6);
    queue = v2->_queue;
    v2->_queue = v7;

    v2->_freezeDockedApps = 0;
    [(_APRSManager *)v2 registerForTrial];
    [(_APRSManager *)v2 updateTrialParameters];
    v9 = +[_APRSRecommendationEngine sharedInstance];
    engine = v2->_engine;
    v2->_engine = v9;

    v11 = +[_APRSFreezerInterface sharedInstance];
    freezer = v2->_freezer;
    v2->_freezer = v11;

    v13 = +[_APRSPrewarmInterface sharedInstance];
    prewarmLauncher = v2->_prewarmLauncher;
    v2->_prewarmLauncher = v13;

    v15 = objc_opt_new();
    signpostReader = v2->_signpostReader;
    v2->_signpostReader = v15;

    v17 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.duetactivityscheduler"];
    defaults = v2->_defaults;
    v2->_defaults = v17;

    v19 = [(NSUserDefaults *)v2->_defaults objectForKey:@"signpostReaderDate"];
    signpostReaderDate = v2->_signpostReaderDate;
    v2->_signpostReaderDate = v19;

    v21 = v2->_signpostReaderDate;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v22 = v2->_signpostReaderDate;
      v2->_signpostReaderDate = 0;
    }

    [(_APRSManager *)v2 registerTasks];
    v23 = +[_APRSBiomeAppKillEventWriter sharedInstance];
    appKillEventWriter = v2->_appKillEventWriter;
    v2->_appKillEventWriter = v23;

    v25 = +[_APRSBiomeEventAnalyzer sharedInstance];
    eventAnalyzer = v2->_eventAnalyzer;
    v2->_eventAnalyzer = v25;
  }

  return v2;
}

- (void)registerForTrial
{
  v3 = [_DASTrialManager sharedInstanceForProject:222 withNamespace:@"COREOS_DRM_APRS"];
  [v3 addDelegate:self];
}

- (void)updateTrialParameters
{
  v3 = [_DASTrialManager sharedInstanceForProject:222 withNamespace:@"COREOS_DRM_APRS"];
  v4 = [v3 factorWithName:@"FreeezeDockApps"];
  log = self->_log;
  v6 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = log;
      v8 = 134217984;
      v9 = [v4 BOOLeanValue];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Trial: frezeDockOption set to %ld", &v8, 0xCu);
    }

    self->_freezeDockedApps = [v4 BOOLeanValue];
  }

  else
  {
    if (v6)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Trial: Failed to load frezeDockOption", &v8, 2u);
    }

    self->_freezeDockedApps = 0;
  }
}

+ (_APRSManager)sharedInstance
{
  if (qword_10020B830 != -1)
  {
    sub_10012C8A8();
  }

  v3 = qword_10020B828;

  return v3;
}

- (void)freezeNewlyRecommendedApps
{
  v3 = os_transaction_create();
  v4 = v3;
  if (!self->_freezeDockedApps)
  {
    v7 = v3;
    v3 = _os_feature_enabled_impl();
    v4 = v7;
    if ((v3 & 1) == 0)
    {
      [(_APRSRecommendationEngine *)self->_engine evaluateFreezerRecommendations];
      [(_APRSRecommendationEngine *)self->_engine updateCurrentRecommendations];
      freezer = self->_freezer;
      v6 = [(_APRSRecommendationEngine *)self->_engine freezerRecommendations];
      [(_APRSFreezerInterface *)freezer updateFreezer:v6];

      v4 = v7;
    }
  }

  _objc_release_x1(v3, v4);
}

- (void)prewarmNewlyRecommendedApps
{
  v5 = os_transaction_create();
  [(_APRSRecommendationEngine *)self->_engine evaluatePrewarmRecommendations];
  [(_APRSRecommendationEngine *)self->_engine updateCurrentRecommendations];
  prewarmLauncher = self->_prewarmLauncher;
  v4 = [(_APRSRecommendationEngine *)self->_engine prewarmRecommendations];
  [(_APRSPrewarmInterface *)prewarmLauncher prewarmRecommendations:v4];
}

@end