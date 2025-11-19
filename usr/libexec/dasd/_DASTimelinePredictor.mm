@interface _DASTimelinePredictor
- (BOOL)shouldIncludeEventWithDate:(id)a3 eventSlot:(unint64_t)a4 predictionStartDate:(id)a5 partitionType:(unint64_t)a6 calendar:(id)a7 slotDuration:(double)a8;
- (_DASTimelinePredictor)init;
- (id)applicationLaunchLikelihoodForTop:(unint64_t)a3 withMinimumLikelihood:(double)a4 withTemporalResolution:(unint64_t)a5;
- (id)deviceActivityLikelihood;
- (id)deviceNearbyLikelihoodWithStartDate:(id)a3;
- (id)firstEventDateOnPublisher:(id)a3;
- (id)launchLikelihoodForApp:(id)a3;
- (id)launchLikelihoodForTop:(unint64_t)a3 withMinimumLikelihood:(double)a4 withTemporalResolution:(unint64_t)a5 onPublisher:(id)a6;
- (id)likelihoodsFrom:(id)a3 searchingForTop:(unint64_t)a4 minimumLikelihood:(double)a5 temporalResolution:(unint64_t)a6 aggregationKeyBlock:(id)a7;
- (id)pluginLikelihood;
- (id)predictionForPublisher:(id)a3 withPredictionType:(unint64_t)a4;
- (id)predictionTimelineFromEvents:(id)a3 withSlotDuration:(unint64_t)a4 indicatorType:(unint64_t)a5 partitionType:(unint64_t)a6;
- (id)widgetUsageLikelihoodForBudgetID:(id)a3 endDate:(id)a4;
- (unint64_t)computeSlotForDate:(id)a3 relativeToDate:(id)a4 slotDuration:(double)a5 totalSlotsInDay:(unint64_t)a6;
- (void)asyncDo:(id)a3;
- (void)constructWeightedObservationBins:(id)a3 firstEventDate:(id)a4 indicatorType:(unint64_t)a5 partitionType:(unint64_t)a6 predictionStartDate:(id)a7 slotDuration:(unint64_t)a8 totalSlotsInDay:(unint64_t)a9;
- (void)handleEventPredictionWithEventSpanTuple:(id)a3 predictionStartDate:(id)a4 durationSinceFirstEvent:(double)a5 calendar:(id)a6 observations:(id)a7 lastDate:(id *)a8 lastSlot:(int *)a9 slotDuration:(double)a10 totalSlotsInDay:(unint64_t)a11 partitionType:(unint64_t)a12 firstObservationDate:(id)a13;
- (void)handleImpulsePredictionWithEventSpanTuple:(id)a3 predictionStartDate:(id)a4 durationSinceFirstEvent:(double)a5 calendar:(id)a6 observations:(id)a7 lastDate:(id *)a8 lastSlot:(int *)a9 slotDuration:(double)a10 totalSlotsInDay:(unint64_t)a11 partitionType:(unint64_t)a12 firstObservationDate:(id)a13;
- (void)setValueForIndex:(unint64_t)a3 forObservations:(id)a4 withDenominator:(double)a5 forIndicatorType:(unint64_t)a6;
@end

@implementation _DASTimelinePredictor

- (id)deviceActivityLikelihood
{
  v3 = objc_autoreleasePoolPush();
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1000C5CD4;
  v24 = sub_1000C5CE4;
  v25 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C6924;
  block[3] = &unk_1001B5668;
  block[4] = self;
  if (qword_10020B7B8 != -1)
  {
    dispatch_once(&qword_10020B7B8, block);
  }

  v4 = [NSDate dateWithTimeIntervalSinceNow:-259200.0];
  if (qword_10020B7B0 && ([qword_10020B7B0 isAfter:v4] & 1) == 0)
  {
    v6 = +[NSDate now];
    v7 = [v6 dateByAddingTimeInterval:-1209600.0];
    v8 = [BMPublisherOptions optionsWithStartDate:v7];

    v9 = +[_DASBMUtilityProvider sharedUtilityProvider];
    v10 = [v9 getConsoleUserUid];

    v11 = [qword_10020B7A8 publisherWithUser:v10 useCase:@"DASBiomeUtilityUseCase" options:v8];
    v12 = [v11 filterWithIsIncluded:&stru_1001B82B8];
    v13 = [v12 mapWithTransform:&stru_1001B82D8];
    v14 = [v13 collect];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000C6A70;
    v18[3] = &unk_1001B5570;
    v18[4] = self;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000C6ACC;
    v17[3] = &unk_1001B8198;
    v17[4] = &v20;
    v15 = [v14 sinkWithCompletion:v18 receiveInput:v17];

    v5 = [(_DASTimelinePredictor *)self predictionTimelineFromEvents:v21[5] withSlotDuration:900 indicatorType:0 partitionType:1];
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v20, 8);
  objc_autoreleasePoolPop(v3);

  return v5;
}

