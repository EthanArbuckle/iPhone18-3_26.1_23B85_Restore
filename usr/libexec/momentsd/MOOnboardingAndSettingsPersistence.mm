@interface MOOnboardingAndSettingsPersistence
- (BOOL)_getFallbackStateForSetting_postlaunch:(unint64_t)setting_postlaunch;
- (BOOL)_getStateForSetting_postlaunch:(unint64_t)setting_postlaunch;
- (BOOL)_updateCachedRoutineStateWithCurrentTime:(double)time;
- (BOOL)getStateForSettingFast:(unint64_t)fast;
- (MOOnboardingAndSettingsPersistence)initWithUniverse:(id)universe;
- (id)_getSettingKey:(unint64_t)key;
- (id)_getSettingName:(unint64_t)name;
- (id)getSnapshotDictionaryForAnalytics;
- (int64_t)_fetchSignificantLocationEnablementStatus;
- (unint64_t)_MOStatusFromSTStatus:(int64_t)status;
- (unint64_t)determineOnboardingDurationBinRange;
- (unint64_t)fetchScreenTimeEnablementStatus;
- (unint64_t)getCollectAndComputeAuthorization;
- (unint64_t)getOnboardingFlowCompletionStatus;
- (unint64_t)getOnboardingFlowRefreshCompletionStatus;
- (void)_onRoutineStateUpdate:(int64_t)update error:(id)error currentTime:(double)time hasTimedout:(BOOL)timedout;
- (void)_peopleAwarenessSubscribe:(BOOL)subscribe;
- (void)determineOnboardingDurationBinRange;
- (void)fetchScreenTimeEnablementStatus;
- (void)postRefreshTriggerAfterOnboarding;
- (void)postRefreshTriggerAfterSettingChange;
- (void)publishOnboardingStatusAnalytics;
- (void)setOnboardingFlowCompletionStatus:(unint64_t)status;
@end

@implementation MOOnboardingAndSettingsPersistence

- (unint64_t)getOnboardingFlowCompletionStatus
{
  v3 = _mo_log_facility_get_os_log(&MOLogFacilityOnboarding);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "getOnboardingFlowCompletionStatus", v7, 2u);
  }

  configManager = [(MOOnboardingAndSettingsPersistence *)self configManager];
  v5 = [configManager getIntegerSettingForKey:@"OnboardingStatus" withFallback:0];

  return v5;
}

- (MOOnboardingAndSettingsPersistence)initWithUniverse:(id)universe
{
  universeCopy = universe;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [universeCopy getService:v7];

  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [universeCopy getService:v10];

  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [universeCopy getService:v13];

  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = [universeCopy getService:v16];

  v36.receiver = self;
  v36.super_class = MOOnboardingAndSettingsPersistence;
  v18 = [(MOOnboardingAndSettingsPersistence *)&v36 init];
  if (v18)
  {
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create("MOOnboardingAndSettingsPersistence.background", v19);
    v21 = *(v18 + 1);
    *(v18 + 1) = v20;

    objc_storeStrong(v18 + 10, universe);
    objc_storeStrong(v18 + 11, v8);
    objc_storeStrong(v18 + 12, v11);
    objc_storeStrong(v18 + 13, v14);
    objc_storeStrong(v18 + 14, v17);
    v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v23 = dispatch_queue_create("MOOnboardingAndSettingsPersistence", v22);
    v24 = *(v18 + 1);
    *(v18 + 1) = v23;

    *(v18 + 24) = 0;
    *(v18 + 2) = 0;
    v25 = *(v18 + 4);
    *(v18 + 4) = 0;

    *(v18 + 5) = 0;
    *(v18 + 6) = CFAbsoluteTimeGetCurrent();
    *(v18 + 7) = 0;
    v26 = [[RTPeopleDiscoveryServiceConfiguration alloc] initWithAdvertisingCapability:1 serviceLevel:2 observationInterval:2 storageDuration:3 densityCallbackConfiguration:0];
    v27 = *(v18 + 8);
    *(v18 + 8) = v26;

    defaultsManager = [v18 defaultsManager];
    defaultsManager2 = [v18 defaultsManager];
    v30 = [defaultsManager2 objectForKey:@"OnboardingStatus"];
    [defaultsManager setObject:v30 forKey:@"OnboardingRefreshStatus"];

    objc_initWeak(&location, v18);
    v31 = *(v18 + 1);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = __55__MOOnboardingAndSettingsPersistence_initWithUniverse___block_invoke;
    v33[3] = &unk_1003379D8;
    objc_copyWeak(&v34, &location);
    dispatch_async(v31, v33);
    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  return v18;
}

void __55__MOOnboardingAndSettingsPersistence_initWithUniverse___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _peopleAwarenessSubscribe:{objc_msgSend(WeakRetained, "getStateForSetting:", 6)}];
}

- (void)_peopleAwarenessSubscribe:(BOOL)subscribe
{
  subscribeCopy = subscribe;
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityPeopleDiscovery);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "_peopleAwarenessSubscribe", v9, 2u);
  }

  self->_peopleAwarenessRegistrationTrigger = 0;
  routineServiceManager = [(MOOnboardingAndSettingsPersistence *)self routineServiceManager];
  routineManager = [routineServiceManager routineManager];
  v8 = routineManager;
  if (subscribeCopy)
  {
    [routineManager startMonitoringForPeopleDiscovery:self->_peopleAwarenessConfiguration handler:&__block_literal_global_58];
  }

  else
  {
    [routineManager stopMonitoringForPeopleDiscoveryWithHandler:&__block_literal_global_128];
  }
}

void __64__MOOnboardingAndSettingsPersistence__peopleAwarenessSubscribe___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  v3 = _mo_log_facility_get_os_log(&MOLogFacilityPeopleDiscovery);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = @"OK";
    if (v2)
    {
      v4 = v2;
    }

    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "startMonitoringForPeopleDiscovery done, %@", &v5, 0xCu);
  }
}

