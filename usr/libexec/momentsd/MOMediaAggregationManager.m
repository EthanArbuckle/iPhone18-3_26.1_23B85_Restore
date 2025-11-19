@interface MOMediaAggregationManager
- (BOOL)_isInSongOnRepetBundles:(id)a3 mediaTitle:(id)a4;
- (id)_UpdateAssetPriority:(id)a3 parameters:(id)a4 isSong:(BOOL)a5 isFirstPartyApp:(BOOL)a6;
- (id)_calculateEndDateFromEventBundles:(id)a3;
- (id)_calculateStartDateFromEventBundles:(id)a3;
- (id)_createMediaDictionaryFromBundles:(id)a3;
- (id)_getEventBundleBasedOnMediaTypeEnum:(id)a3 playSessionMediaType:(unint64_t)a4 startTime:(id)a5 endTime:(id)a6;
- (id)_getEventBundleBasedOnMediaTypeEnumForThirdPartyApps:(id)a3 startTime:(id)a4 endTime:(id)a5;
- (id)_getEventBundleByCategoryGroup:(id)a3 isFirstPartyApp:(BOOL)a4;
- (id)_getMediaOnRepeatMegaBundle:(id)a3 mediaTypeEnum:(unint64_t)a4 parameters:(id)a5;
- (id)_getMediaOnRepeatMegaBundleForThirdParty:(id)a3 mediaTypeEnum:(unint64_t)a4 parameters:(id)a5;
- (id)_getPlayedMediaMegaBundle:(id)a3 mediaTypeEnum:(unint64_t)a4 paramters:(id)a5;
- (id)_getPlayedMediaMegaBundleForThirdParty:(id)a3 mediaTypeEnum:(unint64_t)a4 paramters:(id)a5;
- (id)_groupBundleByApps:(id)a3;
- (id)_megaBundlesForCoarseGranularityFromMediaPlaySessionsBundles:(id)a3 paramters:(id)a4;
- (id)_megaBundlesFromMediaPlaySessionsBundles:(id)a3 paramters:(id)a4;
- (id)_sortAndLimitBundlesForThirdPartyApps:(id)a3 playtimeDict:(id)a4;
- (id)_sortAndMergeBundlesForThirdPartyApps:(id)a3 playtimeDict:(id)a4 paramters:(id)a5 mediaActionIsRepeat:(BOOL)a6;
- (id)getMediaOnRepeatBundleDaily:(id)a3 mediaTypeEnum:(unint64_t)a4 parameters:(id)a5;
- (id)getMediaOnRepeatBundleDailyForThirdPartyApp:(id)a3 mediaTypeEnum:(unint64_t)a4 parameters:(id)a5;
- (id)getPlayedMediaBundleDaily:(id)a3 mediaTypeEnum:(unint64_t)a4 parameters:(id)a5 isPlayedSong:(BOOL)a6 songOnRepeatBundles:(id)a7;
- (id)getPlayedMediaBundleDailyForThirdPartyApp:(id)a3 mediaTypeEnum:(unint64_t)a4 parameters:(id)a5 songOnRepeatBundles:(id)a6;
- (unsigned)_isFirstPartyApp:(id)a3;
- (void)_aggregateBundlesForCoarseGranularity:(id)a3 withParameters:(id)a4 handler:(id)a5;
- (void)_aggregateBundlesForFineGranularity:(id)a3 withParameters:(id)a4 handler:(id)a5;
- (void)_updateMOResourceDictionary:(id)a3 dictKey:(id)a4 dictValue:(id)a5;
- (void)aggregateBundles:(id)a3 withParameters:(id)a4 granularity:(unint64_t)a5 handler:(id)a6;
@end

@implementation MOMediaAggregationManager

- (void)aggregateBundles:(id)a3 withParameters:(id)a4 granularity:(unint64_t)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = objc_autoreleasePoolPush();
  if (a5 == 2)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = __81__MOMediaAggregationManager_aggregateBundles_withParameters_granularity_handler___block_invoke_116;
    v15[3] = &unk_1003369E0;
    v16 = v12;
    [(MOMediaAggregationManager *)self _aggregateBundlesForCoarseGranularity:v10 withParameters:v11 handler:v15];
    v14 = v16;
  }

  else
  {
    if (a5 != 1)
    {
      (*(v12 + 2))(v12, 0, 0);
      goto LABEL_7;
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __81__MOMediaAggregationManager_aggregateBundles_withParameters_granularity_handler___block_invoke;
    v17[3] = &unk_1003369E0;
    v18 = v12;
    [(MOMediaAggregationManager *)self _aggregateBundlesForFineGranularity:v10 withParameters:v11 handler:v17];
    v14 = v18;
  }

LABEL_7:
  objc_autoreleasePoolPop(v13);
}

void __81__MOMediaAggregationManager_aggregateBundles_withParameters_granularity_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 134217984;
    v9 = [v5 count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "FineGranularityAggregation for Media: media eventBundles count, %lu", &v8, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __81__MOMediaAggregationManager_aggregateBundles_withParameters_granularity_handler___block_invoke_116(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 134217984;
    v9 = [v5 count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "CoarseGranularityAggregation for Media: output eventBundles count, %lu", &v8, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_aggregateBundlesForFineGranularity:(id)a3 withParameters:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 count];
  v12 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (v11)
  {
    if (v13)
    {
      v17 = 134217984;
      v18 = [v8 count];
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "FineGranularityAggregation for Media: input eventBundles count, %lu", &v17, 0xCu);
    }

    v14 = [(MOMediaAggregationManager *)self _megaBundlesFromMediaPlaySessionsBundles:v8 paramters:v9];
    v15 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v14 count];
      v17 = 134217984;
      v18 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "FineGranularityAggregation for Media: output eventBundles count, %lu", &v17, 0xCu);
    }

    v10[2](v10, v14, 0);
    v10 = v14;
  }

  else
  {
    if (v13)
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "FineGranularityAggregation for Media: No eventBundle to be proccessed", &v17, 2u);
    }

    v10[2](v10, 0, 0);
  }
}

- (void)_aggregateBundlesForCoarseGranularity:(id)a3 withParameters:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = [v8 count];
  v13 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
  if (v12)
  {
    if (v14)
    {
      v19 = 134217984;
      v20 = [v8 count];
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "CoarseGranularityAggregation for media: input eventBundles count, %lu", &v19, 0xCu);
    }

    v15 = [(MOMediaAggregationManager *)self _megaBundlesForCoarseGranularityFromMediaPlaySessionsBundles:v8 paramters:v9];
    v16 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [v15 count];
      v19 = 134217984;
      v20 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "CoarseGranularityAggregation for media: output eventBundles count, %lu", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v18 = objc_autoreleasePoolPush();
    v10[2](v10, v15, 0);
    objc_autoreleasePoolPop(v18);
  }

  else
  {
    if (v14)
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "CoarseGranularityAggregation for media: No eventBundle to be proccessed", &v19, 2u);
    }

    v10[2](v10, 0, 0);
    objc_autoreleasePoolPop(v11);
  }
}

int64_t __57__MOMediaAggregationManager__sortResourcesBySumPlaytime___block_invoke(id a1, MOResource *a2, MOResource *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [(MOResource *)v4 getDictionary];
  v8 = [v7 objectForKey:@"MOMediaPlayMetaDataKeyPlayerSumPlaytime"];

  v9 = [(MOResource *)v5 getDictionary];
  v10 = [v9 objectForKey:@"MOMediaPlayMetaDataKeyPlayerSumPlaytime"];

  [v8 doubleValue];
  v12 = v11;
  [v10 doubleValue];
  if (v12 >= v13)
  {
    [v8 doubleValue];
    v16 = v15;
    [v10 doubleValue];
    if (v16 <= v17)
    {
      v18 = [(MOResource *)v4 identifier];
      v19 = [(MOResource *)v5 identifier];
      v14 = [v18 compare:v19];
    }

    else
    {
      v14 = -1;
    }
  }

  else
  {
    v14 = 1;
  }

  objc_autoreleasePoolPop(v6);
  return v14;
}

int64_t __55__MOMediaAggregationManager__sortBundlesBySumPlaytime___block_invoke(id a1, MOEventBundle *a2, MOEventBundle *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [(MOEventBundle *)v4 resources];
  v8 = [v7 firstObject];
  v9 = [v8 getDictionary];
  v10 = [v9 objectForKey:@"MOMediaPlayMetaDataKeyPlayerSumPlaytime"];

  v11 = [(MOEventBundle *)v5 resources];
  v12 = [v11 firstObject];
  v13 = [v12 getDictionary];
  v14 = [v13 objectForKey:@"MOMediaPlayMetaDataKeyPlayerSumPlaytime"];

  [v10 doubleValue];
  v16 = v15;
  [v14 doubleValue];
  if (v16 >= v17)
  {
    [v10 doubleValue];
    v20 = v19;
    [v14 doubleValue];
    if (v20 <= v21)
    {
      v22 = [(MOEventBundle *)v4 bundleIdentifier];
      v23 = [(MOEventBundle *)v5 bundleIdentifier];
      v18 = [v22 compare:v23];
    }

    else
    {
      v18 = -1;
    }
  }

  else
  {
    v18 = 1;
  }

  objc_autoreleasePoolPop(v6);
  return v18;
}

- (id)_groupBundleByApps:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v19 = *v21;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        v10 = [v8 resources];
        v11 = [v10 firstObject];
        v12 = [v11 getDictionary];
        v13 = [v12 objectForKey:@"MOMediaPlayMetaDataKeyPlayerBundleID"];

        if (v13)
        {
          v14 = [v4 objectForKey:v13];

          if (v14)
          {
            v15 = [v4 objectForKey:v13];
          }

          else
          {
            v15 = objc_opt_new();
          }

          v16 = v15;
          [v15 addObject:v8];
          [v4 setObject:v16 forKey:v13];
        }

        objc_autoreleasePoolPop(v9);
      }

      v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)_UpdateAssetPriority:(id)a3 parameters:(id)a4 isSong:(BOOL)a5 isFirstPartyApp:(BOOL)a6
{
  v47 = a5;
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (a6)
  {
    v42 = v10;
    v43 = v9;
    v12 = [(MOMediaAggregationManager *)self _sortResourcesBySumPlaytime:v9];
    v13 = objc_opt_new();
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = v12;
    v14 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v48 = *v54;
      if (v47)
      {
        v17 = MOMediaPlayMetaDataKeyPlayerAlbumName;
      }

      else
      {
        v17 = MOMediaPlayMetaDataKeyPlayerArtist;
      }

      v18 = *v17;
      do
      {
        v19 = 0;
        v44 = v16;
        v45 = -v16;
        do
        {
          if (*v54 != v48)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v53 + 1) + 8 * v19);
          v21 = objc_autoreleasePoolPush();
          v22 = [v20 getDictionary];
          v23 = [v22 objectForKey:v18];

          v24 = [v13 objectForKey:v23];

          if (v24)
          {
            v25 = [v20 getDictionary];
            v26 = [v25 mutableCopy];

            v27 = MOMediaPlayMetaDataKeyPlayerMediaTypeSongAlbum;
            if (!v47)
            {
              v27 = MOMediaPlayMetaDataKeyPlayerMediaTypePodcastArtist;
            }

            [v26 setObject:*v27 forKeyedSubscript:@"MOMediaPlayMetaDataKeyPlayerMediaTypeKey"];
            v28 = [MOResource alloc];
            v29 = [v20 name];
            v30 = -[MOResource initWithName:type:dict:value:](v28, "initWithName:type:dict:value:", v29, [v20 type], v26, 0.0);

            v31 = [v20 sourceEventIdentifier];
            [(MOResource *)v30 setSourceEventIdentifier:v31];

            -[MOResource setSourceEventAccessType:](v30, "setSourceEventAccessType:", [v20 sourceEventAccessType]);
            v32 = [v13 objectForKey:v23];
            [v32 priorityScore];
            [(MOResource *)v30 setPriorityScore:?];

            [v13 setObject:v30 forKeyedSubscript:v23];
          }

          else
          {
            v33 = 200.0;
            if (v45 == v19)
            {
              v33 = 100.0;
            }

            [v20 setPriorityScore:v33];
            [v13 setObject:v20 forKeyedSubscript:v23];
          }

          objc_autoreleasePoolPop(v21);
          v19 = v19 + 1;
        }

        while (v15 != v19);
        v16 = v44 + v15;
        v15 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
      }

      while (v15);
    }

    v34 = objc_opt_new();
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v35 = v13;
    v36 = [v35 countByEnumeratingWithState:&v49 objects:v57 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v50;
      do
      {
        for (i = 0; i != v37; i = i + 1)
        {
          if (*v50 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = [v35 objectForKeyedSubscript:*(*(&v49 + 1) + 8 * i)];
          [v34 addObject:v40];
        }

        v37 = [v35 countByEnumeratingWithState:&v49 objects:v57 count:16];
      }

      while (v37);
    }

    v11 = v42;
    v9 = v43;
  }

  else
  {
    v34 = v9;
  }

  return v34;
}

