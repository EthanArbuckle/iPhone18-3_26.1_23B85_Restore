@interface MOMotionManager
- (MOMotionManager)initWithUniverse:(id)a3;
- (id)createEventForMotionActivityWithStartDate:(id)a3 andEndDate:(id)a4;
- (id)createEventsFromActivities:(id)a3 withMininumEventSize:(double)a4;
- (void)_createNewEventsFromActivities:(id)a3 handler:(id)a4;
- (void)_fetchMotionActivityBetweenStartDate:(id)a3 endDate:(id)a4 withStoredEvents:(id)a5 handler:(id)a6;
- (void)_rehydrateEvents:(id)a3 andCreateNewEventsfromMotionActivity:(id)a4 handler:(id)a5;
- (void)_rehydrateMotionActivity:(id)a3 forLocationSetting:(BOOL)a4 handler:(id)a5;
- (void)_setMotionTypeAndDurationFor:(id)a3 fromMotionActivity:(id)a4;
- (void)_updateDeviceLocationsForMotionEvents:(id)a3 forLocationSetting:(BOOL)a4 handler:(id)a5;
- (void)_updateMetadataOfMotionEvents:(id)a3 withMotionActities:(id)a4 handler:(id)a5;
- (void)fetchMotionActivityBetweenStartDate:(id)a3 endDate:(id)a4 withStoredEvents:(id)a5 handler:(id)a6;
- (void)fetchPedometerDataFor:(id)a3 toEndDate:(id)a4 CompletionHandler:(id)a5;
- (void)rehydrateMotionActivity:(id)a3 handler:(id)a4;
@end

@implementation MOMotionManager

- (MOMotionManager)initWithUniverse:(id)a3
{
  v5 = a3;
  v6 = objc_alloc_init(CMMotionActivityManager);
  v7 = objc_alloc_init(CMPedometer);
  v8 = objc_alloc_init(HKHealthStore);
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v5 getService:v10];

  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [v5 getService:v13];

  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = [v5 getService:v16];

  if (!v11)
  {
    v26 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [MOPeopleDiscoveryManager initWithUniverse:];
    }

    v27 = +[NSAssertionHandler currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"MOMotionManager.m" lineNumber:65 description:@"Invalid parameter not satisfying: eventStore"];

    goto LABEL_9;
  }

  if (!v6)
  {
LABEL_9:
    v25 = 0;
    goto LABEL_10;
  }

  v29.receiver = self;
  v29.super_class = MOMotionManager;
  v18 = [(MOMotionManager *)&v29 init];
  if (v18)
  {
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create("MOMotionManager", v19);
    queue = v18->_queue;
    v18->_queue = v20;

    v22 = objc_opt_new();
    operationQueue = v18->_operationQueue;
    v18->_operationQueue = v22;

    v24 = [(MOMotionManager *)v18 queue];
    [(NSOperationQueue *)v18->_operationQueue setUnderlyingQueue:v24];

    objc_storeStrong(&v18->_motionActivityManager, v6);
    objc_storeStrong(&v18->_pedometer, v7);
    objc_storeStrong(&v18->_eventStore, v11);
    objc_storeStrong(&v18->_configurationManager, v14);
    objc_storeStrong(&v18->_routineServiceManager, v17);
    objc_storeStrong(&v18->_healthStore, v8);
  }

  self = v18;
  v25 = self;
LABEL_10:

  return v25;
}

- (id)createEventsFromActivities:(id)a3 withMininumEventSize:(double)a4
{
  v6 = a3;
  if ([v6 count])
  {
    v7 = objc_opt_new();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = v6;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          v14 = objc_autoreleasePoolPush();
          v15 = [v13 startDate];
          v16 = [v13 endDate];
          [v16 timeIntervalSinceDate:v15];
          if (v17 >= a4)
          {
            v18 = [(MOMotionManager *)self createEventForMotionActivityWithStartDate:v15 andEndDate:v16];
            [v7 addObject:v18];
          }

          objc_autoreleasePoolPop(v14);
        }

        v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v10);
    }

    if ([v7 count])
    {
      v19 = v7;
    }

    else
    {
      v19 = &__NSArray0__struct;
    }

    v6 = v21;
  }

  else
  {
    v19 = &__NSArray0__struct;
  }

  return v19;
}

- (id)createEventForMotionActivityWithStartDate:(id)a3 andEndDate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [MOEvent alloc];
  v8 = +[NSUUID UUID];
  v9 = +[NSDate date];
  v10 = [(MOEvent *)v7 initWithEventIdentifier:v8 startDate:v6 endDate:v5 creationDate:v9 provider:7 category:16];

  v11 = [v5 dateByAddingTimeInterval:604800.0];

  [(MOEvent *)v10 setExpirationDate:v11];

  return v10;
}

- (void)fetchPedometerDataFor:(id)a3 toEndDate:(id)a4 CompletionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MOMotionManager *)self pedometer];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __69__MOMotionManager_fetchPedometerDataFor_toEndDate_CompletionHandler___block_invoke;
  v13[3] = &unk_10033FD68;
  v14 = v8;
  v12 = v8;
  [v11 queryPedometerDataFromDate:v10 toDate:v9 withHandler:v13];
}

void __69__MOMotionManager_fetchPedometerDataFor_toEndDate_CompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityMotionActivity);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __69__MOMotionManager_fetchPedometerDataFor_toEndDate_CompletionHandler___block_invoke_cold_1();
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

