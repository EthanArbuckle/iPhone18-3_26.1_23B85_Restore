@interface MONotificationAnalyticsManager
- (BOOL)isDeviceiPhone;
- (BOOL)isReadyToSubmitNotificationAnalytics;
- (BOOL)submitAggregatedNotificationAnalytics:(id *)a3;
- (MONotificationAnalyticsManager)initWithUniverse:(id)a3;
- (double)getAvailabilityProbabilityThreshold;
- (id)_computeMeasures:(id)a3 deviceType:(int64_t)a4;
- (id)analyticsDeviceTypeToBMDeviceType:(int64_t)a3;
- (id)countEventsWithBooleanField:(id)a3 value:(BOOL)a4 events:(id)a5;
- (id)countEventsWithEventType:(int64_t)a3 events:(id)a4;
- (id)fetchAllNotificationEvents:(id)a3 toEndDate:(id)a4 error:(id *)a5;
- (id)fieldExtractorForName:(id)a3;
- (id)filterDNUGatedEvents:(id)a3;
- (id)filterEventsByDeviceType:(id)a3 deviceType:(int64_t)a4;
- (id)filterEventsWithEngagement:(id)a3;
- (id)filterEventsWithRealTimeChecks:(id)a3;
- (id)findDominantScheduleState:(id)a3;
- (id)predicateForAnalyticsDeviceType:(int64_t)a3;
- (unint64_t)countAvailabilityPredictionEvents:(id)a3 eligibleCount:(unint64_t *)a4;
- (unint64_t)getCurrentDeviceType;
- (void)getAvailabilityProbabilityThreshold;
- (void)submitNotificationAnalyticsWithCompletion:(id)a3;
@end

@implementation MONotificationAnalyticsManager

- (MONotificationAnalyticsManager)initWithUniverse:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = MONotificationAnalyticsManager;
  v5 = [(MONotificationAnalyticsManager *)&v20 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v4 getService:v7];
    onboardingPersistence = v5->_onboardingPersistence;
    v5->_onboardingPersistence = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v4 getService:v11];
    defaultsManager = v5->_defaultsManager;
    v5->_defaultsManager = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [v4 getService:v15];
    configurationManager = v5->_configurationManager;
    v5->_configurationManager = v16;

    v18 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v22 = 6;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "NotificationAnalyticsManager initialized with %ld-day aggregation window", buf, 0xCu);
    }
  }

  return v5;
}

- (void)submitNotificationAnalyticsWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &__block_literal_global_40;
  }

  v6 = +[NSMutableDictionary dictionary];
  [v6 setObject:&__kCFBooleanFalse forKeyedSubscript:@"submitted"];
  v7 = +[NSDate date];
  [v6 setObject:v7 forKeyedSubscript:@"timestamp"];

  v8 = [(MONotificationAnalyticsManager *)self getCurrentDeviceType];
  v9 = [NSNumber numberWithUnsignedInteger:v8];
  [v6 setObject:v9 forKeyedSubscript:@"deviceType"];

  if (v8 == 1)
  {
    if (+[MOPlatformInfo isDNUEnabled])
    {
      if (![(MONotificationAnalyticsManager *)self isReadyToSubmitNotificationAnalytics])
      {
        v18 = [(MONotificationAnalyticsManager *)self defaultsManager];
        v11 = [v18 objectForKey:@"NextNotificationAnalyticsSubmissionDate"];

        [v6 setObject:@"throttled" forKeyedSubscript:@"reason"];
        if (v11)
        {
          [v6 setObject:v11 forKeyedSubscript:@"nextSubmissionDate"];
          [v11 timeIntervalSinceNow];
          v20 = [NSNumber numberWithDouble:fmax(v19, 0.0)];
          [v6 setObject:v20 forKeyedSubscript:@"secondsUntilNext"];
        }

        v21 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v25 = v11;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Analytics throttled until %@", buf, 0xCu);
        }

        v5->invoke(v5, 0, v6);
        goto LABEL_24;
      }

      v23 = 0;
      v10 = [(MONotificationAnalyticsManager *)self submitAggregatedNotificationAnalytics:&v23];
      v11 = v23;
      v12 = +[NSMutableDictionary dictionary];
      v13 = [NSNumber numberWithBool:v10];
      [v12 setObject:v13 forKeyedSubscript:@"submitted"];

      v14 = +[NSDate date];
      [v12 setObject:v14 forKeyedSubscript:@"submissionDate"];

      if (v10)
      {
        [v12 setObject:@"success" forKeyedSubscript:@"status"];
        v15 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Analytics submitted successfully", buf, 2u);
        }
      }

      else
      {
        [v12 setObject:@"failed" forKeyedSubscript:@"status"];
        if (!v11)
        {
LABEL_23:
          v5->invoke(v5, v11, v12);

LABEL_24:
          goto LABEL_25;
        }

        v22 = [v11 domain];
        [v12 setObject:v22 forKeyedSubscript:@"errorDomain"];

        v15 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v11 code]);
        [v12 setObject:v15 forKeyedSubscript:@"errorCode"];
      }

      goto LABEL_23;
    }

    [v6 setObject:@"dnu_disabled" forKeyedSubscript:@"reason"];
    v16 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Skipping analytics - DNU not enabled", buf, 2u);
    }
  }

  else
  {
    [v6 setObject:@"not_iphone" forKeyedSubscript:@"reason"];
    v16 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [NSNumber numberWithUnsignedInteger:v8];
      *buf = 138412290;
      v25 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Skipping analytics - device type %@ is not iPhone", buf, 0xCu);
    }
  }

  v5->invoke(v5, 0, v6);
LABEL_25:
}

void __76__MONotificationAnalyticsManager_submitNotificationAnalyticsWithCompletion___block_invoke(id a1, NSError *a2, NSDictionary *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __76__MONotificationAnalyticsManager_submitNotificationAnalyticsWithCompletion___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Analytics submission completed: %@", &v8, 0xCu);
  }
}

- (BOOL)isDeviceiPhone
{
  v2 = +[MOPlatformInfo extractHardwareAndSoftwareMetadata];
  v3 = [v2 objectForKey:@"kMODeviceClass"];

  LOBYTE(v2) = [MOOnboardingAnalyticsUtilities convertMGDeviceClassToAnalyticsDeviceType:v3]== 1;
  return v2;
}

- (unint64_t)getCurrentDeviceType
{
  v2 = +[MOPlatformInfo extractHardwareAndSoftwareMetadata];
  v3 = [v2 objectForKey:@"kMODeviceClass"];

  v4 = [MOOnboardingAnalyticsUtilities convertMGDeviceClassToAnalyticsDeviceType:v3];
  return v4;
}

