@interface _APRSFreezerRecommendation
+ (id)sharedInstance;
- (BOOL)process:(id)a3 inSet:(id)a4;
- (_APRSFreezerRecommendation)init;
- (double)scoreForApplication:(id)a3 atDate:(id)a4;
- (double)secondsFrom:(unint64_t)a3 until:(unint64_t)a4;
- (id)_queue_computeScores;
- (id)aggregatorScoresForAllApplicationsAtDate:(id)a3;
- (id)appActivationTimeScores:(id)a3;
- (id)appsFromProactiveSuggestions;
- (id)appsRecentlyForegrounded;
- (id)frequentlyUserKilledApps;
- (id)killScoresForAllApplicationsAtDate:(id)a3;
- (id)predictedAppsAtDate:(id)a3;
- (id)predictionScoresForAllApplicationsAtDate:(id)a3;
- (id)scoresForAppPredictionType:(int64_t)a3;
- (void)_queue_loadHistograms;
- (void)_queue_updateHistograms;
- (void)convertTimelineToApplicationDictionaries:(id)a3;
- (void)evaluateFreezerRecommendations;
- (void)incorporateLatestJetsamStatistics;
- (void)registerDailyModelUpdateTask;
- (void)updateModel;
- (void)updateTimeline;
@end

@implementation _APRSFreezerRecommendation

- (_APRSFreezerRecommendation)init
{
  v22.receiver = self;
  v22.super_class = _APRSFreezerRecommendation;
  v2 = [(_APRSFreezerRecommendation *)&v22 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.aprs", "appResume.FreezerRecommendations");
    log = v2->_log;
    v2->_log = v3;

    v5 = +[NSMutableArray array];
    freezerRecommendations = v2->_freezerRecommendations;
    v2->_freezerRecommendations = v5;

    v7 = +[NSMutableArray array];
    freezerDemotionRecommendations = v2->_freezerDemotionRecommendations;
    v2->_freezerDemotionRecommendations = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_BACKGROUND, 0);

    v11 = dispatch_queue_create("com.apple.dasd.appResume.FreezerRecommendations", v10);
    queue = v2->_queue;
    v2->_queue = v11;

    v13 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.appResume.freezerRecommendations"];
    killDefaults = v2->_killDefaults;
    v2->_killDefaults = v13;

    v15 = +[_APRSPLLogger sharedInstance];
    pLLogger = v2->_pLLogger;
    v2->_pLLogger = v15;

    v17 = v2->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10007D9DC;
    block[3] = &unk_1001B5668;
    v18 = v2;
    v21 = v18;
    dispatch_async(v17, block);
    [(_APRSFreezerRecommendation *)v18 registerDailyModelUpdateTask];
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_10020B538 != -1)
  {
    sub_10012273C();
  }

  v3 = qword_10020B530;

  return v3;
}

- (void)evaluateFreezerRecommendations
{
  [(_APRSFreezerRecommendation *)self updateTimeline];
  [(_APRSFreezerRecommendation *)self updateScores];
  v3 = +[NSDate date];
  v4 = [(_APRSFreezerRecommendation *)self aggregatorScoresForAllApplicationsAtDate:v3];

  if ([v4 count])
  {
    v5 = [v4 keysSortedByValueUsingComparator:&stru_1001B6FD8];
    v6 = +[NSMutableArray array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = v5;
    v7 = [obj countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = +[NSMutableDictionary dictionary];
          [v12 setObject:v11 forKeyedSubscript:@"app"];
          v13 = [v4 objectForKeyedSubscript:v11];
          [v12 setObject:v13 forKeyedSubscript:@"score"];

          [(NSArray *)v6 addObject:v12];
        }

        v8 = [obj countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v8);
    }

    freezerRecommendations = self->_freezerRecommendations;
    self->_freezerRecommendations = v6;
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "No change in Freezer recommendations", buf, 2u);
    }
  }
}

- (id)appsFromProactiveSuggestions
{
  v3 = +[NSMutableDictionary dictionary];
  if (dlopen_preflight([@"/System/Library/PrivateFrameworks/AppPredictionClient.framework/AppPredictionClient" UTF8String]))
  {
    v4 = [(_APRSFreezerRecommendation *)self scoresForAppPredictionType:15];
    v5 = [(_APRSFreezerRecommendation *)self scoresForAppPredictionType:16];
    [v3 addEntriesFromDictionary:v4];
    [v3 addEntriesFromDictionary:v5];
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Proactive scores %@", &v10, 0xCu);
    }

    v7 = v3;
  }

  else
  {
    v8 = self->_log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10011C4FC(v8);
    }

    v7 = 0;
  }

  return v7;
}

