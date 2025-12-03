@interface MOTimeContextAggregationManager
- (BOOL)_shouldMergeBundle:(id)bundle toCluster:(id)cluster parameters:(id)parameters granularity:(unint64_t)granularity;
- (BOOL)_shouldMergeBundleForCoarseGranularity:(id)granularity toCluster:(id)cluster parameters:(id)parameters;
- (BOOL)_shouldMergeBundleForFineGranularity:(id)granularity toCluster:(id)cluster parameters:(id)parameters;
- (BOOL)_shouldMergeTransitBundleForFineGranularity:(id)granularity toCluster:(id)cluster parameters:(id)parameters;
- (float)_maximumGoodnessScoreDeltaFromBundle:(id)bundle toCluster:(id)cluster;
- (id)_groupBundles:(id)bundles parameters:(id)parameters granularity:(unint64_t)granularity;
- (id)_groupTransitBundles:(id)bundles parameters:(id)parameters granularity:(unint64_t)granularity;
- (id)_megaBundleFromActivityTimeContextBundles:(id)bundles parameters:(id)parameters;
- (id)_megaBundlesFromOutingActivityTimeContextBundles:(id)bundles parameters:(id)parameters granularity:(unint64_t)granularity;
- (void)_aggregateBundlesForCoarseGranularity:(id)granularity withParameters:(id)parameters handler:(id)handler;
- (void)_aggregateBundlesForFineGranularity:(id)granularity withParameters:(id)parameters handler:(id)handler;
- (void)aggregateBundles:(id)bundles withParameters:(id)parameters granularity:(unint64_t)granularity handler:(id)handler;
@end

@implementation MOTimeContextAggregationManager

- (void)aggregateBundles:(id)bundles withParameters:(id)parameters granularity:(unint64_t)granularity handler:(id)handler
{
  bundlesCopy = bundles;
  parametersCopy = parameters;
  handlerCopy = handler;
  v13 = objc_autoreleasePoolPush();
  v14 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    granularityCopy2 = granularity;
    v23 = 2048;
    v24 = [bundlesCopy count];
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "TimeContextAggregation (granularity=%lu): Input eventBundles count, %lu", buf, 0x16u);
  }

  if ([bundlesCopy count] <= 1)
  {
    v15 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      granularityCopy2 = granularity;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "TimeContextAggregation (granularity=%lu): Insufficient event bundles (<2). Skip summarization", buf, 0xCu);
    }

    goto LABEL_10;
  }

  if (granularity == 2)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __87__MOTimeContextAggregationManager_aggregateBundles_withParameters_granularity_handler___block_invoke_377;
    v17[3] = &unk_1003369E0;
    v18 = handlerCopy;
    [(MOTimeContextAggregationManager *)self _aggregateBundlesForCoarseGranularity:bundlesCopy withParameters:parametersCopy handler:v17];
    v16 = v18;
    goto LABEL_12;
  }

  if (granularity == 1)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = __87__MOTimeContextAggregationManager_aggregateBundles_withParameters_granularity_handler___block_invoke;
    v19[3] = &unk_1003369E0;
    v20 = handlerCopy;
    [(MOTimeContextAggregationManager *)self _aggregateBundlesForFineGranularity:bundlesCopy withParameters:parametersCopy handler:v19];
    v16 = v20;
LABEL_12:

    goto LABEL_13;
  }

LABEL_10:
  (*(handlerCopy + 2))(handlerCopy, 0, 0);
LABEL_13:
  objc_autoreleasePoolPop(v13);
}

void __87__MOTimeContextAggregationManager_aggregateBundles_withParameters_granularity_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 134217984;
    v9 = [v5 count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "FineGranularityAggregation for TimeContext: output eventBundles count, %lu", &v8, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __87__MOTimeContextAggregationManager_aggregateBundles_withParameters_granularity_handler___block_invoke_377(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 134217984;
    v9 = [v5 count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "CoarseGranularityAggregation for TimeContext: output eventBundles count, %lu", &v8, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_aggregateBundlesForFineGranularity:(id)granularity withParameters:(id)parameters handler:(id)handler
{
  granularityCopy = granularity;
  parametersCopy = parameters;
  handlerCopy = handler;
  v11 = objc_autoreleasePoolPush();
  v12 = [granularityCopy count];
  v13 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
  if (v12)
  {
    if (v14)
    {
      v15 = [granularityCopy count];
      *buf = 134217984;
      v31 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "FineGranularityAggregation for TimeContext: input eventBundles count, %lu", buf, 0xCu);
    }

    v16 = [(MOTimeContextAggregationManager *)self _megaBundlesFromOutingActivityTimeContextBundles:granularityCopy parameters:parametersCopy granularity:1];
    if ([v16 count])
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v17 = v16;
      v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v26;
        do
        {
          for (i = 0; i != v19; i = i + 1)
          {
            if (*v26 != v20)
            {
              objc_enumerationMutation(v17);
            }

            [*(*(&v25 + 1) + 8 * i) setSummarizationGranularity:{1, v25}];
          }

          v19 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v19);
      }
    }

    v22 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = [v16 count];
      *buf = 134217984;
      v31 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "FineGranularityAggregation for TimeContext: output eventBundles count, %lu", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v24 = objc_autoreleasePoolPush();
    handlerCopy[2](handlerCopy, v16, 0);
    objc_autoreleasePoolPop(v24);
  }

  else
  {
    if (v14)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "FineGranularityAggregation for TimeContext: No eventBundle to be proccessed", buf, 2u);
    }

    handlerCopy[2](handlerCopy, 0, 0);
    objc_autoreleasePoolPop(v11);
  }
}

