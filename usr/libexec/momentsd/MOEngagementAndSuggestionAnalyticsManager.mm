@interface MOEngagementAndSuggestionAnalyticsManager
+ (id)generateDefaultAnalyticsPayloadWithOnboardingStatus:(id)a3;
- (BOOL)bundleHasPhotoOrMediaResources:(id)a3;
- (BOOL)isReadyToSubmitDefaultAnalytics;
- (BOOL)isReadyToSubmitWeeklyRotationAnalytics;
- (MOEngagementAndSuggestionAnalyticsManager)initWithUniverse:(id)a3;
- (double)isReadyToSubmitDefaultAnalytics;
- (float)calculateAverageAgeInDaysForEventBundles:(id)a3 withSubmissionDate:(id)a4;
- (float)calculateMaxAgeInDaysForEventBundles:(id)a3 withSubmissionDate:(id)a4;
- (id)generateSuggestionEngagementAggregatedMetric:(id)a3 withDeviceType:(id)a4 appType:(id)a5 suggestionType:(id)a6 suggestionUIPlacement:(id)a7 analyticsAggregationWindowEnum:(id)a8 onboardingStatus:(id)a9;
- (unint64_t)countActivityBundlesWithSameActionName:(id)a3;
- (unint64_t)countEventBundlesWithBirthdayLabel:(id)a3;
- (unint64_t)countEventBundlesWithHolidayLabel:(id)a3;
- (unint64_t)countEventBundlesWithPersons:(id)a3;
- (unint64_t)countEventBundlesWithResourceType:(unint64_t)a3 FromEventBudles:(id)a4;
- (unint64_t)countEventBundlesWithSamePersons:(id)a3;
- (unint64_t)countEventBundlesWithSamePlace:(id)a3 locationThreshold:(double)a4;
- (unint64_t)countRepetitiveOutingBundles:(id)a3;
- (unint64_t)countUniqueAnalyticsSuggestionTypesForEventBundles:(id)a3;
- (void)_submitSuggestionPerformanceAnalyticsFromEventBundles:(id)a3 submitDefaultMetrics:(BOOL)a4 submitWeeklyRotationMetrics:(BOOL)a5 WithOnboardingStatus:(id)a6 andCompletionResult:(id)a7;
- (void)_submitWeeklySuggestionPerformanceAnalyticsFromEventBundles:(id)a3 WithOnboardingStatus:(id)a4 andCompletionResult:(id)a5;
- (void)setLastAnalyticsSubmissionDateForDefaultAnalyticsToNow;
- (void)setLastAnalyticsSubmissionDateForWeeklyRotationMetricsToNow;
- (void)submitEngagementAnalyticsWithOnboardingStatus:(id)a3 submitDefaultMetrics:(BOOL)a4 submitWeeklyRotationMetrics:(BOOL)a5 AndCompletionHandler:(id)a6;
- (void)submitEngagementAndSuggestionPerformanceAnalyticsWithOnboardingStatus:(id)a3 andCompletionHandler:(id)a4;
- (void)submitSuggestionPerformanceAnalyticsWithOnboardingStatus:(id)a3 submitDefaultMetrics:(BOOL)a4 submitWeeklyRotationMetrics:(BOOL)a5 AndCompletionHandler:(id)a6;
@end

@implementation MOEngagementAndSuggestionAnalyticsManager

- (MOEngagementAndSuggestionAnalyticsManager)initWithUniverse:(id)a3
{
  v4 = a3;
  v40.receiver = self;
  v40.super_class = MOEngagementAndSuggestionAnalyticsManager;
  v5 = [(MOEngagementAndSuggestionAnalyticsManager *)&v40 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v4 getService:v7];
    defaultsManager = v5->_defaultsManager;
    v5->_defaultsManager = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v4 getService:v11];
    configurationManager = v5->_configurationManager;
    v5->_configurationManager = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [v4 getService:v15];
    engagementHistoryManager = v5->_engagementHistoryManager;
    v5->_engagementHistoryManager = v16;

    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [v4 getService:v19];
    eventBundleStore = v5->_eventBundleStore;
    v5->_eventBundleStore = v20;

    v22 = [(MOEngagementAndSuggestionAnalyticsManager *)v5 configurationManager];
    LODWORD(v23) = 28.0;
    [v22 getFloatSettingForKey:@"minimumTimeGapBetweenAnalyticsSubmissionsInDays" withFallback:v23];
    v5->_minimumTimeGapBetweenSubmissionsInDays = v24;

    v25 = [(MOEngagementAndSuggestionAnalyticsManager *)v5 configurationManager];
    LODWORD(v26) = 7.0;
    [v25 getFloatSettingForKey:@"minimumTimeGapBetweenSubmissionsForWeeklyRotationMetricsInDaysKey" withFallback:v26];
    v5->_minimumTimeGapBetweenSubmissionsForWeeklyRotationMetricsInDays = v27;

    lastAnalyticsSubmissionDate = v5->_lastAnalyticsSubmissionDate;
    v5->_lastAnalyticsSubmissionDate = 0;

    v29 = [(MOEngagementAndSuggestionAnalyticsManager *)v5 defaultsManager];
    v30 = [v29 objectForKey:@"LastAnalyticsSubmissionDate"];

    if (v30)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_lastAnalyticsSubmissionDate, v30);
      }
    }

    lastAnalyticsSubmissionDateForWeeklyRotationMetrics = v5->_lastAnalyticsSubmissionDateForWeeklyRotationMetrics;
    v5->_lastAnalyticsSubmissionDateForWeeklyRotationMetrics = 0;

    v32 = [(MOEngagementAndSuggestionAnalyticsManager *)v5 defaultsManager];
    v33 = [v32 objectForKey:@"LastAnalyticsSubmissionDateForWeeklyRotationMetrics"];

    if (v33)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_lastAnalyticsSubmissionDateForWeeklyRotationMetrics, v33);
      }
    }

    v34 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = v5->_lastAnalyticsSubmissionDate;
      v36 = v5->_lastAnalyticsSubmissionDateForWeeklyRotationMetrics;
      minimumTimeGapBetweenSubmissionsInDays = v5->_minimumTimeGapBetweenSubmissionsInDays;
      minimumTimeGapBetweenSubmissionsForWeeklyRotationMetricsInDays = v5->_minimumTimeGapBetweenSubmissionsForWeeklyRotationMetricsInDays;
      *buf = 138413058;
      v42 = v35;
      v43 = 2112;
      v44 = v36;
      v45 = 2048;
      v46 = minimumTimeGapBetweenSubmissionsInDays;
      v47 = 2048;
      v48 = minimumTimeGapBetweenSubmissionsForWeeklyRotationMetricsInDays;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "EngagementAndSuggestionAnalyticsManager was initialized: lastAnalyticsSubmissionDate=%@, lastAnalyticsSubmissionDateForWeeklyRotationMetrics=%@, minimumTimeGapBetweenSubmissionsInDays=%.1f minimumTimeGapBetweenSubmissionsForWeeklyRotationMetricsInDays=%.1f", buf, 0x2Au);
    }
  }

  return v5;
}

- (void)submitEngagementAndSuggestionPerformanceAnalyticsWithOnboardingStatus:(id)a3 andCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(MOEngagementAndSuggestionAnalyticsManager *)self isReadyToSubmitDefaultAnalytics]|| [(MOEngagementAndSuggestionAnalyticsManager *)self isReadyToSubmitWeeklyRotationAnalytics])
  {
    v8 = [(MOEngagementAndSuggestionAnalyticsManager *)self isReadyToSubmitDefaultAnalytics];
    v9 = [(MOEngagementAndSuggestionAnalyticsManager *)self isReadyToSubmitWeeklyRotationAnalytics];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __136__MOEngagementAndSuggestionAnalyticsManager_submitEngagementAndSuggestionPerformanceAnalyticsWithOnboardingStatus_andCompletionHandler___block_invoke;
    v13[3] = &unk_100336198;
    v14 = v7;
    [(MOEngagementAndSuggestionAnalyticsManager *)self submitEngagementAndSuggestionPerformanceAnalyticsWithOnboardingStatus:v6 submitDefaultMetrics:v8 submitWeeklyRotationMetrics:v9 andCompletionHandler:v13];
  }

  else
  {
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [(MOEngagementAndSuggestionAnalyticsManager *)self getLastAnalyticsSubmissionDateForDefaultAnalytics];
      v12 = [(MOEngagementAndSuggestionAnalyticsManager *)self getLastAnalyticsSubmissionDateForWeeklyRotationMetrics];
      *buf = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "engagement/suggestion analytics submission was skipped. lastAnalyticsSubmissionDateForDefaultAnalytics=%@ ,lastAnalyticsSubmissionDateForWeeklyRotationMetrics=%@", buf, 0x16u);
    }

    (*(v7 + 2))(v7, 0, 0);
  }
}

void __185__MOEngagementAndSuggestionAnalyticsManager_submitEngagementAndSuggestionPerformanceAnalyticsWithOnboardingStatus_submitDefaultMetrics_submitWeeklyRotationMetrics_andCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, 1uLL, "SubmitEngagementAndSuggestionPerformanceAnalyticssubmitSuggestionPerformanceAnalytics", "", buf, 2u);
  }

  [*(a1 + 32) endSession];
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *v29 = v6;
    *&v29[8] = 2112;
    v30 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[submitSuggestionPerformanceAnalytics] Completed suggestion performance aggregated analytics submission. result:%@, error:%@", buf, 0x16u);
  }

  if (v5)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v9 = objc_opt_new();
    [v9 addEntriesFromDictionary:v6];
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "SubmitEngagementAndSuggestionPerformanceAnalyticssubmitEngagementAnalytics", "", buf, 2u);
    }

    v11 = [[MOPerformanceMeasurement alloc] initWithName:@"SubmitEngagementAnalytics" measureRecentPeak:0];
    [(MOPerformanceMeasurement *)v11 startSession];
    v12 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 64);
      v14 = *(a1 + 65);
      *buf = 67109376;
      *v29 = v13;
      *&v29[4] = 1024;
      *&v29[6] = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[submitSuggestionPerformanceAnalytics] Starting to submit engagement aggregated analytics. submitDefaultMetrics=%d, submitWeeklyRotationMetrics=%d", buf, 0xEu);
    }

    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    v17 = *(a1 + 64);
    v18 = *(a1 + 65);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = __185__MOEngagementAndSuggestionAnalyticsManager_submitEngagementAndSuggestionPerformanceAnalyticsWithOnboardingStatus_submitDefaultMetrics_submitWeeklyRotationMetrics_andCompletionHandler___block_invoke_125;
    v22[3] = &unk_10033F038;
    v23 = v11;
    v24 = v9;
    v19 = *(a1 + 56);
    v27 = *(a1 + 64);
    v25 = *(a1 + 40);
    v26 = v19;
    v20 = v9;
    v21 = v11;
    [v15 submitEngagementAnalyticsWithOnboardingStatus:v16 submitDefaultMetrics:v17 submitWeeklyRotationMetrics:v18 AndCompletionHandler:v22];
  }
}

