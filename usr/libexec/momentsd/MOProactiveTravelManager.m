@interface MOProactiveTravelManager
- (MOProactiveTravelManager)initWithPortraitStore:(id)a3 momentStore:(id)a4 configurationManager:(id)a5;
- (MOProactiveTravelManager)initWithUniverse:(id)a3;
- (id)_providerIdOfTrip:(id)a3;
- (id)createEventFromTrip:(id)a3;
- (id)rehydratedTripEvents:(id)a3;
- (void)_removeTripEventsDeletedAtSource:(id)a3 handler:(id)a4;
- (void)fetchAndSaveTripsBetweenStartDate:(id)a3 EndDate:(id)a4 handler:(id)a5;
- (void)fetchTripsBetweenStartDate:(id)a3 EndDate:(id)a4 CompletionHandler:(id)a5;
- (void)removeTripEventsDeletedAtSource:(id)a3 handler:(id)a4;
- (void)saveTrips:(id)a3 handler:(id)a4;
@end

@implementation MOProactiveTravelManager

- (MOProactiveTravelManager)initWithUniverse:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PPEventStore);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v4 getService:v7];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v4 getService:v10];

  v12 = [(MOProactiveTravelManager *)self initWithPortraitStore:v5 momentStore:v8 configurationManager:v11];
  return v12;
}

- (MOProactiveTravelManager)initWithPortraitStore:(id)a3 momentStore:(id)a4 configurationManager:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v11)
  {
    v18 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [MOSignificantContactManager initWithDuetStore:ppContactStore:cnContactStore:momentStore:configurationManager:];
    }

    v19 = +[NSAssertionHandler currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"MOProactiveTravelManager.m" lineNumber:55 description:@"Invalid parameter not satisfying: momentStore"];

    goto LABEL_9;
  }

  if (!v10)
  {
LABEL_9:
    v17 = 0;
    goto LABEL_10;
  }

  v21.receiver = self;
  v21.super_class = MOProactiveTravelManager;
  v13 = [(MOProactiveTravelManager *)&v21 init];
  if (v13)
  {
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("MOProactiveTravelManager", v14);
    queue = v13->_queue;
    v13->_queue = v15;

    objc_storeStrong(&v13->_portraitStore, a3);
    objc_storeStrong(&v13->_momentStore, a4);
    objc_storeStrong(&v13->_configurationManager, a5);
  }

  self = v13;
  v17 = self;
LABEL_10:

  return v17;
}

- (void)fetchTripsBetweenStartDate:(id)a3 EndDate:(id)a4 CompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MOProactiveTravelManager *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __81__MOProactiveTravelManager_fetchTripsBetweenStartDate_EndDate_CompletionHandler___block_invoke;
  v15[3] = &unk_1003361C0;
  v16 = v8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __81__MOProactiveTravelManager_fetchTripsBetweenStartDate_EndDate_CompletionHandler___block_invoke(void *a1)
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityProactiveTravel);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = a1[4];
    v4 = a1[5];
    *buf = 138412546;
    *&buf[4] = v3;
    *&buf[12] = 2112;
    *&buf[14] = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "fetching trips between %@ and %@", buf, 0x16u);
  }

  v5 = objc_opt_new();
  [v5 setFromDate:a1[4]];
  [v5 setToDate:a1[5]];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v25 = __Block_byref_object_copy__34;
  v26 = __Block_byref_object_dispose__34;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__34;
  v20 = __Block_byref_object_dispose__34;
  v21 = objc_opt_new();
  v6 = *&buf[8];
  v7 = *(*&buf[8] + 40);
  v8 = *(a1[6] + 16);
  v14[5] = &v16;
  obj = v7;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __81__MOProactiveTravelManager_fetchTripsBetweenStartDate_EndDate_CompletionHandler___block_invoke_112;
  v14[3] = &unk_100337E50;
  v14[4] = buf;
  [v8 iterScoredEventsWithQuery:v5 error:&obj block:v14];
  objc_storeStrong((v6 + 40), obj);
  if (*(*&buf[8] + 40))
  {
    v9 = _mo_log_facility_get_os_log(&MOLogFacilityProactiveTravel);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __81__MOProactiveTravelManager_fetchTripsBetweenStartDate_EndDate_CompletionHandler___block_invoke_cold_1(&buf[8]);
    }

    [v17[5] removeAllObjects];
  }

  else
  {
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityProactiveTravel);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v17[5] count];
      *v22 = 134217984;
      v23 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "found %lu trips", v22, 0xCu);
    }
  }

  v12 = v17[5];
  v13 = *(*&buf[8] + 40);
  (*(a1[7] + 16))();
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(buf, 8);
}

