@interface _OSLastLockFeatureFactory
+ (id)activityFeatureValueWithName:(id)a3 atDate:(id)a4 withUserPresenceHistory:(id)a5 withContext:(id)a6;
+ (id)handleSpecialHistoryAgnosticFeaturesWithName:(id)a3 atDate:(id)a4 withContext:(id)a5;
+ (id)inputFeaturesWithNames:(id)a3 atDate:(id)a4 withIntervalHistory:(id)a5 withContext:(id)a6;
+ (void)initialize;
@end

@implementation _OSLastLockFeatureFactory

+ (void)initialize
{
  qword_1000B6A38 = os_log_create("com.apple.osintelligence", "lastlock.featurefactory");

  _objc_release_x1();
}

+ (id)inputFeaturesWithNames:(id)a3 atDate:(id)a4 withIntervalHistory:(id)a5 withContext:(id)a6
{
  v10 = a3;
  v27 = a4;
  v11 = a5;
  v26 = a6;
  v12 = +[NSMutableDictionary dictionary];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v10;
  v13 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v13)
  {
    v15 = v13;
    v16 = *v31;
    *&v14 = 138412290;
    v25 = v14;
    do
    {
      v17 = 0;
      do
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v30 + 1) + 8 * v17);
        v19 = objc_autoreleasePoolPush();
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ([a1 activityFeatureValueWithName:v18 atDate:v27 withUserPresenceHistory:v11 withContext:v26], (v20 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v21 = qword_1000B6A38;
          if (os_log_type_enabled(qword_1000B6A38, OS_LOG_TYPE_ERROR))
          {
            *buf = v25;
            v35 = v18;
            _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Feature value for %@ is nil! Default to 0", buf, 0xCu);
          }

          v20 = 0;
        }

        [v12 setObject:v20 forKeyedSubscript:{v18, v25}];

        objc_autoreleasePoolPop(v19);
        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v15);
  }

  v29 = 0;
  v22 = [[MLDictionaryFeatureProvider alloc] initWithDictionary:v12 error:&v29];
  v23 = v29;
  if (v23 && os_log_type_enabled(qword_1000B6A38, OS_LOG_TYPE_ERROR))
  {
    sub_10005BE04();
  }

  return v22;
}

