@interface MOSummarizationUtilities
+ (BOOL)allPhotoAssetsFromBundleStartDay:(id)day;
+ (BOOL)bundleHasOneWayRoute:(id)route parameters:(id)parameters;
+ (BOOL)hasWorkoutRoute:(id)route;
+ (BOOL)isBundle:(id)bundle insideTheSameDayAsOtherBundle:(id)otherBundle;
+ (BOOL)isBundleWithAssets:(id)assets;
+ (BOOL)isFlightBundle:(id)bundle;
+ (BOOL)isOutingBundleFromHomeOrWorkVisit:(id)visit;
+ (BOOL)isOutingBundleInsideOneDay:(id)day;
+ (BOOL)shouldIncludeVisitIntoActionsFromBundles:(id)bundles forDominantBundle:(id)bundle withParameters:(id)parameters;
+ (double)maximumDistanceFromBundle:(id)bundle toBundleCluster:(id)cluster;
+ (double)overlappingTimeIntervalBetween:(id)between andOtherBundle:(id)bundle;
+ (double)workoutTimeIntervalBetweenBundle:(id)bundle andNextBundle:(id)nextBundle;
+ (id)addResourcesFromOutingBundle:(id)bundle toActivityBundle:(id)activityBundle;
+ (id)combineEmotionResources:(id)resources;
+ (id)combineMediaResources:(id)resources;
+ (id)combinePhotoResources:(id)resources;
+ (id)concatenatePlaceNameAndPlaceStart:(id)start;
+ (id)createActivityMegaBundleFromBundles:(id)bundles withParameters:(id)parameters isCoarseGranularity:(BOOL)granularity isWeeklySummary:(BOOL)summary timeZoneManager:(id)manager;
+ (id)createDominantBundleFromBundles:(id)bundles withParameters:(id)parameters timeZoneManager:(id)manager;
+ (id)createMegaBundleFromBundles:(id)bundles parameters:(id)parameters timeZoneManager:(id)manager;
+ (id)createMotionActivityMegaBundleFromBundles:(id)bundles withSamePlace:(id)place withParameters:(id)parameters;
+ (id)createOutingMegaBundleFromBundles:(id)bundles withParameters:(id)parameters isCoarseGranularity:(BOOL)granularity timeZoneManager:(id)manager;
+ (id)createTransitMegaBundleFromBundles:(id)bundles withParameters:(id)parameters isCoarseGranularity:(BOOL)granularity timeZoneManager:(id)manager groupedOutingBundles:(id)outingBundles;
+ (id)findDuplicatePhotoResourceFromBundle:(id)bundle comparedWithPrimaryBundle:(id)primaryBundle;
+ (id)getActionFromBundles:(id)bundles withMainActionSelectionThresholdBasedOnDuration:(float)duration;
+ (id)getActionsFromBundles:(id)bundles withDominantAction:(id)action;
+ (id)getDominantBundleFromBundles:(id)bundles;
+ (id)getInterestingDestination:(id)destination;
+ (id)getPlaceFromBundle:(id)bundle;
+ (id)getPlaceFromPlacesSortedByDuration:(id)duration;
+ (id)getResourcesForOutingSummaryBundleWithWorkoutResources:(id)resources photoResources:(id)photoResources mediaResources:(id)mediaResources emotionResources:(id)emotionResources shouldUpLevelPhoto:(BOOL)photo;
+ (id)getResourcesForWeeklyWorkoutSummaryBundleWithWorkoutResources:(id)resources photoResources:(id)photoResources mediaResources:(id)mediaResources;
+ (id)getResourcesFromBundles:(id)bundles forSummaryBundle:(id)bundle withParameters:(id)parameters;
+ (id)getWorkoutActionsByActionSubtypeFromBundles:(id)bundles;
+ (id)mergeOutingBundlesWithInDayWithGroupedBundles:(id)bundles remainingSingletonBundles:(id)singletonBundles parameters:(id)parameters isCoarseGranularity:(BOOL)granularity timeZoneManager:(id)manager;
+ (id)metricForVisitsFromBundle:(id)bundle andNextBundle:(id)nextBundle;
+ (id)sortedActivityEventsFromBundle:(id)bundle;
+ (id)sortedBundleBasedOnGoodnessScore:(id)score;
+ (id)sortedBundleByPhotoAssetsCount:(id)count;
+ (id)sortedBundleByStartDate:(id)date;
+ (id)sortedVisitEventsFromBundle:(id)bundle;
+ (id)sortedWorkoutBundleByDuration:(id)duration;
+ (id)sortedWorkoutEventsFromBundle:(id)bundle;
+ (id)summarizeMotionActivityBundlesWithSamePlaceName:(id)name withParameters:(id)parameters;
+ (id)workoutMetaDataCreatedForBundles:(id)bundles;
+ (void)removeDuplicatePhotoResourceFromBundle:(id)bundle comparedWithPrimaryBundle:(id)primaryBundle;
+ (void)removeUnnecessaryResourceFromWorkoutSummaryBundle:(id)bundle;
+ (void)setActionsAndPlacesFromBundles:(id)bundles forDominantBundle:(id)bundle withParameters:(id)parameters;
+ (void)setActionsAndPlacesFromBundles:(id)bundles forSummaryBundle:(id)bundle;
+ (void)setMediaActionForWorkoutBundle:(id)bundle withMediaPlaySessionDominantFactorThreshold:(double)threshold mediaPlaySessionsOverlapsMinimumDistance:(double)distance;
+ (void)updateRankMetaDataFrom:(id)from forSummaryBundle:(id)bundle;
@end

@implementation MOSummarizationUtilities

+ (double)overlappingTimeIntervalBetween:(id)between andOtherBundle:(id)bundle
{
  bundleCopy = bundle;
  betweenCopy = between;
  v7 = [NSDateInterval alloc];
  startDate = [betweenCopy startDate];
  endDate = [betweenCopy endDate];

  v10 = [v7 initWithStartDate:startDate endDate:endDate];
  v11 = [NSDateInterval alloc];
  startDate2 = [bundleCopy startDate];
  endDate2 = [bundleCopy endDate];

  v14 = [v11 initWithStartDate:startDate2 endDate:endDate2];
  v15 = [v10 intersectionWithDateInterval:v14];
  [v15 duration];
  v17 = v16;

  return v17;
}

+ (id)findDuplicatePhotoResourceFromBundle:(id)bundle comparedWithPrimaryBundle:(id)primaryBundle
{
  bundleCopy = bundle;
  primaryBundleCopy = primaryBundle;
  resources = [bundleCopy resources];
  if (![resources count])
  {

    goto LABEL_25;
  }

  resources2 = [primaryBundleCopy resources];
  v9 = [resources2 count];

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
  v25 = bundleCopy;
  obj = [bundleCopy resources];
  v29 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (v29)
  {
    v27 = *v36;
    v28 = primaryBundleCopy;
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
        resources3 = [primaryBundleCopy resources];
        v14 = [resources3 countByEnumeratingWithState:&v31 objects:v41 count:16];
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
                objc_enumerationMutation(resources3);
              }

              v18 = *(*(&v31 + 1) + 8 * i);
              if ([v12 type] == 2 && objc_msgSend(v18, "type") == 2)
              {
                assets = [v12 assets];
                assets2 = [v18 assets];
                v21 = [assets isEqualToString:assets2];

                if (v21)
                {
                  v22 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
                  {
                    assets3 = [v12 assets];
                    *buf = 138412290;
                    v40 = assets3;
                    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "duplicate photo id, %@", buf, 0xCu);
                  }

                  [v10 addObject:v12];
                }
              }
            }

            v15 = [resources3 countByEnumeratingWithState:&v31 objects:v41 count:16];
          }

          while (v15);
        }

        v11 = v30 + 1;
        primaryBundleCopy = v28;
      }

      while ((v30 + 1) != v29);
      v29 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
    }

    while (v29);
  }

  bundleCopy = v25;
LABEL_26:

  return v10;
}

+ (void)removeDuplicatePhotoResourceFromBundle:(id)bundle comparedWithPrimaryBundle:(id)primaryBundle
{
  bundleCopy = bundle;
  v7 = [self findDuplicatePhotoResourceFromBundle:bundleCopy comparedWithPrimaryBundle:primaryBundle];
  if ([v7 count])
  {
    resources = [bundleCopy resources];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __93__MOSummarizationUtilities_removeDuplicatePhotoResourceFromBundle_comparedWithPrimaryBundle___block_invoke;
    v11[3] = &unk_10033B040;
    v12 = v7;
    v9 = [NSPredicate predicateWithBlock:v11];
    v10 = [resources filteredArrayUsingPredicate:v9];

    [bundleCopy setResources:v10];
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

+ (id)getResourcesFromBundles:(id)bundles forSummaryBundle:(id)bundle withParameters:(id)parameters
{
  bundlesCopy = bundles;
  bundleCopy = bundle;
  parametersCopy = parameters;
  if (![bundlesCopy count])
  {
    v57 = 0;
    goto LABEL_60;
  }

  selfCopy = self;
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
  v72 = bundlesCopy;
  obj = bundlesCopy;
  v82 = [obj countByEnumeratingWithState:&v98 objects:v104 count:16];
  if (!v82)
  {
    goto LABEL_32;
  }

  v81 = *v99;
  v12 = &GEOPOICategoryGasStation_ptr;
  v83 = v11;
  v84 = bundleCopy;
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
      resources = [v14 resources];
      v88 = v15;
      v17 = [resources filteredArrayUsingPredicate:v15];

      if ([v17 count])
      {
        [v78 setObject:v17 forKey:v14];
      }

      v87 = v17;
      v18 = [v12[193] predicateWithFormat:@"type == %lu", 2];
      resources2 = [v14 resources];
      v86 = v18;
      v20 = [resources2 filteredArrayUsingPredicate:v18];

      if ([v20 count])
      {
        [v76 setObject:v20 forKey:v14];
      }

      v85 = v20;
      v21 = [v12[193] predicateWithFormat:@"type == %lu", 3];
      resources3 = [v14 resources];
      v23 = [resources3 filteredArrayUsingPredicate:v21];

      if ([v23 count])
      {
        [v75 setObject:v23 forKey:v14];
      }

      v24 = [v12[193] predicateWithFormat:@"type == %lu", 6];
      resources4 = [v14 resources];
      v26 = [resources4 filteredArrayUsingPredicate:v24];

      if ([v26 count])
      {
        v27 = [v26 copy];
        [v77 addObjectsFromArray:v27];
      }

      bundleSuperType = [bundleCopy bundleSuperType];
      if (bundleSuperType == 1)
      {
        metaDataForRank = [bundleCopy metaDataForRank];
        v5 = [metaDataForRank objectForKeyedSubscript:@"VisitDuration"];
        [v5 floatValue];
        v31 = v30;
        [parametersCopy emotionAttachmentBundleDurationThreshold];
        if (v31 < v32)
        {

          v33 = v5;
LABEL_26:
          v42 = v21;
          v43 = [NSPredicate predicateWithFormat:@"type == %lu", 16];
          resources5 = [v14 resources];
          v89 = v43;
          v45 = [resources5 filteredArrayUsingPredicate:v43];

          if ([v45 count])
          {
            [v83 setObject:v45 forKey:v14];
          }

          v21 = v42;
          v5 = v45;
LABEL_29:

          v89 = metaDataForRank;
          v5 = v33;
          goto LABEL_30;
        }

        bundleSuperType2 = [bundleCopy bundleSuperType];
        v89 = metaDataForRank;
        v33 = v5;
        if (bundleSuperType2 != 2)
        {
          goto LABEL_29;
        }
      }

      else if ([bundleCopy bundleSuperType] != 2)
      {
        goto LABEL_30;
      }

      v79 = v21;
      metaDataForRank2 = [v84 metaDataForRank];
      v36 = [metaDataForRank2 objectForKeyedSubscript:@"WorkoutDuration"];
      [v36 floatValue];
      v38 = v37;
      [parametersCopy emotionAttachmentBundleDurationThreshold];
      v40 = v39;

      if (bundleSuperType == 1)
      {

        metaDataForRank = v89;
        v41 = v38 < v40;
      }

      else
      {
        v41 = v38 < v40;
        metaDataForRank = v89;
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
      bundleCopy = v84;
      v12 = &GEOPOICategoryGasStation_ptr;
    }

    while (v82 != v13);
    v82 = [obj countByEnumeratingWithState:&v98 objects:v104 count:16];
  }

  while (v82);
LABEL_32:

  if ([bundleCopy bundleSubType] == 202)
  {
    v46 = objc_opt_new();
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    places = [bundleCopy places];
    v48 = [places countByEnumeratingWithState:&v94 objects:v103 count:16];
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
            objc_enumerationMutation(places);
          }

          v53 = [*(*(&v94 + 1) + 8 * i) copy];
          [v53 setPriorityScore:20000.0];
          [v46 addObject:v53];
        }

        v50 = [places countByEnumeratingWithState:&v94 objects:v103 count:16];
      }

      while (v50);
    }

    [bundleCopy setPlaces:v46];
    v54 = v78;
    v55 = v76;
    v56 = [selfCopy getResourcesForWeeklyWorkoutSummaryBundleWithWorkoutResources:v78 photoResources:v76 mediaResources:v75];
    v57 = v71;
    bundlesCopy = v72;
    goto LABEL_59;
  }

  if ([v78 count] == 1)
  {
    v58 = [selfCopy hasWorkoutRoute:bundleCopy];
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
  places2 = [bundleCopy places];
  v60 = [places2 countByEnumeratingWithState:&v90 objects:v102 count:16];
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
          objc_enumerationMutation(places2);
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

      v61 = [places2 countByEnumeratingWithState:&v90 objects:v102 count:16];
    }

    while (v61);
  }

  [bundleCopy setPlaces:v46];
  v57 = v71;
  if ((v58 & 1) == 0)
  {
    [v71 addObjectsFromArray:v77];
  }

  v54 = v78;
  allKeys = [v78 allKeys];
  v69 = [allKeys count] == 0;

  v49 = v75;
  v55 = v76;
  v56 = [selfCopy getResourcesForOutingSummaryBundleWithWorkoutResources:v78 photoResources:v76 mediaResources:v75 emotionResources:v11 shouldUpLevelPhoto:v69];
  bundlesCopy = v72;
LABEL_59:
  [v57 addObjectsFromArray:v56];

LABEL_60:

  return v57;
}

