@interface MOEventRefreshScheduler
- (MOEventRefreshScheduler)initWithUniverse:(id)universe;
- (id)_createWatchDogWithName:(id)name;
- (void)_collectWithRefreshVariant:(unint64_t)variant andCompletion:(id)completion;
- (void)_computeWithRefreshVariant:(unint64_t)variant andCompletion:(id)completion;
- (void)_dataDumpWithRefreshVariant:(unint64_t)variant completion:(id)completion;
- (void)_generateAvailabilityPredictionsWithCompletion:(id)completion;
- (void)_purgeEventsAndBundlesWithRefreshVariant:(unint64_t)variant andCompletion:(id)completion;
- (void)_trendsWithRefreshVariant:(unint64_t)variant andCompletion:(id)completion;
- (void)_updateEngagementLightStreamWithRefreshVariant:(unint64_t)variant completion:(id)completion;
- (void)refreshWithRefreshVariant:(unint64_t)variant andCompletion:(id)completion;
- (void)registerDefaultRefreshActivity;
- (void)registerFirstRefreshActivityWithPreRegisteredTask:(BOOL)task;
- (void)registerLightRefreshActivity;
- (void)registerNotificationAvailabilityPredictionActivity;
@end

@implementation MOEventRefreshScheduler

- (MOEventRefreshScheduler)initWithUniverse:(id)universe
{
  universeCopy = universe;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  obj = [universeCopy getService:v8];

  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v45 = [universeCopy getService:v10];

  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [universeCopy getService:v12];

  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [universeCopy getService:v15];

  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v19 = [universeCopy getService:v18];

  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  v22 = [universeCopy getService:v21];

  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  v25 = [universeCopy getService:v24];

  if (!v13)
  {
    v36 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleManager initWithUniverse:];
    }

    v37 = +[NSAssertionHandler currentHandler];
    v38 = v37;
    v39 = @"Invalid parameter not satisfying: eventManager";
    v40 = a2;
    selfCopy2 = self;
    v42 = 92;
    goto LABEL_11;
  }

  if (!v16)
  {
    v43 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      [MOEventRefreshScheduler initWithUniverse:];
    }

    v37 = +[NSAssertionHandler currentHandler];
    v38 = v37;
    v39 = @"Invalid parameter not satisfying: eventBundleManager";
    v40 = a2;
    selfCopy2 = self;
    v42 = 93;
LABEL_11:
    [v37 handleFailureInMethod:v40 object:selfCopy2 file:@"MOEventRefreshScheduler.m" lineNumber:v42 description:{v39, v45}];

    v26 = 0;
    goto LABEL_12;
  }

  v47.receiver = self;
  v47.super_class = MOEventRefreshScheduler;
  v26 = [(MOEventRefreshScheduler *)&v47 init];
  if (!v26)
  {
LABEL_12:
    v33 = v45;
    v32 = obj;
    goto LABEL_13;
  }

  v27 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v28 = dispatch_queue_create("MOEventRefreshScheduler", v27);
  queue = v26->_queue;
  v26->_queue = v28;

  objc_storeStrong(&v26->_universe, universe);
  v30 = [[MODaemonSPINotifier alloc] initWithName:@"MOEventRefreshScheduler"];
  notifier = v26->_notifier;
  v26->_notifier = v30;

  v32 = obj;
  objc_storeStrong(&v26->_configurationManager, obj);
  v33 = v45;
  objc_storeStrong(&v26->_defaultsManager, v45);
  objc_storeStrong(&v26->_eventManager, v13);
  objc_storeStrong(&v26->_eventBundleManager, v16);
  objc_storeStrong(&v26->_onboardingAndSettingsPersistence, v19);
  objc_storeStrong(&v26->_notificationsManager, v22);
  LODWORD(v34) = 10.0;
  [(MOConfigurationManagerBase *)v26->_configurationManager getFloatSettingForKey:@"WatchdogOverrideDefaultCadenceInSeconds" withFallback:v34];
  v26->_watchdogCadence = v35;
  objc_storeStrong(&v26->_engagementHistoryManager, v25);
  [(MOEventRefreshScheduler *)v26 registerDefaultRefreshActivity];
  [(MOEventRefreshScheduler *)v26 registerFirstRefreshActivity];
  [(MOEventRefreshScheduler *)v26 registerLightRefreshActivity];
  [(MOEventRefreshScheduler *)v26 registerNotificationAvailabilityPredictionActivity];
LABEL_13:

  return v26;
}

- (void)registerDefaultRefreshActivity
{
  onboardingAndSettingsPersistence = [(MOEventRefreshScheduler *)self onboardingAndSettingsPersistence];
  isAllowedToCollectAndCompute = [onboardingAndSettingsPersistence isAllowedToCollectAndCompute];

  v5 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshScheduler);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Registering activity com.apple.momentsd.eventRefresh", buf, 2u);
  }

  v6 = +[BGSystemTaskScheduler sharedScheduler];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __57__MOEventRefreshScheduler_registerDefaultRefreshActivity__block_invoke;
  v7[3] = &unk_10033CBF8;
  v8 = isAllowedToCollectAndCompute;
  v7[4] = self;
  [v6 registerForTaskWithIdentifier:@"com.apple.momentsd.eventRefresh" usingQueue:0 launchHandler:v7];
}

void __57__MOEventRefreshScheduler_registerDefaultRefreshActivity__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshScheduler);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    *buf = 67109120;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "com.apple.momentsd.eventRefresh completionHandler with isAllowedToCollectAndCompute=%i", buf, 8u);
  }

  v6 = [*(a1 + 32) onboardingAndSettingsPersistence];
  [v6 publishOnboardingStatusAnalytics];

  v7 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshScheduler);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Submitted onboarding status analytics for activity com.apple.momentsd.eventRefresh", buf, 2u);
  }

  v8 = *(a1 + 40);
  v9 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshScheduler);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Allowed to collect and compute for activity com.apple.momentsd.eventRefresh", buf, 2u);
    }

    *buf = 0;
    v45 = buf;
    v46 = 0x3032000000;
    v47 = __Block_byref_object_copy__27;
    v48 = __Block_byref_object_dispose__27;
    v49 = os_transaction_create();
    v11 = +[NSDate distantPast];
    v12 = [*(a1 + 32) defaultsManager];
    v13 = [v12 objectForKey:@"EventRefreshSchedulerLastAttemptTriggerDefault"];

    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;

        v11 = v14;
      }
    }

    v15 = +[NSDate date];
    [v15 timeIntervalSinceDate:v11];
    v17 = v16;
    v18 = [*(a1 + 32) configurationManager];
    LODWORD(v19) = 1202241536;
    [v18 getFloatSettingForKey:@"EventRefreshSchedulerOverrideDefaultRefreshInterval" withFallback:v19];
    v21 = v20;

    v22 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshScheduler);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [NSNumber numberWithDouble:v17];
      v24 = [NSNumber numberWithDouble:v21];
      *v36 = 138413058;
      v37 = v11;
      v38 = 2112;
      v39 = v15;
      v40 = 2112;
      v41 = v23;
      v42 = 2112;
      v43 = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Interval stats since run of same activity default refresh: last attempt %@, now %@, interval %@, expected interval %@)", v36, 0x2Au);
    }

    if (v11 && v17 > 0.0 && v21 > 0.0 && v17 < v21 * 0.9)
    {
      v25 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshScheduler);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        __57__MOEventRefreshScheduler_registerDefaultRefreshActivity__block_invoke_cold_1();
      }

      [v3 setTaskCompleted];
      v26 = *(v45 + 5);
      *(v45 + 5) = 0;

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v27 = [*(a1 + 32) defaultsManager];
      [v27 setObject:v15 forKey:@"EventRefreshSchedulerLastAttemptTriggerDefault"];

      v28 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
      if (os_signpost_enabled(v28))
      {
        *v36 = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_INTERVAL_BEGIN, 0x300uLL, "ScheduledRefreshRegularWrapper", "", v36, 2u);
      }

      v29 = [[MOPerformanceMeasurement alloc] initWithName:@"ScheduledRefreshRegularWrapper" measureRecentPeak:0];
      [(MOPerformanceMeasurement *)v29 startSession];
      v30 = [*(a1 + 32) queue];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = __57__MOEventRefreshScheduler_registerDefaultRefreshActivity__block_invoke_141;
      v32[3] = &unk_10033CBD0;
      v32[4] = *(a1 + 32);
      v34 = v29;
      v35 = buf;
      v33 = v3;
      v31 = v29;
      dispatch_async(v30, v32);

      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Not allowed to collect and compute for activity com.apple.momentsd.eventRefresh", buf, 2u);
    }

    [v3 setTaskCompleted];
  }
}

