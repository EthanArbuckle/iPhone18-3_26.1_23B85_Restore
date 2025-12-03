@interface _DASAppResumePLLogger
+ (id)applicationBundleIDForExecutableName:(id)name;
+ (id)sharedInstance;
+ (id)topPredictionsFromScores:(id)scores;
- (BOOL)updateCarryStatusWithContext:(id)context;
- (_DASAppResumePLLogger)init;
- (id)appsFromProactiveSuggestions;
- (void)initializeCarryStatusLogging;
- (void)logAppResumePredictions:(id)predictions durationCheck:(BOOL)check;
- (void)logFreezerSkipReasons:(id)reasons;
- (void)logUpdatedCarryStatus;
@end

@implementation _DASAppResumePLLogger

- (_DASAppResumePLLogger)init
{
  v19.receiver = self;
  v19.super_class = _DASAppResumePLLogger;
  v2 = [(_DASAppResumePLLogger *)&v19 init];
  if (!v2)
  {
LABEL_6:
    v14 = v2;
    goto LABEL_10;
  }

  v3 = [_DASDaemonLogger logForCategory:@"appResume"];
  log = v2->_log;
  v2->_log = v3;

  v5 = dlopen_preflight([@"/System/Library/PrivateFrameworks/PowerLog.framework/PowerLog" UTF8String]);
  v2->_powerLogExists = v5;
  if (v5)
  {
    v6 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.duetactivityscheduler"];
    defaults = v2->_defaults;
    v2->_defaults = v6;

    [(NSUserDefaults *)v2->_defaults doubleForKey:@"appResumePredictionsReportedDate"];
    v8 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    lastReportedDate = v2->_lastReportedDate;
    v2->_lastReportedDate = v8;

    v10 = v2->_log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v2->_lastReportedDate;
      *buf = 138412290;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Last reported date for App predictions to PowerLog is %@", buf, 0xCu);
    }

    v12 = [_CDContextualKeyPath keyPathWithKey:@"/das/inferredCarryStatus"];
    inferredCarryStatusKeyPath = v2->_inferredCarryStatusKeyPath;
    v2->_inferredCarryStatusKeyPath = v12;

    [(_DASAppResumePLLogger *)v2 initializeCarryStatusLogging];
    goto LABEL_6;
  }

  v15 = v2->_log;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    uTF8String = [@"/System/Library/PrivateFrameworks/PowerLog.framework/PowerLog" UTF8String];
    *buf = 136315138;
    v21 = uTF8String;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Powerlog library at %s does not exist", buf, 0xCu);
  }

  v14 = 0;
LABEL_10:

  return v14;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000194D0;
  block[3] = &unk_1001B54A0;
  block[4] = self;
  if (qword_10020AE30 != -1)
  {
    dispatch_once(&qword_10020AE30, block);
  }

  v2 = qword_10020AE28;

  return v2;
}

+ (id)topPredictionsFromScores:(id)scores
{
  scoresCopy = scores;
  v4 = [scoresCopy keysSortedByValueUsingComparator:&stru_1001B5748];
  v5 = +[NSMutableDictionary dictionary];
  if ([scoresCopy count] > 9)
  {
    v6 = 10;
  }

  else
  {
    v6 = [scoresCopy count];
    if (v6 < 1)
    {
      goto LABEL_7;
    }
  }

  v7 = 0;
  v8 = v6;
  do
  {
    v9 = [v4 objectAtIndexedSubscript:v7];
    v10 = [scoresCopy objectForKeyedSubscript:v9];
    v11 = [v4 objectAtIndexedSubscript:v7];
    [v5 setObject:v10 forKeyedSubscript:v11];

    ++v7;
  }

  while (v8 != v7);
LABEL_7:

  return v5;
}

