@interface MOSummarizationUtilities
+ (BOOL)allPhotoAssetsFromBundleStartDay:(id)a3;
+ (BOOL)bundleHasOneWayRoute:(id)a3 parameters:(id)a4;
+ (BOOL)hasWorkoutRoute:(id)a3;
+ (BOOL)isBundle:(id)a3 insideTheSameDayAsOtherBundle:(id)a4;
+ (BOOL)isBundleWithAssets:(id)a3;
+ (BOOL)isFlightBundle:(id)a3;
+ (BOOL)isOutingBundleFromHomeOrWorkVisit:(id)a3;
+ (BOOL)isOutingBundleInsideOneDay:(id)a3;
+ (BOOL)shouldIncludeVisitIntoActionsFromBundles:(id)a3 forDominantBundle:(id)a4 withParameters:(id)a5;
+ (double)maximumDistanceFromBundle:(id)a3 toBundleCluster:(id)a4;
+ (double)overlappingTimeIntervalBetween:(id)a3 andOtherBundle:(id)a4;
+ (double)workoutTimeIntervalBetweenBundle:(id)a3 andNextBundle:(id)a4;
+ (id)addResourcesFromOutingBundle:(id)a3 toActivityBundle:(id)a4;
+ (id)combineEmotionResources:(id)a3;
+ (id)combineMediaResources:(id)a3;
+ (id)combinePhotoResources:(id)a3;
+ (id)concatenatePlaceNameAndPlaceStart:(id)a3;
+ (id)createActivityMegaBundleFromBundles:(id)a3 withParameters:(id)a4 isCoarseGranularity:(BOOL)a5 isWeeklySummary:(BOOL)a6 timeZoneManager:(id)a7;
+ (id)createDominantBundleFromBundles:(id)a3 withParameters:(id)a4 timeZoneManager:(id)a5;
+ (id)createMegaBundleFromBundles:(id)a3 parameters:(id)a4 timeZoneManager:(id)a5;
+ (id)createMotionActivityMegaBundleFromBundles:(id)a3 withSamePlace:(id)a4 withParameters:(id)a5;
+ (id)createOutingMegaBundleFromBundles:(id)a3 withParameters:(id)a4 isCoarseGranularity:(BOOL)a5 timeZoneManager:(id)a6;
+ (id)createTransitMegaBundleFromBundles:(id)a3 withParameters:(id)a4 isCoarseGranularity:(BOOL)a5 timeZoneManager:(id)a6 groupedOutingBundles:(id)a7;
+ (id)findDuplicatePhotoResourceFromBundle:(id)a3 comparedWithPrimaryBundle:(id)a4;
+ (id)getActionFromBundles:(id)a3 withMainActionSelectionThresholdBasedOnDuration:(float)a4;
+ (id)getActionsFromBundles:(id)a3 withDominantAction:(id)a4;
+ (id)getDominantBundleFromBundles:(id)a3;
+ (id)getInterestingDestination:(id)a3;
+ (id)getPlaceFromBundle:(id)a3;
+ (id)getPlaceFromPlacesSortedByDuration:(id)a3;
+ (id)getResourcesForOutingSummaryBundleWithWorkoutResources:(id)a3 photoResources:(id)a4 mediaResources:(id)a5 emotionResources:(id)a6 shouldUpLevelPhoto:(BOOL)a7;
+ (id)getResourcesForWeeklyWorkoutSummaryBundleWithWorkoutResources:(id)a3 photoResources:(id)a4 mediaResources:(id)a5;
+ (id)getResourcesFromBundles:(id)a3 forSummaryBundle:(id)a4 withParameters:(id)a5;
+ (id)getWorkoutActionsByActionSubtypeFromBundles:(id)a3;
+ (id)mergeOutingBundlesWithInDayWithGroupedBundles:(id)a3 remainingSingletonBundles:(id)a4 parameters:(id)a5 isCoarseGranularity:(BOOL)a6 timeZoneManager:(id)a7;
+ (id)metricForVisitsFromBundle:(id)a3 andNextBundle:(id)a4;
+ (id)sortedActivityEventsFromBundle:(id)a3;
+ (id)sortedBundleBasedOnGoodnessScore:(id)a3;
+ (id)sortedBundleByPhotoAssetsCount:(id)a3;
+ (id)sortedBundleByStartDate:(id)a3;
+ (id)sortedVisitEventsFromBundle:(id)a3;
+ (id)sortedWorkoutBundleByDuration:(id)a3;
+ (id)sortedWorkoutEventsFromBundle:(id)a3;
+ (id)summarizeMotionActivityBundlesWithSamePlaceName:(id)a3 withParameters:(id)a4;
+ (id)workoutMetaDataCreatedForBundles:(id)a3;
+ (void)removeDuplicatePhotoResourceFromBundle:(id)a3 comparedWithPrimaryBundle:(id)a4;
+ (void)removeUnnecessaryResourceFromWorkoutSummaryBundle:(id)a3;
+ (void)setActionsAndPlacesFromBundles:(id)a3 forDominantBundle:(id)a4 withParameters:(id)a5;
+ (void)setActionsAndPlacesFromBundles:(id)a3 forSummaryBundle:(id)a4;
+ (void)setMediaActionForWorkoutBundle:(id)a3 withMediaPlaySessionDominantFactorThreshold:(double)a4 mediaPlaySessionsOverlapsMinimumDistance:(double)a5;
+ (void)updateRankMetaDataFrom:(id)a3 forSummaryBundle:(id)a4;
@end

@implementation MOSummarizationUtilities

+ (double)overlappingTimeIntervalBetween:(id)a3 andOtherBundle:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [NSDateInterval alloc];
  v8 = [v6 startDate];
  v9 = [v6 endDate];

  v10 = [v7 initWithStartDate:v8 endDate:v9];
  v11 = [NSDateInterval alloc];
  v12 = [v5 startDate];
  v13 = [v5 endDate];

  v14 = [v11 initWithStartDate:v12 endDate:v13];
  v15 = [v10 intersectionWithDateInterval:v14];
  [v15 duration];
  v17 = v16;

  return v17;
}

+ (id)findDuplicatePhotoResourceFromBundle:(id)a3 comparedWithPrimaryBundle:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 resources];
  if (![v7 count])
  {

    goto LABEL_25;
  }

  v8 = [v6 resources];
  v9 = [v8 count];

  if (!v9)
  {
LABEL_25:
    v10 = 0;
    goto LABEL_26;
  }

  v10 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v25 = v5;
  obj = [v5 resources];
  v29 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (v29)
  {
    v27 = *v36;
    v28 = v6;
    do
    {
      v11 = 0;
      do
      {
        if (*v36 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v30 = v11;
        v12 = *(*(&v35 + 1) + 8 * v11);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v13 = [v6 resources];
        v14 = [v13 countByEnumeratingWithState:&v31 objects:v41 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v32;
          do
          {
            for (i = 0; i != v15; i = i + 1)
            {
              if (*v32 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v31 + 1) + 8 * i);
              if ([v12 type] == 2 && objc_msgSend(v18, "type") == 2)
              {
                v19 = [v12 assets];
                v20 = [v18 assets];
                v21 = [v19 isEqualToString:v20];

                if (v21)
                {
                  v22 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
                  {
                    v23 = [v12 assets];
                    *buf = 138412290;
                    v40 = v23;
                    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "duplicate photo id, %@", buf, 0xCu);
                  }

                  [v10 addObject:v12];
                }
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v31 objects:v41 count:16];
          }

          while (v15);
        }

        v11 = v30 + 1;
        v6 = v28;
      }

      while ((v30 + 1) != v29);
      v29 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
    }

    while (v29);
  }

  v5 = v25;
LABEL_26:

  return v10;
}

+ (void)removeDuplicatePhotoResourceFromBundle:(id)a3 comparedWithPrimaryBundle:(id)a4
{
  v6 = a3;
  v7 = [a1 findDuplicatePhotoResourceFromBundle:v6 comparedWithPrimaryBundle:a4];
  if ([v7 count])
  {
    v8 = [v6 resources];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __93__MOSummarizationUtilities_removeDuplicatePhotoResourceFromBundle_comparedWithPrimaryBundle___block_invoke;
    v11[3] = &unk_10033B040;
    v12 = v7;
    v9 = [NSPredicate predicateWithBlock:v11];
    v10 = [v8 filteredArrayUsingPredicate:v9];

    [v6 setResources:v10];
  }
}

uint64_t __93__MOSummarizationUtilities_removeDuplicatePhotoResourceFromBundle_comparedWithPrimaryBundle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) containsObject:v3] ^ 1;
  v5 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v3 assets];
    v8 = 138412546;
    v9 = v6;
    v10 = 1024;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "photo id, %@, should keep, %d", &v8, 0x12u);
  }

  return v4;
}

+ (id)getResourcesFromBundles:(id)a3 forSummaryBundle:(id)a4 withParameters:(id)a5
{
  v9 = a3;
  v10 = a4;
  v80 = a5;
  if (![v9 count])
  {
    v57 = 0;
    goto LABEL_60;
  }

  v73 = a1;
  v71 = objc_opt_new();
  v78 = objc_opt_new();
  v76 = objc_opt_new();
  v75 = objc_opt_new();
  v11 = objc_opt_new();
  v77 = objc_opt_new();
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v72 = v9;
  obj = v9;
  v82 = [obj countByEnumeratingWithState:&v98 objects:v104 count:16];
  if (!v82)
  {
    goto LABEL_32;
  }

  v81 = *v99;
  v12 = &GEOPOICategoryGasStation_ptr;
  v83 = v11;
  v84 = v10;
  do
  {
    v13 = 0;
    do
    {
      if (*v99 != v81)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v98 + 1) + 8 * v13);
      v15 = [v12[193] predicateWithFormat:@"type == %lu", 10];
      v16 = [v14 resources];
      v88 = v15;
      v17 = [v16 filteredArrayUsingPredicate:v15];

      if ([v17 count])
      {
        [v78 setObject:v17 forKey:v14];
      }

      v87 = v17;
      v18 = [v12[193] predicateWithFormat:@"type == %lu", 2];
      v19 = [v14 resources];
      v86 = v18;
      v20 = [v19 filteredArrayUsingPredicate:v18];

      if ([v20 count])
      {
        [v76 setObject:v20 forKey:v14];
      }

      v85 = v20;
      v21 = [v12[193] predicateWithFormat:@"type == %lu", 3];
      v22 = [v14 resources];
      v23 = [v22 filteredArrayUsingPredicate:v21];

      if ([v23 count])
      {
        [v75 setObject:v23 forKey:v14];
      }

      v24 = [v12[193] predicateWithFormat:@"type == %lu", 6];
      v25 = [v14 resources];
      v26 = [v25 filteredArrayUsingPredicate:v24];

      if ([v26 count])
      {
        v27 = [v26 copy];
        [v77 addObjectsFromArray:v27];
      }

      v28 = [v10 bundleSuperType];
      if (v28 == 1)
      {
        v29 = [v10 metaDataForRank];
        v5 = [v29 objectForKeyedSubscript:@"VisitDuration"];
        [v5 floatValue];
        v31 = v30;
        [v80 emotionAttachmentBundleDurationThreshold];
        if (v31 < v32)
        {

          v33 = v5;
LABEL_26:
          v42 = v21;
          v43 = [NSPredicate predicateWithFormat:@"type == %lu", 16];
          v44 = [v14 resources];
          v89 = v43;
          v45 = [v44 filteredArrayUsingPredicate:v43];

          if ([v45 count])
          {
            [v83 setObject:v45 forKey:v14];
          }

          v21 = v42;
          v5 = v45;
LABEL_29:

          v89 = v29;
          v5 = v33;
          goto LABEL_30;
        }

        v34 = [v10 bundleSuperType];
        v89 = v29;
        v33 = v5;
        if (v34 != 2)
        {
          goto LABEL_29;
        }
      }

      else if ([v10 bundleSuperType] != 2)
      {
        goto LABEL_30;
      }

      v79 = v21;
      v35 = [v84 metaDataForRank];
      v36 = [v35 objectForKeyedSubscript:@"WorkoutDuration"];
      [v36 floatValue];
      v38 = v37;
      [v80 emotionAttachmentBundleDurationThreshold];
      v40 = v39;

      if (v28 == 1)
      {

        v29 = v89;
        v41 = v38 < v40;
      }

      else
      {
        v41 = v38 < v40;
        v29 = v89;
      }

      v33 = v5;
      v21 = v79;
      if (v41)
      {
        goto LABEL_26;
      }

LABEL_30:

      v13 = v13 + 1;
      v11 = v83;
      v10 = v84;
      v12 = &GEOPOICategoryGasStation_ptr;
    }

    while (v82 != v13);
    v82 = [obj countByEnumeratingWithState:&v98 objects:v104 count:16];
  }

  while (v82);
LABEL_32:

  if ([v10 bundleSubType] == 202)
  {
    v46 = objc_opt_new();
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v47 = [v10 places];
    v48 = [v47 countByEnumeratingWithState:&v94 objects:v103 count:16];
    v49 = v75;
    if (v48)
    {
      v50 = v48;
      v51 = *v95;
      do
      {
        for (i = 0; i != v50; i = i + 1)
        {
          if (*v95 != v51)
          {
            objc_enumerationMutation(v47);
          }

          v53 = [*(*(&v94 + 1) + 8 * i) copy];
          [v53 setPriorityScore:20000.0];
          [v46 addObject:v53];
        }

        v50 = [v47 countByEnumeratingWithState:&v94 objects:v103 count:16];
      }

      while (v50);
    }

    [v10 setPlaces:v46];
    v54 = v78;
    v55 = v76;
    v56 = [v73 getResourcesForWeeklyWorkoutSummaryBundleWithWorkoutResources:v78 photoResources:v76 mediaResources:v75];
    v57 = v71;
    v9 = v72;
    goto LABEL_59;
  }

  if ([v78 count] == 1)
  {
    v58 = [v73 hasWorkoutRoute:v10];
  }

  else
  {
    v58 = 0;
  }

  v46 = objc_opt_new();
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v59 = [v10 places];
  v60 = [v59 countByEnumeratingWithState:&v90 objects:v102 count:16];
  if (v60)
  {
    v61 = v60;
    v62 = *v91;
    do
    {
      for (j = 0; j != v61; j = j + 1)
      {
        if (*v91 != v62)
        {
          objc_enumerationMutation(v59);
        }

        v64 = [*(*(&v90 + 1) + 8 * j) copy];
        v65 = v64;
        v66 = 20000.0;
        if ((v58 & 1) == 0)
        {
          [v64 priorityScore];
          if (v67 == 20000.0)
          {
            goto LABEL_54;
          }

          v66 = 200.0;
        }

        [v65 setPriorityScore:v66];
LABEL_54:
        [v46 addObject:v65];
      }

      v61 = [v59 countByEnumeratingWithState:&v90 objects:v102 count:16];
    }

    while (v61);
  }

  [v10 setPlaces:v46];
  v57 = v71;
  if ((v58 & 1) == 0)
  {
    [v71 addObjectsFromArray:v77];
  }

  v54 = v78;
  v68 = [v78 allKeys];
  v69 = [v68 count] == 0;

  v49 = v75;
  v55 = v76;
  v56 = [v73 getResourcesForOutingSummaryBundleWithWorkoutResources:v78 photoResources:v76 mediaResources:v75 emotionResources:v11 shouldUpLevelPhoto:v69];
  v9 = v72;
LABEL_59:
  [v57 addObjectsFromArray:v56];

LABEL_60:

  return v57;
}

+ (id)getResourcesForWeeklyWorkoutSummaryBundleWithWorkoutResources:(id)a3 photoResources:(id)a4 mediaResources:(id)a5
{
  v7 = a3;
  v25 = a4;
  v24 = a5;
  v8 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v26 = v7;
  obj = [v7 allValues];
  v29 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v29)
  {
    v28 = *v37;
    do
    {
      v9 = 0;
      do
      {
        if (*v37 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v30 = v9;
        v10 = *(*(&v36 + 1) + 8 * v9);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v31 = v10;
        v11 = [v31 countByEnumeratingWithState:&v32 objects:v40 count:{16, v24, v25}];
        if (v11)
        {
          v12 = v11;
          v13 = *v33;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v33 != v13)
              {
                objc_enumerationMutation(v31);
              }

              v15 = *(*(&v32 + 1) + 8 * i);
              v16 = objc_autoreleasePoolPush();
              v17 = [MOResource alloc];
              v18 = [v15 name];
              v19 = [v15 type];
              v20 = [v15 getDictionary];
              [v15 value];
              v21 = [(MOResource *)v17 initWithName:v18 type:v19 dict:v20 value:?];

              v22 = [v15 sourceEventIdentifier];
              [(MOResource *)v21 setSourceEventIdentifier:v22];

              -[MOResource setSourceEventAccessType:](v21, "setSourceEventAccessType:", [v15 sourceEventAccessType]);
              [(MOResource *)v21 setPriorityScore:100.0];
              [v8 addObject:v21];

              objc_autoreleasePoolPop(v16);
            }

            v12 = [v31 countByEnumeratingWithState:&v32 objects:v40 count:16];
          }

          while (v12);
        }

        v9 = v30 + 1;
      }

      while ((v30 + 1) != v29);
      v29 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v29);
  }

  return v8;
}

+ (id)getResourcesForOutingSummaryBundleWithWorkoutResources:(id)a3 photoResources:(id)a4 mediaResources:(id)a5 emotionResources:(id)a6 shouldUpLevelPhoto:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v48 = objc_opt_new();
  v16 = [v12 allValues];
  v17 = [v16 count];

  if (v17)
  {
    v38 = v7;
    v39 = a1;
    v40 = v15;
    v41 = v14;
    v42 = v13;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v43 = v12;
    obj = [v12 allValues];
    v46 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
    if (v46)
    {
      v45 = *v54;
      do
      {
        v18 = 0;
        do
        {
          if (*v54 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v47 = v18;
          v19 = *(*(&v53 + 1) + 8 * v18);
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v20 = v19;
          v21 = [v20 countByEnumeratingWithState:&v49 objects:v57 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v50;
            do
            {
              for (i = 0; i != v22; i = i + 1)
              {
                if (*v50 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = *(*(&v49 + 1) + 8 * i);
                v26 = objc_autoreleasePoolPush();
                v27 = [MOResource alloc];
                v28 = [v25 name];
                v29 = [v25 type];
                v30 = [v25 getDictionary];
                [v25 value];
                v31 = [(MOResource *)v27 initWithName:v28 type:v29 dict:v30 value:?];

                v32 = [v25 sourceEventIdentifier];
                [(MOResource *)v31 setSourceEventIdentifier:v32];

                -[MOResource setSourceEventAccessType:](v31, "setSourceEventAccessType:", [v25 sourceEventAccessType]);
                [(MOResource *)v31 setPriorityScore:100.0];
                [v48 addObject:v31];

                objc_autoreleasePoolPop(v26);
              }

              v22 = [v20 countByEnumeratingWithState:&v49 objects:v57 count:16];
            }

            while (v22);
          }

          v18 = v47 + 1;
        }

        while ((v47 + 1) != v46);
        v46 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
      }

      while (v46);
    }

    v13 = v42;
    v12 = v43;
    v15 = v40;
    v14 = v41;
    a1 = v39;
    v7 = v38;
  }

  v33 = [a1 combinePhotoResources:v13];
  if ([v33 count])
  {
    if (v7)
    {
      v34 = [v33 firstObject];
      [v34 setPriorityScore:100.0];
    }

    [v48 addObjectsFromArray:v33];
  }

  v35 = [a1 combineMediaResources:v14];
  if ([v35 count])
  {
    [v48 addObjectsFromArray:v35];
  }

  v36 = [a1 combineEmotionResources:v15];
  if ([v36 count])
  {
    [v48 addObjectsFromArray:v36];
  }

  return v48;
}

+ (id)combineEmotionResources:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = [v3 allKeys];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:0];
    v9 = [v3 allKeys];
    v32 = v8;
    v40 = v8;
    v10 = [NSArray arrayWithObjects:&v40 count:1];
    v11 = [v9 sortedArrayUsingDescriptors:v10];

    if ([v11 count])
    {
      v12 = 0;
      v13 = 401.0;
      v33 = v11;
      v34 = v3;
      do
      {
        v14 = [v11 objectAtIndexedSubscript:v12];
        v15 = [v3 objectForKey:v14];
        v16 = [v15 count];

        if (v16)
        {
          v17 = [v11 objectAtIndexedSubscript:v12];
          v18 = [v3 objectForKey:v17];

          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v19 = v18;
          v20 = [v19 countByEnumeratingWithState:&v35 objects:v39 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v36;
            do
            {
              v23 = 0;
              do
              {
                if (*v36 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = *(*(&v35 + 1) + 8 * v23);
                v25 = [v24 assets];
                v26 = [v4 containsObject:v25];

                if ((v26 & 1) == 0)
                {
                  if (!v12 && ([v19 firstObject], v27 = objc_claimAutoreleasedReturnValue(), v27, v24 == v27))
                  {
                    v28 = 203.0;
                  }

                  else
                  {
                    v28 = v13;
                    v13 = v13 + 1.0;
                  }

                  [v24 setPriorityScore:v28];
                  [v5 addObject:v24];
                  v29 = [v24 assets];
                  [v4 addObject:v29];
                }

                v23 = v23 + 1;
              }

              while (v21 != v23);
              v30 = [v19 countByEnumeratingWithState:&v35 objects:v39 count:16];
              v21 = v30;
            }

            while (v30);
          }

          v11 = v33;
          v3 = v34;
        }

        ++v12;
      }

      while ([v11 count] > v12);
    }
  }

  return v5;
}

