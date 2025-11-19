@interface MOWeatherManager
- (MOWeatherManager)init;
- (MOWeatherManager)initWithUniverse:(id)a3;
- (void)_rehydrateWeather:(id)a3 handler:(id)a4;
- (void)fetchWeatherBetweenStartDate:(id)a3 StartDate:(id)a4 EndDate:(id)a5 handler:(id)a6;
- (void)rehydrateWeather:(id)a3 handler:(id)a4;
@end

@implementation MOWeatherManager

- (MOWeatherManager)init
{
  v9.receiver = self;
  v9.super_class = MOWeatherManager;
  v2 = [(MOWeatherManager *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("MOWeatherManager", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_opt_new();
    weatherDataProvider = v2->_weatherDataProvider;
    v2->_weatherDataProvider = v6;
  }

  return v2;
}

- (MOWeatherManager)initWithUniverse:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 getService:v6];

  v16.receiver = self;
  v16.super_class = MOWeatherManager;
  v8 = [(MOWeatherManager *)&v16 init];
  if (v8)
  {
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("MOWeatherManager", v9);
    queue = v8->_queue;
    v8->_queue = v10;

    v12 = objc_opt_new();
    weatherDataProvider = v8->_weatherDataProvider;
    v8->_weatherDataProvider = v12;

    objc_storeStrong(&v8->_defaultManager, v7);
    v14 = [(MOWeatherManager *)v8 defaultManager];
    [v14 setObject:&__kCFBooleanTrue forKey:@"MODefaultsWeatherManagerRequestsDisabled"];
  }

  return v8;
}

- (void)fetchWeatherBetweenStartDate:(id)a3 StartDate:(id)a4 EndDate:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(MOWeatherManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __75__MOWeatherManager_fetchWeatherBetweenStartDate_StartDate_EndDate_handler___block_invoke;
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

void __75__MOWeatherManager_fetchWeatherBetweenStartDate_StartDate_EndDate_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 16);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __75__MOWeatherManager_fetchWeatherBetweenStartDate_StartDate_EndDate_handler___block_invoke_2;
  v6[3] = &unk_1003377E0;
  v7 = v4;
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  [v3 fetchHourlyWeatherFor:v2 startDate:v7 endDate:v5 completion:v6];
}

void __75__MOWeatherManager_fetchWeatherBetweenStartDate_StartDate_EndDate_handler___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityWeather);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v5 objectAtIndex:0];
      v9 = [v8 getWeatherSummary];
      v10 = a1[4];
      v11 = a1[5];
      v12 = 138412802;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Weather condition is %@ between %@ and %@", &v12, 0x20u);
    }
  }

  (*(a1[6] + 16))();
}

