@interface MOSpotlightManager
- (MOSpotlightManager)initWithUniverse:(id)a3;
- (id)_createNewEventFromEntityInvite:(id)a3;
- (id)_createResultsWithStoredEvents:(id)a3 withEventEntityinvites:(id)a4;
- (void)_fetchInviteEventsBetweenStartDate:(id)a3 endDate:(id)a4 withStoredEvents:(id)a5 handler:(id)a6;
- (void)_rehydrateInviteEvents:(id)a3 handler:(id)a4;
- (void)_setDynamicPropertiesForEvent:(id)a3 withEntityInvite:(id)a4;
- (void)fetchInviteEventsBetweenStartDate:(id)a3 endDate:(id)a4 withStoredEvents:(id)a5 handler:(id)a6;
- (void)rehydrateInviteEvents:(id)a3 handler:(id)a4;
@end

@implementation MOSpotlightManager

- (MOSpotlightManager)initWithUniverse:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = MOSpotlightManager;
  v5 = [(MOSpotlightManager *)&v16 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("MOSpotlightManager", v6);
    queue = v5->_queue;
    v5->_queue = v7;

    v9 = objc_opt_new();
    eventEntityInviteProvider = v5->_eventEntityInviteProvider;
    v5->_eventEntityInviteProvider = v9;

    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v4 getService:v12];
    configurationManager = v5->_configurationManager;
    v5->_configurationManager = v13;
  }

  return v5;
}