+ (id)combinePhotoResources:(id)a3
{
  v4 = a3;
  v91 = objc_opt_new();
  v5 = [v4 allKeys];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [v4 allKeys];
    v8 = [a1 sortedBundleByPhotoAssetsCount:v7];

    v9 = objc_opt_new();
    v10 = [v8 firstObject];
    v11 = [v4 objectForKey:v10];

    v84 = [[NSSortDescriptor alloc] initWithKey:@"photoCurationScore" ascending:0];
    v97 = v84;
    v12 = [NSArray arrayWithObjects:&v97 count:1];
    v85 = v11;
    v13 = [v11 sortedArrayUsingDescriptors:v12];

    v83 = v13;
    v14 = [v13 firstObject];
    v15 = [MOResource alloc];
    v16 = [v14 name];
    v17 = [v14 type];
    v18 = [v14 getDictionary];
    [v14 value];
    v19 = [(MOResource *)v15 initWithName:v16 type:v17 dict:v18 value:?];

    v20 = [v14 sourceEventIdentifier];
    [(MOResource *)v19 setSourceEventIdentifier:v20];

    -[MOResource setSourceEventAccessType:](v19, "setSourceEventAccessType:", [v14 sourceEventAccessType]);
    [(MOResource *)v19 setPriorityScore:201.0];
    v21 = [v14 photoCurationScore];
    [(MOResource *)v19 setPhotoCurationScore:v21];

    -[MOResource setPhotoFaceCount:](v19, "setPhotoFaceCount:", [v14 photoFaceCount]);
    [v14 photoOverallAestheticScore];
    [(MOResource *)v19 setPhotoOverallAestheticScore:?];
    -[MOResource setPhotoAssetMediaType:](v19, "setPhotoAssetMediaType:", [v14 photoAssetMediaType]);
    v82 = v14;
    v22 = [v14 assets];
    [(MOResource *)v19 setAssets:v22];

    v23 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    v24 = v4;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [MOSummarizationUtilities combinePhotoResources:v19];
    }

    [v91 addObject:v19];
    v81 = v19;
    v25 = [(MOResource *)v19 assets];
    v92 = v9;
    [v9 addObject:v25];

    v90 = v8;
    if ([v8 count] >= 2)
    {
      v26 = 301;
      do
      {
        v27 = [v8 objectAtIndexedSubscript:v26 - 300];
        [v24 objectForKey:v27];
        v29 = v28 = v8;
        v30 = [v29 count];

        if (v30)
        {
          v31 = objc_autoreleasePoolPush();
          v32 = [v28 objectAtIndexedSubscript:v26 - 300];
          v33 = [v24 objectForKey:v32];
          v34 = [v33 firstObject];

          v35 = [v34 assets];
          LOBYTE(v33) = [v92 containsObject:v35];

          if ((v33 & 1) == 0)
          {
            v36 = [MOResource alloc];
            v37 = [v34 name];
            v38 = [v34 type];
            v39 = [v34 getDictionary];
            [v34 value];
            v40 = [(MOResource *)v36 initWithName:v37 type:v38 dict:v39 value:?];

            v41 = [v34 sourceEventIdentifier];
            [(MOResource *)v40 setSourceEventIdentifier:v41];

            -[MOResource setSourceEventAccessType:](v40, "setSourceEventAccessType:", [v34 sourceEventAccessType]);
            v42 = [v34 photoCurationScore];
            [(MOResource *)v40 setPhotoCurationScore:v42];

            -[MOResource setPhotoFaceCount:](v40, "setPhotoFaceCount:", [v34 photoFaceCount]);
            [v34 photoOverallAestheticScore];
            [(MOResource *)v40 setPhotoOverallAestheticScore:?];
            -[MOResource setPhotoAssetMediaType:](v40, "setPhotoAssetMediaType:", [v34 photoAssetMediaType]);
            v43 = [v34 assets];
            [(MOResource *)v40 setAssets:v43];

            [(MOResource *)v40 setPriorityScore:v26];
            v44 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
            {
              v48 = [(MOResource *)v40 assets];
              [(MOResource *)v40 priorityScore];
              *buf = 138412546;
              v94 = v48;
              v95 = 2048;
              v96 = v49;
              _os_log_debug_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, "auxiliary photo asset, %@, priority score, %f", buf, 0x16u);
            }

            [v91 addObject:v40];
            v45 = [(MOResource *)v40 assets];
            [v92 addObject:v45];
          }

          objc_autoreleasePoolPop(v31);
          v28 = v90;
        }

        v46 = [v28 count];
        v47 = v26 - 299;
        ++v26;
        v8 = v28;
      }

      while (v46 > v47);
    }

    v50 = [v91 count];
    v51 = v92;
    if (v50 < 11)
    {
      v52 = [v24 allValues];
      v87 = [v52 count];

      if ([v8 count])
      {
        v53 = 0;
        v86 = 11 - v50;
        v88 = v24;
        do
        {
          context = objc_autoreleasePoolPush();
          v54 = [v8 objectAtIndexedSubscript:v53];
          v55 = [v24 objectForKey:v54];

          if ([v55 count])
          {
            v56 = [v55 count] / v87 * v86;
            if (v56 >= 1)
            {
              v57 = (v56 + 1);
              v58 = 1;
              do
              {
                v59 = objc_autoreleasePoolPush();
                if ([v55 count] > v58)
                {
                  v60 = [v55 objectAtIndexedSubscript:v58];
                  v61 = [v60 assets];
                  v62 = [v51 containsObject:v61];

                  if ((v62 & 1) == 0)
                  {
                    v63 = [MOResource alloc];
                    v64 = [v60 name];
                    v65 = [v60 type];
                    v66 = [v60 getDictionary];
                    [v60 value];
                    v67 = [(MOResource *)v63 initWithName:v64 type:v65 dict:v66 value:?];

                    v68 = [v60 sourceEventIdentifier];
                    [(MOResource *)v67 setSourceEventIdentifier:v68];

                    -[MOResource setSourceEventAccessType:](v67, "setSourceEventAccessType:", [v60 sourceEventAccessType]);
                    v69 = [v60 photoCurationScore];
                    [(MOResource *)v67 setPhotoCurationScore:v69];

                    -[MOResource setPhotoFaceCount:](v67, "setPhotoFaceCount:", [v60 photoFaceCount]);
                    [v60 photoOverallAestheticScore];
                    [(MOResource *)v67 setPhotoOverallAestheticScore:?];
                    -[MOResource setPhotoAssetMediaType:](v67, "setPhotoAssetMediaType:", [v60 photoAssetMediaType]);
                    v70 = [v60 assets];
                    [(MOResource *)v67 setAssets:v70];

                    v71 = [v91 lastObject];
                    [v71 priorityScore];
                    v73 = v72;

                    if (v73 >= 300.0)
                    {
                      v74 = [v91 lastObject];
                      [v74 priorityScore];
                      [(MOResource *)v67 setPriorityScore:v75 + 1.0];
                    }

                    else
                    {
                      [(MOResource *)v67 setPriorityScore:300.0];
                    }

                    v76 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
                    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
                    {
                      v78 = [(MOResource *)v67 assets];
                      [(MOResource *)v67 priorityScore];
                      *buf = 138412546;
                      v94 = v78;
                      v95 = 2048;
                      v96 = v79;
                      _os_log_debug_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEBUG, "remaining photo asset, %@, priority score, %f", buf, 0x16u);
                    }

                    [v91 addObject:v67];
                    v77 = [(MOResource *)v67 assets];
                    v51 = v92;
                    [v92 addObject:v77];
                  }
                }

                objc_autoreleasePoolPop(v59);
                ++v58;
              }

              while (v57 != v58);
            }
          }

          objc_autoreleasePoolPop(context);
          ++v53;
          v8 = v90;
          v24 = v88;
        }

        while ([v90 count] > v53);
      }
    }

    v4 = v24;
  }

  return v91;
}

+ (id)combineMediaResources:(id)a3
{
  v3 = a3;
  v86 = objc_opt_new();
  v4 = [v3 allKeys];
  v5 = [v4 count];

  if (v5)
  {
    v6 = objc_opt_new();
    v7 = objc_opt_new();
    v89 = objc_opt_new();
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v8 = [v3 allKeys];
    v9 = [v8 countByEnumeratingWithState:&v90 objects:v98 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v91;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v91 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v90 + 1) + 8 * i);
          v14 = [v13 action];
          v15 = [v14 actionType];

          if (v15 == 4)
          {
            v16 = v6;
          }

          else
          {
            v16 = v7;
          }

          [v16 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v90 objects:v98 count:16];
      }

      while (v10);
    }

    v17 = v86;
    v81 = v6;
    v82 = v3;
    v18 = v89;
    if ([v6 count])
    {
      v19 = [v6 sortBundlesByTimespan];
      if ([v19 count])
      {
        v21 = 0;
        *&v20 = 138412546;
        v77 = v20;
        v79 = v19;
        v85 = v7;
        do
        {
          context = objc_autoreleasePoolPush();
          v22 = [v19 objectAtIndexedSubscript:v21];
          v23 = [v3 objectForKey:v22];
          v24 = [v23 count];

          if (v24)
          {
            v87 = v21;
            v25 = [v19 objectAtIndexedSubscript:v21];
            v26 = [v3 objectForKey:v25];

            if ([v26 count])
            {
              v27 = 0;
              while (1)
              {
                v28 = objc_autoreleasePoolPush();
                v29 = [v26 objectAtIndexedSubscript:v27];
                v30 = [v29 name];
                if ([v18 containsObject:v30])
                {
                  goto LABEL_31;
                }

                v31 = [v17 count];

                if (v31 <= 0xB)
                {
                  break;
                }

LABEL_32:

                objc_autoreleasePoolPop(v28);
                if ([v26 count] <= ++v27)
                {
                  goto LABEL_33;
                }
              }

              v32 = [MOResource alloc];
              v33 = [v29 name];
              v34 = [v29 type];
              v35 = [v29 getDictionary];
              [v29 value];
              v30 = [(MOResource *)v32 initWithName:v33 type:v34 dict:v35 value:?];

              v36 = [v29 sourceEventIdentifier];
              [(MOResource *)v30 setSourceEventIdentifier:v36];

              -[MOResource setSourceEventAccessType:](v30, "setSourceEventAccessType:", [v29 sourceEventAccessType]);
              if (v87 | v27)
              {
                v18 = v89;
                if (v87 || v27 != 1)
                {
                  v17 = v86;
                  v37 = [v86 lastObject];
                  [v37 priorityScore];
                  v39 = v38;

                  if (v39 >= 300.0)
                  {
                    v40 = [v86 lastObject];
                    [v40 priorityScore];
                    [(MOResource *)v30 setPriorityScore:v41 + 1.0];
                  }

                  else
                  {
                    [(MOResource *)v30 setPriorityScore:310.0];
                  }
                }

                else
                {
                  [(MOResource *)v30 setPriorityScore:310.0];
                  v17 = v86;
                }
              }

              else
              {
                [(MOResource *)v30 setPriorityScore:202.0];
                v17 = v86;
                v18 = v89;
              }

              v7 = v85;
              v42 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
              {
                v44 = [(MOResource *)v30 name];
                [(MOResource *)v30 priorityScore];
                *buf = v77;
                v95 = v44;
                v96 = 2048;
                v97 = v45;
                _os_log_debug_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "media asset from workout name, %@, priority score, %f", buf, 0x16u);
              }

              [v17 addObject:v30];
              v43 = [(MOResource *)v30 name];
              [v18 addObject:v43];

LABEL_31:
              goto LABEL_32;
            }

LABEL_33:

            v6 = v81;
            v3 = v82;
            v19 = v79;
            v21 = v87;
          }

          objc_autoreleasePoolPop(context);
          ++v21;
        }

        while ([v19 count] > v21);
      }
    }

    if ([v17 count] <= 10 && objc_msgSend(v7, "count"))
    {
      v46 = [v7 sortBundlesByTimespan];
      if ([v46 count])
      {
        v48 = 0;
        *&v47 = 138412546;
        v78 = v47;
        v80 = v46;
        do
        {
          contexta = objc_autoreleasePoolPush();
          v49 = [v46 objectAtIndexedSubscript:v48];
          v50 = [v3 objectForKey:v49];
          v51 = [v50 count];

          if (v51)
          {
            v88 = v48;
            v52 = [v46 objectAtIndexedSubscript:v48];
            v53 = [v3 objectForKey:v52];

            if ([v53 count])
            {
              v54 = 0;
              v55 = (v48 + 310);
              while (1)
              {
                v56 = objc_autoreleasePoolPush();
                v57 = [v53 objectAtIndexedSubscript:v54];
                v58 = [v57 name];
                if ([v18 containsObject:v58])
                {
                  goto LABEL_56;
                }

                v59 = [v17 count];

                if (v59 <= 0xA)
                {
                  break;
                }

LABEL_57:

                objc_autoreleasePoolPop(v56);
                if ([v53 count] <= ++v54)
                {
                  goto LABEL_58;
                }
              }

              v60 = [MOResource alloc];
              v61 = [v57 name];
              v62 = [v57 type];
              v63 = [v57 getDictionary];
              [v57 value];
              v58 = [(MOResource *)v60 initWithName:v61 type:v62 dict:v63 value:?];

              v64 = [v57 sourceEventIdentifier];
              [(MOResource *)v58 setSourceEventIdentifier:v64];

              -[MOResource setSourceEventAccessType:](v58, "setSourceEventAccessType:", [v57 sourceEventAccessType]);
              if ([v17 count])
              {
                v65 = [v17 lastObject];
                [v65 priorityScore];
                v67 = v66;

                if (v67 < 300.0)
                {
                  v68 = v58;
                  v69 = 310.0;
                  goto LABEL_52;
                }

                v70 = [v17 lastObject];
                [v70 priorityScore];
                [(MOResource *)v58 setPriorityScore:v71 + 1.0];
              }

              else
              {
                v68 = v58;
                if (v88 | v54)
                {
                  v69 = v55;
                }

                else
                {
                  v69 = 202.0;
                }

LABEL_52:
                [(MOResource *)v68 setPriorityScore:v69, v78];
              }

              v18 = v89;
              v72 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
              if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
              {
                v74 = [(MOResource *)v58 name];
                [(MOResource *)v58 priorityScore];
                *buf = v78;
                v95 = v74;
                v96 = 2048;
                v97 = v75;
                _os_log_debug_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEBUG, "media asset from outing name, %@, priority score, %f", buf, 0x16u);
              }

              [v17 addObject:v58];
              v73 = [(MOResource *)v58 name];
              [v89 addObject:v73];

LABEL_56:
              goto LABEL_57;
            }

LABEL_58:

            v6 = v81;
            v3 = v82;
            v46 = v80;
            v48 = v88;
          }

          objc_autoreleasePoolPop(contexta);
          ++v48;
        }

        while ([v46 count] > v48);
      }
    }
  }

  return v86;
}

+ (void)removeUnnecessaryResourceFromWorkoutSummaryBundle:(id)a3
{
  v3 = a3;
  v4 = [v3 resources];
  v5 = [NSPredicate predicateWithBlock:&__block_literal_global_28];
  v6 = [v4 filteredArrayUsingPredicate:v5];

  [v3 setResources:v6];
}

BOOL __78__MOSummarizationUtilities_removeUnnecessaryResourceFromWorkoutSummaryBundle___block_invoke(id a1, MOResource *a2, NSDictionary *a3)
{
  v3 = a2;
  v4 = [(MOResource *)v3 type]== 10 || [(MOResource *)v3 type]== 2 || [(MOResource *)v3 type]== 3;

  return v4;
}

