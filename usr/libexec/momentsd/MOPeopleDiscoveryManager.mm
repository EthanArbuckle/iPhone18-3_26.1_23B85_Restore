@interface MOPeopleDiscoveryManager
- (MOPeopleDiscoveryManager)initWithUniverse:(id)universe;
- (id)_createEventFromPeopleDensityEvent:(id)event;
- (id)_createEventFromProx:(id)prox;
- (id)_createNewEventsWithStoredEvents:(id)events peopleDensityEvents:(id)densityEvents;
- (id)_createNewEventsWithStoredEvents:(id)events proxEvents:(id)proxEvents;
- (id)_rehydrateStoredEvents:(id)events fromPeopleDensityEvents:(id)densityEvents;
- (id)_rehydrateStoredEvents:(id)events fromProxEvents:(id)proxEvents;
- (id)_updateMOEventWithEndDate:(id)date endDate:(id)endDate;
- (id)routineManager;
- (void)_fetchPeopleDensityBetweenStartDate:(id)date EndDate:(id)endDate handler:(id)handler;
- (void)_fetchPeopleDensityEventsBetweenStartDate:(id)date endDate:(id)endDate withStoredEvents:(id)events handler:(id)handler;
- (void)_fetchProxBetweenStartDate:(id)date EndDate:(id)endDate handler:(id)handler;
- (void)_fetchProxEventsBetweenStartDate:(id)date endDate:(id)endDate withStoredEvents:(id)events handler:(id)handler;
- (void)_rehydratePeopleDensityEvents:(id)events handler:(id)handler;
- (void)_rehydrateProx:(id)prox handler:(id)handler;
- (void)_saveEvents:(id)events handler:(id)handler;
- (void)_savePeopleDensityEvents:(id)events handler:(id)handler;
- (void)fetchAndSaveProxBetweenStartDate:(id)date EndDate:(id)endDate handler:(id)handler;
- (void)fetchPeopleDensityEventsBetweenStartDate:(id)date endDate:(id)endDate withStoredEvents:(id)events handler:(id)handler;
- (void)fetchProxEventsBetweenStartDate:(id)date endDate:(id)endDate withStoredEvents:(id)events handler:(id)handler;
- (void)rehydratePeopleDensityEvents:(id)events handler:(id)handler;
- (void)rehydrateProx:(id)prox handler:(id)handler;
@end

@implementation MOPeopleDiscoveryManager

- (MOPeopleDiscoveryManager)initWithUniverse:(id)universe
{
  universeCopy = universe;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [universeCopy getService:v8];

  if (!v9)
  {
    v18 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [MOPeopleDiscoveryManager initWithUniverse:];
    }

    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"MOPeopleDiscoveryManager.m" lineNumber:57 description:@"Invalid parameter not satisfying: configurationManager"];
    goto LABEL_12;
  }

  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [universeCopy getService:v11];

  if (!v12)
  {
    v19 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [MOPeopleDiscoveryManager initWithUniverse:];
    }

    v20 = +[NSAssertionHandler currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"MOPeopleDiscoveryManager.m" lineNumber:63 description:@"Invalid parameter not satisfying: eventStore"];

LABEL_12:
    selfCopy = 0;
    goto LABEL_13;
  }

  v22.receiver = self;
  v22.super_class = MOPeopleDiscoveryManager;
  v13 = [(MOPeopleDiscoveryManager *)&v22 init];
  if (v13)
  {
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("MOPeopleDiscoveryManager", v14);
    queue = v13->_queue;
    v13->_queue = v15;

    objc_storeStrong(&v13->_eventStore, v12);
    objc_storeStrong(&v13->_configurationManager, v9);
    objc_storeStrong(&v13->_universe, universe);
  }

  self = v13;
  selfCopy = self;
LABEL_13:

  return selfCopy;
}

- (id)routineManager
{
  routineServiceManager = self->_routineServiceManager;
  if (!routineServiceManager)
  {
    universe = self->_universe;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [(MODaemonUniverse *)universe getService:v6];
    v8 = self->_routineServiceManager;
    self->_routineServiceManager = v7;

    routineServiceManager = self->_routineServiceManager;
  }

  return [(MORoutineServiceManager *)routineServiceManager routineManager];
}

- (void)fetchAndSaveProxBetweenStartDate:(id)date EndDate:(id)endDate handler:(id)handler
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __77__MOPeopleDiscoveryManager_fetchAndSaveProxBetweenStartDate_EndDate_handler___block_invoke;
  v8[3] = &unk_100337850;
  selfCopy = self;
  handlerCopy = handler;
  v7 = handlerCopy;
  [(MOPeopleDiscoveryManager *)selfCopy _fetchProxBetweenStartDate:date EndDate:endDate handler:v8];
}

void __77__MOPeopleDiscoveryManager_fetchAndSaveProxBetweenStartDate_EndDate_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = *(v7 + 16);
LABEL_4:
      v8();
    }
  }

  else
  {
    v9 = [v5 count];
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityPeopleDiscovery);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v9)
    {
      if (v11)
      {
        *buf = 134217984;
        v17 = [v5 count];
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "saving %lu proximity events", buf, 0xCu);
      }

      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = __77__MOPeopleDiscoveryManager_fetchAndSaveProxBetweenStartDate_EndDate_handler___block_invoke_113;
      v14[3] = &unk_100336198;
      v12 = *(a1 + 32);
      v15 = *(a1 + 40);
      [v12 _saveEvents:v5 handler:v14];
    }

    else
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "no proximity event are fetched", buf, 2u);
      }

      v13 = *(a1 + 40);
      if (v13)
      {
        v8 = *(v13 + 16);
        goto LABEL_4;
      }
    }
  }
}

uint64_t __77__MOPeopleDiscoveryManager_fetchAndSaveProxBetweenStartDate_EndDate_handler___block_invoke_113(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_fetchProxBetweenStartDate:(id)date EndDate:(id)endDate handler:(id)handler
{
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  routineManager = [(MOPeopleDiscoveryManager *)self routineManager];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __71__MOPeopleDiscoveryManager__fetchProxBetweenStartDate_EndDate_handler___block_invoke;
  v15[3] = &unk_100337878;
  v16 = dateCopy;
  v17 = endDateCopy;
  selfCopy = self;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = endDateCopy;
  v14 = dateCopy;
  [routineManager fetchProximityHistoryFromStartDate:v14 endDate:v13 completionHandler:v15];
}

void __71__MOPeopleDiscoveryManager__fetchProxBetweenStartDate_EndDate_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityPeopleDiscovery);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __71__MOPeopleDiscoveryManager__fetchProxBetweenStartDate_EndDate_handler___block_invoke_cold_1(a1);
    }

    v8 = *(*(a1 + 56) + 16);
