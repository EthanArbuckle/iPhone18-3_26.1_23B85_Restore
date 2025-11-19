@interface MOContextAnnotationUtilities
+ (BOOL)isEvergreenBundle:(id)a3;
+ (BOOL)photoNearInviteEvent:(id)a3 inviteEvent:(id)a4 withTimeThreshold:(double)a5;
+ (double)distanceFromHomeToCLLocation:(id)a3 universe:(id)a4;
+ (double)distanceFromHomeToLocation:(id)a3 universe:(id)a4;
+ (double)labelConfidenceForEventBundle:(id)a3;
+ (double)weightedAverageForObjects:(id)a3 weightPath:(id)a4 valuePath:(id)a5;
+ (id)andStringFromArray:(id)a3 propertyPath:(id)a4 maxCount:(unint64_t)a5;
+ (id)annotateEventBundle:(id)a3 dateIntervalEvents:(id)a4 emotionEvents:(id)a5 bundleDurationThreshold:(float)a6;
+ (id)annotateEventBundle:(id)a3 dateIntervalEvents:(id)a4 playbackMediaEvents:(id)a5 mediaDurationThreshold:(float)a6 lessSignificantPlaySessionMediaTypes:(id)a7;
+ (id)annotateEventBundle:(id)a3 leisureMediaEvents:(id)a4;
+ (id)annotateEventBundle:(id)a3 visitEvents:(id)a4 inviteEvents:(id)a5 withTimeThreshold:(double)a6 withDistanceThreshold:(float)a7 withPhotoTimeThreshold:(double)a8;
+ (id)annotateEventBundle:(id)a3 visitEvents:(id)a4 poiCategoryBlocklist:(id)a5 mediumConfidenceThreshold:(double)a6 highConfidenceThreshold:(double)a7 aoiConfidenceThreshold:(double)a8 universe:(id)a9;
+ (id)annotateEventBundle:(id)a3 visitEvents:(id)a4 universe:(id)a5;
+ (id)averageLocationFromLocations:(id)a3;
+ (id)baseTimeFromBaseEvents:(id)a3;
+ (id)bundleNameFromBundleId:(id)a3;
+ (id)creatMediaActionWithMediaInfo:(id)a3 mediaNameConfidence:(double)a4;
+ (id)createMediaResourceWithMediaInfo:(id)a3 playSessions:(id)a4 eventIdentifiersMapping:(id)a5 isDominant:(BOOL)a6;
+ (id)dominantMediaNameFromEvents:(id)a3;
+ (id)dominantMediaNameFromPlaySessions:(id)a3 intervalOfInterest:(id)a4 dominantFactorThreshold:(double)a5 confidence:(double *)a6;
+ (id)dominantMediaNameFromPlaySessions:(id)a3 intervalsOfInterest:(id)a4 dominantFactorThreshold:(double)a5 confidence:(double *)a6;
+ (id)extendedBundleNameFromBundleName:(id)a3 bundleId:(id)a4;
+ (id)fetchAssetUsingID:(id)a3 universe:(id)a4;
+ (id)groupedEventsFromEvents:(id)a3 propertyPath:(id)a4;
+ (id)locationsFromLocationString:(id)a3;
+ (id)locationsFromMotionEvents:(id)a3;
+ (id)majorityGroupFromEvents:(id)a3 propertyPath:(id)a4 valuePath:(id)a5;
+ (id)majorityPropertyFromEvents:(id)a3 propertyPath:(id)a4 valuePath:(id)a5;
+ (id)placeFromRoutes:(id)a3 referencePointRatio:(double)a4 minimumRangeOfLocation:(double)a5;
+ (id)placeFromVisitEvent:(id)a3 preferredCategories:(id)a4 poiCategoryBlocklist:(id)a5 mediumConfidenceThreshold:(double)a6 highConfidenceThreshold:(double)a7 aoiConfidenceThreshold:(double)a8 universe:(id)a9;
+ (id)placeFromVisitEvents:(id)a3 usedEvents:(id)a4 preferredCategories:(id)a5 poiCategoryBlocklist:(id)a6 mediumConfidenceThreshold:(double)a7 highConfidenceThreshold:(double)a8 aoiConfidenceThreshold:(double)a9 universe:(id)a10;
+ (id)predicateOfEmotionLogsWithStartDate:(id)a3 endDate:(id)a4;
+ (id)predicateOfEventsWithPlaySessionsWithStartDate:(id)a3 endData:(id)a4 distanceThreshold:(double)a5;
+ (id)predicateOfInviteEventsWithStartDate:(id)a3 endDate:(id)a4;
+ (id)predicateOfMediaPlaySessionsWithStartDate:(id)a3 endDate:(id)a4 distanceThreshold:(double)a5;
+ (id)predicateOfSocialContextEventWithStartDate:(id)a3 endData:(id)a4;
+ (id)predicateWithStartDate:(id)a3 endDate:(id)a4 distanceThreshold:(double)a5;
+ (id)setActionForActivityBundle:(id)a3;
+ (id)timeOfDayPrefixFromBaseEvents:(id)a3;
+ (unint64_t)prepositionWithPlaceType:(unint64_t)a3 userPlaceType:(unint64_t)a4 mapItemPlaceType:(unint64_t)a5 distanceFromVisitToPlace:(double)a6 snappingThreshold:(double)a7;
+ (void)addInviteResourceForBundle:(id)a3 withInviteEvent:(id)a4;
+ (void)addPhotoResources:(id)a3 universe:(id)a4 handler:(id)a5;
+ (void)addPhotoResourcesWithDateArray:(id)a3 universe:(id)a4 handler:(id)a5;
+ (void)addStateOfMindMetaDataForRankForBundle:(id)a3 withEmotionEvents:(id)a4;
+ (void)addStateOfMindResourceForBundle:(id)a3 withEmotionEvents:(id)a4;
+ (void)assetPriorityScoringForTimeAtHomeBundlesWithBundle:(id)a3 withMediaResources:(id)a4 withPhotoResources:(id)a5 withEmotionResources:(id)a6;
+ (void)filterEventsIntersectingDateRange:(id)a3 rangeStart:(id)a4 rangeEnd:(id)a5 eventInterval:(double)a6 handler:(id)a7;
+ (void)filterEventsIntersectingDateRange:(id)a3 rangeStart:(id)a4 rangeEnd:(id)a5 handler:(id)a6;
+ (void)removePhotoResourcesFarFromInvite:(id)a3 inviteEvent:(id)a4 withStandardTimeThreshold:(int64_t)a5 missingEndDateTimeThreshold:(int64_t)a6;
@end

@implementation MOContextAnnotationUtilities

+ (id)majorityPropertyFromEvents:(id)a3 propertyPath:(id)a4 valuePath:(id)a5
{
  v7 = a4;
  v8 = [MOContextAnnotationUtilities majorityGroupFromEvents:a3 propertyPath:v7 valuePath:a5];
  v9 = [v8 firstObject];
  v10 = [v9 valueForKeyPath:v7];

  return v10;
}

+ (id)majorityGroupFromEvents:(id)a3 propertyPath:(id)a4 valuePath:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v27 = v8;
  v28 = v7;
  v10 = [MOContextAnnotationUtilities groupedEventsFromEvents:v7 propertyPath:v8];
  v11 = [v10 allValues];
  v30 = [v11 firstObject];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [v10 allKeys];
  v12 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v36;
    v15 = -1.79769313e308;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v36 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = [v10 objectForKey:*(*(&v35 + 1) + 8 * i)];
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v18 = [v17 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v32;
          v21 = 0.0;
          do
          {
            for (j = 0; j != v19; j = j + 1)
            {
              if (*v32 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v23 = [*(*(&v31 + 1) + 8 * j) valueForKeyPath:v9];
              [v23 doubleValue];
              v21 = v21 + v24;
            }

            v19 = [v17 countByEnumeratingWithState:&v31 objects:v39 count:16];
          }

          while (v19);
        }

        else
        {
          v21 = 0.0;
        }

        if (v21 > v15)
        {
          v25 = v17;

          v30 = v25;
          v15 = v21;
        }
      }

      v13 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v13);
  }

  return v30;
}

+ (void)filterEventsIntersectingDateRange:(id)a3 rangeStart:(id)a4 rangeEnd:(id)a5 handler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v9 count])
  {
    v28 = v12;
    v29 = v9;
    v30 = objc_opt_new();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v13 = v9;
    v14 = [v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v17 = *v32;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v32 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v31 + 1) + 8 * i);
          v20 = [v19 endDate];
          [v20 timeIntervalSinceDate:v10];
          if (v21 >= 0.0)
          {
            v22 = [v19 startDate];
            [v11 timeIntervalSinceDate:v22];
            v24 = v23;

            if (v24 >= 0.0)
            {
              [v30 addObject:v19];
            }
          }

          else
          {
          }

          v25 = [v19 endDate];
          [v25 timeIntervalSinceDate:v11];
          v27 = v26 >= 0.0;

          v16 |= v27;
        }

        v15 = [v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v15);
    }

    else
    {
      v16 = 0;
    }

    v12 = v28;
    v28[2](v28, v30, v16 & 1);

    v9 = v29;
  }

  else
  {
    v12[2](v12, &__NSArray0__struct, 0);
  }
}

+ (void)filterEventsIntersectingDateRange:(id)a3 rangeStart:(id)a4 rangeEnd:(id)a5 eventInterval:(double)a6 handler:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  if (![v11 count])
  {
    v14[2](v14, &__NSArray0__struct, 0, 0.0);
    goto LABEL_28;
  }

  v42 = v14;
  v15 = objc_opt_new();
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v43 = v11;
  obj = v11;
  v16 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (!v16)
  {
    v18 = 0;
    v20 = 0.0;
    goto LABEL_22;
  }

  v17 = v16;
  v18 = 0;
  v19 = *v47;
  v20 = 0.0;
  v44 = v12;
  do
  {
    for (i = 0; i != v17; i = i + 1)
    {
      if (*v47 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v46 + 1) + 8 * i);
      v23 = [v22 endDate];
      [v23 timeIntervalSinceDate:v12];
      if (v24 >= 0.0)
      {
        v25 = [v22 startDate];
        [v13 timeIntervalSinceDate:v25];
        v27 = v26;

        if (v27 < 0.0)
        {
          goto LABEL_17;
        }

        v28 = v12;
        v29 = v15;
        v30 = [v22 startDate];
        if ([v30 isBeforeDate:v28])
        {
          v31 = v28;
        }

        else
        {
          v31 = [v22 startDate];
        }

        v23 = v31;

        v32 = [v22 endDate];
        if ([v32 isAfterDate:v13])
        {
          v33 = v13;
        }

        else
        {
          v33 = [v22 endDate];
        }

        v34 = v33;

        [v34 timeIntervalSinceDate:v23];
        v20 = v35 + v20;
        v15 = v29;
        [v29 addObject:v22];

        v12 = v44;
      }

LABEL_17:
      v36 = [v22 endDate];
      [v36 timeIntervalSinceDate:v13];
      v38 = v37 >= 0.0;

      v18 |= v38;
    }

    v17 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
  }

  while (v17);
LABEL_22:

  if (v20 >= a6)
  {
    v14 = v42;
    v39.n128_f32[0] = v20;
    (v42[2])(v42, v15, v18 & 1, v39);
  }

  else
  {
    v40 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    v14 = v42;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v51 = v20;
      v52 = 2048;
      v53 = a6;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "P@H: Total Home duration is %f s, doesn't meet threshold %f s", buf, 0x16u);
    }

    v41.n128_u64[0] = 0;
    (v42[2])(v42, &__NSArray0__struct, 0, v41);
  }

  v11 = v43;

LABEL_28:
}

+ (id)groupedEventsFromEvents:(id)a3 propertyPath:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = objc_opt_new();
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = v5;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = [v13 valueForKey:v6];
          if (v14)
          {
            v15 = [v7 objectForKey:v14];
            if (!v15)
            {
              v15 = objc_opt_new();
            }

            [v15 addObject:v13];
            [v7 setObject:v15 forKey:v14];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    v16 = [v7 copy];
    v5 = v18;
  }

  else
  {
    v16 = &__NSDictionary0__struct;
  }

  return v16;
}

+ (id)annotateEventBundle:(id)a3 visitEvents:(id)a4 universe:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v8 count])
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v9 getService:v11];

    v13 = @"aboveDoorShortAddress";
    v100 = v12;
    v101 = v9;
    if (v12)
    {
      LODWORD(v14) = 0.75;
      [v12 getFloatSettingForKey:@"VA_VisitLabelMediumConfidenceThreshold" withFallback:v14];
      v16 = v15;
      LODWORD(v17) = 0.5;
      [v12 getFloatSettingForKey:@"VA_AOIVisitLabelConfidentThreshold" withFallback:v17];
      v19 = v18;
      v20 = [NSString stringWithFormat:@"%@_%@", @"addressFormatting", @"formatOption"];
      v21 = [v12 getStringSettingForKey:v20 withFallback:v13];

      [v12 getDoubleSettingForKey:@"distanceOfSnappingThreshold" withFallback:150.0];
      v13 = v21;
    }

    else
    {
      v16 = 0.75;
      v19 = 0.5;
    }

    v99 = objc_opt_new();
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v102 = v8;
    obj = v8;
    v23 = [obj countByEnumeratingWithState:&v113 objects:v129 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v114;
      v103 = v13;
      v104 = v7;
      v105 = *v114;
      do
      {
        v26 = 0;
        v109 = v24;
        do
        {
          if (*v114 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v113 + 1) + 8 * v26);
          if ([v27 category] == 1)
          {
            v28 = [v27 placeName];
            [v27 placeNameConfidence];
            v30 = v29;
            v112 = [v27 formatLocalityWithFormatOption:v13];
            if (!v112)
            {
              v112 = [v27 formatAdministrativeAreaWithFormatOption:v13];
              if (!v112)
              {
                v112 = [v27 formatCountryWithFormatOption:v13];
              }
            }

            v31 = [v27 placeName];

            if (v31)
            {
              v32 = [v27 placeType] == 3 && v30 < v16;
              if (v32 && ([v27 placeSource] & 0x40000) == 0 || (LODWORD(v33) = 0, objc_msgSend(v27, "placeType") == 2) && v30 < v19)
              {
                v34 = [v27 formatAddressWithFormatOption:v13];
                v35 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
                {
                  v95 = objc_opt_class();
                  v96 = NSStringFromClass(v95);
                  v97 = [v27 placeType];
                  *buf = 138413570;
                  v118 = v96;
                  v119 = 2112;
                  v120 = v28;
                  v121 = 2112;
                  v122 = v34;
                  v123 = 2112;
                  v124 = v13;
                  v125 = 2048;
                  v126 = v30;
                  v127 = 2048;
                  v128 = v97;
                  _os_log_debug_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "%@: original place name, %@, new place name, %@, format option, %@, confidence, %f, placeType, %lu", buf, 0x3Eu);

                  v25 = v105;
                }

                LODWORD(v33) = v34 != 0;
                if (v34)
                {
                  v36 = v34;

                  v28 = v36;
                }
              }

              if ([v27 placeType] == 4 || objc_msgSend(v27, "placeType") == 5)
              {
                v37 = [v27 formatAddressWithFormatOption:v13];
                v38 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
                if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
                {
                  v89 = objc_opt_class();
                  v90 = NSStringFromClass(v89);
                  v91 = [v27 placeType];
                  *buf = 138413570;
                  v118 = v90;
                  v119 = 2112;
                  v120 = v28;
                  v121 = 2112;
                  v122 = v37;
                  v123 = 2112;
                  v124 = v13;
                  v125 = 2048;
                  v126 = v30;
                  v127 = 2048;
                  v128 = v91;
                  _os_log_debug_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "%@: original place name, %@, new place name, %@, format option, %@, confidence, %f, placeType, %lu", buf, 0x3Eu);

                  v25 = v105;
                }

                if (v37)
                {
                  v39 = v37;

                  LODWORD(v33) = 1;
                  v28 = v39;
                }
              }

              if ([v27 placeSource] == 0x2000 || objc_msgSend(v27, "placeSource") == 8193)
              {
                v40 = [v27 formatAddressWithFormatOption:v13];
                v41 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
                {
                  v92 = objc_opt_class();
                  v93 = NSStringFromClass(v92);
                  v94 = [v27 placeType];
                  *buf = 138413570;
                  v118 = v93;
                  v119 = 2112;
                  v120 = v28;
                  v121 = 2112;
                  v122 = v40;
                  v123 = 2112;
                  v124 = v13;
                  v125 = 2048;
                  v126 = v30;
                  v127 = 2048;
                  v128 = v94;
                  _os_log_debug_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "%@: original place name, %@, new place name, %@, format option, %@, confidence, %f, placeType, %lu", buf, 0x3Eu);

                  v25 = v105;
                }

                if (v40)
                {
                  v42 = v40;

                  LODWORD(v33) = 1;
                  v28 = v42;
                }

                v111 = v28;
              }

              else
              {
                v111 = v28;
              }

              v58 = [v27 isHighConfidence];
              [v27 placeNameConfidence];
              if (!v58)
              {
                v59 = v59 * 0.9;
              }

              if (v59 < 0.0)
              {
                v60 = 1;
              }

              else
              {
                v60 = v33;
              }

              if (v60)
              {
                v61 = 0.0;
              }

              else
              {
                v61 = v59;
              }

              v62 = [v7 place];
              if (!v62 || (v63 = v62, [v7 place], v64 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v64, "placeNameConfidence"), v66 = v65, v64, v63, v61 > v66))
              {
                v67 = [v27 placeType];
                if (v33)
                {
                  v68 = 0.0;
                }

                else
                {
                  v68 = v61;
                }

                if (v33)
                {
                  v69 = 5;
                }

                else
                {
                  v69 = v67;
                }

                v107 = v69;
                v106 = [MOPlace alloc];
                v70 = [v27 placeUserType];
                v71 = [v27 location];
                v72 = [v27 mode];
                v73 = [v27 poiCategory];
                v74 = [v27 categoryMuid];
                [v27 familiarityIndexLOI];
                v76 = v75;
                v77 = [v27 startDate];
                [v27 endDate];
                v78 = v108 = v33;
                v57 = [(MOPlace *)v106 initWithPlaceName:v111 enclosingArea:v112 placeType:v69 placeUserType:v70 location:v71 locationMode:v72 poiCategory:-1.0 categoryMuid:v68 distanceToHomeInMiles:v76 placeNameConfidence:v73 familiarityIndexLOI:v74 startDate:v77 endDate:v78];

                v79 = objc_opt_class();
                v33 = [v27 placeUserType];
                v50 = [v27 routineEvent];
                v80 = [v50 mapItemPlaceType];
                v51 = [v27 routineEvent];
                [v51 distanceFromVisitToPlace];
                v81 = v33;
                LOBYTE(v33) = v108;
                -[MOPlace setProposition:](v57, "setProposition:", [v79 prepositionWithPlaceType:v107 userPlaceType:v81 mapItemPlaceType:v80 distanceFromVisitToPlace:? snappingThreshold:?]);
LABEL_66:

                v82 = [v27 eventIdentifier];
                [(MOPlace *)v57 setSourceEventIdentifier:v82];

                v7 = v104;
                [v104 setPlace:v57];

                v13 = v103;
                v25 = v105;
              }
            }

            else
            {
              v111 = v28;
              v43 = [v27 location];

              if (v43)
              {
                v44 = [v7 place];
                if (!v44 || (v45 = v44, [v7 place], v46 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v46, "placeNameConfidence"), v48 = v47, v46, v45, v30 > v48))
                {
                  v49 = [MOPlace alloc];
                  v50 = [v27 location];
                  v33 = [v27 mode];
                  v51 = [v27 poiCategory];
                  v52 = [v27 categoryMuid];
                  [v27 familiarityIndexLOI];
                  v54 = v53;
                  v55 = [v27 startDate];
                  v56 = [v27 endDate];
                  v57 = [(MOPlace *)v49 initWithPlaceName:0 enclosingArea:v112 placeType:0 placeUserType:0 location:v50 locationMode:v33 poiCategory:-1.0 categoryMuid:0.0 distanceToHomeInMiles:v54 placeNameConfidence:v51 familiarityIndexLOI:v52 startDate:v55 endDate:v56];

                  LOBYTE(v33) = 0;
                  goto LABEL_66;
                }
              }

              LOBYTE(v33) = 0;
            }

            v83 = [v27 placeMapItem];

            if ((v33 & 1) == 0 && v83)
            {
              v84 = [MOResource alloc];
              v85 = [v27 placeName];
              v86 = [v27 placeMapItem];
              v87 = [(MOResource *)v84 initWithName:v85 mapItemHandle:v86 priorityScore:-1.0];

              v88 = [v27 eventIdentifier];
              [(MOResource *)v87 setSourceEventIdentifier:v88];

              [v7 addResource:v87];
            }

            v24 = v109;
          }

          v26 = v26 + 1;
        }

        while (v24 != v26);
        v24 = [obj countByEnumeratingWithState:&v113 objects:v129 count:16];
      }

      while (v24);
    }

    v22 = [v99 copy];
    v9 = v101;
    v8 = v102;
  }

  else
  {
    v22 = &__NSArray0__struct;
  }

  return v22;
}

