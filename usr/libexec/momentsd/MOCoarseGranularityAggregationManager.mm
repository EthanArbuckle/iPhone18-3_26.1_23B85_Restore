@interface MOCoarseGranularityAggregationManager
- (MOCoarseGranularityAggregationManager)initWithUniverse:(id)a3;
- (void)aggregateBundles:(id)a3 withParameters:(id)a4 handler:(id)a5;
@end

@implementation MOCoarseGranularityAggregationManager

- (MOCoarseGranularityAggregationManager)initWithUniverse:(id)a3
{
  v11.receiver = self;
  v11.super_class = MOCoarseGranularityAggregationManager;
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
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "CoarseGranularityAggregation: No eventBundle to be proccessed", &buf, 2u);
    }

    (*(v10 + 2))(v10, 0, 0);
  }

  else
  {
    if (v13)
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = [v8 count];
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "CoarseGranularityAggregation: input eventBundles count, %lu", &buf, 0xCu);
    }

    v30 = objc_opt_new();
    v14 = dispatch_group_create();
    dispatch_group_enter(v14);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v55 = 0x3032000000;
    v56 = __Block_byref_object_copy__2;
    v57 = __Block_byref_object_dispose__2;
    v58 = 0;
    v15 = [MOTimeContextAggregationManager alloc];
    v16 = [(MOAggregationManager *)self fUniverse];
    v31 = [(MOAggregationManager *)v15 initWithUniverse:v16];

    v17 = [(MOAggregationManager *)self filterEventBundlesEligibleForSummarization:v8];
    v18 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      LODWORD(v49) = 134217984;
      *(&v49 + 4) = [v17 count];
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "CoarseGranularityAggregation: Filtered time context input eventBundles count, %lu", &v49, 0xCu);
    }

    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = __81__MOCoarseGranularityAggregationManager_aggregateBundles_withParameters_handler___block_invoke;
    v46[3] = &unk_1003364B0;
    p_buf = &buf;
    v19 = v14;
    v47 = v19;
    [(MOTimeContextAggregationManager *)v31 aggregateBundles:v17 withParameters:v9 granularity:2 handler:v46];
    dispatch_group_enter(v19);
    *&v49 = 0;
    *(&v49 + 1) = &v49;
    v50 = 0x3032000000;
    v51 = __Block_byref_object_copy__2;
    v52 = __Block_byref_object_dispose__2;
    v53 = 0;
    v20 = [MOContactAggregationManager alloc];
    v21 = [(MOAggregationManager *)self fUniverse];
    v22 = [(MOContactAggregationManager *)v20 initWithUniverse:v21];

    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = __81__MOCoarseGranularityAggregationManager_aggregateBundles_withParameters_handler___block_invoke_103;
    v43[3] = &unk_1003364B0;
    v45 = &v49;
    v23 = v19;
    v44 = v23;
    [(MOContactAggregationManager *)v22 aggregateBundles:v8 withParameters:v9 granularity:2 handler:v43];
    dispatch_group_enter(v23);
    v41[0] = 0;
    v41[1] = v41;
    v41[2] = 0x3032000000;
    v41[3] = __Block_byref_object_copy__2;
    v41[4] = __Block_byref_object_dispose__2;
    v42 = 0;
    v24 = [MOMediaAggregationManager alloc];
    v25 = [(MOAggregationManager *)self fUniverse];
    v26 = [(MOAggregationManager *)v24 initWithUniverse:v25];

    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = __81__MOCoarseGranularityAggregationManager_aggregateBundles_withParameters_handler___block_invoke_105;
    v38[3] = &unk_1003364B0;
    v40 = v41;
    v27 = v23;
    v39 = v27;
    [(MOMediaAggregationManager *)v26 aggregateBundles:v8 withParameters:v9 granularity:2 handler:v38];
    v28 = [(MOCoarseGranularityAggregationManager *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __81__MOCoarseGranularityAggregationManager_aggregateBundles_withParameters_handler___block_invoke_106;
    block[3] = &unk_1003364D8;
    v35 = &buf;
    v33 = v30;
    v36 = &v49;
    v37 = v41;
    v34 = v10;
    v29 = v30;
    dispatch_group_notify(v27, v28, block);

    _Block_object_dispose(v41, 8);
    _Block_object_dispose(&v49, 8);

    _Block_object_dispose(&buf, 8);
  }
}

void __81__MOCoarseGranularityAggregationManager_aggregateBundles_withParameters_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = 134217984;
    v9 = [v3 count];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "CoarseGranularityAggregation for time context: output eventBundles count, %lu", &v8, 0xCu);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  dispatch_group_leave(*(a1 + 32));
}

void __81__MOCoarseGranularityAggregationManager_aggregateBundles_withParameters_handler___block_invoke_103(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = 134217984;
    v9 = [v3 count];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "CoarseGranularityAggregation for contact: output eventBundles count, %lu", &v8, 0xCu);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  dispatch_group_leave(*(a1 + 32));
}

void __81__MOCoarseGranularityAggregationManager_aggregateBundles_withParameters_handler___block_invoke_105(uint64_t a1, void *a2)
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

uint64_t __81__MOCoarseGranularityAggregationManager_aggregateBundles_withParameters_handler___block_invoke_106(uint64_t a1)
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