- (id)_megaBundlesFromOutingActivityTimeContextBundles:(id)bundles parameters:(id)parameters granularity:(unint64_t)granularity
{
  bundlesCopy = bundles;
  parametersCopy = parameters;
  if ([bundlesCopy count] <= 1)
  {
    v9 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      *v249 = [bundlesCopy count];
      *&v249[8] = 2048;
      *&v249[10] = granularity;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Aggregation for TimeContext: no needed to aggregate bundles since bundles  count is: %lu, granularity, %lu", buf, 0x16u);
    }

    v10 = 0;
    goto LABEL_160;
  }

  v217 = objc_opt_new();
  v11 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
  v12 = [[NSSortDescriptor alloc] initWithKey:@"endDate" ascending:1];
  v193 = [NSPredicate predicateWithFormat:@"%K = %lu", @"interfaceType", 2];
  v13 = [bundlesCopy filteredArrayUsingPredicate:?];
  v192 = [NSPredicate predicateWithFormat:@"%K = %lu", @"interfaceType", 1];
  v202 = [bundlesCopy filteredArrayUsingPredicate:?];
  [NSPredicate predicateWithFormat:@"%K = %lu", @"interfaceType", 12];
  v191 = v194 = bundlesCopy;
  v14 = [bundlesCopy filteredArrayUsingPredicate:?];
  fUniverse = [(MOAggregationManager *)self fUniverse];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v221 = [fUniverse getService:v17];

  v197 = v13;
  v211 = v14;
  v18 = [v13 arrayByAddingObjectsFromArray:v14];
  v200 = v12;
  v201 = v11;
  v263[0] = v11;
  v263[1] = v12;
  v19 = [NSArray arrayWithObjects:v263 count:2];
  v20 = [v18 sortedArrayUsingDescriptors:v19];

  v21 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  granularityCopy8 = granularity;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    *v249 = [v20 count];
    *&v249[8] = 2048;
    *&v249[10] = granularity;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Aggregation for TimeContext: outing grouping process input bundle count, %lu, granularity, %lu", buf, 0x16u);
  }

  v23 = [(MOAggregationManager *)self filterEventBundlesEligibleForSummarization:v20];

  v24 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v25 = [v23 count];
    *buf = 134218240;
    *v249 = v25;
    *&v249[8] = 2048;
    *&v249[10] = granularity;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Aggregation for TimeContext: outing grouping process input bundle count after filtering, %lu, granularity, %lu", buf, 0x16u);
  }

  selfCopy = self;
  v187 = v23;
  v26 = [(MOTimeContextAggregationManager *)self _groupBundles:v23 parameters:parametersCopy granularity:granularity];
  v213 = objc_opt_new();
  v27 = objc_opt_new();
  v196 = v26;
  v215 = parametersCopy;
  v218 = v27;
  if ([v26 count])
  {
    v244 = 0u;
    v245 = 0u;
    v242 = 0u;
    v243 = 0u;
    v28 = v26;
    v29 = [v28 countByEnumeratingWithState:&v242 objects:v262 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v243;
      do
      {
        for (i = 0; i != v30; i = i + 1)
        {
          if (*v243 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v242 + 1) + 8 * i);
          getTimeSpanOfMOEventBundleArray = [v33 getTimeSpanOfMOEventBundleArray];
          v35 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            startDate = [getTimeSpanOfMOEventBundleArray startDate];
            endDate = [getTimeSpanOfMOEventBundleArray endDate];
            *buf = 138412802;
            *v249 = startDate;
            *&v249[8] = 2112;
            *&v249[10] = endDate;
            v250 = 2048;
            granularityCopy4 = granularity;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Aggregation for TimeContext: activity grouping date interval, start, %@, end, %@, granularity, %lu", buf, 0x20u);

            parametersCopy = v215;
          }

          if (getTimeSpanOfMOEventBundleArray)
          {
            [v213 setObject:v33 forKey:getTimeSpanOfMOEventBundleArray];
          }

          v27 = v218;
        }

        v30 = [v28 countByEnumeratingWithState:&v242 objects:v262 count:16];
      }

      while (v30);
    }

    granularityCopy8 = granularity;
  }

  v38 = [NSPredicate predicateWithFormat:@"bundleSubType != %lu", 204];
  v39 = [NSPredicate predicateWithFormat:@"bundleSubType != %lu", 207];
  v40 = [NSPredicate predicateWithFormat:@"bundleSubType != %lu", 208];
  v189 = v39;
  v190 = v38;
  v261[0] = v38;
  v261[1] = v39;
  v188 = v40;
  v261[2] = v40;
  v41 = [NSArray arrayWithObjects:v261 count:3];
  v42 = [NSCompoundPredicate andPredicateWithSubpredicates:v41];

  v186 = v42;
  v185 = [v202 filteredArrayUsingPredicate:v42];
  v43 = [v185 arrayByAddingObjectsFromArray:v211];
  v260[0] = v201;
  v260[1] = v200;
  v44 = [NSArray arrayWithObjects:v260 count:2];
  v45 = [v43 sortedArrayUsingDescriptors:v44];

  v46 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
  {
    v47 = [v45 count];
    *buf = 134218240;
    *v249 = v47;
    *&v249[8] = 2048;
    *&v249[10] = granularityCopy8;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "Aggregation for TimeContext: acitivity grouping process input bundle count, %lu, granularity, %lu", buf, 0x16u);
  }

  v48 = [(MOAggregationManager *)selfCopy filterEventBundlesEligibleForSummarization:v45];

  v49 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
  {
    v50 = [v48 count];
    *buf = 134218240;
    *v249 = v50;
    *&v249[8] = 2048;
    *&v249[10] = granularityCopy8;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "Aggregation for TimeContext: activity grouping process input bundle count after filtering, %lu, granularity, %lu", buf, 0x16u);
  }

  v184 = v48;
  v51 = [(MOTimeContextAggregationManager *)selfCopy _groupBundles:v48 parameters:parametersCopy granularity:1];
  v214 = objc_opt_new();
  v195 = v51;
  if ([v51 count])
  {
    v240 = 0u;
    v241 = 0u;
    v238 = 0u;
    v239 = 0u;
    v52 = v51;
    v53 = [v52 countByEnumeratingWithState:&v238 objects:v259 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v239;
      do
      {
        for (j = 0; j != v54; j = j + 1)
        {
          if (*v239 != v55)
          {
            objc_enumerationMutation(v52);
          }

          v57 = *(*(&v238 + 1) + 8 * j);
          getTimeSpanOfMOEventBundleArray2 = [v57 getTimeSpanOfMOEventBundleArray];
          v59 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
          if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
          {
            startDate2 = [getTimeSpanOfMOEventBundleArray2 startDate];
            endDate2 = [getTimeSpanOfMOEventBundleArray2 endDate];
            *buf = 138412802;
            *v249 = startDate2;
            *&v249[8] = 2112;
            *&v249[10] = endDate2;
            v250 = 2048;
            granularityCopy4 = granularity;
            _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "Aggregation for TimeContext: activity grouping date interval, start, %@, end, %@, granularity, %lu", buf, 0x20u);

            parametersCopy = v215;
          }

          if (getTimeSpanOfMOEventBundleArray2)
          {
            [v214 setObject:v57 forKey:getTimeSpanOfMOEventBundleArray2];
          }

          v27 = v218;
        }

        v54 = [v52 countByEnumeratingWithState:&v238 objects:v259 count:16];
      }

      while (v54);
    }

    granularityCopy8 = granularity;
  }

  v212 = objc_opt_new();
  if (![v211 count])
  {
    goto LABEL_78;
  }

  allKeys = [v214 allKeys];
  if (![allKeys count])
  {

    goto LABEL_78;
  }

  allKeys2 = [v213 allKeys];
  v64 = [allKeys2 count];

  if (!v64)
  {
LABEL_78:
    v111 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_INFO, "Aggregation for TimeContext: no chance of overlapping so create summary bundles for both outing groups and activity groups", buf, 2u);
    }

    v236 = 0u;
    v237 = 0u;
    v234 = 0u;
    v235 = 0u;
    allValues = [v213 allValues];
    v113 = [allValues countByEnumeratingWithState:&v234 objects:v256 count:16];
    if (v113)
    {
      v114 = v113;
      v115 = *v235;
      do
      {
        for (k = 0; k != v114; k = k + 1)
        {
          if (*v235 != v115)
          {
            objc_enumerationMutation(allValues);
          }

          v117 = *(*(&v234 + 1) + 8 * k);
          v118 = [MOSummarizationUtilities createOutingMegaBundleFromBundles:v117 withParameters:parametersCopy isCoarseGranularity:granularityCopy8 == 2 timeZoneManager:v221];
          if (v118)
          {
            [v217 addObject:v118];
            [v27 addObjectsFromArray:v117];
          }
        }

        v114 = [allValues countByEnumeratingWithState:&v234 objects:v256 count:16];
      }

      while (v114);
    }

    v232 = 0u;
    v233 = 0u;
    v230 = 0u;
    v231 = 0u;
    allValues2 = [v214 allValues];
    v119 = [allValues2 countByEnumeratingWithState:&v230 objects:v255 count:16];
    if (v119)
    {
      v120 = v119;
      v121 = *v231;
      do
      {
        for (m = 0; m != v120; m = m + 1)
        {
          if (*v231 != v121)
          {
            objc_enumerationMutation(allValues2);
          }

          v123 = [MOSummarizationUtilities createActivityMegaBundleFromBundles:*(*(&v230 + 1) + 8 * m) withParameters:parametersCopy isCoarseGranularity:granularityCopy8 == 2 isWeeklySummary:0 timeZoneManager:v221];
          if (v123)
          {
            [v217 addObject:v123];
          }
        }

        v120 = [allValues2 countByEnumeratingWithState:&v230 objects:v255 count:16];
      }

      while (v120);
    }

    goto LABEL_125;
  }

  allKeys3 = [v213 allKeys];
  v258[0] = v201;
  v258[1] = v200;
  v66 = [NSArray arrayWithObjects:v258 count:2];
  allValues2 = [allKeys3 sortedArrayUsingDescriptors:v66];

  allKeys4 = [v214 allKeys];
  v257[0] = v201;
  v257[1] = v200;
  v69 = [NSArray arrayWithObjects:v257 count:2];
  v70 = [allKeys4 sortedArrayUsingDescriptors:v69];

  v71 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
  {
    v72 = [allValues2 count];
    v73 = [v70 count];
    *buf = 134218496;
    *v249 = v72;
    *&v249[8] = 2048;
    *&v249[10] = v73;
    v250 = 2048;
    granularityCopy4 = granularityCopy8;
    _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_INFO, "Aggregation for TimeContext: outing mega intervals count: %lu, activity mega intervals count: %lu, granularity, %lu", buf, 0x20u);
  }

  v199 = v70;

  v74 = v212;
  if (![allValues2 count])
  {
    v124 = 0;
    v110 = 0;
    v75 = 0;
    goto LABEL_102;
  }

  v75 = 0;
  v76 = 0;
  v77 = 0;
  while ([v199 count] > v77)
  {
    v205 = v76;
    v78 = [allValues2 objectAtIndexedSubscript:v75];
    v79 = [v199 objectAtIndexedSubscript:v77];
    v80 = [v78 intersectsDateInterval:v79];
    v207 = v78;
    v81 = [v213 objectForKey:v78];
    v82 = [NSSet setWithArray:v81];

    v203 = v79;
    v83 = [v214 objectForKey:v79];
    v84 = [NSSet setWithArray:v83];

    v209 = v84;
    if (!v80)
    {
      allKeys5 = [v74 allKeys];
      v92 = [allKeys5 containsObject:v84];

      if ((v92 & 1) == 0)
      {
        allObjects = [v84 allObjects];
        v94 = [MOSummarizationUtilities createActivityMegaBundleFromBundles:allObjects withParameters:v215 isCoarseGranularity:granularity == 2 isWeeklySummary:0 timeZoneManager:v221];

        if (v94)
        {
          [v217 addObject:v94];
          [v74 setObject:v94 forKey:v84];
        }
      }

      allKeys6 = [v74 allKeys];
      v86 = v82;
      v96 = [allKeys6 containsObject:v82];

      if (v96)
      {
        goto LABEL_75;
      }

      v88 = v82;
      allObjects2 = [v82 allObjects];
      v90 = [MOSummarizationUtilities createOutingMegaBundleFromBundles:allObjects2 withParameters:v215 isCoarseGranularity:granularity == 2 timeZoneManager:v221];

      if (!v90)
      {
        goto LABEL_66;
      }

      [v217 addObject:v90];
      allObjects3 = [v82 allObjects];
      [v218 addObjectsFromArray:allObjects3];

LABEL_61:
      v74 = v212;
      [v212 setObject:v90 forKey:v88];
LABEL_74:

      goto LABEL_75;
    }

    if (!v82 || !v84 || ![v82 intersectsSet:v84])
    {
      allKeys7 = [v74 allKeys];
      v100 = [allKeys7 containsObject:v84];

      if (v100)
      {
        v90 = [v74 objectForKey:v84];
      }

      else
      {
        allObjects4 = [v84 allObjects];
        v90 = [MOSummarizationUtilities createActivityMegaBundleFromBundles:allObjects4 withParameters:v215 isCoarseGranularity:granularity == 2 isWeeklySummary:0 timeZoneManager:v221];

        if (v90)
        {
          [v217 addObject:v90];
          v74 = v212;
          [v212 setObject:v90 forKey:v84];
        }

        else
        {
          v74 = v212;
        }
      }

      allKeys8 = [v74 allKeys];
      v103 = [allKeys8 containsObject:v82];

      if (v103)
      {
        v104 = [v74 objectForKey:v82];
      }

      else
      {
        allObjects5 = [v82 allObjects];
        v104 = [MOSummarizationUtilities createOutingMegaBundleFromBundles:allObjects5 withParameters:v215 isCoarseGranularity:granularity == 2 timeZoneManager:v221];

        if (v104)
        {
          [v217 addObject:v104];
          allObjects6 = [v82 allObjects];
          [v218 addObjectsFromArray:allObjects6];

          v74 = v212;
          [v212 setObject:v104 forKey:v82];
        }

        else
        {
          v74 = v212;
        }
      }

      v86 = v82;
      [MOSummarizationUtilities removeDuplicatePhotoResourceFromBundle:v90 comparedWithPrimaryBundle:v104];

      goto LABEL_74;
    }

    v85 = v84;
    v86 = v82;
    allKeys9 = [v74 allKeys];
    LOBYTE(v85) = [allKeys9 containsObject:v85];

    if ((v85 & 1) == 0)
    {
      v88 = v209;
      allObjects7 = [v209 allObjects];
      v90 = [MOSummarizationUtilities createActivityMegaBundleFromBundles:allObjects7 withParameters:v215 isCoarseGranularity:granularity == 2 isWeeklySummary:0 timeZoneManager:v221];

      if (v90)
      {
        [v217 addObject:v90];
        goto LABEL_61;
      }

LABEL_66:
      v74 = v212;
      goto LABEL_74;
    }

LABEL_75:
    endDate3 = [v207 endDate];
    endDate4 = [v203 endDate];
    v109 = [endDate3 isOnOrAfter:endDate4];

    v77 += v109;
    v76 = v205 + (v109 ^ 1);
    v110 = v76;
    v75 = v76;
    if ([allValues2 count] <= v76)
    {
      goto LABEL_101;
    }
  }

  v110 = v76;