LABEL_5:
    v8();
    goto LABEL_21;
  }

  v9 = [v5 count];
  v10 = _mo_log_facility_get_os_log(&MOLogFacilityPeopleDiscovery);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (!v9)
  {
    if (v11)
    {
      v25 = *(a1 + 32);
      v26 = *(a1 + 40);
      *buf = 138412802;
      v34 = v25;
      v35 = 2112;
      v36 = v26;
      v37 = 2112;
      v38 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "proximity event fetch result is nil, start date, %@, end date, %@, error, %@", buf, 0x20u);
    }

    v8 = *(*(a1 + 56) + 16);
    goto LABEL_5;
  }

  if (v11)
  {
    v12 = [v5 count];
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    *buf = 134218498;
    v34 = v12;
    v35 = 2112;
    v36 = v13;
    v37 = 2112;
    v38 = v14;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "fetch %lu proximity events, start date, %@, end date, %@", buf, 0x20u);
  }

  v15 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v27 = v5;
  v16 = v5;
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
        v22 = _mo_log_facility_get_os_log(&MOLogFacilityPeopleDiscovery);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v34 = v21;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "proximity event: %@", buf, 0xCu);
        }

        v23 = [v21 endDate];

        if (v23)
        {
          v24 = [*(a1 + 48) _createEventFromProx:v21];
          [v15 addObject:v24];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v18);
  }

  (*(*(a1 + 56) + 16))();
  v6 = 0;
  v5 = v27;
LABEL_21:
}

- (void)_fetchPeopleDensityBetweenStartDate:(id)date EndDate:(id)endDate handler:(id)handler
{
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  routineManager = [(MOPeopleDiscoveryManager *)self routineManager];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __80__MOPeopleDiscoveryManager__fetchPeopleDensityBetweenStartDate_EndDate_handler___block_invoke;
  v15[3] = &unk_100337878;
  v16 = dateCopy;
  v17 = endDateCopy;
  selfCopy = self;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = endDateCopy;
  v14 = dateCopy;
  [routineManager fetchPeopleDensityHistoryFromStartDate:v14 endDate:v13 completionHandler:v15];
}

void __80__MOPeopleDiscoveryManager__fetchPeopleDensityBetweenStartDate_EndDate_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityPeopleDiscovery);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __80__MOPeopleDiscoveryManager__fetchPeopleDensityBetweenStartDate_EndDate_handler___block_invoke_cold_1(a1);
    }

    v8 = *(*(a1 + 56) + 16);
LABEL_5:
    v8();
    goto LABEL_21;
  }

  v9 = [v5 count];
  v10 = _mo_log_facility_get_os_log(&MOLogFacilityPeopleDiscovery);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (!v9)
  {
    if (v11)
    {
      v25 = *(a1 + 32);
      v26 = *(a1 + 40);
      *buf = 138412802;
      v34 = v25;
      v35 = 2112;
      v36 = v26;
      v37 = 2112;
      v38 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "people density fetch result is empty, start date, %@, end date, %@, error, %@", buf, 0x20u);
    }

    v8 = *(*(a1 + 56) + 16);
    goto LABEL_5;
  }

  if (v11)
  {
    v12 = [v5 count];
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    *buf = 134218498;
    v34 = v12;
    v35 = 2112;
    v36 = v13;
    v37 = 2112;
    v38 = v14;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "fetch %lu people density events, start date, %@, end date, %@", buf, 0x20u);
  }

  v15 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v27 = v5;
  v16 = v5;
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
        v22 = _mo_log_facility_get_os_log(&MOLogFacilityPeopleDiscovery);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v34 = v21;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "people density event: %@", buf, 0xCu);
        }

        v23 = [v21 endDate];

        if (v23)
        {
          v24 = [*(a1 + 48) _createEventFromPeopleDensityEvent:v21];
          [v15 addObject:v24];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v18);
  }

  (*(*(a1 + 56) + 16))();
  v6 = 0;
  v5 = v27;
LABEL_21:
}

- (id)_createEventFromProx:(id)prox
{
  proxCopy = prox;
  v5 = [MOEvent alloc];
  v6 = +[NSUUID UUID];
  startDate = [proxCopy startDate];
  endDate = [proxCopy endDate];
  if (endDate)
  {
    [proxCopy endDate];
  }

  else
  {
    +[NSDate now];
  }
  v9 = ;
  v10 = +[NSDate now];
  v11 = [(MOEvent *)v5 initWithEventIdentifier:v6 startDate:startDate endDate:v9 creationDate:v10 provider:6 category:15];

  endDate2 = [proxCopy endDate];
  if (endDate2)
  {
    [proxCopy endDate];
  }

  else
  {
    +[NSDate now];
  }
  v13 = ;
  configurationManager = [(MOPeopleDiscoveryManager *)self configurationManager];
  LODWORD(v15) = 1242802176;
  [configurationManager getFloatSettingForKey:@"EventManagerOverrideMaximumEventAge" withFallback:v15];
  v17 = [v13 dateByAddingTimeInterval:v16];
  [(MOEvent *)v11 setExpirationDate:v17];

  endDate3 = [proxCopy endDate];
  if (endDate3)
  {
    [(MOEvent *)v11 setSourceCreationDate:endDate3];
  }

  else
  {
    v19 = +[NSDate now];
    [(MOEvent *)v11 setSourceCreationDate:v19];
  }

  endDate4 = [proxCopy endDate];

  if (!endDate4)
  {
    [(MOEvent *)v11 setIsGComplete:0];
  }

  eventID = [proxCopy eventID];
  uUIDString = [eventID UUIDString];
  [(MOEvent *)v11 setIdentifierFromProvider:uUIDString];

  return v11;
}