- (void)_setMotionTypeAndDurationFor:(id)a3 fromMotionActivity:(id)a4
{
  v19 = a3;
  v5 = a4;
  if ([v5 unknown])
  {
    v6 = [v19 motionActivityEvent];
    [v6 setMotionType:0];
  }

  if ([v5 stationary])
  {
    v7 = [v19 motionActivityEvent];
    [v7 setMotionType:1];
  }

  if ([v5 walking] && (objc_msgSend(v5, "running") & 1) == 0)
  {
    v8 = [v19 motionActivityEvent];
    [v8 setMotionType:2];

    v9 = [v19 workoutEvent];
    [v9 setWorkoutType:@"MOMotionActivityTypeWalking"];
  }

  if ([v5 running] && (objc_msgSend(v5, "walking") & 1) == 0)
  {
    v10 = [v19 motionActivityEvent];
    [v10 setMotionType:3];

    v11 = [v19 workoutEvent];
    [v11 setWorkoutType:@"MOMotionActivityTypeRunning"];
  }

  if ([v5 running] && objc_msgSend(v5, "walking"))
  {
    v12 = [v19 motionActivityEvent];
    [v12 setMotionType:6];

    v13 = [v19 workoutEvent];
    [v13 setWorkoutType:@"MOMotionActivityTypeMixedRunningWalking"];
  }

  if ([v5 automotive])
  {
    v14 = [v19 motionActivityEvent];
    [v14 setMotionType:4];
  }

  if ([v5 cycling])
  {
    v15 = [v19 motionActivityEvent];
    [v15 setMotionType:5];

    v16 = [v19 workoutEvent];
    [v16 setWorkoutType:@"MOMotionActivityTypeCycling"];
  }

  [v19 duration];
  v17 = [NSNumber numberWithDouble:?];
  v18 = [v19 workoutEvent];
  [v18 setWorkoutDuration:v17];
}

- (void)rehydrateMotionActivity:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MOMotionManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __51__MOMotionManager_rehydrateMotionActivity_handler___block_invoke;
  block[3] = &unk_100336A58;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

id __51__MOMotionManager_rehydrateMotionActivity_handler___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 48) isAllowedToProcessEventCategory:1];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];

  return [v3 _rehydrateMotionActivity:v4 forLocationSetting:v2 handler:v5];
}

- (void)_rehydrateMotionActivity:(id)a3 forLocationSetting:(BOOL)a4 handler:(id)a5
{
  v43 = a3;
  v33 = a5;
  v7 = [(MOMotionManager *)self queue];
  dispatch_assert_queue_V2(v7);

  v38 = [v43 getDurationOfMOEventArray];
  v39 = [v38 startDate];
  v40 = [v38 endDate];
  v37 = +[NSCalendar currentCalendar];
  v8 = +[NSDate now];
  v9 = [v8 dateByAddingTimeInterval:-604800.0];
  v36 = [v37 startOfDayForDate:v9];

  v35 = [v37 startOfDayForDate:v39];
  if ([v36 isAfterDate:v35])
  {
    v10 = v36;
  }

  else
  {
    v10 = v35;
  }

  v11 = v10;
  v12 = objc_opt_new();
  v13 = 0;
  if ([v11 isBeforeDate:v40])
  {
    do
    {
      v14 = [v11 dateByAddingTimeInterval:86400.0];

      if ([v11 isAfterDate:v39])
      {
        v15 = v11;
      }

      else
      {
        v15 = v39;
      }

      v16 = v15;
      if ([v14 isBeforeDate:v40])
      {
        v17 = v14;
      }

      else
      {
        v17 = v40;
      }

      v18 = v17;
      if ([v16 isBeforeDate:v18])
      {
        v19 = [[NSDateInterval alloc] initWithStartDate:v16 endDate:v18];
        [v12 addObject:v19];
      }

      v13 = v14;

      v11 = v13;
    }

    while (([v13 isBeforeDate:v40] & 1) != 0);
  }

  v20 = dispatch_group_create();
  v60[0] = 0;
  v60[1] = v60;
  v60[2] = 0x3032000000;
  v60[3] = __Block_byref_object_copy__44;
  v60[4] = __Block_byref_object_dispose__44;
  v61 = objc_opt_new();
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v12;
  v21 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
  if (v21)
  {
    v42 = *v57;
    do
    {
      v22 = 0;
      v23 = v13;
      v24 = v11;
      do
      {
        if (*v57 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v56 + 1) + 8 * v22);
        v26 = objc_autoreleasePoolPush();
        dispatch_group_enter(v20);
        v11 = [v25 startDate];

        v13 = [v25 endDate];

        motionActivityManager = self->_motionActivityManager;
        v28 = [(MOMotionManager *)self operationQueue];
        v51[0] = _NSConcreteStackBlock;
        v51[1] = 3221225472;
        v51[2] = __71__MOMotionManager__rehydrateMotionActivity_forLocationSetting_handler___block_invoke;
        v51[3] = &unk_10033FD90;
        v52 = v20;
        v53 = v43;
        v54 = self;
        v55 = v60;
        [(CMMotionActivityManager *)motionActivityManager queryActivityWithAttribute:1 fromDate:v11 toDate:v13 toQueue:v28 withHandler:v51];

        objc_autoreleasePoolPop(v26);
        v22 = v22 + 1;
        v23 = v13;
        v24 = v11;
      }

      while (v21 != v22);
      v21 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
    }

    while (v21);
  }

  v29 = [(MOMotionManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __71__MOMotionManager__rehydrateMotionActivity_forLocationSetting_handler___block_invoke_161;
  block[3] = &unk_10033FDE0;
  v49 = v60;
  v45 = v39;
  v46 = v40;
  v50 = a4;
  v47 = self;
  v48 = v33;
  v30 = v33;
  v31 = v40;
  v32 = v39;
  dispatch_group_notify(v20, v29, block);

  _Block_object_dispose(v60, 8);
}

void __71__MOMotionManager__rehydrateMotionActivity_forLocationSetting_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityMotionActivity);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __71__MOMotionManager__rehydrateMotionActivity_forLocationSetting_handler___block_invoke_cold_1();
    }