- (id)scoresForAppPredictionType:(int64_t)a3
{
  v30 = +[NSMutableDictionary dictionary];
  v32 = +[NSMutableDictionary dictionary];
  v37 = 0;
  v38 = &v37;
  v39 = 0x2050000000;
  v4 = qword_10020B550;
  v40 = qword_10020B550;
  if (!qword_10020B550)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v43 = sub_100081158;
    v44 = &unk_1001B5798;
    v45 = &v37;
    sub_100081158(&buf);
    v4 = v38[3];
  }

  v5 = v4;
  _Block_object_dispose(&v37, 8);
  v29 = [v4 alloc];
  v28 = [v29 cachedSuggestionsForClientModelType:a3];
  [v28 suggestions];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  obj = v34 = 0u;
  v6 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v6)
  {
    v7 = *v34;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v33 + 1) + 8 * i);
        v10 = [v9 executableSpecification];
        v11 = [v10 executableObject];

        if (v11)
        {
          v12 = [v9 scoreSpecification];
          v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v12 suggestedConfidenceCategory]);
          v14 = [v11 description];
          [v32 setObject:v13 forKeyedSubscript:v14];

          v15 = objc_autoreleasePoolPush();
          v16 = [LSApplicationRecord alloc];
          v17 = [v11 description];
          v18 = [v16 initWithBundleIdentifier:v17 allowPlaceholder:0 error:0];
          v19 = [v18 compatibilityObject];

          v20 = [v19 bundleExecutable];
          if (v20)
          {
            v21 = [v9 scoreSpecification];
            v22 = [v21 suggestedConfidenceCategory];

            v23 = 0.0;
            if ((v22 - 2) <= 2)
            {
              v23 = dbl_100158E48[(v22 - 2)];
            }

            v24 = [NSNumber numberWithDouble:v23];
            [v30 setObject:v24 forKeyedSubscript:v20];
          }

          objc_autoreleasePoolPop(v15);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v6);
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v30;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Proactive HomeScreen scores %@", &buf, 0xCu);
  }

  return v30;
}

- (void)convertTimelineToApplicationDictionaries:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 transitionDates];
    v7 = [v6 firstObject];
    [(_APRSFreezerRecommendation *)self setTransitionDate:v7];

    v8 = +[NSMutableSet set];
    v9 = [v5 startDate];
    v42 = [v5 valueAtDate:v9];

    v41 = [v5 valueAtDate:self->_transitionDate];
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      sub_100122750();
    }

    v36 = self;
    v37 = v5;
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      sub_1001227B8();
    }

    v10 = [v42 allKeys];
    [v8 addObjectsFromArray:v10];

    v11 = [v41 allKeys];
    [v8 addObjectsFromArray:v11];

    v40 = +[NSMutableDictionary dictionary];
    v39 = +[NSMutableDictionary dictionary];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v8;
    v12 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v44;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v44 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v43 + 1) + 8 * i);
          v17 = objc_autoreleasePoolPush();
          v18 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v16 allowPlaceholder:0 error:0];
          v19 = [v18 compatibilityObject];

          v20 = [v19 bundleExecutable];
          if (v20)
          {
            v21 = [v42 objectForKeyedSubscript:v16];
            [v21 doubleValue];
            if (v22 <= 0.1)
            {
              v23 = &off_1001CA048;
            }

            else
            {
              v23 = v21;
            }

            [v40 setObject:v23 forKeyedSubscript:v20];
            v24 = [v41 objectForKeyedSubscript:v16];

            [v24 doubleValue];
            if (v25 <= 0.1)
            {
              v26 = &off_1001CA048;
            }

            else
            {
              v26 = v24;
            }

            [v39 setObject:v26 forKeyedSubscript:v20];
          }

          objc_autoreleasePoolPop(v17);
        }

        v13 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v13);
    }

    v27 = [v40 copy];
    [(_APRSFreezerRecommendation *)v36 setCurrentProbabilities:v27];

    v28 = [v39 copy];
    [(_APRSFreezerRecommendation *)v36 setNextProbabilities:v28];

    log = v36->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v30 = log;
      v31 = [(_APRSFreezerRecommendation *)v36 currentProbabilities];
      *buf = 138412290;
      v48 = v31;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Current Probabilities: %@", buf, 0xCu);
    }

    v32 = v36->_log;
    v5 = v37;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = v32;
      v34 = [(_APRSFreezerRecommendation *)v36 nextProbabilities];
      *buf = 138412290;
      v48 = v34;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Next Probabilities: %@", buf, 0xCu);
    }
  }

  else
  {
    [(_APRSFreezerRecommendation *)self setCurrentProbabilities:&__NSDictionary0__struct];
    [(_APRSFreezerRecommendation *)self setNextProbabilities:&__NSDictionary0__struct];
    v35 = +[NSDate distantFuture];
    [(_APRSFreezerRecommendation *)self setTransitionDate:v35];
  }
}

