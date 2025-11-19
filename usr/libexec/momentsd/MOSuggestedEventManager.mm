@interface MOSuggestedEventManager
- (MOSuggestedEventManager)initWithPortraitStore:(id)a3 momentStore:(id)a4;
- (MOSuggestedEventManager)initWithUniverse:(id)a3;
- (id)createEventFromSuggestedEvent:(id)a3;
- (id)rehydratedSuggestedEvents:(id)a3;
- (void)_enrichSuggestedEventsWithEventKit:(id)a3;
- (void)_fetchTripsBetweenStartDate:(id)a3 EndDate:(id)a4 CompletionHandler:(id)a5;
- (void)_removeSuggestedEventsDeletedAtSource:(id)a3 handler:(id)a4;
- (void)fetchAndSaveSuggestedEventBetweenStartDate:(id)a3 EndDate:(id)a4 handler:(id)a5;
- (void)fetchSuggestedEventBetweenStartDate:(id)a3 EndDate:(id)a4 CompletionHandler:(id)a5;
- (void)removeSuggestedEventsDeletedAtSource:(id)a3 handler:(id)a4;
- (void)saveSuggestedEvents:(id)a3 handler:(id)a4;
@end

@implementation MOSuggestedEventManager

- (MOSuggestedEventManager)initWithUniverse:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PPEventStore);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v4 getService:v7];

  v9 = [(MOSuggestedEventManager *)self initWithPortraitStore:v5 momentStore:v8];
  return v9;
}

- (MOSuggestedEventManager)initWithPortraitStore:(id)a3 momentStore:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v15 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MOSuggestedEventManager initWithPortraitStore:momentStore:];
    }

    v16 = +[NSAssertionHandler currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"MOSuggestedEventManager.m" lineNumber:55 description:@"Invalid parameter not satisfying: momentStore"];

    goto LABEL_9;
  }

  if (!v8)
  {
LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  v18.receiver = self;
  v18.super_class = MOSuggestedEventManager;
  v10 = [(MOSuggestedEventManager *)&v18 init];
  if (v10)
  {
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("MOSuggestedEventManager", v11);
    queue = v10->_queue;
    v10->_queue = v12;

    objc_storeStrong(&v10->_portraitStore, a3);
    objc_storeStrong(&v10->_momentStore, a4);
  }

  self = v10;
  v14 = self;
LABEL_10:

  return v14;
}

- (void)_fetchTripsBetweenStartDate:(id)a3 EndDate:(id)a4 CompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MOSuggestedEventManager *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __81__MOSuggestedEventManager__fetchTripsBetweenStartDate_EndDate_CompletionHandler___block_invoke;
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

void __81__MOSuggestedEventManager__fetchTripsBetweenStartDate_EndDate_CompletionHandler___block_invoke(void *a1)
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilitySuggestedEvent);
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
  v24 = __Block_byref_object_copy__12;
  v25 = __Block_byref_object_dispose__12;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__12;
  v19 = __Block_byref_object_dispose__12;
  v20 = objc_opt_new();
  v6 = *&buf[8];
  v7 = *(*&buf[8] + 40);
  v8 = *(a1[6] + 16);
  v13[5] = &v15;
  obj = v7;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __81__MOSuggestedEventManager__fetchTripsBetweenStartDate_EndDate_CompletionHandler___block_invoke_114;
  v13[3] = &unk_100337E50;
  v13[4] = buf;
  [v8 iterScoredEventsWithQuery:v5 error:&obj block:v13];
  objc_storeStrong((v6 + 40), obj);
  if (*(*&buf[8] + 40))
  {
    v9 = _mo_log_facility_get_os_log(&MOLogFacilityProactiveTravel);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __81__MOSuggestedEventManager__fetchTripsBetweenStartDate_EndDate_CompletionHandler___block_invoke_cold_1(&buf[8]);
    }
  }

  else
  {
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityProactiveTravel);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v16[5] count];
      *v21 = 134217984;
      v22 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "found %lu trips", v21, 0xCu);
    }

    v12 = v16[5];
  }

  (*(a1[7] + 16))();
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(buf, 8);
}

void *__81__MOSuggestedEventManager__fetchTripsBetweenStartDate_EndDate_CompletionHandler___block_invoke_114(void *result, uint64_t a2, _BYTE *a3)
{
  if (!*(*(result[4] + 8) + 40))
  {
    return [*(*(result[5] + 8) + 40) addObject:a2];
  }

  *a3 = 1;
  return result;
}