void __64__MOOnboardingAndSettingsPersistence__peopleAwarenessSubscribe___block_invoke_126(id a1, NSError *a2)
{
  v2 = a2;
  v3 = _mo_log_facility_get_os_log(&MOLogFacilityPeopleDiscovery);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = @"OK";
    if (v2)
    {
      v4 = v2;
    }

    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "stopMonitoringForPeopleDiscovery done, %@", &v5, 0xCu);
  }
}

- (id)_getSettingName:(unint64_t)name
{
  if (name > 0xA)
  {
    return 0;
  }

  else
  {
    return *(&off_100340090 + name);
  }
}

- (id)_getSettingKey:(unint64_t)key
{
  if (key > 0xA)
  {
    v5 = 0;
  }

  else
  {
    v3 = *(&off_1003400E8 + key);
    v4 = [(MOOnboardingAndSettingsPersistence *)self _getSettingName:?];
    v5 = [NSString stringWithFormat:v3, v4];
  }

  return v5;
}

- (void)setOnboardingFlowCompletionStatus:(unint64_t)status
{
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityOnboarding);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(v61) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "setOnboardingFlowCompletionStatus", &v61, 2u);
  }

  getOnboardingFlowCompletionStatus = [(MOOnboardingAndSettingsPersistence *)self getOnboardingFlowCompletionStatus];
  if (getOnboardingFlowCompletionStatus == status)
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityOnboarding);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [NSNumber numberWithUnsignedInteger:status];
      v61 = 138412290;
      *v62 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "No-op onboarding transtion requested with state %@", &v61, 0xCu);
    }

LABEL_34:

    return;
  }

  v9 = getOnboardingFlowCompletionStatus;
  if (getOnboardingFlowCompletionStatus <= 1)
  {
    if (getOnboardingFlowCompletionStatus)
    {
      if (getOnboardingFlowCompletionStatus == 1 && status == 2)
      {
        goto LABEL_17;
      }
    }

    else if (status - 1 < 2)
    {
      goto LABEL_17;
    }

    goto LABEL_32;
  }

  if (getOnboardingFlowCompletionStatus == 2)
  {
    if (status == 3)
    {
      goto LABEL_17;
    }

LABEL_32:
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityOnboarding);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(MOOnboardingAndSettingsPersistence *)v9 setOnboardingFlowCompletionStatus:status, v7];
    }

    goto LABEL_34;
  }

  if (getOnboardingFlowCompletionStatus == 4)
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityOnboarding);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MOOnboardingAndSettingsPersistence setOnboardingFlowCompletionStatus:];
    }

    goto LABEL_34;
  }

  if (getOnboardingFlowCompletionStatus != 5 || status != 1)
  {
    goto LABEL_32;
  }

LABEL_17:
  v10 = _mo_log_facility_get_os_log(&MOLogFacilityOnboarding);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [NSNumber numberWithUnsignedInteger:v9];
    v12 = [NSNumber numberWithUnsignedInteger:status];
    v61 = 138412546;
    *v62 = v11;
    *&v62[8] = 2112;
    *&v62[10] = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Onboarding transtion requested from %@ -> %@", &v61, 0x16u);
  }

  defaultsManager = [(MOOnboardingAndSettingsPersistence *)self defaultsManager];
  v14 = [NSNumber numberWithUnsignedInteger:status];
  [defaultsManager setObject:v14 forKey:@"OnboardingStatus"];

  fetchSignificantLocationEnablementStatus = [(MOOnboardingAndSettingsPersistence *)self fetchSignificantLocationEnablementStatus];
  LODWORD(v16) = 14.0;
  [(MOConfigurationManagerBase *)self->_configManager getFloatSettingForKey:@"Visit_PreOnboardingLookBackWindow" withFallback:v16];
  self->_maxAllowedDaysForVisitLookback = v17;
  v18 = _mo_log_facility_get_os_log(&MOLogFacilityOnboarding);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    maxAllowedDaysForVisitLookback = self->_maxAllowedDaysForVisitLookback;
    v61 = 67109376;
    *v62 = fetchSignificantLocationEnablementStatus;
    *&v62[4] = 2048;
    *&v62[6] = maxAllowedDaysForVisitLookback;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "setOnboardingFlowCompletionStatus,Onboarding, isVisitPreOnboardingEnabled,%d,maxAllowedDaysForVisitLookback,%f", &v61, 0x12u);
  }

  if (status - 1 <= 1)
  {
    v20 = _mo_log_facility_get_os_log(&MOLogFacilityOnboarding);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [NSNumber numberWithUnsignedInteger:status];
      v61 = 138412290;
      *v62 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Posting onboarding refresh request after transition to %@", &v61, 0xCu);
    }

    if (status == 2)
    {
      v22 = +[NSDate date];
      defaultsManager2 = [(MOOnboardingAndSettingsPersistence *)self defaultsManager];
      v24 = [NSDate dateWithTimeInterval:v22 sinceDate:0.0];
      [defaultsManager2 setObject:v24 forKey:@"OnboardingDate"];

      defaultsManager3 = [(MOOnboardingAndSettingsPersistence *)self defaultsManager];
      configManager = [(MOOnboardingAndSettingsPersistence *)self configManager];
      LODWORD(v27) = 1234413568;
      [configManager getFloatSettingForKey:@"OnboardingOverrideLookBackWindowActivity" withFallback:v27];
      v29 = [NSDate dateWithTimeInterval:v22 sinceDate:-v28];
      [defaultsManager3 setObject:v29 forKey:@"OnboardingEarliestCollectDateActivity"];

      defaultsManager4 = [(MOOnboardingAndSettingsPersistence *)self defaultsManager];
      configManager2 = [(MOOnboardingAndSettingsPersistence *)self configManager];
      LODWORD(v32) = 1234413568;
      [configManager2 getFloatSettingForKey:@"OnboardingOverrideLookBackWindowMedia" withFallback:v32];
      v34 = [NSDate dateWithTimeInterval:v22 sinceDate:-v33];
      [defaultsManager4 setObject:v34 forKey:@"OnboardingEarliestCollectDateMedia"];

      defaultsManager5 = [(MOOnboardingAndSettingsPersistence *)self defaultsManager];
      configManager3 = [(MOOnboardingAndSettingsPersistence *)self configManager];
      LODWORD(v37) = 1234413568;
      [configManager3 getFloatSettingForKey:@"OnboardingOverrideLookBackWindowCommunication" withFallback:v37];
      v39 = [NSDate dateWithTimeInterval:v22 sinceDate:-v38];
      [defaultsManager5 setObject:v39 forKey:@"OnboardingEarliestCollectDateCommunication"];

      defaultsManager6 = [(MOOnboardingAndSettingsPersistence *)self defaultsManager];
      configManager4 = [(MOOnboardingAndSettingsPersistence *)self configManager];
      LODWORD(v42) = 1234413568;
      [configManager4 getFloatSettingForKey:@"OnboardingOverrideLookBackWindowPhoto" withFallback:v42];
      v44 = [NSDate dateWithTimeInterval:v22 sinceDate:-v43];
      [defaultsManager6 setObject:v44 forKey:@"OnboardingEarliestCollectDatePhoto"];

      defaultsManager7 = [(MOOnboardingAndSettingsPersistence *)self defaultsManager];
      configManager5 = [(MOOnboardingAndSettingsPersistence *)self configManager];
      v47 = configManager5;
      v48 = 0.0;
      if (fetchSignificantLocationEnablementStatus)
      {
        *&v48 = self->_maxAllowedDaysForVisitLookback * 86400.0;
      }

      [configManager5 getFloatSettingForKey:@"OnboardingOverrideLookBackWindowLocation" withFallback:v48];
      v50 = [NSDate dateWithTimeInterval:v22 sinceDate:-v49];
      [defaultsManager7 setObject:v50 forKey:@"OnboardingEarliestCollectDateLocation"];

      defaultsManager8 = [(MOOnboardingAndSettingsPersistence *)self defaultsManager];
      configManager6 = [(MOOnboardingAndSettingsPersistence *)self configManager];
      [configManager6 getFloatSettingForKey:@"OnboardingOverrideLookBackWindowPeople" withFallback:0.0];
      v54 = [NSDate dateWithTimeInterval:v22 sinceDate:-v53];
      [defaultsManager8 setObject:v54 forKey:@"OnboardingEarliestCollectDatePeople"];

      defaultsManager9 = [(MOOnboardingAndSettingsPersistence *)self defaultsManager];
      configManager7 = [(MOOnboardingAndSettingsPersistence *)self configManager];
      LODWORD(v57) = 1234413568;
      [configManager7 getFloatSettingForKey:@"OnboardingOverrideLookBackWindowStateOfMind" withFallback:v57];
      v59 = [NSDate dateWithTimeInterval:v22 sinceDate:-v58];
      [defaultsManager9 setObject:v59 forKey:@"OnboardingEarliestCollectDateStateOfMind"];
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.momentsd.onboarding-status-updated", 0, 0, 1u);
    [(MOOnboardingAndSettingsPersistence *)self postRefreshTriggerAfterOnboarding];
  }
}