- (void)fetchInviteEventsBetweenStartDate:(id)a3 endDate:(id)a4 withStoredEvents:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(MOSpotlightManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __89__MOSpotlightManager_fetchInviteEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke;
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

- (void)_fetchInviteEventsBetweenStartDate:(id)a3 endDate:(id)a4 withStoredEvents:(id)a5 handler:(id)a6
{
  v40 = a3;
  v41 = a4;
  v37 = a5;
  v33 = a6;
  v9 = _mo_log_facility_get_os_log(&MOLogFacilitySpotlight);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = v40;
    *&buf[12] = 2112;
    *&buf[14] = v41;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "spotlight invite fetchInviteEventsBetweenStartDate, %@, endDate, %@", buf, 0x16u);
  }

  v39 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 25];
  v38 = [NSPredicate predicateWithFormat:@"%K = %lu", @"provider", 12];
  v74[0] = v39;
  v74[1] = v38;
  v10 = [NSArray arrayWithObjects:v74 count:2];
  v36 = [NSCompoundPredicate andPredicateWithSubpredicates:v10];

  v32 = [v37 filteredArrayUsingPredicate:v36];
  v11 = [NSArray arrayWithObjects:@"com.apple.rsvp", @"com.apple.rsvp.liveon", 0];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v71 = __Block_byref_object_copy__42;
  v72 = __Block_byref_object_dispose__42;
  v73 = +[NSMutableArray array];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v65 objects:v69 count:16];
  v13 = 0;
  if (v12)
  {
    v14 = *v66;
    while (2)
    {
      v15 = 0;
      v16 = v13;
      do
      {
        if (*v66 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v65 + 1) + 8 * v15);

        v17 = [NSString stringWithFormat:@"bundleID == %@", v13];
        v18 = dispatch_semaphore_create(0);
        v19 = objc_opt_new();
        [v19 setFetchAttributes:&off_10036E2E0];
        v20 = [[CSSearchQuery alloc] initWithQueryString:v17 queryContext:v19];
        v62[0] = _NSConcreteStackBlock;
        v62[1] = 3221225472;
        v62[2] = __90__MOSpotlightManager__fetchInviteEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke;
        v62[3] = &unk_10033F580;
        v21 = v17;
        v63 = v21;
        v64 = buf;
        [v20 setFoundItemsHandler:v62];
        v60[0] = _NSConcreteStackBlock;
        v60[1] = 3221225472;
        v60[2] = __90__MOSpotlightManager__fetchInviteEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_138;
        v60[3] = &unk_10033B260;
        v22 = v18;
        v61 = v22;
        [v20 setCompletionHandler:v60];
        [v20 start];
        v23 = dispatch_time(0, 120000000000);
        dispatch_semaphore_wait(v22, v23);
        if ([*(*&buf[8] + 40) count] || !+[MOPlatformInfo isInternalBuild](MOPlatformInfo, "isInternalBuild"))
        {

          goto LABEL_16;
        }

        v24 = _mo_log_facility_get_os_log(&MOLogFacilitySpotlight);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          [MOSpotlightManager _fetchInviteEventsBetweenStartDate:v59 endDate:v24 withStoredEvents:? handler:?];
        }

        v15 = v15 + 1;
        v16 = v13;
      }

      while (v12 != v15);
      v12 = [obj countByEnumeratingWithState:&v65 objects:v69 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  v25 = dispatch_group_create();
  dispatch_group_enter(v25);
  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x3032000000;
  v56[3] = __Block_byref_object_copy__42;
  v56[4] = __Block_byref_object_dispose__42;
  v57 = 0;
  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x3032000000;
  v54[3] = __Block_byref_object_copy__42;
  v54[4] = __Block_byref_object_dispose__42;
  v55 = 0;
  v26 = [(MOSpotlightManager *)self eventEntityInviteProvider];
  v27 = *(*&buf[8] + 40);
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = __90__MOSpotlightManager__fetchInviteEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_141;
  v48[3] = &unk_10033F5A8;
  v28 = v32;
  v52 = v54;
  v53 = v56;
  v49 = v28;
  v50 = self;
  v29 = v25;
  v51 = v29;
  [v26 fetchEventEntityPropertiesWithSpotlightIdentifiers:v27 startDateFetch:v40 endDateFetch:v41 bundleIdentifier:v13 completion:v48];

  v30 = [(MOSpotlightManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __90__MOSpotlightManager__fetchInviteEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_144;
  block[3] = &unk_10033F5D0;
  v45 = v54;
  v46 = v56;
  block[4] = self;
  v44 = v33;
  v47 = a2;
  v31 = v33;
  dispatch_group_notify(v29, v30, block);

  _Block_object_dispose(v54, 8);
  _Block_object_dispose(v56, 8);

  _Block_object_dispose(buf, 8);
}

void __90__MOSpotlightManager__fetchInviteEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    v18 = v3;
    do
    {
      v7 = 0;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v21 + 1) + 8 * v7);
        v9 = _mo_log_facility_get_os_log(&MOLogFacilitySpotlight);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v20 = [v8 attributeSet];
          v13 = [v20 title];
          v19 = [v8 attributeSet];
          v14 = [v19 domainIdentifier];
          v15 = [v8 attributeSet];
          v16 = [v15 appEntityInstanceId];
          v17 = *(a1 + 32);
          *buf = 138413058;
          v26 = v13;
          v27 = 2112;
          v28 = v14;
          v29 = 2112;
          v30 = v16;
          v31 = 2112;
          v32 = v17;
          _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "spotlight invite event fetched with title: %@, with domain identifier: %@, with app entitity instance ID %@, for bundleID %@", buf, 0x2Au);

          v3 = v18;
        }

        v10 = *(*(*(a1 + 40) + 8) + 40);
        v11 = [v8 attributeSet];
        v12 = [v11 appEntityInstanceId];
        [v10 addObject:v12];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v5);
  }
}

void __90__MOSpotlightManager__fetchInviteEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_141(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilitySpotlight);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __90__MOSpotlightManager__fetchInviteEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_141_cold_1();
    }

    v9 = [MORehydrationMetrics alloc];
    v10 = [v6 description];
    v11 = -[MORehydrationMetrics initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:](v9, "initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:", 25, 12, 0, v10, [*(a1 + 32) count], 3, objc_msgSend(*(a1 + 32), "count"), 0.0);

    v15 = 0;
    [(MORehydrationMetrics *)v11 submitMetricsWithError:&v15];
    v12 = v15;
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);

    goto LABEL_9;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v17 = [v5 count];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "spotlight invite fetch result count %lu", buf, 0xCu);
  }

  if ([v5 count])
  {
    v13 = [*(a1 + 40) _createResultsWithStoredEvents:*(a1 + 32) withEventEntityinvites:v5];
    v14 = *(*(a1 + 64) + 8);
    v11 = *(v14 + 40);
    *(v14 + 40) = v13;
LABEL_9:
  }

  dispatch_group_leave(*(a1 + 48));
}