- (_DASTimelinePredictor)init
{
  v11.receiver = self;
  v11.super_class = _DASTimelinePredictor;
  v2 = [(_DASTimelinePredictor *)&v11 init];
  if (v2)
  {
    v3 = [NSString stringWithFormat:@"com.apple.DASPredictor"];
    v4 = [v3 cStringUsingEncoding:4];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(v4, v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = os_log_create("com.apple.DuetActivityScheduler", "DASPredictor");
    log = v2->_log;
    v2->_log = v8;
  }

  return v2;
}

- (id)likelihoodsFrom:(id)a3 searchingForTop:(unint64_t)a4 minimumLikelihood:(double)a5 temporalResolution:(unint64_t)a6 aggregationKeyBlock:(id)a7
{
  v12 = a3;
  v72 = a7;
  v13 = &NSLocalizedDescriptionKey_ptr;
  v14 = +[NSDate now];
  v15 = [v12 firstObject];
  [v15 timestamp];
  v16 = [NSDate dateFromAbsoluteTime:?];

  [v16 timeIntervalSinceDate:v14];
  v18 = (v17 / 86400.0);
  if (v18 < 1)
  {
    v61 = (v17 / 86400.0);
    v65 = a4;
    v62 = v16;
    v64 = a6;
    v67 = v14;
    v68 = 0x15180 / a6;
    v69 = +[NSMutableDictionary dictionary];
    v76 = +[NSMutableDictionary dictionary];
    v75 = +[NSMutableDictionary dictionary];
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v63 = v12;
    obj = v12;
    v73 = [obj countByEnumeratingWithState:&v84 objects:v91 count:16];
    if (v73)
    {
      v70 = *v85;
      v21 = a6;
      do
      {
        for (i = 0; i != v73; i = i + 1)
        {
          if (*v85 != v70)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v84 + 1) + 8 * i);
          v24 = v72[2](v72, v23);
          if (v24)
          {
            v25 = self;
            v26 = [v75 objectForKeyedSubscript:v24];
            v27 = [v76 objectForKeyedSubscript:v24];
            if (v26)
            {
              v28 = [v26 integerValue];
            }

            else
            {
              v30 = [(NSErrorUserInfoKey *)v13[116] distantPast];

              v28 = -1;
              v27 = v30;
            }

            v31 = v13[116];
            [v23 timestamp];
            [(NSErrorUserInfoKey *)v31 dateFromAbsoluteTime:?];
            v33 = v32 = v13;
            v34 = [(_DASTimelinePredictor *)v25 computeSlotForDate:v33 relativeToDate:v67 slotDuration:v68 totalSlotsInDay:v21];

            if (v34 != v28)
            {
              goto LABEL_16;
            }

            v13 = v32;
            v35 = v32[116];
            [v23 timestamp];
            v36 = [(NSErrorUserInfoKey *)v35 dateFromAbsoluteTime:?];
            [v36 timeIntervalSinceDate:v27];
            v38 = v37;

            if (v38 >= v21)
            {
LABEL_16:
              v39 = [v69 objectForKeyedSubscript:v24];
              if (!v39)
              {
                v39 = +[NSCountedSet set];
                [v69 setObject:v39 forKeyedSubscript:v24];
              }

              v40 = [NSNumber numberWithUnsignedLong:v34];
              [v39 addObject:v40];
              [v75 setObject:v40 forKeyedSubscript:v24];
              v41 = v32[116];
              [v23 timestamp];
              v42 = v41;
              v13 = v32;
              v43 = [(NSErrorUserInfoKey *)v42 dateFromAbsoluteTime:?];
              [v76 setObject:v43 forKeyedSubscript:v24];
            }

            self = v25;
          }

          else
          {
            log = self->_log;
            if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v90 = v23;
              _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "nil key returned for %@", buf, 0xCu);
            }
          }
        }

        v73 = [obj countByEnumeratingWithState:&v84 objects:v91 count:16];
      }

      while (v73);
    }

    v74 = +[NSMutableArray array];
    v44 = [v69 allKeys];
    v71 = [v44 mutableCopy];

    if (v64 <= 0x15180)
    {
      v45 = 0;
      do
      {
        v81[0] = _NSConcreteStackBlock;
        v81[1] = 3221225472;
        v81[2] = sub_1000C4A54;
        v81[3] = &unk_1001B8148;
        v46 = v69;
        v82 = v46;
        v83 = v45;
        [v71 sortUsingComparator:v81];
        v47 = +[NSMutableDictionary dictionary];
        v48 = [v71 count];
        if (v48 >= v65)
        {
          v49 = v65;
        }

        else
        {
          v49 = v48;
        }

        v50 = [v71 subarrayWithRange:{0, v49}];
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v51 = [v50 countByEnumeratingWithState:&v77 objects:v88 count:16];
        if (v51)
        {
          v52 = v51;
          v53 = *v78;
          do
          {
            for (j = 0; j != v52; j = j + 1)
            {
              if (*v78 != v53)
              {
                objc_enumerationMutation(v50);
              }

              v55 = *(*(&v77 + 1) + 8 * j);
              v56 = [v46 objectForKeyedSubscript:v55];
              v57 = [NSNumber numberWithUnsignedLong:v45];
              v58 = [v56 countForObject:v57] / (1 - v61);

              if (v58 >= a5)
              {
                v59 = [NSNumber numberWithDouble:v58];
                [v47 setObject:v59 forKeyedSubscript:v55];
              }
            }

            v52 = [v50 countByEnumeratingWithState:&v77 objects:v88 count:16];
          }

          while (v52);
        }

        [v74 addObject:v47];

        ++v45;
      }

      while (v45 < v68);
    }

    v14 = v67;
    v20 = [[_DASPredictionTimeline alloc] initWithValues:v74 eachWithDuration:v67 startingAt:v64];

    v16 = v62;
    v12 = v63;
  }

  else
  {
    v19 = [NSNumber numberWithInt:-v18];
    NSLog(@"Invalid maximum appearances (%@) calculated from firstDate %@ and predictionStartDate %@", v19, v16, v14);

    v20 = 0;
  }

  return v20;
}

