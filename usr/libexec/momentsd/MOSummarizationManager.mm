@interface MOSummarizationManager
- (BOOL)supressCoarseGranularityPropertyOfEventBundle:(id)bundle dominantBundle:(id)dominantBundle;
- (MOSummarizationManager)init;
- (MOSummarizationManager)initWithUniverse:(id)universe;
- (id)_getThirdPartyKeyByAlbumArtist:(id)artist albumOrArtist:(id)orArtist;
- (id)_getThirdPartyTitleKey:(id)key;
- (id)_getThirdPartyTitleKey:(id)key dayKey:(id)dayKey isRecommendTab:(BOOL)tab;
- (id)_removeDuplicateFromResource:(id)resource nonMediaKeySet:(id)set mediaOnRepeatDict:(id)dict eventBundleDayKey:(id)key keyName:(id)name;
- (id)_removeDuplicateFromResourceThridParty:(id)party mediaKeySet:(id)set dayKey:(id)key isRecommendTab:(BOOL)tab;
- (id)removeDuplicateAssetsAccrossMultipleBundleTypes:(id)types;
- (unint64_t)supressCoarseGranularityPropertyOfEventBundles:(id)bundles primaryBundles:(id)primaryBundles bundleMapping:(id)mapping;
- (void)_aggregateEventBundles:(id)bundles withAggregtaionDateInterval:(id)interval handler:(id)handler;
- (void)_compressAssetsForThirdPartyBundle:(id)bundle;
- (void)_dedupAssetForMediaBundle:(id)bundle nonPlayedMediaBudnles:(id)budnles isRecommendTab:(BOOL)tab;
- (void)_removeDuplicateAssetsForBundleType:(id)type bundleSuperType:(unint64_t)superType musicAlbumSet:(id)set podcastEpisodeSet:(id)episodeSet isRecommendTab:(BOOL)tab;
- (void)aggregateEventBundles:(id)bundles withAggregtaionDateInterval:(id)interval handler:(id)handler;
- (void)compressAssetsForThirdPartyBundles:(id)bundles;
- (void)dedupAssetForMediaBundleThirdParty:(id)party nonPlayedMediaBudnles:(id)budnles isRecommendTab:(BOOL)tab;
- (void)removeDuplicateAssetsFromMediaBundle:(id)bundle;
- (void)removeDuplicateAssetsPerBundleTypeForThirdParty:(id)party bundleSuperType:(unint64_t)type titleSet:(id)set isRecommendTab:(BOOL)tab isMediaOnRepeat:(BOOL)repeat;
@end

@implementation MOSummarizationManager

- (MOSummarizationManager)init
{
  v10.receiver = self;
  v10.super_class = MOSummarizationManager;
  v2 = [(MOSummarizationManager *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    uTF8String = [v4 UTF8String];
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create(uTF8String, v6);
    queue = v2->_queue;
    v2->_queue = v7;
  }

  return v2;
}

- (MOSummarizationManager)initWithUniverse:(id)universe
{
  universeCopy = universe;
  v26.receiver = self;
  v26.super_class = MOSummarizationManager;
  v6 = [(MOSummarizationManager *)&v26 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fUniverse, universe);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    uTF8String = [v9 UTF8String];
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create(uTF8String, v11);
    queue = v7->_queue;
    v7->_queue = v12;

    fUniverse = v7->_fUniverse;
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [(MODaemonUniverse *)fUniverse getService:v16];
    configurationManager = v7->_configurationManager;
    v7->_configurationManager = v17;

    v19 = [[MOSummarizationParameters alloc] initWithConfigurationManager:v7->_configurationManager];
    parameters = v7->_parameters;
    v7->_parameters = v19;

    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v23 = [universeCopy getService:v22];
    eventBundleRanking = v7->_eventBundleRanking;
    v7->_eventBundleRanking = v23;
  }

  return v7;
}

- (void)aggregateEventBundles:(id)bundles withAggregtaionDateInterval:(id)interval handler:(id)handler
{
  bundlesCopy = bundles;
  intervalCopy = interval;
  handlerCopy = handler;
  v11 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v21 = [bundlesCopy count];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "aggregate eventBundles count, %lu", buf, 0xCu);
  }

  queue = [(MOSummarizationManager *)self queue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __84__MOSummarizationManager_aggregateEventBundles_withAggregtaionDateInterval_handler___block_invoke;
  v16[3] = &unk_1003361C0;
  v16[4] = self;
  v17 = bundlesCopy;
  v18 = intervalCopy;
  v19 = handlerCopy;
  v13 = handlerCopy;
  v14 = intervalCopy;
  v15 = bundlesCopy;
  dispatch_async(queue, v16);
}

void __84__MOSummarizationManager_aggregateEventBundles_withAggregtaionDateInterval_handler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __84__MOSummarizationManager_aggregateEventBundles_withAggregtaionDateInterval_handler___block_invoke_2;
  v4[3] = &unk_1003369E0;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v1 _aggregateEventBundles:v2 withAggregtaionDateInterval:v3 handler:v4];
}

uint64_t __84__MOSummarizationManager_aggregateEventBundles_withAggregtaionDateInterval_handler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_aggregateEventBundles:(id)bundles withAggregtaionDateInterval:(id)interval handler:(id)handler
{
  bundlesCopy = bundles;
  intervalCopy = interval;
  handlerCopy = handler;
  if ([bundlesCopy count])
  {
    parameters = [(MOSummarizationManager *)self parameters];
    [parameters setAggregationDateInterval:intervalCopy];

    v10 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      startDate = [intervalCopy startDate];
      endDate = [intervalCopy endDate];
      *buf = 138412546;
      *&buf[4] = startDate;
      *&buf[12] = 2112;
      *&buf[14] = endDate;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "aggregation date interval, start date: %@, end date: %@", buf, 0x16u);
    }

    v35 = [[NSArray alloc] initWithObjects:{&off_10036A390, &off_10036A3A8, 0}];
    v34 = [NSPredicate predicateWithFormat:@"interfaceType in %@", v35];
    v36 = [bundlesCopy filteredArrayUsingPredicate:v34];
    v13 = [bundlesCopy mutableCopy];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v54 = __Block_byref_object_copy__26;
    v55 = __Block_byref_object_dispose__26;
    v56 = [v36 mutableCopy];
    v14 = [v13 count];
    [v13 removeObjectsInArray:v36];
    v15 = objc_autoreleasePoolPush();
    [(MOEventBundleRanking *)self->_eventBundleRanking generateBundleRanking:v13 withMinRecommendedBundleCountRequirement:0];
    objc_autoreleasePoolPop(v15);
    v16 = [v13 count];
    v33 = [NSPredicate predicateWithFormat:@"%K == %lu", @"interfaceType", 13];
    v17 = [bundlesCopy filteredArrayUsingPredicate:?];
    [*(*&buf[8] + 40) addObjectsFromArray:v17];
    [v13 removeObjectsInArray:v17];
    v18 = [NSPredicate predicateWithFormat:@"%K.%K <= %lu", @"place", @"placeType", 100];
    v19 = [v17 filteredArrayUsingPredicate:v18];
    v20 = [NSCompoundPredicate notPredicateWithSubpredicate:v18];
    v21 = [v17 filteredArrayUsingPredicate:v20];

    v22 = v19;
    v23 = [MODominantBundleCreationManager alloc];
    fUniverse = [(MOSummarizationManager *)self fUniverse];
    v25 = [(MODominantBundleCreationManager *)v23 initWithUniverse:fUniverse];

    v26 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *v47 = 134218496;
      v48 = v14;
      v49 = 2048;
      v50 = v16;
      v51 = 2048;
      v52 = [v36 count];
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Summarization: eventBundles, %lu, dominantBundling inputs, %lu, not summarize, %lu", v47, 0x20u);
    }

    v27 = [v13 copy];
    parameters2 = [(MOSummarizationManager *)self parameters];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = __85__MOSummarizationManager__aggregateEventBundles_withAggregtaionDateInterval_handler___block_invoke;
    v39[3] = &unk_10033C7D8;
    v46 = buf;
    v29 = v13;
    v40 = v29;
    selfCopy = self;
    v42 = v22;
    v30 = v21;
    v43 = v30;
    v31 = v42;
    v44 = v31;
    v45 = handlerCopy;
    [(MODominantBundleCreationManager *)v25 processBundlesForCreatingDominantBundles:v27 withParameters:parameters2 handler:v39];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v32 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "No eventBundle to be aggregated", buf, 2u);
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

void __85__MOSummarizationManager__aggregateEventBundles_withAggregtaionDateInterval_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(*(*(a1 + 80) + 8) + 40) addObjectsFromArray:v3];
  v4 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(*(*(a1 + 80) + 8) + 40) count];
    *buf = 134217984;
    v34 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Summarization:dominant bundle result count, %lu", buf, 0xCu);
  }

  v6 = [NSPredicate predicateWithFormat:@"%K == NO", @"isAggregatedAndSuppressed"];
  v7 = [v3 filteredArrayUsingPredicate:v6];
  v8 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [*(a1 + 32) count];
    v10 = [v7 count];
    v11 = [v3 count];
    v12 = [v7 count];
    *buf = 134218496;
    v34 = v9;
    v35 = 2048;
    v36 = v10;
    v37 = 2048;
    v38 = v11 - v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Summarization: Dominant bundle process, input, %lu, output, %lu, supressed, %lu", buf, 0x20u);
  }

  v13 = [MOFineGranularityAggregationManager alloc];
  v14 = [*(a1 + 40) fUniverse];
  v15 = [(MOFineGranularityAggregationManager *)v13 initWithUniverse:v14];

  v16 = [*(a1 + 40) parameters];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = __85__MOSummarizationManager__aggregateEventBundles_withAggregtaionDateInterval_handler___block_invoke_412;
  v26[3] = &unk_10033C7B0;
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v27 = v7;
  v28 = v17;
  v19 = *(a1 + 80);
  v29 = v18;
  v30 = v3;
  v20 = *(a1 + 56);
  v21 = *(a1 + 64);
  *&v22 = *(a1 + 72);
  *(&v22 + 1) = v19;
  *&v23 = v20;
  *(&v23 + 1) = v21;
  v31 = v23;
  v32 = v22;
  v24 = v3;
  v25 = v7;
  [(MOFineGranularityAggregationManager *)v15 aggregateBundles:v25 withParameters:v16 handler:v26];
}

