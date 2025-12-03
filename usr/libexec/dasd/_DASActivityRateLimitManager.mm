@interface _DASActivityRateLimitManager
+ (id)sharedLimiter;
- (BOOL)executeActivity:(id)activity;
- (BOOL)isActivityRateLimited:(id)limited atSubmission:(BOOL)submission;
- (BOOL)limitedActivity:(id)activity withLimitsResponses:(id)responses;
- (BOOL)limitsApplyToActivity:(id)activity;
- (BOOL)rateManagementApplyToActivity:(id)activity;
- (_DASActivityRateLimitManager)init;
- (id)evaluateActivityAtSubmission:(id)submission;
- (id)evaluateRateLimitedActivity:(id)activity;
- (id)evaluationResultsAtExecution:(id)execution;
- (id)loadSubmittedRateLimitConfiguration;
- (id)shouldLimitActivity:(id)activity withEvaluationResults:(id)results atDate:(id)date;
- (id)unprotectedEvaluateRateLimitedActivity:(id)activity forIdentifier:(id)identifier;
- (void)cleanupTimerHandler;
- (void)completeActivity:(id)activity;
- (void)initializeRateLimitWithActivity:(id)activity withIdentifier:(id)identifier;
- (void)logSubmittedActivity:(id)activity asRateLimited:(BOOL)limited;
- (void)recalculateStartDates;
- (void)replaceExistingRateLimitsForConfiguration:(id)configuration;
- (void)saveSubmittedRateLimitConfiguration;
- (void)submitActivity:(id)activity;
- (void)submitRateLimitConfiguration:(id)configuration;
@end

@implementation _DASActivityRateLimitManager

+ (id)sharedLimiter
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013CA4;
  block[3] = &unk_1001B54A0;
  block[4] = self;
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
    loadSubmittedRateLimitConfiguration = [(_DASActivityRateLimitManager *)v3 loadSubmittedRateLimitConfiguration];
    v9 = loadSubmittedRateLimitConfiguration;
    if (loadSubmittedRateLimitConfiguration && [loadSubmittedRateLimitConfiguration count])
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

    submittedConfigurations = [(_DASActivityRateLimitManager *)v3 submittedConfigurations];
    v18 = _DASCKRateLimitConfigurationName;
    v19 = [submittedConfigurations objectForKeyedSubscript:_DASCKRateLimitConfigurationName];

    if (!v19)
    {
      v20 = +[_DASRateLimiterUtilities ckRateLimitConfiguration];
      submittedConfigurations2 = [(_DASActivityRateLimitManager *)v3 submittedConfigurations];
      [submittedConfigurations2 setObject:v20 forKeyedSubscript:v18];
    }

    submittedConfigurations3 = [(_DASActivityRateLimitManager *)v3 submittedConfigurations];
    v23 = _DASPECRateLimitConfigurationName;
    v24 = [submittedConfigurations3 objectForKeyedSubscript:_DASPECRateLimitConfigurationName];

    if (!v24)
    {
      v25 = +[_DASRateLimiterUtilities pecRateLimitConfiguration];
      submittedConfigurations4 = [(_DASActivityRateLimitManager *)v3 submittedConfigurations];
      [submittedConfigurations4 setObject:v25 forKeyedSubscript:v23];
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
  rateLimitConfigurations = [(_DASActivityRateLimitManager *)self rateLimitConfigurations];
  v5 = [rateLimitConfigurations copy];

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
          rateLimitConfigurations2 = [(_DASActivityRateLimitManager *)self rateLimitConfigurations];
          [rateLimitConfigurations2 removeObjectForKey:v11];

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
    rateLimitConfigurations3 = [(_DASActivityRateLimitManager *)self rateLimitConfigurations];
    *buf = 138412546;
    v22 = v6;
    v23 = 2112;
    v24 = rateLimitConfigurations3;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Removed rate limits %@. Now: %@", buf, 0x16u);
  }

  objc_sync_exit(obj);
}

- (BOOL)limitsApplyToActivity:(id)activity
{
  activityCopy = activity;
  if (!-[_DASActivityRateLimitManager rateManagementApplyToActivity:](self, "rateManagementApplyToActivity:", activityCopy) || ([activityCopy widgetID], v5 = objc_claimAutoreleasedReturnValue(), v5, v5) || (objc_msgSend(activityCopy, "rateLimitConfigurationName"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "containsString:", _DASPECRateLimitConfigurationName), v6, (v7 & 1) != 0))
  {
    v8 = 0;
  }

  else
  {
    identifier = [activityCopy identifier];
    v11 = [identifier containsString:@"assetsd.backgroundjobservice.lowprioritysearchbattery"];

    v8 = v11 ^ 1;
  }

  return v8;
}

