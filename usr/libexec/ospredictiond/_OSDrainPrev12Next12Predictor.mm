@interface _OSDrainPrev12Next12Predictor
+ (id)sharedInstance;
- (_OSDrainPrev12Next12Predictor)init;
- (double)durationPerIntervalFromBatteryTimeStampData:(id)data;
- (double)meanHourDrainRateForQueryDate:(id)date fromArray:(id)array fromBatteryTimeStampData:(id)data;
- (double)meanOfRollingDrains:(id)drains overPastDays:(int64_t)days startingAtDate:(id)date endingAtDate:(id)atDate withDataSamplingInterval:(double)interval;
- (id)batteryLevelAndTimeFromFilePath:(id)path;
- (id)drainDataOverRollingWindowOfHours:(int64_t)hours fromBatteryTimeStampData:(id)data;
- (id)expandingSumFromArray:(id)array;
- (id)highDayDrainAroundCurrentDateWithError:(id *)error fromFilePath:(id)path;
- (id)sliceArray:(id)array overPastDays:(int64_t)days startingAtDate:(id)date endingAtDate:(id)atDate withDataSamplingInterval:(double)interval includeLastIndex:(BOOL)index;
- (int64_t)countBatteryDrainIn:(id)in moreThanEqualTo:(int64_t)to overPastDays:(int64_t)days startingAtDate:(id)date endingAtDate:(id)atDate withDataSamplingInterval:(double)interval;
- (int64_t)drainDataForStartTimestamp:(id)timestamp toEndTimestamp:(id)endTimestamp fromBatteryTimeStampData:(id)data netDrain:(BOOL)drain;
- (int64_t)netDrainFor:(id)for fromStartIndex:(int)index toEndIndex:(int)endIndex;
- (int64_t)percentileCategoryForBatteryDrain:(int64_t)drain inRollingDrainData:(id)data;
- (int64_t)percentileCategoryForBatteryDrain:(int64_t)drain withFirstQuartile:(id)quartile withSecondQuartile:(id)secondQuartile withThirdQuartile:(id)thirdQuartile;
- (int64_t)totalDrainFor:(id)for fromStartIndex:(int)index toEndIndex:(int)endIndex;
@end

@implementation _OSDrainPrev12Next12Predictor

- (_OSDrainPrev12Next12Predictor)init
{
  v9.receiver = self;
  v9.super_class = _OSDrainPrev12Next12Predictor;
  v2 = [(_OSDrainPrev12Next12Predictor *)&v9 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.osintelligence", "drainPrev12Next12Predictor");
    log = v2->_log;
    v2->_log = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.osintelligence.drainPrev12Next12Predictor.queue", v5);
    queue = v2->_queue;
    v2->_queue = v6;
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001AA58;
  block[3] = &unk_100094818;
  block[4] = self;
  if (qword_1000B6A30 != -1)
  {
    dispatch_once(&qword_1000B6A30, block);
  }

  v2 = qword_1000B6A28;

  return v2;
}

- (id)batteryLevelAndTimeFromFilePath:(id)path
{
  pathCopy = path;
  v5 = os_transaction_create();
  v6 = +[NSMutableArray array];
  v69 = +[NSMutableArray array];
  v66 = +[NSMutableDictionary dictionary];
  v7 = objc_autoreleasePoolPush();
  v8 = +[NSDate date];
  v9 = [NSDate dateWithTimeInterval:v8 sinceDate:-2678400.0];
  v10 = [NSPredicate predicateWithFormat:@"(subsystem == 'BatteryDataCollection' AND category == 'BDC_SBC' AND IsCharging==False)"];
  v11 = [NSSet setWithArray:&off_10009CC30];
  v65 = v9;
  v63 = v8;
  v12 = [[NSDateInterval alloc] initWithStartDate:v9 endDate:v8];
  v61 = v11;
  v62 = v10;
  v64 = [[PPSTimeSeriesRequest alloc] initWithMetrics:v11 predicate:v10 timeFilter:v12 limitCount:10000 offsetCount:0 readDirection:1];
  log = self->_log;
  v14 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
  v60 = v12;
  if (pathCopy)
  {
    v15 = v7;
    if (v14)
    {
      *buf = 138412290;
      v81 = pathCopy;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Getting PPS Data from filePath %@", buf, 0xCu);
    }

    v16 = [NSURL fileURLWithPath:pathCopy];
    v17 = [[PPSRequestDispatcher alloc] initWithFilepath:v16];
    v79 = 0;
    v18 = [v17 dataForRequest:v64 withError:&v79];
    v19 = v79;

    v7 = v15;
  }

  else
  {
    if (v14)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Getting PPS Data on-device", buf, 2u);
    }

    v78 = 0;
    v18 = PerfPowerServicesGetData();
    v19 = 0;
  }

  v20 = self->_log;
  if (v19)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10005BA58();
    }