void __90__MOSpotlightManager__fetchInviteEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_144(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = *(*(a1[6] + 8) + 40);
    v4 = *(*(a1[7] + 8) + 40);
    v5 = *(v2 + 16);

    v5();
  }

  else
  {
    v6 = _mo_log_facility_get_os_log(&MOLogFacilitySpotlight);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __90__MOSpotlightManager__fetchInviteEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_144_cold_1(a1);
    }
  }
}

- (void)rehydrateInviteEvents:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MOSpotlightManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __52__MOSpotlightManager_rehydrateInviteEvents_handler___block_invoke;
  block[3] = &unk_100336A58;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_rehydrateInviteEvents:(id)a3 handler:(id)a4
{
  v5 = a3;
  v24 = a4;
  v6 = [v5 getDurationOfMOEventArray];
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__42;
  v47 = __Block_byref_object_dispose__42;
  v48 = +[NSMutableArray array];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (v8)
  {
    v9 = *v40;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v40 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v39 + 1) + 8 * i);
        v12 = [v11 identifierFromProvider];

        if (v12)
        {
          v13 = v44[5];
          v14 = [v11 identifierFromProvider];
          [v13 addObject:v14];

          v15 = _mo_log_facility_get_os_log(&MOLogFacilitySpotlight);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v16 = [v11 identifierFromProvider];
            [(MOSpotlightManager *)v16 _rehydrateInviteEvents:buf handler:&v50, v15];
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v39 objects:v51 count:16];
    }

    while (v8);
  }

  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x3032000000;
  v37[3] = __Block_byref_object_copy__42;
  v37[4] = __Block_byref_object_dispose__42;
  v38 = objc_opt_new();
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = __Block_byref_object_copy__42;
  v35[4] = __Block_byref_object_dispose__42;
  v36 = 0;
  v17 = [(MOSpotlightManager *)self eventEntityInviteProvider];
  v18 = v44[5];
  v19 = [v6 startDate];
  v20 = [v6 endDate];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = __53__MOSpotlightManager__rehydrateInviteEvents_handler___block_invoke;
  v27[3] = &unk_10033F620;
  v31 = v35;
  v27[4] = self;
  v32 = &v43;
  v21 = v6;
  v28 = v21;
  v22 = v7;
  v29 = v22;
  v33 = v37;
  v34 = a2;
  v23 = v24;
  v30 = v23;
  [v17 fetchEventEntityPropertiesWithSpotlightIdentifiers:v18 startDateFetch:v19 endDateFetch:v20 bundleIdentifier:@"com.apple.rsvp" completion:v27];

  _Block_object_dispose(v35, 8);
  _Block_object_dispose(v37, 8);

  _Block_object_dispose(&v43, 8);
}