- (id)_megaBundlesFromMediaPlaySessionsBundles:(id)a3 paramters:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = objc_opt_new();
    v9 = [NSPredicate predicateWithFormat:@"%K = %lu", @"interfaceType", 5];
    v10 = [v6 filteredArrayUsingPredicate:v9];
    if ([v10 count])
    {
      v71 = v9;
      v72 = v6;
      v77 = v8;
      v91 = objc_opt_new();
      v90 = objc_opt_new();
      v100 = 0u;
      v101 = 0u;
      v102 = 0u;
      v103 = 0u;
      v70 = v10;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v100 objects:v114 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v101;
        do
        {
          v15 = v11;
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v101 != v14)
            {
              objc_enumerationMutation(v15);
            }

            v17 = *(*(&v100 + 1) + 8 * i);
            v18 = [v17 events];
            v19 = [v18 count];

            if (v19)
            {
              v20 = [v17 events];
              v21 = [v20 firstObject];
              v22 = [(MOMediaAggregationManager *)self _isFirstPartyApp:v21];

              if (v22)
              {
                v23 = v91;
              }

              else
              {
                v23 = v90;
              }

              [v23 addObject:v17];
            }
          }

          v11 = v15;
          v13 = [v15 countByEnumeratingWithState:&v100 objects:v114 count:16];
        }

        while (v13);
      }

      v24 = +[NSCalendar currentCalendar];
      v25 = [v72 getTimeSpanOfMOEventBundleArray];
      v26 = [v25 startDate];
      v27 = [v24 components:28 fromDate:v26];

      v28 = [v24 dateFromComponents:v27];
      v76 = v24;
      v29 = [v24 dateByAddingUnit:16 value:1 toDate:v28 options:0];
      v78 = v25;
      v30 = [v25 endDate];
      v31 = [v28 compare:v30];

      v69 = v27;
      if (v31 == -1)
      {
        v74 = v11;
        v8 = v77;
        v42 = v29;
        v75 = v7;
        v73 = self;
        do
        {
          v43 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
          v89 = v42;
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
          {
            v67 = [v78 startDate];
            v68 = [v78 endDate];
            *buf = 138413058;
            v107 = v28;
            v108 = 2112;
            v109 = v89;
            v110 = 2112;
            v111 = v67;
            v112 = 2112;
            v113 = v68;
            _os_log_debug_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEBUG, "FineGranularityAggregation: process media bundles with start time, %@, end time, %@, event bundles start date, %@, end date, %@", buf, 0x2Au);

            v42 = v89;
          }

          v44 = [(MOMediaAggregationManager *)self _getEventBundleBasedOnMediaTypeEnum:v91 playSessionMediaType:1 startTime:v28 endTime:v42];
          v45 = [(MOMediaAggregationManager *)self getMediaOnRepeatBundleDaily:v44 mediaTypeEnum:1 parameters:v7];
          if (v45)
          {
            [v8 addObject:v45];
          }

          v85 = [(MOMediaAggregationManager *)self _getEventBundleBasedOnMediaTypeEnum:v91 playSessionMediaType:2 startTime:v28 endTime:v42];
          v46 = [MOMediaAggregationManager getPlayedMediaBundleDaily:"getPlayedMediaBundleDaily:mediaTypeEnum:parameters:isPlayedSong:songOnRepeatBundles:" mediaTypeEnum:? parameters:? isPlayedSong:? songOnRepeatBundles:?];
          if (v46)
          {
            [v8 addObject:v46];
          }

          v84 = [(MOMediaAggregationManager *)self _getEventBundleBasedOnMediaTypeEnum:v91 playSessionMediaType:3 startTime:v28 endTime:v42];
          v47 = [MOMediaAggregationManager getPlayedMediaBundleDaily:"getPlayedMediaBundleDaily:mediaTypeEnum:parameters:isPlayedSong:songOnRepeatBundles:" mediaTypeEnum:? parameters:? isPlayedSong:? songOnRepeatBundles:?];
          if (v47)
          {
            [v8 addObject:v47];
          }

          v87 = v44;
          v48 = v44;
          v49 = v7;
          v50 = [(MOMediaAggregationManager *)self getPlayedMediaBundleDaily:v48 mediaTypeEnum:1 parameters:v7 isPlayedSong:1 songOnRepeatBundles:v45];
          if (v50)
          {
            [v8 addObject:v50];
          }

          v82 = v50;
          v51 = [(MOMediaAggregationManager *)self _getEventBundleBasedOnMediaTypeEnumForThirdPartyApps:v90 startTime:v28 endTime:v42];
          v52 = v49;
          v53 = [(MOMediaAggregationManager *)self getMediaOnRepeatBundleDailyForThirdPartyApp:v51 mediaTypeEnum:5 parameters:v49];
          if (v53)
          {
            [v8 addObject:v53];
          }

          v83 = v47;
          v86 = v45;
          v88 = v28;
          v81 = v51;
          v54 = [(MOMediaAggregationManager *)self getPlayedMediaBundleDailyForThirdPartyApp:v51 mediaTypeEnum:5 parameters:v52 songOnRepeatBundles:v53];
          if (v54)
          {
            [v8 addObject:v54];
          }

          v79 = v54;
          v80 = v53;
          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v55 = v74;
          v56 = [v55 countByEnumeratingWithState:&v96 objects:v105 count:16];
          if (v56)
          {
            v57 = v56;
            v58 = *v97;
            do
            {
              for (j = 0; j != v57; j = j + 1)
              {
                v60 = v46;
                if (*v97 != v58)
                {
                  objc_enumerationMutation(v55);
                }

                v61 = *(*(&v96 + 1) + 8 * j);
                v62 = [v61 action];
                v63 = [v62 actionName];
                v64 = [v63 isEqualToString:@"played_media_sessions"];

                if (v64)
                {
                  [v61 setIsAggregatedAndSuppressed:1];
                }

                v46 = v60;
              }

              v57 = [v55 countByEnumeratingWithState:&v96 objects:v105 count:16];
            }

            while (v57);
          }

          v33 = [v76 dateByAddingUnit:16 value:1 toDate:v88 options:0];

          v32 = [v76 dateByAddingUnit:16 value:1 toDate:v89 options:0];

          v65 = [v78 endDate];
          v66 = [v33 compare:v65];

          v28 = v33;
          v42 = v32;
          v7 = v75;
          v8 = v77;
          self = v73;
        }

        while (v66 == -1);
      }

      else
      {
        v32 = v29;
        v33 = v28;
        v8 = v77;
      }

      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v34 = v8;
      v35 = [v34 countByEnumeratingWithState:&v92 objects:v104 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v93;
        do
        {
          for (k = 0; k != v36; k = k + 1)
          {
            if (*v93 != v37)
            {
              objc_enumerationMutation(v34);
            }

            [*(*(&v92 + 1) + 8 * k) setSummarizationGranularity:1];
          }

          v36 = [v34 countByEnumeratingWithState:&v92 objects:v104 count:16];
        }

        while (v36);
      }

      v39 = v34;
      v9 = v71;
      v6 = v72;
      v10 = v70;
      v40 = v91;
    }

    else
    {
      v40 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "FineGranularityAggregation: media play sessions bundles are filtered.", buf, 2u);
      }

      v39 = 0;
    }
  }

  else
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v107 = [v6 count];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "FineGranularityAggregation: no needed to generate media bundles since bundles  count is: %lu", buf, 0xCu);
    }

    v39 = 0;
  }

  return v39;
}

- (id)_getEventBundleByCategoryGroup:(id)a3 isFirstPartyApp:(BOOL)a4
{
  v18 = a4;
  v4 = a3;
  v16 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        v11 = [v9 resources];
        v12 = [v11 firstObject];
        v13 = [v12 getDictionary];
        v14 = [v13 objectForKey:@"MOMediaPlayMetaDataKeyPlayerBundleID"];

        if (v14 && [MOMediaPlaySession isFirstPartyApp:v14]== v18)
        {
          [v16 addObject:v9];
        }

        objc_autoreleasePoolPop(v10);
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  return v16;
}

- (id)_getEventBundleBasedOnMediaTypeEnumForThirdPartyApps:(id)a3 startTime:(id)a4 endTime:(id)a5
{
  v7 = a3;
  v26 = a4;
  v24 = a5;
  v23 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    do
    {
      v11 = 0;
      do
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v27 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        v14 = [v12 resources];
        v15 = [v14 firstObject];
        v16 = [v15 getDictionary];
        v17 = [v16 objectForKey:@"MOMediaPlayMetaDataKeyPlayerBundleID"];

        v18 = [v12 startDate];
        if (([v18 isAfterDate:v26] & 1) == 0)
        {
          goto LABEL_10;
        }

        v19 = [v12 startDate];
        if (![v19 isBeforeDate:v24] || +[MOMediaPlaySession isFirstPartyApp:](MOMediaPlaySession, "isFirstPartyApp:", v17))
        {

LABEL_10:
          goto LABEL_11;
        }

        v20 = [v17 hasPrefix:@"com.apple"];

        if ((v20 & 1) == 0)
        {
          [v23 addObject:v12];
        }

LABEL_11:

        objc_autoreleasePoolPop(v13);
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v21 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      v9 = v21;
    }

    while (v21);
  }

  return v23;
}

- (unsigned)_isFirstPartyApp:(id)a3
{
  v3 = [a3 mediaEvent];
  v4 = [v3 mediaPlayerBundleId];

  v5 = v4 && ([v4 hasPrefix:@"com.apple."] & 1) != 0;
  return v5;
}

- (id)_getEventBundleBasedOnMediaTypeEnum:(id)a3 playSessionMediaType:(unint64_t)a4 startTime:(id)a5 endTime:(id)a6
{
  v8 = a3;
  v9 = a5;
  v10 = a6;
  v21 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        v17 = [v16 startDate];
        if ([v17 isAfterDate:v9])
        {
          v18 = [v16 startDate];
          v19 = [v18 isBeforeDate:v10];

          if (v19)
          {
            [v21 addObject:v16];
          }
        }

        else
        {
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  return v21;
}

- (id)getMediaOnRepeatBundleDaily:(id)a3 mediaTypeEnum:(unint64_t)a4 parameters:(id)a5
{
  v7 = a3;
  v8 = a5;
  if ([v7 count])
  {
    v63 = v8;
    v64 = v7;
    v65 = self;
    v9 = [(MOMediaAggregationManager *)self _sortBundlesBySumPlaytime:v7];
    v68 = objc_opt_new();
    v69 = objc_opt_new();
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    obj = v9;
    v71 = [obj countByEnumeratingWithState:&v74 objects:v86 count:16];
    if (v71)
    {
      v70 = *v75;
      v10 = 0.0;
      v11 = 0.0;
      do
      {
        v12 = 0;
        do
        {
          if (*v75 != v70)
          {
            objc_enumerationMutation(obj);
          }

          v72 = v12;
          v13 = *(*(&v74 + 1) + 8 * v12);
          v14 = [(MOEventBundle *)v13 events];
          v15 = [v14 count];
          v16 = [(MOEventBundle *)v13 resources];
          v17 = [v16 count];

          if (v15 == v17)
          {
            v18 = [(MOEventBundle *)v13 resources];
            v19 = [v18 count];

            if (v19)
            {
              v20 = 0;
              do
              {
                v21 = objc_autoreleasePoolPush();
                v22 = [(MOEventBundle *)v13 resources];
                v23 = [v22 objectAtIndexedSubscript:v20];

                v24 = [v23 getDictionary];
                v25 = [v24 objectForKey:@"MOMediaPlayMetaDataKeyPlayerSumPlaytime"];

                v26 = [v23 getDictionary];
                v27 = [v26 objectForKey:@"MOMediaPlayMetaDataKeyPlayerDuration"];

                v28 = [v23 getDictionary];
                v29 = [v28 objectForKey:@"media_type"];
                v30 = [v29 intValue];

                if (v30 == a4)
                {
                  v31 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
                  {
                    v41 = [v23 getDictionary];
                    v42 = [v41 objectForKey:@"MOMediaPlayMetaDataKeyPlayerTitle"];
                    v67 = [MOMediaPlaySession redactString:v42];
                    *buf = 136315906;
                    v79 = "[MOMediaAggregationManager getMediaOnRepeatBundleDaily:mediaTypeEnum:parameters:]";
                    v80 = 2112;
                    v81 = v67;
                    v82 = 2112;
                    v83 = v27;
                    v84 = 2112;
                    v85 = v25;
                    _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "%s, media on repeat daily bundle with media title, %@, duration, %@, total play time, %@", buf, 0x2Au);
                  }

                  if (v27)
                  {
                    if ([v27 intValue] >= 1)
                    {
                      [v25 doubleValue];
                      v33 = v32;
                      [v27 doubleValue];
                      if (v33 / v34 >= 2.95)
                      {
                        [v25 doubleValue];
                        v11 = v11 + v35;
                        [v27 doubleValue];
                        v10 = v10 + v36;
                        v37 = [(MOEventBundle *)v13 events];
                        v38 = [v37 objectAtIndexedSubscript:v20];
                        [v69 addObject:v38];

                        [v68 addObject:v23];
                      }
                    }
                  }
                }

                objc_autoreleasePoolPop(v21);
                ++v20;
                v39 = [(MOEventBundle *)v13 resources];
                v40 = [v39 count];
              }

              while (v40 > v20);
            }
          }

          else
          {
            v43 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v79 = "[MOMediaAggregationManager getMediaOnRepeatBundleDaily:mediaTypeEnum:parameters:]";
              v80 = 2112;
              v81 = v13;
              _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "%s, media bundle had bad data, %@", buf, 0x16u);
            }
          }

          v12 = v72 + 1;
        }

        while ((v72 + 1) != v71);
        v71 = [obj countByEnumeratingWithState:&v74 objects:v86 count:16];
      }

      while (v71);
    }

    else
    {
      v10 = 0.0;
      v11 = 0.0;
    }

    v45 = v68;
    if ([v68 count])
    {
      v46 = [(MOMediaAggregationManager *)v65 _sortResourcesBySumPlaytime:v68];
      v47 = [MOEventBundle alloc];
      v48 = [[NSSet alloc] initWithArray:v69];
      v44 = [(MOEventBundle *)v47 initWithEventSet:v48 filtered:0];

      [(MOEventBundle *)v44 setInterfaceType:5];
      v49 = @"song_on_repeat";
      if ([v68 count] >= 2)
      {
        v50 = @"songs_on_repeat";

        v49 = v50;
      }

      [(MOEventBundle *)v44 setBundleSuperType:4];
      [(MOEventBundle *)v44 setBundleSubType:401];
      v51 = [obj firstObject];
      v52 = [v51 promptLanguage];
      v53 = [NSString stringWithFormat:@"%@, etc.", v52];
      [(MOEventBundle *)v44 setPromptLanguage:v53];

      v54 = [[MOAction alloc] initWithActionName:v49 actionType:1 actionSubtype:6];
      [(MOEventBundle *)v44 setAction:v54];

      v55 = [v69 firstObject];
      v56 = [v55 eventIdentifier];
      v57 = [(MOEventBundle *)v44 action];
      [v57 setSourceEventIdentifier:v56];

      v58 = [obj firstObject];
      v59 = [v58 labels];
      [(MOEventBundle *)v44 setLabels:v59];

      v8 = v63;
      v60 = [(MOMediaAggregationManager *)v65 _limitMOResourcesAndUpdatePriority:v46 parameters:v63 isSong:1 isFirstPartyApp:1];
      [(MOEventBundle *)v44 setResources:v60];

      [(MOMediaAggregationManager *)v65 _updateRankingDictionary:v44 mediaLength:1 sumPlaytime:v10 mediaActionIsRepeat:v11];
      v61 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v79 = "[MOMediaAggregationManager getMediaOnRepeatBundleDaily:mediaTypeEnum:parameters:]";
        v80 = 2112;
        v81 = v44;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_INFO, "%s, bundle, %@, event category, Song on repeat", buf, 0x16u);
      }

      v7 = v64;
      v45 = v68;
    }

    else
    {
      v44 = 0;
      v8 = v63;
    }
  }

  else
  {
    v44 = 0;
  }

  return v44;
}