LABEL_39:

    objc_autoreleasePoolPop(v7);
    v47 = 0;
    goto LABEL_40;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = v20;
    v22 = [v18 count];
    *buf = 134218498;
    v81 = v22;
    v82 = 2112;
    v83 = v65;
    v84 = 2112;
    v85 = v63;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "PPS Response is %lu objects for startDate %@, endDate %@", buf, 0x20u);
  }

  if (!v18 || ![v18 count])
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10005BACC();
    }

    goto LABEL_39;
  }

  context = v7;
  selfCopy = self;
  v58 = v5;
  v59 = pathCopy;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v18;
  v23 = [obj countByEnumeratingWithState:&v74 objects:v91 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v75;
    v68 = 1;
    do
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v75 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v74 + 1) + 8 * i);
        v28 = objc_autoreleasePoolPush();
        metricKeysAndValues = [v27 metricKeysAndValues];
        v30 = [metricKeysAndValues objectForKeyedSubscript:@"CurrentCapacity"];
        if (v30)
        {
          v31 = v30;
          v32 = [metricKeysAndValues objectForKeyedSubscript:@"CurrentCapacity"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            [v27 epochTimestamp];
            v34 = [NSDate dateWithTimeIntervalSince1970:?];
            if (v68)
            {
              v35 = [metricKeysAndValues objectForKeyedSubscript:@"CurrentCapacity"];
              [v66 setObject:v35 forKeyedSubscript:v65];
            }

            v36 = [metricKeysAndValues objectForKeyedSubscript:@"CurrentCapacity"];
            [v66 setObject:v36 forKeyedSubscript:v34];

            v68 = 0;
          }
        }

        objc_autoreleasePoolPop(v28);
      }

      v24 = [obj countByEnumeratingWithState:&v74 objects:v91 count:16];
    }

    while (v24);
  }

  objc_autoreleasePoolPop(context);
  v37 = [_OSITimeSeriesUtilities resampleTimeSeries:v66 withMaxDays:31 withFrequency:900.0];
  allKeys = [v37 allKeys];
  v39 = [allKeys sortedArrayUsingSelector:"compare:"];

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v40 = v39;
  v41 = [v40 countByEnumeratingWithState:&v70 objects:v90 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v71;
    do
    {
      for (j = 0; j != v42; j = j + 1)
      {
        if (*v71 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = *(*(&v70 + 1) + 8 * j);
        v46 = [v37 objectForKeyedSubscript:v45];
        [v6 addObject:v46];

        [v69 addObject:v45];
      }

      v42 = [v40 countByEnumeratingWithState:&v70 objects:v90 count:16];
    }

    while (v42);
  }

  v47 = +[NSMutableDictionary dictionary];
  [v47 setObject:v6 forKeyedSubscript:@"batteryLevels"];
  [v47 setObject:v69 forKeyedSubscript:@"timestamps"];
  v48 = selfCopy->_log;
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    v49 = v48;
    firstObject = [v69 firstObject];
    firstObject2 = [v6 firstObject];
    lastObject = [v69 lastObject];
    lastObject2 = [v6 lastObject];
    v54 = [v69 count];
    *buf = 138413314;
    v81 = firstObject;
    v82 = 2112;
    v83 = firstObject2;
    v84 = 2112;
    v85 = lastObject;
    v86 = 2112;
    v87 = lastObject2;
    v88 = 2048;
    v89 = v54;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "PPS Response first %@: %@, last %@: %@, total %ld", buf, 0x34u);
  }

  v5 = v58;
  pathCopy = v59;
