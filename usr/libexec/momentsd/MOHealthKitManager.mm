@interface MOHealthKitManager
+ (id)convertBiologicalSexObjToString:(id)a3;
- (MOHealthKitManager)initWithUniverse:(id)a3;
- (id)_createEventFromMindfulSession:(id)a3;
- (id)_createEventFromStateOfMind:(id)a3;
- (id)_createEventFromWorkout:(id)a3;
- (id)_createQueryBasedonEvents:(id)a3 withPredicate:(id)a4;
- (id)_findUnrehydratedEventsWithStoredEvents:(id)a3 stateOfMind:(id)a4;
- (id)_findUnrehydratedEventsWithStoredEvents:(id)a3 workouts:(id)a4;
- (void)_createEventsFromStateOfMind:(id)a3 handler:(id)a4;
- (void)_createEventsFromWorkout:(id)a3 handler:(id)a4;
- (void)_createNewEventsFromStateOfMind:(id)a3 storedEvents:(id)a4 handler:(id)a5;
- (void)_createNewEventsFromWorkouts:(id)a3 storedEvents:(id)a4 handler:(id)a5;
- (void)_fetchLocationsFrom:(id)a3 handler:(id)a4;
- (void)_fetchMindfulSessionBetweenStartDate:(id)a3 EndDate:(id)a4 CompletionHandler:(id)a5;
- (void)_fetchStateOfMindBetweenStartDate:(id)a3 EndDate:(id)a4 CompletionHandler:(id)a5;
- (void)_fetchStateOfMindEventsBetweenStartDate:(id)a3 endDate:(id)a4 withStoredEvents:(id)a5 handler:(id)a6;
- (void)_fetchUserAgeWithHandler:(id)a3;
- (void)_fetchUserBiologicalSexWithHandler:(id)a3;
- (void)_fetchWorkoutEventsBetweenStartDate:(id)a3 endDate:(id)a4 withStoredEvents:(id)a5 handler:(id)a6;
- (void)_fetchWorkoutRouteLocations:(id)a3 CompletionHandler:(id)a4;
- (void)_fetchWorkoutRoutes:(id)a3 CompletionHandler:(id)a4;
- (void)_fetchWorkoutsBetweenStartDate:(id)a3 EndDate:(id)a4 CompletionHandler:(id)a5;
- (void)_rehydrateStateOfMind:(id)a3 handler:(id)a4;
- (void)_rehydrateStoredEvents:(id)a3 fromMindfulSession:(id)a4 handler:(id)a5;
- (void)_rehydrateStoredEvents:(id)a3 fromStateOfMind:(id)a4 handler:(id)a5;
- (void)_rehydrateStoredEvents:(id)a3 fromWorkouts:(id)a4 handler:(id)a5;
- (void)_rehydrateWorkouts:(id)a3 handler:(id)a4;
- (void)_saveMindfulSessions:(id)a3 handler:(id)a4;
- (void)_saveWorkouts:(id)a3 handler:(id)a4;
- (void)_setDynamicProperties:(id)a3 mindfulSession:(id)a4;
- (void)_setDynamicProperties:(id)a3 stateOfMind:(id)a4;
- (void)_setDynamicProperties:(id)a3 workout:(id)a4;
- (void)fetchStateOfMindEventsBetweenStartDate:(id)a3 endDate:(id)a4 withStoredEvents:(id)a5 handler:(id)a6;
- (void)fetchUserAgeWithHandler:(id)a3;
- (void)fetchUserBiologicalSexWithHandler:(id)a3;
- (void)fetchWorkoutEventsBetweenStartDate:(id)a3 endDate:(id)a4 withStoredEvents:(id)a5 handler:(id)a6;
- (void)rehydrateStateOfMind:(id)a3 handler:(id)a4;
- (void)rehydrateWorkouts:(id)a3 handler:(id)a4;
@end

@implementation MOHealthKitManager

- (MOHealthKitManager)initWithUniverse:(id)a3
{
  v5 = a3;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 getService:v7];

  if (v8)
  {
    v9 = objc_alloc_init(HKHealthStore);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v5 getService:v11];

    if (v12)
    {
      if (v9)
      {
        v22.receiver = self;
        v22.super_class = MOHealthKitManager;
        v13 = [(MOHealthKitManager *)&v22 init];
        if (v13)
        {
          v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
          v15 = dispatch_queue_create("MOHealthKitManager", v14);
          queue = v13->_queue;
          v13->_queue = v15;

          objc_storeStrong(&v13->_healthStore, v9);
          objc_storeStrong(&v13->_eventStore, v12);
          objc_storeStrong(&v13->_configurationManager, v8);
        }

        self = v13;
        v17 = self;
        goto LABEL_14;
      }
    }

    else
    {
      v19 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [MORoutineServiceManager initWithUniverse:];
      }

      v20 = +[NSAssertionHandler currentHandler];
      [v20 handleFailureInMethod:a2 object:self file:@"MOHealthKitManager.m" lineNumber:54 description:@"Invalid parameter not satisfying: eventStore"];
    }

    v17 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v18 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [MOEventStore initWithUniverse:];
  }

  v9 = +[NSAssertionHandler currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"MOHealthKitManager.m" lineNumber:47 description:@"Invalid parameter not satisfying: configurationManager"];
  v17 = 0;
LABEL_15:

  return v17;
}

- (void)_fetchWorkoutsBetweenStartDate:(id)a3 EndDate:(id)a4 CompletionHandler:(id)a5
{
  v8 = a5;
  v9 = [HKQuery predicateForSamplesWithStartDate:a3 endDate:a4 options:2];
  v10 = [[NSSortDescriptor alloc] initWithKey:HKSampleSortIdentifierEndDate ascending:0];
  v21 = v10;
  v11 = [NSArray arrayWithObjects:&v21 count:1];

  v12 = [(MOHealthKitManager *)self queue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __79__MOHealthKitManager__fetchWorkoutsBetweenStartDate_EndDate_CompletionHandler___block_invoke;
  v16[3] = &unk_100340848;
  v17 = v9;
  v18 = v11;
  v19 = self;
  v20 = v8;
  v13 = v8;
  v14 = v11;
  v15 = v9;
  dispatch_async(v12, v16);
}

void __79__MOHealthKitManager__fetchWorkoutsBetweenStartDate_EndDate_CompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [HKSampleQuery alloc];
  v3 = +[HKObjectType workoutType];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __79__MOHealthKitManager__fetchWorkoutsBetweenStartDate_EndDate_CompletionHandler___block_invoke_2;
  v8[3] = &unk_100338400;
  v9 = *(a1 + 56);
  v6 = [v2 initWithSampleType:v3 predicate:v4 limit:0 sortDescriptors:v5 resultsHandler:v8];

  v7 = [*(a1 + 48) healthStore];
  [v7 executeQuery:v6];
}

void __79__MOHealthKitManager__fetchWorkoutsBetweenStartDate_EndDate_CompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v13 = *(*(a1 + 32) + 16);
LABEL_8:
    v13();
    goto LABEL_9;
  }

  v10 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    __79__MOHealthKitManager__fetchWorkoutsBetweenStartDate_EndDate_CompletionHandler___block_invoke_2_cold_1();
  }

  if ([v9 code] != 6)
  {
    v13 = *(*(a1 + 32) + 16);
    goto LABEL_8;
  }

  v14 = NSLocalizedDescriptionKey;
  v15 = @"Provider database is unavailable (workouts)";
  v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v12 = [NSError errorWithDomain:@"MOErrorDomain" code:1536 userInfo:v11];

  (*(*(a1 + 32) + 16))();
LABEL_9:
}

- (void)_fetchStateOfMindBetweenStartDate:(id)a3 EndDate:(id)a4 CompletionHandler:(id)a5
{
  v8 = a5;
  v9 = [HKQuery predicateForSamplesWithStartDate:a3 endDate:a4 options:2];
  v10 = [[NSSortDescriptor alloc] initWithKey:HKSampleSortIdentifierEndDate ascending:0];
  v21 = v10;
  v11 = [NSArray arrayWithObjects:&v21 count:1];

  v12 = [(MOHealthKitManager *)self queue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __82__MOHealthKitManager__fetchStateOfMindBetweenStartDate_EndDate_CompletionHandler___block_invoke;
  v16[3] = &unk_100340848;
  v17 = v9;
  v18 = v11;
  v19 = self;
  v20 = v8;
  v13 = v8;
  v14 = v11;
  v15 = v9;
  dispatch_async(v12, v16);
}

void __82__MOHealthKitManager__fetchStateOfMindBetweenStartDate_EndDate_CompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [HKSampleQuery alloc];
  v3 = +[HKStateOfMindType stateOfMindType];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __82__MOHealthKitManager__fetchStateOfMindBetweenStartDate_EndDate_CompletionHandler___block_invoke_2;
  v8[3] = &unk_100338400;
  v9 = *(a1 + 56);
  v6 = [v2 initWithSampleType:v3 predicate:v4 limit:0 sortDescriptors:v5 resultsHandler:v8];

  v7 = [*(a1 + 48) healthStore];
  [v7 executeQuery:v6];
}