void __85__MOSummarizationManager__aggregateEventBundles_withAggregtaionDateInterval_handler___block_invoke_412(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(*(*(a1 + 88) + 8) + 40) addObjectsFromArray:v3];
  v4 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) count];
    *buf = 134218240;
    v31 = v5;
    v32 = 2048;
    v33 = [v3 count];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Summarization: Fine granularity aggregation process, input, %lu, output, %lu", buf, 0x16u);
  }

  v6 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [*(*(*(a1 + 88) + 8) + 40) count];
    *buf = 134217984;
    v31 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Summarization:fine granularity result count, %lu", buf, 0xCu);
  }

  v8 = [MOCoarseGranularityAggregationManager alloc];
  v9 = [*(a1 + 40) fUniverse];
  v10 = [(MOCoarseGranularityAggregationManager *)v8 initWithUniverse:v9];

  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) parameters];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = __85__MOSummarizationManager__aggregateEventBundles_withAggregtaionDateInterval_handler___block_invoke_414;
  v25[3] = &unk_10033C7B0;
  v13 = *(a1 + 32);
  v14 = *(a1 + 88);
  v15 = v13;
  v16 = *(a1 + 48);
  v24 = *(a1 + 40);
  v17 = *(a1 + 56);
  *&v18 = v24;
  *(&v18 + 1) = v17;
  *&v19 = v13;
  *(&v19 + 1) = v16;
  v26 = v19;
  v27 = v18;
  v20 = *(a1 + 64);
  v21 = *(a1 + 72);
  *&v22 = *(a1 + 80);
  *(&v22 + 1) = v14;
  *&v23 = v20;
  *(&v23 + 1) = v21;
  v28 = v23;
  v29 = v22;
  [(MOCoarseGranularityAggregationManager *)v10 aggregateBundles:v11 withParameters:v12 handler:v25];
}

void __85__MOSummarizationManager__aggregateEventBundles_withAggregtaionDateInterval_handler___block_invoke_414(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v123 = a3;
  [*(*(*(a1 + 88) + 8) + 40) addObjectsFromArray:v5];
  v6 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  v126 = a1;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [*(a1 + 32) count];
    v8 = [*(a1 + 40) count];
    *buf = 134218496;
    v163 = v7;
    v164 = 2048;
    v165 = v8;
    a1 = v126;
    v166 = 2048;
    v167 = [v5 count];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Summarization: Coarse granularity aggregation process, input, %lu, (container bundles, %lu) output, %lu", buf, 0x20u);
  }

  v9 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [*(*(*(a1 + 88) + 8) + 40) count];
    *buf = 134217984;
    v163 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Summarization:coarse granularity result count, %lu", buf, 0xCu);
  }

  v125 = v5;
  v11 = [v5 mutableCopy];
  v12 = *(*(*(a1 + 88) + 8) + 40);
  v13 = [*(a1 + 48) parameters];
  v14 = [MOSummarizationUtilities summarizeMotionActivityBundlesWithSamePlaceName:v12 withParameters:v13];

  v15 = v126;
  if ([v14 count])
  {
    [*(*(*(v126 + 88) + 8) + 40) addObjectsFromArray:v14];
    [v11 addObjectsFromArray:v14];
  }

  v122 = v14;
  v124 = v11;
  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  v16 = *(*(*(v126 + 88) + 8) + 40);
  v139 = [v16 countByEnumeratingWithState:&v158 objects:v184 count:16];
  if (v139)
  {
    v17 = *v159;
    v132 = v16;
    v134 = *v159;
    do
    {
      for (i = 0; i != v139; i = i + 1)
      {
        if (*v159 != v17)
        {
          objc_enumerationMutation(v16);
        }

        v19 = *(*(&v158 + 1) + 8 * i);
        v20 = objc_autoreleasePoolPush();
        if ([v19 bundleSubType] == 204)
        {
          v21 = [v19 metaDataForRank];
          v22 = [v21 objectForKeyedSubscript:@"WorkoutDuration"];
          [v22 doubleValue];
          v24 = v23;
          v25 = [*(v15 + 48) parameters];
          [v25 motionActivityWalkBundlesMinimumDurationForNoAssetsOrPlaceLabel];
          v27 = v26;

          if (v24 < v27)
          {
            v28 = [NSPredicate predicateWithFormat:@"type == %lu", 2];
            v29 = [v19 resources];
            v30 = [v29 filteredArrayUsingPredicate:v28];

            v31 = [v19 place];

            if (v31)
            {
              v32 = [v19 place];
              v33 = [v32 placeName];
              v34 = v33 != 0;
            }

            else
            {
              v34 = 0;
            }

            v35 = [v19 places];

            if (v35)
            {
              v136 = v28;
              v156 = 0u;
              v157 = 0u;
              v154 = 0u;
              v155 = 0u;
              v36 = [v19 places];
              v37 = [v36 countByEnumeratingWithState:&v154 objects:v183 count:16];
              if (v37)
              {
                v38 = v37;
                v39 = *v155;
                do
                {
                  for (j = 0; j != v38; j = j + 1)
                  {
                    if (*v155 != v39)
                    {
                      objc_enumerationMutation(v36);
                    }

                    v41 = [*(*(&v154 + 1) + 8 * j) placeName];
                    v42 = v41 != 0;

                    v34 |= v42;
                  }

                  v38 = [v36 countByEnumeratingWithState:&v154 objects:v183 count:16];
                }

                while (v38);
              }

              v15 = v126;
              v16 = v132;
              v28 = v136;
            }

            if (![v30 count] && (v34 & 1) == 0)
            {
              [v19 setIsAggregatedAndSuppressed:1];
            }

            v17 = v134;
          }
        }

        objc_autoreleasePoolPop(v20);
      }

      v139 = [v16 countByEnumeratingWithState:&v158 objects:v184 count:16];
    }

    while (v139);
  }

  v43 = [NSPredicate predicateWithBlock:&__block_literal_global_34];
  v44 = [NSPredicate predicateWithBlock:&__block_literal_global_422];
  v45 = [v124 copy];
  v46 = [v45 filteredArrayUsingPredicate:v43];

  v121 = v43;
  v47 = [*(v15 + 56) filteredArrayUsingPredicate:v43];
  v48 = [v125 filteredArrayUsingPredicate:v44];
  v120 = v44;
  v49 = [*(v15 + 56) filteredArrayUsingPredicate:v44];
  v50 = +[NSMutableDictionary dictionary];
  v119 = v47;
  v116 = [*(v15 + 48) supressCoarseGranularityPropertyOfEventBundles:v47 primaryBundles:*(v15 + 40) bundleMapping:v50];
  v115 = [*(v15 + 48) supressCoarseGranularityPropertyOfEventBundles:v46 primaryBundles:*(v15 + 40) bundleMapping:v50];
  v114 = [*(v15 + 48) supressCoarseGranularityPropertyOfEventBundles:v48 primaryBundles:*(v15 + 40) bundleMapping:v50];
  v113 = [*(v15 + 48) supressCoarseGranularityPropertyOfEventBundles:v49 primaryBundles:*(v15 + 40) bundleMapping:v50];
  v118 = v48;
  v112 = [*(v15 + 48) supressCoarseGranularityPropertyOfEventBundles:v48 primaryBundles:*(v15 + 64) bundleMapping:v50];
  v117 = v49;
  v111 = [*(v15 + 48) supressCoarseGranularityPropertyOfEventBundles:v49 primaryBundles:*(v15 + 64) bundleMapping:v50];
  v51 = +[NSMutableDictionary dictionary];

  v110 = [*(v15 + 48) supressCoarseGranularityPropertyOfEventBundles:*(v15 + 72) primaryBundles:*(v15 + 64) bundleMapping:v51];
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v52 = [v51 allKeys];
  v130 = [v52 countByEnumeratingWithState:&v150 objects:v182 count:16];
  if (v130)
  {
    v129 = *v151;
    v127 = v52;
    v128 = v51;
    do
    {
      v53 = 0;
      do
      {
        if (*v151 != v129)
        {
          objc_enumerationMutation(v52);
        }

        v131 = v53;
        v54 = *(*(&v150 + 1) + 8 * v53);
        v55 = [v51 objectForKey:v54];
        v56 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v163 = v54;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "summary trip Bundle : %@ maps to :", buf, 0xCu);
        }

        v148 = 0u;
        v149 = 0u;
        v146 = 0u;
        v147 = 0u;
        v57 = v55;
        v58 = [v57 countByEnumeratingWithState:&v146 objects:v181 count:16];
        obj = v57;
        if (v58)
        {
          v59 = v58;
          v60 = *v147;
          do
          {
            for (k = 0; k != v59; k = k + 1)
            {
              if (*v147 != v60)
              {
                objc_enumerationMutation(obj);
              }

              v62 = *(*(&v146 + 1) + 8 * k);
              v63 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
              if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v163 = v62;
                _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "daily trip bundles : %@", buf, 0xCu);
              }
            }

            v57 = obj;
            v59 = [obj countByEnumeratingWithState:&v146 objects:v181 count:16];
          }

          while (v59);
        }

        v64 = [v54 place];
        v65 = [v64 placeType];

        if (v65 <= 0x65 && [v57 count] == 1)
        {
          v66 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
          if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_INFO, "Maps to one daily trip bundle.", buf, 2u);
          }

          v144 = 0u;
          v145 = 0u;
          v142 = 0u;
          v143 = 0u;
          v133 = v57;
          v137 = [v133 countByEnumeratingWithState:&v142 objects:v180 count:16];
          if (v137)
          {
            v135 = *v143;
            do
            {
              for (m = 0; m != v137; m = m + 1)
              {
                if (*v143 != v135)
                {
                  objc_enumerationMutation(v133);
                }

                v68 = *(*(&v142 + 1) + 8 * m);
                [v68 setIsAggregatedAndSuppressed:0];
                [v54 setIsAggregatedAndSuppressed:1];
                v69 = objc_opt_new();
                v70 = [v68 subBundleIDs];
                [v69 addObjectsFromArray:v70];

                v71 = [v54 bundleIdentifier];
                v72 = [v71 UUIDString];
                [v69 addObject:v72];

                v73 = [v69 copy];
                [v68 setSubBundleIDs:v73];

                v74 = [v54 subBundleIDs];
                v75 = [v68 bundleIdentifier];
                v76 = [v75 UUIDString];
                v77 = [v74 containsObject:v76];

                if (v77)
                {
                  v78 = [v54 subBundleIDs];
                  v141[0] = _NSConcreteStackBlock;
                  v141[1] = 3221225472;
                  v141[2] = __85__MOSummarizationManager__aggregateEventBundles_withAggregtaionDateInterval_handler___block_invoke_425;
                  v141[3] = &unk_10033C788;
                  v141[4] = v68;
                  v79 = [NSPredicate predicateWithBlock:v141];
                  v80 = [v78 filteredArrayUsingPredicate:v79];
                  [v54 setSubBundleIDs:v80];
                }

                v81 = objc_opt_new();
                v82 = [v68 subSuggestionIDs];
                [v81 addObjectsFromArray:v82];

                v83 = [v54 suggestionID];
                v84 = [v83 UUIDString];
                [v81 addObject:v84];

                v85 = [v81 copy];
                [v68 setSubSuggestionIDs:v85];

                v86 = [v54 subSuggestionIDs];
                v87 = [v68 suggestionID];
                v88 = [v87 UUIDString];
                v89 = [v86 containsObject:v88];

                if (v89)
                {
                  v90 = [v54 subSuggestionIDs];
                  v140[0] = _NSConcreteStackBlock;
                  v140[1] = 3221225472;
                  v140[2] = __85__MOSummarizationManager__aggregateEventBundles_withAggregtaionDateInterval_handler___block_invoke_2_427;
                  v140[3] = &unk_10033C788;
                  v140[4] = v68;
                  v91 = [NSPredicate predicateWithBlock:v140];
                  v92 = [v90 filteredArrayUsingPredicate:v91];
                  [v54 setSubSuggestionIDs:v92];
                }

                v93 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
                if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v163 = v54;
                  _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_INFO, "suppressed summary trip bundle : %@ ", buf, 0xCu);
                }

                v94 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
                if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v163 = v68;
                  _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_INFO, "for daily trip bundle : %@", buf, 0xCu);
                }
              }

              v137 = [v133 countByEnumeratingWithState:&v142 objects:v180 count:16];
            }

            while (v137);
          }

          v52 = v127;
          v51 = v128;
          v57 = obj;
        }

        v53 = v131 + 1;
      }

      while ((v131 + 1) != v130);
      v130 = [v52 countByEnumeratingWithState:&v150 objects:v182 count:16];
    }

    while (v130);
  }

  v95 = v126;
  v96 = [*(*(*(v126 + 88) + 8) + 40) count];
  v97 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
  {
    v108 = [*(v126 + 56) count];
    v109 = v108 - [*(v126 + 32) count];
    v95 = v126;
    *buf = 134220032;
    v163 = v109;
    v164 = 2048;
    v165 = v114;
    v166 = 2048;
    v167 = v113;
    v168 = 2048;
    v169 = v116;
    v170 = 2048;
    v171 = v115;
    v172 = 2048;
    v173 = v110;
    v174 = 2048;
    v175 = v112;
    v176 = 2048;
    v177 = v111;
    v178 = 2048;
    v179 = v96;
    _os_log_debug_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEBUG, "Summarization: suppresed by dedupe, %lu, supressed by trip bundles, %lu, supressedOnCoarse by trip bundles, %lu, suppressedActivity by trip bundles, %lu, suppressedActivityOnCoarse by trip bundle, %lu, suppressedTrips, %lu, suppressedOutingsBySummaryTrip, %lu, suppressedSeedBySummaryTrip, %lu, result, %lu", buf, 0x5Cu);
  }

  v98 = objc_autoreleasePoolPush();
  v99 = [*(v95 + 48) eventBundleRanking];
  [v99 generateBundleRanking:*(*(*(v95 + 88) + 8) + 40) withMinRecommendedBundleCountRequirement:0];

  objc_autoreleasePoolPop(v98);
  v100 = objc_autoreleasePoolPush();
  v101 = [*(v95 + 48) removeDuplicateAssetsAccrossMultipleBundleTypes:*(*(*(v95 + 88) + 8) + 40)];
  v102 = *(*(v95 + 88) + 8);
  v103 = *(v102 + 40);
  *(v102 + 40) = v101;

  objc_autoreleasePoolPop(v100);
  v104 = objc_autoreleasePoolPush();
  [*(v95 + 48) removeDuplicateAssetsFromMediaBundle:*(*(*(v95 + 88) + 8) + 40)];
  objc_autoreleasePoolPop(v104);
  v105 = objc_autoreleasePoolPush();
  [*(v95 + 48) compressAssetsForThirdPartyBundles:*(*(*(v95 + 88) + 8) + 40)];
  objc_autoreleasePoolPop(v105);
  v106 = objc_autoreleasePoolPush();
  v107 = *(*(*(v95 + 88) + 8) + 40);
  (*(*(v95 + 80) + 16))();
  objc_autoreleasePoolPop(v106);
}