LABEL_101:
  v124 = v77;
  v27 = v218;
  granularityCopy8 = granularity;
LABEL_102:
  if ([allValues2 count] > v75 && objc_msgSend(v199, "count") == v124)
  {
    v125 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v125, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      *v249 = v110;
      *&v249[4] = 2048;
      *&v249[6] = granularityCopy8;
      _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_INFO, "Aggregation for TimeContext: not all outing mega intervals are looped through, stopping at %d, granularity, %lu", buf, 0x12u);
    }

    if ([allValues2 count] > v110)
    {
      v126 = v110;
      do
      {
        v127 = [allValues2 objectAtIndexedSubscript:v126];
        v128 = [v213 objectForKey:v127];
        v129 = [NSSet setWithArray:v128];

        allKeys10 = [v212 allKeys];
        LOBYTE(v128) = [allKeys10 containsObject:v129];

        if ((v128 & 1) == 0)
        {
          allObjects8 = [v129 allObjects];
          v132 = [MOSummarizationUtilities createOutingMegaBundleFromBundles:allObjects8 withParameters:v215 isCoarseGranularity:granularity == 2 timeZoneManager:v221];

          if (v132)
          {
            [v217 addObject:v132];
            allObjects9 = [v129 allObjects];
            [v218 addObjectsFromArray:allObjects9];

            [v212 setObject:v132 forKey:v129];
          }
        }

        ++v126;
      }

      while ([allValues2 count] > v126);
      v110 = v126;
      v27 = v218;
      granularityCopy8 = granularity;
    }
  }

  n = v199;
  if ([v199 count] > v124 && objc_msgSend(allValues2, "count") == v110)
  {
    v135 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v135, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      *v249 = v110;
      *&v249[4] = 2048;
      *&v249[6] = granularityCopy8;
      _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_INFO, "Aggregation for TimeContext: not all activity mega intervals are looped through, stopping at %d, granularity, %lu", buf, 0x12u);
    }

    for (n = v199; [v199 count] > v124; n = v199)
    {
      v136 = [n objectAtIndexedSubscript:v124];
      v137 = [v214 objectForKey:v136];
      v138 = [NSSet setWithArray:v137];

      allKeys11 = [v212 allKeys];
      LOBYTE(v137) = [allKeys11 containsObject:v138];

      if ((v137 & 1) == 0)
      {
        v140 = granularityCopy8 == 2;
        allObjects10 = [v138 allObjects];
        v142 = [MOSummarizationUtilities createActivityMegaBundleFromBundles:allObjects10 withParameters:v215 isCoarseGranularity:v140 isWeeklySummary:0 timeZoneManager:v221];

        if (v142)
        {
          [v217 addObject:v142];
          [v212 setObject:v142 forKey:v138];
        }

        granularityCopy8 = granularity;
      }

      ++v124;
    }
  }

  parametersCopy = v215;