void __185__MOEngagementAndSuggestionAnalyticsManager_submitEngagementAndSuggestionPerformanceAnalyticsWithOnboardingStatus_submitDefaultMetrics_submitWeeklyRotationMetrics_andCompletionHandler___block_invoke_125(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v7))
  {
    LOWORD(v16) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, 1uLL, "SubmitEngagementAndSuggestionPerformanceAnalyticssubmitEngagementAnalytics", "", &v16, 2u);
  }

  [*(a1 + 32) endSession];
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v16 = 138412546;
    v17 = v6;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[submitEngagementAnalytics] result:%@, error:%@", &v16, 0x16u);
  }

  if (v6 && [v6 count])
  {
    [*(a1 + 40) addEntriesFromDictionary:v6];
  }

  if (v5)
  {
    v9 = *(a1 + 40);
    v10 = *(*(a1 + 56) + 16);
  }

  else
  {
    if (*(a1 + 64) == 1)
    {
      [*(a1 + 48) setLastAnalyticsSubmissionDateForDefaultAnalyticsToNow];
      v11 = [*(a1 + 48) getLastAnalyticsSubmissionDateForDefaultAnalytics];
      [*(a1 + 40) setObject:v11 forKeyedSubscript:@"lastAnalyticsSubmissionDateForDefaultAnalytics"];
    }

    if (*(a1 + 65) == 1)
    {
      [*(a1 + 48) setLastAnalyticsSubmissionDateForWeeklyRotationMetricsToNow];
      v12 = [*(a1 + 48) getLastAnalyticsSubmissionDateForWeeklyRotationMetrics];
      [*(a1 + 40) setObject:v12 forKeyedSubscript:@"lastAnalyticsSubmissionDateForWeeklyRotationMetrics"];
    }

    v13 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 40);
      v16 = 138412290;
      v17 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[submitEngagementAndSuggestionPerformanceAnalytics] completed full analytics submission. Result:%@", &v16, 0xCu);
    }

    v15 = *(a1 + 40);
    v10 = *(*(a1 + 56) + 16);
  }

  v10();
}

- (void)submitEngagementAnalyticsWithOnboardingStatus:(id)a3 submitDefaultMetrics:(BOOL)a4 submitWeeklyRotationMetrics:(BOOL)a5 AndCompletionHandler:(id)a6
{
  v7 = a5;
  v8 = a4;
  v38 = a3;
  v10 = a6;
  v40 = objc_opt_new();
  context = objc_autoreleasePoolPush();
  v11 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Submitting engagement metric analytics", buf, 2u);
  }

  v12 = +[NSDate date];
  v13 = [(MOEngagementAndSuggestionAnalyticsManager *)self engagementHistoryManager];
  v14 = [v12 dateByAddingTimeInterval:-2419200.0];
  v60 = 0;
  v39 = [v13 fetchSuggestionEngagementEventsFromAllDevicesWithTypes:&off_10036E238 fromStartDate:v14 toEndDate:v12 withError:&v60];
  v15 = v60;

  v16 = [(MOEngagementAndSuggestionAnalyticsManager *)self engagementHistoryManager];
  v17 = [v12 dateByAddingTimeInterval:-2419200.0];
  v59 = v15;
  v18 = [v16 fetchAppEntryEngagementEventsFromAllDevicesWithTypes:&off_10036E250 fromStartDate:v17 toEndDate:v12 withError:&v59];
  v19 = v59;

  v20 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
  if (v19)
  {
    if (v21)
    {
      *buf = 138412290;
      *&buf[4] = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[submitEngagementAnalytics] Biome sink error:%@", buf, 0xCu);
    }

    v10[2](v10, v19, 0);
    objc_autoreleasePoolPop(context);
    goto LABEL_24;
  }

  if (v21)
  {
    v22 = [v39 count];
    v23 = [v18 count];
    *buf = 134218240;
    *&buf[4] = v22;
    *&buf[12] = 2048;
    *&buf[14] = v23;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Total fetched suggestion engagement event count: %lu, journal entry engagement event count: %lu", buf, 0x16u);
  }

  v24 = objc_opt_new();
  v25 = v24;
  if (v8 && v7)
  {
    v26 = +[MOEngagementAndSuggestionAnalyticsParams allMetricsAggregationWindowMap];
  }

  else if (v8)
  {
    v26 = +[MOEngagementAndSuggestionAnalyticsParams defaultMetricsAggregationWindowMap];
  }

  else
  {
    if (!v7)
    {
      v27 = v24;
      goto LABEL_17;
    }

    v26 = +[MOEngagementAndSuggestionAnalyticsParams WeeklyRotationMetricsAggregationWindowMap];
  }

  v27 = v26;

LABEL_17:
  v36 = [v27 count];
  if (v36)
  {
    v28 = +[MOEngagementAndSuggestionAnalyticsParams analyticsSuggestionTypes];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v62 = 0;
    v55 = 0;
    v56 = &v55;
    v57 = 0x2020000000;
    v58 = 0;
    [v12 timeIntervalSince1970];
    v30 = v29;
    +[MOEngagementAndSuggestionAnalyticsParams aggregatedEngagementAnalyticsAddressMap];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = __161__MOEngagementAndSuggestionAnalyticsManager_submitEngagementAnalyticsWithOnboardingStatus_submitDefaultMetrics_submitWeeklyRotationMetrics_AndCompletionHandler___block_invoke;
    v31 = v41[3] = &unk_10033F160;
    v42 = v31;
    v43 = &off_10036E268;
    v54 = v30;
    v44 = v18;
    v45 = &off_10036E280;
    v46 = v38;
    v52 = buf;
    v47 = v39;
    v48 = &off_10036E2B0;
    v32 = v28;
    v49 = v32;
    v50 = self;
    v53 = &v55;
    v51 = &off_10036E298;
    [v27 enumerateKeysAndObjectsUsingBlock:v41];
    v33 = [NSNumber numberWithUnsignedInteger:v56[3]];
    [v40 setObject:v33 forKeyedSubscript:@"suggestionEngagementAnalyticsPayloadCount"];

    v34 = [NSNumber numberWithUnsignedInteger:*(*&buf[8] + 24)];
    [v40 setObject:v34 forKeyedSubscript:@"journalEntryEngagementAnalyticsPayloadCount"];

    _Block_object_dispose(&v55, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v35 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [MOEngagementAndSuggestionAnalyticsManager submitEngagementAnalyticsWithOnboardingStatus:v35 submitDefaultMetrics:? submitWeeklyRotationMetrics:? AndCompletionHandler:?];
    }

    v10[2](v10, 0, 0);
  }

  objc_autoreleasePoolPop(context);
  if (v36)
  {
    (v10)[2](v10, 0, v40);
  }

LABEL_24:
}

