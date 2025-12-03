@interface _DASSwapModelApplicationKills
- (BOOL)process:(id)process inSet:(id)set;
- (_DASSwapModelApplicationKills)init;
- (double)scoreForApplication:(id)application atDate:(id)date;
- (double)secondsFrom:(unint64_t)from until:(unint64_t)until;
- (id)_queue_computeScores;
- (id)appsRecentlyForegrounded;
- (id)scoresForAllApplicationsAtDate:(id)date;
- (void)_queue_loadHistograms;
- (void)_queue_updateHistograms;
- (void)incorporateLatestJetsamStatistics;
- (void)registerDailyModelUpdateTask;
- (void)updateModel;
@end

@implementation _DASSwapModelApplicationKills

- (_DASSwapModelApplicationKills)init
{
  v18.receiver = self;
  v18.super_class = _DASSwapModelApplicationKills;
  v2 = [(_DASSwapModelApplicationKills *)&v18 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);

    v5 = dispatch_queue_create("com.apple.dasd.swap.appKillsModel", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = [_DASDaemonLogger logForCategory:@"swap.appKillsModel"];
    log = v2->_log;
    v2->_log = v7;

    v9 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.dasd.swapkills"];
    killDefaults = v2->_killDefaults;
    v2->_killDefaults = v9;

    v11 = +[_DASAppResumePLLogger sharedInstance];
    pLLogger = v2->_pLLogger;
    v2->_pLLogger = v11;

    v13 = v2->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C2380;
    block[3] = &unk_1001B5668;
    v14 = v2;
    v17 = v14;
    dispatch_async(v13, block);
    [(_DASSwapModelApplicationKills *)v14 registerDailyModelUpdateTask];
  }

  return v2;
}

- (void)_queue_loadHistograms
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(NSUserDefaults *)self->_killDefaults dictionaryForKey:@"histograms"];
  v5 = [v4 objectForKeyedSubscript:@"current"];
  v6 = [v4 objectForKeyedSubscript:@"historical"];
  v7 = [v4 objectForKeyedSubscript:@"zeros"];
  v8 = [v4 objectForKeyedSubscript:@"snapshotTS"];
  v9 = v8;
  if (!v5)
  {
    v5 = &__NSDictionary0__struct;
  }

  if (!v6)
  {
    v6 = &__NSDictionary0__struct;
  }

  if (!v7)
  {
    v7 = &__NSArray0__struct;
  }

  if (!v8)
  {
    v9 = +[NSDate distantPast];
  }

  v10 = [v5 mutableCopy];
  todaysKillHistogram = self->_todaysKillHistogram;
  self->_todaysKillHistogram = v10;

  objc_storeStrong(&self->_historicalKillHistogram, v6);
  v12 = [NSMutableSet setWithArray:v7];
  zerosSet = self->_zerosSet;
  self->_zerosSet = v12;

  objc_storeStrong(&self->_lastSnapshotTime, v9);
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    lastSnapshotTime = self->_lastSnapshotTime;
    v20 = 138412290;
    v21 = lastSnapshotTime;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Last snapshot: %@", &v20, 0xCu);
  }

  v16 = self->_log;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = self->_todaysKillHistogram;
    v20 = 138412290;
    v21 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Loaded current histogram: %@", &v20, 0xCu);
  }

  v18 = self->_log;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    historicalKillHistogram = self->_historicalKillHistogram;
    v20 = 138412290;
    v21 = historicalKillHistogram;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Loaded historical histogram: %@", &v20, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
}

- (void)_queue_updateHistograms
{
  v3 = objc_autoreleasePoolPush();
  v8[0] = @"current";
  v8[1] = @"historical";
  historicalKillHistogram = self->_historicalKillHistogram;
  v9[0] = self->_todaysKillHistogram;
  v9[1] = historicalKillHistogram;
  v8[2] = @"zeros";
  allObjects = [(NSMutableSet *)self->_zerosSet allObjects];
  v8[3] = @"snapshotTS";
  lastSnapshotTime = self->_lastSnapshotTime;
  v9[2] = allObjects;
  v9[3] = lastSnapshotTime;
  v7 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:4];

  [(NSUserDefaults *)self->_killDefaults setObject:v7 forKey:@"histograms"];
  objc_autoreleasePoolPop(v3);
}

- (id)_queue_computeScores
{
  v3 = +[NSMutableDictionary dictionary];
  historicalKillHistogram = self->_historicalKillHistogram;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000C2874;
  v17[3] = &unk_1001B7000;
  v17[4] = self;
  v5 = v3;
  v18 = v5;
  [(NSDictionary *)historicalKillHistogram enumerateKeysAndObjectsUsingBlock:v17];
  todaysKillHistogram = self->_todaysKillHistogram;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000C2950;
  v15[3] = &unk_1001B5608;
  v7 = v5;
  v16 = v7;
  [(NSMutableDictionary *)todaysKillHistogram enumerateKeysAndObjectsUsingBlock:v15];
  zerosSet = self->_zerosSet;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000C29D8;
  v13[3] = &unk_1001B7028;
  v9 = v7;
  v14 = v9;
  [(NSMutableSet *)zerosSet enumerateObjectsUsingBlock:v13];
  v10 = v14;
  v11 = v9;

  return v9;
}

