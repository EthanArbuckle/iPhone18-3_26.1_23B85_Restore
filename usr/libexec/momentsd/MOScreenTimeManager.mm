@interface MOScreenTimeManager
- (MOScreenTimeManager)initWithUniverse:(id)a3;
- (id)_createNewEventFromAppUsageData:(id)a3;
- (id)_createResultsWithStoredEvents:(id)a3 AppUsageData:(id)a4;
- (unint64_t)_getAppCategoryBasedOnString:(id)a3;
- (void)_fetchScreenTimeEventsBetweenStartDate:(id)a3 endDate:(id)a4 withStoredEvents:(id)a5 handler:(id)a6;
- (void)_registerForDeviceActivity;
- (void)_rehydrateScreenTimeEvents:(id)a3 handler:(id)a4;
- (void)_setDynamicPropertiesForEvent:(id)a3 appUsage:(id)a4;
- (void)fetchScreenTimeEventsBetweenStartDate:(id)a3 endDate:(id)a4 withStoredEvents:(id)a5 handler:(id)a6;
- (void)rehydrateScreenTimeEvents:(id)a3 handler:(id)a4;
@end

@implementation MOScreenTimeManager

- (MOScreenTimeManager)initWithUniverse:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = MOScreenTimeManager;
  v5 = [(MOScreenTimeManager *)&v16 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("MOScreenTimeManager", v6);
    queue = v5->_queue;
    v5->_queue = v7;

    v9 = objc_opt_new();
    screenTimeProvider = v5->_screenTimeProvider;
    v5->_screenTimeProvider = v9;

    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v4 getService:v12];
    configurationManager = v5->_configurationManager;
    v5->_configurationManager = v13;

    [(MOScreenTimeManager *)v5 _registerForDeviceActivity];
  }

  return v5;
}

- (void)_registerForDeviceActivity
{
  v2 = [[MOLocalSettingsStore alloc] initWithName:@"DeviceActivityStore" sharedContainer:@"com.apple.momentsd"];
  v3 = [[MOApplication alloc] initWithBundleIdentifier:@"com.apple.momentsd"];
  v4 = [v2 deviceActivity];
  v5 = [v4 allowedClients];
  v6 = [v5 containsObject:v3];

  v7 = _mo_log_facility_get_os_log(&MOLogFacilityScreenTime);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v8)
    {
      v13 = 138412290;
      v14 = @"com.apple.momentsd";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Device activity in ManagedSettings is already registered for %@", &v13, 0xCu);
    }
  }

  else
  {
    if (v8)
    {
      v13 = 138412290;
      v14 = @"com.apple.momentsd";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "ManagedSettings store device activity is not registered for: %@, updating allow list", &v13, 0xCu);
    }

    v9 = [v2 deviceActivity];
    v10 = [v9 allowedClients];
    v7 = [NSMutableSet setWithSet:v10];

    [v7 addObject:v3];
    v11 = [v7 copy];
    v12 = [v2 deviceActivity];
    [v12 setAllowedClients:v11];
  }
}

- (id)_createResultsWithStoredEvents:(id)a3 AppUsageData:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 count])
  {
    v8 = objc_opt_new();
    v9 = objc_opt_new();
    v55 = v7;
    if ([v6 count])
    {
      v57 = v9;
      v58 = v8;
      v10 = objc_opt_new();
      v11 = objc_opt_new();
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v54 = v6;
      v12 = v6;
      v13 = [v12 countByEnumeratingWithState:&v65 objects:v81 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v66;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v66 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v65 + 1) + 8 * i);
            v18 = [v17 startDate];
            [v10 setObject:v17 forKey:v18];

            v19 = [v17 startDate];
            [v11 addObject:v19];
          }

          v14 = [v12 countByEnumeratingWithState:&v65 objects:v81 count:16];
        }

        while (v14);
      }

      v53 = v12;

      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      obj = v7;
      v20 = [obj countByEnumeratingWithState:&v61 objects:v80 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v62;
        do
        {
          for (j = 0; j != v21; j = j + 1)
          {
            if (*v62 != v22)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v61 + 1) + 8 * j);
            v25 = [v24 dateInterval];
            v26 = [v25 startDate];
            v27 = [v11 containsObject:v26];

            if (v27)
            {
              v28 = [v24 dateInterval];
              v29 = [v28 startDate];
              v30 = [v10 objectForKey:v29];

              [(MOScreenTimeManager *)self _setDynamicPropertiesForEvent:v30 appUsage:v24];
              v31 = _mo_log_facility_get_os_log(&MOLogFacilityScreenTime);
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
              {
                v33 = NSStringFromSelector(a2);
                *buf = 138412546;
                v75 = v33;
                v76 = 2112;
                v77 = v30;
                _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "%@, found matching event, rehydrated event, %@", buf, 0x16u);
              }

              v32 = v58;
            }

            else
            {
              v30 = [(MOScreenTimeManager *)self _createNewEventFromAppUsageData:v24];
              if (!v30)
              {
                goto LABEL_22;
              }

              v32 = v57;
            }

            [(MORehydrationMetrics *)v32 addObject:v30];