- (id)getMediaOnRepeatBundleDailyForThirdPartyApp:(id)a3 mediaTypeEnum:(unint64_t)a4 parameters:(id)a5
{
  v7 = a3;
  v76 = a5;
  v81 = self;
  v73 = v7;
  v8 = [(MOMediaAggregationManager *)self _groupBundleByApps:v7];
  v75 = objc_opt_new();
  v74 = objc_opt_new();
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  obj = [v8 allKeys];
  v9 = [obj countByEnumeratingWithState:&v96 objects:v109 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v97;
    v77 = *v97;
    v78 = v8;
    do
    {
      v12 = 0;
      v79 = v10;
      do
      {
        if (*v97 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [v8 objectForKey:*(*(&v96 + 1) + 8 * v12)];
        v14 = v13;
        if (v13 && [v13 count])
        {
          v82 = v14;
          v83 = v12;
          v15 = [(MOMediaAggregationManager *)v81 _sortBundlesBySumPlaytime:v14];
          v85 = objc_opt_new();
          v84 = objc_opt_new();
          v92 = 0u;
          v93 = 0u;
          v94 = 0u;
          v95 = 0u;
          v16 = v15;
          v88 = [v16 countByEnumeratingWithState:&v92 objects:v108 count:16];
          if (v88)
          {
            v86 = *v93;
            v87 = v16;
            v17 = 0.0;
            v18 = 0.0;
            do
            {
              v19 = 0;
              do
              {
                if (*v93 != v86)
                {
                  objc_enumerationMutation(v16);
                }

                v20 = *(*(&v92 + 1) + 8 * v19);
                context = objc_autoreleasePoolPush();
                v21 = [(MOEventBundle *)v20 events];
                v22 = [v21 count];
                v23 = [(MOEventBundle *)v20 resources];
                v24 = [v23 count];

                v90 = v19;
                if (v22 == v24)
                {
                  v25 = [(MOEventBundle *)v20 resources];
                  v26 = [v25 count];

                  if (v26)
                  {
                    v27 = 0;
                    do
                    {
                      v28 = objc_autoreleasePoolPush();
                      v29 = [(MOEventBundle *)v20 resources];
                      v30 = [v29 objectAtIndexedSubscript:v27];

                      v31 = [v30 getDictionary];
                      v32 = [v31 objectForKey:@"MOMediaPlayMetaDataKeyPlayerSumPlaytime"];

                      v33 = [v30 getDictionary];
                      v34 = [v33 objectForKey:@"MOMediaPlayMetaDataKeyPlayerDuration"];

                      v35 = [v30 getDictionary];
                      v36 = [v35 objectForKey:@"media_type"];
                      v37 = [v36 intValue];

                      if (v37 == a4)
                      {
                        v38 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
                        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
                        {
                          v48 = [v30 getDictionary];
                          v49 = [v48 objectForKey:@"MOMediaPlayMetaDataKeyPlayerTitle"];
                          v50 = [MOMediaPlaySession redactString:v49];
                          *buf = 136315906;
                          v101 = "[MOMediaAggregationManager getMediaOnRepeatBundleDailyForThirdPartyApp:mediaTypeEnum:parameters:]";
                          v102 = 2112;
                          v103 = v50;
                          v104 = 2112;
                          v105 = v34;
                          v106 = 2112;
                          v107 = v32;
                          _os_log_debug_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "%s, third party media on repeat daily bundle with media title, %@, duration, %@, total play time, %@", buf, 0x2Au);
                        }

                        if (v34)
                        {
                          if ([v34 intValue] >= 1)
                          {
                            [v32 doubleValue];
                            v40 = v39;
                            [v34 doubleValue];
                            if (v40 / v41 >= 2.95)
                            {
                              [v32 doubleValue];
                              v18 = v18 + v42;
                              [v34 doubleValue];
                              v17 = v17 + v43;
                              v44 = [(MOEventBundle *)v20 events];
                              v45 = [v44 objectAtIndexedSubscript:v27];
                              [v84 addObject:v45];

                              [v85 addObject:v30];
                            }
                          }
                        }
                      }

                      objc_autoreleasePoolPop(v28);
                      ++v27;
                      v46 = [(MOEventBundle *)v20 resources];
                      v47 = [v46 count];
                    }

                    while (v47 > v27);
                  }
                }

                else
                {
                  v51 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
                  if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
                  {
                    *buf = 136315394;
                    v101 = "[MOMediaAggregationManager getMediaOnRepeatBundleDailyForThirdPartyApp:mediaTypeEnum:parameters:]";
                    v102 = 2112;
                    v103 = v20;
                    _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "%s, media bundle had bad data, %@", buf, 0x16u);
                  }
                }

                objc_autoreleasePoolPop(context);
                v19 = v90 + 1;
                v16 = v87;
              }

              while ((v90 + 1) != v88);
              v88 = [v87 countByEnumeratingWithState:&v92 objects:v108 count:16];
            }

            while (v88);
          }

          else
          {
            v17 = 0.0;
            v18 = 0.0;
          }

          v52 = v85;
          if ([v85 count])
          {
            v53 = [(MOMediaAggregationManager *)v81 _sortResourcesBySumPlaytime:v85];
            v54 = [MOEventBundle alloc];
            v55 = [[NSSet alloc] initWithArray:v84];
            v56 = [(MOEventBundle *)v54 initWithEventSet:v55 filtered:0];

            [(MOEventBundle *)v56 setInterfaceType:5];
            v57 = @"media_on_repeat_third_party";
            [(MOEventBundle *)v56 setBundleSuperType:4];
            [(MOEventBundle *)v56 setBundleSubType:407];
            v58 = [v16 firstObject];
            v59 = [v58 promptLanguage];
            v60 = [NSString stringWithFormat:@"%@, etc.", v59];
            [(MOEventBundle *)v56 setPromptLanguage:v60];

            v61 = [[MOAction alloc] initWithActionName:v57 actionType:1 actionSubtype:6];
            [(MOEventBundle *)v56 setAction:v61];

            v62 = [v16 firstObject];
            v63 = [v62 labels];
            [(MOEventBundle *)v56 setLabels:v63];

            v64 = [(MOMediaAggregationManager *)v81 _limitMOResourcesAndUpdatePriority:v53 parameters:v76 isSong:1 isFirstPartyApp:0];
            [(MOEventBundle *)v56 setResources:v64];

            [(MOEventBundle *)v56 setIsAggregatedAndSuppressed:1];
            [(MOMediaAggregationManager *)v81 _updateRankingDictionary:v56 mediaLength:1 sumPlaytime:v17 mediaActionIsRepeat:v18];
            v65 = [NSNumber numberWithDouble:v18];
            v66 = [(MOEventBundle *)v56 resources];
            v67 = [v66 firstObject];
            v68 = [v67 getDictionary];
            v69 = [v68 objectForKey:@"MOMediaPlayMetaDataKeyPlayerBundleID"];
            [v75 setValue:v65 forKey:v69];

            [v74 addObject:v56];
            v70 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
            if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v101 = "[MOMediaAggregationManager getMediaOnRepeatBundleDailyForThirdPartyApp:mediaTypeEnum:parameters:]";
              v102 = 2112;
              v103 = v56;
              _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_INFO, "%s, bundle, %@, event category, Media on repeat for third party apps", buf, 0x16u);
            }

            v52 = v85;
          }

          v11 = v77;
          v8 = v78;
          v10 = v79;
          v14 = v82;
          v12 = v83;
        }

        v12 = v12 + 1;
      }

      while (v12 != v10);
      v10 = [obj countByEnumeratingWithState:&v96 objects:v109 count:16];
    }

    while (v10);
  }

  v71 = [(MOMediaAggregationManager *)v81 _sortAndMergeBundlesForThirdPartyApps:v74 playtimeDict:v75 paramters:v76 mediaActionIsRepeat:1];

  return v71;
}

- (id)_sortAndLimitBundlesForThirdPartyApps:(id)a3 playtimeDict:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count] > 2)
  {
    v23 = v6;
    v7 = [v6 keysSortedByValueUsingComparator:&__block_literal_global_148];
    v26 = objc_opt_new();
    v28 = v7;
    if ([v7 count])
    {
      v8 = 0;
      v9 = 0;
      v24 = v5;
      do
      {
        v25 = v8;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        obj = v5;
        v10 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v30;
          do
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v30 != v12)
              {
                objc_enumerationMutation(obj);
              }

              v14 = *(*(&v29 + 1) + 8 * i);
              v15 = objc_autoreleasePoolPush();
              v16 = [v14 resources];
              v17 = [v16 firstObject];
              v18 = [v17 getDictionary];
              v19 = [v18 objectForKey:@"MOMediaPlayMetaDataKeyPlayerBundleID"];

              v20 = [v28 objectAtIndexedSubscript:v9];
              LODWORD(v17) = [v20 isEqualToString:v19];

              if (v17)
              {
                [v26 addObject:v14];
              }

              objc_autoreleasePoolPop(v15);
            }

            v11 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
          }

          while (v11);
        }

        v21 = [v28 count] > v9 + 1;
        v9 = 1;
        v8 = 1;
        v5 = v24;
      }

      while ((v21 & ~v25 & 1) != 0);
    }

    v6 = v23;
  }

  else
  {
    v26 = v5;
  }

  return v26;
}

- (id)getPlayedMediaBundleDaily:(id)a3 mediaTypeEnum:(unint64_t)a4 parameters:(id)a5 isPlayedSong:(BOOL)a6 songOnRepeatBundles:(id)a7
{
  v86 = a6;
  v10 = a3;
  v92 = a5;
  v11 = a7;
  if (![v10 count])
  {
    v57 = 0;
    goto LABEL_53;
  }

  v90 = objc_opt_new();
  v91 = objc_opt_new();
  v82 = v10;
  [(MOMediaAggregationManager *)self _sortBundlesBySumPlaytime:v10];
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  obj = v98 = 0u;
  v94 = self;
  v88 = [obj countByEnumeratingWithState:&v95 objects:v107 count:16];
  if (!v88)
  {
    v12 = 0.0;
    v13 = 0.0;
    goto LABEL_41;
  }

  v87 = *v96;
  v12 = 0.0;
  v13 = 0.0;
  do
  {
    v14 = 0;
    do
    {
      if (*v96 != v87)
      {
        objc_enumerationMutation(obj);
      }

      v89 = v14;
      v15 = *(*(&v95 + 1) + 8 * v14);
      v16 = [(MOEventBundle *)v15 events];
      v17 = [v16 count];
      v18 = [(MOEventBundle *)v15 resources];
      v19 = [v18 count];

      if (v17 == v19)
      {
        v20 = [(MOEventBundle *)v15 resources];
        v21 = [v20 count];

        if (v21)
        {
          v22 = 0;
          do
          {
            v23 = objc_autoreleasePoolPush();
            v24 = [(MOEventBundle *)v15 resources];
            v25 = [v24 objectAtIndexedSubscript:v22];

            v26 = [v25 getDictionary];
            v27 = [v26 objectForKey:@"MOMediaPlayMetaDataKeyPlayerTitle"];

            if ([(MOMediaAggregationManager *)self _isInSongOnRepetBundles:v11 mediaTitle:v27])
            {
              v28 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315394;
                v100 = "[MOMediaAggregationManager getPlayedMediaBundleDaily:mediaTypeEnum:parameters:isPlayedSong:songOnRepeatBundles:]";
                v101 = 2112;
                v102 = v27;
                _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "%s, played song filtered by song on repeat bundle with title, %@", buf, 0x16u);
              }

              goto LABEL_27;
            }

            v29 = v11;
            v30 = [v25 getDictionary];
            v31 = [v30 objectForKey:@"media_type"];
            v32 = [v31 intValue];

            if (v32 != a4)
            {
              v11 = v29;
              self = v94;
              goto LABEL_29;
            }

            v33 = [v25 getDictionary];
            v28 = [v33 objectForKey:@"MOMediaPlayMetaDataKeyPlayerSumPlaytime"];

            v34 = [v25 getDictionary];
            v35 = [v34 objectForKey:@"MOMediaPlayMetaDataKeyPlayerDuration"];

            v36 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              v55 = [v25 getDictionary];
              v83 = [v55 objectForKey:@"MOMediaPlayMetaDataKeyPlayerTitle"];
              v84 = [MOMediaPlaySession redactString:v83];
              *buf = 136315906;
              v100 = "[MOMediaAggregationManager getPlayedMediaBundleDaily:mediaTypeEnum:parameters:isPlayedSong:songOnRepeatBundles:]";
              v101 = 2112;
              v102 = v84;
              v103 = 2112;
              v104 = v35;
              v105 = 2112;
              v106 = v28;
              _os_log_debug_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "%s, played media with media title inside daily media bundle, %@, duration, %@, total play time, %@", buf, 0x2Au);
            }

            if (!v35 || [v35 intValue] < 1 || (-[NSObject doubleValue](v28, "doubleValue"), v38 = v37, objc_msgSend(v35, "doubleValue"), v40 = v38 / v39, objc_msgSend(v92, "coarseGranularity_mediaBundleAggregationPodcastPlayTimePercentageThreshold"), v40 < v41))
            {
              v42 = [v28 longValue];
              [v92 coarseGranularity_mediaBundleAggregationPodcastTotalPlayTimeThreshold];
              if (v43 > v42)
              {
                if (v35 && [v35 intValue] >= 1 && (-[NSObject doubleValue](v28, "doubleValue"), v45 = v44, objc_msgSend(v35, "doubleValue"), v47 = v45 / v46, objc_msgSend(v92, "coarseGranularity_mediaBundleAggregationPodcastPlayTimePercentageThreshold"), v47 >= v48))
                {
                  if (!v86)
                  {
                    goto LABEL_26;
                  }
                }

                else if ([v28 longValue]< 90 || !v86)
                {
                  goto LABEL_26;
                }
              }
            }

            [v90 addObject:v25];
            v49 = [(MOEventBundle *)v15 events];
            v50 = [v49 objectAtIndexedSubscript:v22];
            [v91 addObject:v50];

            [v28 doubleValue];
            v13 = v13 + v51;
            [v35 doubleValue];
            v12 = v12 + v52;
LABEL_26:

            v11 = v29;
            self = v94;
LABEL_27:

LABEL_29:
            objc_autoreleasePoolPop(v23);
            ++v22;
            v53 = [(MOEventBundle *)v15 resources];
            v54 = [v53 count];
          }

          while (v54 > v22);
        }
      }

      else
      {
        v56 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v100 = "[MOMediaAggregationManager getPlayedMediaBundleDaily:mediaTypeEnum:parameters:isPlayedSong:songOnRepeatBundles:]";
          v101 = 2112;
          v102 = v15;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "%s, media bundle has bad data, %@", buf, 0x16u);
        }
      }

      v14 = v89 + 1;
    }

    while ((v89 + 1) != v88);
    v88 = [obj countByEnumeratingWithState:&v95 objects:v107 count:16];
  }

  while (v88);