void *__81__MOProactiveTravelManager_fetchTripsBetweenStartDate_EndDate_CompletionHandler___block_invoke_112(void *result, uint64_t a2, _BYTE *a3)
{
  if (!*(*(result[4] + 8) + 40))
  {
    return [*(*(result[5] + 8) + 40) addObject:a2];
  }

  *a3 = 1;
  return result;
}

- (id)createEventFromTrip:(id)a3
{
  v4 = a3;
  v5 = [MOEvent alloc];
  v6 = +[NSUUID UUID];
  v7 = [v4 startDate];
  v8 = [v4 endDate];
  v9 = +[NSDate date];
  v10 = [(MOEvent *)v5 initWithEventIdentifier:v6 startDate:v7 endDate:v8 creationDate:v9 provider:3 category:8];

  v11 = [v4 endDate];
  v12 = [(MOProactiveTravelManager *)self configurationManager];
  LODWORD(v13) = 1242802176;
  [v12 getFloatSettingForKey:@"EventManagerOverrideMaximumEventAge" withFallback:v13];
  v15 = [v11 dateByAddingTimeInterval:v14];
  [(MOEvent *)v10 setExpirationDate:v15];

  v16 = [(MOProactiveTravelManager *)self _providerIdOfTrip:v4];

  [(MOEvent *)v10 setIdentifierFromProvider:v16];
  v17 = _mo_log_facility_get_os_log(&MOLogFacilityProactiveTravel);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [(MOEvent *)v10 identifierFromProvider];
    v20 = 138412290;
    v21 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "has identifierFromProvider, %@", &v20, 0xCu);
  }

  return v10;
}

- (id)_providerIdOfTrip:(id)a3
{
  v3 = [a3 tripParts];
  v4 = [v3 _pas_mappedArrayWithTransform:&__block_literal_global_48];
  v5 = [v4 _pas_componentsJoinedByString:@"|"];

  CStringPtr = CFStringGetCStringPtr(v5, 0x600u);
  [(__CFString *)v5 length];
  if (!CStringPtr)
  {
    ExternalRepresentation = CFStringCreateExternalRepresentation(kCFAllocatorMalloc, v5, 0x8000100u, 0);
    [(__CFData *)ExternalRepresentation bytes];
    [(__CFData *)ExternalRepresentation length];
  }

  _PASMurmur3_x86_128();
  v8 = _PASBytesToHex();

  return v8;
}

id __46__MOProactiveTravelManager__providerIdOfTrip___block_invoke(id a1, PPTripPart *a2)
{
  v2 = [(PPTripPart *)a2 eventIdentifiers];
  v3 = [v2 _pas_componentsJoinedByString:@":"];

  return v3;
}

- (void)saveTrips:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSDate distantFuture];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v10)
  {
    v11 = *v34;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v33 + 1) + 8 * i);
        v14 = [v13 startDate];
        v15 = [v8 isAfterDate:v14];

        if (v15)
        {
          v16 = [v13 startDate];

          v8 = v16;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v10);
  }

  v30 = 0;
  v31[0] = &v30;
  v31[1] = 0x3032000000;
  v31[2] = __Block_byref_object_copy__34;
  v31[3] = __Block_byref_object_dispose__34;
  v32 = 0;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__34;
  v28[4] = __Block_byref_object_dispose__34;
  v29 = 0;
  v17 = [(MOProactiveTravelManager *)self momentStore];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = __46__MOProactiveTravelManager_saveTrips_handler___block_invoke;
  v27[3] = &unk_100337768;
  v27[4] = &v30;
  v27[5] = v28;
  [v17 fetchEventsWithStartDateAfter:v8 Category:8 CompletionHandler:v27];

  if (*(v31[0] + 40))
  {
    v18 = _mo_log_facility_get_os_log(&MOLogFacilityProactiveTravel);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [MOProactiveTravelManager saveTrips:v31 handler:?];
    }

    v19 = _mo_log_facility_get_os_log(&MOLogFacilityProactiveTravel);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [MOProactiveTravelManager saveTrips:handler:];
    }

    if (v7)
    {
      v7[2](v7, *(v31[0] + 40), &__NSDictionary0__struct);
    }
  }

  else
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = __46__MOProactiveTravelManager_saveTrips_handler___block_invoke_133;
    v26[3] = &unk_10033E5F8;
    v26[4] = self;
    v26[5] = v28;
    v20 = [v9 _pas_mappedArrayWithTransform:v26];
    v21 = [(MOProactiveTravelManager *)self momentStore];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = __46__MOProactiveTravelManager_saveTrips_handler___block_invoke_2_135;
    v23[3] = &unk_1003377B8;
    v22 = v20;
    v24 = v22;
    v25 = v7;
    [v21 storeEvents:v22 CompletionHandler:v23];
  }

  _Block_object_dispose(v28, 8);

  _Block_object_dispose(&v30, 8);
}