+ (id)annotateEventBundle:(id)a3 dateIntervalEvents:(id)a4 emotionEvents:(id)a5 bundleDurationThreshold:(float)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v11 count])
  {
    v53 = v9;
    v57 = objc_opt_new();
    v52 = v10;
    if (v10)
    {
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v66 objects:v82 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v67;
        v16 = 0.0;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v67 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v18 = *(*(&v66 + 1) + 8 * i);
            v19 = [NSDateInterval alloc];
            v20 = [v18 startDate];
            v21 = [v18 endDate];
            v22 = [v19 initWithStartDate:v20 endDate:v21];

            [v57 addObject:v22];
            [v22 duration];
            v16 = v23 + v16;
          }

          v14 = [v12 countByEnumeratingWithState:&v66 objects:v82 count:16];
        }

        while (v14);
      }

      else
      {
        v16 = 0.0;
      }
    }

    else
    {
      v16 = 0.0;
    }

    v55 = objc_opt_new();
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v51 = v11;
    obj = v11;
    v25 = [obj countByEnumeratingWithState:&v62 objects:v81 count:16];
    if (v25)
    {
      v26 = v25;
      v56 = *v63;
      do
      {
        for (j = 0; j != v26; j = j + 1)
        {
          if (*v63 != v56)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v62 + 1) + 8 * j);
          v29 = +[NSCalendar currentCalendar];
          v30 = [NSDateInterval alloc];
          v31 = [v28 startDate];
          v32 = [v28 endDate];
          v33 = [v29 dateByAddingUnit:128 value:10 toDate:v32 options:0];
          v34 = [v30 initWithStartDate:v31 endDate:v33];

          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v35 = v57;
          v36 = [v35 countByEnumeratingWithState:&v58 objects:v80 count:16];
          if (v36)
          {
            v37 = v36;
            v38 = *v59;
            while (2)
            {
              for (k = 0; k != v37; k = k + 1)
              {
                if (*v59 != v38)
                {
                  objc_enumerationMutation(v35);
                }

                v40 = [*(*(&v58 + 1) + 8 * k) intersectionWithDateInterval:v34];
                [v40 duration];
                if (v41 > 0.0)
                {
                  [v55 addObject:v28];

                  goto LABEL_30;
                }
              }

              v37 = [v35 countByEnumeratingWithState:&v58 objects:v80 count:16];
              if (v37)
              {
                continue;
              }

              break;
            }
          }

LABEL_30:
        }

        v26 = [obj countByEnumeratingWithState:&v62 objects:v81 count:16];
      }

      while (v26);
    }

    v42 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    v43 = os_log_type_enabled(v42, OS_LOG_TYPE_INFO);
    if (v16 <= a6)
    {
      v9 = v53;
      v11 = v51;
      v46 = v55;
      if (v43)
      {
        v47 = COERCE_DOUBLE([v55 count]);
        v48 = [v53 suggestionID];
        v49 = [v53 bundleSuperType];
        *buf = 134219010;
        v71 = v47;
        v72 = 2048;
        v73 = v16;
        v74 = 2048;
        v75 = a6;
        v76 = 2112;
        v77 = v48;
        v78 = 2048;
        v79 = v49;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "N=%lu emotion events attached to bundle since total bundle duration (%.2f) is less or equal to threshold (%.2f), suggestionID %@, bundleSuperType %lu", buf, 0x34u);
      }

      v24 = v55;
      v10 = v52;
    }

    else
    {
      v10 = v52;
      v9 = v53;
      v11 = v51;
      if (v43)
      {
        [v53 suggestionID];
        v44 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v45 = [v53 bundleSuperType];
        *buf = 134218754;
        v71 = v16;
        v72 = 2048;
        v73 = a6;
        v74 = 2112;
        v75 = v44;
        v76 = 2048;
        v77 = v45;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "No emotion events attached to bundle since total bundle duration (%.2f) is higher than threshold (%.2f), suggestionID %@, bundleSuperType %lu", buf, 0x2Au);
      }

      v24 = &__NSArray0__struct;
      v46 = v55;
    }
  }

  else
  {
    v24 = &__NSArray0__struct;
  }

  return v24;
}

+ (id)annotateEventBundle:(id)a3 visitEvents:(id)a4 inviteEvents:(id)a5 withTimeThreshold:(double)a6 withDistanceThreshold:(float)a7 withPhotoTimeThreshold:(double)a8
{
  v13 = a3;
  v14 = a4;
  v96 = a5;
  if ([v96 count] && objc_msgSend(v14, "count"))
  {
    [v96 sortedArrayUsingComparator:&__block_literal_global_13];
    v121 = 0u;
    v122 = 0u;
    v123 = 0u;
    obj = v124 = 0u;
    v102 = [obj countByEnumeratingWithState:&v121 objects:v135 count:16];
    if (v102)
    {
      v101 = *v122;
      v15 = a7;
      v103 = v14;
      v104 = v13;
      do
      {
        v16 = 0;
        do
        {
          if (*v122 != v101)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v121 + 1) + 8 * v16);
          v18 = [v17 inviteEvent];
          v19 = [v18 inviteEventOrganizers];
          v20 = [v19 count];

          if (v20)
          {
            v119 = 0u;
            v120 = 0u;
            v117 = 0u;
            v118 = 0u;
            v21 = [v17 inviteEvent];
            v22 = [v21 inviteEventOrganizers];

            v23 = [v22 countByEnumeratingWithState:&v117 objects:v134 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v118;
              while (2)
              {
                for (i = 0; i != v24; i = i + 1)
                {
                  if (*v118 != v25)
                  {
                    objc_enumerationMutation(v22);
                  }

                  if ([*(*(&v117 + 1) + 8 * i) isMe])
                  {
                    v27 = 1;
                    goto LABEL_19;
                  }
                }

                v24 = [v22 countByEnumeratingWithState:&v117 objects:v134 count:16];
                if (v24)
                {
                  continue;
                }

                break;
              }
            }

            v27 = 0;
LABEL_19:
          }

          else
          {
            v27 = 0;
          }

          v28 = [v17 inviteEvent];
          v29 = [v28 inviteEventAttendees];
          v30 = [v29 count];

          if (v30)
          {
            v31 = v16;
            v115 = 0u;
            v116 = 0u;
            v113 = 0u;
            v114 = 0u;
            v32 = [v17 inviteEvent];
            v33 = [v32 inviteEventAttendees];

            v34 = [v33 countByEnumeratingWithState:&v113 objects:v133 count:16];
            if (v34)
            {
              v35 = v34;
              v36 = *v114;
              while (2)
              {
                for (j = 0; j != v35; j = j + 1)
                {
                  if (*v114 != v36)
                  {
                    objc_enumerationMutation(v33);
                  }

                  v38 = *(*(&v113 + 1) + 8 * j);
                  if ([v38 isMe])
                  {
                    v39 = [v38 rsvpStatus];
                    v40 = [v39 isEqualToString:@"accepted"];

                    if (v40)
                    {

                      v16 = v31;
                      goto LABEL_36;
                    }
                  }
                }

                v35 = [v33 countByEnumeratingWithState:&v113 objects:v133 count:16];
                if (v35)
                {
                  continue;
                }

                break;
              }
            }

            v16 = v31;
          }

          if ((v27 & 1) == 0)
          {
            v41 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
            v14 = v103;
            if (!os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
            {
              goto LABEL_71;
            }

            *buf = 138412546;
            v127 = *&v17;
            v128 = 2112;
            v129 = v13;
            v42 = v41;
            v43 = "invite event did not pass because user is not the host or an attendee with rsvp status = accepted, invite: %@, bundle: %@";
            goto LABEL_52;
          }

LABEL_36:
          v44 = [v17 inviteEvent];
          v45 = [v44 inviteEventLocation];

          v14 = v103;
          if (!v45)
          {
            goto LABEL_50;
          }

          v111 = 0u;
          v112 = 0u;
          v109 = 0u;
          v110 = 0u;
          v46 = v103;
          v47 = [v46 countByEnumeratingWithState:&v109 objects:v132 count:16];
          if (!v47)
          {

LABEL_50:
            v41 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
            if (!os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
            {
              goto LABEL_71;
            }

            *buf = 138412546;
            v127 = *&v17;
            v128 = 2112;
            v129 = v13;
            v42 = v41;
            v43 = "invite event did not pass location check, invite: %@, bundle: %@";
LABEL_52:
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, v43, buf, 0x16u);
            goto LABEL_71;
          }

          v48 = v47;
          v100 = v16;
          v49 = 0;
          v50 = *v110;
          do
          {
            for (k = 0; k != v48; k = k + 1)
            {
              if (*v110 != v50)
              {
                objc_enumerationMutation(v46);
              }

              v52 = *(*(&v109 + 1) + 8 * k);
              v53 = [CLLocation alloc];
              v54 = [v52 location];
              [v54 latitude];
              v56 = v55;
              v57 = [v52 location];
              [v57 longitude];
              v59 = [v53 initWithLatitude:v56 longitude:v58];

              v60 = [v17 inviteEvent];
              v61 = [v60 inviteEventLocation];
              [v59 distanceFromLocation:v61];
              v63 = v62;

              v64 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
              if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
              {
                *buf = 134218498;
                v127 = v63;
                v128 = 2112;
                v129 = v17;
                v130 = 2112;
                v131 = v104;
                _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_INFO, "distance between invite event and visit event: %f, invite: %@, bundle: %@", buf, 0x20u);
              }

              v49 |= v63 < v15;
            }

            v48 = [v46 countByEnumeratingWithState:&v109 objects:v132 count:16];
          }

          while (v48);

          v13 = v104;
          v14 = v103;
          v16 = v100;
          if ((v49 & 1) == 0)
          {
            goto LABEL_50;
          }

          v41 = +[NSCalendar currentCalendar];
          v65 = [v17 endDate];
          v66 = [v17 startDate];
          v67 = [v65 isEqualToDate:v66];

          if (v67)
          {
            v68 = [v17 startDate];
            v69 = [v41 dateByAddingUnit:32 value:1 toDate:v68 options:0];
          }

          else
          {
            v69 = [v17 endDate];
          }

          v70 = [NSDateInterval alloc];
          v71 = [v17 startDate];
          v72 = [v70 initWithStartDate:v71 endDate:v69];

          v107 = 0u;
          v108 = 0u;
          v105 = 0u;
          v106 = 0u;
          v73 = v46;
          v74 = [v73 countByEnumeratingWithState:&v105 objects:v125 count:16];
          if (v74)
          {
            v75 = v74;
            v97 = v69;
            v98 = v41;
            v76 = 0;
            v77 = *v106;
            do
            {
              for (m = 0; m != v75; m = m + 1)
              {
                if (*v106 != v77)
                {
                  objc_enumerationMutation(v73);
                }

                v79 = *(*(&v105 + 1) + 8 * m);
                v80 = [NSDateInterval alloc];
                v81 = [v79 startDate];
                v82 = [v79 endDate];
                v83 = [v80 initWithStartDate:v81 endDate:v82];

                v84 = [v83 intersectionWithDateInterval:v72];
                [v84 duration];
                v76 = (v85 + v76);
              }

              v75 = [v73 countByEnumeratingWithState:&v105 objects:v125 count:16];
            }

            while (v75);
            v86 = v76;
            v14 = v103;
            v16 = v100;
            v69 = v97;
            v41 = v98;
          }

          else
          {
            v86 = 0.0;
          }

          v13 = v104;
          if (v86 >= a6 || ([v72 duration], v87 == v86))
          {
            if ([v104 bundleSuperType] != 5)
            {
              v89 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
              if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
              {
LABEL_81:
                *buf = 138412546;
                v127 = *&v17;
                v128 = 2112;
                v129 = v104;
                _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_INFO, "invite event passed all bundling checks, invite: %@, bundle: %@", buf, 0x16u);
              }

LABEL_82:

              v94 = v17;
              goto LABEL_83;
            }

            v88 = [MOContextAnnotationUtilities photoNearInviteEvent:v104 inviteEvent:v17 withTimeThreshold:a8];
            v89 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
            v90 = os_log_type_enabled(v89, OS_LOG_TYPE_INFO);
            if (v88)
            {
              if (v90)
              {
                goto LABEL_81;
              }

              goto LABEL_82;
            }

            if (!v90)
            {
              goto LABEL_70;
            }

            *buf = 138412546;
            v127 = *&v17;
            v128 = 2112;
            v129 = v104;
            v91 = v89;
            v92 = "invite event for time at home did not pass photo check, invite: %@, bundle: %@";
          }

          else
          {
            v89 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
            if (!os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
            {
              goto LABEL_70;
            }

            *buf = 138412546;
            v127 = *&v17;
            v128 = 2112;
            v129 = v104;
            v91 = v89;
            v92 = "invite event did not pass time check, invite: %@, bundle: %@";
          }

          _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_INFO, v92, buf, 0x16u);
LABEL_70:

LABEL_71:
          v16 = v16 + 1;
        }

        while (v16 != v102);
        v93 = [obj countByEnumeratingWithState:&v121 objects:v135 count:16];
        v102 = v93;
      }

      while (v93);
    }

    v94 = 0;
LABEL_83:
  }

  else
  {
    v94 = 0;
  }

  return v94;
}

int64_t __140__MOContextAnnotationUtilities_annotateEventBundle_visitEvents_inviteEvents_withTimeThreshold_withDistanceThreshold_withPhotoTimeThreshold___block_invoke(id a1, MOEvent *a2, MOEvent *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(MOEvent *)v4 inviteEvent];
  v7 = [v6 inviteEventAttendees];
  v8 = [v7 count];
  v9 = [(MOEvent *)v5 inviteEvent];
  v10 = [v9 inviteEventAttendees];
  v11 = [v10 count];

  if (v8 >= v11)
  {
    v13 = [(MOEvent *)v4 inviteEvent];
    v14 = [v13 inviteEventAttendees];
    v15 = [v14 count];
    v16 = [(MOEvent *)v5 inviteEvent];
    v17 = [v16 inviteEventAttendees];
    v18 = [v17 count];

    if (v15 <= v18)
    {
      v12 = 0;
    }

    else
    {
      v12 = -1;
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

+ (BOOL)photoNearInviteEvent:(id)a3 inviteEvent:(id)a4 withTimeThreshold:(double)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [NSDateInterval alloc];
  v10 = [v8 startDate];
  v11 = [v8 endDate];
  v12 = [v9 initWithStartDate:v10 endDate:v11];

  v13 = [NSPredicate predicateWithFormat:@"type == %lu", 2];
  v14 = [v7 resources];
  v15 = [v14 filteredArrayUsingPredicate:v13];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v16 = v15;
  v17 = [v16 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v17)
  {
    v35 = v13;
    v36 = v7;
    v18 = *v38;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v38 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v37 + 1) + 8 * i);
        v21 = [v20 photoCreationDate];
        v22 = [v12 containsDate:v21];

        v23 = [v8 startDate];
        v24 = [v20 photoCreationDate];
        [v23 timeIntervalSinceDate:v24];
        v26 = v25;

        v27 = [v8 endDate];
        v28 = [v20 photoCreationDate];
        [v27 timeIntervalSinceDate:v28];
        v30 = fabs(v29);

        v31 = fabs(v26);
        if (v22)
        {
          v32 = 0;
        }

        else
        {
          v32 = v31 > a5;
        }

        if (!v32 || v30 <= a5)
        {
          LOBYTE(v17) = 1;
          goto LABEL_16;
        }
      }

      v17 = [v16 countByEnumeratingWithState:&v37 objects:v41 count:{16, v31}];
    }

    while (v17);
LABEL_16:
    v13 = v35;
    v7 = v36;
  }

  return v17;
}

+ (void)removePhotoResourcesFarFromInvite:(id)a3 inviteEvent:(id)a4 withStandardTimeThreshold:(int64_t)a5 missingEndDateTimeThreshold:(int64_t)a6
{
  v9 = a3;
  v10 = a4;
  v11 = +[NSCalendar currentCalendar];
  v12 = [v10 endDate];
  v13 = [v10 startDate];
  v14 = [v12 isEqualToDate:v13];

  v15 = [v10 startDate];
  v16 = [v11 dateByAddingUnit:64 value:-a5 toDate:v15 options:0];

  v33 = v11;
  if (v14)
  {
    v17 = [v10 startDate];
    v18 = v11;
    v19 = a6;
  }

  else
  {
    v17 = [v10 endDate];
    v18 = v11;
    v19 = a5;
  }

  v20 = [v18 dateByAddingUnit:64 value:v19 toDate:v17 options:0];

  v31 = v20;
  v32 = v16;
  v21 = [[NSDateInterval alloc] initWithStartDate:v16 endDate:v20];
  v22 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v34 = v9;
  v23 = [v9 resources];
  v24 = [v23 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v36;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v36 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v35 + 1) + 8 * i);
        if ([v28 type] == 2)
        {
          v29 = [v28 photoCreationDate];
          v30 = [v21 containsDate:v29];

          if (!v30)
          {
            continue;
          }
        }

        [v22 addObject:v28];
      }

      v25 = [v23 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v25);
  }

  [v34 setResources:v22];
}

