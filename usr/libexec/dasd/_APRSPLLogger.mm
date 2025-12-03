@interface _APRSPLLogger
+ (id)sharedInstance;
+ (id)topPredictionsFromScores:(id)scores;
- (BOOL)getInferredCarryStatus;
- (BOOL)updateCarryStatusWithContext:(id)context;
- (_APRSPLLogger)init;
- (id)appsFromProactiveSuggestions;
- (id)computeAccuraciesWithLastPredictions:(id)predictions andAppsLaunched:(id)launched;
- (id)generateAccuraciesCAEventDictionary;
- (id)queryAppsLaunchedFromStartDate:(id)date toEndDate:(id)endDate;
- (void)initializeCarryStatusLogging;
- (void)logAppResumePredictions:(id)predictions durationCheck:(BOOL)check;
- (void)logFreezerSkipReasons:(id)reasons;
- (void)logUpdatedCarryStatus;
- (void)reportAppResumePredictions;
@end

@implementation _APRSPLLogger

- (_APRSPLLogger)init
{
  v31.receiver = self;
  v31.super_class = _APRSPLLogger;
  v2 = [(_APRSPLLogger *)&v31 init];
  if (!v2)
  {
LABEL_6:
    v24 = v2;
    goto LABEL_10;
  }

  v3 = os_log_create("com.apple.aprs", "appResume");
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
      v33 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Last reported date for App predictions to PowerLog is %@", buf, 0xCu);
    }

    v12 = [_CDContextualKeyPath keyPathWithKey:@"/das/inferredCarryStatus"];
    inferredCarryStatusKeyPath = v2->_inferredCarryStatusKeyPath;
    v2->_inferredCarryStatusKeyPath = v12;

    [(_APRSPLLogger *)v2 initializeCarryStatusLogging];
    v2->_token = -1;
    v14 = dispatch_get_global_queue(-2, 0);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100037170;
    handler[3] = &unk_1001B5B78;
    v15 = v2;
    v30 = v15;
    notify_register_dispatch("com.apple.das.logPrewarmDock", &v2->_token, v14, handler);

    v16 = objc_alloc_init(NSMutableDictionary);
    predictionAccuracies = v15->_predictionAccuracies;
    v15->_predictionAccuracies = v16;

    v18 = [(NSUserDefaults *)v2->_defaults objectForKey:@"appResumeProactivePredictionsAccuracy"];
    v19 = [_DASPredictionAccuracy initFromDictionaryRepresentation:v18];
    [(NSMutableDictionary *)v15->_predictionAccuracies setObject:v19 forKeyedSubscript:@"proactive"];

    v20 = [(NSUserDefaults *)v2->_defaults objectForKey:@"appResumeSwapPredictionsAccuracy"];
    v21 = [_DASPredictionAccuracy initFromDictionaryRepresentation:v20];
    [(NSMutableDictionary *)v15->_predictionAccuracies setObject:v21 forKeyedSubscript:@"swap"];

    v22 = +[NSDate distantPast];
    lastCAReportedDate = v15->_lastCAReportedDate;
    v15->_lastCAReportedDate = v22;

    goto LABEL_6;
  }

  v25 = v2->_log;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = v25;
    uTF8String = [@"/System/Library/PrivateFrameworks/PowerLog.framework/PowerLog" UTF8String];
    *buf = 136315138;
    v33 = uTF8String;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Powerlog library at %s does not exist", buf, 0xCu);
  }

  v24 = 0;
LABEL_10:

  return v24;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000372F4;
  block[3] = &unk_1001B54A0;
  block[4] = self;
  if (qword_10020AF68 != -1)
  {
    dispatch_once(&qword_10020AF68, block);
  }

  v2 = qword_10020AF60;

  return v2;
}

+ (id)topPredictionsFromScores:(id)scores
{
  scoresCopy = scores;
  v4 = [scoresCopy keysSortedByValueUsingComparator:&stru_1001B6018];
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
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1000377E0;
      v10 = v26[3] = &unk_1001B5608;
      v27 = v10;
      [predictionsCopy enumerateKeysAndObjectsUsingBlock:v26];
      appsFromProactiveSuggestions = [(_APRSPLLogger *)self appsFromProactiveSuggestions];
      v21 = _NSConcreteStackBlock;
      v22 = 3221225472;
      v23 = sub_1000378BC;
      v24 = &unk_1001B5608;
      v12 = v10;
      v25 = v12;
      [appsFromProactiveSuggestions enumerateKeysAndObjectsUsingBlock:&v21];
      v30 = @"appResumePredictions";
      v31 = v12;
      v13 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1, v21, v22, v23, v24];
      v14 = self->_log;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Logging to PowerLog %@", buf, 0xCu);
      }

      PLLogRegisteredEvent();
      v15 = +[NSDate date];
      lastReportedDate = self->_lastReportedDate;
      self->_lastReportedDate = v15;

      defaults = self->_defaults;
      [(NSDate *)self->_lastReportedDate timeIntervalSinceReferenceDate];
      [(NSUserDefaults *)defaults setDouble:@"appResumePredictionsReportedDate" forKey:?];
      if (self->_lastPredictions)
      {
        v18 = self->_log;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Updating accuracies", buf, 2u);
        }

        [(_APRSPLLogger *)self reportAppResumePredictions];
      }

      lastPredictions = self->_lastPredictions;
      self->_lastPredictions = v12;
      v20 = v12;
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