- (void)fetchSuggestedEventBetweenStartDate:(id)a3 EndDate:(id)a4 CompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MOSuggestedEventManager *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __89__MOSuggestedEventManager_fetchSuggestedEventBetweenStartDate_EndDate_CompletionHandler___block_invoke;
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

void __89__MOSuggestedEventManager_fetchSuggestedEventBetweenStartDate_EndDate_CompletionHandler___block_invoke(void *a1)
{
  v2 = objc_opt_new();
  [v2 setFromDate:a1[4]];
  [v2 setToDate:a1[5]];
  v19 = 0;
  v20[0] = &v19;
  v20[1] = 0x3032000000;
  v20[2] = __Block_byref_object_copy__12;
  v20[3] = __Block_byref_object_dispose__12;
  v21 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__12;
  v17 = __Block_byref_object_dispose__12;
  v18 = objc_opt_new();
  v4 = (v20[0] + 40);
  v3 = *(v20[0] + 40);
  v5 = *(a1[6] + 16);
  v11[5] = &v13;
  obj = v3;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __89__MOSuggestedEventManager_fetchSuggestedEventBetweenStartDate_EndDate_CompletionHandler___block_invoke_2;
  v11[3] = &unk_100337E50;
  v11[4] = &v19;
  [v5 iterScoredEventsWithQuery:v2 error:&obj block:v11];
  objc_storeStrong(v4, obj);
  if (*(v20[0] + 40))
  {
    v6 = _mo_log_facility_get_os_log(&MOLogFacilitySuggestedEvent);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __89__MOSuggestedEventManager_fetchSuggestedEventBetweenStartDate_EndDate_CompletionHandler___block_invoke_cold_1(v20);
    }

    v7 = *(v20[0] + 40);
  }

  else
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilitySuggestedEvent);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v14[5] count];
      *buf = 134217984;
      v23 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Got %lu events", buf, 0xCu);
    }

    v10 = v14[5];
  }

  (*(a1[7] + 16))();
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);
}

void __89__MOSuggestedEventManager_fetchSuggestedEventBetweenStartDate_EndDate_CompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 32;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    v3 = _mo_log_facility_get_os_log(&MOLogFacilitySuggestedEvent);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __89__MOSuggestedEventManager_fetchSuggestedEventBetweenStartDate_EndDate_CompletionHandler___block_invoke_2_cold_1(v2);
    }
  }

  else
  {
    v4 = *(*(*(a1 + 40) + 8) + 40);

    [v4 addObject:a2];
  }
}

- (id)createEventFromSuggestedEvent:(id)a3
{
  v3 = a3;
  if ([v3 category] == 12)
  {
    v4 = 12;
  }

  else
  {
    v4 = 11;
  }

  v5 = [MOEvent alloc];
  v6 = +[NSUUID UUID];
  v7 = [v3 startDate];
  v8 = [v3 endDate];
  v9 = +[NSDate date];
  v10 = [(MOEvent *)v5 initWithEventIdentifier:v6 startDate:v7 endDate:v8 creationDate:v9 provider:3 category:v4];

  v11 = [v3 eventIdentifier];

  if (v11)
  {
    v12 = [v3 eventIdentifier];
    [(MOEvent *)v10 setSuggestedEventIdentifier:v12];

    v13 = [v3 eventIdentifier];
    [(MOEvent *)v10 setIdentifierFromProvider:v13];

    v14 = _mo_log_facility_get_os_log(&MOLogFacilitySuggestedEvent);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [(MOEvent *)v10 suggestedEventIdentifier];
      v19 = 138412290;
      v20 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "has eventIdentifier, %@", &v19, 0xCu);
    }

    v16 = [v3 endDate];
    v17 = [v16 dateByAddingTimeInterval:2419200.0];
    [(MOEvent *)v10 setExpirationDate:v17];

    v11 = v10;
  }

  return v11;
}