LABEL_4:

    dispatch_group_leave(*(a1 + 32));
    goto LABEL_9;
  }

  v8 = [v5 count];
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityMotionActivity);
  v9 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (!v8)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "no motion activity is fetched for rehydration", buf, 2u);
    }

    goto LABEL_4;
  }

  if (v9)
  {
    v10 = [*(a1 + 40) count];
    *buf = 134217984;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "motion activity update, events, %lu", buf, 0xCu);
  }

  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __71__MOMotionManager__rehydrateMotionActivity_forLocationSetting_handler___block_invoke_159;
  v15[3] = &unk_100336CC0;
  v13 = v11;
  v14 = *(a1 + 56);
  v16 = v13;
  v18 = v14;
  v17 = *(a1 + 32);
  [v12 _updateMetadataOfMotionEvents:v13 withMotionActities:v5 handler:v15];

LABEL_9:
}

void __71__MOMotionManager__rehydrateMotionActivity_forLocationSetting_handler___block_invoke_159(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = _mo_log_facility_get_os_log(&MOLogFacilityMotionActivity);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) count];
      v6 = 134218240;
      v7 = v5;
      v8 = 2048;
      v9 = [v3 count];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "motion activity step count update, motion events, %lu, events, %lu", &v6, 0x16u);
    }

    [*(*(*(a1 + 48) + 8) + 40) addObjectsFromArray:v3];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __71__MOMotionManager__rehydrateMotionActivity_forLocationSetting_handler___block_invoke_161(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityMotionActivity);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(*(*(a1 + 64) + 8) + 40) count];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    *buf = 134218498;
    v14 = v3;
    v15 = 2112;
    v16 = v4;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%lu walking events rehydrated for %@ to %@", buf, 0x20u);
  }

  if ([*(*(*(a1 + 64) + 8) + 40) count])
  {
    v6 = *(a1 + 64);
    v7 = *(*(v6 + 8) + 40);
    v8 = *(a1 + 72);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __71__MOMotionManager__rehydrateMotionActivity_forLocationSetting_handler___block_invoke_162;
    v10[3] = &unk_10033FDB8;
    v12 = v6;
    v9 = *(a1 + 48);
    v11 = *(a1 + 56);
    [v9 _updateDeviceLocationsForMotionEvents:v7 forLocationSetting:v8 handler:v10];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __71__MOMotionManager__rehydrateMotionActivity_forLocationSetting_handler___block_invoke_162(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityMotionActivity);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [*(*(*(a1 + 40) + 8) + 40) count];
    v10 = 134218240;
    v11 = v8;
    v12 = 2048;
    v13 = [v5 count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "motion activity location update, motion events, %lu, updated events, %lu", &v10, 0x16u);
  }

  v9 = *(*(*(a1 + 40) + 8) + 40);
  (*(*(a1 + 32) + 16))();
}

- (void)_updateDeviceLocationsForMotionEvents:(id)a3 forLocationSetting:(BOOL)a4 handler:(id)a5
{
  v23 = a3;
  v24 = a5;
  if ([v23 count])
  {
    if (a4)
    {
      v7 = objc_opt_new();
      v8 = dispatch_group_create();
      *v39 = 0;
      v40 = v39;
      v41 = 0x3032000000;
      v42 = __Block_byref_object_copy__44;
      v43 = __Block_byref_object_dispose__44;
      v44 = 0;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      obj = v23;
      v9 = [obj countByEnumeratingWithState:&v35 objects:v51 count:16];
      if (v9)
      {
        v10 = *v36;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v36 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v35 + 1) + 8 * i);
            dispatch_group_enter(v8);
            v13 = _mo_log_facility_get_os_log(&MOLogFacilityMotionActivity);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              v14 = [v12 startDate];
              v15 = [v12 endDate];
              *buf = 138412802;
              v46 = v12;
              v47 = 2112;
              v48 = v14;
              v49 = 2112;
              v50 = v15;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "_updateDeviceLocationsForMotionEvents, event, %@, startDate, %@, endDate, %@", buf, 0x20u);
            }

            v16 = [(MOMotionManager *)self routineServiceManager];
            v17 = [v12 startDate];
            v18 = [v12 endDate];
            v31[0] = _NSConcreteStackBlock;
            v31[1] = 3221225472;
            v31[2] = __84__MOMotionManager__updateDeviceLocationsForMotionEvents_forLocationSetting_handler___block_invoke;
            v31[3] = &unk_10033FE08;
            v34 = v39;
            v31[4] = v12;
            v32 = v7;
            v33 = v8;
            [v16 fetchDeviceLocationsFromStartDate:v17 endDate:v18 handler:v31];
          }

          v9 = [obj countByEnumeratingWithState:&v35 objects:v51 count:16];
        }

        while (v9);
      }

      v19 = [(MOMotionManager *)self queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __84__MOMotionManager__updateDeviceLocationsForMotionEvents_forLocationSetting_handler___block_invoke_163;
      block[3] = &unk_10033FE30;
      v28 = v7;
      v29 = v24;
      v30 = v39;
      v20 = v7;
      dispatch_group_notify(v8, v19, block);

      _Block_object_dispose(v39, 8);
    }

    else
    {
      v22 = _mo_log_facility_get_os_log(&MOLogFacilityMotionActivity);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "significant location disabled. return input events", v39, 2u);
      }

      (*(v24 + 2))(v24, v23, 0);
    }
  }

  else
  {
    v21 = _mo_log_facility_get_os_log(&MOLogFacilityMotionActivity);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "motionEvents is empty.", v39, 2u);
    }

    (*(v24 + 2))(v24, &__NSArray0__struct, 0);
  }
}

