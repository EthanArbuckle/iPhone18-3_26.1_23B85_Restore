@interface MOEventManager
- (MOEventManager)initWithUniverse:(id)a3;
- (MOHealthKitManager)healthKitManager;
- (MOLifeEventManager)lifeEventManager;
- (MOMotionManager)motionManager;
- (MONowPlayingMediaManager)nowPlayingMediaManager;
- (MOPeopleDiscoveryManager)peopleDiscoveryManager;
- (MOPhotoManager)photoManager;
- (MOProactiveTravelManager)proactiveTravelManager;
- (MORoutineServiceManager)routineServiceManager;
- (MOScreenTimeManager)screenTimeManager;
- (MOSharedWithYouManager)sharedWithYouManager;
- (MOSignificantContactManager)significantContactManager;
- (MOSpotlightManager)spotlightManager;
- (MOSuggestedEventManager)suggestedEventManager;
- (MOWeatherManager)weatherManager;
- (id)_getEarliestDateForCategory_postlaunch:(unint64_t)a3;
- (id)_getEarliestDateForCategory_prelaunch:(unint64_t)a3;
- (id)mergeEventArraysFromDict:(id)a3;
- (id)splitEventArrayByCategory:(id)a3;
- (void)_cleanUpEventsWithRefreshVariant:(unint64_t)a3 andHandler:(id)a4;
- (void)_clearEvents;
- (void)_collectCompleteEventsBetweenStartDate:(id)a3 endDate:(id)a4 refreshVariant:(unint64_t)a5 withStoredEvents:(id)a6 handler:(id)a7;
- (void)_collectEventsWithRefreshVariant:(unint64_t)a3 andHandler:(id)a4;
- (void)_fetchEventsFromCacheWithOptions:(id)a3 CompletionHandler:(id)a4;
- (void)_fetchEventsFromDBAndRehydrateEventsWithOptions:(id)a3 CompletionHandler:(id)a4;
- (void)_fetchEventsWithOptions:(id)a3 CompletionHandler:(id)a4;
- (void)_rehydrateEvents:(id)a3 withHandler:(id)a4;
- (void)_rehydrateEventsBySingleSource:(id)a3 handler:(id)a4;
- (void)cleanUpEventsWithRefreshVariant:(unint64_t)a3 andHandler:(id)a4;
- (void)clearCache;
- (void)clearEventsWithRefreshVariant:(unint64_t)a3 andHandler:(id)a4;
- (void)collectEventsWithRefreshVariant:(unint64_t)a3 andHandler:(id)a4;
- (void)fetchEventsWithOptions:(id)a3 CompletionHandler:(id)a4;
- (void)rehydrateEvents:(id)a3 withHandler:(id)a4;
- (void)runAnalyticsWithRefreshVariant:(unint64_t)a3 andHandler:(id)a4;
- (void)storeEvents:(id)a3 handler:(id)a4;
@end

@implementation MOEventManager

- (MOEventManager)initWithUniverse:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->fUniverse, a3);
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_create("collect", v7);
  collectQueue = self->collectQueue;
  self->collectQueue = v8;

  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [v6 getService:v11];

  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = [v6 getService:v14];

  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v18 = [v6 getService:v17];

  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v21 = [v6 getService:v20];

  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  v24 = [v6 getService:v23];

  if (!v18)
  {
    v30 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [MORoutineServiceManager initWithUniverse:];
    }

    v31 = +[NSAssertionHandler currentHandler];
    v32 = v31;
    v33 = @"Invalid parameter not satisfying: eventStore";
    v34 = a2;
    v35 = self;
    v36 = 125;
    goto LABEL_20;
  }

  if (!v12)
  {
    v37 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [MOPhotoManager initWithUniverse:];
    }

    v31 = +[NSAssertionHandler currentHandler];
    v32 = v31;
    v33 = @"Invalid parameter not satisfying: defaultsManager";
    v34 = a2;
    v35 = self;
    v36 = 127;
    goto LABEL_20;
  }

  if (!v15)
  {
    v38 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [MOEventStore initWithUniverse:];
    }

    v31 = +[NSAssertionHandler currentHandler];
    v32 = v31;
    v33 = @"Invalid parameter not satisfying: configurationManager";
    v34 = a2;
    v35 = self;
    v36 = 128;
    goto LABEL_20;
  }

  if (!v24)
  {
    v39 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      [MOEventManager initWithUniverse:];
    }

    v31 = +[NSAssertionHandler currentHandler];
    v32 = v31;
    v33 = @"Invalid parameter not satisfying: patternManager";
    v34 = a2;
    v35 = self;
    v36 = 129;
LABEL_20:
    [v31 handleFailureInMethod:v34 object:v35 file:@"MOEventManager.m" lineNumber:v36 description:v33];

    v29 = 0;
    goto LABEL_21;
  }

  v41.receiver = self;
  v41.super_class = MOEventManager;
  v25 = [(MOEventManager *)&v41 init];
  if (v25)
  {
    v26 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v27 = dispatch_queue_create("MOEventManager", v26);
    queue = v25->_queue;
    v25->_queue = v27;

    objc_storeStrong(&v25->_defaultsManager, v12);
    objc_storeStrong(&v25->_eventStore, v18);
    objc_storeStrong(&v25->_configurationManager, v15);
    objc_storeStrong(&v25->_patternManager, v24);
    objc_storeStrong(&v25->_eventBundleStore, v21);
  }

  self = v25;
  v29 = self;
LABEL_21:

  return v29;
}

- (MOPhotoManager)photoManager
{
  photoManager = self->_photoManager;
  if (!photoManager)
  {
    fUniverse = self->fUniverse;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [(MODaemonUniverse *)fUniverse getService:v6];
    v8 = self->_photoManager;
    self->_photoManager = v7;

    photoManager = self->_photoManager;
  }

  return photoManager;
}

- (MORoutineServiceManager)routineServiceManager
{
  routineServiceManager = self->_routineServiceManager;
  if (!routineServiceManager)
  {
    fUniverse = self->fUniverse;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [(MODaemonUniverse *)fUniverse getService:v6];
    v8 = self->_routineServiceManager;
    self->_routineServiceManager = v7;

    routineServiceManager = self->_routineServiceManager;
  }

  return routineServiceManager;
}

- (MOHealthKitManager)healthKitManager
{
  healthKitManager = self->_healthKitManager;
  if (!healthKitManager)
  {
    fUniverse = self->fUniverse;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [(MODaemonUniverse *)fUniverse getService:v6];
    v8 = self->_healthKitManager;
    self->_healthKitManager = v7;

    healthKitManager = self->_healthKitManager;
  }

  return healthKitManager;
}

- (MOSharedWithYouManager)sharedWithYouManager
{
  sharedWithYouManager = self->_sharedWithYouManager;
  if (!sharedWithYouManager)
  {
    fUniverse = self->fUniverse;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [(MODaemonUniverse *)fUniverse getService:v6];
    v8 = self->_sharedWithYouManager;
    self->_sharedWithYouManager = v7;

    sharedWithYouManager = self->_sharedWithYouManager;
  }

  return sharedWithYouManager;
}

- (MOSuggestedEventManager)suggestedEventManager
{
  suggestedEventManager = self->_suggestedEventManager;
  if (!suggestedEventManager)
  {
    fUniverse = self->fUniverse;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [(MODaemonUniverse *)fUniverse getService:v6];
    v8 = self->_suggestedEventManager;
    self->_suggestedEventManager = v7;

    suggestedEventManager = self->_suggestedEventManager;
  }

  return suggestedEventManager;
}

- (MOProactiveTravelManager)proactiveTravelManager
{
  proactiveTravelManager = self->_proactiveTravelManager;
  if (!proactiveTravelManager)
  {
    fUniverse = self->fUniverse;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [(MODaemonUniverse *)fUniverse getService:v6];
    v8 = self->_proactiveTravelManager;
    self->_proactiveTravelManager = v7;

    proactiveTravelManager = self->_proactiveTravelManager;
  }

  return proactiveTravelManager;
}

- (MONowPlayingMediaManager)nowPlayingMediaManager
{
  nowPlayingMediaManager = self->_nowPlayingMediaManager;
  if (!nowPlayingMediaManager)
  {
    fUniverse = self->fUniverse;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [(MODaemonUniverse *)fUniverse getService:v6];
    v8 = self->_nowPlayingMediaManager;
    self->_nowPlayingMediaManager = v7;

    nowPlayingMediaManager = self->_nowPlayingMediaManager;
  }

  return nowPlayingMediaManager;
}

- (MOSignificantContactManager)significantContactManager
{
  significantContactManager = self->_significantContactManager;
  if (!significantContactManager)
  {
    fUniverse = self->fUniverse;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [(MODaemonUniverse *)fUniverse getService:v6];
    v8 = self->_significantContactManager;
    self->_significantContactManager = v7;

    significantContactManager = self->_significantContactManager;
  }

  return significantContactManager;
}

- (MOPeopleDiscoveryManager)peopleDiscoveryManager
{
  peopleDiscoveryManager = self->_peopleDiscoveryManager;
  if (!peopleDiscoveryManager)
  {
    fUniverse = self->fUniverse;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [(MODaemonUniverse *)fUniverse getService:v6];
    v8 = self->_peopleDiscoveryManager;
    self->_peopleDiscoveryManager = v7;

    peopleDiscoveryManager = self->_peopleDiscoveryManager;
  }

  return peopleDiscoveryManager;
}

- (MOWeatherManager)weatherManager
{
  weatherManager = self->_weatherManager;
  if (!weatherManager)
  {
    fUniverse = self->fUniverse;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [(MODaemonUniverse *)fUniverse getService:v6];
    v8 = self->_weatherManager;
    self->_weatherManager = v7;

    weatherManager = self->_weatherManager;
  }

  return weatherManager;
}

- (MOLifeEventManager)lifeEventManager
{
  lifeEventManager = self->_lifeEventManager;
  if (!lifeEventManager)
  {
    fUniverse = self->fUniverse;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [(MODaemonUniverse *)fUniverse getService:v6];
    v8 = self->_lifeEventManager;
    self->_lifeEventManager = v7;

    lifeEventManager = self->_lifeEventManager;
  }

  return lifeEventManager;
}

- (MOMotionManager)motionManager
{
  motionManager = self->_motionManager;
  if (!motionManager)
  {
    fUniverse = self->fUniverse;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [(MODaemonUniverse *)fUniverse getService:v6];
    v8 = self->_motionManager;
    self->_motionManager = v7;

    motionManager = self->_motionManager;
  }

  return motionManager;
}

- (MOScreenTimeManager)screenTimeManager
{
  screenTimeManager = self->_screenTimeManager;
  if (!screenTimeManager)
  {
    fUniverse = self->fUniverse;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [(MODaemonUniverse *)fUniverse getService:v6];
    v8 = self->_screenTimeManager;
    self->_screenTimeManager = v7;

    screenTimeManager = self->_screenTimeManager;
  }

  return screenTimeManager;
}

- (MOSpotlightManager)spotlightManager
{
  spotlightManager = self->_spotlightManager;
  if (!spotlightManager)
  {
    fUniverse = self->fUniverse;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [(MODaemonUniverse *)fUniverse getService:v6];
    v8 = self->_spotlightManager;
    self->_spotlightManager = v7;

    spotlightManager = self->_spotlightManager;
  }

  return spotlightManager;
}

- (id)_getEarliestDateForCategory_prelaunch:(unint64_t)a3
{
  v3 = +[NSDate date];
  v4 = [NSDate dateWithTimeInterval:v3 sinceDate:-2419200.0];

  return v4;
}

- (id)_getEarliestDateForCategory_postlaunch:(unint64_t)a3
{
  v3 = a3 - 1;
  if (a3 - 1 <= 0x18 && ((0x1F7F33Fu >> v3) & 1) != 0)
  {
    v4 = off_10033FC80[v3];
    v5 = [(MOEventManager *)self defaultsManager];
    v6 = [v5 objectForKey:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)clearEventsWithRefreshVariant:(unint64_t)a3 andHandler:(id)a4
{
  v6 = a4;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v8 = v7;
  if (a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v20 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, a3, "EventManagerClearEvents", "", v20, 2u);
  }

  v9 = [[MOPerformanceMeasurement alloc] initWithName:@"ClearEvents" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v9 startSession];
  if (a3 == 0xFFFF)
  {
    v10 = [(MOEventManager *)self photoManager];
    [v10 deletePhotoMemoryPlistFile];
  }

  v11 = [(MOEventManager *)self eventStore];
  v12 = [v11 persistenceManager];
  v13 = [v12 availability];

  v14 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
  v15 = v14;
  if (v13 == 2)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "clear event since datastore is available", v20, 2u);
    }

    [(MOEventManager *)self _clearEvents];
    if (v6)
    {
      v6[2](v6, 0, &__NSDictionary0__struct);
    }
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [MOEventManager clearEventsWithRefreshVariant:andHandler:];
    }

    if (v6)
    {
      v21 = NSLocalizedDescriptionKey;
      v22 = @"[clearEventsWithRefreshVariant] database is not available";
      v16 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v17 = [NSError errorWithDomain:@"MOErrorDomain" code:16 userInfo:v16];

      (v6)[2](v6, v17, &__NSDictionary0__struct);
    }
  }

  v18 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v19 = v18;
  if (a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *v20 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_END, a3, "EventManagerClearEvents", "", v20, 2u);
  }

  [(MOPerformanceMeasurement *)v9 endSession];
}

- (void)_clearEvents
{
  v2 = [(MOEventManager *)self eventStore];
  [v2 removeAllEventsWithCompletionHandler:&__block_literal_global_57];
}

void __30__MOEventManager__clearEvents__block_invoke(id a1, NSError *a2)
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "cleared all events", v3, 2u);
  }
}

- (void)collectEventsWithRefreshVariant:(unint64_t)a3 andHandler:(id)a4
{
  v6 = a4;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v8 = v7;
  if (a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, a3, "EventManagerCollectEventsWrapper", "", buf, 2u);
  }

  v9 = [[MOPerformanceMeasurement alloc] initWithName:@"CollectEvents" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v9 startSession];
  v10 = [(MOEventManager *)self eventStore];
  v11 = [v10 persistenceManager];
  v12 = [v11 availability];

  v13 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
  v14 = v13;
  if (v12 == 2)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "collect event since datastore is available", buf, 2u);
    }

    +[MOPersistenceManager persistCollectionDate];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = __61__MOEventManager_collectEventsWithRefreshVariant_andHandler___block_invoke;
    v20[3] = &unk_10033BFD0;
    v22 = v6;
    v23 = a3;
    v21 = v9;
    [(MOEventManager *)self _collectEventsWithRefreshVariant:a3 andHandler:v20];
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [MOEventManager collectEventsWithRefreshVariant:andHandler:];
    }

    if (v6)
    {
      v27 = NSLocalizedDescriptionKey;
      v28 = @"[collectEventsWithRefreshVariant] database is not available";
      v15 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      v16 = [NSError errorWithDomain:@"MOErrorDomain" code:16 userInfo:v15];

      v25 = @"stateDatabaseAvailable";
      v26 = &__kCFBooleanFalse;
      v17 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      (*(v6 + 2))(v6, v16, v17);
    }

    v18 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    v19 = v18;
    if (a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_END, a3, "EventManagerCollectEventsWrapper", "", buf, 2u);
    }

    [(MOPerformanceMeasurement *)v9 endSession];
  }
}

void __61__MOEventManager_collectEventsWithRefreshVariant_andHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 mutableCopy];
  [v6 setObject:&__kCFBooleanTrue forKey:@"stateDatabaseAvailable"];
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v10, "EventManagerCollectEventsWrapper", "", v11, 2u);
  }

  [*(a1 + 32) endSession];
}

- (void)_collectEventsWithRefreshVariant:(unint64_t)a3 andHandler:(id)a4
{
  v7 = a4;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__43;
  v37 = __Block_byref_object_dispose__43;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__43;
  v31 = __Block_byref_object_dispose__43;
  v32 = 0;
  v8 = [[MOEventRefreshHelper alloc] initWithUniverse:self->fUniverse];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = __62__MOEventManager__collectEventsWithRefreshVariant_andHandler___block_invoke;
  v26[3] = &unk_10033BA20;
  v26[4] = &v33;
  v26[5] = &v27;
  [(MOEventRefreshHelper *)v8 getCollectDatesForVariant:a3 withHandler:v26];
  if (v34[5] && v28[5])
  {
    v9 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = NSStringFromSelector(a2);
      v11 = v34[5];
      v12 = v28[5];
      v13 = [NSNumber numberWithUnsignedInteger:a3];
      *buf = 138413058;
      v40 = v10;
      v41 = 2112;
      v42 = v11;
      v43 = 2112;
      v44 = v12;
      v45 = 2112;
      v46 = v13;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@, collect startDate, %@, endDate, %@, refreshVariant, %@", buf, 0x2Au);
    }

    v14 = [MOEventBundleFetchOptions alloc];
    v15 = [NSDateInterval alloc];
    v16 = [v15 initWithStartDate:v34[5] endDate:v28[5]];
    v17 = [(MOEventBundleFetchOptions *)v14 initWithDateInterval:v16 ascending:1 limit:&off_10036C1A8 includeDeletedBundles:0 skipRanking:1 interfaceType:13];

    v18 = [(MOEventManager *)self eventBundleStore];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = __62__MOEventManager__collectEventsWithRefreshVariant_andHandler___block_invoke_200;
    v20[3] = &unk_10033F710;
    v23 = &v27;
    v24 = a2;
    v25 = a3;
    v22 = &v33;
    v20[4] = self;
    v21 = v7;
    [v18 fetchEventBundleWithOptions:v17 CompletionHandler:v20];
  }

  else
  {
    v47 = NSLocalizedDescriptionKey;
    v48 = @"collec start or end date cannot be nil";
    v19 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    v17 = [NSError errorWithDomain:@"MOErrorDomain" code:7 userInfo:v19];

    if (v7)
    {
      (*(v7 + 2))(v7, v17, &__NSDictionary0__struct);
    }
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);
}

void __62__MOEventManager__collectEventsWithRefreshVariant_andHandler___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v9 = a3;
  v8 = a4;
  if (a2)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  }
}

void __62__MOEventManager__collectEventsWithRefreshVariant_andHandler___block_invoke_200(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __62__MOEventManager__collectEventsWithRefreshVariant_andHandler___block_invoke_200_cold_1();
    }

    goto LABEL_4;
  }

  if ([v5 count])
  {
    v20 = [v5 firstObject];
    v21 = [v20 startDate];
    v22 = [v21 isBeforeDate:*(*(*(a1 + 48) + 8) + 40)];

    if (v22)
    {
      v7 = [v5 firstObject];
      v23 = [v7 startDate];
      v24 = *(*(a1 + 48) + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = v23;

LABEL_4:
    }
  }

  v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = NSStringFromSelector(*(a1 + 64));
    v10 = *(*(*(a1 + 48) + 8) + 40);
    v11 = *(*(*(a1 + 56) + 8) + 40);
    v12 = [NSNumber numberWithUnsignedInteger:*(a1 + 72)];
    *buf = 138413058;
    v32 = v9;
    v33 = 2112;
    v34 = v10;
    v35 = 2112;
    v36 = v11;
    v37 = 2112;
    v38 = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@, updated collect startDate for trip bundle, %@, endDate, %@, refreshVariant, %@", buf, 0x2Au);
  }

  v13 = [MOEventFetchOptions alloc];
  v14 = [[NSDateInterval alloc] initWithStartDate:*(*(*(a1 + 48) + 8) + 40) endDate:*(*(*(a1 + 56) + 8) + 40)];
  v15 = [(MOEventFetchOptions *)v13 initWithDateInterval:v14 ascending:1 limit:0];

  v16 = [*(a1 + 32) eventStore];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = __62__MOEventManager__collectEventsWithRefreshVariant_andHandler___block_invoke_202;
  v27[3] = &unk_10033F6E8;
  v17 = *(a1 + 56);
  v27[4] = *(a1 + 32);
  v18 = *(a1 + 72);
  v29 = v17;
  v30 = v18;
  v26 = *(a1 + 40);
  v19 = v26;
  v28 = v26;
  [v16 fetchEventsWithOptions:v15 CompletionHandler:v27];
}

void __62__MOEventManager__collectEventsWithRefreshVariant_andHandler___block_invoke_202(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(*(v4 + 8) + 40);
  v7 = *(*(v5 + 8) + 40);
  v8 = *(a1 + 64);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __62__MOEventManager__collectEventsWithRefreshVariant_andHandler___block_invoke_2;
  v9[3] = &unk_10033F6C0;
  v9[4] = v3;
  v11 = v4;
  v12 = v5;
  v10 = *(a1 + 40);
  [v3 _collectCompleteEventsBetweenStartDate:v6 endDate:v7 refreshVariant:v8 withStoredEvents:a2 handler:v9];
}

void __62__MOEventManager__collectEventsWithRefreshVariant_andHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (!v9)
  {
    v6 = [*(a1 + 32) defaultsManager];
    [v6 setObject:*(*(*(a1 + 48) + 8) + 40) forKey:@"EventManagerLastCollectStartDate"];

    v7 = [*(a1 + 32) defaultsManager];
    [v7 setObject:*(*(*(a1 + 56) + 8) + 40) forKey:@"EventManagerLastCollectEndDate"];
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v9, v5);
  }
}

