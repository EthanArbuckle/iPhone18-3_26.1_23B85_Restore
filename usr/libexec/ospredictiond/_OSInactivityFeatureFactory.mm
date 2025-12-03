@interface _OSInactivityFeatureFactory
+ (BOOL)extractLeftWatershed:(int *)watershed andRight:(int *)right fromFeatureName:(id)name;
+ (id)activityFeatureValueWithName:(id)name atDate:(id)date withActivityHistory:(id)history withContext:(id)context;
+ (id)filterInactiveEvents:(id)events beforeDate:(id)date whichHistorySubset:(id)subset withHourBinWidth:(unint64_t)width;
+ (id)filteredDurationsFromIntervals:(id)intervals beforeDate:(id)date whichHistorySubset:(id)subset withBinWidth:(unint64_t)width;
+ (id)handleSpecialHistoryAgnosticFeaturesWithName:(id)name atDate:(id)date withContext:(id)context;
+ (id)inputFeaturesWithNames:(id)names atDate:(id)date withIntervalHistory:(id)history withContext:(id)context;
+ (id)lockFeatureValueWithName:(id)name atDate:(id)date withLockHistory:(id)history withContext:(id)context;
+ (id)lockedEventsFromDataSourceUpToDate:(id)date;
+ (int)suffixNumberFromFeatureName:(id)name;
+ (void)initialize;
@end

@implementation _OSInactivityFeatureFactory

+ (void)initialize
{
  qword_1000B6980 = os_log_create("com.apple.osintelligence", "inactivity.featurefactory");

  _objc_release_x1();
}

+ (id)inputFeaturesWithNames:(id)names atDate:(id)date withIntervalHistory:(id)history withContext:(id)context
{
  namesCopy = names;
  dateCopy = date;
  historyCopy = history;
  contextCopy = context;
  v12 = +[NSMutableDictionary dictionary];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = namesCopy;
  v13 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v13)
  {
    v15 = v13;
    v16 = *v32;
    *&v14 = 138412290;
    v26 = v14;
    do
    {
      v17 = 0;
      do
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v31 + 1) + 8 * v17);
        v19 = objc_autoreleasePoolPush();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = [self lockFeatureValueWithName:v18 atDate:dateCopy withLockHistory:historyCopy withContext:contextCopy];
          goto LABEL_10;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = [self activityFeatureValueWithName:v18 atDate:dateCopy withActivityHistory:historyCopy withContext:contextCopy];
LABEL_10:
          v21 = v20;
          if (v20)
          {
            goto LABEL_14;
          }
        }

        v22 = qword_1000B6980;
        if (os_log_type_enabled(qword_1000B6980, OS_LOG_TYPE_ERROR))
        {
          *buf = v26;
          v36 = v18;
          _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Feature value for %@ is nil! Default to 0", buf, 0xCu);
        }

        v21 = 0;
LABEL_14:
        [v12 setObject:v21 forKeyedSubscript:{v18, v26}];

        objc_autoreleasePoolPop(v19);
        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v15);
  }

  v30 = 0;
  v23 = [[MLDictionaryFeatureProvider alloc] initWithDictionary:v12 error:&v30];
  v24 = v30;
  if (v24 && os_log_type_enabled(qword_1000B6980, OS_LOG_TYPE_ERROR))
  {
    sub_10005A958();
  }

  return v23;
}