void __84__MOMotionManager__updateDeviceLocationsForMotionEvents_forLocationSetting_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(*(a1 + 56) + 8);
    v9 = *(v7 + 40);
    v8 = (v7 + 40);
    if (!v9)
    {
      objc_storeStrong(v8, a3);
    }
  }

  if ([v5 count])
  {
    v10 = [*(a1 + 32) workoutEvent];
    [v10 setWorkoutLocationRoute:v5];

    v11 = [v5 firstObject];
    v12 = [*(a1 + 32) workoutEvent];
    [v12 setWorkoutLocationStart:v11];

    v13 = _mo_log_facility_get_os_log(&MOLogFacilityMotionActivity);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 32);
      v15 = 138412546;
      v16 = v14;
      v17 = 2048;
      v18 = [v5 count];
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "_updateDeviceLocationsForMotionEvents, event, %@, locations, %lu", &v15, 0x16u);
    }

    [*(a1 + 40) addObject:*(a1 + 32)];
  }

  dispatch_group_leave(*(a1 + 48));
}

- (void)_updateMetadataOfMotionEvents:(id)a3 withMotionActities:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![v9 count])
  {
    v35 = _mo_log_facility_get_os_log(&MOLogFacilityMotionActivity);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v36 = "no motion activity is fetched for update motion metadata";
LABEL_25:
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, v36, buf, 2u);
    }

LABEL_26:

    v10[2](v10, &__NSArray0__struct, 0);
    goto LABEL_27;
  }

  if (![v8 count])
  {
    v35 = _mo_log_facility_get_os_log(&MOLogFacilityMotionActivity);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v36 = "no motion activity is stored for update motion metadata";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v37 = v10;
  v41 = objc_opt_new();
  v11 = objc_opt_new();
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v38 = v9;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v53;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v53 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v52 + 1) + 8 * i);
        v18 = [v17 startDate];
        [v11 setObject:v17 forKey:v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v14);
  }

  group = dispatch_group_create();
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v39 = v8;
  v19 = v8;
  v20 = [v19 countByEnumeratingWithState:&v48 objects:v57 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v49;
    do
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v49 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v48 + 1) + 8 * j);
        v25 = [v11 allKeys];
        v26 = [v24 startDate];
        v27 = [v25 containsObject:v26];

        if (v27)
        {
          v28 = [v24 startDate];
          v29 = [v11 objectForKey:v28];
          [(MOMotionManager *)self _setMotionTypeAndDurationFor:v24 fromMotionActivity:v29];

          v30 = [v24 motionActivityEvent];
          LODWORD(v28) = +[MOMotionManager eligibleForBundling:](MOMotionManager, "eligibleForBundling:", [v30 motionType]);

          if (v28)
          {
            dispatch_group_enter(group);
            v31 = [v24 startDate];
            v32 = [v24 endDate];
            v45[0] = _NSConcreteStackBlock;
            v45[1] = 3221225472;
            v45[2] = __76__MOMotionManager__updateMetadataOfMotionEvents_withMotionActities_handler___block_invoke;
            v45[3] = &unk_10033FE58;
            v45[4] = v24;
            v46 = v41;
            v47 = group;
            [(MOMotionManager *)self fetchPedometerDataFor:v31 toEndDate:v32 CompletionHandler:v45];
          }
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v48 objects:v57 count:16];
    }

    while (v21);
  }

  v33 = [(MOMotionManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __76__MOMotionManager__updateMetadataOfMotionEvents_withMotionActities_handler___block_invoke_2;
  block[3] = &unk_10033B9D8;
  v10 = v37;
  v43 = v41;
  v44 = v37;
  v34 = v41;
  dispatch_group_notify(group, v33, block);

  v9 = v38;
  v8 = v39;
LABEL_27:
}

void __76__MOMotionManager__updateMetadataOfMotionEvents_withMotionActities_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2 && !a3)
  {
    v4 = a2;
    v5 = [v4 distance];
    v6 = [*(a1 + 32) motionActivityEvent];
    [v6 setMotionDistance:v5];

    v7 = [v4 numberOfSteps];

    v8 = [*(a1 + 32) motionActivityEvent];
    [v8 setMotionStepCount:v7];

    [*(a1 + 40) addObject:*(a1 + 32)];
  }

  v9 = *(a1 + 48);

  dispatch_group_leave(v9);
}

