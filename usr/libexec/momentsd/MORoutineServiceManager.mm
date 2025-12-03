@interface MORoutineServiceManager
+ (id)_timeZoneFromLocation:(id)location;
- (BOOL)_shouldMarkAsPreOnboardedVisit:(id)visit;
- (BOOL)_visitAlreadyHaveValidEvent:(id)event Events:(id)events;
- (MORoutineServiceManager)initWithUniverse:(id)universe;
- (RTLocation)homeLOI;
- (RTRoutineManager)routineManager;
- (double)_findMatchingFamiliarityIndexValue:(id)value forVisit:(id)visit;
- (id)_calculateDistanceFromHome:(id)home;
- (id)_createEventFromVisit:(id)visit;
- (id)_findMatchingEventFor:(id)for inEvents:(id)events;
- (id)_getLoiInfo:(id)info;
- (id)_getVisitInfo:(id)info;
- (id)_redactString:(id)string;
- (id)_rehydrateStoreEvents:(id)events withVisits:(id)visits familiarityIndex:(id)index;
- (id)fetchHomeLOI;
- (id)findMatchingVisitFor:(id)for inVisits:(id)visits;
- (id)getPhotosCloseToHome:(id)home withDistance:(double)distance;
- (unint64_t)_placeInferencePlaceTypeFromMapItemPlaceType:(unint64_t)type;
- (void)_checkAndFetchInvalidEvents:(id)events Events:(id)a4 handler:(id)handler;
- (void)_createEventsFromVisits:(id)visits familiarityIndex:(id)index handler:(id)handler;
- (void)_createNewEventsFromVisits:(id)visits familiarityIndex:(id)index withStoredEvents:(id)events handler:(id)handler;
- (void)_detectHindsightVisitsWithCompletionHandler:(id)handler;
- (void)_fetchDeviceLocationsFromStartDate:(id)date endDate:(id)endDate handler:(id)handler;
- (void)_fetchEarliestVisitDateInRoutineWithHandler:(id)handler;
- (void)_fetchFamiliarityIndexesLOIForDateInterval:(id)interval CompletionHandler:(id)handler;
- (void)_fetchGeoMapItemFromHandler:(id)handler CompletionHandler:(id)completionHandler;
- (void)_fetchRealTimeVisitsBetweenStartDate:(id)date EndDate:(id)endDate CompletionHandler:(id)handler;
- (void)_fetchRealTimeVisitsForStartDate:(id)date CompletionHandler:(id)handler;
- (void)_fetchStitchedVisitsBetweenStartDate:(id)date EndDate:(id)endDate CompletionHandler:(id)handler;
- (void)_fetchVisitsBetweenStartDate:(id)date CompletionHandler:(id)handler;
- (void)_fetchVisitsBetweenStartDate:(id)date endDate:(id)endDate withStoredEvents:(id)events handler:(id)handler;
- (void)_rehydrateVisits:(id)visits handler:(id)handler;
- (void)_setDynamicProperties:(id)properties familiarityIndexResultsLOIs:(id)is visit:(id)visit;
- (void)_setDynamicProperties:(id)properties visit:(id)visit;
- (void)detectHindsightVisitsWithCompletionHandler:(id)handler;
- (void)fetchConsolidatedEvents:(id)events withStored:(id)stored handler:(id)handler;
- (void)fetchDeviceLocationsFromStartDate:(id)date endDate:(id)endDate handler:(id)handler;
- (void)fetchEarliestVisitDateInRoutineWithHandler:(id)handler;
- (void)fetchHomeLOI;
- (void)fetchStitchedVisitsBetweenStartDate:(id)date EndDate:(id)endDate CompletionHandler:(id)handler;
- (void)fetchVisitsBetweenStartDate:(id)date endDate:(id)endDate withStoredEvents:(id)events handler:(id)handler;
- (void)rehydrateVisits:(id)visits handler:(id)handler;
@end

@implementation MORoutineServiceManager

- (RTLocation)homeLOI
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_homeLOI)
  {
    fetchHomeLOI = [(MORoutineServiceManager *)selfCopy fetchHomeLOI];
    homeLOI = selfCopy->_homeLOI;
    selfCopy->_homeLOI = fetchHomeLOI;
  }

  objc_sync_exit(selfCopy);

  v5 = selfCopy->_homeLOI;

  return v5;
}

- (MORoutineServiceManager)initWithUniverse:(id)universe
{
  universeCopy = universe;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [universeCopy getService:v8];

  if (!v9)
  {
    v23 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [MOEventStore initWithUniverse:];
    }

    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"MORoutineServiceManager.m" lineNumber:87 description:@"Invalid parameter not satisfying: configurationManager"];
    goto LABEL_12;
  }

  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [universeCopy getService:v11];

  if (!v12)
  {
    v24 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [MORoutineServiceManager initWithUniverse:];
    }

    v25 = +[NSAssertionHandler currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"MORoutineServiceManager.m" lineNumber:93 description:@"Invalid parameter not satisfying: eventStore"];

LABEL_12:
    selfCopy = 0;
    goto LABEL_13;
  }

  v27.receiver = self;
  v27.super_class = MORoutineServiceManager;
  v13 = [(MORoutineServiceManager *)&v27 init];
  if (v13)
  {
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("MORoutineServiceManager", v14);
    queue = v13->_queue;
    v13->_queue = v15;

    objc_storeStrong(&v13->_eventStore, v12);
    objc_storeStrong(&v13->_configurationManager, v9);
    v17 = objc_opt_new();
    mapServiceManager = v13->_mapServiceManager;
    v13->_mapServiceManager = v17;

    objc_storeStrong(&v13->_universe, universe);
    v28[0] = GEOPOICategoryAirport;
    v28[1] = GEOPOICategoryAirportGate;
    v28[2] = GEOPOICategoryAirportTerminal;
    v19 = [NSArray arrayWithObjects:v28 count:3];
    v20 = [NSSet setWithArray:v19];
    airportCategories = v13->_airportCategories;
    v13->_airportCategories = v20;
  }

  self = v13;
  selfCopy = self;
LABEL_13:

  return selfCopy;
}

- (RTRoutineManager)routineManager
{
  routineManager = self->_routineManager;
  if (!routineManager)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __41__MORoutineServiceManager_routineManager__block_invoke;
    block[3] = &unk_100335F40;
    block[4] = self;
    if (routineManager_onceToken != -1)
    {
      dispatch_once(&routineManager_onceToken, block);
    }

    routineManager = self->_routineManager;
  }

  return routineManager;
}

uint64_t __41__MORoutineServiceManager_routineManager__block_invoke(uint64_t a1)
{
  v2 = [[RTRoutineManager alloc] initWithRestorationIdentifier:@"MORoutineServiceManagerClient"];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

- (void)fetchStitchedVisitsBetweenStartDate:(id)date EndDate:(id)endDate CompletionHandler:(id)handler
{
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  queue = [(MORoutineServiceManager *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __89__MORoutineServiceManager_fetchStitchedVisitsBetweenStartDate_EndDate_CompletionHandler___block_invoke;
  v15[3] = &unk_1003361C0;
  v15[4] = self;
  v16 = dateCopy;
  v17 = endDateCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = endDateCopy;
  v14 = dateCopy;
  dispatch_async(queue, v15);
}

- (void)_fetchStitchedVisitsBetweenStartDate:(id)date EndDate:(id)endDate CompletionHandler:(id)handler
{
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  queue = [(MORoutineServiceManager *)self queue];
  dispatch_assert_queue_V2(queue);

  if (dateCopy && endDateCopy)
  {
    v11 = [[NSDateInterval alloc] initWithStartDate:dateCopy endDate:endDateCopy];
    v12 = [[NSSet alloc] initWithObjects:{&off_10036A900, 0}];
    v13 = [RTStoredVisitFetchOptions alloc];
    v14 = [NSNumber numberWithDouble:RTVisitConfidenceHigh];
    v15 = [v13 initWithAscending:1 confidence:v14 dateInterval:v11 labelVisit:1 limit:0 sources:v12];

    [(MORoutineServiceManager *)self _fetchVisitsBetweenStartDate:v15 CompletionHandler:handlerCopy];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

- (void)_fetchRealTimeVisitsBetweenStartDate:(id)date EndDate:(id)endDate CompletionHandler:(id)handler
{
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  queue = [(MORoutineServiceManager *)self queue];
  dispatch_assert_queue_V2(queue);

  if (dateCopy && endDateCopy)
  {
    v11 = [[NSDateInterval alloc] initWithStartDate:dateCopy endDate:endDateCopy];
    v12 = [[NSSet alloc] initWithObjects:{&off_10036A918, 0}];
    v13 = [RTStoredVisitFetchOptions alloc];
    v14 = [NSNumber numberWithDouble:RTVisitConfidenceHigh];
    v15 = [v13 initWithAscending:1 confidence:v14 dateInterval:v11 labelVisit:1 limit:0 sources:v12];

    [(MORoutineServiceManager *)self _fetchRealTimeVisitsForStartDate:v15 CompletionHandler:handlerCopy];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

- (void)detectHindsightVisitsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(MORoutineServiceManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __70__MORoutineServiceManager_detectHindsightVisitsWithCompletionHandler___block_invoke;
  v7[3] = &unk_100337B48;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)_detectHindsightVisitsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(MORoutineServiceManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "RoutineManagerVisitTrainingvisitTraining", "", buf, 2u);
  }

  v7 = [[MOPerformanceMeasurement alloc] initWithName:@"RoutineVisitTraining" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v7 startSession];
  routineManager = [(MORoutineServiceManager *)self routineManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __71__MORoutineServiceManager__detectHindsightVisitsWithCompletionHandler___block_invoke;
  v11[3] = &unk_10033B210;
  v12 = v7;
  v13 = handlerCopy;
  v9 = v7;
  v10 = handlerCopy;
  [routineManager processHindsightVisitsWithHandler:v11];
}

void __71__MORoutineServiceManager__detectHindsightVisitsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && ([v3 code] == 5 || objc_msgSend(v4, "code") == 8))
  {
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityRoutine);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __71__MORoutineServiceManager__detectHindsightVisitsWithCompletionHandler___block_invoke_cold_1();
    }

    v10 = NSLocalizedDescriptionKey;
    v11 = @"CR: Provider database is unavailable (hindsightVisits)";
    v6 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v7 = [NSError errorWithDomain:@"MOErrorDomain" code:1088 userInfo:v6];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  v8 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v8))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, 1uLL, "RoutineManagerVisitTrainingvisitTraining", "", v9, 2u);
  }

  [*(a1 + 32) endSession];
}

