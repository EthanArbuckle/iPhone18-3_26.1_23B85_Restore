@interface _DASSwapModelApplicationUsage
- (_DASSwapModelApplicationUsage)init;
- (double)scoreForApplication:(id)a3 atDate:(id)a4;
- (id)prewarmLaunchAppFromBundleID:(id)a3;
- (id)scoresForAllApplicationsAtDate:(id)a3;
- (void)convertTimelineToApplicationDictionaries:(id)a3;
- (void)prewarmLaunchAppsFromTimeline:(id)a3;
- (void)updateTimeline;
@end

@implementation _DASSwapModelApplicationUsage

- (_DASSwapModelApplicationUsage)init
{
  v13.receiver = self;
  v13.super_class = _DASSwapModelApplicationUsage;
  v2 = [(_DASSwapModelApplicationUsage *)&v13 init];
  if (v2)
  {
    v3 = [_DASDaemonLogger logForCategory:@"swap.appUsageModel"];
    log = v2->_log;
    v2->_log = v3;

    v5 = +[_DASPredictionManager sharedTimelinePredictor];
    predictor = v2->_predictor;
    v2->_predictor = v5;

    v7 = +[_DASTrialManager sharedInstance];
    v8 = [v7 factorWithName:@"PrewarmDisabled"];
    v9 = +[_DASDaemonLogger defaultCategory];
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        v11 = [v8 BOOLeanValue];
        *buf = 67109120;
        v15 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Trial: Prewarm disabled set to %d", buf, 8u);
      }

      v2->_prewarmDisabled = [v8 BOOLeanValue];
    }

    else
    {
      if (v10)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Trial: Failed to load prewarmDisabled", buf, 2u);
      }
    }
  }

  return v2;
}

- (void)convertTimelineToApplicationDictionaries:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 transitionDates];
    v7 = [v6 firstObject];
    [(_DASSwapModelApplicationUsage *)self setTransitionDate:v7];

    v8 = +[NSMutableSet set];
    v9 = [v5 startDate];
    v44 = [v5 valueAtDate:v9];

    v43 = [v5 valueAtDate:self->_transitionDate];
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      sub_100129EFC(v44, log);
    }

    v38 = self;
    v39 = v5;
    v11 = self->_log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_100129F74(v43, v11);
    }

    v12 = [v44 allKeys];
    [v8 addObjectsFromArray:v12];

    v13 = [v43 allKeys];
    [v8 addObjectsFromArray:v13];

    v42 = +[NSMutableDictionary dictionary];
    v41 = +[NSMutableDictionary dictionary];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = v8;
    v14 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v46;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v46 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v45 + 1) + 8 * i);
          v19 = objc_autoreleasePoolPush();
          v20 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v18 allowPlaceholder:0 error:0];
          v21 = [v20 compatibilityObject];

          v22 = [v21 bundleExecutable];
          if (v22)
          {
            v23 = [v44 objectForKeyedSubscript:v18];
            [v23 doubleValue];
            if (v24 <= 0.1)
            {
              v25 = &off_1001CA408;
            }

            else
            {
              v25 = v23;
            }

            [v42 setObject:v25 forKeyedSubscript:v22];
            v26 = [v43 objectForKeyedSubscript:v18];

            [v26 doubleValue];
            if (v27 <= 0.1)
            {
              v28 = &off_1001CA408;
            }

            else
            {
              v28 = v26;
            }

            [v41 setObject:v28 forKeyedSubscript:v22];
          }

          objc_autoreleasePoolPop(v19);
        }

        v15 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v15);
    }

    v29 = [v42 copy];
    [(_DASSwapModelApplicationUsage *)v38 setCurrentProbabilities:v29];

    v30 = [v41 copy];
    [(_DASSwapModelApplicationUsage *)v38 setNextProbabilities:v30];

    v31 = v38->_log;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = v31;
      v33 = [(_DASSwapModelApplicationUsage *)v38 currentProbabilities];
      *buf = 138412290;
      v50 = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Current Probabilities: %@", buf, 0xCu);
    }

    v34 = v38->_log;
    v5 = v39;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = v34;
      v36 = [(_DASSwapModelApplicationUsage *)v38 nextProbabilities];
      *buf = 138412290;
      v50 = v36;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Next Probabilities: %@", buf, 0xCu);
    }
  }

  else
  {
    [(_DASSwapModelApplicationUsage *)self setCurrentProbabilities:&__NSDictionary0__struct];
    [(_DASSwapModelApplicationUsage *)self setNextProbabilities:&__NSDictionary0__struct];
    v37 = +[NSDate distantFuture];
    [(_DASSwapModelApplicationUsage *)self setTransitionDate:v37];
  }
}