- (void)_collectCompleteEventsBetweenStartDate:(id)a3 endDate:(id)a4 refreshVariant:(unint64_t)a5 withStoredEvents:(id)a6 handler:(id)a7
{
  v11 = a3;
  v119 = a4;
  v118 = a6;
  v12 = a7;
  v13 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventManagerCollectEvents", "", buf, 2u);
  }

  v14 = [[MOPerformanceMeasurement alloc] initWithName:@"CollectEventsBetweenStartEndWithStoredEvents" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v14 startSession];
  v15 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [v11 stringFromDate];
    v17 = [v119 stringFromDate];
    *buf = 138412546;
    *&buf[4] = v16;
    *&buf[12] = 2112;
    *&buf[14] = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "start collecting events, start date, %@, end date, %@", buf, 0x16u);
  }

  v113 = objc_alloc_init(NSMutableDictionary);
  v117 = objc_opt_new();
  v18 = objc_opt_new();
  v116 = objc_opt_new();
  v115 = objc_opt_new();
  v366[0] = 0;
  v366[1] = v366;
  v366[2] = 0x2020000000;
  v367 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v371 = __Block_byref_object_copy__43;
  v372 = __Block_byref_object_dispose__43;
  v373 = 0;
  v361[0] = _NSConcreteStackBlock;
  v361[1] = 3221225472;
  v361[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke;
  v361[3] = &unk_10033F760;
  v361[4] = self;
  v364 = v366;
  v111 = v12;
  v363 = v111;
  v365 = buf;
  v112 = v14;
  v362 = v112;
  v19 = objc_retainBlock(v361);
  v355 = 0;
  v356 = &v355;
  v357 = 0x3032000000;
  v358 = __Block_byref_object_copy__43;
  v359 = __Block_byref_object_dispose__43;
  v360 = objc_opt_new();
  v349 = 0;
  v350 = &v349;
  v351 = 0x3032000000;
  v352 = __Block_byref_object_copy__43;
  v353 = __Block_byref_object_dispose__43;
  v354 = objc_opt_new();
  v343 = 0;
  v344 = &v343;
  v345 = 0x3032000000;
  v346 = __Block_byref_object_copy__43;
  v347 = __Block_byref_object_dispose__43;
  v348 = objc_opt_new();
  v337 = 0;
  v338 = &v337;
  v339 = 0x3032000000;
  v340 = __Block_byref_object_copy__43;
  v341 = __Block_byref_object_dispose__43;
  v342 = objc_opt_new();
  v331 = 0;
  v332 = &v331;
  v333 = 0x3032000000;
  v334 = __Block_byref_object_copy__43;
  v335 = __Block_byref_object_dispose__43;
  v336 = objc_opt_new();
  v325 = 0;
  v326 = &v325;
  v327 = 0x3032000000;
  v328 = __Block_byref_object_copy__43;
  v329 = __Block_byref_object_dispose__43;
  v330 = objc_opt_new();
  v319 = 0;
  v320 = &v319;
  v321 = 0x3032000000;
  v322 = __Block_byref_object_copy__43;
  v323 = __Block_byref_object_dispose__43;
  v324 = objc_opt_new();
  v313 = 0;
  v314 = &v313;
  v315 = 0x3032000000;
  v316 = __Block_byref_object_copy__43;
  v317 = __Block_byref_object_dispose__43;
  v318 = objc_opt_new();
  v307 = 0;
  v308 = &v307;
  v309 = 0x3032000000;
  v310 = __Block_byref_object_copy__43;
  v311 = __Block_byref_object_dispose__43;
  v312 = objc_opt_new();
  v301 = 0;
  v302 = &v301;
  v303 = 0x3032000000;
  v304 = __Block_byref_object_copy__43;
  v305 = __Block_byref_object_dispose__43;
  v306 = objc_opt_new();
  v295 = 0;
  v296 = &v295;
  v297 = 0x3032000000;
  v298 = __Block_byref_object_copy__43;
  v299 = __Block_byref_object_dispose__43;
  v300 = objc_opt_new();
  v289 = 0;
  v290 = &v289;
  v291 = 0x3032000000;
  v292 = __Block_byref_object_copy__43;
  v293 = __Block_byref_object_dispose__43;
  v294 = objc_opt_new();
  group = dispatch_group_create();
  if ([(MOConfigurationManager *)self->_configurationManager isAllowedToProcessEventCategory:24])
  {
    v20 = [(MOEventManager *)self _getEarliestDateForCategory:24];
    [v356[5] setObject:&__kCFBooleanFalse forKey:@"resultMindfulSessionsSuccess"];
    v21 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v21))
    {
      *v368 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventManagerCollectEventsState Of Mind", "", v368, 2u);
    }

    v22 = [[MOPerformanceMeasurement alloc] initWithName:@"CollectStateOfMind" measureRecentPeak:0];
    [(MOPerformanceMeasurement *)v22 startSession];
    v23 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *v368 = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "start fetching and rehydrating state of mind data", v368, 2u);
    }

    dispatch_group_enter(group);
    collectQueue = self->collectQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_222;
    block[3] = &unk_10033F7D8;
    block[4] = self;
    v277 = v11;
    v25 = v20;
    v278 = v25;
    v279 = v119;
    v280 = v118;
    v281 = v117;
    v282 = v18;
    v283 = v116;
    v287 = &v355;
    v288 = buf;
    v26 = v22;
    v284 = v26;
    v286 = v19;
    v285 = group;
    dispatch_async(collectQueue, block);
  }

  else
  {
    v25 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *v368 = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "skipping fetching and rehydrating state of mind", v368, 2u);
    }
  }

  if ([(MOConfigurationManager *)self->_configurationManager isAllowedToProcessEventCategory:2])
  {
    v27 = [(MOEventManager *)self _getEarliestDateForCategory:2];
    [v350[5] setObject:&__kCFBooleanFalse forKey:@"resultWorkoutsSuccess"];
    v28 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v28))
    {
      *v368 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventManagerCollectEventsWorkouts", "", v368, 2u);
    }

    v29 = [[MOPerformanceMeasurement alloc] initWithName:@"CollectWorkouts" measureRecentPeak:0];
    [(MOPerformanceMeasurement *)v29 startSession];
    v30 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *v368 = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "start fetching and rehydrating workouts", v368, 2u);
    }

    dispatch_group_enter(group);
    v31 = self->collectQueue;
    v263[0] = _NSConcreteStackBlock;
    v263[1] = 3221225472;
    v263[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_239;
    v263[3] = &unk_10033F7D8;
    v263[4] = self;
    v264 = v11;
    v32 = v27;
    v265 = v32;
    v266 = v119;
    v267 = v118;
    v268 = v117;
    v269 = v18;
    v270 = v116;
    v274 = &v349;
    v275 = buf;
    v33 = v29;
    v271 = v33;
    v273 = v19;
    v272 = group;
    dispatch_async(v31, v263);
  }

  else
  {
    v32 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *v368 = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "skipping fetching and rehydrating workouts", v368, 2u);
    }
  }

  if ([(MOConfigurationManager *)self->_configurationManager isAllowedToProcessEventCategory:17])
  {
    v34 = [(MOEventManager *)self _getEarliestDateForCategory:17];
    [v344[5] setObject:&__kCFBooleanFalse forKey:@"resultPhotoMemorySuccess"];
    v35 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v35))
    {
      *v368 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v35, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventManagerCollectEventsPhotoMemories", "", v368, 2u);
    }

    v36 = [[MOPerformanceMeasurement alloc] initWithName:@"CollectPhotoMemories" measureRecentPeak:0];
    [(MOPerformanceMeasurement *)v36 startSession];
    v37 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *v368 = 0;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "start fetching and rehydrating photo memory", v368, 2u);
    }

    dispatch_group_enter(group);
    v38 = self->collectQueue;
    v251[0] = _NSConcreteStackBlock;
    v251[1] = 3221225472;
    v251[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_249;
    v251[3] = &unk_10033F850;
    v251[4] = self;
    v252 = v11;
    v39 = v34;
    v253 = v39;
    v254 = v119;
    v255 = v118;
    v256 = v117;
    v257 = v18;
    v258 = v116;
    v262 = &v343;
    v40 = v36;
    v259 = v40;
    v261 = v19;
    v260 = group;
    dispatch_async(v38, v251);
  }

  else
  {
    v39 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      *v368 = 0;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "skipping fetching and rehydrating photo memory", v368, 2u);
    }
  }

  if ([(MOConfigurationManager *)self->_configurationManager isAllowedToProcessEventCategory:10])
  {
    v41 = [(MOEventManager *)self _getEarliestDateForCategory:10];
    [v338[5] setObject:&__kCFBooleanFalse forKey:@"resultContactsSuccess"];
    v42 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v42))
    {
      *v368 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v42, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventManagerCollectEventsContacts", "", v368, 2u);
    }

    v43 = [[MOPerformanceMeasurement alloc] initWithName:@"CollectContacts" measureRecentPeak:0];
    [(MOPerformanceMeasurement *)v43 startSession];
    v44 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      *v368 = 0;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "start fetching and rehydrating contact events", v368, 2u);
    }

    dispatch_group_enter(group);
    v45 = self->collectQueue;
    v239[0] = _NSConcreteStackBlock;
    v239[1] = 3221225472;
    v239[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_259;
    v239[3] = &unk_10033F850;
    v239[4] = self;
    v240 = v11;
    v46 = v41;
    v241 = v46;
    v242 = v119;
    v243 = v118;
    v244 = v117;
    v245 = v18;
    v246 = v116;
    v250 = &v337;
    v47 = v43;
    v247 = v47;
    v249 = v19;
    v248 = group;
    dispatch_async(v45, v239);
  }

  else
  {
    v46 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      *v368 = 0;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "skipping fetching and rehydrating contact events", v368, 2u);
    }
  }

  if ([(MOConfigurationManager *)self->_configurationManager isAllowedToProcessEventCategory:15])
  {
    v48 = [(MOEventManager *)self _getEarliestDateForCategory:15];
    [v332[5] setObject:&__kCFBooleanFalse forKey:@"resultPeopleDiscoverySuccess"];
    v49 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v49))
    {
      *v368 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v49, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventManagerCollectEventsProximity", "", v368, 2u);
    }

    v50 = [[MOPerformanceMeasurement alloc] initWithName:@"CollectProximity" measureRecentPeak:0];
    [(MOPerformanceMeasurement *)v50 startSession];
    v51 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      *v368 = 0;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "start fetching and rehydrating prox", v368, 2u);
    }

    dispatch_group_enter(group);
    v52 = self->collectQueue;
    v227[0] = _NSConcreteStackBlock;
    v227[1] = 3221225472;
    v227[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_269;
    v227[3] = &unk_10033F8C8;
    v227[4] = self;
    v228 = v11;
    v53 = v48;
    v229 = v53;
    v230 = v119;
    v231 = v118;
    v232 = v117;
    v233 = v18;
    v237 = &v331;
    v238 = buf;
    v54 = v50;
    v234 = v54;
    v236 = v19;
    v235 = group;
    dispatch_async(v52, v227);
  }

  else
  {
    v53 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
      *v368 = 0;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "skipping fetching and rehydrating prox", v368, 2u);
    }
  }

  if ([(MOConfigurationManager *)self->_configurationManager isAllowedToProcessEventCategory:23])
  {
    v55 = [(MOEventManager *)self _getEarliestDateForCategory:23];
    [v326[5] setObject:&__kCFBooleanFalse forKey:@"resultPeopleDensitySuccess"];
    v56 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v56))
    {
      *v368 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v56, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventManagerCollectEventsPeopleDensity", "", v368, 2u);
    }

    v57 = [[MOPerformanceMeasurement alloc] initWithName:@"CollectPeopleDensity" measureRecentPeak:0];
    [(MOPerformanceMeasurement *)v57 startSession];
    v58 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      *v368 = 0;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "start fetching and rehydrating people density events", v368, 2u);
    }

    dispatch_group_enter(group);
    v59 = self->collectQueue;
    v215[0] = _NSConcreteStackBlock;
    v215[1] = 3221225472;
    v215[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_279;
    v215[3] = &unk_10033F8C8;
    v215[4] = self;
    v216 = v11;
    v60 = v55;
    v217 = v60;
    v218 = v119;
    v219 = v118;
    v220 = v117;
    v221 = v18;
    v225 = &v325;
    v226 = buf;
    v61 = v57;
    v222 = v61;
    v224 = v19;
    v223 = group;
    dispatch_async(v59, v215);
  }

  else
  {
    v60 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
    {
      *v368 = 0;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "skipping fetching and rehydrating people density events", v368, 2u);
    }
  }

  if ([(MOConfigurationManager *)self->_configurationManager isAllowedToProcessEventCategory:22])
  {
    v62 = [(MOEventManager *)self _getEarliestDateForCategory:22];
    [v320[5] setObject:&__kCFBooleanFalse forKey:@"resultLifeEventsSuccess"];
    v63 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v63))
    {
      *v368 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v63, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventManagerCollectEventsLifeEvents", "", v368, 2u);
    }

    v64 = [[MOPerformanceMeasurement alloc] initWithName:@"CollectLifeEvents" measureRecentPeak:0];
    [(MOPerformanceMeasurement *)v64 startSession];
    v65 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
    {
      *v368 = 0;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_INFO, "start fetching and rehydrating life events", v368, 2u);
    }

    dispatch_group_enter(group);
    v66 = self->collectQueue;
    v204[0] = _NSConcreteStackBlock;
    v204[1] = 3221225472;
    v204[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_289;
    v204[3] = &unk_10033F940;
    v204[4] = self;
    v205 = v11;
    v67 = v62;
    v206 = v67;
    v207 = v119;
    v208 = v118;
    v209 = v117;
    v210 = v18;
    v214 = &v319;
    v68 = v64;
    v211 = v68;
    v213 = v19;
    v212 = group;
    dispatch_async(v66, v204);
  }

  else
  {
    v67 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
    {
      *v368 = 0;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, "skipping fetching and rehydrating life events", v368, 2u);
    }
  }

  if ([(MOConfigurationManager *)self->_configurationManager isAllowedToProcessEventCategory:1])
  {
    v69 = [(MOEventManager *)self _getEarliestDateForCategory:1];
    [v314[5] setObject:&__kCFBooleanFalse forKey:@"resultVisitsTrainingSuccess"];
    [v314[5] setObject:&__kCFBooleanFalse forKey:@"resultVisitsSuccess"];
    v70 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v70))
    {
      *v368 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v70, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventManagerCollectEventsVisits", "", v368, 2u);
    }

    v71 = [[MOPerformanceMeasurement alloc] initWithName:@"CollectVisits" measureRecentPeak:0];
    [(MOPerformanceMeasurement *)v71 startSession];
    v72 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
    {
      *v368 = 0;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_INFO, "start training, fetching and rehydrating visits", v368, 2u);
    }

    dispatch_group_enter(group);
    v73 = self->collectQueue;
    v192[0] = _NSConcreteStackBlock;
    v192[1] = 3221225472;
    v192[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_299;
    v192[3] = &unk_10033FA08;
    v192[4] = self;
    v202 = &v313;
    v203 = buf;
    v201 = v19;
    v193 = group;
    v194 = v11;
    v74 = v69;
    v195 = v74;
    v196 = v118;
    v197 = v117;
    v198 = v115;
    v199 = v18;
    v75 = v71;
    v200 = v75;
    dispatch_async(v73, v192);
  }

  else
  {
    v74 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
    {
      *v368 = 0;
      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_INFO, "skipping training, fetching and rehydrating visits", v368, 2u);
    }
  }

  if ([(MOConfigurationManager *)self->_configurationManager isAllowedToProcessEventCategory:6])
  {
    v76 = [(MOEventManager *)self _getEarliestDateForCategory:6];
    [v308[5] setObject:&__kCFBooleanFalse forKey:@"resultMusicSuccess"];
    v77 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v77))
    {
      *v368 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v77, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventManagerCollectEventsMusic", "", v368, 2u);
    }

    v78 = [[MOPerformanceMeasurement alloc] initWithName:@"CollectMusic" measureRecentPeak:0];
    [(MOPerformanceMeasurement *)v78 startSession];
    v79 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
    {
      *v368 = 0;
      _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_INFO, "start fetching and rehydrating music", v368, 2u);
    }

    dispatch_group_enter(group);
    v80 = self->collectQueue;
    v180[0] = _NSConcreteStackBlock;
    v180[1] = 3221225472;
    v180[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_323;
    v180[3] = &unk_10033F850;
    v180[4] = self;
    v181 = v11;
    v81 = v76;
    v182 = v81;
    v183 = v119;
    v184 = v118;
    v185 = v117;
    v186 = v18;
    v187 = v116;
    v191 = &v307;
    v82 = v78;
    v188 = v82;
    v190 = v19;
    v189 = group;
    dispatch_async(v80, v180);
  }

  else
  {
    v81 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
    {
      *v368 = 0;
      _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_INFO, "skipping fetching and rehydrating music", v368, 2u);
    }
  }

  if ([(MOConfigurationManager *)self->_configurationManager isAllowedToProcessEventCategory:16])
  {
    v83 = [(MOEventManager *)self _getEarliestDateForCategory:16];
    [v302[5] setObject:&__kCFBooleanFalse forKey:@"resultMotionSuccess"];
    v84 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v84))
    {
      *v368 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v84, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventManagerCollectEventsMotionActivity", "", v368, 2u);
    }

    v85 = [[MOPerformanceMeasurement alloc] initWithName:@"CollectMotionActivity" measureRecentPeak:0];
    [(MOPerformanceMeasurement *)v85 startSession];
    v86 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
    {
      *v368 = 0;
      _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_INFO, "start fetching and rehydrating motion events", v368, 2u);
    }

    dispatch_group_enter(group);
    v87 = self->collectQueue;
    v168[0] = _NSConcreteStackBlock;
    v168[1] = 3221225472;
    v168[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_333;
    v168[3] = &unk_10033F8C8;
    v168[4] = self;
    v169 = v11;
    v88 = v83;
    v170 = v88;
    v171 = v119;
    v172 = v118;
    v173 = v117;
    v174 = v18;
    v178 = &v301;
    v179 = buf;
    v89 = v85;
    v175 = v89;
    v177 = v19;
    v176 = group;
    dispatch_async(v87, v168);
  }

  else
  {
    v88 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
    {
      *v368 = 0;
      _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_INFO, "skipping fetching and saving motion events", v368, 2u);
    }
  }

  if ([(MOConfigurationManager *)self->_configurationManager isAllowedToProcessEventCategory:20])
  {
    [v296[5] setObject:&__kCFBooleanFalse forKey:@"resultScreenTimeSuccess"];
    v90 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v90))
    {
      *v368 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v90, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventManagerCollectEventsScreenTime", "", v368, 2u);
    }

    v91 = [[MOPerformanceMeasurement alloc] initWithName:@"CollectScreenTime" measureRecentPeak:0];
    [(MOPerformanceMeasurement *)v91 startSession];
    v92 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
    {
      *v368 = 0;
      _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_INFO, "start fetching and rehydrating screentime events", v368, 2u);
    }

    dispatch_group_enter(group);
    v93 = self->collectQueue;
    v157[0] = _NSConcreteStackBlock;
    v157[1] = 3221225472;
    v157[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_343;
    v157[3] = &unk_10033FA30;
    v157[4] = self;
    v158 = v11;
    v159 = v119;
    v160 = v118;
    v161 = v117;
    v162 = v18;
    v166 = &v295;
    v167 = buf;
    v94 = v91;
    v163 = v94;
    v165 = v19;
    v164 = group;
    dispatch_async(v93, v157);
  }

  else
  {
    v94 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
    {
      *v368 = 0;
      _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_INFO, "skipping fetching and saving screentime events", v368, 2u);
    }
  }

  v95 = [(MOConfigurationManagerBase *)self->_configurationManager getBoolSettingForKey:@"SpotlightEventIntegrationEnablement" withFallback:1];
  if (([(MOConfigurationManager *)self->_configurationManager isAllowedToProcessEventCategory:25]& v95) == 1)
  {
    [v290[5] setObject:&__kCFBooleanFalse forKey:@"resultSpotlightSuccess"];
    v96 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v96))
    {
      *v368 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v96, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventManagerCollectEventsSpotlight", "", v368, 2u);
    }

    v97 = [[MOPerformanceMeasurement alloc] initWithName:@"CollectSpotlight" measureRecentPeak:0];
    [(MOPerformanceMeasurement *)v97 startSession];
    v98 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
    {
      *v368 = 0;
      _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_INFO, "start fetching and rehydrating spotlight events", v368, 2u);
    }

    dispatch_group_enter(group);
    v99 = self->collectQueue;
    v146[0] = _NSConcreteStackBlock;
    v146[1] = 3221225472;
    v146[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_353;
    v146[3] = &unk_10033FA30;
    v146[4] = self;
    v147 = v11;
    v148 = v119;
    v149 = v118;
    v150 = v117;
    v151 = v18;
    v155 = &v289;
    v156 = buf;
    v100 = v97;
    v152 = v100;
    v154 = v19;
    v153 = group;
    dispatch_async(v99, v146);
  }

  else
  {
    v101 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
    {
      *v368 = 0;
      _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_INFO, "skipping fetching and saving spotlight events", v368, 2u);
    }

    v100 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
    {
      *v368 = 67109120;
      v369 = v95;
      _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_INFO, "spotlight event integration enablement param is set to %d", v368, 8u);
    }
  }

  v102 = [(MOEventManager *)self queue];
  v121[0] = _NSConcreteStackBlock;
  v121[1] = 3221225472;
  v121[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_360;
  v121[3] = &unk_10033FA58;
  v132 = v366;
  v114 = v113;
  v122 = v114;
  v133 = &v355;
  v134 = &v349;
  v135 = &v343;
  v136 = &v337;
  v137 = &v331;
  v138 = &v325;
  v139 = &v319;
  v140 = &v313;
  v141 = &v307;
  v142 = &v301;
  v143 = &v295;
  v144 = &v289;
  v103 = v18;
  v123 = v103;
  v104 = v116;
  v124 = v104;
  v105 = v117;
  v125 = v105;
  v145 = buf;
  v106 = v11;
  v126 = v106;
  v107 = v119;
  v127 = v107;
  v108 = v118;
  v128 = v108;
  v129 = self;
  v109 = v115;
  v130 = v109;
  v110 = v19;
  v131 = v110;
  dispatch_group_notify(group, v102, v121);

  _Block_object_dispose(&v289, 8);
  _Block_object_dispose(&v295, 8);

  _Block_object_dispose(&v301, 8);
  _Block_object_dispose(&v307, 8);

  _Block_object_dispose(&v313, 8);
  _Block_object_dispose(&v319, 8);

  _Block_object_dispose(&v325, 8);
  _Block_object_dispose(&v331, 8);

  _Block_object_dispose(&v337, 8);
  _Block_object_dispose(&v343, 8);

  _Block_object_dispose(&v349, 8);
  _Block_object_dispose(&v355, 8);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v366, 8);
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_2;
  block[3] = &unk_10033F738;
  v11 = *(a1 + 48);
  v8 = v11;
  v16 = v11;
  v17 = *(a1 + 64);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 40);
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void *__105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_2(void *result)
{
  v1 = *(result[8] + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    v2 = result;
    *(v1 + 24) = 1;
    v3 = result[7];
    if (v3)
    {
      if (v2[4])
      {
        v4 = *(v2[9] + 8);
        v7 = *(v4 + 40);
        v5 = (v4 + 40);
        v6 = v7;
        if (v7)
        {
          v8 = v6;
        }

        else
        {
          v8 = v2[4];
        }

        objc_storeStrong(v5, v8);
        v15[0] = NSLocalizedDescriptionKey;
        v15[1] = NSUnderlyingErrorKey;
        v9 = v2[4];
        v16[0] = @"Collect error";
        v16[1] = v9;
        v10 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
        v11 = [NSError errorWithDomain:@"MOErrorDomain" code:15 userInfo:v10];

        (*(v2[7] + 16))();
      }

      else
      {
        if (v2[5])
        {
          v12 = v2[5];
        }

        else
        {
          v12 = &__NSDictionary0__struct;
        }

        (*(v3 + 16))(v3, 0, v12);
      }
    }

    v13 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v13))
    {
      v14 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventManagerCollectEvents", "", &v14, 2u);
    }

    return [v2[6] endSession];
  }

  return result;
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_222(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__43;
  v31 = __Block_byref_object_dispose__43;
  v32 = 0;
  v3 = [*(a1 + 32) healthKitManager];
  v4 = *(a1 + 40);
  v5 = [NSDate dateWithTimeInterval:*(a1 + 48) sinceDate:0.0];
  v6 = [v4 laterDate:v5];
  v7 = *(a1 + 56);
  v8 = [NSDate dateWithTimeInterval:*(a1 + 48) sinceDate:1.0];
  v9 = [v7 laterDate:v8];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_2_223;
  v20[3] = &unk_10033F7B0;
  v20[4] = *(a1 + 32);
  v10 = *(a1 + 64);
  v21 = *(a1 + 72);
  v22 = *(a1 + 80);
  v23 = *(a1 + 88);
  v26 = *(a1 + 120);
  v11 = v2;
  v24 = v11;
  v25 = *(a1 + 96);
  [v3 fetchStateOfMindEventsBetweenStartDate:v6 endDate:v9 withStoredEvents:v10 handler:v20];

  v12 = [NSString stringWithFormat:@"%@ - [%s] - %d - %s", @"MOSemaphoreWait", "/Library/Caches/com.apple.xbs/Sources/Moments/momentsd/PromptEngine/PromptProvider/MOEventManager.m", 560, "[MOEventManager _collectCompleteEventsBetweenStartDate:endDate:refreshVariant:withStoredEvents:handler:]_block_invoke"];
  v13 = v28;
  obj = v28[5];
  LOBYTE(v6) = MOSemaphoreWaitAndFaultIfTimeout_Internal(v11, &obj, v12, 120.0);
  objc_storeStrong(v13 + 5, obj);
  if ((v6 & 1) == 0)
  {
    v14 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __50__MOUserData__fetchUserDataWithCompletionHandler___block_invoke_cold_1();
    }
  }

  if (v28[5])
  {
    v15 = [*(a1 + 32) queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_232;
    block[3] = &unk_10033AF18;
    v18 = &v27;
    v17 = *(a1 + 112);
    dispatch_async(v15, block);
  }

  dispatch_group_leave(*(a1 + 104));

  _Block_object_dispose(&v27, 8);
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_2_223(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_3;
  block[3] = &unk_10033F788;
  v8 = v5;
  v13 = v8;
  v9 = v6;
  v14 = v9;
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v18 = *(a1 + 80);
  dispatch_sync(v7, block);

  dispatch_semaphore_signal(*(a1 + 64));
  v10 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v10))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventManagerCollectEventsState Of Mind", "", v11, 2u);
  }

  [*(a1 + 72) endSession];
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 domain];
    if (v3 == @"MOErrorDomain")
    {
      v17 = v3;
      v14 = [*(a1 + 32) code];

      if ((v14 & 0x400) != 0)
      {
        v15 = *(a1 + 32);
        v16 = (*(*(a1 + 80) + 8) + 40);

        objc_storeStrong(v16, v15);
      }
    }

    else
    {
    }
  }

  else
  {
    v4 = [*(a1 + 40) objectForKey:@"newEvents"];

    if (v4)
    {
      v5 = *(a1 + 48);
      v6 = [*(a1 + 40) objectForKey:@"newEvents"];
      [v5 addObjectsFromArray:v6];
    }

    v7 = [*(a1 + 40) objectForKey:@"rehydratedEvents"];

    if (v7)
    {
      v8 = *(a1 + 56);
      v9 = [*(a1 + 40) objectForKey:@"rehydratedEvents"];
      [v8 addObjectsFromArray:v9];
    }

    v10 = [*(a1 + 40) objectForKey:@"unrehydratedEvents"];

    if (v10)
    {
      v11 = *(a1 + 64);
      v12 = [*(a1 + 40) objectForKey:@"unrehydratedEvents"];
      [v11 addObjectsFromArray:v12];
    }

    v13 = *(*(*(a1 + 72) + 8) + 40);

    [v13 setObject:&__kCFBooleanTrue forKey:@"resultMindfulSessionsSuccess"];
  }
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_232(uint64_t a1)
{
  v7[0] = NSLocalizedDescriptionKey;
  v7[1] = NSUnderlyingErrorKey;
  v2 = a1 + 40;
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v8[0] = @"State of Mind event collection timed out";
  v8[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  v5 = [NSError errorWithDomain:@"MOErrorDomain" code:15 userInfo:v4];

  v6 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_232_cold_1(v2);
  }

  (*(*(a1 + 32) + 16))();
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_239(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__43;
  v31 = __Block_byref_object_dispose__43;
  v32 = 0;
  v3 = [*(a1 + 32) healthKitManager];
  v4 = *(a1 + 40);
  v5 = [NSDate dateWithTimeInterval:*(a1 + 48) sinceDate:0.0];
  v6 = [v4 laterDate:v5];
  v7 = *(a1 + 56);
  v8 = [NSDate dateWithTimeInterval:*(a1 + 48) sinceDate:1.0];
  v9 = [v7 laterDate:v8];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_2_240;
  v20[3] = &unk_10033F7B0;
  v20[4] = *(a1 + 32);
  v10 = *(a1 + 64);
  v21 = *(a1 + 72);
  v22 = *(a1 + 80);
  v23 = *(a1 + 88);
  v26 = *(a1 + 120);
  v11 = v2;
  v24 = v11;
  v25 = *(a1 + 96);
  [v3 fetchWorkoutEventsBetweenStartDate:v6 endDate:v9 withStoredEvents:v10 handler:v20];

  v12 = [NSString stringWithFormat:@"%@ - [%s] - %d - %s", @"MOSemaphoreWait", "/Library/Caches/com.apple.xbs/Sources/Moments/momentsd/PromptEngine/PromptProvider/MOEventManager.m", 619, "[MOEventManager _collectCompleteEventsBetweenStartDate:endDate:refreshVariant:withStoredEvents:handler:]_block_invoke"];
  v13 = v28;
  obj = v28[5];
  LOBYTE(v6) = MOSemaphoreWaitAndFaultIfTimeout_Internal(v11, &obj, v12, 120.0);
  objc_storeStrong(v13 + 5, obj);
  if ((v6 & 1) == 0)
  {
    v14 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __50__MOUserData__fetchUserDataWithCompletionHandler___block_invoke_cold_1();
    }
  }

  if (v28[5])
  {
    v15 = [*(a1 + 32) queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_242;
    block[3] = &unk_10033AF18;
    v18 = &v27;
    v17 = *(a1 + 112);
    dispatch_async(v15, block);
  }

  dispatch_group_leave(*(a1 + 104));

  _Block_object_dispose(&v27, 8);
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_2_240(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_3_241;
  block[3] = &unk_10033F788;
  v8 = v5;
  v13 = v8;
  v9 = v6;
  v14 = v9;
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v18 = *(a1 + 80);
  dispatch_sync(v7, block);

  dispatch_semaphore_signal(*(a1 + 64));
  v10 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v10))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventManagerCollectEventsWorkouts", "", v11, 2u);
  }

  [*(a1 + 72) endSession];
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_3_241(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 domain];
    if (v3 == @"MOErrorDomain")
    {
      v17 = v3;
      v14 = [*(a1 + 32) code];

      if ((v14 & 0x400) != 0)
      {
        v15 = *(a1 + 32);
        v16 = (*(*(a1 + 80) + 8) + 40);

        objc_storeStrong(v16, v15);
      }
    }

    else
    {
    }
  }

  else
  {
    v4 = [*(a1 + 40) objectForKey:@"newEvents"];

    if (v4)
    {
      v5 = *(a1 + 48);
      v6 = [*(a1 + 40) objectForKey:@"newEvents"];
      [v5 addObjectsFromArray:v6];
    }

    v7 = [*(a1 + 40) objectForKey:@"rehydratedEvents"];

    if (v7)
    {
      v8 = *(a1 + 56);
      v9 = [*(a1 + 40) objectForKey:@"rehydratedEvents"];
      [v8 addObjectsFromArray:v9];
    }

    v10 = [*(a1 + 40) objectForKey:@"unrehydratedEvents"];

    if (v10)
    {
      v11 = *(a1 + 64);
      v12 = [*(a1 + 40) objectForKey:@"unrehydratedEvents"];
      [v11 addObjectsFromArray:v12];
    }

    v13 = *(*(*(a1 + 72) + 8) + 40);

    [v13 setObject:&__kCFBooleanTrue forKey:@"resultWorkoutsSuccess"];
  }
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_242(uint64_t a1)
{
  v7[0] = NSLocalizedDescriptionKey;
  v7[1] = NSUnderlyingErrorKey;
  v2 = a1 + 40;
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v8[0] = @"Workout event collection timed out";
  v8[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  v5 = [NSError errorWithDomain:@"MOErrorDomain" code:15 userInfo:v4];

  v6 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_242_cold_1(v2);
  }

  (*(*(a1 + 32) + 16))();
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_249(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__43;
  v33 = __Block_byref_object_dispose__43;
  v34 = 0;
  v3 = [*(a1 + 32) photoManager];
  v4 = *(a1 + 40);
  v5 = [NSDate dateWithTimeInterval:*(a1 + 48) sinceDate:0.0];
  v6 = [v4 laterDate:v5];
  v7 = *(a1 + 56);
  v8 = [NSDate dateWithTimeInterval:*(a1 + 48) sinceDate:1.0];
  v9 = [v7 laterDate:v8];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_2_250;
  v22[3] = &unk_10033F828;
  v22[4] = *(a1 + 32);
  v10 = *(a1 + 64);
  v23 = *(a1 + 72);
  v24 = *(a1 + 80);
  v11 = *(a1 + 88);
  v12 = *(a1 + 120);
  v25 = v11;
  v28 = v12;
  v13 = v2;
  v26 = v13;
  v27 = *(a1 + 96);
  [v3 fetchPhotoMemoryEventsBetweenStartDate:v6 endDate:v9 withStoredEvents:v10 handler:v22];

  v14 = [NSString stringWithFormat:@"%@ - [%s] - %d - %s", @"MOSemaphoreWait", "/Library/Caches/com.apple.xbs/Sources/Moments/momentsd/PromptEngine/PromptProvider/MOEventManager.m", 673, "[MOEventManager _collectCompleteEventsBetweenStartDate:endDate:refreshVariant:withStoredEvents:handler:]_block_invoke"];
  v15 = v30;
  obj = v30[5];
  LOBYTE(v6) = MOSemaphoreWaitAndFaultIfTimeout_Internal(v13, &obj, v14, 120.0);
  objc_storeStrong(v15 + 5, obj);
  if ((v6 & 1) == 0)
  {
    v16 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __50__MOUserData__fetchUserDataWithCompletionHandler___block_invoke_cold_1();
    }
  }

  if (v30[5])
  {
    v17 = [*(a1 + 32) queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_252;
    block[3] = &unk_10033AF18;
    v20 = &v29;
    v19 = *(a1 + 112);
    dispatch_async(v17, block);
  }

  dispatch_group_leave(*(a1 + 104));

  _Block_object_dispose(&v29, 8);
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_2_250(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_3_251;
  block[3] = &unk_10033F800;
  v8 = v5;
  v15 = v8;
  v9 = v6;
  v16 = v9;
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 80);
  v19 = v10;
  v20 = v11;
  dispatch_sync(v7, block);

  dispatch_semaphore_signal(*(a1 + 64));
  v12 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v12))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventManagerCollectEventsPhotoMemories", "", v13, 2u);
  }

  [*(a1 + 72) endSession];
}