- (void)fetchDeviceLocationsFromStartDate:(id)date endDate:(id)endDate handler:(id)handler
{
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  queue = [(MORoutineServiceManager *)self queue];
  dispatch_assert_queue_not_V2(queue);

  queue2 = [(MORoutineServiceManager *)self queue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __77__MORoutineServiceManager_fetchDeviceLocationsFromStartDate_endDate_handler___block_invoke;
  v16[3] = &unk_1003361C0;
  v16[4] = self;
  v17 = dateCopy;
  v18 = endDateCopy;
  v19 = handlerCopy;
  v13 = handlerCopy;
  v14 = endDateCopy;
  v15 = dateCopy;
  dispatch_async(queue2, v16);
}

- (void)_fetchDeviceLocationsFromStartDate:(id)date endDate:(id)endDate handler:(id)handler
{
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  queue = [(MORoutineServiceManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = [[NSDateInterval alloc] initWithStartDate:dateCopy endDate:endDateCopy];
  LOBYTE(v18) = 1;
  v13 = [[RTStoredLocationEnumerationOptions alloc] initWithDateInterval:v12 horizontalAccuracy:20 batchSize:0 boundingBoxLocation:14 type:1 smoothingRequired:1 downsampleRequired:60.0 smoothingErrorThreshold:5.0 ascending:v18];
  v14 = objc_opt_new();
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__28;
  v27 = __Block_byref_object_dispose__28;
  v28 = 0;
  routineManager = [(MORoutineServiceManager *)self routineManager];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = __78__MORoutineServiceManager__fetchDeviceLocationsFromStartDate_endDate_handler___block_invoke;
  v19[3] = &unk_10033CE70;
  v16 = v12;
  v20 = v16;
  v17 = v14;
  v21 = v17;
  v22 = &v23;
  [routineManager enumerateStoredLocationsWithOptions:v13 usingBlock:v19];

  handlerCopy[2](handlerCopy, v17, v24[5]);
  _Block_object_dispose(&v23, 8);
}

void __78__MORoutineServiceManager__fetchDeviceLocationsFromStartDate_endDate_handler___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = _mo_log_facility_get_os_log(&MOLogFacilityRoutine);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 32);
    v11 = [v7 count];
    v12 = @"Stop";
    *buf = 138413058;
    v22 = v10;
    v23 = 2048;
    if (!a4)
    {
      v12 = @"Error";
    }

    v24 = v11;
    v25 = 2112;
    v26 = v8;
    v27 = 2112;
    v28 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "fetchStoredLocations returned locations. dates, %@, count, %lu, error, %@, stop, %@", buf, 0x2Au);
  }

  if ([v7 count])
  {
    [*(a1 + 40) addObjectsFromArray:v7];
  }

  if (v8 && !*(*(*(a1 + 48) + 8) + 40))
  {
    if ([v8 code] == 5 || objc_msgSend(v8, "code") == 8)
    {
      v19 = NSLocalizedDescriptionKey;
      v20 = @"CR: Provider database is unavailable (fromStartDate)";
      v13 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v14 = [NSError errorWithDomain:@"MOErrorDomain" code:1088 userInfo:v13];
      v15 = *(*(a1 + 48) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;
    }

    else
    {
      v17 = *(*(a1 + 48) + 8);
      v18 = v8;
      v13 = *(v17 + 40);
      *(v17 + 40) = v18;
    }
  }
}

- (void)_fetchVisitsBetweenStartDate:(id)date CompletionHandler:(id)handler
{
  handlerCopy = handler;
  dateCopy = date;
  queue = [(MORoutineServiceManager *)self queue];
  dispatch_assert_queue_V2(queue);

  routineManager = [(MORoutineServiceManager *)self routineManager];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __74__MORoutineServiceManager__fetchVisitsBetweenStartDate_CompletionHandler___block_invoke;
  v12[3] = &unk_10033CEC0;
  v13 = handlerCopy;
  v14 = a2;
  v12[4] = self;
  v11 = handlerCopy;
  [routineManager fetchStoredVisitsWithOptions:dateCopy handler:v12];
}

void __74__MORoutineServiceManager__fetchVisitsBetweenStartDate_CompletionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityRoutine);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __74__MORoutineServiceManager__fetchVisitsBetweenStartDate_CompletionHandler___block_invoke_cold_1();
    }

    (*(a1[5] + 16))();
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v19 = [v5 count];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "fetchstoredVisits returned visits count, %lu", buf, 0xCu);
    }

    v9 = [NSPredicate predicateWithFormat:@"type == %lu", 3];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = __74__MORoutineServiceManager__fetchVisitsBetweenStartDate_CompletionHandler___block_invoke_170;
    v16[3] = &unk_10033CE98;
    v10 = a1[6];
    v16[4] = a1[4];
    v16[5] = v10;
    v11 = [NSPredicate predicateWithBlock:v16];
    v17[0] = v9;
    v17[1] = v11;
    v12 = [NSArray arrayWithObjects:v17 count:2];
    v13 = [NSCompoundPredicate andPredicateWithSubpredicates:v12];

    v14 = a1[5];
    v15 = [v5 filteredArrayUsingPredicate:v13];
    (*(v14 + 16))(v14, v15, 0);
  }
}

uint64_t __74__MORoutineServiceManager__fetchVisitsBetweenStartDate_CompletionHandler___block_invoke_170(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 exit];
  v5 = [v3 entry];
  [v4 timeIntervalSinceDate:v5];
  v7 = v6;

  if (v7 < 300.0)
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityRoutine);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __74__MORoutineServiceManager__fetchVisitsBetweenStartDate_CompletionHandler___block_invoke_170_cold_2(a1, v3);
    }

LABEL_8:

    v9 = 0;
    goto LABEL_9;
  }

  if ([v3 source] != 3)
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityRoutine);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __74__MORoutineServiceManager__fetchVisitsBetweenStartDate_CompletionHandler___block_invoke_170_cold_1(a1, v3);
    }

    goto LABEL_8;
  }

  v9 = 1;
LABEL_9:

  return v9;
}

- (void)_fetchRealTimeVisitsForStartDate:(id)date CompletionHandler:(id)handler
{
  handlerCopy = handler;
  dateCopy = date;
  queue = [(MORoutineServiceManager *)self queue];
  dispatch_assert_queue_V2(queue);

  routineManager = [(MORoutineServiceManager *)self routineManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __78__MORoutineServiceManager__fetchRealTimeVisitsForStartDate_CompletionHandler___block_invoke;
  v11[3] = &unk_1003369E0;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [routineManager fetchStoredVisitsWithOptions:dateCopy handler:v11];
}

void __78__MORoutineServiceManager__fetchRealTimeVisitsForStartDate_CompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityRoutine);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __78__MORoutineServiceManager__fetchRealTimeVisitsForStartDate_CompletionHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v16 = [v5 count];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "fetchRealTimestoredVisits returned visits count, %lu", buf, 0xCu);
    }

    v9 = [NSPredicate predicateWithFormat:@"type == %lu", 1];
    v14 = v9;
    v10 = [NSArray arrayWithObjects:&v14 count:1];
    v11 = [NSCompoundPredicate andPredicateWithSubpredicates:v10];

    v12 = *(a1 + 32);
    v13 = [v5 filteredArrayUsingPredicate:v11];
    (*(v12 + 16))(v12, v13, 0);
  }
}

- (void)_fetchGeoMapItemFromHandler:(id)handler CompletionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  handlerCopy = handler;
  queue = [(MORoutineServiceManager *)self queue];
  dispatch_assert_queue_V2(queue);

  mapServiceManager = self->_mapServiceManager;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __73__MORoutineServiceManager__fetchGeoMapItemFromHandler_CompletionHandler___block_invoke;
  v11[3] = &unk_10033CEE8;
  v12 = completionHandlerCopy;
  v10 = completionHandlerCopy;
  [(GEOMapService *)mapServiceManager resolveMapItemFromHandle:handlerCopy completionHandler:v11];
}

void __73__MORoutineServiceManager__fetchGeoMapItemFromHandler_CompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityMapService);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __73__MORoutineServiceManager__fetchGeoMapItemFromHandler_CompletionHandler___block_invoke_cold_1();
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

- (unint64_t)_placeInferencePlaceTypeFromMapItemPlaceType:(unint64_t)type
{
  if (type > 2)
  {
    return 4;
  }

  else
  {
    return qword_100323170[type];
  }
}

- (BOOL)_shouldMarkAsPreOnboardedVisit:(id)visit
{
  visitCopy = visit;
  LODWORD(v5) = 14.0;
  [(MOConfigurationManagerBase *)self->_configurationManager getFloatSettingForKey:@"Visit_PreOnboardingLookBackWindow" withFallback:v5];
  self->_maxAllowedDaysForVisitLookback = v6;
  fDefaultsManager = [(MOConfigurationManagerBase *)self->_configurationManager fDefaultsManager];
  v8 = [fDefaultsManager objectForKey:@"OnboardingDate"];

  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = v8;
    v10 = [visitCopy isBeforeDate:v9];
    v11 = _mo_log_facility_get_os_log(&MOLogFacilityRoutine);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      maxAllowedDaysForVisitLookback = self->_maxAllowedDaysForVisitLookback;
      v14 = 138412802;
      v15 = v9;
      v16 = 1024;
      v17 = maxAllowedDaysForVisitLookback;
      v18 = 1024;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "User onboarding date %@,_maxAllowedDaysForVisitLookback, %d,isPreOnboardedVisit, %d", &v14, 0x18u);
    }
  }

  else
  {
    v9 = _mo_log_facility_get_os_log(&MOLogFacilityRoutine);
    LOBYTE(v10) = 1;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "User onboarding date is nil", &v14, 2u);
    }
  }

  return v10;
}

