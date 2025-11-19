@interface MOFineGranularityAggregationManager
- (MOFineGranularityAggregationManager)initWithUniverse:(id)a3;
- (void)aggregateBundles:(id)a3 withParameters:(id)a4 handler:(id)a5;
@end

@implementation MOFineGranularityAggregationManager

- (MOFineGranularityAggregationManager)initWithUniverse:(id)a3
{
  v11.receiver = self;
  v11.super_class = MOFineGranularityAggregationManager;
  v3 = [(MOAggregationManager *)&v11 initWithUniverse:a3];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v5 UTF8String];
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create(v6, v7);
    queue = v3->_queue;
    v3->_queue = v8;
  }

  return v3;
}

- (void)aggregateBundles:(id)a3 withParameters:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 count] == 0;
  v12 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (v11)
  {
    if (v13)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "FineGranularityAggregation: No eventBundle to be proccessed", &buf, 2u);
    }

    (*(v10 + 2))(v10, 0, 0);
  }

  else
  {
    if (v13)
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = [v8 count];
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "FineGranularityAggregation: input eventBundles count, %lu", &buf, 0xCu);
    }

    v14 = objc_opt_new();
    v15 = dispatch_group_create();
    dispatch_group_enter(v15);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v54 = 0x3032000000;
    v55 = __Block_byref_object_copy__19;
    v56 = __Block_byref_object_dispose__19;
    v57 = 0;
    v16 = [MOTimeContextAggregationManager alloc];
    v17 = [(MOAggregationManager *)self fUniverse];
    v30 = [(MOAggregationManager *)v16 initWithUniverse:v17];

    v18 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      LODWORD(v48) = 134217984;
      *(&v48 + 4) = [v8 count];
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "FineGranularityAggregation: Time context input eventBundles count, %lu", &v48, 0xCu);
    }

    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = __79__MOFineGranularityAggregationManager_aggregateBundles_withParameters_handler___block_invoke;
    v45[3] = &unk_1003364B0;
    p_buf = &buf;
    v19 = v15;
    v46 = v19;
    [(MOTimeContextAggregationManager *)v30 aggregateBundles:v8 withParameters:v9 granularity:1 handler:v45];
    dispatch_group_enter(v19);
    *&v48 = 0;
    *(&v48 + 1) = &v48;
    v49 = 0x3032000000;
    v50 = __Block_byref_object_copy__19;
    v51 = __Block_byref_object_dispose__19;
    v52 = 0;
    v20 = [MOMediaAggregationManager alloc];
    v21 = [(MOAggregationManager *)self fUniverse];
    v22 = [(MOAggregationManager *)v20 initWithUniverse:v21];

    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = __79__MOFineGranularityAggregationManager_aggregateBundles_withParameters_handler___block_invoke_103;
    v42[3] = &unk_1003364B0;
    v44 = &v48;
    v23 = v19;
    v43 = v23;
    [(MOMediaAggregationManager *)v22 aggregateBundles:v8 withParameters:v9 granularity:1 handler:v42];
    dispatch_group_enter(v23);
    v40[0] = 0;
    v40[1] = v40;
    v40[2] = 0x3032000000;
    v40[3] = __Block_byref_object_copy__19;
    v40[4] = __Block_byref_object_dispose__19;
    v41 = 0;
    v24 = [MOContactAggregationManager alloc];
    v25 = [(MOAggregationManager *)self fUniverse];
    v26 = [(MOContactAggregationManager *)v24 initWithUniverse:v25];

    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = __79__MOFineGranularityAggregationManager_aggregateBundles_withParameters_handler___block_invoke_105;
    v37[3] = &unk_1003364B0;
    v39 = v40;
    v27 = v23;
    v38 = v27;
    [(MOContactAggregationManager *)v26 aggregateBundles:v8 withParameters:v9 granularity:1 handler:v37];
    v28 = [(MOFineGranularityAggregationManager *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __79__MOFineGranularityAggregationManager_aggregateBundles_withParameters_handler___block_invoke_106;
    block[3] = &unk_1003364D8;
    v34 = &buf;
    v32 = v14;
    v35 = &v48;
    v36 = v40;
    v33 = v10;
    v29 = v14;
    dispatch_group_notify(v27, v28, block);

    _Block_object_dispose(v40, 8);
    _Block_object_dispose(&v48, 8);

    _Block_object_dispose(&buf, 8);
  }
}

void __79__MOFineGranularityAggregationManager_aggregateBundles_withParameters_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = 134217984;
    v9 = [v3 count];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "FineGranularityAggregation for time context: output eventBundles count, %lu", &v8, 0xCu);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  dispatch_group_leave(*(a1 + 32));
}

void __79__MOFineGranularityAggregationManager_aggregateBundles_withParameters_handler___block_invoke_103(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = 134217984;
    v9 = [v3 count];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "FineGranularityAggregation: output media eventBundles count, %lu", &v8, 0xCu);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  dispatch_group_leave(*(a1 + 32));
}

void __79__MOFineGranularityAggregationManager_aggregateBundles_withParameters_handler___block_invoke_105(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = 134217984;
    v9 = [v3 count];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "FineGranularityAggregation for contact: output eventBundles count, %lu", &v8, 0xCu);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __79__MOFineGranularityAggregationManager_aggregateBundles_withParameters_handler___block_invoke_106(uint64_t a1)
{
  if ([*(*(*(a1 + 48) + 8) + 40) count])
  {
    [*(a1 + 32) addObjectsFromArray:*(*(*(a1 + 48) + 8) + 40)];
  }

  if ([*(*(*(a1 + 56) + 8) + 40) count])
  {
    [*(a1 + 32) addObjectsFromArray:*(*(*(a1 + 56) + 8) + 40)];
  }

  if ([*(*(*(a1 + 64) + 8) + 40) count])
  {
    [*(a1 + 32) addObjectsFromArray:*(*(*(a1 + 64) + 8) + 40)];
  }

  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

@end