void __57__MOEventRefreshScheduler_registerDefaultRefreshActivity__block_invoke_141(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __57__MOEventRefreshScheduler_registerDefaultRefreshActivity__block_invoke_2;
  v5[3] = &unk_10033CBA8;
  v5[4] = v2;
  v6 = *(a1 + 40);
  v4 = *(a1 + 48);
  v3 = v4;
  v7 = v4;
  [v2 refreshWithRefreshVariant:768 andCompletion:v5];
}

void __57__MOEventRefreshScheduler_registerDefaultRefreshActivity__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshScheduler);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Refresh.Default: All completed!", &v19, 2u);
    }

    v11 = [*(a1 + 32) defaultsManager];
    v12 = +[NSDate now];
    [v11 setObject:v12 forKey:@"EventRefreshSchedulerLastSuccessfulTrigger"];

    v8 = [*(a1 + 32) defaultsManager];
    v13 = +[NSDate now];
    [v8 setObject:v13 forKey:@"EventRefreshSchedulerLastSuccessfulTriggerDefault"];

    goto LABEL_8;
  }

  v4 = [*(a1 + 32) configurationManager];
  LODWORD(v5) = -1.0;
  [v4 getFloatSettingForKey:@"EventRefreshSchedulerOverrideOnFailureRetryAfter" withFallback:v5];
  v7 = v6;

  v8 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshScheduler);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v7 < 0.0)
  {
    if (v9)
    {
      v19 = 138412290;
      v20 = v3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Refresh.Default: Giving up with error (%@)", &v19, 0xCu);
    }

LABEL_8:

    [*(a1 + 40) setTaskCompleted];
    goto LABEL_12;
  }

  if (v9)
  {
    v19 = 138412290;
    v20 = v3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Refresh.Default: Deferred with error (%@)", &v19, 0xCu);
  }

  [*(a1 + 40) setTaskExpiredWithRetryAfter:0 error:v7];
LABEL_12:
  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;

  v16 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v16))
  {
    LOWORD(v19) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_END, 0x300uLL, "ScheduledRefreshRegularWrapper", "", &v19, 2u);
  }

  [*(a1 + 48) endSession];
  v17 = [*(a1 + 32) universe];
  v18 = [v17 getService:@"DaemonClient"];

  [v18 scheduleMomentsUIFullProcessing];
}

- (void)registerFirstRefreshActivityWithPreRegisteredTask:(BOOL)task
{
  taskCopy = task;
  onboardingAndSettingsPersistence = [(MOEventRefreshScheduler *)self onboardingAndSettingsPersistence];
  isAllowedToCollectAndCompute = [onboardingAndSettingsPersistence isAllowedToCollectAndCompute];

  configurationManager = [(MOEventRefreshScheduler *)self configurationManager];
  v8 = [configurationManager getBoolSettingForKey:@"EventRefreshSchedulerOverrideForceFullRefreshAtBoot" withFallback:0];

  configurationManager2 = [(MOEventRefreshScheduler *)self configurationManager];
  v10 = [configurationManager2 getBoolSettingForKey:@"EventRefreshSchedulerOverrideAvoidFullRefreshAtBoot" withFallback:0];

  configurationManager3 = [(MOEventRefreshScheduler *)self configurationManager];
  v12 = [configurationManager3 getBoolSettingForKey:@"EventRefreshSchedulerOverrideAllowFullRefreshAtBoot" withFallback:1];

  v13 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshScheduler);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (!isAllowedToCollectAndCompute)
  {
    if (v14)
    {
      *buf = 138412290;
      v38 = @"com.apple.momentsd.eventRefresh.first";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Not allowed to collect and compute, retiring activity %@", buf, 0xCu);
    }

    v17 = +[BGSystemTaskScheduler sharedScheduler];
    [v17 deregisterTaskWithIdentifier:@"com.apple.momentsd.eventRefresh.first"];
    goto LABEL_26;
  }

  if (v14)
  {
    *buf = 138412290;
    v38 = @"com.apple.momentsd.eventRefresh.first";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Allowed to collect and compute, registering activity %@", buf, 0xCu);
  }

  v15 = +[BGSystemTaskScheduler sharedScheduler];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = __77__MOEventRefreshScheduler_registerFirstRefreshActivityWithPreRegisteredTask___block_invoke;
  v32[3] = &unk_10033CC70;
  v33 = isAllowedToCollectAndCompute;
  v34 = v12;
  v35 = v10;
  v36 = v8;
  v32[4] = self;
  v16 = [v15 registerForTaskWithIdentifier:@"com.apple.momentsd.eventRefresh.first" usingQueue:0 launchHandler:v32];

  if (!taskCopy)
  {
    v18 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshScheduler);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = @"com.apple.momentsd.eventRefresh.first";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Re-registering %@ activity with high priority", buf, 0xCu);
    }

    v17 = [[BGNonRepeatingSystemTaskRequest alloc] initWithIdentifier:@"com.apple.momentsd.eventRefresh.first"];
    [v17 setRequiresNetworkConnectivity:0];
    [v17 setRequiresExternalPower:0];
    [v17 setRequiresProtectionClass:2];
    [v17 setTrySchedulingBefore:60.0];
    [v17 setPriority:2];
    [v17 setInvolvedProcesses:&off_10036DC80];
    v19 = +[BGSystemTaskScheduler sharedScheduler];
    v20 = [v19 taskRequestForIdentifier:@"com.apple.momentsd.eventRefresh.first"];

    v21 = +[BGSystemTaskScheduler sharedScheduler];
    v22 = v21;
    if (v20)
    {
      v31 = 0;
      v23 = [v21 updateTaskRequest:v17 error:&v31];
      v24 = v31;

      v25 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshScheduler);
      v26 = v25;
      if ((v23 & 1) == 0)
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [MOEventRefreshScheduler registerFirstRefreshActivityWithPreRegisteredTask:];
        }

        goto LABEL_25;
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v27 = "Succeeded updating task";
LABEL_20:
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v27, buf, 2u);
      }
    }

    else
    {
      v30 = 0;
      v28 = [v21 submitTaskRequest:v17 error:&v30];
      v24 = v30;

      v29 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshScheduler);
      v26 = v29;
      if ((v28 & 1) == 0)
      {
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          [MOEventRefreshScheduler registerFirstRefreshActivityWithPreRegisteredTask:];
        }

        goto LABEL_25;
      }

      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v27 = "Succeeded submitting task";
        goto LABEL_20;
      }
    }