+ (id)annotateEventBundle:(id)a3 leisureMediaEvents:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (![v6 count])
  {
    v32 = &__NSArray0__struct;
    goto LABEL_39;
  }

  v43 = v6;
  v44 = v5;
  v7 = [MOContextAnnotationUtilities groupedEventsFromEvents:v6 propertyPath:@"mediaArtist"];
  v8 = [v7 allValues];

  v9 = [v8 firstObject];
  v10 = [v9 firstObject];

  v11 = [v10 mediaTitle];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v8;
  v12 = [obj countByEnumeratingWithState:&v50 objects:v57 count:16];
  if (!v12)
  {
    v15 = 0.0;
    v16 = -1.79769313e308;
    goto LABEL_29;
  }

  v13 = v12;
  v14 = *v51;
  v15 = 0.0;
  v16 = -1.79769313e308;
  do
  {
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v51 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v50 + 1) + 8 * i);
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v19 = v18;
      v20 = [v19 countByEnumeratingWithState:&v46 objects:v56 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v47;
        v23 = 0.0;
        do
        {
          for (j = 0; j != v21; j = j + 1)
          {
            if (*v47 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v25 = [*(*(&v46 + 1) + 8 * j) mediaSumTimePlayed];
            [v25 doubleValue];
            v23 = v23 + v26;
          }

          v21 = [v19 countByEnumeratingWithState:&v46 objects:v56 count:16];
        }

        while (v21);
      }

      else
      {
        v23 = 0.0;
      }

      if (v23 > v16)
      {
        v27 = [v19 firstObject];

        if ([v19 count] == 1)
        {
          v28 = [v27 mediaTitle];

          if (v28)
          {
            v29 = [v27 mediaTitle];
            goto LABEL_22;
          }
        }

        v30 = [v27 mediaArtist];

        if (v30)
        {
          v29 = [v27 mediaArtist];
LABEL_22:
          v31 = v29;

          v11 = v31;
        }

        v10 = v27;
        v16 = v23;
      }

      v15 = v15 + v23;
    }

    v13 = [obj countByEnumeratingWithState:&v50 objects:v57 count:16];
  }

  while (v13);
LABEL_29:

  if (v11)
  {
    if (v15 <= 0.0)
    {
      v33 = -1.0;
    }

    else
    {
      v33 = v16 / v15;
    }

    v34 = [NSString stringWithFormat:@"listening to %@", v11];
    v35 = [[MOAction alloc] initWithActionName:v34 actionType:6 actionSubtype:0 actionNameConfidence:v33];
    v36 = [v10 eventIdentifier];
    [(MOAction *)v35 setSourceEventIdentifier:v36];

    v5 = v44;
    [v44 addBackgroundAction:v35];
    v37 = [MOResource alloc];
    v38 = [v10 mediaProductId];
    v39 = [(MOResource *)v37 initWithName:v11 type:3 assets:v38];

    v40 = [v10 eventIdentifier];
    [(MOResource *)v39 setSourceEventIdentifier:v40];

    [v44 addResource:v39];
    v41 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    v6 = v43;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v55 = v35;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "Action, %@", buf, 0xCu);
    }
  }

  else
  {
    v34 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    v6 = v43;
    v5 = v44;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      +[MOContextAnnotationUtilities annotateEventBundle:leisureMediaEvents:];
    }
  }

  v32 = v6;
LABEL_39:

  return v32;
}

+ (id)annotateEventBundle:(id)a3 dateIntervalEvents:(id)a4 playbackMediaEvents:(id)a5 mediaDurationThreshold:(float)a6 lessSignificantPlaySessionMediaTypes:(id)a7
{
  v11 = a3;
  v113 = a4;
  v12 = a5;
  v13 = a7;
  v14 = objc_autoreleasePoolPush();
  v102 = v12;
  if (![v12 count])
  {
    v20 = &__NSArray0__struct;
    goto LABEL_98;
  }

  v101 = v14;
  v15 = [NSDateInterval alloc];
  v16 = [v11 startDate];
  v17 = [v11 endDate];
  v18 = [v15 initWithStartDate:v16 endDate:v17];

  [v18 duration];
  v111 = v18;
  if (v19 != 0.0)
  {
    v21 = [v18 startDate];
    v22 = [v18 endDate];
    v105 = [MOContextAnnotationUtilities predicateOfMediaPlaySessionsWithStartDate:v21 endDate:v22 distanceThreshold:0.5];

    v114 = objc_opt_new();
    if (v113)
    {
      v144 = 0u;
      v145 = 0u;
      v142 = 0u;
      v143 = 0u;
      v23 = v113;
      v24 = [v23 countByEnumeratingWithState:&v142 objects:v154 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v143;
        do
        {
          for (i = 0; i != v25; i = i + 1)
          {
            if (*v143 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v142 + 1) + 8 * i);
            v29 = [NSDateInterval alloc];
            v30 = [v28 startDate];
            v31 = [v28 endDate];
            v32 = [v29 initWithStartDate:v30 endDate:v31];

            [v114 addObject:v32];
          }

          v25 = [v23 countByEnumeratingWithState:&v142 objects:v154 count:16];
        }

        while (v25);
      }
    }

    v116 = objc_opt_new();
    v33 = objc_opt_new();
    v112 = objc_opt_new();
    v138 = 0u;
    v139 = 0u;
    v140 = 0u;
    v141 = 0u;
    obj = v102;
    v123 = v33;
    v106 = [obj countByEnumeratingWithState:&v138 objects:v153 count:16];
    if (!v106)
    {
      v34 = 0.0;
      v35 = v111;
LABEL_85:

      v125 = -1.0;
      v87 = [MOContextAnnotationUtilities dominantMediaNameFromPlaySessions:v112 intervalOfInterest:v35 dominantFactorThreshold:&v125 confidence:0.8];
      v88 = v87;
      if (v87)
      {
        v89 = [v87 objectForKeyedSubscript:@"DominantMediaNameKey"];
        if (v89)
        {
          v90 = v89;
          v91 = [v88 objectForKeyedSubscript:@"DominantMediaPropertyKey"];

          if (v91)
          {
            v92 = [MOContextAnnotationUtilities creatMediaActionWithMediaInfo:v88 mediaNameConfidence:v125];
            [v11 setConcurrentMediaAction:v92];

            v93 = [MOContextAnnotationUtilities createMediaResourceWithMediaInfo:v88 playSessions:v112 eventIdentifiersMapping:v33 isDominant:v125 > 0.8, v125];
            if ([v93 count])
            {
              [v11 addResources:v93];
              v94 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
              if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
              {
                v95 = [v11 resources];
                v96 = [v95 count];
                v97 = [v11 resources];
                v98 = [v97 count];
                *buf = 134218240;
                v150 = v96;
                v33 = v123;
                v151 = 2048;
                v152 = v98;
                _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_INFO, "Add media resources, %lu, total, %lu", buf, 0x16u);
              }
            }
          }
        }
      }

      if (v34 <= a6)
      {
        v20 = &__NSArray0__struct;
        v14 = v101;
        v99 = v116;
      }

      else
      {
        v99 = v116;
        v20 = v116;
        v14 = v101;
      }

      goto LABEL_97;
    }

    v104 = *v139;
    v34 = 0.0;
    v35 = v111;
    v109 = v11;
    v110 = v13;
LABEL_16:
    v36 = 0;
LABEL_17:
    if (*v139 != v104)
    {
      objc_enumerationMutation(obj);
    }

    v108 = v36;
    v37 = *(*(&v138 + 1) + 8 * v36);
    v107 = objc_autoreleasePoolPush();
    v124 = v37;
    v38 = [v37 mediaPlaySessions];
    v39 = [v38 filteredArrayUsingPredicate:v105];

    v40 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v41 = [v124 mediaPlaySessions];
      v42 = [v41 count];
      v43 = [v39 count];
      *buf = 134218240;
      v150 = v42;
      v33 = v123;
      v151 = 2048;
      v152 = v43;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "playback, %lu, filtered sessions, %lu", buf, 0x16u);
    }

    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v44 = v39;
    v118 = [v44 countByEnumeratingWithState:&v134 objects:v148 count:16];
    if (!v118)
    {

      goto LABEL_81;
    }

    v115 = v44;
    v45 = 0;
    v117 = *v135;
    v46 = v116;
LABEL_23:
    v47 = 0;
LABEL_24:
    if (*v135 != v117)
    {
      objc_enumerationMutation(v115);
    }

    v48 = *(*(&v134 + 1) + 8 * v47);
    context = objc_autoreleasePoolPush();
    if ([v11 interfaceType] == 1 && objc_msgSend(v48, "isRemote"))
    {
      v122 = [v48 deviceSource];
      if ([v122 isEqualToString:@"iPad"])
      {
        v49 = context;
        goto LABEL_74;
      }

      v119 = [v48 deviceSource];
      if ([v119 isEqualToString:@"MacDesktop"])
      {
        goto LABEL_40;
      }

      v120 = v47;
      v50 = [v48 deviceSource];
      if ([v50 isEqualToString:@"MacPortable"])
      {
        goto LABEL_71;
      }

      v51 = [v48 deviceSource];
      if ([v51 isEqualToString:@"TV"])
      {
        goto LABEL_69;
      }

      v52 = [v48 deviceSource];
      v53 = [v52 isEqualToString:@"HomePod"];

      v46 = v116;
      v47 = v120;
      if (v53)
      {
        goto LABEL_37;
      }
    }

    v120 = v47;
    if (v13)
    {
      v54 = [v48 mediaType];
      v55 = [v48 bundleId];
      v56 = [MOMediaPlaySession getMOPlaySessionMediaType:v54 bundleId:v55];
      v57 = [v13 containsObject:v56];

      if (v57)
      {
        v46 = v116;
        v33 = v123;
        v47 = v120;
LABEL_37:
        v49 = context;
        goto LABEL_75;
      }
    }

    v58 = [NSDateInterval alloc];
    v59 = [v48 startDate];
    v60 = [v48 endDate];
    v61 = [v58 initWithStartDate:v59 endDate:v60];

    v122 = v61;
    v62 = [v35 intersectionWithDateInterval:v61];
    [v62 duration];
    v119 = v62;
    if (v63 == 0.0)
    {
      v46 = v116;
      v33 = v123;
      v47 = v120;
LABEL_40:
      v49 = context;
      goto LABEL_73;
    }

    [v62 duration];
    v34 = v64 + v34;
    v33 = v123;
    if (v113 && [v114 count])
    {
      v132 = 0u;
      v133 = 0u;
      v130 = 0u;
      v131 = 0u;
      v50 = v114;
      v65 = [v50 countByEnumeratingWithState:&v130 objects:v147 count:16];
      if (!v65)
      {
        goto LABEL_67;
      }

      v66 = v65;
      v67 = *v131;
      while (1)
      {
        for (j = 0; j != v66; j = j + 1)
        {
          if (*v131 != v67)
          {
            objc_enumerationMutation(v50);
          }

          v69 = [*(*(&v130 + 1) + 8 * j) intersectionWithDateInterval:{v122, v101}];
          [v69 duration];
          v71 = v70;

          if (v71 > 0.0)
          {

            v35 = v111;
            v33 = v123;
            goto LABEL_53;
          }
        }

        v66 = [v50 countByEnumeratingWithState:&v130 objects:v147 count:16];
        if (!v66)
        {
          v35 = v111;
          v46 = v116;
          v33 = v123;
          goto LABEL_71;
        }
      }
    }

LABEL_53:
    [v112 addObject:{v48, v101}];
    v72 = [v48 title];
    v73 = [v33 objectForKeyedSubscript:v72];

    if (!v73)
    {
      v50 = [v124 eventIdentifier];
      v51 = [v48 title];
      [v33 setObject:v50 forKeyedSubscript:v51];
      v45 = 1;
LABEL_69:
      v49 = context;

      v46 = v116;
      goto LABEL_72;
    }

    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v46 = v116;
    v50 = v116;
    v74 = [v50 countByEnumeratingWithState:&v126 objects:v146 count:16];
    if (!v74)
    {
      v45 = 1;
      v13 = v110;
      goto LABEL_71;
    }

    v75 = v74;
    v76 = *v127;
LABEL_56:
    v77 = 0;
    while (1)
    {
      if (*v127 != v76)
      {
        objc_enumerationMutation(v50);
      }

      v78 = *(*(&v126 + 1) + 8 * v77);
      v79 = [v78 eventIdentifier];
      v80 = [v48 title];
      v81 = [v33 objectForKeyedSubscript:v80];
      v82 = v81;
      if (v79 != v81)
      {
        break;
      }

      v83 = [v78 startDate];
      v84 = [v124 startDate];
      [v83 timeIntervalSinceDate:v84];
      v86 = v85;

      v33 = v123;
      if (v86 > 0.0)
      {
        v79 = [v124 eventIdentifier];
        v80 = [v48 title];
        [v123 setObject:v79 forKeyedSubscript:v80];
        goto LABEL_63;
      }

LABEL_64:
      if (v75 == ++v77)
      {
        v75 = [v50 countByEnumeratingWithState:&v126 objects:v146 count:16];
        if (!v75)
        {
          v45 = 1;
          v11 = v109;
          v13 = v110;
          v35 = v111;
LABEL_67:
          v46 = v116;
LABEL_71:
          v49 = context;
LABEL_72:

          v47 = v120;
LABEL_73:

LABEL_74:
LABEL_75:
          objc_autoreleasePoolPop(v49);
          if (++v47 == v118)
          {
            v118 = [v115 countByEnumeratingWithState:&v134 objects:v148 count:16];
            if (!v118)
            {

              if (v45)
              {
                [v46 addObject:v124];
              }

              v44 = v115;
LABEL_81:

              objc_autoreleasePoolPop(v107);
              v36 = v108 + 1;
              if ((v108 + 1) == v106)
              {
                v106 = [obj countByEnumeratingWithState:&v138 objects:v153 count:16];
                if (!v106)
                {
                  goto LABEL_85;
                }

                goto LABEL_16;
              }

              goto LABEL_17;
            }

            goto LABEL_23;
          }

          goto LABEL_24;
        }

        goto LABEL_56;
      }
    }

LABEL_63:
    goto LABEL_64;
  }

  v20 = &__NSArray0__struct;
  v14 = v101;
LABEL_97:

LABEL_98:
  objc_autoreleasePoolPop(v14);

  return v20;
}

+ (id)creatMediaActionWithMediaInfo:(id)a3 mediaNameConfidence:(double)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  [v6 setObject:&off_100369460 forKeyedSubscript:@"MediaActionMetaDataMediaType"];
  v7 = [v5 objectForKeyedSubscript:@"DominantMediaBundleIdKey"];
  v8 = [v7 isEqualToString:@"com.apple.tv"];

  if (v8)
  {
    [v6 setObject:&off_100369478 forKeyedSubscript:@"MediaActionMetaDataMediaType"];
  }

  v9 = [v5 objectForKeyedSubscript:@"DominantMediaInfoKey"];
  [v6 setObject:v9 forKeyedSubscript:@"MediaActionMetaDataMediaInfoType"];

  v10 = [MOAction alloc];
  v11 = [v5 objectForKeyedSubscript:@"DominantMediaNameKey"];
  v12 = [(MOAction *)v10 initWithActionName:v11 actionType:6 actionSubtype:0 actionNameConfidence:a4];

  [(MOAction *)v12 setActionMetaData:v6];
  v13 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v15 = 138412290;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Action, %@", &v15, 0xCu);
  }

  return v12;
}