void __46__MOProactiveTravelManager_saveTrips_handler___block_invoke(uint64_t a1, void *a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  v7 = a2;
  v8 = [NSSet alloc];
  v12 = [v7 _pas_mappedArrayWithTransform:&__block_literal_global_131];

  v9 = [v8 initWithArray:v12];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

id __46__MOProactiveTravelManager_saveTrips_handler___block_invoke_133(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v5 = [*(a1 + 32) _providerIdOfTrip:v3];
  LOBYTE(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = [*(a1 + 32) createEventFromTrip:v3];
  }

  return v6;
}

void __46__MOProactiveTravelManager_saveTrips_handler___block_invoke_2_135(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityProactiveTravel);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __46__MOProactiveTravelManager_saveTrips_handler___block_invoke_2_135_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = [*(a1 + 32) count];
    v11 = 134217984;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "saved trip events, %lu", &v11, 0xCu);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v6);
  }
}

- (void)fetchAndSaveTripsBetweenStartDate:(id)a3 EndDate:(id)a4 handler:(id)a5
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __78__MOProactiveTravelManager_fetchAndSaveTripsBetweenStartDate_EndDate_handler___block_invoke;
  v8[3] = &unk_100337850;
  v9 = self;
  v10 = a5;
  v7 = v10;
  [(MOProactiveTravelManager *)v9 fetchTripsBetweenStartDate:a3 EndDate:a4 CompletionHandler:v8];
}

void __78__MOProactiveTravelManager_fetchAndSaveTripsBetweenStartDate_EndDate_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))(v7, v6, 0);
    }
  }

  else
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityProactiveTravel);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Saving trip contents.", buf, 2u);
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __78__MOProactiveTravelManager_fetchAndSaveTripsBetweenStartDate_EndDate_handler___block_invoke_137;
    v10[3] = &unk_100336198;
    v9 = *(a1 + 32);
    v11 = *(a1 + 40);
    [v9 saveTrips:v5 handler:v10];
  }
}