- (id)prewarmLaunchAppFromBundleID:(id)a3
{
  v4 = a3;
  if ([_APRSPrewarmRecommendation appPreventsPrewarm:v4])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v4;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "DASPREWARM Refusing to prewarm %@ because it not allowed by developer", buf, 0xCu);
    }

    v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
  }

  else
  {
    v7 = objc_alloc_init(RBSLaunchContext);
    v8 = [RBSProcessIdentity identityForEmbeddedApplicationIdentifier:v4];
    [v7 setIdentity:v8];

    [v7 setExplanation:@"DAS Prewarm launch"];
    v9 = [RBSDomainAttribute attributeWithDomain:@"com.apple.dasd" name:@"DYLDLaunch"];
    v33 = v9;
    v10 = [NSArray arrayWithObjects:&v33 count:1];
    [v7 setAttributes:v10];

    [v7 _setAdditionalEnvironment:&off_1001CAF18];
    v11 = [[RBSLaunchRequest alloc] initWithContext:v7];
    v27 = 0;
    v28 = 0;
    v26 = 0;
    v12 = [v11 execute:&v28 assertion:&v27 error:&v26];
    v13 = v28;
    v14 = v27;
    v15 = v26;
    v16 = self->_log;
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (v17)
      {
        *buf = 138412290;
        v30 = v4;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "DASDPREWARM Prewarm app success: %@", buf, 0xCu);
      }

      if (v14)
      {
        v21 = _NSConcreteStackBlock;
        v22 = 3221225472;
        v23 = sub_1000C00C0;
        v24 = &unk_1001B6B00;
        v25 = v13;
        [v25 monitorForDeath:&v21];
        v18 = [_APRSPrewarmInterface sharedInstance:v21];
        [v18 appendPrewarmAssertion:v4 withAssertion:v14];
      }

      v19 = +[_APRSMetricRecorder sharedInstance];
      [v19 startLoggingForApp:v4 pid:objc_msgSend(v13 forEvent:{"pid"), 0}];
    }

    else if (v17)
    {
      *buf = 138412546;
      v30 = v4;
      v31 = 2112;
      v32 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "DASDPREWARM Encountered error launching %@: %@", buf, 0x16u);
    }

    v6 = v15;
  }

  return v6;
}

- (void)prewarmLaunchAppsFromTimeline:(id)a3
{
  if (a3)
  {
    v4 = [_APRSPrewarmRecommendation evaluateRecommendationsFromTimeline:?];
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v4;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "DASDPREWARM prewarm choice list: %@", buf, 0xCu);
    }

    v7 = 0;
    *&v6 = 138412290;
    v16 = v6;
    do
    {
      if (v7 >= [v4 count])
      {
        break;
      }

      v8 = self->_log;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
        v10 = [v4 objectAtIndexedSubscript:v7];
        *buf = v16;
        v18 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "DASDPREWARM Prewarm app attempt: %@", buf, 0xCu);
      }

      v11 = [v4 objectAtIndexedSubscript:v7];
      v12 = [(_DASSwapModelApplicationUsage *)self prewarmLaunchAppFromBundleID:v11];

      if (!v12)
      {
        v13 = self->_log;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = v13;
          v15 = [v4 objectAtIndexedSubscript:v7];
          *buf = v16;
          v18 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "DASDPREWARM Prewarm of %@ succeeded", buf, 0xCu);
        }
      }

      ++v7;
    }

    while (v7 != 3);
  }
}

- (void)updateTimeline
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(_DASTimelinePredictor *)self->_predictor applicationLaunchLikelihoodForTop:50 withMinimumLikelihood:7200 withTemporalResolution:0.0];
  if (!v4)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_10011C1E0(log);
    }
  }

  v6 = self->_log;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Updating timeline: %@", &v9, 0xCu);
  }

  if (_os_feature_enabled_impl() && !self->_prewarmDisabled)
  {
    v8 = self->_log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "prewarm_app feature flag enabled", &v9, 2u);
    }

    [(_DASSwapModelApplicationUsage *)self prewarmLaunchAppsFromTimeline:v4];
  }

  else
  {
    v7 = self->_log;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100129FEC(v7);
    }
  }

  [(_DASSwapModelApplicationUsage *)self convertTimelineToApplicationDictionaries:v4];

  objc_autoreleasePoolPop(v3);
}

- (double)scoreForApplication:(id)a3 atDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_DASSwapModelApplicationUsage *)self transitionDate];
  [v6 timeIntervalSinceDate:v8];
  v10 = v9;

  if (v10 <= 0.0)
  {
    [(_DASSwapModelApplicationUsage *)self currentProbabilities];
  }

  else
  {
    [(_DASSwapModelApplicationUsage *)self nextProbabilities];
  }
  v11 = ;
  v12 = [v11 objectForKeyedSubscript:v7];

  [v12 doubleValue];
  v14 = v13;

  return v14;
}

- (id)scoresForAllApplicationsAtDate:(id)a3
{
  v4 = a3;
  v5 = [(_DASSwapModelApplicationUsage *)self transitionDate];
  [v4 timeIntervalSinceDate:v5];
  v7 = v6;

  if (v7 <= 0.0)
  {
    [(_DASSwapModelApplicationUsage *)self currentProbabilities];
  }

  else
  {
    [(_DASSwapModelApplicationUsage *)self nextProbabilities];
  }
  v8 = ;

  return v8;
}

@end