- (id)_createEventFromPeopleDensityEvent:(id)event
{
  eventCopy = event;
  v4 = [MOEvent alloc];
  v5 = +[NSUUID UUID];
  startDate = [eventCopy startDate];
  endDate = [eventCopy endDate];
  if (endDate)
  {
    [eventCopy endDate];
  }

  else
  {
    +[NSDate now];
  }
  v8 = ;
  v9 = +[NSDate now];
  v10 = [(MOEvent *)v4 initWithEventIdentifier:v5 startDate:startDate endDate:v8 creationDate:v9 provider:6 category:23];

  endDate2 = [eventCopy endDate];
  if (endDate2)
  {
    [eventCopy endDate];
  }

  else
  {
    +[NSDate now];
  }
  v12 = ;
  v13 = [v12 dateByAddingTimeInterval:2419200.0];
  [(MOEvent *)v10 setExpirationDate:v13];

  endDate3 = [eventCopy endDate];
  if (endDate3)
  {
    [(MOEvent *)v10 setSourceCreationDate:endDate3];
  }

  else
  {
    v15 = +[NSDate now];
    [(MOEvent *)v10 setSourceCreationDate:v15];
  }

  uuid = [eventCopy uuid];
  uUIDString = [uuid UUIDString];
  [(MOEvent *)v10 setIdentifierFromProvider:uUIDString];

  endDate4 = [eventCopy endDate];

  if (!endDate4)
  {
    [(MOEvent *)v10 setIsGComplete:0];
  }

  return v10;
}

- (id)_updateMOEventWithEndDate:(id)date endDate:(id)endDate
{
  endDateCopy = endDate;
  dateCopy = date;
  v7 = [MOEvent alloc];
  eventIdentifier = [dateCopy eventIdentifier];
  startDate = [dateCopy startDate];
  creationDate = [dateCopy creationDate];
  v11 = -[MOEvent initWithEventIdentifier:startDate:endDate:creationDate:provider:category:](v7, "initWithEventIdentifier:startDate:endDate:creationDate:provider:category:", eventIdentifier, startDate, endDateCopy, creationDate, [dateCopy provider], objc_msgSend(dateCopy, "category"));

  expirationDate = [dateCopy expirationDate];
  [(MOEvent *)v11 setExpirationDate:expirationDate];

  sourceCreationDate = [dateCopy sourceCreationDate];
  [(MOEvent *)v11 setSourceCreationDate:sourceCreationDate];

  [(MOEvent *)v11 setIsGComplete:1];
  identifierFromProvider = [dateCopy identifierFromProvider];

  [(MOEvent *)v11 setIdentifierFromProvider:identifierFromProvider];

  return v11;
}

- (void)_saveEvents:(id)events handler:(id)handler
{
  eventsCopy = events;
  handlerCopy = handler;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__9;
  v33 = __Block_byref_object_dispose__9;
  v34 = 0;
  eventStore = self->_eventStore;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = __48__MOPeopleDiscoveryManager__saveEvents_handler___block_invoke;
  v28[3] = &unk_1003378A0;
  v28[4] = &v29;
  [(MOEventStore *)eventStore fetchLastEventOfCategory:15 CompletionHandler:v28];
  v8 = +[NSMutableArray array];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = eventsCopy;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v37 count:16];
  if (v10)
  {
    v11 = *v25;
    do
    {
      v12 = 0;
      do
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v24 + 1) + 8 * v12);
        if (!v30[5] || ([*(*(&v24 + 1) + 8 * v12) startDate], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30[5], "startDate"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "isAfterDate:", v15), v15, v14, v16))
        {
          [v8 addObject:v13];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v24 objects:v37 count:16];
    }

    while (v10);
  }

  v17 = _mo_log_facility_get_os_log(&MOLogFacilityPeopleDiscovery);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [v8 count];
    *buf = 134217984;
    v36 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "trying to save %lu proximity events", buf, 0xCu);
  }

  v19 = self->_eventStore;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = __48__MOPeopleDiscoveryManager__saveEvents_handler___block_invoke_124;
  v22[3] = &unk_100336198;
  v20 = handlerCopy;
  v23 = v20;
  [(MOEventStore *)v19 storeEvents:v8 CompletionHandler:v22];

  _Block_object_dispose(&v29, 8);
}

void __48__MOPeopleDiscoveryManager__saveEvents_handler___block_invoke_124(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityPeopleDiscovery);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __48__MOPeopleDiscoveryManager__saveEvents_handler___block_invoke_124_cold_1();
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }
}

- (void)_savePeopleDensityEvents:(id)events handler:(id)handler
{
  eventsCopy = events;
  handlerCopy = handler;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__9;
  v33 = __Block_byref_object_dispose__9;
  v34 = 0;
  eventStore = self->_eventStore;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = __61__MOPeopleDiscoveryManager__savePeopleDensityEvents_handler___block_invoke;
  v28[3] = &unk_1003378A0;
  v28[4] = &v29;
  [(MOEventStore *)eventStore fetchLastEventOfCategory:23 CompletionHandler:v28];
  v8 = +[NSMutableArray array];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = eventsCopy;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v37 count:16];
  if (v10)
  {
    v11 = *v25;
    do
    {
      v12 = 0;
      do
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v24 + 1) + 8 * v12);
        if (!v30[5] || ([*(*(&v24 + 1) + 8 * v12) startDate], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30[5], "startDate"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "isAfterDate:", v15), v15, v14, v16))
        {
          [v8 addObject:v13];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v24 objects:v37 count:16];
    }

    while (v10);
  }

  v17 = _mo_log_facility_get_os_log(&MOLogFacilityPeopleDiscovery);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [v8 count];
    *buf = 134217984;
    v36 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "trying to save %lu people density events", buf, 0xCu);
  }

  v19 = self->_eventStore;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = __61__MOPeopleDiscoveryManager__savePeopleDensityEvents_handler___block_invoke_125;
  v22[3] = &unk_100336198;
  v20 = handlerCopy;
  v23 = v20;
  [(MOEventStore *)v19 storeEvents:v8 CompletionHandler:v22];

  _Block_object_dispose(&v29, 8);
}

void __61__MOPeopleDiscoveryManager__savePeopleDensityEvents_handler___block_invoke_125(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityPeopleDiscovery);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __61__MOPeopleDiscoveryManager__savePeopleDensityEvents_handler___block_invoke_125_cold_1();
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }
}