void __53__MOSpotlightManager__rehydrateInviteEvents_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilitySpotlight);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __53__MOSpotlightManager__rehydrateInviteEvents_handler___block_invoke_cold_1();
    }

    v9 = *(*(a1 + 64) + 8);
    v10 = v6;
    v8 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v75 = [v5 count];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "spotlight invite rehydration fetch result count %lu for com.apple.rsvp", buf, 0xCu);
  }

  if ([v5 count] || !+[MOPlatformInfo isInternalBuild](MOPlatformInfo, "isInternalBuild"))
  {
    if ([v5 count])
    {
      v58 = v6;
      v25 = _mo_log_facility_get_os_log(&MOLogFacilitySpotlight);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        __53__MOSpotlightManager__rehydrateInviteEvents_handler___block_invoke_cold_2(v25, v26, v27, v28, v29, v30, v31, v32);
      }

      v33 = objc_opt_new();
      v34 = objc_opt_new();
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v35 = *(a1 + 48);
      v36 = [v35 countByEnumeratingWithState:&v64 objects:v79 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v65;
        do
        {
          for (i = 0; i != v37; i = i + 1)
          {
            if (*v65 != v38)
            {
              objc_enumerationMutation(v35);
            }

            v40 = *(*(&v64 + 1) + 8 * i);
            v41 = [v40 startDate];
            [v33 setObject:v40 forKey:v41];

            v42 = [v40 startDate];
            [v34 addObject:v42];
          }

          v37 = [v35 countByEnumeratingWithState:&v64 objects:v79 count:16];
        }

        while (v37);
      }

      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v59 = v5;
      v43 = v5;
      v44 = [v43 countByEnumeratingWithState:&v60 objects:v78 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = *v61;
        do
        {
          for (j = 0; j != v45; j = j + 1)
          {
            if (*v61 != v46)
            {
              objc_enumerationMutation(v43);
            }

            v48 = *(*(&v60 + 1) + 8 * j);
            v49 = [v48 startDate];
            v50 = [v34 containsObject:v49];

            if (v50)
            {
              v51 = [v48 startDate];
              v52 = [v33 objectForKey:v51];

              [*(a1 + 32) _setDynamicPropertiesForEvent:v52 withEntityInvite:v48];
              v53 = _mo_log_facility_get_os_log(&MOLogFacilitySpotlight);
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
              {
                v54 = NSStringFromSelector(*(a1 + 88));
                *buf = 138412546;
                v75 = v54;
                v76 = 2112;
                v77 = v52;
                _os_log_debug_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "%@, spotlight invite rehydration found matching event, rehydrated event, %@", buf, 0x16u);
              }

              [*(*(*(a1 + 80) + 8) + 40) addObject:v52];
            }
          }

          v45 = [v43 countByEnumeratingWithState:&v60 objects:v78 count:16];
        }

        while (v45);
      }

      v6 = v58;
      v5 = v59;
    }

    if (*(a1 + 56))
    {
      if ([*(*(*(a1 + 80) + 8) + 40) count])
      {
        v55 = *(*(*(a1 + 80) + 8) + 40);
      }

      v56 = *(*(*(a1 + 64) + 8) + 40);
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v57 = _mo_log_facility_get_os_log(&MOLogFacilitySpotlight);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        __53__MOSpotlightManager__rehydrateInviteEvents_handler___block_invoke_cold_3(a1);
      }
    }
  }

  else
  {
    v11 = _mo_log_facility_get_os_log(&MOLogFacilitySpotlight);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __53__MOSpotlightManager__rehydrateInviteEvents_handler___block_invoke_cold_4(v11, v12, v13, v14, v15, v16, v17, v18);
    }

    v19 = [*(a1 + 32) eventEntityInviteProvider];
    v20 = *(*(*(a1 + 72) + 8) + 40);
    v21 = [*(a1 + 40) startDate];
    v22 = [*(a1 + 40) endDate];
    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = __53__MOSpotlightManager__rehydrateInviteEvents_handler___block_invoke_145;
    v68[3] = &unk_10033F5F8;
    v72 = *(a1 + 64);
    v23 = *(a1 + 48);
    v24 = *(a1 + 32);
    v69 = v23;
    v70 = v24;
    v73 = *(a1 + 80);
    v71 = *(a1 + 56);
    [v19 fetchEventEntityPropertiesWithSpotlightIdentifiers:v20 startDateFetch:v21 endDateFetch:v22 bundleIdentifier:@"com.apple.rsvp.liveon" completion:v68];
  }
}