- (unint64_t)getOnboardingFlowRefreshCompletionStatus
{
  configManager = [(MOOnboardingAndSettingsPersistence *)self configManager];
  v3 = [configManager getIntegerSettingForKey:@"OnboardingRefreshStatus" withFallback:0];

  return v3;
}

- (void)postRefreshTriggerAfterOnboarding
{
  v3 = _mo_log_facility_get_os_log(&MOLogFacilityOnboarding);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "postRefreshTriggerAfterOnboarding", buf, 2u);
  }

  v4 = objc_autoreleasePoolPush();
  universe = [(MOOnboardingAndSettingsPersistence *)self universe];
  v6 = [universe getService:@"DaemonClient"];

  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __71__MOOnboardingAndSettingsPersistence_postRefreshTriggerAfterOnboarding__block_invoke;
  v9[3] = &unk_100335B08;
  v10 = v6;
  selfCopy = self;
  v8 = v6;
  dispatch_async(queue, v9);

  objc_autoreleasePoolPop(v4);
}

void __71__MOOnboardingAndSettingsPersistence_postRefreshTriggerAfterOnboarding__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __71__MOOnboardingAndSettingsPersistence_postRefreshTriggerAfterOnboarding__block_invoke_2;
  v5[3] = &unk_100335B08;
  v3 = v2;
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  [v3 scheduleClientTask:v5 withName:@"onboardingRefresh"];
}

void __71__MOOnboardingAndSettingsPersistence_postRefreshTriggerAfterOnboarding__block_invoke_2(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityOnboarding);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Requesting onboarding refresh", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = objc_opt_new();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __71__MOOnboardingAndSettingsPersistence_postRefreshTriggerAfterOnboarding__block_invoke_220;
  v7[3] = &unk_10033DCD0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = v5;
  v9 = v6;
  [v3 _clearEventsWithContext:v4 andRefreshVariant:256 andHandler:v7];
}

void __71__MOOnboardingAndSettingsPersistence_postRefreshTriggerAfterOnboarding__block_invoke_220(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_new();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __71__MOOnboardingAndSettingsPersistence_postRefreshTriggerAfterOnboarding__block_invoke_2_221;
  v6[3] = &unk_10033DCD0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v2 _refreshEventsWithContext:v3 andRefreshVariant:256 andSoftKindFlag:0 andHandler:v6];
}

void __71__MOOnboardingAndSettingsPersistence_postRefreshTriggerAfterOnboarding__block_invoke_2_221(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_new();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __71__MOOnboardingAndSettingsPersistence_postRefreshTriggerAfterOnboarding__block_invoke_3;
  v6[3] = &unk_10033DCD0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v2 _purgeEventsWithContext:v3 andRefreshVariant:256 andHandler:v6];
}