- (void)reportAppResumePredictions
{
  lastReportedDate = self->_lastReportedDate;
  v4 = [(NSDate *)lastReportedDate dateByAddingTimeInterval:1800.0];
  v5 = [(_APRSPLLogger *)self queryAppsLaunchedFromStartDate:lastReportedDate toEndDate:v4];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v5;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Apps Launched in the last prediction window %@", &buf, 0xCu);
  }

  v7 = [(_APRSPLLogger *)self computeAccuraciesWithLastPredictions:self->_lastPredictions andAppsLaunched:v5];
  v8 = [(NSMutableDictionary *)self->_predictionAccuracies objectForKeyedSubscript:@"proactive"];
  v9 = [v7 objectForKeyedSubscript:@"proactive"];
  v10 = [v8 addPredictionAccuracy:v9];
  [(NSMutableDictionary *)self->_predictionAccuracies setObject:v10 forKeyedSubscript:@"proactive"];

  v11 = [(NSMutableDictionary *)self->_predictionAccuracies objectForKeyedSubscript:@"swap"];
  v12 = [v7 objectForKeyedSubscript:@"swap"];
  v13 = [v11 addPredictionAccuracy:v12];
  [(NSMutableDictionary *)self->_predictionAccuracies setObject:v13 forKeyedSubscript:@"swap"];

  [(NSDate *)self->_lastCAReportedDate timeIntervalSinceNow];
  if (v14 < -86400.0)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v29 = 0x3032000000;
    v30 = sub_100037DA0;
    v31 = sub_100037DB0;
    generateAccuraciesCAEventDictionary = [(_APRSPLLogger *)self generateAccuraciesCAEventDictionary];
    v15 = self->_log;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(*(&buf + 1) + 40);
      *v26 = 138412290;
      v27 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Posting app prediction accuracy CA Event %@", v26, 0xCu);
    }

    AnalyticsSendEventLazy();
    v17 = +[NSDate now];
    lastCAReportedDate = self->_lastCAReportedDate;
    self->_lastCAReportedDate = v17;

    [(NSUserDefaults *)self->_defaults setObject:self->_lastCAReportedDate forKey:@"appResumePredictionsAccuracyCAReportedKey"];
    v19 = objc_alloc_init(_DASPredictionAccuracy);
    [(NSMutableDictionary *)self->_predictionAccuracies setObject:v19 forKeyedSubscript:@"proactive"];

    v20 = objc_alloc_init(_DASPredictionAccuracy);
    [(NSMutableDictionary *)self->_predictionAccuracies setObject:v20 forKeyedSubscript:@"swap"];

    _Block_object_dispose(&buf, 8);
  }

  defaults = self->_defaults;
  p_defaults = &self->_defaults;
  v23 = [(NSUserDefaults *)p_defaults[5] objectForKeyedSubscript:@"proactive"];
  [(NSUserDefaults *)defaults setObject:v23 forKey:@"appResumeProactivePredictionsAccuracy"];

  v24 = *p_defaults;
  v25 = [(NSUserDefaults *)p_defaults[5] objectForKeyedSubscript:@"swap"];
  [(NSUserDefaults *)v24 setObject:v25 forKey:@"appResumeSwapPredictionsAccuracy"];
}

- (id)queryAppsLaunchedFromStartDate:(id)date toEndDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v27 = dateCopy;
    v28 = 2112;
    v29 = endDateCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Querying for app launch between %@ and %@", buf, 0x16u);
  }

  v9 = objc_alloc_init(NSMutableArray);
  v10 = BiomeLibrary();
  v11 = [v10 App];
  inFocus = [v11 InFocus];

  v13 = [BMPublisherOptions optionsWithStartDate:dateCopy endDate:endDateCopy];
  v14 = +[_DASBMUtilityProvider sharedUtilityProvider];
  getConsoleUserUid = [v14 getConsoleUserUid];

  v16 = [inFocus publisherWithUser:getConsoleUserUid useCase:@"DASBiomeUtilityUseCase" options:v13];
  v17 = [v16 filterWithIsIncluded:&stru_1001B6060];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100038060;
  v25[3] = &unk_1001B5570;
  v25[4] = self;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000380FC;
  v23[3] = &unk_1001B6088;
  v18 = v9;
  v24 = v18;
  v19 = [v16 sinkWithCompletion:v25 receiveInput:v23];
  v20 = v24;
  v21 = v18;

  return v18;
}