- (void)rehydrateProx:(id)prox handler:(id)handler
{
  proxCopy = prox;
  handlerCopy = handler;
  queue = [(MOPeopleDiscoveryManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __50__MOPeopleDiscoveryManager_rehydrateProx_handler___block_invoke;
  block[3] = &unk_100336A58;
  block[4] = self;
  v12 = proxCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = proxCopy;
  dispatch_async(queue, block);
}

- (void)_rehydrateProx:(id)prox handler:(id)handler
{
  proxCopy = prox;
  handlerCopy = handler;
  getDurationOfMOEventArray = [proxCopy getDurationOfMOEventArray];
  routineManager = [(MOPeopleDiscoveryManager *)self routineManager];
  startDate = [getDurationOfMOEventArray startDate];
  endDate = [getDurationOfMOEventArray endDate];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __51__MOPeopleDiscoveryManager__rehydrateProx_handler___block_invoke;
  v15[3] = &unk_100337878;
  v15[4] = self;
  v16 = getDurationOfMOEventArray;
  v17 = proxCopy;
  v18 = handlerCopy;
  v12 = proxCopy;
  v13 = handlerCopy;
  v14 = getDurationOfMOEventArray;
  [routineManager fetchProximityHistoryFromStartDate:startDate endDate:endDate completionHandler:v15];
}

void __51__MOPeopleDiscoveryManager__rehydrateProx_handler___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] queue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __51__MOPeopleDiscoveryManager__rehydrateProx_handler___block_invoke_2;
  v11[3] = &unk_1003378C8;
  v12 = v6;
  v13 = a1[5];
  v17 = a1[7];
  v8 = a1[4];
  v14 = v5;
  v15 = v8;
  v16 = a1[6];
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, v11);
}

void __51__MOPeopleDiscoveryManager__rehydrateProx_handler___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityPeopleDiscovery);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __51__MOPeopleDiscoveryManager__rehydrateProx_handler___block_invoke_2_cold_1(a1, v2);
    }

    v6 = *(a1 + 32);
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 48) count];
      v8 = [*(a1 + 40) startDate];
      v9 = [*(a1 + 40) endDate];
      v11 = 134218498;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "fetch %lu proximity event, start date, %@, end date, %@", &v11, 0x20u);
    }

    v10 = [*(a1 + 56) _rehydrateStoredEvents:*(a1 + 64) fromProxEvents:*(a1 + 48)];
    (*(*(a1 + 72) + 16))();
  }
}

- (id)_rehydrateStoredEvents:(id)events fromProxEvents:(id)proxEvents
{
  eventsCopy = events;
  proxEventsCopy = proxEvents;
  if (![eventsCopy count])
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityPeopleDiscovery);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "No storedEvents for rehydrating prox event", buf, 2u);
    }

    goto LABEL_31;
  }

  if (![proxEventsCopy count])
  {
    v31 = _mo_log_facility_get_os_log(&MOLogFacilityPeopleDiscovery);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "prox event fetch result is nil for rehydrate stored events", buf, 2u);
    }

    v32 = [MORehydrationMetrics alloc];
    firstObject = [eventsCopy firstObject];
    category = [firstObject category];
    firstObject2 = [eventsCopy firstObject];
    v7 = -[MORehydrationMetrics initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:](v32, "initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:", category, [firstObject2 provider], 1, 0, objc_msgSend(eventsCopy, "count"), 3, objc_msgSend(eventsCopy, "count"), 0.0);

    v58 = 0;
    [v7 submitMetricsWithError:&v58];
LABEL_31:
    v36 = 0;
    goto LABEL_36;
  }

  v7 = objc_opt_new();
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v46 = proxEventsCopy;
  v8 = proxEventsCopy;
  v9 = [v8 countByEnumeratingWithState:&v54 objects:v64 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v55;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v55 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v54 + 1) + 8 * i);
        eventID = [v13 eventID];
        uUIDString = [eventID UUIDString];
        [v7 setValue:v13 forKey:uUIDString];
      }

      v10 = [v8 countByEnumeratingWithState:&v54 objects:v64 count:16];
    }

    while (v10);
  }

  v16 = objc_opt_new();
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v47 = eventsCopy;
  v17 = eventsCopy;
  v18 = [v17 countByEnumeratingWithState:&v50 objects:v63 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v21 = *v51;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v51 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v50 + 1) + 8 * j);
        identifierFromProvider = [v23 identifierFromProvider];
        v25 = [v7 objectForKey:identifierFromProvider];

        if (v25)
        {
          if (([v23 isGComplete] & 1) != 0 || (objc_msgSend(v25, "endDate"), v26 = objc_claimAutoreleasedReturnValue(), v26, !v26))
          {
            v28 = [v23 copy];
          }

          else
          {
            endDate = [v25 endDate];
            v28 = [(MOPeopleDiscoveryManager *)self _updateMOEventWithEndDate:v23 endDate:endDate];

            v20 = endDate;
          }

          [v28 setGaPR:{objc_msgSend(v25, "relationship")}];
          [v25 socialScore];
          v29 = [NSNumber numberWithDouble:?];
          [v28 setPCount:v29];

          v30 = _mo_log_facility_get_os_log(&MOLogFacilityRoutine);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v60 = v28;
            _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "_rehydrateProx, rehydrated event, %@", buf, 0xCu);
          }

          [v16 addObject:v28];
          v20 = v28;
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v50 objects:v63 count:16];
    }

    while (v19);
  }

  else
  {
    v20 = 0;
  }

  v37 = _mo_log_facility_get_os_log(&MOLogFacilityPeopleDiscovery);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    v38 = [v16 count];
    v39 = [v17 count];
    *buf = 134218240;
    v60 = v38;
    v61 = 2048;
    v62 = v39;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "rehydrated prox events count, %lu, stored prox event count, %lu", buf, 0x16u);
  }

  v40 = [MORehydrationMetrics alloc];
  firstObject3 = [v17 firstObject];
  category2 = [firstObject3 category];
  firstObject4 = [v17 firstObject];
  v44 = -[MORehydrationMetrics initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:](v40, "initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:", category2, [firstObject4 provider], 1, 0, objc_msgSend(v17, "count"), 3, (objc_msgSend(v17, "count") - objc_msgSend(v16, "count")), 0.0);

  v49 = 0;
  [(MORehydrationMetrics *)v44 submitMetricsWithError:&v49];
  v36 = v16;

  proxEventsCopy = v46;
  eventsCopy = v47;