LABEL_41:

  v58 = v90;
  if ([v90 count])
  {
    v59 = [(MOMediaAggregationManager *)self _sortResourcesBySumPlaytime:v90];
    v60 = [MOEventBundle alloc];
    v61 = [[NSSet alloc] initWithArray:v91];
    v57 = [(MOEventBundle *)v60 initWithEventSet:v61 filtered:0];

    [(MOEventBundle *)v57 setInterfaceType:5];
    v62 = [(MOMediaAggregationManager *)self _limitMOResourcesAndUpdatePriority:v59 parameters:v92 isSong:v86 isFirstPartyApp:1];
    [(MOEventBundle *)v57 setResources:v62];

    [(MOEventBundle *)v57 setBundleSuperType:4];
    v10 = v82;
    if (v86)
    {
      v63 = @"played_song";
      [(MOEventBundle *)v57 setBundleSubType:402];
    }

    else
    {
      v64 = v11;
      v65 = objc_autoreleasePoolPush();
      v66 = [(MOEventBundle *)v57 resources];
      v67 = [v66 firstObject];
      v68 = [v67 getDictionary];
      v69 = [v68 objectForKey:@"MOMediaPlayMetaDataKeyPlayerMediaTypeKey"];

      v70 = kMOMediaPlayAnnotationManagerStringPrefixPlayedPodcasts;
      if ([v90 count] <= 1 && !objc_msgSend(v69, "isEqualToString:", MOMediaPlayMetaDataKeyPlayerMediaTypePodcastArtist[0]))
      {
        v70 = kMOMediaPlayAnnotationManagerStringPrefixPlayedPodcast;
      }

      v63 = *v70;
      [(MOEventBundle *)v57 setBundleSubType:403];

      objc_autoreleasePoolPop(v65);
      v11 = v64;
    }

    v71 = [v82 firstObject];
    v72 = [v71 promptLanguage];
    v73 = [NSString stringWithFormat:@"%@, etc.", v72];
    [(MOEventBundle *)v57 setPromptLanguage:v73];

    v74 = [[MOAction alloc] initWithActionName:v63 actionType:1 actionSubtype:6];
    [(MOEventBundle *)v57 setAction:v74];

    v75 = [v91 firstObject];
    v76 = [v75 eventIdentifier];
    v77 = [(MOEventBundle *)v57 action];
    [v77 setSourceEventIdentifier:v76];

    v78 = [v82 firstObject];
    v79 = [v78 labels];
    [(MOEventBundle *)v57 setLabels:v79];

    [(MOMediaAggregationManager *)v94 _updateRankingDictionary:v57 mediaLength:0 sumPlaytime:v12 mediaActionIsRepeat:v13];
    v80 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v100 = "[MOMediaAggregationManager getPlayedMediaBundleDaily:mediaTypeEnum:parameters:isPlayedSong:songOnRepeatBundles:]";
      v101 = 2112;
      v102 = v57;
      _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_INFO, "%s, bundle, %@, event category, Played Media", buf, 0x16u);
    }

    v58 = v90;
  }

  else
  {
    v57 = 0;
    v10 = v82;
  }

LABEL_53:

  return v57;
}

- (BOOL)_isInSongOnRepetBundles:(id)a3 mediaTitle:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [v5 resources];

    LOBYTE(v8) = 0;
    if (v6 && v7)
    {
      [v5 resources];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v9 = v21 = 0u;
      v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v19;
        while (2)
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v19 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v8 = *(*(&v18 + 1) + 8 * i);
            v14 = objc_autoreleasePoolPush();
            if (!v8)
            {
              goto LABEL_20;
            }

            v15 = [v8 getDictionary];

            if (!v15)
            {
              LOBYTE(v8) = 0;
LABEL_20:
              objc_autoreleasePoolPop(v14);
              goto LABEL_21;
            }

            v16 = [v8 getDictionary];
            v8 = [v16 objectForKey:@"MOMediaPlayMetaDataKeyPlayerTitle"];

            if (v8 && [v8 isEqualToString:v6])
            {

              LOBYTE(v8) = 1;
              goto LABEL_20;
            }

            objc_autoreleasePoolPop(v14);
          }

          v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
          LOBYTE(v8) = 0;
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        LOBYTE(v8) = 0;
      }

LABEL_21:
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)getPlayedMediaBundleDailyForThirdPartyApp:(id)a3 mediaTypeEnum:(unint64_t)a4 parameters:(id)a5 songOnRepeatBundles:(id)a6
{
  v9 = a3;
  v89 = a5;
  v10 = a6;
  v96 = self;
  v11 = [(MOMediaAggregationManager *)self _groupBundleByApps:v9];
  v77 = objc_opt_new();
  v76 = objc_opt_new();
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v81 = v11;
  obj = [v11 allKeys];
  v82 = [obj countByEnumeratingWithState:&v101 objects:v114 count:16];
  if (v82)
  {
    v80 = *v102;
    v94 = v10;
    v79 = v9;
    do
    {
      for (i = 0; i != v82; i = i + 1)
      {
        if (*v102 != v80)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v101 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        v15 = [v81 objectForKey:v13];
        if ([v9 count])
        {
          v84 = v14;
          v85 = i;
          v93 = objc_opt_new();
          v92 = objc_opt_new();
          v83 = v15;
          v16 = [(MOMediaAggregationManager *)v96 _sortBundlesBySumPlaytime:v15];
          v97 = 0u;
          v98 = 0u;
          v99 = 0u;
          v100 = 0u;
          v88 = v16;
          v91 = [v88 countByEnumeratingWithState:&v97 objects:v113 count:16];
          if (!v91)
          {
            v17 = 0.0;
            v18 = 0.0;
            goto LABEL_38;
          }

          v90 = *v98;
          v17 = 0.0;
          v18 = 0.0;
          while (1)
          {
            for (j = 0; j != v91; j = j + 1)
            {
              if (*v98 != v90)
              {
                objc_enumerationMutation(v88);
              }

              v20 = *(*(&v97 + 1) + 8 * j);
              v21 = [(MOEventBundle *)v20 events];
              v22 = [v21 count];
              v23 = [(MOEventBundle *)v20 resources];
              v24 = [v23 count];

              if (v22 == v24)
              {
                v25 = [(MOEventBundle *)v20 resources];
                v26 = [v25 count];

                if (v26)
                {
                  v27 = 0;
                  while (1)
                  {
                    v28 = objc_autoreleasePoolPush();
                    v29 = [(MOEventBundle *)v20 resources];
                    v30 = [v29 objectAtIndexedSubscript:v27];

                    v31 = [v30 getDictionary];
                    v32 = [v31 objectForKey:@"MOMediaPlayMetaDataKeyPlayerTitle"];

                    if ([(MOMediaAggregationManager *)v96 _isInSongOnRepetBundles:v10 mediaTitle:v32])
                    {
                      break;
                    }

                    v34 = [v30 getDictionary];
                    v35 = [v34 objectForKey:@"media_type"];
                    v36 = [v35 intValue];

                    if (v36 == a4)
                    {
                      v37 = [v30 getDictionary];
                      v33 = [v37 objectForKey:@"MOMediaPlayMetaDataKeyPlayerSumPlaytime"];

                      v38 = [v30 getDictionary];
                      v39 = [v38 objectForKey:@"MOMediaPlayMetaDataKeyPlayerDuration"];

                      v40 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
                      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
                      {
                        v54 = [v30 getDictionary];
                        v86 = [v54 objectForKey:@"MOMediaPlayMetaDataKeyPlayerTitle"];
                        v87 = [MOMediaPlaySession redactString:v86];
                        *buf = 136315906;
                        v106 = "[MOMediaAggregationManager getPlayedMediaBundleDailyForThirdPartyApp:mediaTypeEnum:parameters:songOnRepeatBundles:]";
                        v107 = 2112;
                        v108 = v87;
                        v109 = 2112;
                        v110 = v39;
                        v111 = 2112;
                        v112 = v33;
                        _os_log_debug_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "%s, third party played media with media title inside daily media bundle, %@, duration, %@, total play time, %@", buf, 0x2Au);
                      }

                      if (!v39 || ![v39 intValue] || objc_msgSend(v39, "intValue") >= 1 && ((-[NSObject doubleValue](v33, "doubleValue"), v42 = v41, objc_msgSend(v39, "doubleValue"), v44 = v42 / v43, objc_msgSend(v89, "coarseGranularity_mediaBundleAggregationPodcastPlayTimePercentageThreshold"), v44 >= v45) || (v46 = -[NSObject longValue](v33, "longValue"), objc_msgSend(v89, "coarseGranularity_mediaBundleAggregationPodcastTotalPlayTimeThreshold"), v47 <= v46)))
                      {
                        [v93 addObject:v30];
                        v48 = [(MOEventBundle *)v20 events];
                        v49 = [v48 objectAtIndexedSubscript:v27];
                        [v92 addObject:v49];

                        [v33 doubleValue];
                        v18 = v18 + v50;
                        [v39 doubleValue];
                        v17 = v17 + v51;
                      }

                      v10 = v94;
                      goto LABEL_28;
                    }

LABEL_29:

                    objc_autoreleasePoolPop(v28);
                    ++v27;
                    v52 = [(MOEventBundle *)v20 resources];
                    v53 = [v52 count];

                    if (v53 <= v27)
                    {
                      goto LABEL_34;
                    }
                  }

                  v33 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
                  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 136315394;
                    v106 = "[MOMediaAggregationManager getPlayedMediaBundleDailyForThirdPartyApp:mediaTypeEnum:parameters:songOnRepeatBundles:]";
                    v107 = 2112;
                    v108 = v32;
                    _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "%s, played song filtered by song on repeat bundle with title, %@", buf, 0x16u);
                  }

LABEL_28:

                  goto LABEL_29;
                }
              }

              else
              {
                v55 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
                if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315394;
                  v106 = "[MOMediaAggregationManager getPlayedMediaBundleDailyForThirdPartyApp:mediaTypeEnum:parameters:songOnRepeatBundles:]";
                  v107 = 2112;
                  v108 = v20;
                  _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "%s, media bundle has bad data, %@", buf, 0x16u);
                }
              }

LABEL_34:
              ;
            }

            v91 = [v88 countByEnumeratingWithState:&v97 objects:v113 count:16];
            if (!v91)
            {
LABEL_38:

              v9 = v79;
              if ([v92 count])
              {
                v56 = [(MOMediaAggregationManager *)v96 _sortResourcesBySumPlaytime:v93];
                v57 = [MOEventBundle alloc];
                v58 = [[NSSet alloc] initWithArray:v92];
                v59 = [(MOEventBundle *)v57 initWithEventSet:v58 filtered:0];

                [(MOEventBundle *)v59 setInterfaceType:5];
                v60 = [(MOMediaAggregationManager *)v96 _limitMOResourcesAndUpdatePriority:v56 parameters:v89 isSong:1 isFirstPartyApp:0];
                [(MOEventBundle *)v59 setResources:v60];

                v61 = @"played_media_third_party";
                [(MOEventBundle *)v59 setBundleSuperType:4];
                [(MOEventBundle *)v59 setBundleSubType:408];
                v62 = [v79 firstObject];
                v63 = [v62 promptLanguage];
                v64 = [NSString stringWithFormat:@"%@, etc.", v63];
                [(MOEventBundle *)v59 setPromptLanguage:v64];

                v65 = [[MOAction alloc] initWithActionName:v61 actionType:1 actionSubtype:6];
                [(MOEventBundle *)v59 setAction:v65];

                v66 = [v79 firstObject];
                v67 = [v66 labels];
                [(MOEventBundle *)v59 setLabels:v67];

                [(MOEventBundle *)v59 setIsAggregatedAndSuppressed:1];
                [(MOMediaAggregationManager *)v96 _updateRankingDictionary:v59 mediaLength:0 sumPlaytime:v17 mediaActionIsRepeat:v18];
                v68 = [NSNumber numberWithDouble:v18];
                v69 = [(MOEventBundle *)v59 resources];
                v70 = [v69 firstObject];
                v71 = [v70 getDictionary];
                v72 = [v71 objectForKey:@"MOMediaPlayMetaDataKeyPlayerBundleID"];
                [v76 setValue:v68 forKey:v72];

                [v77 addObject:v59];
                v73 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
                if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315394;
                  v106 = "[MOMediaAggregationManager getPlayedMediaBundleDailyForThirdPartyApp:mediaTypeEnum:parameters:songOnRepeatBundles:]";
                  v107 = 2112;
                  v108 = v59;
                  _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_INFO, "%s, bundle, %@, event category, third party Played Media", buf, 0x16u);
                }

                v10 = v94;
              }

              v14 = v84;
              i = v85;
              v15 = v83;
              break;
            }
          }
        }

        objc_autoreleasePoolPop(v14);
      }

      v82 = [obj countByEnumeratingWithState:&v101 objects:v114 count:16];
    }

    while (v82);
  }

  v74 = [(MOMediaAggregationManager *)v96 _sortAndMergeBundlesForThirdPartyApps:v77 playtimeDict:v76 paramters:v89 mediaActionIsRepeat:0];

  return v74;
}

