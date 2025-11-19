@interface _DASActivityRateLimitManager
+ (id)sharedLimiter;
- (BOOL)executeActivity:(id)a3;
- (BOOL)isActivityRateLimited:(id)a3 atSubmission:(BOOL)a4;
- (BOOL)limitedActivity:(id)a3 withLimitsResponses:(id)a4;
- (BOOL)limitsApplyToActivity:(id)a3;
- (BOOL)rateManagementApplyToActivity:(id)a3;
- (_DASActivityRateLimitManager)init;
- (id)evaluateActivityAtSubmission:(id)a3;
- (id)evaluateRateLimitedActivity:(id)a3;
- (id)evaluationResultsAtExecution:(id)a3;
- (id)loadSubmittedRateLimitConfiguration;
- (id)shouldLimitActivity:(id)a3 withEvaluationResults:(id)a4 atDate:(id)a5;
- (id)unprotectedEvaluateRateLimitedActivity:(id)a3 forIdentifier:(id)a4;
- (void)cleanupTimerHandler;
- (void)completeActivity:(id)a3;
- (void)initializeRateLimitWithActivity:(id)a3 withIdentifier:(id)a4;
- (void)logSubmittedActivity:(id)a3 asRateLimited:(BOOL)a4;
- (void)recalculateStartDates;
- (void)replaceExistingRateLimitsForConfiguration:(id)a3;
- (void)saveSubmittedRateLimitConfiguration;
- (void)submitActivity:(id)a3;
- (void)submitRateLimitConfiguration:(id)a3;
@end

@implementation _DASActivityRateLimitManager

+ (id)sharedLimiter
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013CA4;
  block[3] = &unk_1001B54A0;
  block[4] = a1;
  if (qword_10020AE00 != -1)
  {
    dispatch_once(&qword_10020AE00, block);
  }

  v2 = qword_10020AE08;

  return v2;
}

- (_DASActivityRateLimitManager)init
{
  v36.receiver = self;
  v36.super_class = _DASActivityRateLimitManager;
  v2 = [(_DASActivityRateLimitManager *)&v36 init];
  v3 = v2;
  if (v2)
  {
    v2->_submittedConfigurationLock._os_unfair_lock_opaque = 0;
    v4 = +[NSMutableDictionary dictionary];
    [(_DASActivityRateLimitManager *)v3 setRateLimitConfigurations:v4];

    v5 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.duetactivityscheduler"];
    objc_storeStrong(&v3->_defaults, v5);
    v6 = +[_DASRateLimiterUtilities getCurrentBootSessionUUID];
    v7 = [v5 stringForKey:@"previousBootUUID"];
    v8 = [(_DASActivityRateLimitManager *)v3 loadSubmittedRateLimitConfiguration];
    v9 = v8;
    if (v8 && [v8 count])
    {
      v10 = [v6 isEqualToString:v7];
    }

    else
    {
      v10 = 0;
    }

    v11 = +[_CDClientContext userContext];
    context = v3->_context;
    v3->_context = v11;

    v13 = os_log_create("com.apple.duetactivityscheduler", "processRateLimiter");
    log = v3->_log;
    v3->_log = v13;

    os_unfair_lock_lock(&v3->_submittedConfigurationLock);
    if (v10)
    {
      v15 = [v9 mutableCopy];
    }

    else
    {
      v15 = +[NSMutableDictionary dictionary];
    }

    v16 = v15;
    [(_DASActivityRateLimitManager *)v3 setSubmittedConfigurations:v15];

    v17 = [(_DASActivityRateLimitManager *)v3 submittedConfigurations];
    v18 = _DASCKRateLimitConfigurationName;
    v19 = [v17 objectForKeyedSubscript:_DASCKRateLimitConfigurationName];

    if (!v19)
    {
      v20 = +[_DASRateLimiterUtilities ckRateLimitConfiguration];
      v21 = [(_DASActivityRateLimitManager *)v3 submittedConfigurations];
      [v21 setObject:v20 forKeyedSubscript:v18];
    }

    v22 = [(_DASActivityRateLimitManager *)v3 submittedConfigurations];
    v23 = _DASPECRateLimitConfigurationName;
    v24 = [v22 objectForKeyedSubscript:_DASPECRateLimitConfigurationName];

    if (!v24)
    {
      v25 = +[_DASRateLimiterUtilities pecRateLimitConfiguration];
      v26 = [(_DASActivityRateLimitManager *)v3 submittedConfigurations];
      [v26 setObject:v25 forKeyedSubscript:v23];
    }

    os_unfair_lock_unlock(&v3->_submittedConfigurationLock);
    [(_DASActivityRateLimitManager *)v3 saveSubmittedRateLimitConfiguration];
    v27 = dispatch_get_global_queue(-32768, 0);
    v28 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v27);
    cleanupTimer = v3->_cleanupTimer;
    v3->_cleanupTimer = v28;

    v30 = v3->_cleanupTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100013C9C;
    handler[3] = &unk_1001B5668;
    v35 = v3;
    dispatch_source_set_event_handler(v30, handler);
    v31 = v3->_cleanupTimer;
    v32 = dispatch_walltime(0, 14400000000000);
    dispatch_source_set_timer(v31, v32, 0xD18C2E28000uLL, 0xDF8475800uLL);
    dispatch_activate(v3->_cleanupTimer);
    [(NSUserDefaults *)v3->_defaults setObject:v6 forKey:@"previousBootUUID"];
  }

  return v3;
}