+ (id)createMegaBundleFromBundles:(id)a3 parameters:(id)a4 timeZoneManager:(id)a5
{
  v7 = a3;
  v8 = a5;
  if ([v7 count] >= 2)
  {
    v10 = [MOEventBundle alloc];
    v11 = +[NSUUID UUID];
    v12 = +[NSDate date];
    v9 = [(MOEventBundle *)v10 initWithBundleIdentifier:v11 creationDate:v12];

    v13 = objc_opt_new();
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v14 = v7;
    v15 = [v14 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v33;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v33 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v32 + 1) + 8 * i) events];
          [v13 addObjectsFromArray:v19];
        }

        v16 = [v14 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v16);
    }

    v20 = [v13 allObjects];
    [(MOEventBundle *)v9 setEvents:v20];

    [(MOEventBundle *)v9 setPropertiesBasedOnEvents];
    v21 = [v14 getTimeSpanOfMOEventBundleArray];
    v22 = [v21 startDate];
    [(MOEventBundle *)v9 setStartDate:v22];

    v23 = [v21 endDate];
    [(MOEventBundle *)v9 setEndDate:v23];

    [a1 updateRankMetaDataFrom:v14 forSummaryBundle:v9];
    v24 = [(MOEventBundle *)v9 events];
    v25 = [NSSortDescriptor sortDescriptorWithKey:@"startDate" ascending:1];
    v36 = v25;
    v26 = [NSArray arrayWithObjects:&v36 count:1];
    v27 = [v24 sortedArrayUsingDescriptors:v26];

    v28 = [v27 lastObject];
    v29 = [v28 endDate];
    v30 = [MOTime timeForDate:v29 timeZoneManager:v8];
    [(MOEventBundle *)v9 setTime:v30];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (void)updateRankMetaDataFrom:(id)a3 forSummaryBundle:(id)a4
{
  v5 = a3;
  v6 = a4;
  v267 = 0u;
  v268 = 0u;
  v269 = 0u;
  v270 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v267 objects:v276 count:16];
  v228 = v6;
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v268;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v268 != v10)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v267 + 1) + 8 * i) interfaceType] == 2)
        {
          ++v9;
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v267 objects:v276 count:16];
    }

    while (v8);
    v12 = v9 == 0;
  }

  else
  {
    v12 = 1;
  }

  v255 = v12;
  v246 = objc_opt_new();
  v245 = objc_opt_new();
  v244 = objc_opt_new();
  v243 = objc_opt_new();
  v263 = 0u;
  v264 = 0u;
  v265 = 0u;
  v266 = 0u;
  v13 = v5;
  v258 = [v13 countByEnumeratingWithState:&v263 objects:v275 count:16];
  if (v258)
  {
    obj = v13;
    v231 = 0;
    v257 = *v264;
    v14 = @"isFamilyContact";
    v15 = @"isCoworkerContact";
    v16 = 0.0;
    v17 = 0.0;
    v250 = 0.0;
    v251 = 0.0;
    v249 = 0.0;
    v232 = 0.0;
    v241 = 0.0;
    v18 = 0.0;
    v230 = 0.0;
    v229 = 0.0;
    v235 = 0.0;
    v236 = 0.0;
    v237 = 0.0;
    v238 = 0.0;
    v239 = 0.0;
    v240 = 0.0;
    v19 = 0.0;
    v253 = 0.0;
    v254 = 0.0;
    v242 = 0.0;
    v252 = 0.0;
    v234 = 0.0;
    v233 = 0.0;
    do
    {
      for (j = 0; j != v258; j = j + 1)
      {
        v21 = v14;
        v22 = v15;
        if (*v264 != v257)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v263 + 1) + 8 * j);
        v24 = [v23 endDate];
        v25 = [v23 startDate];
        [v24 timeIntervalSinceDate:v25];
        v27 = v26;

        if ([v23 interfaceType] == 1)
        {
          v28 = [v23 metaDataForRank];
          v29 = [v28 objectForKeyedSubscript:@"DistanceToHome"];
          [v29 floatValue];
          v31 = v30;

          if (v31 >= 0.0)
          {
            v52 = [v23 metaDataForRank];
            v53 = [v52 objectForKeyedSubscript:@"DistanceToHome"];
            [v53 floatValue];

            v33 = [v23 metaDataForRank];
            v54 = [v33 objectForKeyedSubscript:@"DistanceToHome"];
            [v54 floatValue];
            v56 = v249 + v55 * v27;
            v249 = v56;
          }

          else
          {
            v32 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v272 = "+[MOSummarizationUtilities updateRankMetaDataFrom:forSummaryBundle:]";
              v273 = 1024;
              v274 = 530;
              _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Workout in summary bundle distanceToHomeInMiles is negative (in %s:%d)", buf, 0x12u);
            }

            v33 = +[NSAssertionHandler currentHandler];
            [v33 handleFailureInMethod:a2 object:a1 file:@"MOSummarizationUtilities.m" lineNumber:530 description:{@"Workout in summary bundle distanceToHomeInMiles is negative (in %s:%d)", "+[MOSummarizationUtilities updateRankMetaDataFrom:forSummaryBundle:]", 530}];
          }

          v57 = [v23 metaDataForRank];
          v58 = [v57 objectForKeyedSubscript:@"WorkoutDuration"];
          [v58 floatValue];
          v60 = v59;

          if (v255)
          {
            v61 = [v23 metaDataForRank];
            v62 = [v61 objectForKeyedSubscript:@"FamiliarityIndex"];
            [v62 floatValue];
            v64 = v63;

            if (v64 == -1.0)
            {
              v65 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
              if (os_log_type_enabled(v65, OS_LOG_TYPE_FAULT))
              {
                [MOSummarizationUtilities updateRankMetaDataFrom:v262 forSummaryBundle:?];
              }
            }

            else
            {
              v65 = [v23 metaDataForRank];
              v66 = [v65 objectForKeyedSubscript:@"FamiliarityIndex"];
              [v66 floatValue];
              v68 = v241 + v67 * v27;
              v241 = v68;
            }

            v107 = [v23 metaDataForRank];
            v108 = [v107 objectForKeyedSubscript:@"PoiCategory"];

            v109 = +[NSNull null];
            v110 = [v108 isEqual:v109];

            if ((v110 & 1) == 0)
            {
              v111 = [v23 metaDataForRank];
              v112 = [v111 objectForKeyedSubscript:@"PoiCategory"];
              [v112 floatValue];
              v114 = v232 + v113 * v27;
              v232 = v114;
            }

            v115 = [v23 metaDataForRank];
            v116 = [v115 objectForKey:@"PeopleDensityWeightedAverage"];
            [v116 floatValue];
            v118 = v117;

            v119 = [v23 metaDataForRank];
            v120 = [v119 objectForKey:@"PeopleCountWeightedAverage"];
            [v120 floatValue];
            v122 = v121;

            v123 = [v23 metaDataForRank];
            v124 = [v123 objectForKey:@"StateOfMindLabels"];

            if (v124)
            {
              v125 = [v23 metaDataForRank];
              v126 = [v125 objectForKey:@"StateOfMindLabels"];
              [v246 addObjectsFromArray:v126];
            }

            v127 = [v23 metaDataForRank];
            v128 = [v127 objectForKey:@"StateOfMindDomains"];

            if (v128)
            {
              v129 = [v23 metaDataForRank];
              v130 = [v129 objectForKey:@"StateOfMindDomains"];
              [v245 addObjectsFromArray:v130];
            }

            v131 = [v23 metaDataForRank];
            v132 = [v131 objectForKey:@"StateOfMindValence"];

            if (v132)
            {
              v133 = [v23 metaDataForRank];
              v134 = [v133 objectForKey:@"StateOfMindValence"];
              [v244 addObjectsFromArray:v134];
            }

            v135 = [v23 metaDataForRank];
            v136 = [v135 objectForKey:@"StateOfMindValenceClassification"];

            if (v136)
            {
              v137 = [v23 metaDataForRank];
              v138 = [v137 objectForKey:@"StateOfMindValenceClassification"];
              [v243 addObjectsFromArray:v138];
            }

            v139 = v250 + v118 * v27;
            v140 = v251 + v122 * v27;
            v250 = v139;
            v251 = v140;
          }

          v18 = v18 + v60;
          v16 = v27 + v16;
        }

        else if ([v23 interfaceType] == 2)
        {
          v34 = [v23 metaDataForRank];
          v35 = [v34 objectForKeyedSubscript:@"PoiCategory"];

          v36 = +[NSNull null];
          v37 = [v35 isEqual:v36];

          if ((v37 & 1) == 0)
          {
            v38 = [v23 metaDataForRank];
            v39 = [v38 objectForKeyedSubscript:@"PoiCategory"];
            [v39 floatValue];
            v41 = v233 + v40 * v27;
            v233 = v41;
          }

          v42 = [v23 metaDataForRank];
          v43 = [v42 objectForKeyedSubscript:@"LocationModeTourist"];
          [v43 floatValue];
          v45 = v44;

          v46 = [v23 metaDataForRank];
          v47 = [v46 objectForKeyedSubscript:@"DistanceToHome"];
          [v47 floatValue];
          v49 = v48;

          if (v49 >= 0.0)
          {
            v84 = [v23 metaDataForRank];
            v85 = [v84 objectForKeyedSubscript:@"DistanceToHome"];
            [v85 floatValue];

            v51 = [v23 metaDataForRank];
            v86 = [v51 objectForKeyedSubscript:@"DistanceToHome"];
            [v86 floatValue];
            v88 = v234 + v87 * v27;
            v234 = v88;
          }

          else
          {
            v50 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v272 = "+[MOSummarizationUtilities updateRankMetaDataFrom:forSummaryBundle:]";
              v273 = 1024;
              v274 = 579;
              _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "Summary bundle distanceToHomeInMiles is negative (in %s:%d)", buf, 0x12u);
            }

            v51 = +[NSAssertionHandler currentHandler];
            [v51 handleFailureInMethod:a2 object:a1 file:@"MOSummarizationUtilities.m" lineNumber:579 description:{@"Summary bundle distanceToHomeInMiles is negative (in %s:%d)", "+[MOSummarizationUtilities updateRankMetaDataFrom:forSummaryBundle:]", 579}];
          }

          v89 = [v23 metaDataForRank];
          v90 = [v89 objectForKeyedSubscript:@"FamiliarityIndex"];
          [v90 floatValue];
          v92 = v91;

          if (v92 == -1.0)
          {
            v93 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
            if (os_log_type_enabled(v93, OS_LOG_TYPE_FAULT))
            {
              [MOSummarizationUtilities updateRankMetaDataFrom:v260 forSummaryBundle:?];
            }
          }

          else
          {
            v93 = [v23 metaDataForRank];
            v94 = [v93 objectForKeyedSubscript:@"FamiliarityIndex"];
            [v94 floatValue];
            v96 = v242 + v95 * v27;
            v242 = v96;
          }

          v141 = [v23 metaDataForRank];
          v142 = [v141 objectForKey:@"PeopleDensityWeightedAverage"];
          [v142 floatValue];
          v144 = v143;

          v145 = [v23 metaDataForRank];
          v146 = [v145 objectForKey:@"PeopleCountWeightedAverage"];
          [v146 floatValue];
          v148 = v147;

          v149 = [v23 metaDataForRank];
          v150 = [v149 objectForKey:@"StateOfMindLabels"];

          if (v150)
          {
            v151 = [v23 metaDataForRank];
            v152 = [v151 objectForKey:@"StateOfMindLabels"];
            [v246 addObjectsFromArray:v152];
          }

          v153 = [v23 metaDataForRank];
          v154 = [v153 objectForKey:@"StateOfMindDomains"];

          if (v154)
          {
            v155 = [v23 metaDataForRank];
            v156 = [v155 objectForKey:@"StateOfMindDomains"];
            [v245 addObjectsFromArray:v156];
          }

          v157 = [v23 metaDataForRank];
          v158 = [v157 objectForKey:@"StateOfMindValence"];

          if (v158)
          {
            v159 = [v23 metaDataForRank];
            v160 = [v159 objectForKey:@"StateOfMindValence"];
            [v244 addObjectsFromArray:v160];
          }

          v161 = [v23 metaDataForRank];
          v162 = [v161 objectForKey:@"StateOfMindValenceClassification"];

          if (v162)
          {
            v163 = [v23 metaDataForRank];
            v164 = [v163 objectForKey:@"StateOfMindValenceClassification"];
            [v243 addObjectsFromArray:v164];
          }

          v165 = v252 + v45 * v27;
          v166 = v253 + v144 * v27;
          v252 = v165;
          v253 = v166;
          v167 = v254 + v148 * v27;
          v254 = v167;
          v19 = v27 + v19;
        }

        else if ([v23 interfaceType] == 4)
        {
          v69 = [v23 metaDataForRank];
          v70 = [v69 objectForKeyedSubscript:@"dailyAggregateCallDuration"];
          [v70 floatValue];
          v238 = v238 + v71;

          v72 = [v23 metaDataForRank];
          v73 = [v72 objectForKeyedSubscript:@"callDuration"];
          [v73 floatValue];
          v239 = v239 + v74;

          v75 = [v23 metaDataForRank];
          v76 = [v75 objectForKeyedSubscript:@"burstyInteractionCount"];
          [v76 floatValue];
          v240 = v240 + v77;

          v78 = [v23 metaDataForRank];
          v79 = [v78 objectForKeyedSubscript:v21];
          [v79 floatValue];
          v236 = v236 + v80;

          v81 = [v23 metaDataForRank];
          v82 = [v81 objectForKeyedSubscript:v22];
          [v82 floatValue];
          v237 = v237 + v83;

          v235 = v235 + 1.0;
        }

        else if ([v23 interfaceType] == 5)
        {
          v97 = [v23 metaDataForRank];
          v98 = [v97 objectForKey:@"MediaTotalPlayTime"];
          [v98 doubleValue];
          v100 = v99;

          v101 = v100;
          v229 = v229 + v101;
          v102 = [v23 metaDataForRank];
          v103 = [v102 objectForKey:@"MediaActionIsRepeat"];
          v104 = [v103 BOOLValue];

          v105 = v231;
          if (v104)
          {
            v105 = v100 + v231 != 0.0;
          }

          v231 = v105;
          v106 = v27 + v230;
          v230 = v106;
        }

        if ([v23 bundleSubType] == 204 || objc_msgSend(v23, "bundleSubType") == 207 || objc_msgSend(v23, "bundleSubType") == 208 || objc_msgSend(v23, "bundleSubType") == 206)
        {
          v168 = [v23 metaDataForRank];
          v169 = [v168 objectForKeyedSubscript:@"MotionActivityWalkSpan"];
          [v169 doubleValue];
          v171 = v170;

          if (v171 > v17)
          {
            v17 = v171;
          }
        }

        v15 = v22;
        v14 = v21;
      }

      v258 = [obj countByEnumeratingWithState:&v263 objects:v275 count:16];
    }

    while (v258);
    v172 = obj;

    if (v19 <= 0.0)
    {
      v179 = v228;
      v177 = &GEOPOICategoryGasStation_ptr;
      v176 = v234;
    }

    else
    {
      v174 = v19;
      *&v173 = v233 / v19;
      v175 = v252 / v19;
      v176 = v234 / v19;
      v177 = &GEOPOICategoryGasStation_ptr;
      v178 = [NSNumber numberWithFloat:v173];
      v179 = v228;
      [v228 addMetaDataForRankForKey:@"PoiCategory" value:v178];

      *&v180 = v176;
      v181 = [NSNumber numberWithFloat:v180];
      [v228 addMetaDataForRankForKey:@"DistanceToHome" value:v181];

      *&v182 = v175;
      v183 = [NSNumber numberWithFloat:v182];
      [v228 addMetaDataForRankForKey:@"LocationModeTourist" value:v183];

      *&v184 = v174;
      v185 = [NSNumber numberWithFloat:v184];
      [v228 addMetaDataForRankForKey:@"VisitDuration" value:v185];

      v14 = v21;
      *&v186 = v242 / v174;
      v187 = [NSNumber numberWithFloat:v186];
      [v228 addMetaDataForRankForKey:@"FamiliarityIndex" value:v187];

      *&v188 = v253 / v174;
      v189 = [NSNumber numberWithFloat:v188];
      [v228 addMetaDataForRankForKey:@"PeopleDensityWeightedAverage" value:v189];

      *&v190 = v254 / v174;
      v191 = [NSNumber numberWithFloat:v190];
      [v228 addMetaDataForRankForKey:@"PeopleCountWeightedAverage" value:v191];
    }

    if (v16 > 0.0)
    {
      *&v173 = v18;
      v198 = [NSNumber numberWithFloat:v173];
      [v179 addMetaDataForRankForKey:@"WorkoutDuration" value:v198];

      v173 = v176;
      if (v176 < 2.22507386e-308)
      {
        *&v173 = v249 / v16;
        v199 = [NSNumber numberWithFloat:v173];
        [v179 addMetaDataForRankForKey:@"DistanceToHome" value:v199];
      }

      if (v255)
      {
        *&v173 = v232 / v16;
        v200 = [NSNumber numberWithFloat:v173];
        [v179 addMetaDataForRankForKey:@"PoiCategory" value:v200];

        *&v201 = v241 / v16;
        v202 = [NSNumber numberWithFloat:v201];
        [v179 addMetaDataForRankForKey:@"FamiliarityIndex" value:v202];

        *&v203 = v250 / v16;
        v204 = [NSNumber numberWithFloat:v203];
        [v179 addMetaDataForRankForKey:@"PeopleDensityWeightedAverage" value:v204];

        *&v205 = v251 / v16;
        v206 = [NSNumber numberWithFloat:v205];
        [v179 addMetaDataForRankForKey:@"PeopleCountWeightedAverage" value:v206];
      }
    }

    if (v17 > 0.0)
    {
      v207 = [NSNumber numberWithDouble:v17];
      [v179 addMetaDataForRankForKey:@"MotionActivityWalkSpan" value:v207];
    }

    *&v173 = v236;
    v193 = v230;
    if (v235 <= 0.0)
    {
      v192 = v229;
      v195 = v239;
      v194 = v240;
      v197 = v237;
      v196 = v238;
    }

    else
    {
      *&v173 = v236 / v235;
      v196 = v238;
      v197 = v237 / v235;
      v192 = v229;
      v195 = v239;
      v194 = v240;
    }
  }

  else
  {

    LOBYTE(v231) = 0;
    v192 = 0.0;
    v193 = 0.0;
    v194 = 0.0;
    v195 = 0.0;
    v196 = 0.0;
    v197 = 0.0;
    v173 = 0.0;
    v14 = @"isFamilyContact";
    v179 = v6;
    v172 = v13;
    v15 = @"isCoworkerContact";
    v177 = &GEOPOICategoryGasStation_ptr;
  }

  v208 = [v177[190] numberWithFloat:v173];
  [v179 addMetaDataForRankForKey:v14 value:v208];

  *&v209 = v197;
  v210 = [v177[190] numberWithFloat:v209];
  [v179 addMetaDataForRankForKey:v15 value:v210];

  [v179 addMetaDataForRankForKey:@"isGroupConversation" value:&__kCFBooleanFalse];
  *&v211 = v196;
  v212 = [v177[190] numberWithFloat:v211];
  [v179 addMetaDataForRankForKey:@"dailyAggregateCallDuration" value:v212];

  *&v213 = v195;
  v214 = [v177[190] numberWithFloat:v213];
  [v179 addMetaDataForRankForKey:@"callDuration" value:v214];

  *&v215 = v194;
  v216 = [v177[190] numberWithFloat:v215];
  [v179 addMetaDataForRankForKey:@"burstyInteractionCount" value:v216];

  v217 = [v177[190] numberWithDouble:v192];
  [v179 addMetaDataForRankForKey:@"MediaTotalPlayTime" value:v217];

  if (v193 > 0.0)
  {
    *&v218 = v231 / v193;
    v219 = [v177[190] numberWithFloat:v218];
    [v179 addMetaDataForRankForKey:@"MediaActionIsRepeat" value:v219];
  }

  v220 = [NSSet setWithArray:v246];
  v221 = [v220 allObjects];
  [v179 addMetaDataForRankForKey:@"StateOfMindLabels" value:v221];

  v222 = [NSSet setWithArray:v245];
  v223 = [v222 allObjects];
  [v179 addMetaDataForRankForKey:@"StateOfMindDomains" value:v223];

  v224 = [NSSet setWithArray:v244];
  v225 = [v224 allObjects];
  [v179 addMetaDataForRankForKey:@"StateOfMindValence" value:v225];

  v226 = [NSSet setWithArray:v243];
  v227 = [v226 allObjects];
  [v179 addMetaDataForRankForKey:@"StateOfMindValenceClassification" value:v227];
}

+ (id)createDominantBundleFromBundles:(id)a3 withParameters:(id)a4 timeZoneManager:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [a1 createMegaBundleFromBundles:v8 parameters:v9 timeZoneManager:a5];
  [a1 setActionsAndPlacesFromBundles:v8 forDominantBundle:v10 withParameters:v9];
  [v10 setInterfaceType:12];
  v11 = [v10 action];
  v12 = [v11 actionType];

  if (v12 == 4)
  {
    [v9 dominantBundle_mediaPlaySessionDominantFactorThreshold];
    v14 = v13;
    [v9 dominantBundle_mediaPlaySessionsOverlapsMinimumDistance];
    [a1 setMediaActionForWorkoutBundle:v10 withMediaPlaySessionDominantFactorThreshold:v14 mediaPlaySessionsOverlapsMinimumDistance:v15];
    v16 = 201;
    v17 = 2;
  }

  else
  {
    v16 = 101;
    v17 = 1;
  }

  [v10 setBundleSuperType:{v17, a1, v9}];
  [v10 setBundleSubType:v16];
  v18 = objc_opt_new();
  v19 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v20 = v8;
  v21 = [v20 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v38;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v38 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v37 + 1) + 8 * i);
        [v25 setIsAggregatedAndSuppressed:1];
        v26 = [v25 bundleIdentifier];
        v27 = [v26 UUIDString];
        [v18 addObject:v27];

        v28 = [v25 suggestionID];
        v29 = [v28 UUIDString];
        [v19 addObject:v29];
      }

      v22 = [v20 countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v22);
  }

  v30 = [v18 copy];
  [v10 setSubBundleIDs:v30];

  v31 = [v19 copy];
  [v10 setSubSuggestionIDs:v31];

  v32 = [v35 getResourcesFromBundles:v20 forSummaryBundle:v10 withParameters:v36];
  [v10 setResources:v32];

  v33 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v42 = v10;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "SummarizationUtilities: dominant bundle being created: %@", buf, 0xCu);
  }

  return v10;
}

+ (id)getWorkoutActionsByActionSubtypeFromBundles:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v58 = objc_opt_new();
    v57 = objc_opt_new();
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v52 = v3;
    obj = v3;
    v55 = [obj countByEnumeratingWithState:&v67 objects:v76 count:16];
    if (v55)
    {
      v54 = *v68;
      v4 = &MOLogFacilitySummarization;
      do
      {
        v5 = 0;
        do
        {
          if (*v68 != v54)
          {
            objc_enumerationMutation(obj);
          }

          v56 = v5;
          v6 = *(*(&v67 + 1) + 8 * v5);
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          v66 = 0u;
          v7 = [v6 events];
          v8 = [v7 countByEnumeratingWithState:&v63 objects:v75 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v64;
            do
            {
              for (i = 0; i != v9; i = i + 1)
              {
                if (*v64 != v10)
                {
                  objc_enumerationMutation(v7);
                }

                v12 = *(*(&v63 + 1) + 8 * i);
                if ([v12 provider] == 1 && objc_msgSend(v12, "category") == 2)
                {
                  v13 = [v12 workoutType];

                  if (v13)
                  {
                    v14 = [v58 allKeys];
                    v15 = [v12 workoutType];
                    v16 = [v14 containsObject:v15];

                    if (v16)
                    {
                      v17 = [v12 workoutType];
                      v18 = [v58 objectForKey:v17];
                      [v18 addObject:v12];

                      v19 = [v12 workoutType];
                      v20 = [v57 objectForKey:v19];

                      [v20 floatValue];
                      v22 = v21;
                      v23 = [v12 workoutDuration];
                      [v23 floatValue];
                      *&v25 = v22 + v24;
                      v26 = [NSNumber numberWithFloat:v25];
                      [v12 workoutType];
                      v27 = v7;
                      v29 = v28 = v4;
                      [v57 setObject:v26 forKey:v29];

                      v4 = v28;
                      v7 = v27;
                    }

                    else
                    {
                      v30 = [NSMutableSet setWithObject:v12];
                      v31 = [v12 workoutType];
                      [v58 setObject:v30 forKey:v31];

                      v20 = [v12 workoutDuration];
                      v23 = [v12 workoutType];
                      [v57 setObject:v20 forKey:v23];
                    }

                    v32 = _mo_log_facility_get_os_log(v4);
                    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
                    {
                      [(MOSummarizationUtilities *)v74 getWorkoutActionsByActionSubtypeFromBundles:v12];
                    }
                  }
                }
              }

              v9 = [v7 countByEnumeratingWithState:&v63 objects:v75 count:16];
            }

            while (v9);
          }

          v5 = v56 + 1;
        }

        while ((v56 + 1) != v55);
        v55 = [obj countByEnumeratingWithState:&v67 objects:v76 count:16];
      }

      while (v55);
    }

    v33 = [v57 keysSortedByValueUsingComparator:&__block_literal_global_433];
    v34 = objc_opt_new();
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v35 = v33;
    v36 = [v35 countByEnumeratingWithState:&v59 objects:v73 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v60;
      do
      {
        for (j = 0; j != v37; j = j + 1)
        {
          if (*v60 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = [v58 objectForKeyedSubscript:{*(*(&v59 + 1) + 8 * j), v52}];
          if ([v40 count] && objc_msgSend(v40, "count"))
          {
            v41 = [MOAction alloc];
            v42 = [v40 allObjects];
            v43 = [v42 objectAtIndex:0];
            v44 = [v43 workoutType];
            v45 = [(MOAction *)v41 initWithActionName:v44 actionType:4 actionSubtype:1 actionMetaData:0];

            v46 = [v40 allObjects];
            v47 = [v46 firstObject];
            v48 = [v47 eventIdentifier];
            [(MOAction *)v45 setSourceEventIdentifier:v48];

            [v34 addObject:v45];
            v49 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v72 = v45;
              _os_log_debug_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, "getWorkoutActionsByActionSubtypeFromBundles: output action, %@", buf, 0xCu);
            }
          }
        }

        v37 = [v35 countByEnumeratingWithState:&v59 objects:v73 count:16];
      }

      while (v37);
    }

    v50 = [v34 copy];
    v3 = v52;
  }

  else
  {
    v50 = 0;
  }

  return v50;
}