LABEL_40:

  return v47;
}

- (int64_t)totalDrainFor:(id)for fromStartIndex:(int)index toEndIndex:(int)endIndex
{
  forCopy = for;
  v9 = forCopy;
  if (!forCopy || ![forCopy count])
  {
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  if (index < 0 || [v9 count] - 1 < index || (v13 = objc_msgSend(v9, "count"), endIndex < index) || (v13 - 1) < endIndex)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      endIndexCopy = endIndex;
      v23 = log;
      v24 = 134218496;
      indexCopy = index;
      v26 = 2048;
      v27 = endIndexCopy;
      v28 = 2048;
      v29 = [v9 count];
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Incorrect index: Start %ld, End %ld. Battery array count %ld", &v24, 0x20u);
    }

    goto LABEL_7;
  }

  v14 = [v9 objectAtIndexedSubscript:index];
  integerValue = [v14 integerValue];

  v16 = -integerValue;
  if (index >= endIndex)
  {
    v17 = 0;
  }

  else
  {
    v17 = 0;
    v18 = index + 1;
    v19 = integerValue;
    do
    {
      v20 = [v9 objectAtIndexedSubscript:v18];
      integerValue2 = [v20 integerValue];

      if (integerValue2 > v19)
      {
        v17 += integerValue + v16;
        integerValue = integerValue2;
      }

      v16 = -integerValue2;
      ++index;
      ++v18;
      v19 = integerValue2;
    }

    while (index < endIndex);
  }

  v11 = v16 + v17 + integerValue;
LABEL_8:

  return v11;
}

- (int64_t)netDrainFor:(id)for fromStartIndex:(int)index toEndIndex:(int)endIndex
{
  forCopy = for;
  v9 = forCopy;
  if (!forCopy || ![forCopy count])
  {
    goto LABEL_7;
  }

  if (index < 0 || [v9 count] - 1 < index || (v13 = objc_msgSend(v9, "count"), endIndex < index) || (v13 - 1) < endIndex)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      endIndexCopy = endIndex;
      v20 = log;
      v21 = 134218496;
      indexCopy = index;
      v23 = 2048;
      v24 = endIndexCopy;
      v25 = 2048;
      v26 = [v9 count];
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Incorrect index: Start %ld, End %ld. Battery array count %ld", &v21, 0x20u);
    }

    goto LABEL_7;
  }

  v14 = [v9 objectAtIndexedSubscript:index];
  integerValue = [v14 integerValue];

  if (index >= endIndex)
  {
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v11 = 0;
  v16 = index + 1;
  do
  {
    v17 = [v9 objectAtIndexedSubscript:v16];
    integerValue2 = [v17 integerValue];

    v11 = &integerValue[v11] - integerValue2;
    ++index;
    ++v16;
    integerValue = integerValue2;
  }

  while (index < endIndex);
LABEL_8:

  return v11;
}