void __71__MOOnboardingAndSettingsPersistence_postRefreshTriggerAfterOnboarding__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityOnboarding);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __71__MOOnboardingAndSettingsPersistence_postRefreshTriggerAfterOnboarding__block_invoke_3_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Onboarding refresh completed", v14, 2u);
  }

  [*(a1 + 32) finalizeClientTaskWithName:@"onboardingRefresh"];
  v6 = *(*(a1 + 40) + 80);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 getService:v8];

  [v9 registerDefaultRefreshActivity];
  [v9 registerFirstRefreshActivity];
  [v9 registerLightRefreshActivity];
  [v9 registerNotificationAvailabilityPredictionActivity];
  v10 = [*(a1 + 40) getOnboardingFlowCompletionStatus];
  v11 = [*(a1 + 40) defaultsManager];
  v12 = [NSNumber numberWithUnsignedInteger:v10];
  [v11 setObject:v12 forKey:@"OnboardingRefreshStatus"];

  [*(a1 + 32) scheduleMomentsUIFullProcessing];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.momentsd.onboarding-status-updated", 0, 0, 1u);
}

- (int64_t)_fetchSignificantLocationEnablementStatus
{
  Current = CFAbsoluteTimeGetCurrent();
  result = self->_cachedRoutineState;
  if (!result || ((v5 = self->_cachedRoutineStateTimestamp, Current >= v5) ? (v6 = Current <= v5 + 10.0) : (v6 = 0), !v6))
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Checking RT state...", buf, 2u);
    }

    v8 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v20 = self->_cachedRoutineState == 0;
      cachedRoutineStateTimestamp = self->_cachedRoutineStateTimestamp;
      *buf = 67109632;
      *v26 = v20;
      *&v26[4] = 1024;
      *&v26[6] = Current < cachedRoutineStateTimestamp;
      v27 = 1024;
      v28 = Current > cachedRoutineStateTimestamp + 10.0;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Conditions for checking RT state: %i,%i,%i", buf, 0x14u);
    }

    v9 = dispatch_group_create();
    dispatch_group_enter(v9);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = __79__MOOnboardingAndSettingsPersistence__fetchSignificantLocationEnablementStatus__block_invoke;
    v22[3] = &unk_10033FFD8;
    v22[4] = self;
    v24 = Current;
    v10 = v9;
    v23 = v10;
    v11 = objc_retainBlock(v22);
    if (+[MOPlatformInfo isInternalBuild](MOPlatformInfo, "isInternalBuild") && (-[MOOnboardingAndSettingsPersistence configManager](self, "configManager"), v12 = objc_claimAutoreleasedReturnValue(), [v12 getFloatSettingForKey:@"SettingsOverrideSignificantLocationMasterSwitchRetrievalDelay" withFallback:0.0], v14 = v13, v12, v14 > 0.0))
    {
      v15 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *v26 = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Delaying RT state retrieval by %f seconds...", buf, 0xCu);
      }

      v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v17 = dispatch_queue_create("routineStateRetrievalQueue", v16);

      v18 = dispatch_time(0, (v14 * 1000000000.0));
      dispatch_after(v18, v17, v11);
    }

    else
    {
      (v11[2])(v11);
    }

    v19 = dispatch_time(0, 3000000000);
    if (dispatch_group_wait(v10, v19))
    {
      [(MOOnboardingAndSettingsPersistence *)self _onRoutineStateUpdate:0 error:0 currentTime:1 hasTimedout:Current];
    }

    return self->_cachedRoutineState;
  }

  return result;
}

void __79__MOOnboardingAndSettingsPersistence__fetchSignificantLocationEnablementStatus__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) routineServiceManager];
  v3 = [v2 routineManager];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __79__MOOnboardingAndSettingsPersistence__fetchSignificantLocationEnablementStatus__block_invoke_2;
  v5[3] = &unk_10033FFB0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v7 = *(a1 + 48);
  v6 = v4;
  [v3 fetchRoutineStateWithHandler:v5];
}

void __79__MOOnboardingAndSettingsPersistence__fetchSignificantLocationEnablementStatus__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) _onRoutineStateUpdate:a2 error:a3 currentTime:0 hasTimedout:*(a1 + 48)];
  v4 = *(a1 + 40);

  dispatch_group_leave(v4);
}

- (void)_onRoutineStateUpdate:(int64_t)update error:(id)error currentTime:(double)time hasTimedout:(BOOL)timedout
{
  timedoutCopy = timedout;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (timedoutCopy)
  {
    v12 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v13 = [NSNumber numberWithInteger:update];
      [MOOnboardingAndSettingsPersistence _onRoutineStateUpdate:v13 error:buf currentTime:v12 hasTimedout:?];
    }

    goto LABEL_7;
  }

  if (errorCopy)
  {
    v12 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = [NSNumber numberWithInteger:update];
      [MOOnboardingAndSettingsPersistence _onRoutineStateUpdate:v14 error:errorCopy currentTime:buf hasTimedout:v12];
    }

    goto LABEL_7;
  }

  if (!update)
  {
    v12 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v20 = [NSNumber numberWithInteger:0];
      [MOOnboardingAndSettingsPersistence _onRoutineStateUpdate:v20 error:buf currentTime:v12 hasTimedout:?];
    }

LABEL_7:

    if (!selfCopy->_cachedRoutineState)
    {
      v15 = [(MOOnboardingAndSettingsPersistence *)selfCopy _updateCachedRoutineStateWithCurrentTime:time];
      if (timedoutCopy)
      {
        selfCopy->_cachedRoutineStateTimestamp = CFAbsoluteTimeGetCurrent();
      }

      if (v15)
      {
LABEL_25:
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.momentsd.event-streams-updated", 0, 0, 1u);
        goto LABEL_26;
      }
    }

    goto LABEL_17;
  }

  v16 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [NSNumber numberWithInteger:update];
    *buf = 138412546;
    v29 = v17;
    v30 = 2112;
    v31 = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Received RT state response with state: %@ and error: %@", buf, 0x16u);
  }

  if (selfCopy->_cachedRoutineState != update)
  {
    selfCopy->_cachedRoutineState = update;
    defaultsManager = [(MOOnboardingAndSettingsPersistence *)selfCopy defaultsManager];
    v22 = [NSNumber numberWithInteger:update];
    [defaultsManager setObject:v22 forKey:@"SettingsSignificantLocationMasterSwitchCache"];

    v23 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [NSNumber numberWithInteger:update];
      *buf = 138412290;
      v29 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Updated and persisted RT state: %@", buf, 0xCu);
    }

    selfCopy->_cachedRoutineStateTimestamp = time;
    goto LABEL_25;
  }

  selfCopy->_cachedRoutineStateTimestamp = time;