LABEL_36:

  return v36;
}

- (void)rehydratePeopleDensityEvents:(id)events handler:(id)handler
{
  eventsCopy = events;
  handlerCopy = handler;
  queue = [(MOPeopleDiscoveryManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __65__MOPeopleDiscoveryManager_rehydratePeopleDensityEvents_handler___block_invoke;
  block[3] = &unk_100336A58;
  block[4] = self;
  v12 = eventsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = eventsCopy;
  dispatch_async(queue, block);
}

- (void)_rehydratePeopleDensityEvents:(id)events handler:(id)handler
{
  eventsCopy = events;
  handlerCopy = handler;
  getDurationOfMOEventArray = [eventsCopy getDurationOfMOEventArray];
  routineManager = [(MOPeopleDiscoveryManager *)self routineManager];
  startDate = [getDurationOfMOEventArray startDate];
  endDate = [getDurationOfMOEventArray endDate];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __66__MOPeopleDiscoveryManager__rehydratePeopleDensityEvents_handler___block_invoke;
  v15[3] = &unk_1003378F0;
  v16 = getDurationOfMOEventArray;
  selfCopy = self;
  v18 = eventsCopy;
  v19 = handlerCopy;
  v12 = eventsCopy;
  v13 = handlerCopy;
  v14 = getDurationOfMOEventArray;
  [routineManager fetchPeopleDensityHistoryFromStartDate:startDate endDate:endDate completionHandler:v15];
}

void __66__MOPeopleDiscoveryManager__rehydratePeopleDensityEvents_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityPeopleDiscovery);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __66__MOPeopleDiscoveryManager__rehydratePeopleDensityEvents_handler___block_invoke_cold_1(a1);
    }

    v8 = *(*(a1 + 56) + 16);
LABEL_5:
    v8();
    goto LABEL_10;
  }

  v9 = [v5 count];
  v10 = _mo_log_facility_get_os_log(&MOLogFacilityPeopleDiscovery);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (!v9)
  {
    if (v11)
    {
      v16 = [*(a1 + 32) startDate];
      v17 = [*(a1 + 32) endDate];
      v18 = 138412802;
      v19 = v16;
      v20 = 2112;
      v21 = v17;
      v22 = 2112;
      v23 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "People density event fetch result is nil, start date, %@, end date, %@, error, %@", &v18, 0x20u);
    }

    v8 = *(*(a1 + 56) + 16);
    goto LABEL_5;
  }

  if (v11)
  {
    v12 = [v5 count];
    v13 = [*(a1 + 32) startDate];
    v14 = [*(a1 + 32) endDate];
    v18 = 134218498;
    v19 = v12;
    v20 = 2112;
    v21 = v13;
    v22 = 2112;
    v23 = v14;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "fetch %lu people density events, start date, %@, end date, %@", &v18, 0x20u);
  }

  v15 = [*(a1 + 40) _rehydrateStoredEvents:*(a1 + 48) fromPeopleDensityEvents:v5];
  (*(*(a1 + 56) + 16))();

LABEL_10:
}

- (id)_rehydrateStoredEvents:(id)events fromPeopleDensityEvents:(id)densityEvents
{
  eventsCopy = events;
  densityEventsCopy = densityEvents;
  if (![eventsCopy count])
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityPeopleDiscovery);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "No storedEvents for rehydrating density events event", buf, 2u);
    }

    goto LABEL_35;
  }

  if (![densityEventsCopy count])
  {
    v40 = _mo_log_facility_get_os_log(&MOLogFacilityPeopleDiscovery);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "density events fetch result is nil for rehydrate stored events", buf, 2u);
    }

    v41 = [MORehydrationMetrics alloc];
    firstObject = [eventsCopy firstObject];
    category = [firstObject category];
    firstObject2 = [eventsCopy firstObject];
    v7 = -[MORehydrationMetrics initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:](v41, "initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:", category, [firstObject2 provider], 1, 0, objc_msgSend(eventsCopy, "count"), 3, objc_msgSend(eventsCopy, "count"), 0.0);

    v58 = 0;
    [v7 submitMetricsWithError:&v58];
LABEL_35:
    v17 = 0;
    goto LABEL_36;
  }

  v7 = objc_opt_new();
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v46 = densityEventsCopy;
  v8 = densityEventsCopy;
  v9 = [v8 countByEnumeratingWithState:&v54 objects:v64 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v55;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v55 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v54 + 1) + 8 * i);
        uuid = [v13 uuid];

        if (uuid)
        {
          uuid2 = [v13 uuid];
          uUIDString = [uuid2 UUIDString];
          [v7 setValue:v13 forKey:uUIDString];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v54 objects:v64 count:16];
    }

    while (v10);
  }

  v17 = objc_opt_new();
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v47 = eventsCopy;
  v18 = eventsCopy;
  v19 = [v18 countByEnumeratingWithState:&v50 objects:v63 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v51;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v51 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v50 + 1) + 8 * j);
        identifierFromProvider = [v23 identifierFromProvider];
        v25 = [v7 objectForKey:identifierFromProvider];

        if (v25)
        {
          if (([v23 isGComplete] & 1) != 0 || (objc_msgSend(v25, "endDate"), v26 = objc_claimAutoreleasedReturnValue(), v26, !v26))
          {
            v28 = [v23 copy];
          }

          else
          {
            endDate = [v25 endDate];
            v28 = [(MOPeopleDiscoveryManager *)self _updateMOEventWithEndDate:v23 endDate:endDate];
          }

          [v25 densityScore];
          v29 = [NSNumber numberWithDouble:?];
          [v28 setDensityScore:v29];

          [v25 scanDuration];
          v30 = [NSNumber numberWithDouble:?];
          [v28 setDensityScanDuration:v30];

          v31 = _mo_log_facility_get_os_log(&MOLogFacilityRoutine);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v60 = v28;
            _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "_rehydratePeopleDensityEvents, rehydrated event, %@", buf, 0xCu);
          }

          [v17 addObject:v28];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v50 objects:v63 count:16];
    }

    while (v20);
  }

  v32 = _mo_log_facility_get_os_log(&MOLogFacilityPeopleDiscovery);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v33 = [v18 count];
    v34 = [v17 count];
    *buf = 134218240;
    v60 = v33;
    v61 = 2048;
    v62 = v34;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "stored density event count, %lu, rehydrated density event count, %lu", buf, 0x16u);
  }

  v35 = [MORehydrationMetrics alloc];
  firstObject3 = [v18 firstObject];
  category2 = [firstObject3 category];
  firstObject4 = [v18 firstObject];
  v39 = -[MORehydrationMetrics initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:](v35, "initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:", category2, [firstObject4 provider], 1, 0, objc_msgSend(v18, "count"), 3, (objc_msgSend(v18, "count") - objc_msgSend(v17, "count")), 0.0);

  v49 = 0;
  [(MORehydrationMetrics *)v39 submitMetricsWithError:&v49];

  densityEventsCopy = v46;
  eventsCopy = v47;