LABEL_25:

    goto LABEL_26;
  }

  if (v16)
  {
    return;
  }

  v17 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshScheduler);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = @"com.apple.momentsd.eventRefresh.first";
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Re-registering %@ activity failed", buf, 0xCu);
  }

LABEL_26:
}

void __77__MOEventRefreshScheduler_registerFirstRefreshActivityWithPreRegisteredTask___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshScheduler);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    *buf = 138412546;
    *&buf[4] = @"com.apple.momentsd.eventRefresh.first";
    *&buf[12] = 1024;
    *&buf[14] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ completionHandler with isAllowedToCollectAndCompute=%i", buf, 0x12u);
  }

  v6 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0x500uLL, "ScheduledRefreshFirstWrapper", "", buf, 2u);
  }

  v7 = [[MOPerformanceMeasurement alloc] initWithName:@"ScheduledRefreshFirstWrapper" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v7 startSession];
  if (+[MOPlatformInfo wasBuildVersionUpdated]&& *(a1 + 41) == 1 && *(a1 + 42) != 1 || *(a1 + 43) == 1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v48 = __Block_byref_object_copy__27;
    v49 = __Block_byref_object_dispose__27;
    v50 = os_transaction_create();
    v8 = +[NSDate distantPast];
    v9 = [*(a1 + 32) defaultsManager];
    v10 = [v9 objectForKey:@"EventRefreshSchedulerLastAttemptTriggerFirst"];

    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;

        v8 = v11;
      }
    }

    v12 = [*(a1 + 32) configurationManager];
    LODWORD(v13) = -1.0;
    [v12 getFloatSettingForKey:@"EventRefreshSchedulerOverrideOnFailureRetryAfter" withFallback:v13];
    v15 = v14;

    v16 = +[NSDate date];
    [v16 timeIntervalSinceDate:v8];
    v18 = v17;
    if (v15 >= 0.0)
    {
      v19 = v15;
    }

    else
    {
      v19 = 3600.0;
    }

    v20 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshScheduler);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [NSNumber numberWithDouble:v18];
      v22 = [NSNumber numberWithDouble:v19];
      *v39 = 138413058;
      v40 = v8;
      v41 = 2112;
      v42 = v16;
      v43 = 2112;
      v44 = v21;
      v45 = 2112;
      v46 = v22;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Interval stats since run of same activity first refresh: last attempt %@, now %@, interval %@, expected interval %@)", v39, 0x2Au);
    }

    if (v8 && v18 > 0.0 && v19 > 0.0 && v18 < v19 * 0.9)
    {
      v23 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshScheduler);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        __77__MOEventRefreshScheduler_registerFirstRefreshActivityWithPreRegisteredTask___block_invoke_cold_1();
      }

      [v3 setTaskCompleted];
      v24 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = 0;

      v25 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
      if (os_signpost_enabled(v25))
      {
        *v39 = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_INTERVAL_END, 0x500uLL, "ScheduledRefreshFirstWrapper", "", v39, 2u);
      }

      [(MOPerformanceMeasurement *)v7 endSession];
      _Block_object_dispose(buf, 8);
    }

    else
    {
      v30 = [*(a1 + 32) defaultsManager];
      [v30 setObject:v16 forKey:@"EventRefreshSchedulerLastAttemptTriggerFirst"];

      v31 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshScheduler);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *v39 = 138412290;
        v40 = @"com.apple.momentsd.eventRefresh.first";
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%@ detected build upgrade", v39, 0xCu);
      }

      v32 = [*(a1 + 32) queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __77__MOEventRefreshScheduler_registerFirstRefreshActivityWithPreRegisteredTask___block_invoke_177;
      block[3] = &unk_10033CC48;
      block[4] = *(a1 + 32);
      v38 = v15;
      v35 = v3;
      v37 = buf;
      v36 = v7;
      dispatch_async(v32, block);

      _Block_object_dispose(buf, 8);
    }

    goto LABEL_38;
  }

  v26 = +[MOPlatformInfo wasBuildVersionUpdated];
  v27 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshScheduler);
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_INFO);
  if (v26)
  {
    if (v28)
    {
      *buf = 0;
      v29 = "Refresh.First: build upgrade was detected but overrides prevent this task to run, skipped!";
LABEL_34:
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, v29, buf, 2u);
    }
  }

  else if (v28)
  {
    *buf = 0;
    v29 = "Refresh.First: no build upgrade detected, skipped!";
    goto LABEL_34;
  }

  [v3 setTaskCompleted];
  v33 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v33))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, OS_SIGNPOST_INTERVAL_END, 0x500uLL, "ScheduledRefreshFirstWrapper", "", buf, 2u);
  }

  [(MOPerformanceMeasurement *)v7 endSession];
LABEL_38:
}

void __77__MOEventRefreshScheduler_registerFirstRefreshActivityWithPreRegisteredTask___block_invoke_177(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshScheduler);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = @"com.apple.momentsd.eventRefresh.first";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ detected build upgrade, triggering full refresh", buf, 0xCu);
  }

  v3 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __77__MOEventRefreshScheduler_registerFirstRefreshActivityWithPreRegisteredTask___block_invoke_178;
  v6[3] = &unk_10033CC20;
  v6[4] = v3;
  v7 = *(a1 + 40);
  v9 = *(a1 + 64);
  v5 = *(a1 + 48);
  v4 = v5;
  v8 = v5;
  [v3 refreshWithRefreshVariant:1280 andCompletion:v6];
}

void __77__MOEventRefreshScheduler_registerFirstRefreshActivityWithPreRegisteredTask___block_invoke_178(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshScheduler);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Refresh.First: All completed!", &v19, 2u);
    }

    v9 = [*(a1 + 32) defaultsManager];
    v10 = +[NSDate now];
    [v9 setObject:v10 forKey:@"EventRefreshSchedulerLastSuccessfulTrigger"];

    v11 = [*(a1 + 32) defaultsManager];
    v12 = +[NSDate now];
    [v11 setObject:v12 forKey:@"EventRefreshSchedulerLastSuccessfulTriggerFirst"];

    +[MOPlatformInfo persistBuildVersion];
    goto LABEL_9;
  }

  v4 = *(a1 + 64);
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshScheduler);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4 < 0.0)
  {
    if (v6)
    {
      v19 = 138412290;
      v20 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Refresh.First: Giving up with error (%@)", &v19, 0xCu);
    }

LABEL_9:
    [*(a1 + 40) setTaskCompleted];
    goto LABEL_13;
  }

  if (v6)
  {
    LODWORD(v7) = *(a1 + 64);
    v13 = [NSNumber numberWithFloat:v7];
    v19 = 138412546;
    v20 = v13;
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Refresh.First: Deferred to %@ seconds later with error (%@)", &v19, 0x16u);
  }

  [*(a1 + 40) setTaskExpiredWithRetryAfter:0 error:*(a1 + 64)];
LABEL_13:
  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;

  v16 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v16))
  {
    LOWORD(v19) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_END, 0x500uLL, "ScheduledRefreshFirstWrapper", "", &v19, 2u);
  }

  [*(a1 + 48) endSession];
  v17 = [*(a1 + 32) universe];
  v18 = [v17 getService:@"DaemonClient"];

  [v18 scheduleMomentsUIFullProcessing];
}