- (void)constructWeightedObservationBins:(id)a3 firstEventDate:(id)a4 indicatorType:(unint64_t)a5 partitionType:(unint64_t)a6 predictionStartDate:(id)a7 slotDuration:(unint64_t)a8 totalSlotsInDay:(unint64_t)a9
{
  v35 = a3;
  v15 = a4;
  v16 = a7;
  if (a6 == 1)
  {
    v22 = [v15 copy];
    [v22 timeIntervalSinceDate:v16];
    if (v23 < 0.0)
    {
      v24 = 0.0;
      do
      {
        v25 = v22;
        v22 = [v22 dateByAddingTimeInterval:604800.0];

        v24 = v24 + 1.0;
        [v22 timeIntervalSinceDate:v16];
      }

      while (v26 < 0.0);
      if (v24 > 1.0)
      {
        v27 = [v16 dateByAddingTimeInterval:86400.0];
        [v22 timeIntervalSinceDate:v27];
        v29 = v28;

        if (v29 >= 0.0)
        {
          if (a9)
          {
            for (i = 0; i != a9; ++i)
            {
              [(_DASTimelinePredictor *)self setValueForIndex:i forObservations:v35 withDenominator:a5 forIndicatorType:v24 + -1.0];
            }
          }
        }

        else
        {
          v30 = [(_DASTimelinePredictor *)self computeSlotForDate:v22 relativeToDate:v16 slotDuration:a9 totalSlotsInDay:a8];
          if (a9)
          {
            v31 = v30;
            for (j = 0; j != a9; ++j)
            {
              if (j >= v31)
              {
                v33 = 0.0;
              }

              else
              {
                v33 = 1.0;
              }

              [(_DASTimelinePredictor *)self setValueForIndex:j forObservations:v35 withDenominator:a5 forIndicatorType:v24 - v33];
            }
          }
        }
      }
    }
  }

  else if (!a6)
  {
    v17 = [(_DASTimelinePredictor *)self computeSlotForDate:v15 relativeToDate:v16 slotDuration:a9 totalSlotsInDay:a8];
    [v15 timeIntervalSinceDate:v16];
    v19 = v35;
    if (a9)
    {
      v20 = 0;
      v21 = -(v18 / 86400.0);
      do
      {
        if (v17 == v20)
        {
          ++v21;
        }

        if (v21)
        {
          [(_DASTimelinePredictor *)self setValueForIndex:v20 forObservations:v19 withDenominator:a5 forIndicatorType:v21];
        }

        else
        {
          [v19 setObject:&off_1001CA450 atIndexedSubscript:v20];
        }

        ++v20;
        v19 = v35;
      }

      while (a9 != v20);
    }
  }
}