- (id)computeAccuraciesWithLastPredictions:(id)predictions andAppsLaunched:(id)launched
{
  launchedCopy = launched;
  predictionsCopy = predictions;
  v8 = objc_alloc_init(NSMutableArray);
  v9 = objc_alloc_init(NSMutableArray);
  [predictionsCopy sortUsingComparator:&stru_1001B60C8];
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_1000384BC;
  v24 = &unk_1001B60F0;
  v10 = v8;
  v25 = v10;
  v11 = v9;
  v26 = v11;
  [predictionsCopy enumerateObjectsUsingBlock:&v21];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v28 = v10;
    v29 = 2112;
    v30 = v11;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Proactive predictions %@ \n Swap predictions %@", buf, 0x16u);
  }

  v13 = objc_alloc_init(NSMutableDictionary);
  v14 = [_DASPredictionUtilites computeAccuraciesFromSortedPredictions:v10 andObservations:launchedCopy withEqualityOperator:&stru_1001B6130, v21, v22, v23, v24];
  v15 = [_DASPredictionUtilites computeAccuraciesFromSortedPredictions:v11 andObservations:launchedCopy withEqualityOperator:&stru_1001B6150];

  [v13 setObject:v14 forKeyedSubscript:@"proactive"];
  [v13 setObject:v15 forKeyedSubscript:@"swap"];
  v16 = self->_log;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    v18 = [v13 objectForKeyedSubscript:@"proactive"];
    v19 = [v13 objectForKeyedSubscript:@"swap"];
    *buf = 138412546;
    v28 = v18;
    v29 = 2112;
    v30 = v19;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Proactive predictions accuracy %@ \n Swap predictions accuracy %@", buf, 0x16u);
  }

  return v13;
}

- (id)generateAccuraciesCAEventDictionary
{
  v3 = [(NSMutableDictionary *)self->_predictionAccuracies objectForKeyedSubscript:@"swap"];
  v4 = objc_alloc_init(NSMutableDictionary);
  if ([v3 totalPredictionIntervals] >= 1)
  {
    accuracyRate = [v3 accuracyRate];
    v6 = [accuracyRate objectForKeyedSubscript:@"top1"];
    [v4 setObject:v6 forKeyedSubscript:@"swap_top1"];

    v7 = [accuracyRate objectForKeyedSubscript:@"top3"];
    [v4 setObject:v7 forKeyedSubscript:@"swap_top3"];

    v8 = [accuracyRate objectForKeyedSubscript:@"top5"];
    [v4 setObject:v8 forKeyedSubscript:@"swap_top5"];

    v9 = [accuracyRate objectForKeyedSubscript:@"top10"];
    [v4 setObject:v9 forKeyedSubscript:@"swap_top10"];
  }

  v10 = [(NSMutableDictionary *)self->_predictionAccuracies objectForKeyedSubscript:@"proactive"];
  if ([v10 totalPredictionIntervals] >= 1)
  {
    accuracyRate2 = [v10 accuracyRate];
    v12 = [accuracyRate2 objectForKeyedSubscript:@"top1"];
    [v4 setObject:v12 forKeyedSubscript:@"proactive_top1"];

    v13 = [accuracyRate2 objectForKeyedSubscript:@"top3"];
    [v4 setObject:v13 forKeyedSubscript:@"proactive_top3"];

    v14 = [accuracyRate2 objectForKeyedSubscript:@"top5"];
    [v4 setObject:v14 forKeyedSubscript:@"proactive_top5"];

    v15 = [accuracyRate2 objectForKeyedSubscript:@"top10"];
    [v4 setObject:v15 forKeyedSubscript:@"proactive_top10"];
  }

  return v4;
}

- (void)logFreezerSkipReasons:(id)reasons
{
  reasonsCopy = reasons;
  v5 = reasonsCopy;
  if (self->_powerLogExists)
  {
    v9 = @"Applications";
    v10 = reasonsCopy;
    v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      sub_10011DD18();
    }

    PLLogRegisteredEvent();
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "PowerLog does not exist", v8, 2u);
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
    v4 = qword_10020AF70;
    v35 = qword_10020AF70;
    if (!qword_10020AF70)
    {
      *buf = _NSConcreteStackBlock;
      v28 = 3221225472;
      v29 = sub_1000394EC;
      v30 = &unk_1001B5798;
      v31 = &v32;
      sub_1000394EC(buf);
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

      v17 = [_APRSPLLogger topPredictionsFromScores:v3];
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

- (BOOL)getInferredCarryStatus
{
  v3 = +[_CDClientContext userContext];
  v4 = [v3 objectForKeyedSubscript:self->_inferredCarryStatusKeyPath];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (void)initializeCarryStatusLogging
{
  v3 = +[BGSystemTaskScheduler sharedScheduler];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100039158;
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

  v6 = [(_APRSPLLogger *)self updateCarryStatusWithContext:v3];
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
      sub_10011DE68();
    }
  }
}

- (BOOL)updateCarryStatusWithContext:(id)context
{
  v4 = +[_DASBMUtilityProvider sharedUtilityProvider];
  deviceIsInferredCarry = [v4 deviceIsInferredCarry];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = deviceIsInferredCarry;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Inferred carry status is %d", v8, 8u);
  }

  return deviceIsInferredCarry;
}

@end