LABEL_36:

  return v17;
}

- (void)fetchProxEventsBetweenStartDate:(id)date endDate:(id)endDate withStoredEvents:(id)events handler:(id)handler
{
  dateCopy = date;
  endDateCopy = endDate;
  eventsCopy = events;
  handlerCopy = handler;
  queue = [(MOPeopleDiscoveryManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __93__MOPeopleDiscoveryManager_fetchProxEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke;
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

- (void)_fetchProxEventsBetweenStartDate:(id)date endDate:(id)endDate withStoredEvents:(id)events handler:(id)handler
{
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  eventsCopy = events;
  v14 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 15];
  v15 = [NSPredicate predicateWithFormat:@"%K = %lu", @"provider", 6];
  v29[0] = v14;
  v29[1] = v15;
  v16 = [NSArray arrayWithObjects:v29 count:2];
  v17 = [NSCompoundPredicate andPredicateWithSubpredicates:v16];

  v18 = [eventsCopy filteredArrayUsingPredicate:v17];

  routineManager = [(MOPeopleDiscoveryManager *)self routineManager];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = __94__MOPeopleDiscoveryManager__fetchProxEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke;
  v24[3] = &unk_100337940;
  v24[4] = self;
  v25 = dateCopy;
  v27 = v18;
  v28 = handlerCopy;
  v26 = endDateCopy;
  v20 = v18;
  v21 = handlerCopy;
  v22 = endDateCopy;
  v23 = dateCopy;
  [routineManager fetchProximityHistoryFromStartDate:v23 endDate:v22 completionHandler:v24];
}

void __94__MOPeopleDiscoveryManager__fetchProxEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __94__MOPeopleDiscoveryManager__fetchProxEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_2;
  block[3] = &unk_100337918;
  v11 = v6;
  v12 = a1[5];
  v13 = a1[6];
  v17 = a1[8];
  v14 = a1[7];
  v15 = v5;
  v16 = a1[4];
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);
}

void __94__MOPeopleDiscoveryManager__fetchProxEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityPeopleDiscovery);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __94__MOPeopleDiscoveryManager__fetchProxEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_2_cold_1(a1, v2);
    }

    if ([*v2 code] == 5)
    {
      v33 = NSLocalizedDescriptionKey;
      v34 = @"PDM: Provider database is unavailable (proxEvents)";
      v6 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v7 = [NSError errorWithDomain:@"MOErrorDomain" code:1152 userInfo:v6];

      (*(*(a1 + 80) + 16))();
    }

    else
    {
      (*(*(a1 + 80) + 16))();
    }

    v20 = [MORehydrationMetrics alloc];
    v21 = [*(a1 + 32) description];
    v11 = -[MORehydrationMetrics initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:](v20, "initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:", 15, 6, 0, v21, [*(a1 + 56) count], 3, objc_msgSend(*(a1 + 56), "count"), 0.0);

    v22 = 0;
    [(MORehydrationMetrics *)v11 submitMetricsWithError:&v22];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 64) count];
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      *buf = 134218498;
      v24 = v8;
      v25 = 2112;
      v26 = v9;
      v27 = 2112;
      v28 = v10;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "fetch %lu proximity event, start date, %@, end date, %@", buf, 0x20u);
    }

    v11 = [*(a1 + 72) _rehydrateStoredEvents:*(a1 + 56) fromProxEvents:*(a1 + 64)];
    v12 = [*(a1 + 72) _createNewEventsWithStoredEvents:*(a1 + 56) proxEvents:*(a1 + 64)];
    v13 = objc_opt_new();
    v14 = _mo_log_facility_get_os_log(&MOLogFacilityPeopleDiscovery);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 40);
      v16 = *(a1 + 48);
      v17 = [(MORehydrationMetrics *)v11 count];
      v18 = [v12 count];
      v19 = [*(a1 + 56) count];
      *buf = 138413314;
      v24 = v15;
      v25 = 2112;
      v26 = v16;
      v27 = 2048;
      v28 = v17;
      v29 = 2048;
      v30 = v18;
      v31 = 2048;
      v32 = v19;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "start date, %@, end date, %@, rehydrated prox events count, %lu, new prox events counts, %lu, stored prox events count, %lu", buf, 0x34u);
    }

    if (v12)
    {
      [v13 setObject:v12 forKey:@"newEvents"];
    }

    if (v11)
    {
      [v13 setObject:v11 forKey:@"rehydratedEvents"];
    }

    (*(*(a1 + 80) + 16))();
  }
}