- (id)predictionTimelineFromEvents:(id)a3 withSlotDuration:(unint64_t)a4 indicatorType:(unint64_t)a5 partitionType:(unint64_t)a6
{
  v10 = a3;
  v11 = +[NSDate now];
  v12 = [v10 firstObject];
  v13 = [v12 first];
  [v13 timestamp];
  v14 = [NSDate dateFromAbsoluteTime:?];

  [v14 timeIntervalSinceDate:v11];
  v16 = (v15 / 86400.0);
  if (v16 >= 1)
  {
    v17 = [NSNumber numberWithInt:-v16];
    NSLog(@"Invalid maximum appearances (%@) calculated from firstDate %@ and predictionStartDate %@", v17, v14, v11);

    v18 = 0;
    goto LABEL_21;
  }

  v44 = a6;
  v19 = [NSMutableArray arrayWithCapacity:0x15180 / a4];
  v40 = a4;
  if (a4 <= 0x15180)
  {
    v20 = 0;
    do
    {
      [v19 setObject:&off_1001CA450 atIndexedSubscript:v20++];
    }

    while (v20 < 0x15180 / a4);
  }

  v41 = 0x15180 / a4;
  v43 = v19;
  v21 = v14;
  [v11 timeIntervalSinceDate:?];
  v23 = v22;
  v51 = -1;
  v24 = +[NSDate distantPast];
  v42 = +[NSCalendar currentCalendar];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v25 = v10;
  v26 = [v25 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v26)
  {
    v27 = v26;
    v38 = v14;
    v39 = v10;
    v28 = v11;
    v29 = *v48;
    v30 = v40;
    while (1)
    {
      v31 = 0;
      v32 = self;
      do
      {
        if (*v48 != v29)
        {
          objc_enumerationMutation(v25);
          v32 = self;
        }

        v33 = *(*(&v47 + 1) + 8 * v31);
        if (a5 == 1)
        {
          v45 = v24;
          v34 = &v45;
          [(_DASTimelinePredictor *)v32 handleEventPredictionWithEventSpanTuple:v33 predictionStartDate:v28 durationSinceFirstEvent:v42 calendar:v43 observations:&v45 lastDate:&v51 lastSlot:v23 slotDuration:v30 totalSlotsInDay:v41 partitionType:v44 firstObservationDate:v21];
        }

        else
        {
          if (a5)
          {
            goto LABEL_16;
          }

          v46 = v24;
          v34 = &v46;
          [(_DASTimelinePredictor *)v32 handleImpulsePredictionWithEventSpanTuple:v33 predictionStartDate:v28 durationSinceFirstEvent:v42 calendar:v43 observations:&v46 lastDate:&v51 lastSlot:v23 slotDuration:v30 totalSlotsInDay:v41 partitionType:v44 firstObservationDate:v21];
        }

        v35 = *v34;

        v24 = v35;
        v32 = self;
LABEL_16:
        v31 = v31 + 1;
      }

      while (v27 != v31);
      v27 = [v25 countByEnumeratingWithState:&v47 objects:v52 count:16];
      if (!v27)
      {
        v11 = v28;
        v14 = v38;
        v10 = v39;
        v36 = v40;
        goto LABEL_20;
      }
    }
  }

  v36 = v40;
  v30 = v40;
LABEL_20:

  [(_DASTimelinePredictor *)self constructWeightedObservationBins:v43 firstEventDate:v21 indicatorType:a5 partitionType:v44 predictionStartDate:v11 slotDuration:v36 totalSlotsInDay:v41];
  v18 = [[_DASPredictionTimeline alloc] initWithValues:v43 eachWithDuration:v11 startingAt:v30];

LABEL_21:

  return v18;
}

