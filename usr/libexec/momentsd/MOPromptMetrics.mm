@interface MOPromptMetrics
+ (id)getTimeDeltaMetricMap;
+ (id)meanOf:(id)of;
+ (id)medianOf:(id)of;
+ (id)standardDeviationOf:(id)of;
+ (id)supportedMetricKeys;
- (BOOL)doesInterval:(id)interval overlapWithAnyIntervalFromArray:(id)array;
- (BOOL)submitMetricsWithError:(id *)error;
- (MOPromptMetrics)initWithStartDate:(id)date endDate:(id)endDate;
- (MOPromptMetrics)initWithStartDate:(id)date endDate:(id)endDate EventManager:(id)manager;
- (id)calculateZeroCountsForEvents:(id)events withCalendar:(id)calendar;
- (void)calculateAndSetMetricsForCorrelatedEvents:(id)events;
- (void)calculateAndSetMetricsForRawEvents:(id)events;
- (void)calculateAndSetMetricsForSemanticallyBundledEvents:(id)events;
- (void)getAndSetAgeGender;
- (void)setAge:(id)age;
- (void)setBiologicalSex:(id)sex;
- (void)setDerivedMetrics;
@end

@implementation MOPromptMetrics

- (MOPromptMetrics)initWithStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v10 = endDateCopy;
  if (!dateCopy)
  {
    v16 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [MOPromptMetrics initWithStartDate:endDate:];
    }

    v17 = +[NSAssertionHandler currentHandler];
    v18 = v17;
    v19 = @"Invalid parameter not satisfying: startDate";
    v20 = a2;
    selfCopy2 = self;
    v22 = 38;
    goto LABEL_12;
  }

  if (!endDateCopy)
  {
    v23 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [MOPromptMetrics initWithStartDate:endDate:];
    }

    v17 = +[NSAssertionHandler currentHandler];
    v18 = v17;
    v19 = @"Invalid parameter not satisfying: endDate";
    v20 = a2;
    selfCopy2 = self;
    v22 = 39;
LABEL_12:
    [v17 handleFailureInMethod:v20 object:selfCopy2 file:@"MOPromptMetrics.m" lineNumber:v22 description:v19];

    selfCopy3 = 0;
    goto LABEL_13;
  }

  v11 = [(MOPromptMetrics *)self initWithLoggingEnabled:1];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_startDate, date);
    objc_storeStrong(&v12->_endDate, endDate);
    [(NSDate *)v12->_endDate timeIntervalSinceDate:v12->_startDate];
    v13 = [NSNumber numberWithDouble:?];
    metrics = [(MOMetric *)v12 metrics];
    [metrics setObject:v13 forKeyedSubscript:@"QueryTimeDuration"];
  }

  self = v12;
  selfCopy3 = self;
LABEL_13:

  return selfCopy3;
}

- (MOPromptMetrics)initWithStartDate:(id)date endDate:(id)endDate EventManager:(id)manager
{
  managerCopy = manager;
  if (managerCopy)
  {
    v11 = [(MOPromptMetrics *)self initWithStartDate:date endDate:endDate];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_eventManager, manager);
    }

    self = v12;
    selfCopy = self;
  }

  else
  {
    v14 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [MOPromptMetrics initWithStartDate:endDate:EventManager:];
    }

    v15 = +[NSAssertionHandler currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"MOPromptMetrics.m" lineNumber:54 description:@"Invalid parameter not satisfying: eventManager"];

    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)supportedMetricKeys
{
  integerKeys = [objc_opt_class() integerKeys];
  v3 = [NSMutableSet setWithSet:integerKeys];

  bOOLeanKeys = [objc_opt_class() BOOLeanKeys];
  allObjects = [bOOLeanKeys allObjects];
  [v3 addObjectsFromArray:allObjects];

  doubleKeys = [objc_opt_class() doubleKeys];
  allObjects2 = [doubleKeys allObjects];
  [v3 addObjectsFromArray:allObjects2];

  bucketedKeys = [objc_opt_class() bucketedKeys];
  allObjects3 = [bucketedKeys allObjects];
  [v3 addObjectsFromArray:allObjects3];

  return v3;
}

- (BOOL)submitMetricsWithError:(id *)error
{
  [(MOPromptMetrics *)self setDerivedMetrics];
  v6.receiver = self;
  v6.super_class = MOPromptMetrics;
  return [(MOMetric *)&v6 submitMetricsWithError:error];
}

+ (id)medianOf:(id)of
{
  ofCopy = of;
  if ([ofCopy count])
  {
    if ([ofCopy count] == 1)
    {
      v4 = [ofCopy objectAtIndexedSubscript:0];
      [v4 doubleValue];
      v5 = [NSNumber numberWithDouble:?];
    }

    else
    {
      v4 = [ofCopy sortedArrayUsingSelector:"compare:"];
      v6 = [ofCopy count];
      v7 = [v4 count] >> 1;
      if (v6)
      {
        v8 = [v4 objectAtIndex:v7];
        [v8 doubleValue];
        v5 = [NSNumber numberWithDouble:?];
      }

      else
      {
        v8 = [v4 objectAtIndex:v7 - 1];
        [v8 doubleValue];
        v10 = v9;
        v11 = [v4 objectAtIndex:v7];
        [v11 doubleValue];
        v5 = [NSNumber numberWithDouble:(v10 + v12) * 0.5];
      }
    }
  }

  else
  {
    v5 = &off_10036E7A0;
  }

  return v5;
}

+ (id)meanOf:(id)of
{
  ofCopy = of;
  if ([ofCopy count])
  {
    if ([ofCopy count] == 1)
    {
      v4 = [ofCopy objectAtIndexedSubscript:0];
      [v4 doubleValue];
      v5 = [NSNumber numberWithDouble:?];
    }

    else
    {
      v6 = 0.0;
      if ([ofCopy count])
      {
        v7 = 1;
        do
        {
          if ([ofCopy count] >= v7)
          {
            v8 = [ofCopy objectAtIndexedSubscript:v7 - 1];
            [v8 doubleValue];
            v6 = v6 + (v9 - v6) / v7;
          }

          else
          {
            v6 = v6 - v6 / v7;
          }
        }

        while ([ofCopy count] > v7++);
      }

      v5 = [NSNumber numberWithDouble:v6];
    }
  }

  else
  {
    v5 = &off_10036E7A0;
  }

  return v5;
}

+ (id)standardDeviationOf:(id)of
{
  ofCopy = of;
  if ([ofCopy count])
  {
    if ([ofCopy count] == 1)
    {
      v4 = &off_10036E7B0;
    }

    else
    {
      v5 = [MOPromptMetrics meanOf:ofCopy];
      [v5 doubleValue];
      v7 = v6;

      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v8 = ofCopy;
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        v12 = 0.0;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v8);
            }

            [*(*(&v16 + 1) + 8 * i) doubleValue];
            v12 = v12 + (v14 - v7) * (v14 - v7);
          }

          v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v10);
      }

      else
      {
        v12 = 0.0;
      }

      v4 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", sqrt(v12 / [v8 count]));
    }
  }

  else
  {
    v4 = &off_10036E7A0;
  }

  return v4;
}

+ (id)getTimeDeltaMetricMap
{
  v4[0] = @"Routine_MeanDeltaBetweenVisits";
  v4[1] = @"Routine_MeanDeltaBetweenVisitsBoundariesIncluded";
  v5[0] = @"Routine_MeanDeltaBetweenVisits_Bucketed";
  v5[1] = @"Routine_MeanDeltaBetweenVisitsBoundariesIncluded_Bucketed";
  v4[2] = @"Routine_MinDeltaBetweenVisits";
  v4[3] = @"Routine_MinDeltaBetweenVisitsBoundariesIncluded";
  v5[2] = @"Routine_MinDeltaBetweenVisits_Bucketed";
  v5[3] = @"Routine_MinDeltaBetweenVisitsBoundariesIncluded_Bucketed";
  v4[4] = @"Routine_MaxDeltaBetweenVisits";
  v4[5] = @"Routine_MaxDeltaBetweenVisitsBoundariesIncluded";
  v5[4] = @"Routine_MaxDeltaBetweenVisits_Bucketed";
  v5[5] = @"Routine_MaxDeltaBetweenVisitsBoundariesIncluded_Bucketed";
  v4[6] = @"Routine_SDDeltaBetweenVisits";
  v4[7] = @"Routine_SDDeltaBetweenVisitsBoundariesIncluded";
  v5[6] = @"Routine_SDDeltaBetweenVisits_Bucketed";
  v5[7] = @"Routine_SDDeltaBetweenVisitsBoundariesIncluded_Bucketed";
  v4[8] = @"Storytelling_MeanDeltaBetweenMoments";
  v4[9] = @"Storytelling_MeanDeltaBetweenMomentsBoundariesIncluded";
  v5[8] = @"Storytelling_MeanDeltaBetweenMoments_Bucketed";
  v5[9] = @"Storytelling_MeanDeltaBetweenMomentsBoundariesIncluded_Bucketed";
  v4[10] = @"Storytelling_MinDeltaBetweenMoments";
  v4[11] = @"Storytelling_MinDeltaBetweenMomentsBoundariesIncluded";
  v5[10] = @"Storytelling_MinDeltaBetweenMoments_Bucketed";
  v5[11] = @"Storytelling_MinDeltaBetweenMomentsBoundariesIncluded_Bucketed";
  v4[12] = @"Storytelling_MaxDeltaBetweenMoments";
  v4[13] = @"Storytelling_MaxDeltaBetweenMomentsBoundariesIncluded";
  v5[12] = @"Storytelling_MaxDeltaBetweenMoments_Bucketed";
  v5[13] = @"Storytelling_MaxDeltaBetweenMomentsBoundariesIncluded_Bucketed";
  v4[14] = @"Storytelling_SDDeltaBetweenMoments";
  v4[15] = @"Storytelling_SDDeltaBetweenMomentsBoundariesIncluded";
  v5[14] = @"Storytelling_SDDeltaBetweenMoments_Bucketed";
  v5[15] = @"Storytelling_SDDeltaBetweenMomentsBoundariesIncluded_Bucketed";
  v4[16] = @"Workout_MeanDeltaBetweenWorkouts";
  v4[17] = @"Workout_MeanDeltaBetweenWorkoutsBoundariesIncluded";
  v5[16] = @"Workout_MeanDeltaBetweenWorkouts_Bucketed";
  v5[17] = @"Workout_MeanDeltaBetweenWorkoutsBoundariesIncluded_Bucketed";
  v4[18] = @"Workout_MinDeltaBetweenWorkouts";
  v4[19] = @"Workout_MinDeltaBetweenWorkoutsBoundariesIncluded";
  v5[18] = @"Workout_MinDeltaBetweenWorkouts_Bucketed";
  v5[19] = @"Workout_MinDeltaBetweenWorkoutsBoundariesIncluded_Bucketed";
  v4[20] = @"Workout_MaxDeltaBetweenWorkouts";
  v4[21] = @"Workout_MaxDeltaBetweenWorkoutsBoundariesIncluded";
  v5[20] = @"Workout_MaxDeltaBetweenWorkouts_Bucketed";
  v5[21] = @"Workout_MaxDeltaBetweenWorkoutsBoundariesIncluded_Bucketed";
  v4[22] = @"Workout_SDDeltaBetweenWorkouts";
  v4[23] = @"Workout_SDDeltaBetweenWorkoutsBoundariesIncluded";
  v5[22] = @"Workout_SDDeltaBetweenWorkouts_Bucketed";
  v5[23] = @"Workout_SDDeltaBetweenWorkoutsBoundariesIncluded_Bucketed";
  v4[24] = @"Proactive_MeanDeltaBetweenMediaOnRepeatEvents";
  v4[25] = @"Proactive_MeanDeltaBetweenMediaOnRepeatEventsBoundariesIncluded";
  v5[24] = @"Proactive_MeanDeltaBetweenMediaOnRepeatEvents_Bucketed";
  v5[25] = @"Proactive_MeanDeltaBetweenMediaOnRepeatEventsBoundariesIncluded_Bucketed";
  v4[26] = @"Proactive_MinDeltaBetweenMediaOnRepeatEvents";
  v4[27] = @"Proactive_MinDeltaBetweenMediaOnRepeatEventsBoundariesIncluded";
  v5[26] = @"Proactive_MinDeltaBetweenMediaOnRepeatEvents_Bucketed";
  v5[27] = @"Proactive_MinDeltaBetweenMediaOnRepeatEventsBoundariesIncluded_Bucketed";
  v4[28] = @"Proactive_MaxDeltaBetweenMediaOnRepeatEvents";
  v4[29] = @"Proactive_MaxDeltaBetweenMediaOnRepeatEventsBoundariesIncluded";
  v5[28] = @"Proactive_MaxDeltaBetweenMediaOnRepeatEvents_Bucketed";
  v5[29] = @"Proactive_MaxDeltaBetweenMediaOnRepeatEventsBoundariesIncluded_Bucketed";
  v4[30] = @"Proactive_SDDeltaBetweenMediaOnRepeatEvents";
  v4[31] = @"Proactive_SDDeltaBetweenMediaOnRepeatEventsBoundariesIncluded";
  v5[30] = @"Proactive_SDDeltaBetweenMediaOnRepeatEvents_Bucketed";
  v5[31] = @"Proactive_SDDeltaBetweenMediaOnRepeatEventsBoundariesIncluded_Bucketed";
  v4[32] = @"Proactive_MeanDeltaBetweenTopicEvents";
  v4[33] = @"Proactive_MeanDeltaBetweenTopicEventsBoundariesIncluded";
  v5[32] = @"Proactive_MeanDeltaBetweenTopicEvents_Bucketed";
  v5[33] = @"Proactive_MeanDeltaBetweenTopicEventsBoundariesIncluded_Bucketed";
  v4[34] = @"Proactive_MinDeltaBetweenTopicEvents";
  v4[35] = @"Proactive_MinDeltaBetweenTopicEventsBoundariesIncluded";
  v5[34] = @"Proactive_MinDeltaBetweenTopicEvents_Bucketed";
  v5[35] = @"Proactive_MinDeltaBetweenTopicEventsBoundariesIncluded_Bucketed";
  v4[36] = @"Proactive_MaxDeltaBetweenTopicEvents";
  v4[37] = @"Proactive_MaxDeltaBetweenTopicEventsBoundariesIncluded";
  v5[36] = @"Proactive_MaxDeltaBetweenTopicEvents_Bucketed";
  v5[37] = @"Proactive_MaxDeltaBetweenTopicEventsBoundariesIncluded_Bucketed";
  v4[38] = @"Proactive_SDDeltaBetweenTopicEvents";
  v4[39] = @"Proactive_SDDeltaBetweenTopicEventsBoundariesIncluded";
  v5[38] = @"Proactive_SDDeltaBetweenTopicEvents_Bucketed";
  v5[39] = @"Proactive_SDDeltaBetweenTopicEventsBoundariesIncluded_Bucketed";
  v4[40] = @"Proactive_MeanDeltaBetweenTravelEvents";
  v4[41] = @"Proactive_MeanDeltaBetweenTravelEventsBoundariesIncluded";
  v5[40] = @"Proactive_MeanDeltaBetweenTravelEvents_Bucketed";
  v5[41] = @"Proactive_MeanDeltaBetweenTravelEventsBoundariesIncluded_Bucketed";
  v4[42] = @"Proactive_MinDeltaBetweenTravelEvents";
  v4[43] = @"Proactive_MinDeltaBetweenTravelEventsBoundariesIncluded";
  v5[42] = @"Proactive_MinDeltaBetweenTravelEvents_Bucketed";
  v5[43] = @"Proactive_MinDeltaBetweenTravelEventsBoundariesIncluded_Bucketed";
  v4[44] = @"Proactive_MaxDeltaBetweenTravelEvents";
  v4[45] = @"Proactive_MaxDeltaBetweenTravelEventsBoundariesIncluded";
  v5[44] = @"Proactive_MaxDeltaBetweenTravelEvents_Bucketed";
  v5[45] = @"Proactive_MaxDeltaBetweenTravelEventsBoundariesIncluded_Bucketed";
  v4[46] = @"Proactive_SDDeltaBetweenTravelEvents";
  v4[47] = @"Proactive_SDDeltaBetweenTravelEventsBoundariesIncluded";
  v5[46] = @"Proactive_SDDeltaBetweenTravelEvents_Bucketed";
  v5[47] = @"Proactive_SDDeltaBetweenTravelEventsBoundariesIncluded_Bucketed";
  v4[48] = @"Proactive_MeanDeltaBetweenSharedWithYouEvents";
  v4[49] = @"Proactive_MeanDeltaBetweenSharedWithYouEventsBoundariesIncluded";
  v5[48] = @"Proactive_MeanDeltaBetweenSharedWithYouEvents_Bucketed";
  v5[49] = @"Proactive_MeanDeltaBetweenSharedWithYouEventsBoundariesIncluded_Bucketed";
  v4[50] = @"Proactive_MinDeltaBetweenSharedWithYouEvents";
  v4[51] = @"Proactive_MinDeltaBetweenSharedWithYouEventsBoundariesIncluded";
  v5[50] = @"Proactive_MinDeltaBetweenSharedWithYouEvents_Bucketed";
  v5[51] = @"Proactive_MinDeltaBetweenSharedWithYouEventsBoundariesIncluded_Bucketed";
  v4[52] = @"Proactive_MaxDeltaBetweenSharedWithYouEvents";
  v4[53] = @"Proactive_MaxDeltaBetweenSharedWithYouEventsBoundariesIncluded";
  v5[52] = @"Proactive_MaxDeltaBetweenSharedWithYouEvents_Bucketed";
  v5[53] = @"Proactive_MaxDeltaBetweenSharedWithYouEventsBoundariesIncluded_Bucketed";
  v4[54] = @"Proactive_SDDeltaBetweenSharedWithYouEvents";
  v4[55] = @"Proactive_SDDeltaBetweenSharedWithYouEventsBoundariesIncluded";
  v5[54] = @"Proactive_SDDeltaBetweenSharedWithYouEvents_Bucketed";
  v5[55] = @"Proactive_SDDeltaBetweenSharedWithYouEventsBoundariesIncluded_Bucketed";
  v4[56] = @"Proactive_MeanDeltaBetweenSignificantContactEvents";
  v4[57] = @"Proactive_MeanDeltaBetweenSignificantContactEventsBoundariesIncluded";
  v5[56] = @"Proactive_MeanDeltaBetweenSignificantContactEvents_Bucketed";
  v5[57] = @"Proactive_MeanDeltaBetweenSignificantContactEventsBoundariesIncluded_Bucketed";
  v4[58] = @"Proactive_MinDeltaBetweenSignificantContactEvents";
  v4[59] = @"Proactive_MinDeltaBetweenSignificantContactEventsBoundariesIncluded";
  v5[58] = @"Proactive_MinDeltaBetweenSignificantContactEvents_Bucketed";
  v5[59] = @"Proactive_MinDeltaBetweenSignificantContactEventsBoundariesIncluded_Bucketed";
  v4[60] = @"Proactive_MaxDeltaBetweenSignificantContactEvents";
  v4[61] = @"Proactive_MaxDeltaBetweenSignificantContactEventsBoundariesIncluded";
  v5[60] = @"Proactive_MaxDeltaBetweenSignificantContactEvents_Bucketed";
  v5[61] = @"Proactive_MaxDeltaBetweenSignificantContactEventsBoundariesIncluded_Bucketed";
  v4[62] = @"Proactive_SDDeltaBetweenSignificantContactEvents";
  v4[63] = @"Proactive_SDDeltaBetweenSignificantContactEventsBoundariesIncluded";
  v5[62] = @"Proactive_SDDeltaBetweenSignificantContactEvents_Bucketed";
  v5[63] = @"Proactive_SDDeltaBetweenSignificantContactEventsBoundariesIncluded_Bucketed";
  v4[64] = @"Proactive_MeanDeltaBetweenStructuredEvents";
  v5[64] = @"Proactive_MeanDeltaBetweenStructuredEvents_Bucketed";
  v4[65] = @"Proactive_MeanDeltaBetweenStructuredEventsBoundariesIncluded";
  v5[65] = @"Proactive_MeanDeltaBetweenStructuredEventsBoundariesIncluded_Bucketed";
  v4[66] = @"Proactive_MinDeltaBetweenStructuredEvents";
  v5[66] = @"Proactive_MinDeltaBetweenStructuredEvents_Bucketed";
  v4[67] = @"Proactive_MinDeltaBetweenStructuredEventsBoundariesIncluded";
  v5[67] = @"Proactive_MinDeltaBetweenStructuredEventsBoundariesIncluded_Bucketed";
  v4[68] = @"Proactive_MaxDeltaBetweenStructuredEvents";
  v5[68] = @"Proactive_MaxDeltaBetweenStructuredEvents_Bucketed";
  v4[69] = @"Proactive_MaxDeltaBetweenStructuredEventsBoundariesIncluded";
  v5[69] = @"Proactive_MaxDeltaBetweenStructuredEventsBoundariesIncluded_Bucketed";
  v4[70] = @"Proactive_SDDeltaBetweenStructuredEvents";
  v5[70] = @"Proactive_SDDeltaBetweenStructuredEvents_Bucketed";
  v4[71] = @"Proactive_SDDeltaBetweenStructuredEventsBoundariesIncluded";
  v5[71] = @"Proactive_SDDeltaBetweenStructuredEventsBoundariesIncluded_Bucketed";
  v4[72] = @"Proactive_MeanDeltaBetweenLeisureMediaEvents";
  v5[72] = @"Proactive_MeanDeltaBetweenLeisureMediaEvents_Bucketed";
  v4[73] = @"Proactive_MeanDeltaBetweenLeisureMediaEventsBoundariesIncluded";
  v5[73] = @"Proactive_MeanDeltaBetweenLeisureMediaEventsBoundariesIncluded_Bucketed";
  v4[74] = @"Proactive_MinDeltaBetweenLeisureMediaEvents";
  v5[74] = @"Proactive_MinDeltaBetweenLeisureMediaEvents_Bucketed";
  v4[75] = @"Proactive_MinDeltaBetweenLeisureMediaEventsBoundariesIncluded";
  v5[75] = @"Proactive_MinDeltaBetweenLeisureMediaEventsBoundariesIncluded_Bucketed";
  v4[76] = @"Proactive_MaxDeltaBetweenLeisureMediaEvents";
  v5[76] = @"Proactive_MaxDeltaBetweenLeisureMediaEvents_Bucketed";
  v4[77] = @"Proactive_MaxDeltaBetweenLeisureMediaEventsBoundariesIncluded";
  v5[77] = @"Proactive_MaxDeltaBetweenLeisureMediaEventsBoundariesIncluded_Bucketed";
  v4[78] = @"Proactive_SDDeltaBetweenLeisureMediaEvents";
  v5[78] = @"Proactive_SDDeltaBetweenLeisureMediaEvents_Bucketed";
  v4[79] = @"Proactive_SDDeltaBetweenLeisureMediaEventsBoundariesIncluded";
  v5[79] = @"Proactive_SDDeltaBetweenLeisureMediaEventsBoundariesIncluded_Bucketed";
  v4[80] = @"Proactive_MeanDeltaBetweenNLEvents";
  v5[80] = @"Proactive_MeanDeltaBetweenNLEvents_Bucketed";
  v4[81] = @"Proactive_MeanDeltaBetweenNLEventsBoundariesIncluded";
  v5[81] = @"Proactive_MeanDeltaBetweenNLEventsBoundariesIncluded_Bucketed";
  v4[82] = @"Proactive_MinDeltaBetweenNLEvents";
  v5[82] = @"Proactive_MinDeltaBetweenNLEvents_Bucketed";
  v4[83] = @"Proactive_MinDeltaBetweenNLEventsBoundariesIncluded";
  v5[83] = @"Proactive_MinDeltaBetweenNLEventsBoundariesIncluded_Bucketed";
  v4[84] = @"Proactive_MaxDeltaBetweenNLEvents";
  v5[84] = @"Proactive_MaxDeltaBetweenNLEvents_Bucketed";
  v4[85] = @"Proactive_MaxDeltaBetweenNLEventsBoundariesIncluded";
  v5[85] = @"Proactive_MaxDeltaBetweenNLEventsBoundariesIncluded_Bucketed";
  v4[86] = @"Proactive_SDDeltaBetweenNLEvents";
  v5[86] = @"Proactive_SDDeltaBetweenNLEvents_Bucketed";
  v4[87] = @"Proactive_SDDeltaBetweenNLEventsBoundariesIncluded";
  v5[87] = @"Proactive_SDDeltaBetweenNLEventsBoundariesIncluded_Bucketed";
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:88];

  return v2;
}