- (void)saveSuggestedEvents:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSDate distantFuture];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v10)
  {
    v11 = *v32;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v31 + 1) + 8 * i);
        v14 = [v13 startDate];
        v15 = [v8 isAfterDate:v14];

        if (v15)
        {
          v16 = [v13 startDate];

          v8 = v16;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v10);
  }

  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__12;
  v29[4] = __Block_byref_object_dispose__12;
  v30 = 0;
  v17 = [(MOSuggestedEventManager *)self momentStore];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = __55__MOSuggestedEventManager_saveSuggestedEvents_handler___block_invoke;
  v28[3] = &unk_100337E98;
  v28[4] = v29;
  [v17 fetchEventsWithStartDateAfter:v8 Category:11 CompletionHandler:v28];

  v18 = [(MOSuggestedEventManager *)self momentStore];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = __55__MOSuggestedEventManager_saveSuggestedEvents_handler___block_invoke_3;
  v27[3] = &unk_100337E98;
  v27[4] = v29;
  [v18 fetchEventsWithStartDateAfter:v8 Category:12 CompletionHandler:v27];

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = __55__MOSuggestedEventManager_saveSuggestedEvents_handler___block_invoke_5;
  v26[3] = &unk_100337EE0;
  v26[4] = self;
  v26[5] = v29;
  v19 = [v9 _pas_mappedArrayWithTransform:v26];
  v20 = [(MOSuggestedEventManager *)self momentStore];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __55__MOSuggestedEventManager_saveSuggestedEvents_handler___block_invoke_6;
  v23[3] = &unk_1003377B8;
  v21 = v19;
  v24 = v21;
  v22 = v7;
  v25 = v22;
  [v20 storeEvents:v21 CompletionHandler:v23];

  _Block_object_dispose(v29, 8);
}

void __55__MOSuggestedEventManager_saveSuggestedEvents_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSMutableSet alloc];
  v8 = [v3 _pas_mappedArrayWithTransform:&__block_literal_global_14];

  v5 = [v4 initWithArray:v8];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __55__MOSuggestedEventManager_saveSuggestedEvents_handler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 _pas_mappedArrayWithTransform:&__block_literal_global_125];
  [v2 addObjectsFromArray:v3];
}

id __55__MOSuggestedEventManager_saveSuggestedEvents_handler___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) createEventFromSuggestedEvent:a2];
  v4 = v3;
  if (v3 && (v5 = *(*(*(a1 + 40) + 8) + 40), [v3 identifierFromProvider], v6 = objc_claimAutoreleasedReturnValue(), LOBYTE(v5) = objc_msgSend(v5, "containsObject:", v6), v6, (v5 & 1) == 0))
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __55__MOSuggestedEventManager_saveSuggestedEvents_handler___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilitySuggestedEvent);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [*(a1 + 32) count];
    v11 = 134217984;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "saved suggested events, count, %lu", &v11, 0xCu);
  }

  if (v5)
  {
    v9 = _mo_log_facility_get_os_log(&MOLogFacilitySuggestedEvent);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __55__MOSuggestedEventManager_saveSuggestedEvents_handler___block_invoke_6_cold_1();
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v6);
  }
}

- (void)fetchAndSaveSuggestedEventBetweenStartDate:(id)a3 EndDate:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__12;
  v16[4] = __Block_byref_object_dispose__12;
  v17 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __86__MOSuggestedEventManager_fetchAndSaveSuggestedEventBetweenStartDate_EndDate_handler___block_invoke;
  v15[3] = &unk_100337F08;
  v15[4] = v16;
  [(MOSuggestedEventManager *)self _fetchTripsBetweenStartDate:v8 EndDate:v9 CompletionHandler:v15];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __86__MOSuggestedEventManager_fetchAndSaveSuggestedEventBetweenStartDate_EndDate_handler___block_invoke_2;
  v12[3] = &unk_100337F58;
  v11 = v10;
  v12[4] = self;
  v13 = v11;
  v14 = v16;
  [(MOSuggestedEventManager *)self fetchSuggestedEventBetweenStartDate:v8 EndDate:v9 CompletionHandler:v12];

  _Block_object_dispose(v16, 8);
}

void __86__MOSuggestedEventManager_fetchAndSaveSuggestedEventBetweenStartDate_EndDate_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v3;
  v7 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      v10 = 0;
      do
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v24 + 1) + 8 * v10);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v12 = [v11 tripParts];
        v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v21;
          do
          {
            v16 = 0;
            do
            {
              if (*v21 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(*(a1 + 32) + 8) + 40);
              v18 = [*(*(&v20 + 1) + 8 * v16) eventIdentifiers];
              [v17 addObjectsFromArray:v18];

              v16 = v16 + 1;
            }

            while (v14 != v16);
            v14 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v14);
        }

        v10 = v10 + 1;
      }

      while (v10 != v8);
      v8 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }
}