+ (id)createMediaResourceWithMediaInfo:(id)a3 playSessions:(id)a4 eventIdentifiersMapping:(id)a5 isDominant:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v83 = a4;
  v84 = a5;
  v89 = objc_opt_new();
  v10 = [v9 objectForKeyedSubscript:@"DominantMediaPropertyKey"];
  v11 = [v10 stringByAppendingString:@"=%@"];

  v12 = [v9 objectForKeyedSubscript:@"DominantMediaNameKey"];
  v13 = [NSPredicate predicateWithFormat:v11, v12];

  v14 = [v9 objectForKeyedSubscript:@"DominantMediaPropertyKey"];
  LODWORD(v10) = [v14 isEqualToString:@"bundleId"];

  if (v10)
  {
    v15 = [v9 objectForKeyedSubscript:@"DominantMediaBundleIdKey"];
    v16 = v11;
    v17 = [NSPredicate predicateWithFormat:v11, v15];

    v81 = v17;
  }

  else
  {
    v81 = v13;
    v16 = v11;
  }

  v82 = v9;
  v18 = [v9 objectForKeyedSubscript:@"DominantMediaPropertyKey"];
  v19 = [v18 isEqualToString:@"bundleId"];

  if (!v19 || v6)
  {
    v21 = v81;
    v20 = [v83 filteredArrayUsingPredicate:v81];
  }

  else
  {
    v20 = v83;
    v21 = v81;
  }

  v22 = v9;
  if ([v20 count])
  {
    v80 = v20;
    v23 = [v20 sortedArrayUsingComparator:&__block_literal_global_237_0];
    v24 = [v23 reverseObjectEnumerator];
    v25 = [v24 allObjects];

    if ([v25 count])
    {
      v26 = objc_opt_new();
      v85 = objc_opt_new();
      v106 = 0u;
      v107 = 0u;
      v108 = 0u;
      v109 = 0u;
      v79 = v25;
      obj = v25;
      v97 = [obj countByEnumeratingWithState:&v106 objects:v115 count:16];
      if (v97)
      {
        v96 = *v107;
        v27 = 201.0;
        v87 = v26;
        v88 = v16;
        do
        {
          v28 = 0;
          do
          {
            if (*v107 != v96)
            {
              objc_enumerationMutation(obj);
            }

            v29 = *(*(&v106 + 1) + 8 * v28);
            v30 = objc_autoreleasePoolPush();
            v31 = [v29 bundleId];
            v100 = v31;
            if (([v31 isEqualToString:@"com.apple.Music"] & 1) != 0 || objc_msgSend(v31, "isEqualToString:", @"com.apple.MediaPlayer.RemotePlayerService"))
            {
              v32 = [v29 album];
              v33 = MOMediaPlayMetaDataKeyPlayerMediaTypeSong;
            }

            else if ([v31 isEqualToString:@"com.apple.podcasts"])
            {
              v32 = [v29 artist];
              v33 = MOMediaPlayMetaDataKeyPlayerMediaTypePodcastEpisode;
            }

            else
            {
              v32 = [v29 title];
              v33 = MOMediaPlayMetaDataKeyPlayerMediaTypeThirdPartyMedia;
            }

            v34 = *v33;
            if (v32)
            {
              v98 = v30;
              v111[0] = @"MOMediaPlayMetaDataKeyPlayerTitle";
              v35 = [v29 title];
              if (v35)
              {
                v95 = [v29 title];
                v36 = v95;
              }

              else
              {
                v36 = &stru_1003416B0;
              }

              v112[0] = v36;
              v111[1] = @"MOMediaPlayMetaDataKeyPlayerArtist";
              v38 = [v29 artist];
              v101 = v34;
              if (v38)
              {
                v94 = [v29 artist];
                v39 = v94;
              }

              else
              {
                v39 = &stru_1003416B0;
              }

              v112[1] = v39;
              v111[2] = @"MOMediaPlayMetaDataKeyPlayerTrackID";
              v40 = [v29 productId];
              if (v40)
              {
                v93 = [v29 productId];
                v41 = v93;
              }

              else
              {
                v41 = &stru_1003416B0;
              }

              v112[2] = v41;
              v111[3] = @"MOMediaPlayMetaDataKeyPlayerAlbumName";
              v42 = [v29 album];
              if (v42)
              {
                v92 = [v29 album];
                v43 = v92;
              }

              else
              {
                v43 = &stru_1003416B0;
              }

              v112[3] = v43;
              v111[4] = @"MOMediaPlayMetaDataKeyPlayerBundleID";
              v44 = [v29 bundleId];
              if (v44)
              {
                v91 = [v29 bundleId];
                v45 = v91;
              }

              else
              {
                v45 = &stru_1003416B0;
              }

              v112[4] = v45;
              v112[5] = v101;
              v111[5] = @"MOMediaPlayMetaDataKeyPlayerMediaTypeKey";
              v111[6] = @"MOMediaPlayMetaDataKeyPlayerBgColor";
              v46 = [v29 bgColor];
              if (v46)
              {
                v90 = [v29 bgColor];
                v47 = v90;
              }

              else
              {
                v47 = &stru_1003416B0;
              }

              v112[6] = v47;
              v48 = [NSDictionary dictionaryWithObjects:v112 forKeys:v111 count:7];
              v99 = [v48 mutableCopy];

              if (v46)
              {
              }

              if (v44)
              {
              }

              v26 = v87;
              if (v42)
              {
              }

              v16 = v88;
              v37 = v99;
              if (v40)
              {
              }

              if (v38)
              {
              }

              v34 = v101;
              if (v35)
              {
              }

              v49 = [v29 startDate];

              if (v49)
              {
                v50 = [v29 startDate];
                [v50 timeIntervalSinceReferenceDate];
                v51 = [NSNumber numberWithDouble:?];
                [v99 setObject:v51 forKeyedSubscript:@"MOMediaPlayMetaDataKeyPlayerStartDate"];
              }

              v52 = [v87 objectForKey:v32];

              if (v52)
              {
                v53 = [v87 objectForKey:v32];
                v54 = [(MOResource *)v53 getDictionary];
                v55 = [v54 mutableCopy];

                v56 = [(__CFString *)v101 isEqualToString:MOMediaPlayMetaDataKeyPlayerMediaTypeSong[0]];
                v57 = MOMediaPlayMetaDataKeyPlayerMediaTypeSongAlbum;
                if (v56 & 1) != 0 || (v58 = [(__CFString *)v101 isEqualToString:MOMediaPlayMetaDataKeyPlayerMediaTypePodcastEpisode[0]], v57 = MOMediaPlayMetaDataKeyPlayerMediaTypePodcastArtist, (v58) || (v59 = [(__CFString *)v101 isEqualToString:MOMediaPlayMetaDataKeyPlayerMediaTypeThirdPartyMedia[0]], v57 = MOMediaPlayMetaDataKeyPlayerMediaTypeThirdPartyMediaAlbum, v59))
                {
                  [v55 setObject:*v57 forKeyedSubscript:@"MOMediaPlayMetaDataKeyPlayerMediaTypeKey"];
                }

                v60 = [[MOResource alloc] initWithName:v32 type:3 dict:v55 value:0.0];
                v61 = [(MOResource *)v53 sourceEventIdentifier];
                [(MOResource *)v60 setSourceEventIdentifier:v61];

                [(MOResource *)v60 setSourceEventAccessType:[(MOResource *)v53 sourceEventAccessType]];
                [v87 setObject:v60 forKeyedSubscript:v32];
                v62 = [MOResource alloc];
                v63 = [v29 title];
                v37 = v99;
                v64 = [(MOResource *)v62 initWithName:v63 type:3 dict:v99 value:0.0];

                v65 = [(MOResource *)v53 sourceEventIdentifier];
                [(MOResource *)v64 setSourceEventIdentifier:v65];

                [(MOResource *)v64 setSourceEventAccessType:[(MOResource *)v53 sourceEventAccessType]];
                -[MOResource setPriorityScore:](v64, "setPriorityScore:", ([v85 count] + 300));
                [v85 addObject:v64];

                v34 = v101;
              }

              else
              {
                v66 = [MOResource alloc];
                v67 = [v29 title];
                v53 = [(MOResource *)v66 initWithName:v67 type:3 dict:v99 value:0.0];

                v68 = [v29 title];
                v69 = [v84 objectForKeyedSubscript:v68];
                [(MOResource *)v53 setSourceEventIdentifier:v69];

                [(MOResource *)v53 setSourceEventAccessType:2];
                [(MOResource *)v53 setPriorityScore:v27];
                [v87 setObject:v53 forKeyedSubscript:v32];
                v27 = v27 + 1.0;
              }

              v30 = v98;
            }

            else
            {
              v37 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
              {
                [MOContextAnnotationUtilities createMediaResourceWithMediaInfo:v113 playSessions:v29 eventIdentifiersMapping:&v114 isDominant:v37];
              }
            }

            objc_autoreleasePoolPop(v30);
            v28 = v28 + 1;
          }

          while (v97 != v28);
          v70 = [obj countByEnumeratingWithState:&v106 objects:v115 count:16];
          v97 = v70;
        }

        while (v70);
      }

      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v71 = v26;
      v72 = [v71 countByEnumeratingWithState:&v102 objects:v110 count:16];
      v21 = v81;
      if (v72)
      {
        v73 = v72;
        v74 = *v103;
        do
        {
          for (i = 0; i != v73; i = i + 1)
          {
            if (*v103 != v74)
            {
              objc_enumerationMutation(v71);
            }

            v76 = [v71 objectForKey:*(*(&v102 + 1) + 8 * i)];
            if (v76)
            {
              [v89 addObject:v76];
            }
          }

          v73 = [v71 countByEnumeratingWithState:&v102 objects:v110 count:16];
        }

        while (v73);
      }

      v25 = v79;
    }

    v22 = v82;
    v20 = v80;
  }

  v77 = [v89 copy];

  return v77;
}

int64_t __113__MOContextAnnotationUtilities_createMediaResourceWithMediaInfo_playSessions_eventIdentifiersMapping_isDominant___block_invoke(id a1, MOMediaPlaySession *a2, MOMediaPlaySession *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [(MOMediaPlaySession *)v5 endDate];
  v7 = [(MOMediaPlaySession *)v5 startDate];

  [v6 timeIntervalSinceDate:v7];
  v9 = v8;

  v10 = [(MOMediaPlaySession *)v4 endDate];
  v11 = [(MOMediaPlaySession *)v4 startDate];

  [v10 timeIntervalSinceDate:v11];
  v13 = v12;

  if (v9 >= v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = -1;
  }

  if (v9 > v13)
  {
    return 1;
  }

  else
  {
    return v14;
  }
}

+ (id)dominantMediaNameFromEvents:(id)a3
{
  v63 = a3;
  context = objc_autoreleasePoolPush();
  v62 = objc_opt_new();
  v88[0] = &off_100369478;
  v88[1] = &off_100369490;
  v89[0] = @"mediaTitle";
  v89[1] = @"mediaAlbum";
  v88[2] = &off_1003694A8;
  v88[3] = &off_1003694C0;
  v89[2] = @"mediaArtist";
  v89[3] = @"mediaGenre";
  v88[4] = &off_1003694D8;
  v89[4] = @"mediaPlayerBundleId";
  v64 = [NSDictionary dictionaryWithObjects:v89 forKeys:v88 count:5];
  v3 = 1;
  *&v4 = 138412802;
  v60 = v4;
  while (1)
  {
    v65 = v3;
    v66 = [NSNumber numberWithInt:v60];
    v5 = [v64 objectForKey:?];
    v69 = objc_opt_new();
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    obj = v63;
    v6 = [obj countByEnumeratingWithState:&v74 objects:v87 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v75;
      v9 = 0.0;
      v68 = v5;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v75 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v74 + 1) + 8 * i);
          v12 = objc_autoreleasePoolPush();
          v13 = [NSDateInterval alloc];
          v14 = [v11 startDate];
          v15 = [v11 endDate];
          v16 = [v13 initWithStartDate:v14 endDate:v15];

          [v16 duration];
          v18 = v17;
          v19 = [v11 mediaEvent];

          if (v19)
          {
            v20 = [v11 mediaEvent];
            v21 = [v20 valueForKeyPath:v5];

            if (!v21 || ![(__CFString *)v21 length])
            {

              v21 = @"__Unknown__";
            }

            [v16 duration];
            v23 = v22;
            v24 = [v69 objectForKey:v21];
            if (v24)
            {
              v25 = v24;
              [(MOMediaStats *)v24 value];
              [(MOMediaStats *)v25 setValue:v23 + v26];
            }

            else
            {
              v25 = [[MOMediaStats alloc] initWithKeyword:v21 value:v23];
            }

            v27 = [v11 mediaEvent];
            v28 = [v27 mediaPlayerBundleId];
            [(MOMediaStats *)v25 setBundleId:v28];

            v29 = [(MOMediaStats *)v25 members];
            [v29 addObject:v11];

            [v69 setObject:v25 forKey:v21];
            v30 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              v31 = [MOMediaPlaySession redactString:v21];
              [(MOMediaStats *)v25 value];
              *buf = 138413058;
              v80 = v68;
              v81 = 2112;
              v82 = v31;
              v83 = 2048;
              v84 = v23;
              v85 = 2048;
              v86 = v32;
              _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "Third Party media, property.path, %@, property.name, %@, property.value, %f, total.value, %f", buf, 0x2Au);
            }

            v5 = v68;
          }

          v9 = v9 + v18;

          objc_autoreleasePoolPop(v12);
        }

        v7 = [obj countByEnumeratingWithState:&v74 objects:v87 count:16];
      }

      while (v7);
    }

    else
    {
      v9 = 0.0;
    }

    v33 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    v34 = v69;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v80 = v5;
      v81 = 2112;
      v82 = v69;
      _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "Third Party media, property.path, %@, stats %@", buf, 0x16u);
    }

    if (![v69 count])
    {
      goto LABEL_60;
    }

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v35 = [v69 allValues];
    v36 = [v35 countByEnumeratingWithState:&v70 objects:v78 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = 0;
      v39 = 0;
      v40 = *v71;
      v41 = -1.0;
      do
      {
        for (j = 0; j != v37; j = j + 1)
        {
          if (*v71 != v40)
          {
            objc_enumerationMutation(v35);
          }

          v43 = *(*(&v70 + 1) + 8 * j);
          v44 = [v43 keyword];
          v45 = [v44 isEqualToString:@"__Unknown__"];

          if ((v45 & 1) == 0)
          {
            [v43 value];
            if (v46 > v41)
            {
              [v43 value];
              v41 = v47;
              v48 = [v43 keyword];

              v49 = [v43 bundleId];

              v38 = v49;
              v39 = v48;
            }
          }
        }

        v37 = [v35 countByEnumeratingWithState:&v70 objects:v78 count:16];
      }

      while (v37);
    }

    else
    {
      v38 = 0;
      v39 = 0;
      v41 = -1.0;
    }

    v50 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      v55 = [MOMediaPlaySession redactString:v39];
      *buf = 138413058;
      v80 = v5;
      v81 = 2112;
      v82 = v55;
      v83 = 2048;
      v84 = v41;
      v85 = 2048;
      v86 = v9;
      _os_log_debug_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEBUG, "Third Party media, property.path, %@, topKeyword, %@, topDuration %f, totalDuration, %f", buf, 0x2Au);
    }

    v34 = v69;
    if (v41 >= v9)
    {
      if ([v5 isEqual:@"mediaPlayerBundleId"])
      {
        v52 = [MOContextAnnotationUtilities bundleNameFromBundleId:v39];
        v51 = v52;
        if (v52)
        {
          v53 = v52;
        }
      }

      else
      {
        v51 = v39;
      }

      v54 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (!os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
      {
LABEL_55:

        if (v66 && v51 && v38 && v5)
        {
          [v62 setObject:v51 forKeyedSubscript:@"DominantMediaNameKey"];
          [v62 setObject:v38 forKeyedSubscript:@"DominantMediaBundleIdKey"];
          [v62 setObject:v5 forKeyedSubscript:@"DominantMediaPropertyKey"];
          v58 = v66;
          [v62 setObject:v66 forKeyedSubscript:@"DominantMediaInfoKey"];
          v57 = v62;
          goto LABEL_65;
        }

        goto LABEL_59;
      }

LABEL_62:
      v56 = [MOMediaPlaySession redactString:v51];
      *buf = v60;
      v80 = v56;
      v81 = 2112;
      v82 = v5;
      v83 = 2048;
      v84 = v41;
      _os_log_debug_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEBUG, "Third Party media, mediaName, %@, property.path, %@, duration, %f", buf, 0x20u);

      goto LABEL_55;
    }

    if (v65 == 5)
    {
      break;
    }

    v51 = v39;
LABEL_59:

LABEL_60:
    v3 = v65 + 1;
    if (v65 == 5)
    {
      v57 = 0;
      goto LABEL_66;
    }
  }

  if ([v5 isEqual:@"mediaPlayerBundleId"])
  {

    v51 = @"Media";
  }

  else
  {
    v51 = v39;
  }

  if (v41 <= 0.0 || v9 <= 0.0 || v41 / v9 >= 1.0)
  {
    v54 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (!os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_55;
    }

    goto LABEL_62;
  }

  v57 = 0;
  v58 = v66;
LABEL_65:

LABEL_66:
  objc_autoreleasePoolPop(context);

  return v57;
}

+ (id)dominantMediaNameFromPlaySessions:(id)a3 intervalOfInterest:(id)a4 dominantFactorThreshold:(double)a5 confidence:(double *)a6
{
  v86 = a3;
  v10 = a4;
  v11 = v10;
  if (a5 < 0.0)
  {
    v12 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[MOContextAnnotationUtilities dominantMediaNameFromPlaySessions:intervalOfInterest:dominantFactorThreshold:confidence:];
    }

    v13 = +[NSAssertionHandler currentHandler];
    v14 = @"Invalid parameter not satisfying: dominantFactorThreshold >= 0";
    v15 = a2;
    v16 = a1;
    v17 = v13;
    v18 = 1024;
LABEL_82:
    [v13 handleFailureInMethod:v15 object:v16 file:@"MOContextAnnotationUtilities.m" lineNumber:v18 description:v14];
    v80 = 0;
    goto LABEL_85;
  }

  [v10 duration];
  if (v19 <= 0.0)
  {
    v79 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
    {
      +[MOContextAnnotationUtilities dominantMediaNameFromPlaySessions:intervalOfInterest:dominantFactorThreshold:confidence:];
    }

    v13 = +[NSAssertionHandler currentHandler];
    v14 = @"Invalid parameter not satisfying: intervalOfInterest.duration > 0";
    v15 = a2;
    v16 = a1;
    v17 = v13;
    v18 = 1025;
    goto LABEL_82;
  }

  v83 = objc_opt_new();
  v112[0] = &off_100369478;
  v112[1] = &off_100369490;
  v113[0] = @"title";
  v113[1] = @"album";
  v112[2] = &off_1003694A8;
  v112[3] = &off_1003694C0;
  v113[2] = @"artist";
  v113[3] = @"genre";
  v112[4] = &off_1003694D8;
  v113[4] = @"bundleId";
  v85 = [NSDictionary dictionaryWithObjects:v113 forKeys:v112 count:5];
  v20 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [MOContextAnnotationUtilities dominantMediaNameFromPlaySessions:v86 intervalOfInterest:? dominantFactorThreshold:? confidence:?];
  }

  v21 = 1;
  *&v22 = 138413314;
  v82 = v22;
  v90 = v11;
  while (2)
  {
    v87 = v21;
    v88 = [NSNumber numberWithInt:v82];
    v89 = [v85 objectForKey:?];
    v91 = objc_opt_new();
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v23 = v86;
    v24 = [v23 countByEnumeratingWithState:&v96 objects:v111 count:16];
    if (!v24)
    {
      v27 = 0.0;
      goto LABEL_34;
    }

    v25 = v24;
    v26 = *v97;
    v27 = 0.0;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v97 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v29 = *(*(&v96 + 1) + 8 * i);
        v30 = [NSDateInterval alloc];
        v31 = [v29 startDate];
        v32 = [v29 endDate];
        v33 = [v30 initWithStartDate:v31 endDate:v32];

        v34 = v33;
        v35 = v34;
        if (!v11 || ([v11 intersectionWithDateInterval:v34], v35 = objc_claimAutoreleasedReturnValue(), v34, objc_msgSend(v35, "duration"), v36 != 0.0))
        {
          [v35 duration];
          v38 = v37;
          v39 = [v29 valueForKeyPath:v89];
          v40 = [v29 bundleId];
          if ([v40 isEqualToString:@"com.apple.podcasts"])
          {
            v41 = [v88 unsignedLongValue];

            v42 = v41 == 2;
            v11 = v90;
            if (!v42)
            {
              if (!v39)
              {
LABEL_22:

                v39 = @"__Unknown__";
                goto LABEL_23;
              }

LABEL_21:
              if (![(__CFString *)v39 length])
              {
                goto LABEL_22;
              }

LABEL_23:
              [v35 duration];
              v44 = v43;
              v45 = [v91 objectForKey:v39];
              if (v45)
              {
                v46 = v45;
                [(MOMediaStats *)v45 value];
                [(MOMediaStats *)v46 setValue:v44 + v47];
              }

              else
              {
                v46 = [[MOMediaStats alloc] initWithKeyword:v39 value:v44];
              }

              v48 = [v29 bundleId];
              [(MOMediaStats *)v46 setBundleId:v48];

              v49 = [(MOMediaStats *)v46 members];
              [v49 addObject:v29];

              [v91 setObject:v46 forKey:v39];
              v50 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
              if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
              {
                v51 = [MOMediaPlaySession redactString:v39];
                [(MOMediaStats *)v46 value];
                *buf = 138413058;
                v101 = v89;
                v102 = 2112;
                v103 = v51;
                v104 = 2048;
                v105 = v44;
                v106 = 2048;
                v107 = v52;
                _os_log_debug_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEBUG, "MediaName, property.path, %@, property.name, %@, property.value, %f, total.value, %f", buf, 0x2Au);
              }

              v11 = v90;
            }

            v27 = v27 + v38;

            goto LABEL_30;
          }

          if (!v39)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

LABEL_30:
      }

      v25 = [v23 countByEnumeratingWithState:&v96 objects:v111 count:16];
    }

    while (v25);