LABEL_17:
  v18 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = [NSNumber numberWithInteger:selfCopy->_cachedRoutineState];
    v26 = 138412290;
    v27 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Keeping cached RT state: %@", &v26, 0xCu);
  }

LABEL_26:
  objc_sync_exit(selfCopy);
}

- (BOOL)_updateCachedRoutineStateWithCurrentTime:(double)time
{
  defaultsManager = [(MOOnboardingAndSettingsPersistence *)self defaultsManager];
  v6 = [defaultsManager objectForKey:@"SettingsSignificantLocationMasterSwitchCache"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v7 = [v6 intValue], (v7 - 1) <= 1))
  {
    v8 = v7;
    self->_cachedRoutineState = v7;
    self->_cachedRoutineStateTimestamp = time;
    v9 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [NSNumber numberWithInteger:v8];
      v13 = 138412290;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Retrieved RT state from storage: %@", &v13, 0xCu);
    }

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_getFallbackStateForSetting_postlaunch:(unint64_t)setting_postlaunch
{
  getOnboardingFlowCompletionStatus = [(MOOnboardingAndSettingsPersistence *)self getOnboardingFlowCompletionStatus];
  v5 = getOnboardingFlowCompletionStatus < 4;
  if (setting_postlaunch > 7)
  {
    if (setting_postlaunch - 8 >= 2 && setting_postlaunch == 10)
    {
      v5 = getOnboardingFlowCompletionStatus < 4;
      v6 = getOnboardingFlowCompletionStatus & 0xF;
      v7 = 14;
      return v5 & (v7 >> v6);
    }

LABEL_7:
    LOBYTE(v8) = 0;
    return v8;
  }

  if (setting_postlaunch >= 7)
  {
    goto LABEL_7;
  }

  v6 = getOnboardingFlowCompletionStatus & 0xF;
  v7 = 12;
  return v5 & (v7 >> v6);
}

- (BOOL)_getStateForSetting_postlaunch:(unint64_t)setting_postlaunch
{
  if (setting_postlaunch == 11)
  {

    return [(MOOnboardingAndSettingsPersistence *)self fetchSignificantLocationEnablementStatus];
  }

  else
  {
    setting_postlaunchCopy = setting_postlaunch;
    if (setting_postlaunch == 8)
    {
      v5 = _mo_log_facility_get_os_log(&MOLogFacilityPermissions);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MOSettingDiscoverableByNearbyContacts is a disabled setting, will read from MOSettingNearbyPeople instead", v10, 2u);
      }

      setting_postlaunchCopy = 6;
    }

    v6 = [(MOOnboardingAndSettingsPersistence *)self _getSettingKey:setting_postlaunchCopy];
    if (v6)
    {
      configManager = [(MOOnboardingAndSettingsPersistence *)self configManager];
      v8 = [configManager getBoolSettingForKey:v6 withFallback:{-[MOOnboardingAndSettingsPersistence _getFallbackStateForSetting_postlaunch:](self, "_getFallbackStateForSetting_postlaunch:", setting_postlaunchCopy)}];

      if (setting_postlaunchCopy == 5)
      {
        v8 &= [(MOOnboardingAndSettingsPersistence *)self fetchSignificantLocationEnablementStatus];
      }
    }

    else
    {
      LOBYTE(v8) = 0;
    }

    return v8;
  }
}

- (BOOL)getStateForSettingFast:(unint64_t)fast
{
  if (fast == 11 || fast == 5)
  {
    if ([(MOOnboardingAndSettingsPersistence *)self _updateCachedRoutineStateWithCurrentTime:CFAbsoluteTimeGetCurrent()])
    {
      v5 = self->_cachedRoutineState == 2;
    }

    else
    {
      v5 = 0;
    }

    if (fast == 11)
    {
      v6 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [NSNumber numberWithInteger:self->_cachedRoutineState];
        *buf = 138412290;
        v20 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "(getStateForSettingFast) returning cached routine state, isRoutineEnabled=%@, triggering background cache refresh", buf, 0xCu);
      }

      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __61__MOOnboardingAndSettingsPersistence_getStateForSettingFast___block_invoke;
      block[3] = &unk_100335F40;
      block[4] = self;
      dispatch_async(queue, block);
    }

    else
    {
      v9 = [(MOOnboardingAndSettingsPersistence *)self _getSettingKey:fast];
      if (v9)
      {
        configManager = [(MOOnboardingAndSettingsPersistence *)self configManager];
        v11 = [configManager getBoolSettingForKey:v9 withFallback:{-[MOOnboardingAndSettingsPersistence _getFallbackStateForSetting_postlaunch:](self, "_getFallbackStateForSetting_postlaunch:", fast)}];

        v12 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [NSNumber numberWithInteger:self->_cachedRoutineState];
          v14 = [NSNumber numberWithBool:v11];
          *buf = 138412546;
          v20 = v13;
          v21 = 2112;
          v22 = v14;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "(getStateForSettingFast) returning cached location state, isRoutineEnabled=%@, locationSwitch=%@, triggering background cache refresh", buf, 0x16u);
        }

        v15 = self->_queue;
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = __61__MOOnboardingAndSettingsPersistence_getStateForSettingFast___block_invoke_235;
        v17[3] = &unk_100335F40;
        v17[4] = self;
        dispatch_async(v15, v17);
        v5 &= v11;
      }

      else
      {
        v5 = 0;
      }
    }

    return v5;
  }

  else
  {

    return [(MOOnboardingAndSettingsPersistence *)self getStateForSetting:?];
  }
}

- (void)postRefreshTriggerAfterSettingChange
{
  v3 = _mo_log_facility_get_os_log(&MOLogFacilityOnboarding);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "postRefreshTriggerAfterSettingChange", buf, 2u);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __74__MOOnboardingAndSettingsPersistence_postRefreshTriggerAfterSettingChange__block_invoke;
  v14[3] = &unk_100335F40;
  v14[4] = self;
  v4 = objc_retainBlock(v14);
  v5 = objc_autoreleasePoolPush();
  universe = [(MOOnboardingAndSettingsPersistence *)self universe];
  v7 = [universe getService:@"DaemonClient"];

  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __74__MOOnboardingAndSettingsPersistence_postRefreshTriggerAfterSettingChange__block_invoke_257;
  v11[3] = &unk_100336A58;
  v11[4] = self;
  v12 = v7;
  v9 = v4;
  v13 = v9;
  v10 = v7;
  dispatch_async(queue, v11);

  objc_autoreleasePoolPop(v5);
}

