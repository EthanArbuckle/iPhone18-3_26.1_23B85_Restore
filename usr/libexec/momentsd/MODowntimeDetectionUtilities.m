@interface MODowntimeDetectionUtilities
+ (double)calculateMeanWithIndices:(id)a3 forArray:(id)a4;
+ (id)calculateStatsPerHour:(id)a3 withTrimFraction:(double)a4;
+ (id)deriveCompositeScoreForDays:(id)a3 forScreentimeDurations:(id)a4 forMotionAndWorkoutBundles:(id)a5 forEngagement:(id)a6 withCalendar:(id)a7 withMaxScreentimeDuration:(double)a8 withMinNumDaysWithScreentimeThreshold:(double)a9 withOverallActivityThreshold:(double)a10 withMinNumObservationsThreshold:(double)a11 withMinActiveHoursThreshold:(double)a12 error:(id *)a13;
+ (id)downtimeDetectionPipeline:(id)a3 withBundles:(id)a4 withEngagement:(id)a5 withDefaults:(id)a6 withAllowedScreentimeCategories:(id)a7 forRecentDays:(BOOL)a8 error:(id *)a9;
+ (id)findDowntimeWindow:(id)a3 maxWindowLength:(double)a4 minWindowLength:(double)a5 withWindowActivityRatioMax:(double)a6 error:(id *)a7;
+ (id)getTotalScreentimeDurations:(id)a3 withAllowedScreentimeCategories:(id)a4;
+ (id)getUniqueDays:(id)a3 withCalendar:(id)a4;
+ (id)preprocessEventsForDowntimeDetection:(id)a3 withBundles:(id)a4 withEngagement:(id)a5 withMinNumDaysWithScreentimeThreshold:(double)a6 withOverallActivityThreshold:(double)a7 withMinNumObservationsThreshold:(double)a8 withMinActiveHoursThreshold:(double)a9 withAllowedScreentimeCategories:(id)a10 error:(id *)a11;
@end

@implementation MODowntimeDetectionUtilities