void __53__MOSpotlightManager__rehydrateInviteEvents_handler___block_invoke_145(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilitySpotlight);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __53__MOSpotlightManager__rehydrateInviteEvents_handler___block_invoke_145_cold_1();
    }

    v9 = *(*(a1 + 56) + 8);
    v10 = v6;
    v8 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v55 = [v5 count];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "spotlight invite rehydration fetch result count %lu for com.apple.rsvp.liveon", buf, 0xCu);
  }

  if ([v5 count])
  {
    v44 = v6;
    v11 = _mo_log_facility_get_os_log(&MOLogFacilitySpotlight);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __53__MOSpotlightManager__rehydrateInviteEvents_handler___block_invoke_145_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
    }

    v19 = objc_opt_new();
    v20 = objc_opt_new();
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v21 = *(a1 + 32);
    v22 = [v21 countByEnumeratingWithState:&v50 objects:v59 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v51;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v51 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v50 + 1) + 8 * i);
          v27 = [v26 startDate];
          [v19 setObject:v26 forKey:v27];

          v28 = [v26 startDate];
          [v20 addObject:v28];
        }

        v23 = [v21 countByEnumeratingWithState:&v50 objects:v59 count:16];
      }

      while (v23);
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v45 = v5;
    v29 = v5;
    v30 = [v29 countByEnumeratingWithState:&v46 objects:v58 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v47;
      do
      {
        for (j = 0; j != v31; j = j + 1)
        {
          if (*v47 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v46 + 1) + 8 * j);
          v35 = [v34 startDate];
          v36 = [v20 containsObject:v35];

          if (v36)
          {
            v37 = [v34 startDate];
            v38 = [v19 objectForKey:v37];

            [*(a1 + 40) _setDynamicPropertiesForEvent:v38 withEntityInvite:v34];
            v39 = _mo_log_facility_get_os_log(&MOLogFacilitySpotlight);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
            {
              v40 = NSStringFromSelector(*(a1 + 72));
              *buf = 138412546;
              v55 = v40;
              v56 = 2112;
              v57 = v38;
              _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "%@, spotlight invite rehydration found matching event, rehydrated event, %@", buf, 0x16u);
            }

            [*(*(*(a1 + 64) + 8) + 40) addObject:v38];
          }
        }

        v31 = [v29 countByEnumeratingWithState:&v46 objects:v58 count:16];
      }

      while (v31);
    }

    v6 = v44;
    v5 = v45;
  }

  if (*(a1 + 48))
  {
    if ([*(*(*(a1 + 64) + 8) + 40) count])
    {
      v41 = *(*(*(a1 + 64) + 8) + 40);
    }

    v42 = *(*(*(a1 + 56) + 8) + 40);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v43 = _mo_log_facility_get_os_log(&MOLogFacilitySpotlight);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      __53__MOSpotlightManager__rehydrateInviteEvents_handler___block_invoke_145_cold_3(a1);
    }
  }
}