- (void)updateModel
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C2AC0;
  block[3] = &unk_1001B5668;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)registerDailyModelUpdateTask
{
  v3 = +[BGSystemTaskScheduler sharedScheduler];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000C2D78;
  v12[3] = &unk_1001B5770;
  v12[4] = self;
  [v3 registerForTaskWithIdentifier:@"com.apple.dasd.swapModelUpdate" usingQueue:0 launchHandler:v12];

  v4 = +[BGSystemTaskScheduler sharedScheduler];
  v5 = [v4 taskRequestForIdentifier:@"com.apple.dasd.swapModelUpdate"];

  if (!v5)
  {
    v6 = [[BGRepeatingSystemTaskRequest alloc] initWithIdentifier:@"com.apple.dasd.swapModelUpdate"];
    [v6 setPriority:1];
    [v6 setRequiresExternalPower:0];
    [v6 setInterval:86400.0];
    v7 = +[BGSystemTaskScheduler sharedScheduler];
    v11 = 0;
    v8 = [v7 submitTaskRequest:v6 error:&v11];
    v9 = v11;

    if ((v8 & 1) == 0)
    {
      v10 = +[_DASDaemonLogger defaultCategory];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v14 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Failed to submit task with error: %@", buf, 0xCu);
      }
    }
  }
}

- (double)secondsFrom:(unint64_t)from until:(unint64_t)until
{
  if (qword_10020B760 != -1)
  {
    sub_10012A164();
  }

  return (((from - until) * dword_10020B758) / *algn_10020B75C) / 1000000000.0;
}

- (id)appsRecentlyForegrounded
{
  v35 = os_transaction_create();
  v2 = [NSDate dateWithTimeIntervalSinceNow:-604800.0];
  v3 = [_DASBMHistogramBuilder builderForAppInFocusStreamStarting:v2];

  v34 = v3;
  histogram = [v3 histogram];
  counts = [histogram counts];
  v6 = [NSMutableSet setWithSet:counts];

  v7 = +[_CDClientContext userContext];
  v8 = +[_CDContextQueries keyPathForAppUsageDataDictionaries];
  v32 = v7;
  v9 = [v7 objectForKeyedSubscript:v8];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v41;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v41 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v40 + 1) + 8 * i);
        v16 = +[_CDContextQueries appUsageBundleID];
        v17 = [v15 objectForKeyedSubscript:v16];
        [v6 addObject:v17];
      }

      v12 = [v10 countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v12);
  }

  v18 = +[NSMutableSet set];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v19 = v6;
  v20 = [v19 countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v37;
    do
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v37 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v36 + 1) + 8 * j);
        v25 = objc_autoreleasePoolPush();
        v26 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v24 allowPlaceholder:0 error:0];
        compatibilityObject = [v26 compatibilityObject];

        bundleExecutable = [compatibilityObject bundleExecutable];
        if (bundleExecutable)
        {
          [v18 addObject:bundleExecutable];
        }

        objc_autoreleasePoolPop(v25);
      }

      v21 = [v19 countByEnumeratingWithState:&v36 objects:v46 count:16];
    }

    while (v21);
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v45 = v18;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Processes recently launched: %@", buf, 0xCu);
  }

  v30 = [v18 copy];

  return v30;
}

- (BOOL)process:(id)process inSet:(id)set
{
  processCopy = process;
  setCopy = set;
  if ([processCopy length] > 0x1F)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = setCopy;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if ([*(*(&v14 + 1) + 8 * i) hasPrefix:{processCopy, v14}])
          {

            v7 = 1;
            goto LABEL_13;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v7 = 0;
  }

  else
  {
    v7 = [setCopy containsObject:processCopy];
  }

LABEL_13:

  return v7;
}

- (void)incorporateLatestJetsamStatistics
{
  appsRecentlyForegrounded = [(_DASSwapModelApplicationKills *)self appsRecentlyForegrounded];
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000C33B4;
  v6[3] = &unk_1001B56E0;
  v6[4] = self;
  v7 = appsRecentlyForegrounded;
  v5 = appsRecentlyForegrounded;
  dispatch_sync(queue, v6);
}

- (double)scoreForApplication:(id)application atDate:(id)date
{
  applicationCopy = application;
  v7 = [(_DASSwapModelApplicationKills *)self scoresForAllApplicationsAtDate:date];
  v8 = [v7 objectForKeyedSubscript:applicationCopy];

  [v8 doubleValue];
  v10 = v9;

  return v10;
}

- (id)scoresForAllApplicationsAtDate:(id)date
{
  v4 = +[NSMutableDictionary dictionary];
  queue = self->_queue;
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1000C3AC4;
  v13 = &unk_1001B56E0;
  selfCopy = self;
  v6 = v4;
  v15 = v6;
  dispatch_sync(queue, &v10);
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Updating Kill Count: %@", buf, 0xCu);
  }

  v8 = [v6 copy];

  return v8;
}

@end