+ (id)_timeZoneFromLocation:(id)location
{
  locationCopy = location;
  v4 = [CLLocation alloc];
  [locationCopy latitude];
  v6 = v5;
  [locationCopy longitude];
  v8 = v7;

  v9 = [v4 initWithLatitude:v6 longitude:v8];
  v10 = [CLGeocoder _timeZoneAtLocation:v9];

  return v10;
}

- (void)_setDynamicProperties:(id)properties visit:(id)visit
{
  propertiesCopy = properties;
  visitCopy = visit;
  getPlaceName = [visitCopy getPlaceName];
  placeInference = [visitCopy placeInference];
  mapItem = [placeInference mapItem];

  placeInference2 = [visitCopy placeInference];
  [placeInference2 confidence];
  v13 = v12;

  HIDWORD(v14) = 1072483532;
  *&v14 = 0.9;
  [(MOConfigurationManagerBase *)self->_configurationManager getFloatSettingForKey:@"VA_VisitLabelHighConfidenceThreshold" withFallback:v14];
  v16 = v15;
  v17 = _mo_log_facility_get_os_log(&MOLogFacilityRoutine);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [(MORoutineServiceManager *)a2 _setDynamicProperties:visitCopy visit:v17];
  }

  placeInference3 = [visitCopy placeInference];
  finerGranularityMapItem = [placeInference3 finerGranularityMapItem];
  selfCopy = self;
  if (!finerGranularityMapItem)
  {
    goto LABEL_6;
  }

  v20 = finerGranularityMapItem;
  placeInference4 = [visitCopy placeInference];
  [placeInference4 finerGranularityMapItemConfidence];
  if (v22 < v16)
  {

LABEL_6:
    v134 = 0;
LABEL_7:

    goto LABEL_8;
  }

  v130 = getPlaceName;
  airportCategories = self->_airportCategories;
  placeInference5 = [visitCopy placeInference];
  mapItem2 = [placeInference5 mapItem];
  category = [mapItem2 category];
  LOBYTE(airportCategories) = [(NSSet *)airportCategories containsObject:category];

  if ((airportCategories & 1) == 0)
  {
    getFinerGranularityPlaceName = [visitCopy getFinerGranularityPlaceName];

    placeInference6 = [visitCopy placeInference];
    finerGranularityMapItem2 = [placeInference6 finerGranularityMapItem];

    placeInference3 = [visitCopy placeInference];
    [placeInference3 finerGranularityMapItemConfidence];
    v13 = v96;
    v134 = 1;
    mapItem = finerGranularityMapItem2;
    getPlaceName = getFinerGranularityPlaceName;
    self = selfCopy;
    goto LABEL_7;
  }

  v134 = 0;
  getPlaceName = v130;
  self = selfCopy;
LABEL_8:
  v23 = _mo_log_facility_get_os_log(&MOLogFacilityRoutine);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    [MORoutineServiceManager _setDynamicProperties:a2 visit:?];
  }

  v24 = _mo_log_facility_get_os_log(&MOLogFacilityRoutine);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    [MORoutineServiceManager _setDynamicProperties:mapItem visit:?];
  }

  routineEvent = [propertiesCopy routineEvent];
  v26 = getPlaceName;
  [routineEvent setPlaceName:getPlaceName];

  getLocation = [visitCopy getLocation];
  routineEvent2 = [propertiesCopy routineEvent];
  [routineEvent2 setLocation:getLocation];

  placeInference7 = [visitCopy placeInference];
  userType = [placeInference7 userType];
  routineEvent3 = [propertiesCopy routineEvent];
  [routineEvent3 setPlaceUserType:userType];

  routineEvent4 = [propertiesCopy routineEvent];
  [routineEvent4 setPlaceNameConfidence:v13];

  geoMapItemHandle = [mapItem geoMapItemHandle];
  routineEvent5 = [propertiesCopy routineEvent];
  [routineEvent5 setPlaceMapItem:geoMapItemHandle];

  source = [mapItem source];
  routineEvent6 = [propertiesCopy routineEvent];
  [routineEvent6 setPlaceSource:source];

  mapItemPlaceType = [mapItem mapItemPlaceType];
  routineEvent7 = [propertiesCopy routineEvent];
  [routineEvent7 setMapItemPlaceType:mapItemPlaceType];

  location = [mapItem location];
  routineEvent8 = [propertiesCopy routineEvent];
  [routineEvent8 setMapItemLocation:location];

  categoryMUID = [mapItem categoryMUID];
  routineEvent9 = [propertiesCopy routineEvent];
  [routineEvent9 setCategoryMuid:categoryMUID];

  muid = [mapItem muid];
  routineEvent10 = [propertiesCopy routineEvent];
  [routineEvent10 setMapItemID:muid];

  placeInference8 = [visitCopy placeInference];
  if ([placeInference8 placeType] == 4)
  {
    goto LABEL_15;
  }

  routineEvent11 = [propertiesCopy routineEvent];
  if ([routineEvent11 placeSource] == 1)
  {

LABEL_15:
LABEL_16:
    placeType = -[MORoutineServiceManager _placeInferencePlaceTypeFromMapItemPlaceType:](self, "_placeInferencePlaceTypeFromMapItemPlaceType:", [mapItem mapItemPlaceType]);
    goto LABEL_17;
  }

  routineEvent12 = [propertiesCopy routineEvent];
  if ([routineEvent12 placeSource] == 2)
  {
    v91 = 1;
  }

  else
  {
    v91 = v134;
  }

  if (v91)
  {
    goto LABEL_16;
  }

  placeInference9 = [visitCopy placeInference];
  placeType = [placeInference9 placeType];

LABEL_17:
  routineEvent13 = [propertiesCopy routineEvent];
  [routineEvent13 setPlaceType:placeType];

  category2 = [mapItem category];
  routineEvent14 = [propertiesCopy routineEvent];
  [routineEvent14 setPoiCategory:category2];

  routineEvent15 = [propertiesCopy routineEvent];
  location2 = [routineEvent15 location];
  if (!location2)
  {

    goto LABEL_22;
  }

  v53 = location2;
  location3 = [mapItem location];

  if (!location3)
  {
LABEL_22:
    v59 = -1.0;
    v64 = selfCopy;
    goto LABEL_23;
  }

  location4 = [mapItem location];
  routineEvent16 = [propertiesCopy routineEvent];
  location5 = [routineEvent16 location];
  [location4 distanceFromLocation:location5];
  v59 = v58;

  routineEvent17 = [propertiesCopy routineEvent];
  location6 = [routineEvent17 location];
  [location6 horizontalUncertainty];
  v63 = v62;

  v64 = selfCopy;
  if (v63 > 0.0)
  {
    routineEvent18 = [propertiesCopy routineEvent];
    location7 = [routineEvent18 location];
    [location7 horizontalUncertainty];
    v68 = v59 - v67;

    v59 = fmax(v68, 0.0);
  }

LABEL_23:
  routineEvent19 = [propertiesCopy routineEvent];
  [routineEvent19 setDistanceFromVisitToPlace:v59];

  placeInference10 = [visitCopy placeInference];
  if (!placeInference10 || !mapItem)
  {
    goto LABEL_38;
  }

  address = [mapItem address];

  if (!address)
  {
    goto LABEL_39;
  }

  address2 = [mapItem address];
  routineEvent20 = [propertiesCopy routineEvent];
  [routineEvent20 setAddress:address2];

  routineEvent21 = [propertiesCopy routineEvent];
  address3 = [routineEvent21 address];
  geoAddressObject = [address3 geoAddressObject];
  routineEvent22 = [propertiesCopy routineEvent];
  [routineEvent22 setGeoAddressObject:geoAddressObject];

  routineEvent23 = [propertiesCopy routineEvent];
  address4 = [routineEvent23 address];
  geoAddressData = [address4 geoAddressData];

  placeInference10 = _mo_log_facility_get_os_log(&MOLogFacilityRoutine);
  v81 = os_log_type_enabled(placeInference10, OS_LOG_TYPE_DEBUG);
  if (geoAddressData)
  {
    if (v81)
    {
      v125 = NSStringFromSelector(a2);
      routineEvent24 = [propertiesCopy routineEvent];
      placeName = [routineEvent24 placeName];
      v121 = [(MORoutineServiceManager *)v64 _redactString:placeName];
      routineEvent25 = [propertiesCopy routineEvent];
      geoAddressObject2 = [routineEvent25 geoAddressObject];
      shortAddress = [geoAddressObject2 shortAddress];
      [(MORoutineServiceManager *)selfCopy _redactString:shortAddress];
      *buf = 138412802;
      v139 = v125;
      v140 = 2112;
      v141 = v121;
      v143 = v142 = 2112;
      v84 = v143;
      v85 = "%@, using routine cached GEOAddressObject value for map item, %@, address, %@";
LABEL_45:
      _os_log_debug_impl(&_mh_execute_header, placeInference10, OS_LOG_TYPE_DEBUG, v85, buf, 0x20u);

      v64 = selfCopy;
    }
  }

  else if (v81)
  {
    v125 = NSStringFromSelector(a2);
    routineEvent24 = [propertiesCopy routineEvent];
    placeName = [routineEvent24 placeName];
    v121 = [(MORoutineServiceManager *)v64 _redactString:placeName];
    routineEvent25 = [propertiesCopy routineEvent];
    geoAddressObject2 = [routineEvent25 geoAddressObject];
    shortAddress = [geoAddressObject2 shortAddress];
    [(MORoutineServiceManager *)selfCopy _redactString:shortAddress];
    *buf = 138412802;
    v139 = v125;
    v140 = 2112;
    v141 = v121;
    v143 = v142 = 2112;
    v84 = v143;
    v85 = "%@, using reconstructed GEOAddressObject value for map item, %@, address, %@";
    goto LABEL_45;
  }

LABEL_38:

LABEL_39:
  v97 = objc_opt_class();
  routineEvent26 = [propertiesCopy routineEvent];
  location8 = [routineEvent26 location];
  v100 = [v97 _timeZoneFromLocation:location8];
  [propertiesCopy setTimeZone:v100];

  entry = [visitCopy entry];
  v102 = [(MORoutineServiceManager *)v64 _shouldMarkAsPreOnboardedVisit:entry];
  routineEvent27 = [propertiesCopy routineEvent];
  [routineEvent27 setIsPreOnboardedVisit:v102];

  v104 = _mo_log_facility_get_os_log(&MOLogFacilityRoutine);
  if (os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
  {
    v137 = NSStringFromSelector(a2);
    aSelectora = [propertiesCopy eventIdentifier];
    placeInference11 = [visitCopy placeInference];
    loiIdentifier = [placeInference11 loiIdentifier];
    v105 = @"NO";
    if (v134)
    {
      v105 = @"YES";
    }

    v120 = v105;
    identifier = [mapItem identifier];
    geoMapItemHandle2 = [mapItem geoMapItemHandle];
    v117 = [geoMapItemHandle2 length];
    v135 = [MOEventRoutine stringOfPlaceInferencePlaceType:placeType];
    v131 = +[MOEventRoutine stringOfMapItemPlaceType:](MOEventRoutine, "stringOfMapItemPlaceType:", [mapItem mapItemPlaceType]);
    placeInference12 = [visitCopy placeInference];
    userType2 = [placeInference12 userType];
    v107 = [(MORoutineServiceManager *)v64 _redactString:v26];
    category3 = [mapItem category];
    source2 = [mapItem source];
    extendedAttributes = [mapItem extendedAttributes];
    wifiFingerprintLabelType = [extendedAttributes wifiFingerprintLabelType];
    routineEvent28 = [propertiesCopy routineEvent];
    isPreOnboardedVisit = [routineEvent28 isPreOnboardedVisit];
    routineEvent29 = [propertiesCopy routineEvent];
    [routineEvent29 distanceFromVisitToPlace];
    v110 = v109;
    timeZone = [propertiesCopy timeZone];
    *buf = 138416386;
    v139 = v137;
    v140 = 2112;
    v141 = aSelectora;
    v142 = 2112;
    v143 = loiIdentifier;
    v144 = 2112;
    v145 = v120;
    v146 = 2112;
    v147 = identifier;
    v148 = 2048;
    v149 = v117;
    v150 = 2112;
    v151 = v135;
    v152 = 2112;
    v153 = v131;
    v154 = 2048;
    v155 = userType2;
    v156 = 2112;
    v157 = v107;
    v158 = 2112;
    v159 = category3;
    v160 = 2048;
    v161 = source2;
    v162 = 2048;
    v163 = wifiFingerprintLabelType;
    v164 = 2048;
    v165 = v13;
    v166 = 1024;
    v167 = isPreOnboardedVisit;
    v168 = 2048;
    v169 = v110;
    v170 = 2112;
    v171 = timeZone;
    _os_log_debug_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEBUG, "%@, event.id, %@, loi, %@, using Finer Granularity Map Item, %@, mapItem, %@, mapItem.length, %lu, placeType, %@, mapItemPlaceType, %@, userType, %lu, name, %@, category, %@, source, %lu, wifiLabelType, %lu, confidence, %f, isPreOnboardedVisit, %d, distanceFromVisitToPlace, %f, timezone, %@", buf, 0xA8u);
  }
}

- (void)_setDynamicProperties:(id)properties familiarityIndexResultsLOIs:(id)is visit:(id)visit
{
  isCopy = is;
  visitCopy = visit;
  propertiesCopy = properties;
  if (isCopy)
  {
    entry = [visitCopy entry];
    v11 = [(MORoutineServiceManager *)self _shouldMarkAsPreOnboardedVisit:entry];
    routineEvent = [propertiesCopy routineEvent];
    [routineEvent setIsPreOnboardedVisit:v11];

    [(MORoutineServiceManager *)self _findMatchingFamiliarityIndexValue:isCopy forVisit:visitCopy];
  }

  else
  {
    v13 = -1.0;
  }

  [propertiesCopy setFamiliarityIndexLOI:v13];
}

- (id)_createEventFromVisit:(id)visit
{
  visitCopy = visit;
  v5 = [MOEvent alloc];
  v6 = +[NSUUID UUID];
  entry = [visitCopy entry];
  exit = [visitCopy exit];
  v9 = exit;
  if (!exit)
  {
    v9 = +[NSDate date];
  }

  v10 = +[NSDate date];
  v11 = [(MOEvent *)v5 initWithEventIdentifier:v6 startDate:entry endDate:v9 creationDate:v10 provider:4 category:1];

  if (!exit)
  {
  }

  exit2 = [visitCopy exit];
  configurationManager = [(MORoutineServiceManager *)self configurationManager];
  LODWORD(v14) = 1242802176;
  [configurationManager getFloatSettingForKey:@"EventManagerOverrideMaximumEventAge" withFallback:v14];
  v16 = [exit2 dateByAddingTimeInterval:v15];
  [(MOEvent *)v11 setExpirationDate:v16];

  date = [visitCopy date];
  [(MOEvent *)v11 setSourceCreationDate:date];

  [(MORoutineServiceManager *)self _setDynamicProperties:v11 visit:visitCopy];

  return v11;
}

- (BOOL)_visitAlreadyHaveValidEvent:(id)event Events:(id)events
{
  eventCopy = event;
  eventsCopy = events;
  v7 = eventsCopy;
  if (eventsCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = eventsCopy;
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = *v14;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v8);
          }

          if ([eventCopy isEqualToVisitMoment:{*(*(&v13 + 1) + 8 * i), v13}])
          {
            LOBYTE(v9) = 1;
            goto LABEL_12;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (void)_checkAndFetchInvalidEvents:(id)events Events:(id)a4 handler:(id)handler
{
  eventsCopy = events;
  v9 = a4;
  handlerCopy = handler;
  if (eventsCopy && [eventsCopy count] && v9 && objc_msgSend(v9, "count"))
  {
    v21 = handlerCopy;
    v11 = objc_opt_new();
    v12 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v22 = v9;
    v13 = v9;
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v23 + 1) + 8 * i);
          v19 = [(MORoutineServiceManager *)self findMatchingVisitFor:v18 inVisits:eventsCopy, v21];
          v20 = v12;
          if (!v19)
          {
            [v18 setIsInvalid:1];
            v20 = v11;
          }

          [v20 addObject:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v15);
    }

    handlerCopy = v21;
    v21[2](v21, v11, v12);

    v9 = v22;
  }

  else
  {
    handlerCopy[2](handlerCopy, 0, 0);
  }
}