+ (id)getResourcesForWeeklyWorkoutSummaryBundleWithWorkoutResources:(id)resources photoResources:(id)photoResources mediaResources:(id)mediaResources
{
  resourcesCopy = resources;
  photoResourcesCopy = photoResources;
  mediaResourcesCopy = mediaResources;
  v8 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v26 = resourcesCopy;
  obj = [resourcesCopy allValues];
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
        v11 = [v31 countByEnumeratingWithState:&v32 objects:v40 count:{16, mediaResourcesCopy, photoResourcesCopy}];
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
              name = [v15 name];
              type = [v15 type];
              getDictionary = [v15 getDictionary];
              [v15 value];
              v21 = [(MOResource *)v17 initWithName:name type:type dict:getDictionary value:?];

              sourceEventIdentifier = [v15 sourceEventIdentifier];
              [(MOResource *)v21 setSourceEventIdentifier:sourceEventIdentifier];

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

+ (id)getResourcesForOutingSummaryBundleWithWorkoutResources:(id)resources photoResources:(id)photoResources mediaResources:(id)mediaResources emotionResources:(id)emotionResources shouldUpLevelPhoto:(BOOL)photo
{
  photoCopy = photo;
  resourcesCopy = resources;
  photoResourcesCopy = photoResources;
  mediaResourcesCopy = mediaResources;
  emotionResourcesCopy = emotionResources;
  v48 = objc_opt_new();
  allValues = [resourcesCopy allValues];
  v17 = [allValues count];

  if (v17)
  {
    v38 = photoCopy;
    selfCopy = self;
    v40 = emotionResourcesCopy;
    v41 = mediaResourcesCopy;
    v42 = photoResourcesCopy;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v43 = resourcesCopy;
    obj = [resourcesCopy allValues];
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
                name = [v25 name];
                type = [v25 type];
                getDictionary = [v25 getDictionary];
                [v25 value];
                v31 = [(MOResource *)v27 initWithName:name type:type dict:getDictionary value:?];

                sourceEventIdentifier = [v25 sourceEventIdentifier];
                [(MOResource *)v31 setSourceEventIdentifier:sourceEventIdentifier];

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

    photoResourcesCopy = v42;
    resourcesCopy = v43;
    emotionResourcesCopy = v40;
    mediaResourcesCopy = v41;
    self = selfCopy;
    photoCopy = v38;
  }

  v33 = [self combinePhotoResources:photoResourcesCopy];
  if ([v33 count])
  {
    if (photoCopy)
    {
      firstObject = [v33 firstObject];
      [firstObject setPriorityScore:100.0];
    }

    [v48 addObjectsFromArray:v33];
  }

  v35 = [self combineMediaResources:mediaResourcesCopy];
  if ([v35 count])
  {
    [v48 addObjectsFromArray:v35];
  }

  v36 = [self combineEmotionResources:emotionResourcesCopy];
  if ([v36 count])
  {
    [v48 addObjectsFromArray:v36];
  }

  return v48;
}

+ (id)combineEmotionResources:(id)resources
{
  resourcesCopy = resources;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  allKeys = [resourcesCopy allKeys];
  v7 = [allKeys count];

  if (v7)
  {
    v8 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:0];
    allKeys2 = [resourcesCopy allKeys];
    v32 = v8;
    v40 = v8;
    v10 = [NSArray arrayWithObjects:&v40 count:1];
    v11 = [allKeys2 sortedArrayUsingDescriptors:v10];

    if ([v11 count])
    {
      v12 = 0;
      v13 = 401.0;
      v33 = v11;
      v34 = resourcesCopy;
      do
      {
        v14 = [v11 objectAtIndexedSubscript:v12];
        v15 = [resourcesCopy objectForKey:v14];
        v16 = [v15 count];

        if (v16)
        {
          v17 = [v11 objectAtIndexedSubscript:v12];
          v18 = [resourcesCopy objectForKey:v17];

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
                assets = [v24 assets];
                v26 = [v4 containsObject:assets];

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
                  assets2 = [v24 assets];
                  [v4 addObject:assets2];
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
          resourcesCopy = v34;
        }

        ++v12;
      }

      while ([v11 count] > v12);
    }
  }

  return v5;
}

+ (id)combinePhotoResources:(id)resources
{
  resourcesCopy = resources;
  v91 = objc_opt_new();
  allKeys = [resourcesCopy allKeys];
  v6 = [allKeys count];

  if (v6)
  {
    allKeys2 = [resourcesCopy allKeys];
    v8 = [self sortedBundleByPhotoAssetsCount:allKeys2];

    v9 = objc_opt_new();
    firstObject = [v8 firstObject];
    v11 = [resourcesCopy objectForKey:firstObject];

    v84 = [[NSSortDescriptor alloc] initWithKey:@"photoCurationScore" ascending:0];
    v97 = v84;
    v12 = [NSArray arrayWithObjects:&v97 count:1];
    v85 = v11;
    v13 = [v11 sortedArrayUsingDescriptors:v12];

    v83 = v13;
    firstObject2 = [v13 firstObject];
    v15 = [MOResource alloc];
    name = [firstObject2 name];
    type = [firstObject2 type];
    getDictionary = [firstObject2 getDictionary];
    [firstObject2 value];
    v19 = [(MOResource *)v15 initWithName:name type:type dict:getDictionary value:?];

    sourceEventIdentifier = [firstObject2 sourceEventIdentifier];
    [(MOResource *)v19 setSourceEventIdentifier:sourceEventIdentifier];

    -[MOResource setSourceEventAccessType:](v19, "setSourceEventAccessType:", [firstObject2 sourceEventAccessType]);
    [(MOResource *)v19 setPriorityScore:201.0];
    photoCurationScore = [firstObject2 photoCurationScore];
    [(MOResource *)v19 setPhotoCurationScore:photoCurationScore];

    -[MOResource setPhotoFaceCount:](v19, "setPhotoFaceCount:", [firstObject2 photoFaceCount]);
    [firstObject2 photoOverallAestheticScore];
    [(MOResource *)v19 setPhotoOverallAestheticScore:?];
    -[MOResource setPhotoAssetMediaType:](v19, "setPhotoAssetMediaType:", [firstObject2 photoAssetMediaType]);
    v82 = firstObject2;
    assets = [firstObject2 assets];
    [(MOResource *)v19 setAssets:assets];

    v23 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    v24 = resourcesCopy;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [MOSummarizationUtilities combinePhotoResources:v19];
    }

    [v91 addObject:v19];
    v81 = v19;
    assets2 = [(MOResource *)v19 assets];
    v92 = v9;
    [v9 addObject:assets2];

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
          firstObject3 = [v33 firstObject];

          assets3 = [firstObject3 assets];
          LOBYTE(v33) = [v92 containsObject:assets3];

          if ((v33 & 1) == 0)
          {
            v36 = [MOResource alloc];
            name2 = [firstObject3 name];
            type2 = [firstObject3 type];
            getDictionary2 = [firstObject3 getDictionary];
            [firstObject3 value];
            v40 = [(MOResource *)v36 initWithName:name2 type:type2 dict:getDictionary2 value:?];

            sourceEventIdentifier2 = [firstObject3 sourceEventIdentifier];
            [(MOResource *)v40 setSourceEventIdentifier:sourceEventIdentifier2];

            -[MOResource setSourceEventAccessType:](v40, "setSourceEventAccessType:", [firstObject3 sourceEventAccessType]);
            photoCurationScore2 = [firstObject3 photoCurationScore];
            [(MOResource *)v40 setPhotoCurationScore:photoCurationScore2];

            -[MOResource setPhotoFaceCount:](v40, "setPhotoFaceCount:", [firstObject3 photoFaceCount]);
            [firstObject3 photoOverallAestheticScore];
            [(MOResource *)v40 setPhotoOverallAestheticScore:?];
            -[MOResource setPhotoAssetMediaType:](v40, "setPhotoAssetMediaType:", [firstObject3 photoAssetMediaType]);
            assets4 = [firstObject3 assets];
            [(MOResource *)v40 setAssets:assets4];

            [(MOResource *)v40 setPriorityScore:v26];
            v44 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
            {
              assets5 = [(MOResource *)v40 assets];
              [(MOResource *)v40 priorityScore];
              *buf = 138412546;
              v94 = assets5;
              v95 = 2048;
              v96 = v49;
              _os_log_debug_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, "auxiliary photo asset, %@, priority score, %f", buf, 0x16u);
            }

            [v91 addObject:v40];
            assets6 = [(MOResource *)v40 assets];
            [v92 addObject:assets6];
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
      allValues = [v24 allValues];
      v87 = [allValues count];

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
                  assets7 = [v60 assets];
                  v62 = [v51 containsObject:assets7];

                  if ((v62 & 1) == 0)
                  {
                    v63 = [MOResource alloc];
                    name3 = [v60 name];
                    type3 = [v60 type];
                    getDictionary3 = [v60 getDictionary];
                    [v60 value];
                    v67 = [(MOResource *)v63 initWithName:name3 type:type3 dict:getDictionary3 value:?];

                    sourceEventIdentifier3 = [v60 sourceEventIdentifier];
                    [(MOResource *)v67 setSourceEventIdentifier:sourceEventIdentifier3];

                    -[MOResource setSourceEventAccessType:](v67, "setSourceEventAccessType:", [v60 sourceEventAccessType]);
                    photoCurationScore3 = [v60 photoCurationScore];
                    [(MOResource *)v67 setPhotoCurationScore:photoCurationScore3];

                    -[MOResource setPhotoFaceCount:](v67, "setPhotoFaceCount:", [v60 photoFaceCount]);
                    [v60 photoOverallAestheticScore];
                    [(MOResource *)v67 setPhotoOverallAestheticScore:?];
                    -[MOResource setPhotoAssetMediaType:](v67, "setPhotoAssetMediaType:", [v60 photoAssetMediaType]);
                    assets8 = [v60 assets];
                    [(MOResource *)v67 setAssets:assets8];

                    lastObject = [v91 lastObject];
                    [lastObject priorityScore];
                    v73 = v72;

                    if (v73 >= 300.0)
                    {
                      lastObject2 = [v91 lastObject];
                      [lastObject2 priorityScore];
                      [(MOResource *)v67 setPriorityScore:v75 + 1.0];
                    }

                    else
                    {
                      [(MOResource *)v67 setPriorityScore:300.0];
                    }

                    v76 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
                    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
                    {
                      assets9 = [(MOResource *)v67 assets];
                      [(MOResource *)v67 priorityScore];
                      *buf = 138412546;
                      v94 = assets9;
                      v95 = 2048;
                      v96 = v79;
                      _os_log_debug_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEBUG, "remaining photo asset, %@, priority score, %f", buf, 0x16u);
                    }

                    [v91 addObject:v67];
                    assets10 = [(MOResource *)v67 assets];
                    v51 = v92;
                    [v92 addObject:assets10];
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

    resourcesCopy = v24;
  }

  return v91;
}

+ (id)combineMediaResources:(id)resources
{
  resourcesCopy = resources;
  v86 = objc_opt_new();
  allKeys = [resourcesCopy allKeys];
  v5 = [allKeys count];

  if (v5)
  {
    v6 = objc_opt_new();
    v7 = objc_opt_new();
    v89 = objc_opt_new();
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    allKeys2 = [resourcesCopy allKeys];
    v9 = [allKeys2 countByEnumeratingWithState:&v90 objects:v98 count:16];
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
            objc_enumerationMutation(allKeys2);
          }

          v13 = *(*(&v90 + 1) + 8 * i);
          action = [v13 action];
          actionType = [action actionType];

          if (actionType == 4)
          {
            v16 = v6;
          }

          else
          {
            v16 = v7;
          }

          [v16 addObject:v13];
        }

        v10 = [allKeys2 countByEnumeratingWithState:&v90 objects:v98 count:16];
      }

      while (v10);
    }

    v17 = v86;
    v81 = v6;
    v82 = resourcesCopy;
    v18 = v89;
    if ([v6 count])
    {
      sortBundlesByTimespan = [v6 sortBundlesByTimespan];
      if ([sortBundlesByTimespan count])
      {
        v21 = 0;
        *&v20 = 138412546;
        v77 = v20;
        v79 = sortBundlesByTimespan;
        v85 = v7;
        do
        {
          context = objc_autoreleasePoolPush();
          v22 = [sortBundlesByTimespan objectAtIndexedSubscript:v21];
          v23 = [resourcesCopy objectForKey:v22];
          v24 = [v23 count];

          if (v24)
          {
            v87 = v21;
            v25 = [sortBundlesByTimespan objectAtIndexedSubscript:v21];
            v26 = [resourcesCopy objectForKey:v25];

            if ([v26 count])
            {
              v27 = 0;
              while (1)
              {
                v28 = objc_autoreleasePoolPush();
                v29 = [v26 objectAtIndexedSubscript:v27];
                name = [v29 name];
                if ([v18 containsObject:name])
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
              name2 = [v29 name];
              type = [v29 type];
              getDictionary = [v29 getDictionary];
              [v29 value];
              name = [(MOResource *)v32 initWithName:name2 type:type dict:getDictionary value:?];

              sourceEventIdentifier = [v29 sourceEventIdentifier];
              [(MOResource *)name setSourceEventIdentifier:sourceEventIdentifier];

              -[MOResource setSourceEventAccessType:](name, "setSourceEventAccessType:", [v29 sourceEventAccessType]);
              if (v87 | v27)
              {
                v18 = v89;
                if (v87 || v27 != 1)
                {
                  v17 = v86;
                  lastObject = [v86 lastObject];
                  [lastObject priorityScore];
                  v39 = v38;

                  if (v39 >= 300.0)
                  {
                    lastObject2 = [v86 lastObject];
                    [lastObject2 priorityScore];
                    [(MOResource *)name setPriorityScore:v41 + 1.0];
                  }

                  else
                  {
                    [(MOResource *)name setPriorityScore:310.0];
                  }
                }

                else
                {
                  [(MOResource *)name setPriorityScore:310.0];
                  v17 = v86;
                }
              }

              else
              {
                [(MOResource *)name setPriorityScore:202.0];
                v17 = v86;
                v18 = v89;
              }

              v7 = v85;
              v42 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
              {
                v30Name = [(MOResource *)name name];
                [(MOResource *)name priorityScore];
                *buf = v77;
                v95 = v30Name;
                v96 = 2048;
                v97 = v45;
                _os_log_debug_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "media asset from workout name, %@, priority score, %f", buf, 0x16u);
              }

              [v17 addObject:name];
              v30Name2 = [(MOResource *)name name];
              [v18 addObject:v30Name2];

LABEL_31:
              goto LABEL_32;
            }

LABEL_33:

            v6 = v81;
            resourcesCopy = v82;
            sortBundlesByTimespan = v79;
            v21 = v87;
          }

          objc_autoreleasePoolPop(context);
          ++v21;
        }

        while ([sortBundlesByTimespan count] > v21);
      }
    }

    if ([v17 count] <= 10 && objc_msgSend(v7, "count"))
    {
      sortBundlesByTimespan2 = [v7 sortBundlesByTimespan];
      if ([sortBundlesByTimespan2 count])
      {
        v48 = 0;
        *&v47 = 138412546;
        v78 = v47;
        v80 = sortBundlesByTimespan2;
        do
        {
          contexta = objc_autoreleasePoolPush();
          v49 = [sortBundlesByTimespan2 objectAtIndexedSubscript:v48];
          v50 = [resourcesCopy objectForKey:v49];
          v51 = [v50 count];

          if (v51)
          {
            v88 = v48;
            v52 = [sortBundlesByTimespan2 objectAtIndexedSubscript:v48];
            v53 = [resourcesCopy objectForKey:v52];

            if ([v53 count])
            {
              v54 = 0;
              v55 = (v48 + 310);
              while (1)
              {
                v56 = objc_autoreleasePoolPush();
                v57 = [v53 objectAtIndexedSubscript:v54];
                name3 = [v57 name];
                if ([v18 containsObject:name3])
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
              name4 = [v57 name];
              type2 = [v57 type];
              getDictionary2 = [v57 getDictionary];
              [v57 value];
              name3 = [(MOResource *)v60 initWithName:name4 type:type2 dict:getDictionary2 value:?];

              sourceEventIdentifier2 = [v57 sourceEventIdentifier];
              [(MOResource *)name3 setSourceEventIdentifier:sourceEventIdentifier2];

              -[MOResource setSourceEventAccessType:](name3, "setSourceEventAccessType:", [v57 sourceEventAccessType]);
              if ([v17 count])
              {
                lastObject3 = [v17 lastObject];
                [lastObject3 priorityScore];
                v67 = v66;

                if (v67 < 300.0)
                {
                  v68 = name3;
                  v69 = 310.0;
                  goto LABEL_52;
                }

                lastObject4 = [v17 lastObject];
                [lastObject4 priorityScore];
                [(MOResource *)name3 setPriorityScore:v71 + 1.0];
              }

              else
              {
                v68 = name3;
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
                v58Name = [(MOResource *)name3 name];
                [(MOResource *)name3 priorityScore];
                *buf = v78;
                v95 = v58Name;
                v96 = 2048;
                v97 = v75;
                _os_log_debug_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEBUG, "media asset from outing name, %@, priority score, %f", buf, 0x16u);
              }

              [v17 addObject:name3];
              v58Name2 = [(MOResource *)name3 name];
              [v89 addObject:v58Name2];

LABEL_56:
              goto LABEL_57;
            }

LABEL_58:

            v6 = v81;
            resourcesCopy = v82;
            sortBundlesByTimespan2 = v80;
            v48 = v88;
          }

          objc_autoreleasePoolPop(contexta);
          ++v48;
        }

        while ([sortBundlesByTimespan2 count] > v48);
      }
    }
  }

  return v86;
}

+ (void)removeUnnecessaryResourceFromWorkoutSummaryBundle:(id)bundle
{
  bundleCopy = bundle;
  resources = [bundleCopy resources];
  v5 = [NSPredicate predicateWithBlock:&__block_literal_global_28];
  v6 = [resources filteredArrayUsingPredicate:v5];

  [bundleCopy setResources:v6];
}