LABEL_22:
          }

          v21 = [obj countByEnumeratingWithState:&v61 objects:v80 count:16];
        }

        while (v21);
      }

      v34 = [MORehydrationMetrics alloc];
      v35 = [v53 firstObject];
      v36 = [v35 category];
      v37 = [v53 firstObject];
      v8 = v58;
      v38 = -[MORehydrationMetrics initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:](v34, "initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:", v36, [v37 provider], 1, 0, objc_msgSend(v53, "count"), 3, (objc_msgSend(v53, "count") - -[MORehydrationMetrics count](v58, "count")), 0.0);

      v60 = 0;
      [(MORehydrationMetrics *)v38 submitMetricsWithError:&v60];

      v6 = v54;
      v9 = v57;
    }

    else
    {
      v41 = _mo_log_facility_get_os_log(&MOLogFacilityScreenTime);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = NSStringFromSelector(a2);
        *buf = 138412290;
        v75 = v42;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "%@:no input screentime events for rehydrating", buf, 0xCu);
      }

      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v10 = v7;
      v43 = [v10 countByEnumeratingWithState:&v69 objects:v82 count:16];
      if (v43)
      {
        v44 = v43;
        v45 = *v70;
        do
        {
          for (k = 0; k != v44; k = k + 1)
          {
            if (*v70 != v45)
            {
              objc_enumerationMutation(v10);
            }

            v47 = [(MOScreenTimeManager *)self _createNewEventFromAppUsageData:*(*(&v69 + 1) + 8 * k)];
            if (v47)
            {
              [(MORehydrationMetrics *)v9 addObject:v47];
            }
          }

          v44 = [v10 countByEnumeratingWithState:&v69 objects:v82 count:16];
        }

        while (v44);
      }
    }

    v48 = _mo_log_facility_get_os_log(&MOLogFacilityScreenTime);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      v49 = [(MORehydrationMetrics *)v8 count];
      v50 = [(MORehydrationMetrics *)v9 count];
      v51 = [v6 count];
      *buf = 134218496;
      v75 = v49;
      v76 = 2048;
      v77 = v50;
      v78 = 2048;
      v79 = v51;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "rehydrated screentime events count, %lu, new screentime events counts, %lu, stored screentime events count, %lu", buf, 0x20u);
    }

    v40 = objc_opt_new();
    if ([(MORehydrationMetrics *)v9 count])
    {
      [v40 setObject:v9 forKey:@"newEvents"];
    }

    v7 = v55;
    if ([(MORehydrationMetrics *)v8 count])
    {
      [v40 setObject:v8 forKey:@"rehydratedEvents"];
    }
  }

  else
  {
    v39 = _mo_log_facility_get_os_log(&MOLogFacilityScreenTime);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      [MOScreenTimeManager _createResultsWithStoredEvents:a2 AppUsageData:v39];
    }

    v8 = -[MORehydrationMetrics initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:]([MORehydrationMetrics alloc], "initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:", 20, 9, 1, 0, [v6 count], 3, objc_msgSend(v6, "count"), 0.0);
    v73 = 0;
    [(MORehydrationMetrics *)v8 submitMetricsWithError:&v73];
    v40 = 0;
  }

  return v40;
}

- (id)_createNewEventFromAppUsageData:(id)a3
{
  v4 = a3;
  v5 = [MOEvent alloc];
  v6 = +[NSUUID UUID];
  v7 = [v4 dateInterval];
  v8 = [v7 startDate];
  v9 = [v4 dateInterval];
  v10 = [v9 endDate];
  v11 = +[NSDate date];
  v12 = [(MOEvent *)v5 initWithEventIdentifier:v6 startDate:v8 endDate:v10 creationDate:v11 provider:9 category:20];

  v13 = [v4 dateInterval];
  v14 = [v13 endDate];
  v15 = [(MOScreenTimeManager *)self configurationManager];
  LODWORD(v16) = 1242802176;
  [v15 getFloatSettingForKey:@"EventManagerOverrideMaximumEventAge" withFallback:v16];
  v18 = [v14 dateByAddingTimeInterval:v17];
  [(MOEvent *)v12 setExpirationDate:v18];

  [(MOScreenTimeManager *)self _setDynamicPropertiesForEvent:v12 appUsage:v4];
  v19 = [(MOEvent *)v12 screenTimeEvent];
  v20 = [v19 appCategoryUsages];
  v21 = [v20 count];

  if (v21)
  {
    v22 = v12;
  }

  else
  {
    v23 = _mo_log_facility_get_os_log(&MOLogFacilityScreenTime);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v25[0] = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "the category usage duration is empty so skip creating new events", v25, 2u);
    }

    v22 = 0;
  }

  return v22;
}