+ (id)downtimeDetectionPipeline:(id)a3 withBundles:(id)a4 withEngagement:(id)a5 withDefaults:(id)a6 withAllowedScreentimeCategories:(id)a7 forRecentDays:(BOOL)a8 error:(id *)a9
{
  v9 = a8;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (a9)
  {
    *a9 = 0;
  }

  v19 = objc_opt_new();
  v79 = v16;
  if (v9)
  {
    +[NSDate date];
    v71 = v73 = v19;
    v76 = +[NSCalendar currentCalendar];
    v75 = [v76 startOfDayForDate:v71];
    v74 = objc_alloc_init(NSDateComponents);
    [v74 setDay:-2];
    v72 = [v76 dateByAddingComponents:v74 toDate:v75 options:0];
    [NSPredicate predicateWithFormat:@"%K >= %@", @"startDate", v72];
    v20 = v80 = v18;
    v21 = [v14 filteredArrayUsingPredicate:v20];
    v22 = [v15 filteredArrayUsingPredicate:v20];
    [v17 objectForKeyedSubscript:@"DowntimeDetectionRecentDaysMinNumDaysWithScreentimeThresholdKey"];
    v23 = v77 = v15;
    [v23 doubleValue];
    v25 = v24;
    v26 = [v17 objectForKeyedSubscript:@"DowntimeDetectionRecentDaysOverallActivityThresholdKey"];
    [v26 doubleValue];
    v28 = v27;
    v29 = [v17 objectForKeyedSubscript:@"DowntimeDetectionRecentDaysMinNumObservationsThresholdKey"];
    [v29 doubleValue];
    v31 = v30;
    [v17 objectForKeyedSubscript:@"DowntimeDetectionRecentDaysMinActiveHoursThresholdKey"];
    v33 = v32 = v14;
    [v33 doubleValue];
    v86 = 0;
    v34 = v16;
    v35 = v22;
    v82 = [a1 preprocessEventsForDowntimeDetection:v21 withBundles:v22 withEngagement:v34 withMinNumDaysWithScreentimeThreshold:v80 withOverallActivityThreshold:&v86 withMinNumObservationsThreshold:v25 withMinActiveHoursThreshold:v28 withAllowedScreentimeCategories:v31 error:v36];
    v37 = v17;
    v38 = v86;

    v14 = v32;
    v39 = v71;

    v15 = v77;
    v40 = v38;
    v17 = v37;

    v18 = v80;
    v41 = 0.0;
  }

  else
  {
    v42 = [v17 objectForKeyedSubscript:@"DowntimeDetectionMinNumDaysWithScreentimeThresholdKey"];
    [v42 doubleValue];
    v44 = v43;
    v45 = [v17 objectForKeyedSubscript:@"DowntimeDetectionOverallActivityThresholdKey"];
    [v45 doubleValue];
    v47 = v46;
    v48 = [v17 objectForKeyedSubscript:@"DowntimeDetectionMinNumObservationsThresholdKey"];
    [v48 doubleValue];
    v50 = v49;
    v51 = [v17 objectForKeyedSubscript:@"DowntimeDetectionMinActiveHoursThresholdKey"];
    [v51 doubleValue];
    v85 = 0;
    v82 = [a1 preprocessEventsForDowntimeDetection:v14 withBundles:v15 withEngagement:v16 withMinNumDaysWithScreentimeThreshold:v18 withOverallActivityThreshold:&v85 withMinNumObservationsThreshold:v44 withMinActiveHoursThreshold:v47 withAllowedScreentimeCategories:v50 error:v52];
    v40 = v85;

    v39 = [v17 objectForKeyedSubscript:@"DowntimeDetectionTrimFractionKey"];
    [v39 doubleValue];
    v41 = v53;
  }

  if (a9 && v40)
  {
    v54 = v40;
    v55 = 0;
    *a9 = v40;
LABEL_18:
    v56 = v82;
    goto LABEL_19;
  }

  v56 = v82;
  if (v82)
  {
    v81 = v18;
    v78 = v15;
    v57 = [a1 calculateStatsPerHour:v82 withTrimFraction:v41];
    v58 = [v17 objectForKeyedSubscript:@"DowntimeDetectionWinLengthMaxDefaultKey"];
    [v58 doubleValue];
    v60 = v59;
    v61 = [v17 objectForKeyedSubscript:@"DowntimeDetectionWinLengthMinDefaultKey"];
    [v61 doubleValue];
    v63 = v62;
    v64 = [v17 objectForKeyedSubscript:@"DowntimeDetectionWinActivityRatioMaxDefaultKey"];
    [v64 doubleValue];
    v84 = 0;
    v66 = [a1 findDowntimeWindow:v57 maxWindowLength:&v84 minWindowLength:v60 withWindowActivityRatioMax:v63 error:v65];
    v67 = v84;

    if (a9 && v67)
    {
      v68 = v67;
      v55 = 0;
      *a9 = v67;
    }

    else
    {
      v55 = v66;
    }

    v15 = v78;
    v18 = v81;

    goto LABEL_18;
  }

  if (a9)
  {
    v87 = NSLocalizedDescriptionKey;
    v88 = @"DT: Downtime detection pipeline generic error";
    v69 = [NSDictionary dictionaryWithObjects:&v88 forKeys:&v87 count:1];
    *a9 = [NSError errorWithDomain:@"MOErrorDomain" code:29 userInfo:v69];
  }

  v55 = 0;
LABEL_19:

  return v55;
}