+ (id)getActionsFromBundles:(id)a3 withDominantAction:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = objc_opt_new();
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v52 = v5;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v67 objects:v75 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v68;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v68 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v67 + 1) + 8 * i);
          v14 = [v13 action];

          if (v14)
          {
            v15 = [v13 action];
            v16 = [v15 actionName];

            v17 = [v7 allKeys];
            v18 = [v17 containsObject:v16];

            if (v18)
            {
              v19 = [v7 objectForKey:v16];
              [v19 addObject:v13];
            }

            else
            {
              v19 = [NSMutableSet setWithObject:v13];
              [v7 setObject:v19 forKey:v16];
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v67 objects:v75 count:16];
      }

      while (v10);
    }

    v54 = objc_opt_new();
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v20 = [v7 allKeys];
    v21 = [v20 countByEnumeratingWithState:&v63 objects:v74 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v64;
      do
      {
        for (j = 0; j != v22; j = j + 1)
        {
          if (*v64 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v63 + 1) + 8 * j);
          v26 = [v7 objectForKey:v25];
          v27 = [v26 allObjects];

          [v27 getTotalDurationOfMOEventBundleArray];
          v28 = [NSNumber numberWithDouble:?];
          [v54 setObject:v28 forKey:v25];
        }

        v22 = [v20 countByEnumeratingWithState:&v63 objects:v74 count:16];
      }

      while (v22);
    }

    v29 = [v54 keysSortedByValueUsingComparator:&__block_literal_global_436_0];
    v30 = objc_opt_new();
    if ([v6 actionType] == 2)
    {
      [v30 addObject:v6];
      v31 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        [MOSummarizationUtilities getActionsFromBundles:v6 withDominantAction:v30];
      }
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v32 = v29;
    v33 = [v32 countByEnumeratingWithState:&v59 objects:v73 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v60;
      do
      {
        for (k = 0; k != v34; k = k + 1)
        {
          if (*v60 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v59 + 1) + 8 * k);
          if (v6 && ([v6 actionName], v38 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v37, "isEqualToString:", v38), v38, v39))
          {
            v40 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
            {
              [MOSummarizationUtilities getActionsFromBundles:v58 withDominantAction:?];
            }
          }

          else
          {
            if ([v6 actionType] != 4 || !objc_msgSend(v37, "isEqualToString:", @"visit"))
            {
              v40 = [v7 objectForKeyedSubscript:v37];
              if (![v40 count])
              {
                goto LABEL_49;
              }

              v41 = [v40 count];
              v42 = [v40 allObjects];
              v43 = v42;
              if (v41 == 1)
              {
                v44 = [v42 objectAtIndex:0];

                v45 = [v44 action];

                if (v45)
                {
                  v46 = [v44 action];
                  [v30 addObject:v46];

                  v47 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
                  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
                  {
                    [MOSummarizationUtilities getActionsFromBundles:v72 withDominantAction:v44];
                  }

                  goto LABEL_47;
                }
              }

              else
              {
                v44 = [a1 getDominantBundleFromBundles:v42];

                if (v44)
                {
                  v48 = [v44 action];

                  if (v48)
                  {
                    v49 = [v44 action];
                    [v30 addObject:v49];

                    v47 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
                    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
                    {
                      [MOSummarizationUtilities getActionsFromBundles:v71 withDominantAction:v44];
                    }

LABEL_47:
                  }
                }
              }

              goto LABEL_49;
            }

            v40 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
            {
              [MOSummarizationUtilities getActionsFromBundles:v56 withDominantAction:?];
            }
          }

LABEL_49:
        }

        v34 = [v32 countByEnumeratingWithState:&v59 objects:v73 count:16];
      }

      while (v34);
    }

    v50 = [v30 copy];
    v5 = v52;
  }

  else
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [MOSummarizationUtilities getActionsFromBundles:v7 withDominantAction:?];
    }

    v50 = 0;
  }

  return v50;
}

+ (id)getDominantBundleFromBundles:(id)a3
{
  v3 = [a3 sortedArrayUsingComparator:&__block_literal_global_442];
  v4 = [v3 objectAtIndex:0];

  return v4;
}

int64_t __57__MOSummarizationUtilities_getDominantBundleFromBundles___block_invoke(id a1, MOEventBundle *a2, MOEventBundle *a3)
{
  v4 = a3;
  [(MOEventBundle *)a2 duration];
  v6 = v5;
  [(MOEventBundle *)v4 duration];
  v8 = v7;

  if (v6 <= v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (v6 < v8)
  {
    return 1;
  }

  else
  {
    return v9;
  }
}

+ (id)getActionFromBundles:(id)a3 withMainActionSelectionThresholdBasedOnDuration:(float)a4
{
  v6 = a3;
  if ([v6 count] < 2)
  {
    v7 = 0;
    goto LABEL_48;
  }

  v62 = a1;
  v8 = objc_opt_new();
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v64 = v6;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v73 objects:v79 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v74;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v74 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v73 + 1) + 8 * i);
        v15 = [v8 allKeys];
        v16 = [v14 getBundleType];
        v17 = [v15 containsObject:v16];

        if (v17)
        {
          v18 = [v14 getBundleType];
          v19 = [v8 objectForKey:v18];
          [v19 addObject:v14];
        }

        else
        {
          v18 = [NSMutableSet setWithObject:v14];
          v19 = [v14 getBundleType];
          [v8 setObject:v18 forKey:v19];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v73 objects:v79 count:16];
    }

    while (v11);
  }

  v20 = objc_opt_new();
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v21 = [v8 allKeys];
  v22 = [v21 countByEnumeratingWithState:&v69 objects:v78 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v70;
    do
    {
      for (j = 0; j != v23; j = j + 1)
      {
        if (*v70 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v69 + 1) + 8 * j);
        v27 = [v8 objectForKey:v26];
        v28 = [v27 allObjects];

        [v28 getTotalDurationOfMOEventBundleArray];
        v29 = [NSNumber numberWithDouble:?];
        [v20 setObject:v29 forKey:v26];
      }

      v23 = [v21 countByEnumeratingWithState:&v69 objects:v78 count:16];
    }

    while (v23);
  }

  v30 = [v20 keysSortedByValueUsingComparator:&__block_literal_global_444];
  v31 = [v30 objectAtIndexedSubscript:{objc_msgSend(v30, "count") - 1}];
  v32 = [v30 objectAtIndexedSubscript:{objc_msgSend(v30, "count") - 2}];
  v63 = v32;
  if ((![v31 isEqualToString:@"activity"] || (objc_msgSend(v32, "isEqualToString:", @"outing") & 1) == 0) && (!objc_msgSend(v31, "isEqualToString:", @"outing") || !objc_msgSend(v32, "isEqualToString:", @"activity")))
  {
    v40 = [v8 objectForKey:v31];
    v41 = [v40 allObjects];
    v42 = [v41 firstObject];
    v7 = [v42 action];

    goto LABEL_28;
  }

  v33 = [v20 objectForKey:@"activity"];
  [v33 doubleValue];
  v35 = v34;

  v36 = [v20 objectForKey:@"outing"];
  [v36 doubleValue];
  v38 = v37;

  if (v38 <= 0.0 || (v39 = v35 / v38, v35 / v38 >= a4))
  {
    v43 = [v8 objectForKey:{@"activity", v39}];
    v44 = [v43 allObjects];

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v45 = v44;
    v46 = [v45 countByEnumeratingWithState:&v65 objects:v77 count:16];
    if (v46)
    {
      v47 = v46;
      v60 = v31;
      v61 = v30;
      v48 = 0;
      v49 = *v66;
      do
      {
        for (k = 0; k != v47; k = k + 1)
        {
          if (*v66 != v49)
          {
            objc_enumerationMutation(v45);
          }

          v51 = *(*(&v65 + 1) + 8 * k);
          v52 = [v51 action];
          if ([v52 actionType] == 4)
          {
            v53 = [v51 action];
            v54 = [v53 actionSubtype];

            if (v54 == 1)
            {
              ++v48;
            }
          }

          else
          {
          }
        }

        v47 = [v45 countByEnumeratingWithState:&v65 objects:v77 count:16];
      }

      while (v47);

      v55 = v48 >= 2;
      v6 = v64;
      v31 = v60;
      v30 = v61;
      if (v55)
      {
        v56 = [MOAction alloc];
        v57 = [v62 workoutMetaDataCreatedForBundles:v45];
        v58 = [(MOAction *)v56 initWithActionName:@"workout" actionType:4 actionSubtype:1 actionMetaData:v57];
LABEL_46:
        v7 = v58;

        goto LABEL_47;
      }
    }

    else
    {

      v6 = v64;
    }

    v57 = [v45 firstObject];
    v58 = [v57 action];
    goto LABEL_46;
  }

  v7 = [[MOAction alloc] initWithActionName:@"visit" actionType:2];
LABEL_28:
  v6 = v64;
LABEL_47:

LABEL_48:

  return v7;
}

+ (id)sortedBundleBasedOnGoodnessScore:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    if ([v3 count] == 1)
    {
      v4 = v3;
    }

    else
    {
      v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_449];
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

int64_t __61__MOSummarizationUtilities_sortedBundleBasedOnGoodnessScore___block_invoke(id a1, MOEventBundle *a2, MOEventBundle *a3)
{
  v4 = a3;
  v5 = [(MOEventBundle *)a2 rankingDictionary];
  v6 = [v5 objectForKeyedSubscript:@"bundleGoodnessScore"];
  [v6 floatValue];
  v8 = v7;

  v9 = [(MOEventBundle *)v4 rankingDictionary];

  v10 = [v9 objectForKeyedSubscript:@"bundleGoodnessScore"];
  [v10 floatValue];
  v12 = v11;

  if (v8 <= v12)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

+ (void)setActionsAndPlacesFromBundles:(id)a3 forDominantBundle:(id)a4 withParameters:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count] <= 1)
  {
    v11 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Not enough bundles to create dominant bundle, so skip seting actions and places", buf, 2u);
    }

    goto LABEL_27;
  }

  v52 = objc_opt_new();
  v49 = objc_opt_new();
  v12 = objc_opt_new();
  v53 = objc_opt_new();
  v13 = [a1 sortedBundleBasedOnGoodnessScore:v8];
  v47 = v10;
  v48 = v8;
  v51 = v9;
  v50 = [a1 shouldIncludeVisitIntoActionsFromBundles:v8 forDominantBundle:v9 withParameters:v10];
  if ([v13 count])
  {
    v14 = 0;
    while (1)
    {
      v15 = [v13 objectAtIndexedSubscript:v14];
      v16 = [v15 action];
      if (!v16)
      {
        goto LABEL_14;
      }

      v17 = v16;
      v18 = [v15 action];
      v19 = [v18 actionName];
      if (!v19)
      {
        goto LABEL_13;
      }

      v20 = v19;
      v21 = [v15 action];
      v22 = [v21 actionName];
      v23 = [v53 containsObject:v22];

      if ((v23 & 1) == 0)
      {
        v24 = [v15 action];
        v25 = ([v24 actionType] != 2) | v50;

        if (v25)
        {
          break;
        }
      }

LABEL_14:
      v31 = [v15 place];
      if (v31)
      {
        v32 = v31;
        v33 = [v15 place];
        v34 = [v33 placeName];
        if (!v34)
        {

LABEL_20:
          goto LABEL_21;
        }

        v35 = v34;
        v36 = [v15 place];
        v37 = [v36 placeName];
        v38 = [v12 containsObject:v37];

        if ((v38 & 1) == 0)
        {
          v39 = [v15 place];
          [v52 addObject:v39];

          v40 = [v15 place];
          v41 = [v40 placeName];
          [v12 addObject:v41];

          v32 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v42 = [v15 place];
            v43 = [v42 placeName];
            v44 = [v51 startDate];
            *buf = 138412546;
            v55 = v43;
            v56 = 2112;
            v57 = v44;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "SummarizationUtilities: add place to places: %@, for dominant bundle with start date, %@", buf, 0x16u);
          }

          goto LABEL_20;
        }
      }

LABEL_21:

      if ([v13 count] <= ++v14)
      {
        goto LABEL_22;
      }
    }

    v26 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = [v15 action];
      v28 = [v27 actionName];
      v29 = [v51 startDate];
      *buf = 138412546;
      v55 = v28;
      v56 = 2112;
      v57 = v29;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "SummarizationUtilities: add action to actions: %@, for dominant bundle with start date, %@", buf, 0x16u);
    }

    v30 = [v15 action];
    [v49 addObject:v30];

    v17 = [v15 action];
    v18 = [v17 actionName];
    [v53 addObject:v18];
LABEL_13:

    goto LABEL_14;
  }

LABEL_22:
  v9 = v51;
  [v51 setActions:v49];
  v11 = v52;
  [v51 setPlaces:v52];
  if ([v52 count])
  {
    v45 = [v52 firstObject];
    [v51 setPlace:v45];
  }

  v10 = v47;
  v8 = v48;
  if ([v49 count])
  {
    v46 = [v49 firstObject];
    [v51 setAction:v46];
  }

LABEL_27:
}

+ (BOOL)shouldIncludeVisitIntoActionsFromBundles:(id)a3 forDominantBundle:(id)a4 withParameters:(id)a5
{
  v6 = a3;
  v44 = a5;
  v7 = objc_opt_new();
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v50;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v50 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v49 + 1) + 8 * i);
        v14 = [v7 allKeys];
        v15 = [v13 getBundleType];
        v16 = [v14 containsObject:v15];

        if (v16)
        {
          v17 = [v13 getBundleType];
          v18 = [v7 objectForKey:v17];
          [v18 addObject:v13];
        }

        else
        {
          v17 = [NSMutableSet setWithObject:v13];
          v18 = [v13 getBundleType];
          [v7 setObject:v17 forKey:v18];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v10);
  }

  v43 = v8;

  v19 = objc_opt_new();
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v20 = [v7 allKeys];
  v21 = [v20 countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v46;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v46 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v45 + 1) + 8 * j);
        v26 = [v7 objectForKey:{v25, v43}];
        v27 = [v26 allObjects];

        [v27 getTotalDurationOfMOEventBundleArray];
        v28 = [NSNumber numberWithDouble:?];
        [v19 setObject:v28 forKey:v25];
      }

      v22 = [v20 countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v22);
  }

  v29 = [v19 keysSortedByValueUsingComparator:&__block_literal_global_451];
  v30 = [v29 objectAtIndexedSubscript:{objc_msgSend(v29, "count") - 1}];
  v31 = [v29 objectAtIndexedSubscript:{objc_msgSend(v29, "count") - 2}];
  if ((![v30 isEqualToString:@"activity"] || (objc_msgSend(v31, "isEqualToString:", @"outing") & 1) == 0) && (!objc_msgSend(v30, "isEqualToString:", @"outing", v43) || !objc_msgSend(v31, "isEqualToString:", @"activity")))
  {
    goto LABEL_24;
  }

  v32 = [v19 objectForKey:{@"activity", v43}];
  [v32 doubleValue];
  v34 = v33;

  v35 = [v19 objectForKey:@"outing"];
  [v35 doubleValue];
  v37 = v36;

  if (v37 > 0.0)
  {
    v38 = v44;
    [v44 dominantBundle_mainActionSelectionThreshold];
    v40 = v43;
    v41 = v34 / v37 < v39;
  }

  else
  {
LABEL_24:
    v41 = 0;
    v40 = v43;
    v38 = v44;
  }

  return v41;
}

+ (void)setActionsAndPlacesFromBundles:(id)a3 forSummaryBundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = v7;
  if ([v8 count] > 1)
  {
    v10 = objc_opt_new();
    v47 = objc_opt_new();
    v48 = objc_opt_new();
    v39 = v8;
    v11 = [a1 sortedBundleBasedOnGoodnessScore:v8];
    if ([v11 count])
    {
      v12 = 0;
      v40 = a1;
      v41 = v11;
      v45 = v10;
      v46 = v9;
      do
      {
        v13 = [v11 objectAtIndexedSubscript:v12];
        v14 = [v13 action];

        if (v14)
        {
          v44 = v12;
          v15 = objc_opt_new();
          v16 = objc_opt_new();
          v17 = [v13 actions];
          v18 = [v17 count];

          v19 = [a1 getPlaceFromBundle:v13];
          v43 = v13;
          if (v18)
          {
            v20 = [v13 actions];
            [v16 addObjectsFromArray:v20];

            do
            {
              [v15 addObject:v19];
              --v18;
            }

            while (v18);
          }

          else
          {
            v21 = [v13 action];
            [v16 addObject:v21];

            [v15 addObject:v19];
          }

          v42 = v19;
          v9 = v46;
          if ([v16 count])
          {
            v22 = 0;
            do
            {
              v23 = [v16 objectAtIndexedSubscript:v22];
              v24 = [v23 actionName];
              v25 = [v15 objectAtIndexedSubscript:v22];
              v26 = [v25 placeName];
              v27 = [v24 stringByAppendingFormat:@"-%@", v26];

              if (([v48 containsObject:v27] & 1) == 0)
              {
                [v48 addObject:v27];
                v28 = [v15 objectAtIndexedSubscript:v22];
                [v10 addObject:v28];

                v29 = [v16 objectAtIndexedSubscript:v22];
                [v47 addObject:v29];

                v30 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
                if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
                {
                  v31 = [v16 objectAtIndexedSubscript:v22];
                  v32 = [v31 actionName];
                  v33 = [v15 objectAtIndexedSubscript:v22];
                  v34 = [v33 placeName];
                  v35 = [v9 startDate];
                  *buf = 138412802;
                  v50 = v32;
                  v51 = 2112;
                  v52 = v34;
                  v53 = 2112;
                  v54 = v35;
                  _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "SummarizationUtilities: add action to actions: %@, place to places: %@, for bundle with start date, %@", buf, 0x20u);

                  v9 = v46;
                  v10 = v45;
                }
              }

              ++v22;
            }

            while ([v16 count] > v22);
          }

          a1 = v40;
          v11 = v41;
          v13 = v43;
          v12 = v44;
        }

        ++v12;
      }

      while ([v11 count] > v12);
    }

    v36 = v47;
    [v9 setActions:v47];
    [v9 setPlaces:v10];
    if ([v10 count])
    {
      v37 = [v10 firstObject];
      [v9 setPlace:v37];

      v36 = v47;
    }

    if ([v36 count])
    {
      v38 = [v36 firstObject];
      [v9 setAction:v38];

      v36 = v47;
    }

    v8 = v39;
  }

  else
  {
    v10 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Not enough bundles to create summary bundle, so skip seting actions and places", buf, 2u);
    }
  }
}

+ (id)getPlaceFromBundle:(id)a3
{
  v3 = a3;
  v4 = [v3 place];

  v69 = [MOPlace alloc];
  v72 = +[NSUUID UUID];
  v5 = [v3 place];
  v71 = v5;
  if (v4)
  {
    v46 = [v5 placeName];
    v67 = [v3 place];
    v52 = [v67 enclosingArea];
    v65 = [v3 place];
    v55 = [v65 placeType];
    v63 = [v3 place];
    v51 = [v63 placeUserType];
    v61 = [v3 place];
    v50 = [v61 location];
    v59 = [v3 place];
    v47 = [v59 locationMode];
    v57 = [v3 place];
    v45 = [v57 poiCategory];
    v53 = [v3 place];
    v44 = [v53 categoryMuid];
    v49 = [v3 place];
    [v49 distanceToHomeInMiles];
    v7 = v6;
    v48 = [v3 place];
    [v48 placeNameConfidence];
    v9 = v8;
    v10 = [v3 place];
    [v10 familiarityIndexLOI];
    v12 = v11;
    v13 = [v3 place];
    [v13 priorityScore];
    v15 = v14;
    v16 = [v3 place];
    v17 = [v16 startDate];
    v18 = [v3 place];
    v19 = [v18 endDate];
    v20 = [(MOPlace *)v69 initWithIdentifier:v72 placeName:v46 enclosingArea:v52 placeType:v55 placeUserType:v51 location:v50 locationMode:v7 poiCategory:v9 categoryMuid:v12 distanceToHomeInMiles:v15 placeNameConfidence:v47 familiarityIndexLOI:v45 priorityScore:v44 startDate:v17 endDate:v19];

    v21 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = [(MOPlace *)v20 placeName];
      v23 = [v3 startDate];
      *buf = 138412546;
      v74 = v22;
      v75 = 2112;
      v76 = v23;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "SummarizationUtilities: get place: %@, from bundle with start date, %@", buf, 0x16u);
    }

    v24 = [v3 place];
    v25 = [v24 sourceEventIdentifier];
    [(MOPlace *)v20 setSourceEventIdentifier:v25];

    v26 = [v3 place];
    [(MOPlace *)v20 setSourceEventAccessType:[v26 sourceEventAccessType]];
  }

  else
  {
    v60 = [v5 placeType];
    v68 = [v3 place];
    v58 = [v68 placeUserType];
    v66 = [v3 place];
    v56 = [v66 locationMode];
    v64 = [v3 place];
    v54 = [v64 poiCategory];
    v62 = [v3 place];
    v27 = [v62 categoryMuid];
    v28 = [v3 place];
    [v28 distanceToHomeInMiles];
    v30 = v29;
    v31 = [v3 place];
    [v31 placeNameConfidence];
    v33 = v32;
    v34 = [v3 place];
    [v34 familiarityIndexLOI];
    v36 = v35;
    v37 = [v3 place];
    v38 = [v37 startDate];
    v39 = [v3 place];
    v40 = [v39 endDate];
    v70 = [(MOPlace *)v69 initWithIdentifier:v72 placeName:0 enclosingArea:0 placeType:v60 placeUserType:v58 location:0 locationMode:v30 poiCategory:v33 categoryMuid:v36 distanceToHomeInMiles:20000.0 placeNameConfidence:v56 familiarityIndexLOI:v54 priorityScore:v27 startDate:v38 endDate:v40];

    v26 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v41 = [v3 startDate];
      v20 = v70;
      [(MOPlace *)v70 priorityScore];
      *buf = 138412546;
      v74 = v41;
      v75 = 2048;
      v76 = v42;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "SummarizationUtilities: get place holder from bundle with start date, %@ with priority score, %f", buf, 0x16u);
    }

    else
    {
      v20 = v70;
    }
  }

  return v20;
}

+ (id)getPlaceFromPlacesSortedByDuration:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    if ([v3 count] == 1)
    {
      v4 = v3;
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v6 = v3;
      v7 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v17;
        while (2)
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v17 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v16 + 1) + 8 * i);
            if ([v11 proposition] != 4)
            {
              v14 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
              if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v21 = v11;
                _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "SummarizationUtilities: precise label: %@", buf, 0xCu);
              }

              v5 = v11;
              goto LABEL_20;
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      v12 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [v6 firstObject];
        *buf = 138412290;
        v21 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "SummarizationUtilities: imprecise label: %@", buf, 0xCu);
      }

      v4 = v6;
    }

    v5 = [v4 firstObject];
  }

  else
  {
    v5 = 0;
  }

LABEL_20:

  return v5;
}