- (id)_calculateStartDateFromEventBundles:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = +[NSDate distantFuture];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [v10 startDate];
          v12 = [v11 earlierDate:v4];
          v13 = [v10 startDate];

          if (v12 == v13)
          {
            v14 = [v10 startDate];

            v4 = v14;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_calculateEndDateFromEventBundles:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = +[NSDate distantPast];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [v10 endDate];
          v12 = [v11 laterDate:v4];
          v13 = [v10 endDate];

          if (v12 == v13)
          {
            v14 = [v10 endDate];

            v4 = v14;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_megaBundlesForCoarseGranularityFromMediaPlaySessionsBundles:(id)a3 paramters:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v6 count])
  {
    v11 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v77 = [v6 count];
      v12 = "CoarseGranularityAggregation: no needed to generate media bundles since bundles  count is: %lu";
      v13 = v11;
      v14 = 12;
      goto LABEL_7;
    }

LABEL_8:
    v15 = 0;
    goto LABEL_43;
  }

  v8 = [v7 aggregationDateInterval];
  [v8 duration];
  v10 = v9;

  if (v10 < 604800.0)
  {
    v11 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v12 = "CoarseGranularityAggregation for contact: no needed to contact bundles since aggregation time interval is less than 7 days";
      v13 = v11;
      v14 = 2;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, v12, buf, v14);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v64 = objc_opt_new();
  v16 = objc_autoreleasePoolPush();
  v17 = [NSPredicate predicateWithFormat:@"%K = %lu", @"interfaceType", 5];
  v18 = [v6 filteredArrayUsingPredicate:v17];
  if ([v18 count])
  {
    v60 = v17;
    context = v16;
    v62 = v7;
    v63 = v6;
    v19 = objc_opt_new();
    v20 = objc_opt_new();
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    obj = v18;
    v21 = [obj countByEnumeratingWithState:&v70 objects:v75 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v71;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v71 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v70 + 1) + 8 * i);
          v26 = [v25 events];
          v27 = [v26 count];

          if (v27)
          {
            v28 = [v25 events];
            v29 = [v28 firstObject];
            v30 = [(MOMediaAggregationManager *)self _isFirstPartyApp:v29];

            if (v30)
            {
              v31 = v19;
            }

            else
            {
              v31 = v20;
            }

            [v31 addObject:v25];
          }
        }

        v22 = [obj countByEnumeratingWithState:&v70 objects:v75 count:16];
      }

      while (v22);
    }

    v32 = +[NSCalendar currentCalendar];
    v33 = [NSDate alloc];
    v34 = +[NSDate date];
    v35 = [v33 initWithTimeInterval:v34 sinceDate:-604800.0];
    v36 = [v32 startOfDayForDate:v35];

    v37 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v77 = v36;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "CoarseGranularityAggregation for media: the earliest date for media bundle to be aggregated for coarse granularity: %@", buf, 0xCu);
    }

    v38 = +[NSDate date];
    v39 = [(MOMediaAggregationManager *)self _getEventBundleBasedOnMediaTypeEnum:v19 playSessionMediaType:1 startTime:v36 endTime:v38];

    v58 = v39;
    v7 = v62;
    v40 = [(MOMediaAggregationManager *)self _getMediaOnRepeatMegaBundle:v39 mediaTypeEnum:1 parameters:v62];
    if (v40)
    {
      [v64 addObject:v40];
    }

    v57 = v40;
    v41 = +[NSDate date];
    v42 = [(MOMediaAggregationManager *)self _getEventBundleBasedOnMediaTypeEnum:v19 playSessionMediaType:2 startTime:v36 endTime:v41];

    v56 = v42;
    v43 = [(MOMediaAggregationManager *)self _getPlayedMediaMegaBundle:v42 mediaTypeEnum:2 paramters:v62];
    if (v43)
    {
      [v64 addObject:v43];
    }

    v55 = v43;
    v44 = +[NSDate date];
    v45 = [(MOMediaAggregationManager *)self _getEventBundleBasedOnMediaTypeEnum:v20 playSessionMediaType:5 startTime:v36 endTime:v44];

    v46 = [(MOMediaAggregationManager *)self _getMediaOnRepeatMegaBundleForThirdParty:v45 mediaTypeEnum:5 parameters:v62];
    if (v46)
    {
      [v64 addObject:v46];
    }

    v59 = v36;
    v47 = [(MOMediaAggregationManager *)self _getPlayedMediaMegaBundleForThirdParty:v45 mediaTypeEnum:5 paramters:v62];
    if (v47)
    {
      [v64 addObject:v47];
    }

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v48 = v64;
    v49 = [v48 countByEnumeratingWithState:&v66 objects:v74 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v67;
      do
      {
        for (j = 0; j != v50; j = j + 1)
        {
          if (*v67 != v51)
          {
            objc_enumerationMutation(v48);
          }

          [*(*(&v66 + 1) + 8 * j) setSummarizationGranularity:2];
        }

        v50 = [v48 countByEnumeratingWithState:&v66 objects:v74 count:16];
      }

      while (v50);
    }

    objc_autoreleasePoolPop(context);
    v11 = v48;
    v15 = v11;
    v6 = v63;
  }

  else
  {
    v53 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "CoarseGranularityAggregation: media play sessions bundles are filtered.", buf, 2u);
    }

    objc_autoreleasePoolPop(v16);
    v15 = 0;
    v11 = v64;
  }

LABEL_43:

  return v15;
}

- (id)_getMediaOnRepeatMegaBundle:(id)a3 mediaTypeEnum:(unint64_t)a4 parameters:(id)a5
{
  v8 = a3;
  v78 = a5;
  if ([v8 count])
  {
    v79 = objc_opt_new();
    v80 = objc_opt_new();
    v77 = self;
    [(MOMediaAggregationManager *)self _createMediaDictionaryFromBundles:v8];
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v83 = v103 = 0u;
    obj = [v83 allKeys];
    v84 = [obj countByEnumeratingWithState:&v100 objects:v113 count:16];
    if (v84)
    {
      v82 = *v101;
      v9 = 0.0;
      v10 = 0.0;
      do
      {
        for (i = 0; i != v84; i = i + 1)
        {
          if (*v101 != v82)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v100 + 1) + 8 * i);
          v13 = objc_autoreleasePoolPush();
          v95 = v12;
          v14 = [v83 objectForKeyedSubscript:v12];
          v88 = objc_opt_new();
          v96 = 0u;
          v97 = 0u;
          v98 = 0u;
          v99 = 0u;
          v15 = v14;
          v94 = [v15 countByEnumeratingWithState:&v96 objects:v112 count:16];
          if (v94)
          {
            v85 = v13;
            v86 = i;
            v89 = 0;
            v16 = *v97;
            v17 = 0.0;
            v18 = 0.0;
            v93 = v15;
            v91 = 0;
            v92 = *v97;
            do
            {
              v19 = 0;
              do
              {
                if (*v97 != v16)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v96 + 1) + 8 * v19);
                v21 = [(MOEventBundle *)v20 events];
                v22 = [v21 count];
                v23 = [(MOEventBundle *)v20 resources];
                v24 = [v23 count];

                if (v22 == v24)
                {
                  v25 = [(MOEventBundle *)v20 resources];
                  v26 = [v25 count];

                  if (!v26)
                  {
                    goto LABEL_23;
                  }

                  v27 = 0;
                  while (1)
                  {
                    v28 = objc_autoreleasePoolPush();
                    v29 = [(MOEventBundle *)v20 resources];
                    v30 = [v29 objectAtIndexedSubscript:v27];

                    v31 = [v30 getDictionary];
                    v32 = [v31 objectForKey:@"media_type"];
                    v33 = [v32 intValue];

                    if (v33 == a4)
                    {
                      v34 = [v30 getDictionary];
                      v35 = [v34 objectForKey:@"MOMediaPlayMetaDataKeyPlayerTitle"];

                      if ([v35 isEqualToString:v95])
                      {
                        if (!v91)
                        {
                          v39 = [v30 getDictionary];
                          v91 = [v39 objectForKey:@"MOMediaPlayMetaDataKeyPlayerDuration"];
                        }

                        v40 = [v30 getDictionary];
                        v90 = [v40 objectForKey:@"MOMediaPlayMetaDataKeyPlayerSumPlaytime"];

                        v41 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
                        v16 = v92;
                        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
                        {
                          v87 = [MOMediaPlaySession redactString:v35];
                          *buf = 136315906;
                          v105 = "[MOMediaAggregationManager _getMediaOnRepeatMegaBundle:mediaTypeEnum:parameters:]";
                          v106 = 2112;
                          v107 = v87;
                          v108 = 2112;
                          v109 = v91;
                          v110 = 2112;
                          v111 = *&v90;
                          _os_log_debug_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "%s, media title inside media on repeat weekly summary bundle, %@, duration, %@, total play time, %@", buf, 0x2Au);
                        }

                        [v90 doubleValue];
                        v18 = v18 + v42;
                        v10 = v10 + v18;
                        [v91 doubleValue];
                        v17 = v17 + v43;
                        v9 = v9 + v17;
                        v44 = [(MOEventBundle *)v20 events];
                        v45 = [v44 objectAtIndexedSubscript:v27];
                        [v88 addObject:v45];

                        objc_autoreleasePoolPop(v28);
                        v89 = v30;
                        v15 = v93;
                        goto LABEL_23;
                      }
                    }

                    objc_autoreleasePoolPop(v28);
                    ++v27;
                    v36 = [(MOEventBundle *)v20 resources];
                    v37 = [v36 count];

                    if (v37 <= v27)
                    {
                      v16 = v92;
                      v15 = v93;
                      goto LABEL_23;
                    }
                  }
                }

                v38 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
                if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315394;
                  v105 = "[MOMediaAggregationManager _getMediaOnRepeatMegaBundle:mediaTypeEnum:parameters:]";
                  v106 = 2112;
                  v107 = v20;
                  _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "%s, media bundle has bad data, %@", buf, 0x16u);
                }

LABEL_23:
                v19 = v19 + 1;
              }

              while (v19 != v94);
              v46 = [v15 countByEnumeratingWithState:&v96 objects:v112 count:16];
              v94 = v46;
            }

            while (v46);

            if (v89)
            {
              v13 = v85;
              i = v86;
              v47 = v91;
              if ([v88 count] && v91 && objc_msgSend(v91, "intValue") >= 1 && (objc_msgSend(v91, "doubleValue"), v18 / v48 >= 2.95))
              {
                v50 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
                if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
                {
                  v51 = [v89 getDictionary];
                  v52 = [v51 objectForKey:@"MOMediaPlayMetaDataKeyPlayerTitle"];
                  v53 = [MOMediaPlaySession redactString:v52];
                  *buf = 136315906;
                  v105 = "[MOMediaAggregationManager _getMediaOnRepeatMegaBundle:mediaTypeEnum:parameters:]";
                  v106 = 2112;
                  v107 = v53;
                  v108 = 2112;
                  v109 = v91;
                  v110 = 2048;
                  v111 = v18;
                  _os_log_debug_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEBUG, "%s, media on repeat weekly summary with media title, %@, duration, %@, total play time, %lf", buf, 0x2Au);
                }

                v49 = v89;
                [v79 addObject:v89];
                [v80 addObjectsFromArray:v88];
              }

              else
              {
                v49 = v89;
              }
            }

            else
            {
              v49 = 0;
              v13 = v85;
              i = v86;
              v47 = v91;
            }
          }

          else
          {

            v47 = 0;
            v49 = 0;
          }

          objc_autoreleasePoolPop(v13);
        }

        v84 = [obj countByEnumeratingWithState:&v100 objects:v113 count:16];
      }

      while (v84);
    }

    else
    {
      v9 = 0.0;
      v10 = 0.0;
    }

    v55 = v79;
    if ([v79 count])
    {
      v56 = [MOEventBundle alloc];
      v57 = [[NSSet alloc] initWithArray:v80];
      v54 = [(MOEventBundle *)v56 initWithEventSet:v57 filtered:0];

      v58 = [(MOMediaAggregationManager *)v77 _sortResourcesBySumPlaytime:v79];
      [(MOEventBundle *)v54 setInterfaceType:5];
      v59 = @"song_on_repeat";
      if ([v79 count] >= 2)
      {
        v60 = @"songs_on_repeat";

        v59 = v60;
      }

      [(MOEventBundle *)v54 setBundleSuperType:4];
      [(MOEventBundle *)v54 setBundleSubType:404];
      v61 = [v8 firstObject];
      v62 = [v61 promptLanguage];
      v63 = [NSString stringWithFormat:@"%@, etc.", v62];
      [(MOEventBundle *)v54 setPromptLanguage:v63];

      v64 = [[MOAction alloc] initWithActionName:v59 actionType:1 actionSubtype:6];
      [(MOEventBundle *)v54 setAction:v64];

      v65 = [v80 firstObject];
      v66 = [v65 eventIdentifier];
      v67 = [(MOEventBundle *)v54 action];
      [v67 setSourceEventIdentifier:v66];

      v68 = [(MOMediaAggregationManager *)v77 _limitMOResourcesAndUpdatePriority:v58 parameters:v78 isSong:1 isFirstPartyApp:1];
      [(MOEventBundle *)v54 setResources:v68];

      v69 = +[NSCalendar currentCalendar];
      v70 = [NSDate alloc];
      v71 = +[NSDate date];
      v72 = [v70 initWithTimeInterval:v71 sinceDate:-604800.0];
      v73 = [v69 startOfDayForDate:v72];
      [(MOEventBundle *)v54 setStartDate:v73];

      v74 = +[NSDate date];
      [(MOEventBundle *)v54 setEndDate:v74];

      [(MOMediaAggregationManager *)v77 _updateRankingDictionary:v54 mediaLength:1 sumPlaytime:v9 mediaActionIsRepeat:v10];
      v75 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
      if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v105 = "[MOMediaAggregationManager _getMediaOnRepeatMegaBundle:mediaTypeEnum:parameters:]";
        v106 = 2112;
        v107 = v54;
        _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_INFO, "%s, bundle, %@, event category, Song on repeat mega bundle", buf, 0x16u);
      }

      v55 = v79;
    }

    else
    {
      v54 = 0;
    }
  }

  else
  {
    v54 = 0;
  }

  return v54;
}