id *__105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_3_251(id *result)
{
  if (!result[4])
  {
    v2 = result;
    v3 = [result[5] objectForKey:@"newEvents"];

    if (v3)
    {
      v4 = v2[6];
      v5 = [v2[5] objectForKey:@"newEvents"];
      [v4 addObjectsFromArray:v5];
    }

    v6 = [v2[5] objectForKey:@"rehydratedEvents"];

    if (v6)
    {
      v7 = v2[7];
      v8 = [v2[5] objectForKey:@"rehydratedEvents"];
      [v7 addObjectsFromArray:v8];
    }

    v9 = [v2[5] objectForKey:@"unrehydratedEvents"];

    if (v9)
    {
      v10 = v2[8];
      v11 = [v2[5] objectForKey:@"unrehydratedEvents"];
      [v10 addObjectsFromArray:v11];
    }

    v12 = *(*(v2[9] + 1) + 40);

    return [v12 setObject:&__kCFBooleanTrue forKey:@"resultPhotoMemorySuccess"];
  }

  return result;
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_252(uint64_t a1)
{
  v7[0] = NSLocalizedDescriptionKey;
  v7[1] = NSUnderlyingErrorKey;
  v2 = a1 + 40;
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v8[0] = @"Photo Memory event collection timed out";
  v8[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  v5 = [NSError errorWithDomain:@"MOErrorDomain" code:15 userInfo:v4];

  v6 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_252_cold_1(v2);
  }

  (*(*(a1 + 32) + 16))();
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_259(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__43;
  v33 = __Block_byref_object_dispose__43;
  v34 = 0;
  v3 = [*(a1 + 32) significantContactManager];
  v4 = *(a1 + 40);
  v5 = [NSDate dateWithTimeInterval:*(a1 + 48) sinceDate:0.0];
  v6 = [v4 laterDate:v5];
  v7 = *(a1 + 56);
  v8 = [NSDate dateWithTimeInterval:*(a1 + 48) sinceDate:1.0];
  v9 = [v7 laterDate:v8];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_2_260;
  v22[3] = &unk_10033F828;
  v22[4] = *(a1 + 32);
  v10 = *(a1 + 64);
  v23 = *(a1 + 72);
  v24 = *(a1 + 80);
  v11 = *(a1 + 88);
  v12 = *(a1 + 120);
  v25 = v11;
  v28 = v12;
  v13 = v2;
  v26 = v13;
  v27 = *(a1 + 96);
  [v3 fetchConversationEventsBetweenStartDate:v6 endDate:v9 withStoredEvents:v10 handler:v22];

  v14 = [NSString stringWithFormat:@"%@ - [%s] - %d - %s", @"MOSemaphoreWait", "/Library/Caches/com.apple.xbs/Sources/Moments/momentsd/PromptEngine/PromptProvider/MOEventManager.m", 727, "[MOEventManager _collectCompleteEventsBetweenStartDate:endDate:refreshVariant:withStoredEvents:handler:]_block_invoke"];
  v15 = v30;
  obj = v30[5];
  LOBYTE(v6) = MOSemaphoreWaitAndFaultIfTimeout_Internal(v13, &obj, v14, 120.0);
  objc_storeStrong(v15 + 5, obj);
  if ((v6 & 1) == 0)
  {
    v16 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __50__MOUserData__fetchUserDataWithCompletionHandler___block_invoke_cold_1();
    }
  }

  if (v30[5])
  {
    v17 = [*(a1 + 32) queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_262;
    block[3] = &unk_10033AF18;
    v20 = &v29;
    v19 = *(a1 + 112);
    dispatch_async(v17, block);
  }

  dispatch_group_leave(*(a1 + 104));

  _Block_object_dispose(&v29, 8);
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_2_260(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_3_261;
  block[3] = &unk_10033F800;
  v8 = v5;
  v15 = v8;
  v9 = v6;
  v16 = v9;
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 80);
  v19 = v10;
  v20 = v11;
  dispatch_sync(v7, block);

  dispatch_semaphore_signal(*(a1 + 64));
  v12 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v12))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventManagerCollectEventsContacts", "", v13, 2u);
  }

  [*(a1 + 72) endSession];
}

id *__105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_3_261(id *result)
{
  if (!result[4])
  {
    v2 = result;
    v3 = [result[5] objectForKey:@"newEvents"];

    if (v3)
    {
      v4 = v2[6];
      v5 = [v2[5] objectForKey:@"newEvents"];
      [v4 addObjectsFromArray:v5];
    }

    v6 = [v2[5] objectForKey:@"rehydratedEvents"];

    if (v6)
    {
      v7 = v2[7];
      v8 = [v2[5] objectForKey:@"rehydratedEvents"];
      [v7 addObjectsFromArray:v8];
    }

    v9 = [v2[5] objectForKey:@"unrehydratedEvents"];

    if (v9)
    {
      v10 = v2[8];
      v11 = [v2[5] objectForKey:@"unrehydratedEvents"];
      [v10 addObjectsFromArray:v11];
    }

    v12 = *(*(v2[9] + 1) + 40);

    return [v12 setObject:&__kCFBooleanTrue forKey:@"resultContactsSuccess"];
  }

  return result;
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_262(uint64_t a1)
{
  v7[0] = NSLocalizedDescriptionKey;
  v7[1] = NSUnderlyingErrorKey;
  v2 = a1 + 40;
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v8[0] = @"Contact event collection timed out";
  v8[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  v5 = [NSError errorWithDomain:@"MOErrorDomain" code:15 userInfo:v4];

  v6 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_262_cold_1(v2);
  }

  (*(*(a1 + 32) + 16))();
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_269(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__43;
  v30 = __Block_byref_object_dispose__43;
  v31 = 0;
  v3 = [*(a1 + 32) peopleDiscoveryManager];
  v4 = *(a1 + 40);
  v5 = [NSDate dateWithTimeInterval:*(a1 + 48) sinceDate:0.0];
  v6 = [v4 laterDate:v5];
  v7 = *(a1 + 56);
  v8 = [NSDate dateWithTimeInterval:*(a1 + 48) sinceDate:1.0];
  v9 = [v7 laterDate:v8];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_2_270;
  v20[3] = &unk_10033F8A0;
  v20[4] = *(a1 + 32);
  v10 = *(a1 + 64);
  v21 = *(a1 + 72);
  v22 = *(a1 + 80);
  v25 = *(a1 + 112);
  v11 = v2;
  v23 = v11;
  v24 = *(a1 + 88);
  [v3 fetchProxEventsBetweenStartDate:v6 endDate:v9 withStoredEvents:v10 handler:v20];

  v12 = [NSString stringWithFormat:@"%@ - [%s] - %d - %s", @"MOSemaphoreWait", "/Library/Caches/com.apple.xbs/Sources/Moments/momentsd/PromptEngine/PromptProvider/MOEventManager.m", 781, "[MOEventManager _collectCompleteEventsBetweenStartDate:endDate:refreshVariant:withStoredEvents:handler:]_block_invoke"];
  v13 = v27;
  obj = v27[5];
  LOBYTE(v6) = MOSemaphoreWaitAndFaultIfTimeout_Internal(v11, &obj, v12, 120.0);
  objc_storeStrong(v13 + 5, obj);
  if ((v6 & 1) == 0)
  {
    v14 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __50__MOUserData__fetchUserDataWithCompletionHandler___block_invoke_cold_1();
    }
  }

  if (v27[5])
  {
    v15 = [*(a1 + 32) queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_272;
    block[3] = &unk_10033AF18;
    v18 = &v26;
    v17 = *(a1 + 104);
    dispatch_async(v15, block);
  }

  dispatch_group_leave(*(a1 + 96));

  _Block_object_dispose(&v26, 8);
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_2_270(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_3_271;
  block[3] = &unk_10033F878;
  v8 = v5;
  v13 = v8;
  v9 = v6;
  v14 = v9;
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = *(a1 + 72);
  dispatch_sync(v7, block);

  dispatch_semaphore_signal(*(a1 + 56));
  v10 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v10))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventManagerCollectEventsProximity", "", v11, 2u);
  }

  [*(a1 + 64) endSession];
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_3_271(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 domain];
    if (v3 == @"MOErrorDomain")
    {
      v16 = v3;
      v11 = [*(a1 + 32) code];

      if ((v11 & 0x400) != 0)
      {
        v12 = *(*(a1 + 72) + 8);
        v15 = *(v12 + 40);
        v13 = (v12 + 40);
        v14 = v15;
        if (!v15)
        {
          v14 = *(a1 + 32);
        }

        objc_storeStrong(v13, v14);
      }
    }

    else
    {
    }
  }

  else
  {
    v4 = [*(a1 + 40) objectForKey:@"newEvents"];

    if (v4)
    {
      v5 = *(a1 + 48);
      v6 = [*(a1 + 40) objectForKey:@"newEvents"];
      [v5 addObjectsFromArray:v6];
    }

    v7 = [*(a1 + 40) objectForKey:@"rehydratedEvents"];

    if (v7)
    {
      v8 = *(a1 + 56);
      v9 = [*(a1 + 40) objectForKey:@"rehydratedEvents"];
      [v8 addObjectsFromArray:v9];
    }

    v10 = *(*(*(a1 + 64) + 8) + 40);

    [v10 setObject:&__kCFBooleanTrue forKey:@"resultPeopleDiscoverySuccess"];
  }
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_272(uint64_t a1)
{
  v7[0] = NSLocalizedDescriptionKey;
  v7[1] = NSUnderlyingErrorKey;
  v2 = a1 + 40;
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v8[0] = @"Proximity event collection timed out";
  v8[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  v5 = [NSError errorWithDomain:@"MOErrorDomain" code:15 userInfo:v4];

  v6 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_272_cold_1(v2);
  }

  (*(*(a1 + 32) + 16))();
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_279(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__43;
  v30 = __Block_byref_object_dispose__43;
  v31 = 0;
  v3 = [*(a1 + 32) peopleDiscoveryManager];
  v4 = *(a1 + 40);
  v5 = [NSDate dateWithTimeInterval:*(a1 + 48) sinceDate:0.0];
  v6 = [v4 laterDate:v5];
  v7 = *(a1 + 56);
  v8 = [NSDate dateWithTimeInterval:*(a1 + 48) sinceDate:1.0];
  v9 = [v7 laterDate:v8];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_2_280;
  v20[3] = &unk_10033F8A0;
  v20[4] = *(a1 + 32);
  v10 = *(a1 + 64);
  v21 = *(a1 + 72);
  v22 = *(a1 + 80);
  v25 = *(a1 + 112);
  v11 = v2;
  v23 = v11;
  v24 = *(a1 + 88);
  [v3 fetchPeopleDensityEventsBetweenStartDate:v6 endDate:v9 withStoredEvents:v10 handler:v20];

  v12 = [NSString stringWithFormat:@"%@ - [%s] - %d - %s", @"MOSemaphoreWait", "/Library/Caches/com.apple.xbs/Sources/Moments/momentsd/PromptEngine/PromptProvider/MOEventManager.m", 836, "[MOEventManager _collectCompleteEventsBetweenStartDate:endDate:refreshVariant:withStoredEvents:handler:]_block_invoke"];
  v13 = v27;
  obj = v27[5];
  LOBYTE(v6) = MOSemaphoreWaitAndFaultIfTimeout_Internal(v11, &obj, v12, 120.0);
  objc_storeStrong(v13 + 5, obj);
  if ((v6 & 1) == 0)
  {
    v14 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __50__MOUserData__fetchUserDataWithCompletionHandler___block_invoke_cold_1();
    }
  }

  if (v27[5])
  {
    v15 = [*(a1 + 32) queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_282;
    block[3] = &unk_10033AF18;
    v18 = &v26;
    v17 = *(a1 + 104);
    dispatch_async(v15, block);
  }

  dispatch_group_leave(*(a1 + 96));

  _Block_object_dispose(&v26, 8);
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_2_280(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_3_281;
  block[3] = &unk_10033F878;
  v8 = v5;
  v13 = v8;
  v9 = v6;
  v14 = v9;
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = *(a1 + 72);
  dispatch_sync(v7, block);

  dispatch_semaphore_signal(*(a1 + 56));
  v10 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v10))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventManagerCollectEventsPeopleDensity", "", v11, 2u);
  }

  [*(a1 + 64) endSession];
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_3_281(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 domain];
    if (v3 == @"MOErrorDomain")
    {
      v16 = v3;
      v11 = [*(a1 + 32) code];

      if ((v11 & 0x400) != 0)
      {
        v12 = *(*(a1 + 72) + 8);
        v15 = *(v12 + 40);
        v13 = (v12 + 40);
        v14 = v15;
        if (!v15)
        {
          v14 = *(a1 + 32);
        }

        objc_storeStrong(v13, v14);
      }
    }

    else
    {
    }
  }

  else
  {
    v4 = [*(a1 + 40) objectForKey:@"newEvents"];

    if (v4)
    {
      v5 = *(a1 + 48);
      v6 = [*(a1 + 40) objectForKey:@"newEvents"];
      [v5 addObjectsFromArray:v6];
    }

    v7 = [*(a1 + 40) objectForKey:@"rehydratedEvents"];

    if (v7)
    {
      v8 = *(a1 + 56);
      v9 = [*(a1 + 40) objectForKey:@"rehydratedEvents"];
      [v8 addObjectsFromArray:v9];
    }

    v10 = *(*(*(a1 + 64) + 8) + 40);

    [v10 setObject:&__kCFBooleanTrue forKey:@"resultPeopleDensitySuccess"];
  }
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_282(uint64_t a1)
{
  v7[0] = NSLocalizedDescriptionKey;
  v7[1] = NSUnderlyingErrorKey;
  v2 = a1 + 40;
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v8[0] = @"People Density event collection timed out";
  v8[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  v5 = [NSError errorWithDomain:@"MOErrorDomain" code:15 userInfo:v4];

  v6 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_282_cold_1(v2);
  }

  (*(*(a1 + 32) + 16))();
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_289(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__43;
  v32 = __Block_byref_object_dispose__43;
  v33 = 0;
  v3 = [*(a1 + 32) lifeEventManager];
  v4 = *(a1 + 40);
  v5 = [NSDate dateWithTimeInterval:*(a1 + 48) sinceDate:0.0];
  v6 = [v4 laterDate:v5];
  v7 = *(a1 + 56);
  v8 = [NSDate dateWithTimeInterval:*(a1 + 48) sinceDate:1.0];
  v9 = [v7 laterDate:v8];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_2_290;
  v22[3] = &unk_10033F918;
  v22[4] = *(a1 + 32);
  v10 = *(a1 + 64);
  v23 = *(a1 + 72);
  v11 = *(a1 + 80);
  v12 = *(a1 + 112);
  v24 = v11;
  v27 = v12;
  v13 = v2;
  v25 = v13;
  v26 = *(a1 + 88);
  [v3 fetchLifeEventsBetweenStartDate:v6 endDate:v9 withStoredEvents:v10 handler:v22];

  v14 = [NSString stringWithFormat:@"%@ - [%s] - %d - %s", @"MOSemaphoreWait", "/Library/Caches/com.apple.xbs/Sources/Moments/momentsd/PromptEngine/PromptProvider/MOEventManager.m", 888, "[MOEventManager _collectCompleteEventsBetweenStartDate:endDate:refreshVariant:withStoredEvents:handler:]_block_invoke"];
  v15 = v29;
  obj = v29[5];
  LOBYTE(v6) = MOSemaphoreWaitAndFaultIfTimeout_Internal(v13, &obj, v14, 120.0);
  objc_storeStrong(v15 + 5, obj);
  if ((v6 & 1) == 0)
  {
    v16 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __50__MOUserData__fetchUserDataWithCompletionHandler___block_invoke_cold_1();
    }
  }

  if (v29[5])
  {
    v17 = [*(a1 + 32) queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_292;
    block[3] = &unk_10033AF18;
    v20 = &v28;
    v19 = *(a1 + 104);
    dispatch_async(v17, block);
  }

  dispatch_group_leave(*(a1 + 96));

  _Block_object_dispose(&v28, 8);
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_2_290(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_3_291;
  block[3] = &unk_10033F8F0;
  v8 = v5;
  v15 = v8;
  v9 = v6;
  v16 = v9;
  v17 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 72);
  v18 = v10;
  v19 = v11;
  dispatch_sync(v7, block);

  dispatch_semaphore_signal(*(a1 + 56));
  v12 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v12))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventManagerCollectEventsLifeEvents", "", v13, 2u);
  }

  [*(a1 + 64) endSession];
}