- (void)fetchMotionActivityBetweenStartDate:(id)a3 endDate:(id)a4 withStoredEvents:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(MOMotionManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __88__MOMotionManager_fetchMotionActivityBetweenStartDate_endDate_withStoredEvents_handler___block_invoke;
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

- (void)_fetchMotionActivityBetweenStartDate:(id)a3 endDate:(id)a4 withStoredEvents:(id)a5 handler:(id)a6
{
  v46 = a3;
  v47 = a4;
  v42 = a5;
  v38 = a6;
  v51 = self;
  v10 = [(MOMotionManager *)self queue];
  dispatch_assert_queue_V2(v10);

  v45 = +[NSCalendar currentCalendar];
  v11 = +[NSDate now];
  v12 = [v11 dateByAddingTimeInterval:-604800.0];
  v44 = [v45 startOfDayForDate:v12];

  v43 = [v45 startOfDayForDate:v46];
  if ([v44 isAfterDate:v43])
  {
    v13 = v44;
  }

  else
  {
    v13 = v43;
  }

  v14 = v13;
  v15 = objc_opt_new();
  v16 = 0;
  if ([v14 isBeforeDate:v47])
  {
    do
    {
      v17 = [v14 dateByAddingTimeInterval:86400.0];

      if ([v14 isAfterDate:v46])
      {
        v18 = v14;
      }

      else
      {
        v18 = v46;
      }

      v19 = v18;
      if ([v17 isBeforeDate:v47])
      {
        v20 = v17;
      }

      else
      {
        v20 = v47;
      }

      v21 = v20;
      if ([v19 isBeforeDate:v21])
      {
        v22 = [[NSDateInterval alloc] initWithStartDate:v19 endDate:v21];
        [v15 addObject:v22];
      }

      v16 = v17;

      v14 = v16;
    }

    while (([v16 isBeforeDate:v47] & 1) != 0);
  }

  v41 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 16];
  v40 = [NSPredicate predicateWithFormat:@"%K = %lu", @"provider", 7];
  v85[0] = v41;
  v85[1] = v40;
  v23 = [NSArray arrayWithObjects:v85 count:2];
  v39 = [NSCompoundPredicate andPredicateWithSubpredicates:v23];

  v50 = [v42 filteredArrayUsingPredicate:v39];
  group = dispatch_group_create();
  v78[0] = 0;
  v78[1] = v78;
  v78[2] = 0x3032000000;
  v78[3] = __Block_byref_object_copy__44;
  v78[4] = __Block_byref_object_dispose__44;
  v79 = objc_opt_new();
  v76[0] = 0;
  v76[1] = v76;
  v76[2] = 0x3032000000;
  v76[3] = __Block_byref_object_copy__44;
  v76[4] = __Block_byref_object_dispose__44;
  v77 = objc_opt_new();
  v74[0] = 0;
  v74[1] = v74;
  v74[2] = 0x3032000000;
  v74[3] = __Block_byref_object_copy__44;
  v74[4] = __Block_byref_object_dispose__44;
  v75 = 0;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = v15;
  v24 = [obj countByEnumeratingWithState:&v70 objects:v84 count:16];
  if (v24)
  {
    v49 = *v71;
    do
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v71 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v70 + 1) + 8 * i);
        v27 = objc_autoreleasePoolPush();
        dispatch_group_enter(group);
        v28 = [v26 startDate];

        v29 = [v26 endDate];

        v30 = _mo_log_facility_get_os_log(&MOLogFacilityMotionActivity);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v81 = v28;
          v82 = 2112;
          v83 = v29;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "start fetching motion activity from start date, %@, end date, %@", buf, 0x16u);
        }

        motionActivityManager = v51->_motionActivityManager;
        v32 = [(MOMotionManager *)v51 operationQueue];
        v61[0] = _NSConcreteStackBlock;
        v61[1] = 3221225472;
        v61[2] = __89__MOMotionManager__fetchMotionActivityBetweenStartDate_endDate_withStoredEvents_handler___block_invoke;
        v61[3] = &unk_10033FEA8;
        v14 = v28;
        v62 = v14;
        v16 = v29;
        v63 = v16;
        v67 = v74;
        v64 = v50;
        v65 = group;
        v66 = v51;
        v68 = v76;
        v69 = v78;
        [(CMMotionActivityManager *)motionActivityManager queryActivityWithAttribute:1 fromDate:v14 toDate:v16 toQueue:v32 withHandler:v61];

        objc_autoreleasePoolPop(v27);
      }

      v24 = [obj countByEnumeratingWithState:&v70 objects:v84 count:16];
    }

    while (v24);
  }

  v33 = [(MOMotionManager *)v51 queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __89__MOMotionManager__fetchMotionActivityBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_181;
  block[3] = &unk_10033FED0;
  v58 = v78;
  v59 = v76;
  v54 = v50;
  v55 = v46;
  v60 = v74;
  v56 = v47;
  v57 = v38;
  v34 = v38;
  v35 = v47;
  v36 = v46;
  v37 = v50;
  dispatch_group_notify(group, v33, block);

  _Block_object_dispose(v74, 8);
  _Block_object_dispose(v76, 8);

  _Block_object_dispose(v78, 8);
}