- (void)rehydrateVisits:(id)visits handler:(id)handler
{
  visitsCopy = visits;
  handlerCopy = handler;
  queue = [(MORoutineServiceManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __51__MORoutineServiceManager_rehydrateVisits_handler___block_invoke;
  block[3] = &unk_100336A58;
  block[4] = self;
  v12 = visitsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = visitsCopy;
  dispatch_async(queue, block);
}

- (void)_rehydrateVisits:(id)visits handler:(id)handler
{
  visitsCopy = visits;
  handlerCopy = handler;
  getDurationOfMOEventArray = [visitsCopy getDurationOfMOEventArray];
  v9 = dispatch_group_create();
  dispatch_group_enter(v9);
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3032000000;
  v42[3] = __Block_byref_object_copy__28;
  v42[4] = __Block_byref_object_dispose__28;
  v43 = 0;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3032000000;
  v40[3] = __Block_byref_object_copy__28;
  v40[4] = __Block_byref_object_dispose__28;
  v41 = &__NSArray0__struct;
  startDate = [getDurationOfMOEventArray startDate];
  endDate = [getDurationOfMOEventArray endDate];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = __52__MORoutineServiceManager__rehydrateVisits_handler___block_invoke;
  v36[3] = &unk_10033CF10;
  v38 = v40;
  v39 = v42;
  v12 = v9;
  v37 = v12;
  [(MORoutineServiceManager *)self _fetchStitchedVisitsBetweenStartDate:startDate EndDate:endDate CompletionHandler:v36];

  v13 = [NSDateInterval alloc];
  startDate2 = [getDurationOfMOEventArray startDate];
  endDate2 = [getDurationOfMOEventArray endDate];
  v16 = [v13 initWithStartDate:startDate2 endDate:endDate2];

  dispatch_group_enter(v12);
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy__28;
  v34[4] = __Block_byref_object_dispose__28;
  v35 = 0;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__28;
  v32[4] = __Block_byref_object_dispose__28;
  v33 = &__NSArray0__struct;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = __52__MORoutineServiceManager__rehydrateVisits_handler___block_invoke_2;
  v28[3] = &unk_10033CF10;
  v30 = v32;
  v31 = v34;
  v17 = v12;
  v29 = v17;
  [(MORoutineServiceManager *)self _fetchFamiliarityIndexesLOIForDateInterval:v16 CompletionHandler:v28];
  queue = [(MORoutineServiceManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __52__MORoutineServiceManager__rehydrateVisits_handler___block_invoke_3;
  block[3] = &unk_10033CF38;
  v24 = handlerCopy;
  v25 = v42;
  v22 = visitsCopy;
  selfCopy = self;
  v26 = v40;
  v27 = v32;
  v19 = handlerCopy;
  v20 = visitsCopy;
  dispatch_group_notify(v17, queue, block);

  _Block_object_dispose(v32, 8);
  _Block_object_dispose(v34, 8);

  _Block_object_dispose(v40, 8);
  _Block_object_dispose(v42, 8);
}

void __52__MORoutineServiceManager__rehydrateVisits_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void __52__MORoutineServiceManager__rehydrateVisits_handler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void __52__MORoutineServiceManager__rehydrateVisits_handler___block_invoke_3(uint64_t a1)
{
  v2 = a1 + 56;
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v3 = _mo_log_facility_get_os_log(&MOLogFacilityRoutine);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __52__MORoutineServiceManager__rehydrateVisits_handler___block_invoke_3_cold_1(v2);
    }

    v4 = [MORehydrationMetrics alloc];
    v5 = [*(*(*(a1 + 56) + 8) + 40) description];
    v6 = -[MORehydrationMetrics initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:](v4, "initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:", 1, 4, 0, v5, [*(a1 + 32) count], 3, objc_msgSend(*(a1 + 32), "count"), 0.0);

    v11 = 0;
    [(MORehydrationMetrics *)v6 submitMetricsWithError:&v11];
    v7 = v11;
    v8 = *(*(*(a1 + 56) + 8) + 40);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = [*(a1 + 40) _rehydrateStoreEvents:*(a1 + 32) withVisits:*(*(*(a1 + 64) + 8) + 40) familiarityIndex:*(*(*(a1 + 72) + 8) + 40)];
    v9 = _mo_log_facility_get_os_log(&MOLogFacilityRoutine);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [*(a1 + 32) count];
      *buf = 134218240;
      v13 = v10;
      v14 = 2048;
      v15 = [(MORehydrationMetrics *)v6 count];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "_rehydrateVisits, input event, %lu, rehydrated events, %lu", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (id)_rehydrateStoreEvents:(id)events withVisits:(id)visits familiarityIndex:(id)index
{
  eventsCopy = events;
  visitsCopy = visits;
  indexCopy = index;
  if (![eventsCopy count])
  {
    v27 = _mo_log_facility_get_os_log(&MOLogFacilityRoutine);
    if (os_log_type_enabled(&v27->super.super, OS_LOG_TYPE_ERROR))
    {
      [MORoutineServiceManager _rehydrateStoreEvents:a2 withVisits:? familiarityIndex:?];
    }

    goto LABEL_22;
  }

  if (![visitsCopy count])
  {
    v28 = _mo_log_facility_get_os_log(&MOLogFacilityRoutine);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [MORoutineServiceManager _rehydrateStoreEvents:a2 withVisits:? familiarityIndex:?];
    }

    v27 = -[MORehydrationMetrics initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:]([MORehydrationMetrics alloc], "initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:", 1, 4, 1, 0, [eventsCopy count], 3, objc_msgSend(eventsCopy, "count"), 0.0);
    v40 = 0;
    [(MORehydrationMetrics *)v27 submitMetricsWithError:&v40];
LABEL_22:
    v33 = 0;
    goto LABEL_23;
  }

  v33 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v30 = eventsCopy;
  v10 = eventsCopy;
  v11 = [v10 countByEnumeratingWithState:&v36 objects:v45 count:16];
  v12 = indexCopy;
  v34 = visitsCopy;
  if (v11)
  {
    v13 = v11;
    v14 = *v37;
    do
    {
      v15 = 0;
      do
      {
        if (*v37 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v36 + 1) + 8 * v15);
        v17 = _mo_log_facility_get_os_log(&MOLogFacilityRoutine);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v21 = NSStringFromSelector(a2);
          *buf = 138412546;
          v42 = v21;
          v43 = 2112;
          v44 = v16;
          _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%@, event, %@", buf, 0x16u);

          visitsCopy = v34;
        }

        v18 = [(MORoutineServiceManager *)self findMatchingVisitFor:v16 inVisits:visitsCopy];
        if (v18)
        {
          v19 = [v16 copy];
          [(MORoutineServiceManager *)self _setDynamicProperties:v19 familiarityIndexResultsLOIs:v12 visit:v18];
          [(MORoutineServiceManager *)self _setDynamicProperties:v19 visit:v18];
          v20 = _mo_log_facility_get_os_log(&MOLogFacilityRoutine);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            v22 = NSStringFromSelector(a2);
            *buf = 138412546;
            v42 = v22;
            v43 = 2112;
            v44 = v19;
            _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%@, found matching visit, rehydrated event, %@", buf, 0x16u);

            v12 = indexCopy;
          }

          [v33 addObject:v19];
          visitsCopy = v34;
        }

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v10 countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v13);
  }

  v23 = [MORehydrationMetrics alloc];
  firstObject = [v10 firstObject];
  category = [firstObject category];
  firstObject2 = [v10 firstObject];
  v27 = -[MORehydrationMetrics initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:](v23, "initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:", category, [firstObject2 provider], 1, 0, objc_msgSend(v10, "count"), 3, (objc_msgSend(v10, "count") - objc_msgSend(v33, "count")), 0.0);

  visitsCopy = v34;
  v35 = 0;
  [(MORehydrationMetrics *)v27 submitMetricsWithError:&v35];
  eventsCopy = v30;
LABEL_23:

  return v33;
}

- (id)findMatchingVisitFor:(id)for inVisits:(id)visits
{
  forCopy = for;
  visitsCopy = visits;
  v7 = [NSPredicate predicateWithFormat:@"(type == %lu)", 3];
  v8 = [visitsCopy filteredArrayUsingPredicate:v7];

  if (v8 && [v8 count])
  {
    v9 = 0;
    v10 = [v8 count] - 1;
    do
    {
      v11 = &v9[(v10 - v9) >> 1];
      if (v11 > [v8 count] - 1)
      {
        break;
      }

      v12 = [v8 objectAtIndexedSubscript:&v9[(v10 - v9) >> 1]];
      v13 = [v12 isEqualToVisitMoment:forCopy];

      if (v13)
      {
        v18 = [v8 objectAtIndexedSubscript:&v9[(v10 - v9) >> 1]];
        goto LABEL_11;
      }

      startDate = [forCopy startDate];
      v15 = [v8 objectAtIndexedSubscript:&v9[(v10 - v9) >> 1]];
      entry = [v15 entry];
      v17 = [startDate isBeforeDate:entry];

      if (v17)
      {
        v10 = v11 - 1;
      }

      else
      {
        v9 = v11 + 1;
      }
    }

    while (v9 <= v10);
  }

  v18 = 0;
LABEL_11:

  return v18;
}

- (id)_findMatchingEventFor:(id)for inEvents:(id)events
{
  forCopy = for;
  eventsCopy = events;
  v7 = eventsCopy;
  if (eventsCopy && [eventsCopy count])
  {
    v8 = 0;
    v9 = [v7 count] - 1;
    do
    {
      v10 = &v8[(v9 - v8) >> 1];
      if (v10 > [v7 count] - 1)
      {
        break;
      }

      entry = [forCopy entry];
      v12 = [v7 objectAtIndexedSubscript:&v8[(v9 - v8) >> 1]];
      startDate = [v12 startDate];
      v14 = [entry isEqualToDate:startDate];

      exit = [forCopy exit];
      v16 = [v7 objectAtIndexedSubscript:&v8[(v9 - v8) >> 1]];
      endDate = [v16 endDate];
      v18 = [exit isEqualToDate:endDate];

      if (v14 && v18)
      {
        v23 = [v7 objectAtIndexedSubscript:&v8[(v9 - v8) >> 1]];
        goto LABEL_12;
      }

      entry2 = [forCopy entry];
      v20 = [v7 objectAtIndexedSubscript:&v8[(v9 - v8) >> 1]];
      startDate2 = [v20 startDate];
      v22 = [entry2 isBeforeDate:startDate2];

      if (v22)
      {
        v9 = v10 - 1;
      }

      else
      {
        v8 = v10 + 1;
      }
    }

    while (v8 <= v9);
  }

  v23 = 0;
LABEL_12:

  return v23;
}

- (double)_findMatchingFamiliarityIndexValue:(id)value forVisit:(id)visit
{
  valueCopy = value;
  visitCopy = visit;
  v7 = -1.0;
  if (valueCopy && [valueCopy count])
  {
    v8 = 0;
    v9 = [valueCopy count] - 1;
    do
    {
      v10 = &v8[(v9 - v8) >> 1];
      if (v10 > [valueCopy count] - 1)
      {
        break;
      }

      v11 = [valueCopy objectAtIndexedSubscript:&v8[(v9 - v8) >> 1]];
      dateInterval = [v11 dateInterval];

      entry = [visitCopy entry];
      startDate = [dateInterval startDate];
      if ([entry isEqualToDate:startDate])
      {
        exit = [visitCopy exit];
        [dateInterval endDate];
        v17 = v16 = valueCopy;
        v24 = [exit isEqualToDate:v17];

        valueCopy = v16;
        if (v24)
        {
          v21 = [v16 objectAtIndexedSubscript:&v8[(v9 - v8) >> 1]];
          [v21 familiarityIndex];
          v7 = v22;

          break;
        }
      }

      else
      {
      }

      entry2 = [visitCopy entry];
      startDate2 = [dateInterval startDate];
      v20 = [entry2 isBeforeDate:startDate2];

      if (v20)
      {
        v9 = v10 - 1;
      }

      else
      {
        v8 = v10 + 1;
      }
    }

    while (v8 <= v9);
  }

  return v7;
}

- (void)_fetchFamiliarityIndexesLOIForDateInterval:(id)interval CompletionHandler:(id)handler
{
  handlerCopy = handler;
  intervalCopy = interval;
  v8 = [[RTFamiliarityIndexOptions alloc] initWithDateInterval:intervalCopy spatialGranularity:1];

  queue = [(MORoutineServiceManager *)self queue];
  dispatch_assert_queue_V2(queue);

  routineManager = [(MORoutineServiceManager *)self routineManager];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __88__MORoutineServiceManager__fetchFamiliarityIndexesLOIForDateInterval_CompletionHandler___block_invoke;
  v12[3] = &unk_1003369E0;
  v13 = handlerCopy;
  v11 = handlerCopy;
  [routineManager fetchFamiliarityIndexResultsWithOptions:v8 handler:v12];
}

void __88__MORoutineServiceManager__fetchFamiliarityIndexesLOIForDateInterval_CompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityRoutine);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __88__MORoutineServiceManager__fetchFamiliarityIndexesLOIForDateInterval_CompletionHandler___block_invoke_cold_1();
    }

    v8 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      [v5 enumerateObjectsUsingBlock:&__block_literal_global_37];
    }

    v8 = *(*(a1 + 32) + 16);
  }

  v8();
}

void __88__MORoutineServiceManager__fetchFamiliarityIndexesLOIForDateInterval_CompletionHandler___block_invoke_198(id a1, RTFamiliarityIndexResult *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  v6 = _mo_log_facility_get_os_log(&MOLogFacilityRoutine);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __88__MORoutineServiceManager__fetchFamiliarityIndexesLOIForDateInterval_CompletionHandler___block_invoke_198_cold_1(a3, v5, v6);
  }
}

- (id)_getLoiInfo:(id)info
{
  infoCopy = info;
  identifier = [infoCopy identifier];
  preferredName = [infoCopy preferredName];
  v7 = [(MORoutineServiceManager *)self _redactString:preferredName];
  [infoCopy confidence];
  v9 = v8;

  v10 = [NSString stringWithFormat:@"%@, place, %@, confidence, %f", identifier, v7, v9];

  return v10;
}