- (void)setValueForIndex:(unint64_t)a3 forObservations:(id)a4 withDenominator:(double)a5 forIndicatorType:(unint64_t)a6
{
  v9 = a4;
  v10 = [v9 objectAtIndexedSubscript:a3];
  [v10 doubleValue];
  v12 = v11 / a5;

  if (a6 == 1)
  {
    v12 = 1.0 / (pow(2.71828183, (v12 + -0.5) * -12.0) + 1.0);
  }

  v13 = 1.0;
  if (v12 <= 0.98)
  {
    v13 = v12;
    if (v12 < 0.02)
    {
      v13 = 0.0;
    }
  }

  v14 = [NSNumber numberWithDouble:v13];
  [v9 setObject:v14 atIndexedSubscript:a3];
}

- (void)handleImpulsePredictionWithEventSpanTuple:(id)a3 predictionStartDate:(id)a4 durationSinceFirstEvent:(double)a5 calendar:(id)a6 observations:(id)a7 lastDate:(id *)a8 lastSlot:(int *)a9 slotDuration:(double)a10 totalSlotsInDay:(unint64_t)a11 partitionType:(unint64_t)a12 firstObservationDate:(id)a13
{
  v34 = a7;
  v19 = a13;
  v20 = a6;
  v21 = a4;
  v22 = [a3 first];
  [v22 timestamp];
  v23 = [NSDate dateFromAbsoluteTime:?];

  v24 = [(_DASTimelinePredictor *)self computeSlotForDate:v23 relativeToDate:v21 slotDuration:a11 totalSlotsInDay:a10];
  v25 = v24;
  if (a5 >= 1209600.0)
  {
    v26 = a12;
  }

  else
  {
    v26 = 0;
  }

  v27 = [(_DASTimelinePredictor *)self shouldIncludeEventWithDate:v23 eventSlot:v24 predictionStartDate:v21 partitionType:v26 calendar:v20 slotDuration:v24];

  if (v27)
  {
    [v23 timeIntervalSinceDate:v19];
    if (v28 >= a10)
    {
      v29 = [v34 objectAtIndexedSubscript:v25];
      v30 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v29 unsignedIntegerValue] + 1);
      [v34 setObject:v30 atIndexedSubscript:v25];

      *a9 = v25;
      v31 = v23;
      *a8 = v23;
    }
  }
}

- (void)handleEventPredictionWithEventSpanTuple:(id)a3 predictionStartDate:(id)a4 durationSinceFirstEvent:(double)a5 calendar:(id)a6 observations:(id)a7 lastDate:(id *)a8 lastSlot:(int *)a9 slotDuration:(double)a10 totalSlotsInDay:(unint64_t)a11 partitionType:(unint64_t)a12 firstObservationDate:(id)a13
{
  v52 = a3;
  v20 = a4;
  v21 = a6;
  v22 = a7;
  v23 = [v52 first];
  [v23 timestamp];
  v24 = [NSDate dateFromAbsoluteTime:?];

  v25 = v21;
  v26 = [v52 second];
  [v26 timestamp];
  v27 = v24;
  v28 = [NSDate dateFromAbsoluteTime:?];

  [v28 timeIntervalSinceDate:v24];
  v30 = v29;
  [v24 timeIntervalSinceDate:v20];
  v32 = [v20 dateByAddingTimeInterval:(v31 / a10) * a10];
  v33 = [(_DASTimelinePredictor *)self computeSlotForDate:v24 relativeToDate:v20 slotDuration:a11 totalSlotsInDay:a10];
  if (a5 < 1209600.0)
  {
    a12 = 0;
  }

  [v28 timeIntervalSinceDate:v32];
  v53 = v25;
  if (v34 <= 0.0)
  {
    if (![(_DASTimelinePredictor *)self shouldIncludeEventWithDate:v27 eventSlot:v33 predictionStartDate:v20 partitionType:a12 calendar:v25 slotDuration:v33])
    {
      goto LABEL_16;
    }

    v50 = v27;
    v51 = v32;
    v46 = [v22 objectAtIndexedSubscript:v33];
    [v46 doubleValue];
    v49 = [NSNumber numberWithDouble:v30 / a10 + v48];
    [v22 setObject:v49 atIndexedSubscript:v33];

    v25 = v53;
  }

  else
  {
    v50 = v27;
    v51 = v32;
    if ([(_DASTimelinePredictor *)self shouldIncludeEventWithDate:v27 eventSlot:v33 predictionStartDate:v20 partitionType:a12 calendar:v25 slotDuration:a10])
    {
      v35 = [v22 objectAtIndexedSubscript:v33];
      [v35 doubleValue];
      v37 = v36;
      [v51 timeIntervalSinceDate:v27];
      v39 = [NSNumber numberWithDouble:v37 + v38 / a10];
      [v22 setObject:v39 atIndexedSubscript:v33];

      v32 = v51;
    }

    v40 = v32;
    [v28 timeIntervalSinceDate:v40];
    if (v41 <= 0.0)
    {
      v46 = v40;
    }

    else
    {
      v42 = v41;
      do
      {
        v33 = (v33 + 1) % a11;
        if ([(_DASTimelinePredictor *)self shouldIncludeEventWithDate:v40 eventSlot:v33 predictionStartDate:v20 partitionType:a12 calendar:v25 slotDuration:a10])
        {
          v43 = [v22 objectAtIndexedSubscript:v33];
          [v43 doubleValue];
          v45 = [NSNumber numberWithDouble:fmin(v42 / a10, 1.0) + v44];
          [v22 setObject:v45 atIndexedSubscript:v33];

          v25 = v53;
        }

        v46 = [v40 dateByAddingTimeInterval:a10];

        [v28 timeIntervalSinceDate:v46];
        v42 = v47;
        v40 = v46;
      }

      while (v47 > 0.0);
    }
  }

  v27 = v50;
  v32 = v51;
LABEL_16:
}

