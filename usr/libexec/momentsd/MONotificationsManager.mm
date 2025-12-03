@interface MONotificationsManager
- (MONotificationsManager)initWithUniverse:(id)universe;
- (id)_getCurrentAppDefaultActionURL;
- (id)_getFallBackTimeForNotification;
- (id)getBiomeContextDictionaryWithUserInfo:(id)info;
- (int64_t)getNotificationScheduledDeliverySetting;
- (unint64_t)_MOStatusFromUNStatus:(int64_t)status;
- (unint64_t)getAppNotificationAuthorizationStatus;
- (unint64_t)getSystemNotificationAuthorizationStatus;
- (void)_generateAvailabilityPredictionsAndRegisterTimerWithHandler:(id)handler;
- (void)_generateAvailabilityPredictionsWithHandler:(id)handler;
- (void)_recreateNotificationRealtimeCheckTimer;
- (void)checkAuthorizationStatusForNotificationCenter:(id)center completion:(id)completion;
- (void)fetchEligiblePOICategoriesForNotificationsWithHandler:(id)handler;
- (void)generateAvailabilityPredictionsAndRegisterTimerWithHandler:(id)handler;
- (void)generateAvailabilityPredictionsWithHandler:(id)handler;
- (void)setUpNotificationTimerWithFireDate:(id)date;
- (void)submitEngagementHistoryUpdateWithEvent:(id)event userInfo:(id)info;
@end

@implementation MONotificationsManager

- (MONotificationsManager)initWithUniverse:(id)universe
{
  universeCopy = universe;
  v53.receiver = self;
  v53.super_class = MONotificationsManager;
  v5 = [(MONotificationsManager *)&v53 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("MONotificationsManager", v6);
    queue = v5->_queue;
    v5->_queue = v7;

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [universeCopy getService:v10];
    defaultsManager = v5->_defaultsManager;
    v5->_defaultsManager = v11;

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [universeCopy getService:v14];
    configManager = v5->_configManager;
    v5->_configManager = v15;

    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = [universeCopy getService:v18];
    engagementHistoryManager = v5->_engagementHistoryManager;
    v5->_engagementHistoryManager = v19;

    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v23 = [universeCopy getService:v22];
    eventBundleManager = v5->_eventBundleManager;
    v5->_eventBundleManager = v23;

    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v27 = [universeCopy getService:v26];
    eventManager = v5->_eventManager;
    v5->_eventManager = v27;

    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    v31 = [universeCopy getService:v30];
    availabilityPredictionManager = v5->_availabilityPredictionManager;
    v5->_availabilityPredictionManager = v31;

    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    v35 = [universeCopy getService:v34];
    categoryStore = v5->_categoryStore;
    v5->_categoryStore = v35;

    v37 = objc_opt_class();
    v38 = NSStringFromClass(v37);
    v39 = [universeCopy getService:v38];
    onboardingAndSettingsPersistence = v5->_onboardingAndSettingsPersistence;
    v5->_onboardingAndSettingsPersistence = v39;

    v41 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.momentsd.MOUserNotifications" queue:v5->_queue];
    userNotificationCenterSystemBranded = v5->_userNotificationCenterSystemBranded;
    v5->_userNotificationCenterSystemBranded = v41;

    v43 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.journal" queue:v5->_queue];
    userNotificationCenterAppBranded = v5->_userNotificationCenterAppBranded;
    v5->_userNotificationCenterAppBranded = v43;

    v45 = objc_alloc_init(NSDateFormatter);
    [(NSDateFormatter *)v45 setDateFormat:@"yyyy-MM-dd HH:mm"];
    dateFormatter = v5->_dateFormatter;
    v5->_dateFormatter = v45;
    v47 = v45;

    v48 = [MONotificationsReporter alloc];
    defaultsManager = [(MONotificationsManager *)v5 defaultsManager];
    v50 = [(MONotificationsReporter *)v48 init:defaultsManager];
    reporter = v5->_reporter;
    v5->_reporter = v50;

    [(MONotificationsManager *)v5 _recreateNotificationRealtimeCheckTimer];
  }

  return v5;
}