LABEL_125:

  v143 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v143, OS_LOG_TYPE_INFO))
  {
    v144 = [v217 count];
    *buf = 134218240;
    *v249 = v144;
    *&v249[8] = 2048;
    *&v249[10] = granularityCopy8;
    _os_log_impl(&_mh_execute_header, v143, OS_LOG_TYPE_INFO, "Aggregation for TimeContext: total mega bundles count after deduping: %lu,  granularity, %lu", buf, 0x16u);
  }

  v145 = [NSPredicate predicateWithFormat:@"rankingDictionary.isEligibleForTransitBundleSummarization == %@", &__kCFBooleanTrue];
  v146 = [v197 filteredArrayUsingPredicate:v145];
  v147 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v147, OS_LOG_TYPE_INFO))
  {
    v148 = [v197 count];
    v149 = [v146 count];
    *buf = 134218240;
    *v249 = v148;
    *&v249[8] = 2048;
    *&v249[10] = v149;
    _os_log_impl(&_mh_execute_header, v147, OS_LOG_TYPE_INFO, "Filtered outing eventBundles by isEligibleForTransitBundleSummarization as YES, original count: %lu, resulting count: %lu.", buf, 0x16u);
  }

  v216 = v145;
  v150 = [v202 filteredArrayUsingPredicate:v145];
  v151 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v151, OS_LOG_TYPE_INFO))
  {
    v152 = [v202 count];
    v153 = [v150 count];
    *buf = 134218240;
    *v249 = v152;
    *&v249[8] = 2048;
    *&v249[10] = v153;
    _os_log_impl(&_mh_execute_header, v151, OS_LOG_TYPE_INFO, "Filtered activity eventBundles by isEligibleForTransitBundleSummarization as YES, original count: %lu, resulting count: %lu.", buf, 0x16u);
  }

  v154 = objc_opt_new();
  [v154 addObjectsFromArray:v146];
  [v154 addObjectsFromArray:v150];
  [v154 addObjectsFromArray:v211];
  v254[0] = v201;
  v254[1] = v200;
  v155 = [NSArray arrayWithObjects:v254 count:2];
  v206 = v154;
  v156 = [v154 sortedArrayUsingDescriptors:v155];

  v157 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v157, OS_LOG_TYPE_INFO))
  {
    v158 = [v146 count];
    v159 = [v150 count];
    v160 = [v211 count];
    *buf = 134218752;
    *v249 = v158;
    *&v249[8] = 2048;
    *&v249[10] = v159;
    v250 = 2048;
    granularityCopy4 = v160;
    v252 = 2048;
    v253 = granularityCopy8;
    _os_log_impl(&_mh_execute_header, v157, OS_LOG_TYPE_INFO, "Aggregation for transit bundle grouping process input bundle counts, outing, %lu, activity, %lu, timecontext, %lu, granularity, %lu", buf, 0x2Au);
  }

  v208 = v150;
  v210 = v146;

  v204 = v156;
  v161 = [(MOTimeContextAggregationManager *)selfCopy _groupTransitBundles:v156 parameters:parametersCopy granularity:1];
  v162 = objc_opt_new();
  v219 = v161;
  if ([v161 count])
  {
    v228 = 0u;
    v229 = 0u;
    v226 = 0u;
    v227 = 0u;
    v163 = v161;
    v164 = [v163 countByEnumeratingWithState:&v226 objects:v247 count:16];
    if (v164)
    {
      v165 = v164;
      v166 = *v227;
      do
      {
        for (ii = 0; ii != v165; ii = ii + 1)
        {
          if (*v227 != v166)
          {
            objc_enumerationMutation(v163);
          }

          v168 = *(*(&v226 + 1) + 8 * ii);
          v169 = [MOSummarizationUtilities createTransitMegaBundleFromBundles:v168 withParameters:parametersCopy isCoarseGranularity:granularity == 2 timeZoneManager:v221 groupedOutingBundles:v27];
          if (v169)
          {
            [v162 setObject:v168 forKey:v169];
          }

          [v27 addObjectsFromArray:v168];
        }

        v165 = [v163 countByEnumeratingWithState:&v226 objects:v247 count:16];
      }

      while (v165);
    }

    allKeys12 = [v162 allKeys];
    [v217 addObjectsFromArray:allKeys12];
  }

  v171 = objc_opt_new();
  v222 = 0u;
  v223 = 0u;
  v224 = 0u;
  v225 = 0u;
  v172 = v187;
  v173 = [v172 countByEnumeratingWithState:&v222 objects:v246 count:16];
  if (v173)
  {
    v174 = v173;
    v175 = *v223;
    do
    {
      for (jj = 0; jj != v174; jj = jj + 1)
      {
        if (*v223 != v175)
        {
          objc_enumerationMutation(v172);
        }

        v177 = *(*(&v222 + 1) + 8 * jj);
        if (([v27 containsObject:v177] & 1) == 0)
        {
          [v171 addObject:v177];
        }
      }

      v174 = [v172 countByEnumeratingWithState:&v222 objects:v246 count:16];
    }

    while (v174);
  }

  v178 = [MOSummarizationUtilities mergeOutingBundlesWithInDayWithGroupedBundles:v217 remainingSingletonBundles:v171 parameters:parametersCopy isCoarseGranularity:granularity == 2 timeZoneManager:v221];
  v179 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v179, OS_LOG_TYPE_INFO))
  {
    v180 = [v178 count];
    *buf = 134218240;
    *v249 = v180;
    *&v249[8] = 2048;
    *&v249[10] = granularity;
    _os_log_impl(&_mh_execute_header, v179, OS_LOG_TYPE_INFO, "Aggregation for TimeContext: total mega bundles count after merge visits to the same place in the same day %lu, granularity, %lu", buf, 0x16u);
  }

  if ([v178 count])
  {
    [v217 addObjectsFromArray:v178];
  }

  v181 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v181, OS_LOG_TYPE_INFO))
  {
    v182 = [v217 count];
    *buf = 134218240;
    *v249 = v182;
    *&v249[8] = 2048;
    *&v249[10] = granularity;
    _os_log_impl(&_mh_execute_header, v181, OS_LOG_TYPE_INFO, "Aggregation: final timecontext mega bundles count: %lu, granularity, %lu", buf, 0x16u);
  }

  v9 = v217;
  v10 = v9;
  bundlesCopy = v194;
LABEL_160:

  return v10;
}

- (void)_aggregateBundlesForCoarseGranularity:(id)granularity withParameters:(id)parameters handler:(id)handler
{
  granularityCopy = granularity;
  parametersCopy = parameters;
  handlerCopy = handler;
  if ([granularityCopy count])
  {
    v11 = objc_opt_new();
    v12 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [granularityCopy count];
      *buf = 134217984;
      v32 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "CoarseGranularityAggregation for time context related bundles: input eventBundles count, %lu", buf, 0xCu);
    }

    v14 = [(MOTimeContextAggregationManager *)self _megaBundlesFromOutingActivityTimeContextBundles:granularityCopy parameters:parametersCopy granularity:2];
    v15 = [(MOTimeContextAggregationManager *)self _megaBundleFromActivityTimeContextBundles:granularityCopy parameters:parametersCopy];
    if ([v14 count])
    {
      [v11 addObjectsFromArray:v14];
      v16 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [v14 count];
        *buf = 134217984;
        v32 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "CoarseGranularityAggregation outing megabundle count, %lu", buf, 0xCu);
      }
    }

    if (v15)
    {
      [v11 addObject:v15];
    }

    if ([v11 count])
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v18 = v11;
      v19 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v27;
        do
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v27 != v21)
            {
              objc_enumerationMutation(v18);
            }

            [*(*(&v26 + 1) + 8 * i) setSummarizationGranularity:{2, v26}];
          }

          v20 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v20);
      }
    }

    v23 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = [v11 count];
      *buf = 134217984;
      v32 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "CoarseGranularityAggregation for time context related bundles: output eventBundles count, %lu", buf, 0xCu);
    }

    handlerCopy[2](handlerCopy, v11, 0);
  }

  else
  {
    v25 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "CoarseGranularityAggregation: No eventBundle to be proccessed", buf, 2u);
    }

    handlerCopy[2](handlerCopy, 0, 0);
  }
}