- (void)registerLightRefreshActivity
{
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __55__MOEventRefreshScheduler_registerLightRefreshActivity__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__27;
  v33 = __Block_byref_object_dispose__27;
  v34 = os_transaction_create();
  v4 = +[NSDate distantPast];
  v5 = [*(a1 + 32) defaultsManager];
  v6 = [v5 objectForKey:@"EventRefreshSchedulerLastAttemptTriggerLight"];

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;

      v4 = v7;
    }
  }

  v8 = +[NSDate date];
  [v8 timeIntervalSinceDate:v4];
  v10 = v9;
  v11 = [*(a1 + 32) configurationManager];
  LODWORD(v12) = 1163984896;
  [v11 getFloatSettingForKey:@"EventRefreshSchedulerOverrideLightRefreshInterval" withFallback:v12];
  v14 = v13;

  v15 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshScheduler);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [NSNumber numberWithDouble:v10];
    v17 = [NSNumber numberWithDouble:v14];
    *buf = 138413058;
    v36 = v4;
    v37 = 2112;
    v38 = v8;
    v39 = 2112;
    v40 = v16;
    v41 = 2112;
    v42 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Interval stats since run of same activity light refresh: last attempt %@, now %@, interval %@, expected interval %@)", buf, 0x2Au);
  }

  if (v4 && v10 > 0.0 && v14 > 0.0 && v10 < v14 * 0.9)
  {
    v18 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshScheduler);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __55__MOEventRefreshScheduler_registerLightRefreshActivity__block_invoke_cold_1();
    }

    [v3 setTaskCompleted];
    v19 = v30[5];
    v30[5] = 0;
  }

  else
  {
    v20 = [*(a1 + 32) defaultsManager];
    [v20 setObject:v8 forKey:@"EventRefreshSchedulerLastAttemptTriggerLight"];

    v21 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_BEGIN, 0x200uLL, "ScheduledRefreshLightWrapper", "", buf, 2u);
    }

    v22 = [[MOPerformanceMeasurement alloc] initWithName:@"ScheduledRefreshLightWrapper" measureRecentPeak:0];
    [(MOPerformanceMeasurement *)v22 startSession];
    v23 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshScheduler);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "com.apple.momentsd.eventRefresh.light Triggering light refresh", buf, 2u);
    }

    v24 = [*(a1 + 32) queue];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = __55__MOEventRefreshScheduler_registerLightRefreshActivity__block_invoke_212;
    v25[3] = &unk_10033CBD0;
    v25[4] = *(a1 + 32);
    v27 = v22;
    v28 = &v29;
    v26 = v3;
    v19 = v22;
    dispatch_async(v24, v25);
  }

  _Block_object_dispose(&v29, 8);
}

void __55__MOEventRefreshScheduler_registerLightRefreshActivity__block_invoke_212(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __55__MOEventRefreshScheduler_registerLightRefreshActivity__block_invoke_2;
  v5[3] = &unk_10033CBA8;
  v5[4] = v2;
  v6 = *(a1 + 40);
  v4 = *(a1 + 48);
  v3 = v4;
  v7 = v4;
  [v2 refreshWithRefreshVariant:512 andCompletion:v5];
}

void __55__MOEventRefreshScheduler_registerLightRefreshActivity__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshScheduler);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Refresh.Light: All completed!", &v19, 2u);
    }

    v11 = [*(a1 + 32) defaultsManager];
    v12 = +[NSDate now];
    [v11 setObject:v12 forKey:@"EventRefreshSchedulerLastSuccessfulTrigger"];

    v8 = [*(a1 + 32) defaultsManager];
    v13 = +[NSDate now];
    [v8 setObject:v13 forKey:@"EventRefreshSchedulerLastSuccessfulTriggerLight"];

    goto LABEL_8;
  }

  v4 = [*(a1 + 32) configurationManager];
  LODWORD(v5) = -1.0;
  [v4 getFloatSettingForKey:@"EventRefreshSchedulerOverrideOnFailureRetryAfter" withFallback:v5];
  v7 = v6;

  v8 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshScheduler);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v7 < 0.0)
  {
    if (v9)
    {
      v19 = 138412290;
      v20 = v3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Refresh.Light: Giving up with error (%@)", &v19, 0xCu);
    }

LABEL_8:

    [*(a1 + 40) setTaskCompleted];
    goto LABEL_12;
  }

  if (v9)
  {
    v19 = 138412290;
    v20 = v3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Refresh.Light: Deferred with error (%@)", &v19, 0xCu);
  }

  [*(a1 + 40) setTaskExpiredWithRetryAfter:0 error:v7];
LABEL_12:
  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;

  v16 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v16))
  {
    LOWORD(v19) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_END, 0x200uLL, "ScheduledRefreshLightWrapper", "", &v19, 2u);
  }

  [*(a1 + 48) endSession];
  v17 = [*(a1 + 32) universe];
  v18 = [v17 getService:@"DaemonClient"];

  [v18 scheduleMomentsUIFullProcessing];
}

- (void)refreshWithRefreshVariant:(unint64_t)variant andCompletion:(id)completion
{
  completionCopy = completion;
  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x3032000000;
  v62[3] = __Block_byref_object_copy__27;
  v62[4] = __Block_byref_object_dispose__27;
  v63 = 0;
  universe = [(MOEventRefreshScheduler *)self universe];
  v8 = [universe getService:@"DaemonClient"];

  v9 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v10 = v9;
  if (variant - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 134349056;
    variantCopy = variant;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, variant, "momentsd_ScheduledRefresh", " variant=%{signpost.telemetry:number1,public}lu  enableTelemetry=YES ", buf, 0xCu);
  }

  v11 = [[MOPerformanceMeasurement alloc] initWithName:@"ScheduledRefresh" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v11 startSession];
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = __67__MOEventRefreshScheduler_refreshWithRefreshVariant_andCompletion___block_invoke;
  v56[3] = &unk_10033CCC0;
  variantCopy2 = variant;
  v59 = completionCopy;
  v60 = v62;
  v28 = v59;
  v56[4] = self;
  v29 = v8;
  v57 = v29;
  v27 = v11;
  v58 = v27;
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = __67__MOEventRefreshScheduler_refreshWithRefreshVariant_andCompletion___block_invoke_229;
  v52[3] = &unk_10033CD10;
  v54 = v62;
  variantCopy3 = variant;
  v52[4] = self;
  v12 = objc_retainBlock(v56);
  v53 = v12;
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = __67__MOEventRefreshScheduler_refreshWithRefreshVariant_andCompletion___block_invoke_234;
  v48[3] = &unk_10033CD10;
  v50 = v62;
  variantCopy4 = variant;
  v48[4] = self;
  v13 = objc_retainBlock(v52);
  v49 = v13;
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = __67__MOEventRefreshScheduler_refreshWithRefreshVariant_andCompletion___block_invoke_239;
  v43[3] = &unk_10033CD60;
  v46 = v62;
  variantCopy5 = variant;
  v43[4] = self;
  v14 = objc_retainBlock(v48);
  v44 = v14;
  v15 = v13;
  v45 = v15;
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = __67__MOEventRefreshScheduler_refreshWithRefreshVariant_andCompletion___block_invoke_244;
  v39[3] = &unk_10033CD10;
  v39[4] = self;
  v41 = v62;
  variantCopy6 = variant;
  v16 = objc_retainBlock(v43);
  v40 = v16;
  v17 = objc_retainBlock(v39);
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = __67__MOEventRefreshScheduler_refreshWithRefreshVariant_andCompletion___block_invoke_249;
  v34[3] = &unk_10033CD60;
  v37 = v62;
  variantCopy7 = variant;
  v34[4] = self;
  v18 = v12;
  v35 = v18;
  v19 = v17;
  v36 = v19;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = __67__MOEventRefreshScheduler_refreshWithRefreshVariant_andCompletion___block_invoke_254;
  v30[3] = &unk_10033CD10;
  v30[4] = self;
  v32 = v62;
  variantCopy8 = variant;
  v20 = objc_retainBlock(v34);
  v31 = v20;
  v21 = objc_retainBlock(v30);
  if ([v29 acquireRefreshLock])
  {
    v22 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshScheduler);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Refresh: RefreshLock is acquired. Running refresh.", buf, 2u);
    }

    queue = [(MOEventRefreshScheduler *)self queue];
    dispatch_async(queue, v21);
    goto LABEL_12;
  }

  v24 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshScheduler);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    [MOEventRefreshScheduler refreshWithRefreshVariant:andCompletion:];
  }

  if (v28)
  {
    v25 = [NSError alloc];
    v64 = NSLocalizedDescriptionKey;
    v65 = @"The refresh is dropped due to an existing refresh.";
    v26 = [NSDictionary dictionaryWithObjects:&v65 forKeys:&v64 count:1];
    queue = [v25 initWithDomain:@"MOEventRefreshSchduler" code:0 userInfo:v26];

    v28[2](v28, queue);
LABEL_12:
  }

  _Block_object_dispose(v62, 8);
}