- (id)_getVisitInfo:(id)info
{
  infoCopy = info;
  getPlaceName = [infoCopy getPlaceName];
  v6 = [(MORoutineServiceManager *)self _redactString:getPlaceName];
  [infoCopy confidence];
  v8 = v7;

  v9 = [NSString stringWithFormat:@"%@, confidence, %f", v6, v8];

  return v9;
}

- (id)_redactString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (stringCopy && [stringCopy length])
  {
    v5 = [v4 length];
    if (v5 >> 1 >= 5)
    {
      v6 = 5;
    }

    else
    {
      v6 = v5 >> 1;
    }

    v7 = [v4 substringToIndex:v6];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@.%lu", v7, [v4 hash]);
  }

  else
  {
    v8 = v4;
  }

  return v8;
}

- (id)fetchHomeLOI
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__28;
  v23 = __Block_byref_object_dispose__28;
  v24 = +[NSArray array];
  v3 = dispatch_semaphore_create(0);
  routineManager = [(MORoutineServiceManager *)self routineManager];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __39__MORoutineServiceManager_fetchHomeLOI__block_invoke;
  v16[3] = &unk_1003364B0;
  v18 = &v19;
  v5 = v3;
  v17 = v5;
  [routineManager fetchLocationsOfInterestOfType:0 withHandler:v16];

  v6 = [NSString stringWithFormat:@"%@ - [%s] - %d - %s", @"MOSemaphoreWait", "/Library/Caches/com.apple.xbs/Sources/Moments/momentsd/PromptEngine/PromptSource/Routine/MORoutineServiceManager.m", 767, "[MORoutineServiceManager fetchHomeLOI]"];
  v15 = 0;
  v7 = MOSemaphoreWaitAndFaultIfTimeout_Internal(v5, &v15, v6, 30.0);
  v8 = v15;
  if (!v7)
  {
    v9 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __50__MOUserData__fetchUserDataWithCompletionHandler___block_invoke_cold_1();
    }
  }

  if ([v20[5] count])
  {
    v10 = [v20[5] objectAtIndexedSubscript:0];
    v11 = [v10 valueForKey:@"location"];

    v12 = _mo_log_facility_get_os_log(&MOLogFacilityRoutine);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "fetching homeLOI successful", buf, 2u);
    }
  }

  else
  {
    v12 = _mo_log_facility_get_os_log(&MOLogFacilityRoutine);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [MORoutineServiceManager fetchHomeLOI];
    }

    v11 = 0;
  }

  _Block_object_dispose(&v19, 8);

  return v11;
}

void __39__MORoutineServiceManager_fetchHomeLOI__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_calculateDistanceFromHome:(id)home
{
  homeCopy = home;
  homeLOI = [(MORoutineServiceManager *)self homeLOI];
  v6 = [RTLocation alloc];
  [homeCopy coordinate];
  v8 = v7;
  [homeCopy coordinate];
  v10 = v9;
  [homeCopy horizontalAccuracy];
  v12 = v11;

  v13 = [v6 initWithLatitude:0 longitude:v8 horizontalUncertainty:v10 date:v12];
  v14 = v13;
  v15 = 0;
  if (homeLOI && v13)
  {
    [homeLOI distanceFromLocation:v13];
    v15 = [NSNumber numberWithDouble:?];
  }

  return v15;
}

- (id)getPhotosCloseToHome:(id)home withDistance:(double)distance
{
  homeCopy = home;
  v7 = objc_opt_new();
  homeLOI = [(MORoutineServiceManager *)self homeLOI];

  if (homeLOI)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = homeCopy;
    obj = homeCopy;
    v9 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (!v9)
    {
      goto LABEL_30;
    }

    v10 = v9;
    v11 = *v35;
    while (1)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v34 + 1) + 8 * i);
        if ([v13 type] != 2)
        {
          [v7 addObject:v13];
          continue;
        }

        assets = [v13 assets];
        v15 = [MOContextAnnotationUtilities fetchAssetUsingID:assets universe:self->_universe];
        v16 = v15;
        if (v15)
        {
          location = [v15 location];

          if (location)
          {
            location2 = [v16 location];
            v19 = [(MORoutineServiceManager *)self _calculateDistanceFromHome:location2];

            v20 = _mo_log_facility_get_os_log(&MOLogFacilityRoutine);
            v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
            if (v19)
            {
              if (v21)
              {
                [v19 doubleValue];
                *buf = 138412546;
                v39 = v13;
                v40 = 2048;
                v41 = v22;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Resource,%@,distanceToHomeInMeters,%f", buf, 0x16u);
              }

              [v19 doubleValue];
              if (v23 < distance)
              {
                [v7 addObject:v13];
                v20 = _mo_log_facility_get_os_log(&MOLogFacilityRoutine);
                if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
                {
                  [v19 doubleValue];
                  *buf = 138412546;
                  v39 = v13;
                  v40 = 2048;
                  v41 = v24;
                  v25 = v20;
                  v26 = "Adding photo resource,%@, since distanceToHomeInMeters,%f is cleared";
                  goto LABEL_23;
                }

LABEL_25:

LABEL_26:
                goto LABEL_27;
              }

              v20 = _mo_log_facility_get_os_log(&MOLogFacilityRoutine);
              if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
              {
                goto LABEL_25;
              }

              [v19 doubleValue];
              *buf = 138412546;
              v39 = v13;
              v40 = 2048;
              v41 = v28;
              v25 = v20;
              v26 = "Photo resource,%@, not added since distanceToHomeInMeters,%f is out of range";
LABEL_23:
              v27 = 22;
            }

            else
            {
              if (!v21)
              {
                goto LABEL_25;
              }

              *buf = 0;
              v25 = v20;
              v26 = "Resource,distanceToHomeInMeters is nil";
              v27 = 2;
            }

            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, v26, buf, v27);
            goto LABEL_25;
          }

          v19 = _mo_log_facility_get_os_log(&MOLogFacilityRoutine);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v39 = v13;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Photo resource,%@,location object is nil", buf, 0xCu);
          }

          goto LABEL_26;
        }

LABEL_27:
      }

      v10 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (!v10)
      {
LABEL_30:

        v29 = v7;
        homeCopy = v32;
        goto LABEL_34;
      }
    }
  }

  v30 = _mo_log_facility_get_os_log(&MOLogFacilityRoutine);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "getPhotosCloseToHome,home LOI is nil", buf, 2u);
  }

  v29 = 0;
LABEL_34:

  return v29;
}

- (void)fetchVisitsBetweenStartDate:(id)date endDate:(id)endDate withStoredEvents:(id)events handler:(id)handler
{
  dateCopy = date;
  endDateCopy = endDate;
  eventsCopy = events;
  handlerCopy = handler;
  queue = [(MORoutineServiceManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __88__MORoutineServiceManager_fetchVisitsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke;
  block[3] = &unk_100336C98;
  block[4] = self;
  v20 = dateCopy;
  v21 = endDateCopy;
  v22 = eventsCopy;
  v23 = handlerCopy;
  v15 = handlerCopy;
  v16 = eventsCopy;
  v17 = endDateCopy;
  v18 = dateCopy;
  dispatch_async(queue, block);
}

- (void)_fetchVisitsBetweenStartDate:(id)date endDate:(id)endDate withStoredEvents:(id)events handler:(id)handler
{
  dateCopy = date;
  endDateCopy = endDate;
  eventsCopy = events;
  handlerCopy = handler;
  v44 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 1];
  v43 = [NSPredicate predicateWithFormat:@"%K = %lu", @"provider", 4];
  v92[0] = v44;
  v92[1] = v43;
  v12 = [NSArray arrayWithObjects:v92 count:2];
  v41 = [NSCompoundPredicate andPredicateWithSubpredicates:v12];

  v45 = [eventsCopy filteredArrayUsingPredicate:v41];
  v13 = dispatch_group_create();
  v14 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "RoutineManagerFetchEventsfetchVisit", "", buf, 2u);
  }

  v15 = [[MOPerformanceMeasurement alloc] initWithName:@"fetchVisit" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v15 startSession];
  dispatch_group_enter(v13);
  *buf = 0;
  v87 = buf;
  v88 = 0x3032000000;
  v89 = __Block_byref_object_copy__28;
  v90 = __Block_byref_object_dispose__28;
  v91 = 0;
  v84[0] = 0;
  v84[1] = v84;
  v84[2] = 0x3032000000;
  v84[3] = __Block_byref_object_copy__28;
  v84[4] = __Block_byref_object_dispose__28;
  v85 = &__NSArray0__struct;
  v16 = dateCopy;
  startDate2 = v16;
  if ([v45 count])
  {
    getDurationOfMOEventArray = [v45 getDurationOfMOEventArray];
    startDate = [getDurationOfMOEventArray startDate];
    v20 = [startDate isBeforeDate:v16];

    startDate2 = v16;
    if (v20)
    {
      startDate2 = [getDurationOfMOEventArray startDate];
    }
  }

  v79[0] = _NSConcreteStackBlock;
  v79[1] = 3221225472;
  v79[2] = __89__MORoutineServiceManager__fetchVisitsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke;
  v79[3] = &unk_10033BCA0;
  v82 = v84;
  v83 = buf;
  v21 = v13;
  v80 = v21;
  v37 = v15;
  v81 = v37;
  [(MORoutineServiceManager *)self _fetchStitchedVisitsBetweenStartDate:startDate2 EndDate:endDateCopy CompletionHandler:v79];
  v22 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v22))
  {
    *v73 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "RoutineManagerFetchEventsfetchRealTimeVisit", "", v73, 2u);
  }

  v23 = [[MOPerformanceMeasurement alloc] initWithName:@"fetchRealTimeVisit" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v23 startSession];
  dispatch_group_enter(v21);
  *v73 = 0;
  v74 = v73;
  v75 = 0x3032000000;
  v76 = __Block_byref_object_copy__28;
  v77 = __Block_byref_object_dispose__28;
  v78 = &__NSArray0__struct;
  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = __89__MORoutineServiceManager__fetchVisitsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_237;
  v68[3] = &unk_10033BCA0;
  v71 = v73;
  v72 = buf;
  v24 = v21;
  v69 = v24;
  v38 = v23;
  v70 = v38;
  [(MORoutineServiceManager *)self _fetchRealTimeVisitsBetweenStartDate:v16 EndDate:endDateCopy CompletionHandler:v68];
  v25 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v25))
  {
    *v62 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "RoutineManagerFetchEventsfetchFamilarity", "", v62, 2u);
  }

  v26 = [[MOPerformanceMeasurement alloc] initWithName:@"fetchFamiliarity" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v26 startSession];
  v27 = +[NSDate date];
  v40 = [v27 dateByAddingTimeInterval:-2419200.0];

  v28 = [[NSDateInterval alloc] initWithStartDate:v40 endDate:endDateCopy];
  dispatch_group_enter(v24);
  *v62 = 0;
  v63 = v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__28;
  v66 = __Block_byref_object_dispose__28;
  v67 = &__NSArray0__struct;
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = __89__MORoutineServiceManager__fetchVisitsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_241;
  v57[3] = &unk_10033BCA0;
  v60 = v62;
  v61 = buf;
  v29 = v24;
  v58 = v29;
  v30 = v26;
  v59 = v30;
  [(MORoutineServiceManager *)self _fetchFamiliarityIndexesLOIForDateInterval:v28 CompletionHandler:v57];
  queue = [(MORoutineServiceManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __89__MORoutineServiceManager__fetchVisitsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_242;
  block[3] = &unk_10033CFA0;
  v53 = buf;
  v54 = v84;
  v47 = v45;
  selfCopy = self;
  v55 = v73;
  v56 = v62;
  v49 = v16;
  v50 = startDate2;
  v51 = endDateCopy;
  v52 = handlerCopy;
  v36 = endDateCopy;
  v32 = startDate2;
  v33 = v16;
  v34 = handlerCopy;
  v35 = v45;
  dispatch_group_notify(v29, queue, block);

  _Block_object_dispose(v62, 8);
  _Block_object_dispose(v73, 8);

  _Block_object_dispose(v84, 8);
  _Block_object_dispose(buf, 8);
}

void __89__MORoutineServiceManager__fetchVisitsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  }

  dispatch_group_leave(*(a1 + 32));
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v8))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, 1uLL, "RoutineManagerFetchEventsfetchVisit", "", v9, 2u);
  }

  [*(a1 + 40) endSession];
}