- (void)logAppResumePredictions:(id)predictions durationCheck:(BOOL)check
{
  checkCopy = check;
  predictionsCopy = predictions;
  if (self->_powerLogExists)
  {
    if (checkCopy && ([(NSDate *)self->_lastReportedDate timeIntervalSinceNow], v7 > -1800.0))
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v9 = "Reported predictions to PowerLog in last 30 mins. Skipping";
LABEL_8:
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
      }
    }

    else
    {
      +[NSMutableArray array];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10001995C;
      v10 = v23[3] = &unk_1001B5608;
      v24 = v10;
      [predictionsCopy enumerateKeysAndObjectsUsingBlock:v23];
      appsFromProactiveSuggestions = [(_DASAppResumePLLogger *)self appsFromProactiveSuggestions];
      v18 = _NSConcreteStackBlock;
      v19 = 3221225472;
      v20 = sub_100019ABC;
      v21 = &unk_1001B5608;
      v12 = v10;
      v22 = v12;
      [appsFromProactiveSuggestions enumerateKeysAndObjectsUsingBlock:&v18];
      v27 = @"appResumePredictions";
      v28 = v12;
      v13 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1, v18, v19, v20, v21];
      v14 = self->_log;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Logging to PowerLog %@", buf, 0xCu);
      }

      PLLogRegisteredEvent();
      v15 = +[NSDate date];
      lastReportedDate = self->_lastReportedDate;
      self->_lastReportedDate = v15;

      defaults = self->_defaults;
      [(NSDate *)self->_lastReportedDate timeIntervalSinceReferenceDate];
      [(NSUserDefaults *)defaults setDouble:@"appResumePredictionsReportedDate" forKey:?];
    }
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "PowerLog does not exist";
      goto LABEL_8;
    }
  }
}

+ (id)applicationBundleIDForExecutableName:(id)name
{
  nameCopy = name;
  v4 = os_transaction_create();
  v5 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.duetactivityscheduler"];
  v6 = [v5 objectForKey:@"appNameTranslation"];

  if (v6 && ([v6 objectForKeyedSubscript:nameCopy], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [v6 objectForKeyedSubscript:nameCopy];
    v9 = v6;
  }

  else
  {
    v9 = +[NSMutableDictionary dictionary];

    v10 = [LSApplicationRecord enumeratorWithOptions:0];
    nextObject = [v10 nextObject];
    compatibilityObject = [nextObject compatibilityObject];

    if (compatibilityObject)
    {
      do
      {
        v13 = objc_autoreleasePoolPush();
        bundleIdentifier = [compatibilityObject bundleIdentifier];
        if (bundleIdentifier)
        {
          v15 = bundleIdentifier;
          bundleExecutable = [compatibilityObject bundleExecutable];

          if (bundleExecutable)
          {
            bundleIdentifier2 = [compatibilityObject bundleIdentifier];
            bundleExecutable2 = [compatibilityObject bundleExecutable];
            [v9 setObject:bundleIdentifier2 forKeyedSubscript:bundleExecutable2];
          }
        }

        objc_autoreleasePoolPop(v13);
        nextObject2 = [v10 nextObject];
        compatibilityObject2 = [nextObject2 compatibilityObject];

        compatibilityObject = compatibilityObject2;
      }

      while (compatibilityObject2);
    }

    v21 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.duetactivityscheduler"];
    [v21 setObject:v9 forKey:@"appNameTranslation"];

    v8 = [v9 objectForKeyedSubscript:nameCopy];
  }

  return v8;
}

- (void)logFreezerSkipReasons:(id)reasons
{
  reasonsCopy = reasons;
  v5 = reasonsCopy;
  if (self->_powerLogExists)
  {
    v11 = @"Applications";
    v12 = reasonsCopy;
    v6 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Logging Freezer skipped reasons to PowerLog %@", &v9, 0xCu);
    }

    PLLogRegisteredEvent();
  }

  else
  {
    v8 = self->_log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PowerLog does not exist", &v9, 2u);
    }
  }
}