- (void)cleanupTimerHandler
{
  obj = [(_DASActivityRateLimitManager *)self rateLimitConfigurations];
  objc_sync_enter(obj);
  v3 = +[NSDate now];
  v4 = [(_DASActivityRateLimitManager *)self rateLimitConfigurations];
  v5 = [v4 copy];

  v6 = +[NSMutableArray array];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v8)
  {
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v7 objectForKeyedSubscript:v11];
        if ([v12 isInactiveAtDate:v3])
        {
          v13 = [(_DASActivityRateLimitManager *)self rateLimitConfigurations];
          [v13 removeObjectForKey:v11];

          [v6 addObject:v11];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v8);
  }

  v14 = [(_DASActivityRateLimitManager *)self log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [(_DASActivityRateLimitManager *)self rateLimitConfigurations];
    *buf = 138412546;
    v22 = v6;
    v23 = 2112;
    v24 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Removed rate limits %@. Now: %@", buf, 0x16u);
  }

  objc_sync_exit(obj);
}

- (BOOL)limitsApplyToActivity:(id)a3
{
  v4 = a3;
  if (!-[_DASActivityRateLimitManager rateManagementApplyToActivity:](self, "rateManagementApplyToActivity:", v4) || ([v4 widgetID], v5 = objc_claimAutoreleasedReturnValue(), v5, v5) || (objc_msgSend(v4, "rateLimitConfigurationName"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "containsString:", _DASPECRateLimitConfigurationName), v6, (v7 & 1) != 0))
  {
    v8 = 0;
  }

  else
  {
    v10 = [v4 identifier];
    v11 = [v10 containsString:@"assetsd.backgroundjobservice.lowprioritysearchbattery"];

    v8 = v11 ^ 1;
  }

  return v8;
}