- (id)_getCurrentAppDefaultActionURL
{
  configManager = [(MONotificationsManager *)self configManager];
  v3 = [configManager getStringSettingForKey:@"UserNotificationAppURL" withFallback:@"moments://canvas"];

  if ([v3 length])
  {
    v4 = [[NSURL alloc] initWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)checkAuthorizationStatusForNotificationCenter:(id)center completion:(id)completion
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __83__MONotificationsManager_checkAuthorizationStatusForNotificationCenter_completion___block_invoke;
  v6[3] = &unk_10033C508;
  completionCopy = completion;
  v5 = completionCopy;
  [center getNotificationSettingsWithCompletionHandler:v6];
}

uint64_t __83__MONotificationsManager_checkAuthorizationStatusForNotificationCenter_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 authorizationStatus];
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityNotificationManager);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __83__MONotificationsManager_checkAuthorizationStatusForNotificationCenter_completion___block_invoke_cold_1();
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), v3 > 1, v3);
}

- (unint64_t)_MOStatusFromUNStatus:(int64_t)status
{
  if ((status - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return status;
  }
}

- (unint64_t)getAppNotificationAuthorizationStatus
{
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  userNotificationCenterAppBranded = [(MONotificationsManager *)self userNotificationCenterAppBranded];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __63__MONotificationsManager_getAppNotificationAuthorizationStatus__block_invoke;
  v9[3] = &unk_10033C530;
  v11 = &v12;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [(MONotificationsManager *)self checkAuthorizationStatusForNotificationCenter:userNotificationCenterAppBranded completion:v9];

  v6 = dispatch_time(0, 3000000000);
  dispatch_group_wait(v5, v6);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __63__MONotificationsManager_getAppNotificationAuthorizationStatus__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _MOStatusFromUNStatus:?];
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

- (unint64_t)getSystemNotificationAuthorizationStatus
{
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  userNotificationCenterSystemBranded = [(MONotificationsManager *)self userNotificationCenterSystemBranded];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __66__MONotificationsManager_getSystemNotificationAuthorizationStatus__block_invoke;
  v9[3] = &unk_10033C530;
  v11 = &v12;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [(MONotificationsManager *)self checkAuthorizationStatusForNotificationCenter:userNotificationCenterSystemBranded completion:v9];

  v6 = dispatch_time(0, 3000000000);
  dispatch_group_wait(v5, v6);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __66__MONotificationsManager_getSystemNotificationAuthorizationStatus__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _MOStatusFromUNStatus:?];
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

- (int64_t)getNotificationScheduledDeliverySetting
{
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  userNotificationCenterSystemBranded = [(MONotificationsManager *)self userNotificationCenterSystemBranded];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __65__MONotificationsManager_getNotificationScheduledDeliverySetting__block_invoke;
  v9[3] = &unk_10033C558;
  v11 = &v12;
  v5 = v3;
  v10 = v5;
  [userNotificationCenterSystemBranded getNotificationSettingsWithCompletionHandler:v9];

  v6 = dispatch_time(0, 3000000000);
  dispatch_group_wait(v5, v6);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __65__MONotificationsManager_getNotificationScheduledDeliverySetting__block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 24) = [a2 scheduledDeliverySetting];
  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

- (id)getBiomeContextDictionaryWithUserInfo:(id)info
{
  infoCopy = info;
  v4 = objc_opt_new();
  [v4 setObject:@"com.apple.momentsd.MOUserNotifications" forKey:@"clientIdentifier"];
  v5 = [infoCopy objectForKey:@"numSuggestionInNotification"];
  if (v5)
  {
    [v4 setObject:v5 forKey:@"numSuggestionInNotification"];
  }

  v6 = [infoCopy objectForKey:@"postingDate"];
  if (v6)
  {
    [v4 setObject:v6 forKey:@"postingDate"];
  }

  return v4;
}

- (void)submitEngagementHistoryUpdateWithEvent:(id)event userInfo:(id)info
{
  eventCopy = event;
  infoCopy = info;
  v8 = [infoCopy objectForKey:@"bundleID"];
  if (v8)
  {
    onboardingAndSettingsPersistence = [(MONotificationsManager *)self onboardingAndSettingsPersistence];
    getSnapshotDictionaryForAnalytics = [onboardingAndSettingsPersistence getSnapshotDictionaryForAnalytics];

    v11 = [[NSUUID alloc] initWithUUIDString:v8];
    v12 = [MOEventBundleFetchOptions alloc];
    v21 = v11;
    v13 = [NSArray arrayWithObjects:&v21 count:1];
    v14 = [(MOEventBundleFetchOptions *)v12 initWithIdentifiers:v13 ascending:0 filterBundle:0];

    eventBundleManager = [(MONotificationsManager *)self eventBundleManager];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __74__MONotificationsManager_submitEngagementHistoryUpdateWithEvent_userInfo___block_invoke;
    v17[3] = &unk_10033C580;
    v17[4] = self;
    v18 = infoCopy;
    v19 = eventCopy;
    v20 = getSnapshotDictionaryForAnalytics;
    v16 = getSnapshotDictionaryForAnalytics;
    [eventBundleManager fetchEventBundlesWithOptions:v14 CompletionHandler:v17];
  }
}

void __74__MONotificationsManager_submitEngagementHistoryUpdateWithEvent_userInfo___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  if ([v9 count])
  {
    v3 = [*(a1 + 32) getBiomeContextDictionaryWithUserInfo:*(a1 + 40)];
    [v3 setObject:v9 forKey:@"eventBundles"];
    v4 = [*(a1 + 32) configManager];
    v5 = [v4 getTrialExperimentIdentifiers];

    v6 = [*(a1 + 32) engagementHistoryManager];
    v7 = *(a1 + 48);
    v8 = +[NSDate now];
    [v6 didEngagementEventPosted:v7 withBundles:v9 timestamp:v8 withContext:v3 withTrialExperimentIDs:v5 withOnboardingStatus:*(a1 + 56)];
  }
}

- (void)generateAvailabilityPredictionsWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "NotificationAvailabilityPredictionWrapper", "", buf, 2u);
  }

  v6 = [[MOPerformanceMeasurement alloc] initWithName:@"NotificationAvailabilityPredictionWrapper" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v6 startSession];
  queue = [(MONotificationsManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __69__MONotificationsManager_generateAvailabilityPredictionsWithHandler___block_invoke;
  block[3] = &unk_10033BF58;
  v11 = v6;
  v12 = handlerCopy;
  block[4] = self;
  v8 = v6;
  v9 = handlerCopy;
  dispatch_async(queue, block);
}

void __69__MONotificationsManager_generateAvailabilityPredictionsWithHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __69__MONotificationsManager_generateAvailabilityPredictionsWithHandler___block_invoke_2;
  v3[3] = &unk_10033B210;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  [v2 _generateAvailabilityPredictionsWithHandler:v3];
}

id __69__MONotificationsManager_generateAvailabilityPredictionsWithHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v2))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_END, 1uLL, "NotificationAvailabilityPredictionWrapper", "", v4, 2u);
  }

  return [*(a1 + 32) endSession];
}

- (void)_generateAvailabilityPredictionsWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityNotificationManager);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[GenerateAvailabilityPredictions] Starting availability prediction pipeline", buf, 2u);
  }

  v6 = +[NSDate date];
  configManager = [(MONotificationsManager *)self configManager];
  LODWORD(v8) = 1242802176;
  [configManager getFloatSettingForKey:@"NotificationAvailabilityPredictionInputTimeWindow" withFallback:v8];
  v10 = [v6 dateByAddingTimeInterval:-v9];

  engagementHistoryManager = [(MONotificationsManager *)self engagementHistoryManager];
  v30 = 0;
  v12 = [engagementHistoryManager fetchSuggestionEngagementLightEventsWithTypes:&off_10036DC38 fromStartDate:v10 toEndDate:v6 withError:&v30];
  v13 = v30;

  if (v13)
  {
    v14 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [MONotificationsManager _generateAvailabilityPredictionsWithHandler:];
    }

    handlerCopy[2](handlerCopy, v13);
  }

  else
  {
    engagementHistoryManager2 = [(MONotificationsManager *)self engagementHistoryManager];
    v29 = 0;
    v16 = [engagementHistoryManager2 fetchAppEntryEngagementLightEventsWithTypes:&off_10036DC50 fromStartDate:v10 toEndDate:v6 withError:&v29];
    v17 = v29;

    if (v17)
    {
      v18 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [MONotificationsManager _generateAvailabilityPredictionsWithHandler:];
      }

      handlerCopy[2](handlerCopy, v17);
    }

    else
    {
      v21 = [[NSDateInterval alloc] initWithStartDate:v10 endDate:v6];
      v19 = [[MOEventFetchOptions alloc] initWithDateInterval:v21 ascending:1 categories:&off_10036DC68 limit:0];
      eventManager = [(MONotificationsManager *)self eventManager];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = __70__MONotificationsManager__generateAvailabilityPredictionsWithHandler___block_invoke;
      v22[3] = &unk_100337828;
      v28 = handlerCopy;
      v23 = v10;
      v24 = v6;
      selfCopy = self;
      v26 = v12;
      v27 = v16;
      [eventManager fetchEventsWithOptions:v19 CompletionHandler:v22];
    }
  }
}