void __82__MOHealthKitManager__fetchStateOfMindBetweenStartDate_EndDate_CompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v13 = *(*(a1 + 32) + 16);
LABEL_8:
    v13();
    goto LABEL_9;
  }

  v10 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    __82__MOHealthKitManager__fetchStateOfMindBetweenStartDate_EndDate_CompletionHandler___block_invoke_2_cold_1();
  }

  if ([v9 code] != 6)
  {
    v13 = *(*(a1 + 32) + 16);
    goto LABEL_8;
  }

  v14 = NSLocalizedDescriptionKey;
  v15 = @"Provider database is unavailable (stateOfMind)";
  v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v12 = [NSError errorWithDomain:@"MOErrorDomain" code:1536 userInfo:v11];

  (*(*(a1 + 32) + 16))();
LABEL_9:
}

- (id)_createEventFromWorkout:(id)a3
{
  v4 = a3;
  v5 = [MOEvent alloc];
  v6 = +[NSUUID UUID];
  v7 = [v4 startDate];
  v8 = [v4 endDate];
  v9 = +[NSDate date];
  v10 = [(MOEvent *)v5 initWithEventIdentifier:v6 startDate:v7 endDate:v8 creationDate:v9 provider:1 category:2];

  v11 = [v4 endDate];
  v12 = [(MOHealthKitManager *)self configurationManager];
  LODWORD(v13) = 1242802176;
  [v12 getFloatSettingForKey:@"EventManagerOverrideMaximumEventAge" withFallback:v13];
  v15 = [v11 dateByAddingTimeInterval:v14];
  [(MOEvent *)v10 setExpirationDate:v15];

  v16 = [v4 UUID];

  v17 = [v16 UUIDString];
  [(MOEvent *)v10 setIdentifierFromProvider:v17];

  return v10;
}

- (id)_createEventFromStateOfMind:(id)a3
{
  v4 = a3;
  v5 = [MOEvent alloc];
  v6 = +[NSUUID UUID];
  v7 = [v4 startDate];
  v8 = [v4 endDate];
  v9 = +[NSDate date];
  v10 = [(MOEvent *)v5 initWithEventIdentifier:v6 startDate:v7 endDate:v8 creationDate:v9 provider:1 category:24];

  v11 = [v4 endDate];
  v12 = [(MOHealthKitManager *)self configurationManager];
  LODWORD(v13) = 1242802176;
  [v12 getFloatSettingForKey:@"EventManagerOverrideMaximumEventAge" withFallback:v13];
  v15 = [v11 dateByAddingTimeInterval:v14];
  [(MOEvent *)v10 setExpirationDate:v15];

  v16 = [v4 UUID];

  v17 = [v16 UUIDString];
  [(MOEvent *)v10 setIdentifierFromProvider:v17];

  return v10;
}

- (void)_setDynamicProperties:(id)a3 stateOfMind:(id)a4
{
  v26 = a3;
  v5 = a4;
  v6 = [v5 sourceRevision];
  v7 = [v6 source];
  v8 = [v7 bundleIdentifier];
  [v26 setAppBundle:v8];

  v9 = [v5 sourceRevision];
  v10 = [v9 source];
  [v26 setFromFirstParty:{objc_msgSend(v10, "_hasFirstPartyBundleID")}];

  v11 = [v26 stateOfMindEvent];

  if (!v11)
  {
    v12 = objc_alloc_init(MOEventStateOfMind);
    [v26 setStateOfMindEvent:v12];
  }

  v13 = [v5 kind];
  v14 = [v26 stateOfMindEvent];
  [v14 setReflectiveInterval:v13];

  [v5 valence];
  v16 = v15;
  v17 = [v26 stateOfMindEvent];
  [v17 setValence:v16];

  [v5 valence];
  v18 = HKStateOfMindValenceClassificationForValence();
  [v18 doubleValue];
  v20 = v19;
  v21 = [v26 stateOfMindEvent];
  [v21 setValenceClassification:v20];

  v22 = [v5 labels];
  v23 = [v26 stateOfMindEvent];
  [v23 setLabels:v22];

  v24 = [v5 associations];
  v25 = [v26 stateOfMindEvent];
  [v25 setDomains:v24];
}

- (void)_setDynamicProperties:(id)a3 workout:(id)a4
{
  v36 = a3;
  v5 = a4;
  [v5 workoutActivityType];
  v6 = _HKWorkoutActivityNameForActivityType();
  v7 = [v6 copy];
  [v36 setWorkoutType:v7];

  v8 = [v5 sourceRevision];
  v9 = [v8 source];
  v10 = [v9 bundleIdentifier];
  [v36 setAppBundle:v10];

  v11 = [v5 sourceRevision];
  v12 = [v11 source];
  [v36 setFromFirstParty:{objc_msgSend(v12, "_hasFirstPartyBundleID")}];

  [v5 duration];
  v13 = [NSNumber numberWithDouble:?];
  [v36 setWorkoutDuration:v13];

  [v5 _totalDistanceInCanonicalUnit];
  v14 = [NSNumber numberWithDouble:?];
  [v36 setWorkoutTotalDistance:v14];

  [v5 _totalEnergyBurnedInCanonicalUnit];
  v15 = [NSNumber numberWithDouble:?];
  [v36 setWorkoutTotalEnergyBurned:v15];

  v16 = [v5 metadata];
  v17 = [v16 objectForKeyedSubscript:HKMetadataKeyAppleFitnessPlusSession];
  [v36 setIsFitnessPlusSession:{objc_msgSend(v17, "BOOLValue")}];

  v18 = [v5 metadata];
  v19 = [v18 objectForKeyedSubscript:HKMetadataKeyIndoorWorkout];
  v20 = [v19 BOOLValue];
  v21 = [v36 workoutEvent];
  [v21 setIsIndoors:v20];

  v22 = [v5 metadata];
  v23 = _HKPrivateMetadataKeyWorkoutWeatherLocationCoordinatesLatitude;
  v24 = [v22 objectForKeyedSubscript:_HKPrivateMetadataKeyWorkoutWeatherLocationCoordinatesLatitude];
  [v24 doubleValue];
  v26 = v25;

  if (v26 != 0.0)
  {
    v27 = [CLLocation alloc];
    v28 = [v5 metadata];
    v29 = [v28 objectForKeyedSubscript:v23];
    [v29 doubleValue];
    v31 = v30;
    v32 = [v5 metadata];
    v33 = [v32 objectForKeyedSubscript:_HKPrivateMetadataKeyWorkoutWeatherLocationCoordinatesLongitude];
    [v33 doubleValue];
    v35 = [v27 initWithLatitude:v31 longitude:v34];
    [v36 setWorkoutLocationStart:v35];
  }
}

- (void)_fetchWorkoutRoutes:(id)a3 CompletionHandler:(id)a4
{
  v6 = a4;
  v7 = [HKQuery predicateForObjectsFromWorkout:a3];
  v8 = [HKAnchoredObjectQuery alloc];
  v9 = +[HKSeriesType workoutRouteType];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __60__MOHealthKitManager__fetchWorkoutRoutes_CompletionHandler___block_invoke;
  v13[3] = &unk_100340870;
  v14 = v6;
  v10 = v6;
  v11 = [v8 initWithType:v9 predicate:v7 anchor:0 limit:0 resultsHandler:v13];

  v12 = [(MOHealthKitManager *)self healthStore];
  [v12 executeQuery:v11];
}

void __60__MOHealthKitManager__fetchWorkoutRoutes_CompletionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = a6;
  if (v7)
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __60__MOHealthKitManager__fetchWorkoutRoutes_CompletionHandler___block_invoke_cold_1();
    }

    v9 = *(*(a1 + 32) + 16);
  }

  else
  {
    v9 = *(*(a1 + 32) + 16);
  }

  v9();
}

- (void)_fetchWorkoutRouteLocations:(id)a3 CompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [HKWorkoutRouteQuery alloc];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __68__MOHealthKitManager__fetchWorkoutRouteLocations_CompletionHandler___block_invoke;
  v15[3] = &unk_100340898;
  v17 = v8;
  v18 = v7;
  v16 = v6;
  v10 = v8;
  v11 = v6;
  v12 = v7;
  v13 = [v9 initWithRoute:v11 dataHandler:v15];
  v14 = [(MOHealthKitManager *)self healthStore];
  [v14 executeQuery:v13];
}