+ (id)workoutMetaDataCreatedForBundles:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = v3;
  v28 = [v5 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v28)
  {
    obj = v5;
    v27 = *v34;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v34 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v33 + 1) + 8 * i);
        v9 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 2];
        v10 = [NSPredicate predicateWithFormat:@"%K = %lu", @"provider", 1];
        v40[0] = v9;
        v40[1] = v10;
        v11 = [NSArray arrayWithObjects:v40 count:2];
        v12 = [NSCompoundPredicate andPredicateWithSubpredicates:v11];

        v13 = [v8 events];
        v14 = [v13 filteredArrayUsingPredicate:v12];

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v15 = v14;
        v16 = [v15 countByEnumeratingWithState:&v29 objects:v39 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v30;
          do
          {
            for (j = 0; j != v17; j = j + 1)
            {
              if (*v30 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = [*(*(&v29 + 1) + 8 * j) workoutDuration];
              [v20 doubleValue];
              v6 = v6 + v21 / 60.0;
            }

            v17 = [v15 countByEnumeratingWithState:&v29 objects:v39 count:16];
          }

          while (v17);
        }
      }

      v5 = obj;
      v28 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v28);

    if (v6 > 0.0)
    {
      LODWORD(v22) = llround(v6);
      v23 = [NSString stringWithFormat:@"%d", v22];
      [v4 setObject:v23 forKeyedSubscript:@"ActivityActionMetaDataValue"];

      [v4 setObject:@"minutes" forKeyedSubscript:@"ActivityActionMetaDataUnit"];
    }
  }

  else
  {
  }

  v24 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v38 = v4;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "SummarizationUtilities: workoutMetaData: %@", buf, 0xCu);
  }

  return v4;
}

+ (void)setMediaActionForWorkoutBundle:(id)a3 withMediaPlaySessionDominantFactorThreshold:(double)a4 mediaPlaySessionsOverlapsMinimumDistance:(double)a5
{
  v7 = a3;
  v8 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 6];
  v72 = [NSPredicate predicateWithFormat:@"%K = %lu", @"provider", 3];
  v73 = v8;
  v96[0] = v8;
  v96[1] = v72;
  v9 = [NSArray arrayWithObjects:v96 count:2];
  v10 = [NSCompoundPredicate andPredicateWithSubpredicates:v9];

  v11 = [v7 events];
  v71 = v10;
  v12 = [v11 filteredArrayUsingPredicate:v10];

  v79 = objc_opt_new();
  v13 = [v7 startDate];
  v14 = [v7 endDate];
  v76 = [MOContextAnnotationUtilities predicateOfMediaPlaySessionsWithStartDate:v13 endDate:v14 distanceThreshold:a5];

  v15 = [[NSSortDescriptor alloc] initWithKey:@"workoutDuration" ascending:0];
  v16 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 2];
  v68 = [NSPredicate predicateWithFormat:@"%K = %lu", @"provider", 1];
  v69 = v16;
  v95[0] = v16;
  v95[1] = v68;
  v17 = [NSArray arrayWithObjects:v95 count:2];
  v18 = [NSCompoundPredicate andPredicateWithSubpredicates:v17];

  v80 = v7;
  v19 = [v7 events];
  v67 = v18;
  v20 = [v19 filteredArrayUsingPredicate:v18];
  v70 = v15;
  v94 = v15;
  v21 = [NSArray arrayWithObjects:&v94 count:1];
  v66 = [v20 sortedArrayUsingDescriptors:v21];

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  obj = v12;
  v77 = [obj countByEnumeratingWithState:&v85 objects:v93 count:16];
  if (v77)
  {
    v75 = *v86;
    do
    {
      v22 = 0;
      do
      {
        if (*v86 != v75)
        {
          objc_enumerationMutation(obj);
        }

        v78 = v22;
        v23 = *(*(&v85 + 1) + 8 * v22);
        v24 = [v23 mediaPlaySessions];
        v25 = [v24 filteredArrayUsingPredicate:v76];

        v26 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = [v23 mediaPlaySessions];
          v28 = [v27 count];
          v29 = [v25 count];
          *buf = 134218240;
          *&buf[4] = v28;
          v91 = 2048;
          v92 = v29;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "playback, %lu, filtered sessions, %lu", buf, 0x16u);
        }

        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v30 = v25;
        v31 = [v30 countByEnumeratingWithState:&v81 objects:v89 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v82;
          do
          {
            for (i = 0; i != v32; i = i + 1)
            {
              if (*v82 != v33)
              {
                objc_enumerationMutation(v30);
              }

              v35 = *(*(&v81 + 1) + 8 * i);
              v36 = [NSDateInterval alloc];
              v37 = [v35 startDate];
              v38 = [v35 endDate];
              v39 = [v36 initWithStartDate:v37 endDate:v38];

              v40 = [NSDateInterval alloc];
              v41 = [v80 startDate];
              v42 = [v80 endDate];
              v43 = [v40 initWithStartDate:v41 endDate:v42];
              v44 = [v43 intersectionWithDateInterval:v39];

              [v44 duration];
              if (v45 != 0.0)
              {
                [v79 addObject:v35];
              }
            }

            v32 = [v30 countByEnumeratingWithState:&v81 objects:v89 count:16];
          }

          while (v32);
        }

        v22 = v78 + 1;
      }

      while ((v78 + 1) != v77);
      v77 = [obj countByEnumeratingWithState:&v85 objects:v93 count:16];
    }

    while (v77);
  }

  if ([v66 count])
  {
    v46 = objc_opt_new();
    if ([v66 count])
    {
      v47 = 0;
      do
      {
        v48 = [v66 objectAtIndexedSubscript:v47];
        v49 = [v48 workoutEvent];
        v50 = [v49 workoutType];
        v51 = [v66 firstObject];
        v52 = [v51 workoutEvent];
        v53 = [v52 workoutType];

        if (v50 == v53)
        {
          v54 = [NSDateInterval alloc];
          v55 = [v66 objectAtIndexedSubscript:v47];
          v56 = [v55 startDate];
          v57 = [v66 objectAtIndexedSubscript:v47];
          v58 = [v57 endDate];
          v59 = [v54 initWithStartDate:v56 endDate:v58];

          [v46 addObject:v59];
        }

        ++v47;
      }

      while ([v66 count] > v47);
    }

    *buf = 0xBFF0000000000000;
    v60 = [MOContextAnnotationUtilities dominantMediaNameFromPlaySessions:v79 intervalsOfInterest:v46 dominantFactorThreshold:buf confidence:a4];
    v61 = v60;
    if (v60)
    {
      v62 = [v60 objectForKeyedSubscript:@"DominantMediaNameKey"];
      if (v62)
      {
        v63 = v62;
        v64 = [v61 objectForKeyedSubscript:@"DominantMediaPropertyKey"];

        if (v64)
        {
          v65 = [MOContextAnnotationUtilities creatMediaActionWithMediaInfo:v61 mediaNameConfidence:*buf];
          [v80 setConcurrentMediaAction:v65];
        }
      }
    }
  }
}

+ (id)metricForVisitsFromBundle:(id)a3 andNextBundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [a1 sortedVisitEventsFromBundle:v6];
  v10 = [a1 sortedVisitEventsFromBundle:v7];
  if ([v9 count] && objc_msgSend(v10, "count"))
  {
    v38 = v8;
    v39 = v6;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v36 = v9;
    obj = v9;
    v11 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    v37 = v7;
    if (v11)
    {
      v12 = v11;
      v41 = *v47;
      v13 = 1.79769313e308;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v47 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v46 + 1) + 8 * i);
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v16 = v10;
          v17 = v10;
          v18 = [v17 countByEnumeratingWithState:&v42 objects:v50 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v43;
            do
            {
              for (j = 0; j != v19; j = j + 1)
              {
                if (*v43 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v42 + 1) + 8 * j);
                v23 = [v15 location];
                v24 = [v22 location];
                [v23 distanceFromLocation:v24];
                v26 = v25;

                if (v26 < v13)
                {
                  v13 = v26;
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v42 objects:v50 count:16];
            }

            while (v19);
          }

          v10 = v16;
        }

        v12 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v12);
    }

    else
    {
      v13 = 1.79769313e308;
    }

    v28 = [v10 firstObject];
    v29 = [v28 startDate];
    v30 = [obj lastObject];
    v31 = [v30 endDate];
    [v29 timeIntervalSinceDate:v31];
    v33 = v32;

    v34 = [NSNumber numberWithDouble:v13];
    v8 = v38;
    [v38 setObject:v34 forKey:@"distance"];

    v27 = [NSNumber numberWithDouble:v33];
    [v38 setObject:v27 forKey:@"timeInterval"];
    v6 = v39;
    v9 = v36;
    v7 = v37;
  }

  else
  {
    v27 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v53 = [v9 count];
      v54 = 2048;
      v55 = [v10 count];
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "SummarizationUtilities: can not generate visit metric for two bundle since one of them has visit count as 0, bundle 1 visit count, %lu, bundle 2 visit count, %lu", buf, 0x16u);
    }
  }

  return v8;
}

+ (double)maximumDistanceFromBundle:(id)a3 toBundleCluster:(id)a4
{
  v5 = a3;
  v6 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    v10 = 2.22507386e-308;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [MOSummarizationUtilities metricForVisitsFromBundle:*(*(&v17 + 1) + 8 * i) andNextBundle:v5];
        v13 = [v12 objectForKey:@"distance"];
        [v13 doubleValue];
        v15 = v14;

        if (v15 > v10)
        {
          v10 = v15;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 2.22507386e-308;
  }

  return v10;
}

+ (id)sortedVisitEventsFromBundle:(id)a3
{
  v3 = a3;
  v4 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
  v5 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 1];
  v6 = [NSPredicate predicateWithFormat:@"%K = %lu", @"provider", 4];
  v15[0] = v5;
  v15[1] = v6;
  v7 = [NSArray arrayWithObjects:v15 count:2];
  v8 = [NSCompoundPredicate andPredicateWithSubpredicates:v7];

  v9 = [v3 events];

  v10 = [v9 filteredArrayUsingPredicate:v8];
  v14 = v4;
  v11 = [NSArray arrayWithObjects:&v14 count:1];
  v12 = [v10 sortedArrayUsingDescriptors:v11];

  return v12;
}

+ (double)workoutTimeIntervalBetweenBundle:(id)a3 andNextBundle:(id)a4
{
  v6 = a4;
  v7 = [a1 sortedWorkoutEventsFromBundle:a3];
  v8 = [a1 sortedWorkoutEventsFromBundle:v6];

  if ([v7 count] && objc_msgSend(v8, "count"))
  {
    v9 = [v8 firstObject];
    v10 = [v9 startDate];
    v11 = [v7 lastObject];
    v12 = [v11 endDate];
    [v10 timeIntervalSinceDate:v12];
    v14 = v13;
  }

  else
  {
    v15 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v17 = 134218240;
      v18 = [v7 count];
      v19 = 2048;
      v20 = [v8 count];
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "SummarizationUtilities: can not generate workout time interval for two bundle since one of them has workout count as 0, bundle 1 workout count, %lu, bundle 2 workout count, %lu", &v17, 0x16u);
    }

    v14 = 1.79769313e308;
  }

  return v14;
}

+ (id)sortedWorkoutEventsFromBundle:(id)a3
{
  v3 = a3;
  v4 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
  v5 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 2];
  v6 = [NSPredicate predicateWithFormat:@"%K = %lu", @"provider", 1];
  v15[0] = v5;
  v15[1] = v6;
  v7 = [NSArray arrayWithObjects:v15 count:2];
  v8 = [NSCompoundPredicate andPredicateWithSubpredicates:v7];

  v9 = [v3 events];

  v10 = [v9 filteredArrayUsingPredicate:v8];
  v14 = v4;
  v11 = [NSArray arrayWithObjects:&v14 count:1];
  v12 = [v10 sortedArrayUsingDescriptors:v11];

  return v12;
}

+ (id)createOutingMegaBundleFromBundles:(id)a3 withParameters:(id)a4 isCoarseGranularity:(BOOL)a5 timeZoneManager:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if ([v10 count] >= 2)
  {
    v67 = v11;
    v14 = [MOEventBundle alloc];
    v15 = +[NSUUID UUID];
    v16 = +[NSDate date];
    v17 = [(MOEventBundle *)v14 initWithBundleIdentifier:v15 creationDate:v16];

    v18 = v17;
    [a1 updateRankMetaDataFrom:v10 forSummaryBundle:v17];
    v19 = objc_opt_new();
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v68 = v10;
    v20 = v10;
    v21 = [v20 countByEnumeratingWithState:&v73 objects:v82 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v74;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v74 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [*(*(&v73 + 1) + 8 * i) events];
          [v19 addObjectsFromArray:v25];
        }

        v22 = [v20 countByEnumeratingWithState:&v73 objects:v82 count:16];
      }

      while (v22);
    }

    v64 = v19;
    v26 = [v19 allObjects];
    [(MOEventBundle *)v18 setEvents:v26];

    [(MOEventBundle *)v18 setPropertiesBasedOnEvents];
    v27 = [v20 getTimeSpanOfMOEventBundleArray];
    v28 = [v27 startDate];
    [(MOEventBundle *)v18 setStartDate:v28];

    v62 = v27;
    v29 = [v27 endDate];
    [(MOEventBundle *)v18 setEndDate:v29];

    v61 = [a1 sortedVisitEventsFromBundle:v18];
    v30 = [v61 lastObject];
    v31 = [v30 endDate];
    v66 = v12;
    v32 = [MOTime timeForDate:v31 timeZoneManager:v12];
    [(MOEventBundle *)v18 setTime:v32];

    [(MOEventBundle *)v18 setInterfaceType:12];
    v63 = a1;
    [a1 setActionsAndPlacesFromBundles:v20 forSummaryBundle:v18];
    v33 = [(MOEventBundle *)v18 action];
    v34 = [v33 actionType];

    if (v34 == 4)
    {
      v35 = 2;
    }

    else
    {
      v35 = 1;
    }

    if (v34 == 4)
    {
      v36 = 201;
    }

    else
    {
      v36 = 101;
    }

    [(MOEventBundle *)v18 setBundleSuperType:v35];
    v65 = v18;
    [(MOEventBundle *)v18 setBundleSubType:v36];
    v37 = objc_opt_new();
    v38 = objc_opt_new();
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v39 = v20;
    v40 = [v39 countByEnumeratingWithState:&v69 objects:v81 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v70;
      do
      {
        for (j = 0; j != v41; j = j + 1)
        {
          if (*v70 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = *(*(&v69 + 1) + 8 * j);
          v45 = [v44 bundleIdentifier];
          v46 = [v45 UUIDString];
          [v37 addObject:v46];

          v47 = [v44 subBundleIDs];
          v48 = [v47 count];

          if (v48)
          {
            v49 = [v44 subBundleIDs];
            [v37 addObjectsFromArray:v49];
          }

          v50 = [v44 suggestionID];
          v51 = [v50 UUIDString];
          [v38 addObject:v51];

          v52 = [v44 subSuggestionIDs];
          v53 = [v52 count];

          if (v53)
          {
            v54 = [v44 subSuggestionIDs];
            [v38 addObjectsFromArray:v54];
          }

          if (!v7 || ([v44 isAggregatedAndSuppressed] & 1) == 0)
          {
            [v44 setIsAggregatedAndSuppressed:!v7];
            [v44 setSummarizationGranularity:1];
          }
        }

        v41 = [v39 countByEnumeratingWithState:&v69 objects:v81 count:16];
      }

      while (v41);
    }

    v55 = [v37 copy];
    v13 = v65;
    [(MOEventBundle *)v65 setSubBundleIDs:v55];

    v56 = [v38 copy];
    [(MOEventBundle *)v65 setSubSuggestionIDs:v56];

    v11 = v67;
    v57 = [v63 getResourcesFromBundles:v39 forSummaryBundle:v65 withParameters:v67];
    [(MOEventBundle *)v65 setResources:v57];

    v58 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      v59 = @"fine";
      if (v7)
      {
        v59 = @"coarse";
      }

      *buf = 138412546;
      v78 = v59;
      v79 = 2112;
      v80 = v65;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "SummarizationUtilities: outing mega bundle being created: granularity, %@, bundle, %@", buf, 0x16u);
    }

    v10 = v68;
    v12 = v66;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)createActivityMegaBundleFromBundles:(id)a3 withParameters:(id)a4 isCoarseGranularity:(BOOL)a5 isWeeklySummary:(BOOL)a6 timeZoneManager:(id)a7
{
  v8 = a6;
  v9 = a5;
  v11 = a3;
  v113 = a4;
  v12 = a7;
  v13 = [v11 mutableCopy];
  v14 = +[NSCalendar currentCalendar];
  v15 = [NSDate alloc];
  v16 = +[NSDate date];
  v17 = [v15 initWithTimeInterval:v16 sinceDate:-604800.0];
  [v14 startOfDayForDate:v17];
  v18 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

  v117 = v8;
  v114 = v9;
  v19 = v9 && v8;
  if (v19 == 1)
  {
    v20 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v133 = v18;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "SummarizationUtilities: the earliest date for activity bundle to be aggregated for weekly: %@", buf, 0xCu);
    }

    v130[0] = _NSConcreteStackBlock;
    v130[1] = 3221225472;
    v130[2] = __131__MOSummarizationUtilities_createActivityMegaBundleFromBundles_withParameters_isCoarseGranularity_isWeeklySummary_timeZoneManager___block_invoke;
    v130[3] = &unk_10033B188;
    v131 = *&v18;
    v21 = [NSPredicate predicateWithBlock:v130];
    [v13 filterUsingPredicate:v21];

    v22 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = COERCE_DOUBLE([v13 count]);
      *buf = 134217984;
      v133 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "SummarizationUtilities: bundle count in most recent 7 days: %lu", buf, 0xCu);
    }

    if (![v13 count])
    {
      v24 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "SummarizationUtilities: no bundle available to create activity weekly bundle", buf, 2u);
      }

      goto LABEL_30;
    }

    v106 = v13;
    v108 = v12;
    v110 = v11;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v24 = v13;
    v25 = [v24 countByEnumeratingWithState:&v126 objects:v145 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v127;
      while (2)
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v127 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [*(*(&v126 + 1) + 8 * i) rankingDictionary];
          v30 = [v29 objectForKeyedSubscript:@"bundleGoodnessScore"];
          [v30 floatValue];
          v32 = v31;

          v33 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            v133 = v32;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "SummarizationUtilities: activity bundle goodness score, %f", buf, 0xCu);
          }

          [v113 activitySummary_suppressionGoodnessScoreThreshold];
          if (v32 > v34)
          {
            v39 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "SummarizationUtilities: one of activity bundle goodness is too high. Stop creating weekly workout summary", buf, 2u);
            }

            v12 = v108;
            v11 = v110;
            v13 = v106;
            goto LABEL_30;
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v126 objects:v145 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }
    }

    if ([v24 count]<= 3)
    {
      v35 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
      v12 = v108;
      v11 = v110;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = COERCE_DOUBLE([v24 count]);
        *buf = 134217984;
        v133 = v36;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "SummarizationUtilities: %lu bundles are not enough to create activity weekly bundle for coarse granularity", buf, 0xCu);
      }

      v24 = v35;
      v13 = v106;