void __161__MOEngagementAndSuggestionAnalyticsManager_submitEngagementAnalyticsWithOnboardingStatus_submitDefaultMetrics_submitWeeklyRotationMetrics_AndCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v70 = a3;
  v86 = v5;
  v85 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  obj = *(a1 + 40);
  v67 = [obj countByEnumeratingWithState:&v143 objects:v157 count:16];
  if (v67)
  {
    v66 = *v144;
    do
    {
      v73 = 0;
      do
      {
        if (*v144 != v66)
        {
          objc_enumerationMutation(obj);
        }

        v87 = *(*(&v143 + 1) + 8 * v73);
        context = objc_autoreleasePoolPush();
        v6 = +[MOEngagementAndSuggestionAnalyticsParams analyticsDeviceTypeToBMDeviceType:](MOEngagementAndSuggestionAnalyticsParams, "analyticsDeviceTypeToBMDeviceType:", [v87 intValue]);
        v7 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          *&buf[4] = v87;
          *&buf[12] = 2112;
          *&buf[14] = v6;
          _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Current deviceType=%@, BMDeviceTypes=%@", buf, 0x16u);
        }

        v141[0] = _NSConcreteStackBlock;
        v141[1] = 3221225472;
        v141[2] = __161__MOEngagementAndSuggestionAnalyticsManager_submitEngagementAnalyticsWithOnboardingStatus_submitDefaultMetrics_submitWeeklyRotationMetrics_AndCompletionHandler___block_invoke_176;
        v141[3] = &unk_10033F088;
        v68 = v6;
        v142 = v68;
        v77 = [NSPredicate predicateWithBlock:v141];
        v8 = objc_opt_new();
        if ([v87 intValue] == 1)
        {
          v9 = &__block_literal_global_54;
        }

        else
        {
          v9 = &__block_literal_global_180;
        }

        v76 = [NSPredicate predicateWithBlock:v9];

        v138[0] = _NSConcreteStackBlock;
        v138[1] = 3221225472;
        v138[2] = __161__MOEngagementAndSuggestionAnalyticsManager_submitEngagementAnalyticsWithOnboardingStatus_submitDefaultMetrics_submitWeeklyRotationMetrics_AndCompletionHandler___block_invoke_4;
        v138[3] = &unk_10033F110;
        v140 = *(a1 + 128);
        v10 = v70;
        v139 = v10;
        v72 = [NSPredicate predicateWithBlock:v138];
        v11 = [*(a1 + 48) filteredArrayUsingPredicate:v72];
        v12 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = [v11 count];
          *buf = 138412546;
          *&buf[4] = v70;
          *&buf[12] = 2048;
          *&buf[14] = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Journal entry engagement event count from the last %@days=%lu", buf, 0x16u);
        }

        v82 = [v11 filteredArrayUsingPredicate:v77];

        v14 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = [v82 count];
          *buf = 138412546;
          *&buf[4] = v87;
          *&buf[12] = 2048;
          *&buf[14] = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Journal entry engagement event count from devicetype %@=%lu", buf, 0x16u);
        }

        v75 = [v82 filteredArrayUsingPredicate:v76];
        v16 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = [v75 count];
          *buf = 134217984;
          *&buf[4] = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Journal entry engagement event count after filtering by DNU status=%lu", buf, 0xCu);
        }

        v18 = [v82 count];
        if (v18 <= [v75 count])
        {
          v136 = 0u;
          v137 = 0u;
          v134 = 0u;
          v135 = 0u;
          v19 = *(a1 + 56);
          v83 = [v19 countByEnumeratingWithState:&v134 objects:v156 count:16];
          if (v83)
          {
            v80 = *v135;
            do
            {
              v20 = 0;
              do
              {
                if (*v135 != v80)
                {
                  objc_enumerationMutation(v19);
                }

                v21 = *(*(&v134 + 1) + 8 * v20);
                v22 = objc_autoreleasePoolPush();
                v23 = [MOEngagementAndSuggestionAnalyticsManager generateDefaultAnalyticsPayloadWithOnboardingStatus:*(a1 + 64)];
                LODWORD(v24) = 1120403456;
                v25 = [NSNumber numberWithFloat:v24];
                [v23 setObject:v25 forKeyedSubscript:@"scalingFactorForAnalyticsKey"];

                [v23 setObject:v86 forKeyedSubscript:@"aggregationWindow"];
                [v23 setObject:v87 forKeyedSubscript:@"deviceType"];
                [v23 setObject:v21 forKeyedSubscript:@"journalEntryType"];
                [v23 setObject:&off_10036C118 forKeyedSubscript:@"appType"];
                [v23 setObject:&off_10036C118 forKeyedSubscript:@"suggestionType"];
                [v23 setObject:&off_10036C118 forKeyedSubscript:@"suggestionUIPlacement"];
                v26 = [v21 intValue];
                *buf = 0;
                *&buf[8] = buf;
                *&buf[16] = 0x2020000000;
                v155 = 0;
                v130 = 0;
                v131 = &v130;
                v132 = 0x2020000000;
                v133 = 0;
                v126 = 0;
                v127 = &v126;
                v128 = 0x2020000000;
                v129 = 0;
                v122 = 0;
                v123 = &v122;
                v124 = 0x2020000000;
                v125 = 0;
                v118 = 0;
                v119 = &v118;
                v120 = 0x2020000000;
                v121 = 0;
                v114 = 0;
                v115 = &v114;
                v116 = 0x2020000000;
                v117 = 0;
                v113[0] = _NSConcreteStackBlock;
                v113[1] = 3221225472;
                v113[2] = __161__MOEngagementAndSuggestionAnalyticsManager_submitEngagementAnalyticsWithOnboardingStatus_submitDefaultMetrics_submitWeeklyRotationMetrics_AndCompletionHandler___block_invoke_191;
                v113[3] = &unk_10033F138;
                v113[10] = v26;
                v113[4] = buf;
                v113[5] = &v114;
                v113[6] = &v118;
                v113[7] = &v122;
                v113[8] = &v126;
                v113[9] = &v130;
                [v82 enumerateObjectsUsingBlock:v113];
                v27 = [NSNumber numberWithUnsignedInteger:*(*&buf[8] + 24)];
                [v23 setObject:v27 forKeyedSubscript:@"journalEntryCreatedCount"];

                v28 = [NSNumber numberWithUnsignedInteger:v131[3]];
                [v23 setObject:v28 forKeyedSubscript:@"journalEntryCancelledCount"];

                v29 = [NSNumber numberWithUnsignedInteger:v127[3]];
                [v23 setObject:v29 forKeyedSubscript:@"journalEntryDeletedCount"];

                v30 = [NSNumber numberWithUnsignedInteger:v123[3]];
                [v23 setObject:v30 forKeyedSubscript:@"journalEntryEditedCount"];

                v31 = [NSNumber numberWithUnsignedInteger:v119[3]];
                [v23 setObject:v31 forKeyedSubscript:@"journalEntryWithZeroCharacterCount"];

                v33 = *(*&buf[8] + 24);
                if (v33)
                {
                  *&v32 = v115[3] / v33;
                  v34 = [NSNumber numberWithUnsignedInteger:[MOEngagementAndSuggestionAnalyticsParams getCharacterCountBin:v32]];
                  [v23 setObject:v34 forKeyedSubscript:@"journalEntryAvgCharacterCountBinned"];
                }

                else
                {
                  [v23 setObject:&off_10036C118 forKeyedSubscript:@"journalEntryAvgCharacterCountBinned"];
                }

                if (v23)
                {
                  v108 = _NSConcreteStackBlock;
                  v109 = 3221225472;
                  v110 = __161__MOEngagementAndSuggestionAnalyticsManager_submitEngagementAnalyticsWithOnboardingStatus_submitDefaultMetrics_submitWeeklyRotationMetrics_AndCompletionHandler___block_invoke_2_205;
                  v111 = &unk_10033ADD8;
                  v35 = v23;
                  v112 = v35;
                  AnalyticsSendEventLazy();
                  ++*(*(*(a1 + 112) + 8) + 24);
                  v36 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                  {
                    *v150 = 138412546;
                    v151 = v85;
                    v152 = 2112;
                    v153 = v35;
                    _os_log_debug_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "Journal entry engagement analytics result was submitted to: %@, Analytics event: %@", v150, 0x16u);
                  }
                }

                _Block_object_dispose(&v114, 8);
                _Block_object_dispose(&v118, 8);
                _Block_object_dispose(&v122, 8);
                _Block_object_dispose(&v126, 8);
                _Block_object_dispose(&v130, 8);
                _Block_object_dispose(buf, 8);

                objc_autoreleasePoolPop(v22);
                v20 = v20 + 1;
              }

              while (v83 != v20);
              v83 = [v19 countByEnumeratingWithState:&v134 objects:v156 count:16];
            }

            while (v83);
          }
        }

        else
        {
          v19 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Some of journal entry engagement events are not eligible for diagnostic submission. Skip submitting journal entry engagement metrics", buf, 2u);
          }
        }

        v105[0] = _NSConcreteStackBlock;
        v105[1] = 3221225472;
        v105[2] = __161__MOEngagementAndSuggestionAnalyticsManager_submitEngagementAnalyticsWithOnboardingStatus_submitDefaultMetrics_submitWeeklyRotationMetrics_AndCompletionHandler___block_invoke_207;
        v105[3] = &unk_10033F110;
        v107 = *(a1 + 128);
        v106 = v10;
        v71 = [NSPredicate predicateWithBlock:v105];
        v37 = [*(a1 + 72) filteredArrayUsingPredicate:v71];
        v38 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          v39 = [v37 count];
          *buf = 138412546;
          *&buf[4] = v70;
          *&buf[12] = 2048;
          *&buf[14] = v39;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "Suggestion engagement event count from the last %@ days=%lu", buf, 0x16u);
        }

        v40 = [v37 filteredArrayUsingPredicate:v77];

        v41 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          v42 = [v40 count];
          *buf = 138412546;
          *&buf[4] = v87;
          *&buf[12] = 2048;
          *&buf[14] = v42;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "Suggestion engagement event count from device type %@=%lu", buf, 0x16u);
        }

        v74 = [v40 filteredArrayUsingPredicate:v76];
        v43 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          v44 = [v74 count];
          *buf = 134217984;
          *&buf[4] = v44;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "Suggestion engagement event count after filtering by DNU status=%lu", buf, 0xCu);
        }

        v45 = [v40 count];
        if (v45 <= [v74 count])
        {
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v78 = *(a1 + 80);
          v81 = [v78 countByEnumeratingWithState:&v101 objects:v149 count:16];
          if (v81)
          {
            v79 = *v102;
            do
            {
              v47 = 0;
              do
              {
                if (*v102 != v79)
                {
                  v48 = v47;
                  objc_enumerationMutation(v78);
                  v47 = v48;
                }

                v84 = v47;
                v49 = *(*(&v101 + 1) + 8 * v47);
                v97 = 0u;
                v98 = 0u;
                v99 = 0u;
                v100 = 0u;
                v50 = *(a1 + 88);
                v51 = [v50 countByEnumeratingWithState:&v97 objects:v148 count:16];
                if (v51)
                {
                  v52 = *v98;
                  do
                  {
                    v53 = 0;
                    do
                    {
                      if (*v98 != v52)
                      {
                        objc_enumerationMutation(v50);
                      }

                      v54 = [*(a1 + 96) generateSuggestionEngagementAggregatedMetric:v40 withDeviceType:v87 appType:&off_10036C0A0 suggestionType:*(*(&v97 + 1) + 8 * v53) suggestionUIPlacement:v49 analyticsAggregationWindowEnum:v86 onboardingStatus:*(a1 + 64)];
                      v55 = v54;
                      if (v54)
                      {
                        v92 = _NSConcreteStackBlock;
                        v93 = 3221225472;
                        v94 = __161__MOEngagementAndSuggestionAnalyticsManager_submitEngagementAnalyticsWithOnboardingStatus_submitDefaultMetrics_submitWeeklyRotationMetrics_AndCompletionHandler___block_invoke_211;
                        v95 = &unk_10033C490;
                        v56 = v54;
                        v96 = v56;
                        AnalyticsSendEventLazy();
                        ++*(*(*(a1 + 120) + 8) + 24);
                        v57 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
                        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
                        {
                          *buf = 138412547;
                          *&buf[4] = v85;
                          *&buf[12] = 2113;
                          *&buf[14] = v56;
                          _os_log_debug_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEBUG, "Suggestion engagement analytics result was submitted to: %@, Analytics event: %{private}@", buf, 0x16u);
                        }
                      }

                      v53 = v53 + 1;
                    }

                    while (v51 != v53);
                    v51 = [v50 countByEnumeratingWithState:&v97 objects:v148 count:16];
                  }

                  while (v51);
                }

                v47 = v84 + 1;
              }

              while ((v84 + 1) != v81);
              v81 = [v78 countByEnumeratingWithState:&v101 objects:v149 count:16];
            }

            while (v81);
          }

          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          v46 = *(a1 + 104);
          v58 = [v46 countByEnumeratingWithState:&v88 objects:v147 count:16];
          if (v58)
          {
            v59 = *v89;
            do
            {
              v60 = 0;
              do
              {
                if (*v89 != v59)
                {
                  objc_enumerationMutation(v46);
                }

                v61 = [*(a1 + 96) generateSuggestionEngagementAggregatedMetric:v40 withDeviceType:v87 appType:*(*(&v88 + 1) + 8 * v60) suggestionType:&off_10036C0A0 suggestionUIPlacement:&off_10036C0A0 analyticsAggregationWindowEnum:v86 onboardingStatus:*(a1 + 64)];
                v62 = v61;
                if (v61)
                {
                  v63 = v61;
                  AnalyticsSendEventLazy();
                  ++*(*(*(a1 + 120) + 8) + 24);
                  v64 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
                  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412547;
                    *&buf[4] = v85;
                    *&buf[12] = 2113;
                    *&buf[14] = v63;
                    _os_log_debug_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEBUG, "Suggestion engagement analytics result was submitted to: %@, Analytics event: %{private}@", buf, 0x16u);
                  }
                }

                v60 = v60 + 1;
              }

              while (v58 != v60);
              v58 = [v46 countByEnumeratingWithState:&v88 objects:v147 count:16];
            }

            while (v58);
          }
        }

        else
        {
          v46 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "Some of suggestion engagement events are not eligible for diagnostic submission. Skip submitting suggestion engagement metrics", buf, 2u);
          }
        }

        objc_autoreleasePoolPop(context);
        v73 = v73 + 1;
      }

      while (v73 != v67);
      v67 = [obj countByEnumeratingWithState:&v143 objects:v157 count:16];
    }

    while (v67);
  }
}