- (BOOL)isReadyToSubmitNotificationAnalytics
{
  v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.momentsui"];
  v4 = [v3 objectForKey:@"NotificationWeeklyResetDate"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MONotificationAnalyticsManager *)self defaultsManager];
    v6 = [v5 objectForKey:@"NextNotificationAnalyticsSubmissionDate"];

    if (v6 && [v6 isEqualToDate:v4])
    {
      v7 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v11 = 138412546;
        v12 = v4;
        v13 = 2112;
        v14 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Analytics already submitted for current cycle. cycleResetDate: %@, submissionDate: %@", &v11, 0x16u);
      }

      v8 = 0;
    }

    else
    {
      v9 = [(MONotificationAnalyticsManager *)self defaultsManager];
      [v9 setObject:v4 forKey:@"NextNotificationAnalyticsSubmissionDate"];

      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)submitAggregatedNotificationAnalytics:(id *)a3
{
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Starting notification analytics aggregation per device", buf, 2u);
  }

  v6 = +[NSDate date];
  v7 = [v6 dateByAddingTimeInterval:-518400.0];
  v8 = [(MONotificationAnalyticsManager *)self fetchAllNotificationEvents:v7 toEndDate:v6 error:a3];
  if (v8)
  {
    v20 = v7;
    v21 = v6;
    v19 = v8;
    v9 = [(MONotificationAnalyticsManager *)self filterDNUGatedEvents:v8];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = [objc_opt_class() allAnalyticsDeviceTypes];
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      do
      {
        v14 = 0;
        do
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v23 + 1) + 8 * v14) integerValue];
          v16 = [(MONotificationAnalyticsManager *)self filterEventsByDeviceType:v9 deviceType:v15];
          if ([v16 count])
          {
            v22 = [(MONotificationAnalyticsManager *)self _computeMeasures:v16 deviceType:v15];
            v17 = v22;
            AnalyticsSendEventLazy();
          }

          else
          {
            v17 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134217984;
              v28 = v15;
              _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "No events for deviceType %ld → skipped", buf, 0xCu);
            }
          }

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v12);
    }

    v7 = v20;
    v6 = v21;
    v8 = v19;
  }

  else
  {
    v9 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [MONotificationAnalyticsManager submitAggregatedNotificationAnalytics:v9];
    }
  }

  return v8 != 0;
}

- (id)fetchAllNotificationEvents:(id)a3 toEndDate:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__31;
  v52 = __Block_byref_object_dispose__31;
  v53 = +[NSMutableArray array];
  v45 = 0;
  v46[0] = &v45;
  v46[1] = 0x3032000000;
  v46[2] = __Block_byref_object_copy__31;
  v46[3] = __Block_byref_object_dispose__31;
  v47 = 0;
  v8 = BiomeLibrary();
  v9 = [v8 Moments];
  v10 = [v9 Events];
  v11 = [v10 Notifications];

  v12 = [v11 publisher];
  v13 = dispatch_semaphore_create(0);
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = __77__MONotificationAnalyticsManager_fetchAllNotificationEvents_toEndDate_error___block_invoke;
  v42[3] = &unk_100338AB8;
  v14 = v6;
  v43 = v14;
  v15 = v7;
  v44 = v15;
  v16 = [v12 filterWithIsIncluded:v42];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = __77__MONotificationAnalyticsManager_fetchAllNotificationEvents_toEndDate_error___block_invoke_2;
  v39[3] = &unk_10033D520;
  v41 = &v45;
  v17 = v13;
  v40 = v17;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = __77__MONotificationAnalyticsManager_fetchAllNotificationEvents_toEndDate_error___block_invoke_3;
  v38[3] = &unk_10033D548;
  v38[4] = &v48;
  v18 = [v16 sinkWithCompletion:v39 receiveInput:v38];
  v19 = [NSString stringWithFormat:@"%@ - [%s] - %d - %s", @"MOSemaphoreWait", "/Library/Caches/com.apple.xbs/Sources/Moments/momentsd/PromptEngine/Analytics/MONotificationAnalyticsManager.m", 324, "[MONotificationAnalyticsManager fetchAllNotificationEvents:toEndDate:error:]"];
  v37 = 0;
  v20 = MOSemaphoreWaitAndFaultIfTimeoutDefaultTimeout_Internal(v17, &v37, v19);
  v21 = v37;
  if (!v20)
  {
    v22 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __50__MOUserData__fetchUserDataWithCompletionHandler___block_invoke_cold_1();
    }
  }

  if (v21)
  {
    v23 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [MONotificationAnalyticsManager fetchAllNotificationEvents:toEndDate:error:];
    }

    v24 = v21;
    if (!a5)
    {
LABEL_16:
      v32 = 0;
      goto LABEL_20;
    }