LABEL_30:

      v38 = 0;
      v37 = v131;
      goto LABEL_70;
    }

    v12 = v108;
    v11 = v110;
    v13 = v106;
    v19 = 1;
    goto LABEL_32;
  }

  if ([v13 count] > 1)
  {
LABEL_32:
    v40 = [MOEventBundle alloc];
    v41 = +[NSUUID UUID];
    v42 = +[NSDate date];
    v38 = [(MOEventBundle *)v40 initWithBundleIdentifier:v41 creationDate:v42];

    [a1 updateRankMetaDataFrom:v13 forSummaryBundle:v38];
    v43 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
    v44 = [v13 copy];
    v104 = v43;
    v144 = v43;
    v45 = [NSArray arrayWithObjects:&v144 count:1];
    v46 = [v44 sortedArrayUsingDescriptors:v45];

    v116 = objc_opt_new();
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    obj = v46;
    v47 = [obj countByEnumeratingWithState:&v122 objects:v143 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v123;
      do
      {
        for (j = 0; j != v48; j = j + 1)
        {
          if (*v123 != v49)
          {
            objc_enumerationMutation(obj);
          }

          v51 = [*(*(&v122 + 1) + 8 * j) events];
          [v116 addObjectsFromArray:v51];
        }

        v48 = [obj countByEnumeratingWithState:&v122 objects:v143 count:16];
      }

      while (v48);
    }

    v52 = [v116 allObjects];
    [(MOEventBundle *)v38 setEvents:v52];

    [(MOEventBundle *)v38 setPropertiesBasedOnEvents];
    if (v19)
    {
      [(MOEventBundle *)v38 setStartDate:*&v18];
      v53 = +[NSDate date];
      [(MOEventBundle *)v38 setEndDate:v53];

      [(MOEventBundle *)v38 setBundleSuperType:2];
      [(MOEventBundle *)v38 setBundleSubType:202];
    }

    else
    {
      v54 = [v11 getTimeSpanOfMOEventBundleArray];
      v55 = [v54 startDate];
      [(MOEventBundle *)v38 setStartDate:v55];

      v56 = [v54 endDate];
      [(MOEventBundle *)v38 setEndDate:v56];

      [(MOEventBundle *)v38 setBundleSuperType:2];
      [(MOEventBundle *)v38 setBundleSubType:201];
    }

    v103 = [a1 sortedWorkoutEventsFromBundle:v38];
    v57 = [v103 lastObject];
    v58 = [v57 endDate];
    v59 = [MOTime timeForDate:v58 timeZoneManager:v12];
    [(MOEventBundle *)v38 setTime:v59];

    [(MOEventBundle *)v38 setInterfaceType:12];
    [a1 setActionsAndPlacesFromBundles:v11 forSummaryBundle:v38];
    if (v19)
    {
      v60 = [MOAction alloc];
      v61 = [a1 workoutMetaDataCreatedForBundles:obj];
      v62 = [(MOAction *)v60 initWithActionName:@"workout" actionType:4 actionSubtype:0 actionMetaData:v61];
      [(MOEventBundle *)v38 setAction:v62];

      v63 = [(MOEventBundle *)v38 events];
      v64 = [v63 firstObject];
      v65 = [v64 eventIdentifier];
      v66 = [(MOEventBundle *)v38 action];
      [v66 setSourceEventIdentifier:v65];
    }

    v67 = [(MOEventBundle *)v38 action];

    v109 = v12;
    v111 = v11;
    v105 = v18;
    if (v67)
    {
      v68 = [a1 workoutMetaDataCreatedForBundles:obj];
      v69 = [(MOEventBundle *)v38 action];
      [v69 setActionMetaData:v68];
    }

    else
    {
      v70 = [MOAction alloc];
      v71 = [a1 workoutMetaDataCreatedForBundles:obj];
      v72 = [(MOAction *)v70 initWithActionName:@"workout" actionType:4 actionSubtype:0 actionMetaData:v71];
      [(MOEventBundle *)v38 setAction:v72];

      v68 = [(MOEventBundle *)v38 events];
      v69 = [v68 firstObject];
      v73 = [v69 eventIdentifier];
      v74 = [(MOEventBundle *)v38 action];
      [v74 setSourceEventIdentifier:v73];
    }

    [v113 dominantBundle_mediaPlaySessionDominantFactorThreshold];
    v76 = v75;
    [v113 dominantBundle_mediaPlaySessionsOverlapsMinimumDistance];
    [a1 setMediaActionForWorkoutBundle:v38 withMediaPlaySessionDominantFactorThreshold:v76 mediaPlaySessionsOverlapsMinimumDistance:v77];
    v78 = objc_opt_new();
    v79 = objc_opt_new();
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v107 = v13;
    v80 = v13;
    v81 = [v80 countByEnumeratingWithState:&v118 objects:v142 count:16];
    if (v81)
    {
      v82 = v81;
      v83 = *v119;
      do
      {
        for (k = 0; k != v82; k = k + 1)
        {
          if (*v119 != v83)
          {
            objc_enumerationMutation(v80);
          }

          v85 = *(*(&v118 + 1) + 8 * k);
          v86 = [v85 subBundleIDs];
          v87 = [v86 count];

          if (v87)
          {
            v88 = [v85 subBundleIDs];
            [v78 addObjectsFromArray:v88];
          }

          else
          {
            v88 = [v85 bundleIdentifier];
            v89 = [v88 UUIDString];
            [v78 addObject:v89];
          }

          v90 = [v85 suggestionID];
          v91 = [v90 UUIDString];
          [v79 addObject:v91];

          if (!v117)
          {
            if (v114)
            {
              if (([v85 isAggregatedAndSuppressed] & 1) == 0)
              {
                [v85 setSummarizationGranularity:1];
              }
            }

            else
            {
              [v85 setIsAggregatedAndSuppressed:1];
            }
          }

          v92 = [v78 copy];
          [(MOEventBundle *)v38 setSubBundleIDs:v92];

          v93 = [v79 copy];
          [(MOEventBundle *)v38 setSubSuggestionIDs:v93];
        }

        v82 = [v80 countByEnumeratingWithState:&v118 objects:v142 count:16];
      }

      while (v82);
    }

    v94 = [a1 getResourcesFromBundles:obj forSummaryBundle:v38 withParameters:v113];
    [(MOEventBundle *)v38 setResources:v94];

    v95 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
    {
      [(MOEventBundle *)v38 startDate];
      v96 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v97 = [(MOEventBundle *)v38 endDate];
      v98 = [(MOEventBundle *)v38 bundleIdentifier];
      v99 = v98;
      v100 = @"NO";
      *buf = 138413314;
      v133 = v96;
      if (v114)
      {
        v101 = @"YES";
      }

      else
      {
        v101 = @"NO";
      }

      v134 = 2112;
      v135 = v97;
      if (v117)
      {
        v100 = @"YES";
      }

      v136 = 2112;
      v137 = v98;
      v138 = 2112;
      v139 = v101;
      v140 = 2112;
      v141 = v100;
      _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_INFO, "SummarizationUtilities: activity mega bundle being created: start date, %@, end date, %@, bundleID, %@, isCoarseGranularity, %@, isWeekly, %@", buf, 0x34u);
    }

    v12 = v109;
    v11 = v111;
    v18 = v105;
    v13 = v107;
    v37 = v104;
    goto LABEL_70;
  }

  v37 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v133 = COERCE_DOUBLE([v13 count]);
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "SummarizationUtilities: %lu bundles are not enough to create activity mega bundle", buf, 0xCu);
  }

  v38 = 0;
LABEL_70:

  return v38;
}

id __131__MOSummarizationUtilities_createActivityMegaBundleFromBundles_withParameters_isCoarseGranularity_isWeeklySummary_timeZoneManager___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 startDate];
  v4 = [v3 isOnOrAfter:*(a1 + 32)];

  return v4;
}

+ (BOOL)isOutingBundleFromHomeOrWorkVisit:(id)a3
{
  [a1 sortedVisitEventsFromBundle:a3];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 placeUserType] == 2 || objc_msgSend(v8, "placeUserType") == 2)
        {
          v9 = 1;
          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v9 = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_13:

  return v9;
}

+ (BOOL)isOutingBundleInsideOneDay:(id)a3
{
  v3 = a3;
  v4 = +[NSCalendar currentCalendar];
  v5 = [v3 time];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = v5;
  v7 = [v3 time];
  v8 = [v7 timeZone];

  if (v8)
  {
    v9 = [v3 time];
    v10 = [v9 timeZone];
    v11 = [NSTimeZone timeZoneWithName:v10];
    v12 = [v3 startDate];
    v13 = [v4 componentsInTimeZone:v11 fromDate:v12];

    v14 = [v3 time];
    v15 = [v14 timeZone];
    v16 = [NSTimeZone timeZoneWithName:v15];
    v17 = [v3 endDate];
    v18 = [v4 componentsInTimeZone:v16 fromDate:v17];
  }

  else
  {
LABEL_4:
    v19 = [v3 startDate];
    v13 = [v4 components:28 fromDate:v19];

    v14 = [v3 endDate];
    v18 = [v4 components:28 fromDate:v14];
  }

  v20 = [v13 day];
  if (v20 == [v18 day] && (v21 = objc_msgSend(v13, "month"), v21 == objc_msgSend(v18, "month")))
  {
    v22 = [v13 year];
    v23 = v22 == [v18 year];
  }

  else
  {
    v23 = 0;
  }

  v24 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    [(MOSummarizationUtilities *)v23 isOutingBundleInsideOneDay:v24];
  }

  return v23;
}

+ (BOOL)isBundleWithAssets:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [a3 resources];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 type] == 2 || objc_msgSend(v8, "type") == 3)
        {
          v9 = 1;
          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v9 = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_13:

  return v9;
}

+ (BOOL)allPhotoAssetsFromBundleStartDay:(id)a3
{
  v3 = a3;
  v39 = +[NSCalendar currentCalendar];
  v4 = [v3 time];
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = v4;
  v6 = [v3 time];
  v7 = [v6 timeZone];

  if (v7)
  {
    v8 = [v3 time];
    v9 = [v8 timeZone];
    v10 = [NSTimeZone timeZoneWithName:v9];
    v11 = [v3 startDate];
    v12 = [v39 componentsInTimeZone:v10 fromDate:v11];
  }

  else
  {
LABEL_4:
    v8 = [v3 startDate];
    v12 = [v39 components:28 fromDate:v8];
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v13 = [v3 resources];
  v14 = [v13 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v41;
    while (2)
    {
      v17 = 0;
      v38 = v15;
      do
      {
        if (*v41 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v40 + 1) + 8 * v17);
        if ([v18 type] == 2)
        {
          v19 = [v18 photoCreationDate];

          if (v19)
          {
            v20 = [v3 time];
            if (!v20)
            {
              goto LABEL_15;
            }

            v21 = v20;
            v22 = [v3 time];
            v23 = [v22 timeZone];

            if (v23)
            {
              v24 = [v3 time];
              v25 = [v24 timeZone];
              v26 = [NSTimeZone timeZoneWithName:v25];
              [v18 photoCreationDate];
              v27 = v16;
              v28 = v12;
              v29 = v13;
              v31 = v30 = v3;
              v32 = [v39 componentsInTimeZone:v26 fromDate:v31];

              v3 = v30;
              v13 = v29;
              v12 = v28;
              v16 = v27;
              v15 = v38;
            }

            else
            {
LABEL_15:
              v24 = [v18 photoCreationDate];
              v32 = [v39 components:28 fromDate:v24];
            }

            v33 = [v12 day];
            if (v33 != [v32 day] || (v34 = objc_msgSend(v12, "month"), v34 != objc_msgSend(v32, "month")) || (v35 = objc_msgSend(v12, "year"), v35 != objc_msgSend(v32, "year")))
            {

              v36 = 0;
              goto LABEL_24;
            }
          }
        }

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v36 = 1;
LABEL_24:

  return v36;
}

+ (BOOL)isBundle:(id)a3 insideTheSameDayAsOtherBundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([a1 isOutingBundleInsideOneDay:v6] && objc_msgSend(a1, "isOutingBundleInsideOneDay:", v7))
  {
    v8 = +[NSCalendar currentCalendar];
    v9 = [v6 time];
    if (!v9)
    {
      goto LABEL_7;
    }

    v10 = v9;
    v11 = [v6 time];
    v12 = [v11 timeZone];

    if (v12)
    {
      v13 = [v6 time];
      v14 = [v13 timeZone];
      v15 = [NSTimeZone timeZoneWithName:v14];
      v16 = [v6 startDate];
      v17 = [v8 componentsInTimeZone:v15 fromDate:v16];
    }

    else
    {
LABEL_7:
      v13 = [v6 startDate];
      v17 = [v8 components:28 fromDate:v13];
    }

    v19 = [v7 time];
    if (!v19)
    {
      goto LABEL_11;
    }

    v20 = v19;
    v21 = [v7 time];
    v22 = [v21 timeZone];

    if (v22)
    {
      v23 = [v6 time];
      v24 = [v23 timeZone];
      v25 = [NSTimeZone timeZoneWithName:v24];
      v26 = [v7 startDate];
      v27 = [v8 componentsInTimeZone:v25 fromDate:v26];
    }

    else
    {
LABEL_11:
      v23 = [v7 startDate];
      v27 = [v8 components:28 fromDate:v23];
    }

    v28 = [v17 day];
    if (v28 == [v27 day] && (v29 = objc_msgSend(v17, "month"), v29 == objc_msgSend(v27, "month")))
    {
      v30 = [v17 year];
      v18 = v30 == [v27 year];
    }

    else
    {
      v18 = 0;
    }

    v31 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v33 = [v6 startDate];
      v34 = [v7 startDate];
      v35 = 138412802;
      v36 = v33;
      v37 = 2112;
      v38 = v34;
      v39 = 1024;
      v40 = v18;
      _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "SummarizationUtilities: bundle 1 with start date, %@, and bundle 2 with start date, %@,  are inside one day: %d", &v35, 0x1Cu);
    }
  }

  else
  {
    LOBYTE(v18) = 0;
  }

  return v18;
}

+ (id)mergeOutingBundlesWithInDayWithGroupedBundles:(id)a3 remainingSingletonBundles:(id)a4 parameters:(id)a5 isCoarseGranularity:(BOOL)a6 timeZoneManager:(id)a7
{
  v65 = a6;
  v10 = a3;
  v11 = a4;
  v68 = a5;
  v66 = a7;
  v67 = objc_opt_new();
  v12 = objc_opt_new();
  if ([v10 count])
  {
    [v12 addObjectsFromArray:v10];
  }

  if ([v11 count])
  {
    [v12 addObjectsFromArray:v11];
  }

  if ([v12 count])
  {
    v61 = v11;
    v62 = v10;
    v71 = objc_opt_new();
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v60 = v12;
    obj = v12;
    v73 = [obj countByEnumeratingWithState:&v78 objects:v87 count:16];
    if (!v73)
    {
      goto LABEL_42;
    }

    v72 = *v79;
    while (1)
    {
      v13 = 0;
      do
      {
        if (*v79 != v72)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v78 + 1) + 8 * v13);
        v15 = +[NSCalendar currentCalendar];
        v16 = [v14 time];
        if (!v16)
        {
          goto LABEL_14;
        }

        v17 = v16;
        v18 = [v14 time];
        v19 = [v18 timeZone];

        if (v19)
        {
          v20 = [v14 time];
          v21 = [v20 timeZone];
          v22 = [NSTimeZone timeZoneWithName:v21];
          v23 = [v14 startDate];
          v24 = [v15 componentsInTimeZone:v22 fromDate:v23];
        }

        else
        {
LABEL_14:
          v20 = [v14 startDate];
          v24 = [v15 components:28 fromDate:v20];
        }

        v25 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld", [v24 year]);
        v26 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld", [v24 month]);
        v27 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld", [v24 day]);
        v28 = [v25 stringByAppendingFormat:@"-%@-%@", v26, v27];
        v29 = [v14 action];
        v30 = [v29 actionType];

        if (v30 == 4)
        {
          v31 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
          if (!os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            goto LABEL_22;
          }

          *buf = 0;
          v32 = v31;
          v33 = "bundle is mainly focusing on workout, so skip adding to groups";
LABEL_21:
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, v33, buf, 2u);
          goto LABEL_22;
        }

        v34 = [v14 places];
        v35 = [v34 count];

        if (v35)
        {
          v31 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
          if (!os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            goto LABEL_22;
          }

          *buf = 0;
          v32 = v31;
          v33 = "bundle has many places related, so skip adding to groups";
          goto LABEL_21;
        }

        v36 = [v14 place];

        if (!v36)
        {
          v31 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
          if (!os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            goto LABEL_22;
          }

          *buf = 0;
          v32 = v31;
          v33 = "there is no place in the bundle, so skip adding to groups";
          goto LABEL_21;
        }

        v31 = [v14 place];
        if (!v31)
        {
          goto LABEL_22;
        }

        if ([a1 isOutingBundleInsideOneDay:v14])
        {

LABEL_29:
          v63 = [v14 place];
          v37 = [v63 placeName];
          v31 = [NSString stringWithFormat:@"%@-%@", v28, v37];

          v38 = [v71 objectForKeyedSubscript:v31];

          if (v38)
          {
            v39 = [v71 objectForKeyedSubscript:v31];
            [a1 maximumDistanceFromBundle:v14 toBundleCluster:v39];
            v41 = v40;
            [v68 fineGranularity_outingBundlesAggregationDistanceThreshold];
            if (v41 < v42)
            {
              v64 = [v71 objectForKeyedSubscript:v31];
              [v64 addObject:v14];
            }
          }

          else
          {
            v44 = objc_opt_new();
            [v71 setObject:v44 forKeyedSubscript:v31];

            v39 = [v71 objectForKeyedSubscript:v31];
            [v39 addObject:v14];
          }

          v45 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
          {
            v46 = [v14 startDate];
            *buf = 138412546;
            v84 = v46;
            v85 = 2112;
            v86 = v31;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "add bundle with start date %@ to group for key: %@", buf, 0x16u);
          }

LABEL_22:
          goto LABEL_23;
        }

        if ([a1 isOutingBundleInsideOneDay:v14])
        {
          goto LABEL_22;
        }

        v43 = [a1 allPhotoAssetsFromBundleStartDay:v14];

        if (v43)
        {
          goto LABEL_29;
        }

LABEL_23:

        v13 = v13 + 1;
      }

      while (v73 != v13);
      v47 = [obj countByEnumeratingWithState:&v78 objects:v87 count:16];
      v73 = v47;
      if (!v47)
      {
LABEL_42:

        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v48 = v71;
        v49 = [v71 allKeys];
        v50 = [v49 countByEnumeratingWithState:&v74 objects:v82 count:16];
        if (v50)
        {
          v51 = v50;
          v52 = *v75;
          do
          {
            for (i = 0; i != v51; i = i + 1)
            {
              if (*v75 != v52)
              {
                objc_enumerationMutation(v49);
              }

              v54 = [v48 objectForKeyedSubscript:*(*(&v74 + 1) + 8 * i)];
              if ([v54 count] >= 2)
              {
                v55 = [a1 createOutingMegaBundleFromBundles:v54 withParameters:v68 isCoarseGranularity:v65 timeZoneManager:v66];
                [v67 addObject:v55];

                v48 = v71;
              }
            }

            v51 = [v49 countByEnumeratingWithState:&v74 objects:v82 count:16];
          }

          while (v51);
        }

        v56 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
        {
          v57 = [v67 count];
          *buf = 134218240;
          v84 = v57;
          v85 = 1024;
          LODWORD(v86) = v65;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "number of bundles created for merging bundles to the same place within the same day, %lu, for coarse granulariy, %d", buf, 0x12u);
        }

        v11 = v61;
        v10 = v62;
        v12 = v60;
        goto LABEL_56;
      }
    }
  }

  v58 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  v71 = v58;
  if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "no candidate bundle for merging with in day and the same place", buf, 2u);
  }

LABEL_56:

  return v67;
}

+ (id)sortedWorkoutBundleByDuration:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    if ([v3 count] == 1)
    {
      v4 = v3;
    }

    else
    {
      v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_509];
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

int64_t __58__MOSummarizationUtilities_sortedWorkoutBundleByDuration___block_invoke(id a1, MOEventBundle *a2, MOEventBundle *a3)
{
  v4 = a3;
  v5 = [(MOEventBundle *)a2 metaDataForRank];
  v6 = [v5 objectForKeyedSubscript:@"WorkoutDuration"];
  [v6 floatValue];
  v8 = v7;

  v9 = [(MOEventBundle *)v4 metaDataForRank];

  v10 = [v9 objectForKeyedSubscript:@"WorkoutDuration"];
  [v10 floatValue];
  v12 = v11;

  if (v8 <= v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = -1;
  }

  if (v8 < v12)
  {
    return 1;
  }

  else
  {
    return v13;
  }
}

+ (id)sortedBundleByPhotoAssetsCount:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    if ([v3 count] == 1)
    {
      v4 = v3;
    }

    else
    {
      v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_511];
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

int64_t __59__MOSummarizationUtilities_sortedBundleByPhotoAssetsCount___block_invoke(id a1, MOEventBundle *a2, MOEventBundle *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [NSPredicate predicateWithFormat:@"type == %lu", 2];
  v7 = [(MOEventBundle *)v5 resources];

  v8 = [v7 filteredArrayUsingPredicate:v6];
  v9 = [v8 count];

  v10 = [(MOEventBundle *)v4 resources];

  v11 = [v10 filteredArrayUsingPredicate:v6];
  v12 = [v11 count];

  if (v9 <= v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = -1;
  }

  if (v9 < v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  return v14;
}

+ (id)sortedBundleByStartDate:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    if ([v3 count] == 1)
    {
      v4 = v3;
    }

    else
    {
      v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_513];
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

int64_t __52__MOSummarizationUtilities_sortedBundleByStartDate___block_invoke(id a1, MOEventBundle *a2, MOEventBundle *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(MOEventBundle *)v4 startDate];
  v7 = [(MOEventBundle *)v5 startDate];
  v8 = [v6 isBeforeDate:v7];

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v10 = [(MOEventBundle *)v4 startDate];
    v11 = [(MOEventBundle *)v5 startDate];
    v12 = [v10 isAfterDate:v11];

    v9 = (v12 << 63) >> 63;
  }

  return v9;
}

+ (BOOL)hasWorkoutRoute:(id)a3
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [a3 events];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [*(*(&v9 + 1) + 8 * i) workoutLocationRoute];

        if (v7)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

+ (BOOL)bundleHasOneWayRoute:(id)a3 parameters:(id)a4
{
  v6 = a4;
  v7 = [a1 sortedActivityEventsFromBundle:a3];
  if (![v7 count])
  {
    goto LABEL_6;
  }

  v8 = [v7 firstObject];
  v9 = [v8 workoutLocationRoute];
  if (v9)
  {
    v10 = [v7 lastObject];
    v11 = [v10 workoutLocationRoute];

    if (v11)
    {
      v12 = [v7 firstObject];
      v13 = [v12 workoutLocationRoute];
      v8 = [v13 firstObject];

      v9 = [v7 lastObject];
      v14 = [v9 workoutLocationRoute];
      v15 = [v14 lastObject];

      [v15 distanceFromLocation:v8];
      v17 = v16;
      [v6 fineGranularity_transitBundlesDestinationOneWayRouteMinimumDistanceThreshold];
      LOBYTE(v9) = v17 >= v18;

      goto LABEL_5;
    }

LABEL_6:
    LOBYTE(v9) = 0;
    goto LABEL_7;
  }

LABEL_5:

LABEL_7:
  return v9;
}

+ (id)getInterestingDestination:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 place];

  if (v5)
  {
    v6 = [v3 place];
    [v4 addObject:v6];
  }

  v7 = [v3 places];

  if (v7)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = [v3 places];
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v4 addObject:*(*(&v21 + 1) + 8 * i)];
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v10);
    }
  }

  v13 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
  v25 = v13;
  v14 = [NSArray arrayWithObjects:&v25 count:1];
  v15 = [v4 sortedArrayUsingDescriptors:v14];

  if (![v15 count])
  {
    goto LABEL_16;
  }

  v16 = [v15 firstObject];
  if ([v16 placeUserType] == 1)
  {

LABEL_16:
    v19 = 0;
    goto LABEL_17;
  }

  v17 = [v15 firstObject];
  v18 = [v17 placeUserType];

  if (v18 == 2)
  {
    goto LABEL_16;
  }

  v19 = [v15 firstObject];
LABEL_17:

  return v19;
}

+ (id)sortedActivityEventsFromBundle:(id)a3
{
  v3 = a3;
  v4 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
  v5 = [NSPredicate predicateWithFormat:@"(%K = %lu OR %K = %lu) AND (%K != %lu)", @"category", 2, @"category", 16, @"provider", 5];
  v6 = [v3 events];

  v7 = [v6 filteredArrayUsingPredicate:v5];
  v11 = v4;
  v8 = [NSArray arrayWithObjects:&v11 count:1];
  v9 = [v7 sortedArrayUsingDescriptors:v8];

  return v9;
}