LABEL_34:

    v53 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    v54 = v91;
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v101 = v89;
      v102 = 2112;
      v103 = v91;
      _os_log_debug_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "MediaName, property.path, %@, stats %@", buf, 0x16u);
    }

    if (![v91 count])
    {
LABEL_76:

      v21 = v87 + 1;
      if (v87 == 5)
      {
        v80 = 0;
        v17 = v83;
        goto LABEL_84;
      }

      continue;
    }

    break;
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v55 = [v91 allValues];
  v56 = [v55 countByEnumeratingWithState:&v92 objects:v110 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = 0;
    v59 = 0;
    v60 = *v93;
    v61 = -1.0;
    do
    {
      for (j = 0; j != v57; j = j + 1)
      {
        if (*v93 != v60)
        {
          objc_enumerationMutation(v55);
        }

        v63 = *(*(&v92 + 1) + 8 * j);
        v64 = [v63 keyword];
        v65 = [v64 isEqualToString:@"__Unknown__"];

        if ((v65 & 1) == 0)
        {
          [v63 value];
          if (v66 > v61)
          {
            [v63 value];
            v61 = v67;
            v68 = [v63 keyword];

            v69 = [v63 bundleId];

            v58 = v69;
            v59 = v68;
          }
        }
      }

      v57 = [v55 countByEnumeratingWithState:&v92 objects:v110 count:16];
    }

    while (v57);
  }

  else
  {
    v58 = 0;
    v59 = 0;
    v61 = -1.0;
  }

  v70 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
  {
    v75 = [MOMediaPlaySession redactString:v59];
    *buf = 138413058;
    v101 = v89;
    v102 = 2112;
    v103 = v75;
    v104 = 2048;
    v105 = v61;
    v106 = 2048;
    v107 = v27;
    _os_log_debug_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEBUG, "MediaName, property.path, %@, topKeyword, %@, topDuration %f, totalDuration, %f", buf, 0x2Au);
  }

  if (v61 > v27 * a5)
  {
    if ([v89 isEqual:@"bundleId"])
    {
      v71 = [MOContextAnnotationUtilities bundleNameFromBundleId:v59];
      v72 = v71;
      if (v71)
      {
        v73 = v71;
      }
    }

    else
    {
      v72 = v59;
    }

    v54 = v91;
    if (v61 > 0.0 && v27 > 0.0)
    {
      *a6 = v61 / v27;
    }

    v74 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_78;
    }

    goto LABEL_71;
  }

  if (v87 != 5)
  {
    v72 = v59;
    v54 = v91;
    goto LABEL_75;
  }

  if ([v89 isEqual:@"bundleId"])
  {

    v72 = @"Media";
  }

  else
  {
    v72 = v59;
  }

  v54 = v91;
  if (v61 > 0.0 && v27 > 0.0)
  {
    *a6 = v61 / v27;
  }

  v74 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
  {
LABEL_78:
    v76 = [MOMediaPlaySession redactString:v72];
    [v11 duration];
    v77 = *a6;
    *buf = v82;
    v101 = v76;
    v102 = 2112;
    v103 = v89;
    v104 = 2048;
    v105 = v61;
    v106 = 2048;
    v107 = v78;
    v108 = 2048;
    v109 = v77;
    _os_log_debug_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEBUG, "MediaName, mediaName, %@, property.path, %@, duration, %f, intervalOfInterest, %f, confidence, %f", buf, 0x34u);
  }

LABEL_71:

  if (!v88 || !v72 || !v58 || !v89)
  {
LABEL_75:

    goto LABEL_76;
  }

  v17 = v83;
  [v83 setObject:v72 forKeyedSubscript:@"DominantMediaNameKey"];
  [v83 setObject:v58 forKeyedSubscript:@"DominantMediaBundleIdKey"];
  [v83 setObject:v89 forKeyedSubscript:@"DominantMediaPropertyKey"];
  [v83 setObject:v88 forKeyedSubscript:@"DominantMediaInfoKey"];
  v80 = v83;

LABEL_84:
LABEL_85:

  return v80;
}

+ (id)dominantMediaNameFromPlaySessions:(id)a3 intervalsOfInterest:(id)a4 dominantFactorThreshold:(double)a5 confidence:(double *)a6
{
  v87 = a3;
  v10 = a4;
  v11 = v10;
  if (a5 < 0.0)
  {
    v12 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[MOContextAnnotationUtilities dominantMediaNameFromPlaySessions:intervalOfInterest:dominantFactorThreshold:confidence:];
    }

    v13 = +[NSAssertionHandler currentHandler];
    v14 = v13;
    v15 = @"Invalid parameter not satisfying: dominantFactorThreshold >= 0";
    v16 = a2;
    v17 = a1;
    v18 = 1146;
LABEL_87:
    [v13 handleFailureInMethod:v16 object:v17 file:@"MOContextAnnotationUtilities.m" lineNumber:v18 description:v15];
    v81 = 0;
    goto LABEL_90;
  }

  if (![v10 count])
  {
    v82 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
    {
      +[MOContextAnnotationUtilities dominantMediaNameFromPlaySessions:intervalsOfInterest:dominantFactorThreshold:confidence:];
    }

    v13 = +[NSAssertionHandler currentHandler];
    v14 = v13;
    v15 = @"Invalid parameter not satisfying: intervalsOfInterest.count > 0";
    v16 = a2;
    v17 = a1;
    v18 = 1147;
    goto LABEL_87;
  }

  v19 = objc_opt_new();
  v124[0] = &off_100369478;
  v124[1] = &off_100369490;
  v125[0] = @"title";
  v125[1] = @"album";
  v124[2] = &off_1003694A8;
  v124[3] = &off_1003694C0;
  v125[2] = @"artist";
  v125[3] = @"genre";
  v124[4] = &off_1003694D8;
  v125[4] = @"bundleId";
  v86 = [NSDictionary dictionaryWithObjects:v125 forKeys:v124 count:5];
  v20 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [MOContextAnnotationUtilities dominantMediaNameFromPlaySessions:v87 intervalsOfInterest:? dominantFactorThreshold:? confidence:?];
  }

  v21 = 1;
  *&v22 = 138413314;
  v84 = v22;
  v23 = &GEOPOICategoryGasStation_ptr;
  v92 = v11;
  v88 = v19;
  while (1)
  {
    v89 = v21;
    v90 = [NSNumber numberWithInt:v84];
    v97 = [v86 objectForKey:?];
    v98 = objc_opt_new();
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    obj = v87;
    v94 = [obj countByEnumeratingWithState:&v107 objects:v123 count:16];
    if (v94)
    {
      v24 = *v108;
      v25 = 0.0;
      v91 = *v108;
      do
      {
        for (i = 0; i != v94; i = i + 1)
        {
          if (*v108 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v107 + 1) + 8 * i);
          v28 = objc_alloc(v23[178]);
          v29 = [v27 startDate];
          v30 = [v27 endDate];
          v31 = [v28 initWithStartDate:v29 endDate:v30];

          if ([v11 count])
          {
            v95 = i;
            v105 = 0u;
            v106 = 0u;
            v103 = 0u;
            v104 = 0u;
            v96 = v11;
            v32 = [v96 countByEnumeratingWithState:&v103 objects:v122 count:16];
            if (v32)
            {
              v33 = v32;
              v34 = 0;
              v35 = *v104;
              do
              {
                v36 = 0;
                v37 = v34;
                do
                {
                  if (*v104 != v35)
                  {
                    objc_enumerationMutation(v96);
                  }

                  v34 = [*(*(&v103 + 1) + 8 * v36) intersectionWithDateInterval:v31];

                  [v34 duration];
                  if (v38 != 0.0)
                  {
                    [v34 duration];
                    v40 = v39;
                    v41 = [v27 valueForKeyPath:v97];
                    v42 = v41;
                    if (!v41 || ![(__CFString *)v41 length])
                    {

                      v42 = @"__Unknown__";
                    }

                    [v34 duration];
                    v44 = v43;
                    v45 = [v98 objectForKey:v42];
                    if (v45)
                    {
                      v46 = v45;
                      [(MOMediaStats *)v45 value];
                      [(MOMediaStats *)v46 setValue:v44 + v47];
                    }

                    else
                    {
                      v46 = [[MOMediaStats alloc] initWithKeyword:v42 value:v44];
                    }

                    v48 = [v27 bundleId];
                    [(MOMediaStats *)v46 setBundleId:v48];

                    v49 = [(MOMediaStats *)v46 members];
                    [v49 addObject:v27];

                    [v98 setObject:v46 forKey:v42];
                    v50 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
                    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
                    {
                      v51 = [MOMediaPlaySession redactString:v42];
                      [(MOMediaStats *)v46 value];
                      *buf = 138413058;
                      v112 = v97;
                      v113 = 2112;
                      v114 = v51;
                      v115 = 2048;
                      v116 = v44;
                      v117 = 2048;
                      v118 = v52;
                      _os_log_debug_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEBUG, "MediaName, property.path, %@, property.name, %@, property.value, %f, total.value, %f", buf, 0x2Au);
                    }

                    v25 = v25 + v40;
                  }

                  v36 = v36 + 1;
                  v37 = v34;
                }

                while (v33 != v36);
                v33 = [v96 countByEnumeratingWithState:&v103 objects:v122 count:16];
              }

              while (v33);

              v24 = v91;
              v11 = v92;
              v23 = &GEOPOICategoryGasStation_ptr;
            }

            i = v95;
          }
        }

        v94 = [obj countByEnumeratingWithState:&v107 objects:v123 count:16];
      }

      while (v94);
    }

    else
    {
      v25 = 0.0;
    }

    v53 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    v54 = v98;
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v112 = v97;
      v113 = 2112;
      v114 = v98;
      _os_log_debug_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "MediaName, property.path, %@, stats %@", buf, 0x16u);
    }

    v14 = v88;
    if (![v98 count])
    {
      goto LABEL_80;
    }

    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v55 = [v98 allValues];
    v56 = [v55 countByEnumeratingWithState:&v99 objects:v121 count:16];
    if (v56)
    {
      v57 = v56;
      v58 = 0;
      v59 = 0;
      v60 = *v100;
      v61 = -1.0;
      do
      {
        for (j = 0; j != v57; j = j + 1)
        {
          if (*v100 != v60)
          {
            objc_enumerationMutation(v55);
          }

          v63 = *(*(&v99 + 1) + 8 * j);
          v64 = [v63 keyword];
          v65 = [v64 isEqualToString:@"__Unknown__"];

          if ((v65 & 1) == 0)
          {
            [v63 value];
            if (v66 > v61)
            {
              [v63 value];
              v61 = v67;
              v68 = [v63 keyword];

              v69 = [v63 bundleId];

              v58 = v69;
              v59 = v68;
            }
          }
        }

        v57 = [v55 countByEnumeratingWithState:&v99 objects:v121 count:16];
      }

      while (v57);
    }

    else
    {
      v58 = 0;
      v59 = 0;
      v61 = -1.0;
    }

    v70 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
    {
      v77 = [MOMediaPlaySession redactString:v59];
      *buf = 138413058;
      v112 = v97;
      v113 = 2112;
      v114 = v77;
      v115 = 2048;
      v116 = v61;
      v117 = 2048;
      v118 = v25;
      _os_log_debug_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEBUG, "MediaName, property.path, %@, topKeyword, %@, topDuration %f, totalDuration, %f", buf, 0x2Au);
    }

    v11 = v92;
    if (v61 > v25 * a5)
    {
      v23 = &GEOPOICategoryGasStation_ptr;
      if ([v97 isEqual:@"bundleId"])
      {
        v71 = [MOContextAnnotationUtilities bundleNameFromBundleId:v59];
        v72 = v71;
        if (v71)
        {
          v73 = v71;
        }
      }

      else
      {
        v72 = v59;
      }

      v14 = v88;
      if (v61 > 0.0 && v25 > 0.0)
      {
        *a6 = v61 / v25;
      }

      v74 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (!os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_75;
      }

      v75 = [MOMediaPlaySession redactString:v72];
      v76 = *a6;
      *buf = v84;
      v112 = v75;
      v113 = 2112;
      v114 = v97;
      v115 = 2048;
      v116 = v61;
      v117 = 2048;
      v118 = v25;
      v119 = 2048;
      v120 = v76;
      _os_log_debug_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEBUG, "MediaName, mediaName, %@, property.path, %@, duration, %f, total play duration, %f, confidence, %f", buf, 0x34u);
LABEL_83:

      goto LABEL_75;
    }

    v23 = &GEOPOICategoryGasStation_ptr;
    if (v89 == 5)
    {
      break;
    }

    v72 = v59;
    v14 = v88;
LABEL_79:

    v54 = v98;
LABEL_80:

    v21 = v89 + 1;
    if (v89 == 5)
    {
      v81 = 0;
      goto LABEL_89;
    }
  }

  if ([v97 isEqual:@"bundleId"])
  {

    v72 = @"Media";
  }

  else
  {
    v72 = v59;
  }

  v14 = v88;
  if (v61 > 0.0 && v25 > 0.0)
  {
    *a6 = v61 / v25;
  }

  v74 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
  {
    v75 = [MOMediaPlaySession redactString:v72];
    v78 = [v92 firstObject];
    [v78 duration];
    v79 = *a6;
    *buf = v84;
    v112 = v75;
    v113 = 2112;
    v114 = v97;
    v115 = 2048;
    v116 = v61;
    v117 = 2048;
    v118 = v80;
    v119 = 2048;
    v120 = v79;
    _os_log_debug_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEBUG, "MediaName, mediaName, %@, property.path, %@, duration, %f, intervalOfInterest, %f, confidence, %f", buf, 0x34u);

    v14 = v88;
    goto LABEL_83;
  }

LABEL_75:

  if (!v90 || !v72 || !v58 || !v97)
  {
    goto LABEL_79;
  }

  [v14 setObject:v72 forKeyedSubscript:@"DominantMediaNameKey"];
  [v14 setObject:v58 forKeyedSubscript:@"DominantMediaBundleIdKey"];
  [v14 setObject:v97 forKeyedSubscript:@"DominantMediaPropertyKey"];
  [v14 setObject:v90 forKeyedSubscript:@"DominantMediaInfoKey"];
  v81 = v14;

LABEL_89:
LABEL_90:

  return v81;
}

+ (double)labelConfidenceForEventBundle:(id)a3
{
  v3 = a3;
  v4 = [v3 action];
  v5 = 1.0;
  if (v4)
  {
    v6 = v4;
    v7 = [v3 action];
    [v7 actionNameConfidence];
    v9 = v8;

    if (v9 > 0.0)
    {
      v10 = [v3 action];
      [v10 actionNameConfidence];
      v5 = v11;
    }
  }

  v12 = [NSMutableString stringWithString:@"["];
  v13 = [v3 concurrentMediaAction];
  if (v13)
  {
    v14 = v13;
    v15 = [v3 concurrentMediaAction];
    [v15 actionNameConfidence];
    v17 = v16;

    if (v17 > 0.0)
    {
      v18 = [v3 concurrentMediaAction];
      [v18 actionNameConfidence];
      v5 = v5 * v19;

      v20 = [v3 concurrentMediaAction];
      [v20 actionNameConfidence];
      [v12 appendFormat:@"(%f)", v21];
    }
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v22 = [v3 actions];
  v23 = [v22 countByEnumeratingWithState:&v48 objects:v64 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v49;
    do
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v49 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v48 + 1) + 8 * i);
        [v27 actionNameConfidence];
        if (v28 > 0.0)
        {
          [v27 actionNameConfidence];
          v5 = v5 * v29;
          [v27 actionNameConfidence];
          [v12 appendFormat:@"(%f)", v30];
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v48 objects:v64 count:16];
    }

    while (v24);
  }

  [v12 appendString:@"]"];
  v31 = [v3 place];
  if (v31)
  {
    v32 = v31;
    v33 = [v3 place];
    [v33 placeNameConfidence];
    v35 = v34;

    if (v35 > 0.0)
    {
      v36 = [v3 place];
      [v36 placeNameConfidence];
      v5 = v5 * v37;
    }
  }

  v38 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    v40 = [v3 action];
    [v40 actionNameConfidence];
    v42 = v41;
    v43 = [v3 concurrentMediaAction];
    [v43 actionNameConfidence];
    v45 = v44;
    v46 = [v3 place];
    [v46 placeNameConfidence];
    *buf = 134219266;
    v53 = v5;
    v54 = 2048;
    v55 = v42;
    v56 = 2048;
    v57 = v45;
    v58 = 2112;
    v59 = v12;
    v60 = 2048;
    v61 = v47;
    v62 = 2112;
    v63 = v3;
    _os_log_debug_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "label confidence, label confidence score, %f, actionNameConfidence, %f, concurrentMediaActionNameConfidence, %f, backgroundActionNameConfidence, %@, placeNameConfidence, %f, bundle, %@", buf, 0x3Eu);
  }

  return v5;
}

+ (id)bundleNameFromBundleId:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v3 allowPlaceholder:0 error:0];
    v5 = [v4 localizedName];
    v6 = [MOContextAnnotationUtilities extendedBundleNameFromBundleName:v5 bundleId:v3];

    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        +[MOContextAnnotationUtilities bundleNameFromBundleId:];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)extendedBundleNameFromBundleName:(id)a3 bundleId:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[NSSet alloc] initWithArray:&off_10036DAD0];
  v8 = 0;
  if (v5 && v6)
  {
    if ([v6 hasPrefix:@"com.apple."] && objc_msgSend(v7, "containsObject:", v5))
    {
      v9 = [NSString stringWithFormat:@"Apple %@", v5];
    }

    else
    {
      v9 = v5;
    }

    v8 = v9;
  }

  return v8;
}

+ (id)andStringFromArray:(id)a3 propertyPath:(id)a4 maxCount:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 count];
  if (!v9)
  {
    v11 = 0;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = 0;
  v12 = 0;
  while (1)
  {
    v13 = [v7 objectAtIndex:v12];
    v14 = [v13 valueForKeyPath:v8];
    v15 = v14;
    if (!v11)
    {
      v11 = [NSMutableString stringWithString:v14];
      goto LABEL_9;
    }

    if (v10 != 1)
    {
      break;
    }

    [v11 appendFormat:@" and %@", v14];
LABEL_9:

    ++v12;
    if (!--v10)
    {
      goto LABEL_13;
    }
  }

  if (v12 < a5 - 1)
  {
    [v11 appendFormat:@", %@", v14];
    goto LABEL_9;
  }

  [v11 appendFormat:@", %@ and more", v14];

LABEL_13:
  v16 = [v11 copy];

  return v16;
}

+ (id)predicateWithStartDate:(id)a3 endDate:(id)a4 distanceThreshold:(double)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[NSDateInterval alloc] initWithStartDate:v8 endDate:v7];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __81__MOContextAnnotationUtilities_predicateWithStartDate_endDate_distanceThreshold___block_invoke;
  v13[3] = &unk_100337D10;
  v14 = v9;
  v15 = a5;
  v10 = v9;
  v11 = [NSPredicate predicateWithBlock:v13];

  return v11;
}

BOOL __81__MOContextAnnotationUtilities_predicateWithStartDate_endDate_distanceThreshold___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSDateInterval alloc];
  v5 = [v3 startDate];
  v6 = [v3 endDate];

  v7 = [v4 initWithStartDate:v5 endDate:v6];
  v8 = [*(a1 + 32) intersectionWithDateInterval:v7];
  [v8 duration];
  v10 = v9;
  [*(a1 + 32) duration];
  v12 = v11;
  [*(a1 + 32) duration];
  v14 = v13;
  [v7 duration];
  if (v14 > v15)
  {
    [v7 duration];
    v12 = v16;
  }

  v17 = v12 <= 0.0 || v10 / v12 >= *(a1 + 40);

  return v17;
}

