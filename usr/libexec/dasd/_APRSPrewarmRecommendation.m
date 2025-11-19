@interface _APRSPrewarmRecommendation
+ (BOOL)appHasContinuousBackgroundModeWithRecord:(id)a3;
+ (BOOL)appPrefersUnoptimizedLaunchesWithRecord:(id)a3;
+ (BOOL)appPreventsPrewarm:(id)a3;
+ (BOOL)isPrewarmAllowed;
+ (BOOL)isPrewarmAllowedForApp:(id)a3;
+ (id)appActivationTimeScores:(id)a3;
+ (id)candidatesFromTimeline:(id)a3;
+ (id)evaluateRecommendationsFromTimeline:(id)a3;
+ (id)scoresToConfidenceLevels:(id)a3;
+ (id)sharedInstance;
- (_APRSPrewarmRecommendation)init;
- (id)appPredictionTimeline;
- (void)evaluateRecommendations;
- (void)registerForTrial;
- (void)updateTrialParameters;
@end

@implementation _APRSPrewarmRecommendation

- (_APRSPrewarmRecommendation)init
{
  v17.receiver = self;
  v17.super_class = _APRSPrewarmRecommendation;
  v2 = [(_APRSPrewarmRecommendation *)&v17 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.aprs", "appResume.PrewarmRecommendations");
    log = v2->_log;
    v2->_log = v3;

    v5 = +[NSMutableArray array];
    recommendations = v2->_recommendations;
    v2->_recommendations = v5;

    [(_APRSPrewarmRecommendation *)v2 registerForTrial];
    [(_APRSPrewarmRecommendation *)v2 updateTrialParameters];
    v7 = objc_alloc_init(_DASDataProtectionStateMonitor);
    dataProtectionStateMonitor = v2->_dataProtectionStateMonitor;
    v2->_dataProtectionStateMonitor = v7;

    objc_initWeak(&location, v2);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100007B44;
    v14[3] = &unk_1001B55C0;
    objc_copyWeak(&v15, &location);
    [(_DASDataProtectionStateMonitor *)v2->_dataProtectionStateMonitor setChangeHandler:v14];
    v9 = v2->_dataProtectionStateMonitor;
    v10 = +[_DASDataProtectionStateMonitor dataProtectionClassC];
    LODWORD(v9) = [(_DASDataProtectionStateMonitor *)v9 isDataAvailableFor:v10];

    if (v9)
    {
      v2->_classCUnlocked = 1;
    }

    else
    {
      v11 = v2->_log;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Class C not yet available.", v13, 2u);
      }
    }

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_10020ADF8 != -1)
  {
    sub_10011C0F4();
  }

  v3 = qword_10020ADF0;

  return v3;
}

+ (BOOL)appPreventsPrewarm:(id)a3
{
  v4 = a3;
  v5 = 1;
  v6 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v4 allowPlaceholder:1 error:0];

  if (([a1 appHasContinuousBackgroundModeWithRecord:v6] & 1) == 0)
  {
    v5 = [a1 appPrefersUnoptimizedLaunchesWithRecord:v6];
  }

  return v5;
}

+ (BOOL)appHasContinuousBackgroundModeWithRecord:(id)a3
{
  v3 = [a3 UIBackgroundModes];
  v4 = [v3 containsObject:@"continuous"];

  return v4;
}

+ (BOOL)appPrefersUnoptimizedLaunchesWithRecord:(id)a3
{
  v3 = [a3 infoDictionary];
  v4 = [v3 objectForKey:@"SBPrefersUnoptimizedLaunch" ofClass:objc_opt_class()];

  v5 = v4 && ([v4 BOOLValue] & 1) != 0;
  return v5;
}

- (void)evaluateRecommendations
{
  v5 = [(_APRSPrewarmRecommendation *)self appPredictionTimeline];
  v3 = [_APRSPrewarmRecommendation evaluateRecommendationsFromTimeline:v5];
  recommendations = self->_recommendations;
  self->_recommendations = v3;
}

+ (BOOL)isPrewarmAllowedForApp:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"com.apple.purplebuddy"] & 1) != 0 || (objc_msgSend(v3, "containsString:", @"UIService") & 1) != 0 || (objc_msgSend(v3, "containsString:", @".widget") & 1) != 0 || (objc_msgSend(v3, "containsString:", @"com.apple.Reality") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"com.apple.MTLReplayer") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"com.apple.Health") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"com.apple.camera") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"com.apple.ContinuityCaptureShieldUI") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"com.apple.itunesu"))
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [objc_opt_class() appPreventsPrewarm:v3] ^ 1;
  }

  return v4;
}

+ (BOOL)isPrewarmAllowed
{
  v2 = +[NSProcessInfo processInfo];
  v3 = [v2 isLowPowerModeEnabled];

  if (v3 & 1) != 0 || (DMIsMigrationNeeded())
  {
    return 0;
  }

  v5 = [objc_opt_class() sharedInstance];
  v6 = [v5 classCUnlocked];

  return v6;
}