void __68__MOHealthKitManager__fetchWorkoutRouteLocations_CompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, int a4, void *a5)
{
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __68__MOHealthKitManager__fetchWorkoutRouteLocations_CompletionHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v11 = [v8 count];
    if ([v8 count])
    {
      v12 = [*(a1 + 32) count];
      v13 = [v8 count] + v12 - 1;
      v14 = v13 / [v8 count];
      v11 = (v14 + 255) / v14;
      if (v11 > 1)
      {
        if (v11 >= [v8 count])
        {
          [*(a1 + 40) addObjectsFromArray:v8];
        }

        else
        {
          v19 = [RTLocationDownsampler downsampleLocations:v8 outputSize:v11];
          [*(a1 + 40) addObjectsFromArray:v19];
        }
      }

      else
      {
        if (![*(a1 + 40) count])
        {
          v15 = *(a1 + 40);
          v16 = [v8 firstObject];
          [v15 addObject:v16];
        }

        v17 = *(a1 + 40);
        v18 = [v8 lastObject];
        [v17 addObject:v18];
      }
    }

    v20 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v26 = [v8 count];
      v27 = [*(a1 + 40) count];
      v28 = [*(a1 + 32) count];
      v29 = 134219008;
      *v30 = v26;
      *&v30[8] = 1024;
      *&v30[10] = a4;
      v31 = 2048;
      v32 = v27;
      v33 = 2048;
      *v34 = v28;
      *&v34[8] = 2048;
      *&v34[10] = v11;
      _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "_fetchWorkoutRouteLocations,itemCount,%lu,done,%d,accu,%lu,workoutCount,%lu,target,%lu", &v29, 0x30u);
    }

    if (a4)
    {
      v21 = [RTLocationDownsampler downsampleLocations:*(a1 + 40) outputSize:64];
      v22 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = [*(a1 + 40) count];
        v24 = [v21 count];
        v25 = [*(a1 + 32) count];
        v29 = 67110144;
        *v30 = 4;
        *&v30[4] = 2048;
        *&v30[6] = v23;
        v31 = 2048;
        v32 = v24;
        v33 = 1024;
        *v34 = 64;
        *&v34[4] = 2048;
        *&v34[6] = v25;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "RTLocationDownsampler 2%d: in %lu, out %lu, target %d, raw %lu", &v29, 0x2Cu);
      }

      (*(*(a1 + 48) + 16))();
    }
  }
}

- (void)_saveWorkouts:(id)a3 handler:(id)a4
{
  v6 = a3;
  v21 = a4;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__48;
  v34 = __Block_byref_object_dispose__48;
  v35 = 0;
  eventStore = self->_eventStore;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = __44__MOHealthKitManager__saveWorkouts_handler___block_invoke;
  v29[3] = &unk_1003378A0;
  v29[4] = &v30;
  [(MOEventStore *)eventStore fetchLastEventOfCategory:2 CompletionHandler:v29];
  v22 = +[NSMutableArray array];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v36 count:16];
  if (v9)
  {
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        [v12 duration];
        if (v13 >= 60.0)
        {
          v14 = [(MOHealthKitManager *)self _createEventFromWorkout:v12];
          v15 = v14;
          if (!v31[5] || ([v14 startDate], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v31[5], "startDate"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "isAfterDate:", v17), v17, v16, v18))
          {
            [v22 addObject:v15];
          }
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v25 objects:v36 count:16];
    }

    while (v9);
  }

  v19 = self->_eventStore;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __44__MOHealthKitManager__saveWorkouts_handler___block_invoke_2;
  v23[3] = &unk_100336198;
  v20 = v21;
  v24 = v20;
  [(MOEventStore *)v19 storeEvents:v22 CompletionHandler:v23];

  _Block_object_dispose(&v30, 8);
}

void __44__MOHealthKitManager__saveWorkouts_handler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __44__MOHealthKitManager__saveWorkouts_handler___block_invoke_2_cold_1();
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }
}

- (id)_createQueryBasedonEvents:(id)a3 withPredicate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(NSMutableArray);
  v8 = [v5 firstObject];
  v9 = [v8 category];

  if (v9 == 2)
  {
    v10 = [HKQueryDescriptor alloc];
    v11 = +[HKObjectType workoutType];
    v12 = [v10 initWithSampleType:v11 predicate:v6];

    v13 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v27 = 0;
      v14 = "start rehydrating workout";
      v15 = &v27;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, v14, v15, 2u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v16 = [v5 firstObject];
  v17 = [v16 category];

  if (v17 == 13)
  {
    v18 = [HKQueryDescriptor alloc];
    v19 = [HKSampleType categoryTypeForIdentifier:HKCategoryTypeIdentifierMindfulSession];
    v12 = [v18 initWithSampleType:v19 predicate:v6];

    v13 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v26 = 0;
      v14 = "start rehydrating mindful session";
      v15 = &v26;
      goto LABEL_10;
    }

LABEL_11:

    [v7 addObject:v12];
    goto LABEL_12;
  }

  v20 = [v5 firstObject];
  v21 = [v20 category];

  if (v21 == 24)
  {
    v22 = [HKQueryDescriptor alloc];
    v23 = +[HKObjectType stateOfMindType];
    v12 = [v22 initWithSampleType:v23 predicate:v6];

    v13 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v25 = 0;
      v14 = "start rehydrating state of mind";
      v15 = &v25;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v12 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [MOHealthKitManager _createQueryBasedonEvents:withPredicate:];
  }

LABEL_12:

  return v7;
}

- (void)rehydrateWorkouts:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MOHealthKitManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __48__MOHealthKitManager_rehydrateWorkouts_handler___block_invoke;
  block[3] = &unk_100336A58;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_rehydrateWorkouts:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = __49__MOHealthKitManager__rehydrateWorkouts_handler___block_invoke;
  v24[3] = &unk_100338810;
  v8 = objc_opt_new();
  v25 = v8;
  [v6 enumerateObjectsUsingBlock:v24];
  v9 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v8 count];
    *buf = 134217984;
    v27 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "start rehydrating health data, identifier count, %lu", buf, 0xCu);
  }

  if ([v8 count])
  {
    v11 = [NSSet setWithArray:v8];
    v12 = [HKQuery predicateForObjectsWithUUIDs:v11];

    v13 = [(MOHealthKitManager *)self _createQueryBasedonEvents:v6 withPredicate:v12];
    if ([v13 count])
    {
      v14 = [HKSampleQuery alloc];
      v17 = _NSConcreteStackBlock;
      v18 = 3221225472;
      v19 = __49__MOHealthKitManager__rehydrateWorkouts_handler___block_invoke_445;
      v20 = &unk_1003408C0;
      v23 = v7;
      v21 = v6;
      v22 = self;
      v15 = [v14 initWithQueryDescriptors:v13 limit:0 resultsHandler:&v17];
      v16 = [(MOHealthKitManager *)self healthStore:v17];
      [v16 executeQuery:v15];
    }

    else if (v7)
    {
      (*(v7 + 2))(v7, &__NSArray0__struct, 0);
    }
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, &__NSArray0__struct, 0);
  }
}

void __49__MOHealthKitManager__rehydrateWorkouts_handler___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 identifierFromProvider];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [NSUUID alloc];
    v6 = [v8 identifierFromProvider];
    v7 = [v5 initWithUUIDString:v6];
    [v4 addObject:v7];
  }
}

void __49__MOHealthKitManager__rehydrateWorkouts_handler___block_invoke_445(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __49__MOHealthKitManager__rehydrateWorkouts_handler___block_invoke_445_cold_1();
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v9 = [*(a1 + 32) firstObject];
    v10 = [v9 category];

    if (v10 == 2)
    {
      v12 = *(a1 + 32);
      v11 = *(a1 + 40);
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = __49__MOHealthKitManager__rehydrateWorkouts_handler___block_invoke_446;
      v19[3] = &unk_1003369E0;
      v20 = *(a1 + 48);
      [v11 _rehydrateStoredEvents:v12 fromWorkouts:v6 handler:v19];
    }

    v13 = [*(a1 + 32) firstObject];
    v14 = [v13 category];

    if (v14 == 13)
    {
      v16 = *(a1 + 32);
      v15 = *(a1 + 40);
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = __49__MOHealthKitManager__rehydrateWorkouts_handler___block_invoke_2;
      v17[3] = &unk_1003369E0;
      v18 = *(a1 + 48);
      [v15 _rehydrateStoredEvents:v16 fromMindfulSession:v6 handler:v17];
    }
  }
}

- (void)rehydrateStateOfMind:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MOHealthKitManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __51__MOHealthKitManager_rehydrateStateOfMind_handler___block_invoke;
  block[3] = &unk_100336A58;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_rehydrateStateOfMind:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = __52__MOHealthKitManager__rehydrateStateOfMind_handler___block_invoke;
  v24[3] = &unk_100338810;
  v8 = objc_opt_new();
  v25 = v8;
  [v6 enumerateObjectsUsingBlock:v24];
  v9 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v8 count];
    *buf = 134217984;
    v27 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "start rehydrating state of mind data, identifier count, %lu", buf, 0xCu);
  }

  if ([v8 count])
  {
    v11 = [NSSet setWithArray:v8];
    v12 = [HKQuery predicateForObjectsWithUUIDs:v11];

    v13 = [(MOHealthKitManager *)self _createQueryBasedonEvents:v6 withPredicate:v12];
    if ([v13 count])
    {
      v14 = [HKSampleQuery alloc];
      v17 = _NSConcreteStackBlock;
      v18 = 3221225472;
      v19 = __52__MOHealthKitManager__rehydrateStateOfMind_handler___block_invoke_448;
      v20 = &unk_1003408C0;
      v23 = v7;
      v21 = v6;
      v22 = self;
      v15 = [v14 initWithQueryDescriptors:v13 limit:0 resultsHandler:&v17];
      v16 = [(MOHealthKitManager *)self healthStore:v17];
      [v16 executeQuery:v15];
    }

    else if (v7)
    {
      (*(v7 + 2))(v7, &__NSArray0__struct, 0);
    }
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, &__NSArray0__struct, 0);
  }
}