+ (id)preprocessEventsForDowntimeDetection:(id)a3 withBundles:(id)a4 withEngagement:(id)a5 withMinNumDaysWithScreentimeThreshold:(double)a6 withOverallActivityThreshold:(double)a7 withMinNumObservationsThreshold:(double)a8 withMinActiveHoursThreshold:(double)a9 withAllowedScreentimeCategories:(id)a10 error:(id *)a11
{
  v46 = a5;
  if (a11)
  {
    *a11 = 0;
  }

  v20 = a10;
  v21 = a4;
  v22 = a3;
  v45 = [NSPredicate predicateWithFormat:@"bundleSubType IN %@", &off_10036DFF8];
  v23 = [v21 filteredArrayUsingPredicate:?];

  v44 = [NSPredicate predicateWithFormat:@"category == %d", 20];
  v24 = [v22 filteredArrayUsingPredicate:?];

  v43 = v24;
  v25 = [MODowntimeDetectionUtilities getTotalScreentimeDurations:v24 withAllowedScreentimeCategories:v20];

  v26 = [v25 objectForKeyedSubscript:@"durationArray"];
  v27 = [v25 objectForKeyedSubscript:@"maxDuration"];
  [v27 doubleValue];
  v29 = v28;

  v47 = v23;
  v30 = [NSMutableArray arrayWithArray:v23];
  v31 = v30;
  if (v26)
  {
    [v30 addObjectsFromArray:v26];
  }

  v32 = v46;
  if (v46)
  {
    [v31 addObjectsFromArray:v46];
  }

  v33 = +[NSCalendar currentCalendar];
  v34 = [a1 getUniqueDays:v31 withCalendar:v33];
  v35 = [a1 getUniqueDays:v26 withCalendar:v33];
  if ([v35 count] >= a6)
  {
    v48 = 0;
    v38 = [a1 deriveCompositeScoreForDays:v34 forScreentimeDurations:v26 forMotionAndWorkoutBundles:v47 forEngagement:v46 withCalendar:v33 withMaxScreentimeDuration:&v48 withMinNumDaysWithScreentimeThreshold:v29 withOverallActivityThreshold:a6 withMinNumObservationsThreshold:a7 withMinActiveHoursThreshold:a8 error:a9];
    v39 = v48;
    v37 = v39;
    if (v38)
    {
      v40 = v38;
    }

    else if (a11)
    {
      v41 = v39;
      *a11 = v37;
    }
  }

  else
  {
    v36 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      +[MODowntimeDetectionUtilities preprocessEventsForDowntimeDetection:withBundles:withEngagement:withMinNumDaysWithScreentimeThreshold:withOverallActivityThreshold:withMinNumObservationsThreshold:withMinActiveHoursThreshold:withAllowedScreentimeCategories:error:];
    }

    if (!a11)
    {
      v38 = 0;
      goto LABEL_19;
    }

    v49 = NSLocalizedDescriptionKey;
    v50 = @"DT: Not sufficient amount of days with screentime for downtime detection";
    v37 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v32 = v46;
    [NSError errorWithDomain:@"MOErrorDomain" code:24 userInfo:v37];
    *a11 = v38 = 0;
  }

LABEL_19:

  return v38;
}

+ (id)getUniqueDays:(id)a3 withCalendar:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSMutableSet set];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
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

        v13 = *(*(&v21 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v14 = [v13 startDate];
        }

        else
        {
          v14 = [v13 objectForKeyedSubscript:{@"startDate", v21}];
        }

        v15 = v14;
        v16 = [v6 startOfDayForDate:v14];
        [v7 addObject:v16];
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v17 = [v7 allObjects];
  v18 = [v17 sortedArrayUsingComparator:&__block_literal_global_44];

  v19 = [v18 copy];

  return v19;
}