- (id)_getMediaOnRepeatMegaBundleForThirdParty:(id)a3 mediaTypeEnum:(unint64_t)a4 parameters:(id)a5
{
  v7 = a3;
  v8 = a5;
  if ([v7 count])
  {
    v88 = v8;
    v89 = v7;
    v93 = self;
    v9 = [(MOMediaAggregationManager *)self _groupBundleByApps:v7];
    v87 = objc_opt_new();
    v86 = objc_opt_new();
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    v123 = 0u;
    v91 = v9;
    obj = [v9 allKeys];
    v92 = [obj countByEnumeratingWithState:&v120 objects:v134 count:16];
    if (!v92)
    {
      goto LABEL_57;
    }

    v90 = *v121;
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v121 != v90)
        {
          v11 = v10;
          objc_enumerationMutation(obj);
          v10 = v11;
        }

        v94 = v10;
        v12 = *(*(&v120 + 1) + 8 * v10);
        v13 = objc_opt_new();
        v95 = objc_opt_new();
        v14 = [v91 objectForKeyedSubscript:v12];
        v15 = [(MOMediaAggregationManager *)v93 _createMediaDictionaryFromBundles:v14];

        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v99 = v15;
        v96 = [v15 allKeys];
        v97 = v13;
        v100 = [v96 countByEnumeratingWithState:&v116 objects:v133 count:16];
        if (!v100)
        {
          v16 = 0.0;
          v17 = 0.0;
          goto LABEL_51;
        }

        v98 = *v117;
        v16 = 0.0;
        v17 = 0.0;
        do
        {
          for (i = 0; i != v100; i = i + 1)
          {
            if (*v117 != v98)
            {
              objc_enumerationMutation(v96);
            }

            v102 = i;
            v19 = *(*(&v116 + 1) + 8 * i);
            v101 = objc_autoreleasePoolPush();
            v20 = [v99 objectForKeyedSubscript:v19];
            v104 = objc_opt_new();
            v112 = 0u;
            v113 = 0u;
            v114 = 0u;
            v115 = 0u;
            v21 = v20;
            v109 = [v21 countByEnumeratingWithState:&v112 objects:v132 count:16];
            if (!v109)
            {

              v55 = 0;
              v54 = 0;
              goto LABEL_47;
            }

            v105 = 0;
            v107 = v21;
            v108 = 0;
            v22 = *v113;
            v23 = 0.0;
            v24 = 0.0;
            v106 = *v113;
            do
            {
              for (j = 0; j != v109; j = j + 1)
              {
                if (*v113 != v22)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = *(*(&v112 + 1) + 8 * j);
                context = objc_autoreleasePoolPush();
                v27 = [(MOEventBundle *)v26 events];
                v28 = [v27 count];
                v29 = [(MOEventBundle *)v26 resources];
                v30 = [v29 count];

                if (v28 != v30)
                {
                  v44 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
                  if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
                  {
                    *buf = 136315394;
                    v125 = "[MOMediaAggregationManager _getMediaOnRepeatMegaBundleForThirdParty:mediaTypeEnum:parameters:]";
                    v126 = 2112;
                    v127 = v26;
                    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "%s, third party media bundle has bad data, %@", buf, 0x16u);
                  }

                  goto LABEL_34;
                }

                v31 = [(MOEventBundle *)v26 resources];
                v32 = [v31 count];

                if (!v32)
                {
                  goto LABEL_34;
                }

                v33 = 0;
                while (1)
                {
                  v34 = objc_autoreleasePoolPush();
                  v35 = [(MOEventBundle *)v26 resources];
                  v36 = [v35 objectAtIndexedSubscript:v33];

                  v37 = [v36 getDictionary];
                  v38 = [v37 objectForKey:@"media_type"];
                  v39 = [v38 intValue];

                  if (v39 == a4)
                  {
                    break;
                  }

LABEL_23:

                  objc_autoreleasePoolPop(v34);
                  ++v33;
                  v42 = [(MOEventBundle *)v26 resources];
                  v43 = [v42 count];

                  if (v43 <= v33)
                  {
                    goto LABEL_33;
                  }
                }

                v40 = [v36 getDictionary];
                v41 = [v40 objectForKey:@"MOMediaPlayMetaDataKeyPlayerTitle"];

                if (![v41 isEqualToString:v19])
                {

                  goto LABEL_23;
                }

                v45 = v108;
                if (!v108)
                {
                  v46 = [v36 getDictionary];
                  v45 = [v46 objectForKey:@"MOMediaPlayMetaDataKeyPlayerDuration"];
                }

                v108 = v45;
                v47 = [v36 getDictionary];
                v48 = [v47 objectForKey:@"MOMediaPlayMetaDataKeyPlayerSumPlaytime"];

                v49 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
                if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
                {
                  v103 = [MOMediaPlaySession redactString:v41];
                  *buf = 136315906;
                  v125 = "[MOMediaAggregationManager _getMediaOnRepeatMegaBundleForThirdParty:mediaTypeEnum:parameters:]";
                  v126 = 2112;
                  v127 = v103;
                  v128 = 2112;
                  v129 = v108;
                  v130 = 2112;
                  v131 = *&v48;
                  _os_log_debug_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, "%s, third party media title inside media on repeat weekly summary bundle, %@, duration, %@, total play time, %@", buf, 0x2Au);
                }

                [v48 doubleValue];
                v24 = v24 + v50;
                v17 = v17 + v24;
                [v108 doubleValue];
                v23 = v23 + v51;
                v16 = v16 + v23;
                v52 = [(MOEventBundle *)v26 events];
                v53 = [v52 objectAtIndexedSubscript:v33];
                [v104 addObject:v53];

                objc_autoreleasePoolPop(v34);
                v105 = v36;
LABEL_33:
                v22 = v106;
                v21 = v107;
LABEL_34:
                objc_autoreleasePoolPop(context);
              }

              v109 = [v21 countByEnumeratingWithState:&v112 objects:v132 count:16];
            }

            while (v109);

            v54 = v105;
            if (!v105)
            {
              v13 = v97;
              i = v102;
              goto LABEL_46;
            }

            v13 = v97;
            i = v102;
            if (![v104 count])
            {
              goto LABEL_46;
            }

            v55 = v108;
            if (v108 && [v108 intValue] >= 1)
            {
              [v108 doubleValue];
              if (v24 / v56 >= 2.95)
              {
                v57 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
                if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
                {
                  v58 = [v105 getDictionary];
                  v59 = [v58 objectForKey:@"MOMediaPlayMetaDataKeyPlayerTitle"];
                  v60 = [MOMediaPlaySession redactString:v59];
                  *buf = 136315906;
                  v125 = "[MOMediaAggregationManager _getMediaOnRepeatMegaBundleForThirdParty:mediaTypeEnum:parameters:]";
                  v126 = 2112;
                  v127 = v60;
                  v128 = 2112;
                  v129 = v108;
                  v130 = 2048;
                  v131 = v24;
                  _os_log_debug_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEBUG, "%s, third party media on repeat weekly summary with media title, %@, duration, %@, total play time, %lf", buf, 0x2Au);
                }

                [v97 addObject:v105];
                [v95 addObjectsFromArray:v104];
              }

LABEL_46:
              v55 = v108;
            }

LABEL_47:

            objc_autoreleasePoolPop(v101);
          }

          v100 = [v96 countByEnumeratingWithState:&v116 objects:v133 count:16];
        }

        while (v100);
LABEL_51:

        if ([v13 count])
        {
          v61 = [MOEventBundle alloc];
          v62 = [[NSSet alloc] initWithArray:v95];
          v63 = [(MOEventBundle *)v61 initWithEventSet:v62 filtered:0];

          v64 = [(MOMediaAggregationManager *)v93 _sortResourcesBySumPlaytime:v13];
          [(MOEventBundle *)v63 setInterfaceType:5];
          v65 = @"media_on_repeat_third_party";
          [(MOEventBundle *)v63 setBundleSuperType:4];
          [(MOEventBundle *)v63 setBundleSubType:409];
          v66 = [v89 firstObject];
          v67 = [v66 promptLanguage];
          v68 = [NSString stringWithFormat:@"%@, etc.", v67];
          [(MOEventBundle *)v63 setPromptLanguage:v68];

          v69 = [[MOAction alloc] initWithActionName:v65 actionType:1 actionSubtype:6];
          [(MOEventBundle *)v63 setAction:v69];

          v70 = [(MOMediaAggregationManager *)v93 _limitMOResourcesAndUpdatePriority:v64 parameters:v88 isSong:1 isFirstPartyApp:0];
          [(MOEventBundle *)v63 setResources:v70];

          v71 = +[NSCalendar currentCalendar];
          v72 = [NSDate alloc];
          v73 = +[NSDate date];
          v74 = [v72 initWithTimeInterval:v73 sinceDate:-604800.0];
          v75 = [v71 startOfDayForDate:v74];
          [(MOEventBundle *)v63 setStartDate:v75];

          v76 = +[NSDate date];
          [(MOEventBundle *)v63 setEndDate:v76];

          [(MOEventBundle *)v63 setIsAggregatedAndSuppressed:1];
          [(MOMediaAggregationManager *)v93 _updateRankingDictionary:v63 mediaLength:1 sumPlaytime:v16 mediaActionIsRepeat:v17];
          v77 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
          if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v125 = "[MOMediaAggregationManager _getMediaOnRepeatMegaBundleForThirdParty:mediaTypeEnum:parameters:]";
            v126 = 2112;
            v127 = v63;
            _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_INFO, "%s, bundle, %@, event category, third party Media on repeat mega bundle", buf, 0x16u);
          }

          v78 = [NSNumber numberWithDouble:v17];
          v79 = [(MOEventBundle *)v63 resources];
          v80 = [v79 firstObject];
          v81 = [v80 getDictionary];
          v82 = [v81 objectForKey:@"MOMediaPlayMetaDataKeyPlayerBundleID"];
          [v86 setValue:v78 forKey:v82];

          [v87 addObject:v63];
          v13 = v97;
        }

        v10 = v94 + 1;
      }

      while ((v94 + 1) != v92);
      v92 = [obj countByEnumeratingWithState:&v120 objects:v134 count:16];
      if (!v92)
      {
LABEL_57:

        v8 = v88;
        v83 = [(MOMediaAggregationManager *)v93 _sortAndMergeBundlesForThirdPartyApps:v87 playtimeDict:v86 paramters:v88 mediaActionIsRepeat:1];

        v7 = v89;
        goto LABEL_59;
      }
    }
  }

  v83 = 0;
LABEL_59:

  return v83;
}

