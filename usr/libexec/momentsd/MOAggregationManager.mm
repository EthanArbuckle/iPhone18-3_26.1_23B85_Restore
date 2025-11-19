@interface MOAggregationManager
- (MOAggregationManager)initWithUniverse:(id)a3;
- (id)filterEventBundlesEligibleForSummarization:(id)a3;
- (void)aggregateBundles:(id)a3 withParameters:(id)a4 granularity:(unint64_t)a5 handler:(id)a6;
- (void)aggregateBundles:(id)a3 withParameters:(id)a4 handler:(id)a5;
@end

@implementation MOAggregationManager

- (MOAggregationManager)initWithUniverse:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = MOAggregationManager;
  v6 = [(MOAggregationManager *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fUniverse, a3);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v5 getService:v9];
    eventBundleRanking = v7->_eventBundleRanking;
    v7->_eventBundleRanking = v10;
  }

  return v7;
}

- (void)aggregateBundles:(id)a3 withParameters:(id)a4 handler:(id)a5
{
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [MOAggregationManager aggregateBundles:withParameters:handler:];
  }

  v8 = +[NSAssertionHandler currentHandler];
  [v8 handleFailureInMethod:a2 object:self file:@"MOAggregationManager.m" lineNumber:36 description:{@"Use the derived class (in %s:%d)", "-[MOAggregationManager aggregateBundles:withParameters:handler:]", 36}];
}

- (void)aggregateBundles:(id)a3 withParameters:(id)a4 granularity:(unint64_t)a5 handler:(id)a6
{
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [MOAggregationManager aggregateBundles:withParameters:granularity:handler:];
  }

  v9 = +[NSAssertionHandler currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"MOAggregationManager.m" lineNumber:44 description:{@"Use the derived class (in %s:%d)", "-[MOAggregationManager aggregateBundles:withParameters:granularity:handler:]", 44}];
}

- (id)filterEventBundlesEligibleForSummarization:(id)a3
{
  v4 = [a3 mutableCopy];
  [(MOEventBundleRanking *)self->_eventBundleRanking generateBundleRanking:v4 withMinRecommendedBundleCountRequirement:0];
  v5 = [NSArray arrayWithArray:v4];
  v6 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v13 = [v5 count];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Raw input eventBundles count, %lu", buf, 0xCu);
  }

  [v5 enumerateObjectsUsingBlock:&__block_literal_global_22];
  v7 = [NSPredicate predicateWithFormat:@"rankingDictionary.isEligibleForTimeContextSummarization == %@", &__kCFBooleanTrue];
  v8 = [v5 filteredArrayUsingPredicate:v7];

  v9 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v8 count];
    *buf = 134217984;
    v13 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Filtered Input eventBundles count by isEligibleForTimeContextSummarization: %lu.", buf, 0xCu);
  }

  [v8 enumerateObjectsUsingBlock:&__block_literal_global_115];

  return v8;
}

void __67__MOAggregationManager_filterEventBundlesEligibleForSummarization___block_invoke(id a1, MOEventBundle *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(MOEventBundle *)v4 startDate];
    v7 = [(MOEventBundle *)v4 endDate];
    v8 = [(MOEventBundle *)v4 action];
    v9 = [v8 actionName];
    v10 = [(MOEventBundle *)v4 place];
    v11 = [v10 placeName];
    v12 = [(MOEventBundle *)v4 rankingDictionary];
    v13 = 138413314;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v11;
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "startDate:%@, endDate:%@, action:%@, placee:%@, rankingDict:%@", &v13, 0x34u);
  }
}

void __67__MOAggregationManager_filterEventBundlesEligibleForSummarization___block_invoke_113(id a1, MOEventBundle *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(MOEventBundle *)v4 startDate];
    v7 = [(MOEventBundle *)v4 endDate];
    v8 = [(MOEventBundle *)v4 action];
    v9 = [v8 actionName];
    v10 = [(MOEventBundle *)v4 place];
    v11 = [v10 placeName];
    v12 = [(MOEventBundle *)v4 rankingDictionary];
    v13 = 138413314;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v11;
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "startDate:%@, endDate:%@, action:%@, place:%@, rankingDict:%@", &v13, 0x34u);
  }
}

- (void)aggregateBundles:withParameters:handler:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v2 = 36;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Use the derived class (in %s:%d)", v1, 0x12u);
}

- (void)aggregateBundles:withParameters:granularity:handler:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v2 = 44;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Use the derived class (in %s:%d)", v1, 0x12u);
}

@end