+ (id)getTotalScreentimeDurations:(id)a3 withAllowedScreentimeCategories:(id)a4
{
  v5 = a3;
  v50 = a4;
  v47 = +[NSMutableArray array];
  v49 = +[NSMutableArray array];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v52;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v52 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v51 + 1) + 8 * i);
        v11 = [v10 valueForKeyPath:@"screenTimeEvent.appCategoryUsages"];
        v12 = [NSPredicate predicateWithFormat:@"%K IN %@", @"appCategory", v50];
        v13 = [v11 filteredArrayUsingPredicate:v12];
        v14 = [v13 valueForKeyPath:@"duration"];
        v15 = [v14 valueForKeyPath:@"@sum.self"];
        [v15 doubleValue];
        if (v16 > 0.0)
        {
          v17 = [v10 startDate];
          [v47 addObject:v17];

          [v49 addObject:v15];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
    }

    while (v7);
  }

  v43 = +[NSCalendar currentCalendar];
  v42 = [MOPromptMetrics medianOf:v49];
  v41 = +[NSMutableArray array];
  v18 = v47;
  if ([v47 count])
  {
    v19 = 0;
    v20 = 0.0;
    do
    {
      v57[0] = @"startDate";
      v46 = [v18 objectAtIndexedSubscript:v19];
      v58[0] = v46;
      v57[1] = @"endDate";
      v45 = [v18 objectAtIndexedSubscript:v19];
      v44 = [v43 dateByAddingUnit:32 value:1 toDate:v45 options:0];
      v58[1] = v44;
      v57[2] = @"hour";
      v21 = [v18 objectAtIndexedSubscript:v19];
      v22 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v43 component:32 fromDate:v21]);
      v58[2] = v22;
      v57[3] = @"duration";
      v23 = [v49 objectAtIndexedSubscript:v19];
      v58[3] = v23;
      v57[4] = @"overMedian";
      v24 = [v49 objectAtIndexedSubscript:v19];
      [v24 doubleValue];
      v26 = v25;
      [v42 doubleValue];
      v28 = [NSNumber numberWithInt:v26 > v27];
      v58[4] = v28;
      v57[5] = @"over20Min";
      v29 = [v49 objectAtIndexedSubscript:v19];
      [v29 doubleValue];
      v31 = [NSNumber numberWithInt:v30 > 1200.0];
      v58[5] = v31;
      v32 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:6];
      [v41 addObject:v32];

      v33 = [v49 objectAtIndexedSubscript:v19];
      [v33 doubleValue];
      v35 = v34;

      if (v35 > v20)
      {
        v36 = [v49 objectAtIndexedSubscript:v19];
        [v36 doubleValue];
        v20 = v37;
      }

      ++v19;
      v18 = v47;
    }

    while (v19 < [v47 count]);
  }

  else
  {
    v20 = 0.0;
  }

  v56[0] = v41;
  v55[0] = @"durationArray";
  v55[1] = @"maxDuration";
  v38 = [NSNumber numberWithDouble:v20];
  v56[1] = v38;
  v39 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:2];

  return v39;
}