void __89__MOMotionManager__fetchMotionActivityBetweenStartDate_endDate_withStoredEvents_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityMotionActivity);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    *buf = 138413058;
    v25 = v8;
    v26 = 2112;
    v27 = v9;
    v28 = 2048;
    v29 = [v5 count];
    v30 = 2112;
    v31 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Fetching motion activity result from start date, %@, end date, %@, number of activities, %ld, error, %@", buf, 0x2Au);
  }

  if (v6)
  {
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityMotionActivity);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __89__MOMotionManager__fetchMotionActivityBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_cold_1();
    }

    if ([v6 code] == 104 || objc_msgSend(v6, "code") == 109)
    {
      objc_storeStrong((*(*(a1 + 72) + 8) + 40), a3);
    }

    v11 = [MORehydrationMetrics alloc];
    v12 = [v6 description];
    v13 = -[MORehydrationMetrics initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:](v11, "initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:", 16, 7, 0, v12, [*(a1 + 48) count], 3, objc_msgSend(*(a1 + 48), "count"), 0.0);

    v23 = 0;
    [(MORehydrationMetrics *)v13 submitMetricsWithError:&v23];
    v14 = v23;
    dispatch_group_leave(*(a1 + 56));
  }

  else
  {
    v15 = *(a1 + 64);
    v16 = *(a1 + 48);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __89__MOMotionManager__fetchMotionActivityBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_179;
    v17[3] = &unk_10033FE80;
    v21 = *(a1 + 72);
    v22 = *(a1 + 88);
    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    v20 = *(a1 + 56);
    [v15 _rehydrateEvents:v16 andCreateNewEventsfromMotionActivity:v5 handler:v17];

    v13 = v18;
  }
}

void __89__MOMotionManager__fetchMotionActivityBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_179(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = *(*(a1 + 56) + 8);
    v12 = *(v10 + 40);
    v11 = (v10 + 40);
    if (!v12)
    {
      objc_storeStrong(v11, a4);
    }
  }

  if ([v8 count])
  {
    [*(*(*(a1 + 64) + 8) + 40) addObjectsFromArray:v8];
  }

  if ([v7 count])
  {
    [*(*(*(a1 + 72) + 8) + 40) addObjectsFromArray:v7];
  }

  v13 = _mo_log_facility_get_os_log(&MOLogFacilityMotionActivity);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v16 = 138413058;
    v17 = v14;
    v18 = 2112;
    v19 = v15;
    v20 = 2048;
    v21 = [v8 count];
    v22 = 2048;
    v23 = [v7 count];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Fetching motion activity result from start date, %@, end date, %@, new events count, %ld, rehydrated events count, %ld", &v16, 0x2Au);
  }

  dispatch_group_leave(*(a1 + 48));
}

void __89__MOMotionManager__fetchMotionActivityBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_181(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = _mo_log_facility_get_os_log(&MOLogFacilityMotionActivity);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [*(a1 + 32) count];
    v5 = [*(*(*(a1 + 64) + 8) + 40) count];
    v6 = [*(*(*(a1 + 72) + 8) + 40) count];
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    *buf = 134219010;
    v25 = v4;
    v26 = 2048;
    v27 = v5;
    v28 = 2048;
    v29 = v6;
    v30 = 2112;
    v31 = v7;
    v32 = 2112;
    v33 = v8;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%lu stored walking events, %lu walking events rehydrated, %lu new walking events fetched for %@ to %@", buf, 0x34u);
  }

  v9 = *(*(*(a1 + 72) + 8) + 40);
  if (v9)
  {
    [v2 setObject:v9 forKey:@"newEvents"];
  }

  v10 = *(*(*(a1 + 64) + 8) + 40);
  if (v10)
  {
    [v2 setObject:v10 forKey:@"rehydratedEvents"];
    v11 = -[MORehydrationMetrics initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:]([MORehydrationMetrics alloc], "initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:", 16, 7, 1, 0, [*(a1 + 32) count], 3, (objc_msgSend(*(a1 + 32), "count") - objc_msgSend(*(*(*(a1 + 64) + 8) + 40), "count")), 0.0);
    v21 = 0;
    [(MORehydrationMetrics *)v11 submitMetricsWithError:&v21];
  }

  v12 = *(*(*(a1 + 80) + 8) + 40);
  if (!v12)
  {
    goto LABEL_15;
  }

  v13 = [v12 domain];

  if (v13 == @"MOErrorDomain")
  {
    v19 = _mo_log_facility_get_os_log(&MOLogFacilityMotionActivity);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __89__MOMotionManager__fetchMotionActivityBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_181_cold_1();
    }

    v20 = *(*(*(a1 + 80) + 8) + 40);
    v18 = *(*(a1 + 56) + 16);
    goto LABEL_19;
  }

  v14 = *(*(*(a1 + 80) + 8) + 40);
  if (!v14 || [v14 code] != 104 && objc_msgSend(*(*(*(a1 + 80) + 8) + 40), "code") != 109)
  {
LABEL_15:
    v18 = *(*(a1 + 56) + 16);
LABEL_19:
    v18();
    goto LABEL_20;
  }

  v15 = _mo_log_facility_get_os_log(&MOLogFacilityMotionActivity);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    __89__MOMotionManager__fetchMotionActivityBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_181_cold_1();
  }

  v22 = NSLocalizedDescriptionKey;
  v23 = @"MM: Provider database is unavailable (motionActivity)";
  v16 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v17 = [NSError errorWithDomain:@"MOErrorDomain" code:1280 userInfo:v16];

  (*(*(a1 + 56) + 16))();
LABEL_20:
}