id *__105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_3_291(id *result)
{
  if (!result[4])
  {
    v2 = result;
    v3 = [result[5] objectForKey:@"newEvents"];

    if (v3)
    {
      v4 = v2[6];
      v5 = [v2[5] objectForKey:@"newEvents"];
      [v4 addObjectsFromArray:v5];
    }

    v6 = [v2[5] objectForKey:@"rehydratedEvents"];

    if (v6)
    {
      v7 = v2[7];
      v8 = [v2[5] objectForKey:@"rehydratedEvents"];
      [v7 addObjectsFromArray:v8];
    }

    v9 = *(*(v2[8] + 1) + 40);

    return [v9 setObject:&__kCFBooleanTrue forKey:@"resultLifeEventsSuccess"];
  }

  return result;
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_292(uint64_t a1)
{
  v7[0] = NSLocalizedDescriptionKey;
  v7[1] = NSUnderlyingErrorKey;
  v2 = a1 + 40;
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v8[0] = @"Life Event collection timed out";
  v8[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  v5 = [NSError errorWithDomain:@"MOErrorDomain" code:15 userInfo:v4];

  v6 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_292_cold_1(v2);
  }

  (*(*(a1 + 32) + 16))();
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_299(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__43;
  v58 = __Block_byref_object_dispose__43;
  v59 = 0;
  v3 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventManagerCollectEventsVisits-Training", "", buf, 2u);
  }

  v4 = [[MOPerformanceMeasurement alloc] initWithName:@"CollectVisitsTraining" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v4 startSession];
  v5 = [*(a1 + 32) routineServiceManager];
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_303;
  v50[3] = &unk_10033F990;
  v50[4] = *(a1 + 32);
  v53 = *(a1 + 112);
  v6 = v2;
  v51 = v6;
  v7 = v4;
  v52 = v7;
  [v5 detectHindsightVisitsWithCompletionHandler:v50];

  v8 = [NSString stringWithFormat:@"%@ - [%s] - %d - %s", @"MOSemaphoreWait", "/Library/Caches/com.apple.xbs/Sources/Moments/momentsd/PromptEngine/PromptProvider/MOEventManager.m", 938, "[MOEventManager _collectCompleteEventsBetweenStartDate:endDate:refreshVariant:withStoredEvents:handler:]_block_invoke"];
  v9 = v55;
  v49 = v55[5];
  v10 = MOSemaphoreWaitAndFaultIfTimeout_Internal(v6, &v49, v8, 120.0);
  objc_storeStrong(v9 + 5, v49);
  if (!v10)
  {
    v11 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __50__MOUserData__fetchUserDataWithCompletionHandler___block_invoke_cold_1();
    }
  }

  if (v55[5])
  {
    v12 = [*(a1 + 32) queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_305;
    block[3] = &unk_10033AF18;
    v48 = &v54;
    v47 = *(a1 + 104);
    dispatch_async(v12, block);

    dispatch_group_leave(*(a1 + 40));
    v13 = v47;
  }

  else
  {
    v14 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventManagerCollectEventsVisits-Fetching", "", buf, 2u);
    }

    v15 = [[MOPerformanceMeasurement alloc] initWithName:@"CollectVisitsFetching" measureRecentPeak:0];
    [(MOPerformanceMeasurement *)v15 startSession];
    v16 = dispatch_semaphore_create(0);

    *buf = 0;
    v41 = buf;
    v42 = 0x3032000000;
    v43 = __Block_byref_object_copy__43;
    v44 = __Block_byref_object_dispose__43;
    v45 = 0;
    v17 = [*(a1 + 32) routineServiceManager];
    v18 = *(a1 + 48);
    v19 = [NSDate dateWithTimeInterval:*(a1 + 56) sinceDate:0.0];
    v20 = [v18 laterDate:v19];
    v21 = +[NSDate distantFuture];
    v22 = *(a1 + 64);
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_312;
    v31[3] = &unk_10033F9E0;
    v31[4] = *(a1 + 32);
    v32 = v22;
    v33 = *(a1 + 72);
    v34 = *(a1 + 80);
    v35 = *(a1 + 88);
    v39 = *(a1 + 112);
    v13 = v15;
    v36 = v13;
    v37 = *(a1 + 96);
    v6 = v16;
    v38 = v6;
    [v17 fetchVisitsBetweenStartDate:v20 endDate:v21 withStoredEvents:v32 handler:v31];

    v23 = [NSString stringWithFormat:@"%@ - [%s] - %d - %s", @"MOSemaphoreWait", "/Library/Caches/com.apple.xbs/Sources/Moments/momentsd/PromptEngine/PromptProvider/MOEventManager.m", 991, "[MOEventManager _collectCompleteEventsBetweenStartDate:endDate:refreshVariant:withStoredEvents:handler:]_block_invoke"];
    v24 = (v41 + 40);
    obj = *(v41 + 5);
    LOBYTE(v19) = MOSemaphoreWaitAndFaultIfTimeout_Internal(v6, &obj, v23, 120.0);
    objc_storeStrong(v24, obj);
    if ((v19 & 1) == 0)
    {
      v25 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        __50__MOUserData__fetchUserDataWithCompletionHandler___block_invoke_cold_1();
      }
    }

    if (*(v41 + 5))
    {
      v26 = [*(a1 + 32) queue];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_316;
      v27[3] = &unk_10033AF18;
      v29 = buf;
      v28 = *(a1 + 104);
      dispatch_async(v26, v27);
    }

    dispatch_group_leave(*(a1 + 40));

    _Block_object_dispose(buf, 8);
  }

  _Block_object_dispose(&v54, 8);
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_303(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "detectHindsightVisits, error, %@", buf, 0xCu);
  }

  v5 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_304;
  block[3] = &unk_10033F968;
  v6 = v3;
  v9 = v6;
  v10 = *(a1 + 56);
  dispatch_sync(v5, block);

  dispatch_semaphore_signal(*(a1 + 40));
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventManagerCollectEventsVisits-Training", "", buf, 2u);
  }

  [*(a1 + 48) endSession];
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_304(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 domain];
    if (v3 == @"MOErrorDomain")
    {
      v10 = v3;
      v5 = [*(a1 + 32) code];

      if ((v5 & 0x400) != 0)
      {
        v6 = *(*(a1 + 48) + 8);
        v9 = *(v6 + 40);
        v7 = (v6 + 40);
        v8 = v9;
        if (!v9)
        {
          v8 = *(a1 + 32);
        }

        objc_storeStrong(v7, v8);
      }
    }

    else
    {
    }
  }

  else
  {
    v4 = *(*(*(a1 + 40) + 8) + 40);

    [v4 setObject:&__kCFBooleanTrue forKey:@"resultVisitsSuccess"];
  }
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_305(uint64_t a1)
{
  v7[0] = NSLocalizedDescriptionKey;
  v7[1] = NSUnderlyingErrorKey;
  v2 = a1 + 40;
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v8[0] = @"Visit training timed out";
  v8[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  v5 = [NSError errorWithDomain:@"MOErrorDomain" code:15 userInfo:v4];

  v6 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_305_cold_1(v2);
  }

  (*(*(a1 + 32) + 16))();
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_312(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_2_313;
  block[3] = &unk_10033F9B8;
  v8 = v5;
  v19 = v8;
  v9 = v6;
  v20 = v9;
  v16 = *(a1 + 32);
  v10 = *(&v16 + 1);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  *&v13 = v11;
  *(&v13 + 1) = v12;
  v21 = v16;
  v22 = v13;
  v23 = *(a1 + 64);
  v24 = *(a1 + 96);
  dispatch_sync(v7, block);

  v14 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventManagerCollectEventsVisits-Fetching", "", buf, 2u);
  }

  [*(a1 + 72) endSession];
  v15 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventManagerCollectEventsVisits", "", buf, 2u);
  }

  [*(a1 + 80) endSession];
  dispatch_semaphore_signal(*(a1 + 88));
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_2_313(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 domain];
    if (v3 == @"MOErrorDomain")
    {
      v19 = v3;
      v14 = [*(a1 + 32) code];

      if ((v14 & 0x400) != 0)
      {
        v15 = *(*(a1 + 96) + 8);
        v18 = *(v15 + 40);
        v16 = (v15 + 40);
        v17 = v18;
        if (!v18)
        {
          v17 = *(a1 + 32);
        }

        objc_storeStrong(v16, v17);
      }
    }

    else
    {
    }
  }

  else
  {
    v4 = [*(a1 + 40) objectForKey:@"newEvents"];

    if (v4)
    {
      v27 = 0;
      v28 = &v27;
      v29 = 0x3032000000;
      v30 = __Block_byref_object_copy__43;
      v31 = __Block_byref_object_dispose__43;
      v32 = 0;
      v21 = 0;
      v22 = &v21;
      v23 = 0x3032000000;
      v24 = __Block_byref_object_copy__43;
      v25 = __Block_byref_object_dispose__43;
      v26 = 0;
      v5 = [*(a1 + 48) routineServiceManager];
      v6 = [*(a1 + 40) objectForKey:@"newEvents"];
      v7 = *(a1 + 56);
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_3_314;
      v20[3] = &unk_10033BC78;
      v20[4] = &v27;
      v20[5] = &v21;
      [v5 fetchConsolidatedEvents:v6 withStored:v7 handler:v20];

      [*(a1 + 64) addObjectsFromArray:v28[5]];
      if ([v22[5] count])
      {
        v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = [v22[5] count];
          *buf = 134217984;
          v34 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Number of real time new home events to be deleted is , %lu", buf, 0xCu);
        }

        [*(a1 + 72) addObjectsFromArray:v22[5]];
      }

      _Block_object_dispose(&v21, 8);

      _Block_object_dispose(&v27, 8);
    }

    v10 = [*(a1 + 40) objectForKey:@"rehydratedEvents"];
    v11 = v10 == 0;

    if (!v11)
    {
      v12 = *(a1 + 80);
      v13 = [*(a1 + 40) objectForKey:@"rehydratedEvents"];
      [v12 addObjectsFromArray:v13];
    }

    [*(*(*(a1 + 88) + 8) + 40) setObject:&__kCFBooleanTrue forKey:@"resultVisitsTrainingSuccess"];
  }
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_3_314(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_316(uint64_t a1)
{
  v7[0] = NSLocalizedDescriptionKey;
  v7[1] = NSUnderlyingErrorKey;
  v2 = a1 + 40;
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v8[0] = @"Visit fetching timed out";
  v8[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  v5 = [NSError errorWithDomain:@"MOErrorDomain" code:15 userInfo:v4];

  v6 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_316_cold_1(v2);
  }

  (*(*(a1 + 32) + 16))();
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_323(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__43;
  v33 = __Block_byref_object_dispose__43;
  v34 = 0;
  v3 = [*(a1 + 32) nowPlayingMediaManager];
  v4 = *(a1 + 40);
  v5 = [NSDate dateWithTimeInterval:*(a1 + 48) sinceDate:0.0];
  v6 = [v4 laterDate:v5];
  v7 = *(a1 + 56);
  v8 = [NSDate dateWithTimeInterval:*(a1 + 48) sinceDate:1.0];
  v9 = [v7 laterDate:v8];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_2_324;
  v22[3] = &unk_10033F828;
  v22[4] = *(a1 + 32);
  v10 = *(a1 + 64);
  v23 = *(a1 + 72);
  v24 = *(a1 + 80);
  v11 = *(a1 + 88);
  v12 = *(a1 + 120);
  v25 = v11;
  v28 = v12;
  v13 = v2;
  v26 = v13;
  v27 = *(a1 + 96);
  [v3 fetchMediaPlayEventsBetweenStartDate:v6 endDate:v9 withStoredEvents:v10 handler:v22];

  v14 = [NSString stringWithFormat:@"%@ - [%s] - %d - %s", @"MOSemaphoreWait", "/Library/Caches/com.apple.xbs/Sources/Moments/momentsd/PromptEngine/PromptProvider/MOEventManager.m", 1045, "[MOEventManager _collectCompleteEventsBetweenStartDate:endDate:refreshVariant:withStoredEvents:handler:]_block_invoke"];
  v15 = v30;
  obj = v30[5];
  LOBYTE(v6) = MOSemaphoreWaitAndFaultIfTimeout_Internal(v13, &obj, v14, 120.0);
  objc_storeStrong(v15 + 5, obj);
  if ((v6 & 1) == 0)
  {
    v16 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __50__MOUserData__fetchUserDataWithCompletionHandler___block_invoke_cold_1();
    }
  }

  if (v30[5])
  {
    v17 = [*(a1 + 32) queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_326;
    block[3] = &unk_10033AF18;
    v20 = &v29;
    v19 = *(a1 + 112);
    dispatch_async(v17, block);
  }

  dispatch_group_leave(*(a1 + 104));

  _Block_object_dispose(&v29, 8);
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_2_324(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_3_325;
  block[3] = &unk_10033F800;
  v8 = v5;
  v15 = v8;
  v9 = v6;
  v16 = v9;
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 80);
  v19 = v10;
  v20 = v11;
  dispatch_sync(v7, block);

  dispatch_semaphore_signal(*(a1 + 64));
  v12 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v12))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventManagerCollectEventsMusic", "", v13, 2u);
  }

  [*(a1 + 72) endSession];
}