- (BOOL)rateManagementApplyToActivity:(id)a3
{
  v3 = a3;
  v4 = [v3 schedulingPriority];
  if (v4 > _DASSchedulingPriorityDefault)
  {
    goto LABEL_4;
  }

  v5 = [v3 name];

  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = +[_DASPlistParser sharedInstance];
  v7 = [v6 containsOverrideForActivity:v3 withLimitation:kDASProcessRateLimitationName];

  if (v7)
  {
    goto LABEL_4;
  }

  v10 = [v3 groupName];
  if ([v10 containsString:@"com.apple.ckdiscretionaryd"])
  {
    v11 = [v3 relatedApplications];
    if ([v11 containsObject:@"com.apple.mediaanalysisd-service"])
    {

      v8 = 0;
      goto LABEL_9;
    }

    v27 = [v3 relatedApplications];
    v28 = [v27 containsObject:@"com.apple.mediaanalysisd"];

    if (v28)
    {
      goto LABEL_4;
    }
  }

  else
  {
  }

  v12 = [v3 groupName];
  if (([v12 containsString:@"com.apple.ckdiscretionaryd"] & 1) == 0)
  {

LABEL_15:
    v15 = [v3 userInfo];
    v16 = [v15 objectForKeyedSubscript:_DASNonRateLimitedLaunchKey];
    v17 = [v16 BOOLValue];

    if (v17)
    {
      goto LABEL_4;
    }

    v18 = [v3 userInfo];
    v19 = [v18 objectForKeyedSubscript:_DASOverrideRateLimitingKey];
    v20 = [v19 BOOLValue];

    if (v20)
    {
      goto LABEL_4;
    }

    if ([v3 requestsApplicationLaunch])
    {
      v21 = [v3 launchReason];
      v22 = [v21 isEqualToString:_DASLaunchReasonBackgroundRemoteNotification];

      if (v22)
      {
        goto LABEL_4;
      }
    }

    if ([v3 requestsImmediateRuntime])
    {
      goto LABEL_4;
    }

    v23 = [v3 rateLimitConfigurationName];
    if (v23)
    {
      v24 = v23;
      v25 = [v3 rateLimitConfigurationName];
      v26 = _DASDefaultConfigurationName;

      if (v25 != v26)
      {
        v8 = 1;
        goto LABEL_5;
      }
    }

    v10 = [v3 identifier];
    [v10 containsString:@"assetsd.backgroundjobservice.lowprioritysearchbattery"];
    v8 = 1;
LABEL_9:

    goto LABEL_5;
  }

  v13 = [v3 relatedApplications];
  v14 = [v13 containsObject:@"com.apple.mobileslideshow"];

  if ((v14 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_4:
  v8 = 0;
LABEL_5:

  return v8;
}

- (void)submitActivity:(id)a3
{
  v4 = a3;
  if ([(_DASActivityRateLimitManager *)self rateManagementApplyToActivity:?])
  {
    [(_DASActivityRateLimitManager *)self isActivityRateLimited:v4 atSubmission:1];
  }
}

- (BOOL)executeActivity:(id)a3
{
  v4 = a3;
  if ([(_DASActivityRateLimitManager *)self rateManagementApplyToActivity:v4])
  {
    v5 = ![(_DASActivityRateLimitManager *)self isActivityRateLimited:v4 atSubmission:0];
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (BOOL)isActivityRateLimited:(id)a3 atSubmission:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([(_DASActivityRateLimitManager *)self rateManagementApplyToActivity:v6])
  {
    v7 = +[NSDate now];
    if (v4)
    {
      [(_DASActivityRateLimitManager *)self evaluateActivityAtSubmission:v6];
    }

    else
    {
      [(_DASActivityRateLimitManager *)self evaluationResultsAtExecution:v6];
    }
    v9 = ;
    v10 = [(_DASActivityRateLimitManager *)self shouldLimitActivity:v6 withEvaluationResults:v9 atDate:v7];
    v11 = v10;
    if (v10)
    {
      v18 = v10;
      v12 = [NSArray arrayWithObjects:&v18 count:1];
      v13 = [_DASLimiterResponse queryActivityDecision:5 fromResponses:v12];

      if (v13)
      {
        v17 = v11;
        v14 = [NSArray arrayWithObjects:&v17 count:1];
        [(_DASActivityRateLimitManager *)self limitedActivity:v6 withLimitsResponses:v14];
      }
    }

    v15 = [v9 maxedRateLimits];
    v8 = [v15 count] != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)completeActivity:(id)a3
{
  v4 = a3;
  if ([(_DASActivityRateLimitManager *)self rateManagementApplyToActivity:v4])
  {
    v5 = [_DASRateLimiterUtilities rateLimitIdentifierForActivity:v4];
    if (v5)
    {
      v6 = [(_DASActivityRateLimitManager *)self rateLimitConfigurations];
      objc_sync_enter(v6);
      v7 = [(_DASActivityRateLimitManager *)self rateLimitConfigurations];
      v8 = [v7 objectForKeyedSubscript:v5];

      if (v8)
      {
        [v8 removePendingActivity:v4];
      }

      else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_10011C224();
      }

      objc_sync_exit(v6);
    }

    else
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        sub_10011C2A8(log, v4);
      }
    }
  }
}

- (void)recalculateStartDates
{
  v18 = [_DASRateLimiterUtilities consideredInLPMWithState:self->_context];
  obj = [(_DASActivityRateLimitManager *)self rateLimitConfigurations];
  objc_sync_enter(obj);
  v3 = [(_DASActivityRateLimitManager *)self rateLimitConfigurations];
  v4 = [v3 allValues];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = v4;
  v19 = [v16 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v19)
  {
    v17 = *v26;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v16);
        }

        v5 = *(*(&v25 + 1) + 8 * i);
        v6 = [v5 evaluationResultsWithLPMState:{v18, obj}];
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v7 = [v5 pendingActivities];
        v8 = [v7 countByEnumeratingWithState:&v21 objects:v33 count:16];
        if (v8)
        {
          v9 = *v22;
          do
          {
            for (j = 0; j != v8; j = j + 1)
            {
              if (*v22 != v9)
              {
                objc_enumerationMutation(v7);
              }

              v11 = *(*(&v21 + 1) + 8 * j);
              v12 = [v6 nextEvaluationDate];
              [_DASRateLimiterUtilities adjustStartAfterDate:v12 forActivity:v11];

              v13 = self->_log;
              if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
              {
                v14 = [v6 nextEvaluationDate];
                *buf = 138412546;
                v30 = v11;
                v31 = 2112;
                v32 = v14;
                _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Adjust activity %@ startAfter date to be %@", buf, 0x16u);
              }
            }

            v8 = [v7 countByEnumeratingWithState:&v21 objects:v33 count:16];
          }

          while (v8);
        }
      }

      v19 = [v16 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v19);
  }

  objc_sync_exit(obj);
}

- (void)replaceExistingRateLimitsForConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(_DASActivityRateLimitManager *)self rateLimitConfigurations];
  v6 = [v5 copy];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v49 objects:v60 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v50;
    *&v9 = 138412546;
    v36 = v9;
    v12 = &OBJC_IVAR____DASBGSystemTask__user_requested_backup_task;
    v38 = v7;
    v39 = v4;
    v37 = *v50;
    do
    {
      v13 = 0;
      v40 = v10;
      do
      {
        if (*v50 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v14 = [v7 objectForKeyedSubscript:{*(*(&v49 + 1) + 8 * v13), v36}];
        v15 = v14;
        if (v14)
        {
          v16 = [v14 configurationName];
          [v4 name];
          v17 = v43 = v15;
          v18 = [v16 isEqualToString:v17];

          v15 = v43;
          if (v18)
          {
            log = self->_log;
            if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
            {
              *buf = v36;
              v54 = v43;
              v55 = 2112;
              v56 = v4;
              _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Replacing configuration %@ with %@", buf, 0x16u);
            }

            v20 = [v4 rateLimits];

            v42 = v13;
            if (v20)
            {
              [v43 replaceRateLimitConfiguration:v4];
              v21 = [v12 + 718 consideredInLPMWithState:self->_context];
              if (v21)
              {
                v22 = self->_log;
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Rate Limits are subjected to LPM Windows", buf, 2u);
                }
              }

              v41 = [v43 evaluationResultsWithLPMState:v21];
              v23 = [v41 nextEvaluationDate];
              v45 = 0u;
              v46 = 0u;
              v47 = 0u;
              v48 = 0u;
              obj = [v43 pendingActivities];
              v24 = [obj countByEnumeratingWithState:&v45 objects:v59 count:16];
              if (v24)
              {
                v25 = v24;
                v26 = *v46;
                do
                {
                  for (i = 0; i != v25; i = i + 1)
                  {
                    if (*v46 != v26)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v28 = *(*(&v45 + 1) + 8 * i);
                    v29 = self->_log;
                    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                    {
                      v30 = v29;
                      [v28 description];
                      v31 = self;
                      v33 = v32 = v12;
                      v34 = [v43 configurationName];
                      *buf = 138412802;
                      v54 = v33;
                      v55 = 2112;
                      v56 = v23;
                      v57 = 2112;
                      v58 = v34;
                      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Modified rate limit! Adjusted activity %@ start date to %@ configuration %@", buf, 0x20u);

                      v12 = v32;
                      self = v31;
                    }

                    [v12 + 718 adjustStartAfterDate:v23 forActivity:v28];
                  }

                  v25 = [obj countByEnumeratingWithState:&v45 objects:v59 count:16];
                }

                while (v25);
              }

              v7 = v38;
              v4 = v39;
              v11 = v37;
              v10 = v40;
              v35 = v41;
              v15 = v43;
            }

            else
            {
              v35 = [(_DASActivityRateLimitManager *)self rateLimitConfigurations];
              v23 = [v43 configurationName];
              [v35 removeObjectForKey:v23];
            }

            v13 = v42;
          }
        }

        v13 = v13 + 1;
      }

      while (v13 != v10);
      v10 = [v7 countByEnumeratingWithState:&v49 objects:v60 count:16];
    }

    while (v10);
  }
}