- (void)_rehydrateEvents:(id)a3 andCreateNewEventsfromMotionActivity:(id)a4 handler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v29 = a5;
  v9 = _mo_log_facility_get_os_log(&MOLogFacilityMotionActivity);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    *&buf[4] = [v7 count];
    *&buf[12] = 2048;
    *&buf[14] = [v8 count];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "stored events count, %ld, motion activity count, %ld", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v58 = __Block_byref_object_copy__44;
  v59 = __Block_byref_object_dispose__44;
  v60 = 0;
  v10 = dispatch_group_create();
  dispatch_group_enter(v10);
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x3032000000;
  v53[3] = __Block_byref_object_copy__44;
  v53[4] = __Block_byref_object_dispose__44;
  v54 = 0;
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = __81__MOMotionManager__rehydrateEvents_andCreateNewEventsfromMotionActivity_handler___block_invoke;
  v49[3] = &unk_100336CE8;
  v52 = v53;
  v50 = v7;
  v11 = v10;
  v51 = v11;
  v30 = v50;
  [(MOMotionManager *)self _updateMetadataOfMotionEvents:v50 withMotionActities:v8 handler:v49];
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x3032000000;
  v47[3] = __Block_byref_object_copy__44;
  v47[4] = __Block_byref_object_dispose__44;
  v48 = 0;
  v27 = [[NSSortDescriptor alloc] initWithKey:@"endDate" ascending:1];
  group = v11;
  v56 = v27;
  v12 = [NSArray arrayWithObjects:&v56 count:1];
  v13 = [v30 sortedArrayUsingDescriptors:v12];

  v14 = objc_opt_new();
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v8;
  v15 = [obj countByEnumeratingWithState:&v43 objects:v55 count:16];
  if (v15)
  {
    v16 = *v44;
    do
    {
      v17 = 0;
      do
      {
        if (*v44 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v43 + 1) + 8 * v17);
        if (![v13 count])
        {
          goto LABEL_10;
        }

        v19 = [v18 startDate];
        v20 = [v13 lastObject];
        v21 = [v20 endDate];
        v22 = [v19 isAfterDate:v21];

        if (v22)
        {
LABEL_10:
          [v14 addObject:v18];
        }

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [obj countByEnumeratingWithState:&v43 objects:v55 count:16];
    }

    while (v15);
  }

  dispatch_group_enter(group);
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = __81__MOMotionManager__rehydrateEvents_andCreateNewEventsfromMotionActivity_handler___block_invoke_191;
  v38[3] = &unk_10033BCA0;
  v41 = buf;
  v42 = v47;
  v23 = v14;
  v39 = v23;
  v24 = group;
  v40 = v24;
  [(MOMotionManager *)self _createNewEventsFromActivities:v23 handler:v38];
  v25 = [(MOMotionManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __81__MOMotionManager__rehydrateEvents_andCreateNewEventsfromMotionActivity_handler___block_invoke_192;
  block[3] = &unk_10033FF20;
  v35 = v53;
  v36 = buf;
  block[4] = self;
  v34 = v29;
  v37 = v47;
  v26 = v29;
  dispatch_group_notify(v24, v25, block);

  _Block_object_dispose(v47, 8);
  _Block_object_dispose(v53, 8);

  _Block_object_dispose(buf, 8);
}

void __81__MOMotionManager__rehydrateEvents_andCreateNewEventsfromMotionActivity_handler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityMotionActivity);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [*(a1 + 32) count];
    v7 = [*(*(*(a1 + 48) + 8) + 40) count];
    v8 = 134218240;
    v9 = v6;
    v10 = 2048;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "stored events count, %ld, rehydrated count, %ld", &v8, 0x16u);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __81__MOMotionManager__rehydrateEvents_andCreateNewEventsfromMotionActivity_handler___block_invoke_191(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityMotionActivity);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [*(a1 + 32) count];
    v10 = [*(*(*(a1 + 56) + 8) + 40) count];
    v11 = 134218240;
    v12 = v9;
    v13 = 2048;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "activity events to save count, %ld, new events count, %ld", &v11, 0x16u);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __81__MOMotionManager__rehydrateEvents_andCreateNewEventsfromMotionActivity_handler___block_invoke_192(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) isAllowedToProcessEventCategory:1];
  v8[0] = _NSConcreteStackBlock;
  v3 = *(a1 + 48);
  v4 = *(*(*(a1 + 48) + 8) + 40);
  v8[1] = 3221225472;
  v8[2] = __81__MOMotionManager__rehydrateEvents_andCreateNewEventsfromMotionActivity_handler___block_invoke_2;
  v8[3] = &unk_10033FEF8;
  v10 = v3;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 64);
  v9 = v6;
  v11 = v7;
  [v5 _updateDeviceLocationsForMotionEvents:v4 forLocationSetting:v2 handler:v8];
}

void __81__MOMotionManager__rehydrateEvents_andCreateNewEventsfromMotionActivity_handler___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityMotionActivity);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [*(*(a1[5] + 8) + 40) count];
    v14 = 134218240;
    v15 = v8;
    v16 = 2048;
    v17 = [v5 count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "motion activity location update, rehydrated events, %lu, updated events, %lu", &v14, 0x16u);
  }

  if (v6)
  {
    v9 = *(a1[6] + 8);
    v11 = *(v9 + 40);
    v10 = (v9 + 40);
    if (!v11)
    {
      objc_storeStrong(v10, a3);
    }
  }

  v12 = *(*(a1[7] + 8) + 40);
  v13 = *(*(a1[6] + 8) + 40);
  (*(a1[4] + 16))();
}