- (id)_megaBundleFromActivityTimeContextBundles:(id)bundles parameters:(id)parameters
{
  parametersCopy = parameters;
  bundlesCopy = bundles;
  v29 = [[NSArray alloc] initWithObjects:{&off_10036C178, &off_10036C190, 0}];
  v28 = [NSPredicate predicateWithFormat:@"interfaceType in %@", v29];
  v8 = [bundlesCopy filteredArrayUsingPredicate:?];

  v9 = [NSPredicate predicateWithFormat:@"bundleSubType != %lu", 204];
  v10 = [NSPredicate predicateWithFormat:@"bundleSubType != %lu", 207];
  v11 = [NSPredicate predicateWithFormat:@"bundleSubType != %lu", 208];
  v32[0] = v9;
  v32[1] = v10;
  v32[2] = v11;
  v12 = [NSArray arrayWithObjects:v32 count:3];
  v13 = [NSCompoundPredicate andPredicateWithSubpredicates:v12];

  v14 = [v8 filteredArrayUsingPredicate:v13];
  if (![v14 count])
  {
    v19 = parametersCopy;
    v20 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v21 = "CoarseGranularityAggregation: no needed to aggregate activity and time context bundles since bundles count is 0";
      goto LABEL_7;
    }

LABEL_8:
    v22 = 0;
    goto LABEL_12;
  }

  selfCopy = self;
  aggregationDateInterval = [parametersCopy aggregationDateInterval];
  [aggregationDateInterval duration];
  v18 = v17;

  v19 = parametersCopy;
  if (v18 < 604800.0)
  {
    v20 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v21 = "CoarseGranularityAggregation: no needed to aggregate activity and time context bundles since aggregation time interval is less than a week";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, v21, buf, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  fUniverse = [(MOAggregationManager *)selfCopy fUniverse];
  v24 = objc_opt_class();
  v25 = NSStringFromClass(v24);
  v20 = [fUniverse getService:v25];

  v22 = [MOSummarizationUtilities createActivityMegaBundleFromBundles:v14 withParameters:v19 isCoarseGranularity:1 isWeeklySummary:1 timeZoneManager:v20];
  v26 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v31 = v22;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "CoarseGranularityAggregation activity megabundle, %@", buf, 0xCu);
  }

LABEL_12:

  return v22;
}

- (id)_groupBundles:(id)bundles parameters:(id)parameters granularity:(unint64_t)granularity
{
  bundlesCopy = bundles;
  parametersCopy = parameters;
  if ([bundlesCopy count] > 1)
  {
    v11 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
    v26 = [[NSSortDescriptor alloc] initWithKey:@"endDate" ascending:1];
    v27 = v11;
    v34[0] = v11;
    v34[1] = v26;
    v12 = [NSArray arrayWithObjects:v34 count:2];
    v28 = bundlesCopy;
    v13 = [bundlesCopy sortedArrayUsingDescriptors:v12];

    v29 = objc_opt_new();
    v14 = objc_opt_new();
    if ([v13 count] != 1)
    {
      v15 = 0;
      do
      {
        if (![v14 count])
        {
          v16 = [v13 objectAtIndexedSubscript:v15];
          [v14 addObject:v16];
        }

        v17 = v15 + 1;
        v18 = [v13 objectAtIndexedSubscript:v15 + 1];
        v19 = [v14 copy];
        v20 = [(MOTimeContextAggregationManager *)self _shouldMergeBundle:v18 toCluster:v19 parameters:parametersCopy granularity:granularity];

        if (v20)
        {
          v21 = [v13 objectAtIndexedSubscript:v15 + 1];
          [v14 addObject:v21];

          if (v15 == [v28 count] - 2 && objc_msgSend(v14, "count") >= 2)
          {
            v22 = [v14 copy];
            [v29 addObject:v22];
          }
        }

        else
        {
          if ([v14 count] >= 2)
          {
            v23 = [v14 copy];
            [v29 addObject:v23];
          }

          [v14 removeAllObjects];
        }

        ++v15;
      }

      while ([v13 count] - 1 > v17);
    }

    v24 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v31 = [v29 count];
      v32 = 2048;
      granularityCopy = granularity;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Aggregation for TimeContext: grouped bundle count: %lu, granularity: %lu", buf, 0x16u);
    }

    v10 = v27;
    bundlesCopy = v28;
  }

  else
  {
    v10 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Aggregation for TimeContext: aggregateBundles input bundle count is less than 2 so no bundle to be aggregated", buf, 2u);
    }

    v29 = 0;
  }

  return v29;
}

- (BOOL)_shouldMergeBundle:(id)bundle toCluster:(id)cluster parameters:(id)parameters granularity:(unint64_t)granularity
{
  bundleCopy = bundle;
  clusterCopy = cluster;
  parametersCopy = parameters;
  if (granularity == 2)
  {
    v13 = [(MOTimeContextAggregationManager *)self _shouldMergeBundleForCoarseGranularity:bundleCopy toCluster:clusterCopy parameters:parametersCopy];
  }

  else
  {
    if (granularity != 1)
    {
      v14 = 0;
      goto LABEL_7;
    }

    v13 = [(MOTimeContextAggregationManager *)self _shouldMergeBundleForFineGranularity:bundleCopy toCluster:clusterCopy parameters:parametersCopy];
  }

  v14 = v13;
LABEL_7:

  return v14;
}