void __52__MOHealthKitManager__rehydrateStateOfMind_handler___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 identifierFromProvider];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [NSUUID alloc];
    v6 = [v8 identifierFromProvider];
    v7 = [v5 initWithUUIDString:v6];
    [v4 addObject:v7];
  }
}

void __52__MOHealthKitManager__rehydrateStateOfMind_handler___block_invoke_448(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __49__MOHealthKitManager__rehydrateWorkouts_handler___block_invoke_445_cold_1();
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v9 = [*(a1 + 32) firstObject];
    v10 = [v9 category];

    if (v10 == 24)
    {
      v12 = *(a1 + 32);
      v11 = *(a1 + 40);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = __52__MOHealthKitManager__rehydrateStateOfMind_handler___block_invoke_449;
      v13[3] = &unk_1003369E0;
      v14 = *(a1 + 48);
      [v11 _rehydrateStoredEvents:v12 fromStateOfMind:v6 handler:v13];
    }
  }
}

- (void)_rehydrateStoredEvents:(id)a3 fromWorkouts:(id)a4 handler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v34 = a5;
  v35 = v7;
  v33 = v8;
  if ([v7 count])
  {
    if ([v8 count])
    {
      v67[0] = _NSConcreteStackBlock;
      v67[1] = 3221225472;
      v67[2] = __66__MOHealthKitManager__rehydrateStoredEvents_fromWorkouts_handler___block_invoke;
      v67[3] = &unk_100338810;
      v38 = objc_opt_new();
      v68 = v38;
      [v7 enumerateObjectsUsingBlock:v67];
      v9 = [v38 allKeys];
      v10 = [v9 count] == 0;

      if (v10)
      {
        v32 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          [MOHealthKitManager _rehydrateStoredEvents:fromWorkouts:handler:];
        }

        v34[2](v34, &__NSArray0__struct, 0);
      }

      else
      {
        *buf = 0;
        v62 = buf;
        v63 = 0x3032000000;
        v64 = __Block_byref_object_copy__48;
        v65 = __Block_byref_object_dispose__48;
        v66 = objc_alloc_init(NSMutableArray);
        v55 = 0;
        v56 = &v55;
        v57 = 0x3032000000;
        v58 = __Block_byref_object_copy__48;
        v59 = __Block_byref_object_dispose__48;
        v60 = objc_alloc_init(NSMutableArray);
        v11 = dispatch_group_create();
        v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v37 = dispatch_queue_create("com.apple.health.workout.rehydrate", v12);

        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        obj = v33;
        v13 = [obj countByEnumeratingWithState:&v51 objects:v70 count:16];
        if (v13)
        {
          v14 = *v52;
          do
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v52 != v14)
              {
                objc_enumerationMutation(obj);
              }

              v16 = *(*(&v51 + 1) + 8 * i);
              v17 = [v16 UUID];
              v18 = [v17 UUIDString];
              v19 = [v38 objectForKeyedSubscript:v18];

              if (v19)
              {
                dispatch_group_enter(v11);
                v20 = [v19 copy];
                if ([v19 rehydrationFailCount])
                {
                  v21 = -[MORehydrationThresholdMetrics initWithCategory:provider:failureCount:]([MORehydrationThresholdMetrics alloc], "initWithCategory:provider:failureCount:", [v19 category], objc_msgSend(v19, "provider"), objc_msgSend(v19, "rehydrationFailCount"));
                  v50 = 0;
                  [(MORehydrationThresholdMetrics *)v21 submitMetricsWithError:&v50];
                  v22 = v50;
                  [v20 setRehydrationFailCount:0];
                  [v56[5] addObject:v19];
                }

                [(MOHealthKitManager *)self _setDynamicProperties:v20 workout:v16];
                v45[0] = _NSConcreteStackBlock;
                v45[1] = 3221225472;
                v45[2] = __66__MOHealthKitManager__rehydrateStoredEvents_fromWorkouts_handler___block_invoke_454;
                v45[3] = &unk_1003408E8;
                v23 = v20;
                v46 = v23;
                v47 = v37;
                v49 = buf;
                v48 = v11;
                [(MOHealthKitManager *)self _fetchLocationsFrom:v16 handler:v45];
              }
            }

            v13 = [obj countByEnumeratingWithState:&v51 objects:v70 count:16];
          }

          while (v13);
        }

        v24 = [(MOHealthKitManager *)self queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = __66__MOHealthKitManager__rehydrateStoredEvents_fromWorkouts_handler___block_invoke_3;
        block[3] = &unk_100340910;
        v43 = buf;
        v41 = v35;
        v42 = v34;
        v44 = &v55;
        dispatch_group_notify(v11, v24, block);

        _Block_object_dispose(&v55, 8);
        _Block_object_dispose(buf, 8);
      }
    }

    else
    {
      v26 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "no workouts for rehydrating workout events", buf, 2u);
      }

      v34[2](v34, &__NSArray0__struct, 0);
      v27 = [MORehydrationMetrics alloc];
      v28 = [v35 firstObject];
      v29 = [v28 category];
      v30 = [v35 firstObject];
      v31 = -[MORehydrationMetrics initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:](v27, "initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:", v29, [v30 provider], 1, 0, objc_msgSend(v35, "count"), 3, objc_msgSend(v35, "count"), 0.0);

      v69 = 0;
      [(MORehydrationMetrics *)v31 submitMetricsWithError:&v69];
    }
  }

  else
  {
    v25 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "no input events for rehydrating workout events", buf, 2u);
    }

    v34[2](v34, &__NSArray0__struct, 0);
  }
}

void __66__MOHealthKitManager__rehydrateStoredEvents_fromWorkouts_handler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 identifierFromProvider];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 identifierFromProvider];
    [v4 setObject:v6 forKey:v5];
  }
}

void __66__MOHealthKitManager__rehydrateStoredEvents_fromWorkouts_handler___block_invoke_454(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setWorkoutLocationRoute:a2];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __66__MOHealthKitManager__rehydrateStoredEvents_fromWorkouts_handler___block_invoke_2;
  v4[3] = &unk_10033C6A8;
  v6 = *(a1 + 56);
  v3 = *(a1 + 40);
  v5 = *(a1 + 32);
  dispatch_sync(v3, v4);
  dispatch_group_leave(*(a1 + 48));
}

void __66__MOHealthKitManager__rehydrateStoredEvents_fromWorkouts_handler___block_invoke_3(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(*(*(a1 + 48) + 8) + 40) count];
    v4 = [*(a1 + 32) count];
    *buf = 134218240;
    v13 = v3;
    v14 = 2048;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "rehydrated workout count, %lu, stored workout count, %lu", buf, 0x16u);
  }

  v5 = *(*(*(a1 + 48) + 8) + 40);
  (*(*(a1 + 40) + 16))();
  v6 = [MORehydrationMetrics alloc];
  v7 = [*(a1 + 32) firstObject];
  v8 = [v7 category];
  v9 = [*(a1 + 32) firstObject];
  v10 = -[MORehydrationMetrics initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:](v6, "initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:", v8, [v9 provider], 1, 0, objc_msgSend(*(a1 + 32), "count"), 3, (objc_msgSend(*(a1 + 32), "count") - objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "count")), objc_msgSend(*(*(*(a1 + 56) + 8) + 40), "count"));

  v11 = 0;
  [(MORehydrationMetrics *)v10 submitMetricsWithError:&v11];
}

- (void)_rehydrateStoredEvents:(id)a3 fromStateOfMind:(id)a4 handler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (![v7 count])
  {
    v24 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [MOHealthKitManager _rehydrateStoredEvents:fromStateOfMind:handler:];
    }

    goto LABEL_19;
  }

  if (![v8 count])
  {
    v24 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [MOHealthKitManager _rehydrateStoredEvents:fromStateOfMind:handler:];
    }

LABEL_19:

    v9[2](v9, &__NSArray0__struct, 0);
    goto LABEL_20;
  }

  v25 = v9;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = __69__MOHealthKitManager__rehydrateStoredEvents_fromStateOfMind_handler___block_invoke;
  v33[3] = &unk_100338810;
  v10 = objc_opt_new();
  v34 = v10;
  v27 = v7;
  [v7 enumerateObjectsUsingBlock:v33];
  v11 = objc_alloc_init(NSMutableArray);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v26 = v8;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v29 + 1) + 8 * i);
        v18 = [v17 UUID];
        v19 = [v18 UUIDString];
        v20 = [v10 objectForKeyedSubscript:v19];

        if (v20)
        {
          v21 = [v20 copy];
          [(MOHealthKitManager *)self _setDynamicProperties:v21 stateOfMind:v17];
          [v11 addObject:v21];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v14);
  }

  v22 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = [v11 count];
    *buf = 134217984;
    v36 = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "health data rehydrated state of mind count, %lu", buf, 0xCu);
  }

  v9 = v25;
  v25[2](v25, v11, 0);

  v8 = v26;
  v7 = v27;
LABEL_20:
}

void __69__MOHealthKitManager__rehydrateStoredEvents_fromStateOfMind_handler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 identifierFromProvider];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 identifierFromProvider];
    [v4 setObject:v6 forKey:v5];
  }
}