- (void)_setDynamicPropertiesForEvent:(id)a3 appUsage:(id)a4
{
  v27 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v26 = v6;
  v8 = [v6 categoryUsages];
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        [v13 totalDuration];
        if (v14 > 0.0)
        {
          v15 = objc_alloc_init(MOCategoryUsage);
          v16 = [v13 category];
          [(MOCategoryUsage *)v15 setAppCategory:[(MOScreenTimeManager *)self _getAppCategoryBasedOnString:v16]];

          [v13 totalDuration];
          v17 = [NSNumber numberWithDouble:?];
          [(MOCategoryUsage *)v15 setDuration:v17];

          [v7 addObject:v15];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v10);
  }

  if ([v7 count])
  {
    v18 = objc_alloc_init(MOEventScreenTime);
    [(MOEventScreenTime *)v18 setAppCategoryUsages:v7];
    v19 = [v26 longestActivity];

    if (v19)
    {
      v20 = [NSDateInterval alloc];
      v21 = [v26 longestActivity];
      v22 = [v21 startDate];
      v23 = [v26 longestActivity];
      v24 = [v23 endDate];
      v25 = [v20 initWithStartDate:v22 endDate:v24];
      [(MOEventScreenTime *)v18 setLongestActivity:v25];
    }

    [v27 setScreenTimeEvent:v18];
  }
}

- (unint64_t)_getAppCategoryBasedOnString:(id)a3
{
  v3 = a3;
  if ([v3 compare:@"DH0000"])
  {
    if ([v3 compare:@"DH0010"])
    {
      if ([v3 compare:@"DH0011"])
      {
        if ([v3 compare:@"DH0012"])
        {
          if ([v3 compare:@"DH0013"])
          {
            if ([v3 compare:@"DH1001"])
            {
              if ([v3 compare:@"DH1002"])
              {
                if ([v3 compare:@"DH1003"])
                {
                  if ([v3 compare:@"DH1004"])
                  {
                    if ([v3 compare:@"DH1005"])
                    {
                      if ([v3 compare:@"DH1006"])
                      {
                        if ([v3 compare:@"DH1007"])
                        {
                          if ([v3 compare:@"DH1008"])
                          {
                            if ([v3 compare:@"DH1009"])
                            {
                              if ([v3 compare:@"DH1011"])
                              {
                                if ([v3 compare:@"DH1012"])
                                {
                                  if ([v3 compare:@"DH1013"])
                                  {
                                    v4 = 0;
                                  }

                                  else
                                  {
                                    v4 = 17;
                                  }
                                }

                                else
                                {
                                  v4 = 16;
                                }
                              }

                              else
                              {
                                v4 = 15;
                              }
                            }

                            else
                            {
                              v4 = 14;
                            }
                          }

                          else
                          {
                            v4 = 13;
                          }
                        }

                        else
                        {
                          v4 = 12;
                        }
                      }

                      else
                      {
                        v4 = 11;
                      }
                    }

                    else
                    {
                      v4 = 10;
                    }
                  }

                  else
                  {
                    v4 = 9;
                  }
                }

                else
                {
                  v4 = 8;
                }
              }

              else
              {
                v4 = 7;
              }
            }

            else
            {
              v4 = 6;
            }
          }

          else
          {
            v4 = 5;
          }
        }

        else
        {
          v4 = 4;
        }
      }

      else
      {
        v4 = 3;
      }
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)fetchScreenTimeEventsBetweenStartDate:(id)a3 endDate:(id)a4 withStoredEvents:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(MOScreenTimeManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __94__MOScreenTimeManager_fetchScreenTimeEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke;
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

- (void)_fetchScreenTimeEventsBetweenStartDate:(id)a3 endDate:(id)a4 withStoredEvents:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v14 = _mo_log_facility_get_os_log(&MOLogFacilityScreenTime);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v29 = v10;
    v30 = 2112;
    v31 = v11;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "fetchScreenTimeEventsBetweenStartDate, %@, endDate, %@", buf, 0x16u);
  }

  v15 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 20];
  v16 = [NSPredicate predicateWithFormat:@"%K = %lu", @"provider", 9];
  v27[0] = v15;
  v27[1] = v16;
  v17 = [NSArray arrayWithObjects:v27 count:2];
  v18 = [NSCompoundPredicate andPredicateWithSubpredicates:v17];

  v19 = [v13 filteredArrayUsingPredicate:v18];

  v20 = [(MOScreenTimeManager *)self screenTimeProvider];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __95__MOScreenTimeManager__fetchScreenTimeEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke;
  v23[3] = &unk_10033FAD0;
  v25 = self;
  v26 = v12;
  v24 = v19;
  v21 = v12;
  v22 = v19;
  [v20 fetchHourlyAppUsageWithStartDate:v10 endDate:v11 completion:v23];
}