void __89__MORoutineServiceManager__fetchVisitsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_237(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  }

  dispatch_group_leave(*(a1 + 32));
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v8))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, 1uLL, "RoutineManagerFetchEventsfetchRealTimeVisit", "", v9, 2u);
  }

  [*(a1 + 40) endSession];
}

void __89__MORoutineServiceManager__fetchVisitsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_241(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  }

  dispatch_group_leave(*(a1 + 32));
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v8))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, 1uLL, "RoutineManagerFetchEventsfetchFamilarity", "", v9, 2u);
  }

  [*(a1 + 40) endSession];
}

void __89__MORoutineServiceManager__fetchVisitsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_242(uint64_t a1)
{
  v2 = a1 + 80;
  if (*(*(*(a1 + 80) + 8) + 40))
  {
    v3 = _mo_log_facility_get_os_log(&MOLogFacilityRoutine);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __89__MORoutineServiceManager__fetchVisitsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_242_cold_1(v2);
    }

    v4 = [MORehydrationMetrics alloc];
    v5 = [*(*(*(a1 + 80) + 8) + 40) description];
    v6 = -[MORehydrationMetrics initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:](v4, "initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:", 1, 4, 0, v5, [*(a1 + 32) count], 3, objc_msgSend(*(a1 + 32), "count"), 0.0);

    v30 = 0;
    [(MORehydrationMetrics *)v6 submitMetricsWithError:&v30];
    v7 = v30;
    if ([*(*(*(a1 + 80) + 8) + 40) code] == 5 || objc_msgSend(*(*(*v2 + 8) + 40), "code") == 8)
    {
      v31 = NSLocalizedDescriptionKey;
      v32 = @"CR: Provider database is unavailable (betweenStartDate)";
      v8 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v9 = [NSError errorWithDomain:@"MOErrorDomain" code:1088 userInfo:v8];

      (*(*(a1 + 72) + 16))();
    }

    else
    {
      v15 = *(*(*(a1 + 80) + 8) + 40);
      (*(*(a1 + 72) + 16))();
    }
  }

  else
  {
    v6 = objc_opt_new();
    [(MORehydrationMetrics *)v6 addObjectsFromArray:*(*(*(a1 + 88) + 8) + 40)];
    [(MORehydrationMetrics *)v6 addObjectsFromArray:*(*(*(a1 + 96) + 8) + 40)];
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__28;
    v28 = __Block_byref_object_dispose__28;
    v29 = objc_opt_new();
    v10 = [*(a1 + 40) _rehydrateStoreEvents:*(a1 + 32) withVisits:v6 familiarityIndex:*(*(*(a1 + 104) + 8) + 40)];
    if ([v10 count])
    {
      [v25[5] setObject:v10 forKey:@"rehydratedEvents"];
    }

    v11 = *(*(*(a1 + 104) + 8) + 40);
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = __89__MORoutineServiceManager__fetchVisitsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_247;
    v16[3] = &unk_10033C7D8;
    v23 = &v24;
    v17 = *(a1 + 48);
    v18 = *(a1 + 56);
    v19 = *(a1 + 64);
    v14 = v10;
    v20 = v14;
    v21 = *(a1 + 32);
    v22 = *(a1 + 72);
    [v13 _createNewEventsFromVisits:v6 familiarityIndex:v11 withStoredEvents:v12 handler:v16];

    _Block_object_dispose(&v24, 8);
  }
}

void __89__MORoutineServiceManager__fetchVisitsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_247(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    [*(*(*(a1 + 80) + 8) + 40) setObject:v3 forKey:@"newEvents"];
  }

  v4 = _mo_log_facility_get_os_log(&MOLogFacilityRoutine);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = [*(a1 + 56) count];
    v9 = [v3 count];
    v10 = [*(a1 + 64) count];
    v12 = 138413570;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    v18 = 2048;
    v19 = v8;
    v20 = 2048;
    v21 = v9;
    v22 = 2048;
    v23 = v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "start date, %@, adjusted start date, %@, end date, %@, rehydrated visit events count, %lu, new visit events counts, %lu, stored visit events count, %lu", &v12, 0x3Eu);
  }

  v11 = *(*(*(a1 + 80) + 8) + 40);
  (*(*(a1 + 72) + 16))();
}

- (void)_createNewEventsFromVisits:(id)visits familiarityIndex:(id)index withStoredEvents:(id)events handler:(id)handler
{
  visitsCopy = visits;
  indexCopy = index;
  eventsCopy = events;
  handlerCopy = handler;
  if (![visitsCopy count])
  {
    v14 = _mo_log_facility_get_os_log(&MOLogFacilityRoutine);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [MORoutineServiceManager _createNewEventsFromVisits:familiarityIndex:withStoredEvents:handler:];
    }
  }

  v15 = objc_opt_new();
  if ([eventsCopy count])
  {
    v24 = handlerCopy;
    v25 = indexCopy;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v16 = visitsCopy;
    v17 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v29;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v28 + 1) + 8 * i);
          v22 = [(MORoutineServiceManager *)self _findMatchingEventFor:v21 inEvents:eventsCopy];
          if (!v22)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v18);
    }

    handlerCopy = v24;
    indexCopy = v25;
  }

  else
  {
    [v15 addObjectsFromArray:visitsCopy];
  }

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = __96__MORoutineServiceManager__createNewEventsFromVisits_familiarityIndex_withStoredEvents_handler___block_invoke;
  v26[3] = &unk_1003369E0;
  v27 = handlerCopy;
  v23 = handlerCopy;
  [(MORoutineServiceManager *)self _createEventsFromVisits:v15 familiarityIndex:indexCopy handler:v26];
}

void __96__MORoutineServiceManager__createNewEventsFromVisits_familiarityIndex_withStoredEvents_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityRoutine);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 134217984;
    v9 = [v5 count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "new visit events count, %lu", &v8, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_createEventsFromVisits:(id)visits familiarityIndex:(id)index handler:(id)handler
{
  visitsCopy = visits;
  indexCopy = index;
  handlerCopy = handler;
  v10 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = visitsCopy;
  v32 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v32)
  {
    v11 = *v34;
    v29 = indexCopy;
    do
    {
      v12 = 0;
      do
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v33 + 1) + 8 * v12);
        v14 = [(MORoutineServiceManager *)self _createEventFromVisit:v13];
        startDate = [v14 startDate];
        if (startDate)
        {
          v16 = startDate;
          endDate = [v14 endDate];
          if (endDate)
          {
            v18 = endDate;
            startDate2 = [v14 startDate];
            [v14 endDate];
            v20 = v11;
            selfCopy = self;
            v23 = v22 = v10;
            v31 = [startDate2 isOnOrAfter:v23];

            v10 = v22;
            self = selfCopy;
            v11 = v20;

            indexCopy = v29;
            if (v31)
            {
              v24 = _mo_log_facility_get_os_log(&MOLogFacilityRoutine);
              if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_13;
              }

              v25 = NSStringFromSelector(a2);
              *buf = 138412546;
              v38 = v25;
              v39 = 2112;
              v40 = v14;
              _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%@, discard event for visit with wrong start/end date, event, %@ ", buf, 0x16u);
              goto LABEL_16;
            }
          }

          else
          {
          }
        }

        [(MORoutineServiceManager *)self _setDynamicProperties:v14 familiarityIndexResultsLOIs:indexCopy visit:v13];
        [v14 setMode:0];
        [v14 setIsHighConfidence:{objc_msgSend(v13, "source") == 3}];
        [v10 addObject:v14];
        v24 = _mo_log_facility_get_os_log(&MOLogFacilityRoutine);
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_13;
        }

        v25 = NSStringFromSelector(a2);
        *buf = 138412546;
        v38 = v25;
        v39 = 2112;
        v40 = v14;
        _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "%@, event, %@ ", buf, 0x16u);
LABEL_16:

LABEL_13:
        v12 = v12 + 1;
      }

      while (v32 != v12);
      v26 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
      v32 = v26;
    }

    while (v26);
  }

  handlerCopy[2](handlerCopy, v10, 0);
}

