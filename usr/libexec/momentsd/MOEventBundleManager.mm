@interface MOEventBundleManager
+ (id)dateFormatterForKeyword;
+ (id)getStringValueInDictionary:(id)dictionary withKey:(id)key;
- (BOOL)isDataDumpEnabledForTrigger:(unint64_t)trigger;
- (BOOL)persistBundlingDataWithoutRandomization;
- (MOEventBundleManager)initWithUniverse:(id)universe;
- (id)_concatenatedEventIdentifierForBundle:(id)bundle;
- (id)_getMetadataForTrigger:(unint64_t)trigger;
- (id)_updateIdentifiersForEventBundles:(id)bundles eventIDsToBundleIDMapping:(id)mapping;
- (id)_updateIdentifiersForEvergreenBundles:(id)bundles;
- (id)adjacentKeywordsForEventBundle:(id)bundle;
- (id)findRehydrateEvents:(id)events forBundle:(id)bundle;
- (id)getAllowedToPromptConfiguration;
- (id)getUnfilteredEventBundleFrom:(id)from with:(id)with;
- (id)keywordForEventBundle:(id)bundle;
- (id)matchedEventBundleForEventBundle:(id)bundle otherEventBundles:(id)bundles;
- (id)partitionedEventBundles:(id)bundles;
- (void)_annotateEventBundlesWithStartDate:(id)date endDate:(id)endDate allEvents:(id)events eventBundles:(id)bundles handler:(id)handler;
- (void)_bundleEvents:(id)events startDate:(id)date endDate:(id)endDate submitMetricsFlg:(BOOL)flg refreshVariant:(unint64_t)variant handler:(id)handler;
- (void)_bundleEventsWithRefreshVariant:(unint64_t)variant andHandler:(id)handler;
- (void)_cleanUpEventBundlesWithRefreshVariant:(unint64_t)variant andHandler:(id)handler;
- (void)_clearEventBundles;
- (void)_clearFSMs;
- (void)_collectTimeCorrelatedEventsWithStartDate:(id)date endDate:(id)endDate events:(id)events submitMetricsFlg:(BOOL)flg handler:(id)handler;
- (void)_computeEngagementScoreParams;
- (void)_computeEvergreenScoreParams:(id)params withRankingParams:(id)rankingParams;
- (void)_computeSensedBundleEngagementScoreParams:(id)params withRankingParams:(id)rankingParams;
- (void)_expireOutdatedNotificationsWithHandler:(id)handler;
- (void)_fetchEventBundlesWithOptions:(id)options CompletionHandler:(id)handler;
- (void)_fetchEventBundlesWithPredicate:(id)predicate completionHandler:(id)handler;
- (void)_fetchPreviousBundlesWithDateInterval:(id)interval handler:(id)handler;
- (void)_filterPreOnboardedVisitEvents:(id)events handler:(id)handler;
- (void)_generateClusterAndAnomalyBundlesWithHandler:(id)handler;
- (void)_generatePersonalizedReflectionBundlesWithHandler:(id)handler;
- (void)_generateThematicSummarizationBundlesWithHandler:(id)handler;
- (void)_processClusterBundles:(id)bundles withEmbeddings:(id)embeddings onboardingStatus:(id)status result:(id)result andHandler:(id)handler;
- (void)_rehydrateEventBundles:(id)bundles withHandler:(id)handler;
- (void)_runAnalyticsWithOnboardingDictionary:(id)dictionary andHandler:(id)handler;
- (void)associateEventBundles:(id)bundles effectiveInterval:(id)interval;
- (void)beginDataExport;
- (void)buildLabelsForEventBundles:(id)bundles;
- (void)bundleEventsWithRefreshVariant:(unint64_t)variant andHandler:(id)handler;
- (void)cleanUpEventBundlesWithRefreshVariant:(unint64_t)variant andHandler:(id)handler;
- (void)clearEventBundlesWithRefreshVariant:(unint64_t)variant andHandler:(id)handler;
- (void)fetchAndPersistBundlesForTimeInterval:(id)interval eventsIdsToDrop:(id)drop withHandler:(id)handler;
- (void)fetchAndPersistEventsForTimeInterval:(id)interval withHandler:(id)handler;
- (void)fetchAndSaveBundlingDataForTrigger:(unint64_t)trigger withFeedback:(id)feedback additionalMetadata:(id)metadata shouldUpload:(BOOL)upload andHandler:(id)handler;
- (void)fetchEventBundlesWithOptions:(id)options CompletionHandler:(id)handler;
- (void)fetchEventBundlesWithPredicate:(id)predicate completionHandler:(id)handler;
- (void)fetchRehydratedEventBundlesWithOptions:(id)options CompletionHandler:(id)handler;
- (void)finalizeDataExportWithUpload:(BOOL)upload handler:(id)handler;
- (void)persistMetadata:(id)metadata;
- (void)persistRankingModel:(id)model;
- (void)saveEventBundleDictionary:(id)dictionary;
- (void)saveEventBundles:(id)bundles handler:(id)handler;
- (void)saveEventBundles:(id)bundles withStartDate:(id)date endDate:(id)endDate handler:(id)handler;
- (void)submitEventBundleInternalAnalytics:(id)analytics withSubmissionDate:(id)date withRefreshVariant:(unint64_t)variant;
- (void)submitMOEventData:(id)data startDate:(id)date endDate:(id)endDate subDate:(id)subDate;
- (void)submitMetricForEventBundleWithPromptMetrics:(id)metrics;
- (void)updateMetaDataForRankInEventBundles:(id)bundles;
- (void)updateMetaDataForRankforNewBundle:(id)bundle withOldBundle:(id)oldBundle;
- (void)updateSuggestionIDAndFirstCreationDateForNewEventBundles:(id)bundles previousEventBundles:(id)eventBundles updateSensitiveFlag:(BOOL)flag;
@end

@implementation MOEventBundleManager

- (BOOL)persistBundlingDataWithoutRandomization
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __73__MOEventBundleManager_DataDump__persistBundlingDataWithoutRandomization__block_invoke;
  block[3] = &unk_100335F40;
  block[4] = self;
  if (persistBundlingDataWithoutRandomization_onceToken != -1)
  {
    dispatch_once(&persistBundlingDataWithoutRandomization_onceToken, block);
  }

  return persistBundlingDataWithoutRandomization_persistWithoutRandomization;
}

void __73__MOEventBundleManager_DataDump__persistBundlingDataWithoutRandomization__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) defaultManager];
  v1 = [v2 objectForKey:@"BundlingDataPersistWithoutHashing"];
  persistBundlingDataWithoutRandomization_persistWithoutRandomization = [v1 BOOLValue];
}

- (id)getAllowedToPromptConfiguration
{
  v3 = objc_opt_new();
  v120 = objc_opt_new();
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v4 = [&off_10036DA40 countByEnumeratingWithState:&v121 objects:v127 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v122;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v122 != v6)
        {
          objc_enumerationMutation(&off_10036DA40);
        }

        v8 = *(*(&v121 + 1) + 8 * i);
        configurationManager = [(MOEventBundleManager *)self configurationManager];
        v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [configurationManager getBoolSettingForKey:v8 withFallback:0]);
        [v3 setObject:v10 forKey:v8];

        defaultManager = [(MOEventBundleManager *)self defaultManager];
        v12 = [defaultManager objectForKey:v8];

        if (!v12)
        {
          [v120 addObject:v8];
        }
      }

      v5 = [&off_10036DA40 countByEnumeratingWithState:&v121 objects:v127 count:16];
    }

    while (v5);
  }

  v13 = objc_opt_new();
  v14 = [MOConfigurationManager getSensedEventSettingNameFromCategory:0];
  if (v14)
  {
    configurationManager2 = [(MOEventBundleManager *)self configurationManager];
    v16 = [configurationManager2 isAllowedToPromptEventCategory:0];

    v17 = [NSNumber numberWithBool:v16];
    [v13 setObject:v17 forKey:v14];
  }

  v18 = [MOConfigurationManager getSensedEventSettingNameFromCategory:1];
  if (v18)
  {
    configurationManager3 = [(MOEventBundleManager *)self configurationManager];
    v20 = [configurationManager3 isAllowedToPromptEventCategory:1];

    v21 = [NSNumber numberWithBool:v20];
    [v13 setObject:v21 forKey:v18];
  }

  v22 = [MOConfigurationManager getSensedEventSettingNameFromCategory:2];
  if (v22)
  {
    configurationManager4 = [(MOEventBundleManager *)self configurationManager];
    v24 = [configurationManager4 isAllowedToPromptEventCategory:2];

    v25 = [NSNumber numberWithBool:v24];
    [v13 setObject:v25 forKey:v22];
  }

  v26 = [MOConfigurationManager getSensedEventSettingNameFromCategory:3];
  if (v26)
  {
    configurationManager5 = [(MOEventBundleManager *)self configurationManager];
    v28 = [configurationManager5 isAllowedToPromptEventCategory:3];

    v29 = [NSNumber numberWithBool:v28];
    [v13 setObject:v29 forKey:v26];
  }

  v30 = [MOConfigurationManager getSensedEventSettingNameFromCategory:4];
  if (v30)
  {
    configurationManager6 = [(MOEventBundleManager *)self configurationManager];
    v32 = [configurationManager6 isAllowedToPromptEventCategory:4];

    v33 = [NSNumber numberWithBool:v32];
    [v13 setObject:v33 forKey:v30];
  }

  v34 = [MOConfigurationManager getSensedEventSettingNameFromCategory:5];
  if (v34)
  {
    configurationManager7 = [(MOEventBundleManager *)self configurationManager];
    v36 = [configurationManager7 isAllowedToPromptEventCategory:5];

    v37 = [NSNumber numberWithBool:v36];
    [v13 setObject:v37 forKey:v34];
  }

  v38 = [MOConfigurationManager getSensedEventSettingNameFromCategory:6];
  if (v38)
  {
    configurationManager8 = [(MOEventBundleManager *)self configurationManager];
    v40 = [configurationManager8 isAllowedToPromptEventCategory:6];

    v41 = [NSNumber numberWithBool:v40];
    [v13 setObject:v41 forKey:v38];
  }

  v42 = [MOConfigurationManager getSensedEventSettingNameFromCategory:7];
  if (v42)
  {
    configurationManager9 = [(MOEventBundleManager *)self configurationManager];
    v44 = [configurationManager9 isAllowedToPromptEventCategory:7];

    v45 = [NSNumber numberWithBool:v44];
    [v13 setObject:v45 forKey:v42];
  }

  v46 = [MOConfigurationManager getSensedEventSettingNameFromCategory:8];
  if (v46)
  {
    configurationManager10 = [(MOEventBundleManager *)self configurationManager];
    v48 = [configurationManager10 isAllowedToPromptEventCategory:8];

    v49 = [NSNumber numberWithBool:v48];
    [v13 setObject:v49 forKey:v46];
  }

  v50 = [MOConfigurationManager getSensedEventSettingNameFromCategory:9];
  if (v50)
  {
    configurationManager11 = [(MOEventBundleManager *)self configurationManager];
    v52 = [configurationManager11 isAllowedToPromptEventCategory:9];

    v53 = [NSNumber numberWithBool:v52];
    [v13 setObject:v53 forKey:v50];
  }

  v54 = [MOConfigurationManager getSensedEventSettingNameFromCategory:10];
  if (v54)
  {
    configurationManager12 = [(MOEventBundleManager *)self configurationManager];
    v56 = [configurationManager12 isAllowedToPromptEventCategory:10];

    v57 = [NSNumber numberWithBool:v56];
    [v13 setObject:v57 forKey:v54];
  }

  v58 = [MOConfigurationManager getSensedEventSettingNameFromCategory:11];
  if (v58)
  {
    configurationManager13 = [(MOEventBundleManager *)self configurationManager];
    v60 = [configurationManager13 isAllowedToPromptEventCategory:11];

    v61 = [NSNumber numberWithBool:v60];
    [v13 setObject:v61 forKey:v58];
  }

  v62 = [MOConfigurationManager getSensedEventSettingNameFromCategory:12];
  if (v62)
  {
    configurationManager14 = [(MOEventBundleManager *)self configurationManager];
    v64 = [configurationManager14 isAllowedToPromptEventCategory:12];

    v65 = [NSNumber numberWithBool:v64];
    [v13 setObject:v65 forKey:v62];
  }

  v66 = [MOConfigurationManager getSensedEventSettingNameFromCategory:13];
  if (v66)
  {
    configurationManager15 = [(MOEventBundleManager *)self configurationManager];
    v68 = [configurationManager15 isAllowedToPromptEventCategory:13];

    v69 = [NSNumber numberWithBool:v68];
    [v13 setObject:v69 forKey:v66];
  }

  v70 = [MOConfigurationManager getSensedEventSettingNameFromCategory:14];
  if (v70)
  {
    configurationManager16 = [(MOEventBundleManager *)self configurationManager];
    v72 = [configurationManager16 isAllowedToPromptEventCategory:14];

    v73 = [NSNumber numberWithBool:v72];
    [v13 setObject:v73 forKey:v70];
  }

  v74 = [MOConfigurationManager getSensedEventSettingNameFromCategory:15];
  if (v74)
  {
    configurationManager17 = [(MOEventBundleManager *)self configurationManager];
    v76 = [configurationManager17 isAllowedToPromptEventCategory:15];

    v77 = [NSNumber numberWithBool:v76];
    [v13 setObject:v77 forKey:v74];
  }

  v78 = [MOConfigurationManager getSensedEventSettingNameFromCategory:16];
  if (v78)
  {
    configurationManager18 = [(MOEventBundleManager *)self configurationManager];
    v80 = [configurationManager18 isAllowedToPromptEventCategory:16];

    v81 = [NSNumber numberWithBool:v80];
    [v13 setObject:v81 forKey:v78];
  }

  v82 = [MOConfigurationManager getSensedEventSettingNameFromCategory:17];
  if (v82)
  {
    configurationManager19 = [(MOEventBundleManager *)self configurationManager];
    v84 = [configurationManager19 isAllowedToPromptEventCategory:17];

    v85 = [NSNumber numberWithBool:v84];
    [v13 setObject:v85 forKey:v82];
  }

  v86 = [MOConfigurationManager getSensedEventSettingNameFromCategory:18];
  if (v86)
  {
    configurationManager20 = [(MOEventBundleManager *)self configurationManager];
    v88 = [configurationManager20 isAllowedToPromptEventCategory:18];

    v89 = [NSNumber numberWithBool:v88];
    [v13 setObject:v89 forKey:v86];
  }

  v90 = [MOConfigurationManager getSensedEventSettingNameFromCategory:19];
  if (v90)
  {
    configurationManager21 = [(MOEventBundleManager *)self configurationManager];
    v92 = [configurationManager21 isAllowedToPromptEventCategory:19];

    v93 = [NSNumber numberWithBool:v92];
    [v13 setObject:v93 forKey:v90];
  }

  v94 = [MOConfigurationManager getSensedEventSettingNameFromCategory:20];
  if (v94)
  {
    configurationManager22 = [(MOEventBundleManager *)self configurationManager];
    v96 = [configurationManager22 isAllowedToPromptEventCategory:20];

    v97 = [NSNumber numberWithBool:v96];
    [v13 setObject:v97 forKey:v94];
  }

  v98 = [MOConfigurationManager getSensedEventSettingNameFromCategory:21];
  if (v98)
  {
    configurationManager23 = [(MOEventBundleManager *)self configurationManager];
    v100 = [configurationManager23 isAllowedToPromptEventCategory:21];

    v101 = [NSNumber numberWithBool:v100];
    [v13 setObject:v101 forKey:v98];
  }

  v102 = [MOConfigurationManager getSensedEventSettingNameFromCategory:22];
  if (v102)
  {
    configurationManager24 = [(MOEventBundleManager *)self configurationManager];
    v104 = [configurationManager24 isAllowedToPromptEventCategory:22];

    v105 = [NSNumber numberWithBool:v104];
    [v13 setObject:v105 forKey:v102];
  }

  v106 = [MOConfigurationManager getSensedEventSettingNameFromCategory:23];
  if (v106)
  {
    configurationManager25 = [(MOEventBundleManager *)self configurationManager];
    v108 = [configurationManager25 isAllowedToPromptEventCategory:23];

    v109 = [NSNumber numberWithBool:v108];
    [v13 setObject:v109 forKey:v106];
  }

  v110 = [MOConfigurationManager getSensedEventSettingNameFromCategory:24];
  if (v110)
  {
    configurationManager26 = [(MOEventBundleManager *)self configurationManager];
    v112 = [configurationManager26 isAllowedToPromptEventCategory:24];

    v113 = [NSNumber numberWithBool:v112];
    [v13 setObject:v113 forKey:v110];
  }

  v114 = [MOConfigurationManager getSensedEventSettingNameFromCategory:25];
  if (v114)
  {
    configurationManager27 = [(MOEventBundleManager *)self configurationManager];
    v116 = [configurationManager27 isAllowedToPromptEventCategory:25];

    v117 = [NSNumber numberWithBool:v116];
    [v13 setObject:v117 forKey:v114];
  }

  v125[0] = @"Settings";
  v125[1] = @"Streams";
  v126[0] = v3;
  v126[1] = v13;
  v125[2] = @"UnknownSettings";
  v126[2] = v120;
  v118 = [NSDictionary dictionaryWithObjects:v126 forKeys:v125 count:3];

  return v118;
}

- (void)beginDataExport
{
  if (+[MODataExportManager isServiceAvailable])
  {
    v3 = objc_alloc_init(MODataExportManager);
    [(MOEventBundleManager *)self setExportManager:v3];

    exportManager = [(MOEventBundleManager *)self exportManager];
    [exportManager startDataExportSession];
  }
}

- (void)fetchAndPersistEventsForTimeInterval:(id)interval withHandler:(id)handler
{
  intervalCopy = interval;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  v9 = [[MOEventFetchOptions alloc] initWithDateInterval:intervalCopy ascending:1 limit:0];
  v10 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerCaptureCurrentDBFetchEvents", "", buf, 2u);
  }

  v11 = [[MOPerformanceMeasurement alloc] initWithName:@"CaptureCurrentDBFetchEvents" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v11 startSession];
  *buf = 0;
  v20 = buf;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__5;
  v23 = __Block_byref_object_dispose__5;
  v24 = objc_opt_new();
  eventManager = [(MOEventBundleManager *)self eventManager];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __83__MOEventBundleManager_DataDump__fetchAndPersistEventsForTimeInterval_withHandler___block_invoke;
  v15[3] = &unk_100336B20;
  v15[4] = self;
  v18 = buf;
  v13 = handlerCopy;
  v17 = v13;
  v14 = v11;
  v16 = v14;
  [eventManager fetchEventsWithOptions:v9 CompletionHandler:v15];

  _Block_object_dispose(buf, 8);
  objc_autoreleasePoolPop(v8);
}

void __83__MOEventBundleManager_DataDump__fetchAndPersistEventsForTimeInterval_withHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __83__MOEventBundleManager_DataDump__fetchAndPersistEventsForTimeInterval_withHandler___block_invoke_2;
  v14[3] = &unk_100336AF8;
  v5 = *(a1 + 56);
  v14[4] = *(a1 + 32);
  v16 = v5;
  v6 = v4;
  v15 = v6;
  [v3 enumerateObjectsUsingBlock:v14];

  v7 = [*(a1 + 32) exportManager];

  if (v7)
  {
    v8 = [*(a1 + 32) exportManager];
    [v8 addEventsToDataExportSession:*(*(*(a1 + 56) + 8) + 40)];
  }

  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;

  v11 = *(a1 + 48);
  if (v11)
  {
    (*(v11 + 16))(v11, 0, v6);
  }

  v12 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v12))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerCaptureCurrentDBFetchEvents", "", v13, 2u);
  }

  [*(a1 + 40) endSession];
}

void __83__MOEventBundleManager_DataDump__fetchAndPersistEventsForTimeInterval_withHandler___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v9 = a2;
  v4 = [v3 configurationManager];
  v5 = [v4 isAllowedToPromptEventCategory:{objc_msgSend(v9, "category")}];

  if (v5)
  {
    [*(*(a1[6] + 8) + 40) addObject:v9];
  }

  else
  {
    v6 = a1[5];
    v7 = [v9 eventIdentifier];

    v8 = [v7 UUIDString];
    [v6 addObject:v8];

    v9 = v7;
  }
}

- (void)fetchAndPersistBundlesForTimeInterval:(id)interval eventsIdsToDrop:(id)drop withHandler:(id)handler
{
  intervalCopy = interval;
  dropCopy = drop;
  handlerCopy = handler;
  v11 = objc_autoreleasePoolPush();
  v12 = [[MOEventBundleFetchOptions alloc] initWithDateInterval:intervalCopy ascending:1 limit:0 filterBundle:0];
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy__5;
  v25[4] = __Block_byref_object_dispose__5;
  v26 = 0;
  v13 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerCaptureCurrentDBFetchEventBundles", "", buf, 2u);
  }

  v14 = [[MOPerformanceMeasurement alloc] initWithName:@"CaptureCurrentDBFetchEventBundles" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v14 startSession];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = __100__MOEventBundleManager_DataDump__fetchAndPersistBundlesForTimeInterval_eventsIdsToDrop_withHandler___block_invoke;
  v18[3] = &unk_100336B70;
  v15 = dropCopy;
  v23 = v25;
  v19 = v15;
  selfCopy = self;
  v16 = v14;
  v21 = v16;
  v17 = handlerCopy;
  v22 = v17;
  [(MOEventBundleManager *)self fetchEventBundlesWithOptions:v12 CompletionHandler:v18];

  _Block_object_dispose(v25, 8);
  objc_autoreleasePoolPop(v11);
}

void __100__MOEventBundleManager_DataDump__fetchAndPersistBundlesForTimeInterval_eventsIdsToDrop_withHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22 = a2;
  v20 = a3;
  v21 = a4;
  if (!v20)
  {
    v7 = *(a1 + 32);
    if (v7 && [v7 count])
    {
      v23 = objc_opt_new();
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v8 = v22;
      v9 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v9)
      {
        v10 = *v33;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v33 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = *(*(&v32 + 1) + 8 * i);
            *buf = 0;
            v29 = buf;
            v30 = 0x2020000000;
            v31 = 0;
            v13 = [v12 events];
            v25[0] = _NSConcreteStackBlock;
            v25[1] = 3221225472;
            v25[2] = __100__MOEventBundleManager_DataDump__fetchAndPersistBundlesForTimeInterval_eventsIdsToDrop_withHandler___block_invoke_2;
            v25[3] = &unk_100336B48;
            v26 = *(a1 + 32);
            v27 = buf;
            [v13 enumerateObjectsUsingBlock:v25];

            if ((v29[24] & 1) == 0)
            {
              [v23 addObject:v12];
            }

            _Block_object_dispose(buf, 8);
          }

          v9 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
        }

        while (v9);
      }

      v14 = *(*(a1 + 64) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v23;
    }

    else
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
    }

    [*(a1 + 40) buildLabelsForEventBundles:*(*(*(a1 + 64) + 8) + 40)];
    v16 = [*(a1 + 40) exportManager];

    if (v16)
    {
      v17 = [*(a1 + 40) exportManager];
      [v17 addBundlesToDataExportSession:*(*(*(a1 + 64) + 8) + 40)];
    }
  }

  v18 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerCaptureCurrentDBFetchEventBundles", "", buf, 2u);
  }

  [*(a1 + 48) endSession];
  v19 = *(a1 + 56);
  if (v19)
  {
    (*(v19 + 16))();
  }
}

void __100__MOEventBundleManager_DataDump__fetchAndPersistBundlesForTimeInterval_eventsIdsToDrop_withHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 eventIdentifier];
  v7 = [v6 UUIDString];

  if ([*(a1 + 32) containsObject:v7])
  {
    *a4 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (void)persistRankingModel:(id)model
{
  modelCopy = model;
  exportManager = [(MOEventBundleManager *)self exportManager];

  if (exportManager)
  {
    exportManager2 = [(MOEventBundleManager *)self exportManager];
    [exportManager2 addRankingModelToDataExportSession:modelCopy];
  }
}

- (void)persistMetadata:(id)metadata
{
  metadataCopy = metadata;
  exportManager = [(MOEventBundleManager *)self exportManager];

  if (exportManager)
  {
    exportManager2 = [(MOEventBundleManager *)self exportManager];
    [exportManager2 addMetadataToDataExportSession:metadataCopy];
  }
}

- (void)finalizeDataExportWithUpload:(BOOL)upload handler:(id)handler
{
  uploadCopy = upload;
  handlerCopy = handler;
  v7 = objc_autoreleasePoolPush();
  if (!+[MODataExportManager isServiceAvailable])
  {
    exportManager2 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(exportManager2, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, exportManager2, OS_LOG_TYPE_INFO, "Data export service not available", v11, 2u);
    }

LABEL_7:

    goto LABEL_8;
  }

  exportManager = [(MOEventBundleManager *)self exportManager];

  if (uploadCopy)
  {
    if (!exportManager)
    {
      goto LABEL_8;
    }

    exportManager2 = [(MOEventBundleManager *)self exportManager];
    [exportManager2 endSessionAndUploadAsync];
    goto LABEL_7;
  }

  if (exportManager)
  {
    exportManager3 = [(MOEventBundleManager *)self exportManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __71__MOEventBundleManager_DataDump__finalizeDataExportWithUpload_handler___block_invoke;
    v12[3] = &unk_100336B98;
    v13 = handlerCopy;
    [exportManager3 endSessionSyncWithReply:v12];

    goto LABEL_12;
  }

LABEL_8:
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, &__NSDictionary0__struct);
  }

LABEL_12:
  objc_autoreleasePoolPop(v7);
}

void __71__MOEventBundleManager_DataDump__finalizeDataExportWithUpload_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Sync data export completed", v9, 2u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v6, v5);
  }
}

+ (id)getStringValueInDictionary:(id)dictionary withKey:(id)key
{
  v4 = [dictionary objectForKeyedSubscript:key];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 performSelector:"stringValue"];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v6;
}

- (void)buildLabelsForEventBundles:(id)bundles
{
  bundlesCopy = bundles;
  context = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(MOEventBundleLabelFormatter);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = bundlesCopy;
  v5 = [obj countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    do
    {
      v8 = 0;
      do
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        v11 = [MOEventBundleMetaDataUtility buildMetaDataForEventBundle:v9];
        [v9 setMetaData:v11];

        metaData = [v9 metaData];

        if (metaData)
        {
          metaData2 = [v9 metaData];
          getBundleType = [v9 getBundleType];
          v15 = [(MOEventBundleLabelFormatter *)v4 formattedBundleLabelsForMetaData:metaData2 bundleType:getBundleType];
          [v9 setLabels:v15];

          metaData3 = [v9 metaData];
          getBundleType2 = [v9 getBundleType];
          v18 = [(MOEventBundleLabelFormatter *)v4 formattedBundlePromptsForMetaData:metaData3 bundleType:getBundleType2];
          [v9 setPromptLanguages:v18];

          v19 = _mo_log_facility_get_os_log(&MOLogFacilityFramework);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            getBundleType3 = [v9 getBundleType];
            *buf = 138412546;
            v32 = v9;
            v33 = 2112;
            v34 = getBundleType3;
            _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "build labels, event bundle, %@, bundleType, %@", buf, 0x16u);
          }

          v20 = _mo_log_facility_get_os_log(&MOLogFacilityFramework);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            [(MOEventBundleManager(DataDump) *)v29 buildLabelsForEventBundles:v9, &v30, v20];
          }
        }

        else
        {
          v20 = _mo_log_facility_get_os_log(&MOLogFacilityFramework);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            getBundleType4 = [v9 getBundleType];
            *buf = 138412546;
            v32 = v9;
            v33 = 2112;
            v34 = getBundleType4;
            _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "build labels, nil meta data, event bundle, %@, bundleType, %@", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v10);
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v25 objects:v35 count:16];
    }

    while (v6);
  }

  objc_autoreleasePoolPop(context);
}

- (MOEventBundleManager)initWithUniverse:(id)universe
{
  universeCopy = universe;
  objc_storeStrong(&self->fUniverse, universe);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [universeCopy getService:v8];

  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [universeCopy getService:v11];

  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  obj = [universeCopy getService:v14];

  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = [universeCopy getService:v16];

  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  v20 = [universeCopy getService:v19];

  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  v60 = [universeCopy getService:v22];

  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  v25 = [universeCopy getService:v24];

  v26 = objc_opt_class();
  v27 = NSStringFromClass(v26);
  v28 = [universeCopy getService:v27];

  if (!v9)
  {
    v47 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleManager initWithUniverse:];
    }

    v48 = +[NSAssertionHandler currentHandler];
    v31 = v48;
    v49 = @"Invalid parameter not satisfying: eventManager";
    v50 = a2;
    selfCopy4 = self;
    v52 = 226;
    goto LABEL_20;
  }

  if (!v12)
  {
    v53 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleManager initWithUniverse:];
    }

    v48 = +[NSAssertionHandler currentHandler];
    v31 = v48;
    v49 = @"Invalid parameter not satisfying: eventBundleStore";
    v50 = a2;
    selfCopy4 = self;
    v52 = 227;
    goto LABEL_20;
  }

  if (!v17)
  {
    v54 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleManager initWithUniverse:];
    }

    v48 = +[NSAssertionHandler currentHandler];
    v31 = v48;
    v49 = @"Invalid parameter not satisfying: defaultManager";
    v50 = a2;
    selfCopy4 = self;
    v52 = 230;
    goto LABEL_20;
  }

  if (!v20)
  {
    v55 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      [MOEventStore initWithUniverse:];
    }

    v48 = +[NSAssertionHandler currentHandler];
    v31 = v48;
    v49 = @"Invalid parameter not satisfying: configurationManager";
    v50 = a2;
    selfCopy4 = self;
    v52 = 231;
LABEL_20:
    [v48 handleFailureInMethod:v50 object:selfCopy4 file:@"MOEventBundleManager.m" lineNumber:v52 description:v49];
    selfCopy5 = 0;
    goto LABEL_21;
  }

  v29 = objc_opt_class();
  v30 = NSStringFromClass(v29);
  v31 = [universeCopy getService:v30];

  v32 = objc_opt_class();
  v33 = NSStringFromClass(v32);
  v59 = [universeCopy getService:v33];

  v34 = objc_opt_class();
  v35 = NSStringFromClass(v34);
  v58 = [universeCopy getService:v35];

  v36 = objc_opt_class();
  v37 = NSStringFromClass(v36);
  v57 = [universeCopy getService:v37];

  v62.receiver = self;
  v62.super_class = MOEventBundleManager;
  v38 = [(MOEventBundleManager *)&v62 init];
  if (v38)
  {
    v39 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v40 = dispatch_queue_create("MOEventBundleManager", v39);
    queue = v38->_queue;
    v38->_queue = v40;

    objc_storeStrong(&v38->_eventBundleStore, v12);
    objc_storeStrong(&v38->_eventManager, v9);
    objc_storeStrong(&v38->_fsmStore, obj);
    v38->_enableSemanticPruning = 0;
    objc_storeStrong(&v38->_defaultManager, v17);
    objc_storeStrong(&v38->_configurationManager, v20);
    objc_storeStrong(&v38->_engagementHistoryManager, v60);
    objc_storeStrong(&v38->_eventBundleRanking, v25);
    objc_storeStrong(&v38->_bundleClusteringManager, v28);
    objc_storeStrong(&v38->_thematicSummarizationManager, v31);
    objc_storeStrong(&v38->_onboardingAndSettingsPersistence, v59);
    v42 = [[MOBiomeManager alloc] initWithEventManager:v38->_eventManager setDefaultValues:1];
    biomeManager = v38->_biomeManager;
    v38->_biomeManager = v42;

    objc_storeStrong(&v38->_engagementAndSuggestionAnalyticsManager, v58);
    v44 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.momentsd.MOUserNotifications" queue:v38->_queue];
    notificationCenter = v38->_notificationCenter;
    v38->_notificationCenter = v44;

    objc_storeStrong(&v38->_notificationAnalyticsManager, v57);
  }

  self = v38;

  selfCopy5 = self;
LABEL_21:

  return selfCopy5;
}

- (void)bundleEventsWithRefreshVariant:(unint64_t)variant andHandler:(id)handler
{
  handlerCopy = handler;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v8 = v7;
  v9 = variant - 1;
  if (variant - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, variant, "EventBundleManagerBundleEventsWrapper", "", buf, 2u);
  }

  v10 = [[MOPerformanceMeasurement alloc] initWithName:@"BundleEventsWrapper" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v10 startSession];
  eventBundleStore = [(MOEventBundleManager *)self eventBundleStore];
  persistenceManager = [eventBundleStore persistenceManager];
  availability = [persistenceManager availability];

  v14 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  v15 = v14;
  if (availability == 2)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "bundle events since datastore is available", buf, 2u);
    }

    v16 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    v17 = v16;
    if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_BEGIN, variant, "EventBundleManagerBundleEvents", "", buf, 2u);
    }

    v18 = [[MOPerformanceMeasurement alloc] initWithName:@"BundleEvents" measureRecentPeak:0];
    [(MOPerformanceMeasurement *)v18 startSession];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = __66__MOEventBundleManager_bundleEventsWithRefreshVariant_andHandler___block_invoke;
    v25[3] = &unk_10033B988;
    variantCopy = variant;
    v26 = v18;
    v29 = handlerCopy;
    selfCopy = self;
    v28 = v10;
    v19 = v18;
    [(MOEventBundleManager *)self _bundleEventsWithRefreshVariant:variant andHandler:v25];
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleManager bundleEventsWithRefreshVariant:andHandler:];
    }

    if (handlerCopy)
    {
      v34 = NSLocalizedDescriptionKey;
      v35 = @"[bundleEventsWithRefreshVariant] database is not available";
      v20 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v21 = [NSError errorWithDomain:@"MOErrorDomain" code:16 userInfo:v20];

      v32 = @"stateDatabaseAvailable";
      v33 = &__kCFBooleanFalse;
      v22 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      (*(handlerCopy + 2))(handlerCopy, v21, v22);
    }

    v23 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    v24 = v23;
    if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_END, variant, "EventBundleManagerBundleEventsWrapper", "", buf, 2u);
    }

    [(MOPerformanceMeasurement *)v10 endSession];
  }
}

void __66__MOEventBundleManager_bundleEventsWithRefreshVariant_andHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v8 = v7;
  v9 = *(a1 + 64);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v9, "EventBundleManagerBundleEvents", "", buf, 2u);
  }

  [*(a1 + 32) endSession];
  v10 = [v6 mutableCopy];
  [v10 setObject:&__kCFBooleanTrue forKey:@"stateDatabaseAvailable"];
  v11 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = *(a1 + 64);
    *buf = 134218498;
    v33 = v12;
    v34 = 2112;
    v35 = v6;
    v36 = 2112;
    v37 = v5;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[bundleEventsWithRefreshVariant]refreshVariant %lu, bundling result %@, error %@", buf, 0x20u);
  }

  if (v5)
  {
    (*(*(a1 + 56) + 16))();
  }

  else if (*(a1 + 64) == 1536)
  {
    v13 = *(a1 + 56);
    if (v13)
    {
      (*(v13 + 16))(v13, 0, v6);
    }

    v14 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 64);
      *buf = 134218498;
      v33 = v15;
      v34 = 2112;
      v35 = v6;
      v36 = 2112;
      v37 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Skip clustering and thematic summary generation for soft refresh, [bundleEventsWithRefreshVariant] refreshVariant %lu, bundling result %@, error %@", buf, 0x20u);
    }

    v16 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    v17 = v16;
    v18 = *(a1 + 64);
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_END, v18, "EventBundleManagerBundleEventsWrapper", "", buf, 2u);
    }

    [*(a1 + 48) endSession];
  }

  else
  {
    [*(a1 + 40) _computeEngagementScoreParams];
    v19 = [*(a1 + 40) onboardingAndSettingsPersistence];
    v20 = [v19 getSnapshotDictionaryForAnalytics];

    v21 = *(a1 + 40);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = __66__MOEventBundleManager_bundleEventsWithRefreshVariant_andHandler___block_invoke_341;
    v24[3] = &unk_10033B960;
    v22 = v10;
    v31 = *(a1 + 64);
    v23 = *(a1 + 40);
    v25 = v22;
    v26 = v23;
    v27 = v6;
    v28 = 0;
    v30 = *(a1 + 56);
    v29 = *(a1 + 48);
    [v21 _runAnalyticsWithOnboardingDictionary:v20 andHandler:v24];
  }
}

void __66__MOEventBundleManager_bundleEventsWithRefreshVariant_andHandler___block_invoke_341(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) addEntriesFromDictionary:v6];
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 80);
    *buf = 134218498;
    v57 = v8;
    v58 = 2112;
    v59 = v6;
    v60 = 2112;
    v61 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[bundleEventsWithRefreshVariant] refreshVariant %lu, default analytics metric submission result %@, error %@", buf, 0x20u);
  }

  v9 = [*(a1 + 40) configurationManager];
  LODWORD(v10) = 1202241536;
  [v9 getFloatSettingForKey:@"BundleClusteringBlackoutTimeWindow" withFallback:v10];
  v12 = v11;

  v13 = [*(a1 + 40) defaultManager];
  v14 = [v13 objectForKey:@"LastSuccessfulBundleClusteringDate"];

  if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v15 = v14;
    v16 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v57 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "last successful clustering date,  %@", buf, 0xCu);
    }

    v17 = +[NSDate now];
    [v17 timeIntervalSinceDate:v15];
    v19 = v18;
  }

  else
  {
    v15 = 0;
    v19 = 3.4028e38;
  }

  v20 = *(a1 + 80);
  v21 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
  if (v20 == 1280 || v19 >= v12)
  {
    if (v22)
    {
      v37 = *(a1 + 80);
      *buf = 134217984;
      v57 = v37;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Start clustering and thematic summary generation, [bundleEventsWithRefreshVariant] refreshVariant %lu", buf, 0xCu);
    }

    v38 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    v39 = v38;
    v40 = *(a1 + 80);
    if (v40 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, OS_SIGNPOST_INTERVAL_BEGIN, v40, "EventBundleManagerGenerateThematicSummarizationBundlesWrapper", "", buf, 2u);
    }

    v41 = [[MOPerformanceMeasurement alloc] initWithName:@"SignPostGenerateThematicSummarizationBundles" measureRecentPeak:0];
    [(MOPerformanceMeasurement *)v41 startSession];
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = __66__MOEventBundleManager_bundleEventsWithRefreshVariant_andHandler___block_invoke_358;
    v47[3] = &unk_10033B938;
    v32 = &v48;
    v51 = *(a1 + 80);
    v48 = v41;
    v34 = &v49;
    v42 = *(a1 + 40);
    *&v43 = *(a1 + 32);
    *(&v43 + 1) = *(a1 + 40);
    v46 = v43;
    v44 = *(a1 + 72);
    *&v45 = *(a1 + 64);
    *(&v45 + 1) = v44;
    v49 = v46;
    v50 = v45;
    v35 = v41;
    [v42 _generateThematicSummarizationBundlesWithHandler:v47];

    v36 = *(&v50 + 1);
  }

  else
  {
    if (v22)
    {
      v23 = [NSNumber numberWithDouble:v19 / 3600.0];
      v24 = *(a1 + 80);
      v25 = *(a1 + 48);
      v26 = *(a1 + 56);
      *buf = 138413058;
      v57 = v23;
      v58 = 2048;
      v59 = v24;
      v60 = 2112;
      v61 = v25;
      v62 = 2112;
      v63 = v26;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Skip clustering and thematic summary generation because it ran %@ hours ago and refresh variant is not MOEventRefreshVariantFull, [bundleEventsWithRefreshVariant] refreshVariant %lu, bundling result %@, error %@", buf, 0x2Au);
    }

    v27 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    v28 = v27;
    v29 = *(a1 + 80);
    if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_INTERVAL_BEGIN, v29, "EventBundleManagerExpireOldNotification", "", buf, 2u);
    }

    v30 = [[MOPerformanceMeasurement alloc] initWithName:@"SignPostExpireOldNotification" measureRecentPeak:0];
    [(MOPerformanceMeasurement *)v30 startSession];
    v31 = *(a1 + 40);
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = __66__MOEventBundleManager_bundleEventsWithRefreshVariant_andHandler___block_invoke_353;
    v52[3] = &unk_10033B8C0;
    v32 = &v53;
    v33 = *(a1 + 72);
    v55[1] = *(a1 + 80);
    v53 = v30;
    v34 = v55;
    v55[0] = v33;
    v54 = *(a1 + 48);
    v35 = v30;
    [v31 _expireOutdatedNotificationsWithHandler:v52];
    v36 = v54;
  }
}

uint64_t __66__MOEventBundleManager_bundleEventsWithRefreshVariant_andHandler___block_invoke_353(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v3 = v2;
  v4 = *(a1 + 56);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_END, v4, "EventBundleManagerExpireOldNotification", "", v6, 2u);
  }

  [*(a1 + 32) endSession];
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 40));
  }

  return result;
}

void __66__MOEventBundleManager_bundleEventsWithRefreshVariant_andHandler___block_invoke_358(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v30 = v6;
    v31 = 2112;
    v32 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[bundleEventsWithRefreshVariant] _generateThematicSummarizationBundlesWithHandler result:%@, error:%@", buf, 0x16u);
  }

  v8 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v9 = v8;
  v10 = *(a1 + 72);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v10, "EventBundleManagerGenerateThematicSummarizationBundlesWrapper", "", buf, 2u);
  }

  [*(a1 + 32) endSession];
  [*(a1 + 40) addEntriesFromDictionary:v6];
  v11 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v12 = v11;
  v13 = *(a1 + 72);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, v13, "EventBundleManagerGenerateClusterAndAnomalyBundlesWrapper", "", buf, 2u);
  }

  v14 = [[MOPerformanceMeasurement alloc] initWithName:@"SignPostGenerateClusterBundlesWrapper" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v14 startSession];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = __66__MOEventBundleManager_bundleEventsWithRefreshVariant_andHandler___block_invoke_362;
  v22[3] = &unk_10033B910;
  v15 = *(a1 + 48);
  v16 = *(a1 + 40);
  v17 = *(a1 + 64);
  v28 = *(a1 + 72);
  v23 = v16;
  v24 = v14;
  v18 = v17;
  v19 = *(a1 + 48);
  v20 = *(a1 + 56);
  v27 = v18;
  v25 = v19;
  v26 = v20;
  v21 = v14;
  [v15 _generateClusterAndAnomalyBundlesWithHandler:v22];
}

void __66__MOEventBundleManager_bundleEventsWithRefreshVariant_andHandler___block_invoke_362(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) addEntriesFromDictionary:v6];
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v8 = v7;
  v9 = *(a1 + 72);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v9, "EventBundleManagerGenerateClusterAndAnomalyBundlesWrapper", "", buf, 2u);
  }

  [*(a1 + 40) endSession];
  v10 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 72);
    *buf = 134218498;
    v31 = v11;
    v32 = 2112;
    v33 = v6;
    v34 = 2112;
    v35 = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[bundleEventsWithRefreshVariant] refreshVariant %lu, clustering result %@, error %@", buf, 0x20u);
  }

  if (v5)
  {
    v12 = *(a1 + 32);
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v13 = [*(a1 + 48) defaultManager];
    v14 = +[NSDate date];
    [v13 setObject:v14 forKey:@"LastSuccessfulBundleClusteringDate"];

    v15 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    v16 = v15;
    v17 = *(a1 + 72);
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_BEGIN, v17, "EventBundleManagerExpireOldNotification", "", buf, 2u);
    }

    v18 = [[MOPerformanceMeasurement alloc] initWithName:@"SignPostExpireOldNotification" measureRecentPeak:0];
    [(MOPerformanceMeasurement *)v18 startSession];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = __66__MOEventBundleManager_bundleEventsWithRefreshVariant_andHandler___block_invoke_363;
    v23[3] = &unk_10033B8E8;
    v29 = *(a1 + 72);
    v24 = v18;
    v19 = *(a1 + 48);
    v20 = *(a1 + 56);
    v21 = *(a1 + 48);
    v25 = v20;
    v26 = v21;
    v28 = *(a1 + 64);
    v27 = *(a1 + 32);
    v22 = v18;
    [v19 _expireOutdatedNotificationsWithHandler:v23];
  }
}

void __66__MOEventBundleManager_bundleEventsWithRefreshVariant_andHandler___block_invoke_363(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v3 = v2;
  v4 = *(a1 + 72);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_END, v4, "EventBundleManagerExpireOldNotification", "", buf, 2u);
  }

  [*(a1 + 32) endSession];
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v6 = v5;
  v7 = *(a1 + 72);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_END, v7, "EventBundleManagerBundleEventsWrapper", "", buf, 2u);
  }

  [*(a1 + 40) endSession];
  if (_os_feature_enabled_impl())
  {
    v8 = *(a1 + 48);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __66__MOEventBundleManager_bundleEventsWithRefreshVariant_andHandler___block_invoke_366;
    v11[3] = &unk_10033B210;
    v13 = *(a1 + 64);
    v12 = *(a1 + 56);
    [v8 _generatePersonalizedReflectionBundlesWithHandler:v11];
  }

  else
  {
    v9 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "PRP is disabled via feature flag MOBundlePRPEnabled, will not call the LLM adapter", buf, 2u);
    }

    v10 = *(a1 + 56);
    (*(*(a1 + 64) + 16))();
  }
}

- (void)_runAnalyticsWithOnboardingDictionary:(id)dictionary andHandler:(id)handler
{
  handlerCopy = handler;
  dictionaryCopy = dictionary;
  v8 = objc_opt_new();
  v9 = dispatch_group_create();
  dispatch_group_enter(v9);
  engagementAndSuggestionAnalyticsManager = [(MOEventBundleManager *)self engagementAndSuggestionAnalyticsManager];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = __73__MOEventBundleManager__runAnalyticsWithOnboardingDictionary_andHandler___block_invoke;
  v25[3] = &unk_10033B9B0;
  v11 = v8;
  v26 = v11;
  v12 = v9;
  v27 = v12;
  [engagementAndSuggestionAnalyticsManager submitEngagementAndSuggestionPerformanceAnalyticsWithOnboardingStatus:dictionaryCopy andCompletionHandler:v25];

  dispatch_group_enter(v12);
  notificationAnalyticsManager = [(MOEventBundleManager *)self notificationAnalyticsManager];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = __73__MOEventBundleManager__runAnalyticsWithOnboardingDictionary_andHandler___block_invoke_374;
  v22[3] = &unk_10033B9B0;
  v14 = v11;
  v23 = v14;
  v24 = v12;
  v15 = v12;
  [notificationAnalyticsManager submitNotificationAnalyticsWithCompletion:v22];

  queue = [(MOEventBundleManager *)self queue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = __73__MOEventBundleManager__runAnalyticsWithOnboardingDictionary_andHandler___block_invoke_375;
  v19[3] = &unk_10033B9D8;
  v20 = v14;
  v21 = handlerCopy;
  v17 = v14;
  v18 = handlerCopy;
  dispatch_group_notify(v15, queue, v19);
}

void __73__MOEventBundleManager__runAnalyticsWithOnboardingDictionary_andHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[bundleEventsWithRefreshVariant] default analytics metric submission result %@, error %@", &v9, 0x16u);
  }

  v8 = *(a1 + 32);
  objc_sync_enter(v8);
  [*(a1 + 32) addEntriesFromDictionary:v6];
  objc_sync_exit(v8);

  dispatch_group_leave(*(a1 + 40));
}

void __73__MOEventBundleManager__runAnalyticsWithOnboardingDictionary_andHandler___block_invoke_374(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[bundleEventsWithRefreshVariant] notification analytics submission result %@, error %@", &v10, 0x16u);
  }

  v8 = *(a1 + 32);
  objc_sync_enter(v8);
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = &__NSDictionary0__struct;
  }

  [*(a1 + 32) addEntriesFromDictionary:v9];
  objc_sync_exit(v8);

  dispatch_group_leave(*(a1 + 40));
}

- (void)_computeEngagementScoreParams
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__24;
  v14 = __Block_byref_object_dispose__24;
  v15 = 0;
  eventBundleStore = [(MOEventBundleManager *)self eventBundleStore];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __53__MOEventBundleManager__computeEngagementScoreParams__block_invoke;
  v9[3] = &unk_100337E98;
  v9[4] = &v10;
  [eventBundleStore getRankingParamsandCompletionHandler:v9];

  v4 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Attempting to update engagement score for sensed bundles", v8, 2u);
  }

  eventBundleRanking = [(MOEventBundleManager *)self eventBundleRanking];
  [(MOEventBundleManager *)self _computeSensedBundleEngagementScoreParams:eventBundleRanking withRankingParams:v11[5]];

  v6 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Attempting to update evergreen scores", v8, 2u);
  }

  eventBundleRanking2 = [(MOEventBundleManager *)self eventBundleRanking];
  [(MOEventBundleManager *)self _computeEvergreenScoreParams:eventBundleRanking2 withRankingParams:v11[5]];

  _Block_object_dispose(&v10, 8);
}

uint64_t __53__MOEventBundleManager__computeEngagementScoreParams__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (!a3)
  {
    v11 = v5;
    v5 = [v5 count];
    v6 = v11;
    if (v5)
    {
      v7 = [v11 objectAtIndexedSubscript:0];
      v8 = *(*(a1 + 32) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v6 = v11;
    }
  }

  return _objc_release_x1(v5, v6);
}

- (void)_computeSensedBundleEngagementScoreParams:(id)params withRankingParams:(id)rankingParams
{
  paramsCopy = params;
  rankingParamsCopy = rankingParams;
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerBundleEventsComputeSensedBundleEngagementScoreParams", "", buf, 2u);
  }

  v9 = [[MOPerformanceMeasurement alloc] initWithName:@"BundleEventsComputeEngagementScoreParams" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v9 startSession];
  v10 = +[NSDate date];
  if (!rankingParamsCopy)
  {
    queue = [(MOEventBundleManager *)self queue];
    v103[0] = _NSConcreteStackBlock;
    v103[1] = 3221225472;
    v103[2] = __84__MOEventBundleManager__computeSensedBundleEngagementScoreParams_withRankingParams___block_invoke_382;
    v103[3] = &unk_10033B2B0;
    v103[4] = self;
    v104 = paramsCopy;
    v105 = 0;
    dispatch_async(queue, v103);

    v19 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Engagement score DB is empty. Fill in the DB with default values and skip update.", buf, 2u);
    }

    v20 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerBundleEventsComputeSensedBundleEngagementScoreParams", "", buf, 2u);
    }

    [(MOPerformanceMeasurement *)v9 endSession];
    v21 = v104;
    goto LABEL_15;
  }

  v11 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:0.0];
  engagementScoreParamsUpdateDate = [rankingParamsCopy engagementScoreParamsUpdateDate];
  v13 = [engagementScoreParamsUpdateDate isEqual:v11];

  if (v13)
  {
    [rankingParamsCopy setIsParamsUpdateOnHold:1];
    queue2 = [(MOEventBundleManager *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __84__MOEventBundleManager__computeSensedBundleEngagementScoreParams_withRankingParams___block_invoke_381;
    block[3] = &unk_10033B2B0;
    block[4] = self;
    v107 = paramsCopy;
    v108 = rankingParamsCopy;
    dispatch_async(queue2, block);

    v15 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Update date for sensed bundle engagement score was not initialized. Initialize the data and skip update.", buf, 2u);
    }

    v16 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerBundleEventsComputeSensedBundleEngagementScoreParams", "", buf, 2u);
    }

    [(MOPerformanceMeasurement *)v9 endSession];
    v17 = v107;
LABEL_28:

    goto LABEL_29;
  }

  [paramsCopy setRankingParamsFromRankingParamsMO:rankingParamsCopy];
  engagementScoreParameterDict = [paramsCopy engagementScoreParameterDict];
  v23 = [engagementScoreParameterDict objectForKeyedSubscript:@"longTimePeriodSinceEngagementScoreParamsUpdatedSec"];
  intValue = [v23 intValue];

  engagementScoreParamsUpdateDate2 = [rankingParamsCopy engagementScoreParamsUpdateDate];
  [engagementScoreParamsUpdateDate2 timeIntervalSinceDate:v10];
  v27 = fabs(v26);
  v28 = intValue;

  if (v27 >= v28)
  {
    [rankingParamsCopy setIsParamsUpdateOnHold:1];
    queue3 = [(MOEventBundleManager *)self queue];
    v109[0] = _NSConcreteStackBlock;
    v109[1] = 3221225472;
    v109[2] = __84__MOEventBundleManager__computeSensedBundleEngagementScoreParams_withRankingParams___block_invoke;
    v109[3] = &unk_10033B2B0;
    v109[4] = self;
    v110 = paramsCopy;
    v111 = rankingParamsCopy;
    dispatch_async(queue3, v109);

    v35 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v115 = v28;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Last sensed bundle engagement score update occurred earlier than %f from now. Add holdout period and skip update.", buf, 0xCu);
    }

    v36 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v36))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v36, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerBundleEventsComputeSensedBundleEngagementScoreParams", "", buf, 2u);
    }

    [(MOPerformanceMeasurement *)v9 endSession];
    v17 = v110;
    goto LABEL_28;
  }

  engagementScoreParamsUpdateDate3 = [rankingParamsCopy engagementScoreParamsUpdateDate];
  v30 = [v10 isBeforeDate:engagementScoreParamsUpdateDate3];

  if (!v30)
  {
    v94 = paramsCopy;
    engagementHistoryManager = [(MOEventBundleManager *)self engagementHistoryManager];
    engagementScoreParamsUpdateDate4 = [rankingParamsCopy engagementScoreParamsUpdateDate];
    v39 = [engagementHistoryManager getInterfaceTypeCountForUniqueSuggestionsWithJournalCreatedFromStartDate:engagementScoreParamsUpdateDate4 toEndDate:v10 withMinimumAddedCharacters:1];

    v93 = v39;
    v40 = [v39 mutableCopy];
    [v40 removeObjectForKey:&off_10036A000];
    [v40 removeObjectForKey:&off_10036A018];
    engagementHistoryManager2 = [(MOEventBundleManager *)self engagementHistoryManager];
    [rankingParamsCopy engagementScoreParamsUpdateDate];
    v42 = v99 = v10;
    v43 = [engagementHistoryManager2 getInterfaceTypeCountForUniqueSuggestionsWithJournalCreatedButNoWritingFromStartDate:v42 toEndDate:v99];

    v92 = v43;
    v44 = [v43 mutableCopy];
    [v44 removeObjectForKey:&off_10036A000];
    [v44 removeObjectForKey:&off_10036A018];
    engagementHistoryManager3 = [(MOEventBundleManager *)self engagementHistoryManager];
    engagementScoreParamsUpdateDate5 = [rankingParamsCopy engagementScoreParamsUpdateDate];
    v47 = [engagementHistoryManager3 getInterfaceTypeCountForUniqueSuggestionsViewedButNotEngagedFromStartDate:engagementScoreParamsUpdateDate5 toEndDate:v99];

    v91 = v47;
    v48 = [v47 mutableCopy];
    [v48 removeObjectForKey:&off_10036A000];
    v96 = v48;
    [v48 removeObjectForKey:&off_10036A018];
    engagementHistoryManager4 = [(MOEventBundleManager *)self engagementHistoryManager];
    engagementScoreParamsUpdateDate6 = [rankingParamsCopy engagementScoreParamsUpdateDate];
    v51 = [engagementHistoryManager4 getInterfaceTypeCountForUniqueSuggestionsDeletedFromStartDate:engagementScoreParamsUpdateDate6 toEndDate:v99];

    v90 = v51;
    v52 = [v51 mutableCopy];
    [v52 removeObjectForKey:&off_10036A000];
    [v52 removeObjectForKey:&off_10036A018];
    v98 = v40;
    allValues = [v40 allValues];
    v53 = [allValues valueForKeyPath:@"@sum.self"];
    LODWORD(v51) = [v53 intValue];
    v97 = v44;
    allValues2 = [v44 allValues];
    v55 = [allValues2 valueForKeyPath:@"@sum.self"];
    LODWORD(v40) = [v55 intValue] + v51;
    v95 = v52;
    allValues3 = [v52 allValues];
    v57 = [allValues3 valueForKeyPath:@"@sum.self"];
    v58 = v40 + [v57 intValue];

    engagementHistoryManager5 = [(MOEventBundleManager *)self engagementHistoryManager];
    engagementScoreParamsUpdateDate7 = [rankingParamsCopy engagementScoreParamsUpdateDate];
    v61 = [engagementHistoryManager5 getInterfaceTypeCountForUniqueSuggestionsViewedFromStartDate:engagementScoreParamsUpdateDate7 toEndDate:v99];

    v89 = v61;
    v62 = [v61 mutableCopy];
    [v62 removeObjectForKey:&off_10036A000];
    [v62 removeObjectForKey:&off_10036A018];
    v63 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
    {
      engagementScoreParamsUpdateDate8 = [rankingParamsCopy engagementScoreParamsUpdateDate];
      *buf = 138413826;
      v115 = *&engagementScoreParamsUpdateDate8;
      v116 = 2112;
      v117 = v99;
      v118 = 2112;
      v119 = v62;
      v120 = 2112;
      v121 = v98;
      v122 = 2112;
      v123 = v97;
      v124 = 2112;
      v125 = v96;
      v126 = 2112;
      v127 = v95;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "Sensed bundle engagement signals collected between last engagement score update date (%@) and now(%@): TotalViewedSuggestions=%@, journalIsWritten=%@, entryCreatedWithNoWritings=%@, suggestionViewedButNotEngaged=%@, suggestionDeleted=%@", buf, 0x48u);
    }

    v87 = v62;
    allKeys = [v62 allKeys];
    v66 = [allKeys count];

    paramsCopy = v94;
    engagementScoreParameterDict2 = [v94 engagementScoreParameterDict];
    v68 = [engagementScoreParameterDict2 objectForKeyedSubscript:@"minEngagementCount"];
    intValue2 = [v68 intValue];

    engagementScoreParameterDict3 = [v94 engagementScoreParameterDict];
    v71 = [engagementScoreParameterDict3 objectForKeyedSubscript:@"minInterfaceTypes"];
    intValue3 = [v71 intValue];

    if (v66 < intValue3 || v58 < intValue2)
    {
      v82 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
      if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        *&v115 = v58;
        v116 = 2048;
        v117 = v66;
        _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_INFO, "Not enough engagement signals (=%lu) or uniqueViewedBundleTypes (=%lu) for sensed bundle engagement score update. Skip update. ", buf, 0x16u);
      }

      v10 = v99;
      v80 = v87;
    }

    else
    {
      v73 = 0.0;
      if ([rankingParamsCopy isParamsUpdateOnHold])
      {
        engagementScoreParameterDict4 = [v94 engagementScoreParameterDict];
        v75 = [engagementScoreParameterDict4 objectForKeyedSubscript:@"minTimeIntervalForUpdateSec"];
        intValue4 = [v75 intValue];

        v73 = intValue4;
      }

      engagementScoreParamsUpdateDate9 = [rankingParamsCopy engagementScoreParamsUpdateDate];
      v10 = v99;
      [engagementScoreParamsUpdateDate9 timeIntervalSinceDate:v99];
      v79 = fabs(v78);

      v80 = v87;
      if (v79 >= v73)
      {
        v112[0] = @"journalWasWritten";
        v112[1] = @"journalEntryWasCreatedWithNoWriting";
        v113[0] = v98;
        v113[1] = v97;
        v112[2] = @"suggestionWasViewedButNotEngaged";
        v112[3] = @"suggestionWasDeleted";
        v113[2] = v96;
        v113[3] = v95;
        v83 = [NSDictionary dictionaryWithObjects:v113 forKeys:v112 count:4];
        [v94 setInterfaceTypeCountFromSuggestionEngagementDict:v83];

        [v94 updateEngagementScoreParamsUsingBFGS];
        [rankingParamsCopy setIsParamsUpdateOnHold:0];
        queue4 = [(MOEventBundleManager *)self queue];
        v100[0] = _NSConcreteStackBlock;
        v100[1] = 3221225472;
        v100[2] = __84__MOEventBundleManager__computeSensedBundleEngagementScoreParams_withRankingParams___block_invoke_389;
        v100[3] = &unk_10033B2B0;
        v100[4] = self;
        v101 = v94;
        v102 = rankingParamsCopy;
        dispatch_async(queue4, v100);

        v85 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
        if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_INFO, "New sensed bundle engagement scores are saved.", buf, 2u);
        }
      }

      else
      {
        v81 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
        if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_INFO, "Engagement score update is in holdout period. Skip update.", buf, 2u);
        }
      }
    }

    v86 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v86))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v86, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerBundleEventsComputeSensedBundleEngagementScoreParams", "", buf, 2u);
    }

    [(MOPerformanceMeasurement *)v9 endSession];
    v21 = v93;
LABEL_15:

    goto LABEL_29;
  }

  v31 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    engagementScoreParamsUpdateDate10 = [rankingParamsCopy engagementScoreParamsUpdateDate];
    *buf = 138412546;
    v115 = *&v10;
    v116 = 2112;
    v117 = engagementScoreParamsUpdateDate10;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "current date is behind previous engage params update date %@,%@. Skip update.", buf, 0x16u);
  }

  v33 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v33))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerBundleEventsComputeSensedBundleEngagementScoreParams", "", buf, 2u);
  }

  [(MOPerformanceMeasurement *)v9 endSession];
LABEL_29:
}

void __84__MOEventBundleManager__computeSensedBundleEngagementScoreParams_withRankingParams___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) eventBundleStore];
  [v2 storeRankingParams:*(a1 + 40) forContext:*(a1 + 48) forEvergreenScore:0];
}

void __84__MOEventBundleManager__computeSensedBundleEngagementScoreParams_withRankingParams___block_invoke_381(uint64_t a1)
{
  v2 = [*(a1 + 32) eventBundleStore];
  [v2 storeRankingParams:*(a1 + 40) forContext:*(a1 + 48) forEvergreenScore:0];
}

void __84__MOEventBundleManager__computeSensedBundleEngagementScoreParams_withRankingParams___block_invoke_382(uint64_t a1)
{
  v2 = [*(a1 + 32) eventBundleStore];
  [v2 storeRankingParams:*(a1 + 40) forContext:*(a1 + 48) forEvergreenScore:0];
}

void __84__MOEventBundleManager__computeSensedBundleEngagementScoreParams_withRankingParams___block_invoke_389(uint64_t a1)
{
  v2 = [*(a1 + 32) eventBundleStore];
  [v2 storeRankingParams:*(a1 + 40) forContext:*(a1 + 48) forEvergreenScore:0];
}

- (void)_computeEvergreenScoreParams:(id)params withRankingParams:(id)rankingParams
{
  paramsCopy = params;
  rankingParamsCopy = rankingParams;
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerBundleEventsComputeEvergreenScoreParams", "", buf, 2u);
  }

  v9 = [[MOPerformanceMeasurement alloc] initWithName:@"ComputeEvergreenScoreParams" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v9 startSession];
  +[NSDate date];
  v10 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  if (!rankingParamsCopy)
  {
    queue = self->_queue;
    v71[0] = _NSConcreteStackBlock;
    v71[1] = 3221225472;
    v71[2] = __71__MOEventBundleManager__computeEvergreenScoreParams_withRankingParams___block_invoke_394;
    v71[3] = &unk_10033B2B0;
    v71[4] = self;
    v72 = paramsCopy;
    v73 = 0;
    dispatch_async(queue, v71);
    v19 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Engagement score DB is empty. Fill in the DB with default values and skip update.", buf, 2u);
    }

    v20 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerBundleEventsComputeEvergreenScoreParams", "", buf, 2u);
    }

    [(MOPerformanceMeasurement *)v9 endSession];
    v21 = v72;
    goto LABEL_15;
  }

  v11 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:0.0];
  evergreenEngagementScoreParamsUpdateDate = [rankingParamsCopy evergreenEngagementScoreParamsUpdateDate];
  v13 = [evergreenEngagementScoreParamsUpdateDate isEqual:v11];

  if (v13)
  {
    [rankingParamsCopy setIsEvergreenEngagementScoreParamsUpdateOnHold:1];
    v14 = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __71__MOEventBundleManager__computeEvergreenScoreParams_withRankingParams___block_invoke_393;
    block[3] = &unk_10033B2B0;
    block[4] = self;
    v75 = paramsCopy;
    v76 = rankingParamsCopy;
    dispatch_async(v14, block);
    v15 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Update date for evergreen score was not initialized. Initialize the data and skip update.", buf, 2u);
    }

    v16 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerBundleEventsComputeEvergreenScoreParams", "", buf, 2u);
    }

    [(MOPerformanceMeasurement *)v9 endSession];
    v17 = v75;
LABEL_28:

    goto LABEL_29;
  }

  [paramsCopy setRankingParamsFromRankingParamsMO:rankingParamsCopy];
  engagementScoreParameterDict = [paramsCopy engagementScoreParameterDict];
  v23 = [engagementScoreParameterDict objectForKeyedSubscript:@"longTimePeriodSinceEngagementScoreParamsUpdatedSec"];
  intValue = [v23 intValue];

  evergreenEngagementScoreParamsUpdateDate2 = [rankingParamsCopy evergreenEngagementScoreParamsUpdateDate];
  [evergreenEngagementScoreParamsUpdateDate2 timeIntervalSinceDate:*&v10];
  v27 = fabs(v26);
  v28 = intValue;

  if (v27 >= v28)
  {
    [rankingParamsCopy setIsEvergreenEngagementScoreParamsUpdateOnHold:1];
    v34 = self->_queue;
    v77[0] = _NSConcreteStackBlock;
    v77[1] = 3221225472;
    v77[2] = __71__MOEventBundleManager__computeEvergreenScoreParams_withRankingParams___block_invoke;
    v77[3] = &unk_10033B2B0;
    v77[4] = self;
    v78 = paramsCopy;
    v79 = rankingParamsCopy;
    dispatch_async(v34, v77);
    v35 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v81 = v28;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Last evergreen engagement score update occurred earlier than %f from now. Add holdout period and skip update.", buf, 0xCu);
    }

    v36 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v36))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v36, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerBundleEventsComputeEvergreenScoreParams", "", buf, 2u);
    }

    [(MOPerformanceMeasurement *)v9 endSession];
    v17 = v78;
    goto LABEL_28;
  }

  evergreenEngagementScoreParamsUpdateDate3 = [rankingParamsCopy evergreenEngagementScoreParamsUpdateDate];
  v30 = [*&v10 isBeforeDate:evergreenEngagementScoreParamsUpdateDate3];

  if (!v30)
  {
    engagementHistoryManager = [(MOEventBundleManager *)self engagementHistoryManager];
    evergreenEngagementScoreParamsUpdateDate4 = [rankingParamsCopy evergreenEngagementScoreParamsUpdateDate];
    v39 = [engagementHistoryManager getEvergreenTypeCountForSuggestionsWithJournalCreatedFromStartDate:evergreenEngagementScoreParamsUpdateDate4 toEndDate:*&v10 withMinimumAddedCharacters:0];

    v67 = v39;
    v40 = [v39 mutableCopy];
    [v40 removeObjectForKey:&stru_1003416B0];
    allValues = [v40 allValues];
    v42 = [allValues valueForKeyPath:@"@sum.self"];
    *&v43 = [v42 intValue];

    v44 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      [rankingParamsCopy evergreenEngagementScoreParamsUpdateDate];
      v45 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412802;
      v81 = v45;
      v82 = 2112;
      v83 = v10;
      v84 = 2112;
      v85 = v40;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "Evergreen engagement signals collected between last engagement score update date (%@) and now(%@): selected %@", buf, 0x20u);
    }

    engagementScoreParameterDict2 = [paramsCopy engagementScoreParameterDict];
    v47 = [engagementScoreParameterDict2 objectForKeyedSubscript:@"minEngagementCount"];
    intValue2 = [v47 intValue];

    if (LODWORD(v43) >= intValue2)
    {
      v53 = 0.0;
      if ([rankingParamsCopy isEvergreenEngagementScoreParamsUpdateOnHold])
      {
        engagementScoreParameterDict3 = [paramsCopy engagementScoreParameterDict];
        v55 = [engagementScoreParameterDict3 objectForKeyedSubscript:@"minTimeIntervalForUpdateSec"];
        intValue3 = [v55 intValue];

        v53 = intValue3;
      }

      evergreenEngagementScoreParamsUpdateDate5 = [rankingParamsCopy evergreenEngagementScoreParamsUpdateDate];
      [evergreenEngagementScoreParamsUpdateDate5 timeIntervalSinceDate:*&v10];
      v59 = fabs(v58);

      if (v59 >= v53)
      {
        *&v49 = COERCE_DOUBLE(objc_opt_new());
        [v49 setObject:&off_10036E880 forKeyedSubscript:@"GRATITUDE"];
        [v49 setObject:&off_10036E880 forKeyedSubscript:@"KINDNESS"];
        [v49 setObject:&off_10036E880 forKeyedSubscript:@"WISDOM"];
        [v49 setObject:&off_10036E880 forKeyedSubscript:@"PURPOSE"];
        [v49 setObject:&off_10036E880 forKeyedSubscript:@"RESILIENCE"];
        [v49 setObject:&off_10036E880 forKeyedSubscript:@"CREATIVITY"];
        if ([v40 count] == 1)
        {
          allKeys = [v40 allKeys];
          v61 = [allKeys objectAtIndexedSubscript:0];

          [v49 setObject:&off_10036E890 forKeyedSubscript:v61];
        }

        else
        {
          v61 = [v40 keysSortedByValueUsingComparator:&__block_literal_global_30];
          v62 = [v61 objectAtIndexedSubscript:0];
          [v49 setObject:&off_10036E890 forKeyedSubscript:v62];

          v63 = [v61 objectAtIndexedSubscript:1];
          [v49 setObject:&off_10036E8A0 forKeyedSubscript:v63];
        }

        [paramsCopy setEvergreenEngagementScoreParameterDict:v49];
        [rankingParamsCopy setIsEvergreenEngagementScoreParamsUpdateOnHold:0];
        v64 = self->_queue;
        v68[0] = _NSConcreteStackBlock;
        v68[1] = 3221225472;
        v68[2] = __71__MOEventBundleManager__computeEvergreenScoreParams_withRankingParams___block_invoke_404;
        v68[3] = &unk_10033B2B0;
        v68[4] = self;
        v69 = paramsCopy;
        v70 = rankingParamsCopy;
        dispatch_async(v64, v68);
        v65 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v81 = *&v49;
          _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_INFO, "New evergreen engagement scores are saved: %@", buf, 0xCu);
        }

        goto LABEL_47;
      }

      _mo_log_facility_get_os_log(&MOLogFacilityRanking);
      *&v49 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v50 = "Evergreen engagement score update is in holdout period. Skip update.";
        v51 = v49;
        v52 = 2;
        goto LABEL_40;
      }
    }

    else
    {
      _mo_log_facility_get_os_log(&MOLogFacilityRanking);
      *&v49 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v81 = v43;
        v50 = "Not enough engagement signals (=%lu) for evergreen engagement score update. Skip update.";
        v51 = v49;
        v52 = 12;
LABEL_40:
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, v50, buf, v52);
      }
    }

LABEL_47:

    v66 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v66))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v66, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerBundleEventsComputeEvergreenScoreParams", "", buf, 2u);
    }

    [(MOPerformanceMeasurement *)v9 endSession];
    v21 = v67;
LABEL_15:

    goto LABEL_29;
  }

  v31 = _mo_log_facility_get_os_log(&MOLogFacilityRanking);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    evergreenEngagementScoreParamsUpdateDate6 = [rankingParamsCopy evergreenEngagementScoreParamsUpdateDate];
    *buf = 138412546;
    v81 = v10;
    v82 = 2112;
    v83 = *&evergreenEngagementScoreParamsUpdateDate6;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Current date is behind previous evergreen params update date %@,%@. Skip update.", buf, 0x16u);
  }

  v33 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v33))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerBundleEventsComputeEvergreenScoreParams", "", buf, 2u);
  }

  [(MOPerformanceMeasurement *)v9 endSession];
LABEL_29:
}

void __71__MOEventBundleManager__computeEvergreenScoreParams_withRankingParams___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) eventBundleStore];
  [v2 storeRankingParams:*(a1 + 40) forContext:*(a1 + 48) forEvergreenScore:1];
}

void __71__MOEventBundleManager__computeEvergreenScoreParams_withRankingParams___block_invoke_393(uint64_t a1)
{
  v2 = [*(a1 + 32) eventBundleStore];
  [v2 storeRankingParams:*(a1 + 40) forContext:*(a1 + 48) forEvergreenScore:1];
}

void __71__MOEventBundleManager__computeEvergreenScoreParams_withRankingParams___block_invoke_394(uint64_t a1)
{
  v2 = [*(a1 + 32) eventBundleStore];
  [v2 storeRankingParams:*(a1 + 40) forContext:*(a1 + 48) forEvergreenScore:1];
}

int64_t __71__MOEventBundleManager__computeEvergreenScoreParams_withRankingParams___block_invoke_400(id a1, id a2, id a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 integerValue];
  if (v6 <= [v5 integerValue])
  {
    v8 = [v4 integerValue];
    v7 = v8 < [v5 integerValue];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

void __71__MOEventBundleManager__computeEvergreenScoreParams_withRankingParams___block_invoke_404(uint64_t a1)
{
  v2 = [*(a1 + 32) eventBundleStore];
  [v2 storeRankingParams:*(a1 + 40) forContext:*(a1 + 48) forEvergreenScore:1];
}

- (void)_bundleEventsWithRefreshVariant:(unint64_t)variant andHandler:(id)handler
{
  handlerCopy = handler;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__24;
  v62 = __Block_byref_object_dispose__24;
  v63 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__24;
  v56 = __Block_byref_object_dispose__24;
  v57 = 0;
  v7 = [[MOEventRefreshHelper alloc] initWithUniverse:self->fUniverse];
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = __67__MOEventBundleManager__bundleEventsWithRefreshVariant_andHandler___block_invoke;
  v51[3] = &unk_10033BA20;
  v51[4] = &v58;
  v51[5] = &v52;
  [(MOEventRefreshHelper *)v7 getBundlingDatesForVariant:variant withHandler:v51];
  if (v59[5] && v53[5])
  {
    if (variant == 1280 || variant == 768)
    {
      v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      v9 = 1;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        variantCopy2 = variant;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Current refresh variant: %lu. CA and Biome analytics submissions are enabled.", buf, 0xCu);
      }
    }

    else
    {
      v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        variantCopy2 = variant;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Current refresh variant: %lu. CA and Biome analytics submissions are disabled.", buf, 0xCu);
      }

      v9 = 0;
    }

    [v53[5] timeIntervalSinceDate:v59[5]];
    v12 = [NSNumber numberWithDouble:?];
    v13 = [NSSet setWithObjects:v12, &off_10036E620, &off_10036E630, &off_10036E640, &off_10036E650, &off_10036E660, &off_10036E670, &off_10036E680, &off_10036E690, 0];

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v47 objects:v70 count:16];
    if (v15)
    {
      v16 = *v48;
      v17 = 0.0;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v48 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v47 + 1) + 8 * i);
          [v19 doubleValue];
          if (v20 > v17)
          {
            [v19 doubleValue];
            v17 = v21;
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v47 objects:v70 count:16];
      }

      while (v15);
    }

    else
    {
      v17 = 0.0;
    }

    if (v9)
    {
      v22 = [v53[5] dateByAddingTimeInterval:-v17];
      v23 = [NSDateInterval alloc];
      v24 = [v23 initWithStartDate:v22 endDate:v53[5]];
    }

    else
    {
      v25 = +[NSCalendar currentCalendar];
      v22 = [v25 startOfDayForDate:v59[5]];

      v26 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshHelper);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = v59[5];
        v28 = [NSNumber numberWithUnsignedInteger:variant];
        *buf = 138412802;
        variantCopy2 = v27;
        v66 = 2112;
        v67 = v22;
        v68 = 2112;
        v69 = v28;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "extended event fetching start date from (%@) to (%@) with variant (%@)", buf, 0x20u);
      }

      v29 = [NSDateInterval alloc];
      v24 = [v29 initWithStartDate:v22 endDate:v53[5]];
    }

    v30 = v24;

    v31 = [[MOEventFetchOptions alloc] initWithDateInterval:v30 ascending:1 limit:0];
    v32 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    v33 = v32;
    if (variant - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, OS_SIGNPOST_INTERVAL_BEGIN, variant, "EventBundleManagerBundleEventsFetchEvents", "", buf, 2u);
    }

    v34 = [[MOPerformanceMeasurement alloc] initWithName:@"BundleEventsFetchEvents" measureRecentPeak:0];
    [(MOPerformanceMeasurement *)v34 startSession];
    eventManager = self->_eventManager;
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = __67__MOEventBundleManager__bundleEventsWithRefreshVariant_andHandler___block_invoke_431;
    v38[3] = &unk_10033BAC0;
    v38[4] = self;
    variantCopy3 = variant;
    v36 = v34;
    v39 = v36;
    v42 = handlerCopy;
    v37 = v31;
    v40 = v37;
    v11 = v14;
    v46 = v9;
    v41 = v11;
    v43 = &v52;
    v44 = &v58;
    [(MOEventManager *)eventManager fetchEventsWithOptions:v37 CompletionHandler:v38];
  }

  else
  {
    v71 = NSLocalizedDescriptionKey;
    v72 = @"[bundleEventsWithRefreshVariant] start or end date for bundling is not available";
    v10 = [NSDictionary dictionaryWithObjects:&v72 forKeys:&v71 count:1];
    v11 = [NSError errorWithDomain:@"MOErrorDomain" code:18 userInfo:v10];

    (*(handlerCopy + 2))(handlerCopy, v11, 0);
  }

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v58, 8);
}

void __67__MOEventBundleManager__bundleEventsWithRefreshVariant_andHandler___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v9 = a3;
  v8 = a4;
  if (a2)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  }
}

void __67__MOEventBundleManager__bundleEventsWithRefreshVariant_andHandler___block_invoke_431(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __67__MOEventBundleManager__bundleEventsWithRefreshVariant_andHandler___block_invoke_2;
  block[3] = &unk_10033BA98;
  v21 = *(a1 + 88);
  v13 = *(a1 + 40);
  v14 = v6;
  v19 = *(a1 + 64);
  v15 = v5;
  v16 = *(a1 + 48);
  v8 = *(a1 + 56);
  v22 = *(a1 + 96);
  v9 = *(a1 + 32);
  v17 = v8;
  v18 = v9;
  v20 = *(a1 + 72);
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, block);
}

void __67__MOEventBundleManager__bundleEventsWithRefreshVariant_andHandler___block_invoke_2(uint64_t a1)
{
  v1 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v2 = v1;
  v3 = *(a1 + 104);
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v1))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_END, v3, "EventBundleManagerBundleEventsFetchEvents", "", buf, 2u);
  }

  [*(a1 + 32) endSession];
  v4 = (a1 + 40);
  v5 = *(a1 + 40) == 0;
  v6 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  v7 = v6;
  if (!v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __67__MOEventBundleManager__bundleEventsWithRefreshVariant_andHandler___block_invoke_2_cold_1(v4);
    }

    v8 = *(a1 + 80);
    if (v8)
    {
      (*(v8 + 16))(v8, *v4, &__NSDictionary0__struct);
    }

    return;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = [*(a1 + 48) count];
    v10 = [*(a1 + 56) dateInterval];
    v11 = [v10 startDate];
    v12 = [*(a1 + 56) dateInterval];
    v13 = [v12 endDate];
    *buf = 134218498;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = v11;
    *&buf[22] = 2112;
    v119 = v13;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "there are %lu event(s) to bundle from start date: %@ to end date : %@", buf, 0x20u);
  }

  v89 = [NSString stringWithFormat:@"%@", @"startDate"];
  v90 = [NSString stringWithFormat:@"%@", @"endDate"];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v119 = __Block_byref_object_copy__24;
  v120 = __Block_byref_object_dispose__24;
  v121 = objc_alloc_init(NSMutableDictionary);
  v112[0] = 0;
  v112[1] = v112;
  v112[2] = 0x3032000000;
  v112[3] = __Block_byref_object_copy__24;
  v112[4] = __Block_byref_object_dispose__24;
  v113 = 0;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  obj = *(a1 + 64);
  v14 = [obj countByEnumeratingWithState:&v108 objects:v117 count:16];
  if (v14)
  {
    v91 = *v109;
    do
    {
      v15 = 0;
      do
      {
        if (*v109 != v91)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v108 + 1) + 8 * v15);
        v17 = objc_autoreleasePoolPush();
        [v16 doubleValue];
        v19 = v18 == 604800.0;
        if (v18 == 604800.0 || *(a1 + 112) == 1)
        {
          v20 = [*(*(*(a1 + 88) + 8) + 40) dateByAddingTimeInterval:-v18];
          v21 = [NSPredicate predicateWithFormat:@"%K >= %@", v90, v20];
          v116[0] = v21;
          v22 = [NSPredicate predicateWithFormat:@"%K <= %@", v89, *(*(*(a1 + 88) + 8) + 40)];
          v116[1] = v22;
          v23 = [NSArray arrayWithObjects:v116 count:2];
          v24 = [NSCompoundPredicate andPredicateWithSubpredicates:v23];

          v25 = [*(a1 + 48) filteredArrayUsingPredicate:v24];
          v26 = [v25 mutableCopy];

          v27 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
          v28 = v27;
          v29 = *(a1 + 104);
          if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
          {
            *v107 = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_INTERVAL_BEGIN, v29, "EventBundleManagerBundleEventsCollectTimeCorrelatedEvents", "", v107, 2u);
          }

          v30 = [[MOPerformanceMeasurement alloc] initWithName:@"BundleEventsCollectTimeCorrelatedEvents" measureRecentPeak:0];
          [(MOPerformanceMeasurement *)v30 startSession];
          v31 = *(a1 + 72);
          v32 = v19;
          v33 = *(*(*(a1 + 88) + 8) + 40);
          v92 = v17;
          v34 = v14;
          v35 = *(a1 + 112);
          v100[0] = _NSConcreteStackBlock;
          v100[1] = 3221225472;
          v100[2] = __67__MOEventBundleManager__bundleEventsWithRefreshVariant_andHandler___block_invoke_454;
          v100[3] = &unk_10033BA48;
          v106 = v32;
          v103 = v112;
          v104 = buf;
          v36 = *(a1 + 48);
          v37 = *(a1 + 104);
          v101 = v36;
          v105 = v37;
          v38 = v30;
          v102 = v38;
          v39 = v35;
          v14 = v34;
          v17 = v92;
          [v31 _collectTimeCorrelatedEventsWithStartDate:v20 endDate:v33 events:v26 submitMetricsFlg:v39 handler:v100];
        }

        objc_autoreleasePoolPop(v17);
        v15 = v15 + 1;
      }

      while (v14 != v15);
      v14 = [obj countByEnumeratingWithState:&v108 objects:v117 count:16];
    }

    while (v14);
  }

  v40 = a1;
  if (+[MOPlatformInfo isInternalBuild])
  {
    v41 = [*(a1 + 72) configurationManager];
    LODWORD(v42) = 1202241536;
    [v41 getFloatSettingForKey:@"EventAnalyticsSubmissionBlackoutTimeWindow" withFallback:v42];
    v44 = v43;

    v45 = [*(a1 + 72) defaultManager];
    v46 = [v45 objectForKey:@"LastEventAnalyticsSubmissionDate"];

    if (v46)
    {
      objc_opt_class();
      v47 = a1;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v93 = 0;
        v52 = 3.4028e38;
        goto LABEL_31;
      }

      v48 = v46;
      v49 = +[NSDate now];
      [v49 timeIntervalSinceDate:v48];
      v51 = v50;
      v93 = v48;

      v52 = v51;
    }

    else
    {
      v93 = 0;
      v52 = 3.4028e38;
    }

    v47 = a1;
LABEL_31:
    if (v52 >= v44)
    {
      v54 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
      v55 = v54;
      v56 = *(v47 + 104);
      if (v56 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v54))
      {
        *v107 = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v55, OS_SIGNPOST_INTERVAL_BEGIN, v56, "EventBundleManagerBundleEventsSubmitMetrics", "", v107, 2u);
      }

      v53 = [[MOPerformanceMeasurement alloc] initWithName:@"BundleEventsSubmitMetrics" measureRecentPeak:0];
      [(MOPerformanceMeasurement *)v53 startSession];
      v57 = [*(*(*(a1 + 88) + 8) + 40) dateByAddingTimeInterval:-259200.0];
      v58 = [*(*(*(a1 + 88) + 8) + 40) dateByAddingTimeInterval:-172800.0];
      v59 = +[NSDate date];
      v60 = [NSPredicate predicateWithFormat:@"%K >= %@", v90, v57];
      v115[0] = v60;
      v61 = [NSPredicate predicateWithFormat:@"%K <= %@", v89, v58];
      v115[1] = v61;
      v62 = [NSArray arrayWithObjects:v115 count:2];
      v63 = [NSCompoundPredicate andPredicateWithSubpredicates:v62];

      v64 = [*(a1 + 48) filteredArrayUsingPredicate:v63];
      v65 = [v64 mutableCopy];

      [*(a1 + 72) submitMOEventData:v65 startDate:v57 endDate:v58 subDate:v59];
      v66 = [*(a1 + 72) defaultManager];
      [v66 setObject:v59 forKey:@"LastEventAnalyticsSubmissionDate"];

      v67 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
      v68 = v67;
      v69 = *(a1 + 104);
      if (v69 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v67))
      {
        *v107 = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v68, OS_SIGNPOST_INTERVAL_END, v69, "EventBundleManagerBundleEventsSubmitMetrics", "", v107, 2u);
      }

      [(MOPerformanceMeasurement *)v53 endSession];
    }

    else
    {
      v53 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(&v53->super, OS_LOG_TYPE_INFO))
      {
        *v107 = 0;
        _os_log_impl(&_mh_execute_header, &v53->super, OS_LOG_TYPE_INFO, "Skip submitting event metric as it has not been enough time since last submission", v107, 2u);
      }
    }

    v40 = a1;
  }

  v70 = +[NSCalendar currentCalendar];
  v71 = [v70 startOfDayForDate:*(*(*(v40 + 96) + 8) + 40)];

  v72 = [NSPredicate predicateWithFormat:@"%K >= %@", v90, v71];
  v114[0] = v72;
  v73 = [NSPredicate predicateWithFormat:@"%K <= %@", v89, *(*(*(a1 + 88) + 8) + 40)];
  v114[1] = v73;
  v74 = [NSArray arrayWithObjects:v114 count:2];
  v75 = [NSCompoundPredicate andPredicateWithSubpredicates:v74];

  v76 = [*(a1 + 48) filteredArrayUsingPredicate:v75];
  v77 = [v76 mutableCopy];

  v78 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v79 = v78;
  v80 = *(a1 + 104);
  if (v80 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v78))
  {
    *v107 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v79, OS_SIGNPOST_INTERVAL_BEGIN, v80, "EventBundleManagerBundleEventsDeep", "", v107, 2u);
  }

  v81 = [[MOPerformanceMeasurement alloc] initWithName:@"BundleEventsDeep" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v81 startSession];
  v82 = *(a1 + 72);
  v83 = *(a1 + 112);
  v84 = *(a1 + 104);
  v95[0] = _NSConcreteStackBlock;
  v85 = vextq_s8(*(a1 + 88), *(a1 + 88), 8uLL);
  v86 = *(*(*(a1 + 88) + 8) + 40);
  v95[1] = 3221225472;
  v95[2] = __67__MOEventBundleManager__bundleEventsWithRefreshVariant_andHandler___block_invoke_468;
  v95[3] = &unk_10033BA70;
  v95[4] = v82;
  v98 = v85;
  v99 = v84;
  v87 = v81;
  v96 = v87;
  v97 = *(a1 + 80);
  [v82 _bundleEvents:v77 startDate:v71 endDate:v86 submitMetricsFlg:v83 refreshVariant:v84 handler:v95];

  _Block_object_dispose(v112, 8);
  _Block_object_dispose(buf, 8);
}

void __67__MOEventBundleManager__bundleEventsWithRefreshVariant_andHandler___block_invoke_454(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 72))
  {
    if (v5)
    {
      v7 = *(*(a1 + 48) + 8);
      v8 = v5;
      v9 = *(v7 + 40);
      *(v7 + 40) = v8;
    }

    else
    {
      v10 = *(*(*(a1 + 56) + 8) + 40);
      v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) count]);
      [v10 setObject:v11 forKey:@"resultNumberOfEvents"];

      v9 = [v6 objectForKey:@"resultNumberOfBundleEvents"];
      if (v9)
      {
        [*(*(*(a1 + 56) + 8) + 40) setObject:v9 forKey:@"resultNumberOfBundleEvents"];
      }
    }
  }

  v12 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v13 = v12;
  v14 = *(a1 + 64);
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, v14, "EventBundleManagerBundleEventsCollectTimeCorrelatedEvents", "", v15, 2u);
  }

  [*(a1 + 40) endSession];
}

void __67__MOEventBundleManager__bundleEventsWithRefreshVariant_andHandler___block_invoke_468(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = [*(a1 + 32) defaultManager];
    [v7 setObject:*(*(*(a1 + 56) + 8) + 40) forKey:@"EventBundleManagerLastBundlingStartDate"];

    v8 = [*(a1 + 32) defaultManager];
    [v8 setObject:*(*(*(a1 + 64) + 8) + 40) forKey:@"EventBundleManagerLastBundlingEndDate"];
  }

  v9 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v10 = v9;
  v11 = *(a1 + 72);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, v11, "EventBundleManagerBundleEventsDeep", "", v13, 2u);
  }

  [*(a1 + 40) endSession];
  v12 = *(a1 + 48);
  if (v12)
  {
    (*(v12 + 16))(v12, v5, v6);
  }
}

- (void)_bundleEvents:(id)events startDate:(id)date endDate:(id)endDate submitMetricsFlg:(BOOL)flg refreshVariant:(unint64_t)variant handler:(id)handler
{
  eventsCopy = events;
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  v17 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 134218754;
    *&buf[4] = [eventsCopy count];
    *&buf[12] = 2112;
    *&buf[14] = dateCopy;
    *&buf[22] = 2112;
    v50 = endDateCopy;
    LOWORD(v51) = 2048;
    *(&v51 + 2) = variant;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Bundle Annotation: there are %lu event(s) to bundle.(%@ - %@), refresh variant, %lu", buf, 0x2Au);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v50 = __Block_byref_object_copy__24;
  *&v51 = __Block_byref_object_dispose__24;
  *(&v51 + 1) = [[NSDateInterval alloc] initWithStartDate:dateCopy endDate:endDateCopy];
  v18 = objc_opt_new();
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x3032000000;
  v47[3] = __Block_byref_object_copy__24;
  v47[4] = __Block_byref_object_dispose__24;
  v48 = 0;
  v19 = objc_alloc_init(NSMutableDictionary);
  v20 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v20))
  {
    *v46 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerBundleEventsDeepFetchPreviousBundles", "", v46, 2u);
  }

  v21 = [[MOPerformanceMeasurement alloc] initWithName:@"BundleEventsDeepFetchPreviousBundles" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v21 startSession];
  v22 = *(*&buf[8] + 40);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = __96__MOEventBundleManager__bundleEvents_startDate_endDate_submitMetricsFlg_refreshVariant_handler___block_invoke;
  v32[3] = &unk_10033BC00;
  v23 = v21;
  v33 = v23;
  v41 = v47;
  v24 = handlerCopy;
  v42 = buf;
  v43 = a2;
  v40 = v24;
  selfCopy = self;
  v25 = v18;
  v35 = v25;
  variantCopy = variant;
  v26 = dateCopy;
  v36 = v26;
  v27 = endDateCopy;
  v37 = v27;
  v28 = v19;
  v38 = v28;
  v29 = eventsCopy;
  v39 = v29;
  flgCopy = flg;
  [(MOEventBundleManager *)self _fetchPreviousBundlesWithDateInterval:v22 handler:v32];

  _Block_object_dispose(v47, 8);
  _Block_object_dispose(buf, 8);
}

void __96__MOEventBundleManager__bundleEvents_startDate_endDate_submitMetricsFlg_refreshVariant_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = a2;
  v33 = a3;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerBundleEventsDeepFetchPreviousBundles", "", buf, 2u);
  }

  [*(a1 + 32) endSession];
  if (v33)
  {
    objc_storeStrong((*(*(a1 + 96) + 8) + 40), a3);
    v5 = *(*(*(a1 + 96) + 8) + 40);
    (*(*(a1 + 88) + 16))();
  }

  else
  {
    v31 = [NSMutableArray arrayWithArray:v32];
    v6 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(*(a1 + 112));
      v8 = [v32 count];
      *buf = 138412546;
      *&buf[4] = v7;
      *&buf[12] = 2048;
      *&buf[14] = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@, previousEventBundles %lu", buf, 0x16u);
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v9 = v32;
    v10 = [v9 countByEnumeratingWithState:&v50 objects:v58 count:16];
    if (v10)
    {
      v11 = *v51;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v51 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v50 + 1) + 8 * i);
          v14 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = NSStringFromSelector(*(a1 + 112));
            *buf = 138412546;
            *&buf[4] = v15;
            *&buf[12] = 2112;
            *&buf[14] = v13;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%@, previousEventBundles %@", buf, 0x16u);
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v50 objects:v58 count:16];
      }

      while (v10);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v55 = __Block_byref_object_copy__24;
    v56 = __Block_byref_object_dispose__24;
    v57 = 0;
    v16 = [[MOEventBundleFetchOptions alloc] initWithDateInterval:*(*(*(a1 + 104) + 8) + 40) ascending:1 limit:0 includeDeletedBundles:0 skipRanking:1 interfaceType:13];
    v17 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v17))
    {
      *v49 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerBundleEventsDeepFetchTripBundlesFetchWithOptions", "", v49, 2u);
    }

    v18 = [[MOPerformanceMeasurement alloc] initWithName:@"BundleEventsDeepFetchTripBundlesFetchWithOptions" measureRecentPeak:0];
    [(MOPerformanceMeasurement *)v18 startSession];
    v19 = *(a1 + 40);
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = __96__MOEventBundleManager__bundleEvents_startDate_endDate_submitMetricsFlg_refreshVariant_handler___block_invoke_483;
    v35[3] = &unk_10033BBD8;
    v20 = v18;
    v36 = v20;
    v43 = buf;
    v21 = *(a1 + 88);
    v44 = *(a1 + 96);
    v22 = v21;
    v46 = *(a1 + 112);
    v23 = *(a1 + 40);
    v42 = v22;
    v37 = v23;
    v24 = v31;
    v38 = v24;
    v25 = *(a1 + 48);
    v47 = *(a1 + 120);
    v26 = *(a1 + 56);
    v27 = *(a1 + 64);
    v45 = *(a1 + 104);
    v28 = *(a1 + 72);
    *&v29 = v27;
    *(&v29 + 1) = v28;
    *&v30 = v25;
    *(&v30 + 1) = v26;
    v39 = v30;
    v40 = v29;
    v41 = *(a1 + 80);
    v48 = *(a1 + 128);
    [v19 fetchRehydratedEventBundlesWithOptions:v16 CompletionHandler:v35];

    _Block_object_dispose(buf, 8);
  }
}

void __96__MOEventBundleManager__bundleEvents_startDate_endDate_submitMetricsFlg_refreshVariant_handler___block_invoke_483(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerBundleEventsDeepFetchTripBundlesFetchWithOptions", "", buf, 2u);
  }

  [*(a1 + 32) endSession];
  objc_storeStrong((*(*(a1 + 104) + 8) + 40), a2);
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 112) + 8) + 40), a3);
    v9 = *(*(*(a1 + 112) + 8) + 40);
    (*(*(a1 + 96) + 16))();
  }

  else
  {
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = NSStringFromSelector(*(a1 + 128));
      v12 = [v6 count];
      *buf = 138412802;
      v37 = v11;
      v38 = 2048;
      v39 = v12;
      v40 = 2112;
      v41 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%@, fetched trip bundle count, %lu, error, %@", buf, 0x20u);
    }

    v13 = [[MOEventBundleFetchOptions alloc] initWithDateInterval:0 ascending:1 limit:0 includeDeletedBundles:0 skipRanking:1 interfaceType:10];
    v14 = [*(a1 + 40) eventBundleStore];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = __96__MOEventBundleManager__bundleEvents_startDate_endDate_submitMetricsFlg_refreshVariant_handler___block_invoke_484;
    v23[3] = &unk_10033BBB0;
    v15 = *(a1 + 112);
    v33 = *(a1 + 128);
    v31 = v15;
    v30 = *(a1 + 96);
    *&v16 = *(a1 + 48);
    *(&v16 + 1) = *(a1 + 40);
    v22 = v16;
    v17 = *(a1 + 56);
    v34 = *(a1 + 136);
    v18 = *(a1 + 64);
    *&v19 = v17;
    *(&v19 + 1) = v18;
    v24 = v22;
    v25 = v19;
    v20 = *(a1 + 72);
    v21 = *(a1 + 120);
    v26 = v20;
    v32 = v21;
    v27 = *(a1 + 80);
    v28 = *(a1 + 88);
    v29 = v6;
    v35 = *(a1 + 144);
    [v14 fetchEventBundleWithOptions:v13 CompletionHandler:v23];
  }
}

void __96__MOEventBundleManager__bundleEvents_startDate_endDate_submitMetricsFlg_refreshVariant_handler___block_invoke_484(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = NSStringFromSelector(*(a1 + 120));
    *buf = 138412802;
    v71 = v8;
    v72 = 2048;
    v73 = [v5 count];
    v74 = 2112;
    v75 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%@, fetched photo memory bundle count, %lu, error, %@", buf, 0x20u);
  }

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 104) + 8) + 40), a3);
    v9 = *(*(*(a1 + 104) + 8) + 40);
    v10 = *(*(a1 + 96) + 16);
LABEL_5:
    v10();
    goto LABEL_27;
  }

  if ([v5 count])
  {
    [*(a1 + 32) addObjectsFromArray:v5];
  }

  v55 = v5;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v11 = *(a1 + 32);
  v12 = [v11 countByEnumeratingWithState:&v66 objects:v78 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v67;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v67 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v66 + 1) + 8 * i);
        v17 = [*(a1 + 40) _concatenatedEventIdentifierForBundle:v16];
        if (v17)
        {
          v18 = *(a1 + 48);
          v19 = [v16 bundleIdentifier];
          [v18 setObject:v19 forKey:v17];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v66 objects:v78 count:16];
    }

    while (v13);
  }

  v20 = *(a1 + 128);
  if (v20 != 512 && v20 != 1536 && v20 != 768)
  {
    goto LABEL_22;
  }

  if ([*(a1 + 56) isBeforeDate:*(a1 + 64)])
  {
    v21 = [[NSDateInterval alloc] initWithStartDate:*(a1 + 56) endDate:*(a1 + 64)];
    v22 = *(*(a1 + 112) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;

LABEL_22:
    v24 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = NSStringFromSelector(*(a1 + 120));
      v26 = *(a1 + 56);
      v27 = [*(*(*(a1 + 112) + 8) + 40) startDate];
      v28 = [*(*(*(a1 + 112) + 8) + 40) endDate];
      *buf = 138413058;
      v71 = v25;
      v72 = 2112;
      v73 = v26;
      v74 = 2112;
      v75 = v27;
      v76 = 2112;
      v77 = v28;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%@, bundling startDate, %@, adjusted startDate, %@, endDate, %@", buf, 0x2Au);
    }

    v29 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v29))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerBundleEventsDeepAnnotateEventBundles", "", buf, 2u);
    }

    v30 = [[MOPerformanceMeasurement alloc] initWithName:@"BundleEventsDeepAnnotateEventBundles" measureRecentPeak:0];
    [(MOPerformanceMeasurement *)v30 startSession];
    v31 = *(a1 + 40);
    v32 = [*(*(*(a1 + 112) + 8) + 40) startDate];
    v33 = [*(*(*(a1 + 112) + 8) + 40) endDate];
    v34 = *(a1 + 88);
    v54 = *(a1 + 80);
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = __96__MOEventBundleManager__bundleEvents_startDate_endDate_submitMetricsFlg_refreshVariant_handler___block_invoke_491;
    v56[3] = &unk_10033BB88;
    v57 = v30;
    v35 = *(a1 + 72);
    v36 = *(a1 + 80);
    v37 = *(a1 + 56);
    v38 = *(a1 + 64);
    *&v39 = v37;
    *(&v39 + 1) = v38;
    *&v40 = v35;
    *(&v40 + 1) = v36;
    v58 = v40;
    v59 = v39;
    v52 = *(a1 + 96);
    v41 = v52;
    v62 = v52;
    v53 = *(a1 + 32);
    v42 = v53.i64[0];
    v60 = vextq_s8(v53, v53, 8uLL);
    v63 = *(a1 + 112);
    v43 = *(a1 + 48);
    v65 = *(a1 + 136);
    v44 = *(a1 + 128);
    v61 = v43;
    v64 = v44;
    v45 = v30;
    [v31 _annotateEventBundlesWithStartDate:v32 endDate:v33 allEvents:v54 eventBundles:v34 handler:v56];

    v5 = v55;
    goto LABEL_27;
  }

  v46 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
  {
    v47 = NSStringFromSelector(*(a1 + 120));
    *buf = 138412290;
    v71 = v47;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "%@, skip bundling due to no valid startDate!", buf, 0xCu);
  }

  v48 = *(a1 + 72);
  v49 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 80) count]);
  [v48 setObject:v49 forKey:@"resultNumberOfEvents"];

  [*(a1 + 72) setObject:&off_10036A030 forKey:@"resultNumberOfBundleEvents"];
  v50 = *(a1 + 96);
  v5 = v55;
  if (v50)
  {
    v51 = *(a1 + 72);
    v10 = *(v50 + 16);
    goto LABEL_5;
  }

LABEL_27:
}

void __96__MOEventBundleManager__bundleEvents_startDate_endDate_submitMetricsFlg_refreshVariant_handler___block_invoke_491(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerBundleEventsDeepAnnotateEventBundles", "", buf, 2u);
  }

  [*(a1 + 32) endSession];
  v8 = *(a1 + 40);
  v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 48) count]);
  [v8 setObject:v9 forKey:@"resultNumberOfEvents"];

  v10 = *(a1 + 40);
  v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 count]);
  [v10 setObject:v11 forKey:@"resultNumberOfBundleEvents"];

  v12 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = *(a1 + 56);
    v14 = *(a1 + 64);
    v15 = *(a1 + 40);
    *buf = 138413058;
    v39 = v13;
    v40 = 2112;
    v41 = v14;
    v42 = 2112;
    v43 = v15;
    v44 = 2112;
    v45 = v6;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "_annotateEventBundlesWithStartDate, startDate, %@, endDate, %@, results, %@, error, %@", buf, 0x2Au);
  }

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 104) + 8) + 40), a3);
    v16 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 56);
      v23 = *(a1 + 64);
      v25 = [*(a1 + 48) count];
      v26 = *(*(*(a1 + 104) + 8) + 40);
      *buf = 138413058;
      v39 = v24;
      v40 = 2112;
      v41 = v23;
      v42 = 2048;
      v43 = v25;
      v44 = 2112;
      v45 = v26;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "annotate bundle error, startDate, %@, endDate, %@, events, %lu, error, %@", buf, 0x2Au);
    }

    v17 = *(a1 + 96);
    if (v17)
    {
      (*(v17 + 16))(v17, *(*(*(a1 + 104) + 8) + 40), *(a1 + 40));
    }
  }

  else
  {
    [*(a1 + 72) updateSuggestionIDAndFirstCreationDateForNewEventBundles:v5 previousEventBundles:*(a1 + 80) updateSensitiveFlag:1];
    v18 = [[MOBundleQualityManager alloc] initWithUniverse:*(*(a1 + 72) + 8)];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = __96__MOEventBundleManager__bundleEvents_startDate_endDate_submitMetricsFlg_refreshVariant_handler___block_invoke_493;
    v27[3] = &unk_10033BB60;
    v19 = v5;
    v20 = *(a1 + 72);
    v28 = v19;
    v29 = v20;
    v35 = *(a1 + 112);
    v30 = *(a1 + 88);
    v31 = *(a1 + 80);
    v32 = *(a1 + 48);
    v21 = *(a1 + 96);
    v37 = *(a1 + 128);
    v22 = *(a1 + 120);
    v34 = v21;
    v36 = v22;
    v33 = *(a1 + 40);
    [(MOBundleQualityManager *)v18 applyQualityChecksForBundles:v19 handler:v27];
  }
}

void __96__MOEventBundleManager__bundleEvents_startDate_endDate_submitMetricsFlg_refreshVariant_handler___block_invoke_493(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [*(a1 + 32) count];
    *buf = 134218240;
    *&buf[4] = v8;
    *&buf[12] = 2048;
    *&buf[14] = [v5 count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "applyQualityChecksForBundles, event bundles count before classification, %lu, event bundles count after classification, %lu", buf, 0x16u);
  }

  v9 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerBundleEventsDeepSummarization", "", buf, 2u);
  }

  v10 = [[MOPerformanceMeasurement alloc] initWithName:@"BundleEventsDeepSummarization" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v10 startSession];
  v11 = [[MOSummarizationManager alloc] initWithUniverse:*(*(a1 + 40) + 8)];
  v12 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerBundleEventsDeepSummarizationAggregation", "", buf, 2u);
  }

  v13 = [[MOPerformanceMeasurement alloc] initWithName:@"BundleEventsDeepSummarizationAggregation" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v13 startSession];
  v25 = v10;
  v14 = v6;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v36 = __Block_byref_object_copy__24;
  v37 = __Block_byref_object_dispose__24;
  v38 = 0;
  v15 = *(*(*(a1 + 88) + 8) + 40);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = __96__MOEventBundleManager__bundleEvents_startDate_endDate_submitMetricsFlg_refreshVariant_handler___block_invoke_501;
  v26[3] = &unk_10033BB38;
  v16 = *(a1 + 48);
  v26[4] = *(a1 + 40);
  v27 = v16;
  v28 = *(a1 + 56);
  v17 = *(a1 + 88);
  v18 = v13;
  v29 = v18;
  v19 = v5;
  v20 = *(a1 + 64);
  v32 = buf;
  v21 = *(a1 + 80);
  v34 = *(a1 + 104);
  v33 = *(a1 + 96);
  v22 = *(a1 + 72);
  *&v23 = v20;
  *(&v23 + 1) = v22;
  *&v24 = v21;
  *(&v24 + 1) = v17;
  v31 = v24;
  v30 = v23;
  [(MOSummarizationManager *)v11 aggregateEventBundles:v19 withAggregtaionDateInterval:v15 handler:v26];

  _Block_object_dispose(buf, 8);
}

void __96__MOEventBundleManager__bundleEvents_startDate_endDate_submitMetricsFlg_refreshVariant_handler___block_invoke_501(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 updateMetaDataForRankInEventBundles:v4];
  v5 = [*(a1 + 32) _updateIdentifiersForEventBundles:v4 eventIDsToBundleIDMapping:*(a1 + 40)];

  [*(a1 + 32) updateSuggestionIDAndFirstCreationDateForNewEventBundles:v5 previousEventBundles:*(a1 + 48) updateSensitiveFlag:0];
  v33 = a1;
  v6 = [*(a1 + 32) _updateIdentifiersForEvergreenBundles:v5];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v44 objects:v56 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v45;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v45 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v44 + 1) + 8 * i);
        v13 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v49 = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "After summarization Bundles : %@", buf, 0xCu);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v44 objects:v56 count:16];
    }

    while (v9);
  }

  [*(v33 + 32) associateEventBundles:v7 effectiveInterval:*(*(*(v33 + 88) + 8) + 40)];
  v14 = [*(v33 + 32) eventBundleRanking];
  v15 = [v7 mutableCopy];
  [v14 generateBundleRanking:v15 withMinRecommendedBundleCountRequirement:0];

  v16 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerBundleEventsDeepSummarizationAggregation", "", buf, 2u);
  }

  [*(v33 + 56) endSession];
  v17 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [*(*(*(v33 + 88) + 8) + 40) startDate];
    v19 = [*(*(*(v33 + 88) + 8) + 40) endDate];
    v20 = [*(v33 + 64) count];
    v21 = [v7 count];
    *buf = 138413058;
    v49 = v18;
    v50 = 2112;
    v51 = v19;
    v52 = 2048;
    v53 = v20;
    v54 = 2048;
    v55 = v21;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "after associateEventBundles, startDate, %@, endDate, %@, events, %lu, bundles, %lu", buf, 0x2Au);
  }

  v22 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerBundleEventsDeepSummarizationRemoveEventBundles", "", buf, 2u);
  }

  v23 = [[MOPerformanceMeasurement alloc] initWithName:@"BundleEventsDeepSummarizationRemoveEventBundles" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v23 startSession];
  v24 = [*(v33 + 32) eventBundleStore];
  v34[0] = _NSConcreteStackBlock;
  v25 = *(v33 + 88);
  v26 = *(*(*(v33 + 88) + 8) + 40);
  v34[1] = 3221225472;
  v34[2] = __96__MOEventBundleManager__bundleEvents_startDate_endDate_submitMetricsFlg_refreshVariant_handler___block_invoke_505;
  v34[3] = &unk_10033BB10;
  v41 = v25;
  v27 = *(v33 + 80);
  v28 = *(v33 + 32);
  v35 = v23;
  v36 = v28;
  v40 = v27;
  v37 = v7;
  v29 = *(v33 + 64);
  v43 = *(v33 + 112);
  v30 = *(v33 + 104);
  v38 = v29;
  v42 = v30;
  v39 = *(v33 + 72);
  v31 = v7;
  v32 = v23;
  [v24 removeEventBundlesStartedWithinInterval:v26 CompletionHandler:v34];
}

void __96__MOEventBundleManager__bundleEvents_startDate_endDate_submitMetricsFlg_refreshVariant_handler___block_invoke_505(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [*(*(*(a1 + 80) + 8) + 40) startDate];
    v10 = [*(*(*(a1 + 80) + 8) + 40) endDate];
    *buf = 138413058;
    v34 = v9;
    v35 = 2112;
    v36 = v10;
    v37 = 2112;
    v38 = v7;
    v39 = 2112;
    v40 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "removeEventBundlesStartedWithinInterval, startDate, %@, endDate, %@, results, %@, error, %@", buf, 0x2Au);
  }

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 88) + 8) + 40), a2);
    v11 = *(*(*(a1 + 88) + 8) + 40);
    (*(*(a1 + 72) + 16))();
    v12 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerBundleEventsDeepSummarizationRemoveEventBundles", "", buf, 2u);
    }

    [*(a1 + 32) endSession];
  }

  else
  {
    v13 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerBundleEventsDeepSummarizationRemoveEventBundles", "", buf, 2u);
    }

    [*(a1 + 32) endSession];
    v14 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerBundleEventsDeepSummarizationPurgeEventBundles", "", buf, 2u);
    }

    v15 = [[MOPerformanceMeasurement alloc] initWithName:@"BundleEventsDeepSummarizationPurgeEventBundles" measureRecentPeak:0];
    [(MOPerformanceMeasurement *)v15 startSession];
    v16 = [*(a1 + 40) eventBundleStore];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = __96__MOEventBundleManager__bundleEvents_startDate_endDate_submitMetricsFlg_refreshVariant_handler___block_invoke_509;
    v25[3] = &unk_10033BB10;
    v30 = *(a1 + 88);
    v23 = *(a1 + 72);
    v17 = v23;
    v29 = v23;
    v26 = v15;
    v24 = *(a1 + 40);
    v18 = *(&v24 + 1);
    v19 = *(a1 + 56);
    v32 = *(a1 + 104);
    v31 = *(a1 + 96);
    v20 = *(a1 + 64);
    *&v21 = v19;
    *(&v21 + 1) = v20;
    v27 = v24;
    v28 = v21;
    v22 = v15;
    [v16 purgeDeletedEventBundlesWithCompletionHandler:v25];
  }
}

void __96__MOEventBundleManager__bundleEvents_startDate_endDate_submitMetricsFlg_refreshVariant_handler___block_invoke_509(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [*(*(*(a1 + 80) + 8) + 40) startDate];
    v10 = [*(*(*(a1 + 80) + 8) + 40) endDate];
    *buf = 138413058;
    v33 = v9;
    v34 = 2112;
    v35 = v10;
    v36 = 2112;
    v37 = v7;
    v38 = 2112;
    v39 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "purgeDeletedEventBundlesWithCompletionHandler, startDate, %@, endDate, %@, results, %@, error, %@", buf, 0x2Au);
  }

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 88) + 8) + 40), a2);
    v11 = *(*(*(a1 + 88) + 8) + 40);
    (*(*(a1 + 72) + 16))();
    v12 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerBundleEventsDeepSummarizationPurgeEventBundles", "", buf, 2u);
    }

    [*(a1 + 32) endSession];
  }

  else
  {
    v13 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerBundleEventsDeepSummarizationPurgeEventBundles", "", buf, 2u);
    }

    [*(a1 + 32) endSession];
    v14 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerBundleEventsDeepSummarizationSaveEventBundles", "", buf, 2u);
    }

    v15 = [[MOPerformanceMeasurement alloc] initWithName:@"BundleEventsDeepSummarizationSaveEventBundles" measureRecentPeak:0];
    [(MOPerformanceMeasurement *)v15 startSession];
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = __96__MOEventBundleManager__bundleEvents_startDate_endDate_submitMetricsFlg_refreshVariant_handler___block_invoke_513;
    v21[3] = &unk_10033BAE8;
    v28 = *(a1 + 80);
    v22 = *(a1 + 56);
    v23 = *(a1 + 48);
    v24 = v15;
    v31 = *(a1 + 104);
    v18 = *(a1 + 40);
    v19 = *(a1 + 96);
    v29 = *(a1 + 88);
    v30 = v19;
    v25 = v18;
    v27 = *(a1 + 72);
    v26 = *(a1 + 64);
    v20 = v15;
    [v16 saveEventBundles:v17 handler:v21];
  }
}

void __96__MOEventBundleManager__bundleEvents_startDate_endDate_submitMetricsFlg_refreshVariant_handler___block_invoke_513(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [*(*(*(a1 + 80) + 8) + 40) startDate];
    v10 = [*(*(*(a1 + 80) + 8) + 40) endDate];
    v11 = [*(a1 + 32) count];
    v12 = [*(a1 + 40) count];
    v31 = 138413570;
    v32 = v9;
    v33 = 2112;
    v34 = v10;
    v35 = 2048;
    v36 = v11;
    v37 = 2048;
    v38 = v12;
    v39 = 2112;
    v40 = v6;
    v41 = 2112;
    v42 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "saveEventBundles, startDate, %@, endDate, %@, events, %lu, bundles, %lu, error, %@, results, %@", &v31, 0x3Eu);
  }

  v13 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v13))
  {
    LOWORD(v31) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerBundleEventsDeepSummarizationSaveEventBundles", "", &v31, 2u);
  }

  [*(a1 + 48) endSession];
  objc_storeStrong((*(*(a1 + 88) + 8) + 40), a2);
  if (!*(*(*(a1 + 88) + 8) + 40))
  {
    v14 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v14))
    {
      LOWORD(v31) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerBundleEventsDeepSummarizationSubmitMetrics", "", &v31, 2u);
    }

    v15 = [[MOPerformanceMeasurement alloc] initWithName:@"BundleEventsDeepSummarizationSubmitMetrics" measureRecentPeak:0];
    [(MOPerformanceMeasurement *)v15 startSession];
    if (*(a1 + 104) == 1)
    {
      if (+[MOPlatformInfo isInternalBuild])
      {
        v16 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          LOWORD(v31) = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Submit internal eventBundle analytics", &v31, 2u);
        }

        v17 = *(a1 + 56);
        v18 = *(a1 + 40);
        v19 = +[NSDate date];
        [v17 submitEventBundleInternalAnalytics:v18 withSubmissionDate:v19 withRefreshVariant:*(a1 + 96)];
      }

      v20 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        LOWORD(v31) = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "starting biome donation.", &v31, 2u);
      }

      v21 = [*(a1 + 56) onboardingAndSettingsPersistence];
      v22 = [v21 getSnapshotDictionaryForAnalytics];

      v23 = [*(a1 + 56) biomeManager];
      [v23 donateEvents:*(a1 + 32) andBundles:*(a1 + 40) andOnboardingStatus:v22];

      v24 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = [*(a1 + 32) count];
        v26 = [*(a1 + 40) count];
        v31 = 134218240;
        v32 = v25;
        v33 = 2048;
        v34 = v26;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "finished biome donation with %lu event candidates, and %lu bundle candidates.", &v31, 0x16u);
      }

      v27 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
      if (os_signpost_enabled(v27))
      {
        LOWORD(v31) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerBundleEventsDeepSummarizationSubmitMetrics", "", &v31, 2u);
      }

      [(MOPerformanceMeasurement *)v15 endSession];
    }
  }

  v28 = *(a1 + 72);
  if (v28)
  {
    (*(v28 + 16))(v28, *(*(*(a1 + 88) + 8) + 40), *(a1 + 64));
  }

  v29 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v29))
  {
    LOWORD(v31) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerBundleEventsDeepSummarization", "", &v31, 2u);
  }

  v30 = [[MOPerformanceMeasurement alloc] initWithName:@"BundleEventsDeepSummarization" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v30 startSession];
}

- (void)_fetchPreviousBundlesWithDateInterval:(id)interval handler:(id)handler
{
  handlerCopy = handler;
  intervalCopy = interval;
  v8 = [[MOEventBundleFetchOptions alloc] initWithDateInterval:intervalCopy ascending:1 limit:0 includeDeletedBundles:1 skipRanking:1];

  v9 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerBundleEventsDeepFetchPreviousBundlesFetchWithOptions", "", buf, 2u);
  }

  v10 = [[MOPerformanceMeasurement alloc] initWithName:@"BundleEventsDeepFetchPreviousBundlesFetchWithOptions" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v10 startSession];
  eventBundleStore = [(MOEventBundleManager *)self eventBundleStore];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __70__MOEventBundleManager__fetchPreviousBundlesWithDateInterval_handler___block_invoke;
  v15[3] = &unk_1003378F0;
  v16 = v10;
  v17 = v8;
  selfCopy = self;
  v19 = handlerCopy;
  v12 = v8;
  v13 = handlerCopy;
  v14 = v10;
  [eventBundleStore fetchEventBundleWithOptions:v12 CompletionHandler:v15];
}

void __70__MOEventBundleManager__fetchPreviousBundlesWithDateInterval_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerBundleEventsDeepFetchPreviousBundlesFetchWithOptions", "", buf, 2u);
  }

  [*(a1 + 32) endSession];
  if (v6)
  {
    v8 = *(*(a1 + 56) + 16);
LABEL_9:
    v8();
    goto LABEL_10;
  }

  v9 = [*(a1 + 40) dateInterval];
  [v9 duration];
  v11 = v10;

  if (v11 < 604800.0)
  {
    v12 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v5 count];
      *buf = 134217984;
      v28 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "total number of previous bundle fetched, %lu", buf, 0xCu);
    }

    v8 = *(*(a1 + 56) + 16);
    goto LABEL_9;
  }

  v14 = [[NSSet alloc] initWithObjects:{&off_10036A048, &off_10036A060, &off_10036A078, 0}];
  v15 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerBundleEventsDeepFetchPreviousBundlesFetchWithGranularity", "", buf, 2u);
  }

  v16 = [[MOPerformanceMeasurement alloc] initWithName:@"BundleEventsDeepFetchPreviousBundlesFetchWithGranularity" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v16 startSession];
  v17 = [*(a1 + 48) eventBundleStore];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = __70__MOEventBundleManager__fetchPreviousBundlesWithDateInterval_handler___block_invoke_530;
  v22[3] = &unk_10033BC50;
  v23 = v16;
  v18 = v5;
  v19 = *(a1 + 48);
  v20 = *(a1 + 56);
  v24 = v18;
  v25 = v19;
  v26 = v20;
  v21 = v16;
  [v17 fetchEventBundleWithGranularity:2 interfaceTypes:v14 CompletionHandler:v22];

LABEL_10:
}

void __70__MOEventBundleManager__fetchPreviousBundlesWithDateInterval_handler___block_invoke_530(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerBundleEventsDeepFetchPreviousBundlesFetchWithGranularity", "", buf, 2u);
  }

  [*(a1 + 32) endSession];
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  if ([*(a1 + 40) count])
  {
    [v5 addObjectsFromArray:*(a1 + 40)];
  }

  v22 = v5;
  v23 = a1;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        v13 = [v12 action];
        v14 = [v13 actionType];

        if (v14 != 2)
        {
          v15 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v33 = v12;
            _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "previous summary bundle fetched, %@", buf, 0xCu);
          }

          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v9);
  }

  [v22 minusSet:v6];
  v16 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerBundleEventsDeepFetchPreviousBundlesRemoveEventBundle", "", buf, 2u);
  }

  v17 = [[MOPerformanceMeasurement alloc] initWithName:@"BundleEventsDeepFetchPreviousBundlesRemoveEventBundle" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v17 startSession];
  v18 = [*(v23 + 48) eventBundleStore];
  v19 = [v6 allObjects];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = __70__MOEventBundleManager__fetchPreviousBundlesWithDateInterval_handler___block_invoke_535;
  v24[3] = &unk_10033BC28;
  v25 = v17;
  v26 = v22;
  v27 = *(v23 + 56);
  v20 = v22;
  v21 = v17;
  [v18 removeEventBundles:v19 CompletionHandler:v24];
}

void __70__MOEventBundleManager__fetchPreviousBundlesWithDateInterval_handler___block_invoke_535(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v2))
  {
    LOWORD(v7) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerBundleEventsDeepFetchPreviousBundlesRemoveEventBundle", "", &v7, 2u);
  }

  [*(a1 + 32) endSession];
  v3 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [*(a1 + 40) count];
    v7 = 134217984;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "total number of previous bundle fetched (removing media, wokout and contact summary bundles), %lu", &v7, 0xCu);
  }

  v5 = *(a1 + 48);
  v6 = [*(a1 + 40) allObjects];
  (*(v5 + 16))(v5, v6, 0);
}

- (void)_filterPreOnboardedVisitEvents:(id)events handler:(id)handler
{
  eventsCopy = events;
  handlerCopy = handler;
  if (![eventsCopy count])
  {
    handlerCopy[2](handlerCopy, &__NSArray0__struct, &__NSArray0__struct);
    goto LABEL_28;
  }

  v25 = handlerCopy;
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v26 = eventsCopy;
  v9 = eventsCopy;
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (!v10)
  {
    goto LABEL_22;
  }

  v11 = v10;
  v12 = *v28;
  do
  {
    v13 = 0;
    do
    {
      if (*v28 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v27 + 1) + 8 * v13);
      if ([v14 category] == 1)
      {
        if ([v14 category] != 1)
        {
          goto LABEL_17;
        }

        routineEvent = [v14 routineEvent];
        isPreOnboardedVisit = [routineEvent isPreOnboardedVisit];

        v17 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
        if (isPreOnboardedVisit)
        {
          if (v18)
          {
            [MOEventBundleManager _filterPreOnboardedVisitEvents:v34 handler:v14];
          }

          v19 = v7;
          goto LABEL_16;
        }

        if (v18)
        {
          [MOEventBundleManager _filterPreOnboardedVisitEvents:v33 handler:v14];
        }
      }

      else
      {
        v17 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          [MOEventBundleManager _filterPreOnboardedVisitEvents:v35 handler:v14];
        }
      }

      v19 = v8;
LABEL_16:

      [v19 addObject:v14];
LABEL_17:
      v13 = v13 + 1;
    }

    while (v11 != v13);
    v20 = [v9 countByEnumeratingWithState:&v27 objects:v36 count:16];
    v11 = v20;
  }

  while (v20);
LABEL_22:

  v21 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = [v7 count];
    *buf = 134217984;
    v32 = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, " Found %lu pre onboarded visit events", buf, 0xCu);
  }

  v23 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  handlerCopy = v25;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = [v8 count];
    *buf = 134217984;
    v32 = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, " Found %lu rest events", buf, 0xCu);
  }

  v25[2](v25, v7, v8);
  eventsCopy = v26;
LABEL_28:
}

- (void)_annotateEventBundlesWithStartDate:(id)date endDate:(id)endDate allEvents:(id)events eventBundles:(id)bundles handler:(id)handler
{
  dateCopy = date;
  endDateCopy = endDate;
  eventsCopy = events;
  bundlesCopy = bundles;
  handlerCopy = handler;
  v146 = objc_opt_new();
  group = dispatch_group_create();
  v343 = 0;
  v344 = &v343;
  v345 = 0x3032000000;
  v346 = __Block_byref_object_copy__24;
  v347 = __Block_byref_object_dispose__24;
  v348 = objc_opt_new();
  v337 = 0;
  v338 = &v337;
  v339 = 0x3032000000;
  v340 = __Block_byref_object_copy__24;
  v341 = __Block_byref_object_dispose__24;
  v342 = objc_opt_new();
  v336[0] = _NSConcreteStackBlock;
  v336[1] = 3221225472;
  v336[2] = __98__MOEventBundleManager__annotateEventBundlesWithStartDate_endDate_allEvents_eventBundles_handler___block_invoke;
  v336[3] = &unk_10033BC78;
  v336[4] = &v343;
  v336[5] = &v337;
  [(MOEventBundleManager *)self _filterPreOnboardedVisitEvents:eventsCopy handler:v336];
  v11 = [NSArray arrayWithArray:v338[5]];
  v152 = [NSArray arrayWithArray:v344[5]];
  dateCopy = [NSPredicate predicateWithFormat:@"startDate >= %@", dateCopy];
  v12 = [NSPredicate predicateWithFormat:@"%K = %lu", @"provider", 5];
  v358[0] = dateCopy;
  v358[1] = v12;
  v145 = v12;
  v13 = [NSArray arrayWithObjects:v358 count:2];
  v14 = [NSCompoundPredicate andPredicateWithSubpredicates:v13];
  v15 = [v11 filteredArrayUsingPredicate:v14];

  v155 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
  v357 = v155;
  v16 = [NSArray arrayWithObjects:&v357 count:1];
  v163 = [v15 sortedArrayUsingDescriptors:v16];

  v17 = [NSPredicate predicateWithFormat:@"provider != %lu", 5];
  [NSPredicate predicateWithFormat:@"endDate >= %@", dateCopy];
  v154 = v153 = v17;
  v356[0] = v154;
  v356[1] = v17;
  v18 = [NSArray arrayWithObjects:v356 count:2];
  v19 = [NSCompoundPredicate andPredicateWithSubpredicates:v18];
  v20 = [v11 filteredArrayUsingPredicate:v19];

  v156 = [v20 filteredArrayUsingPredicate:dateCopy];

  v21 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = [v156 count];
    v23 = [v163 count];
    v24 = [v20 count];
    *buf = 138413314;
    *&buf[4] = dateCopy;
    *&buf[12] = 2112;
    *&buf[14] = endDateCopy;
    *&buf[22] = 2048;
    v354 = v22;
    *v355 = 2048;
    *&v355[2] = v23;
    *&v355[10] = 2048;
    *&v355[12] = v24;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "annotateEventBundles startDate, %@, endDate, %@, event count, %lu, pattern event count, %lu, eventsForTimeAtHomeManager count, %lu", buf, 0x34u);
  }

  v334 = 0u;
  v335 = 0u;
  v332 = 0u;
  v333 = 0u;
  obj = v20;
  v25 = [obj countByEnumeratingWithState:&v332 objects:v352 count:16];
  v26 = 0;
  if (v25)
  {
    v27 = *v333;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v333 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v332 + 1) + 8 * i);
        if ([v29 category] == 1 && objc_msgSend(v29, "placeUserType") == 1)
        {
          v30 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            v31 = NSStringFromSelector(a2);
            startDate = [v29 startDate];
            endDate = [v29 endDate];
            *buf = 138413058;
            *&buf[4] = v31;
            *&buf[12] = 2048;
            *&buf[14] = v26;
            *&buf[22] = 2112;
            v354 = startDate;
            *v355 = 2112;
            *&v355[2] = endDate;
            _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "%@,TAH home visit idx, %lu, startDate, %@, endDate, %@", buf, 0x2Au);
          }

          ++v26;
        }
      }

      v25 = [obj countByEnumeratingWithState:&v332 objects:v352 count:16];
    }

    while (v25);
  }

  v351[0] = v154;
  v351[1] = v153;
  v34 = [NSArray arrayWithObjects:v351 count:2];
  v35 = [NSCompoundPredicate andPredicateWithSubpredicates:v34];
  v36 = [eventsCopy filteredArrayUsingPredicate:v35];

  v330 = 0u;
  v331 = 0u;
  v328 = 0u;
  v329 = 0u;
  v37 = v36;
  v38 = [v37 countByEnumeratingWithState:&v328 objects:v350 count:16];
  if (v38)
  {
    v39 = *v329;
    do
    {
      for (j = 0; j != v38; j = j + 1)
      {
        if (*v329 != v39)
        {
          objc_enumerationMutation(v37);
        }

        v41 = *(*(&v328 + 1) + 8 * j);
        if ([v41 category] == 1 && objc_msgSend(v41, "placeUserType") == 1)
        {
          v42 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
          {
            v43 = NSStringFromSelector(a2);
            startDate2 = [v41 startDate];
            endDate2 = [v41 endDate];
            *buf = 138413058;
            *&buf[4] = v43;
            *&buf[12] = 2048;
            *&buf[14] = v26;
            *&buf[22] = 2112;
            v354 = startDate2;
            *v355 = 2112;
            *&v355[2] = endDate2;
            _os_log_debug_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "%@, PAH home visit idx, %lu, startDate, %@, endDate, %@", buf, 0x2Au);
          }
        }
      }

      v38 = [v37 countByEnumeratingWithState:&v328 objects:v350 count:16];
    }

    while (v38);
  }

  v46 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
  v349 = v46;
  v47 = [NSArray arrayWithObjects:&v349 count:1];
  aSelectora = [v156 sortedArrayUsingDescriptors:v47];
  v144 = v46;

  fUniverse = self->fUniverse;
  v49 = objc_opt_class();
  v50 = NSStringFromClass(v49);
  v162 = [(MODaemonUniverse *)fUniverse getService:v50];

  [v162 processTimeZoneEvents:aSelectora];
  v51 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
  {
    v52 = [aSelectora count];
    *buf = 138413058;
    *&buf[4] = v162;
    *&buf[12] = 2112;
    *&buf[14] = dateCopy;
    *&buf[22] = 2112;
    v354 = endDateCopy;
    *v355 = 2048;
    *&v355[2] = v52;
    _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "timeZoneManager, %@, startDate, %@, endDate, %@, events, %lu", buf, 0x2Au);
  }

  v53 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v53))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v53, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerBundleEventsDeepAnnotateEventBundlesPreOnboardedVisit", "", buf, 2u);
  }

  v54 = [[MOPerformanceMeasurement alloc] initWithName:@"BundleEventsDeepAnnotateEventBundlesPreOnboardedVisit" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v54 startSession];
  dispatch_group_enter(group);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v354 = __Block_byref_object_copy__24;
  *v355 = __Block_byref_object_dispose__24;
  *&v355[8] = 0;
  v55 = [[MOPreOnboardedVisitAnnotationManager alloc] initWithUniverse:self->fUniverse];
  v56 = objc_opt_new();
  v324[0] = _NSConcreteStackBlock;
  v324[1] = 3221225472;
  v324[2] = __98__MOEventBundleManager__annotateEventBundlesWithStartDate_endDate_allEvents_eventBundles_handler___block_invoke_558;
  v324[3] = &unk_100336CE8;
  v327 = buf;
  v57 = group;
  v325 = v57;
  v143 = v54;
  v326 = v143;
  [(MOTimeContextAnnotationManager *)v55 performAnnotationWithEvents:v152 withPatternEvents:v56 handler:v324];
  v58 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v157 = v56;
  groupa = &v55->super.super.super;
  if (os_signpost_enabled(v58))
  {
    *v318 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v58, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerBundleEventsDeepAnnotateEventBundlesVisit", "", v318, 2u);
  }

  v59 = [[MOPerformanceMeasurement alloc] initWithName:@"BundleEventsDeepAnnotateEventBundlesVisit" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v59 startSession];
  dispatch_group_enter(v57);
  *v318 = 0;
  v319 = v318;
  v320 = 0x3032000000;
  v321 = __Block_byref_object_copy__24;
  v322 = __Block_byref_object_dispose__24;
  v323 = 0;
  v60 = [[MOVisitAnnotationManager alloc] initWithUniverse:self->fUniverse];
  v314[0] = _NSConcreteStackBlock;
  v314[1] = 3221225472;
  v314[2] = __98__MOEventBundleManager__annotateEventBundlesWithStartDate_endDate_allEvents_eventBundles_handler___block_invoke_563;
  v314[3] = &unk_100336CE8;
  v317 = v318;
  v61 = v57;
  v315 = v61;
  v62 = v59;
  v316 = v62;
  [(MOTimeContextAnnotationManager *)v60 performAnnotationWithEvents:aSelectora withPatternEvents:v163 handler:v314];
  v63 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v141 = v62;
  v142 = v60;
  if (os_signpost_enabled(v63))
  {
    *v308 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v63, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerBundleEventsDeepAnnotateEventBundlesTrips", "", v308, 2u);
  }

  v64 = [[MOPerformanceMeasurement alloc] initWithName:@"BundleEventsDeepAnnotateEventBundlesTrips" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v64 startSession];
  dispatch_group_enter(v61);
  *v308 = 0;
  v309 = v308;
  v310 = 0x3032000000;
  v311 = __Block_byref_object_copy__24;
  v312 = __Block_byref_object_dispose__24;
  v313 = 0;
  v65 = [[MOTripAnnotationManager alloc] initWithUniverse:self->fUniverse];
  v304[0] = _NSConcreteStackBlock;
  v304[1] = 3221225472;
  v304[2] = __98__MOEventBundleManager__annotateEventBundlesWithStartDate_endDate_allEvents_eventBundles_handler___block_invoke_568;
  v304[3] = &unk_100336CE8;
  v307 = v308;
  v66 = v61;
  v305 = v66;
  v67 = v64;
  v306 = v67;
  [(MOTripAnnotationManager *)v65 performAnnotationWithEvents:aSelectora withPatternEvents:v163 eventBundles:bundlesCopy handler:v304];
  v68 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v139 = v67;
  v140 = v65;
  if (os_signpost_enabled(v68))
  {
    *v298 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v68, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerBundleEventsDeepAnnotateEventBundlesWorkout", "", v298, 2u);
  }

  v69 = [[MOPerformanceMeasurement alloc] initWithName:@"BundleEventsDeepAnnotateEventBundlesWorkout" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v69 startSession];
  dispatch_group_enter(v66);
  *v298 = 0;
  v299 = v298;
  v300 = 0x3032000000;
  v301 = __Block_byref_object_copy__24;
  v302 = __Block_byref_object_dispose__24;
  v303 = 0;
  v70 = [[MOWorkoutAnnotationManager alloc] initWithUniverse:self->fUniverse];
  v294[0] = _NSConcreteStackBlock;
  v294[1] = 3221225472;
  v294[2] = __98__MOEventBundleManager__annotateEventBundlesWithStartDate_endDate_allEvents_eventBundles_handler___block_invoke_573;
  v294[3] = &unk_100336CE8;
  v297 = v298;
  v71 = v66;
  v295 = v71;
  v72 = v69;
  v296 = v72;
  [(MOTimeContextAnnotationManager *)v70 performAnnotationWithEvents:aSelectora withPatternEvents:v163 handler:v294];
  v73 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v137 = v72;
  v138 = v70;
  if (os_signpost_enabled(v73))
  {
    *v288 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v73, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerBundleEventsDeepAnnotateEventBundlesState of Mind", "", v288, 2u);
  }

  v74 = [[MOPerformanceMeasurement alloc] initWithName:@"BundleEventsDeepAnnotateEventBundlesMood" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v74 startSession];
  dispatch_group_enter(v71);
  *v288 = 0;
  v289 = v288;
  v290 = 0x3032000000;
  v291 = __Block_byref_object_copy__24;
  v292 = __Block_byref_object_dispose__24;
  v293 = 0;
  v75 = [[MOStateOfMindAnnotationManager alloc] initWithUniverse:self->fUniverse];
  v284[0] = _NSConcreteStackBlock;
  v284[1] = 3221225472;
  v284[2] = __98__MOEventBundleManager__annotateEventBundlesWithStartDate_endDate_allEvents_eventBundles_handler___block_invoke_578;
  v284[3] = &unk_100336CE8;
  v287 = v288;
  v76 = v71;
  v285 = v76;
  v77 = v74;
  v286 = v77;
  [(MOTimeContextAnnotationManager *)v75 performAnnotationWithEvents:aSelectora withPatternEvents:v163 handler:v284];
  v78 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v135 = v77;
  v136 = v75;
  if (os_signpost_enabled(v78))
  {
    *v278 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v78, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerBundleEventsDeepAnnotateEventBundlesSignificantContact", "", v278, 2u);
  }

  v79 = [[MOPerformanceMeasurement alloc] initWithName:@"BundleEventsDeepAnnotateEventBundlesSignificantContact" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v79 startSession];
  dispatch_group_enter(v76);
  *v278 = 0;
  v279 = v278;
  v280 = 0x3032000000;
  v281 = __Block_byref_object_copy__24;
  v282 = __Block_byref_object_dispose__24;
  v283 = 0;
  v80 = [[MOConversationAnnotationManager alloc] initWithUniverse:self->fUniverse];
  v274[0] = _NSConcreteStackBlock;
  v274[1] = 3221225472;
  v274[2] = __98__MOEventBundleManager__annotateEventBundlesWithStartDate_endDate_allEvents_eventBundles_handler___block_invoke_583;
  v274[3] = &unk_100336CE8;
  v277 = v278;
  v81 = v76;
  v275 = v81;
  v82 = v79;
  v276 = v82;
  [(MOConversationAnnotationManager *)v80 performAnnotationWithEvents:aSelectora withPatternEvents:v163 handler:v274];
  v83 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v133 = v82;
  v134 = v80;
  if (os_signpost_enabled(v83))
  {
    *v268 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v83, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerBundleEventsDeepAnnotateEventBundlesMedia", "", v268, 2u);
  }

  v84 = [[MOPerformanceMeasurement alloc] initWithName:@"BundleEventsDeepAnnotateEventBundlesMedia" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v84 startSession];
  dispatch_group_enter(v81);
  *v268 = 0;
  v269 = v268;
  v270 = 0x3032000000;
  v271 = __Block_byref_object_copy__24;
  v272 = __Block_byref_object_dispose__24;
  v273 = 0;
  v85 = [[MOMediaPlayAnnotationManager alloc] initWithUniverse:self->fUniverse];
  v264[0] = _NSConcreteStackBlock;
  v264[1] = 3221225472;
  v264[2] = __98__MOEventBundleManager__annotateEventBundlesWithStartDate_endDate_allEvents_eventBundles_handler___block_invoke_588;
  v264[3] = &unk_100336CE8;
  v267 = v268;
  v86 = v81;
  v265 = v86;
  v87 = v84;
  v266 = v87;
  [(MOMediaPlayAnnotationManager *)v85 performAnnotationWithEvents:aSelectora withPatternEvents:v163 handler:v264];
  v88 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v131 = v87;
  v132 = v85;
  if (os_signpost_enabled(v88))
  {
    *v258 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v88, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerBundleEventsDeepAnnotateEventBundlesTrends", "", v258, 2u);
  }

  v89 = [[MOPerformanceMeasurement alloc] initWithName:@"BundleEventsDeepAnnotateEventBundlesTrends" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v89 startSession];
  dispatch_group_enter(v86);
  *v258 = 0;
  v259 = v258;
  v260 = 0x3032000000;
  v261 = __Block_byref_object_copy__24;
  v262 = __Block_byref_object_dispose__24;
  v263 = 0;
  v90 = [[MOTrendAnnotationManager alloc] initWithUniverse:self->fUniverse];
  v254[0] = _NSConcreteStackBlock;
  v254[1] = 3221225472;
  v254[2] = __98__MOEventBundleManager__annotateEventBundlesWithStartDate_endDate_allEvents_eventBundles_handler___block_invoke_593;
  v254[3] = &unk_100336CE8;
  v257 = v258;
  v91 = v86;
  v255 = v91;
  v92 = v89;
  v256 = v92;
  [(MOTrendAnnotationManager *)v90 performAnnotationWithEvents:aSelectora withPatternEvents:v163 handler:v254];
  v93 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v129 = v92;
  v130 = v90;
  if (os_signpost_enabled(v93))
  {
    *v248 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v93, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerBundleEventsDeepAnnotateEventBundlesTimeHome", "", v248, 2u);
  }

  v94 = [[MOPerformanceMeasurement alloc] initWithName:@"BundleEventsDeepAnnotateEventBundlesTimeHome" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v94 startSession];
  dispatch_group_enter(v91);
  *v248 = 0;
  v249 = v248;
  v250 = 0x3032000000;
  v251 = __Block_byref_object_copy__24;
  v252 = __Block_byref_object_dispose__24;
  v253 = 0;
  v246[0] = 0;
  v246[1] = v246;
  v246[2] = 0x2020000000;
  v247 = 0;
  v95 = [[MOTimeAtHomeAnomalyManager alloc] initWithUniverse:self->fUniverse];
  v241[0] = _NSConcreteStackBlock;
  v241[1] = 3221225472;
  v241[2] = __98__MOEventBundleManager__annotateEventBundlesWithStartDate_endDate_allEvents_eventBundles_handler___block_invoke_598;
  v241[3] = &unk_10033BCA0;
  v244 = v248;
  v245 = v246;
  v96 = v91;
  v242 = v96;
  v127 = v94;
  v243 = v127;
  [(MOTimeAtHomeAnomalyManager *)v95 performAnnotationWithEvents:obj withPatternEvents:v163 withBundleWindowStart:dateCopy withBundleWindowEnd:endDateCopy handler:v241];
  v97 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v128 = v95;
  if (os_signpost_enabled(v97))
  {
    *v235 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v97, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerBundleEventsDeepAnnotateEventBundlesPhotoHome", "", v235, 2u);
  }

  v98 = [[MOPerformanceMeasurement alloc] initWithName:@"BundleEventsDeepAnnotateEventBundlesPhotoHome" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v98 startSession];
  dispatch_group_enter(v96);
  *v235 = 0;
  v236 = v235;
  v237 = 0x3032000000;
  v238 = __Block_byref_object_copy__24;
  v239 = __Block_byref_object_dispose__24;
  v240 = 0;
  v99 = [[MOPhotosAtHomeManager alloc] initWithUniverse:self->fUniverse];
  v231[0] = _NSConcreteStackBlock;
  v231[1] = 3221225472;
  v231[2] = __98__MOEventBundleManager__annotateEventBundlesWithStartDate_endDate_allEvents_eventBundles_handler___block_invoke_603;
  v231[3] = &unk_100336CE8;
  v234 = v235;
  v100 = v96;
  v232 = v100;
  v125 = v98;
  v233 = v125;
  [(MOPhotosAtHomeManager *)v99 performAnnotationWithEvents:v37 withPatternEvents:v163 withBundleWindowStart:dateCopy withBundleWindowEnd:endDateCopy handler:v231];
  v101 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v126 = v99;
  if (os_signpost_enabled(v101))
  {
    *v225 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v101, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerBundleEventsDeepAnnotateEventBundlesHostingHome", "", v225, 2u);
  }

  v102 = [[MOPerformanceMeasurement alloc] initWithName:@"BundleEventsDeepAnnotateEventBundlesHostingHome" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v102 startSession];
  dispatch_group_enter(v100);
  *v225 = 0;
  v226 = v225;
  v227 = 0x3032000000;
  v228 = __Block_byref_object_copy__24;
  v229 = __Block_byref_object_dispose__24;
  v230 = 0;
  v223[0] = 0;
  v223[1] = v223;
  v223[2] = 0x2020000000;
  v224 = 0;
  v103 = [[MOHostingAtHomeManager alloc] initWithUniverse:self->fUniverse];
  v218[0] = _NSConcreteStackBlock;
  v218[1] = 3221225472;
  v218[2] = __98__MOEventBundleManager__annotateEventBundlesWithStartDate_endDate_allEvents_eventBundles_handler___block_invoke_608;
  v218[3] = &unk_10033BCA0;
  v221 = v225;
  v222 = v223;
  v104 = v100;
  v219 = v104;
  v123 = v102;
  v220 = v123;
  [(MOHostingAtHomeManager *)v103 performAnnotationWithEvents:obj withPatternEvents:v163 withBundleWindowStart:dateCopy withBundleWindowEnd:endDateCopy handler:v218];
  v105 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v124 = v103;
  if (os_signpost_enabled(v105))
  {
    *v212 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v105, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerBundleEventsDeepAnnotateEventBundlesSharedContent", "", v212, 2u);
  }

  v106 = [[MOPerformanceMeasurement alloc] initWithName:@"BundleEventsDeepAnnotateEventBundlesSharedContent" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v106 startSession];
  dispatch_group_enter(v104);
  *v212 = 0;
  v213 = v212;
  v214 = 0x3032000000;
  v215 = __Block_byref_object_copy__24;
  v216 = __Block_byref_object_dispose__24;
  v217 = 0;
  v107 = [[MOSharedContentAnnotationManager alloc] initWithUniverse:self->fUniverse];
  v208[0] = _NSConcreteStackBlock;
  v208[1] = 3221225472;
  v208[2] = __98__MOEventBundleManager__annotateEventBundlesWithStartDate_endDate_allEvents_eventBundles_handler___block_invoke_613;
  v208[3] = &unk_100336CE8;
  v211 = v212;
  v108 = v104;
  v209 = v108;
  v109 = v106;
  v210 = v109;
  [(MOSharedContentAnnotationManager *)v107 performAnnotationWithEvents:aSelectora handler:v208];
  v110 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v122 = v107;
  if (os_signpost_enabled(v110))
  {
    *v202 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v110, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerBundleEventsDeepAnnotateEventBundlesPhotoMemory", "", v202, 2u);
  }

  v111 = [[MOPerformanceMeasurement alloc] initWithName:@"BundleEventsDeepAnnotateEventBundlesPhotoMemory" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v111 startSession];
  dispatch_group_enter(v108);
  *v202 = 0;
  v203 = v202;
  v204 = 0x3032000000;
  v205 = __Block_byref_object_copy__24;
  v206 = __Block_byref_object_dispose__24;
  v207 = 0;
  v112 = [[MOPhotoMemoryAnnotationManager alloc] initWithUniverse:self->fUniverse];
  v198[0] = _NSConcreteStackBlock;
  v198[1] = 3221225472;
  v198[2] = __98__MOEventBundleManager__annotateEventBundlesWithStartDate_endDate_allEvents_eventBundles_handler___block_invoke_618;
  v198[3] = &unk_100336CE8;
  v201 = v202;
  v113 = v108;
  v199 = v113;
  v114 = v111;
  v200 = v114;
  [(MOPhotoMemoryAnnotationManager *)v112 performAnnotationWithEvents:aSelectora handler:v198];
  v115 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v115))
  {
    *v192 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v115, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerBundleEventsDeepAnnotateEventBundlesEvergreen", "", v192, 2u);
  }

  v116 = [[MOPerformanceMeasurement alloc] initWithName:@"BundleEventsDeepAnnotateEventBundlesEvergreen" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v116 startSession];
  dispatch_group_enter(v113);
  v117 = [[NSDateInterval alloc] initWithStartDate:dateCopy endDate:endDateCopy];
  *v192 = 0;
  v193 = v192;
  v194 = 0x3032000000;
  v195 = __Block_byref_object_copy__24;
  v196 = __Block_byref_object_dispose__24;
  v197 = 0;
  v118 = [[MOEvergreenAnnotationManager alloc] initWithUniverse:self->fUniverse];
  v188[0] = _NSConcreteStackBlock;
  v188[1] = 3221225472;
  v188[2] = __98__MOEventBundleManager__annotateEventBundlesWithStartDate_endDate_allEvents_eventBundles_handler___block_invoke_623;
  v188[3] = &unk_100336CE8;
  v191 = v192;
  v119 = v113;
  v189 = v119;
  v120 = v116;
  v190 = v120;
  [(MOEvergreenAnnotationManager *)v118 performAnnotationWithEvents:aSelectora withPatternEvents:v163 dateInterval:v117 handler:v188];
  queue = [(MOEventBundleManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __98__MOEventBundleManager__annotateEventBundlesWithStartDate_endDate_allEvents_eventBundles_handler___block_invoke_625;
  block[3] = &unk_10033BCC8;
  v172 = buf;
  v173 = v318;
  v174 = v308;
  v175 = v298;
  v176 = v288;
  v177 = v278;
  v178 = v268;
  v179 = v258;
  v180 = v248;
  v181 = v235;
  v182 = v225;
  v183 = v212;
  v184 = v202;
  v185 = v192;
  v186 = v223;
  v187 = v246;
  v170 = v146;
  v171 = handlerCopy;
  v165 = handlerCopy;
  v148 = v146;
  dispatch_group_notify(v119, queue, block);

  _Block_object_dispose(v192, 8);
  _Block_object_dispose(v202, 8);

  _Block_object_dispose(v212, 8);
  _Block_object_dispose(v223, 8);
  _Block_object_dispose(v225, 8);

  _Block_object_dispose(v235, 8);
  _Block_object_dispose(v246, 8);
  _Block_object_dispose(v248, 8);

  _Block_object_dispose(v258, 8);
  _Block_object_dispose(v268, 8);

  _Block_object_dispose(v278, 8);
  _Block_object_dispose(v288, 8);

  _Block_object_dispose(v298, 8);
  _Block_object_dispose(v308, 8);

  _Block_object_dispose(v318, 8);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v337, 8);
  _Block_object_dispose(&v343, 8);
}

void __98__MOEventBundleManager__annotateEventBundlesWithStartDate_endDate_allEvents_eventBundles_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 134217984;
      v11 = [v5 count];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, " Found %lu pre onboarded visit events", &v10, 0xCu);
    }

    [*(*(*(a1 + 32) + 8) + 40) addObjectsFromArray:v5];
  }

  if ([v6 count])
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v6 count];
      v10 = 134217984;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, " Found %lu rest events", &v10, 0xCu);
    }

    [*(*(*(a1 + 40) + 8) + 40) addObjectsFromArray:v6];
  }
}

void __98__MOEventBundleManager__annotateEventBundlesWithStartDate_endDate_allEvents_eventBundles_handler___block_invoke_558(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    v24 = [v4 count];
    v25 = 2112;
    v26 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "preOnboardedVisit manager event bundles, %lu, error, %@", buf, 0x16u);
  }

  v16 = v5;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        v13 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v24 = v12;
          _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "preOnboardedVisit manager event bundle, %@", buf, 0xCu);
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  dispatch_group_leave(*(a1 + 32));
  v14 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerBundleEventsDeepAnnotateEventBundlesPreOnboardedVisit", "", buf, 2u);
  }

  [*(a1 + 40) endSession];
}

void __98__MOEventBundleManager__annotateEventBundlesWithStartDate_endDate_allEvents_eventBundles_handler___block_invoke_563(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    v24 = [v4 count];
    v25 = 2112;
    v26 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "visit manager event bundles, %lu, error, %@", buf, 0x16u);
  }

  v16 = v5;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v24 = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "visit manager event bundle, %@", buf, 0xCu);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  dispatch_group_leave(*(a1 + 32));
  v14 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerBundleEventsDeepAnnotateEventBundlesVisit", "", buf, 2u);
  }

  [*(a1 + 40) endSession];
}

void __98__MOEventBundleManager__annotateEventBundlesWithStartDate_endDate_allEvents_eventBundles_handler___block_invoke_568(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    v24 = [v4 count];
    v25 = 2112;
    v26 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "trip manager event bundles, %lu, error, %@", buf, 0x16u);
  }

  v16 = v5;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v24 = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "trip manager event bundle, %@", buf, 0xCu);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  dispatch_group_leave(*(a1 + 32));
  v14 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerBundleEventsDeepAnnotateEventBundlesTrips", "", buf, 2u);
  }

  [*(a1 + 40) endSession];
}

void __98__MOEventBundleManager__annotateEventBundlesWithStartDate_endDate_allEvents_eventBundles_handler___block_invoke_573(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    v24 = [v4 count];
    v25 = 2112;
    v26 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "workout manager event bundles, %lu, error, %@", buf, 0x16u);
  }

  v16 = v5;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v24 = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "workout manager event bundle, %@", buf, 0xCu);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  dispatch_group_leave(*(a1 + 32));
  v14 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerBundleEventsDeepAnnotateEventBundlesWorkout", "", buf, 2u);
  }

  [*(a1 + 40) endSession];
}

void __98__MOEventBundleManager__annotateEventBundlesWithStartDate_endDate_allEvents_eventBundles_handler___block_invoke_578(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    v24 = [v4 count];
    v25 = 2112;
    v26 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "state of mind manager event bundles, %lu, error, %@", buf, 0x16u);
  }

  v16 = v5;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v24 = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "state of mind manager event bundle, %@", buf, 0xCu);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  dispatch_group_leave(*(a1 + 32));
  v14 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerBundleEventsDeepAnnotateEventBundlesMood", "", buf, 2u);
  }

  [*(a1 + 40) endSession];
}

void __98__MOEventBundleManager__annotateEventBundlesWithStartDate_endDate_allEvents_eventBundles_handler___block_invoke_583(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    v24 = [v4 count];
    v25 = 2112;
    v26 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "conversation bundle count, %lu, error, %@", buf, 0x16u);
  }

  v16 = v5;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v24 = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "conversation event bundle, %@", buf, 0xCu);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  dispatch_group_leave(*(a1 + 32));
  v14 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerBundleEventsDeepAnnotateEventBundlesSignificantContact", "", buf, 2u);
  }

  [*(a1 + 40) endSession];
}

void __98__MOEventBundleManager__annotateEventBundlesWithStartDate_endDate_allEvents_eventBundles_handler___block_invoke_588(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    v24 = [v4 count];
    v25 = 2112;
    v26 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "media bundle count, %lu, error, %@", buf, 0x16u);
  }

  v16 = v5;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v24 = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "media event bundle, %@", buf, 0xCu);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  dispatch_group_leave(*(a1 + 32));
  v14 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerBundleEventsDeepAnnotateEventBundlesMedia", "", buf, 2u);
  }

  [*(a1 + 40) endSession];
}

void __98__MOEventBundleManager__annotateEventBundlesWithStartDate_endDate_allEvents_eventBundles_handler___block_invoke_593(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 134218242;
    v11 = [v6 count];
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "trend bundle count, %lu, error, %@", &v10, 0x16u);
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  dispatch_group_leave(*(a1 + 32));
  v9 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v9))
  {
    LOWORD(v10) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerBundleEventsDeepAnnotateEventBundlesTrends", "", &v10, 2u);
  }

  [*(a1 + 40) endSession];
}

void __98__MOEventBundleManager__annotateEventBundlesWithStartDate_endDate_allEvents_eventBundles_handler___block_invoke_598(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    v33 = [v4 count];
    v34 = 2112;
    v35 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "::: time at home manager event bundles, %lu, error, %@", buf, 0x16u);
  }

  v26 = objc_opt_new();
  v7 = [objc_opt_new() initWithTimeIntervalSinceReferenceDate:0.0];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
  v24 = v5;
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        v14 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v33 = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "time at home event bundle, %@", buf, 0xCu);
        }

        if ([v13 bundleSubType] == 504)
        {
          v15 = [v13 startDate];
          v16 = [v15 isOnOrAfter:v7];

          if (v16)
          {
            v17 = [v13 startDate];

            v7 = v17;
          }
        }

        else
        {
          [v26 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v10);
  }

  v18 = [NSArray arrayWithArray:v26];
  v19 = *(*(a1 + 48) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;

  v21 = +[NSDate date];
  [v7 timeIntervalSinceDate:v21];
  *(*(*(a1 + 56) + 8) + 24) = fabs(v22) <= 172800.0;

  dispatch_group_leave(*(a1 + 32));
  v23 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v23))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerBundleEventsDeepAnnotateEventBundlesTimeHome", "", buf, 2u);
  }

  [*(a1 + 40) endSession];
}

void __98__MOEventBundleManager__annotateEventBundlesWithStartDate_endDate_allEvents_eventBundles_handler___block_invoke_603(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    v36 = [v4 count];
    v37 = 2112;
    v38 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "::: photos at home manager event bundles, %lu, error, %@", buf, 0x16u);
  }

  v23 = v5;

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        v13 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v36 = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "::: Event Bundle, %@", buf, 0xCu);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v9);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = v7;
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v26;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v25 + 1) + 8 * j);
        v20 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v36 = v19;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "time at home event bundle, %@", buf, 0xCu);
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v16);
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  dispatch_group_leave(*(a1 + 32));
  v21 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerBundleEventsDeepAnnotateEventBundlesPhotoHome", "", buf, 2u);
  }

  [*(a1 + 40) endSession];
}

void __98__MOEventBundleManager__annotateEventBundlesWithStartDate_endDate_allEvents_eventBundles_handler___block_invoke_608(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    v33 = [v4 count];
    v34 = 2112;
    v35 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "::: hosting at home manager event bundles, %lu, error, %@", buf, 0x16u);
  }

  v7 = objc_opt_new();
  v8 = [objc_opt_new() initWithTimeIntervalSinceReferenceDate:0.0];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
  v25 = v5;
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      v13 = 0;
      do
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v27 + 1) + 8 * v13);
        v15 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v33 = v14;
          _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "::: Event Bundle, %@", buf, 0xCu);
        }

        if ([v14 bundleSubType] == 504)
        {
          v16 = [v14 startDate];
          v17 = [v16 isOnOrAfter:v8];

          if (v17)
          {
            v18 = [v14 startDate];

            v8 = v18;
          }
        }

        else
        {
          [v7 addObject:v14];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v11);
  }

  v19 = [NSArray arrayWithArray:v7];
  v20 = *(*(a1 + 48) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;

  v22 = +[NSDate date];
  [v8 timeIntervalSinceDate:v22];
  *(*(*(a1 + 56) + 8) + 24) = fabs(v23) <= 172800.0;

  dispatch_group_leave(*(a1 + 32));
  v24 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerBundleEventsDeepAnnotateEventBundlesHostingHome", "", buf, 2u);
  }

  [*(a1 + 40) endSession];
}

void __98__MOEventBundleManager__annotateEventBundlesWithStartDate_endDate_allEvents_eventBundles_handler___block_invoke_613(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    v24 = [v4 count];
    v25 = 2112;
    v26 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "shared content annotation manager event bundles, %lu, error, %@", buf, 0x16u);
  }

  v16 = v5;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v24 = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "shared content bundle, %@", buf, 0xCu);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  dispatch_group_leave(*(a1 + 32));
  v14 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerBundleEventsDeepAnnotateEventBundlesSharedContent", "", buf, 2u);
  }

  [*(a1 + 40) endSession];
}

void __98__MOEventBundleManager__annotateEventBundlesWithStartDate_endDate_allEvents_eventBundles_handler___block_invoke_618(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    v24 = [v4 count];
    v25 = 2112;
    v26 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "photo memory annotation manager event bundles, %lu, error, %@", buf, 0x16u);
  }

  v16 = v5;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        v13 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v24 = v12;
          _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "photo memory bundle, %@", buf, 0xCu);
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  dispatch_group_leave(*(a1 + 32));
  v14 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerBundleEventsDeepAnnotateEventBundlesPhotoMemory", "", buf, 2u);
  }

  [*(a1 + 40) endSession];
}

void __98__MOEventBundleManager__annotateEventBundlesWithStartDate_endDate_allEvents_eventBundles_handler___block_invoke_623(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 134218242;
    v11 = [v6 count];
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "evergreen annotation manager event bundles, %lu, error, %@", &v10, 0x16u);
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  dispatch_group_leave(*(a1 + 32));
  v9 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v9))
  {
    LOWORD(v10) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerBundleEventsDeepAnnotateEventBundlesEvergreen", "", &v10, 2u);
  }

  [*(a1 + 40) endSession];
}

uint64_t __98__MOEventBundleManager__annotateEventBundlesWithStartDate_endDate_allEvents_eventBundles_handler___block_invoke_625(uint64_t a1)
{
  if ([*(*(*(a1 + 48) + 8) + 40) count])
  {
    [*(a1 + 32) addObjectsFromArray:*(*(*(a1 + 48) + 8) + 40)];
  }

  if ([*(*(*(a1 + 56) + 8) + 40) count])
  {
    [*(a1 + 32) addObjectsFromArray:*(*(*(a1 + 56) + 8) + 40)];
  }

  if ([*(*(*(a1 + 64) + 8) + 40) count])
  {
    [*(a1 + 32) addObjectsFromArray:*(*(*(a1 + 64) + 8) + 40)];
  }

  if ([*(*(*(a1 + 72) + 8) + 40) count])
  {
    [*(a1 + 32) addObjectsFromArray:*(*(*(a1 + 72) + 8) + 40)];
  }

  if ([*(*(*(a1 + 80) + 8) + 40) count])
  {
    [*(a1 + 32) addObjectsFromArray:*(*(*(a1 + 80) + 8) + 40)];
  }

  if ([*(*(*(a1 + 88) + 8) + 40) count])
  {
    [*(a1 + 32) addObjectsFromArray:*(*(*(a1 + 88) + 8) + 40)];
  }

  if ([*(*(*(a1 + 96) + 8) + 40) count])
  {
    [*(a1 + 32) addObjectsFromArray:*(*(*(a1 + 96) + 8) + 40)];
  }

  if ([*(*(*(a1 + 104) + 8) + 40) count])
  {
    [*(a1 + 32) addObjectsFromArray:*(*(*(a1 + 104) + 8) + 40)];
  }

  if ([*(*(*(a1 + 112) + 8) + 40) count])
  {
    [*(a1 + 32) addObjectsFromArray:*(*(*(a1 + 112) + 8) + 40)];
  }

  if ([*(*(*(a1 + 120) + 8) + 40) count])
  {
    [*(a1 + 32) addObjectsFromArray:*(*(*(a1 + 120) + 8) + 40)];
  }

  if ([*(*(*(a1 + 128) + 8) + 40) count])
  {
    [*(a1 + 32) addObjectsFromArray:*(*(*(a1 + 128) + 8) + 40)];
  }

  if ([*(*(*(a1 + 136) + 8) + 40) count])
  {
    [*(a1 + 32) addObjectsFromArray:*(*(*(a1 + 136) + 8) + 40)];
  }

  if ([*(*(*(a1 + 144) + 8) + 40) count])
  {
    [*(a1 + 32) addObjectsFromArray:*(*(*(a1 + 144) + 8) + 40)];
  }

  if ([*(*(*(a1 + 152) + 8) + 40) count])
  {
    v2 = *(*(*(a1 + 160) + 8) + 24);
    if ((v2 & 1) != 0 || *(*(*(a1 + 168) + 8) + 24) == 1)
    {
      [MOEvergreenAnnotationManager replacePromptIndicesOfEvergreen:*(*(*(a1 + 152) + 8) + 40) isTah:v2 ^ 1u];
    }

    [*(a1 + 32) addObjectsFromArray:*(*(*(a1 + 152) + 8) + 40)];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v27 objects:v59 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v28;
    do
    {
      v7 = 0;
      do
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v27 + 1) + 8 * v7);
        v9 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v32 = v8;
          _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "annotateEventBundles, event bundle, %@", buf, 0xCu);
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v27 objects:v59 count:16];
    }

    while (v5);
  }

  v10 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v26 = [*(*(*(a1 + 48) + 8) + 40) count];
    v25 = [*(*(*(a1 + 56) + 8) + 40) count];
    v24 = [*(*(*(a1 + 64) + 8) + 40) count];
    v23 = [*(*(*(a1 + 72) + 8) + 40) count];
    v22 = [*(*(*(a1 + 88) + 8) + 40) count];
    v21 = [*(*(*(a1 + 96) + 8) + 40) count];
    v11 = [*(*(*(a1 + 104) + 8) + 40) count];
    v12 = [*(*(*(a1 + 112) + 8) + 40) count];
    v13 = [*(*(*(a1 + 120) + 8) + 40) count];
    v14 = [*(*(*(a1 + 128) + 8) + 40) count];
    v15 = [*(*(*(a1 + 136) + 8) + 40) count];
    v16 = [*(*(*(a1 + 144) + 8) + 40) count];
    v17 = [*(*(*(a1 + 152) + 8) + 40) count];
    v18 = [*(a1 + 32) count];
    *buf = 134221312;
    v32 = v26;
    v33 = 2048;
    v34 = v25;
    v35 = 2048;
    v36 = v24;
    v37 = 2048;
    v38 = v23;
    v39 = 2048;
    v40 = v22;
    v41 = 2048;
    v42 = v21;
    v43 = 2048;
    v44 = v11;
    v45 = 2048;
    v46 = v12;
    v47 = 2048;
    v48 = v13;
    v49 = 2048;
    v50 = v14;
    v51 = 2048;
    v52 = v15;
    v53 = 2048;
    v54 = v16;
    v55 = 2048;
    v56 = v17;
    v57 = 2048;
    v58 = v18;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "annotateEventBundles summary: preOnboardedVisit, %lu, visit, %lu, trip, %lu, workout, %lu, conversation, %lu, media, %lu, trend, %lu, home, %lu, pah, %lu, hah, %lu, shared content, %lu, photo memory, %lu, evergreen, %lu, total, %lu", buf, 0x8Eu);
  }

  v19 = *(a1 + 32);
  return (*(*(a1 + 40) + 16))();
}

- (void)updateMetaDataForRankInEventBundles:(id)bundles
{
  bundlesCopy = bundles;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = [bundlesCopy countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v28;
    *&v5 = 138412290;
    v26 = v5;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(bundlesCopy);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        metaDataForRank = [v9 metaDataForRank];
        if (!metaDataForRank)
        {
          goto LABEL_10;
        }

        v11 = metaDataForRank;
        metaDataForRank2 = [v9 metaDataForRank];
        v13 = [metaDataForRank2 objectForKey:@"LabelConfidence"];

        if (v13)
        {
          metaDataForRank3 = [v9 metaDataForRank];
          v15 = [metaDataForRank3 objectForKey:@"LabelConfidence"];
          [v15 doubleValue];
          v17 = v16;

          v18 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = 134218242;
            v32 = v17;
            v33 = 2112;
            v34 = v9;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "label confidence, label confidence, %f, event bundle, %@", buf, 0x16u);
          }
        }

        else
        {
LABEL_10:
          v18 = objc_opt_new();
          [MOContextAnnotationUtilities labelConfidenceForEventBundle:v9];
          v20 = v19;
          v21 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218242;
            v32 = v20;
            v33 = 2112;
            v34 = v9;
            _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "label confidence, label confidence (update), %f, event bundle, %@", buf, 0x16u);
          }

          if (v20 > 0.0)
          {
            v22 = [NSNumber numberWithDouble:v20];
            [v18 setObject:v22 forKey:@"LabelConfidence"];

            metaDataForRank4 = [v9 metaDataForRank];

            if (metaDataForRank4)
            {
              metaDataForRank5 = [v9 metaDataForRank];
              [v18 addEntriesFromDictionary:metaDataForRank5];
            }

            [v9 setMetaDataForRank:v18];
          }
        }

        v25 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          *buf = v26;
          v32 = *&v9;
          _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "annotateEventBundles, event bundle, %@", buf, 0xCu);
        }
      }

      v6 = [bundlesCopy countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v6);
  }
}

- (id)_concatenatedEventIdentifierForBundle:(id)bundle
{
  bundleCopy = bundle;
  events = [bundleCopy events];
  v6 = [events count];

  if (v6)
  {
    v7 = objc_opt_new();
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lu", [bundleCopy interfaceType]);
    [v7 addObject:v8];

    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lu", [bundleCopy summarizationGranularity]);
    [v7 addObject:v9];

    if ([bundleCopy interfaceType] == 7)
    {
      action = [bundleCopy action];
      actionSubtype = [action actionSubtype];

      if (actionSubtype == 8)
      {
        startDate = [bundleCopy startDate];
        [startDate timeIntervalSinceReferenceDate];
        v14 = [NSString stringWithFormat:@"%f", v13];
        [v7 addObject:v14];
      }
    }

    events2 = [bundleCopy events];
    v16 = [NSSortDescriptor sortDescriptorWithKey:@"eventIdentifier" ascending:1];
    v42 = v16;
    v17 = [NSArray arrayWithObjects:&v42 count:1];
    v18 = [events2 sortedArrayUsingDescriptors:v17];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v19 = v18;
    v20 = [v19 countByEnumeratingWithState:&v31 objects:v41 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v32;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v32 != v22)
          {
            objc_enumerationMutation(v19);
          }

          eventIdentifier = [*(*(&v31 + 1) + 8 * i) eventIdentifier];
          uUIDString = [eventIdentifier UUIDString];
          [v7 addObject:uUIDString];
        }

        v21 = [v19 countByEnumeratingWithState:&v31 objects:v41 count:16];
      }

      while (v21);
    }

    v26 = [v7 componentsJoinedByString:@":"];
    v27 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v29 = NSStringFromSelector(a2);
      bundleIdentifier = [bundleCopy bundleIdentifier];
      *buf = 138412802;
      v36 = v29;
      v37 = 2112;
      v38 = bundleIdentifier;
      v39 = 2112;
      v40 = v26;
      _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "%@, bundleID, %@, concatenated eventID, %@", buf, 0x20u);
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (id)_updateIdentifiersForEventBundles:(id)bundles eventIDsToBundleIDMapping:(id)mapping
{
  bundlesCopy = bundles;
  mappingCopy = mapping;
  v6 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = bundlesCopy;
  v7 = [obj countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    v10 = &MOLogFacilityEventBundleManager;
    do
    {
      v11 = 0;
      v28 = v8;
      do
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v30 + 1) + 8 * v11);
        if ([v12 interfaceType] == 11)
        {
          v13 = 0;
        }

        else
        {
          v14 = [(MOEventBundleManager *)self _concatenatedEventIdentifierForBundle:v12];
          if (v14)
          {
            v13 = [mappingCopy objectForKey:v14];
          }

          else
          {
            v13 = 0;
          }
        }

        v15 = _mo_log_facility_get_os_log(v10);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = v6;
          v17 = v10;
          v18 = NSStringFromSelector(a2);
          if (v13)
          {
            v19 = @"YES";
          }

          else
          {
            v19 = @"NO";
          }

          bundleIdentifier = [v12 bundleIdentifier];
          v21 = v13;
          if (!v13)
          {
            bundleIdentifier2 = [v12 bundleIdentifier];
            v21 = bundleIdentifier2;
          }

          *buf = 138413058;
          v35 = v18;
          v36 = 2112;
          v37 = v19;
          v38 = 2112;
          v39 = bundleIdentifier;
          v40 = 2112;
          v41 = v21;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%@, update bundleID, %@, bundleID, %@, updated bundleID, %@", buf, 0x2Au);
          if (!v13)
          {
          }

          v10 = v17;
          v6 = v16;
          v8 = v28;
        }

        if (v13)
        {
          v22 = [[MOEventBundle alloc] initWithBundleIdentifier:v13 usingBundle:v12];
          [v6 addObject:v22];
        }

        else
        {
          [v6 addObject:v12];
        }

        v11 = v11 + 1;
      }

      while (v8 != v11);
      v8 = [obj countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v8);
  }

  return v6;
}

- (id)_updateIdentifiersForEvergreenBundles:(id)bundles
{
  bundlesCopy = bundles;
  v4 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = bundlesCopy;
  v5 = [obj countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v27;
    v8 = &MOLogFacilityEventBundleManager;
    do
    {
      v9 = 0;
      v24 = v6;
      do
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * v9);
        if ([v10 interfaceType] == 11)
        {
          suggestionID = [v10 suggestionID];
        }

        else
        {
          suggestionID = 0;
        }

        v12 = _mo_log_facility_get_os_log(v8);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = v7;
          v14 = v4;
          v15 = v8;
          v16 = NSStringFromSelector(a2);
          if (suggestionID)
          {
            v17 = @"YES";
          }

          else
          {
            v17 = @"NO";
          }

          bundleIdentifier = [v10 bundleIdentifier];
          v19 = suggestionID;
          if (!suggestionID)
          {
            bundleIdentifier2 = [v10 bundleIdentifier];
            v19 = bundleIdentifier2;
          }

          *buf = 138413058;
          v31 = v16;
          v32 = 2112;
          v33 = v17;
          v34 = 2112;
          v35 = bundleIdentifier;
          v36 = 2112;
          v37 = v19;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%@, update bundleID for Evergreen bundle, %@, bundleID, %@, updated bundleID, %@", buf, 0x2Au);
          if (!suggestionID)
          {
          }

          v8 = v15;
          v4 = v14;
          v7 = v13;
          v6 = v24;
        }

        if (suggestionID)
        {
          v20 = [[MOEventBundle alloc] initWithBundleIdentifier:suggestionID usingBundle:v10];
          [v4 addObject:v20];
        }

        else
        {
          [v4 addObject:v10];
        }

        v9 = v9 + 1;
      }

      while (v6 != v9);
      v6 = [obj countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v6);
  }

  return v4;
}

- (void)_collectTimeCorrelatedEventsWithStartDate:(id)date endDate:(id)endDate events:(id)events submitMetricsFlg:(BOOL)flg handler:(id)handler
{
  flgCopy = flg;
  dateCopy = date;
  endDateCopy = endDate;
  eventsCopy = events;
  handlerCopy = handler;
  v17 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = NSStringFromSelector(a2);
    v19 = v18;
    v20 = @"NO";
    if (flgCopy)
    {
      v20 = @"YES";
    }

    *buf = 138412546;
    v41 = v18;
    v42 = 2112;
    v43 = v20;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%@, submitMetricsFlg, %@", buf, 0x16u);
  }

  v21 = objc_opt_new();
  if (flgCopy)
  {
    v22 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v41 = dateCopy;
      v42 = 2112;
      v43 = endDateCopy;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "initiate bundler with startDate: %@, endDate:  %@", buf, 0x16u);
    }

    v23 = [[MOEventBundler alloc] initWithStartDate:dateCopy endDate:endDateCopy];
    v24 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "bundle events", buf, 2u);
    }

    v39 = v23;
    v25 = [(MOEventBundler *)v23 calculateEventBundlesFromEvents:eventsCopy];
    v26 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = [v25 count];
      *buf = 134217984;
      v41 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "there are %lu event bundles.", buf, 0xCu);
    }

    enableSemanticPruning = self->_enableSemanticPruning;
    v29 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_INFO);
    if (enableSemanticPruning)
    {
      if (v30)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "prune events based on semantic filter", buf, 2u);
      }

      v31 = [(MOEventBundler *)v39 pruneEventBundles:v25];
      v29 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v32 = [v31 count];
        *buf = 134217984;
        v41 = v32;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "there are %lu pruned event bundles.", buf, 0xCu);
      }
    }

    else
    {
      if (v30)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "did not prune events based on semantic filter since it's disabled", buf, 2u);
      }

      v31 = 0;
    }

    v33 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v41 = dateCopy;
      v42 = 2112;
      v43 = endDateCopy;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "initiate metrics with startDate: %@, endDate:  %@", buf, 0x16u);
    }

    v34 = [[MOPromptMetrics alloc] initWithStartDate:dateCopy endDate:endDateCopy EventManager:self->_eventManager];
    v35 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "calculate metrics for raw events", buf, 2u);
    }

    [(MOPromptMetrics *)v34 calculateAndSetMetricsForRawEvents:eventsCopy];
    v36 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "calculate metrics on pre-bundles", buf, 2u);
    }

    [(MOPromptMetrics *)v34 calculateAndSetMetricsForCorrelatedEvents:v25];
    if (self->_enableSemanticPruning)
    {
      v37 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "calculate metrics on semantically pruned bundles", buf, 2u);
      }

      [(MOPromptMetrics *)v34 calculateAndSetMetricsForSemanticallyBundledEvents:v31];
    }

    v38 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "submit metrics", buf, 2u);
    }

    [(MOEventBundleManager *)self submitMetricForEventBundleWithPromptMetrics:v34];
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0, v21);
    }
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0, v21);
  }
}

- (void)updateSuggestionIDAndFirstCreationDateForNewEventBundles:(id)bundles previousEventBundles:(id)eventBundles updateSensitiveFlag:(BOOL)flag
{
  flagCopy = flag;
  bundlesCopy = bundles;
  v8 = [(MOEventBundleManager *)self partitionedEventBundles:eventBundles];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = bundlesCopy;
  v10 = v8;
  obj = v9;
  v11 = [v9 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v31;
    *&v12 = 138413058;
    v26 = v12;
    v27 = v10;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v30 + 1) + 8 * i);
        v17 = [(MOEventBundleManager *)self matchedEventBundleForEventBundle:v16 otherEventBundles:v10, v26];
        v18 = v17;
        if (v17)
        {
          suggestionID = [v17 suggestionID];
          if (!suggestionID)
          {
            suggestionID = [v18 bundleIdentifier];
          }

          [v16 setSuggestionID:suggestionID];
          firstCreationDate = [v18 firstCreationDate];
          if (firstCreationDate)
          {
            [v18 firstCreationDate];
          }

          else
          {
            [v18 creationDate];
          }
          v22 = ;
          [v16 setFirstCreationDate:v22];

          v23 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            suggestionID2 = [v16 suggestionID];
            firstCreationDate2 = [v16 firstCreationDate];
            *buf = v26;
            v35 = suggestionID2;
            v36 = 2112;
            v37 = firstCreationDate2;
            v38 = 2112;
            v39 = v18;
            v40 = 2112;
            v41 = v16;
            _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "Suggestion ID matched, suggestion ID, %@, first creation date, %@, prev, %@, new, %@", buf, 0x2Au);

            v10 = v27;
          }

          if (flagCopy)
          {
            [(MOEventBundleManager *)self updateMetaDataForRankforNewBundle:v16 withOldBundle:v18];
          }
        }

        else
        {
          bundleIdentifier = [v16 bundleIdentifier];
          [v16 setSuggestionID:bundleIdentifier];

          v10 = v27;
          suggestionID = [v16 creationDate];
          [v16 setFirstCreationDate:suggestionID];
        }
      }

      v13 = [obj countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v13);
  }
}

- (void)updateMetaDataForRankforNewBundle:(id)bundle withOldBundle:(id)oldBundle
{
  bundleCopy = bundle;
  oldBundleCopy = oldBundle;
  metaDataForRank = [oldBundleCopy metaDataForRank];

  if (metaDataForRank)
  {
    v8 = objc_opt_new();
    metaDataForRank2 = [bundleCopy metaDataForRank];

    if (metaDataForRank2)
    {
      metaDataForRank3 = [bundleCopy metaDataForRank];
      v11 = [metaDataForRank3 mutableCopy];

      v8 = v11;
    }

    metaDataForRank4 = [oldBundleCopy metaDataForRank];
    v13 = [metaDataForRank4 objectForKey:@"SensitiveLocation"];

    if (v13)
    {
      metaDataForRank5 = [oldBundleCopy metaDataForRank];
      v15 = [metaDataForRank5 objectForKey:@"SensitiveLocation"];
      [v8 setObject:v15 forKey:@"SensitiveLocation"];
    }

    metaDataForRank6 = [oldBundleCopy metaDataForRank];
    v17 = [metaDataForRank6 objectForKey:@"UninterestingLocation"];

    if (v17)
    {
      metaDataForRank7 = [oldBundleCopy metaDataForRank];
      v19 = [metaDataForRank7 objectForKey:@"UninterestingLocation"];
      [v8 setObject:v19 forKey:@"UninterestingLocation"];
    }

    metaDataForRank8 = [oldBundleCopy metaDataForRank];
    v21 = [metaDataForRank8 objectForKey:@"BusinessContact"];

    if (v21)
    {
      metaDataForRank9 = [oldBundleCopy metaDataForRank];
      v23 = [metaDataForRank9 objectForKey:@"BusinessContact"];
      [v8 setObject:v23 forKey:@"BusinessContact"];
    }

    [bundleCopy setMetaDataForRank:v8];
    v24 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      metaDataForRank10 = [bundleCopy metaDataForRank];
      suggestionID = [bundleCopy suggestionID];
      firstCreationDate = [bundleCopy firstCreationDate];
      v28 = 138413314;
      v29 = metaDataForRank10;
      v30 = 2112;
      v31 = suggestionID;
      v32 = 2112;
      v33 = firstCreationDate;
      v34 = 2112;
      v35 = oldBundleCopy;
      v36 = 2112;
      v37 = bundleCopy;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "newBundle get the sensitve related flag from old bundle, metadata for rank  %@, suggestion ID, %@, first creation date, %@, prev, %@, new, %@", &v28, 0x34u);
    }
  }
}

- (void)associateEventBundles:(id)bundles effectiveInterval:(id)interval
{
  intervalCopy = interval;
  v6 = [bundles mutableCopy];
  selfCopy = self;
  eventBundleRanking = [(MOEventBundleManager *)self eventBundleRanking];
  [eventBundleRanking generateBundleRanking:v6 withMinRecommendedBundleCountRequirement:0];

  v80 = v6;
  v8 = [NSArray arrayWithArray:v6];
  v9 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v96 = [v8 count];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Raw input bundle count for trip bundle update: %lu", buf, 0xCu);
  }

  v79 = [NSPredicate predicateWithFormat:@"rankingDictionary.isEligibleForTripSummarization == %@", &__kCFBooleanTrue];
  v10 = [v8 filteredArrayUsingPredicate:?];

  v11 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [v10 count];
    *buf = 134217984;
    v96 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Filtered input bundle count for trip by isEligibleForTripSummarization: %lu.", buf, 0xCu);
  }

  v78 = [NSPredicate predicateWithFormat:@"%K == %lu", @"interfaceType", 13];
  v13 = [v10 filteredArrayUsingPredicate:?];
  [NSSortDescriptor sortDescriptorWithKey:@"endDate" ascending:1];
  v14 = v81 = v10;
  v104 = v14;
  v15 = [NSArray arrayWithObjects:&v104 count:1];
  v16 = [v13 sortedArrayUsingDescriptors:v15];

  v17 = [NSPredicate predicateWithFormat:@"%K.%K <= %lu", @"place", @"placeType", 100];
  v18 = [v16 filteredArrayUsingPredicate:v17];
  v77 = v17;
  v19 = [NSCompoundPredicate notPredicateWithSubpredicate:v17];
  v76 = [v16 filteredArrayUsingPredicate:v19];

  v20 = v81;
  v21 = v18;

  v22 = [NSPredicate predicateWithFormat:@"%K == %lu AND %K != %lu", @"bundleSuperType", 1, @"bundleSubType", 105];
  v23 = [NSPredicate predicateWithFormat:@"%K == %lu AND NOT (%K IN %@)", @"bundleSuperType", 2, @"bundleSubType", &off_10036DBD8];
  v103[0] = v22;
  v103[1] = v23;
  v24 = [NSArray arrayWithObjects:v103 count:2];
  v25 = [NSCompoundPredicate orPredicateWithSubpredicates:v24];

  v75 = v25;
  v26 = [v81 filteredArrayUsingPredicate:v25];
  v27 = [NSSortDescriptor sortDescriptorWithKey:@"endDate" ascending:1];
  v102 = v27;
  v28 = [NSArray arrayWithObjects:&v102 count:1];
  v29 = [v26 sortedArrayUsingDescriptors:v28];

  if ([v29 count] && objc_msgSend(v21, "count"))
  {
    startDate = [intervalCopy startDate];
    v74 = v29;
    if (startDate)
    {
      startDate2 = startDate;
    }

    else
    {
      firstObject = [v29 firstObject];
      startDate2 = [firstObject startDate];

      if (!startDate2)
      {
        v37 = 0;
LABEL_14:
        v71 = v23;
        v39 = [[MOObjectZipper alloc] initWithObjects:v29 others:v21 comparator:&__block_literal_global_681];
          ;
        }

        v69 = v39;
        v70 = v37;
        v72 = v22;
        v40 = [[MOTripAnnotationManager alloc] initWithUniverse:selfCopy->fUniverse];
        v88 = 0u;
        v89 = 0u;
        v90 = 0u;
        v91 = 0u;
        v73 = v21;
        obj = v21;
        v41 = [obj countByEnumeratingWithState:&v88 objects:v101 count:16];
        if (v41)
        {
          v42 = v41;
          v85 = *v89;
          do
          {
            for (i = 0; i != v42; i = i + 1)
            {
              if (*v89 != v85)
              {
                objc_enumerationMutation(obj);
              }

              v44 = *(*(&v88 + 1) + 8 * i);
              v45 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
              if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
              {
                startDate3 = [v44 startDate];
                endDate = [v44 endDate];
                events = [v44 events];
                v49 = [events count];
                *buf = 138412802;
                v96 = startDate3;
                v97 = 2112;
                v98 = endDate;
                v99 = 2048;
                v100 = v49;
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "Update trip bundle between %@ and %@, events, %lu", buf, 0x20u);
              }

              subBundleIDs = [v44 subBundleIDs];
              v51 = [NSSet setWithArray:subBundleIDs];

              allObjects = [v51 allObjects];
              [v44 setSubBundleIDs:allObjects];

              events2 = [v44 events];
              v54 = [NSSet setWithArray:events2];

              allObjects2 = [v54 allObjects];
              [v44 setEvents:allObjects2];

              action = [v44 action];

              if (action)
              {
                v57 = v40;
                events3 = [v44 events];
                firstObject2 = [events3 firstObject];
                eventIdentifier = [firstObject2 eventIdentifier];
                action2 = [v44 action];
                [action2 setSourceEventIdentifier:eventIdentifier];

                v62 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
                if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
                {
                  action3 = [v44 action];
                  sourceEventIdentifier = [action3 sourceEventIdentifier];
                  *buf = 138412290;
                  v96 = sourceEventIdentifier;
                  _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_INFO, "associateEventBundles: setting container bundle action as %@ from updating event bundles", buf, 0xCu);
                }

                v40 = v57;
              }

              events4 = [v44 events];
              [(MOTripAnnotationManager *)v40 materializeTripBundle:v44 contextEvents:events4 updateWithFilteredEvents:1];
            }

            v42 = [obj countByEnumeratingWithState:&v88 objects:v101 count:16];
          }

          while (v42);
        }

        v35 = v76;
        v66 = [[MOObjectZipper alloc] initWithObjects:obj others:v76 comparator:&__block_literal_global_688];

        do
        {
          v86[0] = _NSConcreteStackBlock;
          v86[1] = 3221225472;
          v86[2] = __64__MOEventBundleManager_associateEventBundles_effectiveInterval___block_invoke_2_689;
          v86[3] = &unk_10033BD70;
          v67 = v40;
          v87 = v67;
          v68 = [(MOObjectZipper *)v66 nextObjectPairWithHandler:v86];
        }

        while ((v68 & 1) != 0);

        v20 = v81;
        v22 = v72;
        v21 = v73;
        v32 = v70;
        v23 = v71;
        v29 = v74;
        goto LABEL_32;
      }
    }

    [NSPredicate predicateWithFormat:@"%K < %@", @"startDate", startDate2];
    v92[0] = _NSConcreteStackBlock;
    v92[1] = 3221225472;
    v92[2] = __64__MOEventBundleManager_associateEventBundles_effectiveInterval___block_invoke;
    v93 = v92[3] = &unk_100335B80;
    v37 = startDate2;
    v94 = v37;
    v38 = v93;
    [v21 enumerateObjectsUsingBlock:v92];

    goto LABEL_14;
  }

  v32 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v33 = [v21 count];
    v34 = [v29 count];
    *buf = 134218240;
    v96 = v33;
    v97 = 2048;
    v98 = v34;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Trip bundle association: Either container or element bundle array is empty. trip bundle count: %lu, element bundle count: %lu", buf, 0x16u);
  }

  v35 = v76;
LABEL_32:
}

void __64__MOEventBundleManager_associateEventBundles_effectiveInterval___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 events];
  v5 = [v4 count];

  v6 = [v3 events];
  v7 = [v6 filteredArrayUsingPredicate:*(a1 + 32)];
  [v3 setEvents:v7];

  v8 = [v3 action];

  if (v8)
  {
    v9 = [v3 events];
    v10 = [v9 firstObject];
    v11 = [v10 eventIdentifier];
    v12 = [v3 action];
    [v12 setSourceEventIdentifier:v11];

    v13 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [v3 action];
      v15 = [v14 sourceEventIdentifier];
      *buf = 138412290;
      v29 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "associateEventBundles: setting container bundle action as %@ from first event after applying effectiveWindowPredicate", buf, 0xCu);
    }
  }

  v16 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = *(a1 + 40);
    v27 = [v3 events];
    v18 = [v27 count];
    v19 = [v3 events];
    v20 = [v19 firstObject];
    v21 = [v20 startDate];
    v22 = [v3 events];
    v23 = [v22 lastObject];
    v24 = [v23 startDate];
    v25 = v5;
    v26 = v24;
    *buf = 138413314;
    v29 = v17;
    v30 = 2048;
    v31 = v25;
    v32 = 2048;
    v33 = v18;
    v34 = 2112;
    v35 = v21;
    v36 = 2112;
    v37 = v24;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "associateEventBundles: event pruning, date, %@, before, %lu, after, %lu, first event, %@, last event, %@", buf, 0x34u);
  }
}

int64_t __64__MOEventBundleManager_associateEventBundles_effectiveInterval___block_invoke_678(id a1, MOEventBundle *a2, MOEventBundle *a3)
{
  v4 = a3;
  v5 = [(MOEventBundle *)a2 endDate];
  v6 = [(MOEventBundle *)v4 endDate];

  LODWORD(v4) = [v5 isBeforeDate:v6];
  if (v4)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

void __64__MOEventBundleManager_associateEventBundles_effectiveInterval___block_invoke_2(id a1, MOEventBundle *a2, MOEventBundle *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v50 = v4;
    v51 = 2112;
    v52 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "associateEventBundles: bundle, %@, container bundles, %@", buf, 0x16u);
  }

  v7 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [(MOEventBundle *)v4 startDate];
    v9 = [(MOEventBundle *)v4 endDate];
    v10 = [(MOEventBundle *)v5 startDate];
    v11 = [(MOEventBundle *)v5 endDate];
    *buf = 138413058;
    v50 = v8;
    v51 = 2112;
    v52 = v9;
    v53 = 2112;
    v54 = *&v10;
    v55 = 2112;
    v56 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "associateEventBundles: bundle, start, %@, end, %@, container bundles, start, %@, end, %@", buf, 0x2Au);
  }

  [MOSummarizationUtilities overlappingTimeIntervalBetween:v4 andOtherBundle:v5];
  if (v12 > 0.0)
  {
    v13 = v12;
    v14 = [(MOEventBundle *)v4 dateInterval];
    [v14 duration];
    if (v15 <= 0.0)
    {
LABEL_29:

      goto LABEL_30;
    }

    [v14 duration];
    v17 = v13 / v16;
    if (v17 <= 0.2)
    {
      v19 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
LABEL_28:

        goto LABEL_29;
      }

      v25 = [(MOEventBundle *)v5 suggestionID];
      v26 = [(MOEventBundle *)v4 suggestionID];
      *buf = 138412802;
      v50 = v25;
      v51 = 2112;
      v52 = v26;
      v53 = 2048;
      v54 = v17;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "associateEventBundles, partially overlappend bundle, container bundle, %@, child bundle, %@, ratio, %f", buf, 0x20u);

LABEL_27:
      goto LABEL_28;
    }

    v18 = [(MOEventBundle *)v4 suggestionID];
    v19 = [v18 UUIDString];

    v20 = [(MOEventBundle *)v5 subBundleIDs];

    if (v20)
    {
      v21 = [(MOEventBundle *)v5 subBundleIDs];
      v22 = [v21 containsObject:v19];

      if (v22)
      {
        goto LABEL_15;
      }

      v23 = [(MOEventBundle *)v5 subBundleIDs];
      v24 = [v23 arrayByAddingObject:v19];
      [(MOEventBundle *)v5 setSubBundleIDs:v24];
    }

    else
    {
      v48 = v19;
      v23 = [NSArray arrayWithObjects:&v48 count:1];
      [(MOEventBundle *)v5 setSubBundleIDs:v23];
    }

LABEL_15:
    v27 = [(MOEventBundle *)v4 place];
    [v27 setLocationMode:2];

    v28 = [(MOEventBundle *)v5 events];

    if (v28)
    {
      v29 = [(MOEventBundle *)v5 events];
      v30 = [(MOEventBundle *)v4 events];
      v31 = [v29 arrayByAddingObjectsFromArray:v30];

      v32 = [NSSet setWithArray:v31];
      v33 = [v32 allObjects];
      [(MOEventBundle *)v5 setEvents:v33];

      v34 = [(MOEventBundle *)v5 action];

      if (v34)
      {
        v35 = [(MOEventBundle *)v5 events];
        v36 = [v35 firstObject];
        v37 = [v36 eventIdentifier];
        v38 = [(MOEventBundle *)v5 action];
        [v38 setSourceEventIdentifier:v37];

        v39 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
        if (!os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
LABEL_23:

          goto LABEL_24;
        }

        v40 = [(MOEventBundle *)v5 action];
        v41 = [(MOEventBundle *)v40 sourceEventIdentifier];
        *buf = 138412290;
        v50 = v41;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "associateEventBundles: setting container bundle action as %@ from first event for overlapping ratio > 0.2 and container bundle had events originally", buf, 0xCu);

LABEL_22:
        goto LABEL_23;
      }
    }

    else
    {
      v42 = [(MOEventBundle *)v4 events];
      [(MOEventBundle *)v5 setEvents:v42];

      v43 = [(MOEventBundle *)v5 action];

      if (!v43)
      {
        goto LABEL_25;
      }

      v44 = [(MOEventBundle *)v5 events];
      v45 = [v44 firstObject];
      v46 = [v45 eventIdentifier];
      v47 = [(MOEventBundle *)v5 action];
      [v47 setSourceEventIdentifier:v46];

      v31 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v39 = [(MOEventBundle *)v5 action];
        v40 = [v39 sourceEventIdentifier];
        *buf = 138412290;
        v50 = v40;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "associateEventBundles: setting container bundle action as %@ from first event for overlapping ratio > 0.2 and container bundle had no events originally", buf, 0xCu);
        goto LABEL_22;
      }
    }

LABEL_24:

LABEL_25:
    v25 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v50 = v4;
      v51 = 2112;
      v52 = v5;
      v53 = 2048;
      v54 = v17;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "associateEventBundles: merge, bundle %@, container bundle, %@, ratio, %f", buf, 0x20u);
    }

    goto LABEL_27;
  }

LABEL_30:
}

int64_t __64__MOEventBundleManager_associateEventBundles_effectiveInterval___block_invoke_686(id a1, MOEventBundle *a2, MOEventBundle *a3)
{
  v4 = a3;
  v5 = [(MOEventBundle *)a2 endDate];
  v6 = [(MOEventBundle *)v4 endDate];

  LODWORD(v4) = [v5 isBeforeDate:v6];
  if (v4)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

void __64__MOEventBundleManager_associateEventBundles_effectiveInterval___block_invoke_2_689(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v82 = v5;
    v83 = 2112;
    v84 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "associateEventBundles: daily trip bundle, %@, container bundles, %@", buf, 0x16u);
  }

  v8 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v5 startDate];
    v10 = [v5 endDate];
    v11 = [v6 startDate];
    v12 = [v6 endDate];
    *buf = 138413058;
    v82 = v9;
    v83 = 2112;
    v84 = v10;
    v85 = 2112;
    v86 = v11;
    v87 = 2112;
    v88 = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "associateEventBundles: summary trip bundle, start, %@, end, %@, container bundles, start, %@, end, %@", buf, 0x2Au);
  }

  [MOSummarizationUtilities overlappingTimeIntervalBetween:v5 andOtherBundle:v6];
  if (v13 > 0.0)
  {
    v14 = [v5 suggestionID];
    v15 = [v14 UUIDString];

    v16 = [v6 subBundleIDs];

    if (v16)
    {
      v17 = [v6 subBundleIDs];
      v18 = [v17 containsObject:v15];

      if (v18)
      {
        goto LABEL_11;
      }

      v19 = [v6 subBundleIDs];
      v20 = [v19 arrayByAddingObject:v15];
      [v6 setSubBundleIDs:v20];
    }

    else
    {
      v96 = v15;
      v19 = [NSArray arrayWithObjects:&v96 count:1];
      [v6 setSubBundleIDs:v19];
    }

LABEL_11:
    v21 = [v6 resources];

    if (v21)
    {
      v22 = [v6 resources];
      v23 = [v5 resources];
      v24 = [v22 arrayByAddingObjectsFromArray:v23];

      v25 = [NSSet setWithArray:v24];
      v26 = [v25 allObjects];
      [v6 setResources:v26];
    }

    else
    {
      v24 = [v5 resources];
      [v6 setResources:v24];
    }

    v27 = *(a1 + 32);
    v28 = [v6 resources];
    [v27 _assignPriorityScoreForPhotoResources:v28];

    v29 = [v6 events];

    if (v29)
    {
      v30 = [v6 events];
      v31 = [v5 events];
      v32 = [v30 arrayByAddingObjectsFromArray:v31];

      v33 = [NSSet setWithArray:v32];
      v34 = [v33 allObjects];
      [v6 setEvents:v34];

      v35 = [v6 action];

      if (v35)
      {
        v36 = [v6 events];
        v37 = [v36 firstObject];
        v38 = [v37 eventIdentifier];
        v39 = [v6 action];
        [v39 setSourceEventIdentifier:v38];

        v40 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
        if (!os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
LABEL_22:

          goto LABEL_23;
        }

        v41 = [v6 action];
        v42 = [v41 sourceEventIdentifier];
        *buf = 138412290;
        v82 = v42;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "associateEventBundles: setting container bundle action as %@ from second round of association and container bundle had events orignally", buf, 0xCu);

LABEL_21:
        goto LABEL_22;
      }
    }

    else
    {
      v43 = [v5 events];
      [v6 setEvents:v43];

      v44 = [v6 action];

      if (!v44)
      {
LABEL_24:
        v49 = [v6 places];

        if (v49)
        {
          v50 = [v6 places];
          v51 = [v5 places];
          v52 = [v50 arrayByAddingObjectsFromArray:v51];

          v53 = [NSSet setWithArray:v52];
          v54 = [v53 allObjects];
        }

        else
        {
          v54 = [v5 places];
        }

        v55 = objc_opt_new();
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v56 = v54;
        v57 = [v56 countByEnumeratingWithState:&v77 objects:v95 count:16];
        if (v57)
        {
          v58 = v57;
          v59 = *v78;
          do
          {
            for (i = 0; i != v58; i = i + 1)
            {
              if (*v78 != v59)
              {
                objc_enumerationMutation(v56);
              }

              v61 = *(*(&v77 + 1) + 8 * i);
              if ([v61 placeType] <= 5)
              {
                [v55 addObject:v61];
              }
            }

            v58 = [v56 countByEnumeratingWithState:&v77 objects:v95 count:16];
          }

          while (v58);
        }

        [v6 setPlaces:v55];
        v62 = [v55 lastObject];
        v63 = [v62 location];
        v64 = [v6 place];
        [v64 setLocation:v63];

        goto LABEL_37;
      }

      v45 = [v6 events];
      v46 = [v45 firstObject];
      v47 = [v46 eventIdentifier];
      v48 = [v6 action];
      [v48 setSourceEventIdentifier:v47];

      v32 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v40 = [v6 action];
        v41 = [v40 sourceEventIdentifier];
        *buf = 138412290;
        v82 = v41;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "associateEventBundles: setting container bundle action as %@ from second round of association and container bundle had no events orignally", buf, 0xCu);
        goto LABEL_21;
      }
    }

LABEL_23:

    goto LABEL_24;
  }

LABEL_37:
  v65 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
  {
    v66 = [v5 startDate];
    v67 = [v5 endDate];
    v68 = [v6 startDate];
    v69 = [v6 endDate];
    v75 = [v6 subBundleIDs];
    v70 = [v75 count];
    [v6 subSuggestionIDs];
    v71 = v76 = v5;
    v72 = [v71 count];
    v73 = [v6 events];
    v74 = [v73 count];
    *buf = 138413826;
    v82 = v66;
    v83 = 2112;
    v84 = v67;
    v85 = 2112;
    v86 = v68;
    v87 = 2112;
    v88 = v69;
    v89 = 2048;
    v90 = v70;
    v91 = 2048;
    v92 = v72;
    v93 = 2048;
    v94 = v74;
    _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_INFO, "associateEventBundles: summary trip bundle, start, %@, end, %@, container bundles, start, %@, end, %@, container.subBundleIDs, %lu, container.subSuggstionIDs, %lu, container.events, %lu", buf, 0x48u);

    v5 = v76;
  }
}

+ (id)dateFormatterForKeyword
{
  if (dateFormatterForKeyword_onceToken != -1)
  {
    +[MOEventBundleManager dateFormatterForKeyword];
  }

  v3 = dateFormatterForKeyword_dateFormatter;

  return v3;
}

void __47__MOEventBundleManager_dateFormatterForKeyword__block_invoke(id a1)
{
  v1 = objc_opt_new();
  v2 = dateFormatterForKeyword_dateFormatter;
  dateFormatterForKeyword_dateFormatter = v1;

  v3 = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
  [dateFormatterForKeyword_dateFormatter setLocale:v3];

  [dateFormatterForKeyword_dateFormatter setDateFormat:@"yyyy-MM-dd"];
  v4 = [NSTimeZone timeZoneForSecondsFromGMT:0];
  [dateFormatterForKeyword_dateFormatter setTimeZone:v4];
}

- (id)keywordForEventBundle:(id)bundle
{
  bundleCopy = bundle;
  if ([bundleCopy bundleManagementPolicy] == 1)
  {
    v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lu", [bundleCopy interfaceType]);
  }

  else
  {
    v5 = +[MOEventBundleManager dateFormatterForKeyword];
    startDate = [bundleCopy startDate];
    v7 = [v5 stringFromDate:startDate];

    v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lu-%@", [bundleCopy interfaceType], v7);
  }

  return v4;
}

- (id)adjacentKeywordsForEventBundle:(id)bundle
{
  bundleCopy = bundle;
  if ([bundleCopy bundleManagementPolicy] == 1)
  {
    v5 = [(MOEventBundleManager *)self keywordForEventBundle:bundleCopy];
    v20 = v5;
    v6 = [NSArray arrayWithObjects:&v20 count:1];
  }

  else
  {
    v5 = +[MOEventBundleManager dateFormatterForKeyword];
    v7 = objc_opt_new();
    startDate = [bundleCopy startDate];
    v9 = [startDate dateByAddingTimeInterval:-86400.0];
    v10 = [v5 stringFromDate:v9];

    v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lu-%@", [bundleCopy interfaceType], v10);
    [v7 addObject:v11];

    startDate2 = [bundleCopy startDate];
    v13 = [v5 stringFromDate:startDate2];

    v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lu-%@", [bundleCopy interfaceType], v13);
    [v7 addObject:v14];

    startDate3 = [bundleCopy startDate];
    v16 = [startDate3 dateByAddingTimeInterval:86400.0];
    v17 = [v5 stringFromDate:v16];

    v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lu-%@", [bundleCopy interfaceType], v17);
    [v7 addObject:v18];

    v6 = [v7 copy];
  }

  return v6;
}

- (id)partitionedEventBundles:(id)bundles
{
  bundlesCopy = bundles;
  v5 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = bundlesCopy;
  v6 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        v11 = [(MOEventBundleManager *)self keywordForEventBundle:v10];
        v12 = [v5 objectForKey:v11];
        if (!v12)
        {
          v12 = objc_opt_new();
        }

        [v12 addObject:v10];
        [v5 setObject:v12 forKey:v11];
      }

      v7 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v7);
  }

  v13 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  allKeys = [v5 allKeys];
  v14 = [allKeys countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v28;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(allKeys);
        }

        v18 = *(*(&v27 + 1) + 8 * j);
        v19 = [v5 objectForKey:v18];
        v20 = [NSSortDescriptor sortDescriptorWithKey:@"startDate" ascending:0];
        v35 = v20;
        v21 = [NSArray arrayWithObjects:&v35 count:1];
        v22 = [v19 sortedArrayUsingDescriptors:v21];

        [v13 setObject:v22 forKey:v18];
      }

      v15 = [allKeys countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v15);
  }

  v23 = [v13 copy];

  return v23;
}

- (id)matchedEventBundleForEventBundle:(id)bundle otherEventBundles:(id)bundles
{
  bundleCopy = bundle;
  bundlesCopy = bundles;
  v8 = [(MOEventBundleManager *)self adjacentKeywordsForEventBundle:bundleCopy];
  v9 = objc_opt_new();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v10 = v8;
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

        v15 = [bundlesCopy objectForKey:*(*(&v40 + 1) + 8 * i)];
        [v9 addObjectsFromArray:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v12);
  }

  v31 = [NSSortDescriptor sortDescriptorWithKey:@"startDate" ascending:0];
  v46 = v31;
  v16 = [NSArray arrayWithObjects:&v46 count:1];
  v17 = [v9 sortedArrayUsingDescriptors:v16];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v37;
LABEL_10:
    v22 = 0;
    while (1)
    {
      if (*v37 != v21)
      {
        objc_enumerationMutation(v18);
      }

      v23 = *(*(&v36 + 1) + 8 * v22);
      if ([v23 filtered] & 1) == 0 && (objc_msgSend(bundleCopy, "isEqualToEventBundle:", v23))
      {
        goto LABEL_27;
      }

      if (v20 == ++v22)
      {
        v20 = [v18 countByEnumeratingWithState:&v36 objects:v45 count:16];
        if (v20)
        {
          goto LABEL_10;
        }

        break;
      }
    }
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v24 = v18;
  v25 = [v24 countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v33;
LABEL_19:
    v28 = 0;
    while (1)
    {
      if (*v33 != v27)
      {
        objc_enumerationMutation(v24);
      }

      v23 = *(*(&v32 + 1) + 8 * v28);
      if ([v23 filtered])
      {
        if ([bundleCopy isEqualToEventBundle:v23])
        {
          break;
        }
      }

      if (v26 == ++v28)
      {
        v26 = [v24 countByEnumeratingWithState:&v32 objects:v44 count:16];
        v29 = 0;
        if (v26)
        {
          goto LABEL_19;
        }

        goto LABEL_28;
      }
    }

LABEL_27:
    v29 = v23;
    goto LABEL_28;
  }

  v29 = 0;
LABEL_28:

  return v29;
}

- (void)submitMetricForEventBundleWithPromptMetrics:(id)metrics
{
  metricsCopy = metrics;
  [metricsCopy getAndSetAgeGender];
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Start submission of bundling CA metrics.", buf, 2u);
  }

  v11 = 0;
  [metricsCopy submitMetricsWithError:&v11];

  v5 = v11;
  v6 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      *buf = 138412290;
      v13 = v5;
      v8 = "Error was issued during metrics submission for MOPromptMetrics. Error: %@";
      v9 = v6;
      v10 = 12;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, v8, buf, v10);
    }
  }

  else if (v7)
  {
    *buf = 0;
    v8 = "Finished submission of bundling CA metrics.";
    v9 = v6;
    v10 = 2;
    goto LABEL_8;
  }
}

- (void)submitMOEventData:(id)data startDate:(id)date endDate:(id)endDate subDate:(id)subDate
{
  dataCopy = data;
  subDateCopy = subDate;
  v9 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v34 = [dataCopy count];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "We have %lu raw events to submit.", buf, 0xCu);
  }

  v25 = [[MOUserData alloc] initWithEventManager:self->_eventManager];
  [(MOUserData *)v25 submitUserDataWithCompletionHandler:&__block_literal_global_708];
  v10 = [NSSet setWithObjects:&off_10036A0C0, &off_10036A0D8, &off_10036A0F0, &off_10036A060, &off_10036A108, 0];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v11 = dataCopy;
  v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v28 + 1) + 8 * i);
        v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v16 provider]);
        v18 = [v10 containsObject:v17];

        if (v18)
        {
          v19 = [NSNumber numberWithInt:0];
          v20 = [[MOEventData alloc] initWithEvent:v16 islandID:v19 subDate:subDateCopy];
          v27 = 0;
          [(MOEventData *)v20 submitMetricsWithError:&v27];
          v21 = v27;
          if (v21)
          {
            v23 = v21;
            v24 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              [MOEventBundleManager submitMOEventData:v16 startDate:v23 endDate:v24 subDate:?];
            }

            v22 = v11;
            goto LABEL_18;
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v22 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Finished submission of raw events.", buf, 2u);
  }

LABEL_18:
}

void __68__MOEventBundleManager_submitMOEventData_startDate_endDate_subDate___block_invoke(id a1, NSError *a2, NSError *a3, NSError *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  if (v6)
  {
    v9 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __68__MOEventBundleManager_submitMOEventData_startDate_endDate_subDate___block_invoke_cold_1();
    }
  }

  if (v7)
  {
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __68__MOEventBundleManager_submitMOEventData_startDate_endDate_subDate___block_invoke_cold_2();
    }
  }

  if (v8)
  {
    v11 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __68__MOEventBundleManager_submitMOEventData_startDate_endDate_subDate___block_invoke_cold_3();
    }
  }
}

- (void)submitEventBundleInternalAnalytics:(id)analytics withSubmissionDate:(id)date withRefreshVariant:(unint64_t)variant
{
  analyticsCopy = analytics;
  dateCopy = date;
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v135 = [analyticsCopy count];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%lu bundles are passed to be submitted to CoreAnalytics.", buf, 0xCu);
  }

  v110 = +[NSCalendar currentCalendar];
  v9 = [v110 components:764 fromDate:dateCopy];
  year = [v9 year];
  month = [v9 month];
  v116 = [v9 day];
  hour = [v9 hour];
  v109 = v9;
  minute = [v9 minute];
  v120 = [MOMetric binsFromStart:&off_10036A030 toEnd:&off_10036E620 gap:&off_10036E6A0];
  configurationManager = [(MOEventBundleManager *)self configurationManager];
  getTrialExperimentIdentifiers = [configurationManager getTrialExperimentIdentifiers];

  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  obj = analyticsCopy;
  v122 = [obj countByEnumeratingWithState:&v127 objects:v133 count:16];
  if (v122)
  {
    v112 = *v128;
    v113 = getTrialExperimentIdentifiers;
    do
    {
      v12 = 0;
      do
      {
        if (*v128 != v112)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v127 + 1) + 8 * v12);
        context = objc_autoreleasePoolPush();
        v14 = objc_opt_new();
        v15 = [NSNumber numberWithInteger:year];
        [v14 setObject:v15 forKeyedSubscript:@"submissionTimeYear"];

        v16 = [NSNumber numberWithInteger:month];
        [v14 setObject:v16 forKeyedSubscript:@"submissionTimeMonth"];

        v17 = [NSNumber numberWithInteger:v116];
        [v14 setObject:v17 forKeyedSubscript:@"submissionTimeDay"];

        v18 = [NSNumber numberWithInteger:hour];
        [v14 setObject:v18 forKeyedSubscript:@"submissionTimeHour"];

        v19 = [NSNumber numberWithInteger:minute];
        [v14 setObject:v19 forKeyedSubscript:@"submissionTimeMinute"];

        v20 = [NSNumber numberWithUnsignedInteger:variant];
        [v14 setObject:v20 forKeyedSubscript:@"refreshVariant"];

        if (getTrialExperimentIdentifiers)
        {
          experimentId = [getTrialExperimentIdentifiers experimentId];
          [v14 setObject:experimentId forKeyedSubscript:@"trialExperimentId"];

          v22 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [getTrialExperimentIdentifiers deploymentId]);
          stringValue = [v22 stringValue];
          [v14 setObject:stringValue forKeyedSubscript:@"trialDeploymentId"];

          treatmentId = [getTrialExperimentIdentifiers treatmentId];
          [v14 setObject:treatmentId forKeyedSubscript:@"trialTreatmentId"];
        }

        bundleIdentifier = [v13 bundleIdentifier];
        v26 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [bundleIdentifier hash]);
        [v14 setObject:v26 forKeyedSubscript:@"bundleId"];

        suggestionID = [v13 suggestionID];
        v28 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [suggestionID hash]);
        [v14 setObject:v28 forKeyedSubscript:@"suggestionId"];

        v29 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v13 interfaceType]);
        [v14 setObject:v29 forKeyedSubscript:@"interfaceType"];

        v30 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v13 source]);
        [v14 setObject:v30 forKeyedSubscript:@"bundleSource"];

        v31 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v13 filtered]);
        [v14 setObject:v31 forKeyedSubscript:@"isFiltered"];

        v32 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v13 bundleSubType]);
        [v14 setObject:v32 forKeyedSubscript:@"bundleSubType"];

        v33 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v13 bundleSuperType]);
        [v14 setObject:v33 forKeyedSubscript:@"bundleSuperType"];

        startDate = [v13 startDate];
        [dateCopy timeIntervalSinceDate:startDate];
        v35 = [NSNumber numberWithDouble:?];
        v36 = [MOMetric binForNumber:v35 bins:v120];
        [v14 setObject:v36 forKeyedSubscript:@"startTimeBucketed"];

        endDate = [v13 endDate];
        [dateCopy timeIntervalSinceDate:endDate];
        v38 = [NSNumber numberWithDouble:?];
        v39 = [MOMetric binForNumber:v38 bins:v120];
        [v14 setObject:v39 forKeyedSubscript:@"endTimeBucketed"];

        events = [v13 events];
        v41 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [events count]);
        [v14 setObject:v41 forKeyedSubscript:@"numTotalEvents"];

        events2 = [v13 events];
        v43 = [events2 valueForKeyPath:@"@distinctUnionOfObjects.category"];

        v125 = v43;
        v44 = [[NSCountedSet alloc] initWithArray:v43];
        v45 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v44 countForObject:&off_10036A000]);
        [v14 setObject:v45 forKeyedSubscript:@"numUnknownEvents"];

        v46 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v44 countForObject:&off_10036A0C0]);
        [v14 setObject:v46 forKeyedSubscript:@"numVisitEvents"];

        v47 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v44 countForObject:&off_10036A0D8]);
        [v14 setObject:v47 forKeyedSubscript:@"numWorkoutEvents"];

        v48 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v44 countForObject:&off_10036A0F0]);
        [v14 setObject:v48 forKeyedSubscript:@"numMediaOnRepeatEvents"];

        v49 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v44 countForObject:&off_10036A060]);
        [v14 setObject:v49 forKeyedSubscript:@"numLeisureMediaEvents"];

        v50 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v44 countForObject:&off_10036A078]);
        [v14 setObject:v50 forKeyedSubscript:@"numPhotoMomentEvents"];

        v51 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v44 countForObject:&off_10036A120]);
        [v14 setObject:v51 forKeyedSubscript:@"numMediaPlaySessionEvents"];

        v52 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v44 countForObject:&off_10036A138]);
        [v14 setObject:v52 forKeyedSubscript:@"numTopicEvents"];

        v53 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v44 countForObject:&off_10036A150]);
        [v14 setObject:v53 forKeyedSubscript:@"numTravelEvents"];

        v54 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v44 countForObject:&off_10036A108]);
        [v14 setObject:v54 forKeyedSubscript:@"numSharedWithYouEvents"];

        v55 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v44 countForObject:&off_10036A168]);
        [v14 setObject:v55 forKeyedSubscript:@"numSignificantContactEvents"];

        v56 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v44 countForObject:&off_10036A018]);
        [v14 setObject:v56 forKeyedSubscript:@"numStructuredEvents"];

        v57 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v44 countForObject:&off_10036A048]);
        [v14 setObject:v57 forKeyedSubscript:@"numNLEvents"];

        v58 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v44 countForObject:&off_10036A180]);
        [v14 setObject:v58 forKeyedSubscript:@"numMindfulSessionEvents"];

        v59 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v44 countForObject:&off_10036A198]);
        [v14 setObject:v59 forKeyedSubscript:@"numSharedPhotoEvents"];

        events3 = [v13 events];
        v61 = [events3 valueForKeyPath:@"@distinctUnionOfObjects.provider"];

        v124 = v61;
        v123 = [[NSCountedSet alloc] initWithArray:v61];
        v62 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v123 countForObject:&off_10036A078]);
        [v14 setObject:v62 forKeyedSubscript:@"numPatternEvents"];

        allResources = [v13 allResources];
        v64 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [allResources count]);
        [v14 setObject:v64 forKeyedSubscript:@"numTotalResources"];

        v65 = [allResources valueForKeyPath:@"@distinctUnionOfObjects.type"];
        v66 = [[NSCountedSet alloc] initWithArray:v65];
        v67 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v66 countForObject:&off_10036A000]);
        [v14 setObject:v67 forKeyedSubscript:@"numUnknownResourceTypes"];

        v68 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v66 countForObject:&off_10036A0C0]);
        [v14 setObject:v68 forKeyedSubscript:@"numValueResourceTypes"];

        v69 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v66 countForObject:&off_10036A0D8]);
        [v14 setObject:v69 forKeyedSubscript:@"numPhotoAssetResourceTypes"];

        v70 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v66 countForObject:&off_10036A0F0]);
        [v14 setObject:v70 forKeyedSubscript:@"numMediaResourceTypes"];

        v71 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v66 countForObject:&off_10036A060]);
        [v14 setObject:v71 forKeyedSubscript:@"numWebLinkResourceTypes"];

        v72 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v66 countForObject:&off_10036A078]);
        [v14 setObject:v72 forKeyedSubscript:@"numInferenceTagResourceTypes"];

        v73 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v66 countForObject:&off_10036A120]);
        [v14 setObject:v73 forKeyedSubscript:@"numMapItemResourceTypes"];

        v74 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v66 countForObject:&off_10036A138]);
        [v14 setObject:v74 forKeyedSubscript:@"numAppResourceTypes"];

        v75 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v66 countForObject:&off_10036A150]);
        [v14 setObject:v75 forKeyedSubscript:@"numTopicResourceTypes"];

        v76 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v66 countForObject:&off_10036A108]);
        [v14 setObject:v76 forKeyedSubscript:@"numEvergreenResourceTypes"];

        v77 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v66 countForObject:&off_10036A168]);
        [v14 setObject:v77 forKeyedSubscript:@"numWorkoutResourceTypes"];

        v78 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v66 countForObject:&off_10036A018]);
        [v14 setObject:v78 forKeyedSubscript:@"numPersonResourceTypes"];

        v79 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v66 countForObject:&off_10036A048]);
        [v14 setObject:v79 forKeyedSubscript:@"numPlaceResourceTypes"];

        v80 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v66 countForObject:&off_10036A180]);
        [v14 setObject:v80 forKeyedSubscript:@"numMotionActivityResourceTypes"];

        v81 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v66 countForObject:&off_10036A198]);
        [v14 setObject:v81 forKeyedSubscript:@"numWeatherResourceTypes"];

        if ([v13 interfaceType] == 2 || objc_msgSend(v13, "interfaceType") == 1 || objc_msgSend(v13, "interfaceType") == 7 || objc_msgSend(v13, "interfaceType") == 10)
        {
          v82 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
          {
            photoSource = [v13 photoSource];
            *buf = 134217984;
            v135 = photoSource;
            _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_INFO, "photoSource set in ca,%lu", buf, 0xCu);
          }

          v84 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v13 photoSource]);
          [v14 setObject:v84 forKeyedSubscript:@"photoSource"];
        }

        action = [v13 action];
        v86 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [action actionType]);
        [v14 setObject:v86 forKeyedSubscript:@"actionType"];

        persons = [v13 persons];
        v88 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [persons count]);
        [v14 setObject:v88 forKeyedSubscript:@"numPersons"];

        place = [v13 place];
        v90 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [place placeUserType] != 0);
        [v14 setObject:v90 forKeyedSubscript:@"isPlaceUserTypeKnown"];

        place2 = [v13 place];
        v92 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [place2 placeType] != 0);
        [v14 setObject:v92 forKeyedSubscript:@"isPlaceTypeKnown"];

        place3 = [v13 place];
        v94 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [place3 proposition] != 0);
        [v14 setObject:v94 forKeyedSubscript:@"isPlacePropositionSet"];

        time = [v13 time];
        v96 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [time timeTag] != 0);
        [v14 setObject:v96 forKeyedSubscript:@"isTimeTagSet"];

        metaDataForRank = [v13 metaDataForRank];
        v98 = [metaDataForRank objectForKey:@"SensitiveLocation"];
        [v14 setObject:v98 forKeyedSubscript:@"qualitySensitiveLocationType"];

        metaDataForRank2 = [v13 metaDataForRank];
        v100 = [metaDataForRank2 objectForKey:@"UninterestingLocation"];
        [v14 setObject:v100 forKeyedSubscript:@"qualityUninterestingLocationType"];

        metaDataForRank3 = [v13 metaDataForRank];
        v102 = [metaDataForRank3 objectForKey:@"InterestingLocation"];
        [v14 setObject:v102 forKeyedSubscript:@"qualityInterestingLocationType"];

        metaDataForRank4 = [v13 metaDataForRank];
        v104 = [metaDataForRank4 objectForKey:@"BusinessContact"];
        [v14 setObject:v104 forKeyedSubscript:@"qualityContactType"];

        if (v14)
        {
          v105 = v14;
          AnalyticsSendEventLazy();
          v106 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
          if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v135 = v105;
            _os_log_debug_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEBUG, "Submitted coreAnalytics message: %@", buf, 0xCu);
          }

          v107 = v105;
        }

        else
        {
          v107 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
          if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
          {
            [MOEventBundleManager submitEventBundleInternalAnalytics:v131 withSubmissionDate:&v132 withRefreshVariant:v107];
          }
        }

        objc_autoreleasePoolPop(context);
        v12 = v12 + 1;
        getTrialExperimentIdentifiers = v113;
      }

      while (v122 != v12);
      v122 = [obj countByEnumeratingWithState:&v127 objects:v133 count:16];
    }

    while (v122);
  }

  v108 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_INFO, "Completed Bundle CoreAnalytics submission.", buf, 2u);
  }
}

- (void)saveEventBundles:(id)bundles withStartDate:(id)date endDate:(id)endDate handler:(id)handler
{
  bundlesCopy = bundles;
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  v14 = objc_opt_new();
  v15 = [[NSDateInterval alloc] initWithStartDate:dateCopy endDate:endDateCopy];
  v16 = [[MOEventBundleFetchOptions alloc] initWithDateInterval:v15 ascending:1 limit:0 filterBundle:0];
  eventBundleStore = [(MOEventBundleManager *)self eventBundleStore];
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = __71__MOEventBundleManager_saveEventBundles_withStartDate_endDate_handler___block_invoke;
  v51[3] = &unk_10033BDF8;
  v18 = bundlesCopy;
  v52 = v18;
  v19 = v14;
  v53 = v19;
  [eventBundleStore fetchEventBundleWithOptions:v16 CompletionHandler:v51];

  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__24;
  v49 = __Block_byref_object_dispose__24;
  v50 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__24;
  v43 = __Block_byref_object_dispose__24;
  v44 = objc_opt_new();
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__24;
  v37 = __Block_byref_object_dispose__24;
  v38 = 0;
  eventBundleStore = self->_eventBundleStore;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = __71__MOEventBundleManager_saveEventBundles_withStartDate_endDate_handler___block_invoke_744;
  v29[3] = &unk_10033BE20;
  v31 = &v45;
  v32 = &v39;
  v21 = v18;
  v30 = v21;
  [(MOEventBundleStore *)eventBundleStore storeEventBundles:v21 CompletionHandler:v29];
  v22 = self->_eventBundleStore;
  v23 = [v19 copy];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = __71__MOEventBundleManager_saveEventBundles_withStartDate_endDate_handler___block_invoke_745;
  v26[3] = &unk_10033BE48;
  v28 = &v33;
  v24 = v19;
  v27 = v24;
  [(MOEventBundleStore *)v22 removeEventBundles:v23 CompletionHandler:v26];

  if (handlerCopy)
  {
    v25 = v46[5];
    if (v25)
    {
      handlerCopy[2](handlerCopy, v25, v40[5]);
    }

    else
    {
      handlerCopy[2](handlerCopy, v34[5], v40[5]);
    }
  }

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  _Block_object_dispose(&v45, 8);
}

void __71__MOEventBundleManager_saveEventBundles_withStartDate_endDate_handler___block_invoke(uint64_t a1, void *a2)
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = a2;
  v14 = [obj countByEnumeratingWithState:&v20 objects:v29 count:16];
  if (v14)
  {
    v13 = *v21;
    do
    {
      v3 = 0;
      do
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = v3;
        v4 = *(*(&v20 + 1) + 8 * v3);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v5 = *(a1 + 32);
        v6 = [v5 countByEnumeratingWithState:&v16 objects:v28 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v17;
          do
          {
            for (i = 0; i != v7; i = i + 1)
            {
              if (*v17 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v16 + 1) + 8 * i);
              if ([v4 shareEvents:v10])
              {
                v11 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
                if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412546;
                  v25 = v4;
                  v26 = 2112;
                  v27 = v10;
                  _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "found old event bundle which share events with new event bundle, old bundle, %@, new bundle, %@", buf, 0x16u);
                }

                if ([v4 interfaceType] != 13)
                {
                  [*(a1 + 40) addObject:v4];
                }
              }
            }

            v7 = [v5 countByEnumeratingWithState:&v16 objects:v28 count:16];
          }

          while (v7);
        }

        v3 = v15 + 1;
      }

      while ((v15 + 1) != v14);
      v14 = [obj countByEnumeratingWithState:&v20 objects:v29 count:16];
    }

    while (v14);
  }
}

void __71__MOEventBundleManager_saveEventBundles_withStartDate_endDate_handler___block_invoke_744(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __71__MOEventBundleManager_saveEventBundles_withStartDate_endDate_handler___block_invoke_744_cold_1();
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v10 = [v7 mutableCopy];
    v11 = *(*(a1 + 48) + 8);
    v9 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = [*(a1 + 32) count];
    v13 = 134217984;
    v14 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "saved %lu new event bundles from bundling process", &v13, 0xCu);
  }
}

void __71__MOEventBundleManager_saveEventBundles_withStartDate_endDate_handler___block_invoke_745(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __71__MOEventBundleManager_saveEventBundles_withStartDate_endDate_handler___block_invoke_745_cold_1();
    }

    v6 = *(*(a1 + 40) + 8);
    v7 = v3;
    v5 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = [*(a1 + 32) count];
    v9 = 134217984;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "removed %lu old event bundles from bundling process", &v9, 0xCu);
  }
}

- (id)getUnfilteredEventBundleFrom:(id)from with:(id)with
{
  withCopy = with;
  fromCopy = from;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __58__MOEventBundleManager_getUnfilteredEventBundleFrom_with___block_invoke;
  v12[3] = &unk_10033BE70;
  v13 = withCopy;
  v7 = objc_opt_new();
  v14 = v7;
  v8 = withCopy;
  [fromCopy enumerateKeysAndObjectsUsingBlock:v12];

  v9 = v14;
  v10 = v7;

  return v7;
}

void __58__MOEventBundleManager_getUnfilteredEventBundleFrom_with___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [[MOEventBundle alloc] initWithEventSet:v6 filtered:0];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [*(a1 + 32) allValues];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v9)
  {

LABEL_11:
    [*(a1 + 40) setObject:v7 forKey:v5];
    goto LABEL_12;
  }

  v10 = v9;
  v11 = 0;
  v12 = *v15;
  do
  {
    for (i = 0; i != v10; i = i + 1)
    {
      if (*v15 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v11 |= [(MOEventBundle *)v7 containTheSameEventSet:*(*(&v14 + 1) + 8 * i)];
    }

    v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  }

  while (v10);

  if ((v11 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
}

- (void)saveEventBundles:(id)bundles handler:(id)handler
{
  handlerCopy = handler;
  eventBundleStore = self->_eventBundleStore;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __49__MOEventBundleManager_saveEventBundles_handler___block_invoke;
  v9[3] = &unk_100336198;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(MOEventBundleStore *)eventBundleStore storeEventBundles:bundles CompletionHandler:v9];
}

void __49__MOEventBundleManager_saveEventBundles_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __71__MOEventBundleManager_saveEventBundles_withStartDate_endDate_handler___block_invoke_744_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "save event bundles succeed", v10, 2u);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v6);
  }
}

- (void)saveEventBundleDictionary:(id)dictionary
{
  allValues = [dictionary allValues];
  [(MOEventBundleStore *)self->_eventBundleStore storeEventBundles:allValues CompletionHandler:&__block_literal_global_748];
}

void __50__MOEventBundleManager_saveEventBundleDictionary___block_invoke(id a1, NSError *a2, NSDictionary *a3)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __71__MOEventBundleManager_saveEventBundles_withStartDate_endDate_handler___block_invoke_744_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "save event bundles succeed", v6, 2u);
  }
}

- (void)fetchRehydratedEventBundlesWithOptions:(id)options CompletionHandler:(id)handler
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __81__MOEventBundleManager_fetchRehydratedEventBundlesWithOptions_CompletionHandler___block_invoke;
  v8[3] = &unk_10033BEB8;
  optionsCopy = options;
  selfCopy = self;
  handlerCopy = handler;
  v6 = handlerCopy;
  v7 = optionsCopy;
  [(MOEventBundleManager *)self fetchEventBundlesWithOptions:v7 CompletionHandler:v8];
}

void __81__MOEventBundleManager_fetchRehydratedEventBundlesWithOptions_CompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 32);
    *buf = 138412546;
    v17 = v11;
    v18 = 2048;
    v19 = [v7 count];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "fetchRehydratedEventBundlesWithOptions, options, %@, bundles, %lu", buf, 0x16u);
  }

  if ([v7 count])
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __81__MOEventBundleManager_fetchRehydratedEventBundlesWithOptions_CompletionHandler___block_invoke_749;
    v13[3] = &unk_100337850;
    v12 = *(a1 + 40);
    v15 = *(a1 + 48);
    v14 = v9;
    [v12 _rehydrateEventBundles:v7 withHandler:v13];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)fetchEventBundlesWithOptions:(id)options CompletionHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerFetchEventBundlesWrapper", "", buf, 2u);
  }

  v9 = [[MOPerformanceMeasurement alloc] initWithName:@"FetchEventBundlesWrapper" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v9 startSession];
  eventBundleStore = [(MOEventBundleManager *)self eventBundleStore];
  persistenceManager = [eventBundleStore persistenceManager];
  availability = [persistenceManager availability];

  v13 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
  v14 = v13;
  if (availability == 2)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "fetch event bundles since datastore is available", buf, 2u);
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = __71__MOEventBundleManager_fetchEventBundlesWithOptions_CompletionHandler___block_invoke;
    v19[3] = &unk_10033BEE0;
    v20 = v9;
    v21 = handlerCopy;
    [(MOEventBundleManager *)self _fetchEventBundlesWithOptions:optionsCopy CompletionHandler:v19];

    v15 = v20;
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleManager fetchEventBundlesWithOptions:CompletionHandler:];
    }

    v25 = NSLocalizedDescriptionKey;
    v26 = @"database is not available";
    v16 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v15 = [NSError errorWithDomain:@"MOErrorDomain" code:16 userInfo:v16];

    v17 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v17))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerFetchEventBundlesWrapper", "", buf, 2u);
    }

    [(MOPerformanceMeasurement *)v9 endSession];
    v23 = @"stateDatabaseAvailable";
    v24 = &__kCFBooleanFalse;
    v18 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    (*(handlerCopy + 2))(handlerCopy, &__NSArray0__struct, v15, v18);
  }
}

void __71__MOEventBundleManager_fetchEventBundlesWithOptions_CompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(NSMutableDictionary);
  [v7 setObject:&__kCFBooleanTrue forKey:@"stateDatabaseAvailable"];
  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 count]);
  [v7 setObject:v8 forKey:@"resultNumberOfBundleEvents"];

  v9 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v9))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerFetchEventBundlesWrapper", "", v10, 2u);
  }

  [*(a1 + 32) endSession];
  (*(*(a1 + 40) + 16))();
}

- (void)_fetchEventBundlesWithOptions:(id)options CompletionHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__24;
  v24[4] = __Block_byref_object_dispose__24;
  limit = [optionsCopy limit];
  identifiers = [optionsCopy identifiers];
  if (identifiers)
  {
    v9 = optionsCopy;
  }

  else
  {
    v10 = [MOEventBundleFetchOptions alloc];
    categories = [optionsCopy categories];
    dateInterval = [optionsCopy dateInterval];
    v9 = -[MOEventBundleFetchOptions initWithAllowedCategories:dateInterval:ascending:limit:includeDeletedBundles:skipRanking:interfaceType:](v10, "initWithAllowedCategories:dateInterval:ascending:limit:includeDeletedBundles:skipRanking:interfaceType:", categories, dateInterval, [optionsCopy ascending], 0, objc_msgSend(optionsCopy, "includeDeletedBundles"), objc_msgSend(optionsCopy, "skipRanking"), objc_msgSend(optionsCopy, "interfaceType"));
  }

  v13 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerFetchEventBundlesFetch", "", buf, 2u);
  }

  v14 = [[MOPerformanceMeasurement alloc] initWithName:@"FetchEventBundlesFetch" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v14 startSession];
  v15 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v27 = v9;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "fetched event bundles options, %@", buf, 0xCu);
  }

  eventBundleStore = self->_eventBundleStore;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = __72__MOEventBundleManager__fetchEventBundlesWithOptions_CompletionHandler___block_invoke;
  v19[3] = &unk_10033BF30;
  v17 = v14;
  v20 = v17;
  selfCopy = self;
  v18 = handlerCopy;
  v22 = v18;
  v23 = v24;
  [(MOEventBundleStore *)eventBundleStore fetchEventBundleWithOptions:v9 CompletionHandler:v19];

  _Block_object_dispose(v24, 8);
}

void __72__MOEventBundleManager__fetchEventBundlesWithOptions_CompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerFetchEventBundlesFetch", "", buf, 2u);
  }

  [*(a1 + 32) endSession];
  v8 = [*(a1 + 40) queue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __72__MOEventBundleManager__fetchEventBundlesWithOptions_CompletionHandler___block_invoke_759;
  v12[3] = &unk_10033BF08;
  v13 = v6;
  v9 = *(a1 + 48);
  v14 = v5;
  v15 = v9;
  v16 = *(a1 + 56);
  v10 = v5;
  v11 = v6;
  dispatch_async(v8, v12);
}

void __72__MOEventBundleManager__fetchEventBundlesWithOptions_CompletionHandler___block_invoke_759(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __72__MOEventBundleManager__fetchEventBundlesWithOptions_CompletionHandler___block_invoke_759_cold_1(v2);
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      (*(v6 + 16))(v6, &__NSArray0__struct, *v2);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 40) count];
      v16 = 134217984;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "fetched event bundles count, %lu", &v16, 0xCu);
    }

    v8 = *(*(*(a1 + 56) + 8) + 40);
    v9 = *(a1 + 40);
    if (v8)
    {
      v10 = [v8 integerValue];
      v11 = [*(a1 + 40) count];
      if (v10 >= v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = v10;
      }

      v13 = [v9 subarrayWithRange:{0, v12}];
    }

    else
    {
      v13 = v9;
    }

    v14 = v13;
    v15 = *(a1 + 32);
    (*(*(a1 + 48) + 16))();
  }
}

- (void)fetchEventBundlesWithPredicate:(id)predicate completionHandler:(id)handler
{
  predicateCopy = predicate;
  handlerCopy = handler;
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerFetchEventBundlesWrapper", "", buf, 2u);
  }

  v9 = [[MOPerformanceMeasurement alloc] initWithName:@"FetchEventBundlesWrapper" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v9 startSession];
  eventBundleStore = [(MOEventBundleManager *)self eventBundleStore];
  persistenceManager = [eventBundleStore persistenceManager];
  availability = [persistenceManager availability];

  v13 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
  v14 = v13;
  if (availability == 2)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "fetch event bundles since datastore is available", buf, 2u);
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = __73__MOEventBundleManager_fetchEventBundlesWithPredicate_completionHandler___block_invoke;
    v19[3] = &unk_10033BEE0;
    v20 = v9;
    v21 = handlerCopy;
    [(MOEventBundleManager *)self _fetchEventBundlesWithPredicate:predicateCopy completionHandler:v19];

    v15 = v20;
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleManager fetchEventBundlesWithOptions:CompletionHandler:];
    }

    v25 = NSLocalizedDescriptionKey;
    v26 = @"database is not available";
    v16 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v15 = [NSError errorWithDomain:@"MOErrorDomain" code:16 userInfo:v16];

    v17 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v17))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerFetchEventBundlesWrapper", "", buf, 2u);
    }

    [(MOPerformanceMeasurement *)v9 endSession];
    v23 = @"stateDatabaseAvailable";
    v24 = &__kCFBooleanFalse;
    v18 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    (*(handlerCopy + 2))(handlerCopy, &__NSArray0__struct, v15, v18);
  }
}

void __73__MOEventBundleManager_fetchEventBundlesWithPredicate_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(NSMutableDictionary);
  [v7 setObject:&__kCFBooleanTrue forKey:@"stateDatabaseAvailable"];
  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 count]);
  [v7 setObject:v8 forKey:@"resultNumberOfBundleEvents"];

  v9 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v9))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerFetchEventBundlesWrapper", "", v10, 2u);
  }

  [*(a1 + 32) endSession];
  (*(*(a1 + 40) + 16))();
}

- (void)_fetchEventBundlesWithPredicate:(id)predicate completionHandler:(id)handler
{
  handlerCopy = handler;
  predicateCopy = predicate;
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerFetchEventBundlesFetch", "", buf, 2u);
  }

  v9 = [[MOPerformanceMeasurement alloc] initWithName:@"FetchEventBundlesFetch" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v9 startSession];
  eventBundleStore = self->_eventBundleStore;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __74__MOEventBundleManager__fetchEventBundlesWithPredicate_completionHandler___block_invoke;
  v13[3] = &unk_1003377E0;
  v14 = v9;
  selfCopy = self;
  v16 = handlerCopy;
  v11 = handlerCopy;
  v12 = v9;
  [(MOEventBundleStore *)eventBundleStore fetchEventBundlesWithPredicate:predicateCopy completionHandler:v13];
}

void __74__MOEventBundleManager__fetchEventBundlesWithPredicate_completionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerFetchEventBundlesFetch", "", buf, 2u);
  }

  [a1[4] endSession];
  v8 = [a1[5] queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __74__MOEventBundleManager__fetchEventBundlesWithPredicate_completionHandler___block_invoke_760;
  block[3] = &unk_10033BF58;
  v13 = v6;
  v9 = a1[6];
  v14 = v5;
  v15 = v9;
  v10 = v5;
  v11 = v6;
  dispatch_async(v8, block);
}

uint64_t __74__MOEventBundleManager__fetchEventBundlesWithPredicate_completionHandler___block_invoke_760(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  v5 = v4;
  if (!v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v9 = [*(a1 + 40) count];
      v12 = 134217984;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "fetched event bundles count, %lu", &v12, 0xCu);
    }

    v10 = *(a1 + 40);
    v11 = *(a1 + 32);
    v8 = *(*(a1 + 48) + 16);
    return v8();
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __72__MOEventBundleManager__fetchEventBundlesWithOptions_CompletionHandler___block_invoke_759_cold_1(v2);
  }

  result = *(a1 + 48);
  if (result)
  {
    v7 = *v2;
    v8 = *(result + 16);
    return v8();
  }

  return result;
}

- (void)_rehydrateEventBundles:(id)bundles withHandler:(id)handler
{
  bundlesCopy = bundles;
  handlerCopy = handler;
  v33 = objc_opt_new();
  v31 = [bundlesCopy mutableCopy];
  v6 = objc_opt_new();
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = bundlesCopy;
  v7 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v48;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v48 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v47 + 1) + 8 * i);
        v12 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          events = [v11 events];
          v21 = [events count];
          *buf = 134218242;
          v53 = v21;
          v54 = 2112;
          v55 = v11;
          _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "_rehydrateEventBundles, bundle.events, %lu, bundle, %@", buf, 0x16u);
        }

        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        events2 = [v11 events];
        v14 = [events2 countByEnumeratingWithState:&v43 objects:v51 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v44;
          do
          {
            for (j = 0; j != v15; j = j + 1)
            {
              if (*v44 != v16)
              {
                objc_enumerationMutation(events2);
              }

              v18 = *(*(&v43 + 1) + 8 * j);
              eventIdentifier = [v18 eventIdentifier];
              [v6 setObject:v18 forKey:eventIdentifier];
            }

            v15 = [events2 countByEnumeratingWithState:&v43 objects:v51 count:16];
          }

          while (v15);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
    }

    while (v8);
  }

  allValues = [v6 allValues];
  v23 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v23))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerFetchEventBundlesRehydrateEvents", "", buf, 2u);
  }

  v24 = [[MOPerformanceMeasurement alloc] initWithName:@"FetchEventBundlesRehydrateEvents" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v24 startSession];
  eventManager = [(MOEventBundleManager *)self eventManager];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = __59__MOEventBundleManager__rehydrateEventBundles_withHandler___block_invoke;
  v36[3] = &unk_10033BFA8;
  v37 = v24;
  selfCopy = self;
  v39 = obj;
  v40 = v33;
  v41 = v31;
  v42 = handlerCopy;
  v26 = handlerCopy;
  v27 = v31;
  v28 = v33;
  v29 = obj;
  v30 = v24;
  [eventManager rehydrateEvents:allValues withHandler:v36];
}

void __59__MOEventBundleManager__rehydrateEventBundles_withHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerFetchEventBundlesRehydrateEvents", "", buf, 2u);
  }

  [*(a1 + 32) endSession];
  v8 = [*(a1 + 40) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __59__MOEventBundleManager__rehydrateEventBundles_withHandler___block_invoke_764;
  block[3] = &unk_10033BF80;
  v9 = *(a1 + 48);
  block[4] = *(a1 + 40);
  v14 = v9;
  v15 = v5;
  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  v10 = *(a1 + 72);
  v18 = v6;
  v19 = v10;
  v11 = v6;
  v12 = v5;
  dispatch_async(v8, block);
}

void __59__MOEventBundleManager__rehydrateEventBundles_withHandler___block_invoke_764(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerFetchEventBundlesRehydrateEventsPostProcessing", "", buf, 2u);
  }

  v43 = [[MOPerformanceMeasurement alloc] initWithName:@"FetchEventBundlesRehydrateEventsPostProcessing" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v43 startSession];
  v3 = [*(a1 + 32) configurationManager];

  if (v3)
  {
    v4 = [*(a1 + 32) configurationManager];
    v5 = [v4 getBoolSettingForKey:@"EventBundleManagerOverrideEnableLifeEvent" withFallback:1];
  }

  else
  {
    v5 = 1;
  }

  v6 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __59__MOEventBundleManager__rehydrateEventBundles_withHandler___block_invoke_764_cold_1();
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v7 = *(a1 + 40);
  v8 = [v7 countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = &MOLogFacilityEventBundleManager;
    v11 = *v53;
    v50 = *v53;
    v46 = a1;
    v45 = v5;
    v44 = v7;
    do
    {
      v12 = 0;
      v51 = v9;
      do
      {
        if (*v53 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v52 + 1) + 8 * v12);
        if ([v13 interfaceType] == 11)
        {
          v14 = _mo_log_facility_get_os_log(v10);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v57 = v13;
            _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "eventBundle skips event rehydration, %@", buf, 0xCu);
          }

          goto LABEL_32;
        }

        if ((v5 & 1) == 0)
        {
          v15 = [v13 action];
          if ([v15 actionType] == 9)
          {

LABEL_20:
            v48 = [MOAction alloc];
            v47 = +[NSUUID UUID];
            v49 = [v13 action];
            v18 = [v49 actionName];
            v19 = [v13 action];
            v20 = [v19 actionSubtype];
            v21 = [v13 action];
            [v21 actionNameConfidence];
            v23 = v22;
            v24 = [v13 action];
            [v24 actionMetaData];
            v26 = v25 = v10;
            v27 = [(MOAction *)v48 initWithIdentifier:v47 actionName:v18 actionType:2 actionSubtype:v20 actionNameConfidence:v26 actionMetaData:v23];
            [v13 setAction:v27];

            v10 = v25;
            v28 = [NSPredicate predicateWithFormat:@"category != %lu", 22];
            v29 = [v13 events];
            v30 = [v29 filteredArrayUsingPredicate:v28];
            [v13 setEvents:v30];

            v31 = [v13 events];
            v32 = [v31 firstObject];
            v33 = [v32 eventIdentifier];
            v34 = [v13 action];
            [v34 setSourceEventIdentifier:v33];

            v35 = _mo_log_facility_get_os_log(v25);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v57 = v13;
              _os_log_debug_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "eventBundle skips life events (fetch), bundle, %@", buf, 0xCu);
            }

            a1 = v46;
            v5 = v45;
            v7 = v44;
            v11 = v50;
            goto LABEL_23;
          }

          v16 = [v13 action];
          v17 = [v16 actionType];

          if (v17 == 10)
          {
            goto LABEL_20;
          }
        }

LABEL_23:
        v14 = [*(a1 + 32) findRehydrateEvents:*(a1 + 48) forBundle:v13];
        v36 = _mo_log_facility_get_os_log(v10);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v37 = [v14 count];
          *buf = 134217984;
          v57 = v37;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "eventBundle with rehydrated events count: , %lu", buf, 0xCu);
        }

        if ([v14 count])
        {
          v38 = [[NSArray alloc] initWithArray:v14];
          [v13 setEvents:v38];

          v39 = _mo_log_facility_get_os_log(v10);
          v9 = v51;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            v40 = [v13 description];
            *buf = 138412290;
            v57 = v40;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "eventBundle with rehydrated events: , %@", buf, 0xCu);
          }

          v11 = v50;
        }

        else
        {
          [*(a1 + 56) addObject:v13];
          v39 = _mo_log_facility_get_os_log(v10);
          v9 = v51;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v57 = v13;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "eventBundle is removed in the SPI output after rehydration failure, %@", buf, 0xCu);
          }
        }

LABEL_32:
        v12 = v12 + 1;
      }

      while (v9 != v12);
      v9 = [v7 countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v9);
  }

  [*(a1 + 64) removeObjectsInArray:*(a1 + 56)];
  v41 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v41))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v41, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerFetchEventBundlesRehydrateEventsPostProcessing", "", buf, 2u);
  }

  [(MOPerformanceMeasurement *)v43 endSession];
  v42 = *(a1 + 80);
  if (v42)
  {
    (*(v42 + 16))(v42, *(a1 + 64), *(a1 + 72));
  }
}

- (id)findRehydrateEvents:(id)events forBundle:(id)bundle
{
  eventsCopy = events;
  bundleCopy = bundle;
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  events = [bundleCopy events];
  v10 = [events countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v31;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(events);
        }

        eventIdentifier = [*(*(&v30 + 1) + 8 * i) eventIdentifier];
        [v8 addObject:eventIdentifier];
      }

      v11 = [events countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v11);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = eventsCopy;
  v16 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v27;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v26 + 1) + 8 * j);
        eventIdentifier2 = [v20 eventIdentifier];
        v22 = [v8 containsObject:eventIdentifier2];

        if (v22)
        {
          [v7 addObject:v20];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v17);
  }

  allObjects = [v7 allObjects];
  v24 = [NSArray arrayWithArray:allObjects];

  return v24;
}

- (void)cleanUpEventBundlesWithRefreshVariant:(unint64_t)variant andHandler:(id)handler
{
  handlerCopy = handler;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v8 = v7;
  v9 = variant - 1;
  if (variant - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, variant, "EventBundleManagerCleanUpEventBundlesWrapper", "", buf, 2u);
  }

  v10 = [[MOPerformanceMeasurement alloc] initWithName:@"CleanUpEventBundlesWrapper" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v10 startSession];
  v11 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v12 = v11;
  if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, variant, "EventBundleManagerCleanUpEventBundles", "", buf, 2u);
  }

  v13 = [[MOPerformanceMeasurement alloc] initWithName:@"CleanUpEventBundles" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v13 startSession];
  v14 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v15 = v14;
  if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_END, variant, "EventBundleManagerCleanUpEventBundles", "", buf, 2u);
  }

  [(MOPerformanceMeasurement *)v13 endSession];
  eventBundleStore = [(MOEventBundleManager *)self eventBundleStore];
  persistenceManager = [eventBundleStore persistenceManager];
  availability = [persistenceManager availability];

  v19 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  v20 = v19;
  if (availability == 2)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "purge eventBundles since datastore is available", buf, 2u);
    }

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = __73__MOEventBundleManager_cleanUpEventBundlesWithRefreshVariant_andHandler___block_invoke;
    v25[3] = &unk_10033BFD0;
    v27 = handlerCopy;
    variantCopy = variant;
    v26 = v10;
    [(MOEventBundleManager *)self _cleanUpEventBundlesWithRefreshVariant:variant andHandler:v25];
  }

  else
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleManager cleanUpEventBundlesWithRefreshVariant:andHandler:];
    }

    if (handlerCopy)
    {
      v30 = NSLocalizedDescriptionKey;
      v31 = @"[cleanUpEventBundlesWithRefreshVariant] database is not available";
      v21 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v22 = [NSError errorWithDomain:@"MOErrorDomain" code:16 userInfo:v21];

      (*(handlerCopy + 2))(handlerCopy, v22, &__NSDictionary0__struct);
    }

    v23 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    v24 = v23;
    if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_END, variant, "EventBundleManagerCleanUpEventBundlesWrapper", "", buf, 2u);
    }

    [(MOPerformanceMeasurement *)v10 endSession];
  }
}

void __73__MOEventBundleManager_cleanUpEventBundlesWithRefreshVariant_andHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  v8 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v9 = v8;
  v10 = *(a1 + 48);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v10, "EventBundleManagerCleanUpEventBundlesWrapper", "", v11, 2u);
  }

  [*(a1 + 32) endSession];
}

- (void)_cleanUpEventBundlesWithRefreshVariant:(unint64_t)variant andHandler:(id)handler
{
  handlerCopy = handler;
  v7 = dispatch_group_create();
  v107[0] = 0;
  v107[1] = v107;
  v107[2] = 0x3032000000;
  v107[3] = __Block_byref_object_copy__24;
  v107[4] = __Block_byref_object_dispose__24;
  v108 = objc_alloc_init(NSMutableDictionary);
  v105[0] = 0;
  v105[1] = v105;
  v105[2] = 0x3032000000;
  v105[3] = __Block_byref_object_copy__24;
  v105[4] = __Block_byref_object_dispose__24;
  v106 = [NSNumber numberWithInt:0];
  v103[0] = 0;
  v103[1] = v103;
  v103[2] = 0x3032000000;
  v103[3] = __Block_byref_object_copy__24;
  v103[4] = __Block_byref_object_dispose__24;
  v104 = [NSNumber numberWithInt:0];
  v101[0] = 0;
  v101[1] = v101;
  v101[2] = 0x3032000000;
  v101[3] = __Block_byref_object_copy__24;
  v101[4] = __Block_byref_object_dispose__24;
  v102 = [NSNumber numberWithInt:0];
  v99[0] = 0;
  v99[1] = v99;
  v99[2] = 0x3032000000;
  v99[3] = __Block_byref_object_copy__24;
  v99[4] = __Block_byref_object_dispose__24;
  v100 = [NSNumber numberWithInt:0];
  v97[0] = 0;
  v97[1] = v97;
  v97[2] = 0x3032000000;
  v97[3] = __Block_byref_object_copy__24;
  v97[4] = __Block_byref_object_dispose__24;
  v98 = [NSNumber numberWithInt:0];
  v95[0] = 0;
  v95[1] = v95;
  v95[2] = 0x3032000000;
  v95[3] = __Block_byref_object_copy__24;
  v95[4] = __Block_byref_object_dispose__24;
  v96 = 0;
  v93[0] = 0;
  v93[1] = v93;
  v93[2] = 0x3032000000;
  v93[3] = __Block_byref_object_copy__24;
  v93[4] = __Block_byref_object_dispose__24;
  v94 = 0;
  v91[0] = 0;
  v91[1] = v91;
  v91[2] = 0x3032000000;
  v91[3] = __Block_byref_object_copy__24;
  v91[4] = __Block_byref_object_dispose__24;
  v92 = 0;
  v89[0] = 0;
  v89[1] = v89;
  v89[2] = 0x3032000000;
  v89[3] = __Block_byref_object_copy__24;
  v89[4] = __Block_byref_object_dispose__24;
  v90 = 0;
  v87[0] = 0;
  v87[1] = v87;
  v87[2] = 0x3032000000;
  v87[3] = __Block_byref_object_copy__24;
  v87[4] = __Block_byref_object_dispose__24;
  v88 = 0;
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v9 = v8;
  v10 = variant - 1;
  if (variant - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, variant, "EventBundleManagerCleanUpEventBundlesPurgeExpired", "", buf, 2u);
  }

  v11 = [[MOPerformanceMeasurement alloc] initWithName:@"CleanUpEventBundlesPurgeExpired" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v11 startSession];
  dispatch_group_enter(v7);
  eventBundleStore = self->_eventBundleStore;
  v80[0] = _NSConcreteStackBlock;
  v80[1] = 3221225472;
  v80[2] = __74__MOEventBundleManager__cleanUpEventBundlesWithRefreshVariant_andHandler___block_invoke;
  v80[3] = &unk_10033BFF8;
  variantCopy = variant;
  v13 = v11;
  v81 = v13;
  v83 = v95;
  v84 = v105;
  v14 = v7;
  v82 = v14;
  [(MOEventBundleStore *)eventBundleStore purgeExpiredEventBundlesWithCompletionHandler:v80];
  v15 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v16 = v15;
  if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_BEGIN, variant, "EventBundleManagerCleanUpEventBundlesPurgeNoEvents", "", buf, 2u);
  }

  v17 = [[MOPerformanceMeasurement alloc] initWithName:@"CleanUpEventBundlesPurgeNoEvents" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v17 startSession];
  dispatch_group_enter(v14);
  v18 = self->_eventBundleStore;
  v74[0] = _NSConcreteStackBlock;
  v74[1] = 3221225472;
  v74[2] = __74__MOEventBundleManager__cleanUpEventBundlesWithRefreshVariant_andHandler___block_invoke_791;
  v74[3] = &unk_10033BFF8;
  variantCopy2 = variant;
  v19 = v17;
  v75 = v19;
  v77 = v93;
  v78 = v103;
  v20 = v14;
  v76 = v20;
  [(MOEventBundleStore *)v18 purgeEventBundlesWithNoEventsAssociatedWithCompletionHandler:v74];
  v21 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v22 = v21;
  v44 = v13;
  if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_BEGIN, variant, "EventBundleManagerCleanUpEventBundlesPurgeInvalidEvergreeen", "", buf, 2u);
  }

  v23 = handlerCopy;

  v24 = [[MOPerformanceMeasurement alloc] initWithName:@"CleanUpEventBundlesPurgeInvalidEvergreen" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v24 startSession];
  dispatch_group_enter(v20);
  v25 = self->_eventBundleStore;
  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = __74__MOEventBundleManager__cleanUpEventBundlesWithRefreshVariant_andHandler___block_invoke_795;
  v68[3] = &unk_10033BFF8;
  variantCopy3 = variant;
  v26 = v24;
  v69 = v26;
  v71 = v91;
  v72 = v101;
  v27 = v20;
  v70 = v27;
  [(MOEventBundleStore *)v25 purgeInvalidEvergreenBundlesWithCompletionHandler:v68];
  v28 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v29 = v28;
  if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, OS_SIGNPOST_INTERVAL_BEGIN, variant, "EventBundleManagerCleanUpEventBundlesPurgeRehydrationFailure", "", buf, 2u);
  }

  v30 = [[MOPerformanceMeasurement alloc] initWithName:@"CleanUpEventBundlesPurgeRehydrationFailure" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v30 startSession];
  configurationManager = [(MOEventBundleManager *)self configurationManager];
  v32 = [configurationManager getIntegerSettingForKey:@"EventManagerOverrideEventsRehydrationFailureCountThreshold" withFallback:10];

  dispatch_group_enter(v27);
  v33 = self->_eventBundleStore;
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = __74__MOEventBundleManager__cleanUpEventBundlesWithRefreshVariant_andHandler___block_invoke_802;
  v62[3] = &unk_10033BFF8;
  variantCopy4 = variant;
  v34 = v30;
  v63 = v34;
  v65 = v89;
  v66 = v99;
  v35 = v27;
  v64 = v35;
  [(MOEventBundleStore *)v33 purgeEventBundlesWithRehydrationFailureCount:v32 andHandler:v62];
  v36 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v37 = v36;
  if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, OS_SIGNPOST_INTERVAL_BEGIN, variant, "EventBundleManagerCleanUpEventBundlesPurgeDangling", "", buf, 2u);
  }

  v38 = [[MOPerformanceMeasurement alloc] initWithName:@"CleanUpEventBundlesPurgeDangling" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v38 startSession];
  dispatch_group_enter(v35);
  v39 = self->_eventBundleStore;
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = __74__MOEventBundleManager__cleanUpEventBundlesWithRefreshVariant_andHandler___block_invoke_806;
  v56[3] = &unk_10033BFF8;
  variantCopy5 = variant;
  v40 = v38;
  v57 = v40;
  v59 = v87;
  v60 = v97;
  v41 = v35;
  v58 = v41;
  [(MOEventBundleStore *)v39 purgeDanglingEventBundlesWithHandler:v56];
  queue = [(MOEventBundleManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __74__MOEventBundleManager__cleanUpEventBundlesWithRefreshVariant_andHandler___block_invoke_807;
  block[3] = &unk_10033C020;
  v48 = v103;
  v49 = v99;
  v50 = v97;
  v51 = v107;
  v46 = v23;
  v47 = v105;
  v52 = v95;
  v53 = v93;
  v54 = v89;
  v55 = v87;
  v43 = v23;
  dispatch_group_notify(v41, queue, block);

  _Block_object_dispose(v87, 8);
  _Block_object_dispose(v89, 8);

  _Block_object_dispose(v91, 8);
  _Block_object_dispose(v93, 8);

  _Block_object_dispose(v95, 8);
  _Block_object_dispose(v97, 8);

  _Block_object_dispose(v99, 8);
  _Block_object_dispose(v101, 8);

  _Block_object_dispose(v103, 8);
  _Block_object_dispose(v105, 8);

  _Block_object_dispose(v107, 8);
}

void __74__MOEventBundleManager__cleanUpEventBundlesWithRefreshVariant_andHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v8 = v7;
  v9 = *(a1 + 64);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(v18[0]) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v9, "EventBundleManagerCleanUpEventBundlesPurgeExpired", "", v18, 2u);
  }

  [*(a1 + 32) endSession];
  if (v5)
  {
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __74__MOEventBundleManager__cleanUpEventBundlesWithRefreshVariant_andHandler___block_invoke_cold_1();
    }

    v11 = *(*(a1 + 48) + 8);
    v12 = v5;
    v13 = *(v11 + 40);
    *(v11 + 40) = v12;
  }

  else
  {
    v14 = [v6 objectForKey:@"resultNumberOfBundleEvents"];
    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v13 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v17 = [*(*(*(a1 + 56) + 8) + 40) intValue];
      v18[0] = 67109120;
      v18[1] = v17;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "purge expired event bundles succeeded, count %i", v18, 8u);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void __74__MOEventBundleManager__cleanUpEventBundlesWithRefreshVariant_andHandler___block_invoke_791(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v8 = v7;
  v9 = *(a1 + 64);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(v18[0]) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v9, "EventBundleManagerCleanUpEventBundlesPurgeNoEvents", "", v18, 2u);
  }

  [*(a1 + 32) endSession];
  if (v5)
  {
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __74__MOEventBundleManager__cleanUpEventBundlesWithRefreshVariant_andHandler___block_invoke_791_cold_1();
    }

    v11 = *(*(a1 + 48) + 8);
    v12 = v5;
    v13 = *(v11 + 40);
    *(v11 + 40) = v12;
  }

  else
  {
    v14 = [v6 objectForKey:@"resultNumberOfBundleEvents"];
    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v13 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v17 = [*(*(*(a1 + 56) + 8) + 40) intValue];
      v18[0] = 67109120;
      v18[1] = v17;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "purge non-evergreen event bundles with no events succeeded, count %i", v18, 8u);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void __74__MOEventBundleManager__cleanUpEventBundlesWithRefreshVariant_andHandler___block_invoke_795(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v8 = v7;
  v9 = *(a1 + 64);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(v18[0]) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v9, "EventBundleManagerCleanUpEventBundlesPurgeInvalidEvergreeen", "", v18, 2u);
  }

  [*(a1 + 32) endSession];
  if (v5)
  {
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __74__MOEventBundleManager__cleanUpEventBundlesWithRefreshVariant_andHandler___block_invoke_795_cold_1();
    }

    v11 = *(*(a1 + 48) + 8);
    v12 = v5;
    v13 = *(v11 + 40);
    *(v11 + 40) = v12;
  }

  else
  {
    v14 = [v6 objectForKey:@"resultNumberOfBundleEvents"];
    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v13 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v17 = [*(*(*(a1 + 56) + 8) + 40) intValue];
      v18[0] = 67109120;
      v18[1] = v17;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "purge evergreen event bundles with no events succeeded, count %i", v18, 8u);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void __74__MOEventBundleManager__cleanUpEventBundlesWithRefreshVariant_andHandler___block_invoke_802(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v8 = v7;
  v9 = *(a1 + 64);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(v18[0]) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v9, "EventBundleManagerCleanUpEventBundlesPurgeRehydrationFailure", "", v18, 2u);
  }

  [*(a1 + 32) endSession];
  if (v5)
  {
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __74__MOEventBundleManager__cleanUpEventBundlesWithRefreshVariant_andHandler___block_invoke_802_cold_1();
    }

    v11 = *(*(a1 + 48) + 8);
    v12 = v5;
    v13 = *(v11 + 40);
    *(v11 + 40) = v12;
  }

  else
  {
    v14 = [v6 objectForKey:@"resultNumberOfBundleEvents"];
    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v13 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v17 = [*(*(*(a1 + 56) + 8) + 40) intValue];
      v18[0] = 67109120;
      v18[1] = v17;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "purge bundles with rehydration failures succeeded, count %d", v18, 8u);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void __74__MOEventBundleManager__cleanUpEventBundlesWithRefreshVariant_andHandler___block_invoke_806(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v8 = v7;
  v9 = *(a1 + 64);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(v18[0]) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v9, "EventBundleManagerCleanUpEventBundlesPurgeDangling", "", v18, 2u);
  }

  [*(a1 + 32) endSession];
  if (v5)
  {
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __74__MOEventBundleManager__cleanUpEventBundlesWithRefreshVariant_andHandler___block_invoke_806_cold_1();
    }

    v11 = *(*(a1 + 48) + 8);
    v12 = v5;
    v13 = *(v11 + 40);
    *(v11 + 40) = v12;
  }

  else
  {
    v14 = [v6 objectForKey:@"resultNumberOfBundleEvents"];
    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v13 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v17 = [*(*(*(a1 + 56) + 8) + 40) intValue];
      v18[0] = 67109120;
      v18[1] = v17;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "purge dangling bundles succeeded, count %d", v18, 8u);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void __74__MOEventBundleManager__cleanUpEventBundlesWithRefreshVariant_andHandler___block_invoke_807(void *a1)
{
  v2 = [*(*(a1[5] + 8) + 40) intValue];
  v3 = [*(*(a1[6] + 8) + 40) intValue] + v2;
  v4 = [*(*(a1[7] + 8) + 40) intValue];
  v5 = v3 + v4 + [*(*(a1[8] + 8) + 40) intValue];
  v6 = *(*(a1[9] + 8) + 40);
  v7 = [NSNumber numberWithInt:v5];
  [v6 setObject:v7 forKey:@"resultNumberOfEvents"];

  v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [*(*(a1[5] + 8) + 40) intValue];
    v10 = [*(*(a1[6] + 8) + 40) intValue];
    v11 = [*(*(a1[7] + 8) + 40) intValue];
    v12 = [*(*(a1[8] + 8) + 40) intValue];
    v17[0] = 67110144;
    v17[1] = v9;
    v18 = 1024;
    v19 = v10;
    v20 = 1024;
    v21 = v11;
    v22 = 1024;
    v23 = v12;
    v24 = 1024;
    v25 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "clean up event bundles completed with %d+%d+%d+%d = total %d", v17, 0x20u);
  }

  v13 = a1[4];
  if (v13)
  {
    v14 = *(*(a1[10] + 8) + 40);
    if (v14)
    {
      goto LABEL_10;
    }

    v14 = *(*(a1[11] + 8) + 40);
    if (v14)
    {
      goto LABEL_10;
    }

    if (!*(*(a1[12] + 8) + 40) && !*(*(a1[13] + 8) + 40))
    {
      (*(v13 + 16))(v13, 0, *(*(a1[9] + 8) + 40));
      return;
    }

    v14 = *(*(a1[12] + 8) + 40);
    if (v14 || (v14 = *(*(a1[13] + 8) + 40)) != 0)
    {
LABEL_10:
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = *(*(a1[9] + 8) + 40);
    (*(a1[4] + 16))();
  }
}

- (void)clearEventBundlesWithRefreshVariant:(unint64_t)variant andHandler:(id)handler
{
  handlerCopy = handler;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v8 = v7;
  v9 = variant - 1;
  if (variant - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v28 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, variant, "EventBundleManagerClearEventBundlesWrapper", "", v28, 2u);
  }

  v10 = [[MOPerformanceMeasurement alloc] initWithName:@"ClearEventBundlesWrapper" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v10 startSession];
  if (variant == 0xFFFF)
  {
    fsmStore = [(MOEventBundleManager *)self fsmStore];
    [fsmStore removeAllFSMsWithCompletionHandler:&__block_literal_global_812];
  }

  eventBundleStore = [(MOEventBundleManager *)self eventBundleStore];
  persistenceManager = [eventBundleStore persistenceManager];
  availability = [persistenceManager availability];

  v15 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  v16 = v15;
  if (availability == 2)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "clear event bundles since datastore is available", v28, 2u);
    }

    v17 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    v18 = v17;
    if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      *v28 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_BEGIN, variant, "EventBundleManagerClearEventBundles", "", v28, 2u);
    }

    v19 = [[MOPerformanceMeasurement alloc] initWithName:@"ClearEventBundles" measureRecentPeak:0];
    [(MOPerformanceMeasurement *)v19 startSession];
    [(MOEventBundleManager *)self _clearEventBundles];
    [(MOEventBundleManager *)self _clearFSMs];
    v20 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    v21 = v20;
    if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *v28 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_END, variant, "EventBundleManagerClearEventBundles", "", v28, 2u);
    }

    [(MOPerformanceMeasurement *)v19 endSession];
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0, &__NSDictionary0__struct);
    }

    v22 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    v23 = v22;
    if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *v28 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_INTERVAL_END, variant, "EventBundleManagerClearEventBundlesWrapper", "", v28, 2u);
    }

    [(MOPerformanceMeasurement *)v10 endSession];
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleManager clearEventBundlesWithRefreshVariant:andHandler:];
    }

    if (handlerCopy)
    {
      v29 = NSLocalizedDescriptionKey;
      v30 = @"database is not available";
      v24 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v25 = [NSError errorWithDomain:@"MOErrorDomain" code:16 userInfo:v24];

      (handlerCopy)[2](handlerCopy, v25, &__NSDictionary0__struct);
    }

    v26 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    v27 = v26;
    if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      *v28 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_INTERVAL_END, variant, "EventBundleManagerClearEventBundlesWrapper", "", v28, 2u);
    }

    [(MOPerformanceMeasurement *)v10 endSession];
  }
}

void __71__MOEventBundleManager_clearEventBundlesWithRefreshVariant_andHandler___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  v3 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "remove all FSM since the variant is reset, error, %@", &v4, 0xCu);
  }
}

- (void)_clearEventBundles
{
  eventBundleStore = [(MOEventBundleManager *)self eventBundleStore];
  [eventBundleStore removeAllBundlesWithCompletionHandler:&__block_literal_global_817];
}

void __42__MOEventBundleManager__clearEventBundles__block_invoke(id a1, NSError *a2)
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "cleared bundle db", v3, 2u);
  }
}

- (void)_clearFSMs
{
  fsmStore = [(MOEventBundleManager *)self fsmStore];
  [fsmStore removeAllFSMsWithCompletionHandler:&__block_literal_global_819];
}

void __34__MOEventBundleManager__clearFSMs__block_invoke(id a1, NSError *a2)
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "cleared FMS db", v3, 2u);
  }
}

- (BOOL)isDataDumpEnabledForTrigger:(unint64_t)trigger
{
  v5 = [(MOConfigurationManagerBase *)self->_configurationManager getBoolSettingForKey:@"BundlingDataCollectionEnabled" withFallback:1];
  if ([(MOConfigurationManagerBase *)self->_configurationManager getBoolSettingForKey:@"BundlingDataUploadEnabled" withFallback:0])
  {
    if (trigger - 1 >= 5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (!v5)
  {
    if (trigger == 3)
    {
LABEL_8:
      LOBYTE(v6) = 1;
      return v6 & 1;
    }

LABEL_9:
    LOBYTE(v6) = 0;
    return v6 & 1;
  }

  if (trigger >= 5)
  {
    goto LABEL_9;
  }

  v6 = 0x1Au >> trigger;
  return v6 & 1;
}

void __112__MOEventBundleManager_captureCurrentDBStateForTrigger_withFeedback_additionalMetadata_shouldUpload_andHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 32))
  {
    v5 = a2;
    v6 = [a3 mutableCopy];
    [v6 setObject:&__kCFBooleanTrue forKey:@"kMODataDumpEnabled"];
    (*(*(a1 + 32) + 16))();
  }
}

- (id)_getMetadataForTrigger:(unint64_t)trigger
{
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v5))
  {
    *v30 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerGetMetadata", "", v30, 2u);
  }

  v6 = [[MOPerformanceMeasurement alloc] initWithName:@"GetMetadata" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v6 startSession];
  v7 = objc_opt_new();
  v8 = objc_autoreleasePoolPush();
  getAllowedToPromptConfiguration = [(MOEventBundleManager *)self getAllowedToPromptConfiguration];
  v10 = getAllowedToPromptConfiguration;
  if (getAllowedToPromptConfiguration)
  {
    v11 = getAllowedToPromptConfiguration;
  }

  else
  {
    v11 = &__NSDictionary0__struct;
  }

  [v7 setObject:v11 forKey:@"kMODataPermissions"];
  v12 = +[MOPlatformInfo extractHardwareAndSoftwareMetadata];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = &__NSDictionary0__struct;
  }

  [v7 setObject:v14 forKey:@"kMODeviceMetadata"];
  v15 = +[NSDate date];
  [v15 timeIntervalSinceReferenceDate];
  v17 = v16;

  v18 = [NSNumber numberWithDouble:v17];
  [v7 setObject:v18 forKey:@"kMODataDumpTimestamp"];

  [v7 setObject:&off_10036E6B0 forKey:@"kMOBundlingCollectionVersionNumber"];
  v19 = [NSNumber numberWithUnsignedInteger:trigger];
  [v7 setObject:v19 forKey:@"kMODataDumpTrigger"];

  configurationManager = [(MOEventBundleManager *)self configurationManager];
  v21 = [configurationManager getIntegerSettingForKey:@"OnboardingStatus" withFallback:0];

  v22 = [NSNumber numberWithInt:v21];
  [v7 setObject:v22 forKey:@"kMODataOnboardingStatus"];

  defaultManager = [(MOEventBundleManager *)self defaultManager];
  v24 = [defaultManager objectForKey:@"OnboardingDate"];

  if (v24)
  {
    [v24 timeIntervalSinceReferenceDate];
    v25 = [NSNumber numberWithDouble:?];
    [v7 setObject:v25 forKey:@"kMODataOnboardingDate"];
  }

  v26 = [NSNumber numberWithBool:[(MOEventBundleManager *)self persistBundlingDataWithoutRandomization]];
  [v7 setObject:v26 forKey:@"kMODataWithoutRandomization"];

  defaultManager2 = [(MOEventBundleManager *)self defaultManager];
  v28 = [defaultManager2 objectForKeyWithoutLog:@"MODataServerUploaderSubjectUUID"];

  if (v28)
  {
    [v7 setObject:v28 forKey:@"kMOSubjectUUID"];
  }

  objc_autoreleasePoolPop(v8);

  return v7;
}

- (void)fetchAndSaveBundlingDataForTrigger:(unint64_t)trigger withFeedback:(id)feedback additionalMetadata:(id)metadata shouldUpload:(BOOL)upload andHandler:(id)handler
{
  feedbackCopy = feedback;
  metadataCopy = metadata;
  handlerCopy = handler;
  v13 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerCaptureCurrentDB", "", buf, 2u);
  }

  v14 = [[MOPerformanceMeasurement alloc] initWithName:@"CaptureCurrentDB" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v14 startSession];
  configurationManager = [(MOEventBundleManager *)self configurationManager];
  v16 = [configurationManager getIntegerSettingForKey:@"EventBundleManagerOverrideRefreshDataExportMaxLookBackWindowSecs" withFallback:2419200];

  v17 = +[NSDate date];
  v18 = [v17 dateByAddingTimeInterval:-v16];
  v19 = [[NSDateInterval alloc] initWithStartDate:v18 endDate:v17];
  v20 = dispatch_group_create();
  [(MOEventBundleManager *)self beginDataExport];
  dispatch_group_enter(v20);
  queue = [(MOEventBundleManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __115__MOEventBundleManager_fetchAndSaveBundlingDataForTrigger_withFeedback_additionalMetadata_shouldUpload_andHandler___block_invoke;
  block[3] = &unk_10033B2B0;
  block[4] = self;
  v44 = v19;
  v22 = v20;
  v45 = v22;
  v31 = v19;
  dispatch_async(queue, block);

  dispatch_group_enter(v22);
  queue2 = [(MOEventBundleManager *)self queue];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = __115__MOEventBundleManager_fetchAndSaveBundlingDataForTrigger_withFeedback_additionalMetadata_shouldUpload_andHandler___block_invoke_5;
  v38[3] = &unk_10033C148;
  v41 = v22;
  triggerCopy = trigger;
  v38[4] = self;
  v39 = metadataCopy;
  v40 = feedbackCopy;
  v24 = v22;
  v25 = feedbackCopy;
  v26 = metadataCopy;
  dispatch_async(queue2, v38);

  eventBundleRanking = [(MOEventBundleManager *)self eventBundleRanking];
  [(MOEventBundleManager *)self persistRankingModel:eventBundleRanking];

  queue3 = [(MOEventBundleManager *)self queue];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = __115__MOEventBundleManager_fetchAndSaveBundlingDataForTrigger_withFeedback_additionalMetadata_shouldUpload_andHandler___block_invoke_859;
  v34[3] = &unk_10033C198;
  uploadCopy = upload;
  v35 = v14;
  v36 = handlerCopy;
  v34[4] = self;
  v29 = v14;
  v30 = handlerCopy;
  dispatch_group_notify(v24, queue3, v34);
}

void __115__MOEventBundleManager_fetchAndSaveBundlingDataForTrigger_withFeedback_additionalMetadata_shouldUpload_andHandler___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __115__MOEventBundleManager_fetchAndSaveBundlingDataForTrigger_withFeedback_additionalMetadata_shouldUpload_andHandler___block_invoke_2;
  v4[3] = &unk_10033C0D0;
  v4[4] = v3;
  v5 = v2;
  v6 = *(a1 + 48);
  [v3 fetchAndPersistEventsForTimeInterval:v5 withHandler:v4];
}

void __115__MOEventBundleManager_fetchAndSaveBundlingDataForTrigger_withFeedback_additionalMetadata_shouldUpload_andHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) eventManager];
  [v5 clearCache];

  v6 = [*(a1 + 32) queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __115__MOEventBundleManager_fetchAndSaveBundlingDataForTrigger_withFeedback_additionalMetadata_shouldUpload_andHandler___block_invoke_3;
  v9[3] = &unk_10033C0A8;
  v7 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v7;
  v11 = v4;
  v12 = *(a1 + 48);
  v8 = v4;
  dispatch_async(v6, v9);
}

void __115__MOEventBundleManager_fetchAndSaveBundlingDataForTrigger_withFeedback_additionalMetadata_shouldUpload_andHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __115__MOEventBundleManager_fetchAndSaveBundlingDataForTrigger_withFeedback_additionalMetadata_shouldUpload_andHandler___block_invoke_4;
  v4[3] = &unk_100335F40;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v1 fetchAndPersistBundlesForTimeInterval:v2 eventsIdsToDrop:v3 withHandler:v4];
}

void __115__MOEventBundleManager_fetchAndSaveBundlingDataForTrigger_withFeedback_additionalMetadata_shouldUpload_andHandler___block_invoke_5(uint64_t a1)
{
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__24;
  v16[4] = __Block_byref_object_dispose__24;
  v17 = [*(a1 + 32) _getMetadataForTrigger:*(a1 + 64)];
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerCaptureCurrentDBFetchBundleTypeDistribution", "", buf, 2u);
  }

  v3 = [[MOPerformanceMeasurement alloc] initWithName:@"CaptureCurrentDBFetchBundleTypeDistribution" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v3 startSession];
  v4 = [*(a1 + 32) eventBundleStore];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __115__MOEventBundleManager_fetchAndSaveBundlingDataForTrigger_withFeedback_additionalMetadata_shouldUpload_andHandler___block_invoke_852;
  v8[3] = &unk_10033C120;
  v14 = v16;
  v9 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  v7 = v3;
  v12 = v7;
  v13 = *(a1 + 56);
  [v4 fetchBundleTypeDistributionFromStoreWithHandler:v8];

  _Block_object_dispose(v16, 8);
}

void __115__MOEventBundleManager_fetchAndSaveBundlingDataForTrigger_withFeedback_additionalMetadata_shouldUpload_andHandler___block_invoke_852(uint64_t a1, void *a2)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __115__MOEventBundleManager_fetchAndSaveBundlingDataForTrigger_withFeedback_additionalMetadata_shouldUpload_andHandler___block_invoke_2_856;
  v9[3] = &unk_10033C0F8;
  v3 = *(a1 + 72);
  v10 = @"BundleInterfaceTypeCount";
  v11 = v3;
  [a2 enumerateKeysAndObjectsUsingBlock:v9];
  if (*(a1 + 32))
  {
    [*(*(*(a1 + 72) + 8) + 40) addEntriesFromDictionary:?];
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    [*(*(*(a1 + 72) + 8) + 40) setObject:v4 forKey:@"kMOBundleFeedback"];
  }

  [*(a1 + 48) persistMetadata:*(*(*(a1 + 72) + 8) + 40)];
  v5 = *(*(a1 + 72) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v7))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerCaptureCurrentDBFetchBundleTypeDistribution", "", v8, 2u);
  }

  [*(a1 + 56) endSession];
  dispatch_group_leave(*(a1 + 64));
}

void __115__MOEventBundleManager_fetchAndSaveBundlingDataForTrigger_withFeedback_additionalMetadata_shouldUpload_andHandler___block_invoke_2_856(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 stringValue];
  v10 = [v5 stringByAppendingString:v7];

  v8 = *(*(*(a1 + 40) + 8) + 40);
  v9 = [v6 stringValue];

  [v8 setObject:v9 forKey:v10];
}

void __115__MOEventBundleManager_fetchAndSaveBundlingDataForTrigger_withFeedback_additionalMetadata_shouldUpload_andHandler___block_invoke_859(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __115__MOEventBundleManager_fetchAndSaveBundlingDataForTrigger_withFeedback_additionalMetadata_shouldUpload_andHandler___block_invoke_2_860;
  v4[3] = &unk_10033C170;
  v6 = *(a1 + 48);
  v5 = *(a1 + 40);
  [v2 finalizeDataExportWithUpload:v3 handler:v4];
}

void __115__MOEventBundleManager_fetchAndSaveBundlingDataForTrigger_withFeedback_additionalMetadata_shouldUpload_andHandler___block_invoke_2_860(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __115__MOEventBundleManager_fetchAndSaveBundlingDataForTrigger_withFeedback_additionalMetadata_shouldUpload_andHandler___block_invoke_2_860_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "JSON data dump complete.", buf, 2u);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v6);
  }

  v10 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v10))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerCaptureCurrentDB", "", v11, 2u);
  }

  [*(a1 + 32) endSession];
}

- (void)_generateClusterAndAnomalyBundlesWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[GenerateClusterAndAnomalyBundles] Start bundle clustering", buf, 2u);
  }

  v6 = +[NSDate date];
  onboardingAndSettingsPersistence = [(MOEventBundleManager *)self onboardingAndSettingsPersistence];
  getSnapshotDictionaryForAnalytics = [onboardingAndSettingsPersistence getSnapshotDictionaryForAnalytics];

  v9 = [v6 dateByAddingTimeInterval:-2419200.0];
  v10 = [[NSDateInterval alloc] initWithStartDate:v9 endDate:v6];
  v11 = [[MOEventBundleFetchOptions alloc] initWithDateInterval:v10 ascending:1 limit:0 includeDeletedBundles:0 skipRanking:0];
  v12 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerGenerateClusterAndAnomalyBundlesFetchBundles", "", buf, 2u);
  }

  v13 = [[MOPerformanceMeasurement alloc] initWithName:@"GenerateClusterBundlesFetchBundles" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v13 startSession];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = __69__MOEventBundleManager__generateClusterAndAnomalyBundlesWithHandler___block_invoke;
  v17[3] = &unk_10033C210;
  v18 = v13;
  selfCopy = self;
  v20 = getSnapshotDictionaryForAnalytics;
  v21 = handlerCopy;
  v14 = getSnapshotDictionaryForAnalytics;
  v15 = handlerCopy;
  v16 = v13;
  [(MOEventBundleManager *)self fetchEventBundlesWithOptions:v11 CompletionHandler:v17];
}

void __69__MOEventBundleManager__generateClusterAndAnomalyBundlesWithHandler___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerGenerateClusterAndAnomalyBundlesFetchBundles", "", buf, 2u);
  }

  [a1[4] endSession];
  v11 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  v12 = v11;
  if (!v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __69__MOEventBundleManager__generateClusterAndAnomalyBundlesWithHandler___block_invoke_cold_2();
    }

    v45 = [NSSet setWithObjects:&off_10036A0C0, &off_10036A0D8, &off_10036A0F0, &off_10036A078, 0];
    v13 = [NSPredicate predicateWithFormat:@"bundleSuperType in %@", v45];
    v43 = [NSPredicate predicateWithFormat:@"isAggregatedAndSuppressed == NO AND summarizationGranularity != %lu", 2];
    v44 = v13;
    v61[0] = v13;
    v61[1] = v43;
    v14 = [NSArray arrayWithObjects:v61 count:2];
    v15 = [NSCompoundPredicate andPredicateWithSubpredicates:v14];

    v16 = [v7 filteredArrayUsingPredicate:v15];
    v17 = [v16 count];
    v18 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      __69__MOEventBundleManager__generateClusterAndAnomalyBundlesWithHandler___block_invoke_cold_3();
    }

    v19 = [a1[5] bundleClusteringManager];
    v20 = [v19 getClusteringParams];

    if ([v16 count] < 0x1F5)
    {
      if (v20)
      {
        v26 = [v16 count];
        if (v26 > [v20 minClusterSize])
        {
          v27 = [a1[5] bundleClusteringManager];
          v28 = [v27 getEmbeddingsFromBundles:v16 forEmbeddingType:1];

          v29 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v30 = [v28 count];
            *buf = 134217984;
            v56 = v30;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "[GenerateClusterAndAnomalyBundles] Embedding extraction completed. embedding count=%lu. Attempting to run clustering alg", buf, 0xCu);
          }

          v31 = [a1[5] bundleClusteringManager];
          [v31 runHDBSCANClusteringOn:v28];

          v32 = [a1[5] bundleClusteringManager];
          v33 = [v32 isClusteringResultValid];

          v34 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          v35 = os_log_type_enabled(v34, OS_LOG_TYPE_INFO);
          if (v33)
          {
            if (v35)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "[GenerateClusterAndAnomalyBundles] Valid cluster labels were generated. Attempting to generate cluster bundles and annotate anomaly bundles", buf, 2u);
            }

            v42 = [a1[5] bundleClusteringManager];
            v46[0] = _NSConcreteStackBlock;
            v46[1] = 3221225472;
            v46[2] = __69__MOEventBundleManager__generateClusterAndAnomalyBundlesWithHandler___block_invoke_876;
            v46[3] = &unk_10033C1E8;
            v36 = a1[7];
            v37 = a1[5];
            v50 = v36;
            v46[4] = v37;
            v47 = v16;
            v48 = v28;
            v49 = a1[6];
            [v42 annotateAnomalyBundles:v47 withEmbeddings:v48 handler:v46];

            v38 = v50;
          }

          else
          {
            if (v35)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "[GenerateClusterAndAnomalyBundles] Cluster labels are invalid: It is either not generated from HDBSCAN or all the inputs are clustered into one group. Skipping cluster & anomaly bundle generation", buf, 2u);
            }

            v41 = a1[7];
            v51[0] = @"resultClusterBundleGenerationSuccess";
            v51[1] = @"resultNumberOfClusterBundles";
            v52[0] = &off_10036A030;
            v52[1] = &off_10036A030;
            v51[2] = @"resultOutlierBundleGenerationSuccess";
            v51[3] = @"resultNumberOfOutlierBundles";
            v52[2] = &off_10036A030;
            v52[3] = &off_10036A030;
            v38 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:4];
            v41[2](v41, 0, v38);
          }

          goto LABEL_27;
        }
      }

      v39 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = [v20 minClusterSize];
        *buf = 134218240;
        v56 = v17;
        v57 = 2048;
        v58 = v40;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "[GenerateClusterBundles] Clustering params are not set or Filtered bundle count (%lu) is less than minClusterSize (%lu). Skip clustering", buf, 0x16u);
      }

      v23 = a1[7];
      v53[0] = @"resultClusterBundleGenerationSuccess";
      v53[1] = @"resultNumberOfClusterBundles";
      v54[0] = &off_10036A030;
      v54[1] = &off_10036A030;
      v53[2] = @"resultOutlierBundleGenerationSuccess";
      v53[3] = @"resultNumberOfOutlierBundles";
      v54[2] = &off_10036A030;
      v54[3] = &off_10036A030;
      v24 = v54;
      v25 = v53;
    }

    else
    {
      v21 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = [v16 count];
        *buf = 134218240;
        v56 = v22;
        v57 = 1024;
        LODWORD(v58) = 500;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[GenerateClusterBundles] Clustering input count (%lu) is more than max limit (%u). Skip clustering", buf, 0x12u);
      }

      v23 = a1[7];
      v59[0] = @"resultClusterBundleGenerationSuccess";
      v59[1] = @"resultNumberOfClusterBundles";
      v60[0] = &off_10036A030;
      v60[1] = &off_10036A030;
      v59[2] = @"resultOutlierBundleGenerationSuccess";
      v59[3] = @"resultNumberOfOutlierBundles";
      v60[2] = &off_10036A030;
      v60[3] = &off_10036A030;
      v24 = v60;
      v25 = v59;
    }

    v28 = [NSDictionary dictionaryWithObjects:v24 forKeys:v25 count:4];
    v23[2](v23, 0, v28);
LABEL_27:

    goto LABEL_28;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    __69__MOEventBundleManager__generateClusterAndAnomalyBundlesWithHandler___block_invoke_cold_1();
  }

  (*(a1[7] + 2))();
LABEL_28:
}

void __69__MOEventBundleManager__generateClusterAndAnomalyBundlesWithHandler___block_invoke_876(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v27 = [v5 count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[GenerateClusterAndAnomalyBundles] Annotated %lu bundles as anomaly", buf, 0xCu);
  }

  if (v6)
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[GenerateClusterAndAnomalyBundles] Error while annotating anomaly bundles, error, %@", buf, 0xCu);
    }

    v9 = a1[8];
    v24[0] = @"resultClusterBundleGenerationSuccess";
    v24[1] = @"resultNumberOfClusterBundles";
    v25[0] = &off_10036A030;
    v25[1] = &off_10036A030;
    v24[2] = @"resultOutlierBundleGenerationSuccess";
    v24[3] = @"resultNumberOfOutlierBundles";
    v25[2] = &off_10036A030;
    v25[3] = &off_10036A030;
    v10 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:4];
    v9[2](v9, v6, v10);
  }

  else if ([v5 count])
  {
    v11 = [a1[4] eventBundleStore];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = __69__MOEventBundleManager__generateClusterAndAnomalyBundlesWithHandler___block_invoke_879;
    v19[3] = &unk_10033C1C0;
    v23 = a1[8];
    v20 = v5;
    v18 = a1[4];
    v12 = a1[7];
    v13 = a1[5];
    v14 = a1[6];
    *&v15 = v13;
    *(&v15 + 1) = v14;
    *&v16 = v18;
    *(&v16 + 1) = v12;
    v21 = v16;
    v22 = v15;
    [v11 updateEventBundles:v20 CompletionHandler:v19];

    v10 = v23;
  }

  else
  {
    v17 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[GenerateClusterAndAnomalyBundles] No anomaly bundle was detected. Skiping anomaly bundle annotation.", buf, 2u);
    }

    v10 = objc_opt_new();
    [v10 setObject:&off_10036A1B0 forKeyedSubscript:@"resultOutlierBundleGenerationSuccess"];
    [v10 setObject:&off_10036A030 forKeyedSubscript:@"resultNumberOfOutlierBundles"];
    [a1[4] _processClusterBundles:a1[5] withEmbeddings:a1[6] onboardingStatus:a1[7] result:v10 andHandler:a1[8]];
  }
}

void __69__MOEventBundleManager__generateClusterAndAnomalyBundlesWithHandler___block_invoke_879(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v8)
    {
      *buf = 138412546;
      v20 = v6;
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[GenerateClusterAndAnomalyBundles] Error while updating annotated anomaly bundles, result, %@, error, %@", buf, 0x16u);
    }

    v9 = *(a1 + 72);
    v17[0] = @"resultClusterBundleGenerationSuccess";
    v17[1] = @"resultNumberOfClusterBundles";
    v18[0] = &off_10036A030;
    v18[1] = &off_10036A030;
    v17[2] = @"resultOutlierBundleGenerationSuccess";
    v17[3] = @"resultNumberOfOutlierBundles";
    v18[2] = &off_10036A030;
    v18[3] = &off_10036A030;
    v10 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:4];
    (*(v9 + 16))(v9, v5, v10);
  }

  else
  {
    if (v8)
    {
      *buf = 138412546;
      v20 = v6;
      v21 = 2112;
      v22 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[GenerateClusterAndAnomalyBundles] Annomaly bundles are annotated and saved. result, %@, error, %@", buf, 0x16u);
    }

    v10 = objc_opt_new();
    [v10 setObject:&off_10036A1B0 forKeyedSubscript:@"resultOutlierBundleGenerationSuccess"];
    v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) count]);
    [v10 setObject:v11 forKeyedSubscript:@"resultNumberOfOutlierBundles"];

    if (+[MOPlatformInfo isInternalBuild])
    {
      v12 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[GenerateClusterAndAnomalyBundles] Submit internal anomaly bundle analytics", buf, 2u);
      }

      v13 = [*(a1 + 40) bundleClusteringManager];
      v14 = *(a1 + 32);
      v15 = *(a1 + 48);
      v16 = +[NSDate date];
      [v13 submitAnomalyBundleInternalAnalytics:v14 withOnboardingStatus:v15 andSubmissionDate:v16];
    }

    [*(a1 + 40) _processClusterBundles:*(a1 + 56) withEmbeddings:*(a1 + 64) onboardingStatus:*(a1 + 48) result:v10 andHandler:*(a1 + 72)];
  }
}

- (void)_processClusterBundles:(id)bundles withEmbeddings:(id)embeddings onboardingStatus:(id)status result:(id)result andHandler:(id)handler
{
  bundlesCopy = bundles;
  embeddingsCopy = embeddings;
  statusCopy = status;
  resultCopy = result;
  handlerCopy = handler;
  if (!resultCopy)
  {
    resultCopy = objc_opt_new();
  }

  bundleClusteringManager = [(MOEventBundleManager *)self bundleClusteringManager];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = __97__MOEventBundleManager__processClusterBundles_withEmbeddings_onboardingStatus_result_andHandler___block_invoke;
  v21[3] = &unk_1003378F0;
  v22 = resultCopy;
  selfCopy = self;
  v24 = statusCopy;
  v25 = handlerCopy;
  v18 = statusCopy;
  v19 = handlerCopy;
  v20 = resultCopy;
  [bundleClusteringManager generateClusterBundles:bundlesCopy withEmbeddings:embeddingsCopy handler:v21];
}

void __97__MOEventBundleManager__processClusterBundles_withEmbeddings_onboardingStatus_result_andHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v8)
    {
      *buf = 138412290;
      v25 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[GenerateClusterAndAnomalyBundles] Error while generating cluster bundles %@", buf, 0xCu);
    }

    [a1[4] setObject:&off_10036A030 forKeyedSubscript:@"resultClusterBundleGenerationSuccess"];
    [a1[4] setObject:&off_10036A030 forKeyedSubscript:@"resultNumberOfClusterBundles"];
    v9 = a1[4];
    (*(a1[7] + 2))();
  }

  else
  {
    if (v8)
    {
      *buf = 134217984;
      v25 = [v5 count];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[GenerateClusterAndAnomalyBundles] Generated %lu cluster bundles", buf, 0xCu);
    }

    v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 count]);
    [a1[4] setObject:v10 forKeyedSubscript:@"resultNumberOfClusterBundles"];

    if ([v5 count])
    {
      v11 = [[MOEventBundleFetchOptions alloc] initWithDateInterval:0 ascending:1 limit:0 includeDeletedBundles:1 skipRanking:1 interfaceType:15];
      v12 = [a1[5] eventBundleStore];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = __97__MOEventBundleManager__processClusterBundles_withEmbeddings_onboardingStatus_result_andHandler___block_invoke_880;
      v17[3] = &unk_100337968;
      v16 = *(a1 + 2);
      v13 = v16.i64[0];
      v18 = vextq_s8(v16, v16, 8uLL);
      v21 = a1[7];
      v19 = v5;
      v20 = a1[6];
      [v12 fetchEventBundleWithOptions:v11 CompletionHandler:v17];
    }

    else
    {
      v14 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[GenerateClusterAndAnomalyBundles] cluster bundle count is zero.", buf, 2u);
      }

      v15 = a1[7];
      v22[0] = @"resultClusterBundleGenerationSuccess";
      v22[1] = @"resultNumberOfClusterBundles";
      v23[0] = &off_10036A030;
      v23[1] = &off_10036A030;
      v22[2] = @"resultOutlierBundleGenerationSuccess";
      v22[3] = @"resultNumberOfOutlierBundles";
      v23[2] = &off_10036A030;
      v23[3] = &off_10036A030;
      v11 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:4];
      v15[2](v15, 0, v11);
    }
  }
}

void __97__MOEventBundleManager__processClusterBundles_withEmbeddings_onboardingStatus_result_andHandler___block_invoke_880(id *a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __97__MOEventBundleManager__processClusterBundles_withEmbeddings_onboardingStatus_result_andHandler___block_invoke_880_cold_1(v3);
  }

  v32 = v3;
  if ([v3 count])
  {
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerGenerateClusterAndAnomalyBundlesRemoveExistingClusterBundles", "", buf, 2u);
    }

    v6 = [[MOPerformanceMeasurement alloc] initWithName:@"GenerateClusterBundlesRemoveEventBundles" measureRecentPeak:0];
    [(MOPerformanceMeasurement *)v6 startSession];
    v7 = [a1[4] eventBundleStore];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = __97__MOEventBundleManager__processClusterBundles_withEmbeddings_onboardingStatus_result_andHandler___block_invoke_884;
    v38[3] = &unk_10033C238;
    v8 = &v39;
    v39 = v6;
    v9 = &v40;
    v10 = &v42;
    v11 = &v41;
    v12 = &v41 + 1;
    v13 = a1[5];
    v42 = a1[8];
    *&v14 = v13;
    *(&v14 + 1) = a1[4];
    v30 = v14;
    v15 = a1[6];
    v16 = a1[7];
    *&v17 = v15;
    *(&v17 + 1) = v16;
    v40 = v30;
    v41 = v17;
    v18 = v6;
    v19 = v32;
    [v7 removeEventBundles:v32 CompletionHandler:v38];
  }

  else
  {
    v20 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[GenerateClusterAndAnomalyBundles] no existing bundles in current DB. saving new cluster bundles", buf, 2u);
    }

    v21 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerGenerateClusterAndAnomalyBundlesSaveClusterBundles", "", buf, 2u);
    }

    v22 = [[MOPerformanceMeasurement alloc] initWithName:@"GenerateClusterBundlesSaveEventBundles" measureRecentPeak:0];
    [(MOPerformanceMeasurement *)v22 startSession];
    v31 = a1[4];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = __97__MOEventBundleManager__processClusterBundles_withEmbeddings_onboardingStatus_result_andHandler___block_invoke_896;
    v33[3] = &unk_10033C238;
    v8 = &v34;
    v34 = v22;
    v9 = &v35;
    v10 = &v37;
    v11 = &v36;
    v12 = &v36 + 1;
    v23 = a1[6];
    v24 = a1[5];
    v37 = a1[8];
    *&v25 = v24;
    *(&v25 + 1) = a1[4];
    v29 = v25;
    v26 = a1[6];
    v27 = a1[7];
    *&v28 = v26;
    *(&v28 + 1) = v27;
    v35 = v29;
    v36 = v28;
    v18 = v22;
    [v31 saveEventBundles:v23 handler:v33];
    v19 = v32;
  }
}

void __97__MOEventBundleManager__processClusterBundles_withEmbeddings_onboardingStatus_result_andHandler___block_invoke_884(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerGenerateClusterAndAnomalyBundlesRemoveExistingClusterBundles", "", buf, 2u);
  }

  [a1[4] endSession];
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v9)
    {
      *buf = 138412546;
      v27 = v6;
      v28 = 2112;
      v29 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[GenerateClusterAndAnomalyBundles] Error while removing existing cluster bundles. result, %@ error, %@", buf, 0x16u);
    }

    [a1[5] setObject:&off_10036A030 forKeyedSubscript:@"resultClusterBundleGenerationSuccess"];
    [a1[5] addEntriesFromDictionary:v6];
    v10 = a1[5];
    (*(a1[9] + 2))();
  }

  else
  {
    if (v9)
    {
      *buf = 138412290;
      v27 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[GenerateClusterAndAnomalyBundles] Removed existing cluster bundles. Result, %@", buf, 0xCu);
    }

    v11 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerGenerateClusterAndAnomalyBundlesPurgeExistingClusterBundles", "", buf, 2u);
    }

    v12 = [[MOPerformanceMeasurement alloc] initWithName:@"GenerateClusterBundlesPurgeEventBundles" measureRecentPeak:0];
    [(MOPerformanceMeasurement *)v12 startSession];
    v13 = [a1[6] eventBundleStore];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = __97__MOEventBundleManager__processClusterBundles_withEmbeddings_onboardingStatus_result_andHandler___block_invoke_888;
    v21[3] = &unk_10033C238;
    v22 = v12;
    v14 = a1[5];
    v25 = a1[9];
    *&v15 = v14;
    *(&v15 + 1) = a1[6];
    v20 = v15;
    v16 = a1[7];
    v17 = a1[8];
    *&v18 = v16;
    *(&v18 + 1) = v17;
    v23 = v20;
    v24 = v18;
    v19 = v12;
    [v13 purgeDeletedEventBundlesWithCompletionHandler:v21];
  }
}

void __97__MOEventBundleManager__processClusterBundles_withEmbeddings_onboardingStatus_result_andHandler___block_invoke_888(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerGenerateClusterAndAnomalyBundlesPurgeExistingClusterBundles", "", buf, 2u);
  }

  [*(a1 + 32) endSession];
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v9)
    {
      *buf = 138412546;
      v28 = v6;
      v29 = 2112;
      v30 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[GenerateClusterAndAnomalyBundles] Error while purging existing cluster bundles. result, %@ error, %@", buf, 0x16u);
    }

    [*(a1 + 40) setObject:&off_10036A030 forKeyedSubscript:@"resultClusterBundleGenerationSuccess"];
    [*(a1 + 40) addEntriesFromDictionary:v6];
    v10 = *(a1 + 40);
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    if (v9)
    {
      *buf = 138412290;
      v28 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[GenerateClusterAndAnomalyBundles] Purged existing cluster bundles. Result, %@", buf, 0xCu);
    }

    v11 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerGenerateClusterAndAnomalyBundlesSaveClusterBundles", "", buf, 2u);
    }

    v12 = [[MOPerformanceMeasurement alloc] initWithName:@"GenerateClusterBundlesSaveEventBundles" measureRecentPeak:0];
    [(MOPerformanceMeasurement *)v12 startSession];
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = __97__MOEventBundleManager__processClusterBundles_withEmbeddings_onboardingStatus_result_andHandler___block_invoke_892;
    v22[3] = &unk_10033C238;
    v23 = v12;
    v15 = *(a1 + 40);
    v26 = *(a1 + 72);
    *&v16 = v15;
    *(&v16 + 1) = *(a1 + 48);
    v21 = v16;
    v17 = *(a1 + 56);
    v18 = *(a1 + 64);
    *&v19 = v17;
    *(&v19 + 1) = v18;
    v24 = v21;
    v25 = v19;
    v20 = v12;
    [v13 saveEventBundles:v14 handler:v22];
  }
}

void __97__MOEventBundleManager__processClusterBundles_withEmbeddings_onboardingStatus_result_andHandler___block_invoke_892(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v7))
  {
    LOWORD(v25) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerGenerateClusterAndAnomalyBundlesSaveClusterBundles", "", &v25, 2u);
  }

  [*(a1 + 32) endSession];
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v9)
    {
      v25 = 138412546;
      v26 = v6;
      v27 = 2112;
      v28 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[GenerateClusterAndAnomalyBundles] Error while saving cluster bundles, result, %@, error, %@", &v25, 0x16u);
    }

    [*(a1 + 40) setObject:&off_10036A030 forKeyedSubscript:@"resultClusterBundleGenerationSuccess"];
    [*(a1 + 40) addEntriesFromDictionary:v6];
    v10 = *(a1 + 40);
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    if (v9)
    {
      v25 = 138412546;
      v26 = v6;
      v27 = 2112;
      v28 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[GenerateClusterAndAnomalyBundles] Cluster bundle saved. result, %@, error, %@", &v25, 0x16u);
    }

    [*(a1 + 40) setObject:&off_10036A1B0 forKeyedSubscript:@"resultClusterBundleGenerationSuccess"];
    v11 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 40);
      v25 = 138412290;
      v26 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[GenerateClusterAndAnomalyBundles] Process completed. Result: %@", &v25, 0xCu);
    }

    v13 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v13))
    {
      LOWORD(v25) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerGenerateClusterAndAnomalyBundlesSubmitClusterBundleAnalytics", "", &v25, 2u);
    }

    v14 = [[MOPerformanceMeasurement alloc] initWithName:@"GenerateClusterBundlesSubmitClusterBundleAnalytics" measureRecentPeak:0];
    [(MOPerformanceMeasurement *)v14 startSession];
    v15 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[GenerateClusterAndAnomalyBundles] Start Biome donation for cluster bundles", &v25, 2u);
    }

    v16 = [*(a1 + 48) biomeManager];
    [v16 donateEvents:0 andBundles:*(a1 + 56) andOnboardingStatus:*(a1 + 64)];

    v17 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[GenerateClusterAndAnomalyBundles] Completed biome donation for cluster bundles.", &v25, 2u);
    }

    v18 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v18))
    {
      LOWORD(v25) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerGenerateClusterAndAnomalyBundlesSubmitClusterBundleAnalytics", "", &v25, 2u);
    }

    [(MOPerformanceMeasurement *)v14 endSession];
    if (+[MOPlatformInfo isInternalBuild])
    {
      v19 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "[GenerateClusterAndAnomalyBundles] Submit internal cluster bundle analytics", &v25, 2u);
      }

      v20 = [*(a1 + 48) bundleClusteringManager];
      v21 = *(a1 + 56);
      v22 = *(a1 + 64);
      v23 = +[NSDate date];
      [v20 submitClusterBundleInternalAnalytics:v21 withOnboardingStatus:v22 andSubmissionDate:v23];
    }

    v24 = *(a1 + 40);
    (*(*(a1 + 72) + 16))();
  }
}

void __97__MOEventBundleManager__processClusterBundles_withEmbeddings_onboardingStatus_result_andHandler___block_invoke_896(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v7))
  {
    LOWORD(v25) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerGenerateClusterAndAnomalyBundlesSaveClusterBundles", "", &v25, 2u);
  }

  [*(a1 + 32) endSession];
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v9)
    {
      v25 = 138412546;
      v26 = v6;
      v27 = 2112;
      v28 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[GenerateClusterAndAnomalyBundles] Error while saving cluster bundles, result, %@, error, %@", &v25, 0x16u);
    }

    [*(a1 + 40) setObject:&off_10036A030 forKeyedSubscript:@"resultClusterBundleGenerationSuccess"];
    [*(a1 + 40) addEntriesFromDictionary:v6];
    v10 = *(a1 + 40);
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    if (v9)
    {
      v25 = 138412546;
      v26 = v6;
      v27 = 2112;
      v28 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[GenerateClusterAndAnomalyBundles] Cluster bundle saved. result, %@, error, %@", &v25, 0x16u);
    }

    [*(a1 + 40) setObject:&off_10036A1B0 forKeyedSubscript:@"resultClusterBundleGenerationSuccess"];
    v11 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 40);
      v25 = 138412290;
      v26 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[GenerateClusterAndAnomalyBundles] Process completed. Result:%@", &v25, 0xCu);
    }

    v13 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v13))
    {
      LOWORD(v25) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerGenerateClusterAndAnomalyBundlesSubmitClusterBundleAnalytics", "", &v25, 2u);
    }

    v14 = [[MOPerformanceMeasurement alloc] initWithName:@"GenerateClusterBundlesSubmitClusterBundleAnalytics" measureRecentPeak:0];
    [(MOPerformanceMeasurement *)v14 startSession];
    v15 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Biome donation for cluster bundles", &v25, 2u);
    }

    v16 = [*(a1 + 48) biomeManager];
    [v16 donateEvents:0 andBundles:*(a1 + 56) andOnboardingStatus:*(a1 + 64)];

    v17 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "finished biome donation for cluster bundles.", &v25, 2u);
    }

    v18 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v18))
    {
      LOWORD(v25) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerGenerateClusterAndAnomalyBundlesSubmitClusterBundleAnalytics", "", &v25, 2u);
    }

    [(MOPerformanceMeasurement *)v14 endSession];
    if (+[MOPlatformInfo isInternalBuild])
    {
      v19 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Submit internal cluster bundle analytics", &v25, 2u);
      }

      v20 = [*(a1 + 48) bundleClusteringManager];
      v21 = *(a1 + 56);
      v22 = *(a1 + 64);
      v23 = +[NSDate date];
      [v20 submitClusterBundleInternalAnalytics:v21 withOnboardingStatus:v22 andSubmissionDate:v23];
    }

    v24 = *(a1 + 40);
    (*(*(a1 + 72) + 16))();
  }
}

- (void)_generateThematicSummarizationBundlesWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[GenerateThematicSummarizationBundles] Start thematic bundle generation", buf, 2u);
  }

  v6 = objc_opt_new();
  v7 = +[NSDate date];
  configurationManager = [(MOEventBundleManager *)self configurationManager];
  LODWORD(v9) = 1242802176;
  [configurationManager getFloatSettingForKey:@"ThematicSummarizationInputTimeWindow" withFallback:v9];
  v11 = v10;

  v12 = [v7 dateByAddingTimeInterval:-v11];
  v13 = [[NSDateInterval alloc] initWithStartDate:v12 endDate:v7];
  v14 = [[MOEventBundleFetchOptions alloc] initWithDateInterval:v13 ascending:1 limit:0 includeDeletedBundles:0 skipRanking:0];
  v15 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerGenerateThematicSummarizationBundlesFetchBundles", "", buf, 2u);
  }

  v16 = [[MOPerformanceMeasurement alloc] initWithName:@"GenerateThematicSummarizationBundlesFetchBundles" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v16 startSession];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke;
  v20[3] = &unk_10033C210;
  v21 = v16;
  selfCopy = self;
  v23 = v6;
  v24 = handlerCopy;
  v17 = v6;
  v18 = handlerCopy;
  v19 = v16;
  [(MOEventBundleManager *)self fetchEventBundlesWithOptions:v14 CompletionHandler:v20];
}

void __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerGenerateThematicSummarizationBundlesFetchBundles", "", buf, 2u);
  }

  [*(a1 + 32) endSession];
  v11 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  v12 = v11;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v62 = v9;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_cold_2();
    }

    v13 = objc_opt_new();
    v14 = objc_opt_new();
    v61 = [NSPredicate predicateWithFormat:@"bundleSubType IN %@", &off_10036DBF0];
    v15 = [v7 filteredArrayUsingPredicate:?];
    v80[0] = _NSConcreteStackBlock;
    v80[1] = 3221225472;
    v80[2] = __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_913;
    v80[3] = &unk_100335B80;
    v16 = v13;
    v81 = v16;
    v17 = v14;
    v82 = v17;
    v60 = v15;
    [v15 enumerateObjectsUsingBlock:v80];
    v18 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_cold_3(v16, v17);
    }

    v77[0] = _NSConcreteStackBlock;
    v77[1] = 3221225472;
    v77[2] = __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_914;
    v77[3] = &unk_1003362D8;
    v59 = v16;
    v78 = v59;
    v58 = v17;
    v79 = v58;
    v68 = [NSPredicate predicateWithBlock:v77];
    v19 = objc_opt_new();
    if (_os_feature_enabled_impl())
    {
      v20 = [NSSet setWithObjects:&off_10036A0C0, &off_10036A0D8, &off_10036A0F0, &off_10036A078, 0];

      v21 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_cold_5();
      }
    }

    else
    {
      v20 = [NSSet setWithObjects:&off_10036A0C0, &off_10036A078, 0];

      v21 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_cold_4();
      }
    }

    v57 = v20;
    v67 = [NSPredicate predicateWithFormat:@"bundleSuperType in %@ AND bundleSubType != %lu", v20, 106];
    v66 = [NSPredicate predicateWithFormat:@"isAggregatedAndSuppressed == NO AND summarizationGranularity != %lu", 2];
    LODWORD(v22) = 1045220557;
    [*(*(a1 + 40) + 64) getFloatSettingForKey:@"thematicSummaryExclusionGoodnessScoreThreshold" withFallback:v22];
    v75[0] = _NSConcreteStackBlock;
    v75[1] = 3221225472;
    v75[2] = __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_920;
    v75[3] = &__block_descriptor_36_e40_B24__0__MOEventBundle_8__NSDictionary_16l;
    v76 = v23;
    v65 = [NSPredicate predicateWithBlock:v75];
    v64 = [NSPredicate predicateWithFormat:@"isSensitive == %@", &__kCFBooleanFalse];
    v63 = [NSPredicate predicateWithBlock:&__block_literal_global_926];
    v56 = [NSPredicate predicateWithFormat:@"bundleSuperType == %luu", 5];
    v24 = [v7 filteredArrayUsingPredicate:?];
    if ([v24 count])
    {
      v25 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:0];
      v85 = v25;
      v26 = [NSArray arrayWithObjects:&v85 count:1];
      v27 = [v24 sortedArrayUsingDescriptors:v26];

      v28 = [v27 firstObject];
      v29 = [v28 suggestionID];
      v30 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_cold_6();
      }

      v24 = v27;
    }

    else
    {
      v29 = 0;
    }

    v31 = +[NSDate date];
    v32 = [NSDate dateWithTimeInterval:v31 sinceDate:-604800.0];

    v72[0] = _NSConcreteStackBlock;
    v72[1] = 3221225472;
    v72[2] = __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_932;
    v72[3] = &unk_1003362D8;
    v33 = v32;
    v73 = v33;
    v34 = v29;
    v74 = v34;
    v35 = [NSPredicate predicateWithBlock:v72];
    v36 = [v7 filteredArrayUsingPredicate:v68];
    v37 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_cold_7(v36);
    }

    v38 = [v36 filteredArrayUsingPredicate:v67];

    v39 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_cold_8(v38);
    }

    v40 = [v38 filteredArrayUsingPredicate:v66];

    v41 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_cold_9(v40);
    }

    v42 = [v40 filteredArrayUsingPredicate:v65];

    v43 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_cold_10(v42);
    }

    v44 = [v42 filteredArrayUsingPredicate:v64];

    v45 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_cold_11(v44);
    }

    v46 = [v44 filteredArrayUsingPredicate:v63];

    v47 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_cold_12(v46);
    }

    v48 = [v46 filteredArrayUsingPredicate:v35];

    v49 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_cold_13(v48);
    }

    v50 = [*(a1 + 40) bundleClusteringManager];
    v51 = [v50 getEmbeddingsFromBundles:v48 forEmbeddingType:1];

    v52 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      v53 = [v51 count];
      *buf = 134217984;
      v84 = v53;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "[GenerateThematicSummarizationBundles] Embedding extraction completed. embedding count=%lu. Attempting to run clustering alg", buf, 0xCu);
    }

    v54 = [*(a1 + 40) thematicSummarizationManager];
    v69[0] = _NSConcreteStackBlock;
    v69[1] = 3221225472;
    v69[2] = __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_934;
    v69[3] = &unk_1003377E0;
    v55 = *(a1 + 48);
    v69[4] = *(a1 + 40);
    v70 = v55;
    v71 = *(a1 + 56);
    [v54 generateThematicSummarizationBundles:v7 withEmbeddings:v51 handler:v69];

    v9 = v62;
  }
}

void __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_913(uint64_t a1, void *a2)
{
  v17 = a2;
  v3 = *(a1 + 32);
  v4 = [v17 suggestionID];
  v5 = [v4 UUIDString];
  [v3 addObject:v5];

  v6 = *(a1 + 40);
  v7 = [v17 bundleIdentifier];
  v8 = [v7 UUIDString];
  [v6 addObject:v8];

  v9 = [v17 subSuggestionIDs];
  v10 = [v9 count];

  if (v10)
  {
    v11 = *(a1 + 32);
    v12 = [v17 subSuggestionIDs];
    [v11 addObjectsFromArray:v12];
  }

  v13 = [v17 subBundleIDs];
  v14 = [v13 count];

  if (v14)
  {
    v15 = *(a1 + 40);
    v16 = [v17 subBundleIDs];
    [v15 addObjectsFromArray:v16];
  }
}

uint64_t __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_914(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 suggestionID];
  v6 = [v5 UUIDString];
  if ([v4 containsObject:v6])
  {
    v7 = 0;
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = [v3 bundleIdentifier];
    v10 = [v9 UUIDString];
    v7 = [v8 containsObject:v10] ^ 1;
  }

  return v7;
}

uint64_t __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_920(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 rankingDictionary];
  v5 = [v4 objectForKeyedSubscript:@"visibilityCategoryForUI"];
  v6 = [v5 unsignedIntValue];

  v7 = [v3 rankingDictionary];
  v8 = [v7 objectForKeyedSubscript:@"isBundleOrSubBundlesSelectedOrQuickAdded"];

  if (v8)
  {
    v9 = [v3 rankingDictionary];
    v10 = [v9 objectForKeyedSubscript:@"isBundleOrSubBundlesSelectedOrQuickAdded"];
    v11 = [v10 BOOLValue];

    v12 = v11 ^ 1;
  }

  else
  {
    v12 = 1;
  }

  v13 = [v3 rankingDictionary];
  v14 = [v13 objectForKeyedSubscript:@"bundleGoodnessScore"];
  [v14 floatValue];
  v16 = v15;

  if (v6 == 4)
  {
    v17 = 0;
  }

  else if (v16 <= *(a1 + 32))
  {
    v17 = v12;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

BOOL __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_2(id a1, MOEventBundle *a2, NSDictionary *a3)
{
  v4 = a2;
  v5 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_3;
  v11[3] = &unk_10033C2A0;
  v11[4] = &v12;
  [(MOEventBundle *)v4 withResourcesUsingBlock:v11];
  v6 = [(MOEventBundle *)v4 photoTraits];
  v7 = [MOMetaDataCurationUtility selectBirthdayFromPhotoTraits:v6];

  if (v7)
  {
    v8 = [MOMetaDataCurationUtility getPersonFromBirthdayPhotoTrait:v7 eventBundle:v4];
    if (v8)
    {
      *(v13 + 24) = 1;
    }
  }

  v9 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return (v9 & 1) == 0;
}

id __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_3(uint64_t a1, void *a2)
{
  result = [a2 type];
  if (result == 17)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

uint64_t __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_932(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_2_933;
  v14[3] = &unk_10033C2A0;
  v14[4] = &v15;
  [v5 withResourcesUsingBlock:v14];
  v7 = [v5 startDate];
  v8 = [v7 isAfterDate:*(a1 + 32)];

  if (*(a1 + 40))
  {
    if ([v5 bundleSuperType] == 5)
    {
      v9 = [v5 suggestionID];
      v10 = [v9 isEqual:*(a1 + 40)] ^ 1;
    }

    else
    {
      LOBYTE(v10) = 0;
    }

    v12 = [v5 bundleSuperType] != 5;
    if ((v12 & v8) == 1)
    {
      LOBYTE(v12) = *(v16 + 24) ^ 1;
    }

    v11 = v12 | v10;
  }

  else if (v8)
  {
    v11 = *(v16 + 24) ^ 1;
  }

  else
  {
    v11 = 1;
  }

  _Block_object_dispose(&v15, 8);

  return v11 & 1;
}

void __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_2_933(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type] == 2 || objc_msgSend(v3, "type") == 3)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_934(id *a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = [[MOEventBundleFetchOptions alloc] initWithDateInterval:0 ascending:1 limit:0 includeDeletedBundles:1 skipRanking:1 interfaceType:16];
    v5 = [a1[4] eventBundleStore];
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_2_935;
    v13 = &unk_10033BC50;
    v14 = a1[4];
    v6 = v3;
    v15 = v6;
    v16 = a1[5];
    v17 = a1[6];
    [v5 fetchEventBundleWithOptions:v4 CompletionHandler:&v10];

    v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v6 count];
      *buf = 134217984;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[GenerateThematicSummarizationBundles] thematic summary bundle generated. Thematic bundle count=%lu.", buf, 0xCu);
    }
  }

  else
  {
    v9 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[GenerateThematicSummarizationBundles] No thematic summary bundle was detected.", buf, 2u);
    }

    v7 = objc_opt_new();
    [v7 setObject:&off_10036A1B0 forKeyedSubscript:@"resultThematicSummaryBundleGenerationSuccess"];
    [v7 setObject:&off_10036A030 forKeyedSubscript:@"resultNumberOfThematicSummaryBundles"];
    (*(a1[6] + 2))();
  }
}

void __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_2_935(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_2_935_cold_1(v3);
  }

  if ([v3 count])
  {
    v5 = [*(a1 + 32) thematicSummarizationManager];
    [v5 updateSuggestionIDsForNewThematicSummarizationBundles:*(a1 + 40) withExistingThematicSummarizationBundles:v3];

    v6 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerGenerateThematicSummarizationBundlesRemoveExistingBundles", "", buf, 2u);
    }

    v7 = [[MOPerformanceMeasurement alloc] initWithName:@"GenerateThematicSummarizationBundlesRemoveExistingBundles" measureRecentPeak:0];
    [(MOPerformanceMeasurement *)v7 startSession];
    v8 = [*(a1 + 32) eventBundleStore];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_939;
    v28[3] = &unk_10033C2C8;
    v9 = &v29;
    v29 = v7;
    v10 = &v30;
    v11 = &v31.i64[1];
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    v23 = *(a1 + 32);
    v14 = v23.i64[1];
    v15.i64[0] = v12;
    v15.i64[1] = v13;
    v16 = vzip2q_s64(v23, v15);
    v15.i64[1] = v23.i64[0];
    v30 = v15;
    v31 = v16;
    v17 = v7;
    [v8 removeEventBundles:v3 CompletionHandler:v28];
  }

  else
  {
    v18 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "[GenerateThematicSummarizationBundles] no existing bundles in current DB. saving new thematic bundles", buf, 2u);
    }

    v19 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerGenerateThematicSummarizationBundlesSaveBundles", "", buf, 2u);
    }

    v20 = [[MOPerformanceMeasurement alloc] initWithName:@"GenerateThematicSummarizationBundlesSaveBundles" measureRecentPeak:0];
    [(MOPerformanceMeasurement *)v20 startSession];
    v21 = *(a1 + 32);
    v22 = *(a1 + 40);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_948;
    v24[3] = &unk_10033BC28;
    v9 = &v25;
    v25 = v20;
    v10 = &v26;
    v26 = *(a1 + 48);
    v11 = &v27;
    v27 = *(a1 + 56);
    v17 = v20;
    [v21 saveEventBundles:v22 handler:v24];
  }
}

void __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_939(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerGenerateThematicSummarizationBundlesRemoveExistingBundles", "", buf, 2u);
  }

  [a1[4] endSession];
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v9)
    {
      *buf = 138412546;
      v25 = v6;
      v26 = 2112;
      v27 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[GenerateThematicSummarizationBundles] Error while removing existing thematicSummary bundles. result, %@ error, %@", buf, 0x16u);
    }

    [a1[5] setObject:&off_10036A030 forKeyedSubscript:@"resultClusterBundleGenerationSuccess"];
    [a1[5] addEntriesFromDictionary:v6];
    v10 = a1[5];
    (*(a1[8] + 2))();
  }

  else
  {
    if (v9)
    {
      *buf = 138412290;
      v25 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[GenerateThematicSummarizationBundles] Removed existing thematic bundles. Result, %@", buf, 0xCu);
    }

    v11 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerGenerateThematicSummarizationBundlesPurgeExistingBundles", "", buf, 2u);
    }

    v12 = [[MOPerformanceMeasurement alloc] initWithName:@"GenerateThematicSummarizationBundlesPurgeExistingBundles" measureRecentPeak:0];
    [(MOPerformanceMeasurement *)v12 startSession];
    v13 = [a1[6] eventBundleStore];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_943;
    v20[3] = &unk_10033C2C8;
    v21 = v12;
    v14 = a1[5];
    v15 = a1[8];
    *&v16 = v14;
    *(&v16 + 1) = a1[6];
    v19 = v16;
    *&v17 = a1[7];
    *(&v17 + 1) = v15;
    v22 = v19;
    v23 = v17;
    v18 = v12;
    [v13 purgeDeletedEventBundlesWithCompletionHandler:v20];
  }
}

void __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_943(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerGenerateThematicSummarizationBundlesPurgeExistingBundles", "", buf, 2u);
  }

  [*(a1 + 32) endSession];
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v9)
    {
      *buf = 138412546;
      v21 = v6;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[GenerateThematicSummarizationBundles] Error while purging existing cluster bundles. result, %@ error, %@", buf, 0x16u);
    }

    [*(a1 + 40) setObject:&off_10036A030 forKeyedSubscript:@"resultClusterBundleGenerationSuccess"];
    [*(a1 + 40) addEntriesFromDictionary:v6];
    v10 = *(a1 + 40);
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    if (v9)
    {
      *buf = 138412290;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[GenerateThematicSummarizationBundles] Purged existing cluster bundles. Result, %@", buf, 0xCu);
    }

    v11 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventBundleManagerGenerateThematicSummarizationBundlesSaveBundles", "", buf, 2u);
    }

    v12 = [[MOPerformanceMeasurement alloc] initWithName:@"GenerateThematicSummarizationBundlesSaveBundles" measureRecentPeak:0];
    [(MOPerformanceMeasurement *)v12 startSession];
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_947;
    v16[3] = &unk_10033BC28;
    v17 = v12;
    v18 = *(a1 + 40);
    v19 = *(a1 + 64);
    v15 = v12;
    [v13 saveEventBundles:v14 handler:v16];
  }
}

void __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_947(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v7))
  {
    LOWORD(v15) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerGenerateThematicSummarizationBundlesSaveBundles", "", &v15, 2u);
  }

  [*(a1 + 32) endSession];
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v9)
    {
      v15 = 138412546;
      v16 = v6;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[GenerateThematicSummarizationBundles] Error while saving cluster bundles, result, %@, error, %@", &v15, 0x16u);
    }

    [*(a1 + 40) setObject:&off_10036A030 forKeyedSubscript:@"resultClusterBundleGenerationSuccess"];
    [*(a1 + 40) addEntriesFromDictionary:v6];
    v10 = *(a1 + 40);
    v11 = *(*(a1 + 48) + 16);
  }

  else
  {
    if (v9)
    {
      v15 = 138412546;
      v16 = v6;
      v17 = 2112;
      v18 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[GenerateThematicSummarizationBundles] Thematic summary bundle saved. result, %@, error, %@", &v15, 0x16u);
    }

    [*(a1 + 40) setObject:&off_10036A1B0 forKeyedSubscript:@"resultClusterBundleGenerationSuccess"];
    v12 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 40);
      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[GenerateThematicSummarizationBundles] Process completed. Result: %@", &v15, 0xCu);
    }

    v14 = *(a1 + 40);
    v11 = *(*(a1 + 48) + 16);
  }

  v11();
}

void __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_948(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v7))
  {
    LOWORD(v15) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventBundleManagerGenerateThematicSummarizationBundlesSaveBundles", "", &v15, 2u);
  }

  [*(a1 + 32) endSession];
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v9)
    {
      v15 = 138412546;
      v16 = v6;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[GenerateThematicSummarizationBundles] Error while saving cluster bundles, result, %@, error, %@", &v15, 0x16u);
    }

    [*(a1 + 40) setObject:&off_10036A030 forKeyedSubscript:@"resultClusterBundleGenerationSuccess"];
    [*(a1 + 40) addEntriesFromDictionary:v6];
    v10 = *(a1 + 40);
    v11 = *(*(a1 + 48) + 16);
  }

  else
  {
    if (v9)
    {
      v15 = 138412546;
      v16 = v6;
      v17 = 2112;
      v18 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[GenerateThematicSummarizationBundles] Thematic summary bundle saved. result, %@, error, %@", &v15, 0x16u);
    }

    [*(a1 + 40) setObject:&off_10036A1B0 forKeyedSubscript:@"resultClusterBundleGenerationSuccess"];
    v12 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 40);
      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[GenerateThematicSummarizationBundles] Process completed. Result:%@", &v15, 0xCu);
    }

    v14 = *(a1 + 40);
    v11 = *(*(a1 + 48) + 16);
  }

  v11();
}

- (void)_generatePersonalizedReflectionBundlesWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[NSDate date];
  v6 = [v5 dateByAddingTimeInterval:-2419200.0];
  v7 = [[NSDateInterval alloc] initWithStartDate:v6 endDate:v5];
  v8 = [[MOEventBundleFetchOptions alloc] initWithDateInterval:v7 ascending:1 limit:0 includeDeletedBundles:0 skipRanking:0];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __74__MOEventBundleManager__generatePersonalizedReflectionBundlesWithHandler___block_invoke;
  v10[3] = &unk_10033C318;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(MOEventBundleManager *)self fetchEventBundlesWithOptions:v8 CompletionHandler:v10];
}

void __74__MOEventBundleManager__generatePersonalizedReflectionBundlesWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __74__MOEventBundleManager__generatePersonalizedReflectionBundlesWithHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __74__MOEventBundleManager__generatePersonalizedReflectionBundlesWithHandler___block_invoke_cold_2();
    }

    v9 = [NSPredicate predicateWithFormat:@"bundleSuperType == %lu", 11];
    v10 = [v5 filteredArrayUsingPredicate:v9];
    v11 = [*(a1 + 32) eventBundleStore];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = __74__MOEventBundleManager__generatePersonalizedReflectionBundlesWithHandler___block_invoke_952;
    v14[3] = &unk_10033C2F0;
    v17 = *(a1 + 40);
    v12 = v5;
    v13 = *(a1 + 32);
    v15 = v12;
    v16 = v13;
    [v11 removeEventBundles:v10 CompletionHandler:v14];
  }
}

void __74__MOEventBundleManager__generatePersonalizedReflectionBundlesWithHandler___block_invoke_952(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __74__MOEventBundleManager__generatePersonalizedReflectionBundlesWithHandler___block_invoke_952_cold_1();
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v5 = [NSSet setWithObjects:&off_10036A0C0, &off_10036A0D8, &off_10036A0F0, 0];
    v6 = [NSPredicate predicateWithFormat:@"bundleSuperType in %@", v5];
    v7 = [NSPredicate predicateWithFormat:@"isAggregatedAndSuppressed == NO AND summarizationGranularity != %lu", 2];
    v16[0] = v6;
    v16[1] = v7;
    v8 = [NSArray arrayWithObjects:v16 count:2];
    v9 = [NSCompoundPredicate andPredicateWithSubpredicates:v8];

    v10 = [*(a1 + 32) filteredArrayUsingPredicate:v9];
    [v10 count];
    v11 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __74__MOEventBundleManager__generatePersonalizedReflectionBundlesWithHandler___block_invoke_952_cold_2();
    }

    v12 = [[MOPersonalizedReflectionPromptManager alloc] initWithUniverse:*(*(a1 + 40) + 8)];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = __74__MOEventBundleManager__generatePersonalizedReflectionBundlesWithHandler___block_invoke_954;
    v14[3] = &unk_10033BEE0;
    v13 = *(a1 + 48);
    v14[4] = *(a1 + 40);
    v15 = v13;
    [(MOPersonalizedReflectionPromptManager *)v12 generateReflectionBundlesWithBundles:v10 handler:v14];
  }
}

void __74__MOEventBundleManager__generatePersonalizedReflectionBundlesWithHandler___block_invoke_954(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = [*(a1 + 32) eventBundleStore];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = __74__MOEventBundleManager__generatePersonalizedReflectionBundlesWithHandler___block_invoke_2;
    v8[3] = &unk_100336198;
    v9 = *(a1 + 40);
    [v7 storeEventBundles:v5 CompletionHandler:v8];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)_expireOutdatedNotificationsWithHandler:(id)handler
{
  handlerCopy = handler;
  notificationCenter = [(MOEventBundleManager *)self notificationCenter];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __64__MOEventBundleManager__expireOutdatedNotificationsWithHandler___block_invoke;
  v7[3] = &unk_10033C368;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [notificationCenter getDeliveredNotificationsWithCompletionHandler:v7];
}

void __64__MOEventBundleManager__expireOutdatedNotificationsWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v22 = a1;
  v23 = a2;
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [v23 count];
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[checkNotificationExpiration] Delivered notification count: %lu", &buf, 0xCu);
  }

  if (![v23 count])
  {
    (*(*(v22 + 40) + 16))();
    goto LABEL_22;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = v23;
  v4 = [v3 countByEnumeratingWithState:&v29 objects:v36 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v30;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v29 + 1) + 8 * i);
        v9 = [v8 request];
        v10 = [v9 identifier];
        v11 = [v10 isEqualToString:@"moments-time-to-write"];

        if (v11)
        {
          v12 = [v8 request];
          v13 = [v12 content];
          v14 = [v13 userInfo];
          v15 = [v14 objectForKeyedSubscript:@"suggestionID"];

          v5 = v15;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v29 objects:v36 count:16];
    }

    while (v4);

    if (v5)
    {
      v16 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v5;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[checkNotificationExpiration] Notification is delivered for suggestionID: %@", &buf, 0xCu);
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v34 = 0x2020000000;
      v35 = 1;
      v17 = [[MOEventBundleFetchOptions alloc] initWithDateInterval:0 ascending:0 limit:0 includeDeletedBundles:0 skipRanking:0];
      v18 = [*(v22 + 32) eventBundleStore];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = __64__MOEventBundleManager__expireOutdatedNotificationsWithHandler___block_invoke_958;
      v24[3] = &unk_10033C340;
      v27 = *(v22 + 40);
      v19 = v5;
      p_buf = &buf;
      v20 = *(v22 + 32);
      v25 = v19;
      v26 = v20;
      [v18 fetchEventBundleWithOptions:v17 CompletionHandler:v24];

      _Block_object_dispose(&buf, 8);
      goto LABEL_22;
    }
  }

  else
  {
  }

  v21 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[checkNotificationExpiration] No delivered suggestion notification", &buf, 2u);
  }

  (*(*(v22 + 40) + 16))();
LABEL_22:
}

void __64__MOEventBundleManager__expireOutdatedNotificationsWithHandler___block_invoke_958(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || ![v5 count])
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v24 = 0;
    v25 = v5;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v26 objects:v35 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v26 + 1) + 8 * i);
          v13 = [v12 suggestionID];
          v14 = [v13 UUIDString];
          v15 = [v14 isEqualToString:*(a1 + 32)];

          if (v15)
          {
            v16 = [v12 rankingDictionary];
            v17 = [v16 objectForKeyedSubscript:@"visibilityCategoryForUI"];

            v18 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v19 = *(a1 + 32);
              *buf = 138412546;
              v32 = v19;
              v33 = 2112;
              v34 = v17;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "[checkNotificationExpiration] SuggestionID found: %@, uiVisibility: %@", buf, 0x16u);
            }

            if ([v17 intValue] == 1 || objc_msgSend(v17, "intValue") == 2)
            {
              *(*(*(a1 + 56) + 8) + 24) = 0;

              goto LABEL_19;
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v26 objects:v35 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:

    v6 = v24;
    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      v20 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(a1 + 32);
        *buf = 138412290;
        v32 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[checkNotificationExpiration] Removing expired notification, suggestionID: %@", buf, 0xCu);
      }

      v22 = [*(a1 + 40) notificationCenter];
      v30 = @"moments-time-to-write";
      v23 = [NSArray arrayWithObjects:&v30 count:1];
      [v22 removeDeliveredNotificationsWithIdentifiers:v23];
    }

    (*(*(a1 + 48) + 16))();
    v5 = v25;
  }
}

- (void)initWithUniverse:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithUniverse:.cold.3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithUniverse:.cold.4()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)bundleEventsWithRefreshVariant:andHandler:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __67__MOEventBundleManager__bundleEventsWithRefreshVariant_andHandler___block_invoke_2_cold_1(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v2, v3, "Fetching events for bundling failed. reason, %@", v4, v5, v6, v7, v8);
}

- (void)_filterPreOnboardedVisitEvents:(uint64_t)a1 handler:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_2_1(a1 a2)];
  *v3 = 134217984;
  *v2 = v4;
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);
}

- (void)_filterPreOnboardedVisitEvents:(uint64_t)a1 handler:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_2_1(a1 a2)];
  v5 = [v4 isPreOnboardedVisit];
  *v3 = 67109120;
  *v2 = v5;
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 8u);
}

- (void)_filterPreOnboardedVisitEvents:(uint64_t)a1 handler:(uint64_t)a2 .cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_2_1(a1 a2)];
  v5 = [v4 isPreOnboardedVisit];
  *v3 = 67109120;
  *v2 = v5;
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 8u);
}

- (void)submitMOEventData:(NSObject *)a3 startDate:endDate:subDate:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 eventIdentifier];
  OUTLINED_FUNCTION_1();
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Error was issued during raw event submission with event id: %@. Error: %@", v6, 0x16u);
}

- (void)submitEventBundleInternalAnalytics:(uint8_t *)buf withSubmissionDate:(void *)a2 withRefreshVariant:(os_log_t)log .cold.1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 138412290;
  *a2 = @"com.apple.Moments.MOEventBundle";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "CA payload (%@) is nil. Skip submission", buf, 0xCu);
}

- (void)fetchEventBundlesWithOptions:CompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __72__MOEventBundleManager__fetchEventBundlesWithOptions_CompletionHandler___block_invoke_759_cold_1(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v2, v3, "fetch event bundles hit error, %@", v4, v5, v6, v7, v8);
}

- (void)cleanUpEventBundlesWithRefreshVariant:andHandler:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)clearEventBundlesWithRefreshVariant:andHandler:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __69__MOEventBundleManager__generateClusterAndAnomalyBundlesWithHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2_2();
  [v1 count];
  v2 = [v0 valueForKeyPath:@"@min.startDate"];
  v3 = [v0 valueForKeyPath:@"@max.startDate"];
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

void __97__MOEventBundleManager__processClusterBundles_withEmbeddings_onboardingStatus_result_andHandler___block_invoke_880_cold_1(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2_2();
  [v1 count];
  v2 = [v0 valueForKeyPath:@"@min.startDate"];
  v3 = [v0 valueForKeyPath:@"@max.startDate"];
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

void __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_cold_3(void *a1, void *a2)
{
  [a1 count];
  [a2 count];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_cold_6()
{
  OUTLINED_FUNCTION_2_2();
  v2 = [v1 suggestionID];
  v8 = [v0 startDate];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_cold_7(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_cold_8(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_cold_9(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_cold_10(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_cold_11(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_cold_12(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_cold_13(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __73__MOEventBundleManager__generateThematicSummarizationBundlesWithHandler___block_invoke_2_935_cold_1(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __74__MOEventBundleManager__generatePersonalizedReflectionBundlesWithHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2_2();
  [v1 count];
  v2 = [v0 valueForKeyPath:@"@min.startDate"];
  v3 = [v0 valueForKeyPath:@"@max.startDate"];
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

@end