- (id)_getPlayedMediaMegaBundle:(id)a3 mediaTypeEnum:(unint64_t)a4 paramters:(id)a5
{
  v8 = a3;
  v86 = a5;
  if ([v8 count])
  {
    v9 = objc_opt_new();
    v84 = self;
    v85 = objc_opt_new();
    [(MOMediaAggregationManager *)self _createMediaDictionaryFromBundles:v8];
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v91 = v111 = 0u;
    obj = [v91 allKeys];
    v88 = v9;
    v89 = v8;
    v92 = [obj countByEnumeratingWithState:&v108 objects:v121 count:16];
    if (v92)
    {
      v90 = *v109;
      v10 = 0.0;
      v11 = 0.0;
      do
      {
        for (i = 0; i != v92; i = i + 1)
        {
          if (*v109 != v90)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v108 + 1) + 8 * i);
          v14 = objc_autoreleasePoolPush();
          v101 = v13;
          v15 = [v91 objectForKeyedSubscript:v13];
          v100 = objc_opt_new();
          v104 = 0u;
          v105 = 0u;
          v106 = 0u;
          v107 = 0u;
          v16 = v15;
          v97 = [v16 countByEnumeratingWithState:&v104 objects:v120 count:16];
          if (v97)
          {
            v93 = v14;
            v94 = i;
            v102 = 0;
            v103 = 0;
            v95 = *v105;
            v96 = v16;
            v17 = 0.0;
            v18 = 0.0;
            do
            {
              v19 = 0;
              do
              {
                if (*v105 != v95)
                {
                  objc_enumerationMutation(v16);
                }

                v99 = v19;
                v20 = *(*(&v104 + 1) + 8 * v19);
                context = objc_autoreleasePoolPush();
                v21 = [(MOEventBundle *)v20 events];
                v22 = [v21 count];
                v23 = [(MOEventBundle *)v20 resources];
                v24 = [v23 count];

                if (v22 == v24)
                {
                  v25 = [(MOEventBundle *)v20 resources];
                  v26 = [v25 count];

                  if (v26)
                  {
                    v27 = 0;
                    do
                    {
                      v28 = objc_autoreleasePoolPush();
                      v29 = [(MOEventBundle *)v20 resources];
                      v30 = [v29 objectAtIndexedSubscript:v27];

                      v31 = [v30 getDictionary];
                      v32 = [v31 objectForKey:@"media_type"];
                      v33 = [v32 intValue];

                      if (v33 == a4)
                      {
                        v34 = [v30 getDictionary];
                        v35 = [v34 objectForKey:@"MOMediaPlayMetaDataKeyPlayerTitle"];

                        if ([v35 isEqualToString:v101])
                        {
                          v36 = v103;
                          if (!v103)
                          {
                            v37 = [v30 getDictionary];
                            v36 = [v37 objectForKey:@"MOMediaPlayMetaDataKeyPlayerDuration"];
                          }

                          v103 = v36;
                          v38 = a4;
                          v39 = [v30 getDictionary];
                          v40 = [v39 objectForKey:@"MOMediaPlayMetaDataKeyPlayerSumPlaytime"];

                          v41 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
                          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
                          {
                            v49 = [MOMediaPlaySession redactString:v35];
                            *buf = 136315906;
                            v113 = "[MOMediaAggregationManager _getPlayedMediaMegaBundle:mediaTypeEnum:paramters:]";
                            v114 = 2112;
                            v115 = v49;
                            v116 = 2112;
                            v117 = v103;
                            v118 = 2112;
                            v119 = v40;
                            _os_log_debug_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "%s, played media with media title insdie weekly summary bundle, %@, duration, %@, total play time, %@", buf, 0x2Au);
                          }

                          [v40 doubleValue];
                          v18 = v18 + v42;
                          v11 = v11 + v18;
                          [v103 doubleValue];
                          v17 = v17 + v43;
                          v10 = v10 + v17;
                          v44 = v30;

                          v45 = [(MOEventBundle *)v20 events];
                          v46 = [v45 objectAtIndexedSubscript:v27];
                          [v100 addObject:v46];

                          v102 = v44;
                          a4 = v38;
                        }
                      }

                      objc_autoreleasePoolPop(v28);
                      ++v27;
                      v47 = [(MOEventBundle *)v20 resources];
                      v48 = [v47 count];
                    }

                    while (v48 > v27);
                  }
                }

                else
                {
                  v50 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
                  if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
                  {
                    *buf = 136315394;
                    v113 = "[MOMediaAggregationManager _getPlayedMediaMegaBundle:mediaTypeEnum:paramters:]";
                    v114 = 2112;
                    v115 = v20;
                    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "%s, media bundle has bad data, %@", buf, 0x16u);
                  }
                }

                objc_autoreleasePoolPop(context);
                v19 = v99 + 1;
                v16 = v96;
              }

              while ((v99 + 1) != v97);
              v97 = [v96 countByEnumeratingWithState:&v104 objects:v120 count:16];
            }

            while (v97);

            v51 = v102;
            if (v102)
            {
              v9 = v88;
              v8 = v89;
              v14 = v93;
              i = v94;
              if ([v100 count])
              {
                if (v103 && [v103 intValue] >= 1 && (v52 = v18 / objc_msgSend(v103, "longValue"), objc_msgSend(v86, "coarseGranularity_mediaBundleAggregationPodcastPlayTimePercentageThreshold"), v52 >= v53) || (objc_msgSend(v86, "coarseGranularity_mediaBundleAggregationPodcastTotalPlayTimeThreshold"), v18 >= v54))
                {
                  [v88 addObject:v102];
                  [v85 addObjectsFromArray:v100];
                }
              }
            }

            else
            {
              v9 = v88;
              v8 = v89;
              v14 = v93;
              i = v94;
            }

            v55 = v103;
          }

          else
          {

            v55 = 0;
            v51 = 0;
          }

          objc_autoreleasePoolPop(v14);
        }

        v92 = [obj countByEnumeratingWithState:&v108 objects:v121 count:16];
      }

      while (v92);
    }

    else
    {
      v10 = 0.0;
      v11 = 0.0;
    }

    if ([v9 count])
    {
      v57 = objc_autoreleasePoolPush();
      v58 = [(MOMediaAggregationManager *)v84 _sortResourcesBySumPlaytime:v9];
      objc_autoreleasePoolPop(v57);
      v59 = [MOEventBundle alloc];
      v60 = [[NSSet alloc] initWithArray:v85];
      v56 = [(MOEventBundle *)v59 initWithEventSet:v60 filtered:0];

      v61 = objc_autoreleasePoolPush();
      [(MOEventBundle *)v56 setInterfaceType:5];
      v62 = [(MOMediaAggregationManager *)v84 _limitMOResourcesAndUpdatePriority:v58 parameters:v86 isSong:0 isFirstPartyApp:1];
      [(MOEventBundle *)v56 setResources:v62];

      v63 = [(MOEventBundle *)v56 resources];
      v64 = [v63 firstObject];
      v65 = [v64 getDictionary];
      v66 = [v65 objectForKey:@"MOMediaPlayMetaDataKeyPlayerMediaTypeKey"];

      v67 = kMOMediaPlayAnnotationManagerStringPrefixPlayedPodcasts;
      if ([v9 count] <= 1 && !objc_msgSend(v66, "isEqualToString:", MOMediaPlayMetaDataKeyPlayerMediaTypePodcastArtist[0]))
      {
        v67 = kMOMediaPlayAnnotationManagerStringPrefixPlayedPodcast;
      }

      v68 = *v67;
      [(MOEventBundle *)v56 setBundleSuperType:4];
      [(MOEventBundle *)v56 setBundleSubType:405];
      v69 = [v8 firstObject];
      v70 = [v69 promptLanguage];
      v71 = [NSString stringWithFormat:@"%@, etc.", v70];
      [(MOEventBundle *)v56 setPromptLanguage:v71];

      v72 = [[MOAction alloc] initWithActionName:v68 actionType:1 actionSubtype:6];
      [(MOEventBundle *)v56 setAction:v72];

      v73 = [v85 firstObject];
      v74 = [v73 eventIdentifier];
      v75 = [(MOEventBundle *)v56 action];
      [v75 setSourceEventIdentifier:v74];

      v76 = +[NSCalendar currentCalendar];
      v77 = [NSDate alloc];
      v78 = +[NSDate date];
      v79 = [v77 initWithTimeInterval:v78 sinceDate:-604800.0];
      v80 = [v76 startOfDayForDate:v79];
      [(MOEventBundle *)v56 setStartDate:v80];

      v81 = +[NSDate date];
      [(MOEventBundle *)v56 setEndDate:v81];

      [(MOMediaAggregationManager *)v84 _updateRankingDictionary:v56 mediaLength:0 sumPlaytime:v10 mediaActionIsRepeat:v11];
      v82 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
      if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v113 = "[MOMediaAggregationManager _getPlayedMediaMegaBundle:mediaTypeEnum:paramters:]";
        v114 = 2112;
        v115 = v56;
        _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_INFO, "%s, bundle, %@, event category, Played Media mega bundle", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v61);
      v9 = v88;
      v8 = v89;
    }

    else
    {
      v56 = 0;
    }
  }

  else
  {
    v56 = 0;
  }

  return v56;
}

- (id)_getPlayedMediaMegaBundleForThirdParty:(id)a3 mediaTypeEnum:(unint64_t)a4 paramters:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v8 count])
  {
    v10 = [(MOMediaAggregationManager *)self _groupBundleByApps:v8];
    v94 = objc_opt_new();
    v93 = objc_opt_new();
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v96 = v10;
    obj = [v10 allKeys];
    v97 = [obj countByEnumeratingWithState:&v128 objects:v142 count:16];
    if (!v97)
    {
      goto LABEL_59;
    }

    v95 = *v129;
    v102 = v9;
    v103 = v8;
    v104 = self;
    v115 = a4;
    while (1)
    {
      v11 = 0;
      do
      {
        if (*v129 != v95)
        {
          v12 = v11;
          objc_enumerationMutation(obj);
          v11 = v12;
        }

        v99 = v11;
        v13 = *(*(&v128 + 1) + 8 * v11);
        v98 = objc_autoreleasePoolPush();
        v14 = objc_opt_new();
        v100 = objc_opt_new();
        v15 = [v96 objectForKeyedSubscript:v13];
        v16 = [(MOMediaAggregationManager *)self _createMediaDictionaryFromBundles:v15];

        v126 = 0u;
        v127 = 0u;
        v124 = 0u;
        v125 = 0u;
        v107 = v16;
        v101 = [v16 allKeys];
        v105 = v14;
        v108 = [v101 countByEnumeratingWithState:&v124 objects:v141 count:16];
        if (!v108)
        {
          v17 = 0.0;
          v18 = 0.0;
          goto LABEL_50;
        }

        v106 = *v125;
        v17 = 0.0;
        v18 = 0.0;
        do
        {
          for (i = 0; i != v108; i = i + 1)
          {
            if (*v125 != v106)
            {
              objc_enumerationMutation(v101);
            }

            v20 = *(*(&v124 + 1) + 8 * i);
            v21 = objc_autoreleasePoolPush();
            v117 = v20;
            v22 = [v107 objectForKeyedSubscript:v20];
            v116 = objc_opt_new();
            v120 = 0u;
            v121 = 0u;
            v122 = 0u;
            v123 = 0u;
            v23 = v22;
            v113 = [v23 countByEnumeratingWithState:&v120 objects:v140 count:16];
            if (v113)
            {
              v109 = v21;
              v110 = i;
              v118 = 0;
              v119 = 0;
              v111 = *v121;
              v112 = v23;
              v24 = 0.0;
              v25 = 0.0;
              do
              {
                for (j = 0; j != v113; j = j + 1)
                {
                  if (*v121 != v111)
                  {
                    objc_enumerationMutation(v23);
                  }

                  v27 = *(*(&v120 + 1) + 8 * j);
                  context = objc_autoreleasePoolPush();
                  v28 = [(MOEventBundle *)v27 events];
                  v29 = [v28 count];
                  v30 = [(MOEventBundle *)v27 resources];
                  v31 = [v30 count];

                  if (v29 == v31)
                  {
                    v32 = [(MOEventBundle *)v27 resources];
                    v33 = [v32 count];

                    if (v33)
                    {
                      v34 = 0;
                      do
                      {
                        v35 = objc_autoreleasePoolPush();
                        v36 = [(MOEventBundle *)v27 resources];
                        v37 = [v36 objectAtIndexedSubscript:v34];

                        v38 = [v37 getDictionary];
                        v39 = [v38 objectForKey:@"media_type"];
                        v40 = [v39 intValue];

                        if (v40 == a4)
                        {
                          v41 = [v37 getDictionary];
                          v42 = [v41 objectForKey:@"MOMediaPlayMetaDataKeyPlayerTitle"];

                          if ([v42 isEqualToString:v117])
                          {
                            v43 = v119;
                            if (!v119)
                            {
                              v44 = [v37 getDictionary];
                              v43 = [v44 objectForKey:@"MOMediaPlayMetaDataKeyPlayerDuration"];
                            }

                            v45 = [v37 getDictionary];
                            v46 = [v45 objectForKey:@"MOMediaPlayMetaDataKeyPlayerSumPlaytime"];

                            v47 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
                            v119 = v43;
                            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
                            {
                              v55 = [MOMediaPlaySession redactString:v42];
                              *buf = 136315906;
                              v133 = "[MOMediaAggregationManager _getPlayedMediaMegaBundleForThirdParty:mediaTypeEnum:paramters:]";
                              v134 = 2112;
                              v135 = v55;
                              v136 = 2112;
                              v137 = v43;
                              v138 = 2112;
                              v139 = v46;
                              _os_log_debug_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEBUG, "%s, third party played media with media title insdie weekly summary bundle, %@, duration, %@, total play time, %@", buf, 0x2Au);
                            }

                            [v46 doubleValue];
                            v25 = v25 + v48;
                            v18 = v18 + v25;
                            [v43 doubleValue];
                            v24 = v24 + v49;
                            v17 = v17 + v24;
                            v50 = v37;

                            v51 = [(MOEventBundle *)v27 events];
                            v52 = [v51 objectAtIndexedSubscript:v34];
                            [v116 addObject:v52];

                            v118 = v50;
                            a4 = v115;
                          }
                        }

                        objc_autoreleasePoolPop(v35);
                        ++v34;
                        v53 = [(MOEventBundle *)v27 resources];
                        v54 = [v53 count];
                      }

                      while (v54 > v34);
                    }
                  }

                  else
                  {
                    v56 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
                    if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
                    {
                      *buf = 136315394;
                      v133 = "[MOMediaAggregationManager _getPlayedMediaMegaBundleForThirdParty:mediaTypeEnum:paramters:]";
                      v134 = 2112;
                      v135 = v27;
                      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "%s, third party media bundle has bad data, %@", buf, 0x16u);
                    }
                  }

                  objc_autoreleasePoolPop(context);
                  v23 = v112;
                }

                v113 = [v112 countByEnumeratingWithState:&v120 objects:v140 count:16];
              }

              while (v113);

              if (v118)
              {
                v9 = v102;
                v8 = v103;
                self = v104;
                v14 = v105;
                v21 = v109;
                i = v110;
                if ([v116 count])
                {
                  v57 = v119;
                  if (!v119 || ![v119 intValue] || objc_msgSend(v119, "intValue") >= 1 && (v58 = v25 / objc_msgSend(v119, "longValue"), objc_msgSend(v102, "coarseGranularity_mediaBundleAggregationPodcastPlayTimePercentageThreshold"), v58 >= v59))
                  {
                    v60 = v118;
                    [v105 addObject:v118];
                    [v100 addObjectsFromArray:v116];
                    goto LABEL_46;
                  }
                }

                else
                {
                  v57 = v119;
                }

                v60 = v118;
              }

              else
              {
                v60 = 0;
                v9 = v102;
                v8 = v103;
                self = v104;
                v14 = v105;
                v21 = v109;
                i = v110;
                v57 = v119;
              }
            }

            else
            {

              v57 = 0;
              v60 = 0;
            }

LABEL_46:

            objc_autoreleasePoolPop(v21);
          }

          v108 = [v101 countByEnumeratingWithState:&v124 objects:v141 count:16];
        }

        while (v108);
LABEL_50:

        if ([v14 count])
        {
          v61 = [(MOMediaAggregationManager *)self _sortResourcesBySumPlaytime:v14];
          v62 = [MOEventBundle alloc];
          v63 = [[NSSet alloc] initWithArray:v100];
          v64 = [(MOEventBundle *)v62 initWithEventSet:v63 filtered:0];

          [(MOEventBundle *)v64 setInterfaceType:5];
          v65 = [(MOMediaAggregationManager *)self _limitMOResourcesAndUpdatePriority:v61 parameters:v9 isSong:0 isFirstPartyApp:0];
          [(MOEventBundle *)v64 setResources:v65];

          v66 = [(MOEventBundle *)v64 resources];
          v67 = [v66 firstObject];
          v68 = [v67 getDictionary];
          v69 = [v68 objectForKey:@"MOMediaPlayMetaDataKeyPlayerMediaTypeKey"];

          v70 = [v14 count];
          v71 = @"played_podcasts";
          if (v70 <= 1)
          {
            v72 = [v69 isEqualToString:MOMediaPlayMetaDataKeyPlayerMediaTypePodcastArtist[0]];
            v71 = @"played_podcast";
            if (v72)
            {
              v71 = @"played_podcasts";
            }
          }

          v73 = v71;
          [(MOEventBundle *)v64 setBundleSuperType:4];
          [(MOEventBundle *)v64 setBundleSubType:410];
          [(MOEventBundle *)v64 setIsAggregatedAndSuppressed:1];
          v74 = [v8 firstObject];
          v75 = [v74 promptLanguage];
          v76 = [NSString stringWithFormat:@"%@, etc.", v75];
          [(MOEventBundle *)v64 setPromptLanguage:v76];

          v77 = [[MOAction alloc] initWithActionName:v73 actionType:1 actionSubtype:6];
          [(MOEventBundle *)v64 setAction:v77];

          v78 = +[NSCalendar currentCalendar];
          v79 = [NSDate alloc];
          v80 = +[NSDate date];
          v81 = [v79 initWithTimeInterval:v80 sinceDate:-604800.0];
          v82 = [v78 startOfDayForDate:v81];
          [(MOEventBundle *)v64 setStartDate:v82];

          v83 = +[NSDate date];
          [(MOEventBundle *)v64 setEndDate:v83];

          [(MOMediaAggregationManager *)v104 _updateRankingDictionary:v64 mediaLength:0 sumPlaytime:v17 mediaActionIsRepeat:v18];
          v84 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
          if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v133 = "[MOMediaAggregationManager _getPlayedMediaMegaBundleForThirdParty:mediaTypeEnum:paramters:]";
            v134 = 2112;
            v135 = v64;
            _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_INFO, "%s, bundle, %@, event category, third party Played Media mega bundle", buf, 0x16u);
          }

          v85 = [NSNumber numberWithDouble:v18];
          v86 = [(MOEventBundle *)v64 resources];
          v87 = [v86 firstObject];
          v88 = [v87 getDictionary];
          v89 = [v88 objectForKey:@"MOMediaPlayMetaDataKeyPlayerBundleID"];
          [v93 setValue:v85 forKey:v89];

          [v94 addObject:v64];
          v9 = v102;
          v8 = v103;
          self = v104;
          v14 = v105;
          a4 = v115;
        }

        objc_autoreleasePoolPop(v98);
        v11 = v99 + 1;
      }

      while ((v99 + 1) != v97);
      v97 = [obj countByEnumeratingWithState:&v128 objects:v142 count:16];
      if (!v97)
      {
LABEL_59:

        v90 = [(MOMediaAggregationManager *)self _sortAndMergeBundlesForThirdPartyApps:v94 playtimeDict:v93 paramters:v9 mediaActionIsRepeat:0];

        goto LABEL_61;
      }
    }
  }

  v90 = 0;