+ (id)predicateOfEventsWithPlaySessionsWithStartDate:(id)a3 endData:(id)a4 distanceThreshold:(double)a5
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __105__MOContextAnnotationUtilities_predicateOfEventsWithPlaySessionsWithStartDate_endData_distanceThreshold___block_invoke;
  v11[3] = &unk_100337D38;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v7 = v13;
  v8 = v12;
  v9 = [NSPredicate predicateWithBlock:v11];

  return v9;
}

uint64_t __105__MOContextAnnotationUtilities_predicateOfEventsWithPlaySessionsWithStartDate_endData_distanceThreshold___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 category] != 6)
  {
    goto LABEL_4;
  }

  v4 = [MOContextAnnotationUtilities predicateOfMediaPlaySessionsWithStartDate:*(a1 + 32) endDate:*(a1 + 40) distanceThreshold:*(a1 + 48)];
  v5 = [v3 mediaPlaySessions];
  v6 = [v5 filteredArrayUsingPredicate:v4];

  v7 = [v6 count];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
LABEL_4:
    v8 = 0;
  }

  return v8;
}

+ (id)predicateOfSocialContextEventWithStartDate:(id)a3 endData:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [NSPredicate predicateWithFormat:@"%K IN %@", @"category", &off_10036DAE8];
  v8 = [MOContextAnnotationUtilities predicateWithStartDate:v6 endDate:v5];

  v12[0] = v7;
  v12[1] = v8;
  v9 = [NSArray arrayWithObjects:v12 count:2];
  v10 = [NSCompoundPredicate andPredicateWithSubpredicates:v9];

  return v10;
}

+ (id)predicateOfEmotionLogsWithStartDate:(id)a3 endDate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 24];
  v8 = [NSPredicate predicateWithFormat:@"stateOfMindEvent.reflectiveInterval = %d", 1];
  v9 = [MOContextAnnotationUtilities predicateWithStartDate:v6 endDate:v5];

  v13[0] = v7;
  v13[1] = v8;
  v13[2] = v9;
  v10 = [NSArray arrayWithObjects:v13 count:3];
  v11 = [NSCompoundPredicate andPredicateWithSubpredicates:v10];

  return v11;
}

+ (id)predicateOfInviteEventsWithStartDate:(id)a3 endDate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 25];
  v8 = [MOContextAnnotationUtilities predicateWithStartDate:v6 endDate:v5];

  v12[0] = v7;
  v12[1] = v8;
  v9 = [NSArray arrayWithObjects:v12 count:2];
  v10 = [NSCompoundPredicate andPredicateWithSubpredicates:v9];

  return v10;
}

+ (id)predicateOfMediaPlaySessionsWithStartDate:(id)a3 endDate:(id)a4 distanceThreshold:(double)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[NSDateInterval alloc] initWithStartDate:v8 endDate:v7];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __100__MOContextAnnotationUtilities_predicateOfMediaPlaySessionsWithStartDate_endDate_distanceThreshold___block_invoke;
  v13[3] = &unk_100337D60;
  v14 = v9;
  v15 = a5;
  v10 = v9;
  v11 = [NSPredicate predicateWithBlock:v13];

  return v11;
}

uint64_t __100__MOContextAnnotationUtilities_predicateOfMediaPlaySessionsWithStartDate_endDate_distanceThreshold___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSDateInterval alloc];
  v5 = [v3 startDate];
  v6 = [v3 endDate];
  v7 = [v4 initWithStartDate:v5 endDate:v6];

  v8 = [*(a1 + 32) intersectionWithDateInterval:v7];
  [v8 duration];
  v10 = v9;
  [*(a1 + 32) duration];
  v12 = v11;
  [*(a1 + 32) duration];
  v14 = v13;
  [v7 duration];
  if (v14 > v15)
  {
    [v7 duration];
    v12 = v16;
  }

  if (v12 <= 0.0)
  {
    goto LABEL_7;
  }

  v17 = v10 / v12;
  v18 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v21 = *(a1 + 32);
    v22 = 134218754;
    v23 = v17;
    v24 = 2112;
    v25 = v21;
    v26 = 2112;
    v27 = v7;
    v28 = 2112;
    v29 = v3;
    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Jcard index, %f, baseEventInterval, %@, contextEventInterval, %@, contextEvent, %@", &v22, 0x2Au);
  }

  if (v17 > *(a1 + 40))
  {
    v19 = 1;
  }

  else
  {
LABEL_7:
    v19 = 0;
  }

  return v19;
}

+ (void)addPhotoResources:(id)a3 universe:(id)a4 handler:(id)a5
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __67__MOContextAnnotationUtilities_addPhotoResources_universe_handler___block_invoke;
  v8[3] = &unk_100337D88;
  v9 = a5;
  v7 = v9;
  [MOContextAnnotationUtilities addPhotoResourcesWithDateArray:a3 universe:a4 handler:v8];
}

+ (void)addPhotoResourcesWithDateArray:(id)a3 universe:(id)a4 handler:(id)a5
{
  v94 = a3;
  v88 = a4;
  v85 = a5;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "addPhotoResources", buf, 2u);
  }

  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v89 = [v88 getService:v9];

  *buf = 0;
  v157 = buf;
  v158 = 0x3032000000;
  v159 = __Block_byref_object_copy__11;
  v160 = __Block_byref_object_dispose__11;
  v161 = objc_opt_new();
  v152 = 0;
  v153 = &v152;
  v154 = 0x2020000000;
  v155 = 0;
  v146 = 0;
  v147 = &v146;
  v148 = 0x3032000000;
  v149 = __Block_byref_object_copy__11;
  v150 = __Block_byref_object_dispose__11;
  v151 = objc_opt_new();
  v142 = 0u;
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v10 = [v94 resources];
  v11 = [v10 countByEnumeratingWithState:&v142 objects:v167 count:16];
  if (v11)
  {
    v12 = *v143;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v143 != v12)
        {
          objc_enumerationMutation(v10);
        }

        [*(v157 + 5) addObject:*(*(&v142 + 1) + 8 * i)];
      }

      v11 = [v10 countByEnumeratingWithState:&v142 objects:v167 count:16];
    }

    while (v11);
  }

  v136 = 0;
  v137 = &v136;
  v138 = 0x3032000000;
  v139 = __Block_byref_object_copy__11;
  v140 = __Block_byref_object_dispose__11;
  v141 = [v94 startDate];
  v130 = 0;
  v131 = &v130;
  v132 = 0x3032000000;
  v133 = __Block_byref_object_copy__11;
  v134 = __Block_byref_object_dispose__11;
  v135 = [v94 endDate];
  v124 = 0;
  v125 = &v124;
  v126 = 0x3032000000;
  v127 = __Block_byref_object_copy__11;
  v128 = __Block_byref_object_dispose__11;
  v129 = objc_opt_new();
  v84 = dispatch_group_create();
  dispatch_group_enter(v84);
  v14 = objc_opt_new();
  v93 = +[NSMutableArray array];
  v87 = [[NSArray alloc] initWithObjects:{&off_100369478, 0}];
  v15 = [NSPredicate predicateWithFormat:@"category IN %@ ", v87];
  [v93 addObject:v15];

  v16 = [NSPredicate predicateWithFormat:@"provider != %lu", 5];
  [v93 addObject:v16];

  v17 = [v94 events];
  v18 = [NSCompoundPredicate andPredicateWithSubpredicates:v93];
  v91 = [v17 filteredArrayUsingPredicate:v18];

  if ([v91 count])
  {
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v19 = v91;
    v20 = [v19 countByEnumeratingWithState:&v120 objects:v166 count:16];
    if (v20)
    {
      v21 = *v121;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v121 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v120 + 1) + 8 * j);
          v24 = [v23 routineEvent];
          v25 = [v24 location];
          v26 = v25 == 0;

          if (!v26)
          {
            v27 = [v23 routineEvent];
            v28 = [v27 location];
            [v14 addObject:v28];
          }
        }

        v20 = [v19 countByEnumeratingWithState:&v120 objects:v166 count:16];
      }

      while (v20);
    }
  }

  v92 = +[NSMutableArray array];
  v86 = [[NSArray alloc] initWithObjects:{&off_100369490, &off_100369520, 0}];
  v29 = [NSPredicate predicateWithFormat:@"category IN %@ ", v86];
  [v92 addObject:v29];

  v30 = [NSPredicate predicateWithFormat:@"provider != %lu", 5];
  [v92 addObject:v30];

  v31 = [v94 events];
  v32 = [NSCompoundPredicate andPredicateWithSubpredicates:v92];
  v90 = [v31 filteredArrayUsingPredicate:v32];

  if ([v90 count])
  {
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    obj = v90;
    v33 = [obj countByEnumeratingWithState:&v116 objects:v165 count:16];
    if (!v33)
    {
      goto LABEL_41;
    }

    v100 = *v117;
    while (1)
    {
      v101 = v33;
      for (k = 0; k != v101; k = k + 1)
      {
        if (*v117 != v100)
        {
          objc_enumerationMutation(obj);
        }

        v35 = *(*(&v116 + 1) + 8 * k);
        v36 = [v35 workoutEvent];
        v37 = [v36 workoutLocationRoute];
        v38 = [v37 count] == 0;

        if (v38)
        {
          v54 = [v35 workoutEvent];
          v55 = [v54 workoutLocationStart];
          v56 = v55 == 0;

          if (v56)
          {
            continue;
          }

          v95 = [RTLocation alloc];
          v99 = [v35 workoutEvent];
          v98 = [v99 workoutLocationStart];
          [v98 coordinate];
          v58 = v57;
          v97 = [v35 workoutEvent];
          v59 = [v97 workoutLocationStart];
          [v59 coordinate];
          v61 = v60;
          v62 = [v35 workoutEvent];
          v63 = [v62 workoutLocationStart];
          [v63 horizontalAccuracy];
          v65 = v64;
          v66 = [v35 workoutEvent];
          v67 = [v66 workoutLocationStart];
          v68 = [v67 timestamp];
          v40 = [v95 initWithLatitude:v68 longitude:v58 horizontalUncertainty:v61 date:v65];

          [v14 addObject:v40];
        }

        else
        {
          v114 = 0u;
          v115 = 0u;
          v112 = 0u;
          v113 = 0u;
          v39 = [v35 workoutEvent];
          v40 = [v39 workoutLocationRoute];

          v41 = [v40 countByEnumeratingWithState:&v112 objects:v164 count:16];
          if (v41)
          {
            v42 = *v113;
            do
            {
              for (m = 0; m != v41; m = m + 1)
              {
                if (*v113 != v42)
                {
                  objc_enumerationMutation(v40);
                }

                v44 = *(*(&v112 + 1) + 8 * m);
                v45 = [RTLocation alloc];
                [v44 coordinate];
                v47 = v46;
                [v44 coordinate];
                v49 = v48;
                [v44 horizontalAccuracy];
                v51 = v50;
                v52 = [v44 timestamp];
                v53 = [v45 initWithLatitude:v52 longitude:v47 horizontalUncertainty:v49 date:v51];

                [v14 addObject:v53];
              }

              v41 = [v40 countByEnumeratingWithState:&v112 objects:v164 count:16];
            }

            while (v41);
          }
        }
      }

      v33 = [obj countByEnumeratingWithState:&v116 objects:v165 count:16];
      if (!v33)
      {
LABEL_41:

        break;
      }
    }
  }

  v69 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
  if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
  {
    v70 = [v14 count];
    *v162 = 134217984;
    v163 = v70;
    _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, "final locations count, %lu", v162, 0xCu);
  }

  v71 = [v94 bundleSubType] == 106 || objc_msgSend(v94, "bundleSuperType") == 5;
  if (v89)
  {
    v72 = [v94 startDate];
    v73 = [v94 endDate];
    v74 = [v94 bundleIdentifier];
    v75 = [v94 interfaceType];
    v102[0] = _NSConcreteStackBlock;
    v102[1] = 3221225472;
    v102[2] = __80__MOContextAnnotationUtilities_addPhotoResourcesWithDateArray_universe_handler___block_invoke;
    v102[3] = &unk_100337DB0;
    v103 = v94;
    v104 = v89;
    v106 = buf;
    v107 = &v124;
    v108 = &v152;
    v109 = &v146;
    v110 = &v136;
    v111 = &v130;
    v76 = v84;
    v105 = v76;
    [v104 fetchPhotosBetweenStartDate:v72 EndDate:v73 SuggestionID:v74 BundleInterfaceType:v75 Locations:v14 IsLocationCheckMandatory:v71 handler:v102];

    if ((MODispatchGroupWait(v76, 0xFFFFFFFFFFFFFFFFLL, @"ContextAnnotation") & 1) == 0)
    {
      v77 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(v77, OS_LOG_TYPE_FAULT))
      {
        +[MOContextAnnotationUtilities addPhotoResourcesWithDateArray:universe:handler:];
      }
    }
  }

  v78 = [*(v157 + 5) copy];
  v79 = v153[3];
  v80 = [v147[5] copy];
  v81 = v137[5];
  v82 = v131[5];
  v83 = [v125[5] copy];
  v85[2](v85, v78, v79, v80, v81, v82, v83);

  _Block_object_dispose(&v124, 8);
  _Block_object_dispose(&v130, 8);

  _Block_object_dispose(&v136, 8);
  _Block_object_dispose(&v146, 8);

  _Block_object_dispose(&v152, 8);
  _Block_object_dispose(buf, 8);
}

void __80__MOContextAnnotationUtilities_addPhotoResourcesWithDateArray_universe_handler___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = +[NSDate distantFuture];
  v16 = +[NSDate distantPast];
  v67 = v11;
  v60 = v14;
  v61 = v12;
  v71 = v15;
  if (v11 && !v14 && [v11 count])
  {
    v59 = a4;
    v69 = objc_alloc_init(NSMutableSet);
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    obj = v12;
    v68 = [obj countByEnumeratingWithState:&v72 objects:v80 count:16];
    if (v68)
    {
      v65 = *v73;
      do
      {
        for (i = 0; i != v68; i = i + 1)
        {
          if (*v73 != v65)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v72 + 1) + 8 * i);
          v78[0] = @"MOPhotoResourceTypeKey";
          v19 = [v18 resourceType];
          v79[0] = v19;
          v78[1] = @"MOPhotoResourceLocalIdentifier";
          v20 = [v18 localIdentifier];
          v79[1] = v20;
          v78[2] = @"MOPhotoResourceLocalTime";
          v21 = [v18 creationDate];
          [v21 timeIntervalSinceReferenceDate];
          v22 = [NSNumber numberWithDouble:?];
          v79[2] = v22;
          v23 = [NSDictionary dictionaryWithObjects:v79 forKeys:v78 count:3];

          v24 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = [*(a1 + 32) suggestionID];
            *buf = 138412290;
            v77 = v25;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Fetching persons in the current Asset for the bundle SuggestionId : %@", buf, 0xCu);
          }

          v26 = [*(a1 + 40) getPersonsInAsset:v18];
          [v69 unionSet:v26];
          v27 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v28 = [v69 allObjects];
            *buf = 138412290;
            v77 = v28;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "After Fetching persons in the current Asset for the bundle mopersons : %@", buf, 0xCu);
          }

          v29 = [[MOResource alloc] initWithName:@"Photo" type:2 dict:v23 value:0.0];
          v30 = [v67 objectForKey:v18];
          [(MOResource *)v29 setPhotoCurationScore:v30];

          v31 = [v18 mediaAnalysisProperties];
          -[MOResource setPhotoFaceCount:](v29, "setPhotoFaceCount:", [v31 faceCount]);

          [v18 overallAestheticScore];
          [(MOResource *)v29 setPhotoOverallAestheticScore:?];
          -[MOResource setPhotoAssetMediaType:](v29, "setPhotoAssetMediaType:", [v18 mediaType]);
          v32 = [v18 creationDate];
          [(MOResource *)v29 setPhotoCreationDate:v32];

          v33 = [v18 localIdentifier];
          [(MOResource *)v29 setAssets:v33];

          v34 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v77 = v18;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "creating new MOResource with identifier,%@", buf, 0xCu);
          }

          [*(*(*(a1 + 56) + 8) + 40) addObject:v29];
          v35 = [v18 creationDate];
          v36 = [v35 isBeforeDate:v71];

          if (v36)
          {
            v37 = [v18 creationDate];

            v71 = v37;
          }

          v38 = [v18 creationDate];
          v39 = [v38 isAfterDate:v16];

          if (v39)
          {
            v40 = [v18 creationDate];

            v16 = v40;
          }

          v41 = *(*(*(a1 + 64) + 8) + 40);
          v42 = [v18 creationDate];
          [v41 addObject:v42];
        }

        v68 = [obj countByEnumeratingWithState:&v72 objects:v80 count:16];
      }

      while (v68);
    }

    v43 = [v69 allObjects];
    [*(a1 + 32) setPersons:v43];

    *(*(*(a1 + 72) + 8) + 24) = v59;
    v44 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      v45 = *(*(*(a1 + 72) + 8) + 24);
      *buf = 134217984;
      v77 = v45;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "addPhotoResources,photoSource,%lu", buf, 0xCu);
    }
  }

  if (v13 && [v13 count])
  {
    v46 = 0;
    v62 = v13;
    v64 = v16;
    do
    {
      v47 = [v13 objectAtIndexedSubscript:v46];
      v48 = v47;
      if (v47)
      {
        v49 = [v47 objectForKey:kPHGraphPersonalTraitName];
        v50 = [v48 objectForKey:kPHGraphPersonalTraitLabelType];
        v66 = [v48 objectForKey:kPHGraphPersonalTraitHolidayIdentifier];
        v51 = [v48 objectForKey:kPHGraphPersonalTraitMeaningIdentifier];
        v52 = [v48 objectForKey:kPHGraphPersonalTraitRelevantAssetUUIDs];
        v53 = [v48 objectForKey:kPHGraphPersonalTraitAssociatedPersonLocalIdentifiers];
        v54 = [MOPhotoTrait alloc];
        v55 = +[NSUUID UUID];
        v70 = v49;
        v56 = [(MOPhotoTrait *)v54 initWithIdentifier:v55 name:v49 labelType:v50 holidayIdentifier:v66 meaningIdentifier:v51 relevantAssetUUIDs:v52 associatedPersonLocalIdentifiers:v53];

        v57 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
        {
          v58 = [(MOPhotoTrait *)v56 description];
          *buf = 138412290;
          v77 = v58;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "#traits,creating new MOPhotoTrait,%@", buf, 0xCu);
        }

        [*(*(*(a1 + 80) + 8) + 40) addObject:v56];
        v13 = v62;
        v16 = v64;
      }

      ++v46;
    }

    while ([v13 count] > v46);
  }

  if ([v71 isOnOrBefore:v16])
  {
    objc_storeStrong((*(*(a1 + 88) + 8) + 40), v71);
    objc_storeStrong((*(*(a1 + 96) + 8) + 40), v16);
  }

  dispatch_group_leave(*(a1 + 48));
}