- (void)updateTimeline
{
  v3 = objc_autoreleasePoolPush();
  v4 = +[_DASPredictionManager sharedTimelinePredictor];
  v5 = [v4 applicationLaunchLikelihoodForTop:50 withMinimumLikelihood:7200 withTemporalResolution:0.0];

  log = self->_log;
  if (v5)
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Updating timeline: %@", &v7, 0xCu);
    }

    [(_APRSFreezerRecommendation *)self convertTimelineToApplicationDictionaries:v5];
  }

  else if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    sub_10011C1E0(log);
  }

  objc_autoreleasePoolPop(v3);
}

- (double)scoreForApplication:(id)a3 atDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_APRSFreezerRecommendation *)self transitionDate];
  [v6 timeIntervalSinceDate:v8];
  v10 = v9;

  if (v10 <= 0.0)
  {
    [(_APRSFreezerRecommendation *)self currentProbabilities];
  }

  else
  {
    [(_APRSFreezerRecommendation *)self nextProbabilities];
  }
  v11 = ;
  v12 = [v11 objectForKeyedSubscript:v7];

  [v12 doubleValue];
  v14 = v13;

  return v14;
}

- (id)predictionScoresForAllApplicationsAtDate:(id)a3
{
  v4 = a3;
  v5 = [(_APRSFreezerRecommendation *)self transitionDate];
  [v4 timeIntervalSinceDate:v5];
  v7 = v6;

  if (v7 <= 0.0)
  {
    [(_APRSFreezerRecommendation *)self currentProbabilities];
  }

  else
  {
    [(_APRSFreezerRecommendation *)self nextProbabilities];
  }
  v8 = ;

  return v8;
}

- (id)predictedAppsAtDate:(id)a3
{
  v4 = [(_APRSFreezerRecommendation *)self predictionScoresForAllApplicationsAtDate:a3];
  v5 = [v4 mutableCopy];

  v6 = [(_APRSFreezerRecommendation *)self appsFromProactiveSuggestions];
  v7 = [v6 mutableCopy];

  v8 = v7;
  if (![v7 count])
  {
    v25 = v5;
LABEL_13:
    v12 = v25;
    goto LABEL_14;
  }

  if (![v5 count])
  {
    v25 = v7;
    goto LABEL_13;
  }

  v9 = +[NSMutableSet set];
  v10 = [v5 allKeys];
  [v9 addObjectsFromArray:v10];

  v11 = [v5 allKeys];
  [v9 addObjectsFromArray:v11];

  v12 = +[NSMutableDictionary dictionary];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v27 = v9;
  obj = [v9 allObjects];
  v13 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v29 + 1) + 8 * i);
        [v5 objectForKeyedSubscript:v17];
        v19 = v18 = v5;
        [v19 doubleValue];
        v21 = v20;
        v22 = [v8 objectForKeyedSubscript:v17];
        [v22 doubleValue];
        v24 = [NSNumber numberWithDouble:v23 * 0.5 + v21 * 0.5];
        [v12 setObject:v24 forKeyedSubscript:v17];

        v5 = v18;
      }

      v14 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v14);
  }

LABEL_14:

  return v12;
}