+ (id)lockFeatureValueWithName:(id)name atDate:(id)date withLockHistory:(id)history withContext:(id)context
{
  nameCopy = name;
  dateCopy = date;
  historyCopy = history;
  contextCopy = context;
  if (!nameCopy)
  {
    if (os_log_type_enabled(qword_1000B6980, OS_LOG_TYPE_ERROR))
    {
      sub_10005AAB0();
    }

    goto LABEL_9;
  }

  if (!dateCopy)
  {
    if (os_log_type_enabled(qword_1000B6980, OS_LOG_TYPE_ERROR))
    {
      sub_10005AA74();
    }

LABEL_9:
    v16 = 0;
    goto LABEL_33;
  }

  v14 = [self handleSpecialHistoryAgnosticFeaturesWithName:nameCopy atDate:dateCopy withContext:contextCopy];
  v15 = v14;
  if (!v14)
  {
    if (!historyCopy || ([historyCopy allIntervalsSortByStartAsc], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "count"), v17, !v18))
    {
      if (os_log_type_enabled(qword_1000B6980, OS_LOG_TYPE_ERROR))
      {
        sub_10005AA38();
      }

      v16 = 0;
      goto LABEL_32;
    }

    v19 = @"overlap";
    if ([nameCopy containsString:@"overlap"])
    {
      v20 = 0;
    }

    else
    {
      v19 = [OSIntelligenceUtilities prefixStringFromFeatureName:nameCopy];
      v20 = [self suffixNumberFromFeatureName:nameCopy];
    }

    v21 = [historyCopy getAllLockIntervalsEndingBefore:dateCopy];
    v22 = [self filteredDurationsFromIntervals:v21 beforeDate:dateCopy whichHistorySubset:v19 withBinWidth:v20];

    v23 = [OSIntelligenceUtilities extractPercentileOrQuantileNumberIfAnyFromFeatureName:nameCopy];
    v24 = v23;
    if (v23)
    {
      [v23 doubleValue];
      [OSIntelligenceUtilities qthPercentileOf:v22 withQ:?];
    }

    else if ([nameCopy containsString:@"dur_std"])
    {
      [OSIntelligenceUtilities standardDeviationOf:v22];
    }

    else if ([nameCopy containsString:@"dur_avg"])
    {
      [OSIntelligenceUtilities meanOf:v22];
    }

    else if ([nameCopy containsString:@"dur_med"])
    {
      [OSIntelligenceUtilities medianOf:v22];
    }

    else if ([nameCopy containsString:@"dur_mad"])
    {
      [OSIntelligenceUtilities meanAbsoluteDeviationOf:v22];
    }

    else
    {
      if (![nameCopy containsString:@"long_percent"])
      {
        if (os_log_type_enabled(qword_1000B6980, OS_LOG_TYPE_ERROR))
        {
          sub_10005A9C8();
        }

        v16 = 0;
        goto LABEL_31;
      }

      [OSIntelligenceUtilities percentOfLongDurationsIn:v22 withLongThreshold:10800.0];
    }

    v16 = [NSNumber numberWithDouble:?];
LABEL_31:

    goto LABEL_32;
  }

  v16 = v14;
LABEL_32:

LABEL_33:

  return v16;
}