void __70__MONotificationsManager__generateAvailabilityPredictionsWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __70__MONotificationsManager__generateAvailabilityPredictionsWithHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v8 = [NSPredicate predicateWithFormat:@"(provider != %d)", 5];
    v9 = [v5 filteredArrayUsingPredicate:v8];

    v10 = [[NSDateInterval alloc] initWithStartDate:*(a1 + 32) endDate:*(a1 + 40)];
    v11 = [[MOEventBundleFetchOptions alloc] initWithDateInterval:v10 ascending:1 limit:0 includeDeletedBundles:0 skipRanking:1];
    v12 = [*(a1 + 48) eventBundleManager];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __70__MONotificationsManager__generateAvailabilityPredictionsWithHandler___block_invoke_619;
    v17[3] = &unk_10033C5D0;
    v13 = *(a1 + 72);
    v5 = v9;
    v18 = v5;
    v16 = *(a1 + 48);
    v14 = *(&v16 + 1);
    *&v15 = *(a1 + 64);
    *(&v15 + 1) = v13;
    v19 = v16;
    v20 = v15;
    [v12 fetchEventBundlesWithOptions:v11 CompletionHandler:v17];
  }
}

void __70__MONotificationsManager__generateAvailabilityPredictionsWithHandler___block_invoke_619(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __70__MONotificationsManager__generateAvailabilityPredictionsWithHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v22 = v5;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v21 = a1;
    v8 = *(a1 + 32);
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          v14 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = [v13 eventIdentifier];
            v16 = [v13 category];
            *buf = 138412546;
            v30 = v15;
            v31 = 2048;
            v32 = v16;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Fetched event: eventID %@ category %lu", buf, 0x16u);
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v10);
    }

    v17 = [*(a1 + 40) availabilityPredictionManager];
    v18 = *(a1 + 48);
    v19 = *(v21 + 56);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = __70__MONotificationsManager__generateAvailabilityPredictionsWithHandler___block_invoke_620;
    v23[3] = &unk_10033C5A8;
    v20 = *(v21 + 32);
    v23[4] = *(v21 + 40);
    v24 = *(v21 + 64);
    v5 = v22;
    [v17 predictUserAvailabilityWithEvents:v20 andBundles:v22 andSuggestionEngagementEvents:v18 andAppEntryEngagementEvents:v19 availabilityWithDowntimeHandler:v23];

    v6 = 0;
  }
}

void __70__MONotificationsManager__generateAvailabilityPredictionsWithHandler___block_invoke_620(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = _mo_log_facility_get_os_log(&MOLogFacilityNotificationManager);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __70__MONotificationsManager__generateAvailabilityPredictionsWithHandler___block_invoke_620_cold_1();
    }
  }

  else
  {
    [*(a1 + 32) setPredictionArray:a2];
    [*(a1 + 32) setDowntimeDictionary:v7];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)generateAvailabilityPredictionsAndRegisterTimerWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "NotificationPredictionAndTimerWrapper", "", buf, 2u);
  }

  v6 = [[MOPerformanceMeasurement alloc] initWithName:@"NotificationPredictionAndTimerWrapper" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v6 startSession];
  queue = [(MONotificationsManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __85__MONotificationsManager_generateAvailabilityPredictionsAndRegisterTimerWithHandler___block_invoke;
  block[3] = &unk_10033BF58;
  v11 = v6;
  v12 = handlerCopy;
  block[4] = self;
  v8 = v6;
  v9 = handlerCopy;
  dispatch_async(queue, block);
}

void __85__MONotificationsManager_generateAvailabilityPredictionsAndRegisterTimerWithHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __85__MONotificationsManager_generateAvailabilityPredictionsAndRegisterTimerWithHandler___block_invoke_2;
  v3[3] = &unk_10033B210;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  [v2 _generateAvailabilityPredictionsAndRegisterTimerWithHandler:v3];
}