BOOL __78__MOSummarizationUtilities_removeUnnecessaryResourceFromWorkoutSummaryBundle___block_invoke(id a1, MOResource *a2, NSDictionary *a3)
{
  v3 = a2;
  v4 = [(MOResource *)v3 type]== 10 || [(MOResource *)v3 type]== 2 || [(MOResource *)v3 type]== 3;

  return v4;
}

+ (id)createMegaBundleFromBundles:(id)bundles parameters:(id)parameters timeZoneManager:(id)manager
{
  bundlesCopy = bundles;
  managerCopy = manager;
  if ([bundlesCopy count] >= 2)
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
    v14 = bundlesCopy;
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

          events = [*(*(&v32 + 1) + 8 * i) events];
          [v13 addObjectsFromArray:events];
        }

        v16 = [v14 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v16);
    }

    allObjects = [v13 allObjects];
    [(MOEventBundle *)v9 setEvents:allObjects];

    [(MOEventBundle *)v9 setPropertiesBasedOnEvents];
    getTimeSpanOfMOEventBundleArray = [v14 getTimeSpanOfMOEventBundleArray];
    startDate = [getTimeSpanOfMOEventBundleArray startDate];
    [(MOEventBundle *)v9 setStartDate:startDate];

    endDate = [getTimeSpanOfMOEventBundleArray endDate];
    [(MOEventBundle *)v9 setEndDate:endDate];

    [self updateRankMetaDataFrom:v14 forSummaryBundle:v9];
    events2 = [(MOEventBundle *)v9 events];
    v25 = [NSSortDescriptor sortDescriptorWithKey:@"startDate" ascending:1];
    v36 = v25;
    v26 = [NSArray arrayWithObjects:&v36 count:1];
    v27 = [events2 sortedArrayUsingDescriptors:v26];

    lastObject = [v27 lastObject];
    endDate2 = [lastObject endDate];
    v30 = [MOTime timeForDate:endDate2 timeZoneManager:managerCopy];
    [(MOEventBundle *)v9 setTime:v30];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (void)updateRankMetaDataFrom:(id)from forSummaryBundle:(id)bundle
{
  fromCopy = from;
  bundleCopy = bundle;
  v267 = 0u;
  v268 = 0u;
  v269 = 0u;
  v270 = 0u;
  v7 = [fromCopy countByEnumeratingWithState:&v267 objects:v276 count:16];
  v228 = bundleCopy;
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
          objc_enumerationMutation(fromCopy);
        }

        if ([*(*(&v267 + 1) + 8 * i) interfaceType] == 2)
        {
          ++v9;
        }
      }

      v8 = [fromCopy countByEnumeratingWithState:&v267 objects:v276 count:16];
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
  v13 = fromCopy;
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
        endDate = [v23 endDate];
        startDate = [v23 startDate];
        [endDate timeIntervalSinceDate:startDate];
        v27 = v26;

        if ([v23 interfaceType] == 1)
        {
          metaDataForRank = [v23 metaDataForRank];
          v29 = [metaDataForRank objectForKeyedSubscript:@"DistanceToHome"];
          [v29 floatValue];
          v31 = v30;

          if (v31 >= 0.0)
          {
            metaDataForRank2 = [v23 metaDataForRank];
            v53 = [metaDataForRank2 objectForKeyedSubscript:@"DistanceToHome"];
            [v53 floatValue];

            metaDataForRank3 = [v23 metaDataForRank];
            v54 = [metaDataForRank3 objectForKeyedSubscript:@"DistanceToHome"];
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

            metaDataForRank3 = +[NSAssertionHandler currentHandler];
            [metaDataForRank3 handleFailureInMethod:a2 object:self file:@"MOSummarizationUtilities.m" lineNumber:530 description:{@"Workout in summary bundle distanceToHomeInMiles is negative (in %s:%d)", "+[MOSummarizationUtilities updateRankMetaDataFrom:forSummaryBundle:]", 530}];
          }

          metaDataForRank4 = [v23 metaDataForRank];
          v58 = [metaDataForRank4 objectForKeyedSubscript:@"WorkoutDuration"];
          [v58 floatValue];
          v60 = v59;

          if (v255)
          {
            metaDataForRank5 = [v23 metaDataForRank];
            v62 = [metaDataForRank5 objectForKeyedSubscript:@"FamiliarityIndex"];
            [v62 floatValue];
            v64 = v63;

            if (v64 == -1.0)
            {
              metaDataForRank6 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
              if (os_log_type_enabled(metaDataForRank6, OS_LOG_TYPE_FAULT))
              {
                [MOSummarizationUtilities updateRankMetaDataFrom:v262 forSummaryBundle:?];
              }
            }

            else
            {
              metaDataForRank6 = [v23 metaDataForRank];
              v66 = [metaDataForRank6 objectForKeyedSubscript:@"FamiliarityIndex"];
              [v66 floatValue];
              v68 = v241 + v67 * v27;
              v241 = v68;
            }

            metaDataForRank7 = [v23 metaDataForRank];
            v108 = [metaDataForRank7 objectForKeyedSubscript:@"PoiCategory"];

            v109 = +[NSNull null];
            v110 = [v108 isEqual:v109];

            if ((v110 & 1) == 0)
            {
              metaDataForRank8 = [v23 metaDataForRank];
              v112 = [metaDataForRank8 objectForKeyedSubscript:@"PoiCategory"];
              [v112 floatValue];
              v114 = v232 + v113 * v27;
              v232 = v114;
            }

            metaDataForRank9 = [v23 metaDataForRank];
            v116 = [metaDataForRank9 objectForKey:@"PeopleDensityWeightedAverage"];
            [v116 floatValue];
            v118 = v117;

            metaDataForRank10 = [v23 metaDataForRank];
            v120 = [metaDataForRank10 objectForKey:@"PeopleCountWeightedAverage"];
            [v120 floatValue];
            v122 = v121;

            metaDataForRank11 = [v23 metaDataForRank];
            v124 = [metaDataForRank11 objectForKey:@"StateOfMindLabels"];

            if (v124)
            {
              metaDataForRank12 = [v23 metaDataForRank];
              v126 = [metaDataForRank12 objectForKey:@"StateOfMindLabels"];
              [v246 addObjectsFromArray:v126];
            }

            metaDataForRank13 = [v23 metaDataForRank];
            v128 = [metaDataForRank13 objectForKey:@"StateOfMindDomains"];

            if (v128)
            {
              metaDataForRank14 = [v23 metaDataForRank];
              v130 = [metaDataForRank14 objectForKey:@"StateOfMindDomains"];
              [v245 addObjectsFromArray:v130];
            }

            metaDataForRank15 = [v23 metaDataForRank];
            v132 = [metaDataForRank15 objectForKey:@"StateOfMindValence"];

            if (v132)
            {
              metaDataForRank16 = [v23 metaDataForRank];
              v134 = [metaDataForRank16 objectForKey:@"StateOfMindValence"];
              [v244 addObjectsFromArray:v134];
            }

            metaDataForRank17 = [v23 metaDataForRank];
            v136 = [metaDataForRank17 objectForKey:@"StateOfMindValenceClassification"];

            if (v136)
            {
              metaDataForRank18 = [v23 metaDataForRank];
              v138 = [metaDataForRank18 objectForKey:@"StateOfMindValenceClassification"];
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
          metaDataForRank19 = [v23 metaDataForRank];
          v35 = [metaDataForRank19 objectForKeyedSubscript:@"PoiCategory"];

          v36 = +[NSNull null];
          v37 = [v35 isEqual:v36];

          if ((v37 & 1) == 0)
          {
            metaDataForRank20 = [v23 metaDataForRank];
            v39 = [metaDataForRank20 objectForKeyedSubscript:@"PoiCategory"];
            [v39 floatValue];
            v41 = v233 + v40 * v27;
            v233 = v41;
          }

          metaDataForRank21 = [v23 metaDataForRank];
          v43 = [metaDataForRank21 objectForKeyedSubscript:@"LocationModeTourist"];
          [v43 floatValue];
          v45 = v44;

          metaDataForRank22 = [v23 metaDataForRank];
          v47 = [metaDataForRank22 objectForKeyedSubscript:@"DistanceToHome"];
          [v47 floatValue];
          v49 = v48;

          if (v49 >= 0.0)
          {
            metaDataForRank23 = [v23 metaDataForRank];
            v85 = [metaDataForRank23 objectForKeyedSubscript:@"DistanceToHome"];
            [v85 floatValue];

            metaDataForRank24 = [v23 metaDataForRank];
            v86 = [metaDataForRank24 objectForKeyedSubscript:@"DistanceToHome"];
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

            metaDataForRank24 = +[NSAssertionHandler currentHandler];
            [metaDataForRank24 handleFailureInMethod:a2 object:self file:@"MOSummarizationUtilities.m" lineNumber:579 description:{@"Summary bundle distanceToHomeInMiles is negative (in %s:%d)", "+[MOSummarizationUtilities updateRankMetaDataFrom:forSummaryBundle:]", 579}];
          }

          metaDataForRank25 = [v23 metaDataForRank];
          v90 = [metaDataForRank25 objectForKeyedSubscript:@"FamiliarityIndex"];
          [v90 floatValue];
          v92 = v91;

          if (v92 == -1.0)
          {
            metaDataForRank26 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
            if (os_log_type_enabled(metaDataForRank26, OS_LOG_TYPE_FAULT))
            {
              [MOSummarizationUtilities updateRankMetaDataFrom:v260 forSummaryBundle:?];
            }
          }

          else
          {
            metaDataForRank26 = [v23 metaDataForRank];
            v94 = [metaDataForRank26 objectForKeyedSubscript:@"FamiliarityIndex"];
            [v94 floatValue];
            v96 = v242 + v95 * v27;
            v242 = v96;
          }

          metaDataForRank27 = [v23 metaDataForRank];
          v142 = [metaDataForRank27 objectForKey:@"PeopleDensityWeightedAverage"];
          [v142 floatValue];
          v144 = v143;

          metaDataForRank28 = [v23 metaDataForRank];
          v146 = [metaDataForRank28 objectForKey:@"PeopleCountWeightedAverage"];
          [v146 floatValue];
          v148 = v147;

          metaDataForRank29 = [v23 metaDataForRank];
          v150 = [metaDataForRank29 objectForKey:@"StateOfMindLabels"];

          if (v150)
          {
            metaDataForRank30 = [v23 metaDataForRank];
            v152 = [metaDataForRank30 objectForKey:@"StateOfMindLabels"];
            [v246 addObjectsFromArray:v152];
          }

          metaDataForRank31 = [v23 metaDataForRank];
          v154 = [metaDataForRank31 objectForKey:@"StateOfMindDomains"];

          if (v154)
          {
            metaDataForRank32 = [v23 metaDataForRank];
            v156 = [metaDataForRank32 objectForKey:@"StateOfMindDomains"];
            [v245 addObjectsFromArray:v156];
          }

          metaDataForRank33 = [v23 metaDataForRank];
          v158 = [metaDataForRank33 objectForKey:@"StateOfMindValence"];

          if (v158)
          {
            metaDataForRank34 = [v23 metaDataForRank];
            v160 = [metaDataForRank34 objectForKey:@"StateOfMindValence"];
            [v244 addObjectsFromArray:v160];
          }

          metaDataForRank35 = [v23 metaDataForRank];
          v162 = [metaDataForRank35 objectForKey:@"StateOfMindValenceClassification"];

          if (v162)
          {
            metaDataForRank36 = [v23 metaDataForRank];
            v164 = [metaDataForRank36 objectForKey:@"StateOfMindValenceClassification"];
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
          metaDataForRank37 = [v23 metaDataForRank];
          v70 = [metaDataForRank37 objectForKeyedSubscript:@"dailyAggregateCallDuration"];
          [v70 floatValue];
          v238 = v238 + v71;

          metaDataForRank38 = [v23 metaDataForRank];
          v73 = [metaDataForRank38 objectForKeyedSubscript:@"callDuration"];
          [v73 floatValue];
          v239 = v239 + v74;

          metaDataForRank39 = [v23 metaDataForRank];
          v76 = [metaDataForRank39 objectForKeyedSubscript:@"burstyInteractionCount"];
          [v76 floatValue];
          v240 = v240 + v77;

          metaDataForRank40 = [v23 metaDataForRank];
          v79 = [metaDataForRank40 objectForKeyedSubscript:v21];
          [v79 floatValue];
          v236 = v236 + v80;

          metaDataForRank41 = [v23 metaDataForRank];
          v82 = [metaDataForRank41 objectForKeyedSubscript:v22];
          [v82 floatValue];
          v237 = v237 + v83;

          v235 = v235 + 1.0;
        }

        else if ([v23 interfaceType] == 5)
        {
          metaDataForRank42 = [v23 metaDataForRank];
          v98 = [metaDataForRank42 objectForKey:@"MediaTotalPlayTime"];
          [v98 doubleValue];
          v100 = v99;

          v101 = v100;
          v229 = v229 + v101;
          metaDataForRank43 = [v23 metaDataForRank];
          v103 = [metaDataForRank43 objectForKey:@"MediaActionIsRepeat"];
          bOOLValue = [v103 BOOLValue];

          v105 = v231;
          if (bOOLValue)
          {
            v105 = v100 + v231 != 0.0;
          }

          v231 = v105;
          v106 = v27 + v230;
          v230 = v106;
        }

        if ([v23 bundleSubType] == 204 || objc_msgSend(v23, "bundleSubType") == 207 || objc_msgSend(v23, "bundleSubType") == 208 || objc_msgSend(v23, "bundleSubType") == 206)
        {
          metaDataForRank44 = [v23 metaDataForRank];
          v169 = [metaDataForRank44 objectForKeyedSubscript:@"MotionActivityWalkSpan"];
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
    v179 = bundleCopy;
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
  allObjects = [v220 allObjects];
  [v179 addMetaDataForRankForKey:@"StateOfMindLabels" value:allObjects];

  v222 = [NSSet setWithArray:v245];
  allObjects2 = [v222 allObjects];
  [v179 addMetaDataForRankForKey:@"StateOfMindDomains" value:allObjects2];

  v224 = [NSSet setWithArray:v244];
  allObjects3 = [v224 allObjects];
  [v179 addMetaDataForRankForKey:@"StateOfMindValence" value:allObjects3];

  v226 = [NSSet setWithArray:v243];
  allObjects4 = [v226 allObjects];
  [v179 addMetaDataForRankForKey:@"StateOfMindValenceClassification" value:allObjects4];
}

+ (id)createDominantBundleFromBundles:(id)bundles withParameters:(id)parameters timeZoneManager:(id)manager
{
  bundlesCopy = bundles;
  parametersCopy = parameters;
  v10 = [self createMegaBundleFromBundles:bundlesCopy parameters:parametersCopy timeZoneManager:manager];
  [self setActionsAndPlacesFromBundles:bundlesCopy forDominantBundle:v10 withParameters:parametersCopy];
  [v10 setInterfaceType:12];
  action = [v10 action];
  actionType = [action actionType];

  if (actionType == 4)
  {
    [parametersCopy dominantBundle_mediaPlaySessionDominantFactorThreshold];
    v14 = v13;
    [parametersCopy dominantBundle_mediaPlaySessionsOverlapsMinimumDistance];
    [self setMediaActionForWorkoutBundle:v10 withMediaPlaySessionDominantFactorThreshold:v14 mediaPlaySessionsOverlapsMinimumDistance:v15];
    v16 = 201;
    v17 = 2;
  }

  else
  {
    v16 = 101;
    v17 = 1;
  }

  [v10 setBundleSuperType:{v17, self, parametersCopy}];
  [v10 setBundleSubType:v16];
  v18 = objc_opt_new();
  v19 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v20 = bundlesCopy;
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
        bundleIdentifier = [v25 bundleIdentifier];
        uUIDString = [bundleIdentifier UUIDString];
        [v18 addObject:uUIDString];

        suggestionID = [v25 suggestionID];
        uUIDString2 = [suggestionID UUIDString];
        [v19 addObject:uUIDString2];
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

+ (id)getWorkoutActionsByActionSubtypeFromBundles:(id)bundles
{
  bundlesCopy = bundles;
  if ([bundlesCopy count])
  {
    v58 = objc_opt_new();
    v57 = objc_opt_new();
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v52 = bundlesCopy;
    obj = bundlesCopy;
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
          events = [v6 events];
          v8 = [events countByEnumeratingWithState:&v63 objects:v75 count:16];
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
                  objc_enumerationMutation(events);
                }

                v12 = *(*(&v63 + 1) + 8 * i);
                if ([v12 provider] == 1 && objc_msgSend(v12, "category") == 2)
                {
                  workoutType = [v12 workoutType];

                  if (workoutType)
                  {
                    allKeys = [v58 allKeys];
                    workoutType2 = [v12 workoutType];
                    v16 = [allKeys containsObject:workoutType2];

                    if (v16)
                    {
                      workoutType3 = [v12 workoutType];
                      v18 = [v58 objectForKey:workoutType3];
                      [v18 addObject:v12];

                      workoutType4 = [v12 workoutType];
                      workoutDuration2 = [v57 objectForKey:workoutType4];

                      [workoutDuration2 floatValue];
                      v22 = v21;
                      workoutDuration = [v12 workoutDuration];
                      [workoutDuration floatValue];
                      *&v25 = v22 + v24;
                      v26 = [NSNumber numberWithFloat:v25];
                      [v12 workoutType];
                      v27 = events;
                      v29 = v28 = v4;
                      [v57 setObject:v26 forKey:v29];

                      v4 = v28;
                      events = v27;
                    }

                    else
                    {
                      v30 = [NSMutableSet setWithObject:v12];
                      workoutType5 = [v12 workoutType];
                      [v58 setObject:v30 forKey:workoutType5];

                      workoutDuration2 = [v12 workoutDuration];
                      workoutDuration = [v12 workoutType];
                      [v57 setObject:workoutDuration2 forKey:workoutDuration];
                    }

                    v32 = _mo_log_facility_get_os_log(v4);
                    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
                    {
                      [(MOSummarizationUtilities *)v74 getWorkoutActionsByActionSubtypeFromBundles:v12];
                    }
                  }
                }
              }

              v9 = [events countByEnumeratingWithState:&v63 objects:v75 count:16];
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
            allObjects = [v40 allObjects];
            v43 = [allObjects objectAtIndex:0];
            workoutType6 = [v43 workoutType];
            v45 = [(MOAction *)v41 initWithActionName:workoutType6 actionType:4 actionSubtype:1 actionMetaData:0];

            allObjects2 = [v40 allObjects];
            firstObject = [allObjects2 firstObject];
            eventIdentifier = [firstObject eventIdentifier];
            [(MOAction *)v45 setSourceEventIdentifier:eventIdentifier];

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
    bundlesCopy = v52;
  }

  else
  {
    v50 = 0;
  }

  return v50;
}

+ (id)getActionsFromBundles:(id)bundles withDominantAction:(id)action
{
  bundlesCopy = bundles;
  actionCopy = action;
  if ([bundlesCopy count])
  {
    v7 = objc_opt_new();
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v52 = bundlesCopy;
    v8 = bundlesCopy;
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
          action = [v13 action];

          if (action)
          {
            action2 = [v13 action];
            actionName = [action2 actionName];

            allKeys = [v7 allKeys];
            v18 = [allKeys containsObject:actionName];

            if (v18)
            {
              v19 = [v7 objectForKey:actionName];
              [v19 addObject:v13];
            }

            else
            {
              v19 = [NSMutableSet setWithObject:v13];
              [v7 setObject:v19 forKey:actionName];
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
    allKeys2 = [v7 allKeys];
    v21 = [allKeys2 countByEnumeratingWithState:&v63 objects:v74 count:16];
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
            objc_enumerationMutation(allKeys2);
          }

          v25 = *(*(&v63 + 1) + 8 * j);
          v26 = [v7 objectForKey:v25];
          allObjects = [v26 allObjects];

          [allObjects getTotalDurationOfMOEventBundleArray];
          v28 = [NSNumber numberWithDouble:?];
          [v54 setObject:v28 forKey:v25];
        }

        v22 = [allKeys2 countByEnumeratingWithState:&v63 objects:v74 count:16];
      }

      while (v22);
    }

    v29 = [v54 keysSortedByValueUsingComparator:&__block_literal_global_436_0];
    v30 = objc_opt_new();
    if ([actionCopy actionType] == 2)
    {
      [v30 addObject:actionCopy];
      v31 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        [MOSummarizationUtilities getActionsFromBundles:actionCopy withDominantAction:v30];
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
          if (actionCopy && ([actionCopy actionName], v38 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v37, "isEqualToString:", v38), v38, v39))
          {
            v40 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
            {
              [MOSummarizationUtilities getActionsFromBundles:v58 withDominantAction:?];
            }
          }

          else
          {
            if ([actionCopy actionType] != 4 || !objc_msgSend(v37, "isEqualToString:", @"visit"))
            {
              v40 = [v7 objectForKeyedSubscript:v37];
              if (![v40 count])
              {
                goto LABEL_49;
              }

              v41 = [v40 count];
              allObjects2 = [v40 allObjects];
              v43 = allObjects2;
              if (v41 == 1)
              {
                v44 = [allObjects2 objectAtIndex:0];

                action3 = [v44 action];

                if (action3)
                {
                  action4 = [v44 action];
                  [v30 addObject:action4];

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
                v44 = [self getDominantBundleFromBundles:allObjects2];

                if (v44)
                {
                  action5 = [v44 action];

                  if (action5)
                  {
                    action6 = [v44 action];
                    [v30 addObject:action6];

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
    bundlesCopy = v52;
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

+ (id)getDominantBundleFromBundles:(id)bundles
{
  v3 = [bundles sortedArrayUsingComparator:&__block_literal_global_442];
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

+ (id)getActionFromBundles:(id)bundles withMainActionSelectionThresholdBasedOnDuration:(float)duration
{
  bundlesCopy = bundles;
  if ([bundlesCopy count] < 2)
  {
    action = 0;
    goto LABEL_48;
  }

  selfCopy = self;
  v8 = objc_opt_new();
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v64 = bundlesCopy;
  v9 = bundlesCopy;
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
        allKeys = [v8 allKeys];
        getBundleType = [v14 getBundleType];
        v17 = [allKeys containsObject:getBundleType];

        if (v17)
        {
          getBundleType2 = [v14 getBundleType];
          getBundleType3 = [v8 objectForKey:getBundleType2];
          [getBundleType3 addObject:v14];
        }

        else
        {
          getBundleType2 = [NSMutableSet setWithObject:v14];
          getBundleType3 = [v14 getBundleType];
          [v8 setObject:getBundleType2 forKey:getBundleType3];
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
  allKeys2 = [v8 allKeys];
  v22 = [allKeys2 countByEnumeratingWithState:&v69 objects:v78 count:16];
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
          objc_enumerationMutation(allKeys2);
        }

        v26 = *(*(&v69 + 1) + 8 * j);
        v27 = [v8 objectForKey:v26];
        allObjects = [v27 allObjects];

        [allObjects getTotalDurationOfMOEventBundleArray];
        v29 = [NSNumber numberWithDouble:?];
        [v20 setObject:v29 forKey:v26];
      }

      v23 = [allKeys2 countByEnumeratingWithState:&v69 objects:v78 count:16];
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
    allObjects2 = [v40 allObjects];
    firstObject = [allObjects2 firstObject];
    action = [firstObject action];

    goto LABEL_28;
  }

  v33 = [v20 objectForKey:@"activity"];
  [v33 doubleValue];
  v35 = v34;

  v36 = [v20 objectForKey:@"outing"];
  [v36 doubleValue];
  v38 = v37;

  if (v38 <= 0.0 || (v39 = v35 / v38, v35 / v38 >= duration))
  {
    v43 = [v8 objectForKey:{@"activity", v39}];
    allObjects3 = [v43 allObjects];

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v45 = allObjects3;
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
          action2 = [v51 action];
          if ([action2 actionType] == 4)
          {
            action3 = [v51 action];
            actionSubtype = [action3 actionSubtype];

            if (actionSubtype == 1)
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
      bundlesCopy = v64;
      v31 = v60;
      v30 = v61;
      if (v55)
      {
        v56 = [MOAction alloc];
        firstObject2 = [selfCopy workoutMetaDataCreatedForBundles:v45];
        action4 = [(MOAction *)v56 initWithActionName:@"workout" actionType:4 actionSubtype:1 actionMetaData:firstObject2];
LABEL_46:
        action = action4;

        goto LABEL_47;
      }
    }

    else
    {

      bundlesCopy = v64;
    }

    firstObject2 = [v45 firstObject];
    action4 = [firstObject2 action];
    goto LABEL_46;
  }

  action = [[MOAction alloc] initWithActionName:@"visit" actionType:2];
LABEL_28:
  bundlesCopy = v64;
LABEL_47:

LABEL_48:

  return action;
}

+ (id)sortedBundleBasedOnGoodnessScore:(id)score
{
  scoreCopy = score;
  if ([scoreCopy count])
  {
    if ([scoreCopy count] == 1)
    {
      v4 = scoreCopy;
    }

    else
    {
      v4 = [scoreCopy sortedArrayUsingComparator:&__block_literal_global_449];
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

+ (void)setActionsAndPlacesFromBundles:(id)bundles forDominantBundle:(id)bundle withParameters:(id)parameters
{
  bundlesCopy = bundles;
  bundleCopy = bundle;
  parametersCopy = parameters;
  if ([bundlesCopy count] <= 1)
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
  v13 = [self sortedBundleBasedOnGoodnessScore:bundlesCopy];
  v47 = parametersCopy;
  v48 = bundlesCopy;
  v51 = bundleCopy;
  v50 = [self shouldIncludeVisitIntoActionsFromBundles:bundlesCopy forDominantBundle:bundleCopy withParameters:parametersCopy];
  if ([v13 count])
  {
    v14 = 0;
    while (1)
    {
      v15 = [v13 objectAtIndexedSubscript:v14];
      action = [v15 action];
      if (!action)
      {
        goto LABEL_14;
      }

      action7 = action;
      action2 = [v15 action];
      actionName = [action2 actionName];
      if (!actionName)
      {
        goto LABEL_13;
      }

      v20 = actionName;
      action3 = [v15 action];
      actionName2 = [action3 actionName];
      v23 = [v53 containsObject:actionName2];

      if ((v23 & 1) == 0)
      {
        action4 = [v15 action];
        v25 = ([action4 actionType] != 2) | v50;

        if (v25)
        {
          break;
        }
      }

LABEL_14:
      place = [v15 place];
      if (place)
      {
        v32 = place;
        place2 = [v15 place];
        placeName = [place2 placeName];
        if (!placeName)
        {

LABEL_20:
          goto LABEL_21;
        }

        v35 = placeName;
        place3 = [v15 place];
        placeName2 = [place3 placeName];
        v38 = [v12 containsObject:placeName2];

        if ((v38 & 1) == 0)
        {
          place4 = [v15 place];
          [v52 addObject:place4];

          place5 = [v15 place];
          placeName3 = [place5 placeName];
          [v12 addObject:placeName3];

          v32 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            place6 = [v15 place];
            placeName4 = [place6 placeName];
            startDate = [v51 startDate];
            *buf = 138412546;
            v55 = placeName4;
            v56 = 2112;
            v57 = startDate;
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
      action5 = [v15 action];
      actionName3 = [action5 actionName];
      startDate2 = [v51 startDate];
      *buf = 138412546;
      v55 = actionName3;
      v56 = 2112;
      v57 = startDate2;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "SummarizationUtilities: add action to actions: %@, for dominant bundle with start date, %@", buf, 0x16u);
    }

    action6 = [v15 action];
    [v49 addObject:action6];

    action7 = [v15 action];
    action2 = [action7 actionName];
    [v53 addObject:action2];
LABEL_13:

    goto LABEL_14;
  }

LABEL_22:
  bundleCopy = v51;
  [v51 setActions:v49];
  v11 = v52;
  [v51 setPlaces:v52];
  if ([v52 count])
  {
    firstObject = [v52 firstObject];
    [v51 setPlace:firstObject];
  }

  parametersCopy = v47;
  bundlesCopy = v48;
  if ([v49 count])
  {
    firstObject2 = [v49 firstObject];
    [v51 setAction:firstObject2];
  }

LABEL_27:
}

+ (BOOL)shouldIncludeVisitIntoActionsFromBundles:(id)bundles forDominantBundle:(id)bundle withParameters:(id)parameters
{
  bundlesCopy = bundles;
  parametersCopy = parameters;
  v7 = objc_opt_new();
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v8 = bundlesCopy;
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
        allKeys = [v7 allKeys];
        getBundleType = [v13 getBundleType];
        v16 = [allKeys containsObject:getBundleType];

        if (v16)
        {
          getBundleType2 = [v13 getBundleType];
          getBundleType3 = [v7 objectForKey:getBundleType2];
          [getBundleType3 addObject:v13];
        }

        else
        {
          getBundleType2 = [NSMutableSet setWithObject:v13];
          getBundleType3 = [v13 getBundleType];
          [v7 setObject:getBundleType2 forKey:getBundleType3];
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
  allKeys2 = [v7 allKeys];
  v21 = [allKeys2 countByEnumeratingWithState:&v45 objects:v53 count:16];
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
          objc_enumerationMutation(allKeys2);
        }

        v25 = *(*(&v45 + 1) + 8 * j);
        v26 = [v7 objectForKey:{v25, v43}];
        allObjects = [v26 allObjects];

        [allObjects getTotalDurationOfMOEventBundleArray];
        v28 = [NSNumber numberWithDouble:?];
        [v19 setObject:v28 forKey:v25];
      }

      v22 = [allKeys2 countByEnumeratingWithState:&v45 objects:v53 count:16];
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
    v38 = parametersCopy;
    [parametersCopy dominantBundle_mainActionSelectionThreshold];
    v40 = v43;
    v41 = v34 / v37 < v39;
  }

  else
  {
LABEL_24:
    v41 = 0;
    v40 = v43;
    v38 = parametersCopy;
  }

  return v41;
}

+ (void)setActionsAndPlacesFromBundles:(id)bundles forSummaryBundle:(id)bundle
{
  bundlesCopy = bundles;
  bundleCopy = bundle;
  v8 = bundlesCopy;
  v9 = bundleCopy;
  if ([v8 count] > 1)
  {
    v10 = objc_opt_new();
    v47 = objc_opt_new();
    v48 = objc_opt_new();
    v39 = v8;
    v11 = [self sortedBundleBasedOnGoodnessScore:v8];
    if ([v11 count])
    {
      v12 = 0;
      selfCopy = self;
      v41 = v11;
      v45 = v10;
      v46 = v9;
      do
      {
        v13 = [v11 objectAtIndexedSubscript:v12];
        action = [v13 action];

        if (action)
        {
          v44 = v12;
          v15 = objc_opt_new();
          v16 = objc_opt_new();
          actions = [v13 actions];
          v18 = [actions count];

          v19 = [self getPlaceFromBundle:v13];
          v43 = v13;
          if (v18)
          {
            actions2 = [v13 actions];
            [v16 addObjectsFromArray:actions2];

            do
            {
              [v15 addObject:v19];
              --v18;
            }

            while (v18);
          }

          else
          {
            action2 = [v13 action];
            [v16 addObject:action2];

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
              actionName = [v23 actionName];
              v25 = [v15 objectAtIndexedSubscript:v22];
              placeName = [v25 placeName];
              v27 = [actionName stringByAppendingFormat:@"-%@", placeName];

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
                  actionName2 = [v31 actionName];
                  v33 = [v15 objectAtIndexedSubscript:v22];
                  placeName2 = [v33 placeName];
                  startDate = [v9 startDate];
                  *buf = 138412802;
                  v50 = actionName2;
                  v51 = 2112;
                  v52 = placeName2;
                  v53 = 2112;
                  v54 = startDate;
                  _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "SummarizationUtilities: add action to actions: %@, place to places: %@, for bundle with start date, %@", buf, 0x20u);

                  v9 = v46;
                  v10 = v45;
                }
              }

              ++v22;
            }

            while ([v16 count] > v22);
          }

          self = selfCopy;
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
      firstObject = [v10 firstObject];
      [v9 setPlace:firstObject];

      v36 = v47;
    }

    if ([v36 count])
    {
      firstObject2 = [v36 firstObject];
      [v9 setAction:firstObject2];

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

+ (id)getPlaceFromBundle:(id)bundle
{
  bundleCopy = bundle;
  place = [bundleCopy place];

  v69 = [MOPlace alloc];
  v72 = +[NSUUID UUID];
  place2 = [bundleCopy place];
  v71 = place2;
  if (place)
  {
    placeName = [place2 placeName];
    place3 = [bundleCopy place];
    enclosingArea = [place3 enclosingArea];
    place4 = [bundleCopy place];
    placeType = [place4 placeType];
    place5 = [bundleCopy place];
    placeUserType = [place5 placeUserType];
    place6 = [bundleCopy place];
    location = [place6 location];
    place7 = [bundleCopy place];
    locationMode = [place7 locationMode];
    place8 = [bundleCopy place];
    poiCategory = [place8 poiCategory];
    place9 = [bundleCopy place];
    categoryMuid = [place9 categoryMuid];
    place10 = [bundleCopy place];
    [place10 distanceToHomeInMiles];
    v7 = v6;
    place11 = [bundleCopy place];
    [place11 placeNameConfidence];
    v9 = v8;
    place12 = [bundleCopy place];
    [place12 familiarityIndexLOI];
    v12 = v11;
    place13 = [bundleCopy place];
    [place13 priorityScore];
    v15 = v14;
    place14 = [bundleCopy place];
    startDate = [place14 startDate];
    place15 = [bundleCopy place];
    endDate = [place15 endDate];
    v20 = [(MOPlace *)v69 initWithIdentifier:v72 placeName:placeName enclosingArea:enclosingArea placeType:placeType placeUserType:placeUserType location:location locationMode:v7 poiCategory:v9 categoryMuid:v12 distanceToHomeInMiles:v15 placeNameConfidence:locationMode familiarityIndexLOI:poiCategory priorityScore:categoryMuid startDate:startDate endDate:endDate];

    v21 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      placeName2 = [(MOPlace *)v20 placeName];
      startDate2 = [bundleCopy startDate];
      *buf = 138412546;
      v74 = placeName2;
      v75 = 2112;
      v76 = startDate2;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "SummarizationUtilities: get place: %@, from bundle with start date, %@", buf, 0x16u);
    }

    place16 = [bundleCopy place];
    sourceEventIdentifier = [place16 sourceEventIdentifier];
    [(MOPlace *)v20 setSourceEventIdentifier:sourceEventIdentifier];

    place17 = [bundleCopy place];
    [(MOPlace *)v20 setSourceEventAccessType:[place17 sourceEventAccessType]];
  }

  else
  {
    placeType2 = [place2 placeType];
    place18 = [bundleCopy place];
    placeUserType2 = [place18 placeUserType];
    place19 = [bundleCopy place];
    locationMode2 = [place19 locationMode];
    place20 = [bundleCopy place];
    poiCategory2 = [place20 poiCategory];
    place21 = [bundleCopy place];
    categoryMuid2 = [place21 categoryMuid];
    place22 = [bundleCopy place];
    [place22 distanceToHomeInMiles];
    v30 = v29;
    place23 = [bundleCopy place];
    [place23 placeNameConfidence];
    v33 = v32;
    place24 = [bundleCopy place];
    [place24 familiarityIndexLOI];
    v36 = v35;
    place25 = [bundleCopy place];
    startDate3 = [place25 startDate];
    place26 = [bundleCopy place];
    endDate2 = [place26 endDate];
    v70 = [(MOPlace *)v69 initWithIdentifier:v72 placeName:0 enclosingArea:0 placeType:placeType2 placeUserType:placeUserType2 location:0 locationMode:v30 poiCategory:v33 categoryMuid:v36 distanceToHomeInMiles:20000.0 placeNameConfidence:locationMode2 familiarityIndexLOI:poiCategory2 priorityScore:categoryMuid2 startDate:startDate3 endDate:endDate2];

    place17 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(place17, OS_LOG_TYPE_INFO))
    {
      startDate4 = [bundleCopy startDate];
      v20 = v70;
      [(MOPlace *)v70 priorityScore];
      *buf = 138412546;
      v74 = startDate4;
      v75 = 2048;
      v76 = v42;
      _os_log_impl(&_mh_execute_header, place17, OS_LOG_TYPE_INFO, "SummarizationUtilities: get place holder from bundle with start date, %@ with priority score, %f", buf, 0x16u);
    }

    else
    {
      v20 = v70;
    }
  }

  return v20;
}

+ (id)getPlaceFromPlacesSortedByDuration:(id)duration
{
  durationCopy = duration;
  if ([durationCopy count])
  {
    if ([durationCopy count] == 1)
    {
      v4 = durationCopy;
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v6 = durationCopy;
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

              firstObject2 = v11;
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
        firstObject = [v6 firstObject];
        *buf = 138412290;
        v21 = firstObject;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "SummarizationUtilities: imprecise label: %@", buf, 0xCu);
      }

      v4 = v6;
    }

    firstObject2 = [v4 firstObject];
  }

  else
  {
    firstObject2 = 0;
  }

LABEL_20:

  return firstObject2;
}

+ (id)workoutMetaDataCreatedForBundles:(id)bundles
{
  bundlesCopy = bundles;
  v4 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = bundlesCopy;
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

        events = [v8 events];
        v14 = [events filteredArrayUsingPredicate:v12];

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

              workoutDuration = [*(*(&v29 + 1) + 8 * j) workoutDuration];
              [workoutDuration doubleValue];
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

+ (void)setMediaActionForWorkoutBundle:(id)bundle withMediaPlaySessionDominantFactorThreshold:(double)threshold mediaPlaySessionsOverlapsMinimumDistance:(double)distance
{
  bundleCopy = bundle;
  v8 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 6];
  v72 = [NSPredicate predicateWithFormat:@"%K = %lu", @"provider", 3];
  v73 = v8;
  v96[0] = v8;
  v96[1] = v72;
  v9 = [NSArray arrayWithObjects:v96 count:2];
  v10 = [NSCompoundPredicate andPredicateWithSubpredicates:v9];

  events = [bundleCopy events];
  v71 = v10;
  v12 = [events filteredArrayUsingPredicate:v10];

  v79 = objc_opt_new();
  startDate = [bundleCopy startDate];
  endDate = [bundleCopy endDate];
  v76 = [MOContextAnnotationUtilities predicateOfMediaPlaySessionsWithStartDate:startDate endDate:endDate distanceThreshold:distance];

  v15 = [[NSSortDescriptor alloc] initWithKey:@"workoutDuration" ascending:0];
  v16 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 2];
  v68 = [NSPredicate predicateWithFormat:@"%K = %lu", @"provider", 1];
  v69 = v16;
  v95[0] = v16;
  v95[1] = v68;
  v17 = [NSArray arrayWithObjects:v95 count:2];
  v18 = [NSCompoundPredicate andPredicateWithSubpredicates:v17];

  v80 = bundleCopy;
  events2 = [bundleCopy events];
  v67 = v18;
  v20 = [events2 filteredArrayUsingPredicate:v18];
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
        mediaPlaySessions = [v23 mediaPlaySessions];
        v25 = [mediaPlaySessions filteredArrayUsingPredicate:v76];

        v26 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          mediaPlaySessions2 = [v23 mediaPlaySessions];
          v28 = [mediaPlaySessions2 count];
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
              startDate2 = [v35 startDate];
              endDate2 = [v35 endDate];
              v39 = [v36 initWithStartDate:startDate2 endDate:endDate2];

              v40 = [NSDateInterval alloc];
              startDate3 = [v80 startDate];
              endDate3 = [v80 endDate];
              v43 = [v40 initWithStartDate:startDate3 endDate:endDate3];
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
        workoutEvent = [v48 workoutEvent];
        workoutType = [workoutEvent workoutType];
        firstObject = [v66 firstObject];
        workoutEvent2 = [firstObject workoutEvent];
        workoutType2 = [workoutEvent2 workoutType];

        if (workoutType == workoutType2)
        {
          v54 = [NSDateInterval alloc];
          v55 = [v66 objectAtIndexedSubscript:v47];
          startDate4 = [v55 startDate];
          v57 = [v66 objectAtIndexedSubscript:v47];
          endDate4 = [v57 endDate];
          v59 = [v54 initWithStartDate:startDate4 endDate:endDate4];

          [v46 addObject:v59];
        }

        ++v47;
      }

      while ([v66 count] > v47);
    }

    *buf = 0xBFF0000000000000;
    v60 = [MOContextAnnotationUtilities dominantMediaNameFromPlaySessions:v79 intervalsOfInterest:v46 dominantFactorThreshold:buf confidence:threshold];
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

+ (id)metricForVisitsFromBundle:(id)bundle andNextBundle:(id)nextBundle
{
  bundleCopy = bundle;
  nextBundleCopy = nextBundle;
  v8 = objc_opt_new();
  v9 = [self sortedVisitEventsFromBundle:bundleCopy];
  v10 = [self sortedVisitEventsFromBundle:nextBundleCopy];
  if ([v9 count] && objc_msgSend(v10, "count"))
  {
    v38 = v8;
    v39 = bundleCopy;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v36 = v9;
    obj = v9;
    v11 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    v37 = nextBundleCopy;
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
                location = [v15 location];
                location2 = [v22 location];
                [location distanceFromLocation:location2];
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

    firstObject = [v10 firstObject];
    startDate = [firstObject startDate];
    lastObject = [obj lastObject];
    endDate = [lastObject endDate];
    [startDate timeIntervalSinceDate:endDate];
    v33 = v32;

    v34 = [NSNumber numberWithDouble:v13];
    v8 = v38;
    [v38 setObject:v34 forKey:@"distance"];

    v27 = [NSNumber numberWithDouble:v33];
    [v38 setObject:v27 forKey:@"timeInterval"];
    bundleCopy = v39;
    v9 = v36;
    nextBundleCopy = v37;
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

+ (double)maximumDistanceFromBundle:(id)bundle toBundleCluster:(id)cluster
{
  bundleCopy = bundle;
  clusterCopy = cluster;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [clusterCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(clusterCopy);
        }

        v12 = [MOSummarizationUtilities metricForVisitsFromBundle:*(*(&v17 + 1) + 8 * i) andNextBundle:bundleCopy];
        v13 = [v12 objectForKey:@"distance"];
        [v13 doubleValue];
        v15 = v14;

        if (v15 > v10)
        {
          v10 = v15;
        }
      }

      v8 = [clusterCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 2.22507386e-308;
  }

  return v10;
}

+ (id)sortedVisitEventsFromBundle:(id)bundle
{
  bundleCopy = bundle;
  v4 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
  v5 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 1];
  v6 = [NSPredicate predicateWithFormat:@"%K = %lu", @"provider", 4];
  v15[0] = v5;
  v15[1] = v6;
  v7 = [NSArray arrayWithObjects:v15 count:2];
  v8 = [NSCompoundPredicate andPredicateWithSubpredicates:v7];

  events = [bundleCopy events];

  v10 = [events filteredArrayUsingPredicate:v8];
  v14 = v4;
  v11 = [NSArray arrayWithObjects:&v14 count:1];
  v12 = [v10 sortedArrayUsingDescriptors:v11];

  return v12;
}

+ (double)workoutTimeIntervalBetweenBundle:(id)bundle andNextBundle:(id)nextBundle
{
  nextBundleCopy = nextBundle;
  v7 = [self sortedWorkoutEventsFromBundle:bundle];
  v8 = [self sortedWorkoutEventsFromBundle:nextBundleCopy];

  if ([v7 count] && objc_msgSend(v8, "count"))
  {
    firstObject = [v8 firstObject];
    startDate = [firstObject startDate];
    lastObject = [v7 lastObject];
    endDate = [lastObject endDate];
    [startDate timeIntervalSinceDate:endDate];
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

+ (id)sortedWorkoutEventsFromBundle:(id)bundle
{
  bundleCopy = bundle;
  v4 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
  v5 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 2];
  v6 = [NSPredicate predicateWithFormat:@"%K = %lu", @"provider", 1];
  v15[0] = v5;
  v15[1] = v6;
  v7 = [NSArray arrayWithObjects:v15 count:2];
  v8 = [NSCompoundPredicate andPredicateWithSubpredicates:v7];

  events = [bundleCopy events];

  v10 = [events filteredArrayUsingPredicate:v8];
  v14 = v4;
  v11 = [NSArray arrayWithObjects:&v14 count:1];
  v12 = [v10 sortedArrayUsingDescriptors:v11];

  return v12;
}

+ (id)createOutingMegaBundleFromBundles:(id)bundles withParameters:(id)parameters isCoarseGranularity:(BOOL)granularity timeZoneManager:(id)manager
{
  granularityCopy = granularity;
  bundlesCopy = bundles;
  parametersCopy = parameters;
  managerCopy = manager;
  if ([bundlesCopy count] >= 2)
  {
    v67 = parametersCopy;
    v14 = [MOEventBundle alloc];
    v15 = +[NSUUID UUID];
    v16 = +[NSDate date];
    v17 = [(MOEventBundle *)v14 initWithBundleIdentifier:v15 creationDate:v16];

    v18 = v17;
    [self updateRankMetaDataFrom:bundlesCopy forSummaryBundle:v17];
    v19 = objc_opt_new();
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v68 = bundlesCopy;
    v20 = bundlesCopy;
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

          events = [*(*(&v73 + 1) + 8 * i) events];
          [v19 addObjectsFromArray:events];
        }

        v22 = [v20 countByEnumeratingWithState:&v73 objects:v82 count:16];
      }

      while (v22);
    }

    v64 = v19;
    allObjects = [v19 allObjects];
    [(MOEventBundle *)v18 setEvents:allObjects];

    [(MOEventBundle *)v18 setPropertiesBasedOnEvents];
    getTimeSpanOfMOEventBundleArray = [v20 getTimeSpanOfMOEventBundleArray];
    startDate = [getTimeSpanOfMOEventBundleArray startDate];
    [(MOEventBundle *)v18 setStartDate:startDate];

    v62 = getTimeSpanOfMOEventBundleArray;
    endDate = [getTimeSpanOfMOEventBundleArray endDate];
    [(MOEventBundle *)v18 setEndDate:endDate];

    v61 = [self sortedVisitEventsFromBundle:v18];
    lastObject = [v61 lastObject];
    endDate2 = [lastObject endDate];
    v66 = managerCopy;
    v32 = [MOTime timeForDate:endDate2 timeZoneManager:managerCopy];
    [(MOEventBundle *)v18 setTime:v32];

    [(MOEventBundle *)v18 setInterfaceType:12];
    selfCopy = self;
    [self setActionsAndPlacesFromBundles:v20 forSummaryBundle:v18];
    action = [(MOEventBundle *)v18 action];
    actionType = [action actionType];

    if (actionType == 4)
    {
      v35 = 2;
    }

    else
    {
      v35 = 1;
    }

    if (actionType == 4)
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
          bundleIdentifier = [v44 bundleIdentifier];
          uUIDString = [bundleIdentifier UUIDString];
          [v37 addObject:uUIDString];

          subBundleIDs = [v44 subBundleIDs];
          v48 = [subBundleIDs count];

          if (v48)
          {
            subBundleIDs2 = [v44 subBundleIDs];
            [v37 addObjectsFromArray:subBundleIDs2];
          }

          suggestionID = [v44 suggestionID];
          uUIDString2 = [suggestionID UUIDString];
          [v38 addObject:uUIDString2];

          subSuggestionIDs = [v44 subSuggestionIDs];
          v53 = [subSuggestionIDs count];

          if (v53)
          {
            subSuggestionIDs2 = [v44 subSuggestionIDs];
            [v38 addObjectsFromArray:subSuggestionIDs2];
          }

          if (!granularityCopy || ([v44 isAggregatedAndSuppressed] & 1) == 0)
          {
            [v44 setIsAggregatedAndSuppressed:!granularityCopy];
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

    parametersCopy = v67;
    v57 = [selfCopy getResourcesFromBundles:v39 forSummaryBundle:v65 withParameters:v67];
    [(MOEventBundle *)v65 setResources:v57];

    v58 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      v59 = @"fine";
      if (granularityCopy)
      {
        v59 = @"coarse";
      }

      *buf = 138412546;
      v78 = v59;
      v79 = 2112;
      v80 = v65;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "SummarizationUtilities: outing mega bundle being created: granularity, %@, bundle, %@", buf, 0x16u);
    }

    bundlesCopy = v68;
    managerCopy = v66;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)createActivityMegaBundleFromBundles:(id)bundles withParameters:(id)parameters isCoarseGranularity:(BOOL)granularity isWeeklySummary:(BOOL)summary timeZoneManager:(id)manager
{
  summaryCopy = summary;
  granularityCopy = granularity;
  bundlesCopy = bundles;
  parametersCopy = parameters;
  managerCopy = manager;
  v13 = [bundlesCopy mutableCopy];
  v14 = +[NSCalendar currentCalendar];
  v15 = [NSDate alloc];
  v16 = +[NSDate date];
  v17 = [v15 initWithTimeInterval:v16 sinceDate:-604800.0];
  [v14 startOfDayForDate:v17];
  v18 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

  v117 = summaryCopy;
  v114 = granularityCopy;
  v19 = granularityCopy && summaryCopy;
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
    v108 = managerCopy;
    v110 = bundlesCopy;
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

          rankingDictionary = [*(*(&v126 + 1) + 8 * i) rankingDictionary];
          v30 = [rankingDictionary objectForKeyedSubscript:@"bundleGoodnessScore"];
          [v30 floatValue];
          v32 = v31;

          v33 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            v133 = v32;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "SummarizationUtilities: activity bundle goodness score, %f", buf, 0xCu);
          }

          [parametersCopy activitySummary_suppressionGoodnessScoreThreshold];
          if (v32 > v34)
          {
            v39 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "SummarizationUtilities: one of activity bundle goodness is too high. Stop creating weekly workout summary", buf, 2u);
            }

            managerCopy = v108;
            bundlesCopy = v110;
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
      managerCopy = v108;
      bundlesCopy = v110;
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

    managerCopy = v108;
    bundlesCopy = v110;
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

    [self updateRankMetaDataFrom:v13 forSummaryBundle:v38];
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

          events = [*(*(&v122 + 1) + 8 * j) events];
          [v116 addObjectsFromArray:events];
        }

        v48 = [obj countByEnumeratingWithState:&v122 objects:v143 count:16];
      }

      while (v48);
    }

    allObjects = [v116 allObjects];
    [(MOEventBundle *)v38 setEvents:allObjects];

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
      getTimeSpanOfMOEventBundleArray = [bundlesCopy getTimeSpanOfMOEventBundleArray];
      startDate = [getTimeSpanOfMOEventBundleArray startDate];
      [(MOEventBundle *)v38 setStartDate:startDate];

      endDate = [getTimeSpanOfMOEventBundleArray endDate];
      [(MOEventBundle *)v38 setEndDate:endDate];

      [(MOEventBundle *)v38 setBundleSuperType:2];
      [(MOEventBundle *)v38 setBundleSubType:201];
    }

    v103 = [self sortedWorkoutEventsFromBundle:v38];
    lastObject = [v103 lastObject];
    endDate2 = [lastObject endDate];
    v59 = [MOTime timeForDate:endDate2 timeZoneManager:managerCopy];
    [(MOEventBundle *)v38 setTime:v59];

    [(MOEventBundle *)v38 setInterfaceType:12];
    [self setActionsAndPlacesFromBundles:bundlesCopy forSummaryBundle:v38];
    if (v19)
    {
      v60 = [MOAction alloc];
      v61 = [self workoutMetaDataCreatedForBundles:obj];
      v62 = [(MOAction *)v60 initWithActionName:@"workout" actionType:4 actionSubtype:0 actionMetaData:v61];
      [(MOEventBundle *)v38 setAction:v62];

      events2 = [(MOEventBundle *)v38 events];
      firstObject = [events2 firstObject];
      eventIdentifier = [firstObject eventIdentifier];
      action = [(MOEventBundle *)v38 action];
      [action setSourceEventIdentifier:eventIdentifier];
    }

    action2 = [(MOEventBundle *)v38 action];

    v109 = managerCopy;
    v111 = bundlesCopy;
    v105 = v18;
    if (action2)
    {
      events3 = [self workoutMetaDataCreatedForBundles:obj];
      action3 = [(MOEventBundle *)v38 action];
      [action3 setActionMetaData:events3];
    }

    else
    {
      v70 = [MOAction alloc];
      v71 = [self workoutMetaDataCreatedForBundles:obj];
      v72 = [(MOAction *)v70 initWithActionName:@"workout" actionType:4 actionSubtype:0 actionMetaData:v71];
      [(MOEventBundle *)v38 setAction:v72];

      events3 = [(MOEventBundle *)v38 events];
      action3 = [events3 firstObject];
      eventIdentifier2 = [action3 eventIdentifier];
      action4 = [(MOEventBundle *)v38 action];
      [action4 setSourceEventIdentifier:eventIdentifier2];
    }

    [parametersCopy dominantBundle_mediaPlaySessionDominantFactorThreshold];
    v76 = v75;
    [parametersCopy dominantBundle_mediaPlaySessionsOverlapsMinimumDistance];
    [self setMediaActionForWorkoutBundle:v38 withMediaPlaySessionDominantFactorThreshold:v76 mediaPlaySessionsOverlapsMinimumDistance:v77];
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
          subBundleIDs = [v85 subBundleIDs];
          v87 = [subBundleIDs count];

          if (v87)
          {
            subBundleIDs2 = [v85 subBundleIDs];
            [v78 addObjectsFromArray:subBundleIDs2];
          }

          else
          {
            subBundleIDs2 = [v85 bundleIdentifier];
            uUIDString = [subBundleIDs2 UUIDString];
            [v78 addObject:uUIDString];
          }

          suggestionID = [v85 suggestionID];
          uUIDString2 = [suggestionID UUIDString];
          [v79 addObject:uUIDString2];

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

    v94 = [self getResourcesFromBundles:obj forSummaryBundle:v38 withParameters:parametersCopy];
    [(MOEventBundle *)v38 setResources:v94];

    v95 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
    {
      [(MOEventBundle *)v38 startDate];
      v96 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      endDate3 = [(MOEventBundle *)v38 endDate];
      bundleIdentifier = [(MOEventBundle *)v38 bundleIdentifier];
      v99 = bundleIdentifier;
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
      v135 = endDate3;
      if (v117)
      {
        v100 = @"YES";
      }

      v136 = 2112;
      v137 = bundleIdentifier;
      v138 = 2112;
      v139 = v101;
      v140 = 2112;
      v141 = v100;
      _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_INFO, "SummarizationUtilities: activity mega bundle being created: start date, %@, end date, %@, bundleID, %@, isCoarseGranularity, %@, isWeekly, %@", buf, 0x34u);
    }

    managerCopy = v109;
    bundlesCopy = v111;
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