- (BOOL)_shouldMergeBundleForFineGranularity:(id)granularity toCluster:(id)cluster parameters:(id)parameters
{
  v8 = COERCE_DOUBLE(granularity);
  clusterCopy = cluster;
  parametersCopy = parameters;
  [clusterCopy lastObject];
  v11 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  v12 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    [*&v11 startDate];
    v13 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    [*&v11 endDate];
    v14 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    startDate = [*&v8 startDate];
    endDate = [*&v8 endDate];
    *buf = 138413058;
    v75 = v13;
    v76 = 2112;
    v77 = v14;
    v78 = 2112;
    v79 = startDate;
    v80 = 2112;
    v81 = endDate;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "FineGranularityAggregation for TimeContext: the last bundle in cluster start date, %@, end date, %@, bundle to be add to cluster: start date, %@, end date, %@", buf, 0x2Au);
  }

  v17 = [*&v11 interfaceType] == 2 && objc_msgSend(*&v8, "interfaceType") == 2;
  if ([*&v11 interfaceType] == 2 && objc_msgSend(*&v8, "interfaceType") == 12)
  {
    v18 = 1;
  }

  else
  {
    v18 = [*&v11 interfaceType] == 12 && objc_msgSend(*&v8, "interfaceType") == 2;
  }

  v19 = [*&v11 interfaceType] == 1 && objc_msgSend(*&v8, "interfaceType") == 1;
  if ([*&v11 interfaceType] == 1 && objc_msgSend(*&v8, "interfaceType") == 12)
  {
    v20 = 1;
  }

  else
  {
    v20 = [*&v11 interfaceType] == 12 && objc_msgSend(*&v8, "interfaceType") == 1;
  }

  if (v17 || v18)
  {
    if ([MOSummarizationUtilities isOutingBundleFromHomeOrWorkVisit:*&v11]|| [MOSummarizationUtilities isOutingBundleFromHomeOrWorkVisit:*&v8])
    {
      v21 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
LABEL_27:
        v23 = 0;
        goto LABEL_28;
      }

      *buf = 0;
      v22 = "FineGranularityAggregation for TimeContext:bundle is for home or work so exclude from group.";
LABEL_26:
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, v22, buf, 2u);
      goto LABEL_27;
    }

    if (![MOSummarizationUtilities isBundle:*&v11 insideTheSameDayAsOtherBundle:*&v8])
    {
      v21 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        [*&v11 startDate];
        v30 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        [*&v11 endDate];
        v31 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        startDate2 = [*&v8 startDate];
        endDate2 = [*&v8 endDate];
        *buf = 138413058;
        v75 = v30;
        v76 = 2112;
        v77 = v31;
        v78 = 2112;
        v79 = startDate2;
        v80 = 2112;
        v81 = endDate2;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "FineGranularityAggregation for TimeContext: two bundles should not merge since one of thme is covering more than one day, bundle1: start date, %@, end date, %@, bundle 2: start date, %@, end date, %@", buf, 0x2Au);
      }

      goto LABEL_27;
    }

    rankingDictionary = [*&v8 rankingDictionary];
    v25 = [rankingDictionary objectForKeyedSubscript:@"bundleGoodnessScore"];
    [v25 floatValue];
    v27 = v26;

    v28 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v75 = v27;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "FineGranularityAggregation for TimeContext:bundle goodness score, %f", buf, 0xCu);
    }

    [parametersCopy fineGranularity_outingBundlesExclusionGoodnessScoreThreshold];
    if (v27 > v29)
    {
      v21 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        goto LABEL_27;
      }

      *buf = 0;
      v22 = "FineGranularityAggregation for TimeContext:bundle goodness is too high to include into group.";
      goto LABEL_26;
    }

    if ([MOSummarizationUtilities isFlightBundle:*&v8])
    {
      v21 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        goto LABEL_27;
      }

      *buf = 0;
      v22 = "CoarseGranularityAggregation for TimeContext:bundle action is flight so don't group with others.";
      goto LABEL_26;
    }

    v21 = [MOSummarizationUtilities metricForVisitsFromBundle:*&v11 andNextBundle:*&v8];
    v34 = [v21 objectForKey:@"distance"];
    [v34 doubleValue];
    v36 = v35;

    v37 = [v21 objectForKey:@"timeInterval"];
    [v37 doubleValue];
    v39 = v38;

    [MOSummarizationUtilities maximumDistanceFromBundle:*&v8 toBundleCluster:clusterCopy];
    v41 = v40;
    [(MOTimeContextAggregationManager *)self _maximumGoodnessScoreDeltaFromBundle:*&v8 toCluster:clusterCopy];
    v43 = v42;
    v44 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      [parametersCopy fineGranularity_outingBundlesAggregationDistanceThreshold];
      *buf = 134218240;
      v75 = v36;
      v76 = 2048;
      v77 = v45;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "FineGranularityAggregation: distance between visits from two outing related bundles: %f (thres=%f)", buf, 0x16u);
    }

    v46 = fabs(v39);

    v47 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      [parametersCopy fineGranularity_outingBundlesAggregationTimeIntervalThreshold];
      *buf = 134218240;
      v75 = v46;
      v76 = 2048;
      v77 = v48;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "FineGranularityAggregation: time interval between visits from two outing related bundles: %f (thres=%f)", buf, 0x16u);
    }

    v49 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      [parametersCopy fineGranularity_outingBundlesAggregationGoodnessScoreDeltaThreshold];
      *buf = 134218240;
      v75 = v43;
      v76 = 2048;
      v77 = v50;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "FineGranularityAggregation: max goodness score deta between bundle and members in existing cluster: %f (thres=%f)", buf, 0x16u);
    }

    [parametersCopy fineGranularity_outingBundlesAggregationDistanceThreshold];
    if (v36 < v51)
    {
      [parametersCopy fineGranularity_outingBundlesAggregationTimeIntervalThreshold];
      if (v46 < v52)
      {
        [parametersCopy fineGranularity_outingBundlesAggregationDistanceToClusterThreshold];
        if (v41 < v53)
        {
          [parametersCopy fineGranularity_outingBundlesAggregationGoodnessScoreDeltaThreshold];
          if (v43 < v54)
          {
            v55 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
            if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
            {
              [*&v11 startDate];
              v73 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              [*&v11 endDate];
              v72 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              action = [*&v11 action];
              actionName = [action actionName];
              place = [*&v11 place];
              placeName = [place placeName];
              [*&v8 startDate];
              v57 = v71 = v55;
              endDate3 = [*&v8 endDate];
              action2 = [*&v8 action];
              actionName2 = [action2 actionName];
              place2 = [*&v8 place];
              placeName2 = [place2 placeName];
              *buf = 138414082;
              v75 = v73;
              v76 = 2112;
              v77 = v72;
              v78 = 2112;
              v79 = actionName;
              v80 = 2112;
              v81 = placeName;
              v82 = 2112;
              v83 = v57;
              v84 = 2112;
              v85 = endDate3;
              v86 = 2112;
              v87 = actionName2;
              v88 = 2112;
              v89 = placeName2;
              _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_INFO, "FineGranularityAggregation for TimeContext: two bundles should be merged for outing, bundle1: startDate:%@, endDate:%@, action:%@, place:%@, bundle 2: startDate:%@, endDate:%@, action:%@, place:%@", buf, 0x52u);

              v55 = v71;
            }

            v23 = 1;
            goto LABEL_28;
          }
        }
      }
    }
  }

  if (!v19 && !v20)
  {
    goto LABEL_58;
  }

  [MOSummarizationUtilities workoutTimeIntervalBetweenBundle:*&v11 andNextBundle:*&v8];
  v62 = fabs(v61);
  v63 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v75 = v62;
    _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "FineGranularityAggregation for TimeContext: time interval between activities from two activity related bundles: %f", buf, 0xCu);
  }

  [parametersCopy fineGranularity_activityBundlesAggregationTimeIntervalThreshold];
  if (v62 >= v64)
  {
LABEL_58:
    v23 = 0;
    goto LABEL_59;
  }

  v21 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  v23 = 1;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v75 = v11;
    v76 = 2112;
    v77 = v8;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "FineGranularityAggregation for TimeContext: two bundles should be merged for activity, bundle1: %@, bundle 2: %@", buf, 0x16u);
  }

LABEL_28:

LABEL_59:
  return v23;
}