LABEL_15:
    v32 = 0;
    *a5 = v24;
    goto LABEL_20;
  }

  if (*(v46[0] + 40))
  {
    v25 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [(MONotificationAnalyticsManager *)v46 fetchAllNotificationEvents:v25 toEndDate:v26 error:v27, v28, v29, v30, v31];
    }

    if (!a5)
    {
      goto LABEL_16;
    }

    v24 = *(v46[0] + 40);
    goto LABEL_15;
  }

  v33 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    v34 = [v49[5] count];
    *buf = 134217984;
    v55 = v34;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Successfully fetched %lu notification events from Biome", buf, 0xCu);
  }

  v32 = [v49[5] copy];
LABEL_20:

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v48, 8);

  return v32;
}

id __77__MONotificationAnalyticsManager_fetchAllNotificationEvents_toEndDate_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = v3;
  if (v3 && ([v3 eventTime], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [v4 eventTime];
    if ([v6 isOnOrAfter:*(a1 + 32)])
    {
      v7 = [v4 eventTime];
      v8 = [v7 isOnOrBefore:*(a1 + 40)];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __77__MONotificationAnalyticsManager_fetchAllNotificationEvents_toEndDate_error___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 state] == 1)
  {
    v3 = [v6 error];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __77__MONotificationAnalyticsManager_fetchAllNotificationEvents_toEndDate_error___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 eventBody];

  if (v3)
  {
    v4 = *(*(*(a1 + 32) + 8) + 40);
    v5 = [v6 eventBody];
    [v4 addObject:v5];
  }
}

- (id)filterDNUGatedEvents:(id)a3
{
  v3 = a3;
  v4 = [NSPredicate predicateWithBlock:&__block_literal_global_245];
  v5 = [v3 filteredArrayUsingPredicate:v4];
  v6 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(MONotificationAnalyticsManager *)v3 filterDNUGatedEvents:v5];
  }

  return v5;
}

BOOL __55__MONotificationAnalyticsManager_filterDNUGatedEvents___block_invoke(id a1, BMMomentsNotifications *a2, NSDictionary *a3)
{
  v3 = a2;
  if ([(BMMomentsNotifications *)v3 hasIsDNUGated])
  {
    v4 = [(BMMomentsNotifications *)v3 isDNUGated];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)filterEventsByDeviceType:(id)a3 deviceType:(int64_t)a4
{
  v6 = a3;
  v7 = [(MONotificationAnalyticsManager *)self predicateForAnalyticsDeviceType:a4];
  v8 = [v6 filteredArrayUsingPredicate:v7];
  v9 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 134218496;
    v12 = a4;
    v13 = 2048;
    v14 = [v6 count];
    v15 = 2048;
    v16 = [v8 count];
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Filtered events by device type %ld: %lu -> %lu", &v11, 0x20u);
  }

  return v8;
}

- (id)analyticsDeviceTypeToBMDeviceType:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    return &__NSArray0__struct;
  }

  else
  {
    return off_10033D748[a3 - 1];
  }
}

- (id)predicateForAnalyticsDeviceType:(int64_t)a3
{
  v3 = [(MONotificationAnalyticsManager *)self analyticsDeviceTypeToBMDeviceType:a3];
  if ([v3 count])
  {
    if ([v3 count] == 1)
    {
      v4 = [v3 firstObject];
      v5 = [NSPredicate predicateWithFormat:@"deviceType == %@", v4];

      goto LABEL_7;
    }

    v6 = [NSPredicate predicateWithFormat:@"deviceType IN %@", v3];
  }

  else
  {
    v6 = [NSPredicate predicateWithValue:0];
  }

  v5 = v6;
LABEL_7:

  return v5;
}