- (void)_rehydrateStoredEvents:(id)a3 fromMindfulSession:(id)a4 handler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (![v7 count])
  {
    v24 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [MOHealthKitManager _rehydrateStoredEvents:fromMindfulSession:handler:];
    }

    goto LABEL_19;
  }

  if (![v8 count])
  {
    v24 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [MOHealthKitManager _rehydrateStoredEvents:fromMindfulSession:handler:];
    }

LABEL_19:

    v9[2](v9, &__NSArray0__struct, 0);
    goto LABEL_20;
  }

  v25 = v9;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = __72__MOHealthKitManager__rehydrateStoredEvents_fromMindfulSession_handler___block_invoke;
  v33[3] = &unk_100338810;
  v10 = objc_opt_new();
  v34 = v10;
  v27 = v7;
  [v7 enumerateObjectsUsingBlock:v33];
  v11 = objc_alloc_init(NSMutableArray);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v26 = v8;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v29 + 1) + 8 * i);
        v18 = [v17 UUID];
        v19 = [v18 UUIDString];
        v20 = [v10 objectForKeyedSubscript:v19];

        if (v20)
        {
          v21 = [v20 copy];
          [(MOHealthKitManager *)self _setDynamicProperties:v21 mindfulSession:v17];
          [v11 addObject:v21];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v14);
  }

  v22 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = [v11 count];
    *buf = 134217984;
    v36 = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "health data rehydrated mindful sessions count, %lu", buf, 0xCu);
  }

  v9 = v25;
  v25[2](v25, v11, 0);

  v8 = v26;
  v7 = v27;
LABEL_20:
}

void __72__MOHealthKitManager__rehydrateStoredEvents_fromMindfulSession_handler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 identifierFromProvider];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 identifierFromProvider];
    [v4 setObject:v6 forKey:v5];
  }
}

- (void)_fetchLocationsFrom:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__48;
  v15[4] = __Block_byref_object_dispose__48;
  v16 = objc_opt_new();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __50__MOHealthKitManager__fetchLocationsFrom_handler___block_invoke;
  v10[3] = &unk_100340988;
  v8 = v6;
  v11 = v8;
  v12 = self;
  v14 = v15;
  v9 = v7;
  v13 = v9;
  [(MOHealthKitManager *)self _fetchWorkoutRoutes:v8 CompletionHandler:v10];

  _Block_object_dispose(v15, 8);
}

void __50__MOHealthKitManager__fetchLocationsFrom_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __50__MOHealthKitManager__fetchLocationsFrom_handler___block_invoke_cold_1(v3, a1);
    }

    v5 = dispatch_group_create();
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.health.workout.route.fetch", v6);

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v17 = v3;
    obj = v3;
    v8 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v31;
      do
      {
        v11 = 0;
        do
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v30 + 1) + 8 * v11);
          dispatch_group_enter(v5);
          v13 = *(a1 + 40);
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = __50__MOHealthKitManager__fetchLocationsFrom_handler___block_invoke_456;
          v24[3] = &unk_100340938;
          v25 = v7;
          v26 = v12;
          v14 = *(a1 + 32);
          v15 = *(a1 + 56);
          v27 = v14;
          v29 = v15;
          v28 = v5;
          [v13 _fetchWorkoutRouteLocations:v12 CompletionHandler:v24];

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v9);
    }

    v16 = [*(a1 + 40) queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __50__MOHealthKitManager__fetchLocationsFrom_handler___block_invoke_457;
    block[3] = &unk_100340960;
    v23 = *(a1 + 56);
    v20 = obj;
    v21 = *(a1 + 32);
    v22 = *(a1 + 48);
    dispatch_group_notify(v5, v16, block);

    v3 = v17;
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __50__MOHealthKitManager__fetchLocationsFrom_handler___block_invoke_456(uint64_t a1, void *a2)
{
  v3 = a2;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __50__MOHealthKitManager__fetchLocationsFrom_handler___block_invoke_2;
  v10[3] = &unk_10033CE00;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v11 = v3;
  v12 = v4;
  v7 = v6;
  v8 = *(a1 + 64);
  v13 = v7;
  v14 = v8;
  v9 = v3;
  dispatch_sync(v5, v10);
  dispatch_group_leave(*(a1 + 56));
}

void __50__MOHealthKitManager__fetchLocationsFrom_handler___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) count];
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      __50__MOHealthKitManager__fetchLocationsFrom_handler___block_invoke_2_cold_1(v2, a1);
    }

    [*(*(*(a1 + 56) + 8) + 40) addObjectsFromArray:*(a1 + 32)];
  }

  else
  {
    if (v5)
    {
      __50__MOHealthKitManager__fetchLocationsFrom_handler___block_invoke_2_cold_2(a1);
    }
  }
}

uint64_t __50__MOHealthKitManager__fetchLocationsFrom_handler___block_invoke_457(uint64_t a1)
{
  v2 = a1 + 56;
  if ([*(*(*(a1 + 56) + 8) + 40) count])
  {
    v3 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __50__MOHealthKitManager__fetchLocationsFrom_handler___block_invoke_457_cold_1(v2, a1);
    }

    v4 = *(*(*(a1 + 56) + 8) + 40);
    return (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = *(*(a1 + 48) + 16);

    return v6();
  }
}

- (void)_fetchMindfulSessionBetweenStartDate:(id)a3 EndDate:(id)a4 CompletionHandler:(id)a5
{
  v8 = a5;
  v9 = [HKQuery predicateForSamplesWithStartDate:a3 endDate:a4 options:2];
  v10 = [[NSSortDescriptor alloc] initWithKey:HKSampleSortIdentifierEndDate ascending:0];
  v21 = v10;
  v11 = [NSArray arrayWithObjects:&v21 count:1];

  v12 = [(MOHealthKitManager *)self queue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __85__MOHealthKitManager__fetchMindfulSessionBetweenStartDate_EndDate_CompletionHandler___block_invoke;
  v16[3] = &unk_100340848;
  v17 = v9;
  v18 = v11;
  v19 = self;
  v20 = v8;
  v13 = v8;
  v14 = v11;
  v15 = v9;
  dispatch_async(v12, v16);
}

void __85__MOHealthKitManager__fetchMindfulSessionBetweenStartDate_EndDate_CompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [HKSampleQuery alloc];
  v3 = [HKSampleType categoryTypeForIdentifier:HKCategoryTypeIdentifierMindfulSession];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __85__MOHealthKitManager__fetchMindfulSessionBetweenStartDate_EndDate_CompletionHandler___block_invoke_2;
  v8[3] = &unk_100338400;
  v9 = *(a1 + 56);
  v6 = [v2 initWithSampleType:v3 predicate:v4 limit:0 sortDescriptors:v5 resultsHandler:v8];

  v7 = [*(a1 + 48) healthStore];
  [v7 executeQuery:v6];
}

void __85__MOHealthKitManager__fetchMindfulSessionBetweenStartDate_EndDate_CompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __85__MOHealthKitManager__fetchMindfulSessionBetweenStartDate_EndDate_CompletionHandler___block_invoke_2_cold_1();
    }

    v10 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 134217984;
      v12 = [v6 count];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "fetched %lu mindful sessions ", &v11, 0xCu);
    }

    v10 = *(*(a1 + 32) + 16);
  }

  v10();
}

- (id)_createEventFromMindfulSession:(id)a3
{
  v4 = a3;
  v5 = [MOEvent alloc];
  v6 = +[NSUUID UUID];
  v7 = [v4 startDate];
  v8 = [v4 endDate];
  v9 = +[NSDate date];
  v10 = [(MOEvent *)v5 initWithEventIdentifier:v6 startDate:v7 endDate:v8 creationDate:v9 provider:1 category:13];

  v11 = [v4 endDate];
  v12 = [(MOHealthKitManager *)self configurationManager];
  LODWORD(v13) = 1242802176;
  [v12 getFloatSettingForKey:@"EventManagerOverrideMaximumEventAge" withFallback:v13];
  v15 = [v11 dateByAddingTimeInterval:v14];
  [(MOEvent *)v10 setExpirationDate:v15];

  v16 = [v4 UUID];

  v17 = [v16 UUIDString];
  [(MOEvent *)v10 setIdentifierFromProvider:v17];

  return v10;
}

- (void)_saveMindfulSessions:(id)a3 handler:(id)a4
{
  v6 = a3;
  v20 = a4;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__48;
  v32 = __Block_byref_object_dispose__48;
  v33 = 0;
  eventStore = self->_eventStore;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = __51__MOHealthKitManager__saveMindfulSessions_handler___block_invoke;
  v27[3] = &unk_1003378A0;
  v27[4] = &v28;
  [(MOEventStore *)eventStore fetchLastEventOfCategory:13 CompletionHandler:v27];
  v8 = +[NSMutableArray array];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v34 count:16];
  if (v10)
  {
    v11 = *v24;
    do
    {
      v12 = 0;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [(MOHealthKitManager *)self _createEventFromMindfulSession:*(*(&v23 + 1) + 8 * v12)];
        v14 = v13;
        if (!v29[5] || ([v13 startDate], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29[5], "startDate"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "isAfterDate:", v16), v16, v15, v17))
        {
          [v8 addObject:v14];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v23 objects:v34 count:16];
    }

    while (v10);
  }

  v18 = self->_eventStore;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = __51__MOHealthKitManager__saveMindfulSessions_handler___block_invoke_2;
  v21[3] = &unk_100336198;
  v19 = v20;
  v22 = v19;
  [(MOEventStore *)v18 storeEvents:v8 CompletionHandler:v21];

  _Block_object_dispose(&v28, 8);
}