id *__105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_3_325(id *result)
{
  if (!result[4])
  {
    v2 = result;
    v3 = [result[5] objectForKey:@"newEvents"];

    if (v3)
    {
      v4 = v2[6];
      v5 = [v2[5] objectForKey:@"newEvents"];
      [v4 addObjectsFromArray:v5];
    }

    v6 = [v2[5] objectForKey:@"rehydratedEvents"];

    if (v6)
    {
      v7 = v2[7];
      v8 = [v2[5] objectForKey:@"rehydratedEvents"];
      [v7 addObjectsFromArray:v8];
    }

    v9 = [v2[5] objectForKey:@"unrehydratedEvents"];

    if (v9)
    {
      v10 = v2[8];
      v11 = [v2[5] objectForKey:@"unrehydratedEvents"];
      [v10 addObjectsFromArray:v11];
    }

    v12 = *(*(v2[9] + 1) + 40);

    return [v12 setObject:&__kCFBooleanTrue forKey:@"resultMusicSuccess"];
  }

  return result;
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_326(uint64_t a1)
{
  v7[0] = NSLocalizedDescriptionKey;
  v7[1] = NSUnderlyingErrorKey;
  v2 = a1 + 40;
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v8[0] = @"Media event collection timed out";
  v8[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  v5 = [NSError errorWithDomain:@"MOErrorDomain" code:15 userInfo:v4];

  v6 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_326_cold_1(v2);
  }

  (*(*(a1 + 32) + 16))();
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_333(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__43;
  v30 = __Block_byref_object_dispose__43;
  v31 = 0;
  v3 = [*(a1 + 32) motionManager];
  v4 = *(a1 + 40);
  v5 = [NSDate dateWithTimeInterval:*(a1 + 48) sinceDate:0.0];
  v6 = [v4 laterDate:v5];
  v7 = *(a1 + 56);
  v8 = [NSDate dateWithTimeInterval:*(a1 + 48) sinceDate:1.0];
  v9 = [v7 laterDate:v8];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_2_334;
  v20[3] = &unk_10033F8A0;
  v20[4] = *(a1 + 32);
  v10 = *(a1 + 64);
  v21 = *(a1 + 72);
  v22 = *(a1 + 80);
  v25 = *(a1 + 112);
  v11 = v2;
  v23 = v11;
  v24 = *(a1 + 88);
  [v3 fetchMotionActivityBetweenStartDate:v6 endDate:v9 withStoredEvents:v10 handler:v20];

  v12 = [NSString stringWithFormat:@"%@ - [%s] - %d - %s", @"MOSemaphoreWait", "/Library/Caches/com.apple.xbs/Sources/Moments/momentsd/PromptEngine/PromptProvider/MOEventManager.m", 1099, "[MOEventManager _collectCompleteEventsBetweenStartDate:endDate:refreshVariant:withStoredEvents:handler:]_block_invoke"];
  v13 = v27;
  obj = v27[5];
  LOBYTE(v6) = MOSemaphoreWaitAndFaultIfTimeout_Internal(v11, &obj, v12, 120.0);
  objc_storeStrong(v13 + 5, obj);
  if ((v6 & 1) == 0)
  {
    v14 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __50__MOUserData__fetchUserDataWithCompletionHandler___block_invoke_cold_1();
    }
  }

  if (v27[5])
  {
    v15 = [*(a1 + 32) queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_336;
    block[3] = &unk_10033AF18;
    v18 = &v26;
    v17 = *(a1 + 104);
    dispatch_async(v15, block);
  }

  dispatch_group_leave(*(a1 + 96));

  _Block_object_dispose(&v26, 8);
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_2_334(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_3_335;
  block[3] = &unk_10033F878;
  v8 = v5;
  v13 = v8;
  v9 = v6;
  v14 = v9;
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = *(a1 + 72);
  dispatch_sync(v7, block);

  dispatch_semaphore_signal(*(a1 + 56));
  v10 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v10))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventManagerCollectEventsMotionActivity", "", v11, 2u);
  }

  [*(a1 + 64) endSession];
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_3_335(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 domain];
    if (v3 == @"MOErrorDomain")
    {
      v16 = v3;
      v11 = [*(a1 + 32) code];

      if ((v11 & 0x400) != 0)
      {
        v12 = *(*(a1 + 72) + 8);
        v15 = *(v12 + 40);
        v13 = (v12 + 40);
        v14 = v15;
        if (!v15)
        {
          v14 = *(a1 + 32);
        }

        objc_storeStrong(v13, v14);
      }
    }

    else
    {
    }
  }

  else
  {
    v4 = [*(a1 + 40) objectForKey:@"newEvents"];

    if (v4)
    {
      v5 = *(a1 + 48);
      v6 = [*(a1 + 40) objectForKey:@"newEvents"];
      [v5 addObjectsFromArray:v6];
    }

    v7 = [*(a1 + 40) objectForKey:@"rehydratedEvents"];

    if (v7)
    {
      v8 = *(a1 + 56);
      v9 = [*(a1 + 40) objectForKey:@"rehydratedEvents"];
      [v8 addObjectsFromArray:v9];
    }

    v10 = *(*(*(a1 + 64) + 8) + 40);

    [v10 setObject:&__kCFBooleanTrue forKey:@"resultMotionSuccess"];
  }
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_336(uint64_t a1)
{
  v7[0] = NSLocalizedDescriptionKey;
  v7[1] = NSUnderlyingErrorKey;
  v2 = a1 + 40;
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v8[0] = @"Motion Activity event collection timed out";
  v8[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  v5 = [NSError errorWithDomain:@"MOErrorDomain" code:15 userInfo:v4];

  v6 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_336_cold_1(v2);
  }

  (*(*(a1 + 32) + 16))();
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_343(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__43;
  v26 = __Block_byref_object_dispose__43;
  v27 = 0;
  v3 = [*(a1 + 32) screenTimeManager];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_2_344;
  v16[3] = &unk_10033F8A0;
  v16[4] = *(a1 + 32);
  v6 = *(a1 + 56);
  v17 = *(a1 + 64);
  v18 = *(a1 + 72);
  v21 = *(a1 + 104);
  v7 = v2;
  v19 = v7;
  v20 = *(a1 + 80);
  [v3 fetchScreenTimeEventsBetweenStartDate:v4 endDate:v5 withStoredEvents:v6 handler:v16];

  v8 = [NSString stringWithFormat:@"%@ - [%s] - %d - %s", @"MOSemaphoreWait", "/Library/Caches/com.apple.xbs/Sources/Moments/momentsd/PromptEngine/PromptProvider/MOEventManager.m", 1152, "[MOEventManager _collectCompleteEventsBetweenStartDate:endDate:refreshVariant:withStoredEvents:handler:]_block_invoke"];
  v9 = v23;
  obj = v23[5];
  LOBYTE(v5) = MOSemaphoreWaitAndFaultIfTimeout_Internal(v7, &obj, v8, 120.0);
  objc_storeStrong(v9 + 5, obj);
  if ((v5 & 1) == 0)
  {
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __50__MOUserData__fetchUserDataWithCompletionHandler___block_invoke_cold_1();
    }
  }

  if (v23[5])
  {
    v11 = [*(a1 + 32) queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_346;
    block[3] = &unk_10033AF18;
    v14 = &v22;
    v13 = *(a1 + 96);
    dispatch_async(v11, block);
  }

  dispatch_group_leave(*(a1 + 88));

  _Block_object_dispose(&v22, 8);
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_2_344(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_3_345;
  block[3] = &unk_10033F878;
  v8 = v5;
  v13 = v8;
  v9 = v6;
  v14 = v9;
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = *(a1 + 72);
  dispatch_sync(v7, block);

  dispatch_semaphore_signal(*(a1 + 56));
  v10 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v10))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventManagerCollectEventsScreenTime", "", v11, 2u);
  }

  [*(a1 + 64) endSession];
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_3_345(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 domain];
    if (v3 == @"MOErrorDomain")
    {
      v16 = v3;
      v11 = [*(a1 + 32) code];

      if ((v11 & 0x400) != 0)
      {
        v12 = *(*(a1 + 72) + 8);
        v15 = *(v12 + 40);
        v13 = (v12 + 40);
        v14 = v15;
        if (!v15)
        {
          v14 = *(a1 + 32);
        }

        objc_storeStrong(v13, v14);
      }
    }

    else
    {
    }
  }

  else
  {
    v4 = [*(a1 + 40) objectForKey:@"newEvents"];

    if (v4)
    {
      v5 = *(a1 + 48);
      v6 = [*(a1 + 40) objectForKey:@"newEvents"];
      [v5 addObjectsFromArray:v6];
    }

    v7 = [*(a1 + 40) objectForKey:@"rehydratedEvents"];

    if (v7)
    {
      v8 = *(a1 + 56);
      v9 = [*(a1 + 40) objectForKey:@"rehydratedEvents"];
      [v8 addObjectsFromArray:v9];
    }

    v10 = *(*(*(a1 + 64) + 8) + 40);

    [v10 setObject:&__kCFBooleanTrue forKey:@"resultScreenTimeSuccess"];
  }
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_346(uint64_t a1)
{
  v7[0] = NSLocalizedDescriptionKey;
  v7[1] = NSUnderlyingErrorKey;
  v2 = a1 + 40;
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v8[0] = @"Screen Time event collection timed out";
  v8[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  v5 = [NSError errorWithDomain:@"MOErrorDomain" code:15 userInfo:v4];

  v6 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_346_cold_1(v2);
  }

  (*(*(a1 + 32) + 16))();
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_353(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__43;
  v26 = __Block_byref_object_dispose__43;
  v27 = 0;
  v3 = [*(a1 + 32) spotlightManager];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_2_354;
  v16[3] = &unk_10033F8A0;
  v16[4] = *(a1 + 32);
  v6 = *(a1 + 56);
  v17 = *(a1 + 64);
  v18 = *(a1 + 72);
  v21 = *(a1 + 104);
  v7 = v2;
  v19 = v7;
  v20 = *(a1 + 80);
  [v3 fetchInviteEventsBetweenStartDate:v4 endDate:v5 withStoredEvents:v6 handler:v16];

  v8 = [NSString stringWithFormat:@"%@ - [%s] - %d - %s", @"MOSemaphoreWait", "/Library/Caches/com.apple.xbs/Sources/Moments/momentsd/PromptEngine/PromptProvider/MOEventManager.m", 1206, "[MOEventManager _collectCompleteEventsBetweenStartDate:endDate:refreshVariant:withStoredEvents:handler:]_block_invoke"];
  v9 = v23;
  obj = v23[5];
  LOBYTE(v5) = MOSemaphoreWaitAndFaultIfTimeout_Internal(v7, &obj, v8, 120.0);
  objc_storeStrong(v9 + 5, obj);
  if ((v5 & 1) == 0)
  {
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __50__MOUserData__fetchUserDataWithCompletionHandler___block_invoke_cold_1();
    }
  }

  if (v23[5])
  {
    v11 = [*(a1 + 32) queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_356;
    block[3] = &unk_10033AF18;
    v14 = &v22;
    v13 = *(a1 + 96);
    dispatch_async(v11, block);
  }

  dispatch_group_leave(*(a1 + 88));

  _Block_object_dispose(&v22, 8);
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_2_354(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_3_355;
  block[3] = &unk_10033F878;
  v8 = v5;
  v13 = v8;
  v9 = v6;
  v14 = v9;
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = *(a1 + 72);
  dispatch_sync(v7, block);

  dispatch_semaphore_signal(*(a1 + 56));
  v10 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v10))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventManagerCollectEventsSpotlight", "", v11, 2u);
  }

  [*(a1 + 64) endSession];
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_3_355(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 domain];
    if (v3 == @"MOErrorDomain")
    {
      v16 = v3;
      v11 = [*(a1 + 32) code];

      if ((v11 & 0x400) != 0)
      {
        v12 = *(*(a1 + 72) + 8);
        v15 = *(v12 + 40);
        v13 = (v12 + 40);
        v14 = v15;
        if (!v15)
        {
          v14 = *(a1 + 32);
        }

        objc_storeStrong(v13, v14);
      }
    }

    else
    {
    }
  }

  else
  {
    v4 = [*(a1 + 40) objectForKey:@"newEvents"];

    if (v4)
    {
      v5 = *(a1 + 48);
      v6 = [*(a1 + 40) objectForKey:@"newEvents"];
      [v5 addObjectsFromArray:v6];
    }

    v7 = [*(a1 + 40) objectForKey:@"rehydratedEvents"];

    if (v7)
    {
      v8 = *(a1 + 56);
      v9 = [*(a1 + 40) objectForKey:@"rehydratedEvents"];
      [v8 addObjectsFromArray:v9];
    }

    v10 = *(*(*(a1 + 64) + 8) + 40);

    [v10 setObject:&__kCFBooleanTrue forKey:@"resultSpotlightSuccess"];
  }
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_356(uint64_t a1)
{
  v7[0] = NSLocalizedDescriptionKey;
  v7[1] = NSUnderlyingErrorKey;
  v2 = a1 + 40;
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v8[0] = @"Spotlight event collection timed out";
  v8[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  v5 = [NSError errorWithDomain:@"MOErrorDomain" code:15 userInfo:v4];

  v6 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_356_cold_1(v2);
  }

  (*(*(a1 + 32) + 16))();
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_360(uint64_t a1)
{
  if ((*(*(*(a1 + 112) + 8) + 24) & 1) == 0)
  {
    [*(a1 + 32) addEntriesFromDictionary:*(*(*(a1 + 120) + 8) + 40)];
    [*(a1 + 32) addEntriesFromDictionary:*(*(*(a1 + 128) + 8) + 40)];
    [*(a1 + 32) addEntriesFromDictionary:*(*(*(a1 + 136) + 8) + 40)];
    [*(a1 + 32) addEntriesFromDictionary:*(*(*(a1 + 144) + 8) + 40)];
    [*(a1 + 32) addEntriesFromDictionary:*(*(*(a1 + 152) + 8) + 40)];
    [*(a1 + 32) addEntriesFromDictionary:*(*(*(a1 + 160) + 8) + 40)];
    [*(a1 + 32) addEntriesFromDictionary:*(*(*(a1 + 168) + 8) + 40)];
    [*(a1 + 32) addEntriesFromDictionary:*(*(*(a1 + 176) + 8) + 40)];
    [*(a1 + 32) addEntriesFromDictionary:*(*(*(a1 + 184) + 8) + 40)];
    [*(a1 + 32) addEntriesFromDictionary:*(*(*(a1 + 192) + 8) + 40)];
    [*(a1 + 32) addEntriesFromDictionary:*(*(*(a1 + 200) + 8) + 40)];
    [*(a1 + 32) addEntriesFromDictionary:*(*(*(a1 + 208) + 8) + 40)];
    v2 = [*(a1 + 40) count];
    v3 = [*(a1 + 48) count] + v2;
    v4 = [*(a1 + 56) count];
    v5 = *(a1 + 32);
    v6 = [NSNumber numberWithInt:v3 + v4];
    [v5 setValue:v6 forKey:@"resultNumberOfEvents"];

    v7 = *(*(*(a1 + 216) + 8) + 40);
    if (v7 && ([v7 code] & 0x400) != 0)
    {
      [*(a1 + 32) setValue:&off_10036C1A8 forKey:@"stateDataProviderDatabaseUnavailable"];
    }

    v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 64);
      v10 = *(a1 + 72);
      v11 = [*(a1 + 40) count];
      v12 = [*(a1 + 56) count];
      v13 = [*(a1 + 48) count];
      v14 = [*(a1 + 80) count];
      *buf = 138413570;
      v38 = v9;
      v39 = 2112;
      v40 = v10;
      v41 = 2048;
      v42 = v11;
      v43 = 2048;
      v44 = v12;
      v45 = 2048;
      v46 = v13;
      v47 = 2048;
      v48 = v14;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "done with fetching and rehydrating events, start date, %@, end date, %@, rehydrated events count, %lu, new events count, %lu, unrehydrated events count, %lu, stored events count, %lu", buf, 0x3Eu);
    }

    v15 = objc_opt_new();
    v16 = objc_opt_new();
    if ([*(a1 + 40) count])
    {
      [v15 addObjectsFromArray:*(a1 + 40)];
    }

    if ([*(a1 + 56) count])
    {
      [v15 addObjectsFromArray:*(a1 + 56)];
      [v16 addObjectsFromArray:*(a1 + 56)];
    }

    if ([*(a1 + 48) count])
    {
      [v16 addObjectsFromArray:*(a1 + 48)];
    }

    [*(a1 + 88) setCachedEvents:v15];
    [*(a1 + 88) setCacheStartDate:*(a1 + 64)];
    [*(a1 + 88) setCacheEndDate:*(a1 + 72)];
    v17 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [*(a1 + 88) cachedEvents];
      v19 = [v18 count];
      v20 = [*(a1 + 88) cacheStartDate];
      v21 = [*(a1 + 88) cacheEndDate];
      *buf = 134218498;
      v38 = v19;
      v39 = 2112;
      v40 = v20;
      v41 = 2112;
      v42 = v21;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "done with updating cache, event count, %lu, start date, %@, end date, %@", buf, 0x20u);
    }

    v22 = [*(a1 + 96) count];
    v23 = *(a1 + 216);
    if (v22 && !*(*(v23 + 8) + 40))
    {
      v24 = [*(a1 + 88) eventStore];
      v25 = *(a1 + 96);
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_361;
      v34[3] = &unk_10033BE48;
      v36 = *(a1 + 216);
      v35 = v25;
      [v24 removeEvents:v35 CompletionHandler:v34];

      v23 = *(a1 + 216);
    }

    if (*(*(v23 + 8) + 40))
    {
      v26 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_360_cold_1(a1 + 216);
      }

      v27 = *(*(*(a1 + 216) + 8) + 40);
      v28 = *(a1 + 32);
      (*(*(a1 + 104) + 16))();
    }

    else
    {
      v29 = [*(a1 + 88) eventStore];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_365;
      v30[3] = &unk_10033C2F0;
      v33 = *(a1 + 104);
      v31 = *(a1 + 32);
      v32 = v16;
      [v29 storeEvents:v32 CompletionHandler:v30];
    }
  }
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_361(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v15 = NSLocalizedDescriptionKey;
    v16 = @"Remove old real time visits events failed";
    v4 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v5 = [NSError errorWithDomain:@"MOErrorDomain" code:22 userInfo:v4];

    v6 = *(*(a1 + 40) + 8);
    v9 = *(v6 + 40);
    v7 = (v6 + 40);
    v8 = v9;
    if (v9)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    objc_storeStrong(v7, v10);
    v11 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_361_cold_1();
    }
  }

  else
  {
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v12 = [*(a1 + 32) count];
      v13 = 134217984;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "remove old real time visits events succeeded and continue refresh, removed events count %lu", &v13, 0xCu);
    }
  }
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_365(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_365_cold_1();
    }

    v6 = *(a1 + 32);
    v7 = *(*(a1 + 48) + 16);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 40) count];
      v10 = 134217984;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "saved new and unrehydrated events into database. %lu", &v10, 0xCu);
    }

    v9 = *(a1 + 32);
    v7 = *(*(a1 + 48) + 16);
  }

  v7();
}

- (void)storeEvents:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventManagerStoreEvents", "", buf, 2u);
  }

  v9 = [[MOPerformanceMeasurement alloc] initWithName:@"StoreEvents" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v9 startSession];
  v10 = [(MOEventManager *)self eventStore];
  v11 = [v10 persistenceManager];
  v12 = [v11 availability];

  v13 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
  v14 = v13;
  if (v12 == 2)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "store events since datastore is available", buf, 2u);
    }

    v15 = [(MOEventManager *)self eventStore];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = __38__MOEventManager_storeEvents_handler___block_invoke;
    v19[3] = &unk_10033C170;
    v21 = v7;
    v20 = v9;
    [v15 storeEvents:v6 CompletionHandler:v19];

    v16 = v21;
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [MOEventManager storeEvents:handler:];
    }

    v23 = NSLocalizedDescriptionKey;
    v24 = @"[storeEvents] database is not available";
    v17 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v16 = [NSError errorWithDomain:@"MOErrorDomain" code:16 userInfo:v17];

    if (v7)
    {
      (*(v7 + 2))(v7, v16, &__NSDictionary0__struct);
    }

    v18 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventManagerStoreEvents", "", buf, 2u);
    }

    [(MOPerformanceMeasurement *)v9 endSession];
  }
}

void __38__MOEventManager_storeEvents_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  v8 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v8))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventManagerStoreEvents", "", v9, 2u);
  }

  [*(a1 + 32) endSession];
}

- (void)fetchEventsWithOptions:(id)a3 CompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventManagerFetchEvents", "", buf, 2u);
  }

  v9 = [[MOPerformanceMeasurement alloc] initWithName:@"FetchEvents" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v9 startSession];
  v10 = [(MOEventManager *)self eventStore];
  v11 = [v10 persistenceManager];
  v12 = [v11 availability];

  v13 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
  v14 = v13;
  if (v12 == 2)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "fetch events since datastore is available", buf, 2u);
    }

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = __59__MOEventManager_fetchEventsWithOptions_CompletionHandler___block_invoke;
    v18[3] = &unk_100337850;
    v20 = v7;
    v19 = v9;
    [(MOEventManager *)self _fetchEventsWithOptions:v6 CompletionHandler:v18];

    v15 = v20;
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [MOEventManager fetchEventsWithOptions:CompletionHandler:];
    }

    v22 = NSLocalizedDescriptionKey;
    v23 = @"database is not available";
    v16 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v15 = [NSError errorWithDomain:@"MOErrorDomain" code:16 userInfo:v16];

    if (v7)
    {
      (*(v7 + 2))(v7, &__NSArray0__struct, v15);
    }

    v17 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v17))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventManagerFetchEvents", "", buf, 2u);
    }

    [(MOPerformanceMeasurement *)v9 endSession];
  }
}

void __59__MOEventManager_fetchEventsWithOptions_CompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  v8 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v8))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventManagerFetchEvents", "", v9, 2u);
  }

  [*(a1 + 32) endSession];
}

- (void)_fetchEventsWithOptions:(id)a3 CompletionHandler:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = [(MOEventManager *)self cachedEvents];
  v11 = [v10 count];

  if (v11)
  {
    v12 = [v8 dateInterval];
    if (v12)
    {
      v11 = [(MOEventManager *)self cacheStartDate];
      v4 = [v8 dateInterval];
      v5 = [v4 startDate];
      if ([v11 isOnOrBefore:v5])
      {

LABEL_11:
        v19 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = [(MOEventManager *)self cacheStartDate];
          v21 = [(MOEventManager *)self cacheEndDate];
          v22 = [v8 dateInterval];
          v23 = [v22 startDate];
          v24 = [v8 dateInterval];
          v25 = [v24 endDate];
          *buf = 138413058;
          v42 = v20;
          v43 = 2112;
          v44 = v21;
          v45 = 2112;
          v46 = v23;
          v47 = 2112;
          v48 = v25;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "cached events time window covers the query time window, so fetch data from cache, cache start date, %@, end date, %@, query start date, %@, end date, %@", buf, 0x2Au);
        }

        v37[0] = _NSConcreteStackBlock;
        v37[1] = 3221225472;
        v37[2] = __60__MOEventManager__fetchEventsWithOptions_CompletionHandler___block_invoke_378;
        v37[3] = &unk_1003369E0;
        v38 = v9;
        [(MOEventManager *)self _fetchEventsFromCacheWithOptions:v8 CompletionHandler:v37];
        v14 = v38;
        goto LABEL_17;
      }
    }

    v15 = [(MOEventManager *)self cacheEndDate];
    v16 = [(MOEventManager *)self cacheStartDate];
    [v15 timeIntervalSinceDate:v16];
    v18 = v17;

    if (v12)
    {
    }

    if (v18 > 2419200.0)
    {
      goto LABEL_11;
    }

    v26 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = [(MOEventManager *)self cacheStartDate];
      v28 = [(MOEventManager *)self cacheEndDate];
      v29 = [v8 dateInterval];
      v30 = [v29 startDate];
      v31 = [v8 dateInterval];
      v32 = [v31 endDate];
      *buf = 138413058;
      v42 = v27;
      v43 = 2112;
      v44 = v28;
      v45 = 2112;
      v46 = v30;
      v47 = 2112;
      v48 = v32;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "cached events time window does not cover the query time window, so fetch part from cache and rehydrate rest, cache start date, %@, end date, %@, query start date, %@, end date, %@", buf, 0x2Au);
    }

    eventStore = self->_eventStore;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = __60__MOEventManager__fetchEventsWithOptions_CompletionHandler___block_invoke_379;
    v34[3] = &unk_10033FAD0;
    v34[4] = self;
    v36 = v9;
    v35 = v8;
    [(MOEventStore *)eventStore fetchEventsWithOptions:v35 CompletionHandler:v34];

    v14 = v36;
  }

  else
  {
    v13 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "no events in cache so fetch data from database and rehydrate them or fetch interval is nil", buf, 2u);
    }

    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = __60__MOEventManager__fetchEventsWithOptions_CompletionHandler___block_invoke;
    v39[3] = &unk_1003369E0;
    v40 = v9;
    [(MOEventManager *)self _fetchEventsFromDBAndRehydrateEventsWithOptions:v8 CompletionHandler:v39];
    v14 = v40;
  }

LABEL_17:
}

void __60__MOEventManager__fetchEventsWithOptions_CompletionHandler___block_invoke_379(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __60__MOEventManager__fetchEventsWithOptions_CompletionHandler___block_invoke_2;
  block[3] = &unk_10033FAA8;
  v13 = v6;
  v17 = *(a1 + 48);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v14 = v5;
  v15 = v8;
  v16 = v9;
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, block);
}

void __60__MOEventManager__fetchEventsWithOptions_CompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 32) == 0;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 40) count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "fetched events count from store, %lu", &buf, 0xCu);
    }

    v8 = objc_opt_new();
    v9 = objc_opt_new();
    v10 = [*(a1 + 48) cachedEvents];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = __60__MOEventManager__fetchEventsWithOptions_CompletionHandler___block_invoke_380;
    v38[3] = &unk_10033F3C0;
    v26 = v8;
    v39 = v26;
    v11 = v9;
    v40 = v11;
    [v10 enumerateObjectsUsingBlock:v38];

    v28 = objc_opt_new();
    v27 = objc_opt_new();
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v12 = *(a1 + 40);
    v13 = [v12 countByEnumeratingWithState:&v34 objects:v46 count:16];
    if (v13)
    {
      v14 = *v35;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v35 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v34 + 1) + 8 * i);
          if ([*(*(a1 + 48) + 128) isAllowedToProcessEventCategory:{objc_msgSend(v16, "category")}])
          {
            v17 = [v16 eventIdentifier];
            v18 = [v17 UUIDString];
            v19 = [v11 objectForKeyedSubscript:v18];

            if (v19)
            {
              [v28 addObject:v19];
            }

            else
            {
              [v27 addObject:v16];
            }
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v34 objects:v46 count:16];
      }

      while (v13);
    }

    v20 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = [v28 count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "fetched events count from cache after filtering authorized events, %lu", &buf, 0xCu);
    }

    v22 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = [v27 count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "fetched events count from store which needes rehydration after filtering authorized events, %lu", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v42 = 0x3032000000;
    v43 = __Block_byref_object_copy__43;
    v44 = __Block_byref_object_dispose__43;
    v45 = [v28 mutableCopy];
    v24 = *(a1 + 48);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = __60__MOEventManager__fetchEventsWithOptions_CompletionHandler___block_invoke_382;
    v29[3] = &unk_10033FA80;
    v25 = v27;
    v30 = v25;
    p_buf = &buf;
    v31 = *(a1 + 56);
    v32 = *(a1 + 64);
    [v24 _rehydrateEvents:v25 withHandler:v29];

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __60__MOEventManager__fetchEventsWithOptions_CompletionHandler___block_invoke_2_cold_1(v2);
    }

    v6 = *(a1 + 64);
    if (v6)
    {
      (*(v6 + 16))(v6, &__NSArray0__struct, *v2);
    }
  }
}

void __60__MOEventManager__fetchEventsWithOptions_CompletionHandler___block_invoke_380(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventIdentifier];

  if (v4)
  {
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v3 eventIdentifier];
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "event id: %@", &v13, 0xCu);
    }

    v7 = *(a1 + 32);
    v8 = [v3 eventIdentifier];
    v9 = [v8 UUIDString];
    [v7 addObject:v9];

    v10 = *(a1 + 40);
    v11 = [v3 eventIdentifier];
    v12 = [v11 UUIDString];
    [v10 setObject:v3 forKey:v12];
  }
}

void __60__MOEventManager__fetchEventsWithOptions_CompletionHandler___block_invoke_382(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v5 count];
    v9 = [*(a1 + 32) count];
    *buf = 134218240;
    v17 = v8;
    v18 = 2048;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "rehydrated events count, %lu, input, %lu", buf, 0x16u);
  }

  if ([v5 count])
  {
    [*(*(*(a1 + 56) + 8) + 40) addObjectsFromArray:v5];
  }

  v10 = *(*(*(a1 + 56) + 8) + 40);
  v11 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:{objc_msgSend(*(a1 + 40), "ascending")}];
  v15 = v11;
  v12 = [NSArray arrayWithObjects:&v15 count:1];
  v13 = [v10 sortedArrayUsingDescriptors:v12];

  v14 = *(*(*(a1 + 56) + 8) + 40);
  (*(*(a1 + 48) + 16))();
}

- (void)_fetchEventsFromDBAndRehydrateEventsWithOptions:(id)a3 CompletionHandler:(id)a4
{
  v6 = a4;
  eventStore = self->_eventStore;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __84__MOEventManager__fetchEventsFromDBAndRehydrateEventsWithOptions_CompletionHandler___block_invoke;
  v9[3] = &unk_10033BEE0;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [(MOEventStore *)eventStore fetchEventsWithOptions:a3 CompletionHandler:v9];
}

void __84__MOEventManager__fetchEventsFromDBAndRehydrateEventsWithOptions_CompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __84__MOEventManager__fetchEventsFromDBAndRehydrateEventsWithOptions_CompletionHandler___block_invoke_2;
  v12[3] = &unk_10033DFC8;
  v13 = v6;
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v14 = v5;
  v15 = v9;
  v16 = v8;
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, v12);
}