- (id)_createResultsWithStoredEvents:(id)a3 withEventEntityinvites:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 count])
  {
    v8 = objc_opt_new();
    v9 = objc_opt_new();
    if ([v6 count])
    {
      v54 = v9;
      v10 = objc_opt_new();
      v11 = objc_opt_new();
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v52 = v6;
      obj = v6;
      v12 = [obj countByEnumeratingWithState:&v62 objects:v78 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v63;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v63 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v62 + 1) + 8 * i);
            v17 = [v16 startDate];
            [v10 setObject:v16 forKey:v17];

            v18 = [v16 startDate];
            [v11 addObject:v18];
          }

          v13 = [obj countByEnumeratingWithState:&v62 objects:v78 count:16];
        }

        while (v13);
      }

      v55 = v8;

      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v51 = v7;
      v19 = v7;
      v20 = [v19 countByEnumeratingWithState:&v58 objects:v77 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v59;
        do
        {
          for (j = 0; j != v21; j = j + 1)
          {
            if (*v59 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v58 + 1) + 8 * j);
            v25 = [v24 startDate];
            v26 = [v11 containsObject:v25];

            if (v26)
            {
              v27 = [v24 startDate];
              v28 = [v10 objectForKey:v27];

              [(MOSpotlightManager *)self _setDynamicPropertiesForEvent:v28 withEntityInvite:v24];
              v29 = _mo_log_facility_get_os_log(&MOLogFacilitySpotlight);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
              {
                v31 = NSStringFromSelector(a2);
                *buf = 138412546;
                v72 = v31;
                v73 = 2112;
                v74 = v28;
                _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "%@, found matching event, rehydrated event, %@", buf, 0x16u);
              }

              v30 = v55;
            }

            else
            {
              v28 = [(MOSpotlightManager *)self _createNewEventFromEntityInvite:v24];
              if (!v28)
              {
                goto LABEL_22;
              }

              v30 = v54;
            }

            [(MORehydrationMetrics *)v30 addObject:v28];
LABEL_22:
          }

          v21 = [v19 countByEnumeratingWithState:&v58 objects:v77 count:16];
        }

        while (v21);
      }

      v32 = [MORehydrationMetrics alloc];
      v33 = [obj firstObject];
      v34 = [v33 category];
      v35 = [obj firstObject];
      v8 = v55;
      v36 = -[MORehydrationMetrics initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:](v32, "initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:", v34, [v35 provider], 1, 0, objc_msgSend(obj, "count"), 3, (objc_msgSend(obj, "count") - -[MORehydrationMetrics count](v55, "count")), 0.0);

      v57 = 0;
      [(MORehydrationMetrics *)v36 submitMetricsWithError:&v57];

      v7 = v51;
      v6 = v52;
      v9 = v54;
    }

    else
    {
      v39 = _mo_log_facility_get_os_log(&MOLogFacilitySpotlight);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = NSStringFromSelector(a2);
        *buf = 138412290;
        v72 = v40;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "%@: no input spotlight invite events for rehydrating", buf, 0xCu);
      }

      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v10 = v7;
      v41 = [v10 countByEnumeratingWithState:&v66 objects:v79 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v67;
        do
        {
          for (k = 0; k != v42; k = k + 1)
          {
            if (*v67 != v43)
            {
              objc_enumerationMutation(v10);
            }

            v45 = [(MOSpotlightManager *)self _createNewEventFromEntityInvite:*(*(&v66 + 1) + 8 * k)];
            if (v45)
            {
              [(MORehydrationMetrics *)v9 addObject:v45];
            }
          }

          v42 = [v10 countByEnumeratingWithState:&v66 objects:v79 count:16];
        }

        while (v42);
      }
    }

    v46 = _mo_log_facility_get_os_log(&MOLogFacilitySpotlight);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      v47 = [(MORehydrationMetrics *)v8 count];
      v48 = [(MORehydrationMetrics *)v9 count];
      v49 = [v6 count];
      *buf = 134218496;
      v72 = v47;
      v73 = 2048;
      v74 = v48;
      v75 = 2048;
      v76 = v49;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "spotlight invite: rehydrated spotlight invite events count, %lu, new spotlight invite events count, %lu, stored spotlight invites events count, %lu", buf, 0x20u);
    }

    v38 = objc_opt_new();
    if ([(MORehydrationMetrics *)v9 count])
    {
      [v38 setObject:v9 forKey:@"newEvents"];
    }

    if ([(MORehydrationMetrics *)v8 count])
    {
      [v38 setObject:v8 forKey:@"rehydratedEvents"];
    }
  }

  else
  {
    v37 = _mo_log_facility_get_os_log(&MOLogFacilitySpotlight);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [MOSpotlightManager _createResultsWithStoredEvents:a2 withEventEntityinvites:?];
    }

    v8 = -[MORehydrationMetrics initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:]([MORehydrationMetrics alloc], "initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:", 25, 12, 1, 0, [v6 count], 3, objc_msgSend(v6, "count"), 0.0);
    v70 = 0;
    [(MORehydrationMetrics *)v8 submitMetricsWithError:&v70];
    v38 = 0;
  }

  return v38;
}