- (BOOL)shouldIncludeEventWithDate:(id)a3 eventSlot:(unint64_t)a4 predictionStartDate:(id)a5 partitionType:(unint64_t)a6 calendar:(id)a7 slotDuration:(double)a8
{
  if (a6 != 1)
  {
    return 1;
  }

  v10 = a4 * a8;
  v11 = a7;
  v12 = a3;
  v13 = [a5 dateByAddingTimeInterval:v10];
  v14 = [v12 isSameDayOfWeekAs:v13 withCalendar:v11];

  return v14;
}

- (unint64_t)computeSlotForDate:(id)a3 relativeToDate:(id)a4 slotDuration:(double)a5 totalSlotsInDay:(unint64_t)a6
{
  [a3 timeIntervalSinceDate:a4];
  if (v8 < 0.0)
  {
    v8 = v8 + ceil(v8 / -86400.0) * 86400.0;
  }

  return v8 / a5 % a6;
}

- (id)firstEventDateOnPublisher:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C59DC;
  v9[3] = &unk_1001B5570;
  v9[4] = self;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000C5A38;
  v8[3] = &unk_1001B7FB8;
  v8[4] = &v10;
  v5 = [v4 sinkWithCompletion:v9 shouldContinue:v8];
  if (v11[3] == 0.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = [NSDate dateFromAbsoluteTime:?];
  }

  _Block_object_dispose(&v10, 8);

  return v6;
}

- (void)asyncDo:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C5B08;
  block[3] = &unk_1001B8170;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

- (id)predictionForPublisher:(id)a3 withPredictionType:(unint64_t)a4
{
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1000C5CD4;
  v18 = sub_1000C5CE4;
  v19 = 0;
  v8 = [v6 collect];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000C5CEC;
  v13[3] = &unk_1001B5570;
  v13[4] = self;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000C5D48;
  v12[3] = &unk_1001B8198;
  v12[4] = &v14;
  v9 = [v8 sinkWithCompletion:v13 receiveInput:v12];

  [v15[5] sortUsingComparator:&stru_1001B81D8];
  v10 = [(_DASTimelinePredictor *)self predictionTimelineFromEvents:v15[5] withSlotDuration:900 indicatorType:a4 partitionType:0];
  _Block_object_dispose(&v14, 8);

  objc_autoreleasePoolPop(v7);

  return v10;
}

- (id)applicationLaunchLikelihoodForTop:(unint64_t)a3 withMinimumLikelihood:(double)a4 withTemporalResolution:(unint64_t)a5
{
  v9 = objc_autoreleasePoolPush();
  v10 = BiomeLibrary();
  v11 = [v10 App];
  v12 = [v11 InFocus];

  v13 = +[NSDate now];
  v14 = [v13 dateByAddingTimeInterval:-1209600.0];
  v15 = [BMPublisherOptions optionsWithStartDate:v14];

  v16 = +[_DASBMUtilityProvider sharedUtilityProvider];
  v17 = [v16 getConsoleUserUid];

  v18 = [v12 publisherWithUser:v17 useCase:@"DASBiomeUtilityUseCase" options:v15];
  v19 = [v18 filterWithIsIncluded:&stru_1001B81F8];
  v20 = [(_DASTimelinePredictor *)self launchLikelihoodForTop:a3 withMinimumLikelihood:a5 withTemporalResolution:v19 onPublisher:a4];

  objc_autoreleasePoolPop(v9);

  return v20;
}