- (int64_t)drainDataForStartTimestamp:(id)timestamp toEndTimestamp:(id)endTimestamp fromBatteryTimeStampData:(id)data netDrain:(BOOL)drain
{
  drainCopy = drain;
  timestampCopy = timestamp;
  endTimestampCopy = endTimestamp;
  dataCopy = data;
  v13 = dataCopy;
  if (dataCopy && [dataCopy count])
  {
    v14 = [v13 objectForKeyedSubscript:@"timestamps"];
    v15 = [v14 count];
    if ([v14 count])
    {
      v16 = 0;
      while (1)
      {
        v17 = [v14 objectAtIndexedSubscript:v16];
        [v17 timeIntervalSinceDate:timestampCopy];
        v19 = v18;

        if (v19 >= 0.0)
        {
          break;
        }

        if ([v14 count] <= ++v16)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v16 = 0;
    }

    if ([v14 count])
    {
      v20 = 0;
      while (1)
      {
        v21 = [v14 objectAtIndexedSubscript:v20];
        [v21 timeIntervalSinceDate:endTimestampCopy];
        v23 = v22;

        if (v23 > 0.0)
        {
          break;
        }

        if ([v14 count] <= ++v20)
        {
          goto LABEL_17;
        }
      }

      if (v20 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v20;
      }
    }

LABEL_17:
    v25 = v15 - 1;
    v26 = [v13 objectForKeyedSubscript:@"batteryLevels"];
    if (drainCopy)
    {
      v27 = [(_OSDrainPrev12Next12Predictor *)self netDrainFor:v26 fromStartIndex:v16 toEndIndex:v25];
    }

    else
    {
      v27 = [(_OSDrainPrev12Next12Predictor *)self totalDrainFor:v26 fromStartIndex:v16 toEndIndex:v25];
    }

    v24 = v27;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)expandingSumFromArray:(id)array
{
  arrayCopy = array;
  v4 = [arrayCopy mutableCopy];
  if ([arrayCopy count])
  {
    v5 = 0;
    v6 = -1;
    do
    {
      v7 = v6;
      if (v5 >= 2)
      {
        v8 = 0;
        do
        {
          v9 = [v4 objectAtIndexedSubscript:v5];
          integerValue = [v9 integerValue];
          v11 = [arrayCopy objectAtIndexedSubscript:v8];
          v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", &integerValue[[v11 integerValue]]);
          [v4 setObject:v12 atIndexedSubscript:v5];

          ++v8;
        }

        while (v7 != v8);
      }

      ++v5;
      v13 = [arrayCopy count];
      v6 = v7 + 1;
    }

    while (v13 > v5);
  }

  return v4;
}

- (id)drainDataOverRollingWindowOfHours:(int64_t)hours fromBatteryTimeStampData:(id)data
{
  dataCopy = data;
  v7 = os_transaction_create();
  v8 = [dataCopy objectForKeyedSubscript:@"timestamps"];
  v9 = v8;
  if (v8 && [v8 count] >= 2)
  {
    v12 = [v9 objectAtIndexedSubscript:1];
    v13 = [v9 objectAtIndexedSubscript:0];
    [v12 timeIntervalSinceDate:v13];
    v15 = v14;

    v16 = ((3600 * hours) / v15);
    v17 = (86400.0 / v15) - v16;
    v18 = v16 + v17 - 1;
    v10 = +[NSMutableArray array];
    if (v18 < [v9 count])
    {
      v23 = v7;
      v19 = v17;
      do
      {
        v20 = [v9 objectAtIndexedSubscript:v19];
        v21 = [v9 objectAtIndexedSubscript:v18];
        v22 = [NSNumber numberWithInteger:[(_OSDrainPrev12Next12Predictor *)self drainDataForStartTimestamp:v20 toEndTimestamp:v21 fromBatteryTimeStampData:dataCopy netDrain:0]];
        [v10 addObject:v22];

        ++v19;
        ++v18;
      }

      while (v18 < [v9 count]);
      v7 = v23;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (double)meanHourDrainRateForQueryDate:(id)date fromArray:(id)array fromBatteryTimeStampData:(id)data
{
  arrayCopy = array;
  dataCopy = data;
  [OSIntelligenceUtilities getHourBinID:date forHourBin:1];
  v10 = v9;
  v11 = [dataCopy objectForKeyedSubscript:@"timestamps"];
  v12 = [dataCopy objectForKeyedSubscript:@"batteryLevels"];
  v13 = [v12 count];
  v14 = v13 - [arrayCopy count];
  v15 = objc_alloc_init(NSMutableArray);
  if (v14 < [v12 count])
  {
    v16 = 0;
    v17 = v10;
    do
    {
      v18 = [v11 objectAtIndexedSubscript:v14];
      [OSIntelligenceUtilities getHourBinID:v18 forHourBin:1];
      if (v19 == v17)
      {
        v20 = [arrayCopy objectAtIndexedSubscript:v16];
        [v15 addObject:v20];
      }

      ++v14;
      ++v16;
    }

    while (v14 < [v12 count]);
  }

  [OSIntelligenceUtilities meanOf:v15];
  v22 = v21;

  return v22;
}

- (id)sliceArray:(id)array overPastDays:(int64_t)days startingAtDate:(id)date endingAtDate:(id)atDate withDataSamplingInterval:(double)interval includeLastIndex:(BOOL)index
{
  indexCopy = index;
  arrayCopy = array;
  [atDate timeIntervalSinceDate:date];
  log = self->_log;
  if (v16 >= days * 86400.0)
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      sub_10005BB08(log, arrayCopy);
    }

    v18 = (3600.0 / interval * (24 * days));
    v19 = [arrayCopy count] - v18;
    if (v19 < 0)
    {
      v21 = self->_log;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v23 = v21;
        v24 = 134218496;
        v25 = [arrayCopy count];
        v26 = 2048;
        v27 = (3600.0 / interval * (24 * days));
        v28 = 2048;
        daysCopy = days;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Array count %ld, less than look back index %ld for %ld days, returning unsliced array", &v24, 0x20u);
      }

      v20 = arrayCopy;
    }

    else
    {
      v20 = [arrayCopy subarrayWithRange:{v19, v18 - !indexCopy}];
    }

    v17 = v20;
  }

  else
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_10005BBA4();
    }

    v17 = 0;
  }

  return v17;
}