+ (BOOL)isOutingBundleFromHomeOrWorkVisit:(id)visit
{
  [self sortedVisitEventsFromBundle:visit];
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

+ (BOOL)isOutingBundleInsideOneDay:(id)day
{
  dayCopy = day;
  v4 = +[NSCalendar currentCalendar];
  time = [dayCopy time];
  if (!time)
  {
    goto LABEL_4;
  }

  v6 = time;
  time2 = [dayCopy time];
  timeZone = [time2 timeZone];

  if (timeZone)
  {
    time3 = [dayCopy time];
    timeZone2 = [time3 timeZone];
    v11 = [NSTimeZone timeZoneWithName:timeZone2];
    startDate = [dayCopy startDate];
    v13 = [v4 componentsInTimeZone:v11 fromDate:startDate];

    time4 = [dayCopy time];
    timeZone3 = [time4 timeZone];
    v16 = [NSTimeZone timeZoneWithName:timeZone3];
    endDate = [dayCopy endDate];
    v18 = [v4 componentsInTimeZone:v16 fromDate:endDate];
  }

  else
  {
LABEL_4:
    startDate2 = [dayCopy startDate];
    v13 = [v4 components:28 fromDate:startDate2];

    time4 = [dayCopy endDate];
    v18 = [v4 components:28 fromDate:time4];
  }

  v20 = [v13 day];
  if (v20 == [v18 day] && (v21 = objc_msgSend(v13, "month"), v21 == objc_msgSend(v18, "month")))
  {
    year = [v13 year];
    v23 = year == [v18 year];
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

+ (BOOL)isBundleWithAssets:(id)assets
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  resources = [assets resources];
  v4 = [resources countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(resources);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 type] == 2 || objc_msgSend(v8, "type") == 3)
        {
          v9 = 1;
          goto LABEL_13;
        }
      }

      v5 = [resources countByEnumeratingWithState:&v11 objects:v15 count:16];
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

+ (BOOL)allPhotoAssetsFromBundleStartDay:(id)day
{
  dayCopy = day;
  v39 = +[NSCalendar currentCalendar];
  time = [dayCopy time];
  if (!time)
  {
    goto LABEL_4;
  }

  v5 = time;
  time2 = [dayCopy time];
  timeZone = [time2 timeZone];

  if (timeZone)
  {
    time3 = [dayCopy time];
    timeZone2 = [time3 timeZone];
    v10 = [NSTimeZone timeZoneWithName:timeZone2];
    startDate = [dayCopy startDate];
    v12 = [v39 componentsInTimeZone:v10 fromDate:startDate];
  }

  else
  {
LABEL_4:
    time3 = [dayCopy startDate];
    v12 = [v39 components:28 fromDate:time3];
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  resources = [dayCopy resources];
  v14 = [resources countByEnumeratingWithState:&v40 objects:v44 count:16];
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
          objc_enumerationMutation(resources);
        }

        v18 = *(*(&v40 + 1) + 8 * v17);
        if ([v18 type] == 2)
        {
          photoCreationDate = [v18 photoCreationDate];

          if (photoCreationDate)
          {
            time4 = [dayCopy time];
            if (!time4)
            {
              goto LABEL_15;
            }

            v21 = time4;
            time5 = [dayCopy time];
            timeZone3 = [time5 timeZone];

            if (timeZone3)
            {
              time6 = [dayCopy time];
              timeZone4 = [time6 timeZone];
              v26 = [NSTimeZone timeZoneWithName:timeZone4];
              [v18 photoCreationDate];
              v27 = v16;
              v28 = v12;
              v29 = resources;
              v31 = v30 = dayCopy;
              v32 = [v39 componentsInTimeZone:v26 fromDate:v31];

              dayCopy = v30;
              resources = v29;
              v12 = v28;
              v16 = v27;
              v15 = v38;
            }

            else
            {
LABEL_15:
              time6 = [v18 photoCreationDate];
              v32 = [v39 components:28 fromDate:time6];
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
      v15 = [resources countByEnumeratingWithState:&v40 objects:v44 count:16];
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

+ (BOOL)isBundle:(id)bundle insideTheSameDayAsOtherBundle:(id)otherBundle
{
  bundleCopy = bundle;
  otherBundleCopy = otherBundle;
  if ([self isOutingBundleInsideOneDay:bundleCopy] && objc_msgSend(self, "isOutingBundleInsideOneDay:", otherBundleCopy))
  {
    v8 = +[NSCalendar currentCalendar];
    time = [bundleCopy time];
    if (!time)
    {
      goto LABEL_7;
    }

    v10 = time;
    time2 = [bundleCopy time];
    timeZone = [time2 timeZone];

    if (timeZone)
    {
      time3 = [bundleCopy time];
      timeZone2 = [time3 timeZone];
      v15 = [NSTimeZone timeZoneWithName:timeZone2];
      startDate = [bundleCopy startDate];
      v17 = [v8 componentsInTimeZone:v15 fromDate:startDate];
    }

    else
    {
LABEL_7:
      time3 = [bundleCopy startDate];
      v17 = [v8 components:28 fromDate:time3];
    }

    time4 = [otherBundleCopy time];
    if (!time4)
    {
      goto LABEL_11;
    }

    v20 = time4;
    time5 = [otherBundleCopy time];
    timeZone3 = [time5 timeZone];

    if (timeZone3)
    {
      time6 = [bundleCopy time];
      timeZone4 = [time6 timeZone];
      v25 = [NSTimeZone timeZoneWithName:timeZone4];
      startDate2 = [otherBundleCopy startDate];
      v27 = [v8 componentsInTimeZone:v25 fromDate:startDate2];
    }

    else
    {
LABEL_11:
      time6 = [otherBundleCopy startDate];
      v27 = [v8 components:28 fromDate:time6];
    }

    v28 = [v17 day];
    if (v28 == [v27 day] && (v29 = objc_msgSend(v17, "month"), v29 == objc_msgSend(v27, "month")))
    {
      year = [v17 year];
      v18 = year == [v27 year];
    }

    else
    {
      v18 = 0;
    }

    v31 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      startDate3 = [bundleCopy startDate];
      startDate4 = [otherBundleCopy startDate];
      v35 = 138412802;
      v36 = startDate3;
      v37 = 2112;
      v38 = startDate4;
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

+ (id)mergeOutingBundlesWithInDayWithGroupedBundles:(id)bundles remainingSingletonBundles:(id)singletonBundles parameters:(id)parameters isCoarseGranularity:(BOOL)granularity timeZoneManager:(id)manager
{
  granularityCopy = granularity;
  bundlesCopy = bundles;
  singletonBundlesCopy = singletonBundles;
  parametersCopy = parameters;
  managerCopy = manager;
  v67 = objc_opt_new();
  v12 = objc_opt_new();
  if ([bundlesCopy count])
  {
    [v12 addObjectsFromArray:bundlesCopy];
  }

  if ([singletonBundlesCopy count])
  {
    [v12 addObjectsFromArray:singletonBundlesCopy];
  }

  if ([v12 count])
  {
    v61 = singletonBundlesCopy;
    v62 = bundlesCopy;
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
        time = [v14 time];
        if (!time)
        {
          goto LABEL_14;
        }

        v17 = time;
        time2 = [v14 time];
        timeZone = [time2 timeZone];

        if (timeZone)
        {
          time3 = [v14 time];
          timeZone2 = [time3 timeZone];
          v22 = [NSTimeZone timeZoneWithName:timeZone2];
          startDate = [v14 startDate];
          v24 = [v15 componentsInTimeZone:v22 fromDate:startDate];
        }

        else
        {
LABEL_14:
          time3 = [v14 startDate];
          v24 = [v15 components:28 fromDate:time3];
        }

        v25 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld", [v24 year]);
        v26 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld", [v24 month]);
        v27 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld", [v24 day]);
        v28 = [v25 stringByAppendingFormat:@"-%@-%@", v26, v27];
        action = [v14 action];
        actionType = [action actionType];

        if (actionType == 4)
        {
          place2 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
          if (!os_log_type_enabled(place2, OS_LOG_TYPE_INFO))
          {
            goto LABEL_22;
          }

          *buf = 0;
          v32 = place2;
          v33 = "bundle is mainly focusing on workout, so skip adding to groups";
LABEL_21:
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, v33, buf, 2u);
          goto LABEL_22;
        }

        places = [v14 places];
        v35 = [places count];

        if (v35)
        {
          place2 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
          if (!os_log_type_enabled(place2, OS_LOG_TYPE_INFO))
          {
            goto LABEL_22;
          }

          *buf = 0;
          v32 = place2;
          v33 = "bundle has many places related, so skip adding to groups";
          goto LABEL_21;
        }

        place = [v14 place];

        if (!place)
        {
          place2 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
          if (!os_log_type_enabled(place2, OS_LOG_TYPE_INFO))
          {
            goto LABEL_22;
          }

          *buf = 0;
          v32 = place2;
          v33 = "there is no place in the bundle, so skip adding to groups";
          goto LABEL_21;
        }

        place2 = [v14 place];
        if (!place2)
        {
          goto LABEL_22;
        }

        if ([self isOutingBundleInsideOneDay:v14])
        {

LABEL_29:
          place3 = [v14 place];
          placeName = [place3 placeName];
          place2 = [NSString stringWithFormat:@"%@-%@", v28, placeName];

          v38 = [v71 objectForKeyedSubscript:place2];

          if (v38)
          {
            v39 = [v71 objectForKeyedSubscript:place2];
            [self maximumDistanceFromBundle:v14 toBundleCluster:v39];
            v41 = v40;
            [parametersCopy fineGranularity_outingBundlesAggregationDistanceThreshold];
            if (v41 < v42)
            {
              v64 = [v71 objectForKeyedSubscript:place2];
              [v64 addObject:v14];
            }
          }

          else
          {
            v44 = objc_opt_new();
            [v71 setObject:v44 forKeyedSubscript:place2];

            v39 = [v71 objectForKeyedSubscript:place2];
            [v39 addObject:v14];
          }

          v45 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
          {
            startDate2 = [v14 startDate];
            *buf = 138412546;
            v84 = startDate2;
            v85 = 2112;
            v86 = place2;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "add bundle with start date %@ to group for key: %@", buf, 0x16u);
          }

LABEL_22:
          goto LABEL_23;
        }

        if ([self isOutingBundleInsideOneDay:v14])
        {
          goto LABEL_22;
        }

        v43 = [self allPhotoAssetsFromBundleStartDay:v14];

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
        allKeys = [v71 allKeys];
        v50 = [allKeys countByEnumeratingWithState:&v74 objects:v82 count:16];
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
                objc_enumerationMutation(allKeys);
              }

              v54 = [v48 objectForKeyedSubscript:*(*(&v74 + 1) + 8 * i)];
              if ([v54 count] >= 2)
              {
                v55 = [self createOutingMegaBundleFromBundles:v54 withParameters:parametersCopy isCoarseGranularity:granularityCopy timeZoneManager:managerCopy];
                [v67 addObject:v55];

                v48 = v71;
              }
            }

            v51 = [allKeys countByEnumeratingWithState:&v74 objects:v82 count:16];
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
          LODWORD(v86) = granularityCopy;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "number of bundles created for merging bundles to the same place within the same day, %lu, for coarse granulariy, %d", buf, 0x12u);
        }

        singletonBundlesCopy = v61;
        bundlesCopy = v62;
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

+ (id)sortedWorkoutBundleByDuration:(id)duration
{
  durationCopy = duration;
  if ([durationCopy count])
  {
    if ([durationCopy count] == 1)
    {
      v4 = durationCopy;
    }

    else
    {
      v4 = [durationCopy sortedArrayUsingComparator:&__block_literal_global_509];
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

+ (id)sortedBundleByPhotoAssetsCount:(id)count
{
  countCopy = count;
  if ([countCopy count])
  {
    if ([countCopy count] == 1)
    {
      v4 = countCopy;
    }

    else
    {
      v4 = [countCopy sortedArrayUsingComparator:&__block_literal_global_511];
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

+ (id)sortedBundleByStartDate:(id)date
{
  dateCopy = date;
  if ([dateCopy count])
  {
    if ([dateCopy count] == 1)
    {
      v4 = dateCopy;
    }

    else
    {
      v4 = [dateCopy sortedArrayUsingComparator:&__block_literal_global_513];
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

+ (BOOL)hasWorkoutRoute:(id)route
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  events = [route events];
  v4 = [events countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(events);
        }

        workoutLocationRoute = [*(*(&v9 + 1) + 8 * i) workoutLocationRoute];

        if (workoutLocationRoute)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [events countByEnumeratingWithState:&v9 objects:v13 count:16];
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

+ (BOOL)bundleHasOneWayRoute:(id)route parameters:(id)parameters
{
  parametersCopy = parameters;
  v7 = [self sortedActivityEventsFromBundle:route];
  if (![v7 count])
  {
    goto LABEL_6;
  }

  firstObject = [v7 firstObject];
  workoutLocationRoute = [firstObject workoutLocationRoute];
  if (workoutLocationRoute)
  {
    lastObject = [v7 lastObject];
    workoutLocationRoute2 = [lastObject workoutLocationRoute];

    if (workoutLocationRoute2)
    {
      firstObject2 = [v7 firstObject];
      workoutLocationRoute3 = [firstObject2 workoutLocationRoute];
      firstObject = [workoutLocationRoute3 firstObject];

      workoutLocationRoute = [v7 lastObject];
      v9WorkoutLocationRoute = [workoutLocationRoute workoutLocationRoute];
      lastObject2 = [v9WorkoutLocationRoute lastObject];

      [lastObject2 distanceFromLocation:firstObject];
      v17 = v16;
      [parametersCopy fineGranularity_transitBundlesDestinationOneWayRouteMinimumDistanceThreshold];
      LOBYTE(workoutLocationRoute) = v17 >= v18;

      goto LABEL_5;
    }

LABEL_6:
    LOBYTE(workoutLocationRoute) = 0;
    goto LABEL_7;
  }

LABEL_5:

LABEL_7:
  return workoutLocationRoute;
}

+ (id)getInterestingDestination:(id)destination
{
  destinationCopy = destination;
  v4 = objc_opt_new();
  place = [destinationCopy place];

  if (place)
  {
    place2 = [destinationCopy place];
    [v4 addObject:place2];
  }

  places = [destinationCopy places];

  if (places)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    places2 = [destinationCopy places];
    v9 = [places2 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
            objc_enumerationMutation(places2);
          }

          [v4 addObject:*(*(&v21 + 1) + 8 * i)];
        }

        v10 = [places2 countByEnumeratingWithState:&v21 objects:v26 count:16];
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

  firstObject = [v15 firstObject];
  if ([firstObject placeUserType] == 1)
  {

LABEL_16:
    firstObject3 = 0;
    goto LABEL_17;
  }

  firstObject2 = [v15 firstObject];
  placeUserType = [firstObject2 placeUserType];

  if (placeUserType == 2)
  {
    goto LABEL_16;
  }

  firstObject3 = [v15 firstObject];
LABEL_17:

  return firstObject3;
}

+ (id)sortedActivityEventsFromBundle:(id)bundle
{
  bundleCopy = bundle;
  v4 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
  v5 = [NSPredicate predicateWithFormat:@"(%K = %lu OR %K = %lu) AND (%K != %lu)", @"category", 2, @"category", 16, @"provider", 5];
  events = [bundleCopy events];

  v7 = [events filteredArrayUsingPredicate:v5];
  v11 = v4;
  v8 = [NSArray arrayWithObjects:&v11 count:1];
  v9 = [v7 sortedArrayUsingDescriptors:v8];

  return v9;
}

+ (id)createTransitMegaBundleFromBundles:(id)bundles withParameters:(id)parameters isCoarseGranularity:(BOOL)granularity timeZoneManager:(id)manager groupedOutingBundles:(id)outingBundles
{
  managerCopy = manager;
  outingBundlesCopy = outingBundles;
  v12 = [bundles mutableCopy];
  if ([v12 count] == 2)
  {
    selfCopy = self;
    v70 = outingBundlesCopy;
    firstObject = [v12 firstObject];
    lastObject = [v12 lastObject];
    v15 = [MOEventBundle alloc];
    v16 = +[NSUUID UUID];
    v17 = +[NSDate date];
    v18 = [(MOEventBundle *)v15 initWithBundleIdentifier:v16 creationDate:v17];

    v19 = objc_opt_new();
    bundleIdentifier = [firstObject bundleIdentifier];
    uUIDString = [bundleIdentifier UUIDString];
    v71 = v19;
    [v19 addObject:uUIDString];

    [firstObject setIsAggregatedAndSuppressed:1];
    [(MOEventBundle *)v18 setInterfaceType:12];
    [(MOEventBundle *)v18 setBundleSuperType:2];
    action = [firstObject action];
    actionSubtype = [action actionSubtype];

    if (actionSubtype == 1)
    {
      [(MOEventBundle *)v18 setBundleSubType:205];
    }

    action2 = [firstObject action];
    actionSubtype2 = [action2 actionSubtype];

    if (actionSubtype2 == 2)
    {
      [(MOEventBundle *)v18 setBundleSubType:206];
    }

    [(MOEventBundle *)v18 setSummarizationGranularity:1];
    action3 = [firstObject action];
    [(MOEventBundle *)v18 setAction:action3];

    concurrentMediaAction = [firstObject concurrentMediaAction];
    [(MOEventBundle *)v18 setConcurrentMediaAction:concurrentMediaAction];

    endDate = [firstObject endDate];
    v29 = [MOTime timeForDate:endDate timeZoneManager:managerCopy];
    [(MOEventBundle *)v18 setTime:v29];

    v30 = objc_opt_new();
    events = [firstObject events];
    [v30 addObjectsFromArray:events];

    [(MOEventBundle *)v18 setEvents:v30];
    [(MOEventBundle *)v18 setPropertiesBasedOnEvents];
    startDate = [firstObject startDate];
    [(MOEventBundle *)v18 setStartDate:startDate];

    endDate2 = [firstObject endDate];
    [(MOEventBundle *)v18 setEndDate:endDate2];

    expirationDate = [firstObject expirationDate];
    [(MOEventBundle *)v18 setExpirationDate:expirationDate];

    v35 = objc_opt_new();
    resources = [firstObject resources];
    [v35 addObjectsFromArray:resources];

    v69 = managerCopy;
    if ([lastObject interfaceType] == 2 && (objc_msgSend(v70, "containsObject:", lastObject) & 1) == 0)
    {
      v40 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        suggestionID = [firstObject suggestionID];
        suggestionID2 = [lastObject suggestionID];
        *buf = 138412546;
        v73 = suggestionID;
        v74 = 2112;
        v75 = suggestionID2;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "SummarizationUtilities: Combining activity bundle and outing bundle for transit bundle, activity %@, outing, %@", buf, 0x16u);
      }

      events2 = [lastObject events];
      [v30 addObjectsFromArray:events2];

      [(MOEventBundle *)v18 setEvents:v30];
      [(MOEventBundle *)v18 setPropertiesBasedOnEvents];
      startDate2 = [firstObject startDate];
      [(MOEventBundle *)v18 setStartDate:startDate2];

      endDate3 = [lastObject endDate];
      [(MOEventBundle *)v18 setEndDate:endDate3];

      expirationDate2 = [lastObject expirationDate];
      [(MOEventBundle *)v18 setExpirationDate:expirationDate2];

      v47 = [selfCopy addResourcesFromOutingBundle:lastObject toActivityBundle:firstObject];

      [lastObject setIsAggregatedAndSuppressed:1];
      bundleIdentifier2 = [lastObject bundleIdentifier];
      uUIDString2 = [bundleIdentifier2 UUIDString];
      [v71 addObject:uUIDString2];

      v35 = v47;
    }

    else
    {
      bundleIdentifier2 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
      if (os_log_type_enabled(bundleIdentifier2, OS_LOG_TYPE_INFO))
      {
        suggestionID3 = [firstObject suggestionID];
        suggestionID4 = [lastObject suggestionID];
        *buf = 138412546;
        v73 = suggestionID3;
        v74 = 2112;
        v75 = suggestionID4;
        _os_log_impl(&_mh_execute_header, bundleIdentifier2, OS_LOG_TYPE_INFO, "SummarizationUtilities: Adding destination from timecontext bundle to activity bundle for transit bundle, activity %@, timecontext, %@", buf, 0x16u);
      }
    }

    v49 = [v71 copy];
    [(MOEventBundle *)v18 setSubBundleIDs:v49];

    v50 = objc_opt_new();
    v51 = [MOSummarizationUtilities getInterestingDestination:lastObject];
    [v51 setPriorityScore:20000.0];
    [v50 addObject:v51];
    place = [firstObject place];

    if (place)
    {
      place2 = [firstObject place];
      [(MOEventBundle *)v18 setPlace:place2];

      place3 = [firstObject place];
      [v50 addObject:place3];
    }

    [(MOEventBundle *)v18 setPlaces:v50];
    [(MOEventBundle *)v18 setResources:v35];
    if ([lastObject interfaceType] == 2)
    {
      [selfCopy updateRankMetaDataFrom:v12 forSummaryBundle:v18];
LABEL_31:

      managerCopy = v69;
      outingBundlesCopy = v70;
      goto LABEL_32;
    }

    rankingDictionary = [firstObject rankingDictionary];
    [(MOEventBundle *)v18 setRankingDictionary:rankingDictionary];

    poiCategory = [v51 poiCategory];

    if (poiCategory)
    {
      [v51 placeNameConfidence];
      if (v57 >= 0.75)
      {
        v58 = nonInterestingPOIcategories;
        poiCategory2 = [v51 poiCategory];
        LODWORD(v58) = [v58 containsObject:poiCategory2];

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
        poiCategory3 = [v51 poiCategory];
        LODWORD(v62) = [v62 containsObject:poiCategory3];

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

  firstObject = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(firstObject, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v73 = [v12 count];
    _os_log_impl(&_mh_execute_header, firstObject, OS_LOG_TYPE_INFO, "SummarizationUtilities: %lu bundle(s) does not meet count requirement to create transit mega bundle for fine granularity", buf, 0xCu);
  }

  v18 = 0;
LABEL_32:

  return v18;
}

+ (id)addResourcesFromOutingBundle:(id)bundle toActivityBundle:(id)activityBundle
{
  bundleCopy = bundle;
  activityBundleCopy = activityBundle;
  v7 = &GEOPOICategoryGasStation_ptr;
  v8 = objc_opt_new();
  resources = [activityBundleCopy resources];
  v170 = v8;
  [v8 addObjectsFromArray:resources];

  v10 = &GEOPOICategoryGasStation_ptr;
  v11 = [NSPredicate predicateWithFormat:@"type == %lu", 2];
  resources2 = [activityBundleCopy resources];
  v13 = [resources2 filteredArrayUsingPredicate:v11];

  resources3 = [bundleCopy resources];
  v164 = v11;
  v15 = [resources3 filteredArrayUsingPredicate:v11];

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
  v162 = activityBundleCopy;
  if ([v15 count] && objc_msgSend(v13, "count"))
  {
    v222 = v165;
    v25 = [NSArray arrayWithObjects:&v222 count:1];
    v26 = [v13 sortedArrayUsingDescriptors:v25];

    v221 = v165;
    v27 = [NSArray arrayWithObjects:&v221 count:1];
    v28 = [v15 sortedArrayUsingDescriptors:v27];

    v29 = objc_opt_new();
    lastObject = [v26 lastObject];
    [lastObject priorityScore];
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

          assets = [*(*(&v199 + 1) + 8 * j) assets];
          [v29 addObject:assets];
        }

        v35 = [v33 countByEnumeratingWithState:&v199 objects:v220 count:16];
      }

      while (v35);
    }

    v39 = bundleCopy;

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
          assets2 = [v46 assets];
          v48 = [v29 containsObject:assets2];

          if ((v48 & 1) == 0)
          {
            [v46 setPriorityScore:v43];
            v43 = v43 + 1.0;
            assets3 = [v46 assets];
            [v29 addObject:assets3];

            [v170 addObject:v46];
          }
        }

        v42 = [v40 countByEnumeratingWithState:&v195 objects:v219 count:16];
      }

      while (v42);
    }

    bundleCopy = v39;
    activityBundleCopy = v162;
    v7 = &GEOPOICategoryGasStation_ptr;
    v10 = &GEOPOICategoryGasStation_ptr;
  }

  v50 = [v10[193] predicateWithFormat:@"type == %lu", 3];
  resources4 = [activityBundleCopy resources];
  v52 = [resources4 filteredArrayUsingPredicate:v50];

  resources5 = [bundleCopy resources];
  v158 = v50;
  v54 = [resources5 filteredArrayUsingPredicate:v50];

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
    lastObject2 = [v65 lastObject];
    [lastObject2 priorityScore];
    v72 = v71 + 1.0;

    lastObject3 = [v65 lastObject];
    [lastObject3 priorityScore];
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

          name = [*(*(&v187 + 1) + 8 * n) name];
          [v69 addObject:name];
        }

        v79 = [v77 countByEnumeratingWithState:&v187 objects:v214 count:16];
      }

      while (v79);
    }

    v83 = bundleCopy;

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
          name2 = [v89 name];
          v91 = [v69 containsObject:name2];

          if ((v91 & 1) == 0)
          {
            [v89 setPriorityScore:v76];
            v76 = v76 + 1.0;
            name3 = [v89 name];
            [v69 addObject:name3];

            [v170 addObject:v89];
          }
        }

        v86 = [v84 countByEnumeratingWithState:&v183 objects:v213 count:16];
      }

      while (v86);
    }

    bundleCopy = v83;
    activityBundleCopy = v162;
    v7 = &GEOPOICategoryGasStation_ptr;
    v10 = &GEOPOICategoryGasStation_ptr;
  }

  v93 = [v170 filteredArrayUsingPredicate:v164];
  if ([v93 count])
  {
    action = [activityBundleCopy action];
    actionSubtype = [action actionSubtype];

    if (actionSubtype == 2)
    {
      v212 = v165;
      v96 = [NSArray arrayWithObjects:&v212 count:1];
      v97 = [v93 sortedArrayUsingDescriptors:v96];

      firstObject = [v97 firstObject];
      [firstObject setPriorityScore:99.0];
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
  events = [activityBundleCopy events];
  v163 = v101;
  v104 = [events filteredArrayUsingPredicate:v101];

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
        identifierFromProvider = [v111 identifierFromProvider];
        v113 = [v106 containsObject:identifierFromProvider];

        if ((v113 & 1) == 0)
        {
          identifierFromProvider2 = [v111 identifierFromProvider];
          [v106 addObject:identifierFromProvider2];

          [v169 addObject:v111];
        }
      }

      v108 = [obj countByEnumeratingWithState:&v179 objects:v210 count:16];
    }

    while (v108);
  }

  events2 = [bundleCopy events];
  v116 = [events2 filteredArrayUsingPredicate:v163];

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
        identifierFromProvider3 = [v121 identifierFromProvider];
        v123 = [v106 containsObject:identifierFromProvider3];

        if ((v123 & 1) == 0)
        {
          [v169 addObject:v121];
        }
      }

      v118 = [v166 countByEnumeratingWithState:&v175 objects:v209 count:16];
    }

    while (v118);
  }

  v161 = bundleCopy;

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
        startDate = [v131 startDate];
        [startDate timeIntervalSince1970];
        v133 = [NSNumber numberWithDouble:?];
        [v126 setObject:v133 forKey:@"MOStateOfMindMetaDataKeyStartDate"];

        endDate = [v131 endDate];
        [endDate timeIntervalSince1970];
        v135 = [NSNumber numberWithDouble:?];
        [v126 setObject:v135 forKey:@"MOStateOfMindMetaDataKeyEndDate"];

        stateOfMindEvent = [v131 stateOfMindEvent];
        labels = [stateOfMindEvent labels];
        [v126 setObject:labels forKey:@"MOStateOfMindMetaDataKeyLabel"];

        stateOfMindEvent2 = [v131 stateOfMindEvent];
        domains = [stateOfMindEvent2 domains];
        [v126 setObject:domains forKey:@"MOStateOfMindMetaDataKeyDomain"];

        stateOfMindEvent3 = [v131 stateOfMindEvent];
        [stateOfMindEvent3 reflectiveInterval];
        v141 = [NSNumber numberWithDouble:?];
        [v126 setObject:v141 forKey:@"MOStateOfMindMetaDataKeyReflectiveInterval"];

        stateOfMindEvent4 = [v131 stateOfMindEvent];
        [stateOfMindEvent4 valence];
        v143 = [NSNumber numberWithDouble:?];
        [v126 setObject:v143 forKey:@"MOStateOfMindMetaDataKeyValence"];

        stateOfMindEvent5 = [v131 stateOfMindEvent];
        [stateOfMindEvent5 valenceClassification];
        v145 = [NSNumber numberWithDouble:?];
        [v126 setObject:v145 forKey:@"MOStateOfMindMetaDataKeyValenceClassification"];

        identifierFromProvider4 = [v131 identifierFromProvider];
        [v126 setObject:identifierFromProvider4 forKey:@"MOStateOfMindMetaDataKeyStateOfMindID"];

        v147 = [[MOResource alloc] initWithName:@"StateOfMind" type:16 dict:v126 value:0.0];
        identifierFromProvider5 = [v131 identifierFromProvider];
        [(MOResource *)v147 setAssets:identifierFromProvider5];

        eventIdentifier = [v131 eventIdentifier];
        [(MOResource *)v147 setSourceEventIdentifier:eventIdentifier];

        [(MOResource *)v147 setSourceEventAccessType:8];
        firstObject2 = [v127 firstObject];

        if (firstObject2 == v131)
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