void __86__MOSuggestedEventManager_fetchAndSaveSuggestedEventBetweenStartDate_EndDate_handler___block_invoke_2(uint64_t a1, void *a2, void *a3)
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
    v8 = *(a1 + 32);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __86__MOSuggestedEventManager_fetchAndSaveSuggestedEventBetweenStartDate_EndDate_handler___block_invoke_3;
    v12[3] = &unk_100337F30;
    v12[4] = *(a1 + 48);
    v9 = [v5 _pas_filteredArrayWithTest:v12];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __86__MOSuggestedEventManager_fetchAndSaveSuggestedEventBetweenStartDate_EndDate_handler___block_invoke_4;
    v10[3] = &unk_100336198;
    v11 = *(a1 + 40);
    [v8 saveSuggestedEvents:v9 handler:v10];
  }
}

uint64_t __86__MOSuggestedEventManager_fetchAndSaveSuggestedEventBetweenStartDate_EndDate_handler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 eventIdentifier];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

uint64_t __86__MOSuggestedEventManager_fetchAndSaveSuggestedEventBetweenStartDate_EndDate_handler___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_enrichSuggestedEventsWithEventKit:(id)a3
{
  v4 = a3;
  if (!self->_ekStore)
  {
    v5 = [[EKEventStore alloc] initWithEKOptions:128];
    ekStore = self->_ekStore;
    self->_ekStore = v5;
  }

  if (!self->_calendarInternPool)
  {
    v7 = objc_opt_new();
    calendarInternPool = self->_calendarInternPool;
    self->_calendarInternPool = v7;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        v15 = self->_ekStore;
        v16 = [v14 suggestedEventIdentifier];
        v17 = [(EKEventStore *)v15 eventWithIdentifier:v16];

        v18 = [[PPEvent alloc] initWithEKEvent:v17 calendarInternPool:self->_calendarInternPool];
        [v14 setSuggestedEvent:v18];
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }
}