void __67__MOEventRefreshScheduler_refreshWithRefreshVariant_andCompletion___block_invoke(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v3 = v2;
  v4 = *(a1 + 72);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    LOWORD(v15) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "ScheduledRefreshCompletion", "", &v15, 2u);
  }

  v5 = [[MOPerformanceMeasurement alloc] initWithName:@"ScheduledRefreshCompletion" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v5 startSession];
  v6 = *(a1 + 56);
  if (v6)
  {
    (*(v6 + 16))(v6, *(*(*(a1 + 64) + 8) + 40));
  }

  v7 = [*(a1 + 32) eventManager];
  [v7 clearCache];

  [*(a1 + 40) releaseRefreshLock];
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshScheduler);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Refresh: RefreshLock is released", &v15, 2u);
  }

  v9 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v10 = v9;
  v11 = *(a1 + 72);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    LOWORD(v15) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, v11, "ScheduledRefreshCompletion", "", &v15, 2u);
  }

  [(MOPerformanceMeasurement *)v5 endSession];
  v12 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v13 = v12;
  v14 = *(a1 + 72);
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v15 = 134349056;
    v16 = v14;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, v14, "momentsd_ScheduledRefresh", " variant=%{signpost.telemetry:number1,public}lu  enableTelemetry=YES ", &v15, 0xCu);
  }

  [*(a1 + 48) endSession];
}

void __67__MOEventRefreshScheduler_refreshWithRefreshVariant_andCompletion___block_invoke_229(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v3 = v2;
  v4 = *(a1 + 56);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "EngagementDataUpdate", "", buf, 2u);
  }

  v5 = [[MOPerformanceMeasurement alloc] initWithName:@"EngagementDataUpdate" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v5 startSession];
  v6 = *(a1 + 32);
  v7 = *(a1 + 56);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __67__MOEventRefreshScheduler_refreshWithRefreshVariant_andCompletion___block_invoke_233;
  v11[3] = &unk_10033CCE8;
  v15 = v7;
  v12 = v5;
  v13 = v6;
  v10 = *(a1 + 40);
  v8 = v10;
  v14 = v10;
  v9 = v5;
  [v6 _updateEngagementLightStreamWithRefreshVariant:v7 completion:v11];
}

void __67__MOEventRefreshScheduler_refreshWithRefreshVariant_andCompletion___block_invoke_233(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v5 = v4;
  v6 = *(a1 + 64);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v13[0] = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, v6, "EngagementDataUpdate", "", v13, 2u);
  }

  [*(a1 + 32) endSession];
  v7 = *(*(a1 + 56) + 8);
  v10 = *(v7 + 40);
  v8 = (v7 + 40);
  v9 = v10;
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = v3;
  }

  objc_storeStrong(v8, v11);
  v12 = [*(a1 + 40) queue];
  dispatch_async(v12, *(a1 + 48));
}

void __67__MOEventRefreshScheduler_refreshWithRefreshVariant_andCompletion___block_invoke_234(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v3 = v2;
  v4 = *(a1 + 56);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "ScheduledRefreshDataDump", "", buf, 2u);
  }

  v5 = [[MOPerformanceMeasurement alloc] initWithName:@"ScheduledRefreshDataDump" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v5 startSession];
  v6 = *(a1 + 32);
  v7 = *(a1 + 56);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __67__MOEventRefreshScheduler_refreshWithRefreshVariant_andCompletion___block_invoke_238;
  v11[3] = &unk_10033CCE8;
  v15 = v7;
  v12 = v5;
  v13 = v6;
  v10 = *(a1 + 40);
  v8 = v10;
  v14 = v10;
  v9 = v5;
  [v6 _dataDumpWithRefreshVariant:v7 completion:v11];
}

void __67__MOEventRefreshScheduler_refreshWithRefreshVariant_andCompletion___block_invoke_238(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v5 = v4;
  v6 = *(a1 + 64);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v13[0] = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, v6, "ScheduledRefreshDataDump", "", v13, 2u);
  }

  [*(a1 + 32) endSession];
  v7 = *(*(a1 + 56) + 8);
  v10 = *(v7 + 40);
  v8 = (v7 + 40);
  v9 = v10;
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = v3;
  }

  objc_storeStrong(v8, v11);
  v12 = [*(a1 + 40) queue];
  dispatch_async(v12, *(a1 + 48));
}

void __67__MOEventRefreshScheduler_refreshWithRefreshVariant_andCompletion___block_invoke_239(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v3 = v2;
  v4 = *(a1 + 64);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "ScheduledRefreshBundleEvents", "", buf, 2u);
  }

  v5 = [[MOPerformanceMeasurement alloc] initWithName:@"ScheduledRefreshBundleEvents" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v5 startSession];
  v6 = *(a1 + 32);
  v8 = *(a1 + 56);
  v7 = *(a1 + 64);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __67__MOEventRefreshScheduler_refreshWithRefreshVariant_andCompletion___block_invoke_243;
  v13[3] = &unk_10033CD38;
  v17 = v7;
  v14 = v5;
  v12 = *(a1 + 32);
  v9 = *(&v12 + 1);
  *&v10 = *(a1 + 48);
  *(&v10 + 1) = v8;
  v15 = v12;
  v16 = v10;
  v11 = v5;
  [v6 _computeWithRefreshVariant:v7 andCompletion:v13];
}

void __67__MOEventRefreshScheduler_refreshWithRefreshVariant_andCompletion___block_invoke_243(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v5 = v4;
  v6 = *(a1 + 72);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v14[0] = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, v6, "ScheduledRefreshBundleEvents", "", v14, 2u);
  }

  [*(a1 + 32) endSession];
  v7 = *(*(a1 + 64) + 8);
  v10 = *(v7 + 40);
  v8 = (v7 + 40);
  v9 = v10;
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = v3;
  }

  objc_storeStrong(v8, v11);
  if (*(*(*(a1 + 64) + 8) + 40) || *(a1 + 72) != 768)
  {
    v12 = 56;
  }

  else
  {
    v12 = 48;
  }

  v13 = [*(a1 + 40) queue];
  dispatch_async(v13, *(a1 + v12));
}