- (id)launchLikelihoodForTop:(unint64_t)a3 withMinimumLikelihood:(double)a4 withTemporalResolution:(unint64_t)a5 onPublisher:(id)a6
{
  v10 = a6;
  v11 = objc_autoreleasePoolPush();
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1000C5CD4;
  v22 = sub_1000C5CE4;
  v23 = 0;
  v12 = [v10 collect];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000C61F0;
  v17[3] = &unk_1001B5570;
  v17[4] = self;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000C624C;
  v16[3] = &unk_1001B8198;
  v16[4] = &v18;
  v13 = [v12 sinkWithCompletion:v17 receiveInput:v16];

  v14 = [(_DASTimelinePredictor *)self likelihoodsFrom:v19[5] searchingForTop:a3 minimumLikelihood:a5 temporalResolution:&stru_1001B8218 aggregationKeyBlock:a4];
  _Block_object_dispose(&v18, 8);

  objc_autoreleasePoolPop(v11);

  return v14;
}

- (id)launchLikelihoodForApp:(id)a3
{
  v4 = a3;
  context = objc_autoreleasePoolPush();
  v28 = +[NSDate now];
  v5 = BiomeLibrary();
  v6 = [v5 App];
  v30 = [v6 InFocus];

  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_1000C5CD4;
  v39 = sub_1000C5CE4;
  v40 = 0;
  v7 = objc_opt_new();
  [v7 setMinimumSpanDuration:5.0];
  [v7 setAggregationKeyBlock:&stru_1001B8238];
  [v7 setSpanMarkerBlock:&stru_1001B8258];
  v8 = +[NSDate now];
  v9 = [v8 dateByAddingTimeInterval:-1209600.0];
  v29 = [BMPublisherOptions optionsWithStartDate:v9];

  v10 = +[_DASBMUtilityProvider sharedUtilityProvider];
  v11 = [v10 getConsoleUserUid];

  v12 = [v30 publisherWithUser:v11 useCase:@"DASBiomeUtilityUseCase" options:v29];
  v13 = [v7 deriveSpansWithMinimumDurationOnStream:v12];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000C67CC;
  v33[3] = &unk_1001B7298;
  v14 = v4;
  v34 = v14;
  v15 = [v13 filterWithIsIncluded:v33];
  v16 = [v15 mapWithTransform:&stru_1001B8298];
  v17 = [v16 collect];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000C68B8;
  v32[3] = &unk_1001B5570;
  v32[4] = self;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000C6914;
  v31[3] = &unk_1001B8198;
  v31[4] = &v35;
  v18 = [v17 sinkWithCompletion:v32 receiveInput:v31];

  v19 = +[NSDate now];
  [v19 timeIntervalSinceDate:v28];
  v21 = v20;
  v22 = self->_log;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v36[5] count]);
    v24 = v36[5];
    *buf = 138413058;
    v42 = v14;
    v43 = 2112;
    v44 = v23;
    v45 = 2112;
    v46 = v24;
    v47 = 2048;
    v48 = v21;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Query for %@ contained %@ tuples (%@) [Took: %.0lfs]", buf, 0x2Au);
  }

  v25 = [(_DASTimelinePredictor *)self predictionTimelineFromEvents:v36[5] withSlotDuration:900 indicatorType:0 partitionType:0];

  _Block_object_dispose(&v35, 8);
  objc_autoreleasePoolPop(context);

  return v25;
}