- (id)rehydratedSuggestedEvents:(id)a3
{
  v4 = a3;
  v5 = [v4 getDurationOfMOEventArray];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__12;
  v17 = __Block_byref_object_dispose__12;
  v18 = 0;
  v6 = [v5 startDate];
  v7 = [v5 endDate];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __53__MOSuggestedEventManager_rehydratedSuggestedEvents___block_invoke;
  v12[3] = &unk_100337E98;
  v12[4] = &v13;
  [(MOSuggestedEventManager *)self fetchSuggestedEventBetweenStartDate:v6 EndDate:v7 CompletionHandler:v12];

  [(MOSuggestedEventManager *)self waitForQueueEmpty];
  if (v14[5])
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __53__MOSuggestedEventManager_rehydratedSuggestedEvents___block_invoke_134;
    v11[3] = &unk_100337F80;
    v11[4] = &v13;
    v8 = [v4 _pas_mappedArrayWithTransform:v11];
    [(MOSuggestedEventManager *)self _enrichSuggestedEventsWithEventKit:v8];
  }

  else
  {
    v9 = _mo_log_facility_get_os_log(&MOLogFacilitySuggestedEvent);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [MOSuggestedEventManager rehydratedSuggestedEvents:];
    }

    v8 = &__NSArray0__struct;
  }

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __53__MOSuggestedEventManager_rehydratedSuggestedEvents___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  v5 = *(*(a1 + 32) + 8);
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
        v13 = *(*(*(a1 + 32) + 8) + 40);
        v14 = [v12 eventIdentifier];
        [v13 setObject:v12 forKeyedSubscript:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

id __53__MOSuggestedEventManager_rehydratedSuggestedEvents___block_invoke_134(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v5 = [v3 identifierFromProvider];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [v3 copy];
    v8 = [v3 identifierFromProvider];
    [v7 setIdentifierFromProvider:v8];

    v9 = [v3 suggestedEventIdentifier];
    [v7 setSuggestedEventIdentifier:v9];

    v10 = [v6 title];

    if (v10)
    {
      v11 = [v6 title];
      [v7 setSuggestedEventTitle:v11];
    }

    [v7 setSuggestedEventCategory:{objc_msgSend(v6, "category")}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)removeSuggestedEventsDeletedAtSource:(id)a3 handler:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __72__MOSuggestedEventManager_removeSuggestedEventsDeletedAtSource_handler___block_invoke;
  v7[3] = &unk_100336198;
  v8 = a4;
  v6 = v8;
  [(MOSuggestedEventManager *)self _removeSuggestedEventsDeletedAtSource:a3 handler:v7];
  [(MOSuggestedEventManager *)self waitForQueueEmpty];
}

uint64_t __72__MOSuggestedEventManager_removeSuggestedEventsDeletedAtSource_handler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_removeSuggestedEventsDeletedAtSource:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 getDurationOfMOEventArray];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__12;
  v26 = __Block_byref_object_dispose__12;
  v27 = 0;
  v9 = [v8 startDate];
  v10 = [v8 endDate];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = __73__MOSuggestedEventManager__removeSuggestedEventsDeletedAtSource_handler___block_invoke;
  v21[3] = &unk_100337E98;
  v21[4] = &v22;
  [(MOSuggestedEventManager *)self fetchSuggestedEventBetweenStartDate:v9 EndDate:v10 CompletionHandler:v21];

  [(MOSuggestedEventManager *)self waitForQueueEmpty];
  if (v23[5])
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = __73__MOSuggestedEventManager__removeSuggestedEventsDeletedAtSource_handler___block_invoke_135;
    v20[3] = &unk_100337F80;
    v20[4] = &v22;
    v11 = [v6 _pas_mappedArrayWithTransform:v20];
    v12 = _mo_log_facility_get_os_log(&MOLogFacilitySuggestedEvent);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v11 count];
      *buf = 134217984;
      v29 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%ld source suggested event(s) not found, therefore deleting them.", buf, 0xCu);
    }

    v14 = [(MOSuggestedEventManager *)self momentStore];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __73__MOSuggestedEventManager__removeSuggestedEventsDeletedAtSource_handler___block_invoke_136;
    v17[3] = &unk_1003377B8;
    v15 = v11;
    v18 = v15;
    v19 = v7;
    [v14 removeEvents:v15 CompletionHandler:v17];
  }

  else
  {
    v16 = _mo_log_facility_get_os_log(&MOLogFacilitySuggestedEvent);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [MOSuggestedEventManager _removeSuggestedEventsDeletedAtSource:handler:];
    }

    if (v7)
    {
      (*(v7 + 2))(v7, 0, &__NSDictionary0__struct);
    }
  }

  _Block_object_dispose(&v22, 8);
}

void __73__MOSuggestedEventManager__removeSuggestedEventsDeletedAtSource_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  v5 = *(*(a1 + 32) + 8);
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
        v13 = *(*(*(a1 + 32) + 8) + 40);
        v14 = [v12 eventIdentifier];
        [v13 setObject:v12 forKeyedSubscript:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

id __73__MOSuggestedEventManager__removeSuggestedEventsDeletedAtSource_handler___block_invoke_135(uint64_t a1, void *a2)
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

void __73__MOSuggestedEventManager__removeSuggestedEventsDeletedAtSource_handler___block_invoke_136(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilitySuggestedEvent);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __73__MOSuggestedEventManager__removeSuggestedEventsDeletedAtSource_handler___block_invoke_136_cold_1(a1, v5, v8);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = [*(a1 + 32) count];
    v11 = 134217984;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Deleting %ld suggested event in database succeeded!", &v11, 0xCu);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v6);
  }
}

void __81__MOSuggestedEventManager__fetchTripsBetweenStartDate_EndDate_CompletionHandler___block_invoke_cold_1(uint64_t a1)
{
  v6 = *(*a1 + 40);
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __89__MOSuggestedEventManager_fetchSuggestedEventBetweenStartDate_EndDate_CompletionHandler___block_invoke_cold_1(uint64_t a1)
{
  v6 = *(*a1 + 40);
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __89__MOSuggestedEventManager_fetchSuggestedEventBetweenStartDate_EndDate_CompletionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  v6 = *(*(*a1 + 8) + 40);
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __73__MOSuggestedEventManager__removeSuggestedEventsDeletedAtSource_handler___block_invoke_136_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = [*(a1 + 32) count];
  v6 = 134218242;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Deleting %ld suggested event in database failed, error %@", &v6, 0x16u);
}

@end