uint64_t __85__MOSummarizationManager__aggregateEventBundles_withAggregtaionDateInterval_handler___block_invoke_425(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 bundleIdentifier];
  v5 = [v4 UUIDString];
  v6 = [v3 isEqual:v5];

  return v6 ^ 1;
}

uint64_t __85__MOSummarizationManager__aggregateEventBundles_withAggregtaionDateInterval_handler___block_invoke_2_427(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 suggestionID];
  v5 = [v4 UUIDString];
  v6 = [v3 isEqual:v5];

  return v6 ^ 1;
}

- (id)removeDuplicateAssetsAccrossMultipleBundleTypes:(id)types
{
  typesCopy = types;
  if ([typesCopy count])
  {
    v5 = [MOSummarizationUtilities sortedBundleBasedOnGoodnessScore:typesCopy];
    v6 = objc_alloc_init(NSMutableSet);
    v7 = objc_alloc_init(NSMutableSet);
    v8 = objc_alloc_init(NSMutableSet);
    for (i = 0; i != 4; ++i)
    {
      v10 = objc_autoreleasePoolPush();
      [(MOSummarizationManager *)self _removeDuplicateAssetsForBundleType:v5 bundleSuperType:qword_100323130[i] musicAlbumSet:v6 podcastEpisodeSet:v7 isRecommendTab:1];
      objc_autoreleasePoolPop(v10);
    }

    [v6 removeAllObjects];
    [v7 removeAllObjects];
    for (j = 0; j != 4; ++j)
    {
      v12 = objc_autoreleasePoolPush();
      [(MOSummarizationManager *)self _removeDuplicateAssetsForBundleType:v5 bundleSuperType:qword_100323130[j] musicAlbumSet:v6 podcastEpisodeSet:v7 isRecommendTab:0];
      objc_autoreleasePoolPop(v12);
    }

    [(MOSummarizationManager *)self removeDuplicateAssetsPerBundleTypeForThirdParty:v5 bundleSuperType:4 titleSet:v8 isRecommendTab:1 isMediaOnRepeat:1];
    v13 = &dword_100000008;
    do
    {
      v14 = objc_autoreleasePoolPush();
      [(MOSummarizationManager *)self removeDuplicateAssetsPerBundleTypeForThirdParty:v5 bundleSuperType:*(qword_100323130 + v13) titleSet:v8 isRecommendTab:1 isMediaOnRepeat:0];
      objc_autoreleasePoolPop(v14);
      v13 += 8;
    }

    while (v13 != 32);
    [v8 removeAllObjects];
    [(MOSummarizationManager *)self removeDuplicateAssetsPerBundleTypeForThirdParty:v5 bundleSuperType:4 titleSet:v8 isRecommendTab:0 isMediaOnRepeat:1];
    v15 = &dword_100000008;
    do
    {
      [(MOSummarizationManager *)self removeDuplicateAssetsPerBundleTypeForThirdParty:v5 bundleSuperType:*(qword_100323130 + v15) titleSet:v8 isRecommendTab:0 isMediaOnRepeat:0];
      v15 += 8;
    }

    while (v15 != 32);
    v16 = [[NSMutableArray alloc] initWithArray:v5];
  }

  else
  {
    v16 = typesCopy;
  }

  return v16;
}

- (void)_removeDuplicateAssetsForBundleType:(id)type bundleSuperType:(unint64_t)superType musicAlbumSet:(id)set podcastEpisodeSet:(id)episodeSet isRecommendTab:(BOOL)tab
{
  typeCopy = type;
  setCopy = set;
  episodeSetCopy = episodeSet;
  if ([typeCopy count])
  {
    v56 = episodeSetCopy;
    v57 = setCopy;
    v73[0] = _NSConcreteStackBlock;
    v73[1] = 3221225472;
    v73[2] = __125__MOSummarizationManager__removeDuplicateAssetsForBundleType_bundleSuperType_musicAlbumSet_podcastEpisodeSet_isRecommendTab___block_invoke;
    v73[3] = &__block_descriptor_41_e40_B24__0__MOEventBundle_8__NSDictionary_16l;
    v73[4] = superType;
    tabCopy = tab;
    v48 = [NSPredicate predicateWithBlock:v73];
    v49 = typeCopy;
    [typeCopy filteredArrayUsingPredicate:?];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    obj = v72 = 0u;
    v14 = [obj countByEnumeratingWithState:&v69 objects:v79 count:16];
    if (!v14)
    {
      goto LABEL_56;
    }

    v15 = v14;
    v16 = *v70;
    v51 = *v70;
    while (1)
    {
      v17 = 0;
      v52 = v15;
      do
      {
        if (*v70 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v69 + 1) + 8 * v17);
        context = objc_autoreleasePoolPush();
        resources = [v18 resources];
        if (resources)
        {
          v20 = resources;
          resources2 = [v18 resources];
          v22 = [resources2 count];

          if (v22)
          {
            resources3 = [v18 resources];
            v24 = [(MOSummarizationManager *)self _sortResourcesByPriorityScore:resources3];

            v60 = objc_alloc_init(NSMutableArray);
            v65 = 0u;
            v66 = 0u;
            v67 = 0u;
            v68 = 0u;
            v25 = v24;
            v26 = [v25 countByEnumeratingWithState:&v65 objects:v78 count:16];
            v59 = v25;
            v54 = v17;
            if (v26)
            {
              v27 = v26;
              v58 = 0;
              v28 = *v66;
              while (1)
              {
                for (i = 0; i != v27; i = i + 1)
                {
                  if (*v66 != v28)
                  {
                    objc_enumerationMutation(v25);
                  }

                  v30 = *(*(&v65 + 1) + 8 * i);
                  v31 = objc_autoreleasePoolPush();
                  type = [v30 type];
                  if ([v18 bundleSuperType] == superType && type == 3)
                  {
                    getDictionary = [v30 getDictionary];
                    v34 = [getDictionary objectForKey:@"MOMediaPlayMetaDataKeyPlayerMediaTypeKey"];

                    if (([v34 isEqualToString:MOMediaPlayMetaDataKeyPlayerMediaTypeSongAlbum[0]] & 1) != 0 || objc_msgSend(v34, "isEqualToString:", MOMediaPlayMetaDataKeyPlayerMediaTypeSong[0]))
                    {
                      getDictionary2 = [v30 getDictionary];
                      v36 = [getDictionary2 objectForKey:@"MOMediaPlayMetaDataKeyPlayerAlbumName"];

                      if (!v36)
                      {
                        goto LABEL_30;
                      }

                      v37 = v57;
                      if ([v57 containsObject:v36])
                      {
                        if ([v57 containsObject:v36])
                        {
                          v25 = v59;
                          if ([v18 bundleSuperType] != 4)
                          {
                            [v60 addObject:v30];
                          }

LABEL_31:

LABEL_32:
                          goto LABEL_33;
                        }

LABEL_30:
                        v25 = v59;
                        goto LABEL_31;
                      }
                    }

                    else
                    {
                      if (([v34 isEqualToString:MOMediaPlayMetaDataKeyPlayerMediaTypePodcastArtist[0]] & 1) == 0 && !objc_msgSend(v34, "isEqualToString:", MOMediaPlayMetaDataKeyPlayerMediaTypePodcastEpisode[0]))
                      {
                        goto LABEL_32;
                      }

                      getDictionary3 = [v30 getDictionary];
                      v36 = [getDictionary3 objectForKey:@"MOMediaPlayMetaDataKeyPlayerArtist"];

                      if (!v36)
                      {
                        goto LABEL_30;
                      }

                      v37 = v56;
                      if ([v56 containsObject:v36])
                      {
                        if ([v56 containsObject:v36])
                        {
                          [v60 addObject:v30];
                        }

                        goto LABEL_30;
                      }
                    }

                    [v37 addObject:v36];
                    ++v58;
                    goto LABEL_30;
                  }

LABEL_33:
                  objc_autoreleasePoolPop(v31);
                }

                v27 = [v25 countByEnumeratingWithState:&v65 objects:v78 count:16];
                if (!v27)
                {
                  v39 = v58 == 0;
                  v16 = v51;
                  v15 = v52;
                  v17 = v54;
                  goto LABEL_37;
                }
              }
            }

            v39 = 1;
LABEL_37:

            if ([v60 count])
            {
              v40 = objc_alloc_init(NSMutableArray);
              v61 = 0u;
              v62 = 0u;
              v63 = 0u;
              v64 = 0u;
              v41 = v25;
              v42 = [v41 countByEnumeratingWithState:&v61 objects:v77 count:16];
              if (v42)
              {
                v43 = v42;
                v44 = *v62;
                do
                {
                  for (j = 0; j != v43; j = j + 1)
                  {
                    if (*v62 != v44)
                    {
                      objc_enumerationMutation(v41);
                    }

                    v46 = *(*(&v61 + 1) + 8 * j);
                    if ([v60 containsObject:v46])
                    {
                      v47 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
                      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412290;
                        v76 = v46;
                        _os_log_debug_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEBUG, "Media resource is removed, %@", buf, 0xCu);
                      }
                    }

                    else
                    {
                      [v40 addObject:v46];
                    }
                  }

                  v43 = [v41 countByEnumeratingWithState:&v61 objects:v77 count:16];
                }

                while (v43);
              }

              if (v39)
              {
                [v18 setConcurrentMediaAction:0];
              }

              [v18 setResources:v40];

              v16 = v51;
              v15 = v52;
              v17 = v54;
              v25 = v59;
            }
          }
        }

        objc_autoreleasePoolPop(context);
        v17 = v17 + 1;
      }

      while (v17 != v15);
      v15 = [obj countByEnumeratingWithState:&v69 objects:v79 count:16];
      if (!v15)
      {
LABEL_56:

        typeCopy = v49;
        setCopy = v57;
        episodeSetCopy = v56;
        break;
      }
    }
  }
}