void __84__MOEventManager__fetchEventsFromDBAndRehydrateEventsWithOptions_CompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __60__MOEventManager__fetchEventsWithOptions_CompletionHandler___block_invoke_2_cold_1(v2);
    }

    v6 = *(a1 + 56);
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
      *buf = 134217984;
      v28 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "fetched events count from store, %lu", buf, 0xCu);
    }

    v8 = objc_opt_new();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = *(a1 + 40);
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          if ([*(*(a1 + 48) + 128) isAllowedToProcessEventCategory:{objc_msgSend(v14, "category")}])
          {
            [v8 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }

    v15 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v8 count];
      *buf = 134217984;
      v28 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "fetched events count from store after filtering authorized events, %lu", buf, 0xCu);
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = __84__MOEventManager__fetchEventsFromDBAndRehydrateEventsWithOptions_CompletionHandler___block_invoke_388;
    v19[3] = &unk_10033BEE0;
    v20 = v8;
    v17 = *(a1 + 48);
    v21 = *(a1 + 56);
    v18 = v8;
    [v17 _rehydrateEvents:v18 withHandler:v19];
  }
}

void __84__MOEventManager__fetchEventsFromDBAndRehydrateEventsWithOptions_CompletionHandler___block_invoke_388(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v5 count];
    v9 = [*(a1 + 32) count];
    v12 = 134218240;
    v13 = v8;
    v14 = 2048;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "rehydrated events count, %lu, input, %lu", &v12, 0x16u);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    if (v5)
    {
      v11 = v5;
    }

    else
    {
      v11 = &__NSArray0__struct;
    }

    (*(v10 + 16))(v10, v11, v6);
  }
}

- (void)_fetchEventsFromCacheWithOptions:(id)a3 CompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MOEventManager *)self cachedEvents];
  v9 = [v8 count];

  if (v9)
  {
    v10 = objc_opt_new();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v11 = [(MOEventManager *)self cachedEvents];
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v32;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v31 + 1) + 8 * i);
          if (-[MOConfigurationManager isAllowedToProcessEventCategory:](self->_configurationManager, "isAllowedToProcessEventCategory:", [v16 category]))
          {
            [v10 addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v13);
    }

    v17 = [MOEventFetchOptions alloc];
    v18 = [v6 dateInterval];
    v19 = [v6 ascending];
    v20 = [v6 categories];
    v21 = [v6 limit];
    v22 = [(MOEventFetchOptions *)v17 initWithDateInterval:v18 ascending:v19 categories:v20 limit:v21];

    eventStore = self->_eventStore;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = __69__MOEventManager__fetchEventsFromCacheWithOptions_CompletionHandler___block_invoke;
    v27[3] = &unk_10033BC50;
    v27[4] = self;
    v28 = v10;
    v29 = v6;
    v30 = v7;
    v24 = v10;
    [(MOEventStore *)eventStore fetchAnalyticsEventsWithOptions:v22 CompletionHandler:v27];
  }

  else
  {
    v36 = NSLocalizedDescriptionKey;
    v37 = @"no cached events";
    v25 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v22 = [NSError errorWithDomain:@"MOErrorDomain" code:19 userInfo:v25];

    v26 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [MOEventManager _fetchEventsFromCacheWithOptions:CompletionHandler:];
    }

    (*(v7 + 2))(v7, &__NSArray0__struct, v22);
  }
}

void __69__MOEventManager__fetchEventsFromCacheWithOptions_CompletionHandler___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __69__MOEventManager__fetchEventsFromCacheWithOptions_CompletionHandler___block_invoke_2;
  v6[3] = &unk_1003361C0;
  v7 = v3;
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v5 = v3;
  dispatch_async(v4, v6);
}

void __69__MOEventManager__fetchEventsFromCacheWithOptions_CompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) count];
    *buf = 134217984;
    v28 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "fetched analytics events from store %lu", buf, 0xCu);
  }

  if ([*(a1 + 32) count])
  {
    [*(a1 + 40) addObjectsFromArray:*(a1 + 32)];
  }

  v4 = +[NSMutableArray array];
  v5 = [*(a1 + 48) dateInterval];

  if (v5)
  {
    v6 = [*(a1 + 48) dateInterval];
    v7 = [v6 endDate];
    v8 = [NSPredicate predicateWithFormat:@"startDate <= %@", v7];
    v26[0] = v8;
    v9 = [*(a1 + 48) dateInterval];
    v10 = [v9 startDate];
    v11 = [NSPredicate predicateWithFormat:@"endDate >= %@", v10];
    v26[1] = v11;
    v12 = [NSArray arrayWithObjects:v26 count:2];
    v13 = [NSCompoundPredicate andPredicateWithSubpredicates:v12];
    [v4 addObject:v13];
  }

  v14 = [*(a1 + 48) categories];

  if (v14)
  {
    v15 = [*(a1 + 48) categories];
    v16 = [NSPredicate predicateWithFormat:@"category IN %@", v15];
    [v4 addObject:v16];
  }

  if ([v4 count])
  {
    v17 = [NSCompoundPredicate andPredicateWithSubpredicates:v4];
    [*(a1 + 40) filterUsingPredicate:v17];
  }

  v18 = *(a1 + 40);
  v19 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:{objc_msgSend(*(a1 + 48), "ascending")}];
  v25 = v19;
  v20 = [NSArray arrayWithObjects:&v25 count:1];
  v21 = [v18 sortedArrayUsingDescriptors:v20];

  v22 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = [*(a1 + 40) count];
    *buf = 134217984;
    v28 = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "fetched events total count %lu", buf, 0xCu);
  }

  v24 = *(a1 + 40);
  (*(*(a1 + 56) + 16))();
}

- (void)rehydrateEvents:(id)a3 withHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MOEventManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __46__MOEventManager_rehydrateEvents_withHandler___block_invoke;
  block[3] = &unk_100336A58;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __46__MOEventManager_rehydrateEvents_withHandler___block_invoke(uint64_t a1)
{
  v2 = [MOEventFetchOptions alloc];
  v3 = [NSDateInterval alloc];
  v4 = +[NSDate distantPast];
  v5 = +[NSDate distantFuture];
  v6 = [v3 initWithStartDate:v4 endDate:v5];
  v7 = [(MOEventFetchOptions *)v2 initWithDateInterval:v6 ascending:1 categories:0 limit:0];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __46__MOEventManager_rehydrateEvents_withHandler___block_invoke_2;
  v11[3] = &unk_1003377E0;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 32);
  v12 = v9;
  v13 = v10;
  v14 = *(a1 + 48);
  [v8 _fetchEventsFromCacheWithOptions:v7 CompletionHandler:v11];
}

void __46__MOEventManager_rehydrateEvents_withHandler___block_invoke_2(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v50;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v50 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v49 + 1) + 8 * i);
        v10 = [v9 eventIdentifier];
        [v2 setObject:v9 forKey:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v6);
  }

  v11 = [v2 allKeys];
  v12 = [NSMutableSet setWithArray:v11];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v34 = a1;
  v13 = [*(a1 + 40) cachedEvents];
  v14 = [v13 countByEnumeratingWithState:&v45 objects:v54 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v46;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v46 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v45 + 1) + 8 * j);
        v19 = [v18 eventIdentifier];
        v20 = [v12 containsObject:v19];

        if (v20)
        {
          v21 = [v18 eventIdentifier];
          [v3 setObject:v18 forKey:v21];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v45 objects:v54 count:16];
    }

    while (v15);
  }

  v22 = [v3 count];
  v23 = [v3 allKeys];
  v24 = [NSSet setWithArray:v23];
  [v12 minusSet:v24];

  v25 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v26 = v12;
  v27 = [v26 countByEnumeratingWithState:&v41 objects:v53 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v42;
    do
    {
      for (k = 0; k != v28; k = k + 1)
      {
        if (*v42 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = [v2 objectForKey:*(*(&v41 + 1) + 8 * k)];
        [v25 addObject:v31];
      }

      v28 = [v26 countByEnumeratingWithState:&v41 objects:v53 count:16];
    }

    while (v28);
  }

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = __46__MOEventManager_rehydrateEvents_withHandler___block_invoke_3;
  v35[3] = &unk_10033FAF8;
  v36 = v3;
  v39 = v22;
  v40 = [v25 count];
  v32 = *(v34 + 40);
  v37 = *(v34 + 32);
  v38 = *(v34 + 48);
  v33 = v3;
  [v32 _rehydrateEvents:v25 withHandler:v35];
}

void __46__MOEventManager_rehydrateEvents_withHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [*(a1 + 32) allValues];
  [v7 addObjectsFromArray:v8];

  [v7 addObjectsFromArray:v5];
  v9 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    v12 = [v5 count];
    v13 = [v7 count];
    v14 = [*(a1 + 40) count];
    v15 = 134219008;
    v16 = v10;
    v17 = 2048;
    v18 = v11;
    v19 = 2048;
    v20 = v12;
    v21 = 2048;
    v22 = v13;
    v23 = 2048;
    v24 = v14;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "rehydrateEvents, from cache, %lu, not cached, %lu, rehydratedEvents, %lu, total rehydratedEvents, %lu, total events, %lu", &v15, 0x34u);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)_rehydrateEvents:(id)a3 withHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23 = v6;
  if ([v6 count])
  {
    v21 = v7;
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventManagerRehydrateEvents", "", buf, 2u);
    }

    v22 = [[MOPerformanceMeasurement alloc] initWithName:@"RehydrateEvents" measureRecentPeak:0];
    [(MOPerformanceMeasurement *)v22 startSession];
    *buf = 0;
    v42 = buf;
    v43 = 0x3032000000;
    v44 = __Block_byref_object_copy__43;
    v45 = __Block_byref_object_dispose__43;
    v46 = objc_alloc_init(NSMutableDictionary);
    v39[0] = 0;
    v39[1] = v39;
    v39[2] = 0x3032000000;
    v39[3] = __Block_byref_object_copy__43;
    v39[4] = __Block_byref_object_dispose__43;
    v40 = 0;
    v9 = dispatch_group_create();
    [(MOEventManager *)self splitEventArrayByCategory:v6];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v10 = v36 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v35 objects:v51 count:16];
    if (v11)
    {
      v12 = *v36;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v36 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v35 + 1) + 8 * i);
          v15 = [v10 objectForKey:v14];
          if ([v15 count])
          {
            dispatch_group_enter(v9);
            v16 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              v17 = [v15 count];
              *v47 = 138412546;
              v48 = v14;
              v49 = 2048;
              v50 = v17;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "_rehydrateEventsAtSingleSource, START, keyword, %@, original events count, %lu", v47, 0x16u);
            }

            v30[0] = _NSConcreteStackBlock;
            v30[1] = 3221225472;
            v30[2] = __47__MOEventManager__rehydrateEvents_withHandler___block_invoke;
            v30[3] = &unk_10033FB48;
            v30[4] = self;
            v30[5] = v14;
            v33 = buf;
            v34 = v39;
            v18 = v15;
            v31 = v18;
            v32 = v9;
            [(MOEventManager *)self _rehydrateEventsBySingleSource:v18 handler:v30];
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v35 objects:v51 count:16];
      }

      while (v11);
    }

    v19 = [(MOEventManager *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __47__MOEventManager__rehydrateEvents_withHandler___block_invoke_409;
    block[3] = &unk_10033FB70;
    block[4] = self;
    v27 = v21;
    v28 = buf;
    v29 = v39;
    v25 = v23;
    v26 = v22;
    v20 = v22;
    dispatch_group_notify(v9, v19, block);

    _Block_object_dispose(v39, 8);
    _Block_object_dispose(buf, 8);

    v7 = v21;
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, &__NSArray0__struct, 0);
  }
}

void __47__MOEventManager__rehydrateEvents_withHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __47__MOEventManager__rehydrateEvents_withHandler___block_invoke_2;
  block[3] = &unk_10033FB20;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v13 = v5;
  v14 = v8;
  v18 = *(a1 + 64);
  v15 = v6;
  v16 = v9;
  v17 = *(a1 + 56);
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

void __47__MOEventManager__rehydrateEvents_withHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [*(*(*(a1 + 72) + 8) + 40) setObject:v2 forKey:*(a1 + 40)];
  }

  v3 = *(*(a1 + 80) + 8);
  v5 = *(v3 + 40);
  v4 = (v3 + 40);
  if (!v5)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      objc_storeStrong(v4, v6);
    }
  }

  v7 = *(a1 + 48);
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      v11 = [*(a1 + 56) count];
      v12 = [*(a1 + 32) count];
      v13 = *(a1 + 48);
      *buf = 138413058;
      v29 = v10;
      v30 = 2048;
      v31 = v11;
      v32 = 2048;
      v33 = v12;
      v34 = 2112;
      v35 = v13;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "_rehydrateEventsAtSingleSource, DONE, keyword, %@, original events count, %lu, rehydrated events count, %lu, error, %@", buf, 0x2Au);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14 = *(a1 + 40);
    v15 = [*(a1 + 56) count];
    v16 = [*(a1 + 32) count];
    v17 = *(a1 + 48);
    *buf = 138413058;
    v29 = v14;
    v30 = 2048;
    v31 = v15;
    v32 = 2048;
    v33 = v16;
    v34 = 2112;
    v35 = v17;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "_rehydrateEventsAtSingleSource, DONE, keyword, %@, original events count, %lu, rehydrated events count, %lu, error, %@", buf, 0x2Au);
  }

  v18 = [MORehydrationMetrics alloc];
  v19 = [*(a1 + 56) firstObject];
  v20 = [v19 category];
  v21 = [*(a1 + 56) firstObject];
  v22 = [v21 provider];
  v23 = *(a1 + 32) != 0;
  v24 = [*(a1 + 48) description];
  v25 = -[MORehydrationMetrics initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:](v18, "initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:", v20, v22, v23, v24, [*(a1 + 56) count], 2, (objc_msgSend(*(a1 + 56), "count") - objc_msgSend(*(a1 + 32), "count")), 0.0);

  v27 = 0;
  [(MORehydrationMetrics *)v25 submitMetricsWithError:&v27];
  v26 = v27;
  dispatch_group_leave(*(a1 + 64));
}

id __47__MOEventManager__rehydrateEvents_withHandler___block_invoke_409(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v2 = [*(a1 + 32) mergeEventArraysFromDict:*(*(*(a1 + 64) + 8) + 40)];
    v3 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [*(a1 + 40) count];
      v5 = [v2 count];
      v6 = *(*(*(a1 + 72) + 8) + 40);
      v10 = 134218498;
      v11 = v4;
      v12 = 2048;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "_rehydrateEvents, DONE, all original events count, %lu, all rehydrated events count, %lu, error, %@", &v10, 0x20u);
    }

    v7 = *(*(*(a1 + 72) + 8) + 40);
    (*(*(a1 + 56) + 16))();
  }

  v8 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v8))
  {
    LOWORD(v10) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventManagerRehydrateEvents", "", &v10, 2u);
  }

  return [*(a1 + 48) endSession];
}

- (void)_rehydrateEventsBySingleSource:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if ([v6 count])
    {
      v8 = [v6 firstObject];
      v9 = [v8 provider];

      if (v9 == 5)
      {
LABEL_4:
        v7[2](v7, v6, 0);
        goto LABEL_78;
      }

      v10 = [v6 firstObject];
      v11 = [v10 category];

      if ([(MOConfigurationManager *)self->_configurationManager isAllowedToProcessEventCategory:v11])
      {
        switch(v11)
        {
          case 0uLL:
            v49 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_44;
            }

            goto LABEL_76;
          case 1uLL:
            v50 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
            if (os_signpost_enabled(v50))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v50, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventManagerRehydrateEventsVisits", "", buf, 2u);
            }

            v51 = [[MOPerformanceMeasurement alloc] initWithName:@"RehydrateVisits" measureRecentPeak:0];
            [(MOPerformanceMeasurement *)v51 startSession];
            v52 = [(MOEventManager *)self routineServiceManager];
            v111[0] = _NSConcreteStackBlock;
            v111[1] = 3221225472;
            v111[2] = __57__MOEventManager__rehydrateEventsBySingleSource_handler___block_invoke;
            v111[3] = &unk_10033FAD0;
            v111[4] = self;
            v112 = v51;
            v113 = v7;
            v53 = v51;
            [v52 rehydrateVisits:v6 handler:v111];

            goto LABEL_78;
          case 2uLL:
          case 0xDuLL:
            v12 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
            if (os_signpost_enabled(v12))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventManagerRehydrateEventsWorkouts", "", buf, 2u);
            }

            v13 = [[MOPerformanceMeasurement alloc] initWithName:@"RehydrateWorkouts" measureRecentPeak:0];
            [(MOPerformanceMeasurement *)v13 startSession];
            v14 = [(MOEventManager *)self healthKitManager];
            v108[0] = _NSConcreteStackBlock;
            v108[1] = 3221225472;
            v108[2] = __57__MOEventManager__rehydrateEventsBySingleSource_handler___block_invoke_416;
            v108[3] = &unk_100337850;
            v109 = v13;
            v110 = v7;
            v15 = v13;
            [v14 rehydrateWorkouts:v6 handler:v108];

            v16 = v110;
            goto LABEL_70;
          case 4uLL:
            v28 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
            if (os_signpost_enabled(v28))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventManagerRehydrateEventsLeisureMedia", "", buf, 2u);
            }

            v29 = [[MOPerformanceMeasurement alloc] initWithName:@"RehydrateLeisureMedia" measureRecentPeak:0];
            [(MOPerformanceMeasurement *)v29 startSession];
            v30 = [(MOEventManager *)self nowPlayingMediaManager];
            v102[0] = _NSConcreteStackBlock;
            v102[1] = 3221225472;
            v102[2] = __57__MOEventManager__rehydrateEventsBySingleSource_handler___block_invoke_424;
            v102[3] = &unk_100337850;
            v104 = v7;
            v103 = v29;
            v15 = v29;
            [v30 rehydratedMediaPlayEvents:v6 handler:v102];

            v16 = v104;
            goto LABEL_70;
          case 5uLL:
          case 0x12uLL:
          case 0x13uLL:
            goto LABEL_4;
          case 6uLL:
            v60 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
            if (os_signpost_enabled(v60))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v60, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventManagerRehydrateEventsMediaPlaySessions", "", buf, 2u);
            }

            v61 = [[MOPerformanceMeasurement alloc] initWithName:@"RehydrateMediaPlaySessions" measureRecentPeak:0];
            [(MOPerformanceMeasurement *)v61 startSession];
            v62 = [(MOEventManager *)self nowPlayingMediaManager];
            v105[0] = _NSConcreteStackBlock;
            v105[1] = 3221225472;
            v105[2] = __57__MOEventManager__rehydrateEventsBySingleSource_handler___block_invoke_420;
            v105[3] = &unk_100337850;
            v106 = v61;
            v107 = v7;
            v15 = v61;
            [v62 rehydratedMediaPlayEvents:v6 handler:v105];

            v16 = v107;
            goto LABEL_70;
          case 7uLL:
            break;
          case 8uLL:
            v34 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
            if (os_signpost_enabled(v34))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v34, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventManagerRehydrateEventsTrips", "", buf, 2u);
            }

            v15 = [[MOPerformanceMeasurement alloc] initWithName:@"RehydrateTrips" measureRecentPeak:0];
            [(MOPerformanceMeasurement *)v15 startSession];
            v35 = [(MOEventManager *)self proactiveTravelManager];
            v36 = [v35 rehydratedTripEvents:v6];
            v7[2](v7, v36, 0);

            v26 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
            if (!os_signpost_enabled(v26))
            {
              goto LABEL_53;
            }

            *buf = 0;
            v27 = "EventManagerRehydrateEventsTrips";
            goto LABEL_52;
          case 9uLL:
            v46 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
            if (os_signpost_enabled(v46))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v46, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventManagerRehydrateEventsSharedWithYouItems", "", buf, 2u);
            }

            v15 = [[MOPerformanceMeasurement alloc] initWithName:@"RehydrateSharedWithYou" measureRecentPeak:0];
            [(MOPerformanceMeasurement *)v15 startSession];
            v47 = [(MOEventManager *)self sharedWithYouManager];
            v48 = [v47 rehydratedSharedContentEvents:v6];
            v7[2](v7, v48, 0);

            v26 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
            if (!os_signpost_enabled(v26))
            {
              goto LABEL_53;
            }

            *buf = 0;
            v27 = "EventManagerRehydrateEventsSharedWithYouItems";
            goto LABEL_52;
          case 0xAuLL:
            v40 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
            if (os_signpost_enabled(v40))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v40, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventManagerRehydrateEventsSignificantContact", "", buf, 2u);
            }

            v41 = [[MOPerformanceMeasurement alloc] initWithName:@"RehydrateSignificantContact" measureRecentPeak:0];
            [(MOPerformanceMeasurement *)v41 startSession];
            v42 = [(MOEventManager *)self significantContactManager];
            v99[0] = _NSConcreteStackBlock;
            v99[1] = 3221225472;
            v99[2] = __57__MOEventManager__rehydrateEventsBySingleSource_handler___block_invoke_434;
            v99[3] = &unk_100337850;
            v100 = v41;
            v101 = v7;
            v15 = v41;
            [v42 rehydrateConversations:v6 handler:v99];

            v16 = v101;
            goto LABEL_70;
          case 0xBuLL:
            v23 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
            if (os_signpost_enabled(v23))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventManagerRehydrateEventsStructuredEvent", "", buf, 2u);
            }

            v15 = [[MOPerformanceMeasurement alloc] initWithName:@"RehydrateStructuredEvent" measureRecentPeak:0];
            [(MOPerformanceMeasurement *)v15 startSession];
            v24 = [(MOEventManager *)self suggestedEventManager];
            v25 = [v24 rehydratedSuggestedEvents:v6];
            v7[2](v7, v25, 0);

            v26 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
            if (!os_signpost_enabled(v26))
            {
              goto LABEL_53;
            }

            *buf = 0;
            v27 = "EventManagerRehydrateEventsStructuredEvent";
            goto LABEL_52;
          case 0xCuLL:
            v54 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
            if (os_signpost_enabled(v54))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v54, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventManagerRehydrateEventsNLEvent", "", buf, 2u);
            }

            v15 = [[MOPerformanceMeasurement alloc] initWithName:@"RehydrateNLEvent" measureRecentPeak:0];
            [(MOPerformanceMeasurement *)v15 startSession];
            v55 = [(MOEventManager *)self suggestedEventManager];
            v56 = [v55 rehydratedSuggestedEvents:v6];
            v7[2](v7, v56, 0);

            v26 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
            if (!os_signpost_enabled(v26))
            {
              goto LABEL_53;
            }

            *buf = 0;
            v27 = "EventManagerRehydrateEventsNLEvent";