+ (id)createTransitMegaBundleFromBundles:(id)a3 withParameters:(id)a4 isCoarseGranularity:(BOOL)a5 timeZoneManager:(id)a6 groupedOutingBundles:(id)a7
{
  v10 = a6;
  v11 = a7;
  v12 = [a3 mutableCopy];
  if ([v12 count] == 2)
  {
    v68 = a1;
    v70 = v11;
    v13 = [v12 firstObject];
    v14 = [v12 lastObject];
    v15 = [MOEventBundle alloc];
    v16 = +[NSUUID UUID];
    v17 = +[NSDate date];
    v18 = [(MOEventBundle *)v15 initWithBundleIdentifier:v16 creationDate:v17];

    v19 = objc_opt_new();
    v20 = [v13 bundleIdentifier];
    v21 = [v20 UUIDString];
    v71 = v19;
    [v19 addObject:v21];

    [v13 setIsAggregatedAndSuppressed:1];
    [(MOEventBundle *)v18 setInterfaceType:12];
    [(MOEventBundle *)v18 setBundleSuperType:2];
    v22 = [v13 action];
    v23 = [v22 actionSubtype];

    if (v23 == 1)
    {
      [(MOEventBundle *)v18 setBundleSubType:205];
    }

    v24 = [v13 action];
    v25 = [v24 actionSubtype];

    if (v25 == 2)
    {
      [(MOEventBundle *)v18 setBundleSubType:206];
    }

    [(MOEventBundle *)v18 setSummarizationGranularity:1];
    v26 = [v13 action];
    [(MOEventBundle *)v18 setAction:v26];

    v27 = [v13 concurrentMediaAction];
    [(MOEventBundle *)v18 setConcurrentMediaAction:v27];

    v28 = [v13 endDate];
    v29 = [MOTime timeForDate:v28 timeZoneManager:v10];
    [(MOEventBundle *)v18 setTime:v29];

    v30 = objc_opt_new();
    v31 = [v13 events];
    [v30 addObjectsFromArray:v31];

    [(MOEventBundle *)v18 setEvents:v30];
    [(MOEventBundle *)v18 setPropertiesBasedOnEvents];
    v32 = [v13 startDate];
    [(MOEventBundle *)v18 setStartDate:v32];

    v33 = [v13 endDate];
    [(MOEventBundle *)v18 setEndDate:v33];

    v34 = [v13 expirationDate];
    [(MOEventBundle *)v18 setExpirationDate:v34];

    v35 = objc_opt_new();
    v36 = [v13 resources];
    [v35 addObjectsFromArray:v36];

    v69 = v10;
    if ([v14 interfaceType] == 2 && (objc_msgSend(v70, "containsObject:", v14) & 1) == 0)
    {
      v40 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = [v13 suggestionID];
        v42 = [v14 suggestionID];
        *buf = 138412546;
        v73 = v41;
        v74 = 2112;
        v75 = v42;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "SummarizationUtilities: Combining activity bundle and outing bundle for transit bundle, activity %@, outing, %@", buf, 0x16u);
      }

      v43 = [v14 events];
      [v30 addObjectsFromArray:v43];

      [(MOEventBundle *)v18 setEvents:v30];
      [(MOEventBundle *)v18 setPropertiesBasedOnEvents];
      v44 = [v13 startDate];
      [(MOEventBundle *)v18 setStartDate:v44];

      v45 = [v14 endDate];
      [(MOEventBundle *)v18 setEndDate:v45];

      v46 = [v14 expirationDate];
      [(MOEventBundle *)v18 setExpirationDate:v46];

      v47 = [v68 addResourcesFromOutingBundle:v14 toActivityBundle:v13];

      [v14 setIsAggregatedAndSuppressed:1];
      v37 = [v14 bundleIdentifier];
      v48 = [v37 UUIDString];
      [v71 addObject:v48];

      v35 = v47;
    }

    else
    {
      v37 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = [v13 suggestionID];
        v39 = [v14 suggestionID];
        *buf = 138412546;
        v73 = v38;
        v74 = 2112;
        v75 = v39;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "SummarizationUtilities: Adding destination from timecontext bundle to activity bundle for transit bundle, activity %@, timecontext, %@", buf, 0x16u);
      }
    }

    v49 = [v71 copy];
    [(MOEventBundle *)v18 setSubBundleIDs:v49];

    v50 = objc_opt_new();
    v51 = [MOSummarizationUtilities getInterestingDestination:v14];
    [v51 setPriorityScore:20000.0];
    [v50 addObject:v51];
    v52 = [v13 place];

    if (v52)
    {
      v53 = [v13 place];
      [(MOEventBundle *)v18 setPlace:v53];

      v54 = [v13 place];
      [v50 addObject:v54];
    }

    [(MOEventBundle *)v18 setPlaces:v50];
    [(MOEventBundle *)v18 setResources:v35];
    if ([v14 interfaceType] == 2)
    {
      [v68 updateRankMetaDataFrom:v12 forSummaryBundle:v18];
LABEL_31:

      v10 = v69;
      v11 = v70;
      goto LABEL_32;
    }

    v55 = [v13 rankingDictionary];
    [(MOEventBundle *)v18 setRankingDictionary:v55];

    v56 = [v51 poiCategory];

    if (v56)
    {
      [v51 placeNameConfidence];
      if (v57 >= 0.75)
      {
        v58 = nonInterestingPOIcategories;
        v59 = [v51 poiCategory];
        LODWORD(v58) = [v58 containsObject:v59];

        if (v58)
        {
          v60 = &off_10036E860;
LABEL_27:
          [(MOEventBundle *)v18 addMetaDataForRankForKey:@"PoiCategory" value:v60];
          goto LABEL_29;
        }
      }

      [v51 placeNameConfidence];
      if (v61 >= 0.75)
      {
        v62 = interestingPOIcategories;
        v63 = [v51 poiCategory];
        LODWORD(v62) = [v62 containsObject:v63];

        if (v62)
        {
          v60 = &off_10036E870;
          goto LABEL_27;
        }
      }

      v64 = +[NSNull null];
      [(MOEventBundle *)v18 addMetaDataForRankForKey:@"PoiCategory" value:v64];
    }

LABEL_29:
    [v51 familiarityIndexLOI];
    if (v65 != -1.0)
    {
      [v51 familiarityIndexLOI];
      v66 = [NSNumber numberWithDouble:?];
      [(MOEventBundle *)v18 addMetaDataForRankForKey:@"FamiliarityIndex" value:v66];
    }

    goto LABEL_31;
  }

  v13 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v73 = [v12 count];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "SummarizationUtilities: %lu bundle(s) does not meet count requirement to create transit mega bundle for fine granularity", buf, 0xCu);
  }

  v18 = 0;
LABEL_32:

  return v18;
}

+ (id)addResourcesFromOutingBundle:(id)a3 toActivityBundle:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = &GEOPOICategoryGasStation_ptr;
  v8 = objc_opt_new();
  v9 = [v6 resources];
  v170 = v8;
  [v8 addObjectsFromArray:v9];

  v10 = &GEOPOICategoryGasStation_ptr;
  v11 = [NSPredicate predicateWithFormat:@"type == %lu", 2];
  v12 = [v6 resources];
  v13 = [v12 filteredArrayUsingPredicate:v11];

  v14 = [v5 resources];
  v164 = v11;
  v15 = [v14 filteredArrayUsingPredicate:v11];

  v165 = [[NSSortDescriptor alloc] initWithKey:@"priorityScore" ascending:1];
  if ([v15 count] && !objc_msgSend(v13, "count"))
  {
    v224 = v165;
    v16 = [NSArray arrayWithObjects:&v224 count:1];
    v17 = [v15 sortedArrayUsingDescriptors:v16];

    v205 = 0u;
    v206 = 0u;
    v203 = 0u;
    v204 = 0u;
    v18 = v17;
    v19 = [v18 countByEnumeratingWithState:&v203 objects:v223 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v204;
      v22 = 202.0;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v204 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v24 = *(*(&v203 + 1) + 8 * i);
          [v24 setPriorityScore:v22];
          v22 = v22 + 1.0;
          [v170 addObject:v24];
        }

        v20 = [v18 countByEnumeratingWithState:&v203 objects:v223 count:16];
      }

      while (v20);
    }

    v7 = &GEOPOICategoryGasStation_ptr;
    v10 = &GEOPOICategoryGasStation_ptr;
  }

  v159 = v15;
  v160 = v13;
  v162 = v6;
  if ([v15 count] && objc_msgSend(v13, "count"))
  {
    v222 = v165;
    v25 = [NSArray arrayWithObjects:&v222 count:1];
    v26 = [v13 sortedArrayUsingDescriptors:v25];

    v221 = v165;
    v27 = [NSArray arrayWithObjects:&v221 count:1];
    v28 = [v15 sortedArrayUsingDescriptors:v27];

    v29 = objc_opt_new();
    v30 = [v26 lastObject];
    [v30 priorityScore];
    v32 = v31;

    v201 = 0u;
    v202 = 0u;
    v199 = 0u;
    v200 = 0u;
    v33 = v26;
    v34 = [v33 countByEnumeratingWithState:&v199 objects:v220 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v200;
      do
      {
        for (j = 0; j != v35; j = j + 1)
        {
          if (*v200 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = [*(*(&v199 + 1) + 8 * j) assets];
          [v29 addObject:v38];
        }

        v35 = [v33 countByEnumeratingWithState:&v199 objects:v220 count:16];
      }

      while (v35);
    }

    v39 = v5;

    v197 = 0u;
    v198 = 0u;
    v195 = 0u;
    v196 = 0u;
    v40 = v28;
    v41 = [v40 countByEnumeratingWithState:&v195 objects:v219 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = v32 + 1.0;
      v44 = *v196;
      do
      {
        for (k = 0; k != v42; k = k + 1)
        {
          if (*v196 != v44)
          {
            objc_enumerationMutation(v40);
          }

          v46 = *(*(&v195 + 1) + 8 * k);
          v47 = [v46 assets];
          v48 = [v29 containsObject:v47];

          if ((v48 & 1) == 0)
          {
            [v46 setPriorityScore:v43];
            v43 = v43 + 1.0;
            v49 = [v46 assets];
            [v29 addObject:v49];

            [v170 addObject:v46];
          }
        }

        v42 = [v40 countByEnumeratingWithState:&v195 objects:v219 count:16];
      }

      while (v42);
    }

    v5 = v39;
    v6 = v162;
    v7 = &GEOPOICategoryGasStation_ptr;
    v10 = &GEOPOICategoryGasStation_ptr;
  }

  v50 = [v10[193] predicateWithFormat:@"type == %lu", 3];
  v51 = [v6 resources];
  v52 = [v51 filteredArrayUsingPredicate:v50];

  v53 = [v5 resources];
  v158 = v50;
  v54 = [v53 filteredArrayUsingPredicate:v50];

  if ([v54 count] && !objc_msgSend(v52, "count"))
  {
    v218 = v165;
    v55 = [NSArray arrayWithObjects:&v218 count:1];
    v56 = [v54 sortedArrayUsingDescriptors:v55];

    v193 = 0u;
    v194 = 0u;
    v191 = 0u;
    v192 = 0u;
    v57 = v56;
    v58 = [v57 countByEnumeratingWithState:&v191 objects:v217 count:16];
    if (v58)
    {
      v59 = v58;
      v60 = *v192;
      v61 = 300.0;
      do
      {
        for (m = 0; m != v59; m = m + 1)
        {
          if (*v192 != v60)
          {
            objc_enumerationMutation(v57);
          }

          v63 = *(*(&v191 + 1) + 8 * m);
          [v63 setPriorityScore:v61];
          v61 = v61 + 1.0;
          [v170 addObject:v63];
        }

        v59 = [v57 countByEnumeratingWithState:&v191 objects:v217 count:16];
      }

      while (v59);
    }

    v7 = &GEOPOICategoryGasStation_ptr;
    v10 = &GEOPOICategoryGasStation_ptr;
  }

  v156 = v54;
  v157 = v52;
  if ([v54 count] && objc_msgSend(v52, "count"))
  {
    v216 = v165;
    v64 = [NSArray arrayWithObjects:&v216 count:1];
    v65 = [v52 sortedArrayUsingDescriptors:v64];

    v215 = v165;
    v66 = [NSArray arrayWithObjects:&v215 count:1];
    v67 = [v54 sortedArrayUsingDescriptors:v66];

    v68 = v7[233];
    v69 = objc_opt_new();
    v70 = [v65 lastObject];
    [v70 priorityScore];
    v72 = v71 + 1.0;

    v73 = [v65 lastObject];
    [v73 priorityScore];
    v75 = v74;

    if (v75 == 201.0)
    {
      v76 = 300.0;
    }

    else
    {
      v76 = v72;
    }

    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v77 = v65;
    v78 = [v77 countByEnumeratingWithState:&v187 objects:v214 count:16];
    if (v78)
    {
      v79 = v78;
      v80 = *v188;
      do
      {
        for (n = 0; n != v79; n = n + 1)
        {
          if (*v188 != v80)
          {
            objc_enumerationMutation(v77);
          }

          v82 = [*(*(&v187 + 1) + 8 * n) name];
          [v69 addObject:v82];
        }

        v79 = [v77 countByEnumeratingWithState:&v187 objects:v214 count:16];
      }

      while (v79);
    }

    v83 = v5;

    v185 = 0u;
    v186 = 0u;
    v183 = 0u;
    v184 = 0u;
    v84 = v67;
    v85 = [v84 countByEnumeratingWithState:&v183 objects:v213 count:16];
    if (v85)
    {
      v86 = v85;
      v87 = *v184;
      do
      {
        for (ii = 0; ii != v86; ii = ii + 1)
        {
          if (*v184 != v87)
          {
            objc_enumerationMutation(v84);
          }

          v89 = *(*(&v183 + 1) + 8 * ii);
          v90 = [v89 name];
          v91 = [v69 containsObject:v90];

          if ((v91 & 1) == 0)
          {
            [v89 setPriorityScore:v76];
            v76 = v76 + 1.0;
            v92 = [v89 name];
            [v69 addObject:v92];

            [v170 addObject:v89];
          }
        }

        v86 = [v84 countByEnumeratingWithState:&v183 objects:v213 count:16];
      }

      while (v86);
    }

    v5 = v83;
    v6 = v162;
    v7 = &GEOPOICategoryGasStation_ptr;
    v10 = &GEOPOICategoryGasStation_ptr;
  }

  v93 = [v170 filteredArrayUsingPredicate:v164];
  if ([v93 count])
  {
    v94 = [v6 action];
    v95 = [v94 actionSubtype];

    if (v95 == 2)
    {
      v212 = v165;
      v96 = [NSArray arrayWithObjects:&v212 count:1];
      v97 = [v93 sortedArrayUsingDescriptors:v96];

      v98 = [v97 firstObject];
      [v98 setPriorityScore:99.0];
    }
  }

  v155 = v93;
  v99 = [v10[193] predicateWithFormat:@"%K = %lu", @"category", 24];
  v153 = [v10[193] predicateWithFormat:@"%K = %lu", @"provider", 1];
  v154 = v99;
  v211[0] = v99;
  v211[1] = v153;
  v100 = [NSArray arrayWithObjects:v211 count:2];
  v101 = [NSCompoundPredicate andPredicateWithSubpredicates:v100];

  v102 = v7[233];
  v169 = objc_opt_new();
  v103 = [v6 events];
  v163 = v101;
  v104 = [v103 filteredArrayUsingPredicate:v101];

  v105 = v7[233];
  v106 = objc_opt_new();
  v179 = 0u;
  v180 = 0u;
  v181 = 0u;
  v182 = 0u;
  obj = v104;
  v107 = [obj countByEnumeratingWithState:&v179 objects:v210 count:16];
  if (v107)
  {
    v108 = v107;
    v109 = *v180;
    do
    {
      for (jj = 0; jj != v108; jj = jj + 1)
      {
        if (*v180 != v109)
        {
          objc_enumerationMutation(obj);
        }

        v111 = *(*(&v179 + 1) + 8 * jj);
        v112 = [v111 identifierFromProvider];
        v113 = [v106 containsObject:v112];

        if ((v113 & 1) == 0)
        {
          v114 = [v111 identifierFromProvider];
          [v106 addObject:v114];

          [v169 addObject:v111];
        }
      }

      v108 = [obj countByEnumeratingWithState:&v179 objects:v210 count:16];
    }

    while (v108);
  }

  v115 = [v5 events];
  v116 = [v115 filteredArrayUsingPredicate:v163];

  v177 = 0u;
  v178 = 0u;
  v175 = 0u;
  v176 = 0u;
  v166 = v116;
  v117 = [v166 countByEnumeratingWithState:&v175 objects:v209 count:16];
  if (v117)
  {
    v118 = v117;
    v119 = *v176;
    do
    {
      for (kk = 0; kk != v118; kk = kk + 1)
      {
        if (*v176 != v119)
        {
          objc_enumerationMutation(v166);
        }

        v121 = *(*(&v175 + 1) + 8 * kk);
        v122 = [v121 identifierFromProvider];
        v123 = [v106 containsObject:v122];

        if ((v123 & 1) == 0)
        {
          [v169 addObject:v121];
        }
      }

      v118 = [v166 countByEnumeratingWithState:&v175 objects:v209 count:16];
    }

    while (v118);
  }

  v161 = v5;

  v152 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:0];
  v208 = v152;
  v124 = [NSArray arrayWithObjects:&v208 count:1];
  v125 = [v169 sortedArrayUsingDescriptors:v124];

  v126 = objc_opt_new();
  v171 = 0u;
  v172 = 0u;
  v173 = 0u;
  v174 = 0u;
  v127 = v125;
  v128 = [v127 countByEnumeratingWithState:&v171 objects:v207 count:16];
  if (v128)
  {
    v129 = v128;
    v168 = *v172;
    do
    {
      for (mm = 0; mm != v129; mm = mm + 1)
      {
        if (*v172 != v168)
        {
          objc_enumerationMutation(v127);
        }

        v131 = *(*(&v171 + 1) + 8 * mm);
        v132 = [v131 startDate];
        [v132 timeIntervalSince1970];
        v133 = [NSNumber numberWithDouble:?];
        [v126 setObject:v133 forKey:@"MOStateOfMindMetaDataKeyStartDate"];

        v134 = [v131 endDate];
        [v134 timeIntervalSince1970];
        v135 = [NSNumber numberWithDouble:?];
        [v126 setObject:v135 forKey:@"MOStateOfMindMetaDataKeyEndDate"];

        v136 = [v131 stateOfMindEvent];
        v137 = [v136 labels];
        [v126 setObject:v137 forKey:@"MOStateOfMindMetaDataKeyLabel"];

        v138 = [v131 stateOfMindEvent];
        v139 = [v138 domains];
        [v126 setObject:v139 forKey:@"MOStateOfMindMetaDataKeyDomain"];

        v140 = [v131 stateOfMindEvent];
        [v140 reflectiveInterval];
        v141 = [NSNumber numberWithDouble:?];
        [v126 setObject:v141 forKey:@"MOStateOfMindMetaDataKeyReflectiveInterval"];

        v142 = [v131 stateOfMindEvent];
        [v142 valence];
        v143 = [NSNumber numberWithDouble:?];
        [v126 setObject:v143 forKey:@"MOStateOfMindMetaDataKeyValence"];

        v144 = [v131 stateOfMindEvent];
        [v144 valenceClassification];
        v145 = [NSNumber numberWithDouble:?];
        [v126 setObject:v145 forKey:@"MOStateOfMindMetaDataKeyValenceClassification"];

        v146 = [v131 identifierFromProvider];
        [v126 setObject:v146 forKey:@"MOStateOfMindMetaDataKeyStateOfMindID"];

        v147 = [[MOResource alloc] initWithName:@"StateOfMind" type:16 dict:v126 value:0.0];
        v148 = [v131 identifierFromProvider];
        [(MOResource *)v147 setAssets:v148];

        v149 = [v131 eventIdentifier];
        [(MOResource *)v147 setSourceEventIdentifier:v149];

        [(MOResource *)v147 setSourceEventAccessType:8];
        v150 = [v127 firstObject];

        if (v150 == v131)
        {
          [(MOResource *)v147 setPriorityScore:202.0];
        }

        [v170 addObject:v147];
      }

      v129 = [v127 countByEnumeratingWithState:&v171 objects:v207 count:16];
    }

    while (v129);
  }

  [MOContextAnnotationUtilities addStateOfMindMetaDataForRankForBundle:v162 withEmotionEvents:v169];

  return v170;
}

+ (BOOL)isFlightBundle:(id)a3
{
  v3 = [a3 action];
  v4 = [v3 actionType] == 11;

  return v4;
}