uint64_t __125__MOSummarizationManager__removeDuplicateAssetsForBundleType_bundleSuperType_musicAlbumSet_podcastEpisodeSet_isRecommendTab___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 bundleSuperType] != *(a1 + 32))
  {
    goto LABEL_23;
  }

  if ([v3 bundleSuperType] == 4)
  {
    goto LABEL_23;
  }

  v4 = [v3 rankingDictionary];
  if (!v4)
  {
    goto LABEL_23;
  }

  v5 = v4;
  v6 = [v3 rankingDictionary];
  v7 = [v6 objectForKeyedSubscript:@"visibilityCategoryForUI"];

  if (!v7)
  {
LABEL_23:
    if ((*(a1 + 40) != 1 || [v3 bundleSuperType] != 4 || objc_msgSend(v3, "bundleSubType") != 404 || objc_msgSend(v3, "isAggregatedAndSuppressed")) && ((*(a1 + 40) & 1) != 0 || objc_msgSend(v3, "bundleSuperType") != 4 || objc_msgSend(v3, "bundleSubType") != 401 || objc_msgSend(v3, "isAggregatedAndSuppressed")))
    {
      goto LABEL_18;
    }

LABEL_20:
    v12 = 1;
    goto LABEL_19;
  }

  v8 = [v3 rankingDictionary];
  v9 = [v8 objectForKeyedSubscript:@"visibilityCategoryForUI"];
  v10 = [v9 unsignedIntValue];

  v11 = *(a1 + 40);
  if (v11 == 1 && v10 - 1 < 2 || (v11 & 1) == 0 && (v10 & 0xFFFFFFFD) == 1)
  {
    goto LABEL_20;
  }

LABEL_18:
  v12 = 0;
LABEL_19:

  return v12;
}

- (void)compressAssetsForThirdPartyBundles:(id)bundles
{
  bundlesCopy = bundles;
  if ([bundlesCopy count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = bundlesCopy;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [(MOSummarizationManager *)self _compressAssetsForThirdPartyBundle:*(*(&v10 + 1) + 8 * v9), v10];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)_compressAssetsForThirdPartyBundle:(id)bundle
{
  bundleCopy = bundle;
  v4 = bundleCopy;
  if (bundleCopy && ([bundleCopy bundleSuperType] == 4 || objc_msgSend(v4, "bundleSuperType") == 2 || objc_msgSend(v4, "bundleSuperType") == 1 || objc_msgSend(v4, "bundleSuperType") == 5) && (objc_msgSend(v4, "isAggregatedAndSuppressed") & 1) == 0)
  {
    if ([v4 bundleSuperType] == 4)
    {
      goto LABEL_11;
    }

    rankingDictionary = [v4 rankingDictionary];
    if (!rankingDictionary)
    {
      goto LABEL_11;
    }

    v6 = rankingDictionary;
    rankingDictionary2 = [v4 rankingDictionary];
    v8 = [rankingDictionary2 objectForKeyedSubscript:@"visibilityCategoryForUI"];

    if (!v8 || ([v4 rankingDictionary], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "objectForKeyedSubscript:", @"visibilityCategoryForUI"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "unsignedIntValue"), v10, v9, v11 != 4))
    {
LABEL_11:
      v65 = objc_opt_new();
      v60 = objc_opt_new();
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      obj = [v4 resources];
      v12 = [obj countByEnumeratingWithState:&v74 objects:v86 count:16];
      v59 = v4;
      if (v12)
      {
        v13 = v12;
        LODWORD(v14) = 0;
        v15 = *v75;
        while (1)
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v75 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v74 + 1) + 8 * i);
            v18 = objc_autoreleasePoolPush();
            if ([v17 type] == 3)
            {
              getDictionary = [v17 getDictionary];
              v20 = [getDictionary objectForKey:@"MOMediaPlayMetaDataKeyPlayerMediaTypeKey"];

              if (([v20 isEqualToString:MOMediaPlayMetaDataKeyPlayerMediaTypeThirdPartyMedia[0]] & 1) != 0 || (objc_msgSend(v20, "isEqualToString:", MOMediaPlayMetaDataKeyPlayerMediaTypeThirdPartyMediaAlbum[0]) & 1) != 0 || objc_msgSend(v20, "isEqualToString:", MOMediaPlayMetaDataKeyPlayerMediaTypeThirdPartyMediaArtist))
              {
                getDictionary2 = [v17 getDictionary];
                v22 = [getDictionary2 objectForKey:@"MOMediaPlayMetaDataKeyPlayerAlbumName"];

                getDictionary3 = [v17 getDictionary];
                v24 = [(MOSummarizationManager *)self _getThirdPartyKeyByAlbumArtist:getDictionary3 albumOrArtist:v22];

                if (!v22)
                {
                  goto LABEL_26;
                }

                if (([v22 isEqualToString:&stru_1003416B0] & 1) == 0)
                {
                  v25 = [v65 objectForKeyedSubscript:v24];

                  if (v25)
                  {
                    v26 = [v65 objectForKeyedSubscript:v24];
                    [v26 addObject:v17];
                    goto LABEL_28;
                  }
                }

                if (([v22 isEqualToString:&stru_1003416B0] & 1) != 0 || (objc_msgSend(v65, "objectForKeyedSubscript:", v24), v27 = objc_claimAutoreleasedReturnValue(), v27, v27))
                {
LABEL_26:
                  [v60 addObject:v17];
                }

                else
                {
                  v26 = objc_opt_new();
                  [v26 addObject:v17];
                  [v65 setValue:v26 forKey:v24];
LABEL_28:
                }

                LODWORD(v14) = v14 + 1;
              }
            }

            objc_autoreleasePoolPop(v18);
          }

          v13 = [obj countByEnumeratingWithState:&v74 objects:v86 count:16];
          if (!v13)
          {
            v14 = v14;
            v4 = v59;
            goto LABEL_35;
          }
        }
      }

      v14 = 0;
LABEL_35:

      v28 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        [(MOSummarizationManager *)v65 _compressAssetsForThirdPartyBundle:v60, v28];
      }

      v29 = [v65 count];
      if (v29 != (v14 - [v60 count]))
      {
        obja = objc_opt_new();
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        resources = [v4 resources];
        v31 = [resources countByEnumeratingWithState:&v70 objects:v85 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v71;
          do
          {
            for (j = 0; j != v32; j = j + 1)
            {
              if (*v71 != v33)
              {
                objc_enumerationMutation(resources);
              }

              v35 = *(*(&v70 + 1) + 8 * j);
              v36 = objc_autoreleasePoolPush();
              if ([v35 type] == 3)
              {
                getDictionary4 = [v35 getDictionary];
                v38 = [getDictionary4 objectForKey:@"MOMediaPlayMetaDataKeyPlayerMediaTypeKey"];

                if (([v38 isEqualToString:MOMediaPlayMetaDataKeyPlayerMediaTypeThirdPartyMedia[0]] & 1) == 0 && (objc_msgSend(v38, "isEqualToString:", MOMediaPlayMetaDataKeyPlayerMediaTypeThirdPartyMediaAlbum[0]) & 1) == 0 && (objc_msgSend(v38, "isEqualToString:", MOMediaPlayMetaDataKeyPlayerMediaTypeThirdPartyMediaArtist) & 1) == 0)
                {
                  [obja addObject:v35];
                }
              }

              else
              {
                [obja addObject:v35];
              }

              objc_autoreleasePoolPop(v36);
            }

            v32 = [resources countByEnumeratingWithState:&v70 objects:v85 count:16];
          }

          while (v32);
        }

        [obja addObjectsFromArray:v60];
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        allKeys = [v65 allKeys];
        v39 = [allKeys countByEnumeratingWithState:&v66 objects:v84 count:16];
        if (v39)
        {
          v40 = v39;
          v41 = *v67;
          do
          {
            for (k = 0; k != v40; k = k + 1)
            {
              if (*v67 != v41)
              {
                objc_enumerationMutation(allKeys);
              }

              v43 = *(*(&v66 + 1) + 8 * k);
              v44 = objc_autoreleasePoolPush();
              v45 = [v65 objectForKeyedSubscript:v43];
              v46 = [v45 objectAtIndexedSubscript:0];

              v47 = [v65 objectForKeyedSubscript:v43];
              v48 = [v47 count];

              if (v48 == 1)
              {
                [obja addObject:v46];
              }

              else
              {
                v49 = [NSMutableDictionary alloc];
                getDictionary5 = [v46 getDictionary];
                v51 = [v49 initWithDictionary:getDictionary5];

                [v51 setValue:MOMediaPlayMetaDataKeyPlayerMediaTypeThirdPartyMediaAlbum[0] forKey:@"MOMediaPlayMetaDataKeyPlayerMediaTypeKey"];
                v52 = [MOResource alloc];
                name = [v46 name];
                v54 = -[MOResource initWithName:type:dict:value:](v52, "initWithName:type:dict:value:", name, [v46 type], v51, 0.0);

                sourceEventIdentifier = [v46 sourceEventIdentifier];
                [(MOResource *)v54 setSourceEventIdentifier:sourceEventIdentifier];

                -[MOResource setSourceEventAccessType:](v54, "setSourceEventAccessType:", [v46 sourceEventAccessType]);
                [v46 priorityScore];
                [(MOResource *)v54 setPriorityScore:?];
                [obja addObject:v54];
                v56 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
                if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
                {
                  name2 = [v46 name];
                  type = [v46 type];
                  *buf = 138412802;
                  v79 = v43;
                  v80 = 2112;
                  v81 = name2;
                  v82 = 2048;
                  v83 = type;
                  _os_log_debug_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEBUG, "Compress assets by album, %@, name , %@, type, %lu", buf, 0x20u);
                }
              }

              objc_autoreleasePoolPop(v44);
            }

            v40 = [allKeys countByEnumeratingWithState:&v66 objects:v84 count:16];
          }

          while (v40);
        }

        v4 = v59;
        [v59 setResources:obja];
      }
    }
  }
}