+ (id)deriveCompositeScoreForDays:(id)a3 forScreentimeDurations:(id)a4 forMotionAndWorkoutBundles:(id)a5 forEngagement:(id)a6 withCalendar:(id)a7 withMaxScreentimeDuration:(double)a8 withMinNumDaysWithScreentimeThreshold:(double)a9 withOverallActivityThreshold:(double)a10 withMinNumObservationsThreshold:(double)a11 withMinActiveHoursThreshold:(double)a12 error:(id *)a13
{
  v21 = a3;
  v70 = a4;
  v69 = a5;
  v68 = a6;
  v74 = a7;
  if (a13)
  {
    *a13 = 0;
  }

  v62 = a13;
  v71 = +[NSMutableArray array];
  v72 = +[NSMutableDictionary dictionary];
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  obj = v21;
  v65 = [obj countByEnumeratingWithState:&v81 objects:v93 count:16];
  if (v65)
  {
    v67 = 0;
    v64 = *v82;
    do
    {
      for (i = 0; i != v65; i = i + 1)
      {
        if (*v82 != v64)
        {
          objc_enumerationMutation(obj);
        }

        v22 = 0;
        v73 = *(*(&v81 + 1) + 8 * i);
        do
        {
          v75 = objc_alloc_init(NSDateComponents);
          [v75 setHour:v22];
          v23 = [v74 dateByAddingUnit:32 value:v22 toDate:v73 options:0];
          v24 = [v74 dateByAddingUnit:32 value:1 toDate:v23 options:0];
          v25 = [NSPredicate predicateWithFormat:@"(%K < %@) AND (%K > %@)", @"startDate", v24, @"endDate", v23];
          v26 = [v70 filteredArrayUsingPredicate:v25];
          v27 = [v69 filteredArrayUsingPredicate:v25];
          v28 = [v68 filteredArrayUsingPredicate:v25];
          v29 = [v26 firstObject];
          v30 = [v29 objectForKeyedSubscript:@"duration"];
          [v30 doubleValue];
          v32 = v31;
          if ([v27 count])
          {
            v33 = 1.0;
          }

          else
          {
            v33 = 0.0;
          }

          if ([v28 count])
          {
            v34 = 1.0;
          }

          else
          {
            v34 = 0.0;
          }

          v35 = v32 / a8 + v33 + v34;
          if (v35 > 0.0)
          {
            v36 = [NSNumber numberWithInt:v22];
            v37 = [v72 objectForKeyedSubscript:v36];

            if (v37)
            {
              v38 = [v37 unsignedIntegerValue] + 1;
            }

            else
            {
              v38 = 1;
            }

            v39 = [NSNumber numberWithUnsignedInteger:v38];
            v40 = [NSNumber numberWithInt:v22];
            [v72 setObject:v39 forKeyedSubscript:v40];

            ++v67;
          }

          v92[0] = v23;
          v91[0] = @"startDate";
          v91[1] = @"hour";
          v41 = [NSNumber numberWithInt:v22];
          v92[1] = v41;
          v91[2] = @"compositeScore";
          v42 = [NSNumber numberWithDouble:v35];
          v92[2] = v42;
          v43 = [NSDictionary dictionaryWithObjects:v92 forKeys:v91 count:3];

          [v71 addObject:v43];
          ++v22;
        }

        while (v22 != 24);
      }

      v65 = [obj countByEnumeratingWithState:&v81 objects:v93 count:16];
    }

    while (v65);
    v44 = v67;
  }

  else
  {
    v44 = 0.0;
  }

  v77 = 0;
  v78 = &v77;
  v79 = 0x2020000000;
  v80 = 0;
  v76[0] = _NSConcreteStackBlock;
  v76[1] = 3221225472;
  v76[2] = __296__MODowntimeDetectionUtilities_deriveCompositeScoreForDays_forScreentimeDurations_forMotionAndWorkoutBundles_forEngagement_withCalendar_withMaxScreentimeDuration_withMinNumDaysWithScreentimeThreshold_withOverallActivityThreshold_withMinNumObservationsThreshold_withMinActiveHoursThreshold_error___block_invoke;
  v76[3] = &unk_10033DD38;
  *&v76[5] = a11;
  v76[4] = &v77;
  [v72 enumerateKeysAndObjectsUsingBlock:v76];
  v45 = v78[3];
  v46 = a10 * 24.0 * a9;
  v47 = v46 >= v44 || v45 <= a12;
  v48 = v62;
  if (v47)
  {
    if (v46 < v44 && v45 <= a12)
    {
      v54 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        +[MODowntimeDetectionUtilities deriveCompositeScoreForDays:forScreentimeDurations:forMotionAndWorkoutBundles:forEngagement:withCalendar:withMaxScreentimeDuration:withMinNumDaysWithScreentimeThreshold:withOverallActivityThreshold:withMinNumObservationsThreshold:withMinActiveHoursThreshold:error:];
        v48 = v62;
      }

      if (v48)
      {
        v89 = NSLocalizedDescriptionKey;
        v90 = @"DT: Did not observe sufficent amount of active hours across days";
        v55 = [NSDictionary dictionaryWithObjects:&v90 forKeys:&v89 count:1];
        *v62 = [NSError errorWithDomain:@"MOErrorDomain" code:25 userInfo:v55];
      }
    }

    else if (v46 < v44 || v45 <= a12)
    {
      v51 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        +[MODowntimeDetectionUtilities deriveCompositeScoreForDays:forScreentimeDurations:forMotionAndWorkoutBundles:forEngagement:withCalendar:withMaxScreentimeDuration:withMinNumDaysWithScreentimeThreshold:withOverallActivityThreshold:withMinNumObservationsThreshold:withMinActiveHoursThreshold:error:];
        v48 = v62;
      }

      if (v48)
      {
        v85 = NSLocalizedDescriptionKey;
        v86 = @"DT: Both checks failed for deriving composite score";
        v52 = [NSDictionary dictionaryWithObjects:&v86 forKeys:&v85 count:1];
        *v62 = [NSError errorWithDomain:@"MOErrorDomain" code:27 userInfo:v52];
      }
    }

    else
    {
      v56 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        +[MODowntimeDetectionUtilities deriveCompositeScoreForDays:forScreentimeDurations:forMotionAndWorkoutBundles:forEngagement:withCalendar:withMaxScreentimeDuration:withMinNumDaysWithScreentimeThreshold:withOverallActivityThreshold:withMinNumObservationsThreshold:withMinActiveHoursThreshold:error:];
        v48 = v62;
      }

      if (v48)
      {
        v87 = NSLocalizedDescriptionKey;
        v88 = @"DT: Overall activity not sufficient for downtime detection";
        v58 = [NSDictionary dictionaryWithObjects:&v88 forKeys:&v87 count:1];
        *v62 = [NSError errorWithDomain:@"MOErrorDomain" code:26 userInfo:v58];
      }
    }

    v53 = 0;
  }

  else
  {
    v53 = v71;
  }

  _Block_object_dispose(&v77, 8);

  return v53;
}