uint64_t __78__MOProactiveTravelManager_fetchAndSaveTripsBetweenStartDate_EndDate_handler___block_invoke_137(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)rehydratedTripEvents:(id)a3
{
  v4 = a3;
  v5 = [v4 getDurationOfMOEventArray];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__34;
  v17 = __Block_byref_object_dispose__34;
  v18 = 0;
  v6 = [v5 startDate];
  v7 = [v5 endDate];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __49__MOProactiveTravelManager_rehydratedTripEvents___block_invoke;
  v12[3] = &unk_1003364B0;
  v12[4] = self;
  v12[5] = &v13;
  [(MOProactiveTravelManager *)self fetchTripsBetweenStartDate:v6 EndDate:v7 CompletionHandler:v12];

  [(MOProactiveTravelManager *)self waitForQueueEmpty];
  if (v14[5])
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __49__MOProactiveTravelManager_rehydratedTripEvents___block_invoke_139;
    v11[3] = &unk_100337F80;
    v11[4] = &v13;
    v8 = [v4 _pas_mappedArrayWithTransform:v11];
  }

  else
  {
    v9 = _mo_log_facility_get_os_log(&MOLogFacilityProactiveTravel);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [MOProactiveTravelManager rehydratedTripEvents:];
    }

    v8 = &__NSArray0__struct;
  }

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __49__MOProactiveTravelManager_rehydratedTripEvents___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = *(*(*(a1 + 40) + 8) + 40);
        v14 = [*(a1 + 32) _providerIdOfTrip:{v12, v15}];
        [v13 setObject:v12 forKeyedSubscript:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

id __49__MOProactiveTravelManager_rehydratedTripEvents___block_invoke_139(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v5 = [v3 identifierFromProvider];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [v3 copy];
    v8 = [v6 title];

    if (v8)
    {
      v9 = [v6 title];
      [v7 setTripTitle:v9];
    }

    v10 = [v6 tripParts];

    if (v10)
    {
      v11 = [v6 tripParts];
      [v7 setTripParts:v11];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)removeTripEventsDeletedAtSource:(id)a3 handler:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __68__MOProactiveTravelManager_removeTripEventsDeletedAtSource_handler___block_invoke;
  v7[3] = &unk_100336198;
  v8 = a4;
  v6 = v8;
  [(MOProactiveTravelManager *)self _removeTripEventsDeletedAtSource:a3 handler:v7];
  [(MOProactiveTravelManager *)self waitForQueueEmpty];
}

uint64_t __68__MOProactiveTravelManager_removeTripEventsDeletedAtSource_handler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_removeTripEventsDeletedAtSource:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 getDurationOfMOEventArray];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__34;
  v26 = __Block_byref_object_dispose__34;
  v27 = 0;
  v9 = [v8 startDate];
  v10 = [v8 endDate];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = __69__MOProactiveTravelManager__removeTripEventsDeletedAtSource_handler___block_invoke;
  v21[3] = &unk_1003364B0;
  v21[4] = self;
  v21[5] = &v22;
  [(MOProactiveTravelManager *)self fetchTripsBetweenStartDate:v9 EndDate:v10 CompletionHandler:v21];

  [(MOProactiveTravelManager *)self waitForQueueEmpty];
  if (v23[5])
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = __69__MOProactiveTravelManager__removeTripEventsDeletedAtSource_handler___block_invoke_142;
    v20[3] = &unk_100337F80;
    v20[4] = &v22;
    v11 = [v6 _pas_mappedArrayWithTransform:v20];
    v12 = _mo_log_facility_get_os_log(&MOLogFacilityProactiveTravel);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v11 count];
      *buf = 134217984;
      v29 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%ld previously saved trip event(s) not found, therefore deleting them.", buf, 0xCu);
    }

    v14 = [(MOProactiveTravelManager *)self momentStore];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __69__MOProactiveTravelManager__removeTripEventsDeletedAtSource_handler___block_invoke_143;
    v17[3] = &unk_1003377B8;
    v15 = v11;
    v18 = v15;
    v19 = v7;
    [v14 removeEvents:v15 CompletionHandler:v17];

    goto LABEL_9;
  }

  v16 = _mo_log_facility_get_os_log(&MOLogFacilityProactiveTravel);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [MOProactiveTravelManager _removeTripEventsDeletedAtSource:handler:];
  }

  if (v7)
  {
    v30 = @"resultNumberOfEvents";
    v31 = &off_10036B818;
    v15 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    (*(v7 + 2))(v7, 0, v15);
LABEL_9:
  }

  _Block_object_dispose(&v22, 8);
}

void __69__MOProactiveTravelManager__removeTripEventsDeletedAtSource_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = *(*(*(a1 + 40) + 8) + 40);
        v14 = [*(a1 + 32) _providerIdOfTrip:{v12, v15}];
        [v13 setObject:v12 forKeyedSubscript:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

id __69__MOProactiveTravelManager__removeTripEventsDeletedAtSource_handler___block_invoke_142(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v5 = [v3 identifierFromProvider];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3;
  }

  return v7;
}

void __69__MOProactiveTravelManager__removeTripEventsDeletedAtSource_handler___block_invoke_143(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityProactiveTravel);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __69__MOProactiveTravelManager__removeTripEventsDeletedAtSource_handler___block_invoke_143_cold_1(a1, v5, v8);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = [*(a1 + 32) count];
    v11 = 134217984;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Deleting %ld travel event(s) in database succeeded!", &v11, 0xCu);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v6);
  }
}

void __81__MOProactiveTravelManager_fetchTripsBetweenStartDate_EndDate_CompletionHandler___block_invoke_cold_1(uint64_t a1)
{
  v6 = *(*a1 + 40);
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)saveTrips:(uint64_t)a1 handler:.cold.1(uint64_t a1)
{
  v6 = *(*a1 + 40);
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)saveTrips:handler:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)rehydratedTripEvents:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_removeTripEventsDeletedAtSource:handler:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __69__MOProactiveTravelManager__removeTripEventsDeletedAtSource_handler___block_invoke_143_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = [*(a1 + 32) count];
  v6 = 134218242;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Deleting %ld travel event(s) in database failed, error %@", &v6, 0x16u);
}

@end