id __85__MONotificationsManager_generateAvailabilityPredictionsAndRegisterTimerWithHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v2))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_END, 1uLL, "NotificationPredictionAndTimerWrapper", "", v4, 2u);
  }

  return [*(a1 + 32) endSession];
}

- (void)_generateAvailabilityPredictionsAndRegisterTimerWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(MONotificationsManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __86__MONotificationsManager__generateAvailabilityPredictionsAndRegisterTimerWithHandler___block_invoke;
  v7[3] = &unk_100337B48;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __86__MONotificationsManager__generateAvailabilityPredictionsAndRegisterTimerWithHandler___block_invoke(uint64_t a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __86__MONotificationsManager__generateAvailabilityPredictionsAndRegisterTimerWithHandler___block_invoke_2;
  v4[3] = &unk_10033B210;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 _generateAvailabilityPredictionsWithHandler:v4];
}

void __86__MONotificationsManager__generateAvailabilityPredictionsAndRegisterTimerWithHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) reporter];
  [v2 freshenNotificationsReporterIdentification];

  v3 = [*(a1 + 32) reporter];
  v4 = [*(a1 + 32) predictionArray];
  [v3 unpackPredictions:v4];

  v5 = [*(a1 + 32) reporter];
  v6 = [*(a1 + 32) downtimeDictionary];
  [v5 unpackDowntimeDictionary:v6];

  v7 = _mo_log_facility_get_os_log(&MOLogFacilityNotificationManager);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [*(a1 + 32) downtimeDictionary];
    v34 = 138412290;
    v35 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, " reported downtime dictionary: %@", &v34, 0xCu);
  }

  v9 = [*(a1 + 32) onboardingAndSettingsPersistence];
  v10 = [v9 getSnapshotDictionaryForAnalytics];

  v11 = [*(a1 + 32) reporter];
  [v11 setOnboardingStatesFromDictionary:v10];

  v12 = [*(a1 + 32) defaultsManager];
  v13 = [v12 objectForKey:@"AvailabilityPredictionOptimalDate"];

  v14 = _mo_log_facility_get_os_log(&MOLogFacilityNotificationManager);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v34 = 138412290;
    v35 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "_getNotificationScheduleDate,  %@", &v34, 0xCu);
  }

  if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  v16 = [*(a1 + 32) reporter];
  v17 = [v16 report];
  [v17 setObject:v15 forKeyedSubscript:@"proposedPredictionDate"];

  if (v15)
  {
    v18 = v15;
    v19 = 1;
  }

  else
  {
    v18 = [*(a1 + 32) _getFallBackTimeForNotification];
    v19 = 2;
  }

  v20 = +[NSDate now];
  v21 = [v18 isAfterDate:v20];

  if (!v21)
  {
    v30 = _mo_log_facility_get_os_log(&MOLogFacilityNotificationManager);
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_INFO);
    if (v15)
    {
      if (!v31)
      {
        goto LABEL_30;
      }

      LOWORD(v34) = 0;
      v32 = "prediction time is in the past so no need to set up timer";
    }

    else
    {
      if (!v31)
      {
        goto LABEL_30;
      }

      LOWORD(v34) = 0;
      v32 = "fallback time is in the past so no need to set up timer";
    }

    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, v32, &v34, 2u);
    goto LABEL_30;
  }

  if (!v15)
  {
    v22 = _mo_log_facility_get_os_log(&MOLogFacilityNotificationManager);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      LOWORD(v34) = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "prediction time is nil so set up a timer with fall back time", &v34, 2u);
    }
  }

  v23 = [*(a1 + 32) reporter];
  v24 = [v23 report];
  [v24 setObject:v18 forKeyedSubscript:@"proposedFireDate"];

  v25 = [NSNumber numberWithUnsignedInteger:v19];
  v26 = [*(a1 + 32) reporter];
  v27 = [v26 report];
  [v27 setObject:v25 forKeyedSubscript:@"proposedFireDateSource"];

  v28 = [*(a1 + 32) reporter];
  [v28 writeReportWithMessage:@"reporting availability predictions"];

  v29 = [v10 objectForKeyedSubscript:@"onboardingStatus"];
  v30 = v29;
  if (v29 && ([v29 intValue]== 2 || [v30 intValue]== 3))
  {
    [*(a1 + 32) setUpNotificationTimerWithFireDate:v18];
  }

  else
  {
    v33 = _mo_log_facility_get_os_log(&MOLogFacilityNotificationManager);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      LOWORD(v34) = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "User is not onboarded to JS, avoid timer setup.", &v34, 2u);
    }
  }