void __51__MOHealthKitManager__saveMindfulSessions_handler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __51__MOHealthKitManager__saveMindfulSessions_handler___block_invoke_2_cold_1();
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }
}

- (void)_setDynamicProperties:(id)a3 mindfulSession:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 sourceRevision];
  v8 = [v7 source];
  v9 = [v8 bundleIdentifier];
  [v6 setAppBundle:v9];

  v11 = [v5 sourceRevision];

  v10 = [v11 source];
  [v6 setFromFirstParty:{objc_msgSend(v10, "_hasFirstPartyBundleID")}];
}

- (void)fetchUserBiologicalSexWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(MOHealthKitManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __56__MOHealthKitManager_fetchUserBiologicalSexWithHandler___block_invoke;
  v7[3] = &unk_100337B48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_fetchUserBiologicalSexWithHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(MOHealthKitManager *)self healthStore];
    v11 = 0;
    v6 = [v5 biologicalSexWithError:&v11];
    v7 = v11;

    if (v7)
    {
      v8 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = objc_opt_class();
        *buf = 138412546;
        v13 = v9;
        v14 = 2112;
        v15 = v7;
        v10 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@, Unable to access biological sex due to error: %@", buf, 0x16u);
      }

      v4[2](v4, 0, v7);
    }

    else
    {
      (v4)[2](v4, v6, 0);
    }
  }
}

- (void)fetchUserAgeWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(MOHealthKitManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __46__MOHealthKitManager_fetchUserAgeWithHandler___block_invoke;
  v7[3] = &unk_100337B48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_fetchUserAgeWithHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(MOHealthKitManager *)self healthStore];
    v19 = 0;
    v6 = [v5 dateOfBirthComponentsWithError:&v19];
    v7 = v19;

    if (v7)
    {
      v8 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = objc_opt_class();
        *buf = 138412546;
        v21 = v9;
        v22 = 2112;
        v23 = v7;
        v10 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@, Unable to access age due to error: %@", buf, 0x16u);
      }

      v4[2](v4, 0, v7);
    }

    else if (v6)
    {
      v11 = +[NSCalendar currentCalendar];
      v12 = [v11 dateFromComponents:v6];
      v13 = +[NSDate date];
      v14 = [v11 components:4 fromDate:v12 toDate:v13 options:0];

      v15 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v14 year]);
      (v4)[2](v4, v15, 0);
    }

    else
    {
      v16 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = objc_opt_class();
        *buf = 138412290;
        v21 = v17;
        v18 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%@, dateOfBirthComponents is nil.", buf, 0xCu);
      }

      v4[2](v4, 0, 0);
    }
  }
}

+ (id)convertBiologicalSexObjToString:(id)a3
{
  if (a3 && (v3 = [a3 biologicalSex], v3 <= 3))
  {
    return *(&off_1003409D0 + v3);
  }

  else
  {
    return 0;
  }
}

- (void)fetchWorkoutEventsBetweenStartDate:(id)a3 endDate:(id)a4 withStoredEvents:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(MOHealthKitManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __90__MOHealthKitManager_fetchWorkoutEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke;
  block[3] = &unk_100336C98;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(v14, block);
}

- (void)_fetchWorkoutEventsBetweenStartDate:(id)a3 endDate:(id)a4 withStoredEvents:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v14 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 2];
  v15 = [NSPredicate predicateWithFormat:@"%K = %lu", @"provider", 1];
  v29[0] = v14;
  v29[1] = v15;
  v16 = [NSArray arrayWithObjects:v29 count:2];
  v17 = [NSCompoundPredicate andPredicateWithSubpredicates:v16];

  v18 = [v13 filteredArrayUsingPredicate:v17];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __91__MOHealthKitManager__fetchWorkoutEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke;
  v23[3] = &unk_10033C1E8;
  v27 = v11;
  v28 = v12;
  v24 = v18;
  v25 = self;
  v26 = v10;
  v19 = v11;
  v20 = v10;
  v21 = v18;
  v22 = v12;
  [(MOHealthKitManager *)self _fetchWorkoutsBetweenStartDate:v20 EndDate:v19 CompletionHandler:v23];
}

void __91__MOHealthKitManager__fetchWorkoutEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_new();
  if (v6)
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "fetching workouts from source hit error", buf, 2u);
    }

    (*(a1[8] + 2))();
    v9 = [MORehydrationMetrics alloc];
    v10 = [v6 description];
    v11 = -[MORehydrationMetrics initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:](v9, "initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:", 2, 1, 0, v10, [a1[4] count], 3, objc_msgSend(a1[4], "count"), 0.0);

    v44 = 0;
    [v11 submitMetricsWithError:&v44];
  }

  else
  {
    v12 = dispatch_group_create();
    dispatch_group_enter(v12);
    *buf = 0;
    v39 = buf;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__48;
    v42 = __Block_byref_object_dispose__48;
    v43 = 0;
    v14 = a1[4];
    v13 = a1[5];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = __91__MOHealthKitManager__fetchWorkoutEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_482;
    v35[3] = &unk_1003364B0;
    v37 = buf;
    v15 = v12;
    v36 = v15;
    [v13 _rehydrateStoredEvents:v14 fromWorkouts:v5 handler:v35];
    dispatch_group_enter(v15);
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x3032000000;
    v33[3] = __Block_byref_object_copy__48;
    v33[4] = __Block_byref_object_dispose__48;
    v34 = 0;
    v17 = a1[4];
    v16 = a1[5];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = __91__MOHealthKitManager__fetchWorkoutEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_2;
    v30[3] = &unk_1003364B0;
    v32 = v33;
    v11 = v15;
    v31 = v11;
    [v16 _createNewEventsFromWorkouts:v5 storedEvents:v17 handler:v30];
    v18 = [a1[5] queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __91__MOHealthKitManager__fetchWorkoutEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_3;
    block[3] = &unk_1003409B0;
    v20 = *(a1 + 2);
    v19 = v20.i64[0];
    v22 = vextq_s8(v20, v20, 8uLL);
    v23 = v5;
    v24 = a1[6];
    v25 = a1[7];
    v28 = buf;
    v29 = v33;
    v26 = v7;
    v27 = a1[8];
    dispatch_group_notify(v11, v18, block);

    _Block_object_dispose(v33, 8);
    _Block_object_dispose(buf, 8);
  }
}

void __91__MOHealthKitManager__fetchWorkoutEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_482(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __91__MOHealthKitManager__fetchWorkoutEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __91__MOHealthKitManager__fetchWorkoutEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _findUnrehydratedEventsWithStoredEvents:*(a1 + 40) workouts:*(a1 + 48)];
  v3 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    v6 = [*(*(*(a1 + 88) + 8) + 40) count];
    v7 = [*(*(*(a1 + 96) + 8) + 40) count];
    v8 = [v2 count];
    v9 = [*(a1 + 40) count];
    v13 = 138413570;
    v14 = v4;
    v15 = 2112;
    v16 = v5;
    v17 = 2048;
    v18 = v6;
    v19 = 2048;
    v20 = v7;
    v21 = 2048;
    v22 = v8;
    v23 = 2048;
    v24 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "start date, %@, end date, %@, rehydrated workout events count, %lu, new workout events counts, %lu, unrehydrated workout events count, %lu, stored workout events count, %lu", &v13, 0x3Eu);
  }

  if (v2)
  {
    [*(a1 + 72) setObject:v2 forKey:@"unrehydratedEvents"];
  }

  v10 = *(*(*(a1 + 96) + 8) + 40);
  if (v10)
  {
    [*(a1 + 72) setObject:v10 forKey:@"newEvents"];
  }

  v11 = *(*(*(a1 + 88) + 8) + 40);
  if (v11)
  {
    [*(a1 + 72) setObject:v11 forKey:@"rehydratedEvents"];
  }

  v12 = *(a1 + 72);
  (*(*(a1 + 80) + 16))();
}

- (void)fetchStateOfMindEventsBetweenStartDate:(id)a3 endDate:(id)a4 withStoredEvents:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(MOHealthKitManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __94__MOHealthKitManager_fetchStateOfMindEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke;
  block[3] = &unk_100336C98;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(v14, block);
}

- (void)_fetchStateOfMindEventsBetweenStartDate:(id)a3 endDate:(id)a4 withStoredEvents:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v14 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 24];
  v15 = [NSPredicate predicateWithFormat:@"%K = %lu", @"provider", 1];
  v29[0] = v14;
  v29[1] = v15;
  v16 = [NSArray arrayWithObjects:v29 count:2];
  v17 = [NSCompoundPredicate andPredicateWithSubpredicates:v16];

  v18 = [v13 filteredArrayUsingPredicate:v17];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __95__MOHealthKitManager__fetchStateOfMindEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke;
  v23[3] = &unk_10033C1E8;
  v27 = v11;
  v28 = v12;
  v24 = v18;
  v25 = self;
  v26 = v10;
  v19 = v11;
  v20 = v10;
  v21 = v18;
  v22 = v12;
  [(MOHealthKitManager *)self _fetchStateOfMindBetweenStartDate:v20 EndDate:v19 CompletionHandler:v23];
}