- (id)_createNewEventsWithStoredEvents:(id)events proxEvents:(id)proxEvents
{
  eventsCopy = events;
  proxEventsCopy = proxEvents;
  if ([proxEventsCopy count])
  {
    if ([eventsCopy count])
    {
      v43 = objc_opt_new();
      v7 = objc_opt_new();
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v8 = eventsCopy;
      v9 = [v8 countByEnumeratingWithState:&v49 objects:v62 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v50;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v50 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v49 + 1) + 8 * i);
            identifierFromProvider = [v13 identifierFromProvider];

            if (identifierFromProvider)
            {
              identifierFromProvider2 = [v13 identifierFromProvider];
              [v7 setValue:v13 forKey:identifierFromProvider2];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v49 objects:v62 count:16];
        }

        while (v10);
      }

      v42 = eventsCopy;

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v41 = proxEventsCopy;
      v16 = proxEventsCopy;
      v17 = [v16 countByEnumeratingWithState:&v45 objects:v61 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v46;
        do
        {
          for (j = 0; j != v18; j = j + 1)
          {
            if (*v46 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v45 + 1) + 8 * j);
            eventID = [v21 eventID];
            uUIDString = [eventID UUIDString];
            v24 = [v7 objectForKey:uUIDString];

            if (!v24)
            {
              endDate = [v21 endDate];

              if (endDate)
              {
                v26 = [(MOPeopleDiscoveryManager *)self _createEventFromProx:v21];
                [v26 setGaPR:{objc_msgSend(v21, "relationship")}];
                [v21 socialScore];
                v27 = [NSNumber numberWithDouble:?];
                [v26 setPCount:v27];

                if (v26)
                {
                  [v43 addObject:v26];
                }
              }
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v45 objects:v61 count:16];
        }

        while (v18);
      }

      v28 = _mo_log_facility_get_os_log(&MOLogFacilityPeopleDiscovery);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = [v43 count];
        v30 = [v8 count];
        *buf = 134218240;
        v58 = v29;
        v59 = 2048;
        v60 = v30;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "new prox events count, %lu, stored prox event count, %lu", buf, 0x16u);
      }

      proxEventsCopy = v41;
      eventsCopy = v42;
    }

    else
    {
      v31 = _mo_log_facility_get_os_log(&MOLogFacilityPeopleDiscovery);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "No storedEvents for checking before create new prox events", buf, 2u);
      }

      v43 = objc_opt_new();
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v7 = proxEventsCopy;
      v32 = [v7 countByEnumeratingWithState:&v53 objects:v63 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v54;
        do
        {
          for (k = 0; k != v33; k = k + 1)
          {
            if (*v54 != v34)
            {
              objc_enumerationMutation(v7);
            }

            v36 = *(*(&v53 + 1) + 8 * k);
            endDate2 = [v36 endDate];

            if (endDate2)
            {
              v38 = [(MOPeopleDiscoveryManager *)self _createEventFromProx:v36];
              [v38 setGaPR:{objc_msgSend(v36, "relationship")}];
              [v36 socialScore];
              v39 = [NSNumber numberWithDouble:?];
              [v38 setPCount:v39];

              if (v38)
              {
                [v43 addObject:v38];
              }
            }
          }

          v33 = [v7 countByEnumeratingWithState:&v53 objects:v63 count:16];
        }

        while (v33);
      }
    }
  }

  else
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityPeopleDiscovery);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "prox event fetch result is nil for creating new events", buf, 2u);
    }

    v43 = 0;
  }

  return v43;
}

- (void)fetchPeopleDensityEventsBetweenStartDate:(id)date endDate:(id)endDate withStoredEvents:(id)events handler:(id)handler
{
  dateCopy = date;
  endDateCopy = endDate;
  eventsCopy = events;
  handlerCopy = handler;
  queue = [(MOPeopleDiscoveryManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __102__MOPeopleDiscoveryManager_fetchPeopleDensityEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke;
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

- (void)_fetchPeopleDensityEventsBetweenStartDate:(id)date endDate:(id)endDate withStoredEvents:(id)events handler:(id)handler
{
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  eventsCopy = events;
  v14 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 23];
  v15 = [NSPredicate predicateWithFormat:@"%K = %lu", @"provider", 6];
  v30[0] = v14;
  v30[1] = v15;
  v16 = [NSArray arrayWithObjects:v30 count:2];
  v17 = [NSCompoundPredicate andPredicateWithSubpredicates:v16];

  v18 = [eventsCopy filteredArrayUsingPredicate:v17];

  routineManager = [(MOPeopleDiscoveryManager *)self routineManager];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = __103__MOPeopleDiscoveryManager__fetchPeopleDensityEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke;
  v24[3] = &unk_100337968;
  v25 = dateCopy;
  v26 = endDateCopy;
  selfCopy = self;
  v29 = handlerCopy;
  v27 = v18;
  v20 = v18;
  v21 = handlerCopy;
  v22 = endDateCopy;
  v23 = dateCopy;
  [routineManager fetchPeopleDensityHistoryFromStartDate:v23 endDate:v22 completionHandler:v24];
}

void __103__MOPeopleDiscoveryManager__fetchPeopleDensityEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPeopleDiscovery);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __103__MOPeopleDiscoveryManager__fetchPeopleDensityEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_cold_1(a1);
    }

    if ([v6 code] == 5)
    {
      v37 = NSLocalizedDescriptionKey;
      v38 = @"PDM: Provider database is unavailable (density)";
      v9 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v10 = [NSError errorWithDomain:@"MOErrorDomain" code:1152 userInfo:v9];

      (*(*(a1 + 64) + 16))();
    }

    else
    {
      (*(*(a1 + 64) + 16))();
    }

    v23 = [MORehydrationMetrics alloc];
    v24 = [v6 description];
    v14 = -[MORehydrationMetrics initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:](v23, "initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:", 23, 6, 0, v24, [*(a1 + 48) count], 3, objc_msgSend(*(a1 + 48), "count"), 0.0);

    v26 = 0;
    [(MORehydrationMetrics *)v14 submitMetricsWithError:&v26];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = [v5 count];
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      *buf = 134218498;
      v28 = v11;
      v29 = 2112;
      v30 = v12;
      v31 = 2112;
      v32 = v13;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "fetch %lu density events, start date, %@, end date, %@", buf, 0x20u);
    }

    v14 = [*(a1 + 56) _rehydrateStoredEvents:*(a1 + 48) fromPeopleDensityEvents:v5];
    v15 = [*(a1 + 56) _createNewEventsWithStoredEvents:*(a1 + 48) peopleDensityEvents:v5];
    v16 = objc_opt_new();
    v17 = _mo_log_facility_get_os_log(&MOLogFacilityPeopleDiscovery);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v25 = v5;
      v19 = *(a1 + 32);
      v18 = *(a1 + 40);
      v20 = [(MORehydrationMetrics *)v14 count];
      v21 = [v15 count];
      v22 = [*(a1 + 48) count];
      *buf = 138413314;
      v28 = v19;
      v29 = 2112;
      v30 = v18;
      v5 = v25;
      v31 = 2048;
      v32 = v20;
      v33 = 2048;
      v34 = v21;
      v35 = 2048;
      v36 = v22;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "start date, %@, end date, %@, rehydrated density events count, %lu, new density events counts, %lu, stored density events count, %lu", buf, 0x34u);
    }

    if (v15)
    {
      [v16 setObject:v15 forKey:@"newEvents"];
    }

    if (v14)
    {
      [v16 setObject:v14 forKey:@"rehydratedEvents"];
    }

    (*(*(a1 + 64) + 16))();
  }
}