id __296__MODowntimeDetectionUtilities_deriveCompositeScoreForDays_forScreentimeDurations_forMotionAndWorkoutBundles_forEngagement_withCalendar_withMaxScreentimeDuration_withMinNumDaysWithScreentimeThreshold_withOverallActivityThreshold_withMinNumObservationsThreshold_withMinActiveHoursThreshold_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 unsignedIntegerValue];
  if (*(a1 + 40) <= result)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

+ (id)calculateStatsPerHour:(id)a3 withTrimFraction:(double)a4
{
  v5 = a3;
  v6 = +[NSMutableDictionary dictionary];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v40 objects:v51 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v41;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v40 + 1) + 8 * i);
        v12 = [v11 objectForKeyedSubscript:@"hour"];
        v13 = [v11 objectForKeyedSubscript:@"compositeScore"];
        v14 = [v6 objectForKeyedSubscript:v12];
        if (!v14)
        {
          v14 = +[NSMutableArray array];
          [v6 setObject:v14 forKeyedSubscript:v12];
        }

        [v14 addObject:v13];
      }

      v8 = [obj countByEnumeratingWithState:&v40 objects:v51 count:16];
    }

    while (v8);
  }

  v35 = +[NSMutableDictionary dictionary];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v32 = [v6 allKeys];
  v15 = [v32 countByEnumeratingWithState:&v36 objects:v50 count:16];
  if (v15)
  {
    v17 = v15;
    v34 = *v37;
    *&v16 = 67109120;
    v31 = v16;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v37 != v34)
        {
          objc_enumerationMutation(v32);
        }

        v19 = *(*(&v36 + 1) + 8 * j);
        v20 = [v6 objectForKeyedSubscript:{v19, v31}];
        v21 = [v20 sortedArrayUsingSelector:"compare:"];
        v22 = [v21 count];
        if (v22)
        {
          v23 = vcvtmd_u64_f64(v22 * a4);
          v24 = [v21 subarrayWithRange:{v23, &v22[-2 * v23]}];
          if (v24)
          {
            v46 = @"trimmedMean";
            v25 = [MOPromptMetrics meanOf:v24];
            v47 = v25;
            v26 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
            [v35 setObject:v26 forKeyedSubscript:v19];
          }

          else
          {
            v44 = @"trimmedMean";
            v27 = [MOPromptMetrics medianOf:v21];
            v45 = v27;
            v28 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
            [v35 setObject:v28 forKeyedSubscript:v19];

            v25 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              *buf = v31;
              v49 = v19;
              _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "[APM] downtime detection: not enough number of items left in composite score array for trimmed mean calculation, defaulting to median for hour %d", buf, 8u);
            }
          }
        }

        else
        {
          [v35 setObject:&off_10036EB30 forKeyedSubscript:v19];
          v24 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            *buf = v31;
            v49 = v19;
            _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "[APM] downtime detection: no items in composite score array, defaulting to 0 for hour %d", buf, 8u);
          }
        }
      }

      v17 = [v32 countByEnumeratingWithState:&v36 objects:v50 count:16];
    }

    while (v17);
  }

  v29 = [v35 copy];

  return v29;
}