- (id)aggregatorScoresForAllApplicationsAtDate:(id)a3
{
  v4 = a3;
  v5 = os_transaction_create();
  v6 = objc_autoreleasePoolPush();
  v7 = +[NSMutableSet set];
  v8 = +[NSMutableArray array];
  v9 = [(_APRSFreezerRecommendation *)self predictedAppsAtDate:v4];
  v10 = [v9 count];
  v70 = v8;
  [v8 addObject:v9];
  v11 = [v9 allKeys];
  [v7 addObjectsFromArray:v11];

  v71 = self;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v81 = v9;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Prediction scores %@", buf, 0xCu);
  }

  v13 = [(_APRSFreezerRecommendation *)self killScoresForAllApplicationsAtDate:v4];
  v14 = [v13 mutableCopy];

  if ([v14 count])
  {
    [v70 addObject:v14];
    v15 = [v14 allKeys];
    [v7 addObjectsFromArray:v15];

    v16 = 3;
  }

  else
  {
    v16 = 2;
  }

  v74 = v16;
  v17 = self->_log;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v81 = v14;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Kill scores %@", buf, 0xCu);
  }

  v18 = [(_APRSFreezerRecommendation *)self appActivationTimeScores:v4];
  v19 = [v18 mutableCopy];

  if ([v19 count])
  {
    [v70 addObject:v19];
    v20 = [v19 allKeys];
    [v7 addObjectsFromArray:v20];
  }

  else
  {
    --v74;
  }

  v21 = v71->_log;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v81 = v19;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Activation Time scores %@", buf, 0xCu);
  }

  v69 = v19;
  if (v74 == 1)
  {
    v22 = v70;
    v23 = [v70 firstObject];
    v24 = 0;
    v25 = 0;
  }

  else if (v10 || [v7 count] >= 0xA)
  {
    v63 = v14;
    v64 = v9;
    v66 = v6;
    v67 = v5;
    v68 = v4;
    v26 = [(_APRSFreezerRecommendation *)v71 frequentlyUserKilledApps];
    v73 = +[NSMutableDictionary dictionary];
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v65 = v7;
    v27 = v7;
    v28 = v71;
    v29 = v27;
    v30 = [v27 countByEnumeratingWithState:&v75 objects:v79 count:16];
    v31 = v70;
    if (v30)
    {
      v32 = v30;
      v33 = *v76;
      v72 = v29;
      do
      {
        for (i = 0; i != v32; i = i + 1)
        {
          if (*v76 != v33)
          {
            objc_enumerationMutation(v29);
          }

          v35 = *(*(&v75 + 1) + 8 * i);
          if ([v26 containsObject:v35])
          {
            v36 = v28->_log;
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v81 = v35;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "App %@ has a high user kill ratio. Skipping Freezer", buf, 0xCu);
            }
          }

          else if (([v35 isEqual:@"Camera"] & 1) == 0)
          {
            if (v74 == 2)
            {
              v37 = [v31 firstObject];
              v38 = [v37 objectForKeyedSubscript:v35];
              [v38 doubleValue];
              v40 = v39;
              v41 = [v31 lastObject];
              v42 = [v41 objectForKeyedSubscript:v35];
              [v42 doubleValue];
              v44 = [NSNumber numberWithDouble:v43 * 0.75 + v40 * 0.25];
              [v73 setObject:v44 forKeyedSubscript:v35];

              v28 = v71;
              v31 = v70;

              v29 = v72;
            }

            else
            {
              v45 = [v31 firstObject];
              v46 = [v45 objectForKeyedSubscript:v35];

              v47 = 0.0;
              v48 = 0.0;
              if (v46)
              {
                v49 = [v45 objectForKeyedSubscript:v35];
                [v49 doubleValue];
                v48 = v50;
              }

              v51 = [v31 objectAtIndex:2];

              v52 = [v51 objectForKeyedSubscript:v35];

              if (v52)
              {
                v53 = [v51 objectForKeyedSubscript:v35];
                [v53 doubleValue];
                v47 = v54;
              }

              v55 = [v31 lastObject];

              v56 = [v55 objectForKeyedSubscript:v35];

              if (v56 && ([v55 objectForKeyedSubscript:v35], v57 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v57, "doubleValue"), v59 = v58, v57, v59 != -1.0))
              {
                v60 = v47 * 0.25 + v48 * 0.25 + v59 * 0.5;
              }

              else
              {
                v60 = v47 * 0.75 + v48 * 0.25;
              }

              v61 = [NSNumber numberWithDouble:v60];
              [v73 setObject:v61 forKeyedSubscript:v35];

              v29 = v72;
            }
          }
        }

        v32 = [v29 countByEnumeratingWithState:&v75 objects:v79 count:16];
      }

      while (v32);
    }

    v23 = v73;
    [v73 setObject:&off_1001CA060 forKeyedSubscript:@"MobileSafari"];
    v25 = [v73 copy];

    v24 = 1;
    v5 = v67;
    v4 = v68;
    v22 = v31;
    v7 = v65;
    v6 = v66;
    v14 = v63;
    v9 = v64;
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v23 = &__NSDictionary0__struct;
    v22 = v70;
  }

  objc_autoreleasePoolPop(v6);
  if (v24)
  {
    v23 = v25;
  }

  return v23;
}