id __161__MOEngagementAndSuggestionAnalyticsManager_submitEngagementAnalyticsWithOnboardingStatus_submitDefaultMetrics_submitWeeklyRotationMetrics_AndCompletionHandler___block_invoke_176(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BMMomentsEngagementDeviceTypeColumn;
  v5 = [v3 objectForKeyedSubscript:BMMomentsEngagementDeviceTypeColumn];
  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [v3 objectForKeyedSubscript:v4];
    v8 = [v6 containsObject:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL __161__MOEngagementAndSuggestionAnalyticsManager_submitEngagementAnalyticsWithOnboardingStatus_submitDefaultMetrics_submitWeeklyRotationMetrics_AndCompletionHandler___block_invoke_2(id a1, NSDictionary *a2, NSDictionary *a3)
{
  v3 = a2;
  v4 = BMMomentsEngagementIsDiagnosticSubmissionAllowedColumn;
  v5 = [(NSDictionary *)v3 objectForKeyedSubscript:BMMomentsEngagementIsDiagnosticSubmissionAllowedColumn];
  if (!v5)
  {
    goto LABEL_3;
  }

  v6 = v5;
  v7 = [(NSDictionary *)v3 objectForKeyedSubscript:v4];
  v8 = +[NSNull null];
  v9 = [v7 isEqual:v8];

  if ((v9 & 1) == 0)
  {
    v11 = [(NSDictionary *)v3 objectForKeyedSubscript:v4];
    v10 = [v11 BOOLValue];
  }

  else
  {
LABEL_3:
    v10 = 1;
  }

  return v10;
}

BOOL __161__MOEngagementAndSuggestionAnalyticsManager_submitEngagementAnalyticsWithOnboardingStatus_submitDefaultMetrics_submitWeeklyRotationMetrics_AndCompletionHandler___block_invoke_3(id a1, NSDictionary *a2, NSDictionary *a3)
{
  v3 = a2;
  v4 = BMMomentsEngagementIsDiagnosticSubmissionAllowedColumn;
  v5 = [(NSDictionary *)v3 objectForKeyedSubscript:BMMomentsEngagementIsDiagnosticSubmissionAllowedColumn];
  if (!v5)
  {
    goto LABEL_3;
  }

  v6 = v5;
  v7 = [(NSDictionary *)v3 objectForKeyedSubscript:v4];
  v8 = +[NSNull null];
  v9 = [v7 isEqual:v8];

  if ((v9 & 1) == 0)
  {
    v11 = [(NSDictionary *)v3 objectForKeyedSubscript:v4];
    v10 = [v11 BOOLValue];
  }

  else
  {
LABEL_3:
    v10 = 0;
  }

  return v10;
}

BOOL __161__MOEngagementAndSuggestionAnalyticsManager_submitEngagementAnalyticsWithOnboardingStatus_submitDefaultMetrics_submitWeeklyRotationMetrics_AndCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"entryEvent"];
  if (v4 && (v5 = v4, [v3 objectForKeyedSubscript:@"entryEvent"], v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v6, v5, (isKindOfClass & 1) != 0))
  {
    v8 = [v3 objectForKeyedSubscript:@"entryEvent"];
    v9 = [v8 objectForKeyedSubscript:@"timestamp"];
    if (v9)
    {
      v10 = [v3 objectForKeyedSubscript:@"entryEvent"];
      v11 = [v10 objectForKeyedSubscript:@"timestamp"];
      [v11 floatValue];
      v13 = v12;
      v14 = *(a1 + 40);
      [*(a1 + 32) floatValue];
      if (v14 + (v15 * -86400.0) <= v13)
      {
        v17 = [v3 objectForKeyedSubscript:@"entryEvent"];
        v18 = [v17 objectForKeyedSubscript:@"timestamp"];
        [v18 floatValue];
        v16 = *(a1 + 40) >= v19;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __161__MOEngagementAndSuggestionAnalyticsManager_submitEngagementAnalyticsWithOnboardingStatus_submitDefaultMetrics_submitWeeklyRotationMetrics_AndCompletionHandler___block_invoke_191(void *a1, void *a2)
{
  v15 = a2;
  v3 = [v15 objectForKeyedSubscript:@"entryEvent"];

  v4 = v15;
  if (v3)
  {
    v5 = [v15 objectForKeyedSubscript:@"entryEvent"];
    v6 = [v5 objectForKeyedSubscript:@"type"];
    v7 = [v6 intValue];

    v8 = [v5 objectForKeyedSubscript:@"bundleEvergreenTypes"];
    v9 = [v5 objectForKeyedSubscript:@"bundleInterfaceTypes"];
    v10 = a1[10];
    if (v10 == 1)
    {
      goto LABEL_13;
    }

    if (v10 == 2)
    {
      if (![v8 count] && !objc_msgSend(v9, "count"))
      {
        goto LABEL_13;
      }

      v10 = a1[10];
    }

    if (v10 == 3)
    {
      if ([v8 count])
      {
        goto LABEL_13;
      }

      v10 = a1[10];
    }

    if (v10 != 4 || [v8 count] || !objc_msgSend(v9, "count"))
    {
      goto LABEL_25;
    }

LABEL_13:
    if (v7 > 2)
    {
      if (v7 == 3)
      {
        v11 = a1[8];
        goto LABEL_24;
      }

      if (v7 == 4)
      {
        v11 = a1[9];
        goto LABEL_24;
      }
    }

    else if (v7 == 1)
    {
      ++*(*(a1[4] + 8) + 24);
      v12 = [v5 objectForKeyedSubscript:@"totalCharacters"];
      v13 = [v12 intValue];

      if (v13 < 1)
      {
        v11 = a1[6];
        goto LABEL_24;
      }

      v14 = [v5 objectForKeyedSubscript:@"totalCharacters"];
      *(*(a1[5] + 8) + 24) += [v14 intValue];
    }

    else if (v7 == 2)
    {
      v11 = a1[7];
LABEL_24:
      ++*(*(v11 + 8) + 24);
    }

LABEL_25:

    v4 = v15;
  }
}

BOOL __161__MOEngagementAndSuggestionAnalyticsManager_submitEngagementAnalyticsWithOnboardingStatus_submitDefaultMetrics_submitWeeklyRotationMetrics_AndCompletionHandler___block_invoke_207(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"suggestionEvent"];
  if (v4 && (v5 = v4, [v3 objectForKeyedSubscript:@"suggestionEvent"], v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v6, v5, (isKindOfClass & 1) != 0))
  {
    v8 = [v3 objectForKeyedSubscript:@"suggestionEvent"];
    v9 = [v8 objectForKeyedSubscript:@"timestamp"];
    if (v9)
    {
      v10 = [v3 objectForKeyedSubscript:@"suggestionEvent"];
      v11 = [v10 objectForKeyedSubscript:@"timestamp"];
      [v11 floatValue];
      v13 = v12;
      v14 = *(a1 + 40);
      [*(a1 + 32) floatValue];
      if (v14 + (v15 * -86400.0) <= v13)
      {
        v17 = [v3 objectForKeyedSubscript:@"suggestionEvent"];
        v18 = [v17 objectForKeyedSubscript:@"timestamp"];
        [v18 floatValue];
        v16 = *(a1 + 40) >= v19;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)generateSuggestionEngagementAggregatedMetric:(id)a3 withDeviceType:(id)a4 appType:(id)a5 suggestionType:(id)a6 suggestionUIPlacement:(id)a7 analyticsAggregationWindowEnum:(id)a8 onboardingStatus:(id)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = [MOEngagementAndSuggestionAnalyticsManager generateDefaultAnalyticsPayloadWithOnboardingStatus:a9];
  LODWORD(v21) = 1120403456;
  v22 = [NSNumber numberWithFloat:v21];
  [v20 setObject:v22 forKeyedSubscript:@"scalingFactorForAnalyticsKey"];

  v102 = v19;
  [v20 setObject:v19 forKeyedSubscript:@"aggregationWindow"];
  v107 = v15;
  [v20 setObject:v15 forKeyedSubscript:@"deviceType"];
  [v20 setObject:v16 forKeyedSubscript:@"appType"];
  [v20 setObject:v17 forKeyedSubscript:@"suggestionType"];
  [v20 setObject:v18 forKeyedSubscript:@"suggestionUIPlacement"];
  v105 = v20;
  [v20 setObject:&off_10036C118 forKeyedSubscript:@"journalEntryType"];
  v106 = v16;
  v23 = [v16 intValue];
  v104 = v17;
  v24 = [v17 intValue];
  v103 = v18;
  v132 = [v18 intValue];
  v117 = objc_opt_new();
  v116 = objc_opt_new();
  v115 = objc_opt_new();
  v114 = objc_opt_new();
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  obj = v14;
  v111 = [obj countByEnumeratingWithState:&v137 objects:v142 count:16];
  if (!v111)
  {
    v122 = 0;
    v123 = 0;
    v120 = 0;
    v121 = 0;
    v119 = 0;
    goto LABEL_87;
  }

  v122 = 0;
  v123 = 0;
  v120 = 0;
  v121 = 0;
  v119 = 0;
  v127 = v24;
  v110 = *v138;
  v25 = @"identifier";
  v26 = &GEOPOICategoryGasStation_ptr;
  v27 = @"suggestionId";
  v108 = v23;
  do
  {
    v28 = 0;
    do
    {
      if (*v138 != v110)
      {
        v29 = v28;
        objc_enumerationMutation(obj);
        v28 = v29;
      }

      v113 = v28;
      v30 = *(*(&v137 + 1) + 8 * v28);
      v31 = [v30 objectForKeyedSubscript:@"suggestionEvent"];

      if (!v31)
      {
        goto LABEL_83;
      }

      v32 = [v30 objectForKeyedSubscript:@"suggestionEvent"];
      v33 = [v32 objectForKeyedSubscript:@"type"];
      v124 = [v33 intValue];

      v118 = v32;
      v34 = [v32 objectForKeyedSubscript:@"clientIdentifier"];
      v112 = v34;
      if (v23 == 1)
      {
        v130 = 1;
      }

      else
      {
        v35 = v34;
        v36 = v118;
        if (v23 == 3)
        {
          v37 = [v26[237] null];
          if ([v35 isEqual:v37])
          {
LABEL_13:
            v130 = 0;
          }

          else
          {
            v130 = [v35 isEqualToString:@"com.apple.journal"] ^ 1;
          }

          goto LABEL_18;
        }

        if (v23 != 2)
        {
          v130 = 0;
          goto LABEL_19;
        }

        v37 = [v26[237] null];
        if ([v112 isEqual:v37])
        {
          goto LABEL_13;
        }

        v38 = [v112 isEqualToString:@"com.apple.journal"];

        v130 = (v38 & 1) != 0;
      }

LABEL_18:
      v36 = v118;
LABEL_19:
      v39 = [v36 objectForKeyedSubscript:@"viewContainerName"];
      v40 = v132;
      v128 = v39;
      if (v132 != 1)
      {
        if (v132 == 3)
        {
          v43 = v39;
          v41 = [v26[237] null];
          if ([v43 isEqual:v41])
          {
LABEL_28:
            v125 = 0;
          }

          else
          {
            v125 = [v43 isEqualToString:@"Recent"];
          }

          goto LABEL_31;
        }

        if (v132 != 2)
        {
          goto LABEL_26;
        }

        v41 = [v26[237] null];
        if ([v128 isEqual:v41])
        {
          goto LABEL_28;
        }

        v42 = [v128 isEqualToString:@"Recommended"];

        if ((v42 & 1) == 0)
        {
LABEL_26:
          v125 = 0;
          goto LABEL_31;
        }

        v40 = 1;
      }

      v125 = v40;
LABEL_31:
      v44 = [v118 objectForKeyedSubscript:@"fullBundleOrderedSet"];

      if (!v44)
      {
        goto LABEL_82;
      }

      v45 = [v118 objectForKeyedSubscript:@"fullBundleOrderedSet"];
      v133 = 0u;
      v134 = 0u;
      v135 = 0u;
      v136 = 0u;
      v126 = v45;
      v131 = [v45 countByEnumeratingWithState:&v133 objects:v141 count:16];
      if (!v131)
      {
        goto LABEL_81;
      }

      v129 = *v134;
      do
      {
        for (i = 0; i != v131; i = i + 1)
        {
          if (*v134 != v129)
          {
            objc_enumerationMutation(v126);
          }

          v47 = *(*(&v133 + 1) + 8 * i);
          v48 = [v47 objectForKeyedSubscript:@"bundleSubType"];

          if (v48)
          {
            v49 = [v47 objectForKeyedSubscript:@"bundleSubType"];
            v50 = [v49 intValue];

            v51 = [MOEngagementAndSuggestionAnalyticsParams isEventBundleSubType:v50 mappedToAnalyticsSuggestionType:v127];
          }

          else
          {
            v51 = 0;
          }

          if (v132 == 5)
          {
            v52 = [v26[237] null];
            if (([v128 isEqual:v52] & 1) == 0 && objc_msgSend(v128, "isEqualToString:", @"Recommended"))
            {
              v57 = v26;
              v58 = v25;
              v53 = [v47 objectForKeyedSubscript:@"ordinalRankInRecommendedTab"];
              v54 = [v57[237] null];
              if (([v53 isEqual:v54] & 1) == 0)
              {
                v59 = [v47 objectForKeyedSubscript:@"ordinalRankInRecommendedTab"];
                if (v59)
                {
                  v60 = [v47 objectForKeyedSubscript:@"ordinalRankInRecommendedTab"];
                  v61 = [v60 intValue] < 11;

                  v125 |= v61;
                }

                v25 = v58;
              }

              v26 = &GEOPOICategoryGasStation_ptr;
LABEL_53:
            }

LABEL_54:

            v27 = @"suggestionId";
            goto LABEL_55;
          }

          if (v132 == 4)
          {
            v52 = [v26[237] null];
            if (([v128 isEqual:v52] & 1) == 0 && objc_msgSend(v128, "isEqualToString:", @"Recommended"))
            {
              v53 = [v47 objectForKeyedSubscript:@"ordinalRankInRecommendedTab"];
              v54 = [v26[237] null];
              if (([v53 isEqual:v54] & 1) == 0)
              {
                v55 = [v47 objectForKeyedSubscript:@"ordinalRankInRecommendedTab"];
                v56 = [v55 intValue] < 6;

                v125 |= v56;
              }

              goto LABEL_53;
            }

            goto LABEL_54;
          }

LABEL_55:
          if (!v130 || !v51 || (v125 & 1) == 0)
          {
            continue;
          }

          if (v124 <= 7)
          {
            if (v124 != 1)
            {
              if (v124 == 6)
              {
                ++v119;
              }

              continue;
            }

            ++v122;
            v78 = [v47 objectForKeyedSubscript:v25];
            if (!v78)
            {
              continue;
            }

            v79 = v78;
            v80 = [v47 objectForKeyedSubscript:v25];
            [v80 objectForKeyedSubscript:v27];
            v81 = v65 = v27;

            if (!v81)
            {
              goto LABEL_78;
            }

            v67 = [v47 objectForKeyedSubscript:v25];
            v68 = [v67 objectForKeyedSubscript:v65];
            v69 = v115;
LABEL_77:
            [v69 addObject:v68];

            goto LABEL_78;
          }

          switch(v124)
          {
            case 8:
              ++v121;
              v70 = [v47 objectForKeyedSubscript:v25];
              if (!v70)
              {
                continue;
              }

              v71 = v70;
              v72 = [v47 objectForKeyedSubscript:v25];
              [v72 objectForKeyedSubscript:v27];
              v73 = v65 = v27;

              if (!v73)
              {
                goto LABEL_78;
              }

              v67 = [v47 objectForKeyedSubscript:v25];
              v68 = [v67 objectForKeyedSubscript:v65];
              v69 = v116;
              goto LABEL_77;
            case 9:
              ++v123;
              v74 = [v47 objectForKeyedSubscript:v25];
              if (!v74)
              {
                continue;
              }

              v75 = v74;
              v76 = [v47 objectForKeyedSubscript:v25];
              [v76 objectForKeyedSubscript:v27];
              v77 = v65 = v27;

              if (!v77)
              {
                goto LABEL_78;
              }

              v67 = [v47 objectForKeyedSubscript:v25];
              v68 = [v67 objectForKeyedSubscript:v65];
              v69 = v117;
              goto LABEL_77;
            case 12:
              ++v120;
              v62 = [v47 objectForKeyedSubscript:v25];
              if (v62)
              {
                v63 = v62;
                v64 = [v47 objectForKeyedSubscript:v25];
                [v64 objectForKeyedSubscript:v27];
                v66 = v65 = v27;

                if (v66)
                {
                  v67 = [v47 objectForKeyedSubscript:v25];
                  v68 = [v67 objectForKeyedSubscript:v65];
                  v69 = v114;
                  goto LABEL_77;
                }

LABEL_78:
                v27 = v65;
                continue;
              }

              break;
          }
        }

        v131 = [v126 countByEnumeratingWithState:&v133 objects:v141 count:16];
      }

      while (v131);
LABEL_81:

      v23 = v108;
LABEL_82:

LABEL_83:
      v28 = v113 + 1;
    }

    while ((v113 + 1) != v111);
    v111 = [obj countByEnumeratingWithState:&v137 objects:v142 count:16];
  }

  while (v111);
LABEL_87:

  v82 = [v117 count];
  v83 = [v114 count];
  v84 = [v116 count];
  v85 = [v115 count];
  v86 = [NSNumber numberWithUnsignedInteger:v122];
  [v105 setObject:v86 forKeyedSubscript:@"suggestionSelectedCount"];

  v87 = [NSNumber numberWithUnsignedInteger:v119];
  [v105 setObject:v87 forKeyedSubscript:@"suggestionDeletedCount"];

  v88 = [NSNumber numberWithUnsignedInteger:v121];
  [v105 setObject:v88 forKeyedSubscript:@"suggestionQuickAddCount"];

  v89 = [NSNumber numberWithUnsignedInteger:v120];
  [v105 setObject:v89 forKeyedSubscript:@"totalviewedInterstitialCount"];

  v90 = [NSNumber numberWithUnsignedInteger:v123];
  [v105 setObject:v90 forKeyedSubscript:@"totalViewedSuggestionCount"];

  v91 = [NSNumber numberWithUnsignedInteger:v82];
  [v105 setObject:v91 forKeyedSubscript:@"uniqueViewedSuggestionCount"];

  v92 = [NSNumber numberWithUnsignedInteger:v83];
  [v105 setObject:v92 forKeyedSubscript:@"uniqueViewedInterstitalCount"];

  if (v82)
  {
    v94 = v82;
    *&v93 = 100.0 * (v84 / v82);
    v95 = [NSNumber numberWithFloat:v93];
    [v105 setObject:v95 forKeyedSubscript:@"uniqueSuggestionViewToQuickAddConversionRate"];

    *&v96 = 100.0 * (v85 / v94);
    v97 = [NSNumber numberWithFloat:v96];
    [v105 setObject:v97 forKeyedSubscript:@"uniqueSuggestionViewToSelectConversionRate"];
  }

  if (v123)
  {
    *&v93 = 100.0 * (v121 / v123);
    v98 = [NSNumber numberWithFloat:v93];
    [v105 setObject:v98 forKeyedSubscript:@"totalSuggestionViewToQuickAddConversionRate"];

    *&v99 = 100.0 * (v122 / v123);
    v100 = [NSNumber numberWithFloat:v99];
    [v105 setObject:v100 forKeyedSubscript:@"totalSuggestionViewToSelectConversionRate"];
  }

  return v105;
}

- (void)submitSuggestionPerformanceAnalyticsWithOnboardingStatus:(id)a3 submitDefaultMetrics:(BOOL)a4 submitWeeklyRotationMetrics:(BOOL)a5 AndCompletionHandler:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = objc_opt_new();
  v13 = objc_autoreleasePoolPush();
  v14 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Submitting suggestion performance metric analytics", buf, 2u);
  }

  v15 = [[MOEventBundleFetchOptions alloc] initWithDateInterval:0 ascending:1 limit:0 includeDeletedBundles:0 skipRanking:0];
  v16 = [(MOEngagementAndSuggestionAnalyticsManager *)self eventBundleStore];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = __172__MOEngagementAndSuggestionAnalyticsManager_submitSuggestionPerformanceAnalyticsWithOnboardingStatus_submitDefaultMetrics_submitWeeklyRotationMetrics_AndCompletionHandler___block_invoke;
  v20[3] = &unk_10033F188;
  v17 = v11;
  v23 = v17;
  v20[4] = self;
  v24 = a4;
  v25 = a5;
  v18 = v10;
  v21 = v18;
  v19 = v12;
  v22 = v19;
  [v16 fetchEventBundleWithOptions:v15 CompletionHandler:v20];

  objc_autoreleasePoolPop(v13);
}

void __172__MOEngagementAndSuggestionAnalyticsManager_submitSuggestionPerformanceAnalyticsWithOnboardingStatus_submitDefaultMetrics_submitWeeklyRotationMetrics_AndCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v13 = 134218242;
    v14 = [v5 count];
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "fetched bundle count, %lu, error, %@", &v13, 0x16u);
  }

  if (v6)
  {
    v8 = *(*(a1 + 56) + 16);
  }

  else
  {
    [*(a1 + 32) _submitSuggestionPerformanceAnalyticsFromEventBundles:v5 submitDefaultMetrics:*(a1 + 64) submitWeeklyRotationMetrics:*(a1 + 65) WithOnboardingStatus:*(a1 + 40) andCompletionResult:*(a1 + 48)];
    if (*(a1 + 65) == 1)
    {
      v9 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v13 = 138412290;
        v14 = @"com.apple.Moments.SuggestionPerformanceAggregatedMetrics";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Submitting weekly suggestion performance analytics to %@.", &v13, 0xCu);
      }

      [*(a1 + 32) _submitWeeklySuggestionPerformanceAnalyticsFromEventBundles:v5 WithOnboardingStatus:*(a1 + 40) andCompletionResult:*(a1 + 48)];
    }

    v10 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 48);
      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Suggestion perf analytics submission was completed. Result: %@", &v13, 0xCu);
    }

    v12 = *(a1 + 48);
    v8 = *(*(a1 + 56) + 16);
  }

  v8();
}