- (double)meanOfRollingDrains:(id)drains overPastDays:(int64_t)days startingAtDate:(id)date endingAtDate:(id)atDate withDataSamplingInterval:(double)interval
{
  v7 = [(_OSDrainPrev12Next12Predictor *)self sliceArray:drains overPastDays:days startingAtDate:date endingAtDate:atDate withDataSamplingInterval:0 includeLastIndex:interval];
  if (v7)
  {
    [OSIntelligenceUtilities meanOf:v7];
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

- (int64_t)countBatteryDrainIn:(id)in moreThanEqualTo:(int64_t)to overPastDays:(int64_t)days startingAtDate:(id)date endingAtDate:(id)atDate withDataSamplingInterval:(double)interval
{
  v9 = [(_OSDrainPrev12Next12Predictor *)self sliceArray:in overPastDays:days startingAtDate:date endingAtDate:atDate withDataSamplingInterval:0 includeLastIndex:interval];
  v10 = v9;
  if (v9 && (v21 = 0u, v22 = 0u, v19 = 0u, v20 = 0u, (v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16]) != 0))
  {
    v12 = v11;
    v13 = 0;
    v14 = *v20;
    toCopy = to;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v19 + 1) + 8 * i) floatValue];
        if (v17 >= toCopy)
        {
          ++v13;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (int64_t)percentileCategoryForBatteryDrain:(int64_t)drain withFirstQuartile:(id)quartile withSecondQuartile:(id)secondQuartile withThirdQuartile:(id)thirdQuartile
{
  quartileCopy = quartile;
  secondQuartileCopy = secondQuartile;
  thirdQuartileCopy = thirdQuartile;
  drainCopy = drain;
  [quartileCopy floatValue];
  if (v13 <= drain)
  {
    [quartileCopy floatValue];
    if (v15 > drainCopy || ([secondQuartileCopy floatValue], v16 <= drainCopy))
    {
      [secondQuartileCopy floatValue];
      if (v17 > drainCopy || ([thirdQuartileCopy floatValue], v18 <= drainCopy))
      {
        v14 = 3;
      }

      else
      {
        v14 = 2;
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (int64_t)percentileCategoryForBatteryDrain:(int64_t)drain inRollingDrainData:(id)data
{
  dataCopy = data;
  [OSIntelligenceUtilities qthPercentileOf:dataCopy withQ:25.0];
  v7 = [NSNumber numberWithDouble:?];
  [OSIntelligenceUtilities qthPercentileOf:dataCopy withQ:50.0];
  v8 = [NSNumber numberWithDouble:?];
  [OSIntelligenceUtilities qthPercentileOf:dataCopy withQ:75.0];
  v10 = v9;

  v11 = [NSNumber numberWithDouble:v10];
  v12 = [(_OSDrainPrev12Next12Predictor *)self percentileCategoryForBatteryDrain:drain withFirstQuartile:v7 withSecondQuartile:v8 withThirdQuartile:v11];

  return v12;
}

- (double)durationPerIntervalFromBatteryTimeStampData:(id)data
{
  v3 = [data objectForKeyedSubscript:@"timestamps"];
  v4 = [v3 objectAtIndexedSubscript:1];
  v5 = [v3 objectAtIndexedSubscript:0];
  [v4 timeIntervalSinceDate:v5];
  v7 = v6;

  return v7;
}

- (id)highDayDrainAroundCurrentDateWithError:(id *)error fromFilePath:(id)path
{
  pathCopy = path;
  v7 = os_transaction_create();
  if (![(_OSDrainPrev12Next12Predictor *)self hasEnoughHistory])
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10005BC30();
      if (error)
      {
        goto LABEL_14;
      }
    }

    else if (error)
    {
LABEL_14:
      [NSError errorWithDomain:@"com.apple.OSIntelligence" code:3 userInfo:0];
      *error = v26 = 0;
      goto LABEL_36;
    }

    v26 = 0;
    goto LABEL_36;
  }

  v8 = [(_OSDrainPrev12Next12Predictor *)self batteryLevelAndTimeFromFilePath:pathCopy];
  v9 = v8;
  if (v8 && [v8 count])
  {
    v10 = [v9 objectForKeyedSubscript:@"timestamps"];
    if (v10)
    {
      v11 = v10;
      v12 = [v9 objectForKeyedSubscript:@"timestamps"];
      v13 = [v12 count];

      if (v13)
      {
        v14 = [v9 objectForKeyedSubscript:@"batteryLevels"];
        if (v14)
        {
          v15 = v14;
          v16 = [v9 objectForKeyedSubscript:@"batteryLevels"];
          v17 = [v16 count];

          if (v17)
          {
            v18 = [v9 objectForKeyedSubscript:@"timestamps"];
            lastObject = [v18 lastObject];

            v20 = [v9 objectForKeyedSubscript:@"timestamps"];
            firstObject = [v20 firstObject];

            [lastObject timeIntervalSinceDate:firstObject];
            v23 = v22;
            [(_OSDrainPrev12Next12Predictor *)self durationPerIntervalFromBatteryTimeStampData:v9];
            v25 = v24;
            if (v23 >= 604800.0)
            {
              v27 = [v9 objectForKeyedSubscript:@"batteryLevels"];
              if ([v27 count] > 0x63)
              {
                v29 = objc_alloc_init(_OSDayDrainResult);
                queue = self->_queue;
                v34[0] = _NSConcreteStackBlock;
                v34[1] = 3221225472;
                v34[2] = sub_10001C71C;
                v34[3] = &unk_100094E10;
                v34[4] = self;
                v35 = v9;
                v36 = lastObject;
                v40 = v25;
                v37 = v27;
                v38 = firstObject;
                errorCopy = error;
                v31 = v29;
                v39 = v31;
                dispatch_sync(queue, v34);
                v32 = v39;
                v26 = v31;
              }

              else
              {
                log = self->_log;
                if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
                {
                  sub_10005BC6C(log, v9);
                }

                [NSError errorWithDomain:@"com.apple.OSIntelligence" code:3 userInfo:0];
                *error = v26 = 0;
              }
            }

            else
            {
              if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
              {
                sub_10005BD08();
              }

              [NSError errorWithDomain:@"com.apple.OSIntelligence" code:3 userInfo:0];
              *error = v26 = 0;
            }

            goto LABEL_35;
          }
        }

        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
        {
          sub_10005BD8C();
          if (error)
          {
            goto LABEL_23;
          }

          goto LABEL_34;
        }

LABEL_22:
        if (error)
        {
          goto LABEL_23;
        }

LABEL_34:
        v26 = 0;
        goto LABEL_35;
      }
    }

    if (!os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    sub_10005BDC8();
    if (!error)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (!os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    sub_10005BD8C();
    if (!error)
    {
      goto LABEL_34;
    }
  }

LABEL_23:
  [NSError errorWithDomain:@"com.apple.OSIntelligence" code:3 userInfo:0];
  *error = v26 = 0;
LABEL_35:

LABEL_36:

  return v26;
}

@end