- (BOOL)rateManagementApplyToActivity:(id)activity
{
  activityCopy = activity;
  schedulingPriority = [activityCopy schedulingPriority];
  if (schedulingPriority > _DASSchedulingPriorityDefault)
  {
    goto LABEL_4;
  }

  name = [activityCopy name];

  if (!name)
  {
    goto LABEL_4;
  }

  v6 = +[_DASPlistParser sharedInstance];
  v7 = [v6 containsOverrideForActivity:activityCopy withLimitation:kDASProcessRateLimitationName];

  if (v7)
  {
    goto LABEL_4;
  }

  groupName = [activityCopy groupName];
  if ([groupName containsString:@"com.apple.ckdiscretionaryd"])
  {
    relatedApplications = [activityCopy relatedApplications];
    if ([relatedApplications containsObject:@"com.apple.mediaanalysisd-service"])
    {

      v8 = 0;
      goto LABEL_9;
    }

    relatedApplications2 = [activityCopy relatedApplications];
    v28 = [relatedApplications2 containsObject:@"com.apple.mediaanalysisd"];

    if (v28)
    {
      goto LABEL_4;
    }
  }

  else
  {
  }

  groupName2 = [activityCopy groupName];
  if (([groupName2 containsString:@"com.apple.ckdiscretionaryd"] & 1) == 0)
  {

LABEL_15:
    userInfo = [activityCopy userInfo];
    v16 = [userInfo objectForKeyedSubscript:_DASNonRateLimitedLaunchKey];
    bOOLValue = [v16 BOOLValue];

    if (bOOLValue)
    {
      goto LABEL_4;
    }

    userInfo2 = [activityCopy userInfo];
    v19 = [userInfo2 objectForKeyedSubscript:_DASOverrideRateLimitingKey];
    bOOLValue2 = [v19 BOOLValue];

    if (bOOLValue2)
    {
      goto LABEL_4;
    }

    if ([activityCopy requestsApplicationLaunch])
    {
      launchReason = [activityCopy launchReason];
      v22 = [launchReason isEqualToString:_DASLaunchReasonBackgroundRemoteNotification];

      if (v22)
      {
        goto LABEL_4;
      }
    }

    if ([activityCopy requestsImmediateRuntime])
    {
      goto LABEL_4;
    }

    rateLimitConfigurationName = [activityCopy rateLimitConfigurationName];
    if (rateLimitConfigurationName)
    {
      v24 = rateLimitConfigurationName;
      rateLimitConfigurationName2 = [activityCopy rateLimitConfigurationName];
      v26 = _DASDefaultConfigurationName;

      if (rateLimitConfigurationName2 != v26)
      {
        v8 = 1;
        goto LABEL_5;
      }
    }

    groupName = [activityCopy identifier];
    [groupName containsString:@"assetsd.backgroundjobservice.lowprioritysearchbattery"];
    v8 = 1;
LABEL_9:

    goto LABEL_5;
  }

  relatedApplications3 = [activityCopy relatedApplications];
  v14 = [relatedApplications3 containsObject:@"com.apple.mobileslideshow"];

  if ((v14 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_4:
  v8 = 0;
LABEL_5:

  return v8;
}

- (void)submitActivity:(id)activity
{
  activityCopy = activity;
  if ([(_DASActivityRateLimitManager *)self rateManagementApplyToActivity:?])
  {
    [(_DASActivityRateLimitManager *)self isActivityRateLimited:activityCopy atSubmission:1];
  }
}

- (BOOL)executeActivity:(id)activity
{
  activityCopy = activity;
  if ([(_DASActivityRateLimitManager *)self rateManagementApplyToActivity:activityCopy])
  {
    v5 = ![(_DASActivityRateLimitManager *)self isActivityRateLimited:activityCopy atSubmission:0];
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (BOOL)isActivityRateLimited:(id)limited atSubmission:(BOOL)submission
{
  submissionCopy = submission;
  limitedCopy = limited;
  if ([(_DASActivityRateLimitManager *)self rateManagementApplyToActivity:limitedCopy])
  {
    v7 = +[NSDate now];
    if (submissionCopy)
    {
      [(_DASActivityRateLimitManager *)self evaluateActivityAtSubmission:limitedCopy];
    }

    else
    {
      [(_DASActivityRateLimitManager *)self evaluationResultsAtExecution:limitedCopy];
    }
    v9 = ;
    v10 = [(_DASActivityRateLimitManager *)self shouldLimitActivity:limitedCopy withEvaluationResults:v9 atDate:v7];
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
        [(_DASActivityRateLimitManager *)self limitedActivity:limitedCopy withLimitsResponses:v14];
      }
    }

    maxedRateLimits = [v9 maxedRateLimits];
    v8 = [maxedRateLimits count] != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)completeActivity:(id)activity
{
  activityCopy = activity;
  if ([(_DASActivityRateLimitManager *)self rateManagementApplyToActivity:activityCopy])
  {
    v5 = [_DASRateLimiterUtilities rateLimitIdentifierForActivity:activityCopy];
    if (v5)
    {
      rateLimitConfigurations = [(_DASActivityRateLimitManager *)self rateLimitConfigurations];
      objc_sync_enter(rateLimitConfigurations);
      rateLimitConfigurations2 = [(_DASActivityRateLimitManager *)self rateLimitConfigurations];
      v8 = [rateLimitConfigurations2 objectForKeyedSubscript:v5];

      if (v8)
      {
        [v8 removePendingActivity:activityCopy];
      }

      else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_10011C224();
      }

      objc_sync_exit(rateLimitConfigurations);
    }

    else
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        sub_10011C2A8(log, activityCopy);
      }
    }
  }
}