+ (id)activityFeatureValueWithName:(id)name atDate:(id)date withActivityHistory:(id)history withContext:(id)context
{
  nameCopy = name;
  dateCopy = date;
  historyCopy = history;
  contextCopy = context;
  if (!nameCopy)
  {
    if (os_log_type_enabled(qword_1000B6980, OS_LOG_TYPE_ERROR))
    {
      sub_10005AAB0();
    }

    goto LABEL_9;
  }

  if (!dateCopy)
  {
    if (os_log_type_enabled(qword_1000B6980, OS_LOG_TYPE_ERROR))
    {
      sub_10005AA74();
    }

LABEL_9:
    v16 = 0;
    goto LABEL_52;
  }

  v14 = [self handleSpecialHistoryAgnosticFeaturesWithName:nameCopy atDate:dateCopy withContext:contextCopy];
  v15 = v14;
  if (!v14)
  {
    if (!historyCopy)
    {
      if (os_log_type_enabled(qword_1000B6980, OS_LOG_TYPE_ERROR))
      {
        sub_10005AAEC();
      }

      v16 = 0;
      goto LABEL_51;
    }

    v17 = [OSIntelligenceUtilities parseStrataTypeFromFeatureName:nameCopy];
    oldestIntervalInHistory = [historyCopy oldestIntervalInHistory];
    startDate = [oldestIntervalInHistory startDate];
    v20 = [OSIntelligenceUtilities datewiseDistanceBetweenDate:dateCopy andDate:startDate];

    v21 = [OSIntelligenceUtilities getDailyAnchorsForDate:dateCopy whichStrata:v17 withNrDaysHistory:v20];
    if ([nameCopy containsString:@"dur_til_act"])
    {
      v22 = [historyCopy historicalTimesUntilNextActivityAtDate:dateCopy whichStrata:v17 useDecay:1];
      v23 = [OSIntelligenceUtilities extractPercentileOrQuantileNumberIfAnyFromFeatureName:nameCopy];
      v24 = v23;
      if (v23)
      {
        [v23 doubleValue];
        [OSIntelligenceUtilities qthPercentileOf:v22 withQ:?];
LABEL_19:
        v16 = [NSNumber numberWithDouble:?];

        v15 = 0;
LABEL_50:

        goto LABEL_51;
      }

      if ([nameCopy containsString:@"std"])
      {
        [OSIntelligenceUtilities standardDeviationOf:v22];
        goto LABEL_19;
      }

      v15 = 0;
    }

    v50 = 0;
    if ([OSIntelligenceUtilities extractLeftWatershed:&v50 + 4 andRight:&v50 fromFeatureName:nameCopy])
    {
      v43 = v15;
      v44 = contextCopy;
      v42 = [historyCopy getPastSliceTimewiseNearDate:dateCopy whichStrata:v17 earlyBoundaryInSeconds:1 laterBoundaryInSeconds:(60 * HIDWORD(v50)) clipIntervals:(60 * v50)];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v45 = v21;
      v25 = v21;
      v26 = [v25 countByEnumeratingWithState:&v46 objects:v51 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v47;
        v29 = 0.0;
        do
        {
          for (i = 0; i != v27; i = i + 1)
          {
            if (*v47 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v31 = (v50 - HIDWORD(v50)) / 60.0;
            v32 = [OSIntelligenceUtilities datewiseDistanceBetweenDate:dateCopy andDate:*(*(&v46 + 1) + 8 * i), v42];
            [historyCopy recommendedDecayDegree];
            [OSIntelligenceUtilities exponentialDecayByDateDistance:v32 withDegree:?];
            v29 = v29 + v31 * v33;
          }

          v27 = [v25 countByEnumeratingWithState:&v46 objects:v51 count:16];
        }

        while (v27);
      }

      else
      {
        v29 = 0.0;
      }

      v15 = v43;
      contextCopy = v44;
      v34 = v42;
      if ([nameCopy containsString:@"dur"])
      {
        [historyCopy recommendedDecayDegree];
        [OSIntelligenceUtilities sumIntervalsWithDateDecay:v42 fromDate:dateCopy withDecayDegree:?];
        v36 = v35 / 3600.0;
        if ([nameCopy hasSuffix:@"act"])
        {
          v37 = v36;
LABEL_37:
          v16 = [NSNumber numberWithDouble:v37, v42];
          v21 = v45;
LABEL_45:

          goto LABEL_50;
        }

        if ([nameCopy hasSuffix:@"r8"])
        {
          v37 = v36 / v29;
          if (v29 == 0.0)
          {
            v37 = 0.0;
          }

          goto LABEL_37;
        }
      }

      v21 = v45;
      if ([nameCopy containsString:{@"cnt", v42}])
      {
        [historyCopy recommendedDecayDegree];
        [OSIntelligenceUtilities countIntervalsWithDateDecay:v34 fromDate:dateCopy withDecayDegree:?];
        v39 = v38;
        if ([nameCopy hasSuffix:@"act"])
        {
          v40 = v39;
LABEL_44:
          v16 = [NSNumber numberWithDouble:v40];
          goto LABEL_45;
        }

        if ([nameCopy hasSuffix:@"r8"])
        {
          v40 = v39 / v29;
          if (v29 == 0.0)
          {
            v40 = 0.0;
          }

          goto LABEL_44;
        }
      }
    }

    if (os_log_type_enabled(qword_1000B6980, OS_LOG_TYPE_ERROR))
    {
      sub_10005A9C8();
    }

    v16 = 0;
    goto LABEL_50;
  }

  v16 = v14;
LABEL_51:

LABEL_52:

  return v16;
}

+ (id)handleSpecialHistoryAgnosticFeaturesWithName:(id)name atDate:(id)date withContext:(id)context
{
  nameCopy = name;
  dateCopy = date;
  contextCopy = context;
  v10 = contextCopy;
  if (nameCopy)
  {
    if (contextCopy)
    {
      v11 = [contextCopy objectForKey:nameCopy];

      if (v11)
      {
        v12 = [v10 objectForKey:nameCopy];
LABEL_7:
        v13 = v12;
        goto LABEL_11;
      }
    }

    if ([nameCopy isEqualToString:@"time_of_day"])
    {
      [OSIntelligenceUtilities timeOfDayWithDate:dateCopy];
      v12 = [NSNumber numberWithDouble:?];
      goto LABEL_7;
    }
  }

  else if (os_log_type_enabled(qword_1000B6980, OS_LOG_TYPE_ERROR))
  {
    sub_10005AAB0();
  }

  v13 = 0;
LABEL_11:

  return v13;
}

+ (id)filteredDurationsFromIntervals:(id)intervals beforeDate:(id)date whichHistorySubset:(id)subset withBinWidth:(unint64_t)width
{
  dateCopy = date;
  v11 = [self filterInactiveEvents:intervals beforeDate:dateCopy whichHistorySubset:subset withHourBinWidth:width];
  v12 = [OSIntelligenceUtilities dynamicDurationsFromEvents:v11 withAnchorDate:dateCopy withUnit:3600.0 cappedAt:50400.0];

  return v12;
}

+ (id)filterInactiveEvents:(id)events beforeDate:(id)date whichHistorySubset:(id)subset withHourBinWidth:(unint64_t)width
{
  eventsCopy = events;
  dateCopy = date;
  subsetCopy = subset;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10000C068;
  v30[3] = &unk_1000949F0;
  v12 = dateCopy;
  v31 = v12;
  v13 = [NSPredicate predicateWithBlock:v30];
  v14 = [eventsCopy filteredArrayUsingPredicate:v13];

  if ([subsetCopy isEqualToString:@"overlap"])
  {
    v15 = v14;
    goto LABEL_18;
  }

  v16 = [OSIntelligenceUtilities filterEventsSortedByStartDateAscending:eventsCopy startsBefore:v12 dynamicallyAroundDate:v12 withHourBinWidth:width];
  v17 = [NSMutableSet setWithArray:v14];
  [v17 addObjectsFromArray:v16];
  v18 = [NSSortDescriptor sortDescriptorWithKey:@"startDate" ascending:1];
  v32 = v18;
  v19 = [NSArray arrayWithObjects:&v32 count:1];
  v20 = [v17 sortedArrayUsingDescriptors:v19];

  if ([subsetCopy isEqualToString:@"all"])
  {
    v21 = v20;
  }

  else if ([subsetCopy isEqualToString:@"recent"])
  {
    v21 = [OSIntelligenceUtilities filterEvents:v20 isRecentForDate:v12 goingDaysBack:3 useEndDate:0];
  }

  else if ([subsetCopy isEqualToString:@"woo"])
  {
    v21 = [OSIntelligenceUtilities filterEvents:v20 withSameWorkOrOffStatusAs:v12];
  }

  else if ([subsetCopy isEqualToString:@"dow"])
  {
    v21 = [OSIntelligenceUtilities filterEvents:v20 startOnSameWeekdayAs:v12 withHourBinWidth:width];
  }

  else
  {
    if ([subsetCopy isEqualToString:@"eligible"])
    {
      v22 = 600.0;
    }

    else
    {
      if (![subsetCopy isEqualToString:@"long"])
      {
        if ([subsetCopy isEqualToString:@"startafter"])
        {
          v25 = _NSConcreteStackBlock;
          v26 = 3221225472;
          v27 = sub_10000C080;
          v28 = &unk_1000949F0;
          v29 = v12;
          v24 = [NSPredicate predicateWithBlock:&v25];
          v15 = [v20 filteredArrayUsingPredicate:{v24, v25, v26, v27, v28}];
        }

        else
        {
          if (os_log_type_enabled(qword_1000B6980, OS_LOG_TYPE_ERROR))
          {
            sub_10005AB28();
          }

          v15 = 0;
        }

        goto LABEL_17;
      }

      v22 = 7200.0;
    }

    v21 = [OSIntelligenceUtilities filterEvents:v20 withMinimumDuration:v22];
  }

  v15 = v21;
LABEL_17:

LABEL_18:

  return v15;
}

+ (id)lockedEventsFromDataSourceUpToDate:(id)date
{
  dateCopy = date;
  v4 = +[_OSLockHistory sharedInstance];
  v5 = [v4 getAllLockIntervalsEndingBefore:dateCopy];

  return v5;
}

+ (int)suffixNumberFromFeatureName:(id)name
{
  nameCopy = name;
  v12 = 0;
  v4 = [NSRegularExpression regularExpressionWithPattern:@"_(\\d+)$" options:16 error:&v12];
  v5 = v12;
  if (v5)
  {
    if (os_log_type_enabled(qword_1000B6980, OS_LOG_TYPE_ERROR))
    {
      sub_10005AB98();
    }

    intValue = 0;
  }

  else
  {
    v7 = [v4 firstMatchInString:nameCopy options:0 range:{0, objc_msgSend(nameCopy, "length")}];
    if ([v7 numberOfRanges] >= 2)
    {
      v8 = [v7 rangeAtIndex:1];
      v10 = [nameCopy substringWithRange:{v8, v9}];
      intValue = [v10 intValue];
    }

    else
    {
      intValue = 0;
    }
  }

  return intValue;
}

+ (BOOL)extractLeftWatershed:(int *)watershed andRight:(int *)right fromFeatureName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    v20 = 0;
    v8 = [NSRegularExpression regularExpressionWithPattern:@"\\((-?\\d+) options:(-?\\d+)\\)" error:0, &v20];
    v9 = v20;
    if (v9)
    {
      if (os_log_type_enabled(qword_1000B6980, OS_LOG_TYPE_ERROR))
      {
        sub_10005AC08();
      }

      v10 = 0;
    }

    else
    {
      v11 = [v8 firstMatchInString:nameCopy options:0 range:{0, objc_msgSend(nameCopy, "length")}];
      numberOfRanges = [v11 numberOfRanges];
      v10 = numberOfRanges > 2;
      if (numberOfRanges >= 3)
      {
        v13 = [v11 rangeAtIndex:1];
        v15 = [nameCopy substringWithRange:{v13, v14}];
        v16 = [v11 rangeAtIndex:2];
        v18 = [nameCopy substringWithRange:{v16, v17}];
        *watershed = [v15 intValue];
        *right = [v18 intValue];
      }
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1000B6980, OS_LOG_TYPE_ERROR))
    {
      sub_10005AC78();
    }

    v10 = 0;
  }

  return v10;
}

@end