- (void)setDerivedMetrics
{
  v286 = [MOMetric binsFromStart:&off_10036C1D8 toEnd:&off_10036C268 gap:&off_10036C280];
  v285 = [MOMetric binsFromStart:&off_10036C1D8 toEnd:&off_10036E7C0 gap:&off_10036E7D0];
  v3 = [MOMetric binsFromStart:&off_10036C1D8 toEnd:&off_10036E7E0 gap:&off_10036E7F0];
  v289 = [MOMetric binsFromStart:&off_10036C1D8 toEnd:&off_10036E7E0 gap:&off_10036E800];
  v283 = [MOMetric binsFromStart:&off_10036C1D8 toEnd:&off_10036C280 gap:&off_10036E810];
  metrics = [(MOMetric *)self metrics];
  v5 = [metrics objectForKeyedSubscript:@"QueryTimeDuration"];
  v284 = v3;
  v6 = [MOMetric binForNumber:v5 bins:v3];
  metrics2 = [(MOMetric *)self metrics];
  [metrics2 setObject:v6 forKeyedSubscript:@"QueryTimeDuration_Bucketed"];

  metrics3 = [(MOMetric *)self metrics];
  v9 = [metrics3 objectForKeyedSubscript:@"Age"];
  v10 = [MOMetric binForNumber:v9 bins:&off_10036E2F8];
  metrics4 = [(MOMetric *)self metrics];
  [metrics4 setObject:v10 forKeyedSubscript:@"Age_Bucketed"];

  +[MOPromptMetrics getTimeDeltaMetricMap];
  v294 = 0u;
  v295 = 0u;
  v296 = 0u;
  v288 = v297 = 0u;
  allKeys = [v288 allKeys];
  v13 = [allKeys countByEnumeratingWithState:&v294 objects:v301 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v295;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v295 != v15)
        {
          objc_enumerationMutation(allKeys);
        }

        v17 = *(*(&v294 + 1) + 8 * i);
        v18 = [v288 objectForKey:v17];
        metrics5 = [(MOMetric *)self metrics];
        v20 = [metrics5 objectForKeyedSubscript:v17];
        v21 = [MOMetric binForNumber:v20 bins:v289];
        metrics6 = [(MOMetric *)self metrics];
        [metrics6 setObject:v21 forKeyedSubscript:v18];
      }

      v14 = [allKeys countByEnumeratingWithState:&v294 objects:v301 count:16];
    }

    while (v14);
  }

  metrics7 = [(MOMetric *)self metrics];
  v24 = [metrics7 objectForKeyedSubscript:@"Routine_nVisits"];
  v25 = [MOMetric binForNumber:v24 bins:v286];
  metrics8 = [(MOMetric *)self metrics];
  [metrics8 setObject:v25 forKeyedSubscript:@"Routine_nVisits_Bucketed"];

  metrics9 = [(MOMetric *)self metrics];
  v28 = [metrics9 objectForKeyedSubscript:@"Routine_nHomeVisits"];
  v29 = [MOMetric binForNumber:v28 bins:v286];
  metrics10 = [(MOMetric *)self metrics];
  [metrics10 setObject:v29 forKeyedSubscript:@"Routine_nHomeVisits_Bucketed"];

  metrics11 = [(MOMetric *)self metrics];
  v32 = [metrics11 objectForKeyedSubscript:@"Routine_nWorkVisits"];
  v33 = [MOMetric binForNumber:v32 bins:v286];
  metrics12 = [(MOMetric *)self metrics];
  [metrics12 setObject:v33 forKeyedSubscript:@"Routine_nWorkVisits_Bucketed"];

  metrics13 = [(MOMetric *)self metrics];
  v36 = [metrics13 objectForKeyedSubscript:@"Routine_nGymVisits"];
  v37 = [MOMetric binForNumber:v36 bins:v286];
  metrics14 = [(MOMetric *)self metrics];
  [metrics14 setObject:v37 forKeyedSubscript:@"Routine_nGymVisits_Bucketed"];

  metrics15 = [(MOMetric *)self metrics];
  v40 = [metrics15 objectForKeyedSubscript:@"Routine_nSchoolVisits"];
  v41 = [MOMetric binForNumber:v40 bins:v286];
  metrics16 = [(MOMetric *)self metrics];
  [metrics16 setObject:v41 forKeyedSubscript:@"Routine_nSchoolVisits_Bucketed"];

  metrics17 = [(MOMetric *)self metrics];
  v44 = [metrics17 objectForKeyedSubscript:@"Routine_AverageVisitsLatency"];
  v45 = [MOMetric binForNumber:v44 bins:v285];
  metrics18 = [(MOMetric *)self metrics];
  [metrics18 setObject:v45 forKeyedSubscript:@"Routine_AverageVisitsLatency_Bucketed"];

  metrics19 = [(MOMetric *)self metrics];
  v48 = [metrics19 objectForKeyedSubscript:@"Routine_AverageVisitsRealLatency"];
  v49 = [MOMetric binForNumber:v48 bins:v285];
  metrics20 = [(MOMetric *)self metrics];
  [metrics20 setObject:v49 forKeyedSubscript:@"Routine_AverageVisitsRealLatency_Bucketed"];

  metrics21 = [(MOMetric *)self metrics];
  v52 = [metrics21 objectForKeyedSubscript:@"Storytelling_NumMoments"];
  v53 = [MOMetric binForNumber:v52 bins:v286];
  metrics22 = [(MOMetric *)self metrics];
  [metrics22 setObject:v53 forKeyedSubscript:@"Storytelling_NumMoments_Bucketed"];

  metrics23 = [(MOMetric *)self metrics];
  v56 = [metrics23 objectForKeyedSubscript:@"Storytelling_NumMomentsWithEvent"];
  v57 = [MOMetric binForNumber:v56 bins:v286];
  metrics24 = [(MOMetric *)self metrics];
  [metrics24 setObject:v57 forKeyedSubscript:@"Storytelling_NumMomentsWithEvent_Bucketed"];

  metrics25 = [(MOMetric *)self metrics];
  v60 = [metrics25 objectForKeyedSubscript:@"Storytelling_NumMomentsWithEventAndArtist"];
  v61 = [MOMetric binForNumber:v60 bins:v286];
  metrics26 = [(MOMetric *)self metrics];
  [metrics26 setObject:v61 forKeyedSubscript:@"Storytelling_NumMomentsWithEventAndArtist_Bucketed"];

  metrics27 = [(MOMetric *)self metrics];
  v64 = [metrics27 objectForKeyedSubscript:@"Storytelling_NumMomentsWithFamily"];
  v65 = [MOMetric binForNumber:v64 bins:v286];
  metrics28 = [(MOMetric *)self metrics];
  [metrics28 setObject:v65 forKeyedSubscript:@"Storytelling_NumMomentsWithFamily_Bucketed"];

  metrics29 = [(MOMetric *)self metrics];
  v68 = [metrics29 objectForKeyedSubscript:@"Storytelling_NumMomentsWithPeople"];
  v69 = [MOMetric binForNumber:v68 bins:v286];
  metrics30 = [(MOMetric *)self metrics];
  [metrics30 setObject:v69 forKeyedSubscript:@"Storytelling_NumMomentsWithPeople_Bucketed"];

  metrics31 = [(MOMetric *)self metrics];
  v72 = [metrics31 objectForKeyedSubscript:@"Storytelling_AverageMomentsLatency"];
  v73 = [MOMetric binForNumber:v72 bins:v285];
  metrics32 = [(MOMetric *)self metrics];
  [metrics32 setObject:v73 forKeyedSubscript:@"Storytelling_AverageMomentsLatency_Bucketed"];

  metrics33 = [(MOMetric *)self metrics];
  v76 = [metrics33 objectForKeyedSubscript:@"Storytelling_AverageMomentsRealLatency"];
  v77 = [MOMetric binForNumber:v76 bins:v285];
  selfCopy = self;
  metrics34 = [(MOMetric *)self metrics];
  [metrics34 setObject:v77 forKeyedSubscript:@"Storytelling_AverageMomentsRealLatency_Bucketed"];

  v299[0] = @"Storytelling_MomenetInferenceTag_1_1";
  v299[1] = @"Storytelling_MomenetInferenceTag_1_2";
  v300[0] = @"Storytelling_MomenetInferenceTag_1_1_Bucketed";
  v300[1] = @"Storytelling_MomenetInferenceTag_1_2_Bucketed";
  v299[2] = @"Storytelling_MomenetInferenceTag_1_3";
  v299[3] = @"Storytelling_MomenetInferenceTag_1_4";
  v300[2] = @"Storytelling_MomenetInferenceTag_1_3_Bucketed";
  v300[3] = @"Storytelling_MomenetInferenceTag_1_4_Bucketed";
  v299[4] = @"Storytelling_MomenetInferenceTag_2_1";
  v299[5] = @"Storytelling_MomenetInferenceTag_2_2";
  v300[4] = @"Storytelling_MomenetInferenceTag_2_1_Bucketed";
  v300[5] = @"Storytelling_MomenetInferenceTag_2_2_Bucketed";
  v299[6] = @"Storytelling_MomenetInferenceTag_2_3";
  v299[7] = @"Storytelling_MomenetInferenceTag_2_4";
  v300[6] = @"Storytelling_MomenetInferenceTag_2_3_Bucketed";
  v300[7] = @"Storytelling_MomenetInferenceTag_2_4_Bucketed";
  v299[8] = @"Storytelling_MomenetInferenceTag_3_1";
  v299[9] = @"Storytelling_MomenetInferenceTag_3_2";
  v300[8] = @"Storytelling_MomenetInferenceTag_3_1_Bucketed";
  v300[9] = @"Storytelling_MomenetInferenceTag_3_2_Bucketed";
  v299[10] = @"Storytelling_MomenetInferenceTag_3_3";
  v299[11] = @"Storytelling_MomenetInferenceTag_3_4";
  v300[10] = @"Storytelling_MomenetInferenceTag_3_3_Bucketed";
  v300[11] = @"Storytelling_MomenetInferenceTag_3_4_Bucketed";
  [NSDictionary dictionaryWithObjects:v300 forKeys:v299 count:12];
  v290 = 0u;
  v291 = 0u;
  v292 = 0u;
  v79 = v293 = 0u;
  v80 = [v79 countByEnumeratingWithState:&v290 objects:v298 count:16];
  if (v80)
  {
    v81 = v80;
    v82 = *v291;
    do
    {
      for (j = 0; j != v81; j = j + 1)
      {
        if (*v291 != v82)
        {
          objc_enumerationMutation(v79);
        }

        v84 = *(*(&v290 + 1) + 8 * j);
        metrics35 = [(MOMetric *)selfCopy metrics];
        v86 = [metrics35 objectForKeyedSubscript:v84];
        v87 = [MOPhotoMomentTags getCoarseInferenceTag:v86];

        if (v87)
        {
          v88 = [v79 objectForKeyedSubscript:v84];
          metrics36 = [(MOMetric *)selfCopy metrics];
          [metrics36 setObject:v87 forKeyedSubscript:v88];
        }
      }

      v81 = [v79 countByEnumeratingWithState:&v290 objects:v298 count:16];
    }

    while (v81);
  }

  v90 = v79;

  metrics37 = [(MOMetric *)selfCopy metrics];
  v92 = [metrics37 objectForKeyedSubscript:@"Workout_NumWorkouts"];
  v93 = [MOMetric binForNumber:v92 bins:v286];
  metrics38 = [(MOMetric *)selfCopy metrics];
  [metrics38 setObject:v93 forKeyedSubscript:@"Workout_NumWorkouts_Bucketed"];

  metrics39 = [(MOMetric *)selfCopy metrics];
  v96 = [metrics39 objectForKeyedSubscript:@"Workout_AverageWorkoutLatency"];
  v97 = [MOMetric binForNumber:v96 bins:v285];
  metrics40 = [(MOMetric *)selfCopy metrics];
  [metrics40 setObject:v97 forKeyedSubscript:@"Workout_AverageWorkoutLatency_Bucketed"];

  metrics41 = [(MOMetric *)selfCopy metrics];
  v100 = [metrics41 objectForKeyedSubscript:@"Proactive_NumAllEvents"];
  v101 = [MOMetric binForNumber:v100 bins:v286];
  metrics42 = [(MOMetric *)selfCopy metrics];
  [metrics42 setObject:v101 forKeyedSubscript:@"Proactive_NumAllEvents_Bucketed"];

  metrics43 = [(MOMetric *)selfCopy metrics];
  v104 = [metrics43 objectForKeyedSubscript:@"Proactive_NumMediaOnRepeatEvents"];
  v105 = [MOMetric binForNumber:v104 bins:v286];
  metrics44 = [(MOMetric *)selfCopy metrics];
  [metrics44 setObject:v105 forKeyedSubscript:@"Proactive_NumMediaOnRepeatEvents_Bucketed"];

  metrics45 = [(MOMetric *)selfCopy metrics];
  v108 = [metrics45 objectForKeyedSubscript:@"Proactive_NumTopicEvents"];
  v109 = [MOMetric binForNumber:v108 bins:v286];
  metrics46 = [(MOMetric *)selfCopy metrics];
  [metrics46 setObject:v109 forKeyedSubscript:@"Proactive_NumTopicEvents_Bucketed"];

  metrics47 = [(MOMetric *)selfCopy metrics];
  v112 = [metrics47 objectForKeyedSubscript:@"Proactive_NumTravelEvents"];
  v113 = [MOMetric binForNumber:v112 bins:v286];
  metrics48 = [(MOMetric *)selfCopy metrics];
  [metrics48 setObject:v113 forKeyedSubscript:@"Proactive_NumTravelEvents_Bucketed"];

  metrics49 = [(MOMetric *)selfCopy metrics];
  v116 = [metrics49 objectForKeyedSubscript:@"Proactive_NumSharedWithYouEvents"];
  v117 = [MOMetric binForNumber:v116 bins:v286];
  metrics50 = [(MOMetric *)selfCopy metrics];
  [metrics50 setObject:v117 forKeyedSubscript:@"Proactive_NumSharedWithYouEvents_Bucketed"];

  metrics51 = [(MOMetric *)selfCopy metrics];
  v120 = [metrics51 objectForKeyedSubscript:@"Proactive_NumSignificantContactEvents"];
  v121 = [MOMetric binForNumber:v120 bins:v286];
  metrics52 = [(MOMetric *)selfCopy metrics];
  [metrics52 setObject:v121 forKeyedSubscript:@"Proactive_NumSignificantContactEvents_Bucketed"];

  metrics53 = [(MOMetric *)selfCopy metrics];
  v124 = [metrics53 objectForKeyedSubscript:@"Proactive_NumStructuredEvents"];
  v125 = [MOMetric binForNumber:v124 bins:v286];
  metrics54 = [(MOMetric *)selfCopy metrics];
  [metrics54 setObject:v125 forKeyedSubscript:@"Proactive_NumStructuredEvents_Bucketed"];

  metrics55 = [(MOMetric *)selfCopy metrics];
  v128 = [metrics55 objectForKeyedSubscript:@"Proactive_NumLeisureMediaEvents"];
  v129 = [MOMetric binForNumber:v128 bins:v286];
  metrics56 = [(MOMetric *)selfCopy metrics];
  [metrics56 setObject:v129 forKeyedSubscript:@"Proactive_NumLeisureMediaEvents_Bucketed"];

  metrics57 = [(MOMetric *)selfCopy metrics];
  v132 = [metrics57 objectForKeyedSubscript:@"Proactive_NumNLEvents"];
  v133 = [MOMetric binForNumber:v132 bins:v286];
  metrics58 = [(MOMetric *)selfCopy metrics];
  [metrics58 setObject:v133 forKeyedSubscript:@"Proactive_NumNLEvents_Bucketed"];

  metrics59 = [(MOMetric *)selfCopy metrics];
  v136 = [metrics59 objectForKeyedSubscript:@"Proactive_EventsAverageLatency"];
  v137 = [MOMetric binForNumber:v136 bins:v285];
  metrics60 = [(MOMetric *)selfCopy metrics];
  [metrics60 setObject:v137 forKeyedSubscript:@"Proactive_EventsAverageLatency_Bucketed"];

  metrics61 = [(MOMetric *)selfCopy metrics];
  v140 = [metrics61 objectForKeyedSubscript:@"Proactive_MediaOnRepeatAverageLatency"];
  v141 = [MOMetric binForNumber:v140 bins:v285];
  metrics62 = [(MOMetric *)selfCopy metrics];
  [metrics62 setObject:v141 forKeyedSubscript:@"Proactive_MediaOnRepeatAverageLatency_Bucketed"];

  metrics63 = [(MOMetric *)selfCopy metrics];
  v144 = [metrics63 objectForKeyedSubscript:@"Proactive_TopicAverageLatency"];
  v145 = [MOMetric binForNumber:v144 bins:v285];
  metrics64 = [(MOMetric *)selfCopy metrics];
  [metrics64 setObject:v145 forKeyedSubscript:@"Proactive_TopicAverageLatency_Bucketed"];

  metrics65 = [(MOMetric *)selfCopy metrics];
  v148 = [metrics65 objectForKeyedSubscript:@"Proactive_TravelAverageLatency"];
  v149 = [MOMetric binForNumber:v148 bins:v285];
  metrics66 = [(MOMetric *)selfCopy metrics];
  [metrics66 setObject:v149 forKeyedSubscript:@"Proactive_TravelAverageLatency_Bucketed"];

  metrics67 = [(MOMetric *)selfCopy metrics];
  v152 = [metrics67 objectForKeyedSubscript:@"Proactive_SharedWithYouAverageLatency"];
  v153 = [MOMetric binForNumber:v152 bins:v285];
  metrics68 = [(MOMetric *)selfCopy metrics];
  [metrics68 setObject:v153 forKeyedSubscript:@"Proactive_SharedWithYouAverageLatency_Bucketed"];

  metrics69 = [(MOMetric *)selfCopy metrics];
  v156 = [metrics69 objectForKeyedSubscript:@"Proactive_SignificantContactAverageLatency"];
  v157 = [MOMetric binForNumber:v156 bins:v285];
  metrics70 = [(MOMetric *)selfCopy metrics];
  [metrics70 setObject:v157 forKeyedSubscript:@"Proactive_SignificantContactAverageLatency_Bucketed"];

  metrics71 = [(MOMetric *)selfCopy metrics];
  v160 = [metrics71 objectForKeyedSubscript:@"Proactive_StructuredEventsAverageLatency"];
  v161 = [MOMetric binForNumber:v160 bins:v285];
  metrics72 = [(MOMetric *)selfCopy metrics];
  [metrics72 setObject:v161 forKeyedSubscript:@"Proactive_StructuredEventsAverageLatency_Bucketed"];

  metrics73 = [(MOMetric *)selfCopy metrics];
  v164 = [metrics73 objectForKeyedSubscript:@"Proactive_LeisureMediaEventsAverageLatency"];
  v165 = [MOMetric binForNumber:v164 bins:v285];
  metrics74 = [(MOMetric *)selfCopy metrics];
  [metrics74 setObject:v165 forKeyedSubscript:@"Proactive_LeisureMediaEventsAverageLatency_Bucketed"];

  metrics75 = [(MOMetric *)selfCopy metrics];
  v168 = [metrics75 objectForKeyedSubscript:@"Proactive_NLEventsAverageLatency"];
  v169 = [MOMetric binForNumber:v168 bins:v285];
  metrics76 = [(MOMetric *)selfCopy metrics];
  [metrics76 setObject:v169 forKeyedSubscript:@"Proactive_NLEventsAverageLatency_Bucketed"];

  metrics77 = [(MOMetric *)selfCopy metrics];
  v172 = [metrics77 objectForKeyedSubscript:@"Storytelling_PercentageOfMomentEventsNoLOI"];
  v173 = [MOMetric binForNumber:v172 bins:v283];
  metrics78 = [(MOMetric *)selfCopy metrics];
  [metrics78 setObject:v173 forKeyedSubscript:@"Storytelling_PercentageOfMomentEventsNoLOI_Bucketed"];

  metrics79 = [(MOMetric *)selfCopy metrics];
  v176 = [metrics79 objectForKeyedSubscript:@"Workout_PercentageOfWorkoutEventsNoLOI"];
  v177 = [MOMetric binForNumber:v176 bins:v283];
  metrics80 = [(MOMetric *)selfCopy metrics];
  [metrics80 setObject:v177 forKeyedSubscript:@"Workout_PercentageOfWorkoutEventsNoLOI_Bucketed"];

  metrics81 = [(MOMetric *)selfCopy metrics];
  v180 = [metrics81 objectForKeyedSubscript:@"Proactive_PercentageOfMediaOnRepeatEventsNoLOI"];
  v181 = [MOMetric binForNumber:v180 bins:v283];
  metrics82 = [(MOMetric *)selfCopy metrics];
  [metrics82 setObject:v181 forKeyedSubscript:@"Proactive_PercentageOfMediaOnRepeatEventsNoLOI_Bucketed"];

  metrics83 = [(MOMetric *)selfCopy metrics];
  v184 = [metrics83 objectForKeyedSubscript:@"Proactive_PercentageOfTopicEventsNoLOI"];
  v185 = [MOMetric binForNumber:v184 bins:v283];
  metrics84 = [(MOMetric *)selfCopy metrics];
  [metrics84 setObject:v185 forKeyedSubscript:@"Proactive_PercentageOfTopicEventsNoLOI_Bucketed"];

  metrics85 = [(MOMetric *)selfCopy metrics];
  v188 = [metrics85 objectForKeyedSubscript:@"Proactive_PercentageOfTravelEventsNoLOI"];
  v189 = [MOMetric binForNumber:v188 bins:v283];
  metrics86 = [(MOMetric *)selfCopy metrics];
  [metrics86 setObject:v189 forKeyedSubscript:@"Proactive_PercentageOfTravelEventsNoLOI_Bucketed"];

  metrics87 = [(MOMetric *)selfCopy metrics];
  v192 = [metrics87 objectForKeyedSubscript:@"Proactive_PercentageOfSharedWithYouEventsNoLOI"];
  v193 = [MOMetric binForNumber:v192 bins:v283];
  metrics88 = [(MOMetric *)selfCopy metrics];
  [metrics88 setObject:v193 forKeyedSubscript:@"Proactive_PercentageOfSharedWithYouEventsNoLOI_Bucketed"];

  metrics89 = [(MOMetric *)selfCopy metrics];
  v196 = [metrics89 objectForKeyedSubscript:@"Proactive_PercentageOfSignificantContactEventsNoLOI"];
  v197 = [MOMetric binForNumber:v196 bins:v283];
  metrics90 = [(MOMetric *)selfCopy metrics];
  [metrics90 setObject:v197 forKeyedSubscript:@"Proactive_PercentageOfSignificantContactEventsNoLOI_Bucketed"];

  metrics91 = [(MOMetric *)selfCopy metrics];
  v200 = [metrics91 objectForKeyedSubscript:@"Proactive_PercentageOfStructuredEventsNoLOI"];
  v201 = [MOMetric binForNumber:v200 bins:v283];
  metrics92 = [(MOMetric *)selfCopy metrics];
  [metrics92 setObject:v201 forKeyedSubscript:@"Proactive_PercentageOfStructuredEventsNoLOI_Bucketed"];

  metrics93 = [(MOMetric *)selfCopy metrics];
  v204 = [metrics93 objectForKeyedSubscript:@"Proactive_PercentageOfLeisureMediaEventsNoLOI"];
  v205 = [MOMetric binForNumber:v204 bins:v283];
  metrics94 = [(MOMetric *)selfCopy metrics];
  [metrics94 setObject:v205 forKeyedSubscript:@"Proactive_PercentageOfLeisureMediaEventsNoLOI_Bucketed"];

  metrics95 = [(MOMetric *)selfCopy metrics];
  v208 = [metrics95 objectForKeyedSubscript:@"Proactive_PercentageOfNLEventsNoLOI"];
  v209 = [MOMetric binForNumber:v208 bins:v283];
  metrics96 = [(MOMetric *)selfCopy metrics];
  [metrics96 setObject:v209 forKeyedSubscript:@"Proactive_PercentageOfNLEventsNoLOI_Bucketed"];

  metrics97 = [(MOMetric *)selfCopy metrics];
  v212 = [metrics97 objectForKeyedSubscript:@"numPreBundles"];
  v213 = [MOMetric binForNumber:v212 bins:v286];
  metrics98 = [(MOMetric *)selfCopy metrics];
  [metrics98 setObject:v213 forKeyedSubscript:@"numPreBundles_Bucketed"];

  metrics99 = [(MOMetric *)selfCopy metrics];
  v216 = [metrics99 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_0_routineEvent_0_proactiveEvent_0"];
  v217 = [MOMetric binForNumber:v216 bins:v286];
  metrics100 = [(MOMetric *)selfCopy metrics];
  [metrics100 setObject:v217 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_0_routineEvent_0_proactiveEvent_0_Bucketed"];

  metrics101 = [(MOMetric *)selfCopy metrics];
  v220 = [metrics101 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_0_routineEvent_0_proactiveEvent_1"];
  v221 = [MOMetric binForNumber:v220 bins:v286];
  metrics102 = [(MOMetric *)selfCopy metrics];
  [metrics102 setObject:v221 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_0_routineEvent_0_proactiveEvent_1_Bucketed"];

  metrics103 = [(MOMetric *)selfCopy metrics];
  v224 = [metrics103 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_0_routineEvent_1_proactiveEvent_0"];
  v225 = [MOMetric binForNumber:v224 bins:v286];
  metrics104 = [(MOMetric *)selfCopy metrics];
  [metrics104 setObject:v225 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_0_routineEvent_1_proactiveEvent_0_Bucketed"];

  metrics105 = [(MOMetric *)selfCopy metrics];
  v228 = [metrics105 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_0_routineEvent_1_proactiveEvent_1"];
  v229 = [MOMetric binForNumber:v228 bins:v286];
  metrics106 = [(MOMetric *)selfCopy metrics];
  [metrics106 setObject:v229 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_0_routineEvent_1_proactiveEvent_1_Bucketed"];

  metrics107 = [(MOMetric *)selfCopy metrics];
  v232 = [metrics107 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_1_routineEvent_0_proactiveEvent_0"];
  v233 = [MOMetric binForNumber:v232 bins:v286];
  metrics108 = [(MOMetric *)selfCopy metrics];
  [metrics108 setObject:v233 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_1_routineEvent_0_proactiveEvent_0_Bucketed"];

  metrics109 = [(MOMetric *)selfCopy metrics];
  v236 = [metrics109 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_1_routineEvent_0_proactiveEvent_1"];
  v237 = [MOMetric binForNumber:v236 bins:v286];
  metrics110 = [(MOMetric *)selfCopy metrics];
  [metrics110 setObject:v237 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_1_routineEvent_0_proactiveEvent_1_Bucketed"];

  metrics111 = [(MOMetric *)selfCopy metrics];
  v240 = [metrics111 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_1_routineEvent_1_proactiveEvent_0"];
  v241 = [MOMetric binForNumber:v240 bins:v286];
  metrics112 = [(MOMetric *)selfCopy metrics];
  [metrics112 setObject:v241 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_1_routineEvent_1_proactiveEvent_0_Bucketed"];

  metrics113 = [(MOMetric *)selfCopy metrics];
  v244 = [metrics113 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_1_routineEvent_1_proactiveEvent_1"];
  v245 = [MOMetric binForNumber:v244 bins:v286];
  metrics114 = [(MOMetric *)selfCopy metrics];
  [metrics114 setObject:v245 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_1_routineEvent_1_proactiveEvent_1_Bucketed"];

  metrics115 = [(MOMetric *)selfCopy metrics];
  v248 = [metrics115 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_0_routineEvent_0_proactiveEvent_0"];
  v249 = [MOMetric binForNumber:v248 bins:v286];
  metrics116 = [(MOMetric *)selfCopy metrics];
  [metrics116 setObject:v249 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_0_routineEvent_0_proactiveEvent_0_Bucketed"];

  metrics117 = [(MOMetric *)selfCopy metrics];
  v252 = [metrics117 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_0_routineEvent_0_proactiveEvent_1"];
  v253 = [MOMetric binForNumber:v252 bins:v286];
  metrics118 = [(MOMetric *)selfCopy metrics];
  [metrics118 setObject:v253 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_0_routineEvent_0_proactiveEvent_1_Bucketed"];

  metrics119 = [(MOMetric *)selfCopy metrics];
  v256 = [metrics119 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_0_routineEvent_1_proactiveEvent_0"];
  v257 = [MOMetric binForNumber:v256 bins:v286];
  metrics120 = [(MOMetric *)selfCopy metrics];
  [metrics120 setObject:v257 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_0_routineEvent_1_proactiveEvent_0_Bucketed"];

  metrics121 = [(MOMetric *)selfCopy metrics];
  v260 = [metrics121 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_0_routineEvent_1_proactiveEvent_1"];
  v261 = [MOMetric binForNumber:v260 bins:v286];
  metrics122 = [(MOMetric *)selfCopy metrics];
  [metrics122 setObject:v261 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_0_routineEvent_1_proactiveEvent_1_Bucketed"];

  metrics123 = [(MOMetric *)selfCopy metrics];
  v264 = [metrics123 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_1_routineEvent_0_proactiveEvent_0"];
  v265 = [MOMetric binForNumber:v264 bins:v286];
  metrics124 = [(MOMetric *)selfCopy metrics];
  [metrics124 setObject:v265 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_1_routineEvent_0_proactiveEvent_0_Bucketed"];

  metrics125 = [(MOMetric *)selfCopy metrics];
  v268 = [metrics125 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_1_routineEvent_0_proactiveEvent_1"];
  v269 = [MOMetric binForNumber:v268 bins:v286];
  metrics126 = [(MOMetric *)selfCopy metrics];
  [metrics126 setObject:v269 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_1_routineEvent_0_proactiveEvent_1_Bucketed"];

  metrics127 = [(MOMetric *)selfCopy metrics];
  v272 = [metrics127 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_1_routineEvent_1_proactiveEvent_0"];
  v273 = [MOMetric binForNumber:v272 bins:v286];
  metrics128 = [(MOMetric *)selfCopy metrics];
  [metrics128 setObject:v273 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_1_routineEvent_1_proactiveEvent_0_Bucketed"];

  metrics129 = [(MOMetric *)selfCopy metrics];
  v276 = [metrics129 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_1_routineEvent_1_proactiveEvent_1"];
  v277 = [MOMetric binForNumber:v276 bins:v286];
  metrics130 = [(MOMetric *)selfCopy metrics];
  [metrics130 setObject:v277 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_1_routineEvent_1_proactiveEvent_1_Bucketed"];

  metrics131 = [(MOMetric *)selfCopy metrics];
  v280 = [metrics131 objectForKeyedSubscript:@"numBundles"];
  v281 = [MOMetric binForNumber:v280 bins:v286];
  metrics132 = [(MOMetric *)selfCopy metrics];
  [metrics132 setObject:v281 forKeyedSubscript:@"numBundles_Bucketed"];
}

- (id)calculateZeroCountsForEvents:(id)events withCalendar:(id)calendar
{
  eventsCopy = events;
  calendarCopy = calendar;
  v8 = objc_alloc_init(NSDateComponents);
  [v8 setDay:0];
  v9 = [calendarCopy startOfDayForDate:self->_startDate];
  v34 = objc_opt_new();
  v10 = 32;
  v11 = [v9 earlierDate:self->_endDate];

  if (v11 == v9)
  {
    v13 = 0;
    v35 = 0;
    v14 = v9;
    v32 = v8;
    v33 = calendarCopy;
    selfCopy = self;
    v31 = v9;
    v29 = 32;
    do
    {
      v36 = [v8 day] / 7 + 1;
      [v8 setDay:{objc_msgSend(v8, "day") + 1}];
      v12 = [calendarCopy dateByAddingComponents:v8 toDate:v9 options:0];
      v37 = v13;
      if ([eventsCopy count] <= v13)
      {
LABEL_11:
        ++v35;
      }

      else
      {
        v15 = 0;
        v16 = v13;
        while (1)
        {
          v17 = [eventsCopy objectAtIndexedSubscript:v16];
          endDate = [v17 endDate];
          v19 = [endDate earlierDate:v12];
          v20 = [eventsCopy objectAtIndexedSubscript:v16];
          endDate2 = [v20 endDate];

          if (v19 != endDate2)
          {
            break;
          }

          ++v16;
          --v15;
          if ([eventsCopy count] <= v16)
          {
            v37 = (v37 - v15);
            v8 = v32;
            calendarCopy = v33;
            self = selfCopy;
            v9 = v31;
            v10 = v29;
            goto LABEL_10;
          }
        }

        v37 = (v37 - v15);
        v8 = v32;
        calendarCopy = v33;
        self = selfCopy;
        v9 = v31;
        v10 = v29;
        if (!v15)
        {
          goto LABEL_11;
        }

LABEL_10:
        v22 = [NSNumber numberWithLong:v36];
        [v34 addObject:v22];
      }

      v23 = [v12 earlierDate:*(&self->super.super.isa + v10)];

      v14 = v12;
      v24 = v23 == v12;
      v13 = v37;
    }

    while (v24);
  }

  else
  {
    v35 = 0;
    v36 = 0;
    v12 = v9;
  }

  v38[0] = @"CountOfZeroEventDays";
  v25 = [NSNumber numberWithInt:v35];
  v38[1] = @"CountOfZeroEventWeeks";
  v39[0] = v25;
  v26 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", v36 - [v34 count]);
  v39[1] = v26;
  v27 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:2];

  return v27;
}

- (BOOL)doesInterval:(id)interval overlapWithAnyIntervalFromArray:(id)array
{
  intervalCopy = interval;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  arrayCopy = array;
  v7 = [arrayCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(arrayCopy);
        }

        v10 = [intervalCopy intersectionWithDateInterval:{*(*(&v16 + 1) + 8 * i), v16}];
        endDate = [v10 endDate];
        startDate = [v10 startDate];
        [endDate timeIntervalSinceDate:startDate];
        v14 = v13;

        if (v14 > 0.0)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [arrayCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (void)calculateAndSetMetricsForRawEvents:(id)events
{
  eventsCopy = events;
  v5 = self->_endDate;
  v1128 = +[NSCalendar currentCalendar];
  v1146 = v5;
  v6 = [v1128 components:736 fromDate:v5];
  weekday = [v6 weekday];
  hour = [v6 hour];
  minute = [v6 minute];
  v1126 = v6;
  v10 = (minute * 60.0 + hour * 3600.0 + [v6 second]);
  v11 = [NSNumber numberWithInteger:weekday];
  metrics = [(MOMetric *)self metrics];
  [metrics setObject:v11 forKeyedSubscript:@"DayIDSubmission"];

  v13 = [MOMetric binsFromStart:&off_10036C1D8 toEnd:&off_10036E820 gap:&off_10036E830];
  v14 = [NSNumber numberWithLong:v10];
  v1125 = v13;
  v15 = [MOMetric binForNumber:v14 bins:v13];
  metrics2 = [(MOMetric *)self metrics];
  [metrics2 setObject:v15 forKeyedSubscript:@"HourIDSubmission"];

  [(NSDate *)self->_endDate timeIntervalSinceDate:self->_startDate];
  v17 = [NSNumber numberWithDouble:?];
  v1147 = [MOMetric binsFromStart:&off_10036C1D8 toEnd:v17 gap:&off_10036E830];

  v18 = +[MOEventBundler propertyNameDictionary];
  startDate = self->_startDate;
  v20 = [NSPredicate predicateWithFormat:@"endDate >= %@ && endDate <= %@", startDate, self->_endDate];
  v1127 = eventsCopy;
  v21 = [eventsCopy filteredArrayUsingPredicate:v20];
  v1143 = [v21 mutableCopy];

  v22 = [NSSortDescriptor sortDescriptorWithKey:@"endDate" ascending:1];
  v1249 = v22;
  v23 = [NSArray arrayWithObjects:&v1249 count:1];
  [v1143 sortUsingDescriptors:v23];

  v24 = [(MOPromptMetrics *)self calculateZeroCountsForEvents:v1143 withCalendar:v1128];
  v25 = [v24 objectForKey:@"CountOfZeroEventDays"];
  metrics3 = [(MOMetric *)self metrics];
  [metrics3 setObject:v25 forKeyedSubscript:@"ZeroEventDayCountAcrossAllEvents"];

  v27 = [v24 objectForKey:@"CountOfZeroEventWeeks"];
  metrics4 = [(MOMetric *)self metrics];
  [metrics4 setObject:v27 forKeyedSubscript:@"ZeroEventWeekCountAcrossAllEvents"];

  v1144 = v18;
  v29 = [v18 objectForKeyedSubscript:@"strProvider"];
  v30 = [NSPredicate predicateWithFormat:@"%K != %i", v29, 4];
  v1248[0] = v30;
  v31 = [v18 objectForKeyedSubscript:@"strProvider"];
  v32 = [NSPredicate predicateWithFormat:@"%K != %i", v31, 5];
  v1248[1] = v32;
  v33 = [NSArray arrayWithObjects:v1248 count:2];
  v34 = [NSCompoundPredicate andPredicateWithSubpredicates:v33];

  v1124 = v34;
  v1122 = [v1143 filteredArrayUsingPredicate:v34];
  v35 = [MOPromptMetrics calculateZeroCountsForEvents:"calculateZeroCountsForEvents:withCalendar:" withCalendar:?];

  v36 = [v35 objectForKey:@"CountOfZeroEventDays"];
  metrics5 = [(MOMetric *)self metrics];
  [metrics5 setObject:v36 forKeyedSubscript:@"ZeroEventDayCount"];

  v1123 = v35;
  v38 = [v35 objectForKey:@"CountOfZeroEventWeeks"];
  metrics6 = [(MOMetric *)self metrics];
  [metrics6 setObject:v38 forKeyedSubscript:@"ZeroEventWeekCount"];

  v1148 = objc_opt_new();
  v40 = [v1144 objectForKeyedSubscript:@"strProvider"];
  v41 = [NSPredicate predicateWithFormat:@"%K == %i", v40, 4];
  v1247[0] = v41;
  v42 = [v1144 objectForKeyedSubscript:?];
  v43 = [NSPredicate predicateWithFormat:@"%K == %i", v42, 1];
  v1247[1] = v43;
  v44 = [NSArray arrayWithObjects:v1247 count:2];
  v45 = [NSCompoundPredicate andPredicateWithSubpredicates:v44];

  v1121 = v45;
  v46 = [v1143 filteredArrayUsingPredicate:v45];
  v47 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v46 count]);
  selfCopy = self;
  metrics7 = [(MOMetric *)self metrics];
  [metrics7 setObject:v47 forKeyedSubscript:@"Routine_nVisits"];

  v1158 = objc_opt_new();
  v49 = objc_opt_new();
  v1140 = objc_opt_new();
  v1129 = v49;
  v1130 = v46;
  if ([v46 count])
  {
    v50 = 0;
    v51 = 0;
    v1195 = 0;
    v1172 = 0;
    v1159 = 0;
    v1183 = 0;
    while (1)
    {
      v52 = [v46 objectAtIndexedSubscript:v50];
      placeName = [v52 placeName];
      lowercaseString = [placeName lowercaseString];

      v1199 = lowercaseString;
      if ([lowercaseString containsString:@"home"])
      {
        v51 = (v51 + 1);
        v55 = v1148;
      }

      else
      {
        v55 = v1148;
        if ([lowercaseString containsString:@"work"])
        {
          ++v1195;
        }

        else if ([lowercaseString containsString:@"gym"])
        {
          ++v1172;
        }

        else if ([lowercaseString containsString:@"school"])
        {
          ++v1159;
        }

        else if ([v52 placeDiscovery] != 2)
        {
          goto LABEL_15;
        }
      }

      startDate = [v52 startDate];
      if (startDate)
      {
        v57 = startDate;
        endDate = [v52 endDate];

        if (endDate)
        {
          v59 = [NSDateInterval alloc];
          startDate2 = [v52 startDate];
          endDate2 = [v52 endDate];
          v62 = [v59 initWithStartDate:startDate2 endDate:endDate2];

          [v1158 addObject:v62];
        }
      }

LABEL_15:
      endDate3 = [v52 endDate];

      if (endDate3)
      {
        if (v50)
        {
          v64 = [v46 objectAtIndexedSubscript:v50 - 1];
          endDate4 = [v64 endDate];

          if (endDate4)
          {
            endDate5 = [v52 endDate];
            v67 = [v46 objectAtIndexedSubscript:v50 - 1];
            [v67 endDate];
            v69 = v68 = v51;
            [endDate5 timeIntervalSinceDate:v69];
            v70 = [NSNumber numberWithDouble:?];
            [v55 addObject:v70];

            v51 = v68;
          }
        }

        creationDate = [v52 creationDate];

        if (creationDate)
        {
          creationDate2 = [v52 creationDate];
          endDate6 = [v52 endDate];
          [creationDate2 timeIntervalSinceDate:endDate6];
          v75 = v74;

          v76 = [NSNumber numberWithDouble:v75];
          [v49 addObject:v76];
        }

        sourceCreationDate = [v52 sourceCreationDate];

        if (sourceCreationDate)
        {
          sourceCreationDate2 = [v52 sourceCreationDate];
          endDate7 = [v52 endDate];
          [sourceCreationDate2 timeIntervalSinceDate:endDate7];
          v81 = v80;

          v82 = [NSNumber numberWithDouble:v81];
          [v1140 addObject:v82];
        }
      }

      creationDate3 = [v52 creationDate];
      if (!creationDate3)
      {
        goto LABEL_32;
      }

      endDate11 = creationDate3;
      endDate8 = [v52 endDate];
      if (!endDate8)
      {
        goto LABEL_31;
      }

      v86 = endDate8;
      endDate9 = [v52 endDate];

      if (endDate9)
      {
        creationDate4 = [v52 creationDate];
        endDate10 = [v52 endDate];
        [creationDate4 timeIntervalSinceDate:endDate10];
        v91 = v90;

        v92 = [NSNumber numberWithDouble:v91];
        [v49 addObject:v92];

        if (v1183)
        {
          v93 = v1183 - 1;
          if ((v1183 - 1) > 8)
          {
            ++v1183;
            goto LABEL_32;
          }

          v1167 = v51;
          v94 = *(&off_100340240 + v93);
          v1162 = *(&off_100340288 + v93);
          ++v1183;
        }

        else
        {
          v1167 = v51;
          v1183 = 1;
          v94 = @"Routine_HourIDVisit_Start_1";
          v1162 = @"Routine_HourIDVisit_End_1";
        }

        startDate3 = [v52 startDate];
        [(NSDate *)v1146 timeIntervalSinceDate:startDate3];
        v96 = [NSNumber numberWithDouble:?];
        v97 = [MOMetric binForNumber:v96 bins:v1147];
        metrics8 = [(MOMetric *)selfCopy metrics];
        [metrics8 setObject:v97 forKeyedSubscript:v94];

        endDate11 = [v52 endDate];
        [(NSDate *)v1146 timeIntervalSinceDate:endDate11];
        v99 = [NSNumber numberWithDouble:?];
        v100 = [MOMetric binForNumber:v99 bins:v1147];
        metrics9 = [(MOMetric *)selfCopy metrics];
        [metrics9 setObject:v100 forKeyedSubscript:v1162];

        v49 = v1129;
        v46 = v1130;
        v51 = v1167;
LABEL_31:
      }

LABEL_32:

      if ([v46 count] <= ++v50)
      {
        goto LABEL_36;
      }
    }
  }

  v1159 = 0;
  v1172 = 0;
  v1195 = 0;
  v51 = 0;
LABEL_36:
  v102 = [NSNumber numberWithInt:v51];
  metrics10 = [(MOMetric *)selfCopy metrics];
  [metrics10 setObject:v102 forKeyedSubscript:@"Routine_nHomeVisits"];

  v104 = [NSNumber numberWithInt:v1195];
  metrics11 = [(MOMetric *)selfCopy metrics];
  [metrics11 setObject:v104 forKeyedSubscript:@"Routine_nWorkVisits"];

  v106 = [NSNumber numberWithInt:v1172];
  metrics12 = [(MOMetric *)selfCopy metrics];
  [metrics12 setObject:v106 forKeyedSubscript:@"Routine_nGymVisits"];

  v108 = [NSNumber numberWithInt:v1159];
  metrics13 = [(MOMetric *)selfCopy metrics];
  [metrics13 setObject:v108 forKeyedSubscript:@"Routine_nSchoolVisits"];

  v110 = [MOPromptMetrics meanOf:v49];
  metrics14 = [(MOMetric *)selfCopy metrics];
  [metrics14 setObject:v110 forKeyedSubscript:@"Routine_AverageVisitsLatency"];

  v112 = [MOPromptMetrics meanOf:v1140];
  metrics15 = [(MOMetric *)selfCopy metrics];
  [metrics15 setObject:v112 forKeyedSubscript:@"Routine_AverageVisitsRealLatency"];

  if ([v1148 count])
  {
    v114 = [MOPromptMetrics meanOf:v1148];
    metrics16 = [(MOMetric *)selfCopy metrics];
    [metrics16 setObject:v114 forKeyedSubscript:@"Routine_MeanDeltaBetweenVisits"];

    v116 = [v1148 valueForKeyPath:@"@min.doubleValue"];
    metrics17 = [(MOMetric *)selfCopy metrics];
    [metrics17 setObject:v116 forKeyedSubscript:@"Routine_MinDeltaBetweenVisits"];

    v118 = [v1148 valueForKeyPath:@"@max.doubleValue"];
    metrics18 = [(MOMetric *)selfCopy metrics];
    [metrics18 setObject:v118 forKeyedSubscript:@"Routine_MaxDeltaBetweenVisits"];

    v120 = [MOPromptMetrics standardDeviationOf:v1148];
    metrics19 = [(MOMetric *)selfCopy metrics];
    [metrics19 setObject:v120 forKeyedSubscript:@"Routine_SDDeltaBetweenVisits"];
  }

  if ([v46 count])
  {
    firstObject = [v46 firstObject];
    endDate12 = [firstObject endDate];
    [endDate12 timeIntervalSinceDate:selfCopy->_startDate];
    v124 = [NSNumber numberWithDouble:?];
    v125 = v1148;
    [v1148 addObject:v124];

    endDate = selfCopy->_endDate;
    lastObject = [v46 lastObject];
    endDate13 = [lastObject endDate];
    [(NSDate *)endDate timeIntervalSinceDate:endDate13];
    v129 = [NSNumber numberWithDouble:?];
    [v1148 addObject:v129];

    v130 = [MOPromptMetrics meanOf:v1148];
    metrics20 = [(MOMetric *)selfCopy metrics];
    [metrics20 setObject:v130 forKeyedSubscript:@"Routine_MeanDeltaBetweenVisitsBoundariesIncluded"];

    v132 = [v1148 valueForKeyPath:@"@min.doubleValue"];
    metrics21 = [(MOMetric *)selfCopy metrics];
    [metrics21 setObject:v132 forKeyedSubscript:@"Routine_MinDeltaBetweenVisitsBoundariesIncluded"];

    v134 = [v1148 valueForKeyPath:@"@max.doubleValue"];
    metrics22 = [(MOMetric *)selfCopy metrics];
    [metrics22 setObject:v134 forKeyedSubscript:@"Routine_MaxDeltaBetweenVisitsBoundariesIncluded"];

    metrics27 = [MOPromptMetrics standardDeviationOf:v1148];
    metrics23 = [(MOMetric *)selfCopy metrics];
    [metrics23 setObject:metrics27 forKeyedSubscript:@"Routine_SDDeltaBetweenVisitsBoundariesIncluded"];

    v138 = selfCopy;
  }

  else
  {
    [(NSDate *)selfCopy->_endDate timeIntervalSinceDate:selfCopy->_startDate];
    v139 = [NSNumber numberWithDouble:?];
    metrics24 = [(MOMetric *)selfCopy metrics];
    [metrics24 setObject:v139 forKeyedSubscript:@"Routine_MeanDeltaBetweenVisitsBoundariesIncluded"];

    [(NSDate *)selfCopy->_endDate timeIntervalSinceDate:selfCopy->_startDate];
    v141 = [NSNumber numberWithDouble:?];
    metrics25 = [(MOMetric *)selfCopy metrics];
    [metrics25 setObject:v141 forKeyedSubscript:@"Routine_MinDeltaBetweenVisitsBoundariesIncluded"];

    [(NSDate *)selfCopy->_endDate timeIntervalSinceDate:selfCopy->_startDate];
    v143 = [NSNumber numberWithDouble:?];
    metrics26 = [(MOMetric *)selfCopy metrics];
    [metrics26 setObject:v143 forKeyedSubscript:@"Routine_MaxDeltaBetweenVisitsBoundariesIncluded"];

    metrics27 = [(MOMetric *)selfCopy metrics];
    [metrics27 setObject:&off_10036E7B0 forKeyedSubscript:@"Routine_SDDeltaBetweenVisitsBoundariesIncluded"];
    v138 = selfCopy;
    v125 = v1148;
  }

  [v125 removeAllObjects];
  v145 = [v1144 objectForKeyedSubscript:@"strProvider"];
  v146 = [NSPredicate predicateWithFormat:@"%K == %i", v145, 2];
  v1246[0] = v146;
  v147 = [v1144 objectForKeyedSubscript:@"strCategory"];
  v148 = [NSPredicate predicateWithFormat:@"%K == %i", v147, 5];
  v1246[1] = v148;
  v149 = [NSArray arrayWithObjects:v1246 count:2];
  v150 = [NSCompoundPredicate andPredicateWithSubpredicates:v149];

  v1120 = v150;
  v151 = [v1143 filteredArrayUsingPredicate:v150];
  v152 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v151 count]);
  metrics28 = [(MOMetric *)v138 metrics];
  [metrics28 setObject:v152 forKeyedSubscript:@"Storytelling_NumMoments"];

  v1228 = 0u;
  v1229 = 0u;
  v1226 = 0u;
  v1227 = 0u;
  v154 = v151;
  obj = [v154 countByEnumeratingWithState:&v1226 objects:v1245 count:16];
  v1157 = v154;
  if (obj)
  {
    v155 = 0;
    LODWORD(v156) = 0;
    LODWORD(v157) = 0;
    v1200 = 0;
    v1196 = 0;
    v1149 = *v1227;
    while (1)
    {
      for (i = 0; i != obj; i = i + 1)
      {
        v1168 = v155;
        v1184 = v156;
        if (*v1227 != v1149)
        {
          objc_enumerationMutation(v154);
        }

        v1173 = v157;
        v159 = *(*(&v1226 + 1) + 8 * i);
        v160 = [NSDateInterval alloc];
        startDate4 = [v159 startDate];
        endDate14 = [v159 endDate];
        v163 = [v160 initWithStartDate:startDate4 endDate:endDate14];

        v1163 = v163;
        v1160 = [(MOPromptMetrics *)selfCopy doesInterval:v163 overlapWithAnyIntervalFromArray:v1158];
        extendedAttributes = [v159 extendedAttributes];
        photoMomentPersons = [extendedAttributes photoMomentPersons];

        v1224 = 0u;
        v1225 = 0u;
        v1222 = 0u;
        v1223 = 0u;
        v166 = photoMomentPersons;
        v167 = [v166 countByEnumeratingWithState:&v1222 objects:v1244 count:16];
        if (!v167)
        {

          v177 = v1200;
          v176 = v1196;
          goto LABEL_59;
        }

        v168 = v167;
        v169 = 0;
        v170 = 0;
        v171 = *v1223;
        do
        {
          for (j = 0; j != v168; j = j + 1)
          {
            if (*v1223 != v171)
            {
              objc_enumerationMutation(v166);
            }

            v173 = *(*(&v1222 + 1) + 8 * j);
            name = [v173 name];
            v170 |= [name length] != 0;
            family = [v173 family];
            v169 |= [family length] != 0;
          }

          v168 = [v166 countByEnumeratingWithState:&v1222 objects:v1244 count:16];
        }

        while (v168);

        if ((v170 & 1) == 0)
        {
          v177 = v1200;
          v176 = v1196;
          if ((v169 & 1) == 0)
          {
            goto LABEL_59;
          }

LABEL_58:
          ++v177;
          goto LABEL_59;
        }

        v176 = v1196 + 1;
        v177 = v1200;
        if (v169)
        {
          goto LABEL_58;
        }

LABEL_59:
        v1196 = v176;
        v1200 = v177;
        extendedAttributes2 = [v159 extendedAttributes];
        photoMomentPublicEvents = [extendedAttributes2 photoMomentPublicEvents];

        v1220 = 0u;
        v1221 = 0u;
        v1218 = 0u;
        v1219 = 0u;
        v180 = photoMomentPublicEvents;
        v181 = [v180 countByEnumeratingWithState:&v1218 objects:v1243 count:16];
        if (v181)
        {
          v182 = v181;
          v183 = 0;
          v184 = 0;
          v185 = *v1219;
          do
          {
            for (k = 0; k != v182; k = k + 1)
            {
              if (*v1219 != v185)
              {
                objc_enumerationMutation(v180);
              }

              v187 = *(*(&v1218 + 1) + 8 * k);
              name2 = [v187 name];
              performers = [v187 performers];
              v184 |= [name2 length] != 0;
              v183 |= [performers count] != 0;
            }

            v182 = [v180 countByEnumeratingWithState:&v1218 objects:v1243 count:16];
          }

          while (v182);

          v156 = v1184;
          if (v184)
          {
            v157 = v1173 + 1;
          }

          else
          {
            v157 = v1173;
          }

          v190 = v1168;
          if (v183)
          {
            v156 = v1184 + 1;
          }
        }

        else
        {

          v156 = v1184;
          v157 = v1173;
          v190 = v1168;
        }

        v155 = v190 + v1160;

        v154 = v1157;
      }

      obj = [v1157 countByEnumeratingWithState:&v1226 objects:v1245 count:16];
      if (!obj)
      {
        v191 = v155;
        v192 = selfCopy;
        v193 = v1200;
        v194 = v1196;
        goto LABEL_76;
      }
    }
  }

  v192 = v138;
  v156 = 0;
  v157 = 0;
  v193 = 0;
  v194 = 0;
  v191 = 0.0;
LABEL_76:

  v195 = [NSNumber numberWithInt:v194];
  metrics29 = [(MOMetric *)v192 metrics];
  [metrics29 setObject:v195 forKeyedSubscript:@"Storytelling_NumMomentsWithPeople"];

  v197 = [NSNumber numberWithInt:v193];
  metrics30 = [(MOMetric *)v192 metrics];
  [metrics30 setObject:v197 forKeyedSubscript:@"Storytelling_NumMomentsWithFamily"];

  v199 = [NSNumber numberWithInt:v157];
  metrics31 = [(MOMetric *)v192 metrics];
  [metrics31 setObject:v199 forKeyedSubscript:@"Storytelling_NumMomentsWithEvent"];

  v201 = [NSNumber numberWithInt:v156];
  metrics32 = [(MOMetric *)v192 metrics];
  [metrics32 setObject:v201 forKeyedSubscript:@"Storytelling_NumMomentsWithEventAndArtist"];

  v203 = v1157;
  if ([v1157 count])
  {
    v204 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", 1.0 - v191 / [v1157 count]);
    metrics33 = [(MOMetric *)v192 metrics];
    [metrics33 setObject:v204 forKeyedSubscript:@"Storytelling_PercentageOfMomentEventsNoLOI"];

    v203 = v1157;
  }

  v1161 = +[MOPhotoMomentTags getInferenceTagMap];
  v1145 = objc_opt_new();
  v1139 = objc_opt_new();
  v206 = v1148;
  if ([v203 count])
  {
    v207 = 0;
    while (1)
    {
      v1197 = v207;
      v208 = [v203 objectAtIndexedSubscript:v207];
      creationDate5 = [v208 creationDate];
      v1150 = v208;
      if (!creationDate5)
      {
        goto LABEL_86;
      }

      endDate23 = creationDate5;
      startDate5 = [v208 startDate];
      if (!startDate5)
      {
        goto LABEL_85;
      }

      v212 = startDate5;
      endDate15 = [v208 endDate];

      if (endDate15)
      {
        creationDate6 = [v208 creationDate];
        endDate16 = [v208 endDate];
        [creationDate6 timeIntervalSinceDate:endDate16];
        v217 = v216;

        v218 = [NSNumber numberWithDouble:v217];
        [v1145 addObject:v218];

        if (v1197 <= 2)
        {
          break;
        }
      }

LABEL_86:
      endDate17 = [v208 endDate];

      v228 = v1197;
      if (endDate17)
      {
        if (v1197)
        {
          v229 = [v1157 objectAtIndexedSubscript:v1197 - 1];
          endDate18 = [v229 endDate];

          if (endDate18)
          {
            endDate19 = [v208 endDate];
            v232 = [v1157 objectAtIndexedSubscript:v1197 - 1];
            endDate20 = [v232 endDate];
            [endDate19 timeIntervalSinceDate:endDate20];
            v234 = [NSNumber numberWithDouble:?];
            [v206 addObject:v234];
          }
        }

        creationDate7 = [v208 creationDate];

        if (creationDate7)
        {
          creationDate8 = [v208 creationDate];
          endDate21 = [v208 endDate];
          [creationDate8 timeIntervalSinceDate:endDate21];
          v239 = v238;

          v240 = [NSNumber numberWithDouble:v239];
          [v1145 addObject:v240];
        }

        sourceCreationDate3 = [v208 sourceCreationDate];

        v228 = v1197;
        if (sourceCreationDate3)
        {
          sourceCreationDate4 = [v208 sourceCreationDate];
          endDate22 = [v208 endDate];
          [sourceCreationDate4 timeIntervalSinceDate:endDate22];
          v245 = v244;

          v246 = [NSNumber numberWithDouble:v245];
          [v1139 addObject:v246];
        }
      }

      if (v228 <= 2)
      {
        v1216 = 0u;
        v1217 = 0u;
        v1214 = 0u;
        v1215 = 0u;
        extendedAttributes3 = [v208 extendedAttributes];
        photoMomentInferences = [extendedAttributes3 photoMomentInferences];

        obja = photoMomentInferences;
        v1169 = [photoMomentInferences countByEnumeratingWithState:&v1214 objects:v1242 count:16];
        if (!v1169)
        {
          goto LABEL_126;
        }

        v249 = 0;
        v1164 = *v1215;
        while (1)
        {
          v250 = 0;
          if (v249 <= 4)
          {
            v251 = 4;
          }

          else
          {
            v251 = v249;
          }

          v1174 = (v251 - v249);
          do
          {
            if (*v1215 != v1164)
            {
              objc_enumerationMutation(obja);
            }

            lowercaseString2 = [*(*(&v1214 + 1) + 8 * v250) lowercaseString];
            if (v250 == v1174)
            {

              goto LABEL_126;
            }

            v1185 = v250;
            v1212 = 0u;
            v1213 = 0u;
            v1210 = 0u;
            v1211 = 0u;
            v252 = v1161;
            v253 = [v252 countByEnumeratingWithState:&v1210 objects:v1241 count:16];
            v254 = lowercaseString2;
            if (!v253)
            {
              goto LABEL_122;
            }

            v255 = v253;
            v256 = *v1211;
            do
            {
              v257 = 0;
              do
              {
                if (*v1211 != v256)
                {
                  objc_enumerationMutation(v252);
                }

                v258 = *(*(&v1210 + 1) + 8 * v257);
                v259 = [v252 objectForKeyedSubscript:v258];
                lowercaseString3 = [v259 lowercaseString];
                if ([v254 containsString:lowercaseString3])
                {
                  if (v228 == 2)
                  {
                    v261 = &off_100340220;
                    if (v249 <= 3)
                    {
                      goto LABEL_116;
                    }
                  }

                  else
                  {
                    if (v228 == 1)
                    {
                      v261 = &off_100340200;
                    }

                    else
                    {
                      if (v228)
                      {
                        goto LABEL_117;
                      }

                      v261 = &off_1003401E0;
                    }

                    if (v249 < 4)
                    {
LABEL_116:
                      v262 = v261[v249];
                      metrics34 = [(MOMetric *)selfCopy metrics];
                      v264 = v262;
                      v254 = lowercaseString2;
                      [metrics34 setObject:v258 forKeyedSubscript:v264];

                      v228 = v1197;
                    }
                  }
                }

LABEL_117:

                v257 = v257 + 1;
              }

              while (v255 != v257);
              v265 = [v252 countByEnumeratingWithState:&v1210 objects:v1241 count:16];
              v255 = v265;
            }

            while (v265);
LABEL_122:
            ++v249;

            v250 = v1185 + 1;
            v206 = v1148;
          }

          while ((v1185 + 1) != v1169);
          v1169 = [obja countByEnumeratingWithState:&v1214 objects:v1242 count:16];
          if (!v1169)
          {
LABEL_126:

            v192 = selfCopy;
            break;
          }
        }
      }

      v207 = v228 + 1;

      v203 = v1157;
      if ([v1157 count] <= v207)
      {
        goto LABEL_128;
      }
    }

    v219 = *(&off_1003402D0 + v1197);
    v1201 = *(&off_1003402E8 + v1197);
    startDate6 = [v208 startDate];
    [(NSDate *)v1146 timeIntervalSinceDate:startDate6];
    v221 = [NSNumber numberWithDouble:?];
    v222 = [MOMetric binForNumber:v221 bins:v1147];
    metrics35 = [(MOMetric *)selfCopy metrics];
    [metrics35 setObject:v222 forKeyedSubscript:v219];

    endDate23 = [v208 endDate];
    v206 = v1148;
    [(NSDate *)v1146 timeIntervalSinceDate:endDate23];
    v224 = [NSNumber numberWithDouble:?];
    v225 = [MOMetric binForNumber:v224 bins:v1147];
    metrics36 = [(MOMetric *)selfCopy metrics];
    [metrics36 setObject:v225 forKeyedSubscript:v1201];

    v192 = selfCopy;
LABEL_85:

    goto LABEL_86;
  }

LABEL_128:
  v266 = [MOPromptMetrics meanOf:v1145];
  metrics37 = [(MOMetric *)v192 metrics];
  [metrics37 setObject:v266 forKeyedSubscript:@"Storytelling_AverageMomentsLatency"];

  v268 = [MOPromptMetrics meanOf:v1139];
  metrics38 = [(MOMetric *)v192 metrics];
  [metrics38 setObject:v268 forKeyedSubscript:@"Storytelling_AverageMomentsRealLatency"];

  if ([v1148 count])
  {
    v270 = [MOPromptMetrics meanOf:v1148];
    metrics39 = [(MOMetric *)v192 metrics];
    [metrics39 setObject:v270 forKeyedSubscript:@"Storytelling_MeanDeltaBetweenMoments"];

    v272 = [v1148 valueForKeyPath:@"@min.doubleValue"];
    metrics40 = [(MOMetric *)v192 metrics];
    [metrics40 setObject:v272 forKeyedSubscript:@"Storytelling_MinDeltaBetweenMoments"];

    v274 = [v1148 valueForKeyPath:@"@max.doubleValue"];
    metrics41 = [(MOMetric *)v192 metrics];
    [metrics41 setObject:v274 forKeyedSubscript:@"Storytelling_MaxDeltaBetweenMoments"];

    v276 = [MOPromptMetrics standardDeviationOf:v1148];
    metrics42 = [(MOMetric *)v192 metrics];
    [metrics42 setObject:v276 forKeyedSubscript:@"Storytelling_SDDeltaBetweenMoments"];
  }

  if ([v1157 count])
  {
    firstObject2 = [v1157 firstObject];
    endDate24 = [firstObject2 endDate];
    [endDate24 timeIntervalSinceDate:v192->_startDate];
    v280 = [NSNumber numberWithDouble:?];
    v281 = v1148;
    [v1148 addObject:v280];

    v282 = v192->_endDate;
    lastObject2 = [v1157 lastObject];
    endDate25 = [lastObject2 endDate];
    [(NSDate *)v282 timeIntervalSinceDate:endDate25];
    v285 = [NSNumber numberWithDouble:?];
    [v1148 addObject:v285];

    v286 = [MOPromptMetrics meanOf:v1148];
    metrics43 = [(MOMetric *)v192 metrics];
    [metrics43 setObject:v286 forKeyedSubscript:@"Storytelling_MeanDeltaBetweenMomentsBoundariesIncluded"];

    v288 = [v1148 valueForKeyPath:@"@min.doubleValue"];
    metrics44 = [(MOMetric *)v192 metrics];
    [metrics44 setObject:v288 forKeyedSubscript:@"Storytelling_MinDeltaBetweenMomentsBoundariesIncluded"];

    v290 = [v1148 valueForKeyPath:@"@max.doubleValue"];
    metrics45 = [(MOMetric *)v192 metrics];
    [metrics45 setObject:v290 forKeyedSubscript:@"Storytelling_MaxDeltaBetweenMomentsBoundariesIncluded"];

    metrics50 = [MOPromptMetrics standardDeviationOf:v1148];
    metrics46 = [(MOMetric *)v192 metrics];
    [metrics46 setObject:metrics50 forKeyedSubscript:@"Storytelling_SDDeltaBetweenMomentsBoundariesIncluded"];

    v294 = v192;
  }

  else
  {
    [(NSDate *)v192->_endDate timeIntervalSinceDate:v192->_startDate];
    v295 = [NSNumber numberWithDouble:?];
    metrics47 = [(MOMetric *)v192 metrics];
    [metrics47 setObject:v295 forKeyedSubscript:@"Storytelling_MeanDeltaBetweenMomentsBoundariesIncluded"];

    [(NSDate *)v192->_endDate timeIntervalSinceDate:v192->_startDate];
    v297 = [NSNumber numberWithDouble:?];
    metrics48 = [(MOMetric *)v192 metrics];
    [metrics48 setObject:v297 forKeyedSubscript:@"Storytelling_MinDeltaBetweenMomentsBoundariesIncluded"];

    [(NSDate *)v192->_endDate timeIntervalSinceDate:v192->_startDate];
    v299 = [NSNumber numberWithDouble:?];
    metrics49 = [(MOMetric *)v192 metrics];
    [metrics49 setObject:v299 forKeyedSubscript:@"Storytelling_MaxDeltaBetweenMomentsBoundariesIncluded"];

    metrics50 = [(MOMetric *)v192 metrics];
    [metrics50 setObject:&off_10036E7B0 forKeyedSubscript:@"Storytelling_SDDeltaBetweenMomentsBoundariesIncluded"];
    v294 = v192;
    v281 = v1148;
  }

  [v281 removeAllObjects];
  v301 = [v1144 objectForKeyedSubscript:@"strProvider"];
  v302 = [NSPredicate predicateWithFormat:@"%K == %i", v301, 1];
  v1240[0] = v302;
  v303 = [v1144 objectForKeyedSubscript:@"strCategory"];
  v304 = [NSPredicate predicateWithFormat:@"%K == %i", v303, 2];
  v1240[1] = v304;
  v305 = [NSArray arrayWithObjects:v1240 count:2];
  v306 = [NSCompoundPredicate andPredicateWithSubpredicates:v305];

  v1119 = v306;
  v307 = [v1143 filteredArrayUsingPredicate:v306];
  v308 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v307 count]);
  metrics51 = [(MOMetric *)v294 metrics];
  [metrics51 setObject:v308 forKeyedSubscript:@"Workout_NumWorkouts"];

  v1134 = objc_opt_new();
  v1198 = v307;
  if ([v307 count])
  {
    v310 = 0;
    v311 = 0;
    v312 = 0;
    while (1)
    {
      v313 = [v307 objectAtIndexedSubscript:v310];
      v314 = [NSDateInterval alloc];
      startDate7 = [v313 startDate];
      endDate26 = [v313 endDate];
      v317 = [v314 initWithStartDate:startDate7 endDate:endDate26];

      v318 = [(MOPromptMetrics *)selfCopy doesInterval:v317 overlapWithAnyIntervalFromArray:v1158];
      creationDate9 = [v313 creationDate];
      if (!creationDate9)
      {
        break;
      }

      endDate32 = creationDate9;
      startDate8 = [v313 startDate];
      if (!startDate8)
      {
        p_cache = (&OBJC_METACLASS___MOEngagementHistoryManager + 16);
        goto LABEL_147;
      }

      v322 = startDate8;
      endDate27 = [v313 endDate];

      if (!endDate27)
      {
        break;
      }

      if (v310)
      {
        v324 = [v1198 objectAtIndexedSubscript:v310 - 1];
        endDate28 = [v324 endDate];

        if (endDate28)
        {
          endDate29 = [v313 endDate];
          v327 = [v1198 objectAtIndexedSubscript:v310 - 1];
          endDate30 = [v327 endDate];
          [endDate29 timeIntervalSinceDate:endDate30];
          v329 = [NSNumber numberWithDouble:?];
          [v1148 addObject:v329];
        }
      }

      v330 = (v311 + 1);
      creationDate10 = [v313 creationDate];
      endDate31 = [v313 endDate];
      [creationDate10 timeIntervalSinceDate:endDate31];
      v334 = v333;

      v335 = [NSNumber numberWithDouble:v334];
      [v1134 addObject:v335];

      if (v311 > 9)
      {
        goto LABEL_145;
      }

      workoutType = [v313 workoutType];
      v337 = [HKWorkout _workoutActivityTypeFromString:workoutType];

      p_cache = (&OBJC_METACLASS___MOEngagementHistoryManager + 16);
      if (v311 <= 9)
      {
        v339 = *(&off_100340300 + v311);
        v1186 = *(&off_100340350 + v311);
        v1203 = *(&off_1003403A0 + v311);
        v311 = (v311 + 1);
        v340 = [NSNumber numberWithUnsignedInteger:v337];
        metrics52 = [(MOMetric *)selfCopy metrics];
        [metrics52 setObject:v340 forKeyedSubscript:v339];

        startDate9 = [v313 startDate];
        [(NSDate *)v1146 timeIntervalSinceDate:startDate9];
        v343 = [NSNumber numberWithDouble:?];
        v344 = [MOMetric binForNumber:v343 bins:v1147];
        metrics53 = [(MOMetric *)selfCopy metrics];
        [metrics53 setObject:v344 forKeyedSubscript:v1186];

        endDate32 = [v313 endDate];
        [(NSDate *)v1146 timeIntervalSinceDate:endDate32];
        v346 = [NSNumber numberWithDouble:?];
        v347 = [MOMetric binForNumber:v346 bins:v1147];
        metrics54 = [(MOMetric *)selfCopy metrics];
        [metrics54 setObject:v347 forKeyedSubscript:v1203];

        p_cache = (&OBJC_METACLASS___MOEngagementHistoryManager + 16);
LABEL_147:

        v330 = v311;
      }

LABEL_148:
      v312 += v318;

      ++v310;
      v307 = v1198;
      v311 = v330;
      if ([v1198 count] <= v310)
      {
        v349 = v312;
        v350 = selfCopy;
        v351 = &GEOPOICategoryGasStation_ptr;
        goto LABEL_151;
      }
    }

    v330 = v311;
LABEL_145:
    p_cache = (&OBJC_METACLASS___MOEngagementHistoryManager + 16);
    goto LABEL_148;
  }

  v350 = v294;
  v351 = &GEOPOICategoryGasStation_ptr;
  v349 = 0.0;
  p_cache = (&OBJC_METACLASS___MOEngagementHistoryManager + 16);
LABEL_151:
  if ([v307 count])
  {
    v352 = [v351[190] numberWithDouble:{1.0 - v349 / objc_msgSend(v307, "count")}];
    metrics55 = [(MOMetric *)v350 metrics];
    [metrics55 setObject:v352 forKeyedSubscript:@"Workout_PercentageOfWorkoutEventsNoLOI"];

    p_cache = &OBJC_METACLASS___MOEngagementHistoryManager.cache;
  }

  [p_cache + 363 meanOf:v1134];
  v355 = v354 = p_cache;
  metrics56 = [(MOMetric *)v350 metrics];
  [metrics56 setObject:v355 forKeyedSubscript:@"Workout_AverageWorkoutLatency"];

  if ([v1148 count])
  {
    v357 = [v354 + 363 meanOf:v1148];
    metrics57 = [(MOMetric *)v350 metrics];
    [metrics57 setObject:v357 forKeyedSubscript:@"Workout_MeanDeltaBetweenWorkouts"];

    v359 = [v1148 valueForKeyPath:@"@min.doubleValue"];
    metrics58 = [(MOMetric *)v350 metrics];
    [metrics58 setObject:v359 forKeyedSubscript:@"Workout_MinDeltaBetweenWorkouts"];

    v361 = [v1148 valueForKeyPath:@"@max.doubleValue"];
    metrics59 = [(MOMetric *)v350 metrics];
    [metrics59 setObject:v361 forKeyedSubscript:@"Workout_MaxDeltaBetweenWorkouts"];

    v363 = [v354 + 363 standardDeviationOf:v1148];
    metrics60 = [(MOMetric *)v350 metrics];
    [metrics60 setObject:v363 forKeyedSubscript:@"Workout_SDDeltaBetweenWorkouts"];
  }

  v365 = [v307 count];
  v366 = v351[190];
  if (v365)
  {
    firstObject3 = [v307 firstObject];
    endDate33 = [firstObject3 endDate];
    [endDate33 timeIntervalSinceDate:v350->_startDate];
    v369 = [v366 numberWithDouble:?];
    v370 = v1148;
    [v1148 addObject:v369];

    v371 = v351[190];
    v372 = v350->_endDate;
    lastObject3 = [v307 lastObject];
    endDate34 = [lastObject3 endDate];
    [(NSDate *)v372 timeIntervalSinceDate:endDate34];
    v375 = [v371 numberWithDouble:?];
    [v1148 addObject:v375];

    v376 = [MOPromptMetrics meanOf:v1148];
    metrics61 = [(MOMetric *)v350 metrics];
    [metrics61 setObject:v376 forKeyedSubscript:@"Workout_MeanDeltaBetweenWorkoutsBoundariesIncluded"];

    v378 = [v1148 valueForKeyPath:@"@min.doubleValue"];
    metrics62 = [(MOMetric *)v350 metrics];
    [metrics62 setObject:v378 forKeyedSubscript:@"Workout_MinDeltaBetweenWorkoutsBoundariesIncluded"];

    v380 = [v1148 valueForKeyPath:@"@max.doubleValue"];
    metrics63 = [(MOMetric *)v350 metrics];
    [metrics63 setObject:v380 forKeyedSubscript:@"Workout_MaxDeltaBetweenWorkoutsBoundariesIncluded"];

    metrics68 = [MOPromptMetrics standardDeviationOf:v1148];
    metrics64 = [(MOMetric *)v350 metrics];
    [metrics64 setObject:metrics68 forKeyedSubscript:@"Workout_SDDeltaBetweenWorkoutsBoundariesIncluded"];
  }

  else
  {
    [(NSDate *)v350->_endDate timeIntervalSinceDate:v350->_startDate];
    v384 = [v366 numberWithDouble:?];
    metrics65 = [(MOMetric *)v350 metrics];
    [metrics65 setObject:v384 forKeyedSubscript:@"Workout_MeanDeltaBetweenWorkoutsBoundariesIncluded"];

    v386 = v351[190];
    [(NSDate *)v350->_endDate timeIntervalSinceDate:v350->_startDate];
    v387 = [v386 numberWithDouble:?];
    metrics66 = [(MOMetric *)v350 metrics];
    [metrics66 setObject:v387 forKeyedSubscript:@"Workout_MinDeltaBetweenWorkoutsBoundariesIncluded"];

    v389 = v351[190];
    [(NSDate *)v350->_endDate timeIntervalSinceDate:v350->_startDate];
    v390 = [v389 numberWithDouble:?];
    metrics67 = [(MOMetric *)v350 metrics];
    [metrics67 setObject:v390 forKeyedSubscript:@"Workout_MaxDeltaBetweenWorkoutsBoundariesIncluded"];

    metrics68 = [(MOMetric *)v350 metrics];
    [metrics68 setObject:&off_10036E7B0 forKeyedSubscript:@"Workout_SDDeltaBetweenWorkoutsBoundariesIncluded"];
    v370 = v1148;
  }

  [v370 removeAllObjects];
  v392 = [v1144 objectForKeyedSubscript:@"strProvider"];
  v393 = [NSPredicate predicateWithFormat:@"%K == %i", v392, 3];
  v1239 = v393;
  v394 = [NSArray arrayWithObjects:&v1239 count:1];
  v395 = [NSCompoundPredicate andPredicateWithSubpredicates:v394];

  v1118 = v395;
  v396 = [v1143 filteredArrayUsingPredicate:v395];
  v397 = [v351[190] numberWithUnsignedInteger:{objc_msgSend(v396, "count")}];
  metrics69 = [(MOMetric *)v350 metrics];
  [metrics69 setObject:v397 forKeyedSubscript:@"Proactive_NumAllEvents"];

  v399 = objc_opt_new();
  v1206 = 0u;
  v1207 = 0u;
  v1208 = 0u;
  v1209 = 0u;
  v400 = v396;
  v401 = [v400 countByEnumeratingWithState:&v1206 objects:v1238 count:16];
  if (v401)
  {
    v402 = v401;
    v403 = *v1207;
    do
    {
      for (m = 0; m != v402; m = m + 1)
      {
        if (*v1207 != v403)
        {
          objc_enumerationMutation(v400);
        }

        v405 = *(*(&v1206 + 1) + 8 * m);
        creationDate11 = [v405 creationDate];
        if (creationDate11)
        {
          v407 = creationDate11;
          endDate35 = [v405 endDate];

          if (endDate35)
          {
            creationDate12 = [v405 creationDate];
            endDate36 = [v405 endDate];
            [creationDate12 timeIntervalSinceDate:endDate36];
            v412 = v411;

            v413 = [NSNumber numberWithDouble:v412];
            [v399 addObject:v413];
          }
        }
      }

      v402 = [v400 countByEnumeratingWithState:&v1206 objects:v1238 count:16];
    }

    while (v402);
  }

  v1117 = v400;

  v414 = selfCopy;
  if ([v399 count])
  {
    v415 = [MOPromptMetrics meanOf:v399];
    metrics70 = [(MOMetric *)selfCopy metrics];
    [metrics70 setObject:v415 forKeyedSubscript:@"Proactive_EventsAverageLatency"];

    [v399 removeAllObjects];
  }

  v1204 = v399;
  v417 = [v1144 objectForKeyedSubscript:@"strProvider"];
  v418 = [NSPredicate predicateWithFormat:@"%K == %i", v417, 3];
  v1237[0] = v418;
  v419 = [v1144 objectForKeyedSubscript:@"strCategory"];
  v420 = [NSPredicate predicateWithFormat:@"%K == %i", v419, 3];
  v1237[1] = v420;
  v421 = [NSArray arrayWithObjects:v1237 count:2];
  v422 = [NSCompoundPredicate andPredicateWithSubpredicates:v421];

  v1116 = v422;
  v423 = [v1143 filteredArrayUsingPredicate:v422];
  v424 = &GEOPOICategoryGasStation_ptr;
  v425 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v423 count]);
  metrics71 = [(MOMetric *)selfCopy metrics];
  [metrics71 setObject:v425 forKeyedSubscript:@"Proactive_NumMediaOnRepeatEvents"];

  v1133 = v423;
  if ([v423 count])
  {
    v427 = 0;
    v428 = 0;
    v429 = 0;
    while (1)
    {
      v430 = [v423 objectAtIndexedSubscript:v427];
      v431 = [NSDateInterval alloc];
      startDate10 = [v430 startDate];
      endDate37 = [v430 endDate];
      v434 = [v431 initWithStartDate:startDate10 endDate:endDate37];

      v435 = [(MOPromptMetrics *)selfCopy doesInterval:v434 overlapWithAnyIntervalFromArray:v1158];
      creationDate13 = [v430 creationDate];
      if (creationDate13)
      {
        endDate43 = creationDate13;
        startDate11 = [v430 startDate];
        if (!startDate11)
        {
          goto LABEL_183;
        }

        v439 = startDate11;
        endDate38 = [v430 endDate];

        if (endDate38)
        {
          break;
        }
      }

LABEL_184:
      v428 += v435;

      if ([v423 count] <= ++v427)
      {
        v461 = v428;
        v414 = selfCopy;
        v424 = &GEOPOICategoryGasStation_ptr;
        goto LABEL_188;
      }
    }

    if (v427)
    {
      v441 = [v423 objectAtIndexedSubscript:v427 - 1];
      endDate39 = [v441 endDate];

      if (endDate39)
      {
        endDate40 = [v430 endDate];
        v444 = [v423 objectAtIndexedSubscript:v427 - 1];
        endDate41 = [v444 endDate];
        [endDate40 timeIntervalSinceDate:endDate41];
        v446 = [NSNumber numberWithDouble:?];
        [v1148 addObject:v446];

        v423 = v1133;
      }
    }

    creationDate14 = [v430 creationDate];
    endDate42 = [v430 endDate];
    [creationDate14 timeIntervalSinceDate:endDate42];
    v450 = v449;

    v451 = [NSNumber numberWithDouble:v450];
    [v1204 addObject:v451];

    if (v429)
    {
      v452 = v429 - 1;
      if ((v429 - 1) > 3)
      {
        ++v429;
        goto LABEL_184;
      }

      v1175 = v435;
      v453 = *(&off_1003403F0 + v452);
      v1170 = *(&off_100340410 + v452);
      v1187 = v429 + 1;
    }

    else
    {
      v1175 = v435;
      v1187 = 1;
      v453 = @"Proactive_HourIDMediaOnRepeat_Start_1";
      v1170 = @"Proactive_HourIDMediaOnRepeat_End_1";
    }

    startDate12 = [v430 startDate];
    [(NSDate *)v1146 timeIntervalSinceDate:startDate12];
    v455 = [NSNumber numberWithDouble:?];
    v456 = [MOMetric binForNumber:v455 bins:v1147];
    metrics72 = [(MOMetric *)selfCopy metrics];
    [metrics72 setObject:v456 forKeyedSubscript:v453];

    endDate43 = [v430 endDate];
    [(NSDate *)v1146 timeIntervalSinceDate:endDate43];
    v458 = [NSNumber numberWithDouble:?];
    v459 = [MOMetric binForNumber:v458 bins:v1147];
    metrics73 = [(MOMetric *)selfCopy metrics];
    [metrics73 setObject:v459 forKeyedSubscript:v1170];

    v423 = v1133;
    v429 = v1187;
    v435 = v1175;
LABEL_183:

    goto LABEL_184;
  }

  v461 = 0.0;
LABEL_188:
  if ([v423 count])
  {
    v462 = [v424[190] numberWithDouble:{1.0 - v461 / objc_msgSend(v423, "count")}];
    metrics74 = [(MOMetric *)v414 metrics];
    [metrics74 setObject:v462 forKeyedSubscript:@"Proactive_PercentageOfMediaOnRepeatEventsNoLOI"];
  }

  if ([v1204 count])
  {
    v464 = [MOPromptMetrics meanOf:v1204];
    metrics75 = [(MOMetric *)v414 metrics];
    [metrics75 setObject:v464 forKeyedSubscript:@"Proactive_MediaOnRepeatAverageLatency"];

    [v1204 removeAllObjects];
  }

  if ([v1148 count])
  {
    v466 = [MOPromptMetrics meanOf:v1148];
    metrics76 = [(MOMetric *)v414 metrics];
    [metrics76 setObject:v466 forKeyedSubscript:@"Proactive_MeanDeltaBetweenMediaOnRepeatEvents"];

    v468 = [v1148 valueForKeyPath:@"@min.doubleValue"];
    metrics77 = [(MOMetric *)v414 metrics];
    [metrics77 setObject:v468 forKeyedSubscript:@"Proactive_MinDeltaBetweenMediaOnRepeatEvents"];

    v470 = [v1148 valueForKeyPath:@"@max.doubleValue"];
    metrics78 = [(MOMetric *)v414 metrics];
    [metrics78 setObject:v470 forKeyedSubscript:@"Proactive_MaxDeltaBetweenMediaOnRepeatEvents"];

    v472 = [MOPromptMetrics standardDeviationOf:v1148];
    metrics79 = [(MOMetric *)v414 metrics];
    [metrics79 setObject:v472 forKeyedSubscript:@"Proactive_SDDeltaBetweenMediaOnRepeatEvents"];
  }

  v474 = [v423 count];
  v475 = v424[190];
  if (v474)
  {
    firstObject4 = [v423 firstObject];
    endDate44 = [firstObject4 endDate];
    [endDate44 timeIntervalSinceDate:v414->_startDate];
    v478 = [v475 numberWithDouble:?];
    v479 = v1148;
    [v1148 addObject:v478];

    v480 = v424[190];
    v481 = v414->_endDate;
    lastObject4 = [v423 lastObject];
    endDate45 = [lastObject4 endDate];
    [(NSDate *)v481 timeIntervalSinceDate:endDate45];
    v484 = [v480 numberWithDouble:?];
    [v1148 addObject:v484];

    v485 = [MOPromptMetrics meanOf:v1148];
    metrics80 = [(MOMetric *)v414 metrics];
    [metrics80 setObject:v485 forKeyedSubscript:@"Proactive_MeanDeltaBetweenMediaOnRepeatEventsBoundariesIncluded"];

    v487 = [v1148 valueForKeyPath:@"@min.doubleValue"];
    metrics81 = [(MOMetric *)v414 metrics];
    [metrics81 setObject:v487 forKeyedSubscript:@"Proactive_MinDeltaBetweenMediaOnRepeatEventsBoundariesIncluded"];

    v489 = [v1148 valueForKeyPath:@"@max.doubleValue"];
    metrics82 = [(MOMetric *)v414 metrics];
    [metrics82 setObject:v489 forKeyedSubscript:@"Proactive_MaxDeltaBetweenMediaOnRepeatEventsBoundariesIncluded"];

    metrics87 = [MOPromptMetrics standardDeviationOf:v1148];
    metrics83 = [(MOMetric *)v414 metrics];
    [metrics83 setObject:metrics87 forKeyedSubscript:@"Proactive_SDDeltaBetweenMediaOnRepeatEventsBoundariesIncluded"];

    v493 = v414;
    v494 = v424;
  }

  else
  {
    [(NSDate *)v414->_endDate timeIntervalSinceDate:v414->_startDate];
    v495 = [v475 numberWithDouble:?];
    metrics84 = [(MOMetric *)v414 metrics];
    [metrics84 setObject:v495 forKeyedSubscript:@"Proactive_MeanDeltaBetweenMediaOnRepeatEventsBoundariesIncluded"];

    v497 = v424[190];
    [(NSDate *)v414->_endDate timeIntervalSinceDate:v414->_startDate];
    v498 = [v497 numberWithDouble:?];
    metrics85 = [(MOMetric *)v414 metrics];
    [metrics85 setObject:v498 forKeyedSubscript:@"Proactive_MinDeltaBetweenMediaOnRepeatEventsBoundariesIncluded"];

    v500 = v424[190];
    [(NSDate *)v414->_endDate timeIntervalSinceDate:v414->_startDate];
    v501 = [v500 numberWithDouble:?];
    metrics86 = [(MOMetric *)v414 metrics];
    [metrics86 setObject:v501 forKeyedSubscript:@"Proactive_MaxDeltaBetweenMediaOnRepeatEventsBoundariesIncluded"];

    metrics87 = [(MOMetric *)v414 metrics];
    [metrics87 setObject:&off_10036E7B0 forKeyedSubscript:@"Proactive_SDDeltaBetweenMediaOnRepeatEventsBoundariesIncluded"];
    v493 = v414;
    v494 = v424;
    v479 = v1148;
  }

  [v479 removeAllObjects];
  v503 = [v1144 objectForKeyedSubscript:@"strProvider"];
  v504 = [NSPredicate predicateWithFormat:@"%K == %i", v503, 3];
  v1236[0] = v504;
  v505 = [v1144 objectForKeyedSubscript:@"strCategory"];
  v506 = [NSPredicate predicateWithFormat:@"%K == %i", v505, 7];
  v1236[1] = v506;
  v507 = [NSArray arrayWithObjects:v1236 count:2];
  v508 = [NSCompoundPredicate andPredicateWithSubpredicates:v507];

  v1115 = v508;
  v509 = [v1143 filteredArrayUsingPredicate:v508];
  v510 = [v494[190] numberWithUnsignedInteger:{objc_msgSend(v509, "count")}];
  metrics88 = [(MOMetric *)v493 metrics];
  [metrics88 setObject:v510 forKeyedSubscript:@"Proactive_NumTopicEvents"];

  v1171 = v509;
  if ([v509 count])
  {
    v512 = 0;
    v513 = 0;
    v514 = 0;
    v515 = v509;
    while (1)
    {
      v516 = [v515 objectAtIndexedSubscript:v512];
      v517 = [NSDateInterval alloc];
      startDate13 = [v516 startDate];
      endDate46 = [v516 endDate];
      v520 = [v517 initWithStartDate:startDate13 endDate:endDate46];

      v521 = [(MOPromptMetrics *)selfCopy doesInterval:v520 overlapWithAnyIntervalFromArray:v1158];
      creationDate15 = [v516 creationDate];
      if (creationDate15)
      {
        endDate52 = creationDate15;
        startDate14 = [v516 startDate];
        if (!startDate14)
        {
          goto LABEL_210;
        }

        v525 = startDate14;
        endDate47 = [v516 endDate];

        if (endDate47)
        {
          break;
        }
      }

LABEL_211:
      v513 += v521;

      if ([v515 count] <= ++v512)
      {
        v547 = v513;
        v548 = selfCopy;
        v549 = 0x100335000;
        goto LABEL_215;
      }
    }

    if (v512)
    {
      v527 = [v515 objectAtIndexedSubscript:v512 - 1];
      endDate48 = [v527 endDate];

      if (endDate48)
      {
        endDate49 = [v516 endDate];
        v530 = [v515 objectAtIndexedSubscript:v512 - 1];
        endDate50 = [v530 endDate];
        [endDate49 timeIntervalSinceDate:endDate50];
        v532 = [NSNumber numberWithDouble:?];
        [v1148 addObject:v532];

        v515 = v1171;
      }
    }

    creationDate16 = [v516 creationDate];
    endDate51 = [v516 endDate];
    [creationDate16 timeIntervalSinceDate:endDate51];
    v536 = v535;

    v537 = [NSNumber numberWithDouble:v536];
    [v1204 addObject:v537];

    if (v514)
    {
      v538 = v514 - 1;
      if ((v514 - 1) > 3)
      {
        ++v514;
        goto LABEL_211;
      }

      v1176 = v521;
      v539 = *(&off_100340430 + v538);
      v1165 = *(&off_100340450 + v538);
      v1188 = v514 + 1;
    }

    else
    {
      v1176 = v521;
      v1188 = 1;
      v539 = @"Proactive_HourIDTopicEvent_Start_1";
      v1165 = @"Proactive_HourIDTopicEvent_End_1";
    }

    startDate15 = [v516 startDate];
    [(NSDate *)v1146 timeIntervalSinceDate:startDate15];
    v541 = [NSNumber numberWithDouble:?];
    v542 = [MOMetric binForNumber:v541 bins:v1147];
    metrics89 = [(MOMetric *)selfCopy metrics];
    [metrics89 setObject:v542 forKeyedSubscript:v539];

    endDate52 = [v516 endDate];
    [(NSDate *)v1146 timeIntervalSinceDate:endDate52];
    v544 = [NSNumber numberWithDouble:?];
    v545 = [MOMetric binForNumber:v544 bins:v1147];
    metrics90 = [(MOMetric *)selfCopy metrics];
    [metrics90 setObject:v545 forKeyedSubscript:v1165];

    v515 = v1171;
    v514 = v1188;
    v521 = v1176;
LABEL_210:

    goto LABEL_211;
  }

  v548 = v493;
  v549 = v494;
  v547 = 0.0;
  v515 = v509;
LABEL_215:
  if ([v515 count])
  {
    v550 = [*(v549 + 1520) numberWithDouble:{1.0 - v547 / objc_msgSend(v515, "count")}];
    metrics91 = [(MOMetric *)v548 metrics];
    [metrics91 setObject:v550 forKeyedSubscript:@"Proactive_PercentageOfTopicEventsNoLOI"];
  }

  if ([v1204 count])
  {
    v552 = [MOPromptMetrics meanOf:v1204];
    metrics92 = [(MOMetric *)v548 metrics];
    [metrics92 setObject:v552 forKeyedSubscript:@"Proactive_TopicAverageLatency"];

    [v1204 removeAllObjects];
  }

  if ([v1148 count])
  {
    v554 = [MOPromptMetrics meanOf:v1148];
    metrics93 = [(MOMetric *)v548 metrics];
    [metrics93 setObject:v554 forKeyedSubscript:@"Proactive_MeanDeltaBetweenTopicEvents"];

    v556 = [v1148 valueForKeyPath:@"@min.doubleValue"];
    metrics94 = [(MOMetric *)v548 metrics];
    [metrics94 setObject:v556 forKeyedSubscript:@"Proactive_MinDeltaBetweenTopicEvents"];

    v558 = [v1148 valueForKeyPath:@"@max.doubleValue"];
    metrics95 = [(MOMetric *)v548 metrics];
    [metrics95 setObject:v558 forKeyedSubscript:@"Proactive_MaxDeltaBetweenTopicEvents"];

    v560 = [MOPromptMetrics standardDeviationOf:v1148];
    metrics96 = [(MOMetric *)v548 metrics];
    [metrics96 setObject:v560 forKeyedSubscript:@"Proactive_SDDeltaBetweenTopicEvents"];
  }

  v562 = [v515 count];
  v563 = *(v549 + 1520);
  if (v562)
  {
    firstObject5 = [v515 firstObject];
    endDate53 = [firstObject5 endDate];
    [endDate53 timeIntervalSinceDate:v548->_startDate];
    v566 = [v563 numberWithDouble:?];
    v567 = v1148;
    [v1148 addObject:v566];

    v568 = *(v549 + 1520);
    v569 = v548->_endDate;
    lastObject5 = [v515 lastObject];
    endDate54 = [lastObject5 endDate];
    [(NSDate *)v569 timeIntervalSinceDate:endDate54];
    v572 = [v568 numberWithDouble:?];
    [v1148 addObject:v572];

    v573 = [MOPromptMetrics meanOf:v1148];
    metrics97 = [(MOMetric *)v548 metrics];
    [metrics97 setObject:v573 forKeyedSubscript:@"Proactive_MeanDeltaBetweenTopicEventsBoundariesIncluded"];

    v575 = [v1148 valueForKeyPath:@"@min.doubleValue"];
    metrics98 = [(MOMetric *)v548 metrics];
    [metrics98 setObject:v575 forKeyedSubscript:@"Proactive_MinDeltaBetweenTopicEventsBoundariesIncluded"];

    v577 = [v1148 valueForKeyPath:@"@max.doubleValue"];
    metrics99 = [(MOMetric *)v548 metrics];
    [metrics99 setObject:v577 forKeyedSubscript:@"Proactive_MaxDeltaBetweenTopicEventsBoundariesIncluded"];

    metrics104 = [MOPromptMetrics standardDeviationOf:v1148];
    metrics100 = [(MOMetric *)v548 metrics];
    [metrics100 setObject:metrics104 forKeyedSubscript:@"Proactive_SDDeltaBetweenTopicEventsBoundariesIncluded"];

    v581 = v548;
    v582 = v549;
  }

  else
  {
    [(NSDate *)v548->_endDate timeIntervalSinceDate:v548->_startDate];
    v583 = [v563 numberWithDouble:?];
    metrics101 = [(MOMetric *)v548 metrics];
    [metrics101 setObject:v583 forKeyedSubscript:@"Proactive_MeanDeltaBetweenTopicEventsBoundariesIncluded"];

    v585 = *(v549 + 1520);
    [(NSDate *)v548->_endDate timeIntervalSinceDate:v548->_startDate];
    v586 = [v585 numberWithDouble:?];
    metrics102 = [(MOMetric *)v548 metrics];
    [metrics102 setObject:v586 forKeyedSubscript:@"Proactive_MinDeltaBetweenTopicEventsBoundariesIncluded"];

    v588 = *(v549 + 1520);
    [(NSDate *)v548->_endDate timeIntervalSinceDate:v548->_startDate];
    v589 = [v588 numberWithDouble:?];
    metrics103 = [(MOMetric *)v548 metrics];
    [metrics103 setObject:v589 forKeyedSubscript:@"Proactive_MaxDeltaBetweenTopicEventsBoundariesIncluded"];

    metrics104 = [(MOMetric *)v548 metrics];
    [metrics104 setObject:&off_10036E7B0 forKeyedSubscript:@"Proactive_SDDeltaBetweenTopicEventsBoundariesIncluded"];
    v581 = v548;
    v582 = v549;
    v567 = v1148;
  }

  [v567 removeAllObjects];
  v591 = [v1144 objectForKeyedSubscript:@"strProvider"];
  v592 = [NSPredicate predicateWithFormat:@"%K == %i", v591, 3];
  v1235[0] = v592;
  v593 = [v1144 objectForKeyedSubscript:@"strCategory"];
  v594 = [NSPredicate predicateWithFormat:@"%K == %i", v593, 8];
  v1235[1] = v594;
  v595 = [NSArray arrayWithObjects:v1235 count:2];
  v596 = [NSCompoundPredicate andPredicateWithSubpredicates:v595];

  v1114 = v596;
  v597 = [v1143 filteredArrayUsingPredicate:v596];
  v598 = [*(v582 + 1520) numberWithUnsignedInteger:{objc_msgSend(v597, "count")}];
  metrics105 = [(MOMetric *)v581 metrics];
  [metrics105 setObject:v598 forKeyedSubscript:@"Proactive_NumTravelEvents"];

  v1166 = v597;
  if ([v597 count])
  {
    v600 = 0;
    v601 = 0;
    v602 = 0;
    v603 = v597;
    while (1)
    {
      v604 = [v603 objectAtIndexedSubscript:v600];
      v605 = [NSDateInterval alloc];
      startDate16 = [v604 startDate];
      endDate55 = [v604 endDate];
      v608 = [v605 initWithStartDate:startDate16 endDate:endDate55];

      v609 = [(MOPromptMetrics *)selfCopy doesInterval:v608 overlapWithAnyIntervalFromArray:v1158];
      creationDate17 = [v604 creationDate];
      if (creationDate17)
      {
        endDate61 = creationDate17;
        startDate17 = [v604 startDate];
        if (!startDate17)
        {
          goto LABEL_237;
        }

        v613 = startDate17;
        endDate56 = [v604 endDate];

        if (endDate56)
        {
          break;
        }
      }

LABEL_238:
      v601 += v609;

      if ([v603 count] <= ++v600)
      {
        v635 = v601;
        v636 = selfCopy;
        v637 = 0x100335000;
        goto LABEL_242;
      }
    }

    if (v600)
    {
      v615 = [v603 objectAtIndexedSubscript:v600 - 1];
      endDate57 = [v615 endDate];

      if (endDate57)
      {
        endDate58 = [v604 endDate];
        v618 = [v603 objectAtIndexedSubscript:v600 - 1];
        endDate59 = [v618 endDate];
        [endDate58 timeIntervalSinceDate:endDate59];
        v620 = [NSNumber numberWithDouble:?];
        [v1148 addObject:v620];

        v603 = v1166;
      }
    }

    creationDate18 = [v604 creationDate];
    endDate60 = [v604 endDate];
    [creationDate18 timeIntervalSinceDate:endDate60];
    v624 = v623;

    v625 = [NSNumber numberWithDouble:v624];
    [v1204 addObject:v625];

    if (v602)
    {
      v626 = v602 - 1;
      if ((v602 - 1) > 3)
      {
        ++v602;
        goto LABEL_238;
      }

      v1177 = v609;
      v627 = *(&off_100340470 + v626);
      objb = *(&off_100340490 + v626);
      v1189 = v602 + 1;
    }

    else
    {
      v1177 = v609;
      v1189 = 1;
      v627 = @"Proactive_HourIDTravelEvent_Start_1";
      objb = @"Proactive_HourIDTravelEvent_End_1";
    }

    startDate18 = [v604 startDate];
    [(NSDate *)v1146 timeIntervalSinceDate:startDate18];
    v629 = [NSNumber numberWithDouble:?];
    v630 = [MOMetric binForNumber:v629 bins:v1147];
    metrics106 = [(MOMetric *)selfCopy metrics];
    [metrics106 setObject:v630 forKeyedSubscript:v627];

    endDate61 = [v604 endDate];
    [(NSDate *)v1146 timeIntervalSinceDate:endDate61];
    v632 = [NSNumber numberWithDouble:?];
    v633 = [MOMetric binForNumber:v632 bins:v1147];
    metrics107 = [(MOMetric *)selfCopy metrics];
    [metrics107 setObject:v633 forKeyedSubscript:objb];

    v603 = v1166;
    v602 = v1189;
    v609 = v1177;
LABEL_237:

    goto LABEL_238;
  }

  v636 = v581;
  v637 = v582;
  v635 = 0.0;
  v603 = v597;
LABEL_242:
  if ([v603 count])
  {
    v638 = [*(v637 + 1520) numberWithDouble:{1.0 - v635 / objc_msgSend(v603, "count")}];
    metrics108 = [(MOMetric *)v636 metrics];
    [metrics108 setObject:v638 forKeyedSubscript:@"Proactive_PercentageOfTravelEventsNoLOI"];
  }

  if ([v1204 count])
  {
    v640 = [MOPromptMetrics meanOf:v1204];
    metrics109 = [(MOMetric *)v636 metrics];
    [metrics109 setObject:v640 forKeyedSubscript:@"Proactive_TravelAverageLatency"];

    [v1204 removeAllObjects];
  }

  if ([v1148 count])
  {
    v642 = [MOPromptMetrics meanOf:v1148];
    metrics110 = [(MOMetric *)v636 metrics];
    [metrics110 setObject:v642 forKeyedSubscript:@"Proactive_MeanDeltaBetweenTravelEvents"];

    v644 = [v1148 valueForKeyPath:@"@min.doubleValue"];
    metrics111 = [(MOMetric *)v636 metrics];
    [metrics111 setObject:v644 forKeyedSubscript:@"Proactive_MinDeltaBetweenTravelEvents"];

    v646 = [v1148 valueForKeyPath:@"@max.doubleValue"];
    metrics112 = [(MOMetric *)v636 metrics];
    [metrics112 setObject:v646 forKeyedSubscript:@"Proactive_MaxDeltaBetweenTravelEvents"];

    v648 = [MOPromptMetrics standardDeviationOf:v1148];
    metrics113 = [(MOMetric *)v636 metrics];
    [metrics113 setObject:v648 forKeyedSubscript:@"Proactive_SDDeltaBetweenTravelEvents"];
  }

  v650 = [v603 count];
  v651 = *(v637 + 1520);
  if (v650)
  {
    firstObject6 = [v603 firstObject];
    endDate62 = [firstObject6 endDate];
    [endDate62 timeIntervalSinceDate:v636->_startDate];
    v654 = [v651 numberWithDouble:?];
    v655 = v1148;
    [v1148 addObject:v654];

    v656 = *(v637 + 1520);
    v657 = v636->_endDate;
    lastObject6 = [v603 lastObject];
    endDate63 = [lastObject6 endDate];
    [(NSDate *)v657 timeIntervalSinceDate:endDate63];
    v660 = [v656 numberWithDouble:?];
    [v1148 addObject:v660];

    v661 = [MOPromptMetrics meanOf:v1148];
    metrics114 = [(MOMetric *)v636 metrics];
    [metrics114 setObject:v661 forKeyedSubscript:@"Proactive_MeanDeltaBetweenTravelEventsBoundariesIncluded"];

    v663 = [v1148 valueForKeyPath:@"@min.doubleValue"];
    metrics115 = [(MOMetric *)v636 metrics];
    [metrics115 setObject:v663 forKeyedSubscript:@"Proactive_MinDeltaBetweenTravelEventsBoundariesIncluded"];

    v665 = [v1148 valueForKeyPath:@"@max.doubleValue"];
    metrics116 = [(MOMetric *)v636 metrics];
    [metrics116 setObject:v665 forKeyedSubscript:@"Proactive_MaxDeltaBetweenTravelEventsBoundariesIncluded"];

    metrics121 = [MOPromptMetrics standardDeviationOf:v1148];
    metrics117 = [(MOMetric *)v636 metrics];
    [metrics117 setObject:metrics121 forKeyedSubscript:@"Proactive_SDDeltaBetweenTravelEventsBoundariesIncluded"];

    v669 = v636;
    v670 = v637;
  }

  else
  {
    [(NSDate *)v636->_endDate timeIntervalSinceDate:v636->_startDate];
    v671 = [v651 numberWithDouble:?];
    metrics118 = [(MOMetric *)v636 metrics];
    [metrics118 setObject:v671 forKeyedSubscript:@"Proactive_MeanDeltaBetweenTravelEventsBoundariesIncluded"];

    v673 = *(v637 + 1520);
    [(NSDate *)v636->_endDate timeIntervalSinceDate:v636->_startDate];
    v674 = [v673 numberWithDouble:?];
    metrics119 = [(MOMetric *)v636 metrics];
    [metrics119 setObject:v674 forKeyedSubscript:@"Proactive_MinDeltaBetweenTravelEventsBoundariesIncluded"];

    v676 = *(v637 + 1520);
    [(NSDate *)v636->_endDate timeIntervalSinceDate:v636->_startDate];
    v677 = [v676 numberWithDouble:?];
    metrics120 = [(MOMetric *)v636 metrics];
    [metrics120 setObject:v677 forKeyedSubscript:@"Proactive_MaxDeltaBetweenTravelEventsBoundariesIncluded"];

    metrics121 = [(MOMetric *)v636 metrics];
    [metrics121 setObject:&off_10036E7B0 forKeyedSubscript:@"Proactive_SDDeltaBetweenTravelEventsBoundariesIncluded"];
    v669 = v636;
    v670 = v637;
    v655 = v1148;
  }

  [v655 removeAllObjects];
  v679 = [v1144 objectForKeyedSubscript:@"strProvider"];
  v680 = [NSPredicate predicateWithFormat:@"%K == %i", v679, 3];
  v1234[0] = v680;
  v681 = [v1144 objectForKeyedSubscript:@"strCategory"];
  v682 = [NSPredicate predicateWithFormat:@"%K == %i", v681, 9];
  v1234[1] = v682;
  v683 = [NSArray arrayWithObjects:v1234 count:2];
  v684 = [NSCompoundPredicate andPredicateWithSubpredicates:v683];

  v1113 = v684;
  v685 = [v1143 filteredArrayUsingPredicate:v684];
  v686 = [*(v670 + 1520) numberWithUnsignedInteger:{objc_msgSend(v685, "count")}];
  metrics122 = [(MOMetric *)v669 metrics];
  [metrics122 setObject:v686 forKeyedSubscript:@"Proactive_NumSharedWithYouEvents"];

  objc = v685;
  if ([v685 count])
  {
    v688 = 0;
    v689 = 0;
    v690 = 0;
    v691 = v685;
    while (1)
    {
      v692 = [v691 objectAtIndexedSubscript:v688];
      v693 = [NSDateInterval alloc];
      startDate19 = [v692 startDate];
      endDate64 = [v692 endDate];
      v696 = [v693 initWithStartDate:startDate19 endDate:endDate64];

      v697 = [(MOPromptMetrics *)selfCopy doesInterval:v696 overlapWithAnyIntervalFromArray:v1158];
      creationDate19 = [v692 creationDate];
      if (creationDate19)
      {
        endDate70 = creationDate19;
        startDate20 = [v692 startDate];
        if (!startDate20)
        {
          goto LABEL_264;
        }

        v701 = startDate20;
        endDate65 = [v692 endDate];

        if (endDate65)
        {
          break;
        }
      }

LABEL_265:
      v689 += v697;

      if ([v691 count] <= ++v688)
      {
        v723 = v689;
        v724 = selfCopy;
        v725 = 0x100335000;
        goto LABEL_269;
      }
    }

    if (v688)
    {
      v703 = [v691 objectAtIndexedSubscript:v688 - 1];
      endDate66 = [v703 endDate];

      if (endDate66)
      {
        endDate67 = [v692 endDate];
        v706 = [v691 objectAtIndexedSubscript:v688 - 1];
        endDate68 = [v706 endDate];
        [endDate67 timeIntervalSinceDate:endDate68];
        v708 = [NSNumber numberWithDouble:?];
        [v1148 addObject:v708];

        v691 = objc;
      }
    }

    creationDate20 = [v692 creationDate];
    endDate69 = [v692 endDate];
    [creationDate20 timeIntervalSinceDate:endDate69];
    v712 = v711;

    v713 = [NSNumber numberWithDouble:v712];
    [v1204 addObject:v713];

    if (v690)
    {
      v714 = v690 - 1;
      if ((v690 - 1) > 3)
      {
        ++v690;
        goto LABEL_265;
      }

      v1178 = v697;
      v715 = *(&off_1003404B0 + v714);
      v1151 = *(&off_1003404D0 + v714);
      v1190 = v690 + 1;
    }

    else
    {
      v1178 = v697;
      v1190 = 1;
      v715 = @"Proactive_HourIDSharedWithYouEvent_Start_1";
      v1151 = @"Proactive_HourIDSharedWithYouEvent_End_1";
    }

    startDate21 = [v692 startDate];
    [(NSDate *)v1146 timeIntervalSinceDate:startDate21];
    v717 = [NSNumber numberWithDouble:?];
    v718 = [MOMetric binForNumber:v717 bins:v1147];
    metrics123 = [(MOMetric *)selfCopy metrics];
    [metrics123 setObject:v718 forKeyedSubscript:v715];

    endDate70 = [v692 endDate];
    [(NSDate *)v1146 timeIntervalSinceDate:endDate70];
    v720 = [NSNumber numberWithDouble:?];
    v721 = [MOMetric binForNumber:v720 bins:v1147];
    metrics124 = [(MOMetric *)selfCopy metrics];
    [metrics124 setObject:v721 forKeyedSubscript:v1151];

    v691 = objc;
    v690 = v1190;
    v697 = v1178;
LABEL_264:

    goto LABEL_265;
  }

  v724 = v669;
  v725 = v670;
  v723 = 0.0;
  v691 = v685;
LABEL_269:
  if ([v691 count])
  {
    v726 = [*(v725 + 1520) numberWithDouble:{1.0 - v723 / objc_msgSend(v691, "count")}];
    metrics125 = [(MOMetric *)v724 metrics];
    [metrics125 setObject:v726 forKeyedSubscript:@"Proactive_PercentageOfSharedWithYouEventsNoLOI"];
  }

  if ([v1204 count])
  {
    v728 = [MOPromptMetrics meanOf:v1204];
    metrics126 = [(MOMetric *)v724 metrics];
    [metrics126 setObject:v728 forKeyedSubscript:@"Proactive_SharedWithYouAverageLatency"];

    [v1204 removeAllObjects];
  }

  if ([v1148 count])
  {
    v730 = [MOPromptMetrics meanOf:v1148];
    metrics127 = [(MOMetric *)v724 metrics];
    [metrics127 setObject:v730 forKeyedSubscript:@"Proactive_MeanDeltaBetweenSharedWithYouEvents"];

    v732 = [v1148 valueForKeyPath:@"@min.doubleValue"];
    metrics128 = [(MOMetric *)v724 metrics];
    [metrics128 setObject:v732 forKeyedSubscript:@"Proactive_MinDeltaBetweenSharedWithYouEvents"];

    v734 = [v1148 valueForKeyPath:@"@max.doubleValue"];
    metrics129 = [(MOMetric *)v724 metrics];
    [metrics129 setObject:v734 forKeyedSubscript:@"Proactive_MaxDeltaBetweenSharedWithYouEvents"];

    v736 = [MOPromptMetrics standardDeviationOf:v1148];
    metrics130 = [(MOMetric *)v724 metrics];
    [metrics130 setObject:v736 forKeyedSubscript:@"Proactive_SDDeltaBetweenSharedWithYouEvents"];
  }

  v738 = [v691 count];
  v739 = *(v725 + 1520);
  if (v738)
  {
    firstObject7 = [v691 firstObject];
    endDate71 = [firstObject7 endDate];
    [endDate71 timeIntervalSinceDate:v724->_startDate];
    v742 = [v739 numberWithDouble:?];
    v743 = v1148;
    [v1148 addObject:v742];

    v744 = *(v725 + 1520);
    v745 = v724->_endDate;
    lastObject7 = [v691 lastObject];
    endDate72 = [lastObject7 endDate];
    [(NSDate *)v745 timeIntervalSinceDate:endDate72];
    v748 = [v744 numberWithDouble:?];
    [v1148 addObject:v748];

    v749 = [MOPromptMetrics meanOf:v1148];
    metrics131 = [(MOMetric *)v724 metrics];
    [metrics131 setObject:v749 forKeyedSubscript:@"Proactive_MeanDeltaBetweenSharedWithYouEventsBoundariesIncluded"];

    v751 = [v1148 valueForKeyPath:@"@min.doubleValue"];
    metrics132 = [(MOMetric *)v724 metrics];
    [metrics132 setObject:v751 forKeyedSubscript:@"Proactive_MinDeltaBetweenSharedWithYouEventsBoundariesIncluded"];

    v753 = [v1148 valueForKeyPath:@"@max.doubleValue"];
    metrics133 = [(MOMetric *)v724 metrics];
    [metrics133 setObject:v753 forKeyedSubscript:@"Proactive_MaxDeltaBetweenSharedWithYouEventsBoundariesIncluded"];

    metrics138 = [MOPromptMetrics standardDeviationOf:v1148];
    metrics134 = [(MOMetric *)v724 metrics];
    [metrics134 setObject:metrics138 forKeyedSubscript:@"Proactive_SDDeltaBetweenSharedWithYouEventsBoundariesIncluded"];

    v757 = v724;
    v758 = v725;
  }

  else
  {
    [(NSDate *)v724->_endDate timeIntervalSinceDate:v724->_startDate];
    v759 = [v739 numberWithDouble:?];
    metrics135 = [(MOMetric *)v724 metrics];
    [metrics135 setObject:v759 forKeyedSubscript:@"Proactive_MeanDeltaBetweenSharedWithYouEventsBoundariesIncluded"];

    v761 = *(v725 + 1520);
    [(NSDate *)v724->_endDate timeIntervalSinceDate:v724->_startDate];
    v762 = [v761 numberWithDouble:?];
    metrics136 = [(MOMetric *)v724 metrics];
    [metrics136 setObject:v762 forKeyedSubscript:@"Proactive_MinDeltaBetweenSharedWithYouEventsBoundariesIncluded"];

    v764 = *(v725 + 1520);
    [(NSDate *)v724->_endDate timeIntervalSinceDate:v724->_startDate];
    v765 = [v764 numberWithDouble:?];
    metrics137 = [(MOMetric *)v724 metrics];
    [metrics137 setObject:v765 forKeyedSubscript:@"Proactive_MaxDeltaBetweenSharedWithYouEventsBoundariesIncluded"];

    metrics138 = [(MOMetric *)v724 metrics];
    [metrics138 setObject:&off_10036E7B0 forKeyedSubscript:@"Proactive_SDDeltaBetweenSharedWithYouEventsBoundariesIncluded"];
    v757 = v724;
    v758 = v725;
    v743 = v1148;
  }

  [v743 removeAllObjects];
  v767 = [v1144 objectForKeyedSubscript:@"strProvider"];
  v768 = [NSPredicate predicateWithFormat:@"%K == %i", v767, 3];
  v1233[0] = v768;
  v769 = [v1144 objectForKeyedSubscript:@"strCategory"];
  v770 = [NSPredicate predicateWithFormat:@"%K == %i", v769, 10];
  v1233[1] = v770;
  v771 = [NSArray arrayWithObjects:v1233 count:2];
  v772 = [NSCompoundPredicate andPredicateWithSubpredicates:v771];

  v1112 = v772;
  v773 = [v1143 filteredArrayUsingPredicate:v772];
  v774 = [*(v758 + 1520) numberWithUnsignedInteger:{objc_msgSend(v773, "count")}];
  metrics139 = [(MOMetric *)v757 metrics];
  [metrics139 setObject:v774 forKeyedSubscript:@"Proactive_NumSignificantContactEvents"];

  v1152 = v773;
  if ([v773 count])
  {
    v776 = 0;
    v777 = 0;
    v778 = 0;
    v779 = v773;
    while (1)
    {
      v780 = [v779 objectAtIndexedSubscript:v776];
      v781 = [NSDateInterval alloc];
      startDate22 = [v780 startDate];
      endDate73 = [v780 endDate];
      v784 = [v781 initWithStartDate:startDate22 endDate:endDate73];

      v785 = [(MOPromptMetrics *)selfCopy doesInterval:v784 overlapWithAnyIntervalFromArray:v1158];
      creationDate21 = [v780 creationDate];
      if (creationDate21)
      {
        endDate79 = creationDate21;
        startDate23 = [v780 startDate];
        if (!startDate23)
        {
          goto LABEL_291;
        }

        v789 = startDate23;
        endDate74 = [v780 endDate];

        if (endDate74)
        {
          break;
        }
      }

LABEL_292:
      v777 += v785;

      if ([v779 count] <= ++v776)
      {
        v811 = v777;
        v812 = selfCopy;
        v813 = 0x100335000;
        goto LABEL_296;
      }
    }

    if (v776)
    {
      v791 = [v779 objectAtIndexedSubscript:v776 - 1];
      endDate75 = [v791 endDate];

      if (endDate75)
      {
        endDate76 = [v780 endDate];
        v794 = [v779 objectAtIndexedSubscript:v776 - 1];
        endDate77 = [v794 endDate];
        [endDate76 timeIntervalSinceDate:endDate77];
        v796 = [NSNumber numberWithDouble:?];
        [v1148 addObject:v796];

        v779 = v1152;
      }
    }

    creationDate22 = [v780 creationDate];
    endDate78 = [v780 endDate];
    [creationDate22 timeIntervalSinceDate:endDate78];
    v800 = v799;

    v801 = [NSNumber numberWithDouble:v800];
    [v1204 addObject:v801];

    if (v778)
    {
      v802 = v778 - 1;
      if ((v778 - 1) > 3)
      {
        ++v778;
        goto LABEL_292;
      }

      v1179 = v785;
      v803 = *(&off_1003404F0 + v802);
      v1137 = *(&off_100340510 + v802);
      v1191 = v778 + 1;
    }

    else
    {
      v1179 = v785;
      v1191 = 1;
      v803 = @"Proactive_HourIDSignificantContactEvent_Start_1";
      v1137 = @"Proactive_HourIDSignificantContactEvent_End_1";
    }

    startDate24 = [v780 startDate];
    [(NSDate *)v1146 timeIntervalSinceDate:startDate24];
    v805 = [NSNumber numberWithDouble:?];
    v806 = [MOMetric binForNumber:v805 bins:v1147];
    metrics140 = [(MOMetric *)selfCopy metrics];
    [metrics140 setObject:v806 forKeyedSubscript:v803];

    endDate79 = [v780 endDate];
    [(NSDate *)v1146 timeIntervalSinceDate:endDate79];
    v808 = [NSNumber numberWithDouble:?];
    v809 = [MOMetric binForNumber:v808 bins:v1147];
    metrics141 = [(MOMetric *)selfCopy metrics];
    [metrics141 setObject:v809 forKeyedSubscript:v1137];

    v779 = v1152;
    v778 = v1191;
    v785 = v1179;
LABEL_291:

    goto LABEL_292;
  }

  v812 = v757;
  v813 = v758;
  v811 = 0.0;
  v779 = v773;
LABEL_296:
  if ([v779 count])
  {
    v814 = [*(v813 + 1520) numberWithDouble:{1.0 - v811 / objc_msgSend(v779, "count")}];
    metrics142 = [(MOMetric *)v812 metrics];
    [metrics142 setObject:v814 forKeyedSubscript:@"Proactive_PercentageOfSignificantContactEventsNoLOI"];
  }

  if ([v1204 count])
  {
    v816 = [MOPromptMetrics meanOf:v1204];
    metrics143 = [(MOMetric *)v812 metrics];
    [metrics143 setObject:v816 forKeyedSubscript:@"Proactive_SignificantContactAverageLatency"];

    [v1204 removeAllObjects];
  }

  if ([v1148 count])
  {
    v818 = [MOPromptMetrics meanOf:v1148];
    metrics144 = [(MOMetric *)v812 metrics];
    [metrics144 setObject:v818 forKeyedSubscript:@"Proactive_MeanDeltaBetweenSignificantContactEvents"];

    v820 = [v1148 valueForKeyPath:@"@min.doubleValue"];
    metrics145 = [(MOMetric *)v812 metrics];
    [metrics145 setObject:v820 forKeyedSubscript:@"Proactive_MinDeltaBetweenSignificantContactEvents"];

    v822 = [v1148 valueForKeyPath:@"@max.doubleValue"];
    metrics146 = [(MOMetric *)v812 metrics];
    [metrics146 setObject:v822 forKeyedSubscript:@"Proactive_MaxDeltaBetweenSignificantContactEvents"];

    v824 = [MOPromptMetrics standardDeviationOf:v1148];
    metrics147 = [(MOMetric *)v812 metrics];
    [metrics147 setObject:v824 forKeyedSubscript:@"Proactive_SDDeltaBetweenSignificantContactEvents"];
  }

  v826 = [v779 count];
  v827 = *(v813 + 1520);
  if (v826)
  {
    firstObject8 = [v779 firstObject];
    endDate80 = [firstObject8 endDate];
    [endDate80 timeIntervalSinceDate:v812->_startDate];
    v830 = [v827 numberWithDouble:?];
    v831 = v1148;
    [v1148 addObject:v830];

    v832 = *(v813 + 1520);
    v833 = v812->_endDate;
    lastObject8 = [v779 lastObject];
    endDate81 = [lastObject8 endDate];
    [(NSDate *)v833 timeIntervalSinceDate:endDate81];
    v836 = [v832 numberWithDouble:?];
    [v1148 addObject:v836];

    v837 = [MOPromptMetrics meanOf:v1148];
    metrics148 = [(MOMetric *)v812 metrics];
    [metrics148 setObject:v837 forKeyedSubscript:@"Proactive_MeanDeltaBetweenSignificantContactEventsBoundariesIncluded"];

    v839 = [v1148 valueForKeyPath:@"@min.doubleValue"];
    metrics149 = [(MOMetric *)v812 metrics];
    [metrics149 setObject:v839 forKeyedSubscript:@"Proactive_MinDeltaBetweenSignificantContactEventsBoundariesIncluded"];

    v841 = [v1148 valueForKeyPath:@"@max.doubleValue"];
    metrics150 = [(MOMetric *)v812 metrics];
    [metrics150 setObject:v841 forKeyedSubscript:@"Proactive_MaxDeltaBetweenSignificantContactEventsBoundariesIncluded"];

    metrics155 = [MOPromptMetrics standardDeviationOf:v1148];
    metrics151 = [(MOMetric *)v812 metrics];
    [metrics151 setObject:metrics155 forKeyedSubscript:@"Proactive_SDDeltaBetweenSignificantContactEventsBoundariesIncluded"];

    v845 = v812;
    v846 = v813;
  }

  else
  {
    [(NSDate *)v812->_endDate timeIntervalSinceDate:v812->_startDate];
    v847 = [v827 numberWithDouble:?];
    metrics152 = [(MOMetric *)v812 metrics];
    [metrics152 setObject:v847 forKeyedSubscript:@"Proactive_MeanDeltaBetweenSignificantContactEventsBoundariesIncluded"];

    v849 = *(v813 + 1520);
    [(NSDate *)v812->_endDate timeIntervalSinceDate:v812->_startDate];
    v850 = [v849 numberWithDouble:?];
    metrics153 = [(MOMetric *)v812 metrics];
    [metrics153 setObject:v850 forKeyedSubscript:@"Proactive_MinDeltaBetweenSignificantContactEventsBoundariesIncluded"];

    v852 = *(v813 + 1520);
    [(NSDate *)v812->_endDate timeIntervalSinceDate:v812->_startDate];
    v853 = [v852 numberWithDouble:?];
    metrics154 = [(MOMetric *)v812 metrics];
    [metrics154 setObject:v853 forKeyedSubscript:@"Proactive_MaxDeltaBetweenSignificantContactEventsBoundariesIncluded"];

    metrics155 = [(MOMetric *)v812 metrics];
    [metrics155 setObject:&off_10036E7B0 forKeyedSubscript:@"Proactive_SDDeltaBetweenSignificantContactEventsBoundariesIncluded"];
    v845 = v812;
    v846 = v813;
    v831 = v1148;
  }

  [v831 removeAllObjects];
  v855 = [v1144 objectForKeyedSubscript:@"strProvider"];
  v856 = [NSPredicate predicateWithFormat:@"%K == %i", v855, 3];
  v1232[0] = v856;
  v857 = [v1144 objectForKeyedSubscript:@"strCategory"];
  v858 = [NSPredicate predicateWithFormat:@"%K == %i", v857, 11];
  v1232[1] = v858;
  v859 = [NSArray arrayWithObjects:v1232 count:2];
  v860 = [NSCompoundPredicate andPredicateWithSubpredicates:v859];

  v1111 = v860;
  v861 = [v1143 filteredArrayUsingPredicate:v860];
  v862 = [*(v846 + 1520) numberWithUnsignedInteger:{objc_msgSend(v861, "count")}];
  metrics156 = [(MOMetric *)v845 metrics];
  [metrics156 setObject:v862 forKeyedSubscript:@"Proactive_NumStructuredEvents"];

  v1138 = v861;
  if ([v861 count])
  {
    v864 = 0;
    v865 = 0;
    v866 = 0;
    v867 = v861;
    while (1)
    {
      v868 = [v867 objectAtIndexedSubscript:v864];
      v869 = [NSDateInterval alloc];
      startDate25 = [v868 startDate];
      endDate82 = [v868 endDate];
      v872 = [v869 initWithStartDate:startDate25 endDate:endDate82];

      v873 = [(MOPromptMetrics *)selfCopy doesInterval:v872 overlapWithAnyIntervalFromArray:v1158];
      creationDate23 = [v868 creationDate];
      if (creationDate23)
      {
        endDate88 = creationDate23;
        startDate26 = [v868 startDate];
        if (!startDate26)
        {
          goto LABEL_318;
        }

        v877 = startDate26;
        endDate83 = [v868 endDate];

        if (endDate83)
        {
          break;
        }
      }

LABEL_319:
      v865 += v873;

      if ([v867 count] <= ++v864)
      {
        v899 = v865;
        v900 = selfCopy;
        v901 = 0x100335000;
        goto LABEL_323;
      }
    }

    if (v864)
    {
      v879 = [v867 objectAtIndexedSubscript:v864 - 1];
      endDate84 = [v879 endDate];

      if (endDate84)
      {
        endDate85 = [v868 endDate];
        v882 = [v867 objectAtIndexedSubscript:v864 - 1];
        endDate86 = [v882 endDate];
        [endDate85 timeIntervalSinceDate:endDate86];
        v884 = [NSNumber numberWithDouble:?];
        [v1148 addObject:v884];

        v867 = v1138;
      }
    }

    creationDate24 = [v868 creationDate];
    endDate87 = [v868 endDate];
    [creationDate24 timeIntervalSinceDate:endDate87];
    v888 = v887;

    v889 = [NSNumber numberWithDouble:v888];
    [v1204 addObject:v889];

    if (v866)
    {
      v890 = v866 - 1;
      if ((v866 - 1) > 3)
      {
        ++v866;
        goto LABEL_319;
      }

      v1180 = v873;
      v891 = *(&off_100340530 + v890);
      v1135 = *(&off_100340550 + v890);
      v1192 = v866 + 1;
    }

    else
    {
      v1180 = v873;
      v1192 = 1;
      v891 = @"Proactive_HourIDStructuredEvent_Start_1";
      v1135 = @"Proactive_HourIDStructuredEvent_End_1";
    }

    startDate27 = [v868 startDate];
    [(NSDate *)v1146 timeIntervalSinceDate:startDate27];
    v893 = [NSNumber numberWithDouble:?];
    v894 = [MOMetric binForNumber:v893 bins:v1147];
    metrics157 = [(MOMetric *)selfCopy metrics];
    [metrics157 setObject:v894 forKeyedSubscript:v891];

    endDate88 = [v868 endDate];
    [(NSDate *)v1146 timeIntervalSinceDate:endDate88];
    v896 = [NSNumber numberWithDouble:?];
    v897 = [MOMetric binForNumber:v896 bins:v1147];
    metrics158 = [(MOMetric *)selfCopy metrics];
    [metrics158 setObject:v897 forKeyedSubscript:v1135];

    v867 = v1138;
    v866 = v1192;
    v873 = v1180;
LABEL_318:

    goto LABEL_319;
  }

  v900 = v845;
  v901 = v846;
  v899 = 0.0;
  v867 = v861;
LABEL_323:
  if ([v867 count])
  {
    v902 = [*(v901 + 1520) numberWithDouble:{1.0 - v899 / objc_msgSend(v867, "count")}];
    metrics159 = [(MOMetric *)v900 metrics];
    [metrics159 setObject:v902 forKeyedSubscript:@"Proactive_PercentageOfStructuredEventsNoLOI"];
  }

  if ([v1204 count])
  {
    v904 = [MOPromptMetrics meanOf:v1204];
    metrics160 = [(MOMetric *)v900 metrics];
    [metrics160 setObject:v904 forKeyedSubscript:@"Proactive_StructuredEventsAverageLatency"];

    [v1204 removeAllObjects];
  }

  if ([v1148 count])
  {
    v906 = [MOPromptMetrics meanOf:v1148];
    metrics161 = [(MOMetric *)v900 metrics];
    [metrics161 setObject:v906 forKeyedSubscript:@"Proactive_MeanDeltaBetweenStructuredEvents"];

    v908 = [v1148 valueForKeyPath:@"@min.doubleValue"];
    metrics162 = [(MOMetric *)v900 metrics];
    [metrics162 setObject:v908 forKeyedSubscript:@"Proactive_MinDeltaBetweenStructuredEvents"];

    v910 = [v1148 valueForKeyPath:@"@max.doubleValue"];
    metrics163 = [(MOMetric *)v900 metrics];
    [metrics163 setObject:v910 forKeyedSubscript:@"Proactive_MaxDeltaBetweenStructuredEvents"];

    v912 = [MOPromptMetrics standardDeviationOf:v1148];
    metrics164 = [(MOMetric *)v900 metrics];
    [metrics164 setObject:v912 forKeyedSubscript:@"Proactive_SDDeltaBetweenStructuredEvents"];
  }

  v914 = [v867 count];
  v915 = *(v901 + 1520);
  if (v914)
  {
    firstObject9 = [v867 firstObject];
    endDate89 = [firstObject9 endDate];
    [endDate89 timeIntervalSinceDate:v900->_startDate];
    v918 = [v915 numberWithDouble:?];
    v919 = v1148;
    [v1148 addObject:v918];

    v920 = *(v901 + 1520);
    v921 = v900->_endDate;
    lastObject9 = [v867 lastObject];
    endDate90 = [lastObject9 endDate];
    [(NSDate *)v921 timeIntervalSinceDate:endDate90];
    v924 = [v920 numberWithDouble:?];
    [v1148 addObject:v924];

    v925 = [MOPromptMetrics meanOf:v1148];
    metrics165 = [(MOMetric *)v900 metrics];
    [metrics165 setObject:v925 forKeyedSubscript:@"Proactive_MeanDeltaBetweenStructuredEventsBoundariesIncluded"];

    v927 = [v1148 valueForKeyPath:@"@min.doubleValue"];
    metrics166 = [(MOMetric *)v900 metrics];
    [metrics166 setObject:v927 forKeyedSubscript:@"Proactive_MinDeltaBetweenStructuredEventsBoundariesIncluded"];

    v929 = [v1148 valueForKeyPath:@"@max.doubleValue"];
    metrics167 = [(MOMetric *)v900 metrics];
    [metrics167 setObject:v929 forKeyedSubscript:@"Proactive_MaxDeltaBetweenStructuredEventsBoundariesIncluded"];

    metrics172 = [MOPromptMetrics standardDeviationOf:v1148];
    metrics168 = [(MOMetric *)v900 metrics];
    [metrics168 setObject:metrics172 forKeyedSubscript:@"Proactive_SDDeltaBetweenStructuredEventsBoundariesIncluded"];

    v933 = v900;
    v934 = v901;
  }

  else
  {
    [(NSDate *)v900->_endDate timeIntervalSinceDate:v900->_startDate];
    v935 = [v915 numberWithDouble:?];
    metrics169 = [(MOMetric *)v900 metrics];
    [metrics169 setObject:v935 forKeyedSubscript:@"Proactive_MeanDeltaBetweenStructuredEventsBoundariesIncluded"];

    v937 = *(v901 + 1520);
    [(NSDate *)v900->_endDate timeIntervalSinceDate:v900->_startDate];
    v938 = [v937 numberWithDouble:?];
    metrics170 = [(MOMetric *)v900 metrics];
    [metrics170 setObject:v938 forKeyedSubscript:@"Proactive_MinDeltaBetweenStructuredEventsBoundariesIncluded"];

    v940 = *(v901 + 1520);
    [(NSDate *)v900->_endDate timeIntervalSinceDate:v900->_startDate];
    v941 = [v940 numberWithDouble:?];
    metrics171 = [(MOMetric *)v900 metrics];
    [metrics171 setObject:v941 forKeyedSubscript:@"Proactive_MaxDeltaBetweenStructuredEventsBoundariesIncluded"];

    metrics172 = [(MOMetric *)v900 metrics];
    [metrics172 setObject:&off_10036E7B0 forKeyedSubscript:@"Proactive_SDDeltaBetweenStructuredEventsBoundariesIncluded"];
    v933 = v900;
    v934 = v901;
    v919 = v1148;
  }

  [v919 removeAllObjects];
  v943 = [v1144 objectForKeyedSubscript:@"strProvider"];
  v944 = [NSPredicate predicateWithFormat:@"%K == %i", v943, 3];
  v1231[0] = v944;
  v945 = [v1144 objectForKeyedSubscript:@"strCategory"];
  v946 = [NSPredicate predicateWithFormat:@"%K == %i", v945, 4];
  v1231[1] = v946;
  v947 = [NSArray arrayWithObjects:v1231 count:2];
  v948 = [NSCompoundPredicate andPredicateWithSubpredicates:v947];

  v1110 = v948;
  v949 = [v1143 filteredArrayUsingPredicate:v948];
  v950 = [*(v934 + 1520) numberWithUnsignedInteger:{objc_msgSend(v949, "count")}];
  metrics173 = [(MOMetric *)v933 metrics];
  [metrics173 setObject:v950 forKeyedSubscript:@"Proactive_NumLeisureMediaEvents"];

  v1136 = v949;
  if ([v949 count])
  {
    v952 = 0;
    v953 = 0;
    v954 = 0;
    v955 = v949;
    while (1)
    {
      v956 = [v955 objectAtIndexedSubscript:v952];
      v957 = [NSDateInterval alloc];
      startDate28 = [v956 startDate];
      endDate91 = [v956 endDate];
      v960 = [v957 initWithStartDate:startDate28 endDate:endDate91];

      v961 = [(MOPromptMetrics *)selfCopy doesInterval:v960 overlapWithAnyIntervalFromArray:v1158];
      creationDate25 = [v956 creationDate];
      if (creationDate25)
      {
        endDate97 = creationDate25;
        startDate29 = [v956 startDate];
        if (!startDate29)
        {
          goto LABEL_345;
        }

        v965 = startDate29;
        endDate92 = [v956 endDate];

        if (endDate92)
        {
          break;
        }
      }

LABEL_346:
      v953 += v961;

      if ([v955 count] <= ++v952)
      {
        v987 = v953;
        v988 = selfCopy;
        v989 = 0x100335000;
        goto LABEL_350;
      }
    }

    if (v952)
    {
      v967 = [v955 objectAtIndexedSubscript:v952 - 1];
      endDate93 = [v967 endDate];

      if (endDate93)
      {
        endDate94 = [v956 endDate];
        v970 = [v955 objectAtIndexedSubscript:v952 - 1];
        endDate95 = [v970 endDate];
        [endDate94 timeIntervalSinceDate:endDate95];
        v972 = [NSNumber numberWithDouble:?];
        [v1148 addObject:v972];

        v955 = v1136;
      }
    }

    creationDate26 = [v956 creationDate];
    endDate96 = [v956 endDate];
    [creationDate26 timeIntervalSinceDate:endDate96];
    v976 = v975;

    v977 = [NSNumber numberWithDouble:v976];
    [v1204 addObject:v977];

    if (v954)
    {
      v978 = v954 - 1;
      if ((v954 - 1) > 3)
      {
        ++v954;
        goto LABEL_346;
      }

      v1181 = v961;
      v979 = *(&off_100340570 + v978);
      v1131 = *(&off_100340590 + v978);
      v1193 = v954 + 1;
    }

    else
    {
      v1181 = v961;
      v1193 = 1;
      v979 = @"Proactive_HourIDLeisureMediaEvent_Start_1";
      v1131 = @"Proactive_HourIDLeisureMediaEvent_End_1";
    }

    startDate30 = [v956 startDate];
    [(NSDate *)v1146 timeIntervalSinceDate:startDate30];
    v981 = [NSNumber numberWithDouble:?];
    v982 = [MOMetric binForNumber:v981 bins:v1147];
    metrics174 = [(MOMetric *)selfCopy metrics];
    [metrics174 setObject:v982 forKeyedSubscript:v979];

    endDate97 = [v956 endDate];
    [(NSDate *)v1146 timeIntervalSinceDate:endDate97];
    v984 = [NSNumber numberWithDouble:?];
    v985 = [MOMetric binForNumber:v984 bins:v1147];
    metrics175 = [(MOMetric *)selfCopy metrics];
    [metrics175 setObject:v985 forKeyedSubscript:v1131];

    v955 = v1136;
    v954 = v1193;
    v961 = v1181;
LABEL_345:

    goto LABEL_346;
  }

  v988 = v933;
  v989 = v934;
  v987 = 0.0;
  v955 = v949;
LABEL_350:
  if ([v955 count])
  {
    v990 = [*(v989 + 1520) numberWithDouble:{1.0 - v987 / objc_msgSend(v955, "count")}];
    metrics176 = [(MOMetric *)v988 metrics];
    [metrics176 setObject:v990 forKeyedSubscript:@"Proactive_PercentageOfLeisureMediaEventsNoLOI"];
  }

  if ([v1204 count])
  {
    v992 = [MOPromptMetrics meanOf:v1204];
    metrics177 = [(MOMetric *)v988 metrics];
    [metrics177 setObject:v992 forKeyedSubscript:@"Proactive_LeisureMediaEventsAverageLatency"];

    [v1204 removeAllObjects];
  }

  if ([v1148 count])
  {
    v994 = [MOPromptMetrics meanOf:v1148];
    metrics178 = [(MOMetric *)v988 metrics];
    [metrics178 setObject:v994 forKeyedSubscript:@"Proactive_MeanDeltaBetweenLeisureMediaEvents"];

    v996 = [v1148 valueForKeyPath:@"@min.doubleValue"];
    metrics179 = [(MOMetric *)v988 metrics];
    [metrics179 setObject:v996 forKeyedSubscript:@"Proactive_MinDeltaBetweenLeisureMediaEvents"];

    v998 = [v1148 valueForKeyPath:@"@max.doubleValue"];
    metrics180 = [(MOMetric *)v988 metrics];
    [metrics180 setObject:v998 forKeyedSubscript:@"Proactive_MaxDeltaBetweenLeisureMediaEvents"];

    v1000 = [MOPromptMetrics standardDeviationOf:v1148];
    metrics181 = [(MOMetric *)v988 metrics];
    [metrics181 setObject:v1000 forKeyedSubscript:@"Proactive_SDDeltaBetweenLeisureMediaEvents"];
  }

  v1002 = [v955 count];
  v1003 = *(v989 + 1520);
  if (v1002)
  {
    firstObject10 = [v955 firstObject];
    endDate98 = [firstObject10 endDate];
    [endDate98 timeIntervalSinceDate:v988->_startDate];
    v1006 = [v1003 numberWithDouble:?];
    v1007 = v1148;
    [v1148 addObject:v1006];

    v1008 = *(v989 + 1520);
    v1009 = v988->_endDate;
    lastObject10 = [v955 lastObject];
    endDate99 = [lastObject10 endDate];
    [(NSDate *)v1009 timeIntervalSinceDate:endDate99];
    v1012 = [v1008 numberWithDouble:?];
    [v1148 addObject:v1012];

    v1013 = [MOPromptMetrics meanOf:v1148];
    metrics182 = [(MOMetric *)v988 metrics];
    [metrics182 setObject:v1013 forKeyedSubscript:@"Proactive_MeanDeltaBetweenLeisureMediaEventsBoundariesIncluded"];

    v1015 = [v1148 valueForKeyPath:@"@min.doubleValue"];
    metrics183 = [(MOMetric *)v988 metrics];
    [metrics183 setObject:v1015 forKeyedSubscript:@"Proactive_MinDeltaBetweenLeisureMediaEventsBoundariesIncluded"];

    v1017 = [v1148 valueForKeyPath:@"@max.doubleValue"];
    metrics184 = [(MOMetric *)v988 metrics];
    [metrics184 setObject:v1017 forKeyedSubscript:@"Proactive_MaxDeltaBetweenLeisureMediaEventsBoundariesIncluded"];

    metrics189 = [MOPromptMetrics standardDeviationOf:v1148];
    metrics185 = [(MOMetric *)v988 metrics];
    [metrics185 setObject:metrics189 forKeyedSubscript:@"Proactive_SDDeltaBetweenLeisureMediaEventsBoundariesIncluded"];

    v1021 = v988;
    v1022 = v989;
  }

  else
  {
    [(NSDate *)v988->_endDate timeIntervalSinceDate:v988->_startDate];
    v1023 = [v1003 numberWithDouble:?];
    metrics186 = [(MOMetric *)v988 metrics];
    [metrics186 setObject:v1023 forKeyedSubscript:@"Proactive_MeanDeltaBetweenLeisureMediaEventsBoundariesIncluded"];

    v1025 = *(v989 + 1520);
    [(NSDate *)v988->_endDate timeIntervalSinceDate:v988->_startDate];
    v1026 = [v1025 numberWithDouble:?];
    metrics187 = [(MOMetric *)v988 metrics];
    [metrics187 setObject:v1026 forKeyedSubscript:@"Proactive_MinDeltaBetweenLeisureMediaEventsBoundariesIncluded"];

    v1028 = *(v989 + 1520);
    [(NSDate *)v988->_endDate timeIntervalSinceDate:v988->_startDate];
    v1029 = [v1028 numberWithDouble:?];
    metrics188 = [(MOMetric *)v988 metrics];
    [metrics188 setObject:v1029 forKeyedSubscript:@"Proactive_MaxDeltaBetweenLeisureMediaEventsBoundariesIncluded"];

    metrics189 = [(MOMetric *)v988 metrics];
    [metrics189 setObject:&off_10036E7B0 forKeyedSubscript:@"Proactive_SDDeltaBetweenLeisureMediaEventsBoundariesIncluded"];
    v1021 = v988;
    v1022 = v989;
    v1007 = v1148;
  }

  [v1007 removeAllObjects];
  v1031 = [v1144 objectForKeyedSubscript:@"strProvider"];
  v1032 = [NSPredicate predicateWithFormat:@"%K == %i", v1031, 3];
  v1230[0] = v1032;
  v1033 = [v1144 objectForKeyedSubscript:@"strCategory"];
  v1034 = [NSPredicate predicateWithFormat:@"%K == %i", v1033, 12];
  v1230[1] = v1034;
  v1035 = [NSArray arrayWithObjects:v1230 count:2];
  v1036 = [NSCompoundPredicate andPredicateWithSubpredicates:v1035];

  v1037 = [v1143 filteredArrayUsingPredicate:v1036];
  v1038 = [*(v1022 + 1520) numberWithUnsignedInteger:{objc_msgSend(v1037, "count")}];
  metrics190 = [(MOMetric *)v1021 metrics];
  [metrics190 setObject:v1038 forKeyedSubscript:@"Proactive_NumNLEvents"];

  v1194 = v1037;
  v1040 = v1021;
  if ([v1037 count])
  {
    v1132 = v1036;
    v1041 = 0;
    v1042 = 0;
    v1182 = 0;
    v1043 = v1037;
    while (1)
    {
      v1044 = [v1043 objectAtIndexedSubscript:v1041];
      v1045 = [NSDateInterval alloc];
      startDate31 = [v1044 startDate];
      endDate100 = [v1044 endDate];
      v1048 = [v1045 initWithStartDate:startDate31 endDate:endDate100];

      v1049 = [(MOPromptMetrics *)v1040 doesInterval:v1048 overlapWithAnyIntervalFromArray:v1158];
      creationDate27 = [v1044 creationDate];
      if (creationDate27)
      {
        endDate106 = creationDate27;
        startDate32 = [v1044 startDate];
        if (!startDate32)
        {
          goto LABEL_372;
        }

        v1053 = startDate32;
        endDate101 = [v1044 endDate];

        if (endDate101)
        {
          break;
        }
      }

LABEL_373:
      v1042 += v1049;

      if ([v1043 count] <= ++v1041)
      {
        v1075 = v1042;
        v1036 = v1132;
        goto LABEL_377;
      }
    }

    if (v1041)
    {
      v1055 = [v1194 objectAtIndexedSubscript:v1041 - 1];
      endDate102 = [v1055 endDate];

      if (endDate102)
      {
        endDate103 = [v1044 endDate];
        v1058 = [v1194 objectAtIndexedSubscript:v1041 - 1];
        endDate104 = [v1058 endDate];
        [endDate103 timeIntervalSinceDate:endDate104];
        v1060 = [NSNumber numberWithDouble:?];
        [v1148 addObject:v1060];
      }
    }

    creationDate28 = [v1044 creationDate];
    endDate105 = [v1044 endDate];
    [creationDate28 timeIntervalSinceDate:endDate105];
    v1064 = v1063;

    v1065 = [NSNumber numberWithDouble:v1064];
    [v1204 addObject:v1065];

    if (v1182)
    {
      v1066 = v1182 - 1;
      if ((v1182 - 1) > 3)
      {
        ++v1182;
        v1043 = v1194;
        goto LABEL_373;
      }

      v1142 = v1049;
      v1067 = *(&off_1003405B0 + v1066);
      v1141 = *(&off_1003405D0 + v1066);
      ++v1182;
    }

    else
    {
      v1142 = v1049;
      v1182 = 1;
      v1067 = @"Proactive_HourIDNLEvent_Start_1";
      v1141 = @"Proactive_HourIDNLEvent_End_1";
    }

    startDate33 = [v1044 startDate];
    [(NSDate *)v1146 timeIntervalSinceDate:startDate33];
    v1069 = [NSNumber numberWithDouble:?];
    v1070 = [MOMetric binForNumber:v1069 bins:v1147];
    metrics191 = [(MOMetric *)selfCopy metrics];
    [metrics191 setObject:v1070 forKeyedSubscript:v1067];

    endDate106 = [v1044 endDate];
    [(NSDate *)v1146 timeIntervalSinceDate:endDate106];
    v1072 = [NSNumber numberWithDouble:?];
    v1073 = [MOMetric binForNumber:v1072 bins:v1147];
    metrics192 = [(MOMetric *)selfCopy metrics];
    [metrics192 setObject:v1073 forKeyedSubscript:v1141];

    v1040 = selfCopy;
    v1043 = v1194;
    v1049 = v1142;
LABEL_372:

    goto LABEL_373;
  }

  v1075 = 0.0;
  v1043 = v1037;
LABEL_377:
  if ([v1043 count])
  {
    v1076 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", 1.0 - v1075 / [v1043 count]);
    metrics193 = [(MOMetric *)v1040 metrics];
    [metrics193 setObject:v1076 forKeyedSubscript:@"Proactive_PercentageOfNLEventsNoLOI"];
  }

  if ([v1204 count])
  {
    v1078 = [MOPromptMetrics meanOf:v1204];
    metrics194 = [(MOMetric *)v1040 metrics];
    [metrics194 setObject:v1078 forKeyedSubscript:@"Proactive_NLEventsAverageLatency"];

    [v1204 removeAllObjects];
  }

  if ([v1148 count])
  {
    v1080 = [MOPromptMetrics meanOf:v1148];
    metrics195 = [(MOMetric *)v1040 metrics];
    [metrics195 setObject:v1080 forKeyedSubscript:@"Proactive_MeanDeltaBetweenNLEvents"];

    v1082 = [v1148 valueForKeyPath:@"@min.doubleValue"];
    metrics196 = [(MOMetric *)v1040 metrics];
    [metrics196 setObject:v1082 forKeyedSubscript:@"Proactive_MinDeltaBetweenNLEvents"];

    v1084 = [v1148 valueForKeyPath:@"@max.doubleValue"];
    metrics197 = [(MOMetric *)v1040 metrics];
    [metrics197 setObject:v1084 forKeyedSubscript:@"Proactive_MaxDeltaBetweenNLEvents"];

    v1086 = [MOPromptMetrics standardDeviationOf:v1148];
    metrics198 = [(MOMetric *)v1040 metrics];
    [metrics198 setObject:v1086 forKeyedSubscript:@"Proactive_SDDeltaBetweenNLEvents"];
  }

  if ([v1194 count])
  {
    firstObject11 = [v1194 firstObject];
    endDate107 = [firstObject11 endDate];
    [endDate107 timeIntervalSinceDate:v1040->_startDate];
    v1090 = [NSNumber numberWithDouble:?];
    v1091 = v1148;
    [v1148 addObject:v1090];

    v1092 = v1040->_endDate;
    lastObject11 = [v1194 lastObject];
    endDate108 = [lastObject11 endDate];
    [(NSDate *)v1092 timeIntervalSinceDate:endDate108];
    v1095 = [NSNumber numberWithDouble:?];
    [v1148 addObject:v1095];

    v1096 = [MOPromptMetrics meanOf:v1148];
    metrics199 = [(MOMetric *)v1040 metrics];
    [metrics199 setObject:v1096 forKeyedSubscript:@"Proactive_MeanDeltaBetweenNLEventsBoundariesIncluded"];

    v1098 = [v1148 valueForKeyPath:@"@min.doubleValue"];
    metrics200 = [(MOMetric *)v1040 metrics];
    [metrics200 setObject:v1098 forKeyedSubscript:@"Proactive_MinDeltaBetweenNLEventsBoundariesIncluded"];

    v1100 = [v1148 valueForKeyPath:@"@max.doubleValue"];
    metrics201 = [(MOMetric *)v1040 metrics];
    [metrics201 setObject:v1100 forKeyedSubscript:@"Proactive_MaxDeltaBetweenNLEventsBoundariesIncluded"];

    metrics206 = [MOPromptMetrics standardDeviationOf:v1148];
    metrics202 = [(MOMetric *)v1040 metrics];
    [metrics202 setObject:metrics206 forKeyedSubscript:@"Proactive_SDDeltaBetweenNLEventsBoundariesIncluded"];
  }

  else
  {
    [(NSDate *)v1040->_endDate timeIntervalSinceDate:v1040->_startDate];
    v1104 = [NSNumber numberWithDouble:?];
    metrics203 = [(MOMetric *)v1040 metrics];
    [metrics203 setObject:v1104 forKeyedSubscript:@"Proactive_MeanDeltaBetweenNLEventsBoundariesIncluded"];

    [(NSDate *)v1040->_endDate timeIntervalSinceDate:v1040->_startDate];
    v1106 = [NSNumber numberWithDouble:?];
    metrics204 = [(MOMetric *)v1040 metrics];
    [metrics204 setObject:v1106 forKeyedSubscript:@"Proactive_MinDeltaBetweenNLEventsBoundariesIncluded"];

    [(NSDate *)v1040->_endDate timeIntervalSinceDate:v1040->_startDate];
    v1108 = [NSNumber numberWithDouble:?];
    metrics205 = [(MOMetric *)v1040 metrics];
    [metrics205 setObject:v1108 forKeyedSubscript:@"Proactive_MaxDeltaBetweenNLEventsBoundariesIncluded"];

    metrics206 = [(MOMetric *)v1040 metrics];
    [metrics206 setObject:&off_10036E7B0 forKeyedSubscript:@"Proactive_SDDeltaBetweenNLEventsBoundariesIncluded"];
    v1091 = v1148;
  }

  [v1091 removeAllObjects];
}

- (void)calculateAndSetMetricsForCorrelatedEvents:(id)events
{
  eventsCopy = events;
  metrics = [(MOMetric *)self metrics];
  [metrics setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundles"];

  metrics2 = [(MOMetric *)self metrics];
  [metrics2 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_0_routineEvent_0_proactiveEvent_0"];

  metrics3 = [(MOMetric *)self metrics];
  [metrics3 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_0_routineEvent_0_proactiveEvent_1"];

  metrics4 = [(MOMetric *)self metrics];
  [metrics4 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_0_routineEvent_1_proactiveEvent_0"];

  metrics5 = [(MOMetric *)self metrics];
  [metrics5 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_0_routineEvent_1_proactiveEvent_1"];

  metrics6 = [(MOMetric *)self metrics];
  [metrics6 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_1_routineEvent_0_proactiveEvent_0"];

  metrics7 = [(MOMetric *)self metrics];
  [metrics7 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_1_routineEvent_0_proactiveEvent_1"];

  metrics8 = [(MOMetric *)self metrics];
  [metrics8 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_1_routineEvent_1_proactiveEvent_0"];

  metrics9 = [(MOMetric *)self metrics];
  [metrics9 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_1_routineEvent_1_proactiveEvent_1"];

  metrics10 = [(MOMetric *)self metrics];
  [metrics10 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_0_routineEvent_0_proactiveEvent_0"];

  metrics11 = [(MOMetric *)self metrics];
  [metrics11 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_0_routineEvent_0_proactiveEvent_1"];

  metrics12 = [(MOMetric *)self metrics];
  [metrics12 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_0_routineEvent_1_proactiveEvent_0"];

  metrics13 = [(MOMetric *)self metrics];
  [metrics13 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_0_routineEvent_1_proactiveEvent_1"];

  metrics14 = [(MOMetric *)self metrics];
  [metrics14 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_1_routineEvent_0_proactiveEvent_0"];

  metrics15 = [(MOMetric *)self metrics];
  [metrics15 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_1_routineEvent_0_proactiveEvent_1"];

  metrics16 = [(MOMetric *)self metrics];
  [metrics16 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_1_routineEvent_1_proactiveEvent_0"];

  selfCopy = self;
  metrics17 = [(MOMetric *)self metrics];
  [metrics17 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_1_routineEvent_1_proactiveEvent_1"];

  if (eventsCopy && [eventsCopy count])
  {
    v79 = eventsCopy;
    v22 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [eventsCopy count]);
    metrics18 = [(MOMetric *)self metrics];
    [metrics18 setObject:v22 forKeyedSubscript:@"numPreBundles"];

    v24 = +[MOEventBundler propertyNameDictionary];
    v25 = [v24 objectForKeyedSubscript:@"strProvider"];
    v26 = [NSPredicate predicateWithFormat:@"%K == %i", v25, 1];
    v104[0] = v26;
    v27 = [v24 objectForKeyedSubscript:@"strCategory"];
    v28 = [NSPredicate predicateWithFormat:@"%K == %i", v27, 2];
    v104[1] = v28;
    v29 = [NSArray arrayWithObjects:v104 count:2];
    v78 = [NSCompoundPredicate andPredicateWithSubpredicates:v29];

    v30 = [v24 objectForKeyedSubscript:@"strProvider"];
    v31 = [NSPredicate predicateWithFormat:@"%K == %i", v30, 2];
    v103[0] = v31;
    v32 = [v24 objectForKeyedSubscript:@"strCategory"];
    v33 = [NSPredicate predicateWithFormat:@"%K == %i", v32, 5];
    v103[1] = v33;
    v34 = [NSArray arrayWithObjects:v103 count:2];
    v35 = [NSCompoundPredicate andPredicateWithSubpredicates:v34];

    v36 = [v24 objectForKeyedSubscript:@"strProvider"];
    v37 = [NSPredicate predicateWithFormat:@"%K == %i", v36, 4];
    v102[0] = v37;
    v38 = [v24 objectForKeyedSubscript:@"strCategory"];
    v39 = [NSPredicate predicateWithFormat:@"%K == %i", v38, 1];
    v102[1] = v39;
    v40 = [NSArray arrayWithObjects:v102 count:2];
    v41 = [NSCompoundPredicate andPredicateWithSubpredicates:v40];

    v77 = v24;
    v42 = [v24 objectForKeyedSubscript:@"strProvider"];
    v43 = [NSPredicate predicateWithFormat:@"%K == %i", v42, 3];
    v101 = v43;
    v44 = [NSArray arrayWithObjects:&v101 count:1];
    v45 = [NSCompoundPredicate andPredicateWithSubpredicates:v44];

    v99[0] = &off_10036C298;
    v99[1] = &off_10036C2B0;
    v100[0] = v78;
    v100[1] = v35;
    v75 = v41;
    v76 = v35;
    v99[2] = &off_10036C2C8;
    v99[3] = &off_10036C2E0;
    v100[2] = v41;
    v100[3] = v45;
    v74 = v45;
    v81 = [NSDictionary dictionaryWithObjects:v100 forKeys:v99 count:4];
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    obj = v79;
    v83 = [obj countByEnumeratingWithState:&v93 objects:v98 count:16];
    v46 = 0;
    if (v83)
    {
      v80 = *v94;
      do
      {
        v47 = 0;
        do
        {
          v86 = v46;
          if (*v94 != v80)
          {
            objc_enumerationMutation(obj);
          }

          v85 = v47;
          v48 = [obj objectForKeyedSubscript:*(*(&v93 + 1) + 8 * v47)];
          v89 = 0u;
          v90 = 0u;
          v91 = 0u;
          v92 = 0u;
          v49 = v81;
          v50 = [v49 countByEnumeratingWithState:&v89 objects:v97 count:16];
          if (v50)
          {
            v51 = v50;
            v88 = 0;
            v87 = 0;
            v52 = 0;
            v53 = *v90;
            do
            {
              for (i = 0; i != v51; i = i + 1)
              {
                if (*v90 != v53)
                {
                  objc_enumerationMutation(v49);
                }

                v55 = *(*(&v89 + 1) + 8 * i);
                v56 = objc_autoreleasePoolPush();
                v57 = [v49 objectForKeyedSubscript:v55];
                v58 = [v48 filteredSetUsingPredicate:v57];
                v59 = v58;
                if (v58 && [v58 count])
                {
                  if ([v55 isEqual:&off_10036C298])
                  {
                    v52 = 1;
                  }

                  else if ([v55 isEqual:&off_10036C2B0])
                  {
                    LODWORD(v88) = 1;
                  }

                  else if ([v55 isEqual:&off_10036C2C8])
                  {
                    v87 = 1;
                  }

                  else
                  {
                    HIDWORD(v88) |= [v55 isEqual:&off_10036C2E0];
                  }
                }

                objc_autoreleasePoolPop(v56);
              }

              v51 = [v49 countByEnumeratingWithState:&v89 objects:v97 count:16];
            }

            while (v51);
          }

          else
          {
            v88 = 0;
            v87 = 0;
            v52 = 0;
          }

          v60 = v52 | v88 | v87;
          if ((v60 & 1) == 0)
          {
            v61 = @"numPreBundlesWith_workoutEvent_0_storytellingEvent_0_routineEvent_0_proactiveEvent_0";
            if ((v88 & 0x100000000) == 0)
            {
              goto LABEL_44;
            }
          }

          v62 = HIDWORD(v88) ^ 1;
          v61 = @"numPreBundlesWith_workoutEvent_0_storytellingEvent_0_routineEvent_0_proactiveEvent_1";
          if (((v60 | HIDWORD(v88) ^ 1) & 1) == 0)
          {
            goto LABEL_44;
          }

          v63 = v87 ^ 1;
          v64 = v52 | v88 | v87 ^ 1;
          v61 = @"numPreBundlesWith_workoutEvent_0_storytellingEvent_0_routineEvent_1_proactiveEvent_0";
          if (((v64 | HIDWORD(v88)) & 1) == 0)
          {
            goto LABEL_44;
          }

          v61 = @"numPreBundlesWith_workoutEvent_0_storytellingEvent_0_routineEvent_1_proactiveEvent_1";
          if (((v64 | v62) & 1) == 0)
          {
            goto LABEL_44;
          }

          v65 = v52 | v88 ^ 1;
          v61 = @"numPreBundlesWith_workoutEvent_0_storytellingEvent_1_routineEvent_0_proactiveEvent_0";
          if (((v65 | v87 | HIDWORD(v88)) & 1) == 0)
          {
            goto LABEL_44;
          }

          v61 = @"numPreBundlesWith_workoutEvent_0_storytellingEvent_1_routineEvent_0_proactiveEvent_1";
          if (((v65 | v87 | v62) & 1) == 0)
          {
            goto LABEL_44;
          }

          v66 = v65 | v63;
          v61 = @"numPreBundlesWith_workoutEvent_0_storytellingEvent_1_routineEvent_1_proactiveEvent_0";
          if (((v66 | HIDWORD(v88)) & 1) == 0)
          {
            goto LABEL_44;
          }

          v61 = @"numPreBundlesWith_workoutEvent_0_storytellingEvent_1_routineEvent_1_proactiveEvent_1";
          if (((v66 | v62) & 1) == 0)
          {
            goto LABEL_44;
          }

          v67 = v52 ^ 1 | v88;
          v61 = @"numPreBundlesWith_workoutEvent_1_storytellingEvent_0_routineEvent_0_proactiveEvent_0";
          if (((v67 | v87 | HIDWORD(v88)) & 1) == 0)
          {
            goto LABEL_44;
          }

          v61 = @"numPreBundlesWith_workoutEvent_1_storytellingEvent_0_routineEvent_0_proactiveEvent_1";
          if (((v67 | v87 | v62) & 1) == 0)
          {
            goto LABEL_44;
          }

          v68 = v67 | v63;
          v61 = @"numPreBundlesWith_workoutEvent_1_storytellingEvent_0_routineEvent_1_proactiveEvent_0";
          if (((v68 | HIDWORD(v88)) & 1) == 0)
          {
            goto LABEL_44;
          }

          v61 = @"numPreBundlesWith_workoutEvent_1_storytellingEvent_0_routineEvent_1_proactiveEvent_1";
          if ((v68 | v62) & 1) != 0 && (v69 = v52 ^ 1 | v88 ^ 1, v61 = @"numPreBundlesWith_workoutEvent_1_storytellingEvent_1_routineEvent_0_proactiveEvent_0", ((v69 | v87 | HIDWORD(v88))) && (v61 = @"numPreBundlesWith_workoutEvent_1_storytellingEvent_1_routineEvent_0_proactiveEvent_1", ((v69 | v87 | v62)) && (v70 = v69 | v63, v61 = @"numPreBundlesWith_workoutEvent_1_storytellingEvent_1_routineEvent_1_proactiveEvent_0", ((v70 | HIDWORD(v88))) && (v61 = @"numPreBundlesWith_workoutEvent_1_storytellingEvent_1_routineEvent_1_proactiveEvent_1", ((v70 | v62)))
          {
            v46 = v86;
          }

          else
          {
LABEL_44:
            metrics19 = [(MOMetric *)selfCopy metrics];
            v46 = [metrics19 objectForKeyedSubscript:v61];

            v72 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v46 intValue] + 1);
            metrics20 = [(MOMetric *)selfCopy metrics];
            [metrics20 setObject:v72 forKeyedSubscript:v61];
          }

          v47 = v85 + 1;
        }

        while ((v85 + 1) != v83);
        v83 = [obj countByEnumeratingWithState:&v93 objects:v98 count:16];
      }

      while (v83);
    }

    eventsCopy = v79;
  }
}

- (void)calculateAndSetMetricsForSemanticallyBundledEvents:(id)events
{
  eventsCopy = events;
  metrics = [(MOMetric *)self metrics];
  [metrics setObject:&off_10036C1D8 forKeyedSubscript:@"numBundles"];

  v5 = eventsCopy;
  if (eventsCopy)
  {
    v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [eventsCopy count]);
    metrics2 = [(MOMetric *)self metrics];
    [metrics2 setObject:v6 forKeyedSubscript:@"numBundles"];

    v5 = eventsCopy;
  }
}

- (void)getAndSetAgeGender
{
  if (objc_opt_class() && +[MOPlatformInfo isIHAEnabled])
  {
    [(MOPromptMetrics *)self setIHAState:1];
    v3 = _mo_log_facility_get_os_log(&MOLogFacilityMetric);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Fetching age/biologicalSex for CoreAnalytics, with IHA permission", buf, 2u);
    }

    *buf = 0;
    v38 = buf;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy__46;
    v41 = __Block_byref_object_dispose__46;
    v42 = 0;
    v35[0] = 0;
    v35[1] = v35;
    v35[2] = 0x3032000000;
    v35[3] = __Block_byref_object_copy__46;
    v35[4] = __Block_byref_object_dispose__46;
    v36 = 0;
    v4 = dispatch_semaphore_create(0);
    getHealthKitManager = [(MOEventManager *)self->_eventManager getHealthKitManager];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = __37__MOPromptMetrics_getAndSetAgeGender__block_invoke;
    v31[3] = &unk_10033A510;
    v6 = v4;
    v32 = v6;
    v33 = buf;
    v34 = v35;
    [getHealthKitManager fetchUserBiologicalSexWithHandler:v31];
    v7 = [NSString stringWithFormat:@"%@ - [%s] - %d - %s", @"MOSemaphoreWait", "/Library/Caches/com.apple.xbs/Sources/Moments/momentsd/PromptEngine/Analytics/MOPromptMetrics.m", 2199, "[MOPromptMetrics getAndSetAgeGender]"];
    v30 = 0;
    v8 = MOSemaphoreWaitAndFaultIfTimeoutDefaultTimeout_Internal(v6, &v30, v7);
    v16 = v30;
    if (!v8)
    {
      v9 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [MOTripAnnotationManager hometownReferenceLocations];
      }
    }

    [(MOPromptMetrics *)self setBiologicalSex:*(v38 + 5)];
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__46;
    v28 = __Block_byref_object_dispose__46;
    v29 = 0;
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x3032000000;
    v22[3] = __Block_byref_object_copy__46;
    v22[4] = __Block_byref_object_dispose__46;
    v23 = 0;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = __37__MOPromptMetrics_getAndSetAgeGender__block_invoke_1931;
    v18[3] = &unk_10033A538;
    v10 = dispatch_semaphore_create(0);
    v19 = v10;
    v20 = &v24;
    v21 = v22;
    [getHealthKitManager fetchUserAgeWithHandler:v18];
    v11 = [NSString stringWithFormat:@"%@ - [%s] - %d - %s", @"MOSemaphoreWait", "/Library/Caches/com.apple.xbs/Sources/Moments/momentsd/PromptEngine/Analytics/MOPromptMetrics.m", 2216, "[MOPromptMetrics getAndSetAgeGender]"];
    v17 = 0;
    v12 = MOSemaphoreWaitAndFaultIfTimeoutDefaultTimeout_Internal(v10, &v17, v11);
    v13 = v17;
    if (!v12)
    {
      v14 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [MOTripAnnotationManager hometownReferenceLocations];
      }
    }

    [(MOPromptMetrics *)self setAge:v25[5]];
    _Block_object_dispose(v22, 8);

    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(v35, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    [(MOPromptMetrics *)self setIHAState:0];
    [(MOPromptMetrics *)self setBiologicalSex:0];
    [(MOPromptMetrics *)self setAge:0];
    v15 = _mo_log_facility_get_os_log(&MOLogFacilityMetric);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Not sending age/biologicalSex to CoreAnalytics, no IHA permission", buf, 2u);
    }
  }
}

void __37__MOPromptMetrics_getAndSetAgeGender__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if (!a3)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __37__MOPromptMetrics_getAndSetAgeGender__block_invoke_1931(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if (!a3)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)setBiologicalSex:(id)sex
{
  if (sex)
  {
    v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [sex biologicalSex]);
    metrics = [(MOMetric *)self metrics];
    [metrics setObject:v5 forKeyedSubscript:@"BiologicalSex"];
  }
}

- (void)setAge:(id)age
{
  if (age)
  {
    v5 = [age copy];
    metrics = [(MOMetric *)self metrics];
    [metrics setObject:v5 forKeyedSubscript:@"Age"];
  }
}

@end