- (id)_createNewEventFromEntityInvite:(id)a3
{
  v4 = a3;
  v5 = [v4 startDate];
  if (v5 && (v6 = v5, [v4 title], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = [v4 endDate];

    if (v8)
    {
      v9 = [v4 endDate];
    }

    else
    {
      v9 = [v4 startDate];
      v11 = _mo_log_facility_get_os_log(&MOLogFacilitySpotlight);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "spotlight invite: the entity event has no endDate set, so setting event endDate to startDate", &v21, 2u);
      }
    }

    v12 = [MOEvent alloc];
    v13 = +[NSUUID UUID];
    v14 = [v4 startDate];
    v15 = +[NSDate date];
    v10 = [(MOEvent *)v12 initWithEventIdentifier:v13 startDate:v14 endDate:v9 creationDate:v15 provider:12 category:25];

    v16 = [v4 endDate];
    v17 = [v16 dateByAddingTimeInterval:2419200.0];
    [(MOEvent *)v10 setExpirationDate:v17];

    v18 = [v4 identifier];
    [(MOEvent *)v10 setIdentifierFromProvider:v18];

    v19 = _mo_log_facility_get_os_log(&MOLogFacilitySpotlight);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v21 = 138412290;
      v22 = v10;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "spotlight invite: new event created, %@", &v21, 0xCu);
    }

    [(MOSpotlightManager *)self _setDynamicPropertiesForEvent:v10 withEntityInvite:v4];
  }

  else
  {
    v9 = _mo_log_facility_get_os_log(&MOLogFacilitySpotlight);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "spotlight invite: the entity event is missing startDate or title so skip creating new event", &v21, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (void)_setDynamicPropertiesForEvent:(id)a3 withEntityInvite:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MOEventInvite);
  v8 = [v6 title];

  if (v8)
  {
    v9 = [v6 title];
    [(MOEventInvite *)v7 setInviteEventTitle:v9];
  }

  v10 = [v6 location];

  if (v10)
  {
    v11 = [v6 location];
    [(MOEventInvite *)v7 setInviteEventLocation:v11];
  }

  v12 = [v6 placeName];

  if (v12)
  {
    v13 = [v6 placeName];
    [(MOEventInvite *)v7 setInviteEventPlaceName:v13];
  }

  v14 = [v6 organizers];
  v15 = [v14 count];

  v41 = v7;
  if (v15)
  {
    v16 = objc_opt_new();
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v17 = [v6 organizers];
    v18 = [v17 countByEnumeratingWithState:&v46 objects:v53 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v47;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v47 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v46 + 1) + 8 * i);
          v23 = objc_alloc_init(MOInvitePerson);
          v24 = [v22 displayName];
          [(MOInvitePerson *)v23 setDisplayName:v24];

          v25 = [v22 rsvpStatus];
          [(MOInvitePerson *)v23 setRsvpStatus:v25];

          -[MOInvitePerson setIsMe:](v23, "setIsMe:", [v22 isMe]);
          [v16 addObject:v23];
        }

        v19 = [v17 countByEnumeratingWithState:&v46 objects:v53 count:16];
      }

      while (v19);
    }

    v7 = v41;
    [(MOEventInvite *)v41 setInviteEventOrganizers:v16];
  }

  v26 = [v6 attendees];
  v27 = [v26 count];

  if (v27)
  {
    v28 = objc_opt_new();
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v29 = [v6 attendees];
    v30 = [v29 countByEnumeratingWithState:&v42 objects:v52 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v43;
      do
      {
        for (j = 0; j != v31; j = j + 1)
        {
          if (*v43 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v42 + 1) + 8 * j);
          v35 = objc_alloc_init(MOInvitePerson);
          v36 = [v34 displayName];
          [(MOInvitePerson *)v35 setDisplayName:v36];

          v37 = [v34 rsvpStatus];
          [(MOInvitePerson *)v35 setRsvpStatus:v37];

          -[MOInvitePerson setIsMe:](v35, "setIsMe:", [v34 isMe]);
          [v28 addObject:v35];
        }

        v31 = [v29 countByEnumeratingWithState:&v42 objects:v52 count:16];
      }

      while (v31);
    }

    v7 = v41;
    [(MOEventInvite *)v41 setInviteEventAttendees:v28];
  }

  [v40 setInviteEvent:v7];
  v38 = [v6 appBundle];
  [v40 setAppBundle:v38];

  v39 = _mo_log_facility_get_os_log(&MOLogFacilitySpotlight);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v51 = v40;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "spotlight invite: event dynamic properties set, %@", buf, 0xCu);
  }
}

- (void)_fetchInviteEventsBetweenStartDate:(os_log_t)log endDate:withStoredEvents:handler:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "spotlight invite fetch trying again with different bundle ID since internal build and zero fetch result for spotlight query", buf, 2u);
}

void __90__MOSpotlightManager__fetchInviteEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_144_cold_1(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromSelector(*(a1 + 64));
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_1_8();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

- (void)_rehydrateInviteEvents:(void *)a3 handler:(os_log_t)log .cold.1(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138412290;
  *a3 = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "spotlight invite ID for rehydration: %@", buf, 0xCu);
}

void __53__MOSpotlightManager__rehydrateInviteEvents_handler___block_invoke_cold_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromSelector(*(a1 + 88));
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_1_8();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void __53__MOSpotlightManager__rehydrateInviteEvents_handler___block_invoke_145_cold_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromSelector(*(a1 + 72));
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_1_8();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

- (void)_createResultsWithStoredEvents:(const char *)a1 withEventEntityinvites:.cold.1(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end