void __74__MOOnboardingAndSettingsPersistence_postRefreshTriggerAfterSettingChange__block_invoke(uint64_t a1)
{
  v2 = --*(*(a1 + 32) + 20);
  v3 = _mo_log_facility_get_os_log(&MOLogFacilitySettingsChange);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = *(*(a1 + 32) + 20);
      v11[0] = 67109120;
      v11[1] = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Settings change transaction release deferred (n=%i transaction holds)", v11, 8u);
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Settings change transaction release complete", v11, 2u);
    }

    v6 = *(a1 + 32);
    v7 = *(v6 + 32);
    *(v6 + 32) = 0;

    v8 = *(a1 + 32);
    v9 = v8[7];
    if (v9 == -1)
    {
      v10 = 0;
    }

    else
    {
      if (v9 != 1)
      {
        return;
      }

      v10 = 1;
    }

    [v8 _peopleAwarenessSubscribe:v10];
  }
}

void __74__MOOnboardingAndSettingsPersistence_postRefreshTriggerAfterSettingChange__block_invoke_257(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 32))
  {
    v3 = _mo_log_facility_get_os_log(&MOLogFacilitySettingsChange);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Settings change detected (first one), taking a transaction", buf, 2u);
    }

    v4 = os_transaction_create();
    v5 = *(a1 + 32);
    v6 = *(v5 + 32);
    *(v5 + 32) = v4;

    v2 = *(a1 + 32);
  }

  ++*(v2 + 16);
  ++*(*(a1 + 32) + 20);
  v7 = _mo_log_facility_get_os_log(&MOLogFacilitySettingsChange);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 16);
    LODWORD(v8) = *(v8 + 20);
    *buf = 67109632;
    v18 = v9;
    v19 = 1024;
    v20 = v8;
    v21 = 2048;
    v22 = 0x4024000000000000;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Settings change detected (n=%i changes, n=%i transaction holds), scheduling refresh in %lf seconds", buf, 0x18u);
  }

  v10 = dispatch_time(0, 10000000000);
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = *(v12 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __74__MOOnboardingAndSettingsPersistence_postRefreshTriggerAfterSettingChange__block_invoke_259;
  block[3] = &unk_100336A58;
  block[4] = v12;
  v15 = v11;
  v16 = *(a1 + 48);
  dispatch_after(v10, v13, block);
}

void __74__MOOnboardingAndSettingsPersistence_postRefreshTriggerAfterSettingChange__block_invoke_259(uint64_t a1)
{
  --*(*(a1 + 32) + 16);
  v2 = *(a1 + 32);
  if (*(v2 + 16))
  {
    v3 = dispatch_time(0, 5000000000);
    v4 = *(*(a1 + 32) + 8);
    v9 = [*(a1 + 48) copy];
    dispatch_after(v3, v4, v9);
  }

  else
  {
    if (*(v2 + 24) == 1)
    {
      [*(a1 + 40) triggerFeedbackAssistantFlow:@":framework-journalingsuggestions-settings" handler:&__block_literal_global_264];
      *(*(a1 + 32) + 24) = 0;
    }

    v5 = *(a1 + 40);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __74__MOOnboardingAndSettingsPersistence_postRefreshTriggerAfterSettingChange__block_invoke_3;
    v10[3] = &unk_100336A58;
    v6 = v5;
    v7 = *(a1 + 32);
    v11 = v6;
    v12 = v7;
    v13 = *(a1 + 48);
    [v6 scheduleClientTask:v10 withName:@"settingsChangePurge"];
    v8 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.momentsui"];
    [v8 removeObjectForKey:@"ProcessingLastSuccessfulRunDate"];
    [*(a1 + 40) scheduleMomentsUIFullProcessing];
  }
}

void __74__MOOnboardingAndSettingsPersistence_postRefreshTriggerAfterSettingChange__block_invoke_3(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilitySettingsChange);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Requesting settings change refresh", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = objc_opt_new();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __74__MOOnboardingAndSettingsPersistence_postRefreshTriggerAfterSettingChange__block_invoke_265;
  v8[3] = &unk_100340020;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = v5;
  v10 = v6;
  v11 = v7;
  [v3 _purgeEventsWithContext:v4 andRefreshVariant:336 andHandler:v8];
}

void __74__MOOnboardingAndSettingsPersistence_postRefreshTriggerAfterSettingChange__block_invoke_265(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilitySettingsChange);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __74__MOOnboardingAndSettingsPersistence_postRefreshTriggerAfterSettingChange__block_invoke_265_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v10 = 134217984;
    v11 = 0x4014000000000000;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Settings change refresh completed, scheduling transaction release attempt in %lf seconds", &v10, 0xCu);
  }

  [*(a1 + 32) finalizeClientTaskWithName:@"settingsChangePurge"];
  v6 = dispatch_time(0, 5000000000);
  v7 = *(a1 + 48);
  v8 = *(*(a1 + 40) + 8);
  v9 = [v7 copy];
  dispatch_after(v6, v8, v9);
}