- (BOOL)_shouldMergeBundleForCoarseGranularity:(id)granularity toCluster:(id)cluster parameters:(id)parameters
{
  granularityCopy = granularity;
  clusterCopy = cluster;
  parametersCopy = parameters;
  lastObject = [clusterCopy lastObject];
  v12 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    [lastObject startDate];
    v13 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    [lastObject endDate];
    v14 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    startDate = [granularityCopy startDate];
    [granularityCopy endDate];
    v17 = v16 = parametersCopy;
    *buf = 138413058;
    v87 = v13;
    v88 = 2112;
    v89 = v14;
    v90 = 2112;
    v91 = startDate;
    v92 = 2112;
    v93 = v17;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "CoarseGranularityAggregation for TimeContext: the last bundle in cluster start date, %@, end date, %@, bundle to be add to cluster: start date, %@, end date, %@", buf, 0x2Au);

    parametersCopy = v16;
  }

  if (![MOSummarizationUtilities isOutingBundleFromHomeOrWorkVisit:lastObject]&& ![MOSummarizationUtilities isOutingBundleFromHomeOrWorkVisit:granularityCopy])
  {
    v22 = [lastObject interfaceType] == 2 && objc_msgSend(granularityCopy, "interfaceType") == 2;
    if ([lastObject interfaceType] == 2 && objc_msgSend(granularityCopy, "interfaceType") == 12)
    {
      v23 = 1;
    }

    else
    {
      v23 = [lastObject interfaceType] == 12 && objc_msgSend(granularityCopy, "interfaceType") == 2;
    }

    v24 = [lastObject interfaceType] == 1 && objc_msgSend(granularityCopy, "interfaceType") == 1;
    if ([lastObject interfaceType] == 1 && objc_msgSend(granularityCopy, "interfaceType") == 12)
    {
      v25 = 1;
    }

    else
    {
      v25 = [lastObject interfaceType] == 12 && objc_msgSend(granularityCopy, "interfaceType") == 1;
    }

    if (v22 || v23)
    {
      if (![MOSummarizationUtilities isBundle:lastObject insideTheSameDayAsOtherBundle:granularityCopy])
      {
        v18 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          goto LABEL_8;
        }

        [lastObject startDate];
        v32 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        [lastObject endDate];
        v33 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        startDate2 = [granularityCopy startDate];
        endDate = [granularityCopy endDate];
        *buf = 138413058;
        v87 = v32;
        v88 = 2112;
        v89 = v33;
        v90 = 2112;
        v91 = startDate2;
        v92 = 2112;
        v93 = endDate;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "CoarseGranularityAggregation for TimeContext: two bundles should not merge since one of thme is covering more than one day, bundle1: start date, %@, end date, %@, bundle 2: start date, %@, end date, %@", buf, 0x2Au);
LABEL_59:

        goto LABEL_8;
      }

      rankingDictionary = [granularityCopy rankingDictionary];
      v27 = [rankingDictionary objectForKeyedSubscript:@"bundleGoodnessScore"];
      [v27 floatValue];
      v29 = v28;

      v30 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v87 = v29;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "CoarseGranularityAggregation for TimeContext:bundle goodness score, %f", buf, 0xCu);
      }

      [parametersCopy coarseGranularity_outingBundlesExclusionGoodnessScoreThreshold];
      if (v29 > v31)
      {
        v18 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          goto LABEL_8;
        }

        *buf = 0;
        v19 = "CoarseGranularityAggregation for TimeContext:bundle goodness is too high to include into group.";
        goto LABEL_7;
      }

      if ([MOSummarizationUtilities isFlightBundle:granularityCopy])
      {
        v18 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          goto LABEL_8;
        }

        *buf = 0;
        v19 = "CoarseGranularityAggregation for TimeContext:bundle action is flight so don't group with others.";
        goto LABEL_7;
      }

      v18 = [MOSummarizationUtilities metricForVisitsFromBundle:lastObject andNextBundle:granularityCopy];
      v36 = [v18 objectForKey:@"distance"];
      [v36 doubleValue];
      v38 = v37;

      v39 = [v18 objectForKey:@"timeInterval"];
      [v39 doubleValue];
      v41 = v40;

      [MOSummarizationUtilities maximumDistanceFromBundle:granularityCopy toBundleCluster:clusterCopy];
      v43 = v42;
      [(MOTimeContextAggregationManager *)self _maximumGoodnessScoreDeltaFromBundle:granularityCopy toCluster:clusterCopy];
      v45 = v44;
      v46 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        [parametersCopy coarseGranularity_outingBundlesAggregationDistanceThreshold];
        *buf = 134218240;
        v87 = v38;
        v88 = 2048;
        v89 = v47;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "CoarseGranularityAggregation: distance between visits from two outing related bundles: %f (thres=%f)", buf, 0x16u);
      }

      v48 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        [parametersCopy coarseGranularity_outingBundlesAggregationTimeIntervalThreshold];
        *buf = 134218240;
        v87 = v41;
        v88 = 2048;
        v89 = v49;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "CoarseGranularityAggregation: time interval between visits from two outing related bundles: %f (thres=%f)", buf, 0x16u);
      }

      v50 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        [parametersCopy coarseGranularity_outingBundlesAggregationGoodnessScoreDeltaThreshold];
        *buf = 134218240;
        v87 = v45;
        v88 = 2048;
        v89 = v51;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "CoarseGranularityAggregation: max goodness score deta between bundle and members in existing cluster: %f (thres=%f)", buf, 0x16u);
      }

      [parametersCopy coarseGranularity_outingBundlesAggregationDistanceThreshold];
      if (v38 < v52)
      {
        [parametersCopy coarseGranularity_outingBundlesAggregationTimeIntervalThreshold];
        if (v41 < v53)
        {
          [parametersCopy coarseGranularity_outingBundlesAggregationDistanceToClusterThreshold];
          if (v43 < v54)
          {
            [parametersCopy coarseGranularity_outingBundlesAggregationGoodnessScoreDeltaThreshold];
            if (v45 < v55)
            {
              v56 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
              if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
              {
                [lastObject startDate];
                *&log = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                [lastObject endDate];
                v80 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                action = [lastObject action];
                actionName = [action actionName];
                place = [lastObject place];
                placeName = [place placeName];
                startDate3 = [granularityCopy startDate];
                endDate2 = [granularityCopy endDate];
                action2 = [granularityCopy action];
                actionName2 = [action2 actionName];
                place2 = [granularityCopy place];
                [place2 placeName];
                v61 = v83 = parametersCopy;
                *buf = 138414082;
                v87 = *&log;
                v88 = 2112;
                v89 = v80;
                v90 = 2112;
                v91 = actionName;
                v92 = 2112;
                v93 = placeName;
                v94 = 2112;
                v95 = startDate3;
                v96 = 2112;
                v97 = endDate2;
                v98 = 2112;
                v99 = actionName2;
                v100 = 2112;
                v101 = v61;
                _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "CoarseGranularityAggregation for TimeContext: two bundles should be merged for outing, bundle1: startDate:%@, endDate:%@, action:%@, place:%@, bundle 2: startDate:%@, endDate:%@, action:%@, place:%@", buf, 0x52u);

                parametersCopy = v83;
              }

LABEL_62:

              v20 = 1;
              goto LABEL_9;
            }
          }
        }
      }

      if (v24 || v25)
      {
        [MOSummarizationUtilities workoutTimeIntervalBetweenBundle:lastObject andNextBundle:granularityCopy];
        v63 = v62;
        v64 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
        {
          [parametersCopy fineGranularity_activityBundlesAggregationTimeIntervalThreshold];
          *buf = 134218240;
          v87 = v63;
          v88 = 2048;
          v89 = v65;
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_INFO, "CoarseGranularityAggregation for TimeContext: time interval between activities from two activity related bundles: %f, threshold: %f", buf, 0x16u);
        }

        [parametersCopy fineGranularity_activityBundlesAggregationTimeIntervalThreshold];
        if (v63 < v66)
        {
          v56 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
          {
            [lastObject bundleIdentifier];
            v69 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            [lastObject startDate];
            v70 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            endDate3 = [lastObject endDate];
            [granularityCopy bundleIdentifier];
            v72 = v85 = parametersCopy;
            startDate4 = [granularityCopy startDate];
            [granularityCopy endDate];
            v74 = loga = v56;
            *buf = 138413570;
            v87 = v69;
            v88 = 2112;
            v89 = v70;
            v90 = 2112;
            v91 = endDate3;
            v92 = 2112;
            v93 = v72;
            v94 = 2112;
            v95 = startDate4;
            v96 = 2112;
            v97 = v74;
            _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_INFO, "CoarseGranularityAggregation for TimeContext: two activity bundles should be merged for activity, bundle1: bundle ID, %@, startDate, %@, endDate, %@; bundle 2: bundle ID, %@, startDate, %@, endDate, %@", buf, 0x3Eu);

            v56 = loga;
            parametersCopy = v85;
          }

          goto LABEL_62;
        }
      }
    }

    v18 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      goto LABEL_8;
    }

    [lastObject bundleIdentifier];
    v32 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    [lastObject startDate];
    v33 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    startDate2 = [lastObject endDate];
    endDate = [granularityCopy bundleIdentifier];
    [granularityCopy startDate];
    v67 = v84 = parametersCopy;
    endDate4 = [granularityCopy endDate];
    *buf = 138413570;
    v87 = v32;
    v88 = 2112;
    v89 = v33;
    v90 = 2112;
    v91 = startDate2;
    v92 = 2112;
    v93 = endDate;
    v94 = 2112;
    v95 = v67;
    v96 = 2112;
    v97 = endDate4;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "CoarseGranularityAggregation for TimeContext: bundle does not meet summarization criteria, bundle1: bundle ID, %@, startDate, %@, endDate, %@; bundle 2: bundle ID, %@, startDate, %@, endDate, %@", buf, 0x3Eu);

    parametersCopy = v84;
    goto LABEL_59;
  }

  v18 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    v19 = "CoarseGranularityAggregation for TimeContext:bundle is for home or work so exclude from group.";
LABEL_7:
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, v19, buf, 2u);
  }

LABEL_8:
  v20 = 0;