- (id)_computeMeasures:(id)a3 deviceType:(int64_t)a4
{
  v6 = a3;
  v7 = +[NSMutableDictionary dictionary];
  v8 = [NSNumber numberWithInteger:a4];
  [v7 setObject:v8 forKeyedSubscript:@"deviceType"];

  v9 = [(MONotificationAnalyticsManager *)self onboardingPersistence];
  v10 = [v9 getSnapshotDictionaryForAnalytics];

  v11 = [v10 objectForKeyedSubscript:@"settingBroaderSwitchLocation"];

  if (v11)
  {
    v12 = [v10 objectForKeyedSubscript:@"settingBroaderSwitchLocation"];
    [v7 setObject:v12 forKeyedSubscript:@"isSignificantLocationEnabled"];
  }

  v13 = [v10 objectForKeyedSubscript:@"systemNotificationsEnabled"];

  if (v13)
  {
    v14 = [v10 objectForKeyedSubscript:@"systemNotificationsEnabled"];
    [v7 setObject:v14 forKeyedSubscript:@"isSystemNotificationsEnabled"];
  }

  v15 = [v10 objectForKeyedSubscript:@"appNotificationsEnabled"];

  if (v15)
  {
    v16 = [v10 objectForKeyedSubscript:@"appNotificationsEnabled"];
    [v7 setObject:v16 forKeyedSubscript:@"isAppNotificationsEnabled"];
  }

  v40 = 0;
  v17 = [NSNumber numberWithUnsignedInteger:[(MONotificationAnalyticsManager *)self countAvailabilityPredictionEvents:v6 eligibleCount:&v40]];
  [v7 setObject:v17 forKeyedSubscript:@"totalPredictionCount"];

  v18 = [NSNumber numberWithUnsignedInteger:v40];
  [v7 setObject:v18 forKeyedSubscript:@"eligiblePredictionCount"];

  v19 = [(MONotificationAnalyticsManager *)self filterEventsWithRealTimeChecks:v6];
  v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v19 count]);
  [v7 setObject:v20 forKeyedSubscript:@"realTimeCheckCount"];

  v21 = [(MONotificationAnalyticsManager *)self countEventsWithBooleanField:@"realTimeCheckRejected" value:1 events:v19];
  [v7 setObject:v21 forKeyedSubscript:@"realTimeRejectedCount"];

  v22 = [(MONotificationAnalyticsManager *)self countEventsWithBooleanField:@"realTimeCheckIsTraveling" value:1 events:v19];
  [v7 setObject:v22 forKeyedSubscript:@"realTimeIsTravelingCount"];

  v23 = [(MONotificationAnalyticsManager *)self countEventsWithBooleanField:@"realTimeCheckIsPlaceEligible" value:1 events:v19];
  [v7 setObject:v23 forKeyedSubscript:@"realTimeIsPlaceEligibleCount"];

  v24 = [(MONotificationAnalyticsManager *)self countEventsWithBooleanField:@"realTimeCheckNoVisit" value:1 events:v19];
  [v7 setObject:v24 forKeyedSubscript:@"realTimeCheckNoVisitCount"];

  v25 = [(MONotificationAnalyticsManager *)self countEventsWithBooleanField:@"realTimeCheckIsInVisit" value:1 events:v19];
  [v7 setObject:v25 forKeyedSubscript:@"realTimeCheckIsInVisitCount"];

  v26 = [(MONotificationAnalyticsManager *)self countEventsWithBooleanField:@"realTimeCheckIsInWorkoutHealthKit" value:1 events:v19];
  [v7 setObject:v26 forKeyedSubscript:@"realTimeIsInWorkoutHealthKitCount"];

  v27 = [(MONotificationAnalyticsManager *)self countEventsWithBooleanField:@"realTimeCheckIsInWorkoutMotion" value:1 events:v19];
  [v7 setObject:v27 forKeyedSubscript:@"realTimeIsInWorkoutMotionCount"];

  v28 = [(MONotificationAnalyticsManager *)self countEventsWithBooleanField:@"realTimeCheckIsJournaling" value:1 events:v19];
  [v7 setObject:v28 forKeyedSubscript:@"realTimeIsJournalingCount"];

  v29 = [(MONotificationAnalyticsManager *)self countEventsWithBooleanField:@"realTimeCheckIsAtHome" value:1 events:v19];
  [v7 setObject:v29 forKeyedSubscript:@"realTimeCheckIsAtHomeCount"];

  v30 = [(MONotificationAnalyticsManager *)self filterEventsWithEngagement:v6];
  v31 = [(MONotificationAnalyticsManager *)self countEventsWithEventType:1 events:v30];
  [v7 setObject:v31 forKeyedSubscript:@"notificationQueuedCount"];

  v32 = [(MONotificationAnalyticsManager *)self countEventsWithEventType:2 events:v30];
  [v7 setObject:v32 forKeyedSubscript:@"notificationDequeuedCount"];

  v33 = [(MONotificationAnalyticsManager *)self countEventsWithEventType:3 events:v30];
  [v7 setObject:v33 forKeyedSubscript:@"notificationDeliveredCount"];

  v34 = [(MONotificationAnalyticsManager *)self countEventsWithEventType:4 events:v30];
  [v7 setObject:v34 forKeyedSubscript:@"notificationPostedCount"];

  v35 = [(MONotificationAnalyticsManager *)self countEventsWithEventType:5 events:v30];
  [v7 setObject:v35 forKeyedSubscript:@"notificationDismissedCount"];

  v36 = [(MONotificationAnalyticsManager *)self countEventsWithEventType:6 events:v30];
  [v7 setObject:v36 forKeyedSubscript:@"notificationTappedCount"];

  v37 = [(MONotificationAnalyticsManager *)self countEventsWithEventType:7 events:v30];
  [v7 setObject:v37 forKeyedSubscript:@"notificationOverwrittenCount"];

  v38 = [(MONotificationAnalyticsManager *)self findDominantScheduleState:v6];

  [v7 setObject:v38 forKeyedSubscript:@"scheduleState"];

  return v7;
}