- (void)_submitSuggestionPerformanceAnalyticsFromEventBundles:(id)a3 submitDefaultMetrics:(BOOL)a4 submitWeeklyRotationMetrics:(BOOL)a5 WithOnboardingStatus:(id)a6 andCompletionResult:(id)a7
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a6;
  v13 = a7;
  v14 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [v11 count];
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Submitting suggestion performance metric for %lu bundles.", &buf, 0xCu);
  }

  v15 = +[NSDate date];
  v16 = objc_opt_new();
  v17 = v16;
  if (v10 && v9)
  {
    v18 = +[MOEngagementAndSuggestionAnalyticsParams allMetricsAggregationWindowMap];
LABEL_10:
    v19 = v18;

    goto LABEL_11;
  }

  if (v10)
  {
    v18 = +[MOEngagementAndSuggestionAnalyticsParams defaultMetricsAggregationWindowMap];
    goto LABEL_10;
  }

  if (v9)
  {
    v18 = +[MOEngagementAndSuggestionAnalyticsParams WeeklyRotationMetricsAggregationWindowMap];
    goto LABEL_10;
  }

  v19 = v16;
LABEL_11:
  if ([v19 count])
  {
    v20 = +[MOEngagementAndSuggestionAnalyticsParams suggestionUIVisibilityCategories];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v31 = 0x2020000000;
    v32 = 0;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = __189__MOEngagementAndSuggestionAnalyticsManager__submitSuggestionPerformanceAnalyticsFromEventBundles_submitDefaultMetrics_submitWeeklyRotationMetrics_WithOnboardingStatus_andCompletionResult___block_invoke;
    v24[3] = &unk_10033F1D8;
    v25 = v15;
    v26 = v11;
    v21 = v20;
    v27 = v21;
    v28 = v12;
    p_buf = &buf;
    [v19 enumerateKeysAndObjectsUsingBlock:v24];
    v22 = [NSNumber numberWithUnsignedInteger:*(*(&buf + 1) + 24)];
    [v13 setObject:v22 forKeyedSubscript:@"suggestionAnalyticsPayloadCount"];

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v23 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [MOEngagementAndSuggestionAnalyticsManager submitEngagementAnalyticsWithOnboardingStatus:v23 submitDefaultMetrics:? submitWeeklyRotationMetrics:? AndCompletionHandler:?];
    }

    [v13 setObject:&off_10036C130 forKeyedSubscript:@"suggestionAnalyticsPayloadCount"];
  }
}