+ (id)fetchAssetUsingID:(id)a3 universe:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "fetchAssetUsingID", buf, 2u);
  }

  if (v5)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v6 getService:v9];

    *buf = 0;
    v22 = buf;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__11;
    v25 = __Block_byref_object_dispose__11;
    v26 = 0;
    v11 = dispatch_group_create();
    dispatch_group_enter(v11);
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = __59__MOContextAnnotationUtilities_fetchAssetUsingID_universe___block_invoke;
    v18 = &unk_100337DD8;
    v20 = buf;
    v12 = v11;
    v19 = v12;
    [v10 fetchAssetUsingID:v5 handler:&v15];
    if (MODispatchGroupWait(v12, 0xFFFFFFFFFFFFFFFFLL, @"FetchPhotoAsset"))
    {
      v13 = [*(v22 + 5) copy];
    }

    else
    {
      v13 = 0;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "fetchAssetUsingID, identifier is nil", buf, 2u);
    }

    v13 = 0;
  }

  return v13;
}

void __59__MOContextAnnotationUtilities_fetchAssetUsingID_universe___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(*(a1 + 40) + 8);
  v9 = v5;
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = *(v6 + 40);
  *(v6 + 40) = v7;

  dispatch_group_leave(*(a1 + 32));
}

+ (id)baseTimeFromBaseEvents:(id)a3
{
  v3 = a3;
  v4 = [v3 firstObject];
  v5 = [v4 startDate];

  v6 = [v3 lastObject];

  v7 = [v6 endDate];

  [v7 timeIntervalSinceDate:v5];
  v9 = [v5 dateByAddingTimeInterval:v8 * 0.5];
  [v9 timeIntervalSinceReferenceDate];
  v11 = v10;
  v12 = +[NSCalendar currentCalendar];
  v13 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v21 = 138412546;
    v22 = v15;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "TimeContext(%@): baseTimeFromBaseEvents, %@", &v21, 0x16u);
  }

  if ([v12 isDateInWeekend:v9])
  {
    v16 = [MOTime alloc];
    v17 = [v12 timeZone];
    v18 = [v17 name];
    v19 = [(MOTime *)v16 initWithTimestamp:@"Weekend" timeString:v18 timeZone:10001 timeTag:v11];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)timeOfDayPrefixFromBaseEvents:(id)a3
{
  v3 = a3;
  v4 = [v3 firstObject];
  v5 = [v4 startDate];

  v6 = [v3 lastObject];

  v7 = [v6 endDate];

  v8 = [MOTime timeOfDayPrefixFromStartDate:v5 endDate:v7];

  return v8;
}

+ (id)annotateEventBundle:(id)a3 visitEvents:(id)a4 poiCategoryBlocklist:(id)a5 mediumConfidenceThreshold:(double)a6 highConfidenceThreshold:(double)a7 aoiConfidenceThreshold:(double)a8 universe:(id)a9
{
  v15 = a3;
  v16 = a9;
  v17 = a5;
  v18 = a4;
  v19 = objc_opt_new();
  v20 = [MOContextAnnotationUtilities placeFromVisitEvents:v18 usedEvents:v19 preferredCategories:0 poiCategoryBlocklist:v17 mediumConfidenceThreshold:v16 highConfidenceThreshold:a6 aoiConfidenceThreshold:a7 universe:a8];

  if (v20)
  {
    [v15 setPlace:v20];
    v21 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = [v15 place];
      v24 = 138412290;
      v25 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "annotateEventBundle visit, %@", &v24, 0xCu);
    }
  }

  return v19;
}

+ (id)placeFromVisitEvents:(id)a3 usedEvents:(id)a4 preferredCategories:(id)a5 poiCategoryBlocklist:(id)a6 mediumConfidenceThreshold:(double)a7 highConfidenceThreshold:(double)a8 aoiConfidenceThreshold:(double)a9 universe:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v19 = a10;
  if ([v16 count])
  {
    v20 = [NSSortDescriptor sortDescriptorWithKey:@"placeNameConfidence" ascending:0];
    v26 = v20;
    v21 = [NSArray arrayWithObjects:&v26 count:1];
    v22 = [v16 sortedArrayUsingDescriptors:v21];

    v23 = [v22 firstObject];
    if ([v23 category] == 1)
    {
      if (v17)
      {
        [v17 addObject:v23];
      }

      v24 = [MOContextAnnotationUtilities placeFromVisitEvent:v23 preferredCategories:0 poiCategoryBlocklist:v18 mediumConfidenceThreshold:v19 highConfidenceThreshold:a7 aoiConfidenceThreshold:a8 universe:a9];
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

+ (unint64_t)prepositionWithPlaceType:(unint64_t)a3 userPlaceType:(unint64_t)a4 mapItemPlaceType:(unint64_t)a5 distanceFromVisitToPlace:(double)a6 snappingThreshold:(double)a7
{
  if (!(a4 | a3))
  {
    return 0;
  }

  if (a4 - 1 < 0x63)
  {
    return 1;
  }

  result = 3;
  if (a3 - 100 >= 3 && a3 != 2)
  {
    if ((a3 & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      return 1;
    }

    if (a3 == 6)
    {
      return 0;
    }

    if (a5 - 1 < 0x14 && ((0xE4FF9u >> (a5 - 1)) & 1) != 0)
    {
      return 3;
    }

    else
    {
      v8 = 4;
      if (a6 <= a7)
      {
        v8 = 1;
      }

      if (a6 >= 0.0)
      {
        return v8;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

+ (id)placeFromVisitEvent:(id)a3 preferredCategories:(id)a4 poiCategoryBlocklist:(id)a5 mediumConfidenceThreshold:(double)a6 highConfidenceThreshold:(double)a7 aoiConfidenceThreshold:(double)a8 universe:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a9;
  v19 = [v15 placeName];
  [v15 placeNameConfidence];
  v21 = v20;
  v22 = [v15 location];
  [MOContextAnnotationUtilities distanceFromHomeToLocation:v22 universe:v18];
  v24 = v23;

  v25 = @"aboveDoorShortAddress";
  v26 = objc_opt_class();
  v27 = NSStringFromClass(v26);
  v28 = [v18 getService:v27];

  if (v28)
  {
    v29 = [NSString stringWithFormat:@"%@_%@", @"addressFormatting", @"formatOption"];
    v30 = [v28 getStringSettingForKey:v29 withFallback:v25];

    [v28 getDoubleSettingForKey:@"distanceOfSnappingThreshold" withFallback:150.0];
    v25 = v30;
  }

  v31 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    v87 = objc_opt_class();
    v88 = NSStringFromClass(v87);
    v89 = NSStringFromSelector(a2);
    *buf = 138412802;
    v129 = v88;
    v130 = 2112;
    v131 = v89;
    v132 = 2112;
    v133 = v25;
    _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "%@, %@: format option, %@", buf, 0x20u);
  }

  v32 = [v15 formatLocalityWithFormatOption:v25];
  if (!v32)
  {
    v32 = [v15 formatAdministrativeAreaWithFormatOption:v25];
    if (!v32)
    {
      v32 = [v15 formatCountryWithFormatOption:v25];
    }
  }

  v33 = v32;
  if (v19)
  {
    v34 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    v124 = v17;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v90 = objc_opt_class();
      v121 = NSStringFromClass(v90);
      v117 = NSStringFromSelector(a2);
      v114 = [v15 poiCategory];
      v112 = [v15 placeType];
      v91 = [v15 placeUserType];
      *buf = 138413826;
      v129 = v121;
      v130 = 2112;
      v131 = v117;
      v132 = 2112;
      v133 = v25;
      v134 = 2112;
      v135 = v19;
      v136 = 2112;
      v137 = v114;
      v138 = 2048;
      v139 = v112;
      v140 = 2048;
      v141 = v91;
      _os_log_debug_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "%@, %@: format option, %@, place name, %@, category, %@, placeType, %lu, placeUserType, %lu", buf, 0x48u);
    }

    v123 = v16;
    v125 = v28;
    v126 = v25;
    if (!v16 || ([v15 poiCategory], v35 = objc_claimAutoreleasedReturnValue(), v36 = objc_msgSend(v16, "containsObject:", v35), v35, !v36))
    {
      v52 = v19;
      v53 = [v15 routineEvent];
      LODWORD(v54) = [v53 fallbackToAddressFormattingWithFormatOption:v25 preferredCategories:v16 poiCategoryBlocklist:v17 mediumConfidenceThreshold:a6 aoiConfidenceThreshold:a8];

      v120 = v33;
      if (v54)
      {
        v55 = [v15 formatAddressWithFormatOption:v25];
        v54 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
        {
          v106 = objc_opt_class();
          v118 = NSStringFromClass(v106);
          v115 = NSStringFromSelector(a2);
          v107 = [v52 mask];
          v108 = [v55 mask];
          v113 = [v15 poiCategory];
          v109 = v25;
          v110 = [v15 placeType];
          v111 = [v15 placeUserType];
          *buf = 138414082;
          v129 = v118;
          v130 = 2112;
          v131 = v115;
          v132 = 2112;
          v133 = v107;
          v134 = 2112;
          v135 = v108;
          v136 = 2112;
          v137 = v109;
          v138 = 2112;
          v139 = v113;
          v140 = 2048;
          v141 = v110;
          v142 = 2048;
          v143 = v111;
          _os_log_debug_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEBUG, "%@, %@: original place name, %@, new place name, %@, format option, %@, category, %@, placeType, %lu, placeUserType, %lu", buf, 0x52u);
        }

        LOBYTE(v54) = v55 != 0;
        if (v55)
        {
          v56 = v55;

          v52 = v56;
        }
      }

      v127 = v52;
      if ([v15 placeType] == 4 || (objc_msgSend(v15, "placeSource") == 1 ? (v57 = 1) : (v57 = v54), (v57 & 1) != 0))
      {
        v58 = 4;
      }

      else
      {
        v58 = [v15 placeType];
      }

      v68 = [MOPlace alloc];
      v69 = [v15 placeUserType];
      v70 = [v15 location];
      v71 = [v15 mode];
      v72 = [v15 poiCategory];
      v73 = [v15 categoryMuid];
      [v15 familiarityIndexLOI];
      v75 = v74;
      v76 = [v15 startDate];
      v77 = [v15 endDate];
      v78 = [(MOPlace *)v68 initWithPlaceName:v127 enclosingArea:v120 placeType:v58 placeUserType:v69 location:v70 locationMode:v71 poiCategory:v24 categoryMuid:v21 distanceToHomeInMiles:v75 placeNameConfidence:v72 familiarityIndexLOI:v73 startDate:v76 endDate:v77];
      v79 = v58;
      v51 = v78;

      v33 = v120;
      v80 = objc_opt_class();
      v81 = [v15 placeUserType];
      v65 = [v15 routineEvent];
      v82 = [v65 mapItemPlaceType];
      v67 = [v15 routineEvent];
      [v67 distanceFromVisitToPlace];
      v83 = v80;
      v84 = v79;
      v85 = v81;
      v86 = v82;
      goto LABEL_41;
    }

    v37 = [v15 poiCategory];
    v127 = v19;
    if (v37 != GEOPOICategoryAirportTerminal)
    {
      v38 = [v15 poiCategory];
      if (v38 != GEOPOICategoryAirportGate)
      {
        v39 = [v15 poiCategory];
        v40 = v39;
        if (v39 != GEOPOICategoryAirport)
        {

LABEL_17:
          v119 = [MOPlace alloc];
          v41 = [v15 formatLocalityWithFormatOption:v25];
          v116 = [v15 placeType];
          v42 = [v15 placeUserType];
          v43 = [v15 location];
          v44 = [v15 mode];
          v45 = [v15 poiCategory];
          v46 = [v15 categoryMuid];
          [v15 familiarityIndexLOI];
          v48 = v47;
          v49 = [v15 startDate];
          v50 = [v15 endDate];
          v51 = [(MOPlace *)v119 initWithPlaceName:v127 enclosingArea:v41 placeType:v116 placeUserType:v42 location:v43 locationMode:v44 poiCategory:v24 categoryMuid:v21 distanceToHomeInMiles:v48 placeNameConfidence:v45 familiarityIndexLOI:v46 startDate:v49 endDate:v50];

LABEL_40:
          v99 = objc_opt_class();
          v100 = [v15 placeType];
          v101 = [v15 placeUserType];
          v65 = [v15 routineEvent];
          v102 = [v65 mapItemPlaceType];
          v67 = [v15 routineEvent];
          [v67 distanceFromVisitToPlace];
          v83 = v99;
          v84 = v100;
          v85 = v101;
          v86 = v102;
LABEL_41:
          -[MOPlace setProposition:](v51, "setProposition:", [v83 prepositionWithPlaceType:v84 userPlaceType:v85 mapItemPlaceType:v86 distanceFromVisitToPlace:? snappingThreshold:?]);
          v16 = v123;
          v17 = v124;
          goto LABEL_42;
        }

        if ([v15 placeType] != 4)
        {
          v105 = [v15 placeSource];

          if (v105 != 1)
          {
            goto LABEL_17;
          }

LABEL_39:
          v122 = [MOPlace alloc];
          v41 = [v15 formatLocalityWithFormatOption:v25];
          v92 = [v15 placeUserType];
          v43 = [v15 location];
          v93 = [v15 mode];
          v45 = [v15 poiCategory];
          v94 = [v15 categoryMuid];
          [v15 familiarityIndexLOI];
          v96 = v95;
          v97 = [v15 startDate];
          v98 = [v15 endDate];
          v51 = [(MOPlace *)v122 initWithPlaceName:v127 enclosingArea:v41 placeType:6 placeUserType:v92 location:v43 locationMode:v93 poiCategory:v24 categoryMuid:v21 distanceToHomeInMiles:v96 placeNameConfidence:v45 familiarityIndexLOI:v94 startDate:v97 endDate:v98];

          goto LABEL_40;
        }
      }
    }

    goto LABEL_39;
  }

  v59 = [v15 location];

  if (!v59)
  {
    v51 = 0;
    goto LABEL_43;
  }

  v125 = v28;
  v126 = v25;
  v60 = [MOPlace alloc];
  v61 = [v15 location];
  v62 = [v15 startDate];
  v63 = [v15 endDate];
  v51 = [(MOPlace *)v60 initWithPlaceName:0 enclosingArea:v33 placeType:0 placeUserType:0 location:v61 locationMode:0 poiCategory:v24 categoryMuid:-1.0 distanceToHomeInMiles:0.0 placeNameConfidence:0 familiarityIndexLOI:0 startDate:v62 endDate:v63];

  v64 = objc_opt_class();
  v65 = [v15 routineEvent];
  v66 = [v65 mapItemPlaceType];
  v67 = [v15 routineEvent];
  [v67 distanceFromVisitToPlace];
  -[MOPlace setProposition:](v51, "setProposition:", [v64 prepositionWithPlaceType:0 userPlaceType:0 mapItemPlaceType:v66 distanceFromVisitToPlace:? snappingThreshold:?]);
  v127 = 0;
LABEL_42:

  v103 = [v15 eventIdentifier];
  [(MOPlace *)v51 setSourceEventIdentifier:v103];

  v28 = v125;
  v25 = v126;
  v59 = v127;
LABEL_43:

  return v51;
}

+ (id)locationsFromMotionEvents:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v10 workoutEvent];
        v12 = [v11 workoutLocationRoute];

        if (v12)
        {
          v13 = [v10 workoutEvent];
          v14 = [v13 workoutLocationRoute];
          v15 = [v14 copy];
          [v4 addObject:v15];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v16 = [v4 copy];

  return v16;
}

+ (id)placeFromRoutes:(id)a3 referencePointRatio:(double)a4 minimumRangeOfLocation:(double)a5
{
  v5 = a3;
  v6 = v5;
  if (v5 && [v5 count])
  {
    v7 = objc_opt_new();
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v40;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v40 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v7 addObjectsFromArray:*(*(&v39 + 1) + 8 * i)];
        }

        v10 = [v8 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v10);
    }

    v13 = [MOContextAnnotationUtilities averageLocationFromLocations:v7];
    v14 = objc_opt_new();
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v15 = v7;
    v16 = [v15 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v36;
      do
      {
        for (j = 0; j != v17; j = j + 1)
        {
          if (*v36 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [v13 distanceFromLocation:*(*(&v35 + 1) + 8 * j)];
          v20 = [NSNumber numberWithDouble:?];
          [v14 addObject:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v17);
    }

    v21 = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:0];
    v22 = [NSArray arrayWithObject:v21];
    [v14 sortUsingDescriptors:v22];

    v23 = [v14 firstObject];
    [v23 doubleValue];

    v24 = [v15 firstObject];
    v25 = [v24 timestamp];

    v26 = [v15 lastObject];
    v27 = [v26 timestamp];

    v28 = [RTLocation alloc];
    [v13 coordinate];
    v30 = v29;
    [v13 coordinate];
    v31 = [v28 initWithLatitude:v25 longitude:v30 horizontalUncertainty:? date:?];
    v32 = [MOPlace alloc];
    v33 = [(MOPlace *)v32 initWithPlaceName:0 enclosingArea:0 placeType:0 placeUserType:0 location:v31 locationMode:0 poiCategory:0.0 categoryMuid:0.0 distanceToHomeInMiles:0.0 placeNameConfidence:0 familiarityIndexLOI:0 startDate:v25 endDate:v27, v35];
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

+ (id)averageLocationFromLocations:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v34;
    v10 = 0.0;
    *&v7 = 134545921;
    v32 = v7;
    v11 = 0.0;
    v12 = 0.0;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v14 = *(*(&v33 + 1) + 8 * i);
        [v14 coordinate];
        v16 = v15;
        [v14 coordinate];
        v18 = v17;
        v19 = v17 * 0.0174532925;
        v20 = __sincos_stret(v16 * 0.0174532925);
        v21 = __sincos_stret(v19);
        v22 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = v32;
          v38 = v16;
          v39 = 2053;
          v40 = v18;
          _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Average Location: input loc, (%{sensitive}f, %{sensitive}f)", buf, 0x16u);
        }

        v12 = v12 + v20.__cosval * v21.__cosval;
        v11 = v11 + v20.__cosval * v21.__sinval;
        v10 = v10 + v20.__sinval;
      }

      v8 = [v5 countByEnumeratingWithState:&v33 objects:v45 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
  }

  v23 = v12 / v4;
  v24 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134546433;
    v38 = v12 / v4;
    v39 = 2053;
    v40 = v11 / v4;
    v41 = 2053;
    v42 = v10 / v4;
    v43 = 2048;
    v44 = v4;
    _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "Average Location: avg, (%{sensitive}f, %{sensitive}f, %{sensitive}f), cnt, %lu", buf, 0x2Au);
  }

  v25 = atan2(v11 / v4, v23);
  v26 = atan2(v10 / v4, sqrt(v11 / v4 * (v11 / v4) + v23 * v23));
  v27 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    [(MOContextAnnotationUtilities *)v27 averageLocationFromLocations:v26, v25];
  }

  v28 = v26 * 57.2957795;
  v29 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    *buf = 134545921;
    v38 = v28;
    v39 = 2053;
    v40 = v25 * 57.2957795;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Average Location: center, (%{sensitive}f, %{sensitive}f)", buf, 0x16u);
  }

  v30 = [[CLLocation alloc] initWithLatitude:v28 longitude:v25 * 57.2957795];

  return v30;
}