- (void)_fetchEarliestVisitDateInRoutineWithHandler:(id)handler
{
  handlerCopy = handler;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__28;
  v21[4] = __Block_byref_object_dispose__28;
  v22 = +[NSDate distantPast];
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__28;
  v19[4] = __Block_byref_object_dispose__28;
  v20 = 0;
  v5 = [[NSSet alloc] initWithObjects:{&off_10036A900, 0}];
  v6 = [NSDateInterval alloc];
  v7 = +[NSDate distantPast];
  v8 = +[NSDate now];
  v9 = [v6 initWithStartDate:v7 endDate:v8];

  v10 = [RTStoredVisitFetchOptions alloc];
  v11 = [NSNumber numberWithDouble:RTVisitConfidenceHigh];
  v12 = [v10 initWithAscending:1 confidence:v11 dateInterval:v9 labelVisit:0 limit:0 sources:v5];

  routineManager = [(MORoutineServiceManager *)self routineManager];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __71__MORoutineServiceManager__fetchEarliestVisitDateInRoutineWithHandler___block_invoke;
  v15[3] = &unk_10033CFC8;
  v17 = v19;
  v18 = v21;
  v14 = handlerCopy;
  v16 = v14;
  [routineManager fetchStoredVisitsWithOptions:v12 handler:v15];

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v21, 8);
}

void __71__MORoutineServiceManager__fetchEarliestVisitDateInRoutineWithHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(a1[5] + 8) + 40), a3);
  if (*(*(a1[5] + 8) + 40))
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityRoutine);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __71__MORoutineServiceManager__fetchEarliestVisitDateInRoutineWithHandler___block_invoke_cold_1();
    }

LABEL_8:

    goto LABEL_9;
  }

  if ([v5 count])
  {
    v7 = [[NSSortDescriptor alloc] initWithKey:@"entry" ascending:1];
    v29 = v7;
    v8 = [NSArray arrayWithObjects:&v29 count:1];
    v9 = [v5 sortedArrayUsingDescriptors:v8];

    v10 = _mo_log_facility_get_os_log(&MOLogFacilityRoutine);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v5 count];
      v12 = [v9 firstObject];
      v13 = [v12 entry];
      v25 = 134218242;
      v26 = v11;
      v27 = 2112;
      v28 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "fetch oldest visit count, %lu, with date, %@", &v25, 0x16u);
    }

    v14 = [v9 firstObject];
    v15 = [v14 entry];
    v16 = *(a1[6] + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    goto LABEL_8;
  }

  v22 = +[NSDate now];
  v23 = *(a1[6] + 8);
  v24 = *(v23 + 40);
  *(v23 + 40) = v22;

LABEL_9:
  if (a1[4])
  {
    v18 = _mo_log_facility_get_os_log(&MOLogFacilityRoutine);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = *(*(a1[6] + 8) + 40);
      v25 = 138412290;
      v26 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "fetch oldest visit date, %@", &v25, 0xCu);
    }

    v20 = *(*(a1[6] + 8) + 40);
    v21 = *(*(a1[5] + 8) + 40);
    (*(a1[4] + 16))();
  }
}

- (void)fetchEarliestVisitDateInRoutineWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(MORoutineServiceManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __70__MORoutineServiceManager_fetchEarliestVisitDateInRoutineWithHandler___block_invoke;
  v7[3] = &unk_100337B48;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __70__MORoutineServiceManager_fetchEarliestVisitDateInRoutineWithHandler___block_invoke(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = __70__MORoutineServiceManager_fetchEarliestVisitDateInRoutineWithHandler___block_invoke_2;
  v2[3] = &unk_10033CFF0;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _fetchEarliestVisitDateInRoutineWithHandler:v2];
}

uint64_t __70__MORoutineServiceManager_fetchEarliestVisitDateInRoutineWithHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)fetchConsolidatedEvents:(id)events withStored:(id)stored handler:(id)handler
{
  eventsCopy = events;
  handlerCopy = handler;
  storedCopy = stored;
  v50 = [NSString stringWithFormat:@"%@%@", @"%K = %lu", @" AND %K = %lu"];
  [NSPredicate predicateWithFormat:@"category", 1, @"placeUserType", 1];
  v46 = v52 = eventsCopy;
  v10 = [eventsCopy filteredArrayUsingPredicate:?];
  v11 = [NSPredicate predicateWithFormat:@"%K = %lu", @"isHighConfidence", 1];
  v12 = [v10 filteredArrayUsingPredicate:v11];
  v13 = _mo_log_facility_get_os_log(&MOLogFacilityRoutine);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v55 = [v12 count];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Number of hindsight home events, %lu", buf, 0xCu);
  }

  v14 = [NSPredicate predicateWithFormat:@"%K = %lu", @"isHighConfidence", 0];

  v44 = v14;
  v15 = [v10 filteredArrayUsingPredicate:v14];
  v16 = _mo_log_facility_get_os_log(&MOLogFacilityRoutine);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [v15 count];
    *buf = 134217984;
    v55 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Number of real time home events, %lu", buf, 0xCu);
  }

  v18 = [NSPredicate predicateWithFormat:@"category == %lu", 1];
  v19 = [NSPredicate predicateWithFormat:@"isHighConfidence == NO"];
  [NSPredicate predicateWithFormat:@"provider == %lu", 4];
  v47 = v18;
  v53[0] = v18;
  v53[1] = v19;
  v43 = v45 = v19;
  v53[2] = v43;
  v20 = [NSArray arrayWithObjects:v53 count:3];
  v21 = [NSCompoundPredicate andPredicateWithSubpredicates:v20];

  v42 = v21;
  v22 = [storedCopy filteredArrayUsingPredicate:v21];

  v23 = _mo_log_facility_get_os_log(&MOLogFacilityRoutine);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = [v22 count];
    *buf = 134217984;
    v55 = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Number of real time home events that are stored, %lu", buf, 0xCu);
  }

  v49 = v10;
  if ([v12 count])
  {
    v25 = [v12 valueForKeyPath:@"@max.endDate"];
    if (v25)
    {
      v26 = [NSPredicate predicateWithFormat:@"(endDate == %@)", v25];
      v27 = [v12 filteredArrayUsingPredicate:v26];

      v28 = 0;
      goto LABEL_13;
    }

    v27 = 0;
  }

  else
  {
    v27 = 0;
    v25 = 0;
  }

  v28 = 1;
LABEL_13:
  v29 = handlerCopy;
  v51 = v12;
  if ([v15 count])
  {
    v30 = [v15 valueForKeyPath:@"@max.startDate"];
    if (v30)
    {
      v31 = [NSPredicate predicateWithFormat:@"(startDate == %@)", v30];
      v32 = [v15 filteredArrayUsingPredicate:v31];

      if (!v27 || !v32 || ![v25 isAfterDate:v30])
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v30 = 0;
  }

  v32 = 0;
LABEL_21:
  v48 = v15;
  v40 = v27;
  v41 = v22;
  if (v28)
  {
    v33 = &__NSArray0__struct;
  }

  else
  {
    v34 = [NSPredicate predicateWithFormat:@"(startDate < %@)", v25];
    v33 = [v22 filteredArrayUsingPredicate:v34];
  }

  v35 = objc_opt_new();
  v36 = [NSPredicate predicateWithFormat:@"%K != %lu", @"placeUserType", 1];

  v37 = [v52 filteredArrayUsingPredicate:v36];
  v38 = [NSPredicate predicateWithFormat:@"%K = %lu", @"isHighConfidence", 1];

  v39 = [v37 filteredArrayUsingPredicate:v38];
  [v35 addObjectsFromArray:v39];
  [v35 addObjectsFromArray:v51];
  if (v32)
  {
    [v35 addObjectsFromArray:v32];
  }

  if (v29)
  {
    (v29)[2](v29, v35, v33);
  }
}

- (void)initWithUniverse:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __74__MORoutineServiceManager__fetchVisitsBetweenStartDate_CompletionHandler___block_invoke_170_cold_1(uint64_t a1, uint64_t a2)
{
  v4 = NSStringFromSelector(*(a1 + 40));
  v5 = [*(a1 + 32) _getVisitInfo:a2];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);
}

void __74__MORoutineServiceManager__fetchVisitsBetweenStartDate_CompletionHandler___block_invoke_170_cold_2(uint64_t a1, uint64_t a2)
{
  v4 = NSStringFromSelector(*(a1 + 40));
  v5 = [*(a1 + 32) _getVisitInfo:a2];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);
}

- (void)_setDynamicProperties:(NSObject *)a3 visit:.cold.1(const char *a1, void *a2, NSObject *a3)
{
  v5 = NSStringFromSelector(a1);
  v6 = [a2 placeInference];
  v7 = [v6 mapItem];
  v8 = [v7 identifier];
  v9 = [a2 placeInference];
  [v9 confidence];
  v11 = v10;
  v12 = [a2 placeInference];
  v13 = [v12 finerGranularityMapItem];
  v14 = [v13 identifier];
  v15 = [a2 placeInference];
  [v15 finerGranularityMapItemConfidence];
  v17 = 138413314;
  v18 = v5;
  v19 = 2112;
  v20 = v8;
  v21 = 2048;
  v22 = v11;
  v23 = 2112;
  v24 = v14;
  v25 = 2048;
  v26 = v16;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "%@, choosing between regular granularity map item, %@, confidence, %f, and finer granularity map item, %@, finer granularity confidence, %f", &v17, 0x34u);
}

- (void)_setDynamicProperties:(const char *)a1 visit:.cold.2(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_setDynamicProperties:(void *)a1 visit:.cold.3(void *a1)
{
  v1 = [a1 categoryMUID];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_rehydrateStoreEvents:(const char *)a1 withVisits:familiarityIndex:.cold.1(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_13(&_mh_execute_header, v2, v3, "%@:no visits fecthed for rehydrating", v4, v5, v6, v7, v8);
}

- (void)_rehydrateStoreEvents:(const char *)a1 withVisits:familiarityIndex:.cold.2(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_13(&_mh_execute_header, v2, v3, "%@:no input events for rehydrating", v4, v5, v6, v7, v8);
}

void __88__MORoutineServiceManager__fetchFamiliarityIndexesLOIForDateInterval_CompletionHandler___block_invoke_198_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218242;
  v4 = a1 + 1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "familiarity index LOI level, %lu, %@", &v3, 0x16u);
}

- (void)fetchHomeLOI
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_createNewEventsFromVisits:familiarityIndex:withStoredEvents:handler:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end