LABEL_61:

  return v90;
}

- (void)_updateMOResourceDictionary:(id)a3 dictKey:(id)a4 dictValue:(id)a5
{
  v7 = a3;
  v26 = a4;
  v8 = a5;
  v9 = [v7 resources];
  v10 = [v9 firstObject];

  if (v10)
  {
    v11 = objc_opt_new();
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v24 = v7;
    obj = [v7 resources];
    v12 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v28;
      do
      {
        v15 = 0;
        do
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v27 + 1) + 8 * v15);
          v17 = objc_autoreleasePoolPush();
          v18 = [v16 getDictionary];
          v19 = [v18 mutableCopy];

          [v19 setObject:v8 forKeyedSubscript:v26];
          v20 = [MOResource alloc];
          v21 = [v16 name];
          v22 = -[MOResource initWithName:type:dict:value:](v20, "initWithName:type:dict:value:", v21, [v16 type], v19, 0.0);

          v23 = [v16 sourceEventIdentifier];
          [(MOResource *)v22 setSourceEventIdentifier:v23];

          -[MOResource setSourceEventAccessType:](v22, "setSourceEventAccessType:", [v16 sourceEventAccessType]);
          [v16 priorityScore];
          [(MOResource *)v22 setPriorityScore:?];
          [v11 addObject:v22];

          objc_autoreleasePoolPop(v17);
          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v13);
    }

    v7 = v24;
    [v24 setResources:v11];
  }
}

- (id)_sortAndMergeBundlesForThirdPartyApps:(id)a3 playtimeDict:(id)a4 paramters:(id)a5 mediaActionIsRepeat:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 count])
  {
    if ([v10 count] == 1)
    {
      v13 = [v10 objectAtIndexedSubscript:0];
      [v13 setIsAggregatedAndSuppressed:0];

      v14 = [v10 firstObject];
      v15 = [v14 events];
      v16 = [MOContextAnnotationUtilities dominantMediaNameFromEvents:v15];

      if (v16)
      {
        v17 = [v16 objectForKeyedSubscript:@"DominantMediaNameKey"];

        if (v17)
        {
          v18 = [v10 objectAtIndexedSubscript:0];
          v19 = [v16 objectForKey:@"DominantMediaNameKey"];
          [(MOMediaAggregationManager *)self _updateMOResourceDictionary:v18 dictKey:@"third_party_dominate_value" dictValue:v19];
        }
      }

      v20 = [v10 firstObject];
    }

    else
    {
      context = v6;
      v84 = self;
      v85 = v12;
      v82 = v11;
      v89 = [v11 keysSortedByValueUsingComparator:&__block_literal_global_152];
      v90 = objc_opt_new();
      v21 = objc_opt_new();
      v91 = 0u;
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v83 = v10;
      v22 = v10;
      v23 = [v22 countByEnumeratingWithState:&v91 objects:v95 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v92;
        v26 = 0.0;
        do
        {
          for (i = 0; i != v24; i = i + 1)
          {
            if (*v92 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v28 = *(*(&v91 + 1) + 8 * i);
            v29 = [v28 events];
            [v21 addObjectsFromArray:v29];

            v30 = [v28 metaDataForRank];
            v31 = [v30 objectForKey:@"MediaLength"];

            if (v31)
            {
              v32 = [v28 metaDataForRank];
              v33 = [v32 objectForKey:@"MediaLength"];
              [v33 doubleValue];
              v26 = v26 + v34;
            }

            v35 = [v28 metaDataForRank];
            v36 = [v35 objectForKey:@"MediaTotalPlayTime"];

            if (v36)
            {
              v37 = [v28 metaDataForRank];
              v38 = [v37 objectForKey:@"MediaTotalPlayTime"];
              [v38 doubleValue];
              v26 = v26 + v39;
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v91 objects:v95 count:16];
        }

        while (v24);
      }

      else
      {
        v26 = 0.0;
      }

      v40 = [MOEventBundle alloc];
      v41 = [[NSSet alloc] initWithArray:v21];
      v42 = [(MOEventBundle *)v40 initWithEventSet:v41 filtered:0];

      v43 = [v22 firstObject];
      -[MOEventBundle setInterfaceType:](v42, "setInterfaceType:", [v43 interfaceType]);

      v44 = [v22 firstObject];
      -[MOEventBundle setBundleSuperType:](v42, "setBundleSuperType:", [v44 bundleSuperType]);

      v45 = [v22 firstObject];
      -[MOEventBundle setBundleSubType:](v42, "setBundleSubType:", [v45 bundleSubType]);

      v46 = [v22 firstObject];
      v47 = [v46 promptLanguage];
      [(MOEventBundle *)v42 setPromptLanguage:v47];

      v48 = [v22 firstObject];
      v49 = [v48 action];
      [(MOEventBundle *)v42 setAction:v49];

      v50 = [v22 firstObject];
      v51 = [v50 labels];
      [(MOEventBundle *)v42 setLabels:v51];

      [(MOMediaAggregationManager *)v84 _updateRankingDictionary:v42 mediaLength:context sumPlaytime:v26 mediaActionIsRepeat:0.0];
      v52 = [v85 mediaBundleMaxResourcesPerBundle];
      v53 = v52;
      v54 = v52;
      v55 = v89;
      v81 = v42;
      if ([v89 count])
      {
        v56 = 0;
        v57 = 0;
        do
        {
          v58 = [v22 objectAtIndexedSubscript:v56];
          v59 = [v58 resources];
          v57 += [v59 count];

          ++v56;
        }

        while ([v89 count] > v56);
      }

      else
      {
        v57 = 0;
      }

      v60 = v57;
      if (v57 >= v54)
      {
        v61 = v53;
      }

      else
      {
        v61 = v57;
      }

      v86 = v61;
      v62 = v61 - 1;
      if (v61 >= 1)
      {
        v63 = 0;
        v64 = 0;
        do
        {
          contexta = objc_autoreleasePoolPush();
          if ([v55 count])
          {
            v65 = 0;
            while (1)
            {
              v66 = [v22 objectAtIndexedSubscript:v65];
              v67 = [v66 resources];
              v68 = [v67 count];

              if (v68 <= v63)
              {
                v74 = v64;
              }

              else
              {
                v69 = [v22 objectAtIndexedSubscript:v65];
                v70 = [v69 resources];
                v71 = [v70 objectAtIndexedSubscript:v63];
                v72 = [v71 copy];

                if (v64)
                {
                  if (v64 > 3)
                  {
                    v73 = (v64 + 297);
                  }

                  else
                  {
                    v73 = (v64 + 199);
                  }
                }

                else
                {
                  v73 = 100.0;
                }

                v55 = v89;
                [v72 setPriorityScore:v73];
                v74 = (v64 + 1);
                [v90 addObject:v72];

                v75 = v64 < v62;
                v64 = v74;
                if (!v75)
                {
                  goto LABEL_45;
                }
              }

              if ([v55 count] <= ++v65)
              {
                goto LABEL_45;
              }
            }
          }

          v74 = v64;
LABEL_45:
          objc_autoreleasePoolPop(contexta);
          ++v63;
          v64 = v74;
        }

        while (v63 != v86);
      }

      v20 = v81;
      [(MOEventBundle *)v81 setResources:v90, v60];
      v76 = [(MOEventBundle *)v81 events];
      v77 = [MOContextAnnotationUtilities dominantMediaNameFromEvents:v76];

      if (v77)
      {
        v78 = [v77 objectForKeyedSubscript:@"DominantMediaNameKey"];

        if (v78)
        {
          v79 = [v77 objectForKey:@"DominantMediaNameKey"];
          [(MOMediaAggregationManager *)v84 _updateMOResourceDictionary:v81 dictKey:@"third_party_dominate_value" dictValue:v79];
        }
      }

      v11 = v82;
      v10 = v83;
      v12 = v85;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)_createMediaDictionaryFromBundles:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v3;
  v22 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v22)
  {
    v21 = *v29;
    do
    {
      v5 = 0;
      do
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = v5;
        v6 = *(*(&v28 + 1) + 8 * v5);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v7 = [v6 resources];
        v8 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v25;
          do
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v25 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v24 + 1) + 8 * i);
              v13 = objc_autoreleasePoolPush();
              v14 = [v12 getDictionary];
              v15 = [v14 objectForKey:@"MOMediaPlayMetaDataKeyPlayerTitle"];

              if (v15)
              {
                v16 = [v4 objectForKeyedSubscript:v15];

                if (!v16)
                {
                  v17 = objc_opt_new();
                  [v4 setObject:v17 forKeyedSubscript:v15];
                }

                v18 = [v4 objectForKeyedSubscript:v15];
                [v18 addObject:v6];
              }

              objc_autoreleasePoolPop(v13);
            }

            v9 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v9);
        }

        v5 = v23 + 1;
      }

      while ((v23 + 1) != v22);
      v22 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v22);
  }

  return v4;
}

@end