- (void)rehydrateWeather:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MOWeatherManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __45__MOWeatherManager_rehydrateWeather_handler___block_invoke;
  block[3] = &unk_100336A58;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_rehydrateWeather:(id)a3 handler:(id)a4
{
  v41 = a3;
  v40 = a4;
  v44 = self;
  v6 = [(MOWeatherManager *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = dispatch_group_create();
  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = __Block_byref_object_copy__14;
  v75 = __Block_byref_object_dispose__14;
  v76 = objc_alloc_init(NSMutableArray);
  v69[0] = 0;
  v69[1] = v69;
  v69[2] = 0x3032000000;
  v69[3] = __Block_byref_object_copy__14;
  v69[4] = __Block_byref_object_dispose__14;
  v70 = 0;
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityWeather);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = NSStringFromSelector(a2);
    v12 = [v41 count];
    *buf = 138412802;
    *&buf[4] = v10;
    *&buf[12] = 2112;
    *&buf[14] = v11;
    *&buf[22] = 2048;
    v79 = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@, %@, Fetch Weather Data START, events count, %lu", buf, 0x20u);
  }

  v13 = [(MOWeatherManager *)self defaultManager];
  v14 = [v13 objectForKey:@"MODefaultsWeatherManagerRequestsDisabled"];
  v15 = [v14 BOOLValue];

  if (v15)
  {
    v16 = _mo_log_facility_get_os_log(&MOLogFacilityWeather);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = v18;
      *&buf[12] = 2112;
      *&buf[14] = v19;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%@, %@, Fetch Weather Data END, the call to weather service is disabled by the default settings", buf, 0x16u);
    }

    if (v40)
    {
      v40[2]();
    }

    else
    {
      v36 = _mo_log_facility_get_os_log(&MOLogFacilityWeather);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        v39 = NSStringFromSelector(a2);
        [(MOWeatherManager *)v38 _rehydrateWeather:v39 handler:buf, v36];
      }
    }
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v79 = 0;
    v68[0] = 0;
    v68[1] = v68;
    v68[2] = 0x2020000000;
    v68[3] = 0;
    v64 = 0;
    v65 = &v64;
    v66 = 0x2020000000;
    v67 = 0;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    obj = v41;
    v20 = [obj countByEnumeratingWithState:&v60 objects:v77 count:16];
    if (v20)
    {
      v21 = *v61;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v61 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v60 + 1) + 8 * i);
          v24 = [CLLocation alloc];
          v25 = [v23 location];
          [v25 latitude];
          v27 = v26;
          v28 = [v23 location];
          [v28 longitude];
          v30 = [v24 initWithLatitude:v27 longitude:v29];

          dispatch_group_enter(v7);
          v31 = [v23 predominantWeather];
          LODWORD(v24) = v31 == 0;

          if (v24)
          {
            ++v65[3];
            weatherDataProvider = v44->_weatherDataProvider;
            v33 = [v23 startDate];
            v34 = [v23 endDate];
            v53[0] = _NSConcreteStackBlock;
            v53[1] = 3221225472;
            v53[2] = __46__MOWeatherManager__rehydrateWeather_handler___block_invoke;
            v53[3] = &unk_1003382E8;
            v53[4] = v23;
            v53[5] = v44;
            v55 = v68;
            v56 = v69;
            v57 = buf;
            v58 = &v71;
            v59 = a2;
            v54 = v7;
            [(MOWeatherDataProvider *)weatherDataProvider fetchHourlyWeatherFor:v30 startDate:v33 endDate:v34 completion:v53];
          }

          else
          {
            [v72[5] addObject:v23];
            dispatch_group_leave(v7);
          }
        }

        v20 = [obj countByEnumeratingWithState:&v60 objects:v77 count:16];
      }

      while (v20);
    }

    v35 = [(MOWeatherManager *)v44 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __46__MOWeatherManager__rehydrateWeather_handler___block_invoke_109;
    block[3] = &unk_100338310;
    v47 = &v64;
    v48 = v68;
    v52 = a2;
    v49 = buf;
    v50 = &v71;
    v51 = v69;
    block[4] = v44;
    v46 = v40;
    dispatch_group_notify(v7, v35, block);

    _Block_object_dispose(&v64, 8);
    _Block_object_dispose(v68, 8);
    _Block_object_dispose(buf, 8);
  }

  _Block_object_dispose(v69, 8);

  _Block_object_dispose(&v71, 8);
}

void __46__MOWeatherManager__rehydrateWeather_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v19 = v6;
    v20 = v5;
    ++*(*(*(a1 + 56) + 8) + 24);
    v7 = [v5 objectAtIndex:0];
    v18 = [MOWeather alloc];
    v17 = +[NSUUID UUID];
    v8 = [*(a1 + 32) startDate];
    v9 = [*(a1 + 32) endDate];
    v10 = [v7 weatherSummary];
    v11 = [v7 symbolName];
    v12 = [v7 temperature];
    v13 = [v7 windSpeed];
    v14 = [(MOWeather *)v18 initWithWeatherIdentifier:v17 startDate:v8 endDate:v9 weatherSummary:v10 weatherSymbolName:v11 temperature:v12 windSpeed:v13];

    [(MOWeather *)v14 setSourceEventAccessType:5];
    [*(a1 + 32) setPredominantWeather:v14];
    v15 = _mo_log_facility_get_os_log(&MOLogFacilityWeather);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      __46__MOWeatherManager__rehydrateWeather_handler___block_invoke_cold_1(a1, (a1 + 32), v15);
    }

    v6 = v19;
    v5 = v20;
  }

  else if (v6)
  {
    v16 = _mo_log_facility_get_os_log(&MOLogFacilityWeather);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __46__MOWeatherManager__rehydrateWeather_handler___block_invoke_cold_2(a1, v6, v16);
    }

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
    ++*(*(*(a1 + 72) + 8) + 24);
  }

  [*(*(*(a1 + 80) + 8) + 40) addObject:*(a1 + 32)];
  dispatch_group_leave(*(a1 + 48));
}