- (void)saveSubmittedRateLimitConfiguration
{
  os_unfair_lock_lock(&self->_submittedConfigurationLock);
  v3 = [(_DASActivityRateLimitManager *)self submittedConfigurations];
  if (v3 && (v4 = v3, -[_DASActivityRateLimitManager submittedConfigurations](self, "submittedConfigurations"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v4, v6))
  {
    v7 = [(_DASActivityRateLimitManager *)self submittedConfigurations];
    v8 = [NSDictionary dictionaryWithDictionary:v7];

    v12 = 0;
    v9 = [NSKeyedArchiver archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v12];
    v10 = v12;
    if (v9)
    {
      [(NSUserDefaults *)self->_defaults setObject:v9 forKey:@"rateLimitConfigurations"];
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10011C350();
    }

    os_unfair_lock_unlock(&self->_submittedConfigurationLock);
  }

  else
  {
    v11 = [(_DASActivityRateLimitManager *)self loadSubmittedRateLimitConfiguration];
    if (v11)
    {
      [(NSUserDefaults *)self->_defaults removeObjectForKey:@"rateLimitConfigurations"];
    }

    os_unfair_lock_unlock(&self->_submittedConfigurationLock);
  }
}

- (id)loadSubmittedRateLimitConfiguration
{
  os_unfair_lock_lock(&self->_submittedConfigurationLock);
  v3 = [(NSUserDefaults *)self->_defaults objectForKey:@"rateLimitConfigurations"];
  if (v3)
  {
    v10[0] = objc_opt_class();
    v10[1] = objc_opt_class();
    v10[2] = objc_opt_class();
    v4 = [NSArray arrayWithObjects:v10 count:3];
    v5 = [NSSet setWithArray:v4];

    v9 = 0;
    v6 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v5 fromData:v3 error:&v9];
    v7 = v9;
    if (!v6 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10011C3B8();
    }

    os_unfair_lock_unlock(&self->_submittedConfigurationLock);
  }

  else
  {
    os_unfair_lock_unlock(&self->_submittedConfigurationLock);
    v6 = 0;
  }

  return v6;
}

- (void)submitRateLimitConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(_DASActivityRateLimitManager *)self rateLimitConfigurations];
  objc_sync_enter(v5);
  os_unfair_lock_lock(&self->_submittedConfigurationLock);
  v6 = [(_DASActivityRateLimitManager *)self submittedConfigurations];

  if (!v6)
  {
    v7 = +[NSMutableDictionary dictionary];
    [(_DASActivityRateLimitManager *)self setSubmittedConfigurations:v7];
  }

  v8 = [(_DASActivityRateLimitManager *)self submittedConfigurations];
  v9 = [v4 name];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (v10 && ([v4 rateLimits], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {
    v12 = [(_DASActivityRateLimitManager *)self submittedConfigurations];
    v13 = [v4 name];
    [v12 removeObjectForKey:v13];
  }

  else
  {
    if ([v10 isEqual:v4])
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
      {
        sub_10011C420();
      }

      goto LABEL_13;
    }

    v12 = [(_DASActivityRateLimitManager *)self submittedConfigurations];
    v13 = [v4 name];
    [v12 setObject:v4 forKeyedSubscript:v13];
  }

  os_unfair_lock_unlock(&self->_submittedConfigurationLock);
  [(_DASActivityRateLimitManager *)self saveSubmittedRateLimitConfiguration];
  [(_DASActivityRateLimitManager *)self replaceExistingRateLimitsForConfiguration:v4];
  os_unfair_lock_lock(&self->_submittedConfigurationLock);
  v14 = self->_log;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(_DASActivityRateLimitManager *)self submittedConfigurations];
    v16 = [v15 allKeys];
    v17 = [(_DASActivityRateLimitManager *)self rateLimitConfigurations];
    v18 = 138412802;
    v19 = v4;
    v20 = 2112;
    v21 = v16;
    v22 = 2112;
    v23 = v17;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Submitted rate limit %@. Submitted rate limits %@, All %@", &v18, 0x20u);
  }