void __67__MOEventRefreshScheduler_refreshWithRefreshVariant_andCompletion___block_invoke_244(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v3 = v2;
  v4 = *(a1 + 56);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "ScheduledRefreshAnalytics", "", buf, 2u);
  }

  v5 = [[MOPerformanceMeasurement alloc] initWithName:@"ScheduledRefreshAnalytics" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v5 startSession];
  v6 = *(a1 + 32);
  v7 = *(a1 + 56);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __67__MOEventRefreshScheduler_refreshWithRefreshVariant_andCompletion___block_invoke_248;
  v11[3] = &unk_10033CCE8;
  v15 = v7;
  v12 = v5;
  v13 = v6;
  v10 = *(a1 + 40);
  v8 = v10;
  v14 = v10;
  v9 = v5;
  [v6 _trendsWithRefreshVariant:v7 andCompletion:v11];
}

void __67__MOEventRefreshScheduler_refreshWithRefreshVariant_andCompletion___block_invoke_248(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v5 = v4;
  v6 = *(a1 + 64);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v13[0] = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, v6, "ScheduledRefreshAnalytics", "", v13, 2u);
  }

  [*(a1 + 32) endSession];
  v7 = *(*(a1 + 56) + 8);
  v10 = *(v7 + 40);
  v8 = (v7 + 40);
  v9 = v10;
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = v3;
  }

  objc_storeStrong(v8, v11);
  v12 = [*(a1 + 40) queue];
  dispatch_async(v12, *(a1 + 48));
}

void __67__MOEventRefreshScheduler_refreshWithRefreshVariant_andCompletion___block_invoke_249(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v3 = v2;
  v4 = *(a1 + 64);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "ScheduledRefreshCollect", "", buf, 2u);
  }

  v5 = [[MOPerformanceMeasurement alloc] initWithName:@"ScheduledRefreshCollect" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v5 startSession];
  v6 = *(a1 + 32);
  v8 = *(a1 + 56);
  v7 = *(a1 + 64);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __67__MOEventRefreshScheduler_refreshWithRefreshVariant_andCompletion___block_invoke_253;
  v13[3] = &unk_10033CD38;
  v17 = v7;
  v14 = v5;
  v12 = *(a1 + 32);
  v9 = *(&v12 + 1);
  *&v10 = *(a1 + 48);
  *(&v10 + 1) = v8;
  v15 = v12;
  v16 = v10;
  v11 = v5;
  [v6 _collectWithRefreshVariant:v7 andCompletion:v13];
}

void __67__MOEventRefreshScheduler_refreshWithRefreshVariant_andCompletion___block_invoke_253(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v6 = v5;
  v7 = *(a1 + 72);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v17[0] = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_END, v7, "ScheduledRefreshCollect", "", v17, 2u);
  }

  [*(a1 + 32) endSession];
  v8 = *(*(a1 + 64) + 8);
  v11 = *(v8 + 40);
  v9 = (v8 + 40);
  v10 = v11;
  if (v11)
  {
    v12 = v10;
  }

  else
  {
    v12 = v4;
  }

  objc_storeStrong(v9, v12);
  if (v4 && (([v4 code] & 0x400) != 0 || objc_msgSend(v4, "code") == 22) && (objc_msgSend(v4, "domain"), v13 = objc_claimAutoreleasedReturnValue(), v13, v13 == @"MOErrorDomain"))
  {
    v16 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshScheduler);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __67__MOEventRefreshScheduler_refreshWithRefreshVariant_andCompletion___block_invoke_253_cold_1();
    }

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
    v14 = 48;
  }

  else
  {
    v14 = 56;
  }

  v15 = [*(a1 + 40) queue];
  dispatch_async(v15, *(a1 + v14));
}

void __67__MOEventRefreshScheduler_refreshWithRefreshVariant_andCompletion___block_invoke_254(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v3 = v2;
  v4 = *(a1 + 56);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "ScheduledRefreshPurge", "", buf, 2u);
  }

  v5 = [[MOPerformanceMeasurement alloc] initWithName:@"ScheduledRefreshPurge" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v5 startSession];
  v6 = *(a1 + 32);
  v7 = *(a1 + 56);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __67__MOEventRefreshScheduler_refreshWithRefreshVariant_andCompletion___block_invoke_258;
  v11[3] = &unk_10033CCE8;
  v15 = v7;
  v12 = v5;
  v13 = v6;
  v10 = *(a1 + 40);
  v8 = v10;
  v14 = v10;
  v9 = v5;
  [v6 _purgeEventsAndBundlesWithRefreshVariant:v7 andCompletion:v11];
}

void __67__MOEventRefreshScheduler_refreshWithRefreshVariant_andCompletion___block_invoke_258(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v5 = v4;
  v6 = *(a1 + 64);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v13[0] = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, v6, "ScheduledRefreshPurge", "", v13, 2u);
  }

  [*(a1 + 32) endSession];
  v7 = *(*(a1 + 56) + 8);
  v10 = *(v7 + 40);
  v8 = (v7 + 40);
  v9 = v10;
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = v3;
  }

  objc_storeStrong(v8, v11);
  v12 = [*(a1 + 40) queue];
  dispatch_async(v12, *(a1 + 48));
}

- (void)_purgeEventsAndBundlesWithRefreshVariant:(unint64_t)variant andCompletion:(id)completion
{
  completionCopy = completion;
  v7 = [(MOEventRefreshScheduler *)self _createWatchDogWithName:@"RefreshPurge"];
  v8 = objc_alloc_init(NSMutableDictionary);
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__27;
  v22[4] = __Block_byref_object_dispose__27;
  v23 = 0;
  v9 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshScheduler);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Refresh: Calling purge events", buf, 2u);
  }

  eventManager = [(MOEventRefreshScheduler *)self eventManager];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __82__MOEventRefreshScheduler__purgeEventsAndBundlesWithRefreshVariant_andCompletion___block_invoke;
  v14[3] = &unk_10033CDB0;
  v11 = v7;
  v15 = v11;
  v12 = v8;
  v16 = v12;
  selfCopy = self;
  v19 = v22;
  variantCopy = variant;
  v13 = completionCopy;
  v18 = v13;
  [eventManager cleanUpEventsWithRefreshVariant:variant andHandler:v14];

  _Block_object_dispose(v22, 8);
}

void __82__MOEventRefreshScheduler__purgeEventsAndBundlesWithRefreshVariant_andCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v8 = a3;
  [v7 pet];
  [*(a1 + 40) addEntriesFromDictionary:v8];

  if (v6)
  {
    [*(a1 + 40) setObject:&__kCFBooleanFalse forKey:@"resultOverallSuccess"];
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
  }

  v9 = [*(a1 + 48) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __82__MOEventRefreshScheduler__purgeEventsAndBundlesWithRefreshVariant_andCompletion___block_invoke_2;
  block[3] = &unk_10033B678;
  v10 = *(a1 + 32);
  v11 = *(a1 + 72);
  v17 = v10;
  v20 = v11;
  v14 = *(a1 + 40);
  v12 = v14.i64[0];
  v18 = vextq_s8(v14, v14, 8uLL);
  v15 = *(a1 + 56);
  v13 = v15;
  v19 = v15;
  dispatch_async(v9, block);
}