void __189__MOEngagementAndSuggestionAnalyticsManager__submitSuggestionPerformanceAnalyticsFromEventBundles_submitDefaultMetrics_submitWeeklyRotationMetrics_WithOnboardingStatus_andCompletionResult___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v54 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v51 = v5;
  [v5 floatValue];
  v50 = [v6 dateByAddingTimeInterval:(v7 * -86400.0)];
  [NSPredicate predicateWithFormat:@"startDate >= %@ AND endDate <= %@", v50, *(a1 + 32)];
  v49 = v64 = a1;
  v55 = [*(a1 + 40) filteredArrayUsingPredicate:?];
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v79 = v51;
    v80 = 2048;
    v81 = [v55 count];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Submitting suggestion performance metric from the last %@days: bundleCount=%lu.", buf, 0x16u);
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = *(a1 + 48);
  v56 = [obj countByEnumeratingWithState:&v73 objects:v84 count:16];
  if (v56)
  {
    v53 = *v74;
    v9 = &GEOPOICategoryGasStation_ptr;
    do
    {
      v10 = 0;
      do
      {
        if (*v74 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v62 = v10;
        v11 = *(*(&v73 + 1) + 8 * v10);
        context = objc_autoreleasePoolPush();
        v12 = [v11 intValue];
        v13 = [MOEngagementAndSuggestionAnalyticsParams eventBundleVisibilityCategoryForUIForAnalyticsSuggestionUIVisibilityCategory:v12];
        v70[0] = _NSConcreteStackBlock;
        v70[1] = 3221225472;
        v70[2] = __189__MOEngagementAndSuggestionAnalyticsManager__submitSuggestionPerformanceAnalyticsFromEventBundles_submitDefaultMetrics_submitWeeklyRotationMetrics_WithOnboardingStatus_andCompletionResult___block_invoke_259;
        v70[3] = &unk_10033F1B0;
        v60 = v13;
        v71 = v60;
        v72 = v12;
        v59 = [NSPredicate predicateWithBlock:v70];
        v14 = [v55 filteredArrayUsingPredicate:?];
        v15 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = [v14 count];
          *buf = 138412802;
          v79 = v11;
          v80 = 2112;
          v81 = v51;
          v82 = 2048;
          v83 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Submitting suggestion performance metric for suggestionVisibilityCategory %@ from the last %@days : bundleCount=%lu.", buf, 0x20u);
        }

        v17 = [MOEngagementAndSuggestionAnalyticsManager generateDefaultAnalyticsPayloadWithOnboardingStatus:v64[7]];
        v18 = v9;
        LODWORD(v19) = 1120403456;
        v20 = [v9[190] numberWithFloat:v19];
        [v17 setObject:v20 forKeyedSubscript:@"scalingFactorForAnalyticsKey"];

        [v17 setObject:v54 forKeyedSubscript:@"aggregationWindow"];
        v58 = v17;
        [v17 setObject:v11 forKeyedSubscript:@"suggestionUIVisibilityCategory"];
        v57 = [v14 count];
        v65 = objc_opt_new();
        v63 = objc_opt_new();
        v21 = objc_opt_new();
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v22 = v14;
        v23 = [v22 countByEnumeratingWithState:&v66 objects:v77 count:16];
        if (!v23)
        {
          v25 = 0;
          v27 = 0.0;
          v28 = -INFINITY;
          goto LABEL_31;
        }

        v24 = v23;
        v25 = 0;
        v26 = *v67;
        v27 = 0.0;
        v28 = -INFINITY;
        do
        {
          v29 = 0;
          do
          {
            if (*v67 != v26)
            {
              objc_enumerationMutation(v22);
            }

            v30 = *(*(&v66 + 1) + 8 * v29);
            if ([v30 bundleSuperType] == 6 || objc_msgSend(v30, "bundleSuperType") == 7)
            {
              if ([v30 bundleSuperType] == 6)
              {
                v31 = v21;
                if ([v30 bundleSubType])
                {
                  goto LABEL_19;
                }
              }
            }

            else
            {
              v33 = v64[4];
              v34 = [v30 endDate];
              [v33 timeIntervalSinceDate:v34];
              v36 = v35 / 86400.0;

              if (v28 < v36)
              {
                v28 = v36;
              }

              if ([v30 bundleSuperType])
              {
                v37 = [v18[190] numberWithUnsignedInteger:{objc_msgSend(v30, "bundleSuperType")}];
                [v63 addObject:v37];
              }

              ++v25;
              v27 = v27 + v36;
              v31 = v65;
              if ([v30 bundleSubType])
              {
LABEL_19:
                v32 = [v18[190] numberWithUnsignedInteger:{objc_msgSend(v30, "bundleSubType")}];
                [v31 addObject:v32];
              }
            }

            v29 = v29 + 1;
          }

          while (v24 != v29);
          v38 = [v22 countByEnumeratingWithState:&v66 objects:v77 count:16];
          v24 = v38;
        }

        while (v38);
LABEL_31:

        v9 = v18;
        v39 = [v18[190] numberWithUnsignedInteger:v57];
        [v58 setObject:v39 forKeyedSubscript:@"suggestionCount"];

        v40 = [v18[190] numberWithUnsignedInteger:{objc_msgSend(v21, "count")}];
        [v58 setObject:v40 forKeyedSubscript:@"uniquePhotoMemorySuggestionSubTypeCount"];

        v41 = [v18[190] numberWithUnsignedInteger:{objc_msgSend(v65, "count")}];
        [v58 setObject:v41 forKeyedSubscript:@"uniqueSensedSuggestionSubTypeCount"];

        v42 = [v18[190] numberWithUnsignedInteger:{objc_msgSend(v63, "count")}];
        [v58 setObject:v42 forKeyedSubscript:@"uniqueSensedSuggestionSuperTypeCount"];

        if (v25)
        {
          *&v43 = v27 / v25;
          v44 = [v18[190] numberWithFloat:v43];
          [v58 setObject:v44 forKeyedSubscript:@"avgAgeofSensedSuggestionsInDays"];

          *&v45 = 100.0 * v28;
          v46 = [v18[190] numberWithFloat:v45];
          [v58 setObject:v46 forKeyedSubscript:@"maxAgeofSensedSuggestionsInDays"];
        }

        if (v58)
        {
          v47 = v58;
          AnalyticsSendEventLazy();
          ++*(*(v64[8] + 8) + 24);
          v48 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v79 = v47;
            _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "Suggestion perf analytics result was submitted: %@", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(context);
        v10 = v62 + 1;
      }

      while ((v62 + 1) != v56);
      v56 = [obj countByEnumeratingWithState:&v73 objects:v84 count:16];
    }

    while (v56);
  }
}

BOOL __189__MOEngagementAndSuggestionAnalyticsManager__submitSuggestionPerformanceAnalyticsFromEventBundles_submitDefaultMetrics_submitWeeklyRotationMetrics_WithOnboardingStatus_andCompletionResult___block_invoke_259(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 rankingDictionary];
  if (v4)
  {
    v5 = v4;
    v6 = [v3 rankingDictionary];
    v7 = [v6 count];

    if (v7)
    {
      v8 = [v3 rankingDictionary];
      v9 = [v8 objectForKey:@"visibilityCategoryForUI"];

      v10 = [v3 rankingDictionary];
      v11 = [v10 objectForKey:@"ordinalRankInRecommendedTab"];

      if (v9 && [*(a1 + 32) containsObject:v9])
      {
        v12 = *(a1 + 40);
        if (v12 == 5)
        {
          if (v11)
          {
            v13 = 11;
            goto LABEL_12;
          }
        }

        else
        {
          if (v12 != 4)
          {
            v14 = 1;
            goto LABEL_14;
          }

          if (v11)
          {
            v13 = 6;
LABEL_12:
            v14 = [v11 intValue] < v13;
LABEL_14:

            goto LABEL_15;
          }
        }
      }

      v14 = 0;
      goto LABEL_14;
    }
  }

  v14 = 0;
LABEL_15:

  return v14;
}

- (void)_submitWeeklySuggestionPerformanceAnalyticsFromEventBundles:(id)a3 WithOnboardingStatus:(id)a4 andCompletionResult:(id)a5
{
  v65 = a3;
  v76 = a4;
  v60 = a5;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v101 = [v65 count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Submitting weekly suggestion performance metric for %lu bundles.", buf, 0xCu);
  }

  v64 = +[NSDate date];
  v8 = +[MOEngagementAndSuggestionAnalyticsParams suggestionUIVisibilityCategoriesExtended];
  v63 = +[MOEngagementAndSuggestionAnalyticsParams analyticsSuggestionTypes];
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  obj = v8;
  v66 = [obj countByEnumeratingWithState:&v95 objects:v104 count:16];
  if (v66)
  {
    v81 = 0;
    v62 = *v96;
    do
    {
      v9 = 0;
      do
      {
        if (*v96 != v62)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v95 + 1) + 8 * v9);
        context = objc_autoreleasePoolPush();
        v78 = v10;
        v11 = [v10 intValue];
        v12 = [MOEngagementAndSuggestionAnalyticsParams eventBundleVisibilityCategoryForUIForAnalyticsSuggestionUIVisibilityCategory:v11];
        v91[0] = _NSConcreteStackBlock;
        v91[1] = 3221225472;
        v91[2] = __146__MOEngagementAndSuggestionAnalyticsManager__submitWeeklySuggestionPerformanceAnalyticsFromEventBundles_WithOnboardingStatus_andCompletionResult___block_invoke;
        v91[3] = &unk_10033F200;
        v68 = v12;
        v92 = v68;
        v94 = v11;
        v71 = v64;
        v93 = v71;
        v67 = [NSPredicate predicateWithBlock:v91];
        v79 = [v65 filteredArrayUsingPredicate:?];
        v13 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = [v79 count];
          *buf = 138412546;
          v101 = v78;
          v102 = 2048;
          v103 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Submitting weekly suggestion performance metric for suggestionVisibilityCategory %@: bundleCount=%lu.", buf, 0x16u);
        }

        v70 = v9;

        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v72 = v63;
        v80 = [v72 countByEnumeratingWithState:&v87 objects:v99 count:16];
        if (v80)
        {
          v77 = *v88;
          do
          {
            v15 = 0;
            do
            {
              if (*v88 != v77)
              {
                objc_enumerationMutation(v72);
              }

              v84 = v15;
              v16 = *(*(&v87 + 1) + 8 * v15);
              v17 = [v16 intValue];
              v86[0] = _NSConcreteStackBlock;
              v86[1] = 3221225472;
              v86[2] = __146__MOEngagementAndSuggestionAnalyticsManager__submitWeeklySuggestionPerformanceAnalyticsFromEventBundles_WithOnboardingStatus_andCompletionResult___block_invoke_262;
              v86[3] = &__block_descriptor_40_e40_B24__0__MOEventBundle_8__NSDictionary_16l;
              v86[4] = v17;
              v83 = [NSPredicate predicateWithBlock:v86];
              v18 = [v79 filteredArrayUsingPredicate:?];
              v19 = [MOEngagementAndSuggestionAnalyticsManager generateDefaultAnalyticsPayloadWithOnboardingStatus:v76];
              LODWORD(v20) = 1120403456;
              v21 = [NSNumber numberWithFloat:v20];
              [v19 setObject:v21 forKeyedSubscript:@"scalingFactorForAnalyticsKey"];

              [v19 setObject:v78 forKeyedSubscript:@"suggestionUIVisibilityCategory"];
              [v19 setObject:v16 forKeyedSubscript:@"suggestionType"];
              v82 = v17;
              if (v17 == 1)
              {
                v22 = [NSNumber numberWithUnsignedInteger:[(MOEngagementAndSuggestionAnalyticsManager *)self countUniqueAnalyticsSuggestionTypesForEventBundles:v18]];
                [v19 setObject:v22 forKeyedSubscript:@"uniqueSensedSuggestionTypeCount"];

                v75 = [NSPredicate predicateWithFormat:@"bundleSuperType == %d", 1];
                v23 = [v18 filteredArrayUsingPredicate:v75];
                v73 = [(MOEngagementAndSuggestionAnalyticsManager *)self countEventBundlesWithSamePlace:v23];
                v24 = [(MOEngagementAndSuggestionAnalyticsManager *)self countRepetitiveOutingBundles:v23];
                v74 = [NSPredicate predicateWithFormat:@"bundleSuperType == %d", 5];
                v25 = [v18 filteredArrayUsingPredicate:v74];
                v26 = [(MOEngagementAndSuggestionAnalyticsManager *)self countEventBundlesWithSamePersons:v25];
                v27 = [NSPredicate predicateWithFormat:@"bundleSuperType == %d", 2];
                v28 = [v18 filteredArrayUsingPredicate:v27];
                v29 = [(MOEngagementAndSuggestionAnalyticsManager *)self countActivityBundlesWithSameActionName:v28];
                v30 = [NSNumber numberWithUnsignedInteger:v24];
                [v19 setObject:v30 forKeyedSubscript:@"repetitiveOutingSuggestionCount"];

                v31 = [NSNumber numberWithUnsignedInteger:v73];
                [v19 setObject:v31 forKeyedSubscript:@"outingSuggestionWithSamePlaceCount"];

                v32 = [NSNumber numberWithUnsignedInteger:v26];
                [v19 setObject:v32 forKeyedSubscript:@"repetitiveTimeAtHomeSuggestionCount"];

                v33 = [NSNumber numberWithUnsignedInteger:v29];
                [v19 setObject:v33 forKeyedSubscript:@"repetitiveActivitySuggestionCount"];
              }

              v34 = [(MOEngagementAndSuggestionAnalyticsManager *)self countEventBundlesWithHolidayLabel:v18];
              v35 = [(MOEngagementAndSuggestionAnalyticsManager *)self countEventBundlesWithBirthdayLabel:v18];
              v36 = [(MOEngagementAndSuggestionAnalyticsManager *)self countEventBundlesWithPersons:v18];
              v37 = [(MOEngagementAndSuggestionAnalyticsManager *)self countEventBundlesWithResourceType:16 FromEventBudles:v18];
              v38 = [(MOEngagementAndSuggestionAnalyticsManager *)self countEventBundlesWithResourceType:17 FromEventBudles:v18];
              v39 = [(MOEngagementAndSuggestionAnalyticsManager *)self countEventBundlesWithResourceType:2 FromEventBudles:v18];
              v40 = [(MOEngagementAndSuggestionAnalyticsManager *)self countEventBundlesWithResourceType:3 FromEventBudles:v18];
              v41 = [NSNumber numberWithUnsignedInteger:v34];
              [v19 setObject:v41 forKeyedSubscript:@"suggestionsWithHolidayLabelCount"];

              v42 = [NSNumber numberWithUnsignedInteger:v35];
              [v19 setObject:v42 forKeyedSubscript:@"suggestionsWithBirthdayLabelCount"];

              v43 = [NSNumber numberWithUnsignedInteger:v36];
              [v19 setObject:v43 forKeyedSubscript:@"suggestionsWithPersonsCount"];

              v44 = [NSNumber numberWithUnsignedInteger:v37];
              [v19 setObject:v44 forKeyedSubscript:@"suggestionsWithStateOfMindLogCount"];

              v45 = [NSNumber numberWithUnsignedInteger:v38];
              [v19 setObject:v45 forKeyedSubscript:@"suggestionsWithInviteCount"];

              v46 = [NSNumber numberWithUnsignedInteger:v39];
              [v19 setObject:v46 forKeyedSubscript:@"suggestionsWithPhotoCount"];

              v47 = [NSNumber numberWithUnsignedInteger:v40];
              [v19 setObject:v47 forKeyedSubscript:@"suggestionsWithMediaCount"];

              v48 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v18 count]);
              [v19 setObject:v48 forKeyedSubscript:@"suggestionCount"];

              if ((v82 - 12) <= 0xFFFFFFFD)
              {
                [(MOEngagementAndSuggestionAnalyticsManager *)self calculateAverageAgeInDaysForEventBundles:v18 withSubmissionDate:v71];
                v50 = v49;
                [(MOEngagementAndSuggestionAnalyticsManager *)self calculateMaxAgeInDaysForEventBundles:v18 withSubmissionDate:v71];
                v52 = v51;
                *&v53 = 100.0 * v50;
                v54 = [NSNumber numberWithFloat:v53];
                [v19 setObject:v54 forKeyedSubscript:@"avgAgeofSensedSuggestionsInDays"];

                *&v55 = 100.0 * v52;
                v56 = [NSNumber numberWithFloat:v55];
                [v19 setObject:v56 forKeyedSubscript:@"maxAgeofSensedSuggestionsInDays"];
              }

              if (v19)
              {
                v57 = v19;
                AnalyticsSendEventLazy();
                v58 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
                if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
                {
                  *buf = 138477827;
                  v101 = v57;
                  _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "Suggestion perf analytics result was submitted: %{private}@", buf, 0xCu);
                }

                ++v81;
              }

              v15 = v84 + 1;
            }

            while (v80 != (v84 + 1));
            v80 = [v72 countByEnumeratingWithState:&v87 objects:v99 count:16];
          }

          while (v80);
        }

        objc_autoreleasePoolPop(context);
        v9 = v70 + 1;
      }

      while ((v70 + 1) != v66);
      v66 = [obj countByEnumeratingWithState:&v95 objects:v104 count:16];
    }

    while (v66);
  }

  else
  {
    v81 = 0;
  }

  v59 = [NSNumber numberWithUnsignedInteger:v81];
  [v60 setObject:v59 forKeyedSubscript:@"weeklySuggestionAnalyticsPayloadCount"];
}