LABEL_13:
  os_unfair_lock_unlock(&self->_submittedConfigurationLock);

  objc_sync_exit(v5);
}

- (void)logSubmittedActivity:(id)a3 asRateLimited:(BOOL)a4
{
  v4 = a3;
  v5 = [v4 widgetID];

  if (!v5)
  {
    v6 = v4;
    AnalyticsSendEventLazy();
  }
}

- (void)initializeRateLimitWithActivity:(id)a3 withIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 rateLimitConfigurationName];
  os_unfair_lock_lock(&self->_submittedConfigurationLock);
  if (v8)
  {
    v9 = [(_DASActivityRateLimitManager *)self submittedConfigurations];
    v10 = [v9 objectForKeyedSubscript:v8];

    if (v10)
    {
      v11 = [(_DASActivityRateLimitManager *)self submittedConfigurations];
      v12 = [v11 objectForKeyedSubscript:v8];

LABEL_12:
      os_unfair_lock_unlock(&self->_submittedConfigurationLock);
      v19 = [_DASActivityRateLimitConfiguration_Internal rateLimitConfiguration:v12 withIdentifier:v7];
      v20 = [(_DASActivityRateLimitManager *)self rateLimitConfigurations];
      [v20 setObject:v19 forKeyedSubscript:v7];

      goto LABEL_13;
    }
  }

  v13 = [v6 identifier];
  v14 = [v13 containsString:@"assetsd.backgroundjobservice.lowprioritysearchbattery"];

  if (v14)
  {
    v15 = +[_DASRateLimiterUtilities assetsRateLimitConfiguration];
LABEL_11:
    v12 = v15;
    goto LABEL_12;
  }

  v16 = [v6 limitationResponse];
  v17 = [_DASLimiterResponse queryActivityDecision:2 fromResponses:v16];

  if (!v17)
  {
    v15 = +[_DASRateLimiterUtilities defaultRateLimiterConfiguration];
    goto LABEL_11;
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Not rate limiting activity %@, already rate limited at submission", &v21, 0xCu);
  }

  os_unfair_lock_unlock(&self->_submittedConfigurationLock);
LABEL_13:
}