- (void)recalculateStartDates
{
  v18 = [_DASRateLimiterUtilities consideredInLPMWithState:self->_context];
  obj = [(_DASActivityRateLimitManager *)self rateLimitConfigurations];
  objc_sync_enter(obj);
  rateLimitConfigurations = [(_DASActivityRateLimitManager *)self rateLimitConfigurations];
  allValues = [rateLimitConfigurations allValues];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = allValues;
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
        pendingActivities = [v5 pendingActivities];
        v8 = [pendingActivities countByEnumeratingWithState:&v21 objects:v33 count:16];
        if (v8)
        {
          v9 = *v22;
          do
          {
            for (j = 0; j != v8; j = j + 1)
            {
              if (*v22 != v9)
              {
                objc_enumerationMutation(pendingActivities);
              }

              v11 = *(*(&v21 + 1) + 8 * j);
              nextEvaluationDate = [v6 nextEvaluationDate];
              [_DASRateLimiterUtilities adjustStartAfterDate:nextEvaluationDate forActivity:v11];

              v13 = self->_log;
              if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
              {
                nextEvaluationDate2 = [v6 nextEvaluationDate];
                *buf = 138412546;
                v30 = v11;
                v31 = 2112;
                v32 = nextEvaluationDate2;
                _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Adjust activity %@ startAfter date to be %@", buf, 0x16u);
              }
            }

            v8 = [pendingActivities countByEnumeratingWithState:&v21 objects:v33 count:16];
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

- (void)replaceExistingRateLimitsForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  rateLimitConfigurations = [(_DASActivityRateLimitManager *)self rateLimitConfigurations];
  v6 = [rateLimitConfigurations copy];

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
    v39 = configurationCopy;
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
          configurationName = [v14 configurationName];
          [configurationCopy name];
          v17 = v43 = v15;
          v18 = [configurationName isEqualToString:v17];

          v15 = v43;
          if (v18)
          {
            log = self->_log;
            if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
            {
              *buf = v36;
              v54 = v43;
              v55 = 2112;
              v56 = configurationCopy;
              _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Replacing configuration %@ with %@", buf, 0x16u);
            }

            rateLimits = [configurationCopy rateLimits];

            v42 = v13;
            if (rateLimits)
            {
              [v43 replaceRateLimitConfiguration:configurationCopy];
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
              nextEvaluationDate = [v41 nextEvaluationDate];
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
                      selfCopy = self;
                      v33 = v32 = v12;
                      configurationName2 = [v43 configurationName];
                      *buf = 138412802;
                      v54 = v33;
                      v55 = 2112;
                      v56 = nextEvaluationDate;
                      v57 = 2112;
                      v58 = configurationName2;
                      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Modified rate limit! Adjusted activity %@ start date to %@ configuration %@", buf, 0x20u);

                      v12 = v32;
                      self = selfCopy;
                    }

                    [v12 + 718 adjustStartAfterDate:nextEvaluationDate forActivity:v28];
                  }

                  v25 = [obj countByEnumeratingWithState:&v45 objects:v59 count:16];
                }

                while (v25);
              }

              v7 = v38;
              configurationCopy = v39;
              v11 = v37;
              v10 = v40;
              rateLimitConfigurations2 = v41;
              v15 = v43;
            }

            else
            {
              rateLimitConfigurations2 = [(_DASActivityRateLimitManager *)self rateLimitConfigurations];
              nextEvaluationDate = [v43 configurationName];
              [rateLimitConfigurations2 removeObjectForKey:nextEvaluationDate];
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
  submittedConfigurations = [(_DASActivityRateLimitManager *)self submittedConfigurations];
  if (submittedConfigurations && (v4 = submittedConfigurations, -[_DASActivityRateLimitManager submittedConfigurations](self, "submittedConfigurations"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v4, v6))
  {
    submittedConfigurations2 = [(_DASActivityRateLimitManager *)self submittedConfigurations];
    v8 = [NSDictionary dictionaryWithDictionary:submittedConfigurations2];

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
    loadSubmittedRateLimitConfiguration = [(_DASActivityRateLimitManager *)self loadSubmittedRateLimitConfiguration];
    if (loadSubmittedRateLimitConfiguration)
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

- (void)submitRateLimitConfiguration:(id)configuration
{
  configurationCopy = configuration;
  rateLimitConfigurations = [(_DASActivityRateLimitManager *)self rateLimitConfigurations];
  objc_sync_enter(rateLimitConfigurations);
  os_unfair_lock_lock(&self->_submittedConfigurationLock);
  submittedConfigurations = [(_DASActivityRateLimitManager *)self submittedConfigurations];

  if (!submittedConfigurations)
  {
    v7 = +[NSMutableDictionary dictionary];
    [(_DASActivityRateLimitManager *)self setSubmittedConfigurations:v7];
  }

  submittedConfigurations2 = [(_DASActivityRateLimitManager *)self submittedConfigurations];
  name = [configurationCopy name];
  v10 = [submittedConfigurations2 objectForKeyedSubscript:name];

  if (v10 && ([configurationCopy rateLimits], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {
    submittedConfigurations3 = [(_DASActivityRateLimitManager *)self submittedConfigurations];
    name2 = [configurationCopy name];
    [submittedConfigurations3 removeObjectForKey:name2];
  }

  else
  {
    if ([v10 isEqual:configurationCopy])
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
      {
        sub_10011C420();
      }

      goto LABEL_13;
    }

    submittedConfigurations3 = [(_DASActivityRateLimitManager *)self submittedConfigurations];
    name2 = [configurationCopy name];
    [submittedConfigurations3 setObject:configurationCopy forKeyedSubscript:name2];
  }

  os_unfair_lock_unlock(&self->_submittedConfigurationLock);
  [(_DASActivityRateLimitManager *)self saveSubmittedRateLimitConfiguration];
  [(_DASActivityRateLimitManager *)self replaceExistingRateLimitsForConfiguration:configurationCopy];
  os_unfair_lock_lock(&self->_submittedConfigurationLock);
  v14 = self->_log;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    submittedConfigurations4 = [(_DASActivityRateLimitManager *)self submittedConfigurations];
    allKeys = [submittedConfigurations4 allKeys];
    rateLimitConfigurations2 = [(_DASActivityRateLimitManager *)self rateLimitConfigurations];
    v18 = 138412802;
    v19 = configurationCopy;
    v20 = 2112;
    v21 = allKeys;
    v22 = 2112;
    v23 = rateLimitConfigurations2;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Submitted rate limit %@. Submitted rate limits %@, All %@", &v18, 0x20u);
  }

LABEL_13:
  os_unfair_lock_unlock(&self->_submittedConfigurationLock);

  objc_sync_exit(rateLimitConfigurations);
}

- (void)logSubmittedActivity:(id)activity asRateLimited:(BOOL)limited
{
  activityCopy = activity;
  widgetID = [activityCopy widgetID];

  if (!widgetID)
  {
    v6 = activityCopy;
    AnalyticsSendEventLazy();
  }
}

- (void)initializeRateLimitWithActivity:(id)activity withIdentifier:(id)identifier
{
  activityCopy = activity;
  identifierCopy = identifier;
  rateLimitConfigurationName = [activityCopy rateLimitConfigurationName];
  os_unfair_lock_lock(&self->_submittedConfigurationLock);
  if (rateLimitConfigurationName)
  {
    submittedConfigurations = [(_DASActivityRateLimitManager *)self submittedConfigurations];
    v10 = [submittedConfigurations objectForKeyedSubscript:rateLimitConfigurationName];

    if (v10)
    {
      submittedConfigurations2 = [(_DASActivityRateLimitManager *)self submittedConfigurations];
      v12 = [submittedConfigurations2 objectForKeyedSubscript:rateLimitConfigurationName];

LABEL_12:
      os_unfair_lock_unlock(&self->_submittedConfigurationLock);
      v19 = [_DASActivityRateLimitConfiguration_Internal rateLimitConfiguration:v12 withIdentifier:identifierCopy];
      rateLimitConfigurations = [(_DASActivityRateLimitManager *)self rateLimitConfigurations];
      [rateLimitConfigurations setObject:v19 forKeyedSubscript:identifierCopy];

      goto LABEL_13;
    }
  }

  identifier = [activityCopy identifier];
  v14 = [identifier containsString:@"assetsd.backgroundjobservice.lowprioritysearchbattery"];

  if (v14)
  {
    v15 = +[_DASRateLimiterUtilities assetsRateLimitConfiguration];
LABEL_11:
    v12 = v15;
    goto LABEL_12;
  }

  limitationResponse = [activityCopy limitationResponse];
  v17 = [_DASLimiterResponse queryActivityDecision:2 fromResponses:limitationResponse];

  if (!v17)
  {
    v15 = +[_DASRateLimiterUtilities defaultRateLimiterConfiguration];
    goto LABEL_11;
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = activityCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Not rate limiting activity %@, already rate limited at submission", &v21, 0xCu);
  }

  os_unfair_lock_unlock(&self->_submittedConfigurationLock);
LABEL_13:
}

- (id)evaluateActivityAtSubmission:(id)submission
{
  submissionCopy = submission;
  if ([(_DASActivityRateLimitManager *)self rateManagementApplyToActivity:submissionCopy])
  {
    v5 = [_DASRateLimiterUtilities rateLimitIdentifierForActivity:submissionCopy];
    if (v5)
    {
      rateLimitConfigurations = [(_DASActivityRateLimitManager *)self rateLimitConfigurations];
      objc_sync_enter(rateLimitConfigurations);
      rateLimitConfigurations2 = [(_DASActivityRateLimitManager *)self rateLimitConfigurations];
      v8 = [rateLimitConfigurations2 objectForKeyedSubscript:v5];

      if (v8)
      {
        v9 = [(_DASActivityRateLimitManager *)self unprotectedEvaluateRateLimitedActivity:submissionCopy forIdentifier:v5];
        maxedRateLimits = [v9 maxedRateLimits];
        v11 = [maxedRateLimits count] != 0;

        [(_DASActivityRateLimitManager *)self logSubmittedActivity:submissionCopy asRateLimited:v11];
      }

      else
      {
        [(_DASActivityRateLimitManager *)self initializeRateLimitWithActivity:submissionCopy withIdentifier:v5];
        [(_DASActivityRateLimitManager *)self logSubmittedActivity:submissionCopy asRateLimited:0];
        v9 = 0;
      }

      objc_sync_exit(rateLimitConfigurations);
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

- (id)evaluationResultsAtExecution:(id)execution
{
  executionCopy = execution;
  if ([(_DASActivityRateLimitManager *)self rateManagementApplyToActivity:executionCopy])
  {
    v5 = [_DASRateLimiterUtilities rateLimitIdentifierForActivity:executionCopy];
    if (v5)
    {
      rateLimitConfigurations = [(_DASActivityRateLimitManager *)self rateLimitConfigurations];
      objc_sync_enter(rateLimitConfigurations);
      v7 = [(_DASActivityRateLimitManager *)self unprotectedEvaluateRateLimitedActivity:executionCopy forIdentifier:v5];
      maxedRateLimits = [v7 maxedRateLimits];
      v9 = [maxedRateLimits count];

      if (v9)
      {
        v10 = v7;
      }

      else
      {
        rateLimitConfigurations2 = [(_DASActivityRateLimitManager *)self rateLimitConfigurations];
        v12 = [rateLimitConfigurations2 objectForKeyedSubscript:v5];

        v13 = +[NSDate now];
        [v12 executeActivity:executionCopy atDate:v13];

        v10 = 0;
      }

      objc_sync_exit(rateLimitConfigurations);
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

- (id)evaluateRateLimitedActivity:(id)activity
{
  activityCopy = activity;
  if ([(_DASActivityRateLimitManager *)self rateManagementApplyToActivity:activityCopy])
  {
    v5 = [_DASRateLimiterUtilities rateLimitIdentifierForActivity:activityCopy];
    if (v5)
    {
      rateLimitConfigurations = [(_DASActivityRateLimitManager *)self rateLimitConfigurations];
      objc_sync_enter(rateLimitConfigurations);
      v7 = [(_DASActivityRateLimitManager *)self unprotectedEvaluateRateLimitedActivity:activityCopy forIdentifier:v5];
      objc_sync_exit(rateLimitConfigurations);
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

- (id)unprotectedEvaluateRateLimitedActivity:(id)activity forIdentifier:(id)identifier
{
  activityCopy = activity;
  identifierCopy = identifier;
  if ([(_DASActivityRateLimitManager *)self rateManagementApplyToActivity:activityCopy])
  {
    rateLimitConfigurations = [(_DASActivityRateLimitManager *)self rateLimitConfigurations];
    v9 = [rateLimitConfigurations objectForKeyedSubscript:identifierCopy];

    if (!v9)
    {
      [(_DASActivityRateLimitManager *)self initializeRateLimitWithActivity:activityCopy withIdentifier:identifierCopy];
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
    maxedRateLimits = [v12 maxedRateLimits];
    v14 = [maxedRateLimits count];

    if (v14)
    {
      [v9 addPendingActivity:activityCopy];
      v15 = self->_log;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
        startAfter = [activityCopy startAfter];
        nextEvaluationDate = [v12 nextEvaluationDate];
        maxedRateLimits2 = [v12 maxedRateLimits];
        v20 = [NSNumber numberWithBool:v10];
        v26 = 138413570;
        v27 = startAfter;
        v28 = 2112;
        v29 = nextEvaluationDate;
        v30 = 2114;
        v31 = activityCopy;
        v32 = 2114;
        v33 = identifierCopy;
        v34 = 2112;
        v35 = maxedRateLimits2;
        v36 = 2112;
        v37 = v20;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Adjusting original start date %@ to start date %@ for activity '%{public}@' with identifier %{public}@ and rate limit %@ while device LPM state is %@", &v26, 0x3Eu);
      }

      nextEvaluationDate2 = [v12 nextEvaluationDate];
      [_DASRateLimiterUtilities adjustStartAfterDate:nextEvaluationDate2 forActivity:activityCopy];
    }

    else
    {
      v22 = self->_log;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v24 = v22;
        v25 = [NSNumber numberWithBool:v10];
        v26 = 138543874;
        v27 = activityCopy;
        v28 = 2112;
        v29 = identifierCopy;
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

- (id)shouldLimitActivity:(id)activity withEvaluationResults:(id)results atDate:(id)date
{
  resultsCopy = results;
  dateCopy = date;
  if (-[_DASActivityRateLimitManager limitsApplyToActivity:](self, "limitsApplyToActivity:", activity) && ([resultsCopy maxedRateLimits], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, v11))
  {
    nextEvaluationDate = [resultsCopy nextEvaluationDate];
    [nextEvaluationDate timeIntervalSinceDate:dateCopy];
    v14 = v13;

    maxedRateLimits = [resultsCopy maxedRateLimits];
    lastObject = [maxedRateLimits lastObject];

    v17 = kDASProcessRateLimitationName;
    v18 = [lastObject description];
    v19 = [_DASLimiterResponse limitResponseWithDecision:5 withLimiter:v17 validityDuration:v18 rationale:v14];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)limitedActivity:(id)activity withLimitsResponses:(id)responses
{
  activityCopy = activity;
  responsesCopy = responses;
  if ([(_DASActivityRateLimitManager *)self limitsApplyToActivity:activityCopy]&& [_DASLimiterResponse queryActivityDecision:5 fromResponses:responsesCopy])
  {
    [_DASLimiterResponse updateActivity:activityCopy withLimitResponse:responsesCopy];
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end