uint64_t __146__MOEngagementAndSuggestionAnalyticsManager__submitWeeklySuggestionPerformanceAnalyticsFromEventBundles_WithOnboardingStatus_andCompletionResult___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 rankingDictionary];
  if (v4)
  {
    v5 = v4;
    v6 = [v3 rankingDictionary];
    v7 = [v6 count];

    if (v7)
    {
      v8 = [v3 rankingDictionary];
      v9 = [v8 objectForKey:@"visibilityCategoryForUI"];

      v10 = [v3 rankingDictionary];
      v11 = [v10 objectForKey:@"ordinalRankInRecommendedTab"];

      if (v9 && [*(a1 + 32) containsObject:v9])
      {
        v12 = *(a1 + 48);
        switch(v12)
        {
          case 7:
            v16 = [*(a1 + 40) dateByAddingTimeInterval:-604800.0];
            v17 = [v3 startDate];
            if (v17)
            {
              v18 = [v3 startDate];
              v14 = [v18 isAfterDate:v16];
            }

            else
            {
              v14 = 0;
            }

            goto LABEL_17;
          case 5:
            if (v11)
            {
              v13 = [v11 intValue] < 11;
LABEL_13:
              v14 = v13;
              goto LABEL_17;
            }

            break;
          case 4:
            if (v11)
            {
              v13 = [v11 intValue] < 6;
              goto LABEL_13;
            }

            break;
          default:
            v14 = 1;
            goto LABEL_17;
        }
      }

      v14 = 0;
LABEL_17:

      goto LABEL_18;
    }
  }

  v14 = 0;
LABEL_18:

  return v14;
}

BOOL __146__MOEngagementAndSuggestionAnalyticsManager__submitWeeklySuggestionPerformanceAnalyticsFromEventBundles_WithOnboardingStatus_andCompletionResult___block_invoke_262(uint64_t a1, void *a2)
{
  v3 = [a2 bundleSubType];
  v4 = *(a1 + 32);

  return [MOEngagementAndSuggestionAnalyticsParams isEventBundleSubType:v3 mappedToAnalyticsSuggestionType:v4];
}

+ (id)generateDefaultAnalyticsPayloadWithOnboardingStatus:(id)a3
{
  v3 = [MOEngagementAndSuggestionAnalyticsParams updateOnboardingStatusDictionaryKeys:a3];
  v4 = objc_opt_new();
  v5 = v4;
  if (v3)
  {
    [v4 addEntriesFromDictionary:v3];
  }

  v6 = [v5 objectForKeyedSubscript:@"onboardingCompletion"];

  if (v6)
  {
    v7 = [v5 objectForKeyedSubscript:@"onboardingCompletion"];
    v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", +[MOBiomeDonationUtility mapOnboardingFlowCompletion:](MOBiomeDonationUtility, "mapOnboardingFlowCompletion:", [v7 intValue]));
    [v5 setObject:v8 forKeyedSubscript:@"onboardingCompletion"];
  }

  return v5;
}

- (BOOL)isReadyToSubmitDefaultAnalytics
{
  lastAnalyticsSubmissionDate = self->_lastAnalyticsSubmissionDate;
  if (lastAnalyticsSubmissionDate)
  {
    [(NSDate *)lastAnalyticsSubmissionDate timeIntervalSinceNow];
    *&v4 = v4 / -86400.0;
    return self->_minimumTimeGapBetweenSubmissionsInDays < *&v4;
  }

  else
  {
    v6 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(MOEngagementAndSuggestionAnalyticsManager *)self isReadyToSubmitDefaultAnalytics];
    }

    [(MOEngagementAndSuggestionAnalyticsManager *)self setLastAnalyticsSubmissionDateForDefaultAnalyticsToNow];
    return 0;
  }
}

- (void)setLastAnalyticsSubmissionDateForDefaultAnalyticsToNow
{
  v3 = +[NSDate date];
  v4 = [(MOEngagementAndSuggestionAnalyticsManager *)self defaultsManager];
  [v4 setObject:v3 forKey:@"LastAnalyticsSubmissionDate"];

  v5 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    lastAnalyticsSubmissionDate = self->_lastAnalyticsSubmissionDate;
    v8 = 138412546;
    v9 = lastAnalyticsSubmissionDate;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Last analytics submission date was updated from %@ to %@", &v8, 0x16u);
  }

  v7 = self->_lastAnalyticsSubmissionDate;
  self->_lastAnalyticsSubmissionDate = v3;
}

- (BOOL)isReadyToSubmitWeeklyRotationAnalytics
{
  lastAnalyticsSubmissionDateForWeeklyRotationMetrics = self->_lastAnalyticsSubmissionDateForWeeklyRotationMetrics;
  if (lastAnalyticsSubmissionDateForWeeklyRotationMetrics)
  {
    [(NSDate *)lastAnalyticsSubmissionDateForWeeklyRotationMetrics timeIntervalSinceNow];
    *&v4 = v4 / -86400.0;
    return self->_minimumTimeGapBetweenSubmissionsForWeeklyRotationMetricsInDays < *&v4;
  }

  else
  {
    v6 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(MOEngagementAndSuggestionAnalyticsManager *)v6 isReadyToSubmitWeeklyRotationAnalytics];
    }

    [(MOEngagementAndSuggestionAnalyticsManager *)self setLastAnalyticsSubmissionDateForWeeklyRotationMetricsToNow];
    return 0;
  }
}

- (void)setLastAnalyticsSubmissionDateForWeeklyRotationMetricsToNow
{
  v3 = +[NSDate date];
  v4 = [(MOEngagementAndSuggestionAnalyticsManager *)self defaultsManager];
  [v4 setObject:v3 forKey:@"LastAnalyticsSubmissionDateForWeeklyRotationMetrics"];

  v5 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    lastAnalyticsSubmissionDateForWeeklyRotationMetrics = self->_lastAnalyticsSubmissionDateForWeeklyRotationMetrics;
    v8 = 138412546;
    v9 = lastAnalyticsSubmissionDateForWeeklyRotationMetrics;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Last analytics submission date for weekly rotation metric was updated from %@ to %@", &v8, 0x16u);
  }

  v7 = self->_lastAnalyticsSubmissionDateForWeeklyRotationMetrics;
  self->_lastAnalyticsSubmissionDateForWeeklyRotationMetrics = v3;
}