- (id)_createNewEventsWithStoredEvents:(id)events peopleDensityEvents:(id)densityEvents
{
  eventsCopy = events;
  densityEventsCopy = densityEvents;
  if ([densityEventsCopy count])
  {
    if ([eventsCopy count])
    {
      v45 = objc_opt_new();
      v7 = objc_opt_new();
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v8 = eventsCopy;
      v9 = [v8 countByEnumeratingWithState:&v51 objects:v64 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v52;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v52 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v51 + 1) + 8 * i);
            identifierFromProvider = [v13 identifierFromProvider];
            [v7 setValue:v13 forKey:identifierFromProvider];
          }

          v10 = [v8 countByEnumeratingWithState:&v51 objects:v64 count:16];
        }

        while (v10);
      }

      v44 = eventsCopy;
      v42 = v8;

      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v43 = densityEventsCopy;
      v15 = densityEventsCopy;
      v16 = [v15 countByEnumeratingWithState:&v47 objects:v63 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v48;
        do
        {
          for (j = 0; j != v17; j = j + 1)
          {
            if (*v48 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v47 + 1) + 8 * j);
            uuid = [v20 uuid];
            uUIDString = [uuid UUIDString];
            v23 = [v7 objectForKey:uUIDString];

            if (!v23)
            {
              endDate = [v20 endDate];

              if (endDate)
              {
                v25 = [(MOPeopleDiscoveryManager *)self _createEventFromPeopleDensityEvent:v20];
                [v20 densityScore];
                v26 = [NSNumber numberWithDouble:?];
                [v25 setDensityScore:v26];

                [v20 scanDuration];
                v27 = [NSNumber numberWithDouble:?];
                [v25 setDensityScanDuration:v27];

                if (v25)
                {
                  [v45 addObject:v25];
                }
              }
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v47 objects:v63 count:16];
        }

        while (v17);
      }

      v28 = _mo_log_facility_get_os_log(&MOLogFacilityPeopleDiscovery);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = [v45 count];
        v30 = [v42 count];
        *buf = 134218240;
        v60 = v29;
        v61 = 2048;
        v62 = v30;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "new density events count, %lu, stored density event count, %lu", buf, 0x16u);
      }

      densityEventsCopy = v43;
      eventsCopy = v44;
    }

    else
    {
      v31 = _mo_log_facility_get_os_log(&MOLogFacilityPeopleDiscovery);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "No storedEvents for checking before create new density events", buf, 2u);
      }

      v45 = objc_opt_new();
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v7 = densityEventsCopy;
      v32 = [v7 countByEnumeratingWithState:&v55 objects:v65 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v56;
        do
        {
          for (k = 0; k != v33; k = k + 1)
          {
            if (*v56 != v34)
            {
              objc_enumerationMutation(v7);
            }

            v36 = *(*(&v55 + 1) + 8 * k);
            endDate2 = [v36 endDate];

            if (endDate2)
            {
              v38 = [(MOPeopleDiscoveryManager *)self _createEventFromPeopleDensityEvent:v36];
              [v36 densityScore];
              v39 = [NSNumber numberWithDouble:?];
              [v38 setDensityScore:v39];

              [v36 scanDuration];
              v40 = [NSNumber numberWithDouble:?];
              [v38 setDensityScanDuration:v40];

              if (v38)
              {
                [v45 addObject:v38];
              }
            }
          }

          v33 = [v7 countByEnumeratingWithState:&v55 objects:v65 count:16];
        }

        while (v33);
      }
    }
  }

  else
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityPeopleDiscovery);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "density event fetch result is nil for creating new events", buf, 2u);
    }

    v45 = 0;
  }

  return v45;
}

void __71__MOPeopleDiscoveryManager__fetchProxBetweenStartDate_EndDate_handler___block_invoke_cold_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_1_5(&_mh_execute_header, v3, v4, "proximity event fetch hit error, start date, %@, end date, %@, error, %@");
}

void __80__MOPeopleDiscoveryManager__fetchPeopleDensityBetweenStartDate_EndDate_handler___block_invoke_cold_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_1_5(&_mh_execute_header, v3, v4, "people density fetch hit error, start date, %@, end date, %@, error, %@");
}

void __51__MOPeopleDiscoveryManager__rehydrateProx_handler___block_invoke_2_cold_1(uint64_t a1, uint64_t *a2)
{
  v4 = [*(a1 + 40) startDate];
  v11 = [*(a1 + 40) endDate];
  v12 = *a2;
  OUTLINED_FUNCTION_3_0(&_mh_execute_header, v5, v6, "proximity event fetch hit error, start date, %@, end date, %@, error, %@", v7, v8, v9, v10, 2u);
}

void __66__MOPeopleDiscoveryManager__rehydratePeopleDensityEvents_handler___block_invoke_cold_1(uint64_t a1)
{
  v2 = [*(a1 + 32) startDate];
  v9 = [*(a1 + 32) endDate];
  OUTLINED_FUNCTION_3_0(&_mh_execute_header, v3, v4, "People density event fetch hit error, start date, %@, end date, %@, error, %@", v5, v6, v7, v8, 2u);
}

void __94__MOPeopleDiscoveryManager__fetchProxEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_2_cold_1(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *a2;
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_1_5(&_mh_execute_header, v5, v6, "proximity event fetch hit error, start date, %@, end date, %@, error, %@");
}

void __103__MOPeopleDiscoveryManager__fetchPeopleDensityEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_cold_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_1_5(&_mh_execute_header, v3, v4, "density event fetch hit error, start date, %@, end date, %@, error, %@");
}

@end