LABEL_30:
}

- (void)_recreateNotificationRealtimeCheckTimer
{
  defaultsManager = [(MONotificationsManager *)self defaultsManager];
  v4 = [defaultsManager objectForKey:@"NotificationRealTimeCheckAlarmFireDate"];

  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    [(MONotificationsManager *)self setUpNotificationTimerWithFireDate:v5];
    v6 = _mo_log_facility_get_os_log(&MOLogFacilityNotificationManager);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "recreate Notification Realtime Check Timer with date from defaults %@", &v7, 0xCu);
    }
  }

  else
  {
    v6 = _mo_log_facility_get_os_log(&MOLogFacilityNotificationManager);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "No notification real time check alarm has been registered before", &v7, 2u);
    }

    v5 = 0;
  }
}

- (void)setUpNotificationTimerWithFireDate:(id)date
{
  dateCopy = date;
  if (dateCopy)
  {
    queue = [(MONotificationsManager *)self queue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = __61__MONotificationsManager_setUpNotificationTimerWithFireDate___block_invoke;
    v7[3] = &unk_100335B08;
    v7[4] = self;
    v8 = dateCopy;
    dispatch_async(queue, v7);
  }

  else
  {
    v6 = _mo_log_facility_get_os_log(&MOLogFacilityNotificationManager);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MONotificationsManager setUpNotificationTimerWithFireDate:v6];
    }
  }
}

void __61__MONotificationsManager_setUpNotificationTimerWithFireDate___block_invoke(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  v4 = [v2 notificationCheckTimerAlarm];
  [v2 _invalidateTimer:v4];

  objc_initWeak(&location, *v3);
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityNotificationManager);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 40);
    *buf = 138412546;
    v36 = @"MONotificationTimerAlarmIdentifier";
    v37 = 2112;
    v38 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "setUpTimerWithFireDate with identifer, %@, fire data, %@", buf, 0x16u);
  }

  v7 = [MOXPCTimerAlarm alloc];
  v8 = [*(a1 + 32) queue];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = __61__MONotificationsManager_setUpNotificationTimerWithFireDate___block_invoke_637;
  v31[3] = &unk_10033C620;
  v9 = (a1 + 40);
  v32 = *(a1 + 40);
  objc_copyWeak(&v33, &location);
  v10 = [(MOXPCTimerAlarm *)v7 initWithIdentifier:@"MONotificationTimerAlarmIdentifier" queue:v8 handler:v31];
  [*(a1 + 32) setNotificationCheckTimerAlarm:v10];

  v11 = _mo_log_facility_get_os_log(&MOLogFacilityNotificationManager);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = *v9;
    *buf = 138412546;
    v36 = @"MONotificationTimerAlarmIdentifier";
    v37 = 2112;
    v38 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "finish setUpTimerWithFireDate with identifer, %@, fire data, %@", buf, 0x16u);
  }

  v13 = [*(a1 + 32) notificationCheckTimerAlarm];
  v14 = *v9;
  v30 = 0;
  [v13 fireWithDate:v14 error:&v30];
  v15 = v30;

  v16 = objc_opt_new();
  v17 = [*(a1 + 32) reporter];
  v18 = [v17 fetchNotificationsReporterIdentification];

  if (v18)
  {
    [(__CFString *)v16 setObject:v18 forKeyedSubscript:@"reporterUUID"];
  }

  v19 = [*(a1 + 32) defaultsManager];
  [v19 setObject:*v9 forKey:@"NotificationRealTimeCheckAlarmFireDate"];

  if (v15)
  {
    v20 = _mo_log_facility_get_os_log(&MOLogFacilityNotificationManager);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __61__MONotificationsManager_setUpNotificationTimerWithFireDate___block_invoke_cold_1((a1 + 40), v15, v20);
    }

    v21 = [v15 domain];
    [(__CFString *)v16 setObject:v21 forKeyedSubscript:@"fireTimerAlarmErrorDomain"];

    v22 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v15 code]);
    [(__CFString *)v16 setObject:v22 forKeyedSubscript:@"fireTimerAlarmErrorCode"];

    v23 = [v15 localizedDescription];
    [(__CFString *)v16 setObject:v23 forKeyedSubscript:@"fireTimerAlarmErrorDescription"];
  }

  v24 = [*(a1 + 32) dateFormatter];
  v25 = [v24 stringFromDate:*v9];
  [(__CFString *)v16 setObject:v25 forKeyedSubscript:@"fireAlarmDate"];

  v26 = [*(a1 + 32) dateFormatter];
  v27 = +[NSDate now];
  v28 = [v26 stringFromDate:v27];
  [(__CFString *)v16 setObject:v28 forKeyedSubscript:@"reporterWritingDate"];

  [(__CFString *)v16 setObject:@"reporting firetimer alarm" forKeyedSubscript:@"reporterLoggingMessage"];
  v29 = _mo_log_facility_get_os_log(&MOLogFacilityNotificationReporter);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v36 = v16;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "reporting firetimer alarm: %@", buf, 0xCu);
  }

  AnalyticsSendEvent();
  objc_destroyWeak(&v33);

  objc_destroyWeak(&location);
}