- (void)removeDuplicateAssetsPerBundleTypeForThirdParty:(id)party bundleSuperType:(unint64_t)type titleSet:(id)set isRecommendTab:(BOOL)tab isMediaOnRepeat:(BOOL)repeat
{
  repeatCopy = repeat;
  partyCopy = party;
  setCopy = set;
  if ([partyCopy count])
  {
    v55 = setCopy;
    v71[0] = _NSConcreteStackBlock;
    v71[1] = 3221225472;
    v71[2] = __130__MOSummarizationManager_removeDuplicateAssetsPerBundleTypeForThirdParty_bundleSuperType_titleSet_isRecommendTab_isMediaOnRepeat___block_invoke;
    v71[3] = &__block_descriptor_42_e40_B24__0__MOEventBundle_8__NSDictionary_16l;
    v71[4] = type;
    tabCopy = tab;
    v56 = repeatCopy;
    v73 = repeatCopy;
    v47 = [NSPredicate predicateWithBlock:v71];
    v48 = partyCopy;
    [partyCopy filteredArrayUsingPredicate:?];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    obj = v70 = 0u;
    v13 = [obj countByEnumeratingWithState:&v67 objects:v78 count:16];
    if (!v13)
    {
      goto LABEL_55;
    }

    v14 = v13;
    v15 = *v68;
    typeCopy = type;
    v49 = *v68;
    while (1)
    {
      v16 = 0;
      v50 = v14;
      do
      {
        if (*v68 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v67 + 1) + 8 * v16);
        resources = [v17 resources];
        if (resources)
        {
          v19 = resources;
          resources2 = [v17 resources];
          v21 = [resources2 count];

          if (v21)
          {
            v52 = v16;
            resources3 = [v17 resources];
            v23 = [(MOSummarizationManager *)self _sortResourcesByPriorityScore:resources3];

            v53 = objc_alloc_init(NSMutableArray);
            v63 = 0u;
            v64 = 0u;
            v65 = 0u;
            v66 = 0u;
            v24 = v23;
            v25 = [v24 countByEnumeratingWithState:&v63 objects:v77 count:16];
            if (v25)
            {
              v26 = v25;
              v54 = 0;
              v27 = *v64;
              while (1)
              {
                for (i = 0; i != v26; i = i + 1)
                {
                  if (*v64 != v27)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v29 = *(*(&v63 + 1) + 8 * i);
                  v30 = objc_autoreleasePoolPush();
                  type = [v29 type];
                  if ([v17 bundleSuperType] == type && type == 3)
                  {
                    getDictionary = [v29 getDictionary];
                    v33 = [getDictionary objectForKey:@"MOMediaPlayMetaDataKeyPlayerMediaTypeKey"];

                    if (([v33 isEqualToString:MOMediaPlayMetaDataKeyPlayerMediaTypeThirdPartyMedia[0]] & 1) == 0 && !objc_msgSend(v33, "isEqualToString:", MOMediaPlayMetaDataKeyPlayerMediaTypeThirdPartyMediaAlbum[0]))
                    {
                      goto LABEL_28;
                    }

                    getDictionary2 = [v29 getDictionary];
                    v35 = [(MOSummarizationManager *)self _getThirdPartyTitleKey:getDictionary2];

                    if (v56)
                    {
                      if (v35)
                      {
                        type = typeCopy;
                        if (([v55 containsObject:v35] & 1) == 0)
                        {
                          [v55 addObject:v35];
                          ++v54;
                        }

LABEL_27:

LABEL_28:
                        goto LABEL_29;
                      }
                    }

                    else if (v35 && ([v55 containsObject:v35] & 1) == 0)
                    {
                      [v55 addObject:v35];
                      ++v54;
                    }

                    else
                    {
                      [v53 addObject:v29];
                    }

                    type = typeCopy;
                    goto LABEL_27;
                  }

LABEL_29:
                  objc_autoreleasePoolPop(v30);
                }

                v26 = [v24 countByEnumeratingWithState:&v63 objects:v77 count:16];
                if (!v26)
                {
                  v36 = v54 == 0;
                  goto LABEL_33;
                }
              }
            }

            v36 = 1;
LABEL_33:

            if ([v53 count])
            {
              v37 = objc_alloc_init(NSMutableArray);
              v59 = 0u;
              v60 = 0u;
              v61 = 0u;
              v62 = 0u;
              v38 = v24;
              v39 = [v38 countByEnumeratingWithState:&v59 objects:v76 count:16];
              if (v39)
              {
                v40 = v39;
                v41 = *v60;
                do
                {
                  for (j = 0; j != v40; j = j + 1)
                  {
                    if (*v60 != v41)
                    {
                      objc_enumerationMutation(v38);
                    }

                    v43 = *(*(&v59 + 1) + 8 * j);
                    if ([v53 containsObject:v43])
                    {
                      v44 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
                      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412290;
                        v75 = v43;
                        _os_log_debug_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, "Media resource is removed, %@", buf, 0xCu);
                      }
                    }

                    else
                    {
                      [v37 addObject:v43];
                    }
                  }

                  v40 = [v38 countByEnumeratingWithState:&v59 objects:v76 count:16];
                }

                while (v40);
              }

              if (v36)
              {
                [v17 setConcurrentMediaAction:0];
              }

              [v17 setResources:v37];
              type = typeCopy;
              if ([v17 bundleSuperType] == 4)
              {
                resources4 = [v17 resources];
                v46 = [resources4 count];

                if (!v46)
                {
                  [v17 setIsAggregatedAndSuppressed:1];
                }
              }
            }

            v15 = v49;
            v14 = v50;
            v16 = v52;
          }
        }

        v16 = v16 + 1;
      }

      while (v16 != v14);
      v14 = [obj countByEnumeratingWithState:&v67 objects:v78 count:16];
      if (!v14)
      {
LABEL_55:

        partyCopy = v48;
        setCopy = v55;
        break;
      }
    }
  }
}

uint64_t __130__MOSummarizationManager_removeDuplicateAssetsPerBundleTypeForThirdParty_bundleSuperType_titleSet_isRecommendTab_isMediaOnRepeat___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 bundleSuperType] != *(a1 + 32))
  {
    goto LABEL_15;
  }

  if ([v3 bundleSuperType] == 4)
  {
    goto LABEL_15;
  }

  v4 = [v3 rankingDictionary];
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = v4;
  v6 = [v3 rankingDictionary];
  v7 = [v6 objectForKeyedSubscript:@"visibilityCategoryForUI"];

  if (!v7)
  {
LABEL_15:
    if (*(a1 + 40) == 1 && [v3 bundleSuperType] == 4 && (objc_msgSend(v3, "isAggregatedAndSuppressed") & 1) == 0)
    {
      if (*(a1 + 41) != 1)
      {
        goto LABEL_16;
      }

      if ([v3 bundleSubType] == 409)
      {
        goto LABEL_24;
      }

      if ((*(a1 + 41) & 1) == 0)
      {
LABEL_16:
        if ([v3 bundleSubType] == 410)
        {
          goto LABEL_24;
        }
      }
    }

    if ((*(a1 + 40) & 1) == 0 && [v3 bundleSuperType] == 4 && (objc_msgSend(v3, "isAggregatedAndSuppressed") & 1) == 0)
    {
      if (*(a1 + 41) != 1)
      {
        goto LABEL_23;
      }

      if ([v3 bundleSubType] == 407)
      {
        goto LABEL_24;
      }

      if ((*(a1 + 41) & 1) == 0)
      {
LABEL_23:
        if ([v3 bundleSubType] == 408)
        {
          goto LABEL_24;
        }
      }
    }

LABEL_25:
    v12 = 0;
    goto LABEL_26;
  }

  v8 = [v3 rankingDictionary];
  v9 = [v8 objectForKeyedSubscript:@"visibilityCategoryForUI"];
  v10 = [v9 unsignedIntValue];

  v11 = *(a1 + 40);
  if ((v11 != 1 || v10 - 1 >= 2) && ((v11 & 1) != 0 || (v10 & 0xFFFFFFFD) != 1))
  {
    goto LABEL_25;
  }

LABEL_24:
  v12 = 1;
LABEL_26:

  return v12;
}

- (void)removeDuplicateAssetsFromMediaBundle:(id)bundle
{
  bundleCopy = bundle;
  if ([bundleCopy count])
  {
    v4 = [NSPredicate predicateWithBlock:&__block_literal_global_435];
    v5 = [bundleCopy filteredArrayUsingPredicate:v4];
    [(MOSummarizationManager *)self _dedupAssetForMediaBundle:bundleCopy nonPlayedMediaBudnles:v5 isRecommendTab:1];
    v6 = [NSPredicate predicateWithBlock:&__block_literal_global_437];
    v7 = [bundleCopy filteredArrayUsingPredicate:v6];
    [(MOSummarizationManager *)self _dedupAssetForMediaBundle:bundleCopy nonPlayedMediaBudnles:v7 isRecommendTab:0];
    v8 = [NSPredicate predicateWithBlock:&__block_literal_global_439];
    v9 = [bundleCopy filteredArrayUsingPredicate:v8];
    [(MOSummarizationManager *)self dedupAssetForMediaBundleThirdParty:bundleCopy nonPlayedMediaBudnles:v9 isRecommendTab:1];
    v10 = [NSPredicate predicateWithBlock:&__block_literal_global_441];
    v11 = [bundleCopy filteredArrayUsingPredicate:v10];
    [(MOSummarizationManager *)self dedupAssetForMediaBundleThirdParty:bundleCopy nonPlayedMediaBudnles:v11 isRecommendTab:0];
  }
}