+ (id)findDowntimeWindow:(id)a3 maxWindowLength:(double)a4 minWindowLength:(double)a5 withWindowActivityRatioMax:(double)a6 error:(id *)a7
{
  v11 = a3;
  if (a7)
  {
    *a7 = 0;
  }

  v12 = +[NSMutableArray array];
  v13 = 0;
  do
  {
    v14 = [NSNumber numberWithInt:v13];
    v15 = [v11 objectForKeyedSubscript:v14];
    v16 = [v15 objectForKeyedSubscript:@"trimmedMean"];
    [v12 addObject:v16];

    v13 = (v13 + 1);
  }

  while (v13 != 24);
  v43 = v11;
  v17 = a5;
  if (v17 <= a4)
  {
    v21 = a5;
    v20 = -1;
    v19 = INFINITY;
    v18 = -1;
    v46 = v12;
    do
    {
      v22 = 0;
      v44 = v21;
      do
      {
        v45 = v18;
        v23 = [NSMutableArray arrayWithCapacity:v21, v17];
        v24 = v22;
        v25 = v21;
        if (v21 >= 1)
        {
          do
          {
            v26 = [NSNumber numberWithInt:v24 % 0x18];
            [v23 addObject:v26];

            ++v24;
            --v25;
          }

          while (v25);
        }

        [a1 calculateMeanWithIndices:v23 forArray:v12];
        v28 = v27;
        v29 = +[NSMutableArray array];
        v30 = [NSSet setWithArray:v23];
        v31 = 0;
        do
        {
          v32 = [NSNumber numberWithInt:v31];
          if (([v30 containsObject:v32] & 1) == 0)
          {
            [v29 addObject:v32];
          }

          v31 = (v31 + 1);
        }

        while (v31 != 24);
        [a1 calculateMeanWithIndices:v29 forArray:v46];
        v34 = 1.0;
        v21 = v44;
        if (v33 > 0.0)
        {
          v34 = round(v28 / v33 * 100000.0) / 100000.0;
        }

        v35 = v34 > v19;
        if (v34 <= v19)
        {
          v19 = v34;
        }

        v18 = v45;
        if (!v35)
        {
          v18 = v44;
          v20 = v22;
        }

        ++v22;
        v12 = v46;
      }

      while (v22 != 24);
      v21 = v44 + 1;
      v17 = (v44 + 1);
    }

    while (v17 <= a4);
  }

  else
  {
    v18 = -1;
    v19 = INFINITY;
    v20 = -1;
  }

  if (v19 < a6)
  {
    v50[0] = @"downtimeWindowStartHour";
    v36 = [NSNumber numberWithInteger:v20, v17];
    v51[0] = v36;
    v50[1] = @"downtimeWindowEndHour";
    v37 = [NSNumber numberWithDouble:((v20 + v18) % 24)];
    v51[1] = v37;
    v50[2] = @"downtimeWindowLength";
    v38 = [NSNumber numberWithInteger:v18];
    v51[2] = v38;
    v39 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:3];

LABEL_29:
    goto LABEL_30;
  }

  v40 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    +[MODowntimeDetectionUtilities findDowntimeWindow:maxWindowLength:minWindowLength:withWindowActivityRatioMax:error:];
  }

  if (v42)
  {
    v48 = NSLocalizedDescriptionKey;
    v49 = @"DT: Ratio of activity in the window to outside is not sufficient";
    v36 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    [NSError errorWithDomain:@"MOErrorDomain" code:28 userInfo:v36];
    *v42 = v39 = 0;
    goto LABEL_29;
  }

  v39 = 0;
LABEL_30:

  return v39;
}

+ (double)calculateMeanWithIndices:(id)a3 forArray:(id)a4
{
  v5 = a3;
  v6 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = [v6 objectAtIndexedSubscript:{objc_msgSend(*(*(&v16 + 1) + 8 * i), "integerValue")}];
        [v12 doubleValue];
        v10 = v10 + v13;
      }

      v8 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  v14 = [v5 count];

  return v10 / v14;
}

@end