void __95__MOHealthKitManager__fetchStateOfMindEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_new();
  if (v6)
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "fetching state of mind from source hit error", buf, 2u);
    }

    (*(a1[8] + 2))();
    v9 = [MORehydrationMetrics alloc];
    v10 = [v6 description];
    v11 = -[MORehydrationMetrics initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:](v9, "initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:", 24, 1, 0, v10, [a1[4] count], 3, objc_msgSend(a1[4], "count"), 0.0);

    v44 = 0;
    [v11 submitMetricsWithError:&v44];
  }

  else
  {
    v12 = dispatch_group_create();
    dispatch_group_enter(v12);
    *buf = 0;
    v39 = buf;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__48;
    v42 = __Block_byref_object_dispose__48;
    v43 = 0;
    v14 = a1[4];
    v13 = a1[5];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = __95__MOHealthKitManager__fetchStateOfMindEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_483;
    v35[3] = &unk_1003364B0;
    v37 = buf;
    v15 = v12;
    v36 = v15;
    [v13 _rehydrateStoredEvents:v14 fromStateOfMind:v5 handler:v35];
    dispatch_group_enter(v15);
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x3032000000;
    v33[3] = __Block_byref_object_copy__48;
    v33[4] = __Block_byref_object_dispose__48;
    v34 = 0;
    v17 = a1[4];
    v16 = a1[5];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = __95__MOHealthKitManager__fetchStateOfMindEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_2;
    v30[3] = &unk_1003364B0;
    v32 = v33;
    v11 = v15;
    v31 = v11;
    [v16 _createNewEventsFromStateOfMind:v5 storedEvents:v17 handler:v30];
    v18 = [a1[5] queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __95__MOHealthKitManager__fetchStateOfMindEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_3;
    block[3] = &unk_1003409B0;
    v20 = *(a1 + 2);
    v19 = v20.i64[0];
    v22 = vextq_s8(v20, v20, 8uLL);
    v23 = v5;
    v24 = a1[6];
    v25 = a1[7];
    v28 = buf;
    v29 = v33;
    v26 = v7;
    v27 = a1[8];
    dispatch_group_notify(v11, v18, block);

    _Block_object_dispose(v33, 8);
    _Block_object_dispose(buf, 8);
  }
}

void __95__MOHealthKitManager__fetchStateOfMindEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_483(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __95__MOHealthKitManager__fetchStateOfMindEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __95__MOHealthKitManager__fetchStateOfMindEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _findUnrehydratedEventsWithStoredEvents:*(a1 + 40) stateOfMind:*(a1 + 48)];
  v3 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    v6 = [*(*(*(a1 + 88) + 8) + 40) count];
    v7 = [*(*(*(a1 + 96) + 8) + 40) count];
    v8 = [v2 count];
    v9 = [*(a1 + 40) count];
    v13 = 138413570;
    v14 = v4;
    v15 = 2112;
    v16 = v5;
    v17 = 2048;
    v18 = v6;
    v19 = 2048;
    v20 = v7;
    v21 = 2048;
    v22 = v8;
    v23 = 2048;
    v24 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "start date, %@, end date, %@, rehydrated state of mind events count, %lu, new state of mind events counts, %lu, unrehydrated state of mind events count, %lu, stored state of mind events count, %lu", &v13, 0x3Eu);
  }

  if (v2)
  {
    [*(a1 + 72) setObject:v2 forKey:@"unrehydratedEvents"];
  }

  v10 = *(*(*(a1 + 96) + 8) + 40);
  if (v10)
  {
    [*(a1 + 72) setObject:v10 forKey:@"newEvents"];
  }

  v11 = *(*(*(a1 + 88) + 8) + 40);
  if (v11)
  {
    [*(a1 + 72) setObject:v11 forKey:@"rehydratedEvents"];
  }

  v12 = *(a1 + 72);
  (*(*(a1 + 80) + 16))();
}

- (void)_createEventsFromWorkout:(id)a3 handler:(id)a4
{
  v17 = a3;
  v18 = a4;
  if ([v17 count])
  {
    *buf = 0;
    v33 = buf;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__48;
    v36 = __Block_byref_object_dispose__48;
    v37 = objc_opt_new();
    v6 = dispatch_group_create();
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.health.workout.event.create", v7);

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v17;
    v9 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
    if (v9)
    {
      v10 = *v29;
      do
      {
        v11 = 0;
        do
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v28 + 1) + 8 * v11);
          dispatch_group_enter(v6);
          v13 = [(MOHealthKitManager *)self _createEventFromWorkout:v12];
          [(MOHealthKitManager *)self _setDynamicProperties:v13 workout:v12];
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = __55__MOHealthKitManager__createEventsFromWorkout_handler___block_invoke;
          v23[3] = &unk_1003408E8;
          v14 = v13;
          v24 = v14;
          v25 = v8;
          v27 = buf;
          v26 = v6;
          [(MOHealthKitManager *)self _fetchLocationsFrom:v12 handler:v23];

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
      }

      while (v9);
    }

    v15 = [(MOHealthKitManager *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __55__MOHealthKitManager__createEventsFromWorkout_handler___block_invoke_3;
    block[3] = &unk_10033AF18;
    v22 = buf;
    v21 = v18;
    dispatch_group_notify(v6, v15, block);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v16 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "no workouts for creating events", buf, 2u);
    }

    (*(v18 + 2))(v18, 0, 0);
  }
}

void __55__MOHealthKitManager__createEventsFromWorkout_handler___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setWorkoutLocationRoute:a2];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __55__MOHealthKitManager__createEventsFromWorkout_handler___block_invoke_2;
  v4[3] = &unk_10033C6A8;
  v6 = *(a1 + 56);
  v3 = *(a1 + 40);
  v5 = *(a1 + 32);
  dispatch_sync(v3, v4);
  dispatch_group_leave(*(a1 + 48));
}

uint64_t __55__MOHealthKitManager__createEventsFromWorkout_handler___block_invoke_3(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(*(*(a1 + 40) + 8) + 40) count];
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "health: new workout count, %lu", &v6, 0xCu);
  }

  v4 = *(*(*(a1 + 40) + 8) + 40);
  return (*(*(a1 + 32) + 16))();
}

- (void)_createEventsFromStateOfMind:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = objc_opt_new();
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
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
          v15 = [(MOHealthKitManager *)self _createEventFromStateOfMind:v14, v19];
          [(MOHealthKitManager *)self _setDynamicProperties:v15 stateOfMind:v14];
          [v8 addObject:v15];
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v11);
    }

    v16 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [v8 count];
      *buf = 134217984;
      v24 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "health: new state of mind count, %lu", buf, 0xCu);
    }

    v7[2](v7, v8, 0);
  }

  else
  {
    v18 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "no state of mind data for creating events", buf, 2u);
    }

    v7[2](v7, 0, 0);
  }
}

- (void)_createNewEventsFromWorkouts:(id)a3 storedEvents:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    if ([v9 count])
    {
      v32 = self;
      v33 = v10;
      v35 = v8;
      v11 = objc_opt_new();
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v34 = v9;
      v12 = v9;
      v13 = [v12 countByEnumeratingWithState:&v42 objects:v50 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v43;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v43 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v42 + 1) + 8 * i);
            v18 = [v17 identifierFromProvider];

            if (v18)
            {
              v19 = [v17 identifierFromProvider];
              [v11 addObject:v19];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v42 objects:v50 count:16];
        }

        while (v14);
      }

      v20 = objc_opt_new();
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v21 = v35;
      v22 = [v21 countByEnumeratingWithState:&v38 objects:v49 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v39;
        do
        {
          for (j = 0; j != v23; j = j + 1)
          {
            if (*v39 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v38 + 1) + 8 * j);
            v27 = [v26 UUID];
            v28 = [v27 UUIDString];
            v29 = [v11 containsObject:v28];

            if ((v29 & 1) == 0)
            {
              [v20 addObject:v26];
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v38 objects:v49 count:16];
        }

        while (v23);
      }

      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = __72__MOHealthKitManager__createNewEventsFromWorkouts_storedEvents_handler___block_invoke_2;
      v36[3] = &unk_1003369E0;
      v10 = v33;
      v37 = v33;
      [(MOHealthKitManager *)v32 _createEventsFromWorkout:v20 handler:v36];

      v9 = v34;
      v8 = v35;
    }

    else
    {
      v31 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "no stored events to check for creating new workout events", buf, 2u);
      }

      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = __72__MOHealthKitManager__createNewEventsFromWorkouts_storedEvents_handler___block_invoke;
      v46[3] = &unk_1003369E0;
      v47 = v10;
      [(MOHealthKitManager *)self _createEventsFromWorkout:v8 handler:v46];
    }
  }

  else
  {
    v30 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "no workouts for creating new workout events", buf, 2u);
    }

    (*(v10 + 2))(v10, 0, 0);
  }
}