BOOL __63__MOSummarizationManager_removeDuplicateAssetsFromMediaBundle___block_invoke(id a1, MOEventBundle *a2, NSDictionary *a3)
{
  v3 = a2;
  if ([(MOEventBundle *)v3 bundleSuperType]== 4)
  {
    goto LABEL_8;
  }

  v4 = [(MOEventBundle *)v3 rankingDictionary];
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v4;
  v6 = [(MOEventBundle *)v3 rankingDictionary];
  v7 = [v6 objectForKeyedSubscript:@"visibilityCategoryForUI"];

  if (v7)
  {
    v8 = [(MOEventBundle *)v3 rankingDictionary];
    v9 = [v8 objectForKeyedSubscript:@"visibilityCategoryForUI"];
    v10 = [v9 unsignedIntValue];

    if (v10 - 4 >= 0xFFFFFFFD)
    {
LABEL_11:
      v11 = 1;
      goto LABEL_10;
    }
  }

  else
  {
LABEL_8:
    if ([(MOEventBundle *)v3 bundleSuperType]== 4 && [(MOEventBundle *)v3 bundleSubType]== 404 && ![(MOEventBundle *)v3 isAggregatedAndSuppressed])
    {
      goto LABEL_11;
    }
  }

  v11 = 0;
LABEL_10:

  return v11;
}

BOOL __63__MOSummarizationManager_removeDuplicateAssetsFromMediaBundle___block_invoke_2(id a1, MOEventBundle *a2, NSDictionary *a3)
{
  v3 = a2;
  if ([(MOEventBundle *)v3 bundleSuperType]== 4)
  {
    goto LABEL_8;
  }

  v4 = [(MOEventBundle *)v3 rankingDictionary];
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v4;
  v6 = [(MOEventBundle *)v3 rankingDictionary];
  v7 = [v6 objectForKeyedSubscript:@"visibilityCategoryForUI"];

  if (v7)
  {
    v8 = [(MOEventBundle *)v3 rankingDictionary];
    v9 = [v8 objectForKeyedSubscript:@"visibilityCategoryForUI"];
    v10 = [v9 unsignedIntValue];

    if ((v10 & 0xFFFFFFFD) == 1)
    {
LABEL_11:
      v11 = 1;
      goto LABEL_10;
    }
  }

  else
  {
LABEL_8:
    if ([(MOEventBundle *)v3 bundleSuperType]== 4 && [(MOEventBundle *)v3 bundleSubType]== 401 && ![(MOEventBundle *)v3 isAggregatedAndSuppressed])
    {
      goto LABEL_11;
    }
  }

  v11 = 0;
LABEL_10:

  return v11;
}

BOOL __63__MOSummarizationManager_removeDuplicateAssetsFromMediaBundle___block_invoke_3(id a1, MOEventBundle *a2, NSDictionary *a3)
{
  v3 = a2;
  if ([(MOEventBundle *)v3 bundleSuperType]== 4)
  {
    goto LABEL_8;
  }

  v4 = [(MOEventBundle *)v3 rankingDictionary];
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v4;
  v6 = [(MOEventBundle *)v3 rankingDictionary];
  v7 = [v6 objectForKeyedSubscript:@"visibilityCategoryForUI"];

  if (v7)
  {
    v8 = [(MOEventBundle *)v3 rankingDictionary];
    v9 = [v8 objectForKeyedSubscript:@"visibilityCategoryForUI"];
    v10 = [v9 unsignedIntValue];

    if (v10 - 4 >= 0xFFFFFFFD)
    {
LABEL_11:
      v11 = 1;
      goto LABEL_10;
    }
  }

  else
  {
LABEL_8:
    if ([(MOEventBundle *)v3 bundleSuperType]== 4 && [(MOEventBundle *)v3 bundleSubType]== 409 && ![(MOEventBundle *)v3 isAggregatedAndSuppressed])
    {
      goto LABEL_11;
    }
  }

  v11 = 0;
LABEL_10:

  return v11;
}

BOOL __63__MOSummarizationManager_removeDuplicateAssetsFromMediaBundle___block_invoke_4(id a1, MOEventBundle *a2, NSDictionary *a3)
{
  v3 = a2;
  if ([(MOEventBundle *)v3 bundleSuperType]== 4)
  {
    goto LABEL_8;
  }

  v4 = [(MOEventBundle *)v3 rankingDictionary];
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v4;
  v6 = [(MOEventBundle *)v3 rankingDictionary];
  v7 = [v6 objectForKeyedSubscript:@"visibilityCategoryForUI"];

  if (v7)
  {
    v8 = [(MOEventBundle *)v3 rankingDictionary];
    v9 = [v8 objectForKeyedSubscript:@"visibilityCategoryForUI"];
    v10 = [v9 unsignedIntValue];

    if ((v10 & 0xFFFFFFFD) == 1)
    {
LABEL_11:
      v11 = 1;
      goto LABEL_10;
    }
  }

  else
  {
LABEL_8:
    if ([(MOEventBundle *)v3 bundleSuperType]== 4 && [(MOEventBundle *)v3 bundleSubType]== 407 && ![(MOEventBundle *)v3 isAggregatedAndSuppressed])
    {
      goto LABEL_11;
    }
  }

  v11 = 0;
LABEL_10:

  return v11;
}

- (void)_dedupAssetForMediaBundle:(id)bundle nonPlayedMediaBudnles:(id)budnles isRecommendTab:(BOOL)tab
{
  tabCopy = tab;
  bundleCopy = bundle;
  budnlesCopy = budnles;
  if ([budnlesCopy count])
  {
    v62 = tabCopy;
    v61 = bundleCopy;
    v9 = +[NSCalendar currentCalendar];
    v10 = objc_alloc_init(NSDateFormatter);
    v59 = v9;
    [v10 setCalendar:v9];
    v71 = v10;
    [v10 setDateFormat:@"yyyy-MM-dd"];
    v72 = objc_alloc_init(NSMutableSet);
    v69 = objc_alloc_init(NSMutableSet);
    v70 = objc_alloc_init(NSMutableDictionary);
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v60 = budnlesCopy;
    obj = budnlesCopy;
    v11 = [obj countByEnumeratingWithState:&v82 objects:v88 count:16];
    if (!v11)
    {
      goto LABEL_41;
    }

    v12 = v11;
    v13 = *v83;
    v63 = *v83;
    do
    {
      v14 = 0;
      v64 = v12;
      do
      {
        if (*v83 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v82 + 1) + 8 * v14);
        v16 = objc_autoreleasePoolPush();
        resources = [v15 resources];
        if (resources)
        {
          v18 = resources;
          resources2 = [v15 resources];
          v20 = [resources2 count];

          if (v20)
          {
            v67 = v16;
            v68 = v14;
            resources3 = [v15 resources];
            v22 = [(MOSummarizationManager *)self _sortResourcesByPriorityScore:resources3];

            v80 = 0u;
            v81 = 0u;
            v78 = 0u;
            v79 = 0u;
            v73 = v22;
            v23 = [v73 countByEnumeratingWithState:&v78 objects:v87 count:16];
            if (!v23)
            {
              goto LABEL_38;
            }

            v24 = v23;
            v25 = *v79;
            while (1)
            {
              for (i = 0; i != v24; i = i + 1)
              {
                if (*v79 != v25)
                {
                  objc_enumerationMutation(v73);
                }

                v27 = *(*(&v78 + 1) + 8 * i);
                v28 = objc_autoreleasePoolPush();
                type = [v27 type];
                if ([v15 bundleSuperType] != 4 && type == 3)
                {
                  getDictionary = [v27 getDictionary];
                  v31 = [getDictionary objectForKey:@"MOMediaPlayMetaDataKeyPlayerMediaTypeKey"];

                  if (([v31 isEqualToString:MOMediaPlayMetaDataKeyPlayerMediaTypeSongAlbum[0]] & 1) != 0 || objc_msgSend(v31, "isEqualToString:", MOMediaPlayMetaDataKeyPlayerMediaTypeSong[0]))
                  {
                    getDictionary2 = [v27 getDictionary];
                    v33 = [getDictionary2 objectForKey:@"MOMediaPlayMetaDataKeyPlayerAlbumName"];

                    if (!v33)
                    {
                      goto LABEL_34;
                    }

                    v34 = v72;
                  }

                  else
                  {
                    if (([v31 isEqualToString:MOMediaPlayMetaDataKeyPlayerMediaTypePodcastArtist[0]] & 1) == 0 && !objc_msgSend(v31, "isEqualToString:", MOMediaPlayMetaDataKeyPlayerMediaTypePodcastEpisode[0]))
                    {
                      goto LABEL_35;
                    }

                    getDictionary3 = [v27 getDictionary];
                    v33 = [getDictionary3 objectForKey:@"MOMediaPlayMetaDataKeyPlayerArtist"];

                    if (!v33)
                    {
                      goto LABEL_34;
                    }

                    v34 = v69;
                  }

                  if (([v34 containsObject:v33] & 1) == 0)
                  {
                    [v34 addObject:v33];
                  }

LABEL_34:

LABEL_35:
                  goto LABEL_36;
                }

                if ([v15 bundleSuperType] == 4 && (objc_msgSend(v15, "bundleSubType") == 401 || objc_msgSend(v15, "bundleSubType") == 404))
                {
                  getDictionary4 = [v27 getDictionary];
                  v31 = [getDictionary4 objectForKey:@"MOMediaPlayMetaDataKeyPlayerAlbumName"];

                  if (v31)
                  {
                    startDate = [v15 startDate];
                    v33 = [v71 stringFromDate:startDate];

                    v37 = [v70 objectForKey:v33];

                    if (v37)
                    {
                      v38 = [v70 objectForKey:v33];
                    }

                    else
                    {
                      v38 = objc_alloc_init(NSMutableSet);
                    }

                    v40 = v38;
                    [v38 addObject:v31];
                    [v70 setObject:v40 forKey:v33];

                    goto LABEL_34;
                  }

                  goto LABEL_35;
                }

LABEL_36:
                objc_autoreleasePoolPop(v28);
              }

              v24 = [v73 countByEnumeratingWithState:&v78 objects:v87 count:16];
              if (!v24)
              {
LABEL_38:

                v13 = v63;
                v12 = v64;
                v16 = v67;
                v14 = v68;
                break;
              }
            }
          }
        }

        objc_autoreleasePoolPop(v16);
        v14 = v14 + 1;
      }

      while (v14 != v12);
      v12 = [obj countByEnumeratingWithState:&v82 objects:v88 count:16];
    }

    while (v12);
LABEL_41:

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v41 = v61;
    v42 = [v41 countByEnumeratingWithState:&v74 objects:v86 count:16];
    v43 = v62;
    if (!v42)
    {
      goto LABEL_67;
    }

    v44 = v42;
    v45 = *v75;
LABEL_43:
    v46 = 0;
    while (1)
    {
      if (*v75 != v45)
      {
        objc_enumerationMutation(v41);
      }

      v47 = *(*(&v74 + 1) + 8 * v46);
      bundleSuperType = [v47 bundleSuperType];
      if (v43)
      {
        if (bundleSuperType != 4 || [v47 summarizationGranularity] != 2)
        {
          goto LABEL_65;
        }
      }

      else if (bundleSuperType != 4 || [v47 summarizationGranularity] != 1)
      {
        goto LABEL_65;
      }

      if (([v47 isAggregatedAndSuppressed] & 1) == 0)
      {
        break;
      }

LABEL_65:
      if (v44 == ++v46)
      {
        v44 = [v41 countByEnumeratingWithState:&v74 objects:v86 count:16];
        if (!v44)
        {
LABEL_67:

          budnlesCopy = v60;
          bundleCopy = v61;
          goto LABEL_68;
        }

        goto LABEL_43;
      }
    }

    startDate2 = [v47 startDate];
    v50 = [v71 stringFromDate:startDate2];

    if ([v47 bundleSubType] == 402)
    {
      resources4 = [v47 resources];
      selfCopy3 = self;
      v53 = resources4;
      v54 = v72;
      v55 = v70;
      v56 = v50;
      v57 = @"MOMediaPlayMetaDataKeyPlayerAlbumName";
    }

    else
    {
      if ([v47 bundleSubType] == 403)
      {
        resources4 = [v47 resources];
        selfCopy3 = self;
        v53 = resources4;
        v54 = v69;
        v55 = 0;
      }

      else
      {
        if ([v47 bundleSubType] != 405)
        {
LABEL_64:

          v43 = v62;
          goto LABEL_65;
        }

        resources4 = [v47 resources];
        selfCopy3 = self;
        v53 = resources4;
        v54 = v69;
        v55 = v70;
      }

      v56 = v50;
      v57 = @"MOMediaPlayMetaDataKeyPlayerArtist";
    }

    v58 = [(MOSummarizationManager *)selfCopy3 _removeDuplicateFromResource:v53 nonMediaKeySet:v54 mediaOnRepeatDict:v55 eventBundleDayKey:v56 keyName:v57];

    [v47 setResources:v58];
    if (!v58 || ![v58 count])
    {
      [v47 setIsAggregatedAndSuppressed:1];
    }

    goto LABEL_64;
  }