- (id)evaluateActivityAtSubmission:(id)a3
{
  v4 = a3;
  if ([(_DASActivityRateLimitManager *)self rateManagementApplyToActivity:v4])
  {
    v5 = [_DASRateLimiterUtilities rateLimitIdentifierForActivity:v4];
    if (v5)
    {
      v6 = [(_DASActivityRateLimitManager *)self rateLimitConfigurations];
      objc_sync_enter(v6);
      v7 = [(_DASActivityRateLimitManager *)self rateLimitConfigurations];
      v8 = [v7 objectForKeyedSubscript:v5];

      if (v8)
      {
        v9 = [(_DASActivityRateLimitManager *)self unprotectedEvaluateRateLimitedActivity:v4 forIdentifier:v5];
        v10 = [v9 maxedRateLimits];
        v11 = [v10 count] != 0;

        [(_DASActivityRateLimitManager *)self logSubmittedActivity:v4 asRateLimited:v11];
      }

      else
      {
        [(_DASActivityRateLimitManager *)self initializeRateLimitWithActivity:v4 withIdentifier:v5];
        [(_DASActivityRateLimitManager *)self logSubmittedActivity:v4 asRateLimited:0];
        v9 = 0;
      }

      objc_sync_exit(v6);
    }

    else
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_10011C494();
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)evaluationResultsAtExecution:(id)a3
{
  v4 = a3;
  if ([(_DASActivityRateLimitManager *)self rateManagementApplyToActivity:v4])
  {
    v5 = [_DASRateLimiterUtilities rateLimitIdentifierForActivity:v4];
    if (v5)
    {
      v6 = [(_DASActivityRateLimitManager *)self rateLimitConfigurations];
      objc_sync_enter(v6);
      v7 = [(_DASActivityRateLimitManager *)self unprotectedEvaluateRateLimitedActivity:v4 forIdentifier:v5];
      v8 = [v7 maxedRateLimits];
      v9 = [v8 count];

      if (v9)
      {
        v10 = v7;
      }

      else
      {
        v11 = [(_DASActivityRateLimitManager *)self rateLimitConfigurations];
        v12 = [v11 objectForKeyedSubscript:v5];

        v13 = +[NSDate now];
        [v12 executeActivity:v4 atDate:v13];

        v10 = 0;
      }

      objc_sync_exit(v6);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)evaluateRateLimitedActivity:(id)a3
{
  v4 = a3;
  if ([(_DASActivityRateLimitManager *)self rateManagementApplyToActivity:v4])
  {
    v5 = [_DASRateLimiterUtilities rateLimitIdentifierForActivity:v4];
    if (v5)
    {
      v6 = [(_DASActivityRateLimitManager *)self rateLimitConfigurations];
      objc_sync_enter(v6);
      v7 = [(_DASActivityRateLimitManager *)self unprotectedEvaluateRateLimitedActivity:v4 forIdentifier:v5];
      objc_sync_exit(v6);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)unprotectedEvaluateRateLimitedActivity:(id)a3 forIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(_DASActivityRateLimitManager *)self rateManagementApplyToActivity:v6])
  {
    v8 = [(_DASActivityRateLimitManager *)self rateLimitConfigurations];
    v9 = [v8 objectForKeyedSubscript:v7];

    if (!v9)
    {
      [(_DASActivityRateLimitManager *)self initializeRateLimitWithActivity:v6 withIdentifier:v7];
    }

    v10 = [_DASRateLimiterUtilities consideredInLPMWithState:self->_context];
    if (v10)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Rate Limits are subjected to LPM Windows", &v26, 2u);
      }
    }

    v12 = [v9 evaluationResultsWithLPMState:v10];
    v13 = [v12 maxedRateLimits];
    v14 = [v13 count];

    if (v14)
    {
      [v9 addPendingActivity:v6];
      v15 = self->_log;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
        v17 = [v6 startAfter];
        v18 = [v12 nextEvaluationDate];
        v19 = [v12 maxedRateLimits];
        v20 = [NSNumber numberWithBool:v10];
        v26 = 138413570;
        v27 = v17;
        v28 = 2112;
        v29 = v18;
        v30 = 2114;
        v31 = v6;
        v32 = 2114;
        v33 = v7;
        v34 = 2112;
        v35 = v19;
        v36 = 2112;
        v37 = v20;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Adjusting original start date %@ to start date %@ for activity '%{public}@' with identifier %{public}@ and rate limit %@ while device LPM state is %@", &v26, 0x3Eu);
      }

      v21 = [v12 nextEvaluationDate];
      [_DASRateLimiterUtilities adjustStartAfterDate:v21 forActivity:v6];
    }

    else
    {
      v22 = self->_log;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v24 = v22;
        v25 = [NSNumber numberWithBool:v10];
        v26 = 138543874;
        v27 = v6;
        v28 = 2112;
        v29 = v7;
        v30 = 2112;
        v31 = v25;
        _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "'%{public}@' is timewise eligible for rate limit configuration %@ while device LPM state is %@", &v26, 0x20u);
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)shouldLimitActivity:(id)a3 withEvaluationResults:(id)a4 atDate:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (-[_DASActivityRateLimitManager limitsApplyToActivity:](self, "limitsApplyToActivity:", a3) && ([v8 maxedRateLimits], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, v11))
  {
    v12 = [v8 nextEvaluationDate];
    [v12 timeIntervalSinceDate:v9];
    v14 = v13;

    v15 = [v8 maxedRateLimits];
    v16 = [v15 lastObject];

    v17 = kDASProcessRateLimitationName;
    v18 = [v16 description];
    v19 = [_DASLimiterResponse limitResponseWithDecision:5 withLimiter:v17 validityDuration:v18 rationale:v14];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)limitedActivity:(id)a3 withLimitsResponses:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(_DASActivityRateLimitManager *)self limitsApplyToActivity:v6]&& [_DASLimiterResponse queryActivityDecision:5 fromResponses:v7])
  {
    [_DASLimiterResponse updateActivity:v6 withLimitResponse:v7];
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end