- (unint64_t)getCollectAndComputeAuthorization
{
  configManager = [(MOOnboardingAndSettingsPersistence *)self configManager];
  LODWORD(v4) = 1256029184;
  [configManager getFloatSettingForKey:@"ProcessingDurationForApplicationsWithDataAccess" withFallback:v4];
  v6 = v5;

  configManager2 = [(MOOnboardingAndSettingsPersistence *)self configManager];
  LODWORD(v8) = 1242802176;
  [configManager2 getFloatSettingForKey:@"ProcessingDurationForClientsWithDataAccess" withFallback:v8];
  v10 = v9;

  dataAccessManager = [(MOOnboardingAndSettingsPersistence *)self dataAccessManager];
  v12 = [dataAccessManager hasAnyApplicationsWithDataAccessWithinTimeInterval:v6];

  dataAccessManager2 = [(MOOnboardingAndSettingsPersistence *)self dataAccessManager];
  v14 = [dataAccessManager2 hasAnyClientsWithDataAccessWithinTimeInterval:v10];

  v15 = _mo_log_facility_get_os_log(&MOLogFacilityOnboarding);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [MOOnboardingAndSettingsPersistence getCollectAndComputeAuthorization];
  }

  if (v14)
  {
    v16 = _mo_log_facility_get_os_log(&MOLogFacilityOnboarding);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [MOOnboardingAndSettingsPersistence getCollectAndComputeAuthorization];
    }

    v17 = 2;
  }

  else
  {
    if (!v12)
    {
      goto LABEL_12;
    }

    v18 = _mo_log_facility_get_os_log(&MOLogFacilityOnboarding);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [MOOnboardingAndSettingsPersistence getCollectAndComputeAuthorization];
    }

    v19 = [(MOOnboardingAndSettingsPersistence *)self getOnboardingFlowCompletionStatus]- 1;
    if (v19 <= 2)
    {
      v17 = qword_1003235C0[v19];
    }

    else
    {
LABEL_12:
      v17 = 0;
    }
  }

  v20 = _mo_log_facility_get_os_log(&MOLogFacilityOnboarding);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = [NSNumber numberWithUnsignedInteger:v17];
    v23 = 138412290;
    v24 = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Retrieved collect and compute authorization %@", &v23, 0xCu);
  }

  return v17;
}

- (unint64_t)determineOnboardingDurationBinRange
{
  defaultsManager = [(MOOnboardingAndSettingsPersistence *)self defaultsManager];
  v3 = [defaultsManager objectForKey:@"OnboardingDate"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [MOOnboardingAnalyticsUtilities onboardingDurationBinFrom:v3];
  }

  else
  {
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityOnboarding);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [MOOnboardingAndSettingsPersistence determineOnboardingDurationBinRange];
    }

    v4 = 0;
  }

  return v4;
}

- (id)getSnapshotDictionaryForAnalytics
{
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  configManager = [(MOOnboardingAndSettingsPersistence *)self configManager];
  LODWORD(v4) = 1242802176;
  [configManager getFloatSettingForKey:@"AnalyticsOverrideAppUsageLookbackWindow" withFallback:v4];
  v6 = v5;

  dataAccessManager = [(MOOnboardingAndSettingsPersistence *)self dataAccessManager];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = __71__MOOnboardingAndSettingsPersistence_getSnapshotDictionaryForAnalytics__block_invoke;
  v36[3] = &unk_100340048;
  *&v36[6] = v6;
  v36[4] = &v41;
  v36[5] = &v37;
  [dataAccessManager getApplicationsWithDataAccess:v36];

  v27 = [[LSApplicationRecord alloc] initWithBundleIdentifier:@"com.apple.journal" allowPlaceholder:0 error:0];
  fetchScreenTimeEnablementStatus = [(MOOnboardingAndSettingsPersistence *)self fetchScreenTimeEnablementStatus];
  universe = [(MOOnboardingAndSettingsPersistence *)self universe];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v35 = [universe getService:v11];
  v23 = fetchScreenTimeEnablementStatus;

  v45[0] = @"onboardingStatus";
  v34 = [NSNumber numberWithUnsignedInteger:[(MOOnboardingAndSettingsPersistence *)self getOnboardingFlowCompletionStatus]];
  v46[0] = v34;
  v45[1] = @"settingSwitchActivity";
  v33 = [NSNumber numberWithBool:[(MOOnboardingAndSettingsPersistence *)self getStateForSetting:1]];
  v46[1] = v33;
  v45[2] = @"settingSwitchCommunication";
  v32 = [NSNumber numberWithBool:[(MOOnboardingAndSettingsPersistence *)self getStateForSetting:3]];
  v46[2] = v32;
  v45[3] = @"settingSwitchLocation";
  v31 = [NSNumber numberWithBool:[(MOOnboardingAndSettingsPersistence *)self getStateForSetting:5]];
  v46[3] = v31;
  v45[4] = @"settingSwitchMedia";
  v30 = [NSNumber numberWithBool:[(MOOnboardingAndSettingsPersistence *)self getStateForSetting:2]];
  v46[4] = v30;
  v45[5] = @"settingSwitchPeople";
  v29 = [NSNumber numberWithBool:[(MOOnboardingAndSettingsPersistence *)self getStateForSetting:6]];
  v46[5] = v29;
  v45[6] = @"settingSwitchPhoto";
  v28 = [NSNumber numberWithBool:[(MOOnboardingAndSettingsPersistence *)self getStateForSetting:4]];
  v46[6] = v28;
  v45[7] = @"settingSwitchStateOfMind";
  v26 = [NSNumber numberWithBool:[(MOOnboardingAndSettingsPersistence *)self getStateForSetting:9]];
  v46[7] = v26;
  v45[8] = @"settingSwitchReflection";
  v25 = [NSNumber numberWithBool:[(MOOnboardingAndSettingsPersistence *)self getStateForSetting:10]];
  v46[8] = v25;
  v45[9] = @"settingBroaderSwitchLocation";
  v24 = [NSNumber numberWithBool:[(MOOnboardingAndSettingsPersistence *)self fetchSignificantLocationEnablementStatus]];
  v46[9] = v24;
  v45[10] = @"appNotificationsEnabled";
  v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v35 getAppNotificationAuthorizationStatus]);
  v46[10] = v12;
  v45[11] = @"systemNotificationsEnabled";
  v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v35 getSystemNotificationAuthorizationStatus]);
  v46[11] = v13;
  v45[12] = @"appIsJournalAppUsed";
  v14 = [NSNumber numberWithBool:*(v42 + 24)];
  v46[12] = v14;
  v45[13] = @"appOtherJournalAppUsed";
  v15 = [NSNumber numberWithUnsignedLong:v38[3]];
  v46[13] = v15;
  v45[14] = @"journalConfigSkipSuggestions";
  v16 = [NSNumber numberWithBool:[JournalAppSettingsUtilities BOOLForKey:@"SKIP_JOURNALING_SUGGESTIONS"]];
  v46[14] = v16;
  v45[15] = @"journalConfigLockJournal";
  v17 = [NSNumber numberWithBool:[JournalAppSettingsUtilities BOOLForKey:@"LOCK_JOURNAL"]];
  v46[15] = v17;
  v45[16] = @"journalIsInstalled";
  v18 = [NSNumber numberWithBool:v27 != 0];
  v46[16] = v18;
  v45[17] = @"onboardingDurationBin";
  v19 = [NSNumber numberWithUnsignedInteger:[(MOOnboardingAndSettingsPersistence *)self determineOnboardingDurationBinRange]];
  v46[17] = v19;
  v45[18] = @"screenTimeState";
  v20 = [NSNumber numberWithUnsignedInteger:v23];
  v46[18] = v20;
  v21 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:19];

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);

  return v21;
}