- (double)getAvailabilityProbabilityThreshold
{
  HIDWORD(v3) = 1072064102;
  *&v3 = 0.7;
  [(MOConfigurationManagerBase *)self->_configurationManager getFloatSettingForKey:@"AvailabilityPredictionProbabilityThresholdKey" withFallback:v3];
  v5 = v4;
  *&v6 = 0.4;
  [(MOConfigurationManagerBase *)self->_configurationManager getFloatSettingForKey:@"AvailabilityPredictionProbabilityInsufficientScreentimeThresholdKey" withFallback:v6];
  v8 = v7;
  v9 = [(MONotificationAnalyticsManager *)self defaultsManager];
  v10 = [v9 objectForKey:@"AvailabilityPredictionOptimalDateProbability"];

  if (v10 && ([v10 doubleValue], v11 < 0.5))
  {
    v12 = v8;
    v13 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [(MONotificationAnalyticsManager *)v10 getAvailabilityProbabilityThreshold];
    }
  }

  else
  {
    v12 = v5;
    v13 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [(MONotificationAnalyticsManager *)v13 getAvailabilityProbabilityThreshold];
    }
  }

  return v12;
}

- (unint64_t)countAvailabilityPredictionEvents:(id)a3 eligibleCount:(unint64_t *)a4
{
  v6 = a3;
  [(MONotificationAnalyticsManager *)self getAvailabilityProbabilityThreshold];
  v8 = v7;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = 0;
    v14 = *v20;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v19 + 1) + 8 * i) maxAvailabilityProbability];
        if (v16 > 0.0 && v16 <= 1.0)
        {
          ++v13;
          if (v16 >= v8)
          {
            ++v12;
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  *a4 = v12;
  return v13;
}

- (id)filterEventsWithRealTimeChecks:(id)a3
{
  v3 = a3;
  v4 = [NSPredicate predicateWithBlock:&__block_literal_global_325];
  v5 = [v3 filteredArrayUsingPredicate:v4];

  return v5;
}

- (id)filterEventsWithEngagement:(id)a3
{
  v3 = a3;
  v4 = [NSPredicate predicateWithBlock:&__block_literal_global_327];
  v5 = [v3 filteredArrayUsingPredicate:v4];

  return v5;
}

- (id)fieldExtractorForName:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"realTimeCheckRejected"])
  {
    v4 = &__block_literal_global_330;
  }

  else if ([v3 isEqualToString:@"isSignificantLocationEnabled"])
  {
    v4 = &__block_literal_global_332;
  }

  else if ([v3 isEqualToString:@"realTimeCheckIsTraveling"])
  {
    v4 = &__block_literal_global_334;
  }

  else if ([v3 isEqualToString:@"realTimeCheckIsPlaceEligible"])
  {
    v4 = &__block_literal_global_336;
  }

  else if ([v3 isEqualToString:@"realTimeCheckNoVisit"])
  {
    v4 = &__block_literal_global_338;
  }

  else if ([v3 isEqualToString:@"realTimeCheckIsInVisit"])
  {
    v4 = &__block_literal_global_340;
  }

  else if ([v3 isEqualToString:@"realTimeCheckIsInWorkoutHealthKit"])
  {
    v4 = &__block_literal_global_342_0;
  }

  else if ([v3 isEqualToString:@"realTimeCheckIsInWorkoutMotion"])
  {
    v4 = &__block_literal_global_344;
  }

  else if ([v3 isEqualToString:@"realTimeCheckIsJournaling"])
  {
    v4 = &__block_literal_global_346;
  }

  else if ([v3 isEqualToString:@"realTimeCheckIsAtHome"])
  {
    v4 = &__block_literal_global_348;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

NSNumber *__cdecl __56__MONotificationAnalyticsManager_fieldExtractorForName___block_invoke(id a1, BMMomentsNotifications *a2)
{
  v2 = a2;
  if ([(BMMomentsNotifications *)v2 hasRealTimeCheckRejected])
  {
    v3 = [NSNumber numberWithBool:[(BMMomentsNotifications *)v2 realTimeCheckRejected]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

NSNumber *__cdecl __56__MONotificationAnalyticsManager_fieldExtractorForName___block_invoke_2(id a1, BMMomentsNotifications *a2)
{
  v2 = a2;
  if ([(BMMomentsNotifications *)v2 hasIsSignificantLocationEnabled])
  {
    v3 = [NSNumber numberWithBool:[(BMMomentsNotifications *)v2 isSignificantLocationEnabled]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

NSNumber *__cdecl __56__MONotificationAnalyticsManager_fieldExtractorForName___block_invoke_3(id a1, BMMomentsNotifications *a2)
{
  v2 = a2;
  if ([(BMMomentsNotifications *)v2 hasRealTimeCheckIsTraveling])
  {
    v3 = [NSNumber numberWithBool:[(BMMomentsNotifications *)v2 realTimeCheckIsTraveling]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

NSNumber *__cdecl __56__MONotificationAnalyticsManager_fieldExtractorForName___block_invoke_4(id a1, BMMomentsNotifications *a2)
{
  v2 = a2;
  if ([(BMMomentsNotifications *)v2 hasRealTimeCheckIsPlaceEligible])
  {
    v3 = [NSNumber numberWithBool:[(BMMomentsNotifications *)v2 realTimeCheckIsPlaceEligible]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

NSNumber *__cdecl __56__MONotificationAnalyticsManager_fieldExtractorForName___block_invoke_5(id a1, BMMomentsNotifications *a2)
{
  v2 = a2;
  if ([(BMMomentsNotifications *)v2 hasRealTimeCheckIsInVisit])
  {
    v3 = [NSNumber numberWithInt:[(BMMomentsNotifications *)v2 realTimeCheckIsInVisit]^ 1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

NSNumber *__cdecl __56__MONotificationAnalyticsManager_fieldExtractorForName___block_invoke_6(id a1, BMMomentsNotifications *a2)
{
  v2 = a2;
  if ([(BMMomentsNotifications *)v2 hasRealTimeCheckIsInVisit])
  {
    v3 = [NSNumber numberWithBool:[(BMMomentsNotifications *)v2 realTimeCheckIsInVisit]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

NSNumber *__cdecl __56__MONotificationAnalyticsManager_fieldExtractorForName___block_invoke_7(id a1, BMMomentsNotifications *a2)
{
  v2 = a2;
  if ([(BMMomentsNotifications *)v2 hasRealTimeCheckIsInWorkoutHealthKit])
  {
    v3 = [NSNumber numberWithBool:[(BMMomentsNotifications *)v2 realTimeCheckIsInWorkoutHealthKit]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

NSNumber *__cdecl __56__MONotificationAnalyticsManager_fieldExtractorForName___block_invoke_8(id a1, BMMomentsNotifications *a2)
{
  v2 = a2;
  if ([(BMMomentsNotifications *)v2 hasRealTimeCheckIsInWorkoutMotion])
  {
    v3 = [NSNumber numberWithBool:[(BMMomentsNotifications *)v2 realTimeCheckIsInWorkoutMotion]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

NSNumber *__cdecl __56__MONotificationAnalyticsManager_fieldExtractorForName___block_invoke_9(id a1, BMMomentsNotifications *a2)
{
  v2 = a2;
  if ([(BMMomentsNotifications *)v2 hasRealTimeCheckIsJournaling])
  {
    v3 = [NSNumber numberWithBool:[(BMMomentsNotifications *)v2 realTimeCheckIsJournaling]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

NSNumber *__cdecl __56__MONotificationAnalyticsManager_fieldExtractorForName___block_invoke_10(id a1, BMMomentsNotifications *a2)
{
  v2 = a2;
  if ([(BMMomentsNotifications *)v2 hasRealTimeCheckIsAtHome])
  {
    v3 = [NSNumber numberWithBool:[(BMMomentsNotifications *)v2 realTimeCheckIsAtHome]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)countEventsWithBooleanField:(id)a3 value:(BOOL)a4 events:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [(MONotificationAnalyticsManager *)self fieldExtractorForName:v8];
  if (v10)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = v9;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v24;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = v10[2](v10, *(*(&v23 + 1) + 8 * i));
          v18 = v17;
          if (v17)
          {
            v14 += [v17 BOOLValue] ^ v6 ^ 1;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v13);
    }

    else
    {
      v14 = 0;
    }

    v20 = [NSNumber numberWithUnsignedInteger:v14];
    v9 = v22;
  }

  else
  {
    v19 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [MONotificationAnalyticsManager countEventsWithBooleanField:value:events:];
    }

    v20 = &off_10036B038;
  }

  return v20;
}

- (id)countEventsWithEventType:(int64_t)a3 events:(id)a4
{
  v5 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v13 + 1) + 8 * i) eventType] == a3)
        {
          ++v8;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v11 = [NSNumber numberWithUnsignedInteger:v8];

  return v11;
}

- (id)findDominantScheduleState:(id)a3
{
  v3 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 schedulingState] > v6)
        {
          v6 = [v9 schedulingState];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v10 = [NSNumber numberWithInt:v6];

  return v10;
}

- (void)filterDNUGatedEvents:(void *)a1 .cold.1(void *a1, void *a2)
{
  [a1 count];
  [a2 count];
  OUTLINED_FUNCTION_2(&_mh_execute_header, v3, v4, "Filtered DNU events: %lu -> %lu", v5, v6, v7, v8, 0);
}

- (void)getAvailabilityProbabilityThreshold
{
  v2 = 134217984;
  v3 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Using normal threshold %.2f", &v2, 0xCu);
}

@end