void __46__MOWeatherManager__rehydrateWeather_handler___block_invoke_109(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityWeather);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = NSStringFromSelector(*(a1 + 88));
    v6 = *(*(*(a1 + 48) + 8) + 24);
    v7 = *(*(*(a1 + 56) + 8) + 24);
    v8 = *(*(*(a1 + 64) + 8) + 24);
    v11 = 138413314;
    v12 = v4;
    v13 = 2112;
    v14 = v5;
    v15 = 2048;
    v16 = v6;
    v17 = 2048;
    v18 = v7;
    v19 = 2048;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%@, %@, Fetch Weather Data END, attempted %lu weather requests, successfully fethed weather data for %lu events and %lu weather fetch errors occured.", &v11, 0x34u);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, *(*(*(a1 + 72) + 8) + 40), *(*(*(a1 + 80) + 8) + 40));
  }

  else
  {
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityWeather);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __46__MOWeatherManager__rehydrateWeather_handler___block_invoke_109_cold_1(a1, v10);
    }
  }
}

- (void)_rehydrateWeather:(uint8_t *)buf handler:(os_log_t)log .cold.1(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%@, %@, nil handler", buf, 0x16u);
}

void __46__MOWeatherManager__rehydrateWeather_handler___block_invoke_cold_1(uint64_t a1, id *a2, NSObject *a3)
{
  v6 = *(a1 + 40);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = NSStringFromSelector(*(a1 + 88));
  v10 = [*a2 eventIdentifier];
  v11 = [*a2 predominantWeather];
  v12 = [v11 weatherSummary];
  v13 = [*a2 predominantWeather];
  v14 = [v13 startDate];
  v15 = [*a2 predominantWeather];
  v16 = [v15 endDate];
  v17 = 138413570;
  v18 = v8;
  v19 = 2112;
  v20 = v9;
  v21 = 2112;
  v22 = v10;
  v23 = 2112;
  v24 = v12;
  v25 = 2112;
  v26 = v14;
  v27 = 2112;
  v28 = v16;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "%@, %@, Just finished processing weather rehydrate for the event %@, weather condition for the first hour is %@ between %@ and %@ ", &v17, 0x3Eu);
}

void __46__MOWeatherManager__rehydrateWeather_handler___block_invoke_cold_2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = *(a1 + 40);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(*(a1 + 88));
  v9 = [*(a1 + 32) eventIdentifier];
  v10 = [*(a1 + 32) predominantWeather];
  v11 = [v10 weatherSummary];
  v12 = [*(a1 + 32) predominantWeather];
  v13 = [v12 startDate];
  v14 = [*(a1 + 32) predominantWeather];
  v15 = [v14 endDate];
  *buf = 138413826;
  v18 = v7;
  v19 = 2112;
  v20 = v8;
  v21 = 2112;
  v22 = a2;
  v23 = 2112;
  v24 = v9;
  v25 = 2112;
  v26 = v11;
  v27 = 2112;
  v28 = v13;
  v29 = 2112;
  v30 = v15;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%@, %@, error %@ fetching weather for the event %@, weather condition for the first hour is %@ between %@ and %@ ", buf, 0x48u);
}

void __46__MOWeatherManager__rehydrateWeather_handler___block_invoke_109_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(*(a1 + 88));
  v8 = 138412546;
  v9 = v6;
  v10 = 2112;
  v11 = v7;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%@, %@, nil handler", &v8, 0x16u);
}

@end