- (void)_createNewEventsFromActivities:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v52 = v7;
    v8 = objc_opt_new();
    v9 = [NSPredicate predicateWithFormat:@"walking==YES"];
    [NSPredicate predicateWithFormat:@"running==NO"];
    v65 = v64 = v9;
    v54 = v65;
    v10 = [NSArray arrayWithObjects:&v64 count:2];
    v11 = [NSCompoundPredicate andPredicateWithSubpredicates:v10];

    v53 = v11;
    v12 = [v6 filteredArrayUsingPredicate:v11];
    v13 = [(MOMotionManager *)self configurationManager];
    LODWORD(v14) = 1142292480;
    [v13 getFloatSettingForKey:@"MOMotionWalkingMinimumEventSize" withFallback:v14];
    v51 = v12;
    v16 = [(MOMotionManager *)self createEventsFromActivities:v12 withMininumEventSize:v15];

    v55 = v16;
    [v8 addObjectsFromArray:v16];
    v17 = [NSPredicate predicateWithFormat:@"running==YES"];
    [NSPredicate predicateWithFormat:@"walking==NO"];
    v63 = v62 = v17;
    v49 = v63;
    v18 = [NSArray arrayWithObjects:&v62 count:2];
    v19 = [NSCompoundPredicate andPredicateWithSubpredicates:v18];

    v48 = v19;
    v20 = [v6 filteredArrayUsingPredicate:v19];
    v21 = [(MOMotionManager *)self configurationManager];
    LODWORD(v22) = 1133903872;
    [v21 getFloatSettingForKey:@"MOMotionRunningMinimumEventSize" withFallback:v22];
    v24 = [(MOMotionManager *)self createEventsFromActivities:v20 withMininumEventSize:v23];

    [v8 addObjectsFromArray:v24];
    v50 = v17;
    v61[0] = v17;
    v61[1] = v9;
    v25 = [NSArray arrayWithObjects:v61 count:2];
    v26 = [NSCompoundPredicate andPredicateWithSubpredicates:v25];

    v47 = v26;
    v27 = [v6 filteredArrayUsingPredicate:v26];
    v28 = [(MOMotionManager *)self configurationManager];
    LODWORD(v29) = 1142292480;
    [v28 getFloatSettingForKey:@"MOMotionMixedRunWalkMinimumEventSize" withFallback:v29];
    v31 = [(MOMotionManager *)self createEventsFromActivities:v27 withMininumEventSize:v30];

    [v8 addObjectsFromArray:v31];
    v32 = _mo_log_facility_get_os_log(&MOLogFacilityMotionActivity);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v60 = [v6 count];
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Fetched %lu motion classifications", buf, 0xCu);
    }

    v33 = _mo_log_facility_get_os_log(&MOLogFacilityMotionActivity);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = [v51 count];
      *buf = 134217984;
      v60 = v34;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Fetched %lu walking classifications", buf, 0xCu);
    }

    v35 = _mo_log_facility_get_os_log(&MOLogFacilityMotionActivity);
    v7 = v52;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = [v20 count];
      *buf = 134217984;
      v60 = v36;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Fetched %lu running classifications", buf, 0xCu);
    }

    v37 = _mo_log_facility_get_os_log(&MOLogFacilityMotionActivity);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = [v27 count];
      *buf = 134217984;
      v60 = v38;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "Fetched %lu mixed running & walking classifications", buf, 0xCu);
    }

    v39 = _mo_log_facility_get_os_log(&MOLogFacilityMotionActivity);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = [v55 count];
      *buf = 134217984;
      v60 = v40;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "%lu walking classifications met minimum duration requirement for event creation", buf, 0xCu);
    }

    v41 = _mo_log_facility_get_os_log(&MOLogFacilityMotionActivity);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      v42 = [v24 count];
      *buf = 134217984;
      v60 = v42;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "%lu running classifications met minimum duration requirement for event creation", buf, 0xCu);
    }

    v43 = _mo_log_facility_get_os_log(&MOLogFacilityMotionActivity);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v44 = [v31 count];
      *buf = 134217984;
      v60 = v44;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "%lu mixed running & walking classifications met minimum duration requirement for event creation", buf, 0xCu);
    }

    v45 = [(MOConfigurationManager *)self->_configurationManager isAllowedToProcessEventCategory:1];
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = __58__MOMotionManager__createNewEventsFromActivities_handler___block_invoke;
    v56[3] = &unk_10033FF48;
    v56[4] = self;
    v58 = v45;
    v57 = v52;
    [(MOMotionManager *)self _updateMetadataOfMotionEvents:v8 withMotionActities:v6 handler:v56];
  }

  else
  {
    v46 = _mo_log_facility_get_os_log(&MOLogFacilityMotionActivity);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "no new motion activity is fetched for creating events", buf, 2u);
    }

    (*(v7 + 2))(v7, &__NSArray0__struct, 0);
  }
}

void __58__MOMotionManager__createNewEventsFromActivities_handler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __58__MOMotionManager__createNewEventsFromActivities_handler___block_invoke_2;
  v5[3] = &unk_1003369E0;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v4 _updateDeviceLocationsForMotionEvents:a2 forLocationSetting:v3 handler:v5];
}

@end