LABEL_68:
}

- (void)dedupAssetForMediaBundleThirdParty:(id)party nonPlayedMediaBudnles:(id)budnles isRecommendTab:(BOOL)tab
{
  tabCopy = tab;
  partyCopy = party;
  budnlesCopy = budnles;
  if ([budnlesCopy count])
  {
    v53 = partyCopy;
    v8 = +[NSCalendar currentCalendar];
    v9 = objc_alloc_init(NSDateFormatter);
    v51 = v8;
    [v9 setCalendar:v8];
    v59 = v9;
    [v9 setDateFormat:@"yyyy-MM-dd"];
    v10 = objc_alloc_init(NSMutableSet);
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v52 = budnlesCopy;
    obj = budnlesCopy;
    v11 = [obj countByEnumeratingWithState:&v70 objects:v76 count:16];
    if (!v11)
    {
      goto LABEL_38;
    }

    v12 = v11;
    v13 = *v71;
    v54 = *v71;
    do
    {
      v14 = 0;
      v55 = v12;
      do
      {
        if (*v71 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v70 + 1) + 8 * v14);
        v16 = objc_autoreleasePoolPush();
        resources = [v15 resources];
        if (resources)
        {
          v18 = resources;
          resources2 = [v15 resources];
          v20 = [resources2 count];

          if (v20)
          {
            v57 = v16;
            v58 = v14;
            v21 = v10;
            resources3 = [v15 resources];
            v23 = [(MOSummarizationManager *)self _sortResourcesByPriorityScore:resources3];

            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            v24 = v23;
            v25 = [v24 countByEnumeratingWithState:&v66 objects:v75 count:16];
            if (!v25)
            {
              goto LABEL_35;
            }

            v26 = v25;
            v27 = *v67;
            while (1)
            {
              for (i = 0; i != v26; i = i + 1)
              {
                if (*v67 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                v29 = *(*(&v66 + 1) + 8 * i);
                v30 = objc_autoreleasePoolPush();
                type = [v29 type];
                if ([v15 bundleSuperType] != 4 && type == 3)
                {
                  getDictionary = [v29 getDictionary];
                  v33 = [getDictionary objectForKey:@"MOMediaPlayMetaDataKeyPlayerMediaTypeKey"];

                  if (([v33 isEqualToString:MOMediaPlayMetaDataKeyPlayerMediaTypeThirdPartyMedia[0]] & 1) != 0 || (objc_msgSend(v33, "isEqualToString:", MOMediaPlayMetaDataKeyPlayerMediaTypeThirdPartyMediaAlbum[0]) & 1) != 0 || objc_msgSend(v33, "isEqualToString:", MOMediaPlayMetaDataKeyPlayerMediaTypeThirdPartyMediaArtist))
                  {
                    getDictionary2 = [v29 getDictionary];
                    v35 = [(MOSummarizationManager *)self _getThirdPartyTitleKey:getDictionary2];

                    if (v35 && ([v21 containsObject:v35] & 1) == 0)
                    {
                      [v21 addObject:v35];
                    }
                  }

LABEL_23:

                  goto LABEL_33;
                }

                if ([v15 bundleSuperType] == 4)
                {
                  bundleSubType = [v15 bundleSubType];
                  if (tabCopy)
                  {
                    if (bundleSubType == 409)
                    {
                      getDictionary3 = [v29 getDictionary];
                      v33 = [(MOSummarizationManager *)self _getThirdPartyTitleKey:getDictionary3];
LABEL_30:

                      if (v33 && ([v21 containsObject:v33] & 1) == 0)
                      {
                        [v21 addObject:v33];
                      }

                      goto LABEL_23;
                    }
                  }

                  else if (bundleSubType == 407)
                  {
                    startDate = [v15 startDate];
                    getDictionary3 = [v59 stringFromDate:startDate];

                    getDictionary4 = [v29 getDictionary];
                    v33 = [(MOSummarizationManager *)self _getThirdPartyTitleKey:getDictionary4 dayKey:getDictionary3 isRecommendTab:0];

                    goto LABEL_30;
                  }
                }

LABEL_33:
                objc_autoreleasePoolPop(v30);
              }

              v26 = [v24 countByEnumeratingWithState:&v66 objects:v75 count:16];
              if (!v26)
              {
LABEL_35:

                v10 = v21;
                v13 = v54;
                v12 = v55;
                v16 = v57;
                v14 = v58;
                break;
              }
            }
          }
        }

        objc_autoreleasePoolPop(v16);
        v14 = v14 + 1;
      }

      while (v14 != v12);
      v12 = [obj countByEnumeratingWithState:&v70 objects:v76 count:16];
    }

    while (v12);
LABEL_38:

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    partyCopy = v53;
    v40 = v53;
    v41 = [v40 countByEnumeratingWithState:&v62 objects:v74 count:16];
    if (!v41)
    {
      goto LABEL_62;
    }

    v42 = v41;
    v43 = *v63;
LABEL_40:
    v44 = 0;
    while (1)
    {
      if (*v63 != v43)
      {
        objc_enumerationMutation(v40);
      }

      v45 = *(*(&v62 + 1) + 8 * v44);
      bundleSuperType = [v45 bundleSuperType];
      if (tabCopy)
      {
        if (bundleSuperType == 4 && [v45 summarizationGranularity] == 2 && (objc_msgSend(v45, "isAggregatedAndSuppressed") & 1) == 0 && objc_msgSend(v45, "bundleSubType") == 410)
        {
          goto LABEL_53;
        }
      }

      else if (bundleSuperType == 4 && [v45 summarizationGranularity] == 1 && (objc_msgSend(v45, "isAggregatedAndSuppressed") & 1) == 0 && objc_msgSend(v45, "bundleSubType") == 408)
      {
LABEL_53:
        startDate2 = [v45 startDate];
        v48 = [v59 stringFromDate:startDate2];

        if ([v45 bundleSubType] == 408 || objc_msgSend(v45, "bundleSubType") == 410)
        {
          resources4 = [v45 resources];
          v50 = [(MOSummarizationManager *)self _removeDuplicateFromResourceThridParty:resources4 mediaKeySet:v10 dayKey:v48 isRecommendTab:tabCopy];

          [v45 setResources:v50];
          if (!v50 || ![v50 count])
          {
            [v45 setIsAggregatedAndSuppressed:1];
          }
        }
      }

      if (v42 == ++v44)
      {
        v42 = [v40 countByEnumeratingWithState:&v62 objects:v74 count:16];
        if (!v42)
        {
LABEL_62:

          budnlesCopy = v52;
          break;
        }

        goto LABEL_40;
      }
    }
  }
}