+ (id)locationsFromLocationString:(id)a3
{
  v3 = a3;
  v32 = 0;
  v4 = [NSRegularExpression regularExpressionWithPattern:@"\\(([-+]?[0-9]*\\.?[0-9]+) options:([-+]?[0-9]*\\.?[0-9]+)\\)" error:1, &v32];
  v26 = v32;
  v27 = v4;
  v5 = [v4 matchesInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];
  v6 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        if ([v12 numberOfRanges])
        {
          v13 = [v12 rangeAtIndex:1];
          v15 = [v3 substringWithRange:{v13, v14}];
          [v15 doubleValue];
          v17 = v16;
          v18 = [v12 rangeAtIndex:2];
          v20 = [v3 substringWithRange:{v18, v19}];
          [v20 doubleValue];
          v22 = v21;
          v23 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            *buf = 134545921;
            v34 = v17;
            v35 = 2053;
            v36 = v22;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Location: %{sensitive}f, %{sensitive}f", buf, 0x16u);
          }

          v24 = [[CLLocation alloc] initWithLatitude:v17 longitude:v22];
          [v6 addObject:v24];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v9);
  }

  return v6;
}

+ (double)distanceFromHomeToLocation:(id)a3 universe:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 getService:v8];

  v10 = [v9 homeLOI];
  v11 = v10;
  if (v10)
  {
    [v10 distanceFromLocation:v5];
    v13 = v12 * 0.00062137;
  }

  else
  {
    v13 = 0.0;
  }

  return v13;
}

+ (double)distanceFromHomeToCLLocation:(id)a3 universe:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 getService:v8];

  v10 = [v9 homeLOI];
  if (v10)
  {
    v11 = [CLLocation alloc];
    [v10 latitude];
    v13 = v12;
    [v10 longitude];
    v15 = [v11 initWithLatitude:v13 longitude:v14];
    [v15 distanceFromLocation:v5];
    v17 = v16 * 0.00062137;
  }

  else
  {
    v17 = 0.0;
  }

  return v17;
}

+ (double)weightedAverageForObjects:(id)a3 weightPath:(id)a4 valuePath:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
  v11 = 0.0;
  v12 = 0.0;
  if (v10)
  {
    v13 = v10;
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v7);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        v17 = [v16 valueForKeyPath:v8];
        [v17 doubleValue];
        v19 = v18;

        v20 = [v16 valueForKeyPath:v9];
        [v20 doubleValue];
        v22 = v21;

        v12 = v12 + v19 * v22;
        v11 = v11 + v19;
      }

      v13 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v13);
  }

  if (v11 == 0.0)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v12 / v11;
  }

  return v23;
}

+ (BOOL)isEvergreenBundle:(id)a3
{
  v3 = a3;
  v4 = [v3 resources];
  v5 = [v4 count];

  if (v5)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v3 resources];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if ([v11 type] == 3 || objc_msgSend(v11, "type") == 2)
          {
            v12 = 0;
            goto LABEL_15;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        v12 = 1;
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v12 = 1;
    }

LABEL_15:
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

+ (void)assetPriorityScoringForTimeAtHomeBundlesWithBundle:(id)a3 withMediaResources:(id)a4 withPhotoResources:(id)a5 withEmotionResources:(id)a6
{
  v45 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v43 = [[NSSortDescriptor alloc] initWithKey:@"photoCurationScore" ascending:0];
  v61 = v43;
  v12 = [NSArray arrayWithObjects:&v61 count:1];
  v44 = v10;
  v13 = [v10 sortedArrayUsingDescriptors:v12];

  v14 = [NSMutableArray arrayWithArray:v9];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v15 = v9;
  v16 = [v15 countByEnumeratingWithState:&v54 objects:v60 count:16];
  v42 = v14;
  if (v16)
  {
    v17 = v16;
    v18 = *v55;
    v19 = 0x4069200000000000;
    while (2)
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v55 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v54 + 1) + 8 * i);
        [v21 priorityScore];
        if (v22 == 201.0)
        {
          v23 = [v15 indexOfObject:v21];
          [v21 setPriorityScore:200.0];
          [v14 replaceObjectAtIndex:v23 withObject:v21];
          goto LABEL_11;
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v54 objects:v60 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v19 = 0x4069000000000000;
LABEL_11:

  v24 = objc_opt_new();
  if ([v11 count])
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v25 = v11;
    v26 = [v25 countByEnumeratingWithState:&v50 objects:v59 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v51;
      v29 = 501.0;
      do
      {
        for (j = 0; j != v27; j = j + 1)
        {
          if (*v51 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v31 = *(*(&v50 + 1) + 8 * j);
          [v31 priorityScore];
          if (v32 != 202.0)
          {
            [v31 setPriorityScore:v29];
            v29 = v29 + 1.0;
          }

          [v24 addObject:v31];
        }

        v27 = [v25 countByEnumeratingWithState:&v50 objects:v59 count:16];
      }

      while (v27);
    }
  }

  v33 = objc_opt_new();
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v34 = v13;
  v35 = [v34 countByEnumeratingWithState:&v46 objects:v58 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v47;
    v38 = 0.0;
    do
    {
      for (k = 0; k != v36; k = k + 1)
      {
        if (*v47 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v40 = *(*(&v46 + 1) + 8 * k);
        if (v38 == 0.0)
        {
          v41 = 100.0;
        }

        else
        {
          v41 = *&v19;
          if (v38 != 100.0)
          {
            if (v38 < 200.0)
            {
              goto LABEL_33;
            }

            v41 = v38 + 1.0;
          }
        }

        [*(*(&v46 + 1) + 8 * k) setPriorityScore:v41];
        v38 = v41;
LABEL_33:
        [v33 addObject:v40];
      }

      v36 = [v34 countByEnumeratingWithState:&v46 objects:v58 count:16];
    }

    while (v36);
  }

  [v45 setResources:v33];
  [v45 addResources:v42];
  [v45 addResources:v24];
}

+ (id)setActionForActivityBundle:(id)a3
{
  v3 = a3;
  v4 = [v3 firstObject];
  v5 = v4;
  if (!v4)
  {
    v8 = 0;
    goto LABEL_53;
  }

  if ([v4 category] == 2)
  {
    v6 = [v5 workoutEvent];
    v7 = [v6 workoutType];

LABEL_11:
    v12 = 1;
    goto LABEL_17;
  }

  if ([v5 category] != 16)
  {
    v7 = 0;
    goto LABEL_11;
  }

  v9 = [v5 motionActivityEvent];
  v10 = [v9 motionType];

  if (v10 == 6)
  {
    v11 = &MOWorkoutMotionActivityActionRunAndWalk;
  }

  else if (v10 == 3)
  {
    v11 = &MOWorkoutMotionActivityActionRun;
  }

  else
  {
    if (v10 != 2)
    {
      v7 = 0;
      goto LABEL_16;
    }

    v11 = &MOWorkoutMotionActivityActionWalk;
  }

  v7 = *v11;
LABEL_16:
  v12 = 2;
LABEL_17:
  v56 = v12;
  v57 = v7;
  v58 = objc_opt_new();
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v13 = v3;
  v14 = [v13 countByEnumeratingWithState:&v63 objects:v68 count:16];
  if (v14)
  {
    v15 = v14;
    LODWORD(v16) = 0;
    v17 = *v64;
    v18 = 0.0;
    v19 = 0.0;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v64 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v21 = *(*(&v63 + 1) + 8 * i);
        v22 = [v21 workoutEvent];
        v23 = [v22 workoutTotalDistance];
        [v23 doubleValue];
        v18 = v18 + v24;

        v25 = [v21 workoutEvent];
        v26 = [v25 workoutDuration];
        [v26 doubleValue];
        v19 = v19 + v27 / 60.0;

        v28 = [v21 motionActivityEvent];
        v29 = [v28 motionStepCount];
        v16 = [v29 intValue] + v16;

        v30 = [v21 motionActivityEvent];
        v31 = [v30 motionDistance];
        [v31 doubleValue];
      }

      v15 = [v13 countByEnumeratingWithState:&v63 objects:v68 count:16];
    }

    while (v15);
  }

  else
  {
    v16 = 0;
    v18 = 0.0;
    v19 = 0.0;
  }

  if ([v5 category] == 16)
  {
    v33 = v58;
    if (v16 < 1)
    {
      goto LABEL_34;
    }

    v34 = [NSString stringWithFormat:@"%d", v16];
    v35 = &MOWorkoutActionUnitMotionWalkingSteps;
  }

  else
  {
    v33 = v58;
    if (v18 <= 0.0)
    {
      if (v19 <= 0.0)
      {
        goto LABEL_34;
      }

      LODWORD(v32) = llround(v19);
      v34 = [NSString stringWithFormat:@"%d", v32];
      v35 = &MOWorkoutActionUnitWorkoutDuration;
    }

    else
    {
      v34 = [NSString stringWithFormat:@"%.2f", trunc(v18 * 0.62137119 * 100.0) / 100.0];
      v35 = &MOWorkoutActionUnitWorkoutDistance;
    }
  }

  [v33 setObject:v34 forKeyedSubscript:@"ActivityActionMetaDataValue"];

  [v33 setObject:*v35 forKeyedSubscript:@"ActivityActionMetaDataUnit"];
LABEL_34:
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v36 = v13;
  v37 = [v36 countByEnumeratingWithState:&v59 objects:v67 count:16];
  v38 = v36;
  if (v37)
  {
    v39 = v37;
    v40 = *v60;
    while (2)
    {
      for (j = 0; j != v39; j = j + 1)
      {
        if (*v60 != v40)
        {
          objc_enumerationMutation(v36);
        }

        v42 = *(*(&v59 + 1) + 8 * j);
        if ([v42 fromFirstParty])
        {
          goto LABEL_44;
        }

        v43 = [v42 appBundle];
        v44 = [v36 firstObject];
        v45 = [v44 appBundle];
        v46 = [v43 isEqualToString:v45];

        if (!v46)
        {
LABEL_44:
          v38 = v36;
          v33 = v58;
          goto LABEL_45;
        }
      }

      v39 = [v36 countByEnumeratingWithState:&v59 objects:v67 count:16];
      if (v39)
      {
        continue;
      }

      break;
    }

    v38 = [v36 firstObject];
    v47 = [v38 appBundle];
    v48 = [MOContextAnnotationUtilities bundleNameFromBundleId:v47];
    v33 = v58;
    [v58 setObject:v48 forKeyedSubscript:@"MediaActionMetaDataAppName"];
  }

LABEL_45:

  v49 = [v36 firstObject];
  if ([v49 fromFirstParty])
  {
    v50 = [v36 firstObject];
    v51 = [v50 isFitnessPlusSession];

    v52 = v57;
    if (v51)
    {
      [v33 setObject:@"Fitness+" forKeyedSubscript:@"MediaActionMetaDataAppName"];
    }

    if (v57)
    {
      goto LABEL_49;
    }

LABEL_51:
    v8 = 0;
    goto LABEL_52;
  }

  v52 = v57;
  if (!v57)
  {
    goto LABEL_51;
  }

LABEL_49:
  v8 = [[MOAction alloc] initWithActionName:v52 actionType:4 actionSubtype:v56 actionMetaData:v33];
  v53 = [v36 firstObject];
  v54 = [v53 eventIdentifier];
  [(MOAction *)v8 setSourceEventIdentifier:v54];

LABEL_52:
LABEL_53:

  return v8;
}

+ (void)addStateOfMindResourceForBundle:(id)a3 withEmotionEvents:(id)a4
{
  v36 = a3;
  v5 = a4;
  v33 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:0];
  v42 = v33;
  v6 = [NSArray arrayWithObjects:&v42 count:1];
  v34 = v5;
  v7 = [v5 sortedArrayUsingDescriptors:v6];

  v8 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v10)
  {
    v11 = v10;
    v35 = *v38;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v38 != v35)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v37 + 1) + 8 * i);
        v14 = [v13 startDate];
        [v14 timeIntervalSince1970];
        v15 = [NSNumber numberWithDouble:?];
        [v8 setObject:v15 forKey:@"MOStateOfMindMetaDataKeyStartDate"];

        v16 = [v13 endDate];
        [v16 timeIntervalSince1970];
        v17 = [NSNumber numberWithDouble:?];
        [v8 setObject:v17 forKey:@"MOStateOfMindMetaDataKeyEndDate"];

        v18 = [v13 stateOfMindEvent];
        v19 = [v18 labels];
        [v8 setObject:v19 forKey:@"MOStateOfMindMetaDataKeyLabel"];

        v20 = [v13 stateOfMindEvent];
        v21 = [v20 domains];
        [v8 setObject:v21 forKey:@"MOStateOfMindMetaDataKeyDomain"];

        v22 = [v13 stateOfMindEvent];
        [v22 reflectiveInterval];
        v23 = [NSNumber numberWithDouble:?];
        [v8 setObject:v23 forKey:@"MOStateOfMindMetaDataKeyReflectiveInterval"];

        v24 = [v13 stateOfMindEvent];
        [v24 valence];
        v25 = [NSNumber numberWithDouble:?];
        [v8 setObject:v25 forKey:@"MOStateOfMindMetaDataKeyValence"];

        v26 = [v13 stateOfMindEvent];
        [v26 valenceClassification];
        v27 = [NSNumber numberWithDouble:?];
        [v8 setObject:v27 forKey:@"MOStateOfMindMetaDataKeyValenceClassification"];

        v28 = [v13 identifierFromProvider];
        [v8 setObject:v28 forKey:@"MOStateOfMindMetaDataKeyStateOfMindID"];

        v29 = [[MOResource alloc] initWithName:@"StateOfMind" type:16 dict:v8 value:0.0];
        v30 = [v13 identifierFromProvider];
        [(MOResource *)v29 setAssets:v30];

        v31 = [v13 eventIdentifier];
        [(MOResource *)v29 setSourceEventIdentifier:v31];

        [(MOResource *)v29 setSourceEventAccessType:8];
        v32 = [v9 firstObject];

        if (v32 == v13)
        {
          [(MOResource *)v29 setPriorityScore:202.0];
        }

        [v36 addResource:v29];
      }

      v11 = [v9 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v11);
  }
}

+ (void)addStateOfMindMetaDataForRankForBundle:(id)a3 withEmotionEvents:(id)a4
{
  v36 = a3;
  v5 = a4;
  v6 = objc_opt_new();
  v39 = objc_opt_new();
  v38 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v5;
  v9 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v41;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        v13 = v8;
        if (*v41 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v40 + 1) + 8 * i);
        v15 = [v14 stateOfMindEvent];
        v16 = [v15 labels];
        [v6 addObjectsFromArray:v16];

        v17 = [v14 stateOfMindEvent];
        v18 = [v17 domains];
        [v39 addObjectsFromArray:v18];

        v19 = [v14 stateOfMindEvent];
        [v19 valence];
        v20 = [NSNumber numberWithDouble:?];
        [v38 addObject:v20];

        v21 = [v14 stateOfMindEvent];
        [v21 valenceClassification];
        v22 = [NSNumber numberWithDouble:?];
        [v7 addObject:v22];

        v23 = [v14 stateOfMindEvent];
        [v23 reflectiveInterval];
        v24 = [NSNumber numberWithDouble:?];
        v8 = v13;
        [v13 addObject:v24];
      }

      v10 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v10);
  }

  v25 = v36;
  if ([v6 count])
  {
    v26 = [NSSet setWithArray:v6];
    v27 = [v26 allObjects];
    [v36 addMetaDataForRankForKey:@"StateOfMindLabels" value:v27];
  }

  if ([v39 count])
  {
    v28 = [NSSet setWithArray:v39];
    v29 = [v28 allObjects];
    [v25 addMetaDataForRankForKey:@"StateOfMindDomains" value:v29];
  }

  if ([v38 count])
  {
    v30 = [NSSet setWithArray:v38];
    v31 = [v30 allObjects];
    [v25 addMetaDataForRankForKey:@"StateOfMindValence" value:v31];
  }

  if ([v7 count])
  {
    v32 = [NSSet setWithArray:v7];
    v33 = [v32 allObjects];
    [v25 addMetaDataForRankForKey:@"StateOfMindValenceClassification" value:v33];
  }

  if ([v8 count])
  {
    v34 = [NSSet setWithArray:v8];
    v35 = [v34 allObjects];
    [v25 addMetaDataForRankForKey:@"StateOfMindReflectiveInterval" value:v35];
  }
}

+ (void)addInviteResourceForBundle:(id)a3 withInviteEvent:(id)a4
{
  v16 = @"appBundle";
  v5 = a4;
  v6 = a3;
  v7 = [v5 appBundle];
  v17 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v9 = [v8 mutableCopy];

  v10 = [MOResource alloc];
  v11 = [v5 inviteEvent];
  v12 = [v11 inviteEventTitle];
  v13 = [(MOResource *)v10 initWithName:v12 type:17 dict:v9 value:0.0];

  v14 = [v5 identifierFromProvider];
  [(MOResource *)v13 setAssets:v14];

  v15 = [v5 eventIdentifier];

  [(MOResource *)v13 setSourceEventIdentifier:v15];
  [(MOResource *)v13 setSourceEventAccessType:5];
  [(MOResource *)v13 setPriorityScore:600.0];
  [v6 addResource:v13];
}

+ (void)createMediaResourceWithMediaInfo:(uint8_t *)a1 playSessions:(void *)a2 eventIdentifiersMapping:(void *)a3 isDominant:(NSObject *)a4 .cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 productId];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&_mh_execute_header, a4, OS_LOG_TYPE_DEBUG, "Media containerName=nil, id=%@", a1, 0xCu);
}

+ (void)dominantMediaNameFromPlaySessions:intervalOfInterest:dominantFactorThreshold:confidence:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)dominantMediaNameFromPlaySessions:(void *)a1 intervalOfInterest:dominantFactorThreshold:confidence:.cold.2(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_2(&_mh_execute_header, v1, v2, "MediaName, playSessions.count, %lu, intervalOfInterest, %@", v3, v4, v5, v6, v7);
}

+ (void)dominantMediaNameFromPlaySessions:intervalOfInterest:dominantFactorThreshold:confidence:.cold.3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)dominantMediaNameFromPlaySessions:(void *)a1 intervalsOfInterest:dominantFactorThreshold:confidence:.cold.1(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_2(&_mh_execute_header, v1, v2, "MediaName, playSessions.count, %lu, intervalsOfInterest, %@", v3, v4, v5, v6, v7);
}

+ (void)dominantMediaNameFromPlaySessions:intervalsOfInterest:dominantFactorThreshold:confidence:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)averageLocationFromLocations:(double)a3 .cold.1(os_log_t log, double a2, double a3)
{
  v3 = 134545921;
  v4 = a2;
  v5 = 2053;
  v6 = a3;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Average Location: loc in radian, (%{sensitive}f, %{sensitive}f)", &v3, 0x16u);
}

@end