+ (BOOL)isFlightBundle:(id)bundle
{
  action = [bundle action];
  v4 = [action actionType] == 11;

  return v4;
}

+ (id)summarizeMotionActivityBundlesWithSamePlaceName:(id)name withParameters:(id)parameters
{
  nameCopy = name;
  parametersCopy = parameters;
  v84 = objc_opt_new();
  v7 = &GEOPOICategoryGasStation_ptr;
  v8 = [NSPredicate predicateWithFormat:@"(%K = %lu OR %K = %lu OR %K = %lu) AND %K == NO", @"bundleSubType", 204, @"bundleSubType", 207, @"bundleSubType", 206, @"isAggregatedAndSuppressed"];
  v9 = [nameCopy filteredArrayUsingPredicate:v8];
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
    v75 = nameCopy;
    v14 = +[NSCalendar currentCalendar];
    firstObject = [v12 firstObject];
    startDate = [firstObject startDate];
    v17 = [v14 components:28 fromDate:startDate];

    v18 = [v14 dateFromComponents:v17];
    lastObject = [v12 lastObject];
    startDate2 = [lastObject startDate];
    v21 = [v14 components:28 fromDate:startDate2];

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
        place = [v36 place];
        placeName = [place placeName];
        if (!placeName)
        {
          break;
        }

        v39 = placeName;
        place2 = [v36 place];
        startDate3 = [place2 startDate];

        if (!startDate3)
        {
          goto LABEL_18;
        }

        place3 = [v36 place];
LABEL_33:
        v52 = [self concatenatePlaceNameAndPlaceStart:place3];
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
            [v90 setObject:place3 forKey:v52];
          }
        }

        if (++v35 == v89)
        {
          v89 = [v33 countByEnumeratingWithState:&v99 objects:v108 count:16];
          if (!v89)
          {
LABEL_41:

            allKeys = [v32 allKeys];
            v57 = [allKeys count];

            if (v57)
            {
              v93 = 0u;
              v94 = 0u;
              v91 = 0u;
              v92 = 0u;
              allKeys2 = [v32 allKeys];
              v59 = [allKeys2 countByEnumeratingWithState:&v91 objects:v106 count:16];
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
                      objc_enumerationMutation(allKeys2);
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

                      v68 = [self createMotionActivityMegaBundleFromBundles:v64 withSamePlace:v65 withParameters:parametersCopy];
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

                  v60 = [allKeys2 countByEnumeratingWithState:&v91 objects:v106 count:16];
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
      places = [v36 places];

      if (places)
      {
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        places2 = [v36 places];
        place3 = [places2 countByEnumeratingWithState:&v95 objects:v107 count:16];
        if (place3)
        {
          selfCopy = self;
          v46 = *v96;
          while (2)
          {
            for (j = 0; j != place3; j = j + 1)
            {
              if (*v96 != v46)
              {
                objc_enumerationMutation(places2);
              }

              v48 = *(*(&v95 + 1) + 8 * j);
              placeName2 = [v48 placeName];
              if (placeName2)
              {
                v50 = placeName2;
                startDate4 = [v48 startDate];

                if (startDate4)
                {
                  place3 = v48;
                  goto LABEL_31;
                }
              }
            }

            place3 = [places2 countByEnumeratingWithState:&v95 objects:v107 count:16];
            if (place3)
            {
              continue;
            }

            break;
          }

LABEL_31:
          self = selfCopy;
          v33 = v87;
          v32 = v88;
          v34 = v86;
        }
      }

      else
      {
        place3 = 0;
      }

      goto LABEL_33;
    }

LABEL_62:

    v8 = v74;
    nameCopy = v75;
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

+ (id)concatenatePlaceNameAndPlaceStart:(id)start
{
  startCopy = start;
  v4 = startCopy;
  if (startCopy && ([startCopy placeName], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    startDate = [v4 startDate];

    if (startDate)
    {
      v8 = objc_opt_new();
      placeName = [v4 placeName];
      [v8 addObject:placeName];

      startDate2 = [v4 startDate];
      [startDate2 timeIntervalSinceReferenceDate];
      v12 = [NSString stringWithFormat:@"%f", v11];
      [v8 addObject:v12];

      startDate = [v8 componentsJoinedByString:@":"];
    }
  }

  else
  {
    startDate = 0;
  }

  return startDate;
}

+ (id)createMotionActivityMegaBundleFromBundles:(id)bundles withSamePlace:(id)place withParameters:(id)parameters
{
  bundlesCopy = bundles;
  placeCopy = place;
  parametersCopy = parameters;
  if ([bundlesCopy count] < 2)
  {
    v11 = 0;
    goto LABEL_93;
  }

  selfCopy = self;
  v141 = parametersCopy;
  v138 = placeCopy;
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
  v136 = bundlesCopy;
  v15 = [bundlesCopy sortedArrayUsingDescriptors:v14];

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
        bundleIdentifier = [v17 bundleIdentifier];
        uUIDString = [bundleIdentifier UUIDString];
        [v147 addObject:uUIDString];

        suggestionID = [v17 suggestionID];
        uUIDString2 = [suggestionID UUIDString];
        [v146 addObject:uUIDString2];

        v175 = 0u;
        v176 = 0u;
        v173 = 0u;
        v174 = 0u;
        v150 = v17;
        events = [v17 events];
        v23 = [events countByEnumeratingWithState:&v173 objects:v186 count:16];
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
                objc_enumerationMutation(events);
              }

              v27 = *(*(&v173 + 1) + 8 * i);
              eventIdentifier = [v27 eventIdentifier];
              uUIDString3 = [eventIdentifier UUIDString];
              v30 = [v12 containsObject:uUIDString3];

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
                  identifierFromProvider = [v27 identifierFromProvider];
                  v32 = [v158 containsObject:identifierFromProvider];

                  if ((v32 & 1) == 0)
                  {
                    [v154 addObject:v27];
                    identifierFromProvider2 = [v27 identifierFromProvider];
                    [v158 addObject:identifierFromProvider2];
                  }
                }

                if ([v27 provider] == 5)
                {
                  [v159 addObject:v27];
                }
              }

              eventIdentifier2 = [v27 eventIdentifier];
              uUIDString4 = [eventIdentifier2 UUIDString];
              v36 = [v12 containsObject:uUIDString4];

              if ((v36 & 1) == 0)
              {
                eventIdentifier3 = [v27 eventIdentifier];
                uUIDString5 = [eventIdentifier3 UUIDString];
                [v12 addObject:uUIDString5];
              }
            }

            v24 = [events countByEnumeratingWithState:&v173 objects:v186 count:16];
          }

          while (v24);
        }

        v171 = 0u;
        v172 = 0u;
        v169 = 0u;
        v170 = 0u;
        resources = [v150 resources];
        v40 = [resources countByEnumeratingWithState:&v169 objects:v185 count:16];
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
                objc_enumerationMutation(resources);
              }

              v44 = *(*(&v169 + 1) + 8 * j);
              if ([v44 type] == 2)
              {
                assets = [v44 assets];
                v46 = [v13 containsObject:assets];

                if ((v46 & 1) == 0)
                {
                  assets2 = [v44 assets];
                  [v13 addObject:assets2];

                  [v145 addObject:v44];
                }
              }
            }

            v41 = [resources countByEnumeratingWithState:&v169 objects:v185 count:16];
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
      startDate = [(MOEventBundle *)v52 startDate];
      endDate = [v55 endDate];
      v58 = [startDate isAfterDate:endDate];

      if (v58)
      {
        startDate2 = [(MOEventBundle *)v52 startDate];
        endDate2 = [v55 endDate];
        [startDate2 timeIntervalSinceDate:endDate2];
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
    placeCopy = v138;
    v49 = v54;
    bundlesCopy = v136;
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
  firstObject = [v49 firstObject];
  motionActivityEvent = [firstObject motionActivityEvent];
  motionType = [motionActivityEvent motionType];

  v151 = v49;
  if (motionType == 2)
  {
    v71 = 204;
    v72 = v155;
  }

  else
  {
    firstObject2 = [v49 firstObject];
    motionActivityEvent2 = [firstObject2 motionActivityEvent];
    motionType2 = [motionActivityEvent2 motionType];

    v76 = motionType2 == 3;
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
  firstObject3 = [obj firstObject];
  startDate3 = [firstObject3 startDate];
  [(MOEventBundle *)v77 setStartDate:startDate3];

  lastObject = [obj lastObject];
  endDate3 = [lastObject endDate];
  [(MOEventBundle *)v77 setEndDate:endDate3];

  lastObject2 = [obj lastObject];
  expirationDate = [lastObject2 expirationDate];
  [(MOEventBundle *)v77 setExpirationDate:expirationDate];

  firstObject4 = [obj firstObject];
  time = [firstObject4 time];
  [(MOEventBundle *)v77 setTime:time];

  v88 = [MOContextAnnotationUtilities setActionForActivityBundle:v49];
  [(MOEventBundle *)v77 setAction:v88];

  if ([v72 count])
  {
    v89 = [MOContextAnnotationUtilities annotateEventBundle:v77 playbackMediaEvents:v72];
    [v140 addObjectsFromArray:v89];
    [(MOEventBundle *)v77 setEvents:v140];
  }

  placeCopy = v138;
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
    firstObject5 = [v140 firstObject];
    eventIdentifier4 = [firstObject5 eventIdentifier];
    [v93 setSourceEventIdentifier:eventIdentifier4];

    [v93 setPriorityScore:200.0];
    [(MOEventBundle *)v153 setPlace:v93];
    [v55 addObject:v93];
    [(MOEventBundle *)v153 setPlaces:v55];
    resources2 = [(MOEventBundle *)v153 resources];
    if (resources2)
    {
      resources3 = [(MOEventBundle *)v153 resources];
      v149 = [resources3 mutableCopy];
    }

    else
    {
      v149 = objc_opt_new();
    }

    v98 = objc_opt_new();
    startDate4 = [(MOEventBundle *)v153 startDate];
    [startDate4 timeIntervalSince1970];
    v100 = [NSNumber numberWithDouble:?];
    [v98 setObject:v100 forKey:@"MOActivityMetaDataKeyStartDate"];

    endDate4 = [(MOEventBundle *)v153 endDate];
    [endDate4 timeIntervalSince1970];
    v102 = [NSNumber numberWithDouble:?];
    [v98 setObject:v102 forKey:@"MOActivityMetaDataKeyEndDate"];

    action = [(MOEventBundle *)v153 action];
    actionMetaData = [action actionMetaData];

    v105 = [actionMetaData objectForKeyedSubscript:@"ActivityActionMetaDataValue"];
    v130 = actionMetaData;
    v106 = [actionMetaData objectForKeyedSubscript:@"ActivityActionMetaDataUnit"];
    action2 = [(MOEventBundle *)v153 action];
    actionName = [action2 actionName];

    if (v105 && v106)
    {
      [v98 setObject:v105 forKey:@"MOActivityMetaDataKeyStepCount"];
      [v98 setObject:v106 forKey:@"MOActivityMetaDataKeyUnit"];
    }

    v128 = v106;
    v129 = v105;
    [v98 setObject:actionName forKey:@"MOActivityMetaDataMotionType"];
    v131 = v98;
    v108 = [[MOResource alloc] initWithName:@"MotionActivity" type:13 dict:v98 value:0.0];
    firstObject6 = [v140 firstObject];
    eventIdentifier5 = [firstObject6 eventIdentifier];
    [(MOResource *)v108 setSourceEventIdentifier:eventIdentifier5];

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

      firstObject7 = [v115 firstObject];
      [firstObject7 setPriorityScore:99.0];

      v112 = v149;
      [v149 addObjectsFromArray:v115];
    }

    [(MOEventBundle *)v153 setResources:v112];
    [selfCopy updateRankMetaDataFrom:obj forSummaryBundle:v153];
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
    bundlesCopy = v136;
    placeCopy = v138;
    v50 = v159;
    v55 = v132;
  }

  else
  {
    v11 = 0;
    v50 = v159;
    bundlesCopy = v136;
  }

LABEL_92:
  parametersCopy = v141;
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