LABEL_52:
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, OS_SIGNPOST_INTERVAL_END, 1uLL, v27, "", buf, 2u);
LABEL_53:

            [(MOPerformanceMeasurement *)v15 endSession];
            goto LABEL_71;
          case 0xEuLL:
            v57 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
            if (os_signpost_enabled(v57))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v57, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventManagerRehydrateEventsSharedPhoto", "", buf, 2u);
            }

            v58 = [[MOPerformanceMeasurement alloc] initWithName:@"RehydrateSharedPhoto" measureRecentPeak:0];
            [(MOPerformanceMeasurement *)v58 startSession];
            v59 = [(MOEventManager *)self photoManager];
            v96[0] = _NSConcreteStackBlock;
            v96[1] = 3221225472;
            v96[2] = __57__MOEventManager__rehydrateEventsBySingleSource_handler___block_invoke_444;
            v96[3] = &unk_100337850;
            v97 = v58;
            v98 = v7;
            v15 = v58;
            [v59 rehydrateSharedPhotos:v6 handler:v96];

            v16 = v98;
            goto LABEL_70;
          case 0xFuLL:
            v66 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
            if (os_signpost_enabled(v66))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v66, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventManagerRehydrateEventsProximity", "", buf, 2u);
            }

            v67 = [[MOPerformanceMeasurement alloc] initWithName:@"RehydrateProximity" measureRecentPeak:0];
            [(MOPerformanceMeasurement *)v67 startSession];
            v68 = [(MOEventManager *)self peopleDiscoveryManager];
            v87[0] = _NSConcreteStackBlock;
            v87[1] = 3221225472;
            v87[2] = __57__MOEventManager__rehydrateEventsBySingleSource_handler___block_invoke_456;
            v87[3] = &unk_100337850;
            v88 = v67;
            v89 = v7;
            v15 = v67;
            [v68 rehydrateProx:v6 handler:v87];

            v16 = v89;
            goto LABEL_70;
          case 0x10uLL:
            if ([(MOConfigurationManagerBase *)self->_configurationManager getBoolSettingForKey:@"MODevEnableMotionActivity" withFallback:1])
            {
              v63 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
              if (os_signpost_enabled(v63))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&_mh_execute_header, v63, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventManagerRehydrateEventsMotionActivity", "", buf, 2u);
              }

              v64 = [[MOPerformanceMeasurement alloc] initWithName:@"RehydrateMotionActivity" measureRecentPeak:0];
              [(MOPerformanceMeasurement *)v64 startSession];
              v65 = [(MOEventManager *)self motionManager];
              v93[0] = _NSConcreteStackBlock;
              v93[1] = 3221225472;
              v93[2] = __57__MOEventManager__rehydrateEventsBySingleSource_handler___block_invoke_448;
              v93[3] = &unk_100337850;
              v94 = v64;
              v95 = v7;
              v15 = v64;
              [v65 rehydrateMotionActivity:v6 handler:v93];

              v16 = v95;
LABEL_70:

LABEL_71:
              goto LABEL_78;
            }

            v49 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "rehydrateEvent at single source is disabled for motion activity.", buf, 2u);
            }

LABEL_76:

            break;
          case 0x11uLL:
            v17 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
            if (os_signpost_enabled(v17))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventManagerRehydrateEventsPhotoMemory", "", buf, 2u);
            }

            v18 = [[MOPerformanceMeasurement alloc] initWithName:@"RehydratePhotoMemory" measureRecentPeak:0];
            [(MOPerformanceMeasurement *)v18 startSession];
            v19 = [(MOEventManager *)self photoManager];
            v90[0] = _NSConcreteStackBlock;
            v90[1] = 3221225472;
            v90[2] = __57__MOEventManager__rehydrateEventsBySingleSource_handler___block_invoke_452;
            v90[3] = &unk_100337850;
            v91 = v18;
            v92 = v7;
            v15 = v18;
            [v19 rehydratePhotoMemories:v6 handler:v90];

            v16 = v92;
            goto LABEL_70;
          case 0x14uLL:
            v43 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
            if (os_signpost_enabled(v43))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v43, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventManagerRehydrateEventsScreenTime", "", buf, 2u);
            }

            v44 = [[MOPerformanceMeasurement alloc] initWithName:@"RehydrateScreenTime" measureRecentPeak:0];
            [(MOPerformanceMeasurement *)v44 startSession];
            v45 = [(MOEventManager *)self screenTimeManager];
            v75[0] = _NSConcreteStackBlock;
            v75[1] = 3221225472;
            v75[2] = __57__MOEventManager__rehydrateEventsBySingleSource_handler___block_invoke_472;
            v75[3] = &unk_100337850;
            v76 = v44;
            v77 = v7;
            v15 = v44;
            [v45 rehydrateScreenTimeEvents:v6 handler:v75];

            v16 = v77;
            goto LABEL_70;
          case 0x16uLL:
            v69 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
            if (os_signpost_enabled(v69))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v69, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventManagerRehydrateEventsLifeEvent", "", buf, 2u);
            }

            v70 = [[MOPerformanceMeasurement alloc] initWithName:@"RehydrateLifeEvent" measureRecentPeak:0];
            [(MOPerformanceMeasurement *)v70 startSession];
            v71 = [(MOEventManager *)self lifeEventManager];
            v81[0] = _NSConcreteStackBlock;
            v81[1] = 3221225472;
            v81[2] = __57__MOEventManager__rehydrateEventsBySingleSource_handler___block_invoke_464;
            v81[3] = &unk_100337850;
            v82 = v70;
            v83 = v7;
            v15 = v70;
            [v71 rehydrateLifeEvents:v6 handler:v81];

            v16 = v83;
            goto LABEL_70;
          case 0x17uLL:
            v20 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
            if (os_signpost_enabled(v20))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventManagerRehydrateEventsPeopleDensity", "", buf, 2u);
            }

            v21 = [[MOPerformanceMeasurement alloc] initWithName:@"RehydratePeopleDensity" measureRecentPeak:0];
            [(MOPerformanceMeasurement *)v21 startSession];
            v22 = [(MOEventManager *)self peopleDiscoveryManager];
            v84[0] = _NSConcreteStackBlock;
            v84[1] = 3221225472;
            v84[2] = __57__MOEventManager__rehydrateEventsBySingleSource_handler___block_invoke_460;
            v84[3] = &unk_100337850;
            v85 = v21;
            v86 = v7;
            v15 = v21;
            [v22 rehydratePeopleDensityEvents:v6 handler:v84];

            v16 = v86;
            goto LABEL_70;
          case 0x18uLL:
            v37 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
            if (os_signpost_enabled(v37))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventManagerRehydrateEventsStateOfMind", "", buf, 2u);
            }

            v38 = [[MOPerformanceMeasurement alloc] initWithName:@"RehydrateStateOfMind" measureRecentPeak:0];
            [(MOPerformanceMeasurement *)v38 startSession];
            v39 = [(MOEventManager *)self healthKitManager];
            v78[0] = _NSConcreteStackBlock;
            v78[1] = 3221225472;
            v78[2] = __57__MOEventManager__rehydrateEventsBySingleSource_handler___block_invoke_468;
            v78[3] = &unk_100337850;
            v79 = v38;
            v80 = v7;
            v15 = v38;
            [v39 rehydrateStateOfMind:v6 handler:v78];

            v16 = v80;
            goto LABEL_70;
          case 0x19uLL:
            v31 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
            if (os_signpost_enabled(v31))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v31, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventManagerRehydrateEventsSpotlight", "", buf, 2u);
            }

            v32 = [[MOPerformanceMeasurement alloc] initWithName:@"RehydrateSpotlight" measureRecentPeak:0];
            [(MOPerformanceMeasurement *)v32 startSession];
            v33 = [(MOEventManager *)self spotlightManager];
            v72[0] = _NSConcreteStackBlock;
            v72[1] = 3221225472;
            v72[2] = __57__MOEventManager__rehydrateEventsBySingleSource_handler___block_invoke_476;
            v72[3] = &unk_100337850;
            v73 = v32;
            v74 = v7;
            v15 = v32;
            [v33 rehydrateInviteEvents:v6 handler:v72];

            v16 = v74;
            goto LABEL_70;
          default:
            v49 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
LABEL_44:
              [MOEventManager _rehydrateEventsBySingleSource:handler:];
            }

            goto LABEL_76;
        }
      }
    }

    v7[2](v7, &__NSArray0__struct, 0);
  }

LABEL_78:
}

void __57__MOEventManager__rehydrateEventsBySingleSource_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = *(a1 + 48);
    v6 = *(v5 + 16);
    v7 = a2;
    v6(v5, v7, a3);

    v8 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v8))
    {
      *v12 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventManagerRehydrateEventsVisits", "", v12, 2u);
    }

    [*(a1 + 40) endSession];
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = a2;
    v11 = [v9 weatherManager];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __57__MOEventManager__rehydrateEventsBySingleSource_handler___block_invoke_2;
    v13[3] = &unk_100337850;
    v15 = *(a1 + 48);
    v14 = *(a1 + 40);
    [v11 rehydrateWeather:v10 handler:v13];
  }
}

id __57__MOEventManager__rehydrateEventsBySingleSource_handler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v2))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventManagerRehydrateEventsVisits", "", v4, 2u);
  }

  return [*(a1 + 32) endSession];
}

id __57__MOEventManager__rehydrateEventsBySingleSource_handler___block_invoke_416(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v2))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventManagerRehydrateEventsWorkouts", "", v4, 2u);
  }

  return [*(a1 + 32) endSession];
}

id __57__MOEventManager__rehydrateEventsBySingleSource_handler___block_invoke_420(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v2))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventManagerRehydrateEventsMediaPlaySessions", "", v4, 2u);
  }

  return [*(a1 + 32) endSession];
}

id __57__MOEventManager__rehydrateEventsBySingleSource_handler___block_invoke_424(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v2))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventManagerRehydrateEventsLeisureMedia", "", v4, 2u);
  }

  return [*(a1 + 32) endSession];
}

id __57__MOEventManager__rehydrateEventsBySingleSource_handler___block_invoke_434(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v2))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventManagerRehydrateEventsSignificantContact", "", v4, 2u);
  }

  return [*(a1 + 32) endSession];
}

id __57__MOEventManager__rehydrateEventsBySingleSource_handler___block_invoke_444(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v2))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventManagerRehydrateEventsSharedPhoto", "", v4, 2u);
  }

  return [*(a1 + 32) endSession];
}

id __57__MOEventManager__rehydrateEventsBySingleSource_handler___block_invoke_448(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v2))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventManagerRehydrateEventsMotionActivity", "", v4, 2u);
  }

  return [*(a1 + 32) endSession];
}

id __57__MOEventManager__rehydrateEventsBySingleSource_handler___block_invoke_452(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v2))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventManagerRehydrateEventsPhotoMemory", "", v4, 2u);
  }

  return [*(a1 + 32) endSession];
}

id __57__MOEventManager__rehydrateEventsBySingleSource_handler___block_invoke_456(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v2))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventManagerRehydrateEventsProximity", "", v4, 2u);
  }

  return [*(a1 + 32) endSession];
}

id __57__MOEventManager__rehydrateEventsBySingleSource_handler___block_invoke_460(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v2))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventManagerRehydrateEventsPeopleDensity", "", v4, 2u);
  }

  return [*(a1 + 32) endSession];
}

id __57__MOEventManager__rehydrateEventsBySingleSource_handler___block_invoke_464(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v2))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventManagerRehydrateEventsLifeEvent", "", v4, 2u);
  }

  return [*(a1 + 32) endSession];
}

id __57__MOEventManager__rehydrateEventsBySingleSource_handler___block_invoke_468(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v2))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventManagerRehydrateEventsStateOfMind", "", v4, 2u);
  }

  return [*(a1 + 32) endSession];
}

id __57__MOEventManager__rehydrateEventsBySingleSource_handler___block_invoke_472(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v2))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventManagerRehydrateEventsScreenTime", "", v4, 2u);
  }

  return [*(a1 + 32) endSession];
}

id __57__MOEventManager__rehydrateEventsBySingleSource_handler___block_invoke_476(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v2))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventManagerRehydrateEventsSpotlight", "", v4, 2u);
  }

  return [*(a1 + 32) endSession];
}

- (void)cleanUpEventsWithRefreshVariant:(unint64_t)a3 andHandler:(id)a4
{
  v6 = a4;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "EventManagerCleanUpEvents", "", buf, 2u);
  }

  v8 = [[MOPerformanceMeasurement alloc] initWithName:@"Cleanup" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v8 startSession];
  v9 = [(MOEventManager *)self eventStore];
  v10 = [v9 persistenceManager];
  v11 = [v10 availability];

  v12 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
  v13 = v12;
  if (v11 == 2)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "purge event since datastore is available", buf, 2u);
    }

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = __61__MOEventManager_cleanUpEventsWithRefreshVariant_andHandler___block_invoke;
    v18[3] = &unk_10033C170;
    v20 = v6;
    v19 = v8;
    [(MOEventManager *)self _cleanUpEventsWithRefreshVariant:a3 andHandler:v18];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [MOEventManager cleanUpEventsWithRefreshVariant:andHandler:];
    }

    if (v6)
    {
      v24 = NSLocalizedDescriptionKey;
      v25 = @"[cleanUpEventsWithRefreshVariant] database is not available";
      v14 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v15 = [NSError errorWithDomain:@"MOErrorDomain" code:16 userInfo:v14];

      v22 = @"stateDatabaseAvailable";
      v23 = &__kCFBooleanFalse;
      v16 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      (*(v6 + 2))(v6, v15, v16);
    }

    v17 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v17))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventManagerCleanUpEvents", "", buf, 2u);
    }

    [(MOPerformanceMeasurement *)v8 endSession];
  }
}

void __61__MOEventManager_cleanUpEventsWithRefreshVariant_andHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 mutableCopy];
  [v6 setObject:&__kCFBooleanTrue forKey:@"stateDatabaseAvailable"];
  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  v8 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v8))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, 1uLL, "EventManagerCleanUpEvents", "", v9, 2u);
  }

  [*(a1 + 32) endSession];
}

- (void)_cleanUpEventsWithRefreshVariant:(unint64_t)a3 andHandler:(id)a4
{
  v6 = a4;
  v102[0] = 0;
  v102[1] = v102;
  v102[2] = 0x3032000000;
  v102[3] = __Block_byref_object_copy__43;
  v102[4] = __Block_byref_object_dispose__43;
  v103 = objc_alloc_init(NSMutableDictionary);
  v100[0] = 0;
  v100[1] = v100;
  v100[2] = 0x2020000000;
  v101 = 0;
  v98[0] = 0;
  v98[1] = v98;
  v98[2] = 0x3032000000;
  v98[3] = __Block_byref_object_copy__43;
  v98[4] = __Block_byref_object_dispose__43;
  v99 = 0;
  v7 = dispatch_group_create();
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v9 = v8;
  v56 = v6;
  v10 = a3 - 1;
  if (a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, a3, "EventManagerCleanUpEventsWrapper", "", buf, 2u);
  }

  v11 = [[MOPerformanceMeasurement alloc] initWithName:@"CleanupWrapper" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v11 startSession];
  v55 = v11;
  v12 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v13 = v12;
  if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, a3, "EventManagerCleanUpEventsExpiredEvents", "", buf, 2u);
  }

  v14 = [[MOPerformanceMeasurement alloc] initWithName:@"CleanupExpiredEvents" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v14 startSession];
  dispatch_group_enter(v7);
  eventStore = self->_eventStore;
  v91[0] = _NSConcreteStackBlock;
  v91[1] = 3221225472;
  v91[2] = __62__MOEventManager__cleanUpEventsWithRefreshVariant_andHandler___block_invoke;
  v91[3] = &unk_10033FB98;
  v94 = v98;
  v95 = v100;
  v16 = v7;
  v92 = v16;
  v96 = a3;
  v54 = v14;
  v93 = v54;
  [(MOEventStore *)eventStore purgeExpiredEventsWithCompletionHandler:v91];
  v17 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v18 = v17;
  if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_BEGIN, a3, "EventManagerCleanUpEventsUnknownEvents", "", buf, 2u);
  }

  v19 = [[MOPerformanceMeasurement alloc] initWithName:@"CleanupUnknownEvents" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v19 startSession];
  dispatch_group_enter(v16);
  v20 = self->_eventStore;
  v85[0] = _NSConcreteStackBlock;
  v85[1] = 3221225472;
  v85[2] = __62__MOEventManager__cleanUpEventsWithRefreshVariant_andHandler___block_invoke_492;
  v85[3] = &unk_10033FB98;
  v88 = v98;
  v89 = v100;
  v21 = v16;
  v86 = v21;
  v90 = a3;
  v53 = v19;
  v87 = v53;
  [(MOEventStore *)v20 purgeUnknownEventsWithCompletionHandler:v85];
  v22 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v23 = v22;
  if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_INTERVAL_BEGIN, a3, "EventManagerCleanUpEventsDeletedPatternEvents", "", buf, 2u);
  }

  v24 = [[MOPerformanceMeasurement alloc] initWithName:@"CleanupPatternDeletedEvents" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v24 startSession];
  dispatch_group_enter(v21);
  v25 = [(MOEventManager *)self configurationManager];
  v26 = [v25 getIntegerSettingForKey:@"EventManagerOverridePatternRehydrationFailureCountThreshold" withFallback:10];

  v27 = self->_eventStore;
  v79[0] = _NSConcreteStackBlock;
  v79[1] = 3221225472;
  v79[2] = __62__MOEventManager__cleanUpEventsWithRefreshVariant_andHandler___block_invoke_499;
  v79[3] = &unk_10033FB98;
  v82 = v98;
  v83 = v100;
  v28 = v21;
  v80 = v28;
  v84 = a3;
  v29 = v24;
  v81 = v29;
  [(MOEventStore *)v27 purgeRehydrationFailedEventsForType:@"Pattern_event" rehydrationFailCount:v26 CompletionHandler:v79];
  v30 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v31 = v30;
  if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v31, OS_SIGNPOST_INTERVAL_BEGIN, a3, "EventManagerCleanUpEventsDeletedEvents", "", buf, 2u);
  }

  v32 = [[MOPerformanceMeasurement alloc] initWithName:@"CleanupDeletedEvents" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v32 startSession];
  dispatch_group_enter(v28);
  v33 = [(MOEventManager *)self configurationManager];
  v34 = [v33 getIntegerSettingForKey:@"EventManagerOverrideEventsRehydrationFailureCountThreshold" withFallback:10];

  v35 = self->_eventStore;
  v73[0] = _NSConcreteStackBlock;
  v73[1] = 3221225472;
  v73[2] = __62__MOEventManager__cleanUpEventsWithRefreshVariant_andHandler___block_invoke_506;
  v73[3] = &unk_10033FB98;
  v76 = v98;
  v77 = v100;
  v36 = v28;
  v74 = v36;
  v78 = a3;
  v37 = v32;
  v75 = v37;
  [(MOEventStore *)v35 purgeRehydrationFailedEventsForType:@"Sensed_event" rehydrationFailCount:v34 CompletionHandler:v73];
  v38 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v39 = v38;
  if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, OS_SIGNPOST_INTERVAL_BEGIN, a3, "EventManagerCleanUpEventsRemoveVisitsClearedInRoutine", "", buf, 2u);
  }

  v40 = [[MOPerformanceMeasurement alloc] initWithName:@"CleanupVisitEventsClearedInRoutine" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v40 startSession];
  dispatch_group_enter(v36);
  v41 = dispatch_semaphore_create(0);
  v42 = [(MOEventManager *)self routineServiceManager];
  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = __62__MOEventManager__cleanUpEventsWithRefreshVariant_andHandler___block_invoke_510;
  v65[3] = &unk_10033FBE8;
  v43 = v41;
  v66 = v43;
  v44 = v36;
  v67 = v44;
  v72 = a3;
  v45 = v40;
  v68 = v45;
  v69 = self;
  v70 = v98;
  v71 = v100;
  [v42 fetchEarliestVisitDateInRoutineWithHandler:v65];

  v46 = [NSString stringWithFormat:@"%@ - [%s] - %d - %s", @"MOSemaphoreWait", "/Library/Caches/com.apple.xbs/Sources/Moments/momentsd/PromptEngine/PromptProvider/MOEventManager.m", 1964, "[MOEventManager _cleanUpEventsWithRefreshVariant:andHandler:]"];
  v64 = 0;
  v47 = MOSemaphoreWaitAndFaultIfTimeout_Internal(v43, &v64, v46, 120.0);
  v48 = v64;
  if (!v47)
  {
    v49 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      __50__MOUserData__fetchUserDataWithCompletionHandler___block_invoke_cold_1();
    }
  }

  v50 = [(MOEventManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __62__MOEventManager__cleanUpEventsWithRefreshVariant_andHandler___block_invoke_513;
  block[3] = &unk_10033FC10;
  v60 = v102;
  v61 = v100;
  v62 = v98;
  v63 = a3;
  v58 = v55;
  v59 = v56;
  v51 = v55;
  v52 = v56;
  dispatch_group_notify(v44, v50, block);

  _Block_object_dispose(v98, 8);
  _Block_object_dispose(v100, 8);
  _Block_object_dispose(v102, 8);
}

void __62__MOEventManager__cleanUpEventsWithRefreshVariant_andHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __62__MOEventManager__cleanUpEventsWithRefreshVariant_andHandler___block_invoke_cold_1();
    }

    v9 = *(*(a1 + 48) + 8);
    v10 = v5;
    v11 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

  else
  {
    v12 = [v6 objectForKey:@"resultNumberOfEvents"];
    v11 = v12;
    if (v12)
    {
      *(*(*(a1 + 56) + 8) + 24) += [v12 intValue];
    }

    v13 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "purge expired events succeeded", buf, 2u);
    }
  }

  dispatch_group_leave(*(a1 + 32));
  v14 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v15 = v14;
  v16 = *(a1 + 64);
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *v17 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_END, v16, "EventManagerCleanUpEventsExpiredEvents", "", v17, 2u);
  }

  [*(a1 + 40) endSession];
}

void __62__MOEventManager__cleanUpEventsWithRefreshVariant_andHandler___block_invoke_492(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __62__MOEventManager__cleanUpEventsWithRefreshVariant_andHandler___block_invoke_492_cold_1();
    }

    v9 = *(*(a1 + 48) + 8);
    v10 = v5;
    v11 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

  else
  {
    v12 = [v6 objectForKey:@"resultNumberOfEvents"];
    v11 = v12;
    if (v12)
    {
      *(*(*(a1 + 56) + 8) + 24) += [v12 intValue];
    }

    v13 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "purge unknown events succeeded", buf, 2u);
    }
  }

  dispatch_group_leave(*(a1 + 32));
  v14 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v15 = v14;
  v16 = *(a1 + 64);
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *v17 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_END, v16, "EventManagerCleanUpEventsUnknownEvents", "", v17, 2u);
  }

  [*(a1 + 40) endSession];
}

void __62__MOEventManager__cleanUpEventsWithRefreshVariant_andHandler___block_invoke_499(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __62__MOEventManager__cleanUpEventsWithRefreshVariant_andHandler___block_invoke_499_cold_1();
    }

    v9 = *(*(a1 + 48) + 8);
    v10 = v5;
    v11 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

  else
  {
    v12 = [v6 objectForKey:@"resultNumberOfEvents"];
    v11 = v12;
    if (v12)
    {
      *(*(*(a1 + 56) + 8) + 24) += [v12 intValue];
    }

    v13 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "purge pattern events which failed rehydration times succeeded", buf, 2u);
    }
  }

  dispatch_group_leave(*(a1 + 32));
  v14 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v15 = v14;
  v16 = *(a1 + 64);
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *v17 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_END, v16, "EventManagerCleanUpEventsDeletedPatternEvents", "", v17, 2u);
  }

  [*(a1 + 40) endSession];
}