- (id)pluginLikelihood
{
  v3 = objc_autoreleasePoolPush();
  v4 = BiomeLibrary();
  v5 = [v4 Device];
  v6 = [v5 Power];
  v7 = [v6 PluggedIn];

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1000C5CD4;
  v26 = sub_1000C5CE4;
  v27 = 0;
  v8 = objc_opt_new();
  [v8 setMinimumSpanDuration:300.0];
  [v8 setAggregationKeyBlock:&stru_1001B8318];
  [v8 setSpanMarkerBlock:&stru_1001B8338];
  v9 = +[NSDate now];
  v10 = [v9 dateByAddingTimeInterval:-1209600.0];
  v11 = [BMPublisherOptions optionsWithStartDate:v10];

  v12 = +[_DASBMUtilityProvider sharedUtilityProvider];
  v13 = [v12 getConsoleUserUid];

  v14 = [v7 publisherWithUser:v13 useCase:@"DASBiomeUtilityUseCase" options:v11];
  v15 = [v8 deriveSpanTuplesWithMinimumDurationOnStream:v14];
  v16 = [v15 collect];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000C6E04;
  v21[3] = &unk_1001B5570;
  v21[4] = self;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000C6E60;
  v20[3] = &unk_1001B8198;
  v20[4] = &v22;
  v17 = [v16 sinkWithCompletion:v21 receiveInput:v20];

  v18 = [(_DASTimelinePredictor *)self predictionTimelineFromEvents:v23[5] withSlotDuration:900 indicatorType:1 partitionType:0];

  _Block_object_dispose(&v22, 8);
  objc_autoreleasePoolPop(v3);

  return v18;
}

- (id)deviceNearbyLikelihoodWithStartDate:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = BiomeLibrary();
  v7 = [v6 Device];
  v8 = [v7 Wireless];
  v9 = [v8 DefaultPairedNearby];

  if (v4)
  {
    v10 = [BMPublisherOptions optionsWithStartDate:v4];
  }

  else
  {
    v11 = +[NSDate now];
    v12 = [v11 dateByAddingTimeInterval:-1209600.0];
    v10 = [BMPublisherOptions optionsWithStartDate:v12];
  }

  v13 = +[_DASBMUtilityProvider sharedUtilityProvider];
  v14 = [v13 getConsoleUserUid];

  v15 = [v9 publisherWithUser:v14 useCase:@"DASBiomeUtilityUseCase" options:v10];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1000C5CD4;
  v28 = sub_1000C5CE4;
  v29 = 0;
  v16 = [v15 filterWithIsIncluded:&stru_1001B8358];
  v17 = [v16 mapWithTransform:&stru_1001B8378];
  v18 = [v17 collect];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000C71E4;
  v23[3] = &unk_1001B5570;
  v23[4] = self;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000C7240;
  v22[3] = &unk_1001B8198;
  v22[4] = &v24;
  v19 = [v18 sinkWithCompletion:v23 receiveInput:v22];

  v20 = [(_DASTimelinePredictor *)self predictionTimelineFromEvents:v25[5] withSlotDuration:900 indicatorType:0 partitionType:0];

  _Block_object_dispose(&v24, 8);
  objc_autoreleasePoolPop(v5);

  return v20;
}

- (id)widgetUsageLikelihoodForBudgetID:(id)a3 endDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  context = objc_autoreleasePoolPush();
  v8 = BiomeLibrary();
  v9 = [v8 Widgets];
  v10 = [v9 Viewed];

  if (v7)
  {
    v11 = v7;
    [v11 dateByAddingTimeInterval:-1209600.0];
  }

  else
  {
    v11 = +[NSDate now];
    [NSDate dateWithTimeIntervalSinceNow:-1209600.0];
  }
  v12 = ;
  v13 = [BMPublisherOptions optionsWithStartDate:v12 endDate:v11];
  v14 = +[_DASBMUtilityProvider sharedUtilityProvider];
  v15 = [v14 getConsoleUserUid];

  v24 = v10;
  v16 = [v10 publisherWithUser:v15 useCase:@"DuetActivitySchedulerWidgetRefresh" options:v13];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_1000C5CD4;
  v34 = sub_1000C5CE4;
  v35 = 0;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000C7594;
  v28[3] = &unk_1001B7298;
  v17 = v6;
  v29 = v17;
  v18 = [v16 filterWithIsIncluded:v28];
  v19 = [v18 mapWithTransform:&stru_1001B8398];
  v20 = [v19 collect];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000C764C;
  v27[3] = &unk_1001B5570;
  v27[4] = self;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000C76A8;
  v26[3] = &unk_1001B8198;
  v26[4] = &v30;
  v21 = [v20 sinkWithCompletion:v27 receiveInput:v26];

  v22 = [(_DASTimelinePredictor *)self predictionTimelineFromEvents:v31[5] withSlotDuration:900 indicatorType:0 partitionType:0];

  _Block_object_dispose(&v30, 8);
  objc_autoreleasePoolPop(context);

  return v22;
}

@end