+ (id)activityFeatureValueWithName:(id)a3 atDate:(id)a4 withUserPresenceHistory:(id)a5 withContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v60 = a5;
  v12 = a6;
  if (v10)
  {
    if (v11)
    {
      v13 = [a1 handleSpecialHistoryAgnosticFeaturesWithName:v10 atDate:v11 withContext:v12];
      v14 = v13;
      v15 = v60;
      if (v13)
      {
        v16 = v13;
LABEL_58:

        goto LABEL_59;
      }

      if (!v60)
      {
        if (os_log_type_enabled(qword_1000B6A38, OS_LOG_TYPE_ERROR))
        {
          sub_10005BEEC();
        }

        v16 = 0;
        goto LABEL_58;
      }

      v17 = [OSIntelligenceUtilities parseStrataTypeFromFeatureName:v10];
      v18 = [v60 oldestIntervalInHistory];
      v19 = [v18 startDate];
      v20 = [OSIntelligenceUtilities datewiseDistanceBetweenDate:v11 andDate:v19];

      v54 = v17;
      v21 = [OSIntelligenceUtilities getDailyAnchorsForDate:v11 whichStrata:v17 withNrDaysHistory:v20];
      if ([v10 containsString:@"dur_til_act"])
      {
        v22 = v11;
        v53 = v10;
        v23 = objc_opt_new();
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v55 = v21;
        obj = v21;
        v24 = [obj countByEnumeratingWithState:&v66 objects:v71 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v67;
          do
          {
            for (i = 0; i != v25; i = i + 1)
            {
              if (*v67 != v26)
              {
                objc_enumerationMutation(obj);
              }

              v28 = *(*(&v66 + 1) + 8 * i);
              v29 = [OSIntelligenceUtilities datewiseDistanceBetweenDate:v22 andDate:v28];
              [v60 recommendedDecayDegree];
              [OSIntelligenceUtilities exponentialDecayByDateDistance:v29 withDegree:?];
              v31 = v30;
              [v60 hoursUntilNextActivityAtDate:v28];
              v33 = [NSNumber numberWithDouble:v31 * v32];
              [v23 addObject:v33];
            }

            v25 = [obj countByEnumeratingWithState:&v66 objects:v71 count:16];
          }

          while (v25);
        }

        v10 = v53;
        v34 = [OSIntelligenceUtilities extractPercentileOrQuantileNumberIfAnyFromFeatureName:v53];
        v35 = v34;
        if (v34)
        {
          [v34 doubleValue];
          [OSIntelligenceUtilities qthPercentileOf:v23 withQ:?];
          v16 = [NSNumber numberWithDouble:?];
LABEL_27:

          v11 = v22;
          v15 = v60;
          v21 = v55;
          v14 = 0;
LABEL_57:

          goto LABEL_58;
        }

        if ([v53 containsString:@"std"])
        {
          [OSIntelligenceUtilities standardDeviationOf:v23];
          v16 = [NSNumber numberWithDouble:?];
          goto LABEL_27;
        }

        v11 = v22;
        v15 = v60;
        v21 = v55;
        v14 = 0;
      }

      v65 = 0;
      if ([OSIntelligenceUtilities extractLeftWatershed:&v65 + 4 andRight:&v65 fromFeatureName:v10])
      {
        p_cache = &OBJC_METACLASS___OSInactivityPredictionService.cache;
        v57 = v14;
        v58 = v12;
        v37 = v10;
        v38 = [v15 getPastSliceTimewiseNearDate:v11 whichStrata:v54 earlyBoundaryInSeconds:1 laterBoundaryInSeconds:(60 * HIDWORD(v65)) clipIntervals:(60 * v65)];
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v56 = v21;
        v39 = v21;
        v40 = [v39 countByEnumeratingWithState:&v61 objects:v70 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = *v62;
          v43 = 0.0;
          do
          {
            for (j = 0; j != v41; j = j + 1)
            {
              if (*v62 != v42)
              {
                objc_enumerationMutation(v39);
              }

              v45 = (v65 - HIDWORD(v65)) / 60.0;
              v46 = [p_cache + 433 datewiseDistanceBetweenDate:v11 andDate:*(*(&v61 + 1) + 8 * j)];
              [v15 recommendedDecayDegree];
              p_cache = (&OBJC_METACLASS___OSInactivityPredictionService + 16);
              [OSIntelligenceUtilities exponentialDecayByDateDistance:v46 withDegree:?];
              v43 = v43 + v45 * v47;
            }

            v41 = [v39 countByEnumeratingWithState:&v61 objects:v70 count:16];
          }

          while (v41);
        }

        else
        {
          v43 = 0.0;
        }

        v10 = v37;
        v12 = v58;
        if ([v37 containsString:@"dur"])
        {
          [v15 recommendedDecayDegree];
          [p_cache + 433 sumIntervalsWithDateDecay:v38 fromDate:v11 withDecayDegree:?];
          v49 = v48 / 3600.0;
          if ([v37 hasSuffix:@"act"])
          {
LABEL_45:
            v51 = v49;
LABEL_52:
            v16 = [NSNumber numberWithDouble:v51];
            v21 = v56;
            v14 = v57;

            goto LABEL_57;
          }

          if ([v37 hasSuffix:@"r8"])
          {
LABEL_47:
            v51 = v49 / v43;
            if (v43 == 0.0)
            {
              v51 = 0.0;
            }

            goto LABEL_52;
          }

          if ([v37 hasSuffix:@"cons"])
          {
            goto LABEL_51;
          }
        }

        if ([v37 containsString:@"cnt"])
        {
          [v15 recommendedDecayDegree];
          [p_cache + 433 countIntervalsWithDateDecay:v38 fromDate:v11 withDecayDegree:?];
          v49 = v50;
          if ([v37 hasSuffix:@"act"])
          {
            goto LABEL_45;
          }

          if ([v37 hasSuffix:@"r8"])
          {
            goto LABEL_47;
          }

          if ([v37 hasSuffix:@"hrs"])
          {
LABEL_51:
            v51 = v43;
            goto LABEL_52;
          }
        }

        v21 = v56;
        v14 = v57;
      }

      if (os_log_type_enabled(qword_1000B6A38, OS_LOG_TYPE_ERROR))
      {
        sub_10005BE78();
      }

      v16 = 0;
      goto LABEL_57;
    }

    v15 = v60;
    if (os_log_type_enabled(qword_1000B6A38, OS_LOG_TYPE_ERROR))
    {
      sub_10005AA74();
    }

    v16 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_1000B6A38, OS_LOG_TYPE_ERROR))
    {
      sub_10005AAB0();
    }

    v16 = 0;
    v15 = v60;
  }

LABEL_59:

  return v16;
}

+ (id)handleSpecialHistoryAgnosticFeaturesWithName:(id)a3 atDate:(id)a4 withContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v7)
  {
    if (v9)
    {
      v11 = [v9 objectForKey:v7];

      if (v11)
      {
        v12 = [v10 objectForKey:v7];
LABEL_11:
        v13 = v12;
        goto LABEL_13;
      }
    }

    if ([v7 isEqualToString:@"time_of_day"])
    {
      [OSIntelligenceUtilities timeOfDayWithDate:v8];
      v12 = [NSNumber numberWithDouble:?];
      goto LABEL_11;
    }

    if ([v7 isEqualToString:@"day_of_week"])
    {
      v12 = [NSNumber numberWithInt:[OSIntelligenceUtilities pandasWeekdayOf:v8]];
      goto LABEL_11;
    }
  }

  else if (os_log_type_enabled(qword_1000B6A38, OS_LOG_TYPE_ERROR))
  {
    sub_10005AAB0();
  }

  v13 = 0;
LABEL_13:

  return v13;
}

@end