- (id)appActivationTimeScores:(id)a3
{
  v4 = +[NSMutableDictionary dictionary];
  v5 = +[_APRSBiomeEventAnalyzer sharedInstance];
  v6 = [v5 meanDeltaTimeBetweenColdLaunchAndResume];

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100122820();
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007F388;
  v9[3] = &unk_1001B5608;
  v7 = v4;
  v10 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:v9];

  return v7;
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
  v5 = [(NSMutableSet *)self->_zerosSet allObjects];
  v8[3] = @"snapshotTS";
  lastSnapshotTime = self->_lastSnapshotTime;
  v9[2] = v5;
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
  v17[2] = sub_10007F97C;
  v17[3] = &unk_1001B7000;
  v17[4] = self;
  v5 = v3;
  v18 = v5;
  [(NSDictionary *)historicalKillHistogram enumerateKeysAndObjectsUsingBlock:v17];
  todaysKillHistogram = self->_todaysKillHistogram;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10007FA58;
  v15[3] = &unk_1001B5608;
  v7 = v5;
  v16 = v7;
  [(NSMutableDictionary *)todaysKillHistogram enumerateKeysAndObjectsUsingBlock:v15];
  zerosSet = self->_zerosSet;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10007FAE0;
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
  block[2] = sub_10007FBC8;
  block[3] = &unk_1001B5668;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)registerDailyModelUpdateTask
{
  v3 = +[BGSystemTaskScheduler sharedScheduler];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10007FE80;
  v12[3] = &unk_1001B5770;
  v12[4] = self;
  [v3 registerForTaskWithIdentifier:@"com.apple.aprs.FreezerModelUpdate" usingQueue:0 launchHandler:v12];

  v4 = +[BGSystemTaskScheduler sharedScheduler];
  v5 = [v4 taskRequestForIdentifier:@"com.apple.aprs.FreezerModelUpdate"];

  if (!v5)
  {
    v6 = [[BGRepeatingSystemTaskRequest alloc] initWithIdentifier:@"com.apple.aprs.FreezerModelUpdate"];
    [v6 setPriority:1];
    [v6 setInterval:86400.0];
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
}

- (double)secondsFrom:(unint64_t)a3 until:(unint64_t)a4
{
  if (qword_10020B548 != -1)
  {
    sub_100122888();
  }

  return (((a3 - a4) * dword_10020B540) / *algn_10020B544) / 1000000000.0;
}

- (id)appsRecentlyForegrounded
{
  v35 = os_transaction_create();
  v2 = [NSDate dateWithTimeIntervalSinceNow:-604800.0];
  v3 = [_DASBMHistogramBuilder builderForAppInFocusStreamStarting:v2];

  v34 = v3;
  v4 = [v3 histogram];
  v5 = [v4 counts];
  v6 = [NSMutableSet setWithSet:v5];

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
        v27 = [v26 compatibilityObject];

        v28 = [v27 bundleExecutable];
        if (v28)
        {
          [v18 addObject:v28];
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

- (BOOL)process:(id)a3 inSet:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length] > 0x1F)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = v6;
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

          if ([*(*(&v14 + 1) + 8 * i) hasPrefix:{v5, v14}])
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
    v7 = [v6 containsObject:v5];
  }

LABEL_13:

  return v7;
}

- (void)incorporateLatestJetsamStatistics
{
  v3 = [(_APRSFreezerRecommendation *)self appsRecentlyForegrounded];
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000804BC;
  v6[3] = &unk_1001B56E0;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_sync(queue, v6);
}

- (id)killScoresForAllApplicationsAtDate:(id)a3
{
  v4 = +[NSMutableDictionary dictionary];
  queue = self->_queue;
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100080B64;
  v13 = &unk_1001B56E0;
  v14 = self;
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

- (id)frequentlyUserKilledApps
{
  v26 = +[NSMutableArray array];
  v2 = +[_APRSBiomeEventAnalyzer sharedInstance];
  v3 = [v2 allAppKillsInfo];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = [v3 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v10 = [v3 objectForKeyedSubscript:v9];
        [v10 meanSpringBoardKills];
        v12 = v11;
        [v10 meanJetsamKills];
        v14 = v12 + v13;
        [v10 meanRunningBoardKills];
        v16 = v14 + v15;
        [v10 meanOtherKills];
        v18 = (v16 + v17);
        if (v18)
        {
          [v10 meanSpringBoardKills];
          if (v19 / v18 > 0.85)
          {
            v20 = objc_autoreleasePoolPush();
            v21 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v9 allowPlaceholder:0 error:0];
            v22 = [v21 compatibilityObject];

            v23 = [v22 bundleExecutable];
            if (v23)
            {
              v24 = v23;
              [v26 addObject:v23];
            }

            objc_autoreleasePoolPop(v20);
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);
  }

  return v26;
}

@end