void __61__MONotificationsManager_setUpNotificationTimerWithFireDate___block_invoke_637(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityNotificationManager);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 138412546;
    v12 = @"MONotificationTimerAlarmIdentifier";
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "timer with identifer, %@, fire data, %@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained notificationCheckTimerAlarm];
  [WeakRetained _invalidateTimer:v5];

  v6 = [WeakRetained onboardingAndSettingsPersistence];
  v7 = [v6 fetchSignificantLocationEnablementStatus];

  v8 = objc_alloc_init(_TtC8momentsd30ProcessingServerCoreConnection);
  v9 = [NSNumber numberWithBool:v7];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __61__MONotificationsManager_setUpNotificationTimerWithFireDate___block_invoke_639;
  v10[3] = &unk_10033C5F8;
  v10[4] = WeakRetained;
  [(ProcessingServerCoreConnection *)v8 realTimeCheckForNotificationWithSignificantLocationEnabled:v9 completionHandler:v10];
}

void __61__MONotificationsManager_setUpNotificationTimerWithFireDate___block_invoke_639(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityNotificationManager);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "real time check for notification return with retry date, %@, error, %@", &v10, 0x16u);
  }

  if (!v5 || v6)
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityNotificationManager);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "no need to set up timer for retry and remove timer date in defaults", &v10, 2u);
    }

    v9 = [*(a1 + 32) defaultsManager];
    [v9 deleteObjectForKey:@"NotificationRealTimeCheckAlarmFireDate"];
  }

  else
  {
    [*(a1 + 32) setUpNotificationTimerWithFireDate:v5];
  }
}

- (id)_getFallBackTimeForNotification
{
  v3 = +[NSCalendar currentCalendar];
  v4 = +[NSDate now];
  v5 = [v3 components:28 fromDate:v4];

  configManager = [(MONotificationsManager *)self configManager];
  [v5 setHour:{objc_msgSend(configManager, "getIntegerSettingForKey:withFallback:", @"UserNotificationUnscheduledHour", 19)}];

  [v5 setMinute:0];
  [v5 setSecond:0];
  v7 = +[NSDate now];
  v8 = [v3 nextDateAfterDate:v7 matchingComponents:v5 options:1];

  return v8;
}

- (void)fetchEligiblePOICategoriesForNotificationsWithHandler:(id)handler
{
  handlerCopy = handler;
  categoryStore = [(MONotificationsManager *)self categoryStore];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __80__MONotificationsManager_fetchEligiblePOICategoriesForNotificationsWithHandler___block_invoke;
  v7[3] = &unk_1003369E0;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [categoryStore fetchEligiblePOICategoriesWithCompletionHandler:v7];
}

void __80__MONotificationsManager_fetchEligiblePOICategoriesForNotificationsWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityNotificationManager);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __80__MONotificationsManager_fetchEligiblePOICategoriesForNotificationsWithHandler___block_invoke_cold_1();
    }

    v9 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 134217984;
      v11 = [v5 count];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Fetch eligible POI category succeeded, categories count %lu", &v10, 0xCu);
    }

    v9 = *(*(a1 + 32) + 16);
  }

  v9();
}

void __61__MONotificationsManager_setUpNotificationTimerWithFireDate___block_invoke_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = 138412802;
  v5 = @"MONotificationTimerAlarmIdentifier";
  v6 = 2112;
  v7 = v3;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Timer with identifer, %@, fire data, %@, failed to fire with error, %@", &v4, 0x20u);
}

@end