int64_t __56__MOSummarizationManager__sortResourcesByPriorityScore___block_invoke(id a1, MOResource *a2, MOResource *a3)
{
  v4 = a2;
  v5 = a3;
  [(MOResource *)v4 priorityScore];
  v7 = v6;
  [(MOResource *)v5 priorityScore];
  if (v7 >= v8)
  {
    [(MOResource *)v4 priorityScore];
    v11 = v10;
    [(MOResource *)v5 priorityScore];
    if (v11 <= v12)
    {
      v13 = [(MOResource *)v4 identifier];
      v14 = [(MOResource *)v5 identifier];
      v9 = [v13 compare:v14];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (id)_getThirdPartyKeyByAlbumArtist:(id)artist albumOrArtist:(id)orArtist
{
  orArtistCopy = orArtist;
  v6 = [artist objectForKey:@"MOMediaPlayMetaDataKeyPlayerBundleID"];
  v7 = v6;
  v8 = 0;
  if (orArtistCopy && v6)
  {
    v8 = [NSString stringWithFormat:@"%@_%@", orArtistCopy, v6];
  }

  return v8;
}

- (id)_getThirdPartyTitleKey:(id)key
{
  keyCopy = key;
  v4 = [keyCopy objectForKey:@"MOMediaPlayMetaDataKeyPlayerTitle"];
  v5 = [keyCopy objectForKey:@"MOMediaPlayMetaDataKeyPlayerBundleID"];

  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [NSString stringWithFormat:@"%@_%@", v4, v5];
  }

  return v7;
}

- (id)_getThirdPartyTitleKey:(id)key dayKey:(id)dayKey isRecommendTab:(BOOL)tab
{
  tabCopy = tab;
  dayKeyCopy = dayKey;
  keyCopy = key;
  v9 = [keyCopy objectForKey:@"MOMediaPlayMetaDataKeyPlayerTitle"];
  v10 = [keyCopy objectForKey:@"MOMediaPlayMetaDataKeyPlayerBundleID"];

  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    if (tabCopy)
    {
      [NSString stringWithFormat:@"%@_%@", v9, v10, v14];
    }

    else
    {
      [NSString stringWithFormat:@"%@_%@_%@", dayKeyCopy, v9, v10];
    }
    v12 = ;
  }

  return v12;
}

- (id)_removeDuplicateFromResource:(id)resource nonMediaKeySet:(id)set mediaOnRepeatDict:(id)dict eventBundleDayKey:(id)key keyName:(id)name
{
  resourceCopy = resource;
  setCopy = set;
  dictCopy = dict;
  keyCopy = key;
  nameCopy = name;
  v28 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = resourceCopy;
  v12 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v35;
    do
    {
      v15 = 0;
      do
      {
        if (*v35 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v34 + 1) + 8 * v15);
        v17 = objc_autoreleasePoolPush();
        getDictionary = [v16 getDictionary];
        v19 = [getDictionary objectForKey:nameCopy];

        getDictionary2 = [v16 getDictionary];
        v21 = [getDictionary2 objectForKey:@"MOMediaPlayMetaDataKeyPlayerTitle"];

        if (!v19)
        {
          goto LABEL_12;
        }

        v22 = [setCopy containsObject:v19];
        v23 = v22;
        if (dictCopy)
        {
          if ((v22 & 1) == 0)
          {
            v24 = [dictCopy objectForKey:keyCopy];

            if (v24)
            {
              v25 = [dictCopy objectForKey:keyCopy];
              v23 = [v25 containsObject:v19];
            }
          }
        }

        if ((v23 & 1) == 0)
        {
          [v28 addObject:v16];
        }

        else
        {
LABEL_12:
          v26 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            v39 = nameCopy;
            v40 = 2112;
            v41 = v19;
            v42 = 2112;
            v43 = v21;
            _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "Summarization: Media bundle remove duplicate asset with key, %@, value, %@, title, %@", buf, 0x20u);
          }
        }

        objc_autoreleasePoolPop(v17);
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v13);
  }

  return v28;
}

- (id)_removeDuplicateFromResourceThridParty:(id)party mediaKeySet:(id)set dayKey:(id)key isRecommendTab:(BOOL)tab
{
  tabCopy = tab;
  partyCopy = party;
  setCopy = set;
  keyCopy = key;
  v27 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = partyCopy;
  v10 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v10)
  {
    v12 = v10;
    v30 = *v34;
    v13 = @"MOMediaPlayMetaDataKeyPlayerTitle";
    *&v11 = 138412802;
    v26 = v11;
    do
    {
      v14 = 0;
      do
      {
        if (*v34 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v33 + 1) + 8 * v14);
        v16 = objc_autoreleasePoolPush();
        getDictionary = [v15 getDictionary];
        v18 = [(MOSummarizationManager *)self _getThirdPartyTitleKey:getDictionary];

        getDictionary2 = [v15 getDictionary];
        v20 = [getDictionary2 objectForKey:v13];

        if (tabCopy)
        {
          v21 = v18;
        }

        else
        {
          [v15 getDictionary];
          v23 = v22 = v13;
          v21 = [(MOSummarizationManager *)self _getThirdPartyTitleKey:v23 dayKey:keyCopy isRecommendTab:0];

          v13 = v22;
        }

        if ([setCopy containsObject:{v18, v26}] & 1) != 0 || (objc_msgSend(setCopy, "containsObject:", v21))
        {
          v24 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            *buf = v26;
            v38 = keyCopy;
            v39 = 2112;
            v40 = v18;
            v41 = 2112;
            v42 = v20;
            _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "Summarization: Media bundle remove duplicate asset with day, %@, key for , %@, title, %@", buf, 0x20u);
          }
        }

        else
        {
          [v27 addObject:v15];
        }

        objc_autoreleasePoolPop(v16);
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v12);
  }

  return v27;
}

- (unint64_t)supressCoarseGranularityPropertyOfEventBundles:(id)bundles primaryBundles:(id)primaryBundles bundleMapping:(id)mapping
{
  bundlesCopy = bundles;
  primaryBundlesCopy = primaryBundles;
  mappingCopy = mapping;
  if ([bundlesCopy count] && objc_msgSend(primaryBundlesCopy, "count"))
  {
    v11 = [[MOObjectZipper alloc] initWithObjects:bundlesCopy others:primaryBundlesCopy comparator:&__block_literal_global_460];
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    do
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = __102__MOSummarizationManager_supressCoarseGranularityPropertyOfEventBundles_primaryBundles_bundleMapping___block_invoke_2;
      v15[3] = &unk_10033C920;
      v15[4] = self;
      v16 = mappingCopy;
      v17 = &v18;
      v12 = [(MOObjectZipper *)v11 nextObjectPairWithHandler:v15];
    }

    while ((v12 & 1) != 0);
    v13 = v19[3];
    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

int64_t __102__MOSummarizationManager_supressCoarseGranularityPropertyOfEventBundles_primaryBundles_bundleMapping___block_invoke(id a1, MOEventBundle *a2, MOEventBundle *a3)
{
  v4 = a3;
  v5 = [(MOEventBundle *)a2 endDate];
  v6 = [(MOEventBundle *)v4 endDate];

  LODWORD(v4) = [v5 isBeforeDate:v6];
  if (v4)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

void __102__MOSummarizationManager_supressCoarseGranularityPropertyOfEventBundles_primaryBundles_bundleMapping___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __102__MOSummarizationManager_supressCoarseGranularityPropertyOfEventBundles_primaryBundles_bundleMapping___block_invoke_2_cold_1(v5, v6, v7);
  }

  v8 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __102__MOSummarizationManager_supressCoarseGranularityPropertyOfEventBundles_primaryBundles_bundleMapping___block_invoke_2_cold_2(v5, v6, v8);
  }

  [MOSummarizationUtilities overlappingTimeIntervalBetween:v5 andOtherBundle:v6];
  if (v9 > 0.0)
  {
    v10 = v9;
    v11 = [v5 dateInterval];
    [v11 duration];
    if (v12 > 0.0)
    {
      [v11 duration];
      v14 = v10 / v13;
      if (v14 > 0.2)
      {
        v15 = [*(a1 + 32) supressCoarseGranularityPropertyOfEventBundle:v5 dominantBundle:v6];
        if (v15)
        {
          v16 = [*(a1 + 40) objectForKey:v6];
          if (v16)
          {
            v17 = v16;
            [v16 addObject:v5];
          }

          else
          {
            v17 = [NSMutableSet setWithObject:v5];
            [*(a1 + 40) setObject:v17 forKey:v6];
          }

          ++*(*(*(a1 + 48) + 8) + 24);
        }

        v18 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v26 = v15;
          v25 = [v5 interfaceType];
          v19 = [v6 interfaceType];
          v20 = [v5 summarizationGranularity];
          v21 = [v5 isAggregatedAndSuppressed];
          v22 = [v5 summarizationGranularity];
          v23 = [v5 suggestionID];
          v24 = [v6 suggestionID];
          *buf = 134220034;
          v28 = v26;
          v29 = 2048;
          v30 = v25;
          v31 = 2048;
          v32 = v19;
          v33 = 2048;
          v34 = v20;
          v35 = 2048;
          v36 = v21;
          v37 = 2048;
          v38 = v22;
          v39 = 2048;
          v40 = v14;
          v41 = 2112;
          v42 = v23;
          v43 = 2112;
          v44 = v24;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "CoarseGranularityAggregation: merge, suppressed, %lu, bundle.interfacetype, %lu, megaBundle.interfacetype, %lu, bundle.summary, %lu, bundle.aggregated, %lu, bundle.granularity, %lu, ratio, %f, bundle suggestionID, %@, mega bundle suggestionID, %@", buf, 0x5Cu);
        }
      }
    }
  }
}

- (BOOL)supressCoarseGranularityPropertyOfEventBundle:(id)bundle dominantBundle:(id)dominantBundle
{
  bundleCopy = bundle;
  dominantBundleCopy = dominantBundle;
  v7 = dominantBundleCopy;
  v8 = 0;
  if (bundleCopy && dominantBundleCopy)
  {
    if ([dominantBundleCopy isAggregatedAndSuppressed] & 1) != 0 || (objc_msgSend(bundleCopy, "isAggregatedAndSuppressed"))
    {
      v8 = 0;
    }

    else
    {
      if ([bundleCopy summarizationGranularity] == 2)
      {
        [bundleCopy setIsAggregatedAndSuppressed:1];
      }

      else
      {
        [bundleCopy setSummarizationGranularity:1];
      }

      v9 = objc_opt_new();
      subBundleIDs = [v7 subBundleIDs];
      [v9 addObjectsFromArray:subBundleIDs];

      bundleIdentifier = [bundleCopy bundleIdentifier];
      uUIDString = [bundleIdentifier UUIDString];
      [v9 addObject:uUIDString];

      v13 = [v9 copy];
      [v7 setSubBundleIDs:v13];

      v14 = objc_opt_new();
      subSuggestionIDs = [v7 subSuggestionIDs];
      [v14 addObjectsFromArray:subSuggestionIDs];

      suggestionID = [bundleCopy suggestionID];
      uUIDString2 = [suggestionID UUIDString];
      [v14 addObject:uUIDString2];

      v18 = [v14 copy];
      [v7 setSubSuggestionIDs:v18];

      v8 = 1;
    }
  }

  return v8;
}

- (void)_compressAssetsForThirdPartyBundle:(NSObject *)a3 .cold.1(void *a1, void *a2, NSObject *a3)
{
  v5 = 134218240;
  v6 = [a1 count];
  v7 = 2048;
  v8 = [a2 count];
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Compress assets calcualted with album, %lu, empty album, %lu", &v5, 0x16u);
}

void __102__MOSummarizationManager_supressCoarseGranularityPropertyOfEventBundles_primaryBundles_bundleMapping___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "CoarseGranularityAggregation: bundle, %@, maga bundles, %@", &v3, 0x16u);
}

void __102__MOSummarizationManager_supressCoarseGranularityPropertyOfEventBundles_primaryBundles_bundleMapping___block_invoke_2_cold_2(void *a1, void *a2, NSObject *a3)
{
  v6 = [a1 startDate];
  v7 = [a1 endDate];
  v8 = [a2 startDate];
  v9 = [a2 endDate];
  v10 = 138413058;
  v11 = v6;
  v12 = 2112;
  v13 = v7;
  v14 = 2112;
  v15 = v8;
  v16 = 2112;
  v17 = v9;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "CoarseGranularityAggregation: bundle, start, %@, end, %@, maga bundles, start, %@, end, %@", &v10, 0x2Au);
}

@end