void __82__MOEventRefreshScheduler__purgeEventsAndBundlesWithRefreshVariant_andCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) pet];
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshScheduler);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Refresh: Calling purge bundles", buf, 2u);
  }

  v3 = [*(a1 + 40) eventBundleManager];
  v4 = *(a1 + 72);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __82__MOEventRefreshScheduler__purgeEventsAndBundlesWithRefreshVariant_andCompletion___block_invoke_271;
  v9[3] = &unk_10033CD88;
  v10 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 40);
  v11 = v5;
  v12 = v6;
  v8 = *(a1 + 56);
  v7 = v8;
  v13 = v8;
  [v3 cleanUpEventBundlesWithRefreshVariant:v4 andHandler:v9];
}

void __82__MOEventRefreshScheduler__purgeEventsAndBundlesWithRefreshVariant_andCompletion___block_invoke_271(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 pet];
  [*(a1 + 40) addEntriesFromDictionary:v6];

  if (v13)
  {
    [*(a1 + 40) setObject:&__kCFBooleanFalse forKey:@"resultOverallSuccess"];
    v7 = *(*(a1 + 64) + 8);
    v10 = *(v7 + 40);
    v8 = (v7 + 40);
    v9 = v10;
    v11 = v13;
    if (v10)
    {
      v11 = v9;
    }

    objc_storeStrong(v8, v11);
  }

  [*(a1 + 40) setObject:@"launchd" forKey:@"triggerSource"];
  v12 = [*(a1 + 48) notifier];
  [v12 sendNotification:4 withPayload:*(a1 + 40)];

  [*(a1 + 32) cancel];
  (*(*(a1 + 56) + 16))();
}

- (void)_collectWithRefreshVariant:(unint64_t)variant andCompletion:(id)completion
{
  completionCopy = completion;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshScheduler);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Refresh: Calling collect", buf, 2u);
  }

  v8 = [(MOEventRefreshScheduler *)self _createWatchDogWithName:@"RefreshCollect"];
  eventManager = [(MOEventRefreshScheduler *)self eventManager];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __68__MOEventRefreshScheduler__collectWithRefreshVariant_andCompletion___block_invoke;
  v12[3] = &unk_10033BC28;
  v13 = v8;
  selfCopy = self;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = v8;
  [eventManager collectEventsWithRefreshVariant:variant andHandler:v12];
}

void __68__MOEventRefreshScheduler__collectWithRefreshVariant_andCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 pet];
  v9 = [v6 mutableCopy];

  if (v7)
  {
    [v9 setObject:&__kCFBooleanFalse forKey:@"resultOverallSuccess"];
  }

  [v9 setObject:@"launchd" forKey:@"triggerSource"];
  v8 = [*(a1 + 40) notifier];
  [v8 sendNotification:2 withPayload:v9];

  [*(a1 + 32) cancel];
  (*(*(a1 + 48) + 16))();
}

- (void)_trendsWithRefreshVariant:(unint64_t)variant andCompletion:(id)completion
{
  completionCopy = completion;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshScheduler);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Refresh: Calling trends", buf, 2u);
  }

  v8 = [(MOEventRefreshScheduler *)self _createWatchDogWithName:@"RefreshTrends"];
  eventManager = [(MOEventRefreshScheduler *)self eventManager];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __67__MOEventRefreshScheduler__trendsWithRefreshVariant_andCompletion___block_invoke;
  v12[3] = &unk_10033BC28;
  v13 = v8;
  selfCopy = self;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = v8;
  [eventManager runAnalyticsWithRefreshVariant:variant andHandler:v12];
}

void __67__MOEventRefreshScheduler__trendsWithRefreshVariant_andCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 pet];
  v9 = [v6 mutableCopy];

  if (v7)
  {
    [v9 setObject:&__kCFBooleanFalse forKey:@"resultOverallSuccess"];
  }

  [v9 setObject:@"launchd" forKey:@"triggerSource"];
  v8 = [*(a1 + 40) notifier];
  [v8 sendNotification:5 withPayload:v9];

  [*(a1 + 32) cancel];
  (*(*(a1 + 48) + 16))();
}

- (void)_computeWithRefreshVariant:(unint64_t)variant andCompletion:(id)completion
{
  completionCopy = completion;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshScheduler);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Refresh: Calling compute", buf, 2u);
  }

  v8 = [(MOEventRefreshScheduler *)self _createWatchDogWithName:@"RefreshCompute"];
  eventBundleManager = [(MOEventRefreshScheduler *)self eventBundleManager];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __68__MOEventRefreshScheduler__computeWithRefreshVariant_andCompletion___block_invoke;
  v12[3] = &unk_10033BC28;
  v13 = v8;
  selfCopy = self;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = v8;
  [eventBundleManager bundleEventsWithRefreshVariant:variant andHandler:v12];
}

void __68__MOEventRefreshScheduler__computeWithRefreshVariant_andCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 pet];
  v9 = [v6 mutableCopy];

  if (v7)
  {
    [v9 setObject:&__kCFBooleanFalse forKey:@"resultOverallSuccess"];
  }

  [v9 setObject:@"launchd" forKey:@"triggerSource"];
  v8 = [*(a1 + 40) notifier];
  [v8 sendNotification:3 withPayload:v9];

  [*(a1 + 32) cancel];
  (*(*(a1 + 48) + 16))();
}

- (void)_dataDumpWithRefreshVariant:(unint64_t)variant completion:(id)completion
{
  completionCopy = completion;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshScheduler);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Refresh: dataDumpWithCompletion", buf, 2u);
  }

  v8 = [(MOEventRefreshScheduler *)self _createWatchDogWithName:@"DataDump"];
  v9 = objc_opt_new();
  v10 = [NSNumber numberWithUnsignedInteger:variant];
  stringValue = [v10 stringValue];
  [v9 setObject:stringValue forKey:@"kMORefreshVariant"];

  stringValue2 = [&off_10036A8E8 stringValue];
  [v9 setObject:stringValue2 forKey:@"kMORefreshSource"];

  eventBundleManager = [(MOEventRefreshScheduler *)self eventBundleManager];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __66__MOEventRefreshScheduler__dataDumpWithRefreshVariant_completion___block_invoke;
  v16[3] = &unk_1003377B8;
  v17 = v8;
  v18 = completionCopy;
  v14 = completionCopy;
  v15 = v8;
  [eventBundleManager captureCurrentDBStateForTrigger:2 withFeedback:0 additionalMetadata:v9 shouldUpload:1 andHandler:v16];
}

void __66__MOEventRefreshScheduler__dataDumpWithRefreshVariant_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 pet];
  v7 = [v6 objectForKey:@"kMODataDumpEnabled"];

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) cancel];
}

- (void)_updateEngagementLightStreamWithRefreshVariant:(unint64_t)variant completion:(id)completion
{
  completionCopy = completion;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshScheduler);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Refresh: update engagement light stream", buf, 2u);
  }

  v8 = [(MOEventRefreshScheduler *)self _createWatchDogWithName:@"UpdateEngagement"];
  engagementHistoryManager = [(MOEventRefreshScheduler *)self engagementHistoryManager];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __85__MOEventRefreshScheduler__updateEngagementLightStreamWithRefreshVariant_completion___block_invoke;
  v12[3] = &unk_10033B560;
  v13 = v8;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = v8;
  [engagementHistoryManager updateEngagementLightStreamWithRefreshVariant:variant handler:v12];
}

id __85__MOEventRefreshScheduler__updateEngagementLightStreamWithRefreshVariant_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 pet];
  (*(*(a1 + 40) + 16))();

  v5 = *(a1 + 32);

  return [v5 cancel];
}

- (void)_generateAvailabilityPredictionsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshScheduler);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Generate availability prediction", buf, 2u);
  }

  v6 = [(MOEventRefreshScheduler *)self _createWatchDogWithName:@"AvailabilityPrediction"];
  notificationsManager = [(MOEventRefreshScheduler *)self notificationsManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __74__MOEventRefreshScheduler__generateAvailabilityPredictionsWithCompletion___block_invoke;
  v10[3] = &unk_10033B560;
  v11 = v6;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = v6;
  [notificationsManager generateAvailabilityPredictionsAndRegisterTimerWithHandler:v10];
}

id __74__MOEventRefreshScheduler__generateAvailabilityPredictionsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 pet];
  (*(*(a1 + 40) + 16))();

  v5 = *(a1 + 32);

  return [v5 cancel];
}

- (void)registerNotificationAvailabilityPredictionActivity
{
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __77__MOEventRefreshScheduler_registerNotificationAvailabilityPredictionActivity__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__27;
  v38 = __Block_byref_object_dispose__27;
  v39 = os_transaction_create();
  v4 = +[NSDate distantPast];
  v5 = [*(a1 + 32) defaultsManager];
  v6 = [v5 objectForKey:@"NotificationAvailabilityPredictionLastSuccessfulTrigger"];

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;

      v4 = v7;
    }
  }

  v8 = +[NSDate date];
  [v8 timeIntervalSinceDate:v4];
  v10 = v9;
  v11 = [*(a1 + 32) configurationManager];
  LODWORD(v12) = 1189150720;
  [v11 getFloatSettingForKey:@"NotificationAvailabilityPredictionOverrideInterval" withFallback:v12];
  v14 = v13;

  v15 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshScheduler);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [NSNumber numberWithDouble:v10];
    v17 = [NSNumber numberWithDouble:v14];
    *buf = 138413058;
    v41 = v4;
    v42 = 2112;
    v43 = v8;
    v44 = 2112;
    v45 = v16;
    v46 = 2112;
    v47 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Interval stats since run of same activity notification availability prediction: last attempt %@, now %@, interval %@, expected interval %@)", buf, 0x2Au);
  }

  v18 = [*(a1 + 32) configurationManager];
  v19 = [v18 getBoolSettingForKey:@"EngagementBiomeStreamMigrationComplete" withFallback:0];

  if ((v19 & 1) == 0)
  {
    v20 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshScheduler);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __77__MOEventRefreshScheduler_registerNotificationAvailabilityPredictionActivity__block_invoke_cold_1();
    }

    goto LABEL_16;
  }

  if (!v4 || v10 <= 0.0 || v14 <= 0.0 || v10 >= v14 * 0.9)
  {
    v22 = [*(a1 + 32) defaultsManager];
    v23 = [v22 objectForKey:@"NotificationRealTimeCheckAlarmFireDate"];

    if (v23 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v21 = v23;
      v24 = +[NSDate now];
      v25 = [v21 isAfterDate:v24];

      if (v25)
      {
        v26 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshScheduler);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          __77__MOEventRefreshScheduler_registerNotificationAvailabilityPredictionActivity__block_invoke_cold_2();
        }

        [v3 setTaskCompleted];
        v27 = v35[5];
        v35[5] = 0;

LABEL_27:
        goto LABEL_28;
      }
    }

    else
    {
      v21 = 0;
    }

    v28 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshScheduler);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "com.apple.momentsd.notificationAvailabilityPrediction Triggering prediction", buf, 2u);
    }

    v29 = [*(a1 + 32) queue];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = __77__MOEventRefreshScheduler_registerNotificationAvailabilityPredictionActivity__block_invoke_308;
    v30[3] = &unk_10033CE00;
    v30[4] = *(a1 + 32);
    v31 = v8;
    v32 = v3;
    v33 = &v34;
    dispatch_async(v29, v30);

    goto LABEL_27;
  }

  v20 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshScheduler);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    __77__MOEventRefreshScheduler_registerNotificationAvailabilityPredictionActivity__block_invoke_cold_3();
  }

LABEL_16:

  [v3 setTaskCompleted];
  v21 = v35[5];
  v35[5] = 0;
LABEL_28:

  _Block_object_dispose(&v34, 8);
}

void __77__MOEventRefreshScheduler_registerNotificationAvailabilityPredictionActivity__block_invoke_308(uint64_t a1)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __77__MOEventRefreshScheduler_registerNotificationAvailabilityPredictionActivity__block_invoke_2;
  v6[3] = &unk_10033CDD8;
  v2 = (a1 + 56);
  v5 = *(a1 + 32);
  v3 = *(&v5 + 1);
  *&v4 = *(a1 + 48);
  *(&v4 + 1) = *v2;
  v7 = v5;
  v8 = v4;
  [v5 _generateAvailabilityPredictionsWithCompletion:v6];
}

void __77__MOEventRefreshScheduler_registerNotificationAvailabilityPredictionActivity__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshScheduler);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Notification availability prediction: All completed!", &v13, 2u);
    }

    v8 = [*(a1 + 32) defaultsManager];
    [v8 setObject:*(a1 + 40) forKey:@"NotificationAvailabilityPredictionLastSuccessfulTrigger"];
    goto LABEL_8;
  }

  v4 = [*(a1 + 32) configurationManager];
  LODWORD(v5) = -1.0;
  [v4 getFloatSettingForKey:@"NotificationAvailabilityPredictionOverrideOnFailureRetryAfter" withFallback:v5];
  v7 = v6;

  v8 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshScheduler);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v7 < 0.0)
  {
    if (v9)
    {
      v13 = 138412290;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Notification availability prediction: Giving up with error (%@)", &v13, 0xCu);
    }

LABEL_8:

    [*(a1 + 48) setTaskCompleted];
    goto LABEL_12;
  }

  if (v9)
  {
    v13 = 138412290;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Notification availability prediction: Deferred with error (%@)", &v13, 0xCu);
  }

  [*(a1 + 48) setTaskExpiredWithRetryAfter:0 error:v7];
LABEL_12:
  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = 0;
}

- (id)_createWatchDogWithName:(id)name
{
  configurationManager = self->_configurationManager;
  nameCopy = name;
  nameCopy = [NSString stringWithFormat:@"%@_%@", @"WatchdogOverrideDefaultCadenceInSeconds", nameCopy];
  *&v7 = self->_watchdogCadence;
  [(MOConfigurationManagerBase *)configurationManager getFloatSettingForKey:nameCopy withFallback:v7];
  v9 = v8;

  v10 = [MOWatchDog alloc];
  LODWORD(v11) = v9;
  v12 = [(MOWatchDog *)v10 initWithName:nameCopy cadenceInSeconds:0 andHandler:v11];

  return v12;
}

- (void)initWithUniverse:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __57__MOEventRefreshScheduler_registerDefaultRefreshActivity__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)registerFirstRefreshActivityWithPreRegisteredTask:.cold.1()
{
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)registerFirstRefreshActivityWithPreRegisteredTask:.cold.2()
{
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __55__MOEventRefreshScheduler_registerLightRefreshActivity__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)refreshWithRefreshVariant:andCompletion:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __77__MOEventRefreshScheduler_registerNotificationAvailabilityPredictionActivity__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __77__MOEventRefreshScheduler_registerNotificationAvailabilityPredictionActivity__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __77__MOEventRefreshScheduler_registerNotificationAvailabilityPredictionActivity__block_invoke_cold_3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end