- (id)appsFromProactiveSuggestions
{
  v3 = +[NSMutableDictionary dictionary];
  if (dlopen_preflight([@"/System/Library/PrivateFrameworks/AppPredictionClient.framework/AppPredictionClient" UTF8String]))
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x2050000000;
    v4 = qword_10020AE38;
    v35 = qword_10020AE38;
    if (!qword_10020AE38)
    {
      *buf = _NSConcreteStackBlock;
      v28 = 3221225472;
      v29 = sub_10001A704;
      v30 = &unk_1001B5798;
      v31 = &v32;
      sub_10001A704(buf);
      v4 = v33[3];
    }

    v5 = v4;
    _Block_object_dispose(&v32, 8);
    v22 = [[v4 alloc] initWithConsumerSubType:9];
    suggestionLayoutFromCache = [v22 suggestionLayoutFromCache];
    v21 = suggestionLayoutFromCache;
    if (suggestionLayoutFromCache)
    {
      allSuggestionsInLayout = [suggestionLayoutFromCache allSuggestionsInLayout];
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v8 = [allSuggestionsInLayout countByEnumeratingWithState:&v23 objects:v36 count:16];
      if (v8)
      {
        v9 = *v24;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v24 != v9)
            {
              objc_enumerationMutation(allSuggestionsInLayout);
            }

            v11 = *(*(&v23 + 1) + 8 * i);
            executableSpecification = [v11 executableSpecification];
            executableObject = [executableSpecification executableObject];

            if (executableObject)
            {
              scoreSpecification = [v11 scoreSpecification];
              [scoreSpecification rawScore];
              v15 = [NSNumber numberWithDouble:?];
              v16 = [executableObject description];
              [v3 setObject:v15 forKeyedSubscript:v16];
            }
          }

          v8 = [allSuggestionsInLayout countByEnumeratingWithState:&v23 objects:v36 count:16];
        }

        while (v8);
      }

      v17 = [_DASAppResumePLLogger topPredictionsFromScores:v3];
    }

    else
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Proactive predictions not cached, returning nil", buf, 2u);
      }

      v17 = 0;
    }
  }

  else
  {
    v18 = self->_log;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10011C4FC(v18);
    }

    v17 = 0;
  }

  return v17;
}

- (void)initializeCarryStatusLogging
{
  v3 = +[BGSystemTaskScheduler sharedScheduler];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001A438;
  v12[3] = &unk_1001B5770;
  v12[4] = self;
  [v3 registerForTaskWithIdentifier:@"com.apple.appResume.inferCarryStatus" usingQueue:0 launchHandler:v12];

  v4 = +[BGSystemTaskScheduler sharedScheduler];
  v5 = [v4 taskRequestForIdentifier:@"com.apple.appResume.inferCarryStatus"];

  if (!v5)
  {
    v6 = [[BGRepeatingSystemTaskRequest alloc] initWithIdentifier:@"com.apple.appResume.inferCarryStatus"];
    [v6 setPriority:1];
    [v6 setInterval:86400.0];
    [v6 setMinDurationBetweenInstances:85400.0];
    [v6 setRequiresProtectionClass:4];
    [v6 setRequiresExternalPower:0];
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

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_10011C540();
  }
}

- (void)logUpdatedCarryStatus
{
  v3 = +[_CDClientContext userContext];
  v4 = [v3 objectForKeyedSubscript:self->_inferredCarryStatusKeyPath];
  bOOLValue = [v4 BOOLValue];

  v6 = [(_DASAppResumePLLogger *)self updateCarryStatusWithContext:v3];
  if (bOOLValue == v6)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      sub_10011C580();
    }
  }

  else
  {
    v7 = v6;
    v8 = [NSNumber numberWithBool:v6];
    [v3 setObject:v8 forKeyedSubscript:self->_inferredCarryStatusKeyPath];

    v9 = objc_alloc_init(NSMutableDictionary);
    v10 = [NSNumber numberWithBool:v7];
    [v9 setObject:v10 forKeyedSubscript:@"CarryType"];

    PLLogRegisteredEvent();
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      sub_10011C5F4();
    }
  }
}

- (BOOL)updateCarryStatusWithContext:(id)context
{
  v4 = +[_DASBMUtilityProvider sharedUtilityProvider];
  deviceIsInferredCarry = [v4 deviceIsInferredCarry];

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_10011C668();
  }

  return deviceIsInferredCarry;
}

@end