- (unint64_t)countEventBundlesWithSamePlace:(id)a3 locationThreshold:(double)a4
{
  v5 = a3;
  v33 = objc_opt_new();
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v5;
  v30 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v30)
  {
    v29 = *v43;
    do
    {
      for (i = 0; i != v30; i = i + 1)
      {
        if (*v43 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v42 + 1) + 8 * i);
        v8 = [v7 place];

        if (v8)
        {
          v31 = v7;
          v9 = [v7 place];
          v32 = [v9 placeKey];
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v10 = [v33 allKeys];
          v11 = [v10 countByEnumeratingWithState:&v38 objects:v47 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v39;
            while (2)
            {
              for (j = 0; j != v12; j = j + 1)
              {
                if (*v39 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = [v33 objectForKeyedSubscript:*(*(&v38 + 1) + 8 * j)];
                v16 = [v15 firstObject];
                v17 = [v16 place];
                v18 = [v9 isSimilarToPlace:v17 locationThreshold:a4];

                if (v18)
                {
                  [v15 addObject:v31];

                  v19 = v32;
                  goto LABEL_17;
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v38 objects:v47 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }
          }

          v10 = [NSMutableArray arrayWithObject:v31];
          v19 = v32;
          [v33 setObject:v10 forKeyedSubscript:v32];
LABEL_17:
        }
      }

      v30 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v30);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v20 = [v33 allValues];
  v21 = [v20 countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = 0;
    v24 = *v35;
    do
    {
      for (k = 0; k != v22; k = k + 1)
      {
        if (*v35 != v24)
        {
          objc_enumerationMutation(v20);
        }

        v26 = *(*(&v34 + 1) + 8 * k);
        if ([v26 count] >= 2)
        {
          v23 = [v26 count] + v23 - 1;
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v34 objects:v46 count:16];
    }

    while (v22);
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (unint64_t)countEventBundlesWithSamePersons:(id)a3
{
  v3 = a3;
  v52 = objc_opt_new();
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = v3;
  v53 = [obj countByEnumeratingWithState:&v76 objects:v84 count:16];
  if (v53)
  {
    v51 = *v77;
    v4 = &GEOPOICategoryGasStation_ptr;
    do
    {
      v5 = 0;
      do
      {
        if (*v77 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v55 = v5;
        v6 = *(*(&v76 + 1) + 8 * v5);
        v7 = v4[236];
        v8 = objc_opt_new();
        v9 = [v6 persons];
        if (v9)
        {
          v10 = v9;
          v11 = [v6 persons];
          v12 = [v11 count];

          if (v12)
          {
            v74 = 0u;
            v75 = 0u;
            v72 = 0u;
            v73 = 0u;
            v13 = [v6 persons];
            v14 = [v13 countByEnumeratingWithState:&v72 objects:v83 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v73;
              do
              {
                for (i = 0; i != v15; i = i + 1)
                {
                  if (*v73 != v16)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v18 = *(*(&v72 + 1) + 8 * i);
                  v19 = [v18 contactIdentifier];

                  if (v19)
                  {
                    v20 = [v18 contactIdentifier];
                    [v8 addObject:v20];
                  }
                }

                v15 = [v13 countByEnumeratingWithState:&v72 objects:v83 count:16];
              }

              while (v15);
            }
          }
        }

        v54 = v6;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v21 = v52;
        v59 = [v21 countByEnumeratingWithState:&v68 objects:v82 count:16];
        if (v59)
        {
          v22 = *v69;
          v56 = *v69;
          v57 = v21;
          while (2)
          {
            for (j = 0; j != v59; j = j + 1)
            {
              if (*v69 != v22)
              {
                objc_enumerationMutation(v21);
              }

              v58 = *(*(&v68 + 1) + 8 * j);
              v24 = [v58 firstObject];
              v25 = v4[236];
              v26 = objc_opt_new();
              v27 = [v24 persons];
              if (v27)
              {
                v28 = v27;
                v29 = [v24 persons];
                v30 = [v29 count];

                if (v30)
                {
                  v66 = 0u;
                  v67 = 0u;
                  v64 = 0u;
                  v65 = 0u;
                  v31 = [v24 persons];
                  v32 = [v31 countByEnumeratingWithState:&v64 objects:v81 count:16];
                  if (v32)
                  {
                    v33 = v32;
                    v34 = *v65;
                    do
                    {
                      for (k = 0; k != v33; k = k + 1)
                      {
                        if (*v65 != v34)
                        {
                          objc_enumerationMutation(v31);
                        }

                        v36 = *(*(&v64 + 1) + 8 * k);
                        v37 = [v36 contactIdentifier];

                        if (v37)
                        {
                          v38 = [v36 contactIdentifier];
                          [v26 addObject:v38];
                        }
                      }

                      v33 = [v31 countByEnumeratingWithState:&v64 objects:v81 count:16];
                    }

                    while (v33);
                  }

                  v4 = &GEOPOICategoryGasStation_ptr;
                  v22 = v56;
                  v21 = v57;
                }
              }

              if (![v8 count] && !objc_msgSend(v26, "count") || objc_msgSend(v8, "count") && objc_msgSend(v26, "count") && (v39 = objc_msgSend(v8, "mutableCopy"), objc_msgSend(v39, "intersectSet:", v26), v40 = objc_msgSend(v39, "count"), v39, v40))
              {
                [v58 addObject:v54];

                goto LABEL_44;
              }
            }

            v59 = [v21 countByEnumeratingWithState:&v68 objects:v82 count:16];
            if (v59)
            {
              continue;
            }

            break;
          }
        }

        v41 = [NSMutableArray arrayWithObject:v54];
        [v21 addObject:v41];
        v21 = v41;
LABEL_44:

        v5 = v55 + 1;
      }

      while ((v55 + 1) != v53);
      v53 = [obj countByEnumeratingWithState:&v76 objects:v84 count:16];
    }

    while (v53);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v42 = v52;
  v43 = [v42 countByEnumeratingWithState:&v60 objects:v80 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = 0;
    v46 = *v61;
    do
    {
      for (m = 0; m != v44; m = m + 1)
      {
        if (*v61 != v46)
        {
          objc_enumerationMutation(v42);
        }

        v48 = *(*(&v60 + 1) + 8 * m);
        if ([v48 count] >= 2)
        {
          v45 = [v48 count] + v45 - 1;
        }
      }

      v44 = [v42 countByEnumeratingWithState:&v60 objects:v80 count:16];
    }

    while (v44);
  }

  else
  {
    v45 = 0;
  }

  return v45;
}

- (unint64_t)countRepetitiveOutingBundles:(id)a3
{
  v4 = a3;
  v30 = objc_opt_new();
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v4;
  v32 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v32)
  {
    v31 = *v47;
    do
    {
      for (i = 0; i != v32; i = i + 1)
      {
        if (*v47 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v46 + 1) + 8 * i);
        v7 = [v6 place];

        if (v7)
        {
          v34 = v6;
          v36 = i;
          v8 = [v6 place];
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v9 = v30;
          v10 = [v9 countByEnumeratingWithState:&v42 objects:v51 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v43;
            while (2)
            {
              for (j = 0; j != v11; j = j + 1)
              {
                if (*v43 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v42 + 1) + 8 * j);
                v15 = [v14 firstObject];
                v16 = [v15 place];
                v17 = [v8 isSimilarToPlace:v16 locationThreshold:200.0];

                if (v17)
                {
                  [v14 addObject:v34];

                  goto LABEL_17;
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v42 objects:v51 count:16];
              if (v11)
              {
                continue;
              }

              break;
            }
          }

          v18 = [NSMutableArray arrayWithObject:v34];
          [v9 addObject:v18];
          v9 = v18;
LABEL_17:

          i = v36;
        }
      }

      v32 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
    }

    while (v32);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v33 = v30;
  v37 = [v33 countByEnumeratingWithState:&v38 objects:v50 count:16];
  v19 = 0;
  if (v37)
  {
    v35 = *v39;
    do
    {
      for (k = 0; k != v37; k = k + 1)
      {
        if (*v39 != v35)
        {
          objc_enumerationMutation(v33);
        }

        v21 = *(*(&v38 + 1) + 8 * k);
        if ([v21 count] >= 2 && objc_msgSend(v21, "count"))
        {
          v22 = 0;
          do
          {
            v23 = v22++;
            if (v22 < [v21 count])
            {
              v24 = v22;
              do
              {
                v25 = [v21 objectAtIndexedSubscript:v23];
                v26 = [v21 objectAtIndexedSubscript:v24];
                v27 = [(MOEngagementAndSuggestionAnalyticsManager *)self bundleHasPhotoOrMediaResources:v25];
                v19 += v27 & [(MOEngagementAndSuggestionAnalyticsManager *)self bundleHasPhotoOrMediaResources:v26]^ 1;

                ++v24;
              }

              while (v24 < [v21 count]);
            }
          }

          while (v22 < [v21 count]);
        }
      }

      v37 = [v33 countByEnumeratingWithState:&v38 objects:v50 count:16];
    }

    while (v37);
  }

  return v19;
}

- (BOOL)bundleHasPhotoOrMediaResources:(id)a3
{
  v3 = a3;
  v4 = [v3 resources];
  if (v4)
  {
    v5 = v4;
    v6 = [v3 resources];
    v7 = [v6 count];

    if (v7)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v8 = [v3 resources];
      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v16;
        while (2)
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v16 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v15 + 1) + 8 * i);
            if ([v13 type] == 2 || objc_msgSend(v13, "type") == 3)
            {
              LOBYTE(v7) = 1;
              goto LABEL_16;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
          LOBYTE(v7) = 0;
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        LOBYTE(v7) = 0;
      }

LABEL_16:
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (unint64_t)countActivityBundlesWithSameActionName:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        v12 = [v11 action];
        v13 = [v12 actionName];

        if (v13 && [v13 length])
        {
          v14 = [v4 objectForKeyedSubscript:v13];

          if (!v14)
          {
            v15 = objc_opt_new();
            [v4 setObject:v15 forKeyedSubscript:v13];
          }

          v16 = [v4 objectForKeyedSubscript:v13];
          [v16 addObject:v11];
        }

        else
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    [v4 setObject:v5 forKeyedSubscript:&stru_1003416B0];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = [v4 allValues];
  v18 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v21 = *v26;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v25 + 1) + 8 * j);
        if ([v23 count] >= 2)
        {
          v20 = [v23 count] + v20 - 1;
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v19);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (unint64_t)countEventBundlesWithHolidayLabel:(id)a3
{
  v3 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v17;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 rankingDictionary];
        if (v10)
        {
          v11 = v10;
          v12 = [v9 rankingDictionary];
          v13 = [v12 objectForKeyedSubscript:@"useHolidayLabel"];
          v14 = [v13 BOOLValue];

          v6 += v14 & 1;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)countEventBundlesWithBirthdayLabel:(id)a3
{
  v3 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v17;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 rankingDictionary];
        if (v10)
        {
          v11 = v10;
          v12 = [v9 rankingDictionary];
          v13 = [v12 objectForKeyedSubscript:@"useBirthdayLabel"];
          v14 = [v13 BOOLValue];

          v6 += v14 & 1;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)countEventBundlesWithPersons:(id)a3
{
  v3 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 persons];
        if (v10)
        {
          v11 = v10;
          v12 = [v9 persons];
          v13 = [v12 count];

          if (v13)
          {
            ++v6;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)countEventBundlesWithResourceType:(unint64_t)a3 FromEventBudles:(id)a4
{
  v5 = a4;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v27;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = [v11 resources];
        if (v12)
        {
          v13 = v12;
          v14 = [v11 resources];
          v15 = [v14 count];

          if (v15)
          {
            v24 = 0u;
            v25 = 0u;
            v22 = 0u;
            v23 = 0u;
            v16 = [v11 resources];
            v17 = [v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v23;
              while (2)
              {
                for (j = 0; j != v18; j = j + 1)
                {
                  if (*v23 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  if ([*(*(&v22 + 1) + 8 * j) type] == a3)
                  {
                    ++v8;
                    goto LABEL_18;
                  }
                }

                v18 = [v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
                if (v18)
                {
                  continue;
                }

                break;
              }
            }

LABEL_18:
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (float)calculateAverageAgeInDaysForEventBundles:(id)a3 withSubmissionDate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = 0.0;
  if ([v5 count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v20;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          if ([v14 bundleSuperType] != 7 && objc_msgSend(v14, "bundleSuperType") != 6)
          {
            v15 = [v14 endDate];
            [v6 timeIntervalSinceDate:v15];
            v17 = v16 / 86400.0;

            v7 = v7 + v17;
            ++v11;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);

      if (v11)
      {
        v7 = v7 / v11;
      }

      else
      {
        v7 = 0.0;
      }
    }

    else
    {
    }
  }

  return v7;
}

- (float)calculateMaxAgeInDaysForEventBundles:(id)a3 withSubmissionDate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = 0.0;
  if ([v5 count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v20;
      v7 = -INFINITY;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          if ([v14 bundleSuperType] != 7 && objc_msgSend(v14, "bundleSuperType") != 6)
          {
            v15 = [v14 endDate];
            [v6 timeIntervalSinceDate:v15];
            v17 = v16 / 86400.0;

            if (v7 < v17)
            {
              v7 = v17;
            }

            v11 = 1;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);

      if ((v11 & 1) == 0)
      {
        v7 = 0.0;
      }
    }

    else
    {
    }
  }

  return v7;
}

- (unint64_t)countUniqueAnalyticsSuggestionTypesForEventBundles:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v16 = +[MOEngagementAndSuggestionAnalyticsParams sensedAnalyticsSuggestionTypes];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v3;
  v18 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v18)
  {
    v17 = *v25;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v24 + 1) + 8 * i);
        if ([v6 bundleSubType])
        {
          v19 = i;
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v7 = v16;
          v8 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v21;
            do
            {
              for (j = 0; j != v9; j = j + 1)
              {
                if (*v21 != v10)
                {
                  objc_enumerationMutation(v7);
                }

                v12 = *(*(&v20 + 1) + 8 * j);
                if (+[MOEngagementAndSuggestionAnalyticsParams isEventBundleSubType:mappedToAnalyticsSuggestionType:](MOEngagementAndSuggestionAnalyticsParams, "isEventBundleSubType:mappedToAnalyticsSuggestionType:", [v6 bundleSubType], objc_msgSend(v12, "intValue")))
                {
                  [v4 addObject:v12];
                }
              }

              v9 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
            }

            while (v9);
          }

          i = v19;
        }
      }

      v18 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v18);
  }

  v13 = [v4 count];
  return v13;
}

- (double)isReadyToSubmitDefaultAnalytics
{
  v2 = *(a1 + 8);
  v4 = 134217984;
  v5 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Default Engagement and suggestion analytics were never submitted. Setting lastAnalyticsSubmissionDateForDefaultAnalytics to now to hold out for the next %.1f days", &v4, 0xCu);
  return result;
}

@end