+ (id)candidatesFromTimeline:(id)a3
{
  v3 = a3;
  v4 = os_transaction_create();
  v5 = +[NSMutableDictionary dictionary];
  v6 = os_log_create("com.apple.aprs", "appResume.PrewarmRecommendations");
  if (v3)
  {
    v7 = [v3 startDate];
    v8 = [v3 valueAtDate:v7];

    [v5 addEntriesFromDictionary:v8];
    v9 = [v5 count];
    v10 = +[_APRSPrewarmRecommendation sharedInstance];
    v11 = [v10 prewarmCount];

    if (v9 < v11)
    {
      v12 = [v3 transitionDates];
      v13 = [v12 firstObject];

      if (v13)
      {
        v14 = [v3 valueAtDate:v13];
        [v5 addEntriesFromDictionary:v14];
      }
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10011C108(v5, v6, v15, v16, v17, v18, v19, v20);
    }

    v21 = v5;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

+ (id)appActivationTimeScores:(id)a3
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = +[_APRSBiomeEventAnalyzer sharedInstance];
  v5 = [v4 meanDeltaTimeBetweenColdLaunchAndResume];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001046C;
  v8[3] = &unk_1001B5608;
  v6 = v3;
  v9 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

+ (id)scoresToConfidenceLevels:(id)a3
{
  v3 = a3;
  +[NSMutableDictionary dictionary];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000105D4;
  v4 = v6[3] = &unk_1001B5608;
  v7 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v6];

  return v4;
}

+ (id)evaluateRecommendationsFromTimeline:(id)a3
{
  v3 = a3;
  v4 = os_log_create("com.apple.aprs", "appResume.PrewarmRecommendations");
  if ([objc_opt_class() isPrewarmAllowed])
  {
    v5 = +[NSMutableArray array];
    v6 = [_APRSPrewarmRecommendation candidatesFromTimeline:v3];
    v7 = [v6 mutableCopy];

    if ([v7 count])
    {
      v8 = [_APRSPrewarmRecommendation scoresToConfidenceLevels:v7];
      v9 = [v8 mutableCopy];

      v10 = [_APRSPrewarmRecommendation appActivationTimeScores:0];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        sub_10011C108(v9, v4, v11, v12, v13, v14, v15, v16);
      }

      v37 = v3;
      v17 = [v9 allKeys];
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_100010A58;
      v42[3] = &unk_1001B5630;
      v36 = v9;
      v43 = v36;
      v35 = v10;
      v44 = v35;
      v18 = [v17 sortedArrayUsingComparator:v42];

      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        sub_10011C174(v18, v4, v19, v20, v21, v22, v23, v24);
      }

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v25 = v18;
      v26 = [v25 countByEnumeratingWithState:&v38 objects:v47 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v39;
        do
        {
          for (i = 0; i != v27; i = i + 1)
          {
            if (*v39 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v38 + 1) + 8 * i);
            v31 = +[_APRSRecommendationEngine sharedInstance];
            v32 = [v31 isAppRunning:v30];

            if (v32)
            {
              if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v46 = v30;
                _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "BundleID %@ is already running. Skipping from Prewarm", buf, 0xCu);
              }
            }

            else if ([_APRSPrewarmRecommendation isPrewarmAllowedForApp:v30])
            {
              [v5 addObject:v30];
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v38 objects:v47 count:16];
        }

        while (v27);
      }

      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v46 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "DASDPREWARM prewarm choice list: %@", buf, 0xCu);
      }

      v33 = v5;

      v7 = v36;
      v3 = v37;
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Prewarm not yet allowed.", buf, 2u);
    }

    v33 = &__NSArray0__struct;
  }

  return v33;
}

- (id)appPredictionTimeline
{
  v3 = objc_autoreleasePoolPush();
  v4 = +[_DASPredictionManager sharedTimelinePredictor];
  v5 = [v4 applicationLaunchLikelihoodForTop:50 withMinimumLikelihood:7200 withTemporalResolution:0.0];

  log = self->_log;
  if (v5)
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Timeline %@", &v9, 0xCu);
    }

    v7 = v5;
  }

  else if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    sub_10011C1E0(log);
  }

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (void)registerForTrial
{
  v3 = [_DASTrialManager sharedInstanceForProject:222 withNamespace:@"COREOS_DRM_APRS"];
  [v3 addDelegate:self];
}

- (void)updateTrialParameters
{
  v3 = [_DASTrialManager sharedInstanceForProject:222 withNamespace:@"COREOS_DRM_APRS"];
  v4 = [v3 factorWithName:@"PrewarmCount"];
  v5 = +[_DASDaemonLogger defaultCategory];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v8 = 134217984;
      v9 = [v4 longValue];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Trial: Prewarm count set to %lld", &v8, 0xCu);
    }

    v7 = [v4 longValue];
  }

  else
  {
    if (v6)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Trial: Failed to load prewarmCount", &v8, 2u);
    }

    v7 = 3;
  }

  self->_prewarmCount = v7;
}

@end