- (void)_createNewEventsFromStateOfMind:(id)a3 storedEvents:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    if ([v9 count])
    {
      v32 = self;
      v33 = v10;
      v35 = v8;
      v11 = objc_opt_new();
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v34 = v9;
      v12 = v9;
      v13 = [v12 countByEnumeratingWithState:&v42 objects:v50 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v43;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v43 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v42 + 1) + 8 * i);
            v18 = [v17 identifierFromProvider];

            if (v18)
            {
              v19 = [v17 identifierFromProvider];
              [v11 addObject:v19];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v42 objects:v50 count:16];
        }

        while (v14);
      }

      v20 = objc_opt_new();
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v21 = v35;
      v22 = [v21 countByEnumeratingWithState:&v38 objects:v49 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v39;
        do
        {
          for (j = 0; j != v23; j = j + 1)
          {
            if (*v39 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v38 + 1) + 8 * j);
            v27 = [v26 UUID];
            v28 = [v27 UUIDString];
            v29 = [v11 containsObject:v28];

            if ((v29 & 1) == 0)
            {
              [v20 addObject:v26];
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v38 objects:v49 count:16];
        }

        while (v23);
      }

      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = __75__MOHealthKitManager__createNewEventsFromStateOfMind_storedEvents_handler___block_invoke_2;
      v36[3] = &unk_1003369E0;
      v10 = v33;
      v37 = v33;
      [(MOHealthKitManager *)v32 _createEventsFromStateOfMind:v20 handler:v36];

      v9 = v34;
      v8 = v35;
    }

    else
    {
      v31 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "no stored events to check for creating new state of mind events", buf, 2u);
      }

      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = __75__MOHealthKitManager__createNewEventsFromStateOfMind_storedEvents_handler___block_invoke;
      v46[3] = &unk_1003369E0;
      v47 = v10;
      [(MOHealthKitManager *)self _createEventsFromStateOfMind:v8 handler:v46];
    }
  }

  else
  {
    v30 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "no state of mind data for creating new state of mind events", buf, 2u);
    }

    (*(v10 + 2))(v10, 0, 0);
  }
}

- (id)_findUnrehydratedEventsWithStoredEvents:(id)a3 workouts:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    if ([v6 count])
    {
      v7 = objc_opt_new();
      v8 = objc_alloc_init(NSMutableArray);
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v35 = v6;
      v9 = v6;
      v10 = [v9 countByEnumeratingWithState:&v40 objects:v49 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v41;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v41 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [*(*(&v40 + 1) + 8 * i) UUID];
            v15 = [v14 UUIDString];
            [v7 addObject:v15];
          }

          v11 = [v9 countByEnumeratingWithState:&v40 objects:v49 count:16];
        }

        while (v11);
      }

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v16 = v5;
      v17 = [v16 countByEnumeratingWithState:&v36 objects:v48 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v37;
        do
        {
          for (j = 0; j != v18; j = j + 1)
          {
            if (*v37 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v36 + 1) + 8 * j);
            v22 = [v21 identifierFromProvider];
            v23 = [v7 containsObject:v22];

            if ((v23 & 1) == 0)
            {
              [v21 setRehydrationFailCount:{objc_msgSend(v21, "rehydrationFailCount") + 1}];
              [v8 addObject:v21];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v36 objects:v48 count:16];
        }

        while (v18);
      }

      v24 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = [v8 count];
        *buf = 134217984;
        v51 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "health: unrehydrated workout count, %lu", buf, 0xCu);
      }

      v6 = v35;
    }

    else
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v27 = v5;
      v28 = [v27 countByEnumeratingWithState:&v44 objects:v52 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v45;
        do
        {
          for (k = 0; k != v29; k = k + 1)
          {
            if (*v45 != v30)
            {
              objc_enumerationMutation(v27);
            }

            [*(*(&v44 + 1) + 8 * k) setRehydrationFailCount:{objc_msgSend(*(*(&v44 + 1) + 8 * k), "rehydrationFailCount") + 1}];
          }

          v29 = [v27 countByEnumeratingWithState:&v44 objects:v52 count:16];
        }

        while (v29);
      }

      v32 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = [v27 count];
        *buf = 134217984;
        v51 = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "no workouts fetched, so all stored workout events are unrehydrated count, %lu", buf, 0xCu);
      }

      v8 = v27;
    }
  }

  else
  {
    v26 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "no stored workout events for finding unrehydrated events", buf, 2u);
    }

    v8 = 0;
  }

  return v8;
}

- (id)_findUnrehydratedEventsWithStoredEvents:(id)a3 stateOfMind:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    if ([v6 count])
    {
      v7 = objc_opt_new();
      v8 = objc_alloc_init(NSMutableArray);
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v35 = v6;
      v9 = v6;
      v10 = [v9 countByEnumeratingWithState:&v40 objects:v49 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v41;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v41 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [*(*(&v40 + 1) + 8 * i) UUID];
            v15 = [v14 UUIDString];
            [v7 addObject:v15];
          }

          v11 = [v9 countByEnumeratingWithState:&v40 objects:v49 count:16];
        }

        while (v11);
      }

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v16 = v5;
      v17 = [v16 countByEnumeratingWithState:&v36 objects:v48 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v37;
        do
        {
          for (j = 0; j != v18; j = j + 1)
          {
            if (*v37 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v36 + 1) + 8 * j);
            v22 = [v21 identifierFromProvider];
            v23 = [v7 containsObject:v22];

            if ((v23 & 1) == 0)
            {
              [v21 setRehydrationFailCount:{objc_msgSend(v21, "rehydrationFailCount") + 1}];
              [v8 addObject:v21];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v36 objects:v48 count:16];
        }

        while (v18);
      }

      v24 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = [v8 count];
        *buf = 134217984;
        v51 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "health: unrehydrated state of mind count, %lu", buf, 0xCu);
      }

      v6 = v35;
    }

    else
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v27 = v5;
      v28 = [v27 countByEnumeratingWithState:&v44 objects:v52 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v45;
        do
        {
          for (k = 0; k != v29; k = k + 1)
          {
            if (*v45 != v30)
            {
              objc_enumerationMutation(v27);
            }

            [*(*(&v44 + 1) + 8 * k) setRehydrationFailCount:{objc_msgSend(*(*(&v44 + 1) + 8 * k), "rehydrationFailCount") + 1}];
          }

          v29 = [v27 countByEnumeratingWithState:&v44 objects:v52 count:16];
        }

        while (v29);
      }

      v32 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = [v27 count];
        *buf = 134217984;
        v51 = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "no state of mind data fetched, so all stored state of mind events are unrehydrated count, %lu", buf, 0xCu);
      }

      v8 = v27;
    }
  }

  else
  {
    v26 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "no stored state of mind events for finding unrehydrated events", buf, 2u);
    }

    v8 = 0;
  }

  return v8;
}

void __79__MOHealthKitManager__fetchWorkoutsBetweenStartDate_EndDate_CompletionHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __82__MOHealthKitManager__fetchStateOfMindBetweenStartDate_EndDate_CompletionHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __60__MOHealthKitManager__fetchWorkoutRoutes_CompletionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __68__MOHealthKitManager__fetchWorkoutRouteLocations_CompletionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __44__MOHealthKitManager__saveWorkouts_handler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_createQueryBasedonEvents:withPredicate:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __49__MOHealthKitManager__rehydrateWorkouts_handler___block_invoke_445_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_rehydrateStoredEvents:fromWorkouts:handler:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_rehydrateStoredEvents:fromStateOfMind:handler:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_rehydrateStoredEvents:fromStateOfMind:handler:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_rehydrateStoredEvents:fromMindfulSession:handler:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_rehydrateStoredEvents:fromMindfulSession:handler:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __50__MOHealthKitManager__fetchLocationsFrom_handler___block_invoke_cold_1(void *a1, uint64_t a2)
{
  [a1 count];
  [*(a2 + 32) workoutActivityType];
  v3 = [*(a2 + 32) startDate];
  [*(a2 + 32) duration];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x26u);
}

void __50__MOHealthKitManager__fetchLocationsFrom_handler___block_invoke_2_cold_1(id *a1, uint64_t a2)
{
  [*a1 count];
  [*(a2 + 40) count];
  [*(a2 + 48) workoutActivityType];
  v3 = [*(a2 + 48) startDate];
  [*(a2 + 48) duration];
  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x30u);
}

void __50__MOHealthKitManager__fetchLocationsFrom_handler___block_invoke_2_cold_2(uint64_t a1)
{
  [*(a1 + 48) workoutActivityType];
  v2 = [*(a1 + 48) startDate];
  [*(a1 + 48) duration];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void __50__MOHealthKitManager__fetchLocationsFrom_handler___block_invoke_457_cold_1(uint64_t a1, uint64_t a2)
{
  [*(*(*a1 + 8) + 40) count];
  [*(a2 + 32) count];
  [*(a2 + 40) workoutActivityType];
  v3 = [*(a2 + 40) startDate];
  [*(a2 + 40) duration];
  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x30u);
}

void __85__MOHealthKitManager__fetchMindfulSessionBetweenStartDate_EndDate_CompletionHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __51__MOHealthKitManager__saveMindfulSessions_handler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end