void __62__MOEventManager__cleanUpEventsWithRefreshVariant_andHandler___block_invoke_506(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __62__MOEventManager__cleanUpEventsWithRefreshVariant_andHandler___block_invoke_506_cold_1();
    }

    v9 = *(*(a1 + 48) + 8);
    v10 = v5;
    v11 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

  else
  {
    v12 = [v6 objectForKey:@"resultNumberOfEvents"];
    v11 = v12;
    if (v12)
    {
      *(*(*(a1 + 56) + 8) + 24) += [v12 intValue];
    }

    v13 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "purge sensed events which failed rehydration multiple times succeeded", buf, 2u);
    }
  }

  dispatch_group_leave(*(a1 + 32));
  v14 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v15 = v14;
  v16 = *(a1 + 64);
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *v17 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_END, v16, "EventManagerCleanUpEventsDeletedEvents", "", v17, 2u);
  }

  [*(a1 + 40) endSession];
}

void __62__MOEventManager__cleanUpEventsWithRefreshVariant_andHandler___block_invoke_510(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __62__MOEventManager__cleanUpEventsWithRefreshVariant_andHandler___block_invoke_510_cold_1();
    }

    dispatch_semaphore_signal(*(a1 + 32));
    dispatch_group_leave(*(a1 + 40));
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    v9 = v8;
    v10 = *(a1 + 80);
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v10, "EventManagerCleanUpEventsRemoveVisitsClearedInRoutine", "", buf, 2u);
    }

    [*(a1 + 48) endSession];
  }

  else
  {
    v11 = *(*(a1 + 56) + 40);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = __62__MOEventManager__cleanUpEventsWithRefreshVariant_andHandler___block_invoke_511;
    v14[3] = &unk_10033FBC0;
    v15 = v5;
    v19 = *(a1 + 64);
    v16 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = *(a1 + 80);
    v17 = v12;
    v20 = v13;
    v18 = *(a1 + 48);
    [v11 purgeVisitEventsBeforeDate:v15 WithCompletionHandler:v14];
  }
}

void __62__MOEventManager__cleanUpEventsWithRefreshVariant_andHandler___block_invoke_511(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __62__MOEventManager__cleanUpEventsWithRefreshVariant_andHandler___block_invoke_511_cold_1(a1);
    }

    v9 = *(*(a1 + 64) + 8);
    v10 = v5;
    v11 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

  else
  {
    v12 = [v6 objectForKey:@"resultNumberOfEvents"];
    v11 = v12;
    if (v12)
    {
      *(*(*(a1 + 72) + 8) + 24) += [v12 intValue];
    }

    v13 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 32);
      v18 = 138412546;
      v19 = v14;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "purge visit events before date, %@,  succeeded with event count, %@", &v18, 0x16u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
  dispatch_group_leave(*(a1 + 48));
  v15 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v16 = v15;
  v17 = *(a1 + 80);
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(v18) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_END, v17, "EventManagerCleanUpEventsRemoveVisitsClearedInRoutine", "", &v18, 2u);
  }

  [*(a1 + 56) endSession];
}

id __62__MOEventManager__cleanUpEventsWithRefreshVariant_andHandler___block_invoke_513(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3 = [NSNumber numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 setObject:v3 forKey:@"resultNumberOfEvents"];

  v4 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Purge event methods all completed", buf, 2u);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, *(*(*(a1 + 64) + 8) + 40), *(*(*(a1 + 48) + 8) + 40));
  }

  v6 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v7 = v6;
  v8 = *(a1 + 72);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, v8, "EventManagerCleanUpEventsWrapper", "", v10, 2u);
  }

  return [*(a1 + 32) endSession];
}

- (id)splitEventArrayByCategory:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 describeCategory];
        v11 = [v9 describeProvider];
        v12 = [NSString stringWithFormat:@"%@:%@", v10, v11];

        v13 = [v4 allKeys];
        LOBYTE(v11) = [v13 containsObject:v12];

        if (v11)
        {
          v14 = [v4 objectForKey:v12];
          [v14 addObject:v9];
        }

        else
        {
          v14 = objc_opt_new();
          [v14 addObject:v9];
          [v4 setObject:v14 forKey:v12];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v15 = [v4 copy];

  return v15;
}

- (id)mergeEventArraysFromDict:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v3 allValues];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 count])
        {
          [v4 addObjectsFromArray:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)runAnalyticsWithRefreshVariant:(unint64_t)a3 andHandler:(id)a4
{
  v7 = a4;
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "run pattern detection", buf, 2u);
  }

  v9 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v10 = v9;
  if (a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, a3, "EventManagerAnalytics", "", buf, 2u);
  }

  v11 = [[MOPerformanceMeasurement alloc] initWithName:@"Analytics" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v11 startSession];
  *buf = 0;
  v38 = buf;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__43;
  v41 = __Block_byref_object_dispose__43;
  v42 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__43;
  v35 = __Block_byref_object_dispose__43;
  v36 = 0;
  v12 = [[MOEventRefreshHelper alloc] initWithUniverse:self->fUniverse];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = __60__MOEventManager_runAnalyticsWithRefreshVariant_andHandler___block_invoke;
  v30[3] = &unk_10033BA20;
  v30[4] = buf;
  v30[5] = &v31;
  [(MOEventRefreshHelper *)v12 getPatternDetectorDatesForVariant:a3 withHandler:v30];
  if (*(v38 + 5) && v32[5])
  {
    v13 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = NSStringFromSelector(a2);
      v15 = *(v38 + 5);
      v16 = v32[5];
      v17 = [NSNumber numberWithUnsignedInteger:a3];
      *v43 = 138413058;
      v44 = v14;
      v45 = 2112;
      v46 = v15;
      v47 = 2112;
      v48 = v16;
      v49 = 2112;
      v50 = v17;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%@, refresh startDate, %@, endDate, %@, refreshVariant, %@", v43, 0x2Au);
    }

    v18 = [MOEventFetchOptions alloc];
    v19 = [NSDateInterval alloc];
    v20 = [v19 initWithStartDate:*(v38 + 5) endDate:v32[5]];
    v21 = [(MOEventFetchOptions *)v18 initWithDateInterval:v20 ascending:1 categories:0 limit:0];

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = __60__MOEventManager_runAnalyticsWithRefreshVariant_andHandler___block_invoke_523;
    v23[3] = &unk_10033FC60;
    v26 = v7;
    v29 = a3;
    v27 = buf;
    v28 = &v31;
    v24 = v11;
    v25 = self;
    [(MOEventManager *)self fetchEventsWithOptions:v21 CompletionHandler:v23];
  }

  else
  {
    v51 = NSLocalizedDescriptionKey;
    v52 = @"analytics start or end date cannot be nil";
    v22 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
    v21 = [NSError errorWithDomain:@"MOErrorDomain" code:7 userInfo:v22];

    if (v7)
    {
      (*(v7 + 2))(v7, v21, &__NSDictionary0__struct);
    }
  }

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(buf, 8);
}

void __60__MOEventManager_runAnalyticsWithRefreshVariant_andHandler___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v9 = a3;
  v8 = a4;
  if (a2)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  }
}

void __60__MOEventManager_runAnalyticsWithRefreshVariant_andHandler___block_invoke_523(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  v119 = v5;
  if (!v5)
  {
    if (v7)
    {
      *buf = 134217984;
      v164 = [v4 count];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "fetched events count, %lu", buf, 0xCu);
    }

    if (![v4 count])
    {
      v104 = *(a1 + 48);
      if (v104)
      {
        (*(v104 + 16))(v104, 0, &__NSDictionary0__struct);
      }

      v105 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
      v10 = v105;
      v11 = *(a1 + 72);
      if (v11 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v105))
      {
        goto LABEL_100;
      }

      *buf = 0;
      goto LABEL_9;
    }

    v116 = [[NSDateInterval alloc] initWithStartDate:*(*(*(a1 + 56) + 8) + 40) endDate:*(*(*(a1 + 64) + 8) + 40)];
    v12 = [*(*(a1 + 40) + 192) processEvents:v4 withRefreshVariant:*(a1 + 72) forDateInterval:?];
    v13 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [v12 count];
      *buf = 134217984;
      v164 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "pattern events count, %lu", buf, 0xCu);
    }

    v118 = v12;
    if ([v12 count])
    {
      v117 = v4;
      v15 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
      v16 = v15;
      v17 = *(a1 + 72);
      if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_BEGIN, v17, "EventManagerAnalyticsDeduplication", "", buf, 2u);
      }

      v115 = [[MOPerformanceMeasurement alloc] initWithName:@"AnalyticsDedup" measureRecentPeak:0];
      [(MOPerformanceMeasurement *)v115 startSession];
      v114 = [NSPredicate predicateWithFormat:@"%K = %lu AND %K = %@", @"provider", 5, @"trends", 0];
      v124 = [v4 filteredArrayUsingPredicate:?];
      v18 = objc_opt_new();
      v157 = 0u;
      v158 = 0u;
      v159 = 0u;
      v160 = 0u;
      obj = v12;
      v122 = v18;
      v125 = [obj countByEnumeratingWithState:&v157 objects:v162 count:16];
      if (v125)
      {
        v123 = *v158;
        do
        {
          for (i = 0; i != v125; i = i + 1)
          {
            if (*v158 != v123)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v157 + 1) + 8 * i);
            v153 = 0u;
            v154 = 0u;
            v155 = 0u;
            v156 = 0u;
            v21 = v124;
            v145 = [v21 countByEnumeratingWithState:&v153 objects:v161 count:16];
            if (!v145)
            {

              goto LABEL_84;
            }

            v126 = i;
            v141 = 0;
            v142 = v20;
            v143 = *v154;
            v144 = v21;
            do
            {
              v22 = 0;
              do
              {
                if (*v154 != v143)
                {
                  objc_enumerationMutation(v21);
                }

                v23 = *(*(&v153 + 1) + 8 * v22);
                context = objc_autoreleasePoolPush();
                v24 = [v20 patterns];
                v25 = [v24 objectForKeyedSubscript:@"kEventPatternType"];
                if ([v25 intValue])
                {
                }

                else
                {
                  v26 = [v23 patterns];
                  v27 = [v26 objectForKeyedSubscript:@"kEventPatternType"];
                  v28 = [v27 intValue];

                  v20 = v142;
                  if (!v28)
                  {
                    v55 = [v142 patterns];
                    v56 = [v55 objectForKeyedSubscript:@"kEventPatternAnomalousEventIdentifier"];
                    v57 = [v23 patterns];
                    v58 = [v57 objectForKeyedSubscript:@"kEventPatternAnomalousEventIdentifier"];
                    if ([v56 isEqualToString:v58])
                    {
                      v59 = [v142 patterns];
                      v60 = [v59 objectForKeyedSubscript:@"kEventPatternAnomalyFeatureType"];
                      v61 = [v60 intValue];
                      v62 = [v23 patterns];
                      v63 = [v62 objectForKeyedSubscript:@"kEventPatternAnomalyFeatureType"];
                      v64 = v61 == [v63 intValue];
                    }

                    else
                    {
                      v64 = 0;
                    }

                    v21 = v144;

                    v141 += v64;
                    v20 = v142;
                    goto LABEL_50;
                  }
                }

                v29 = [v20 patterns];
                v30 = [v29 objectForKeyedSubscript:@"kEventPatternType"];
                if ([v30 intValue] == 1)
                {
                  v31 = [v23 patterns];
                  v32 = [v31 objectForKeyedSubscript:@"kEventPatternType"];
                  v33 = [v32 intValue];

                  if (v33 == 1)
                  {
                    if ([v20 category] != 2 || (objc_msgSend(v23, "patterns"), v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v34, "objectForKey:", @"kEventPatternOverallWorkoutType"), v35 = objc_claimAutoreleasedReturnValue(), v35, v34, v35))
                    {
                      v36 = [v20 category];
                      if (v36 == 2)
                      {
                        v140 = [v20 patterns];
                        v37 = [v140 objectForKeyedSubscript:@"kEventPatternOverallWorkoutType"];
                        v138 = [v23 patterns];
                        [v138 objectForKeyedSubscript:@"kEventPatternOverallWorkoutType"];
                        v137 = v139 = v37;
                        if ([v37 isEqualToString:?])
                        {
                          v38 = 0;
                          goto LABEL_57;
                        }
                      }

                      if ([v20 category] != 10)
                      {
                        v71 = 0;
                        goto LABEL_69;
                      }

                      v136 = [v20 patterns];
                      v65 = [v136 objectForKeyedSubscript:@"kEventPatternInteractionScoredContactIdentifier"];
                      v134 = [v23 patterns];
                      [v134 objectForKeyedSubscript:@"kEventPatternInteractionScoredContactIdentifier"];
                      v133 = v135 = v65;
                      if ([v65 isEqualToString:?])
                      {
                        v38 = 1;
LABEL_57:
                        v66 = [v142 patterns];
                        v67 = [v66 objectForKeyedSubscript:@"kEventPatternTrendFeatureType"];
                        v68 = [v67 intValue];
                        v69 = [v23 patterns];
                        v70 = [v69 objectForKeyedSubscript:@"kEventPatternTrendFeatureType"];
                        v71 = v68 == [v70 intValue];

                        if (!v38)
                        {
LABEL_69:
                          if (v36 == 2)
                          {

                            v20 = v142;
                            if (v71)
                            {
LABEL_73:
                              v73 = [v20 creationDate];
                              v74 = [v23 creationDate];
                              [v73 timeIntervalSinceDate:v74];
                              v76 = v75;

                              v77 = [v20 patterns];
                              v78 = [v77 objectForKeyedSubscript:@"kEventPatternTrendSlope"];
                              [v78 doubleValue];
                              v80 = v79;
                              v81 = [v23 patterns];
                              v82 = [v81 objectForKeyedSubscript:@"kEventPatternTrendSlope"];
                              [v82 doubleValue];
                              v84 = v80 * v83;

                              v85 = v76 <= 604800.0;
                              if (v84 > 0.0)
                              {
                                v85 = 1;
                              }

                              v141 += v85;
                            }
                          }

                          else
                          {
                            v20 = v142;
                            if (v71)
                            {
                              goto LABEL_73;
                            }
                          }

LABEL_49:
                          v21 = v144;
                          goto LABEL_50;
                        }
                      }

                      else
                      {
                        v71 = 0;
                      }

                      goto LABEL_69;
                    }

                    v39 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
                    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "Work out type doesn't exist in database for trend", buf, 2u);
                    }

LABEL_48:

                    goto LABEL_49;
                  }
                }

                else
                {
                }

                v39 = [v20 patterns];
                v40 = [v39 objectForKeyedSubscript:@"kEventPatternType"];
                if ([v40 intValue] != 2)
                {

                  goto LABEL_48;
                }

                v41 = [v23 patterns];
                v42 = [v41 objectForKeyedSubscript:@"kEventPatternType"];
                v43 = [v42 intValue];

                if (v43 != 2)
                {
                  goto LABEL_49;
                }

                v44 = [v23 patterns];
                v45 = [v44 objectForKey:@"kEventPatternOverallWorkoutType"];

                if (v45)
                {
                  v46 = [v20 category];
                  if (v46 == [v23 category])
                  {
                    v47 = [v20 patterns];
                    v48 = [v47 objectForKeyedSubscript:@"kEventPatternOverallWorkoutType"];
                    v49 = [v23 patterns];
                    v50 = [v49 objectForKeyedSubscript:@"kEventPatternOverallWorkoutType"];
                    if ([v48 isEqualToString:v50])
                    {
                      v128 = v48;
                      v132 = v47;
                      v131 = [v20 patterns];
                      v130 = [v131 objectForKeyedSubscript:@"kEventPatternRoutineDetectedWeeks"];
                      v51 = [NSSet setWithArray:?];
                      v52 = [v23 patterns];
                      v127 = [v52 objectForKeyedSubscript:@"kEventPatternRoutineDetectedWeeks"];
                      v53 = [NSSet setWithArray:?];
                      v129 = v51;
                      if ([v51 isEqualToSet:v53])
                      {
                        v54 = 1;
                      }

                      else
                      {
                        v86 = [v20 patterns];
                        [v86 objectForKeyedSubscript:@"kEventPatternRoutineStartingRoutine"];
                        v88 = v87 = v52;
                        v89 = [v23 patterns];
                        v90 = [v89 objectForKeyedSubscript:@"kEventPatternRoutineStartingRoutine"];
                        v54 = v88 == v90;

                        v52 = v87;
                      }

                      v47 = v132;
                      v48 = v128;
                    }

                    else
                    {
                      v54 = 0;
                    }

                    v141 += v54;
                    v20 = v142;
                  }

                  goto LABEL_49;
                }

                v72 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
                v21 = v144;
                if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_INFO, "Work out type  doesn't exist in database for routine", buf, 2u);
                }

LABEL_50:
                objc_autoreleasePoolPop(context);
                v22 = v22 + 1;
              }

              while (v145 != v22);
              v91 = [v21 countByEnumeratingWithState:&v153 objects:v161 count:16];
              v145 = v91;
            }

            while (v91);

            v18 = v122;
            i = v126;
            if (!v141)
            {
LABEL_84:
              [v18 addObject:v20];
            }
          }

          v125 = [obj countByEnumeratingWithState:&v157 objects:v162 count:16];
        }

        while (v125);
      }

      v92 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
      v93 = v92;
      v94 = *(a1 + 72);
      if (v94 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v92))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v93, OS_SIGNPOST_INTERVAL_END, v94, "EventManagerAnalyticsDeduplication", "", buf, 2u);
      }

      [(MOPerformanceMeasurement *)v115 endSession];
      v4 = v117;
      if ([v122 count])
      {
        v95 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
        v96 = v95;
        v97 = *(a1 + 72);
        if (v97 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v95))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v96, OS_SIGNPOST_INTERVAL_BEGIN, v97, "EventManagerAnalyticsStore", "", buf, 2u);
        }

        v98 = [[MOPerformanceMeasurement alloc] initWithName:@"AnalyticsStore" measureRecentPeak:0];
        [(MOPerformanceMeasurement *)v98 startSession];
        v99 = [*(a1 + 40) eventStore];
        v147[0] = _NSConcreteStackBlock;
        v147[1] = 3221225472;
        v147[2] = __60__MOEventManager_runAnalyticsWithRefreshVariant_andHandler___block_invoke_539;
        v147[3] = &unk_10033FC38;
        v100 = *(a1 + 48);
        v101 = *(a1 + 72);
        v151 = v100;
        v152 = v101;
        v148 = v98;
        v149 = *(a1 + 32);
        v102 = v122;
        v150 = v122;
        v103 = v98;
        [v99 storeEvents:v150 CompletionHandler:v147];

        v4 = v117;
      }

      else
      {
        v110 = *(a1 + 48);
        if (v110)
        {
          (*(v110 + 16))(v110, 0, &__NSDictionary0__struct);
        }

        v111 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
        v112 = v111;
        v113 = *(a1 + 72);
        if (v113 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v111))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v112, OS_SIGNPOST_INTERVAL_END, v113, "EventManagerAnalytics", "", buf, 2u);
        }

        [*(a1 + 32) endSession];
        v102 = v122;
      }
    }

    else
    {
      v106 = *(a1 + 48);
      if (v106)
      {
        (*(v106 + 16))(v106, 0, &__NSDictionary0__struct);
      }

      v107 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
      v108 = v107;
      v109 = *(a1 + 72);
      if (v109 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v107))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v108, OS_SIGNPOST_INTERVAL_END, v109, "EventManagerAnalytics", "", buf, 2u);
      }

      [*(a1 + 32) endSession];
    }

    goto LABEL_115;
  }

  if (v7)
  {
    *buf = 138412290;
    v164 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "error, %@", buf, 0xCu);
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, &__NSDictionary0__struct);
  }

  v9 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v10 = v9;
  v11 = *(a1 + 72);
  if (v11 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v9))
  {
    goto LABEL_100;
  }

  *buf = 0;
LABEL_9:
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, v11, "EventManagerAnalytics", "", buf, 2u);
LABEL_100:

  [*(a1 + 32) endSession];
LABEL_115:
}

void __60__MOEventManager_runAnalyticsWithRefreshVariant_andHandler___block_invoke_539(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __60__MOEventManager_runAnalyticsWithRefreshVariant_andHandler___block_invoke_539_cold_1();
    }

    v9 = *(a1 + 56);
    if (v9)
    {
      (*(v9 + 16))(v9, v5, &__NSDictionary0__struct);
    }

    v10 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    v11 = v10;
    v12 = *(a1 + 64);
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      LOWORD(v18) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v12, "EventManagerAnalyticsStore", "", &v18, 2u);
    }

    [*(a1 + 32) endSession];
    v13 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    v14 = v13;
    v15 = *(a1 + 64);
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      LOWORD(v18) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, v15, "EventManagerAnalytics", "", &v18, 2u);
    }

    [*(a1 + 40) endSession];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v16 = [*(a1 + 48) count];
      v18 = 134217984;
      v19 = v16;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "saved patterns as events into database. %lu", &v18, 0xCu);
    }

    v17 = *(a1 + 56);
    if (v17)
    {
      (*(v17 + 16))(v17, 0, v6);
    }
  }
}

- (void)clearCache
{
  [(MOEventManager *)self setCachedEvents:0];
  [(MOEventManager *)self setCacheStartDate:0];

  [(MOEventManager *)self setCacheEndDate:0];
}

- (void)initWithUniverse:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)clearEventsWithRefreshVariant:andHandler:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)collectEventsWithRefreshVariant:andHandler:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_232_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_1(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v1, v2, "State of Mind collection timed out: %@", v3, v4, v5, v6, v7);
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_242_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_1(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v1, v2, "Workout collection timed out: %@", v3, v4, v5, v6, v7);
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_252_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_1(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v1, v2, "Photo Memory collection timed out: %@", v3, v4, v5, v6, v7);
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_262_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_1(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v1, v2, "Contact collection timed out: %@", v3, v4, v5, v6, v7);
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_272_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_1(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v1, v2, "Proximity collection timed out: %@", v3, v4, v5, v6, v7);
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_282_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_1(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v1, v2, "People Density collection timed out: %@", v3, v4, v5, v6, v7);
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_292_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_1(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v1, v2, "Life Event collection timed out: %@", v3, v4, v5, v6, v7);
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_305_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_1(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v1, v2, "Visit training timed out: %@", v3, v4, v5, v6, v7);
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_316_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_1(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v1, v2, "Visit fetching timed out: %@", v3, v4, v5, v6, v7);
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_326_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_1(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v1, v2, "Media collection timed out: %@", v3, v4, v5, v6, v7);
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_336_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_1(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v1, v2, "Motion Activity collection timed out: %@", v3, v4, v5, v6, v7);
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_346_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_1(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v1, v2, "Screen Time collection timed out: %@", v3, v4, v5, v6, v7);
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_356_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_1(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v1, v2, "Spotlight collection timed out: %@", v3, v4, v5, v6, v7);
}

void __105__MOEventManager__collectCompleteEventsBetweenStartDate_endDate_refreshVariant_withStoredEvents_handler___block_invoke_360_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_1(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v1, v2, "collecting new and unrehydrated events failed with error, %@", v3, v4, v5, v6, v7);
}

- (void)storeEvents:handler:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)fetchEventsWithOptions:CompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __60__MOEventManager__fetchEventsWithOptions_CompletionHandler___block_invoke_2_cold_1(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v2, v3, "fetch events from store hit error, %@", v4, v5, v6, v7, v8);
}

- (void)_rehydrateEventsBySingleSource:handler:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)cleanUpEventsWithRefreshVariant:andHandler:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __62__MOEventManager__cleanUpEventsWithRefreshVariant_andHandler___block_invoke_511_cold_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_2_5();
  v5 = 2112;
  v6 = v2;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "purge visit events before date, %@,  failed with error, %@", v4, 0x16u);
}

@end