+ (id)summarizeMotionActivityBundlesWithSamePlaceName:(id)a3 withParameters:(id)a4
{
  v6 = a3;
  v85 = a4;
  v84 = objc_opt_new();
  v7 = &GEOPOICategoryGasStation_ptr;
  v8 = [NSPredicate predicateWithFormat:@"(%K = %lu OR %K = %lu OR %K = %lu) AND %K == NO", @"bundleSubType", 204, @"bundleSubType", 207, @"bundleSubType", 206, @"isAggregatedAndSuppressed"];
  v9 = [v6 filteredArrayUsingPredicate:v8];
  v10 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
  v113 = v10;
  v11 = [NSArray arrayWithObjects:&v113 count:1];
  v12 = [v9 sortedArrayUsingDescriptors:v11];

  v13 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v110 = [v12 count];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Summarization: Found %lu bundles containing phone walks eligible for summarization", buf, 0xCu);
  }

  if ([v12 count] >= 2)
  {
    v72 = v10;
    v73 = v9;
    v74 = v8;
    v75 = v6;
    v14 = +[NSCalendar currentCalendar];
    v15 = [v12 firstObject];
    v16 = [v15 startDate];
    v17 = [v14 components:28 fromDate:v16];

    v18 = [v14 dateFromComponents:v17];
    v19 = [v12 lastObject];
    v20 = [v19 startDate];
    v21 = [v14 components:28 fromDate:v20];

    v71 = v21;
    v22 = [v14 dateFromComponents:v21];
    v23 = [v14 dateByAddingUnit:16 value:1 toDate:v22 options:0];

    v24 = v18;
    v76 = v24;
    if ([v24 compare:v23] == -1)
    {
      v78 = v14;
      v79 = v12;
      v77 = v23;
      while (1)
      {
        v25 = v24;
        v26 = [v14 dateByAddingUnit:16 value:1 toDate:v25 options:0];
        v27 = v7[193];
        v103[0] = _NSConcreteStackBlock;
        v103[1] = 3221225472;
        v103[2] = __91__MOSummarizationUtilities_summarizeMotionActivityBundlesWithSamePlaceName_withParameters___block_invoke;
        v103[3] = &unk_1003362D8;
        v83 = v25;
        v104 = v83;
        v82 = v26;
        v105 = v82;
        v81 = [v27 predicateWithBlock:v103];
        v28 = [v12 filteredArrayUsingPredicate:?];
        v29 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = [v28 count];
          *buf = 134218242;
          v110 = v30;
          v111 = 2112;
          v112 = v83;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Summarization: Found %lu bundles containing phone walks for %@", buf, 0x16u);
        }

        v31 = v28;
        if ([v28 count] >= 2)
        {
          break;
        }

LABEL_61:

        v24 = [v14 dateByAddingUnit:16 value:1 toDate:v83 options:0];

        if ([v24 compare:v23] != -1)
        {
          goto LABEL_62;
        }
      }

      v32 = objc_opt_new();
      v90 = objc_opt_new();
      v99 = 0u;
      v100 = 0u;
      v101 = 0u;
      v102 = 0u;
      v80 = v28;
      v33 = v28;
      v88 = v32;
      v89 = [v33 countByEnumeratingWithState:&v99 objects:v108 count:16];
      if (!v89)
      {
        goto LABEL_41;
      }

      v34 = *v100;
      v86 = *v100;
      v87 = v33;
LABEL_11:
      v35 = 0;
      while (1)
      {
        if (*v100 != v34)
        {
          objc_enumerationMutation(v33);
        }

        v36 = *(*(&v99 + 1) + 8 * v35);
        v37 = [v36 place];
        v38 = [v37 placeName];
        if (!v38)
        {
          break;
        }

        v39 = v38;
        v40 = [v36 place];
        v41 = [v40 startDate];

        if (!v41)
        {
          goto LABEL_18;
        }

        v42 = [v36 place];
LABEL_33:
        v52 = [a1 concatenatePlaceNameAndPlaceStart:v42];
        if (v52)
        {
          v53 = [v32 objectForKey:v52];

          if (v53)
          {
            v54 = [v32 objectForKeyedSubscript:v52];
            [v54 addObject:v36];
          }

          else
          {
            v54 = objc_opt_new();
            [v54 addObject:v36];
            [v32 setObject:v54 forKey:v52];
          }

          v55 = [v90 objectForKey:v52];

          if (!v55)
          {
            [v90 setObject:v42 forKey:v52];
          }
        }

        if (++v35 == v89)
        {
          v89 = [v33 countByEnumeratingWithState:&v99 objects:v108 count:16];
          if (!v89)
          {
LABEL_41:

            v56 = [v32 allKeys];
            v57 = [v56 count];

            if (v57)
            {
              v93 = 0u;
              v94 = 0u;
              v91 = 0u;
              v92 = 0u;
              v58 = [v32 allKeys];
              v59 = [v58 countByEnumeratingWithState:&v91 objects:v106 count:16];
              if (v59)
              {
                v60 = v59;
                v61 = *v92;
                do
                {
                  for (i = 0; i != v60; i = i + 1)
                  {
                    if (*v92 != v61)
                    {
                      objc_enumerationMutation(v58);
                    }

                    v63 = *(*(&v91 + 1) + 8 * i);
                    v64 = [v32 objectForKeyedSubscript:v63];
                    v65 = [v90 objectForKeyedSubscript:v63];
                    if ([v64 count] >= 2 && objc_msgSend(v65, "placeUserType") != 1 && objc_msgSend(v65, "placeUserType") != 2)
                    {
                      v66 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
                      if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
                      {
                        v67 = [v64 count];
                        *buf = 134218242;
                        v110 = v67;
                        v111 = 2112;
                        v112 = v83;
                        _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_INFO, "Summarization: Found %lu bundles containing phone walks with the same place for %@", buf, 0x16u);
                      }

                      v68 = [a1 createMotionActivityMegaBundleFromBundles:v64 withSamePlace:v65 withParameters:v85];
                      if (v68)
                      {
                        v69 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
                        if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
                        {
                          *buf = 138412290;
                          v110 = v68;
                          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, "Summarization: Created phone walk mega bundle, %@", buf, 0xCu);
                        }

                        [v84 addObject:v68];
                      }
                    }

                    v32 = v88;
                  }

                  v60 = [v58 countByEnumeratingWithState:&v91 objects:v106 count:16];
                }

                while (v60);
              }
            }

            v7 = &GEOPOICategoryGasStation_ptr;
            v14 = v78;
            v12 = v79;
            v23 = v77;
            v31 = v80;
            goto LABEL_61;
          }

          goto LABEL_11;
        }
      }

LABEL_18:
      v43 = [v36 places];

      if (v43)
      {
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v44 = [v36 places];
        v42 = [v44 countByEnumeratingWithState:&v95 objects:v107 count:16];
        if (v42)
        {
          v45 = a1;
          v46 = *v96;
          while (2)
          {
            for (j = 0; j != v42; j = j + 1)
            {
              if (*v96 != v46)
              {
                objc_enumerationMutation(v44);
              }

              v48 = *(*(&v95 + 1) + 8 * j);
              v49 = [v48 placeName];
              if (v49)
              {
                v50 = v49;
                v51 = [v48 startDate];

                if (v51)
                {
                  v42 = v48;
                  goto LABEL_31;
                }
              }
            }

            v42 = [v44 countByEnumeratingWithState:&v95 objects:v107 count:16];
            if (v42)
            {
              continue;
            }

            break;
          }

LABEL_31:
          a1 = v45;
          v33 = v87;
          v32 = v88;
          v34 = v86;
        }
      }

      else
      {
        v42 = 0;
      }

      goto LABEL_33;
    }

LABEL_62:

    v8 = v74;
    v6 = v75;
    v10 = v72;
    v9 = v73;
  }

  return v84;
}

uint64_t __91__MOSummarizationUtilities_summarizeMotionActivityBundlesWithSamePlaceName_withParameters___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 startDate];
  v5 = [v4 isOnOrAfter:*(a1 + 32)];

  v6 = [v3 startDate];

  LODWORD(a1) = [v6 isBeforeDate:*(a1 + 40)];
  return v5 & a1;
}

+ (id)concatenatePlaceNameAndPlaceStart:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ([v3 placeName], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [v4 startDate];

    if (v7)
    {
      v8 = objc_opt_new();
      v9 = [v4 placeName];
      [v8 addObject:v9];

      v10 = [v4 startDate];
      [v10 timeIntervalSinceReferenceDate];
      v12 = [NSString stringWithFormat:@"%f", v11];
      [v8 addObject:v12];

      v7 = [v8 componentsJoinedByString:@":"];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)createMotionActivityMegaBundleFromBundles:(id)a3 withSamePlace:(id)a4 withParameters:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count] < 2)
  {
    v11 = 0;
    goto LABEL_93;
  }

  v133 = a1;
  v141 = v10;
  v138 = v9;
  v147 = objc_opt_new();
  v146 = objc_opt_new();
  v12 = objc_opt_new();
  v157 = objc_opt_new();
  v156 = objc_opt_new();
  v155 = objc_opt_new();
  v154 = objc_opt_new();
  v159 = objc_opt_new();
  v140 = objc_opt_new();
  v13 = objc_opt_new();
  v158 = objc_opt_new();
  v145 = objc_opt_new();
  v139 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
  v137 = [[NSSortDescriptor alloc] initWithKey:@"priorityScore" ascending:1];
  v135 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
  v188 = v135;
  v14 = [NSArray arrayWithObjects:&v188 count:1];
  v136 = v8;
  v15 = [v8 sortedArrayUsingDescriptors:v14];

  v179 = 0u;
  v180 = 0u;
  v177 = 0u;
  v178 = 0u;
  obj = v15;
  v148 = [obj countByEnumeratingWithState:&v177 objects:v187 count:16];
  if (v148)
  {
    v143 = *v178;
    do
    {
      v16 = 0;
      do
      {
        if (*v178 != v143)
        {
          objc_enumerationMutation(obj);
        }

        v152 = v16;
        v17 = *(*(&v177 + 1) + 8 * v16);
        v18 = [v17 bundleIdentifier];
        v19 = [v18 UUIDString];
        [v147 addObject:v19];

        v20 = [v17 suggestionID];
        v21 = [v20 UUIDString];
        [v146 addObject:v21];

        v175 = 0u;
        v176 = 0u;
        v173 = 0u;
        v174 = 0u;
        v150 = v17;
        v22 = [v17 events];
        v23 = [v22 countByEnumeratingWithState:&v173 objects:v186 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v174;
          do
          {
            for (i = 0; i != v24; i = i + 1)
            {
              if (*v174 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v173 + 1) + 8 * i);
              v28 = [v27 eventIdentifier];
              v29 = [v28 UUIDString];
              v30 = [v12 containsObject:v29];

              if ((v30 & 1) == 0)
              {
                if ([v27 category] == 16 && objc_msgSend(v27, "provider") != 5)
                {
                  [v157 addObject:v27];
                }

                if ([v27 category] == 1 && objc_msgSend(v27, "provider") != 5)
                {
                  [v156 addObject:v27];
                }

                if ([v27 category] == 6 && objc_msgSend(v27, "provider") != 5)
                {
                  [v155 addObject:v27];
                }

                if ([v27 category] == 24 && objc_msgSend(v27, "provider") != 5)
                {
                  v31 = [v27 identifierFromProvider];
                  v32 = [v158 containsObject:v31];

                  if ((v32 & 1) == 0)
                  {
                    [v154 addObject:v27];
                    v33 = [v27 identifierFromProvider];
                    [v158 addObject:v33];
                  }
                }

                if ([v27 provider] == 5)
                {
                  [v159 addObject:v27];
                }
              }

              v34 = [v27 eventIdentifier];
              v35 = [v34 UUIDString];
              v36 = [v12 containsObject:v35];

              if ((v36 & 1) == 0)
              {
                v37 = [v27 eventIdentifier];
                v38 = [v37 UUIDString];
                [v12 addObject:v38];
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v173 objects:v186 count:16];
          }

          while (v24);
        }

        v171 = 0u;
        v172 = 0u;
        v169 = 0u;
        v170 = 0u;
        v39 = [v150 resources];
        v40 = [v39 countByEnumeratingWithState:&v169 objects:v185 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = *v170;
          do
          {
            for (j = 0; j != v41; j = j + 1)
            {
              if (*v170 != v42)
              {
                objc_enumerationMutation(v39);
              }

              v44 = *(*(&v169 + 1) + 8 * j);
              if ([v44 type] == 2)
              {
                v45 = [v44 assets];
                v46 = [v13 containsObject:v45];

                if ((v46 & 1) == 0)
                {
                  v47 = [v44 assets];
                  [v13 addObject:v47];

                  [v145 addObject:v44];
                }
              }
            }

            v41 = [v39 countByEnumeratingWithState:&v169 objects:v185 count:16];
          }

          while (v41);
        }

        v16 = v152 + 1;
      }

      while ((v152 + 1) != v148);
      v148 = [obj countByEnumeratingWithState:&v177 objects:v187 count:16];
    }

    while (v148);
  }

  v184 = v139;
  v48 = [NSArray arrayWithObjects:&v184 count:1];
  v49 = [v157 sortedArrayUsingDescriptors:v48];

  [v140 addObjectsFromArray:v49];
  if ([v156 count])
  {
    [v140 addObjectsFromArray:v156];
  }

  v50 = v159;
  if ([v159 count])
  {
    [v140 addObjectsFromArray:v159];
  }

  if ([v49 count] >= 2)
  {
    v51 = 1;
    while (1)
    {
      v52 = [v49 objectAtIndex:v51];
      v53 = v51 - 1;
      v54 = v49;
      v55 = [v49 objectAtIndex:v53];
      v56 = [(MOEventBundle *)v52 startDate];
      v57 = [v55 endDate];
      v58 = [v56 isAfterDate:v57];

      if (v58)
      {
        v59 = [(MOEventBundle *)v52 startDate];
        v60 = [v55 endDate];
        [v59 timeIntervalSinceDate:v60];
        v62 = v61;

        [v141 motionActivityWalkBundlesMaximumDurationBetweenWalksAtSamePlace];
        if (v62 > v63)
        {
          break;
        }
      }

      v49 = v54;
      v51 = v53 + 2;
      if ([v54 count] <= v51)
      {
        goto LABEL_54;
      }
    }

    v153 = v52;
    v11 = 0;
    v9 = v138;
    v49 = v54;
    v8 = v136;
    goto LABEL_92;
  }

LABEL_54:
  v64 = [MOEventBundle alloc];
  v65 = +[NSUUID UUID];
  v66 = +[NSDate date];
  v67 = [(MOEventBundle *)v64 initWithBundleIdentifier:v65 creationDate:v66];

  [(MOEventBundle *)v67 setInterfaceType:1];
  v153 = v67;
  [(MOEventBundle *)v67 setBundleSuperType:2];
  v68 = [v49 firstObject];
  v69 = [v68 motionActivityEvent];
  v70 = [v69 motionType];

  v151 = v49;
  if (v70 == 2)
  {
    v71 = 204;
    v72 = v155;
  }

  else
  {
    v73 = [v49 firstObject];
    v74 = [v73 motionActivityEvent];
    v75 = [v74 motionType];

    v76 = v75 == 3;
    v72 = v155;
    v77 = v67;
    if (!v76)
    {
      goto LABEL_60;
    }

    v71 = 207;
  }

  v77 = v67;
  [(MOEventBundle *)v67 setBundleSubType:v71];
LABEL_60:
  v78 = [v147 copy];
  [(MOEventBundle *)v77 setSubBundleIDs:v78];

  v79 = [v146 copy];
  [(MOEventBundle *)v77 setSubSuggestionIDs:v79];

  [(MOEventBundle *)v77 setEvents:v140];
  [(MOEventBundle *)v77 setPropertiesBasedOnEvents];
  v80 = [obj firstObject];
  v81 = [v80 startDate];
  [(MOEventBundle *)v77 setStartDate:v81];

  v82 = [obj lastObject];
  v83 = [v82 endDate];
  [(MOEventBundle *)v77 setEndDate:v83];

  v84 = [obj lastObject];
  v85 = [v84 expirationDate];
  [(MOEventBundle *)v77 setExpirationDate:v85];

  v86 = [obj firstObject];
  v87 = [v86 time];
  [(MOEventBundle *)v77 setTime:v87];

  v88 = [MOContextAnnotationUtilities setActionForActivityBundle:v49];
  [(MOEventBundle *)v77 setAction:v88];

  if ([v72 count])
  {
    v89 = [MOContextAnnotationUtilities annotateEventBundle:v77 playbackMediaEvents:v72];
    [v140 addObjectsFromArray:v89];
    [(MOEventBundle *)v77 setEvents:v140];
  }

  v9 = v138;
  if ([v154 count])
  {
    [v140 addObjectsFromArray:v154];
    [(MOEventBundle *)v67 setEvents:v140];
    [MOContextAnnotationUtilities addStateOfMindResourceForBundle:v67 withEmotionEvents:v154];
    [MOContextAnnotationUtilities addStateOfMindMetaDataForRankForBundle:v67 withEmotionEvents:v154];
  }

  v55 = objc_opt_new();
  [v138 setPriorityScore:20000.0];
  [v55 addObject:v138];
  v90 = [MOContextAnnotationUtilities locationsFromMotionEvents:v49];
  [v141 motionActivityWalkBundlesMinimumRangeOfLocationForWalkAreaMap];
  v92 = [MOContextAnnotationUtilities placeFromRoutes:v90 referencePointRatio:1.5 minimumRangeOfLocation:v91];
  v144 = v92;
  if (v92)
  {
    v93 = v92;
    v94 = [v140 firstObject];
    v95 = [v94 eventIdentifier];
    [v93 setSourceEventIdentifier:v95];

    [v93 setPriorityScore:200.0];
    [(MOEventBundle *)v153 setPlace:v93];
    [v55 addObject:v93];
    [(MOEventBundle *)v153 setPlaces:v55];
    v96 = [(MOEventBundle *)v153 resources];
    if (v96)
    {
      v97 = [(MOEventBundle *)v153 resources];
      v149 = [v97 mutableCopy];
    }

    else
    {
      v149 = objc_opt_new();
    }

    v98 = objc_opt_new();
    v99 = [(MOEventBundle *)v153 startDate];
    [v99 timeIntervalSince1970];
    v100 = [NSNumber numberWithDouble:?];
    [v98 setObject:v100 forKey:@"MOActivityMetaDataKeyStartDate"];

    v101 = [(MOEventBundle *)v153 endDate];
    [v101 timeIntervalSince1970];
    v102 = [NSNumber numberWithDouble:?];
    [v98 setObject:v102 forKey:@"MOActivityMetaDataKeyEndDate"];

    v103 = [(MOEventBundle *)v153 action];
    v104 = [v103 actionMetaData];

    v105 = [v104 objectForKeyedSubscript:@"ActivityActionMetaDataValue"];
    v130 = v104;
    v106 = [v104 objectForKeyedSubscript:@"ActivityActionMetaDataUnit"];
    v107 = [(MOEventBundle *)v153 action];
    v134 = [v107 actionName];

    if (v105 && v106)
    {
      [v98 setObject:v105 forKey:@"MOActivityMetaDataKeyStepCount"];
      [v98 setObject:v106 forKey:@"MOActivityMetaDataKeyUnit"];
    }

    v128 = v106;
    v129 = v105;
    [v98 setObject:v134 forKey:@"MOActivityMetaDataMotionType"];
    v131 = v98;
    v108 = [[MOResource alloc] initWithName:@"MotionActivity" type:13 dict:v98 value:0.0];
    v109 = [v140 firstObject];
    v110 = [v109 eventIdentifier];
    [(MOResource *)v108 setSourceEventIdentifier:v110];

    [(MOResource *)v108 setPriorityScore:100.0];
    v111 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    v112 = v149;
    if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_INFO, "Summarization: Primary MOResource created for phone walk bundle", buf, 2u);
    }

    v132 = v55;

    [v149 addObject:v108];
    v49 = v151;
    if ([v145 count])
    {
      v183 = v137;
      v113 = [NSArray arrayWithObjects:&v183 count:1];
      v114 = [v145 sortedArrayUsingDescriptors:v113];

      v166 = 0u;
      v167 = 0u;
      v164 = 0u;
      v165 = 0u;
      v115 = v114;
      v116 = [v115 countByEnumeratingWithState:&v164 objects:v182 count:16];
      if (v116)
      {
        v117 = v116;
        v118 = *v165;
        v119 = 202.0;
        do
        {
          for (k = 0; k != v117; k = k + 1)
          {
            if (*v165 != v118)
            {
              objc_enumerationMutation(v115);
            }

            [*(*(&v164 + 1) + 8 * k) setPriorityScore:v119];
            v119 = v119 + 1.0;
          }

          v117 = [v115 countByEnumeratingWithState:&v164 objects:v182 count:16];
        }

        while (v117);
      }

      v121 = [v115 firstObject];
      [v121 setPriorityScore:99.0];

      v112 = v149;
      [v149 addObjectsFromArray:v115];
    }

    [(MOEventBundle *)v153 setResources:v112];
    [v133 updateRankMetaDataFrom:obj forSummaryBundle:v153];
    v162 = 0u;
    v163 = 0u;
    v160 = 0u;
    v161 = 0u;
    v122 = obj;
    v123 = [v122 countByEnumeratingWithState:&v160 objects:v181 count:16];
    if (v123)
    {
      v124 = v123;
      v125 = *v161;
      do
      {
        for (m = 0; m != v124; m = m + 1)
        {
          if (*v161 != v125)
          {
            objc_enumerationMutation(v122);
          }

          [*(*(&v160 + 1) + 8 * m) setIsAggregatedAndSuppressed:1];
        }

        v124 = [v122 countByEnumeratingWithState:&v160 objects:v181 count:16];
      }

      while (v124);
    }

    v11 = v153;
    v8 = v136;
    v9 = v138;
    v50 = v159;
    v55 = v132;
  }

  else
  {
    v11 = 0;
    v50 = v159;
    v8 = v136;
  }

LABEL_92:
  v10 = v141;
LABEL_93:

  return v11;
}

+ (void)combinePhotoResources:(void *)a1 .cold.1(void *a1)
{
  v2 = [a1 assets];
  [a1 priorityScore];
  OUTLINED_FUNCTION_2(&_mh_execute_header, v3, v4, "secondary photo asset, %@, priority score, %f", v5, v6, v7, v8, 2u);
}

+ (void)getWorkoutActionsByActionSubtypeFromBundles:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_2_1(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  OUTLINED_FUNCTION_5_0(&_mh_execute_header, v5, v6, "getWorkoutActionsByActionSubtypeFromBundles: input action, %@");
}

+ (void)getActionsFromBundles:(uint64_t)a1 withDominantAction:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v8 = [a2 firstObject];
  OUTLINED_FUNCTION_2(&_mh_execute_header, v2, v3, "The dominant action added for visit, %@, added, %@", v4, v5, v6, v7, 2u);
}

+ (void)getActionsFromBundles:(uint64_t)a1 withDominantAction:(uint64_t)a2 .cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_2_1(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  OUTLINED_FUNCTION_5_0(&_mh_execute_header, v5, v6, "The action, %@, added");
}

+ (void)isOutingBundleInsideOneDay:(char)a1 .cold.1(char a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "SummarizationUtilities: outing bundle is inside one day: %d", v2, 8u);
}

@end