void __95__MOScreenTimeManager__fetchScreenTimeEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityScreenTime);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __95__MOScreenTimeManager__fetchScreenTimeEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_cold_1(v6, v7);
    }

    v8 = [MORehydrationMetrics alloc];
    v9 = [v6 description];
    v10 = -[MORehydrationMetrics initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:](v8, "initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:", 20, 9, 0, v9, [*(a1 + 32) count], 3, objc_msgSend(*(a1 + 32), "count"), 0.0);

    v12 = 0;
    [(MORehydrationMetrics *)v10 submitMetricsWithError:&v12];
    v11 = v12;
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (![v5 count])
    {
      (*(*(a1 + 48) + 16))();
      goto LABEL_8;
    }

    v10 = [*(a1 + 40) _createResultsWithStoredEvents:*(a1 + 32) AppUsageData:v5];
    (*(*(a1 + 48) + 16))();
  }

LABEL_8:
}

- (void)rehydrateScreenTimeEvents:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MOScreenTimeManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __57__MOScreenTimeManager_rehydrateScreenTimeEvents_handler___block_invoke;
  block[3] = &unk_100336A58;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_rehydrateScreenTimeEvents:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 getDurationOfMOEventArray];
  v10 = [(MOScreenTimeManager *)self screenTimeProvider];
  v11 = [v9 startDate];
  v12 = [v9 endDate];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __58__MOScreenTimeManager__rehydrateScreenTimeEvents_handler___block_invoke;
  v15[3] = &unk_100340AE0;
  v16 = v7;
  v17 = self;
  v18 = v8;
  v19 = a2;
  v13 = v7;
  v14 = v8;
  [v10 fetchHourlyAppUsageWithStartDate:v11 endDate:v12 completion:v15];
}

void __58__MOScreenTimeManager__rehydrateScreenTimeEvents_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = _mo_log_facility_get_os_log(&MOLogFacilityScreenTime);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __58__MOScreenTimeManager__rehydrateScreenTimeEvents_handler___block_invoke_cold_1(v5, v6);
    }

    v7 = *(*(a1 + 48) + 16);
    goto LABEL_5;
  }

  if (![v4 count])
  {
    v7 = *(*(a1 + 48) + 16);
LABEL_5:
    v7();
    goto LABEL_26;
  }

  v32 = 0;
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v10 = *(a1 + 32);
  v11 = [v10 countByEnumeratingWithState:&v40 objects:v49 count:16];
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

        v15 = *(*(&v40 + 1) + 8 * i);
        v16 = [v15 startDate];
        [v8 setObject:v15 forKey:v16];

        v17 = [v15 startDate];
        [v9 addObject:v17];
      }

      v12 = [v10 countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v12);
  }

  v34 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v33 = v4;
  v18 = v4;
  v19 = [v18 countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v37;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v37 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v36 + 1) + 8 * j);
        v24 = [v23 dateInterval];
        v25 = [v24 startDate];
        v26 = [v9 containsObject:v25];

        if (v26)
        {
          v27 = [v23 dateInterval];
          v28 = [v27 startDate];
          v29 = [v8 objectForKey:v28];

          [*(a1 + 40) _setDynamicPropertiesForEvent:v29 appUsage:v23];
          v30 = _mo_log_facility_get_os_log(&MOLogFacilityScreenTime);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            v31 = NSStringFromSelector(*(a1 + 56));
            *buf = 138412546;
            v45 = v31;
            v46 = 2112;
            v47 = v29;
            _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "%@, found matching event, rehydrated event, %@", buf, 0x16u);
          }

          [v34 addObject:v29];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v20);
  }

  (*(*(a1 + 48) + 16))();
  v5 = v32;
  v4 = v33;
LABEL_26:
}

- (void)_createResultsWithStoredEvents:(const char *)a1 AppUsageData:(NSObject *)a2 .cold.1(const char *a1, NSObject *a2)
{
  v3 = NSStringFromSelector(a1);
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%@:no screentime data fecthed for rehydrating", &v4, 0xCu);
}

void __95__MOScreenTimeManager__fetchScreenTimeEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "screentime fetching hit error, %@", &v2, 0xCu);
}

void __58__MOScreenTimeManager__rehydrateScreenTimeEvents_handler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "screentime rehydration hit error, %@", &v2, 0xCu);
}

@end