void __71__MOOnboardingAndSettingsPersistence_getSnapshotDictionaryForAnalytics__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (!a3)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        v10 = 0;
        do
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * v10);
          Current = CFAbsoluteTimeGetCurrent();
          v13 = [v6 objectForKey:v11];
          [v13 doubleValue];
          v15 = Current - v14;
          v16 = *(a1 + 48);

          if (v15 < v16)
          {
            if ([v11 isEqualToString:@"com.apple.journal"])
            {
              *(*(*(a1 + 32) + 8) + 24) = 1;
            }

            else if (([v11 isEqualToString:&stru_1003416B0] & 1) == 0)
            {
              ++*(*(*(a1 + 40) + 8) + 24);
            }
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }
  }
}

- (void)publishOnboardingStatusAnalytics
{
  OUTLINED_FUNCTION_1();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "Publishing onboarding status for analytics %@ : %@", v2, 0x16u);
}

- (unint64_t)_MOStatusFromSTStatus:(int64_t)status
{
  v3 = 2;
  if (status != 1)
  {
    v3 = 3;
  }

  if (status)
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

- (unint64_t)fetchScreenTimeEnablementStatus
{
  v3 = dispatch_semaphore_create(0);
  v22 = 0;
  v23[0] = &v22;
  v23[1] = 0x3032000000;
  v23[2] = __Block_byref_object_copy__45;
  v23[3] = __Block_byref_object_dispose__45;
  v24 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v4 = objc_alloc_init(STManagementState);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __69__MOOnboardingAndSettingsPersistence_fetchScreenTimeEnablementStatus__block_invoke;
  v14[3] = &unk_100340070;
  v16 = &v18;
  v17 = &v22;
  v5 = v3;
  v15 = v5;
  [v4 screenTimeStateWithCompletionHandler:v14];
  v6 = [NSString stringWithFormat:@"%@ - [%s] - %d - %s", @"MOSemaphoreWait", "/Library/Caches/com.apple.xbs/Sources/Moments/momentsd/Shared/Core/MOOnboardingAndSettingsPersistence.m", 951, "[MOOnboardingAndSettingsPersistence fetchScreenTimeEnablementStatus]"];
  v13 = 0;
  v7 = MOSemaphoreWaitAndFaultIfTimeoutDefaultTimeout_Internal(v5, &v13, v6);
  v8 = v13;
  if (!v7)
  {
    v9 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [MOOnboardingAndSettingsPersistence fetchScreenTimeEnablementStatus];
    }
  }

  if (*(v23[0] + 40))
  {
    v10 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(MOOnboardingAndSettingsPersistence *)v23 fetchScreenTimeEnablementStatus];
    }

    v11 = 0;
  }

  else
  {
    v11 = [(MOOnboardingAndSettingsPersistence *)self _MOStatusFromSTStatus:v19[3]];
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  return v11;
}

void __69__MOOnboardingAndSettingsPersistence_fetchScreenTimeEnablementStatus__block_invoke(uint64_t a1, uint64_t a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)setOnboardingFlowCompletionStatus:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setOnboardingFlowCompletionStatus:(NSObject *)a3 .cold.2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = [NSNumber numberWithUnsignedInteger:a1];
  v6 = [NSNumber numberWithUnsignedInteger:a2];
  OUTLINED_FUNCTION_4_3();
  v9 = v7;
  _os_log_fault_impl(&_mh_execute_header, a3, OS_LOG_TYPE_FAULT, "Invalid onboarding transtion requested from %@ -> %@", v8, 0x16u);
}

void __71__MOOnboardingAndSettingsPersistence_postRefreshTriggerAfterOnboarding__block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_onRoutineStateUpdate:(void *)a1 error:(uint64_t)a2 currentTime:(uint8_t *)buf hasTimedout:(os_log_t)log .cold.1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Received RT state response with state: %@ and error: %@", buf, 0x16u);
}

- (void)_onRoutineStateUpdate:(os_log_t)log error:currentTime:hasTimedout:.cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Unexpected RT state response with state: %@ and no error", buf, 0xCu);
}

- (void)_onRoutineStateUpdate:(os_log_t)log error:currentTime:hasTimedout:.cold.3(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Timedout RT state response with state: %@ and no error", buf, 0xCu);
}

- (void)setState:forSetting:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setState:forSetting:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setState:(NSObject *)a3 forSetting:.cold.3(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = [NSNumber numberWithUnsignedInteger:a1];
  v6 = [NSNumber numberWithBool:1];
  v7 = [NSNumber numberWithUnsignedInteger:a2];
  OUTLINED_FUNCTION_4_3();
  v11 = v6;
  v12 = v8;
  v13 = v9;
  _os_log_fault_impl(&_mh_execute_header, a3, OS_LOG_TYPE_FAULT, "Trying to set setting %@ to state %@ while onboarding status is %@ - will skip setting earliest start dates until onboarding is completed", v10, 0x20u);
}

void __74__MOOnboardingAndSettingsPersistence_postRefreshTriggerAfterSettingChange__block_invoke_265_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)determineOnboardingDurationBinRange
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)fetchScreenTimeEnablementStatus
{
  v6 = *(*self + 40);
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

@end