LABEL_9:

  return v20;
}

- (float)_maximumGoodnessScoreDeltaFromBundle:(id)bundle toCluster:(id)cluster
{
  bundleCopy = bundle;
  clusterCopy = cluster;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [clusterCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    v10 = 1.1755e-38;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(clusterCopy);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        rankingDictionary = [bundleCopy rankingDictionary];
        v14 = [rankingDictionary objectForKeyedSubscript:@"bundleGoodnessScore"];
        [v14 floatValue];
        v16 = v15;
        rankingDictionary2 = [v12 rankingDictionary];
        v18 = [rankingDictionary2 objectForKeyedSubscript:@"bundleGoodnessScore"];
        [v18 floatValue];
        v20 = vabds_f32(v16, v19);

        if (v20 > v10)
        {
          v10 = v20;
        }
      }

      v8 = [clusterCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 1.1755e-38;
  }

  return v10;
}

- (id)_groupTransitBundles:(id)bundles parameters:(id)parameters granularity:(unint64_t)granularity
{
  bundlesCopy = bundles;
  parametersCopy = parameters;
  if ([bundlesCopy count] > 1)
  {
    v22 = objc_opt_new();
    v10 = objc_opt_new();
    if ([bundlesCopy count] != 1)
    {
      v11 = 0;
      do
      {
        if (![v10 count])
        {
          v12 = [bundlesCopy objectAtIndexedSubscript:v11];
          [v10 addObject:v12];
        }

        v13 = v11 + 1;
        v14 = [bundlesCopy objectAtIndexedSubscript:v11 + 1];
        v15 = [v10 copy];
        v16 = [(MOTimeContextAggregationManager *)self _shouldMergeTransitBundle:v14 toCluster:v15 parameters:parametersCopy granularity:granularity];

        if (v16)
        {
          v17 = [bundlesCopy objectAtIndexedSubscript:v11 + 1];
          [v10 addObject:v17];

          if (v11 == [bundlesCopy count] - 2 && -[NSObject count](v10, "count") >= 2)
          {
            v18 = [v10 copy];
            [v22 addObject:v18];
          }
        }

        else
        {
          if ([v10 count]>= 2)
          {
            v19 = [v10 copy];
            [v22 addObject:v19];
          }

          [v10 removeAllObjects];
        }

        ++v11;
      }

      while ([bundlesCopy count] - 1 > v13);
    }

    v20 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v24 = [v22 count];
      v25 = 2048;
      granularityCopy = granularity;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Aggregation for TimeContext: grouped bundle count: %lu, granularity: %lu", buf, 0x16u);
    }
  }

  else
  {
    v10 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Aggregation for TimeContext: aggregateBundles input bundle count is less than 2 so no bundle to be aggregated", buf, 2u);
    }

    v22 = 0;
  }

  return v22;
}

- (BOOL)_shouldMergeTransitBundleForFineGranularity:(id)granularity toCluster:(id)cluster parameters:(id)parameters
{
  granularityCopy = granularity;
  parametersCopy = parameters;
  lastObject = [cluster lastObject];
  v10 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    startDate = [lastObject startDate];
    endDate = [lastObject endDate];
    startDate2 = [granularityCopy startDate];
    endDate2 = [granularityCopy endDate];
    *buf = 138413058;
    v85 = startDate;
    v86 = 2112;
    v87 = endDate;
    v88 = 2112;
    v89 = startDate2;
    v90 = 2112;
    v91 = endDate2;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Aggregation for transit bundle: the last bundle in cluster start date, %@, end date, %@, bundle to be add to cluster: start date, %@, end date, %@", buf, 0x2Au);
  }

  interfaceType = [lastObject interfaceType];
  v76 = [MOSummarizationUtilities bundleHasOneWayRoute:lastObject parameters:parametersCopy];
  v16 = [NSArray arrayWithObjects:@"HKWorkoutActivityTypeWalking", @"HKWorkoutActivityTypeHiking", @"HKWorkoutActivityTypeRunning", @"HKWorkoutActivityTypeCycling", @"walk", @"run", @"cycle", 0];
  action = [lastObject action];

  if (action)
  {
    action2 = [lastObject action];
    actionName = [action2 actionName];
    LODWORD(action) = [v16 containsObject:actionName];
  }

  place = [lastObject place];

  if (place)
  {
    place2 = [lastObject place];
    placeName = [place2 placeName];

    v23 = placeName == 0;
  }

  else
  {
    v23 = 1;
  }

  places = [lastObject places];

  v78 = v16;
  if (places)
  {
    v74 = granularityCopy;
    v25 = action;
    action = interfaceType;
    v26 = parametersCopy;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    places2 = [lastObject places];
    v28 = [places2 countByEnumeratingWithState:&v79 objects:v83 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v80;
      do
      {
        for (i = 0; i != v29; i = i + 1)
        {
          if (*v80 != v30)
          {
            objc_enumerationMutation(places2);
          }

          placeName2 = [*(*(&v79 + 1) + 8 * i) placeName];

          v23 = (placeName2 == 0) & v23;
        }

        v29 = [places2 countByEnumeratingWithState:&v79 objects:v83 count:16];
      }

      while (v29);
    }

    parametersCopy = v26;
    interfaceType = action;
    LODWORD(action) = v25;
    granularityCopy = v74;
  }

  if ([lastObject bundleSubType] == 201)
  {
    metaDataForRank = [lastObject metaDataForRank];
    v34 = [metaDataForRank objectForKeyedSubscript:@"WorkoutDuration"];
    [v34 doubleValue];
    v36 = v35;
    [parametersCopy fineGranularity_transitBundlesWorkoutMinimumDuration];
    v38 = v37;

    v39 = v36 >= v38;
  }

  else
  {
    v39 = 1;
  }

  v40 = [granularityCopy interfaceType] == 2 || objc_msgSend(granularityCopy, "interfaceType") == 12;
  v41 = interfaceType == 1;
  v42 = [MOSummarizationUtilities getInterestingDestination:granularityCopy];
  v43 = v42;
  if ((v41 & v76 & action & v39 & v23) == 1 && v40 && v42 != 0)
  {
    v77 = parametersCopy;
    v75 = [MOSummarizationUtilities sortedActivityEventsFromBundle:lastObject];
    lastObject2 = [v75 lastObject];
    workoutLocationRoute = [lastObject2 workoutLocationRoute];
    lastObject3 = [workoutLocationRoute lastObject];

    v50 = [CLLocation alloc];
    location = [v43 location];
    [location latitude];
    v53 = v52;
    location2 = [v43 location];
    [location2 longitude];
    v56 = [v50 initWithLatitude:v53 longitude:v55];

    [v56 distanceFromLocation:lastObject3];
    v58 = v57;
    action3 = [lastObject action];
    actionName2 = [action3 actionName];
    if ([actionName2 isEqualToString:@"HKWorkoutActivityTypeCycling"])
    {
    }

    else
    {
      action4 = [lastObject action];
      actionName3 = [action4 actionName];
      v63 = [actionName3 isEqualToString:@"cycle"];

      if (!v63)
      {
        parametersCopy = v77;
        [v77 fineGranularity_transitBundlesDestinationMaximumTimeThresholdPedestrian];
        goto LABEL_37;
      }
    }

    parametersCopy = v77;
    [v77 fineGranularity_transitBundlesDestinationMaximumTimeThresholdCycle];
LABEL_37:
    v65 = v64;
    v66 = [NSDateInterval alloc];
    startDate3 = [lastObject startDate];
    timestamp = [lastObject3 timestamp];
    v69 = [timestamp dateByAddingTimeInterval:v65];
    v70 = [v66 initWithStartDate:startDate3 endDate:v69];

    startDate4 = [v43 startDate];
    LOBYTE(timestamp) = [v70 containsDate:startDate4];

    [parametersCopy fineGranularity_transitBundlesDestinationMaximumDistanceThreshold];
    v46 = (v58 <= v72) & timestamp;

    goto LABEL_38;
  }

  v46 = 0;
LABEL_38:

  return v46;
}

@end