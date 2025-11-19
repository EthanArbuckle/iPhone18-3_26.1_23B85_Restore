@interface MOPromptMetrics
+ (id)getTimeDeltaMetricMap;
+ (id)meanOf:(id)a3;
+ (id)medianOf:(id)a3;
+ (id)standardDeviationOf:(id)a3;
+ (id)supportedMetricKeys;
- (BOOL)doesInterval:(id)a3 overlapWithAnyIntervalFromArray:(id)a4;
- (BOOL)submitMetricsWithError:(id *)a3;
- (MOPromptMetrics)initWithStartDate:(id)a3 endDate:(id)a4;
- (MOPromptMetrics)initWithStartDate:(id)a3 endDate:(id)a4 EventManager:(id)a5;
- (id)calculateZeroCountsForEvents:(id)a3 withCalendar:(id)a4;
- (void)calculateAndSetMetricsForCorrelatedEvents:(id)a3;
- (void)calculateAndSetMetricsForRawEvents:(id)a3;
- (void)calculateAndSetMetricsForSemanticallyBundledEvents:(id)a3;
- (void)getAndSetAgeGender;
- (void)setAge:(id)a3;
- (void)setBiologicalSex:(id)a3;
- (void)setDerivedMetrics;
@end

@implementation MOPromptMetrics

- (MOPromptMetrics)initWithStartDate:(id)a3 endDate:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8)
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
    v21 = self;
    v22 = 38;
    goto LABEL_12;
  }

  if (!v9)
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
    v21 = self;
    v22 = 39;
LABEL_12:
    [v17 handleFailureInMethod:v20 object:v21 file:@"MOPromptMetrics.m" lineNumber:v22 description:v19];

    v15 = 0;
    goto LABEL_13;
  }

  v11 = [(MOPromptMetrics *)self initWithLoggingEnabled:1];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_startDate, a3);
    objc_storeStrong(&v12->_endDate, a4);
    [(NSDate *)v12->_endDate timeIntervalSinceDate:v12->_startDate];
    v13 = [NSNumber numberWithDouble:?];
    v14 = [(MOMetric *)v12 metrics];
    [v14 setObject:v13 forKeyedSubscript:@"QueryTimeDuration"];
  }

  self = v12;
  v15 = self;
LABEL_13:

  return v15;
}

- (MOPromptMetrics)initWithStartDate:(id)a3 endDate:(id)a4 EventManager:(id)a5
{
  v10 = a5;
  if (v10)
  {
    v11 = [(MOPromptMetrics *)self initWithStartDate:a3 endDate:a4];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_eventManager, a5);
    }

    self = v12;
    v13 = self;
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

    v13 = 0;
  }

  return v13;
}

+ (id)supportedMetricKeys
{
  v2 = [objc_opt_class() integerKeys];
  v3 = [NSMutableSet setWithSet:v2];

  v4 = [objc_opt_class() BOOLeanKeys];
  v5 = [v4 allObjects];
  [v3 addObjectsFromArray:v5];

  v6 = [objc_opt_class() doubleKeys];
  v7 = [v6 allObjects];
  [v3 addObjectsFromArray:v7];

  v8 = [objc_opt_class() bucketedKeys];
  v9 = [v8 allObjects];
  [v3 addObjectsFromArray:v9];

  return v3;
}

- (BOOL)submitMetricsWithError:(id *)a3
{
  [(MOPromptMetrics *)self setDerivedMetrics];
  v6.receiver = self;
  v6.super_class = MOPromptMetrics;
  return [(MOMetric *)&v6 submitMetricsWithError:a3];
}

+ (id)medianOf:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    if ([v3 count] == 1)
    {
      v4 = [v3 objectAtIndexedSubscript:0];
      [v4 doubleValue];
      v5 = [NSNumber numberWithDouble:?];
    }

    else
    {
      v4 = [v3 sortedArrayUsingSelector:"compare:"];
      v6 = [v3 count];
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

+ (id)meanOf:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    if ([v3 count] == 1)
    {
      v4 = [v3 objectAtIndexedSubscript:0];
      [v4 doubleValue];
      v5 = [NSNumber numberWithDouble:?];
    }

    else
    {
      v6 = 0.0;
      if ([v3 count])
      {
        v7 = 1;
        do
        {
          if ([v3 count] >= v7)
          {
            v8 = [v3 objectAtIndexedSubscript:v7 - 1];
            [v8 doubleValue];
            v6 = v6 + (v9 - v6) / v7;
          }

          else
          {
            v6 = v6 - v6 / v7;
          }
        }

        while ([v3 count] > v7++);
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

+ (id)standardDeviationOf:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    if ([v3 count] == 1)
    {
      v4 = &off_10036E7B0;
    }

    else
    {
      v5 = [MOPromptMetrics meanOf:v3];
      [v5 doubleValue];
      v7 = v6;

      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v8 = v3;
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
  v4 = [(MOMetric *)self metrics];
  v5 = [v4 objectForKeyedSubscript:@"QueryTimeDuration"];
  v284 = v3;
  v6 = [MOMetric binForNumber:v5 bins:v3];
  v7 = [(MOMetric *)self metrics];
  [v7 setObject:v6 forKeyedSubscript:@"QueryTimeDuration_Bucketed"];

  v8 = [(MOMetric *)self metrics];
  v9 = [v8 objectForKeyedSubscript:@"Age"];
  v10 = [MOMetric binForNumber:v9 bins:&off_10036E2F8];
  v11 = [(MOMetric *)self metrics];
  [v11 setObject:v10 forKeyedSubscript:@"Age_Bucketed"];

  +[MOPromptMetrics getTimeDeltaMetricMap];
  v294 = 0u;
  v295 = 0u;
  v296 = 0u;
  v288 = v297 = 0u;
  v12 = [v288 allKeys];
  v13 = [v12 countByEnumeratingWithState:&v294 objects:v301 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v294 + 1) + 8 * i);
        v18 = [v288 objectForKey:v17];
        v19 = [(MOMetric *)self metrics];
        v20 = [v19 objectForKeyedSubscript:v17];
        v21 = [MOMetric binForNumber:v20 bins:v289];
        v22 = [(MOMetric *)self metrics];
        [v22 setObject:v21 forKeyedSubscript:v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v294 objects:v301 count:16];
    }

    while (v14);
  }

  v23 = [(MOMetric *)self metrics];
  v24 = [v23 objectForKeyedSubscript:@"Routine_nVisits"];
  v25 = [MOMetric binForNumber:v24 bins:v286];
  v26 = [(MOMetric *)self metrics];
  [v26 setObject:v25 forKeyedSubscript:@"Routine_nVisits_Bucketed"];

  v27 = [(MOMetric *)self metrics];
  v28 = [v27 objectForKeyedSubscript:@"Routine_nHomeVisits"];
  v29 = [MOMetric binForNumber:v28 bins:v286];
  v30 = [(MOMetric *)self metrics];
  [v30 setObject:v29 forKeyedSubscript:@"Routine_nHomeVisits_Bucketed"];

  v31 = [(MOMetric *)self metrics];
  v32 = [v31 objectForKeyedSubscript:@"Routine_nWorkVisits"];
  v33 = [MOMetric binForNumber:v32 bins:v286];
  v34 = [(MOMetric *)self metrics];
  [v34 setObject:v33 forKeyedSubscript:@"Routine_nWorkVisits_Bucketed"];

  v35 = [(MOMetric *)self metrics];
  v36 = [v35 objectForKeyedSubscript:@"Routine_nGymVisits"];
  v37 = [MOMetric binForNumber:v36 bins:v286];
  v38 = [(MOMetric *)self metrics];
  [v38 setObject:v37 forKeyedSubscript:@"Routine_nGymVisits_Bucketed"];

  v39 = [(MOMetric *)self metrics];
  v40 = [v39 objectForKeyedSubscript:@"Routine_nSchoolVisits"];
  v41 = [MOMetric binForNumber:v40 bins:v286];
  v42 = [(MOMetric *)self metrics];
  [v42 setObject:v41 forKeyedSubscript:@"Routine_nSchoolVisits_Bucketed"];

  v43 = [(MOMetric *)self metrics];
  v44 = [v43 objectForKeyedSubscript:@"Routine_AverageVisitsLatency"];
  v45 = [MOMetric binForNumber:v44 bins:v285];
  v46 = [(MOMetric *)self metrics];
  [v46 setObject:v45 forKeyedSubscript:@"Routine_AverageVisitsLatency_Bucketed"];

  v47 = [(MOMetric *)self metrics];
  v48 = [v47 objectForKeyedSubscript:@"Routine_AverageVisitsRealLatency"];
  v49 = [MOMetric binForNumber:v48 bins:v285];
  v50 = [(MOMetric *)self metrics];
  [v50 setObject:v49 forKeyedSubscript:@"Routine_AverageVisitsRealLatency_Bucketed"];

  v51 = [(MOMetric *)self metrics];
  v52 = [v51 objectForKeyedSubscript:@"Storytelling_NumMoments"];
  v53 = [MOMetric binForNumber:v52 bins:v286];
  v54 = [(MOMetric *)self metrics];
  [v54 setObject:v53 forKeyedSubscript:@"Storytelling_NumMoments_Bucketed"];

  v55 = [(MOMetric *)self metrics];
  v56 = [v55 objectForKeyedSubscript:@"Storytelling_NumMomentsWithEvent"];
  v57 = [MOMetric binForNumber:v56 bins:v286];
  v58 = [(MOMetric *)self metrics];
  [v58 setObject:v57 forKeyedSubscript:@"Storytelling_NumMomentsWithEvent_Bucketed"];

  v59 = [(MOMetric *)self metrics];
  v60 = [v59 objectForKeyedSubscript:@"Storytelling_NumMomentsWithEventAndArtist"];
  v61 = [MOMetric binForNumber:v60 bins:v286];
  v62 = [(MOMetric *)self metrics];
  [v62 setObject:v61 forKeyedSubscript:@"Storytelling_NumMomentsWithEventAndArtist_Bucketed"];

  v63 = [(MOMetric *)self metrics];
  v64 = [v63 objectForKeyedSubscript:@"Storytelling_NumMomentsWithFamily"];
  v65 = [MOMetric binForNumber:v64 bins:v286];
  v66 = [(MOMetric *)self metrics];
  [v66 setObject:v65 forKeyedSubscript:@"Storytelling_NumMomentsWithFamily_Bucketed"];

  v67 = [(MOMetric *)self metrics];
  v68 = [v67 objectForKeyedSubscript:@"Storytelling_NumMomentsWithPeople"];
  v69 = [MOMetric binForNumber:v68 bins:v286];
  v70 = [(MOMetric *)self metrics];
  [v70 setObject:v69 forKeyedSubscript:@"Storytelling_NumMomentsWithPeople_Bucketed"];

  v71 = [(MOMetric *)self metrics];
  v72 = [v71 objectForKeyedSubscript:@"Storytelling_AverageMomentsLatency"];
  v73 = [MOMetric binForNumber:v72 bins:v285];
  v74 = [(MOMetric *)self metrics];
  [v74 setObject:v73 forKeyedSubscript:@"Storytelling_AverageMomentsLatency_Bucketed"];

  v75 = [(MOMetric *)self metrics];
  v76 = [v75 objectForKeyedSubscript:@"Storytelling_AverageMomentsRealLatency"];
  v77 = [MOMetric binForNumber:v76 bins:v285];
  v287 = self;
  v78 = [(MOMetric *)self metrics];
  [v78 setObject:v77 forKeyedSubscript:@"Storytelling_AverageMomentsRealLatency_Bucketed"];

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
        v85 = [(MOMetric *)v287 metrics];
        v86 = [v85 objectForKeyedSubscript:v84];
        v87 = [MOPhotoMomentTags getCoarseInferenceTag:v86];

        if (v87)
        {
          v88 = [v79 objectForKeyedSubscript:v84];
          v89 = [(MOMetric *)v287 metrics];
          [v89 setObject:v87 forKeyedSubscript:v88];
        }
      }

      v81 = [v79 countByEnumeratingWithState:&v290 objects:v298 count:16];
    }

    while (v81);
  }

  v90 = v79;

  v91 = [(MOMetric *)v287 metrics];
  v92 = [v91 objectForKeyedSubscript:@"Workout_NumWorkouts"];
  v93 = [MOMetric binForNumber:v92 bins:v286];
  v94 = [(MOMetric *)v287 metrics];
  [v94 setObject:v93 forKeyedSubscript:@"Workout_NumWorkouts_Bucketed"];

  v95 = [(MOMetric *)v287 metrics];
  v96 = [v95 objectForKeyedSubscript:@"Workout_AverageWorkoutLatency"];
  v97 = [MOMetric binForNumber:v96 bins:v285];
  v98 = [(MOMetric *)v287 metrics];
  [v98 setObject:v97 forKeyedSubscript:@"Workout_AverageWorkoutLatency_Bucketed"];

  v99 = [(MOMetric *)v287 metrics];
  v100 = [v99 objectForKeyedSubscript:@"Proactive_NumAllEvents"];
  v101 = [MOMetric binForNumber:v100 bins:v286];
  v102 = [(MOMetric *)v287 metrics];
  [v102 setObject:v101 forKeyedSubscript:@"Proactive_NumAllEvents_Bucketed"];

  v103 = [(MOMetric *)v287 metrics];
  v104 = [v103 objectForKeyedSubscript:@"Proactive_NumMediaOnRepeatEvents"];
  v105 = [MOMetric binForNumber:v104 bins:v286];
  v106 = [(MOMetric *)v287 metrics];
  [v106 setObject:v105 forKeyedSubscript:@"Proactive_NumMediaOnRepeatEvents_Bucketed"];

  v107 = [(MOMetric *)v287 metrics];
  v108 = [v107 objectForKeyedSubscript:@"Proactive_NumTopicEvents"];
  v109 = [MOMetric binForNumber:v108 bins:v286];
  v110 = [(MOMetric *)v287 metrics];
  [v110 setObject:v109 forKeyedSubscript:@"Proactive_NumTopicEvents_Bucketed"];

  v111 = [(MOMetric *)v287 metrics];
  v112 = [v111 objectForKeyedSubscript:@"Proactive_NumTravelEvents"];
  v113 = [MOMetric binForNumber:v112 bins:v286];
  v114 = [(MOMetric *)v287 metrics];
  [v114 setObject:v113 forKeyedSubscript:@"Proactive_NumTravelEvents_Bucketed"];

  v115 = [(MOMetric *)v287 metrics];
  v116 = [v115 objectForKeyedSubscript:@"Proactive_NumSharedWithYouEvents"];
  v117 = [MOMetric binForNumber:v116 bins:v286];
  v118 = [(MOMetric *)v287 metrics];
  [v118 setObject:v117 forKeyedSubscript:@"Proactive_NumSharedWithYouEvents_Bucketed"];

  v119 = [(MOMetric *)v287 metrics];
  v120 = [v119 objectForKeyedSubscript:@"Proactive_NumSignificantContactEvents"];
  v121 = [MOMetric binForNumber:v120 bins:v286];
  v122 = [(MOMetric *)v287 metrics];
  [v122 setObject:v121 forKeyedSubscript:@"Proactive_NumSignificantContactEvents_Bucketed"];

  v123 = [(MOMetric *)v287 metrics];
  v124 = [v123 objectForKeyedSubscript:@"Proactive_NumStructuredEvents"];
  v125 = [MOMetric binForNumber:v124 bins:v286];
  v126 = [(MOMetric *)v287 metrics];
  [v126 setObject:v125 forKeyedSubscript:@"Proactive_NumStructuredEvents_Bucketed"];

  v127 = [(MOMetric *)v287 metrics];
  v128 = [v127 objectForKeyedSubscript:@"Proactive_NumLeisureMediaEvents"];
  v129 = [MOMetric binForNumber:v128 bins:v286];
  v130 = [(MOMetric *)v287 metrics];
  [v130 setObject:v129 forKeyedSubscript:@"Proactive_NumLeisureMediaEvents_Bucketed"];

  v131 = [(MOMetric *)v287 metrics];
  v132 = [v131 objectForKeyedSubscript:@"Proactive_NumNLEvents"];
  v133 = [MOMetric binForNumber:v132 bins:v286];
  v134 = [(MOMetric *)v287 metrics];
  [v134 setObject:v133 forKeyedSubscript:@"Proactive_NumNLEvents_Bucketed"];

  v135 = [(MOMetric *)v287 metrics];
  v136 = [v135 objectForKeyedSubscript:@"Proactive_EventsAverageLatency"];
  v137 = [MOMetric binForNumber:v136 bins:v285];
  v138 = [(MOMetric *)v287 metrics];
  [v138 setObject:v137 forKeyedSubscript:@"Proactive_EventsAverageLatency_Bucketed"];

  v139 = [(MOMetric *)v287 metrics];
  v140 = [v139 objectForKeyedSubscript:@"Proactive_MediaOnRepeatAverageLatency"];
  v141 = [MOMetric binForNumber:v140 bins:v285];
  v142 = [(MOMetric *)v287 metrics];
  [v142 setObject:v141 forKeyedSubscript:@"Proactive_MediaOnRepeatAverageLatency_Bucketed"];

  v143 = [(MOMetric *)v287 metrics];
  v144 = [v143 objectForKeyedSubscript:@"Proactive_TopicAverageLatency"];
  v145 = [MOMetric binForNumber:v144 bins:v285];
  v146 = [(MOMetric *)v287 metrics];
  [v146 setObject:v145 forKeyedSubscript:@"Proactive_TopicAverageLatency_Bucketed"];

  v147 = [(MOMetric *)v287 metrics];
  v148 = [v147 objectForKeyedSubscript:@"Proactive_TravelAverageLatency"];
  v149 = [MOMetric binForNumber:v148 bins:v285];
  v150 = [(MOMetric *)v287 metrics];
  [v150 setObject:v149 forKeyedSubscript:@"Proactive_TravelAverageLatency_Bucketed"];

  v151 = [(MOMetric *)v287 metrics];
  v152 = [v151 objectForKeyedSubscript:@"Proactive_SharedWithYouAverageLatency"];
  v153 = [MOMetric binForNumber:v152 bins:v285];
  v154 = [(MOMetric *)v287 metrics];
  [v154 setObject:v153 forKeyedSubscript:@"Proactive_SharedWithYouAverageLatency_Bucketed"];

  v155 = [(MOMetric *)v287 metrics];
  v156 = [v155 objectForKeyedSubscript:@"Proactive_SignificantContactAverageLatency"];
  v157 = [MOMetric binForNumber:v156 bins:v285];
  v158 = [(MOMetric *)v287 metrics];
  [v158 setObject:v157 forKeyedSubscript:@"Proactive_SignificantContactAverageLatency_Bucketed"];

  v159 = [(MOMetric *)v287 metrics];
  v160 = [v159 objectForKeyedSubscript:@"Proactive_StructuredEventsAverageLatency"];
  v161 = [MOMetric binForNumber:v160 bins:v285];
  v162 = [(MOMetric *)v287 metrics];
  [v162 setObject:v161 forKeyedSubscript:@"Proactive_StructuredEventsAverageLatency_Bucketed"];

  v163 = [(MOMetric *)v287 metrics];
  v164 = [v163 objectForKeyedSubscript:@"Proactive_LeisureMediaEventsAverageLatency"];
  v165 = [MOMetric binForNumber:v164 bins:v285];
  v166 = [(MOMetric *)v287 metrics];
  [v166 setObject:v165 forKeyedSubscript:@"Proactive_LeisureMediaEventsAverageLatency_Bucketed"];

  v167 = [(MOMetric *)v287 metrics];
  v168 = [v167 objectForKeyedSubscript:@"Proactive_NLEventsAverageLatency"];
  v169 = [MOMetric binForNumber:v168 bins:v285];
  v170 = [(MOMetric *)v287 metrics];
  [v170 setObject:v169 forKeyedSubscript:@"Proactive_NLEventsAverageLatency_Bucketed"];

  v171 = [(MOMetric *)v287 metrics];
  v172 = [v171 objectForKeyedSubscript:@"Storytelling_PercentageOfMomentEventsNoLOI"];
  v173 = [MOMetric binForNumber:v172 bins:v283];
  v174 = [(MOMetric *)v287 metrics];
  [v174 setObject:v173 forKeyedSubscript:@"Storytelling_PercentageOfMomentEventsNoLOI_Bucketed"];

  v175 = [(MOMetric *)v287 metrics];
  v176 = [v175 objectForKeyedSubscript:@"Workout_PercentageOfWorkoutEventsNoLOI"];
  v177 = [MOMetric binForNumber:v176 bins:v283];
  v178 = [(MOMetric *)v287 metrics];
  [v178 setObject:v177 forKeyedSubscript:@"Workout_PercentageOfWorkoutEventsNoLOI_Bucketed"];

  v179 = [(MOMetric *)v287 metrics];
  v180 = [v179 objectForKeyedSubscript:@"Proactive_PercentageOfMediaOnRepeatEventsNoLOI"];
  v181 = [MOMetric binForNumber:v180 bins:v283];
  v182 = [(MOMetric *)v287 metrics];
  [v182 setObject:v181 forKeyedSubscript:@"Proactive_PercentageOfMediaOnRepeatEventsNoLOI_Bucketed"];

  v183 = [(MOMetric *)v287 metrics];
  v184 = [v183 objectForKeyedSubscript:@"Proactive_PercentageOfTopicEventsNoLOI"];
  v185 = [MOMetric binForNumber:v184 bins:v283];
  v186 = [(MOMetric *)v287 metrics];
  [v186 setObject:v185 forKeyedSubscript:@"Proactive_PercentageOfTopicEventsNoLOI_Bucketed"];

  v187 = [(MOMetric *)v287 metrics];
  v188 = [v187 objectForKeyedSubscript:@"Proactive_PercentageOfTravelEventsNoLOI"];
  v189 = [MOMetric binForNumber:v188 bins:v283];
  v190 = [(MOMetric *)v287 metrics];
  [v190 setObject:v189 forKeyedSubscript:@"Proactive_PercentageOfTravelEventsNoLOI_Bucketed"];

  v191 = [(MOMetric *)v287 metrics];
  v192 = [v191 objectForKeyedSubscript:@"Proactive_PercentageOfSharedWithYouEventsNoLOI"];
  v193 = [MOMetric binForNumber:v192 bins:v283];
  v194 = [(MOMetric *)v287 metrics];
  [v194 setObject:v193 forKeyedSubscript:@"Proactive_PercentageOfSharedWithYouEventsNoLOI_Bucketed"];

  v195 = [(MOMetric *)v287 metrics];
  v196 = [v195 objectForKeyedSubscript:@"Proactive_PercentageOfSignificantContactEventsNoLOI"];
  v197 = [MOMetric binForNumber:v196 bins:v283];
  v198 = [(MOMetric *)v287 metrics];
  [v198 setObject:v197 forKeyedSubscript:@"Proactive_PercentageOfSignificantContactEventsNoLOI_Bucketed"];

  v199 = [(MOMetric *)v287 metrics];
  v200 = [v199 objectForKeyedSubscript:@"Proactive_PercentageOfStructuredEventsNoLOI"];
  v201 = [MOMetric binForNumber:v200 bins:v283];
  v202 = [(MOMetric *)v287 metrics];
  [v202 setObject:v201 forKeyedSubscript:@"Proactive_PercentageOfStructuredEventsNoLOI_Bucketed"];

  v203 = [(MOMetric *)v287 metrics];
  v204 = [v203 objectForKeyedSubscript:@"Proactive_PercentageOfLeisureMediaEventsNoLOI"];
  v205 = [MOMetric binForNumber:v204 bins:v283];
  v206 = [(MOMetric *)v287 metrics];
  [v206 setObject:v205 forKeyedSubscript:@"Proactive_PercentageOfLeisureMediaEventsNoLOI_Bucketed"];

  v207 = [(MOMetric *)v287 metrics];
  v208 = [v207 objectForKeyedSubscript:@"Proactive_PercentageOfNLEventsNoLOI"];
  v209 = [MOMetric binForNumber:v208 bins:v283];
  v210 = [(MOMetric *)v287 metrics];
  [v210 setObject:v209 forKeyedSubscript:@"Proactive_PercentageOfNLEventsNoLOI_Bucketed"];

  v211 = [(MOMetric *)v287 metrics];
  v212 = [v211 objectForKeyedSubscript:@"numPreBundles"];
  v213 = [MOMetric binForNumber:v212 bins:v286];
  v214 = [(MOMetric *)v287 metrics];
  [v214 setObject:v213 forKeyedSubscript:@"numPreBundles_Bucketed"];

  v215 = [(MOMetric *)v287 metrics];
  v216 = [v215 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_0_routineEvent_0_proactiveEvent_0"];
  v217 = [MOMetric binForNumber:v216 bins:v286];
  v218 = [(MOMetric *)v287 metrics];
  [v218 setObject:v217 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_0_routineEvent_0_proactiveEvent_0_Bucketed"];

  v219 = [(MOMetric *)v287 metrics];
  v220 = [v219 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_0_routineEvent_0_proactiveEvent_1"];
  v221 = [MOMetric binForNumber:v220 bins:v286];
  v222 = [(MOMetric *)v287 metrics];
  [v222 setObject:v221 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_0_routineEvent_0_proactiveEvent_1_Bucketed"];

  v223 = [(MOMetric *)v287 metrics];
  v224 = [v223 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_0_routineEvent_1_proactiveEvent_0"];
  v225 = [MOMetric binForNumber:v224 bins:v286];
  v226 = [(MOMetric *)v287 metrics];
  [v226 setObject:v225 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_0_routineEvent_1_proactiveEvent_0_Bucketed"];

  v227 = [(MOMetric *)v287 metrics];
  v228 = [v227 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_0_routineEvent_1_proactiveEvent_1"];
  v229 = [MOMetric binForNumber:v228 bins:v286];
  v230 = [(MOMetric *)v287 metrics];
  [v230 setObject:v229 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_0_routineEvent_1_proactiveEvent_1_Bucketed"];

  v231 = [(MOMetric *)v287 metrics];
  v232 = [v231 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_1_routineEvent_0_proactiveEvent_0"];
  v233 = [MOMetric binForNumber:v232 bins:v286];
  v234 = [(MOMetric *)v287 metrics];
  [v234 setObject:v233 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_1_routineEvent_0_proactiveEvent_0_Bucketed"];

  v235 = [(MOMetric *)v287 metrics];
  v236 = [v235 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_1_routineEvent_0_proactiveEvent_1"];
  v237 = [MOMetric binForNumber:v236 bins:v286];
  v238 = [(MOMetric *)v287 metrics];
  [v238 setObject:v237 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_1_routineEvent_0_proactiveEvent_1_Bucketed"];

  v239 = [(MOMetric *)v287 metrics];
  v240 = [v239 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_1_routineEvent_1_proactiveEvent_0"];
  v241 = [MOMetric binForNumber:v240 bins:v286];
  v242 = [(MOMetric *)v287 metrics];
  [v242 setObject:v241 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_1_routineEvent_1_proactiveEvent_0_Bucketed"];

  v243 = [(MOMetric *)v287 metrics];
  v244 = [v243 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_1_routineEvent_1_proactiveEvent_1"];
  v245 = [MOMetric binForNumber:v244 bins:v286];
  v246 = [(MOMetric *)v287 metrics];
  [v246 setObject:v245 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_1_routineEvent_1_proactiveEvent_1_Bucketed"];

  v247 = [(MOMetric *)v287 metrics];
  v248 = [v247 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_0_routineEvent_0_proactiveEvent_0"];
  v249 = [MOMetric binForNumber:v248 bins:v286];
  v250 = [(MOMetric *)v287 metrics];
  [v250 setObject:v249 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_0_routineEvent_0_proactiveEvent_0_Bucketed"];

  v251 = [(MOMetric *)v287 metrics];
  v252 = [v251 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_0_routineEvent_0_proactiveEvent_1"];
  v253 = [MOMetric binForNumber:v252 bins:v286];
  v254 = [(MOMetric *)v287 metrics];
  [v254 setObject:v253 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_0_routineEvent_0_proactiveEvent_1_Bucketed"];

  v255 = [(MOMetric *)v287 metrics];
  v256 = [v255 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_0_routineEvent_1_proactiveEvent_0"];
  v257 = [MOMetric binForNumber:v256 bins:v286];
  v258 = [(MOMetric *)v287 metrics];
  [v258 setObject:v257 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_0_routineEvent_1_proactiveEvent_0_Bucketed"];

  v259 = [(MOMetric *)v287 metrics];
  v260 = [v259 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_0_routineEvent_1_proactiveEvent_1"];
  v261 = [MOMetric binForNumber:v260 bins:v286];
  v262 = [(MOMetric *)v287 metrics];
  [v262 setObject:v261 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_0_routineEvent_1_proactiveEvent_1_Bucketed"];

  v263 = [(MOMetric *)v287 metrics];
  v264 = [v263 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_1_routineEvent_0_proactiveEvent_0"];
  v265 = [MOMetric binForNumber:v264 bins:v286];
  v266 = [(MOMetric *)v287 metrics];
  [v266 setObject:v265 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_1_routineEvent_0_proactiveEvent_0_Bucketed"];

  v267 = [(MOMetric *)v287 metrics];
  v268 = [v267 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_1_routineEvent_0_proactiveEvent_1"];
  v269 = [MOMetric binForNumber:v268 bins:v286];
  v270 = [(MOMetric *)v287 metrics];
  [v270 setObject:v269 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_1_routineEvent_0_proactiveEvent_1_Bucketed"];

  v271 = [(MOMetric *)v287 metrics];
  v272 = [v271 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_1_routineEvent_1_proactiveEvent_0"];
  v273 = [MOMetric binForNumber:v272 bins:v286];
  v274 = [(MOMetric *)v287 metrics];
  [v274 setObject:v273 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_1_routineEvent_1_proactiveEvent_0_Bucketed"];

  v275 = [(MOMetric *)v287 metrics];
  v276 = [v275 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_1_routineEvent_1_proactiveEvent_1"];
  v277 = [MOMetric binForNumber:v276 bins:v286];
  v278 = [(MOMetric *)v287 metrics];
  [v278 setObject:v277 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_1_routineEvent_1_proactiveEvent_1_Bucketed"];

  v279 = [(MOMetric *)v287 metrics];
  v280 = [v279 objectForKeyedSubscript:@"numBundles"];
  v281 = [MOMetric binForNumber:v280 bins:v286];
  v282 = [(MOMetric *)v287 metrics];
  [v282 setObject:v281 forKeyedSubscript:@"numBundles_Bucketed"];
}

- (id)calculateZeroCountsForEvents:(id)a3 withCalendar:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(NSDateComponents);
  [v8 setDay:0];
  v9 = [v7 startOfDayForDate:self->_startDate];
  v34 = objc_opt_new();
  v10 = 32;
  v11 = [v9 earlierDate:self->_endDate];

  if (v11 == v9)
  {
    v13 = 0;
    v35 = 0;
    v14 = v9;
    v32 = v8;
    v33 = v7;
    v30 = self;
    v31 = v9;
    v29 = 32;
    do
    {
      v36 = [v8 day] / 7 + 1;
      [v8 setDay:{objc_msgSend(v8, "day") + 1}];
      v12 = [v7 dateByAddingComponents:v8 toDate:v9 options:0];
      v37 = v13;
      if ([v6 count] <= v13)
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
          v17 = [v6 objectAtIndexedSubscript:v16];
          v18 = [v17 endDate];
          v19 = [v18 earlierDate:v12];
          v20 = [v6 objectAtIndexedSubscript:v16];
          v21 = [v20 endDate];

          if (v19 != v21)
          {
            break;
          }

          ++v16;
          --v15;
          if ([v6 count] <= v16)
          {
            v37 = (v37 - v15);
            v8 = v32;
            v7 = v33;
            self = v30;
            v9 = v31;
            v10 = v29;
            goto LABEL_10;
          }
        }

        v37 = (v37 - v15);
        v8 = v32;
        v7 = v33;
        self = v30;
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

- (BOOL)doesInterval:(id)a3 overlapWithAnyIntervalFromArray:(id)a4
{
  v5 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [v5 intersectionWithDateInterval:{*(*(&v16 + 1) + 8 * i), v16}];
        v11 = [v10 endDate];
        v12 = [v10 startDate];
        [v11 timeIntervalSinceDate:v12];
        v14 = v13;

        if (v14 > 0.0)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (void)calculateAndSetMetricsForRawEvents:(id)a3
{
  v4 = a3;
  v5 = self->_endDate;
  v1128 = +[NSCalendar currentCalendar];
  v1146 = v5;
  v6 = [v1128 components:736 fromDate:v5];
  v7 = [v6 weekday];
  v8 = [v6 hour];
  v9 = [v6 minute];
  v1126 = v6;
  v10 = (v9 * 60.0 + v8 * 3600.0 + [v6 second]);
  v11 = [NSNumber numberWithInteger:v7];
  v12 = [(MOMetric *)self metrics];
  [v12 setObject:v11 forKeyedSubscript:@"DayIDSubmission"];

  v13 = [MOMetric binsFromStart:&off_10036C1D8 toEnd:&off_10036E820 gap:&off_10036E830];
  v14 = [NSNumber numberWithLong:v10];
  v1125 = v13;
  v15 = [MOMetric binForNumber:v14 bins:v13];
  v16 = [(MOMetric *)self metrics];
  [v16 setObject:v15 forKeyedSubscript:@"HourIDSubmission"];

  [(NSDate *)self->_endDate timeIntervalSinceDate:self->_startDate];
  v17 = [NSNumber numberWithDouble:?];
  v1147 = [MOMetric binsFromStart:&off_10036C1D8 toEnd:v17 gap:&off_10036E830];

  v18 = +[MOEventBundler propertyNameDictionary];
  startDate = self->_startDate;
  v20 = [NSPredicate predicateWithFormat:@"endDate >= %@ && endDate <= %@", startDate, self->_endDate];
  v1127 = v4;
  v21 = [v4 filteredArrayUsingPredicate:v20];
  v1143 = [v21 mutableCopy];

  v22 = [NSSortDescriptor sortDescriptorWithKey:@"endDate" ascending:1];
  v1249 = v22;
  v23 = [NSArray arrayWithObjects:&v1249 count:1];
  [v1143 sortUsingDescriptors:v23];

  v24 = [(MOPromptMetrics *)self calculateZeroCountsForEvents:v1143 withCalendar:v1128];
  v25 = [v24 objectForKey:@"CountOfZeroEventDays"];
  v26 = [(MOMetric *)self metrics];
  [v26 setObject:v25 forKeyedSubscript:@"ZeroEventDayCountAcrossAllEvents"];

  v27 = [v24 objectForKey:@"CountOfZeroEventWeeks"];
  v28 = [(MOMetric *)self metrics];
  [v28 setObject:v27 forKeyedSubscript:@"ZeroEventWeekCountAcrossAllEvents"];

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
  v37 = [(MOMetric *)self metrics];
  [v37 setObject:v36 forKeyedSubscript:@"ZeroEventDayCount"];

  v1123 = v35;
  v38 = [v35 objectForKey:@"CountOfZeroEventWeeks"];
  v39 = [(MOMetric *)self metrics];
  [v39 setObject:v38 forKeyedSubscript:@"ZeroEventWeekCount"];

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
  v1205 = self;
  v48 = [(MOMetric *)self metrics];
  [v48 setObject:v47 forKeyedSubscript:@"Routine_nVisits"];

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
      v53 = [v52 placeName];
      v54 = [v53 lowercaseString];

      v1199 = v54;
      if ([v54 containsString:@"home"])
      {
        v51 = (v51 + 1);
        v55 = v1148;
      }

      else
      {
        v55 = v1148;
        if ([v54 containsString:@"work"])
        {
          ++v1195;
        }

        else if ([v54 containsString:@"gym"])
        {
          ++v1172;
        }

        else if ([v54 containsString:@"school"])
        {
          ++v1159;
        }

        else if ([v52 placeDiscovery] != 2)
        {
          goto LABEL_15;
        }
      }

      v56 = [v52 startDate];
      if (v56)
      {
        v57 = v56;
        v58 = [v52 endDate];

        if (v58)
        {
          v59 = [NSDateInterval alloc];
          v60 = [v52 startDate];
          v61 = [v52 endDate];
          v62 = [v59 initWithStartDate:v60 endDate:v61];

          [v1158 addObject:v62];
        }
      }

LABEL_15:
      v63 = [v52 endDate];

      if (v63)
      {
        if (v50)
        {
          v64 = [v46 objectAtIndexedSubscript:v50 - 1];
          v65 = [v64 endDate];

          if (v65)
          {
            v66 = [v52 endDate];
            v67 = [v46 objectAtIndexedSubscript:v50 - 1];
            [v67 endDate];
            v69 = v68 = v51;
            [v66 timeIntervalSinceDate:v69];
            v70 = [NSNumber numberWithDouble:?];
            [v55 addObject:v70];

            v51 = v68;
          }
        }

        v71 = [v52 creationDate];

        if (v71)
        {
          v72 = [v52 creationDate];
          v73 = [v52 endDate];
          [v72 timeIntervalSinceDate:v73];
          v75 = v74;

          v76 = [NSNumber numberWithDouble:v75];
          [v49 addObject:v76];
        }

        v77 = [v52 sourceCreationDate];

        if (v77)
        {
          v78 = [v52 sourceCreationDate];
          v79 = [v52 endDate];
          [v78 timeIntervalSinceDate:v79];
          v81 = v80;

          v82 = [NSNumber numberWithDouble:v81];
          [v1140 addObject:v82];
        }
      }

      v83 = [v52 creationDate];
      if (!v83)
      {
        goto LABEL_32;
      }

      v84 = v83;
      v85 = [v52 endDate];
      if (!v85)
      {
        goto LABEL_31;
      }

      v86 = v85;
      v87 = [v52 endDate];

      if (v87)
      {
        v88 = [v52 creationDate];
        v89 = [v52 endDate];
        [v88 timeIntervalSinceDate:v89];
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

        v95 = [v52 startDate];
        [(NSDate *)v1146 timeIntervalSinceDate:v95];
        v96 = [NSNumber numberWithDouble:?];
        v97 = [MOMetric binForNumber:v96 bins:v1147];
        v98 = [(MOMetric *)v1205 metrics];
        [v98 setObject:v97 forKeyedSubscript:v94];

        v84 = [v52 endDate];
        [(NSDate *)v1146 timeIntervalSinceDate:v84];
        v99 = [NSNumber numberWithDouble:?];
        v100 = [MOMetric binForNumber:v99 bins:v1147];
        v101 = [(MOMetric *)v1205 metrics];
        [v101 setObject:v100 forKeyedSubscript:v1162];

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
  v103 = [(MOMetric *)v1205 metrics];
  [v103 setObject:v102 forKeyedSubscript:@"Routine_nHomeVisits"];

  v104 = [NSNumber numberWithInt:v1195];
  v105 = [(MOMetric *)v1205 metrics];
  [v105 setObject:v104 forKeyedSubscript:@"Routine_nWorkVisits"];

  v106 = [NSNumber numberWithInt:v1172];
  v107 = [(MOMetric *)v1205 metrics];
  [v107 setObject:v106 forKeyedSubscript:@"Routine_nGymVisits"];

  v108 = [NSNumber numberWithInt:v1159];
  v109 = [(MOMetric *)v1205 metrics];
  [v109 setObject:v108 forKeyedSubscript:@"Routine_nSchoolVisits"];

  v110 = [MOPromptMetrics meanOf:v49];
  v111 = [(MOMetric *)v1205 metrics];
  [v111 setObject:v110 forKeyedSubscript:@"Routine_AverageVisitsLatency"];

  v112 = [MOPromptMetrics meanOf:v1140];
  v113 = [(MOMetric *)v1205 metrics];
  [v113 setObject:v112 forKeyedSubscript:@"Routine_AverageVisitsRealLatency"];

  if ([v1148 count])
  {
    v114 = [MOPromptMetrics meanOf:v1148];
    v115 = [(MOMetric *)v1205 metrics];
    [v115 setObject:v114 forKeyedSubscript:@"Routine_MeanDeltaBetweenVisits"];

    v116 = [v1148 valueForKeyPath:@"@min.doubleValue"];
    v117 = [(MOMetric *)v1205 metrics];
    [v117 setObject:v116 forKeyedSubscript:@"Routine_MinDeltaBetweenVisits"];

    v118 = [v1148 valueForKeyPath:@"@max.doubleValue"];
    v119 = [(MOMetric *)v1205 metrics];
    [v119 setObject:v118 forKeyedSubscript:@"Routine_MaxDeltaBetweenVisits"];

    v120 = [MOPromptMetrics standardDeviationOf:v1148];
    v121 = [(MOMetric *)v1205 metrics];
    [v121 setObject:v120 forKeyedSubscript:@"Routine_SDDeltaBetweenVisits"];
  }

  if ([v46 count])
  {
    v122 = [v46 firstObject];
    v123 = [v122 endDate];
    [v123 timeIntervalSinceDate:v1205->_startDate];
    v124 = [NSNumber numberWithDouble:?];
    v125 = v1148;
    [v1148 addObject:v124];

    endDate = v1205->_endDate;
    v127 = [v46 lastObject];
    v128 = [v127 endDate];
    [(NSDate *)endDate timeIntervalSinceDate:v128];
    v129 = [NSNumber numberWithDouble:?];
    [v1148 addObject:v129];

    v130 = [MOPromptMetrics meanOf:v1148];
    v131 = [(MOMetric *)v1205 metrics];
    [v131 setObject:v130 forKeyedSubscript:@"Routine_MeanDeltaBetweenVisitsBoundariesIncluded"];

    v132 = [v1148 valueForKeyPath:@"@min.doubleValue"];
    v133 = [(MOMetric *)v1205 metrics];
    [v133 setObject:v132 forKeyedSubscript:@"Routine_MinDeltaBetweenVisitsBoundariesIncluded"];

    v134 = [v1148 valueForKeyPath:@"@max.doubleValue"];
    v135 = [(MOMetric *)v1205 metrics];
    [v135 setObject:v134 forKeyedSubscript:@"Routine_MaxDeltaBetweenVisitsBoundariesIncluded"];

    v136 = [MOPromptMetrics standardDeviationOf:v1148];
    v137 = [(MOMetric *)v1205 metrics];
    [v137 setObject:v136 forKeyedSubscript:@"Routine_SDDeltaBetweenVisitsBoundariesIncluded"];

    v138 = v1205;
  }

  else
  {
    [(NSDate *)v1205->_endDate timeIntervalSinceDate:v1205->_startDate];
    v139 = [NSNumber numberWithDouble:?];
    v140 = [(MOMetric *)v1205 metrics];
    [v140 setObject:v139 forKeyedSubscript:@"Routine_MeanDeltaBetweenVisitsBoundariesIncluded"];

    [(NSDate *)v1205->_endDate timeIntervalSinceDate:v1205->_startDate];
    v141 = [NSNumber numberWithDouble:?];
    v142 = [(MOMetric *)v1205 metrics];
    [v142 setObject:v141 forKeyedSubscript:@"Routine_MinDeltaBetweenVisitsBoundariesIncluded"];

    [(NSDate *)v1205->_endDate timeIntervalSinceDate:v1205->_startDate];
    v143 = [NSNumber numberWithDouble:?];
    v144 = [(MOMetric *)v1205 metrics];
    [v144 setObject:v143 forKeyedSubscript:@"Routine_MaxDeltaBetweenVisitsBoundariesIncluded"];

    v136 = [(MOMetric *)v1205 metrics];
    [v136 setObject:&off_10036E7B0 forKeyedSubscript:@"Routine_SDDeltaBetweenVisitsBoundariesIncluded"];
    v138 = v1205;
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
  v153 = [(MOMetric *)v138 metrics];
  [v153 setObject:v152 forKeyedSubscript:@"Storytelling_NumMoments"];

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
        v161 = [v159 startDate];
        v162 = [v159 endDate];
        v163 = [v160 initWithStartDate:v161 endDate:v162];

        v1163 = v163;
        v1160 = [(MOPromptMetrics *)v1205 doesInterval:v163 overlapWithAnyIntervalFromArray:v1158];
        v164 = [v159 extendedAttributes];
        v165 = [v164 photoMomentPersons];

        v1224 = 0u;
        v1225 = 0u;
        v1222 = 0u;
        v1223 = 0u;
        v166 = v165;
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
            v174 = [v173 name];
            v170 |= [v174 length] != 0;
            v175 = [v173 family];
            v169 |= [v175 length] != 0;
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
        v178 = [v159 extendedAttributes];
        v179 = [v178 photoMomentPublicEvents];

        v1220 = 0u;
        v1221 = 0u;
        v1218 = 0u;
        v1219 = 0u;
        v180 = v179;
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
              v188 = [v187 name];
              v189 = [v187 performers];
              v184 |= [v188 length] != 0;
              v183 |= [v189 count] != 0;
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
        v192 = v1205;
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
  v196 = [(MOMetric *)v192 metrics];
  [v196 setObject:v195 forKeyedSubscript:@"Storytelling_NumMomentsWithPeople"];

  v197 = [NSNumber numberWithInt:v193];
  v198 = [(MOMetric *)v192 metrics];
  [v198 setObject:v197 forKeyedSubscript:@"Storytelling_NumMomentsWithFamily"];

  v199 = [NSNumber numberWithInt:v157];
  v200 = [(MOMetric *)v192 metrics];
  [v200 setObject:v199 forKeyedSubscript:@"Storytelling_NumMomentsWithEvent"];

  v201 = [NSNumber numberWithInt:v156];
  v202 = [(MOMetric *)v192 metrics];
  [v202 setObject:v201 forKeyedSubscript:@"Storytelling_NumMomentsWithEventAndArtist"];

  v203 = v1157;
  if ([v1157 count])
  {
    v204 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", 1.0 - v191 / [v1157 count]);
    v205 = [(MOMetric *)v192 metrics];
    [v205 setObject:v204 forKeyedSubscript:@"Storytelling_PercentageOfMomentEventsNoLOI"];

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
      v209 = [v208 creationDate];
      v1150 = v208;
      if (!v209)
      {
        goto LABEL_86;
      }

      v210 = v209;
      v211 = [v208 startDate];
      if (!v211)
      {
        goto LABEL_85;
      }

      v212 = v211;
      v213 = [v208 endDate];

      if (v213)
      {
        v214 = [v208 creationDate];
        v215 = [v208 endDate];
        [v214 timeIntervalSinceDate:v215];
        v217 = v216;

        v218 = [NSNumber numberWithDouble:v217];
        [v1145 addObject:v218];

        if (v1197 <= 2)
        {
          break;
        }
      }

LABEL_86:
      v227 = [v208 endDate];

      v228 = v1197;
      if (v227)
      {
        if (v1197)
        {
          v229 = [v1157 objectAtIndexedSubscript:v1197 - 1];
          v230 = [v229 endDate];

          if (v230)
          {
            v231 = [v208 endDate];
            v232 = [v1157 objectAtIndexedSubscript:v1197 - 1];
            v233 = [v232 endDate];
            [v231 timeIntervalSinceDate:v233];
            v234 = [NSNumber numberWithDouble:?];
            [v206 addObject:v234];
          }
        }

        v235 = [v208 creationDate];

        if (v235)
        {
          v236 = [v208 creationDate];
          v237 = [v208 endDate];
          [v236 timeIntervalSinceDate:v237];
          v239 = v238;

          v240 = [NSNumber numberWithDouble:v239];
          [v1145 addObject:v240];
        }

        v241 = [v208 sourceCreationDate];

        v228 = v1197;
        if (v241)
        {
          v242 = [v208 sourceCreationDate];
          v243 = [v208 endDate];
          [v242 timeIntervalSinceDate:v243];
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
        v247 = [v208 extendedAttributes];
        v248 = [v247 photoMomentInferences];

        obja = v248;
        v1169 = [v248 countByEnumeratingWithState:&v1214 objects:v1242 count:16];
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

            v1202 = [*(*(&v1214 + 1) + 8 * v250) lowercaseString];
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
            v254 = v1202;
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
                v260 = [v259 lowercaseString];
                if ([v254 containsString:v260])
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
                      v263 = [(MOMetric *)v1205 metrics];
                      v264 = v262;
                      v254 = v1202;
                      [v263 setObject:v258 forKeyedSubscript:v264];

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

            v192 = v1205;
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
    v220 = [v208 startDate];
    [(NSDate *)v1146 timeIntervalSinceDate:v220];
    v221 = [NSNumber numberWithDouble:?];
    v222 = [MOMetric binForNumber:v221 bins:v1147];
    v223 = [(MOMetric *)v1205 metrics];
    [v223 setObject:v222 forKeyedSubscript:v219];

    v210 = [v208 endDate];
    v206 = v1148;
    [(NSDate *)v1146 timeIntervalSinceDate:v210];
    v224 = [NSNumber numberWithDouble:?];
    v225 = [MOMetric binForNumber:v224 bins:v1147];
    v226 = [(MOMetric *)v1205 metrics];
    [v226 setObject:v225 forKeyedSubscript:v1201];

    v192 = v1205;
LABEL_85:

    goto LABEL_86;
  }

LABEL_128:
  v266 = [MOPromptMetrics meanOf:v1145];
  v267 = [(MOMetric *)v192 metrics];
  [v267 setObject:v266 forKeyedSubscript:@"Storytelling_AverageMomentsLatency"];

  v268 = [MOPromptMetrics meanOf:v1139];
  v269 = [(MOMetric *)v192 metrics];
  [v269 setObject:v268 forKeyedSubscript:@"Storytelling_AverageMomentsRealLatency"];

  if ([v1148 count])
  {
    v270 = [MOPromptMetrics meanOf:v1148];
    v271 = [(MOMetric *)v192 metrics];
    [v271 setObject:v270 forKeyedSubscript:@"Storytelling_MeanDeltaBetweenMoments"];

    v272 = [v1148 valueForKeyPath:@"@min.doubleValue"];
    v273 = [(MOMetric *)v192 metrics];
    [v273 setObject:v272 forKeyedSubscript:@"Storytelling_MinDeltaBetweenMoments"];

    v274 = [v1148 valueForKeyPath:@"@max.doubleValue"];
    v275 = [(MOMetric *)v192 metrics];
    [v275 setObject:v274 forKeyedSubscript:@"Storytelling_MaxDeltaBetweenMoments"];

    v276 = [MOPromptMetrics standardDeviationOf:v1148];
    v277 = [(MOMetric *)v192 metrics];
    [v277 setObject:v276 forKeyedSubscript:@"Storytelling_SDDeltaBetweenMoments"];
  }

  if ([v1157 count])
  {
    v278 = [v1157 firstObject];
    v279 = [v278 endDate];
    [v279 timeIntervalSinceDate:v192->_startDate];
    v280 = [NSNumber numberWithDouble:?];
    v281 = v1148;
    [v1148 addObject:v280];

    v282 = v192->_endDate;
    v283 = [v1157 lastObject];
    v284 = [v283 endDate];
    [(NSDate *)v282 timeIntervalSinceDate:v284];
    v285 = [NSNumber numberWithDouble:?];
    [v1148 addObject:v285];

    v286 = [MOPromptMetrics meanOf:v1148];
    v287 = [(MOMetric *)v192 metrics];
    [v287 setObject:v286 forKeyedSubscript:@"Storytelling_MeanDeltaBetweenMomentsBoundariesIncluded"];

    v288 = [v1148 valueForKeyPath:@"@min.doubleValue"];
    v289 = [(MOMetric *)v192 metrics];
    [v289 setObject:v288 forKeyedSubscript:@"Storytelling_MinDeltaBetweenMomentsBoundariesIncluded"];

    v290 = [v1148 valueForKeyPath:@"@max.doubleValue"];
    v291 = [(MOMetric *)v192 metrics];
    [v291 setObject:v290 forKeyedSubscript:@"Storytelling_MaxDeltaBetweenMomentsBoundariesIncluded"];

    v292 = [MOPromptMetrics standardDeviationOf:v1148];
    v293 = [(MOMetric *)v192 metrics];
    [v293 setObject:v292 forKeyedSubscript:@"Storytelling_SDDeltaBetweenMomentsBoundariesIncluded"];

    v294 = v192;
  }

  else
  {
    [(NSDate *)v192->_endDate timeIntervalSinceDate:v192->_startDate];
    v295 = [NSNumber numberWithDouble:?];
    v296 = [(MOMetric *)v192 metrics];
    [v296 setObject:v295 forKeyedSubscript:@"Storytelling_MeanDeltaBetweenMomentsBoundariesIncluded"];

    [(NSDate *)v192->_endDate timeIntervalSinceDate:v192->_startDate];
    v297 = [NSNumber numberWithDouble:?];
    v298 = [(MOMetric *)v192 metrics];
    [v298 setObject:v297 forKeyedSubscript:@"Storytelling_MinDeltaBetweenMomentsBoundariesIncluded"];

    [(NSDate *)v192->_endDate timeIntervalSinceDate:v192->_startDate];
    v299 = [NSNumber numberWithDouble:?];
    v300 = [(MOMetric *)v192 metrics];
    [v300 setObject:v299 forKeyedSubscript:@"Storytelling_MaxDeltaBetweenMomentsBoundariesIncluded"];

    v292 = [(MOMetric *)v192 metrics];
    [v292 setObject:&off_10036E7B0 forKeyedSubscript:@"Storytelling_SDDeltaBetweenMomentsBoundariesIncluded"];
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
  v309 = [(MOMetric *)v294 metrics];
  [v309 setObject:v308 forKeyedSubscript:@"Workout_NumWorkouts"];

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
      v315 = [v313 startDate];
      v316 = [v313 endDate];
      v317 = [v314 initWithStartDate:v315 endDate:v316];

      v318 = [(MOPromptMetrics *)v1205 doesInterval:v317 overlapWithAnyIntervalFromArray:v1158];
      v319 = [v313 creationDate];
      if (!v319)
      {
        break;
      }

      v320 = v319;
      v321 = [v313 startDate];
      if (!v321)
      {
        p_cache = (&OBJC_METACLASS___MOEngagementHistoryManager + 16);
        goto LABEL_147;
      }

      v322 = v321;
      v323 = [v313 endDate];

      if (!v323)
      {
        break;
      }

      if (v310)
      {
        v324 = [v1198 objectAtIndexedSubscript:v310 - 1];
        v325 = [v324 endDate];

        if (v325)
        {
          v326 = [v313 endDate];
          v327 = [v1198 objectAtIndexedSubscript:v310 - 1];
          v328 = [v327 endDate];
          [v326 timeIntervalSinceDate:v328];
          v329 = [NSNumber numberWithDouble:?];
          [v1148 addObject:v329];
        }
      }

      v330 = (v311 + 1);
      v331 = [v313 creationDate];
      v332 = [v313 endDate];
      [v331 timeIntervalSinceDate:v332];
      v334 = v333;

      v335 = [NSNumber numberWithDouble:v334];
      [v1134 addObject:v335];

      if (v311 > 9)
      {
        goto LABEL_145;
      }

      v336 = [v313 workoutType];
      v337 = [HKWorkout _workoutActivityTypeFromString:v336];

      p_cache = (&OBJC_METACLASS___MOEngagementHistoryManager + 16);
      if (v311 <= 9)
      {
        v339 = *(&off_100340300 + v311);
        v1186 = *(&off_100340350 + v311);
        v1203 = *(&off_1003403A0 + v311);
        v311 = (v311 + 1);
        v340 = [NSNumber numberWithUnsignedInteger:v337];
        v341 = [(MOMetric *)v1205 metrics];
        [v341 setObject:v340 forKeyedSubscript:v339];

        v342 = [v313 startDate];
        [(NSDate *)v1146 timeIntervalSinceDate:v342];
        v343 = [NSNumber numberWithDouble:?];
        v344 = [MOMetric binForNumber:v343 bins:v1147];
        v345 = [(MOMetric *)v1205 metrics];
        [v345 setObject:v344 forKeyedSubscript:v1186];

        v320 = [v313 endDate];
        [(NSDate *)v1146 timeIntervalSinceDate:v320];
        v346 = [NSNumber numberWithDouble:?];
        v347 = [MOMetric binForNumber:v346 bins:v1147];
        v348 = [(MOMetric *)v1205 metrics];
        [v348 setObject:v347 forKeyedSubscript:v1203];

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
        v350 = v1205;
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
    v353 = [(MOMetric *)v350 metrics];
    [v353 setObject:v352 forKeyedSubscript:@"Workout_PercentageOfWorkoutEventsNoLOI"];

    p_cache = &OBJC_METACLASS___MOEngagementHistoryManager.cache;
  }

  [p_cache + 363 meanOf:v1134];
  v355 = v354 = p_cache;
  v356 = [(MOMetric *)v350 metrics];
  [v356 setObject:v355 forKeyedSubscript:@"Workout_AverageWorkoutLatency"];

  if ([v1148 count])
  {
    v357 = [v354 + 363 meanOf:v1148];
    v358 = [(MOMetric *)v350 metrics];
    [v358 setObject:v357 forKeyedSubscript:@"Workout_MeanDeltaBetweenWorkouts"];

    v359 = [v1148 valueForKeyPath:@"@min.doubleValue"];
    v360 = [(MOMetric *)v350 metrics];
    [v360 setObject:v359 forKeyedSubscript:@"Workout_MinDeltaBetweenWorkouts"];

    v361 = [v1148 valueForKeyPath:@"@max.doubleValue"];
    v362 = [(MOMetric *)v350 metrics];
    [v362 setObject:v361 forKeyedSubscript:@"Workout_MaxDeltaBetweenWorkouts"];

    v363 = [v354 + 363 standardDeviationOf:v1148];
    v364 = [(MOMetric *)v350 metrics];
    [v364 setObject:v363 forKeyedSubscript:@"Workout_SDDeltaBetweenWorkouts"];
  }

  v365 = [v307 count];
  v366 = v351[190];
  if (v365)
  {
    v367 = [v307 firstObject];
    v368 = [v367 endDate];
    [v368 timeIntervalSinceDate:v350->_startDate];
    v369 = [v366 numberWithDouble:?];
    v370 = v1148;
    [v1148 addObject:v369];

    v371 = v351[190];
    v372 = v350->_endDate;
    v373 = [v307 lastObject];
    v374 = [v373 endDate];
    [(NSDate *)v372 timeIntervalSinceDate:v374];
    v375 = [v371 numberWithDouble:?];
    [v1148 addObject:v375];

    v376 = [MOPromptMetrics meanOf:v1148];
    v377 = [(MOMetric *)v350 metrics];
    [v377 setObject:v376 forKeyedSubscript:@"Workout_MeanDeltaBetweenWorkoutsBoundariesIncluded"];

    v378 = [v1148 valueForKeyPath:@"@min.doubleValue"];
    v379 = [(MOMetric *)v350 metrics];
    [v379 setObject:v378 forKeyedSubscript:@"Workout_MinDeltaBetweenWorkoutsBoundariesIncluded"];

    v380 = [v1148 valueForKeyPath:@"@max.doubleValue"];
    v381 = [(MOMetric *)v350 metrics];
    [v381 setObject:v380 forKeyedSubscript:@"Workout_MaxDeltaBetweenWorkoutsBoundariesIncluded"];

    v382 = [MOPromptMetrics standardDeviationOf:v1148];
    v383 = [(MOMetric *)v350 metrics];
    [v383 setObject:v382 forKeyedSubscript:@"Workout_SDDeltaBetweenWorkoutsBoundariesIncluded"];
  }

  else
  {
    [(NSDate *)v350->_endDate timeIntervalSinceDate:v350->_startDate];
    v384 = [v366 numberWithDouble:?];
    v385 = [(MOMetric *)v350 metrics];
    [v385 setObject:v384 forKeyedSubscript:@"Workout_MeanDeltaBetweenWorkoutsBoundariesIncluded"];

    v386 = v351[190];
    [(NSDate *)v350->_endDate timeIntervalSinceDate:v350->_startDate];
    v387 = [v386 numberWithDouble:?];
    v388 = [(MOMetric *)v350 metrics];
    [v388 setObject:v387 forKeyedSubscript:@"Workout_MinDeltaBetweenWorkoutsBoundariesIncluded"];

    v389 = v351[190];
    [(NSDate *)v350->_endDate timeIntervalSinceDate:v350->_startDate];
    v390 = [v389 numberWithDouble:?];
    v391 = [(MOMetric *)v350 metrics];
    [v391 setObject:v390 forKeyedSubscript:@"Workout_MaxDeltaBetweenWorkoutsBoundariesIncluded"];

    v382 = [(MOMetric *)v350 metrics];
    [v382 setObject:&off_10036E7B0 forKeyedSubscript:@"Workout_SDDeltaBetweenWorkoutsBoundariesIncluded"];
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
  v398 = [(MOMetric *)v350 metrics];
  [v398 setObject:v397 forKeyedSubscript:@"Proactive_NumAllEvents"];

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
        v406 = [v405 creationDate];
        if (v406)
        {
          v407 = v406;
          v408 = [v405 endDate];

          if (v408)
          {
            v409 = [v405 creationDate];
            v410 = [v405 endDate];
            [v409 timeIntervalSinceDate:v410];
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

  v414 = v1205;
  if ([v399 count])
  {
    v415 = [MOPromptMetrics meanOf:v399];
    v416 = [(MOMetric *)v1205 metrics];
    [v416 setObject:v415 forKeyedSubscript:@"Proactive_EventsAverageLatency"];

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
  v426 = [(MOMetric *)v1205 metrics];
  [v426 setObject:v425 forKeyedSubscript:@"Proactive_NumMediaOnRepeatEvents"];

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
      v432 = [v430 startDate];
      v433 = [v430 endDate];
      v434 = [v431 initWithStartDate:v432 endDate:v433];

      v435 = [(MOPromptMetrics *)v1205 doesInterval:v434 overlapWithAnyIntervalFromArray:v1158];
      v436 = [v430 creationDate];
      if (v436)
      {
        v437 = v436;
        v438 = [v430 startDate];
        if (!v438)
        {
          goto LABEL_183;
        }

        v439 = v438;
        v440 = [v430 endDate];

        if (v440)
        {
          break;
        }
      }

LABEL_184:
      v428 += v435;

      if ([v423 count] <= ++v427)
      {
        v461 = v428;
        v414 = v1205;
        v424 = &GEOPOICategoryGasStation_ptr;
        goto LABEL_188;
      }
    }

    if (v427)
    {
      v441 = [v423 objectAtIndexedSubscript:v427 - 1];
      v442 = [v441 endDate];

      if (v442)
      {
        v443 = [v430 endDate];
        v444 = [v423 objectAtIndexedSubscript:v427 - 1];
        v445 = [v444 endDate];
        [v443 timeIntervalSinceDate:v445];
        v446 = [NSNumber numberWithDouble:?];
        [v1148 addObject:v446];

        v423 = v1133;
      }
    }

    v447 = [v430 creationDate];
    v448 = [v430 endDate];
    [v447 timeIntervalSinceDate:v448];
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

    v454 = [v430 startDate];
    [(NSDate *)v1146 timeIntervalSinceDate:v454];
    v455 = [NSNumber numberWithDouble:?];
    v456 = [MOMetric binForNumber:v455 bins:v1147];
    v457 = [(MOMetric *)v1205 metrics];
    [v457 setObject:v456 forKeyedSubscript:v453];

    v437 = [v430 endDate];
    [(NSDate *)v1146 timeIntervalSinceDate:v437];
    v458 = [NSNumber numberWithDouble:?];
    v459 = [MOMetric binForNumber:v458 bins:v1147];
    v460 = [(MOMetric *)v1205 metrics];
    [v460 setObject:v459 forKeyedSubscript:v1170];

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
    v463 = [(MOMetric *)v414 metrics];
    [v463 setObject:v462 forKeyedSubscript:@"Proactive_PercentageOfMediaOnRepeatEventsNoLOI"];
  }

  if ([v1204 count])
  {
    v464 = [MOPromptMetrics meanOf:v1204];
    v465 = [(MOMetric *)v414 metrics];
    [v465 setObject:v464 forKeyedSubscript:@"Proactive_MediaOnRepeatAverageLatency"];

    [v1204 removeAllObjects];
  }

  if ([v1148 count])
  {
    v466 = [MOPromptMetrics meanOf:v1148];
    v467 = [(MOMetric *)v414 metrics];
    [v467 setObject:v466 forKeyedSubscript:@"Proactive_MeanDeltaBetweenMediaOnRepeatEvents"];

    v468 = [v1148 valueForKeyPath:@"@min.doubleValue"];
    v469 = [(MOMetric *)v414 metrics];
    [v469 setObject:v468 forKeyedSubscript:@"Proactive_MinDeltaBetweenMediaOnRepeatEvents"];

    v470 = [v1148 valueForKeyPath:@"@max.doubleValue"];
    v471 = [(MOMetric *)v414 metrics];
    [v471 setObject:v470 forKeyedSubscript:@"Proactive_MaxDeltaBetweenMediaOnRepeatEvents"];

    v472 = [MOPromptMetrics standardDeviationOf:v1148];
    v473 = [(MOMetric *)v414 metrics];
    [v473 setObject:v472 forKeyedSubscript:@"Proactive_SDDeltaBetweenMediaOnRepeatEvents"];
  }

  v474 = [v423 count];
  v475 = v424[190];
  if (v474)
  {
    v476 = [v423 firstObject];
    v477 = [v476 endDate];
    [v477 timeIntervalSinceDate:v414->_startDate];
    v478 = [v475 numberWithDouble:?];
    v479 = v1148;
    [v1148 addObject:v478];

    v480 = v424[190];
    v481 = v414->_endDate;
    v482 = [v423 lastObject];
    v483 = [v482 endDate];
    [(NSDate *)v481 timeIntervalSinceDate:v483];
    v484 = [v480 numberWithDouble:?];
    [v1148 addObject:v484];

    v485 = [MOPromptMetrics meanOf:v1148];
    v486 = [(MOMetric *)v414 metrics];
    [v486 setObject:v485 forKeyedSubscript:@"Proactive_MeanDeltaBetweenMediaOnRepeatEventsBoundariesIncluded"];

    v487 = [v1148 valueForKeyPath:@"@min.doubleValue"];
    v488 = [(MOMetric *)v414 metrics];
    [v488 setObject:v487 forKeyedSubscript:@"Proactive_MinDeltaBetweenMediaOnRepeatEventsBoundariesIncluded"];

    v489 = [v1148 valueForKeyPath:@"@max.doubleValue"];
    v490 = [(MOMetric *)v414 metrics];
    [v490 setObject:v489 forKeyedSubscript:@"Proactive_MaxDeltaBetweenMediaOnRepeatEventsBoundariesIncluded"];

    v491 = [MOPromptMetrics standardDeviationOf:v1148];
    v492 = [(MOMetric *)v414 metrics];
    [v492 setObject:v491 forKeyedSubscript:@"Proactive_SDDeltaBetweenMediaOnRepeatEventsBoundariesIncluded"];

    v493 = v414;
    v494 = v424;
  }

  else
  {
    [(NSDate *)v414->_endDate timeIntervalSinceDate:v414->_startDate];
    v495 = [v475 numberWithDouble:?];
    v496 = [(MOMetric *)v414 metrics];
    [v496 setObject:v495 forKeyedSubscript:@"Proactive_MeanDeltaBetweenMediaOnRepeatEventsBoundariesIncluded"];

    v497 = v424[190];
    [(NSDate *)v414->_endDate timeIntervalSinceDate:v414->_startDate];
    v498 = [v497 numberWithDouble:?];
    v499 = [(MOMetric *)v414 metrics];
    [v499 setObject:v498 forKeyedSubscript:@"Proactive_MinDeltaBetweenMediaOnRepeatEventsBoundariesIncluded"];

    v500 = v424[190];
    [(NSDate *)v414->_endDate timeIntervalSinceDate:v414->_startDate];
    v501 = [v500 numberWithDouble:?];
    v502 = [(MOMetric *)v414 metrics];
    [v502 setObject:v501 forKeyedSubscript:@"Proactive_MaxDeltaBetweenMediaOnRepeatEventsBoundariesIncluded"];

    v491 = [(MOMetric *)v414 metrics];
    [v491 setObject:&off_10036E7B0 forKeyedSubscript:@"Proactive_SDDeltaBetweenMediaOnRepeatEventsBoundariesIncluded"];
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
  v511 = [(MOMetric *)v493 metrics];
  [v511 setObject:v510 forKeyedSubscript:@"Proactive_NumTopicEvents"];

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
      v518 = [v516 startDate];
      v519 = [v516 endDate];
      v520 = [v517 initWithStartDate:v518 endDate:v519];

      v521 = [(MOPromptMetrics *)v1205 doesInterval:v520 overlapWithAnyIntervalFromArray:v1158];
      v522 = [v516 creationDate];
      if (v522)
      {
        v523 = v522;
        v524 = [v516 startDate];
        if (!v524)
        {
          goto LABEL_210;
        }

        v525 = v524;
        v526 = [v516 endDate];

        if (v526)
        {
          break;
        }
      }

LABEL_211:
      v513 += v521;

      if ([v515 count] <= ++v512)
      {
        v547 = v513;
        v548 = v1205;
        v549 = 0x100335000;
        goto LABEL_215;
      }
    }

    if (v512)
    {
      v527 = [v515 objectAtIndexedSubscript:v512 - 1];
      v528 = [v527 endDate];

      if (v528)
      {
        v529 = [v516 endDate];
        v530 = [v515 objectAtIndexedSubscript:v512 - 1];
        v531 = [v530 endDate];
        [v529 timeIntervalSinceDate:v531];
        v532 = [NSNumber numberWithDouble:?];
        [v1148 addObject:v532];

        v515 = v1171;
      }
    }

    v533 = [v516 creationDate];
    v534 = [v516 endDate];
    [v533 timeIntervalSinceDate:v534];
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

    v540 = [v516 startDate];
    [(NSDate *)v1146 timeIntervalSinceDate:v540];
    v541 = [NSNumber numberWithDouble:?];
    v542 = [MOMetric binForNumber:v541 bins:v1147];
    v543 = [(MOMetric *)v1205 metrics];
    [v543 setObject:v542 forKeyedSubscript:v539];

    v523 = [v516 endDate];
    [(NSDate *)v1146 timeIntervalSinceDate:v523];
    v544 = [NSNumber numberWithDouble:?];
    v545 = [MOMetric binForNumber:v544 bins:v1147];
    v546 = [(MOMetric *)v1205 metrics];
    [v546 setObject:v545 forKeyedSubscript:v1165];

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
    v551 = [(MOMetric *)v548 metrics];
    [v551 setObject:v550 forKeyedSubscript:@"Proactive_PercentageOfTopicEventsNoLOI"];
  }

  if ([v1204 count])
  {
    v552 = [MOPromptMetrics meanOf:v1204];
    v553 = [(MOMetric *)v548 metrics];
    [v553 setObject:v552 forKeyedSubscript:@"Proactive_TopicAverageLatency"];

    [v1204 removeAllObjects];
  }

  if ([v1148 count])
  {
    v554 = [MOPromptMetrics meanOf:v1148];
    v555 = [(MOMetric *)v548 metrics];
    [v555 setObject:v554 forKeyedSubscript:@"Proactive_MeanDeltaBetweenTopicEvents"];

    v556 = [v1148 valueForKeyPath:@"@min.doubleValue"];
    v557 = [(MOMetric *)v548 metrics];
    [v557 setObject:v556 forKeyedSubscript:@"Proactive_MinDeltaBetweenTopicEvents"];

    v558 = [v1148 valueForKeyPath:@"@max.doubleValue"];
    v559 = [(MOMetric *)v548 metrics];
    [v559 setObject:v558 forKeyedSubscript:@"Proactive_MaxDeltaBetweenTopicEvents"];

    v560 = [MOPromptMetrics standardDeviationOf:v1148];
    v561 = [(MOMetric *)v548 metrics];
    [v561 setObject:v560 forKeyedSubscript:@"Proactive_SDDeltaBetweenTopicEvents"];
  }

  v562 = [v515 count];
  v563 = *(v549 + 1520);
  if (v562)
  {
    v564 = [v515 firstObject];
    v565 = [v564 endDate];
    [v565 timeIntervalSinceDate:v548->_startDate];
    v566 = [v563 numberWithDouble:?];
    v567 = v1148;
    [v1148 addObject:v566];

    v568 = *(v549 + 1520);
    v569 = v548->_endDate;
    v570 = [v515 lastObject];
    v571 = [v570 endDate];
    [(NSDate *)v569 timeIntervalSinceDate:v571];
    v572 = [v568 numberWithDouble:?];
    [v1148 addObject:v572];

    v573 = [MOPromptMetrics meanOf:v1148];
    v574 = [(MOMetric *)v548 metrics];
    [v574 setObject:v573 forKeyedSubscript:@"Proactive_MeanDeltaBetweenTopicEventsBoundariesIncluded"];

    v575 = [v1148 valueForKeyPath:@"@min.doubleValue"];
    v576 = [(MOMetric *)v548 metrics];
    [v576 setObject:v575 forKeyedSubscript:@"Proactive_MinDeltaBetweenTopicEventsBoundariesIncluded"];

    v577 = [v1148 valueForKeyPath:@"@max.doubleValue"];
    v578 = [(MOMetric *)v548 metrics];
    [v578 setObject:v577 forKeyedSubscript:@"Proactive_MaxDeltaBetweenTopicEventsBoundariesIncluded"];

    v579 = [MOPromptMetrics standardDeviationOf:v1148];
    v580 = [(MOMetric *)v548 metrics];
    [v580 setObject:v579 forKeyedSubscript:@"Proactive_SDDeltaBetweenTopicEventsBoundariesIncluded"];

    v581 = v548;
    v582 = v549;
  }

  else
  {
    [(NSDate *)v548->_endDate timeIntervalSinceDate:v548->_startDate];
    v583 = [v563 numberWithDouble:?];
    v584 = [(MOMetric *)v548 metrics];
    [v584 setObject:v583 forKeyedSubscript:@"Proactive_MeanDeltaBetweenTopicEventsBoundariesIncluded"];

    v585 = *(v549 + 1520);
    [(NSDate *)v548->_endDate timeIntervalSinceDate:v548->_startDate];
    v586 = [v585 numberWithDouble:?];
    v587 = [(MOMetric *)v548 metrics];
    [v587 setObject:v586 forKeyedSubscript:@"Proactive_MinDeltaBetweenTopicEventsBoundariesIncluded"];

    v588 = *(v549 + 1520);
    [(NSDate *)v548->_endDate timeIntervalSinceDate:v548->_startDate];
    v589 = [v588 numberWithDouble:?];
    v590 = [(MOMetric *)v548 metrics];
    [v590 setObject:v589 forKeyedSubscript:@"Proactive_MaxDeltaBetweenTopicEventsBoundariesIncluded"];

    v579 = [(MOMetric *)v548 metrics];
    [v579 setObject:&off_10036E7B0 forKeyedSubscript:@"Proactive_SDDeltaBetweenTopicEventsBoundariesIncluded"];
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
  v599 = [(MOMetric *)v581 metrics];
  [v599 setObject:v598 forKeyedSubscript:@"Proactive_NumTravelEvents"];

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
      v606 = [v604 startDate];
      v607 = [v604 endDate];
      v608 = [v605 initWithStartDate:v606 endDate:v607];

      v609 = [(MOPromptMetrics *)v1205 doesInterval:v608 overlapWithAnyIntervalFromArray:v1158];
      v610 = [v604 creationDate];
      if (v610)
      {
        v611 = v610;
        v612 = [v604 startDate];
        if (!v612)
        {
          goto LABEL_237;
        }

        v613 = v612;
        v614 = [v604 endDate];

        if (v614)
        {
          break;
        }
      }

LABEL_238:
      v601 += v609;

      if ([v603 count] <= ++v600)
      {
        v635 = v601;
        v636 = v1205;
        v637 = 0x100335000;
        goto LABEL_242;
      }
    }

    if (v600)
    {
      v615 = [v603 objectAtIndexedSubscript:v600 - 1];
      v616 = [v615 endDate];

      if (v616)
      {
        v617 = [v604 endDate];
        v618 = [v603 objectAtIndexedSubscript:v600 - 1];
        v619 = [v618 endDate];
        [v617 timeIntervalSinceDate:v619];
        v620 = [NSNumber numberWithDouble:?];
        [v1148 addObject:v620];

        v603 = v1166;
      }
    }

    v621 = [v604 creationDate];
    v622 = [v604 endDate];
    [v621 timeIntervalSinceDate:v622];
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

    v628 = [v604 startDate];
    [(NSDate *)v1146 timeIntervalSinceDate:v628];
    v629 = [NSNumber numberWithDouble:?];
    v630 = [MOMetric binForNumber:v629 bins:v1147];
    v631 = [(MOMetric *)v1205 metrics];
    [v631 setObject:v630 forKeyedSubscript:v627];

    v611 = [v604 endDate];
    [(NSDate *)v1146 timeIntervalSinceDate:v611];
    v632 = [NSNumber numberWithDouble:?];
    v633 = [MOMetric binForNumber:v632 bins:v1147];
    v634 = [(MOMetric *)v1205 metrics];
    [v634 setObject:v633 forKeyedSubscript:objb];

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
    v639 = [(MOMetric *)v636 metrics];
    [v639 setObject:v638 forKeyedSubscript:@"Proactive_PercentageOfTravelEventsNoLOI"];
  }

  if ([v1204 count])
  {
    v640 = [MOPromptMetrics meanOf:v1204];
    v641 = [(MOMetric *)v636 metrics];
    [v641 setObject:v640 forKeyedSubscript:@"Proactive_TravelAverageLatency"];

    [v1204 removeAllObjects];
  }

  if ([v1148 count])
  {
    v642 = [MOPromptMetrics meanOf:v1148];
    v643 = [(MOMetric *)v636 metrics];
    [v643 setObject:v642 forKeyedSubscript:@"Proactive_MeanDeltaBetweenTravelEvents"];

    v644 = [v1148 valueForKeyPath:@"@min.doubleValue"];
    v645 = [(MOMetric *)v636 metrics];
    [v645 setObject:v644 forKeyedSubscript:@"Proactive_MinDeltaBetweenTravelEvents"];

    v646 = [v1148 valueForKeyPath:@"@max.doubleValue"];
    v647 = [(MOMetric *)v636 metrics];
    [v647 setObject:v646 forKeyedSubscript:@"Proactive_MaxDeltaBetweenTravelEvents"];

    v648 = [MOPromptMetrics standardDeviationOf:v1148];
    v649 = [(MOMetric *)v636 metrics];
    [v649 setObject:v648 forKeyedSubscript:@"Proactive_SDDeltaBetweenTravelEvents"];
  }

  v650 = [v603 count];
  v651 = *(v637 + 1520);
  if (v650)
  {
    v652 = [v603 firstObject];
    v653 = [v652 endDate];
    [v653 timeIntervalSinceDate:v636->_startDate];
    v654 = [v651 numberWithDouble:?];
    v655 = v1148;
    [v1148 addObject:v654];

    v656 = *(v637 + 1520);
    v657 = v636->_endDate;
    v658 = [v603 lastObject];
    v659 = [v658 endDate];
    [(NSDate *)v657 timeIntervalSinceDate:v659];
    v660 = [v656 numberWithDouble:?];
    [v1148 addObject:v660];

    v661 = [MOPromptMetrics meanOf:v1148];
    v662 = [(MOMetric *)v636 metrics];
    [v662 setObject:v661 forKeyedSubscript:@"Proactive_MeanDeltaBetweenTravelEventsBoundariesIncluded"];

    v663 = [v1148 valueForKeyPath:@"@min.doubleValue"];
    v664 = [(MOMetric *)v636 metrics];
    [v664 setObject:v663 forKeyedSubscript:@"Proactive_MinDeltaBetweenTravelEventsBoundariesIncluded"];

    v665 = [v1148 valueForKeyPath:@"@max.doubleValue"];
    v666 = [(MOMetric *)v636 metrics];
    [v666 setObject:v665 forKeyedSubscript:@"Proactive_MaxDeltaBetweenTravelEventsBoundariesIncluded"];

    v667 = [MOPromptMetrics standardDeviationOf:v1148];
    v668 = [(MOMetric *)v636 metrics];
    [v668 setObject:v667 forKeyedSubscript:@"Proactive_SDDeltaBetweenTravelEventsBoundariesIncluded"];

    v669 = v636;
    v670 = v637;
  }

  else
  {
    [(NSDate *)v636->_endDate timeIntervalSinceDate:v636->_startDate];
    v671 = [v651 numberWithDouble:?];
    v672 = [(MOMetric *)v636 metrics];
    [v672 setObject:v671 forKeyedSubscript:@"Proactive_MeanDeltaBetweenTravelEventsBoundariesIncluded"];

    v673 = *(v637 + 1520);
    [(NSDate *)v636->_endDate timeIntervalSinceDate:v636->_startDate];
    v674 = [v673 numberWithDouble:?];
    v675 = [(MOMetric *)v636 metrics];
    [v675 setObject:v674 forKeyedSubscript:@"Proactive_MinDeltaBetweenTravelEventsBoundariesIncluded"];

    v676 = *(v637 + 1520);
    [(NSDate *)v636->_endDate timeIntervalSinceDate:v636->_startDate];
    v677 = [v676 numberWithDouble:?];
    v678 = [(MOMetric *)v636 metrics];
    [v678 setObject:v677 forKeyedSubscript:@"Proactive_MaxDeltaBetweenTravelEventsBoundariesIncluded"];

    v667 = [(MOMetric *)v636 metrics];
    [v667 setObject:&off_10036E7B0 forKeyedSubscript:@"Proactive_SDDeltaBetweenTravelEventsBoundariesIncluded"];
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
  v687 = [(MOMetric *)v669 metrics];
  [v687 setObject:v686 forKeyedSubscript:@"Proactive_NumSharedWithYouEvents"];

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
      v694 = [v692 startDate];
      v695 = [v692 endDate];
      v696 = [v693 initWithStartDate:v694 endDate:v695];

      v697 = [(MOPromptMetrics *)v1205 doesInterval:v696 overlapWithAnyIntervalFromArray:v1158];
      v698 = [v692 creationDate];
      if (v698)
      {
        v699 = v698;
        v700 = [v692 startDate];
        if (!v700)
        {
          goto LABEL_264;
        }

        v701 = v700;
        v702 = [v692 endDate];

        if (v702)
        {
          break;
        }
      }

LABEL_265:
      v689 += v697;

      if ([v691 count] <= ++v688)
      {
        v723 = v689;
        v724 = v1205;
        v725 = 0x100335000;
        goto LABEL_269;
      }
    }

    if (v688)
    {
      v703 = [v691 objectAtIndexedSubscript:v688 - 1];
      v704 = [v703 endDate];

      if (v704)
      {
        v705 = [v692 endDate];
        v706 = [v691 objectAtIndexedSubscript:v688 - 1];
        v707 = [v706 endDate];
        [v705 timeIntervalSinceDate:v707];
        v708 = [NSNumber numberWithDouble:?];
        [v1148 addObject:v708];

        v691 = objc;
      }
    }

    v709 = [v692 creationDate];
    v710 = [v692 endDate];
    [v709 timeIntervalSinceDate:v710];
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

    v716 = [v692 startDate];
    [(NSDate *)v1146 timeIntervalSinceDate:v716];
    v717 = [NSNumber numberWithDouble:?];
    v718 = [MOMetric binForNumber:v717 bins:v1147];
    v719 = [(MOMetric *)v1205 metrics];
    [v719 setObject:v718 forKeyedSubscript:v715];

    v699 = [v692 endDate];
    [(NSDate *)v1146 timeIntervalSinceDate:v699];
    v720 = [NSNumber numberWithDouble:?];
    v721 = [MOMetric binForNumber:v720 bins:v1147];
    v722 = [(MOMetric *)v1205 metrics];
    [v722 setObject:v721 forKeyedSubscript:v1151];

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
    v727 = [(MOMetric *)v724 metrics];
    [v727 setObject:v726 forKeyedSubscript:@"Proactive_PercentageOfSharedWithYouEventsNoLOI"];
  }

  if ([v1204 count])
  {
    v728 = [MOPromptMetrics meanOf:v1204];
    v729 = [(MOMetric *)v724 metrics];
    [v729 setObject:v728 forKeyedSubscript:@"Proactive_SharedWithYouAverageLatency"];

    [v1204 removeAllObjects];
  }

  if ([v1148 count])
  {
    v730 = [MOPromptMetrics meanOf:v1148];
    v731 = [(MOMetric *)v724 metrics];
    [v731 setObject:v730 forKeyedSubscript:@"Proactive_MeanDeltaBetweenSharedWithYouEvents"];

    v732 = [v1148 valueForKeyPath:@"@min.doubleValue"];
    v733 = [(MOMetric *)v724 metrics];
    [v733 setObject:v732 forKeyedSubscript:@"Proactive_MinDeltaBetweenSharedWithYouEvents"];

    v734 = [v1148 valueForKeyPath:@"@max.doubleValue"];
    v735 = [(MOMetric *)v724 metrics];
    [v735 setObject:v734 forKeyedSubscript:@"Proactive_MaxDeltaBetweenSharedWithYouEvents"];

    v736 = [MOPromptMetrics standardDeviationOf:v1148];
    v737 = [(MOMetric *)v724 metrics];
    [v737 setObject:v736 forKeyedSubscript:@"Proactive_SDDeltaBetweenSharedWithYouEvents"];
  }

  v738 = [v691 count];
  v739 = *(v725 + 1520);
  if (v738)
  {
    v740 = [v691 firstObject];
    v741 = [v740 endDate];
    [v741 timeIntervalSinceDate:v724->_startDate];
    v742 = [v739 numberWithDouble:?];
    v743 = v1148;
    [v1148 addObject:v742];

    v744 = *(v725 + 1520);
    v745 = v724->_endDate;
    v746 = [v691 lastObject];
    v747 = [v746 endDate];
    [(NSDate *)v745 timeIntervalSinceDate:v747];
    v748 = [v744 numberWithDouble:?];
    [v1148 addObject:v748];

    v749 = [MOPromptMetrics meanOf:v1148];
    v750 = [(MOMetric *)v724 metrics];
    [v750 setObject:v749 forKeyedSubscript:@"Proactive_MeanDeltaBetweenSharedWithYouEventsBoundariesIncluded"];

    v751 = [v1148 valueForKeyPath:@"@min.doubleValue"];
    v752 = [(MOMetric *)v724 metrics];
    [v752 setObject:v751 forKeyedSubscript:@"Proactive_MinDeltaBetweenSharedWithYouEventsBoundariesIncluded"];

    v753 = [v1148 valueForKeyPath:@"@max.doubleValue"];
    v754 = [(MOMetric *)v724 metrics];
    [v754 setObject:v753 forKeyedSubscript:@"Proactive_MaxDeltaBetweenSharedWithYouEventsBoundariesIncluded"];

    v755 = [MOPromptMetrics standardDeviationOf:v1148];
    v756 = [(MOMetric *)v724 metrics];
    [v756 setObject:v755 forKeyedSubscript:@"Proactive_SDDeltaBetweenSharedWithYouEventsBoundariesIncluded"];

    v757 = v724;
    v758 = v725;
  }

  else
  {
    [(NSDate *)v724->_endDate timeIntervalSinceDate:v724->_startDate];
    v759 = [v739 numberWithDouble:?];
    v760 = [(MOMetric *)v724 metrics];
    [v760 setObject:v759 forKeyedSubscript:@"Proactive_MeanDeltaBetweenSharedWithYouEventsBoundariesIncluded"];

    v761 = *(v725 + 1520);
    [(NSDate *)v724->_endDate timeIntervalSinceDate:v724->_startDate];
    v762 = [v761 numberWithDouble:?];
    v763 = [(MOMetric *)v724 metrics];
    [v763 setObject:v762 forKeyedSubscript:@"Proactive_MinDeltaBetweenSharedWithYouEventsBoundariesIncluded"];

    v764 = *(v725 + 1520);
    [(NSDate *)v724->_endDate timeIntervalSinceDate:v724->_startDate];
    v765 = [v764 numberWithDouble:?];
    v766 = [(MOMetric *)v724 metrics];
    [v766 setObject:v765 forKeyedSubscript:@"Proactive_MaxDeltaBetweenSharedWithYouEventsBoundariesIncluded"];

    v755 = [(MOMetric *)v724 metrics];
    [v755 setObject:&off_10036E7B0 forKeyedSubscript:@"Proactive_SDDeltaBetweenSharedWithYouEventsBoundariesIncluded"];
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
  v775 = [(MOMetric *)v757 metrics];
  [v775 setObject:v774 forKeyedSubscript:@"Proactive_NumSignificantContactEvents"];

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
      v782 = [v780 startDate];
      v783 = [v780 endDate];
      v784 = [v781 initWithStartDate:v782 endDate:v783];

      v785 = [(MOPromptMetrics *)v1205 doesInterval:v784 overlapWithAnyIntervalFromArray:v1158];
      v786 = [v780 creationDate];
      if (v786)
      {
        v787 = v786;
        v788 = [v780 startDate];
        if (!v788)
        {
          goto LABEL_291;
        }

        v789 = v788;
        v790 = [v780 endDate];

        if (v790)
        {
          break;
        }
      }

LABEL_292:
      v777 += v785;

      if ([v779 count] <= ++v776)
      {
        v811 = v777;
        v812 = v1205;
        v813 = 0x100335000;
        goto LABEL_296;
      }
    }

    if (v776)
    {
      v791 = [v779 objectAtIndexedSubscript:v776 - 1];
      v792 = [v791 endDate];

      if (v792)
      {
        v793 = [v780 endDate];
        v794 = [v779 objectAtIndexedSubscript:v776 - 1];
        v795 = [v794 endDate];
        [v793 timeIntervalSinceDate:v795];
        v796 = [NSNumber numberWithDouble:?];
        [v1148 addObject:v796];

        v779 = v1152;
      }
    }

    v797 = [v780 creationDate];
    v798 = [v780 endDate];
    [v797 timeIntervalSinceDate:v798];
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

    v804 = [v780 startDate];
    [(NSDate *)v1146 timeIntervalSinceDate:v804];
    v805 = [NSNumber numberWithDouble:?];
    v806 = [MOMetric binForNumber:v805 bins:v1147];
    v807 = [(MOMetric *)v1205 metrics];
    [v807 setObject:v806 forKeyedSubscript:v803];

    v787 = [v780 endDate];
    [(NSDate *)v1146 timeIntervalSinceDate:v787];
    v808 = [NSNumber numberWithDouble:?];
    v809 = [MOMetric binForNumber:v808 bins:v1147];
    v810 = [(MOMetric *)v1205 metrics];
    [v810 setObject:v809 forKeyedSubscript:v1137];

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
    v815 = [(MOMetric *)v812 metrics];
    [v815 setObject:v814 forKeyedSubscript:@"Proactive_PercentageOfSignificantContactEventsNoLOI"];
  }

  if ([v1204 count])
  {
    v816 = [MOPromptMetrics meanOf:v1204];
    v817 = [(MOMetric *)v812 metrics];
    [v817 setObject:v816 forKeyedSubscript:@"Proactive_SignificantContactAverageLatency"];

    [v1204 removeAllObjects];
  }

  if ([v1148 count])
  {
    v818 = [MOPromptMetrics meanOf:v1148];
    v819 = [(MOMetric *)v812 metrics];
    [v819 setObject:v818 forKeyedSubscript:@"Proactive_MeanDeltaBetweenSignificantContactEvents"];

    v820 = [v1148 valueForKeyPath:@"@min.doubleValue"];
    v821 = [(MOMetric *)v812 metrics];
    [v821 setObject:v820 forKeyedSubscript:@"Proactive_MinDeltaBetweenSignificantContactEvents"];

    v822 = [v1148 valueForKeyPath:@"@max.doubleValue"];
    v823 = [(MOMetric *)v812 metrics];
    [v823 setObject:v822 forKeyedSubscript:@"Proactive_MaxDeltaBetweenSignificantContactEvents"];

    v824 = [MOPromptMetrics standardDeviationOf:v1148];
    v825 = [(MOMetric *)v812 metrics];
    [v825 setObject:v824 forKeyedSubscript:@"Proactive_SDDeltaBetweenSignificantContactEvents"];
  }

  v826 = [v779 count];
  v827 = *(v813 + 1520);
  if (v826)
  {
    v828 = [v779 firstObject];
    v829 = [v828 endDate];
    [v829 timeIntervalSinceDate:v812->_startDate];
    v830 = [v827 numberWithDouble:?];
    v831 = v1148;
    [v1148 addObject:v830];

    v832 = *(v813 + 1520);
    v833 = v812->_endDate;
    v834 = [v779 lastObject];
    v835 = [v834 endDate];
    [(NSDate *)v833 timeIntervalSinceDate:v835];
    v836 = [v832 numberWithDouble:?];
    [v1148 addObject:v836];

    v837 = [MOPromptMetrics meanOf:v1148];
    v838 = [(MOMetric *)v812 metrics];
    [v838 setObject:v837 forKeyedSubscript:@"Proactive_MeanDeltaBetweenSignificantContactEventsBoundariesIncluded"];

    v839 = [v1148 valueForKeyPath:@"@min.doubleValue"];
    v840 = [(MOMetric *)v812 metrics];
    [v840 setObject:v839 forKeyedSubscript:@"Proactive_MinDeltaBetweenSignificantContactEventsBoundariesIncluded"];

    v841 = [v1148 valueForKeyPath:@"@max.doubleValue"];
    v842 = [(MOMetric *)v812 metrics];
    [v842 setObject:v841 forKeyedSubscript:@"Proactive_MaxDeltaBetweenSignificantContactEventsBoundariesIncluded"];

    v843 = [MOPromptMetrics standardDeviationOf:v1148];
    v844 = [(MOMetric *)v812 metrics];
    [v844 setObject:v843 forKeyedSubscript:@"Proactive_SDDeltaBetweenSignificantContactEventsBoundariesIncluded"];

    v845 = v812;
    v846 = v813;
  }

  else
  {
    [(NSDate *)v812->_endDate timeIntervalSinceDate:v812->_startDate];
    v847 = [v827 numberWithDouble:?];
    v848 = [(MOMetric *)v812 metrics];
    [v848 setObject:v847 forKeyedSubscript:@"Proactive_MeanDeltaBetweenSignificantContactEventsBoundariesIncluded"];

    v849 = *(v813 + 1520);
    [(NSDate *)v812->_endDate timeIntervalSinceDate:v812->_startDate];
    v850 = [v849 numberWithDouble:?];
    v851 = [(MOMetric *)v812 metrics];
    [v851 setObject:v850 forKeyedSubscript:@"Proactive_MinDeltaBetweenSignificantContactEventsBoundariesIncluded"];

    v852 = *(v813 + 1520);
    [(NSDate *)v812->_endDate timeIntervalSinceDate:v812->_startDate];
    v853 = [v852 numberWithDouble:?];
    v854 = [(MOMetric *)v812 metrics];
    [v854 setObject:v853 forKeyedSubscript:@"Proactive_MaxDeltaBetweenSignificantContactEventsBoundariesIncluded"];

    v843 = [(MOMetric *)v812 metrics];
    [v843 setObject:&off_10036E7B0 forKeyedSubscript:@"Proactive_SDDeltaBetweenSignificantContactEventsBoundariesIncluded"];
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
  v863 = [(MOMetric *)v845 metrics];
  [v863 setObject:v862 forKeyedSubscript:@"Proactive_NumStructuredEvents"];

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
      v870 = [v868 startDate];
      v871 = [v868 endDate];
      v872 = [v869 initWithStartDate:v870 endDate:v871];

      v873 = [(MOPromptMetrics *)v1205 doesInterval:v872 overlapWithAnyIntervalFromArray:v1158];
      v874 = [v868 creationDate];
      if (v874)
      {
        v875 = v874;
        v876 = [v868 startDate];
        if (!v876)
        {
          goto LABEL_318;
        }

        v877 = v876;
        v878 = [v868 endDate];

        if (v878)
        {
          break;
        }
      }

LABEL_319:
      v865 += v873;

      if ([v867 count] <= ++v864)
      {
        v899 = v865;
        v900 = v1205;
        v901 = 0x100335000;
        goto LABEL_323;
      }
    }

    if (v864)
    {
      v879 = [v867 objectAtIndexedSubscript:v864 - 1];
      v880 = [v879 endDate];

      if (v880)
      {
        v881 = [v868 endDate];
        v882 = [v867 objectAtIndexedSubscript:v864 - 1];
        v883 = [v882 endDate];
        [v881 timeIntervalSinceDate:v883];
        v884 = [NSNumber numberWithDouble:?];
        [v1148 addObject:v884];

        v867 = v1138;
      }
    }

    v885 = [v868 creationDate];
    v886 = [v868 endDate];
    [v885 timeIntervalSinceDate:v886];
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

    v892 = [v868 startDate];
    [(NSDate *)v1146 timeIntervalSinceDate:v892];
    v893 = [NSNumber numberWithDouble:?];
    v894 = [MOMetric binForNumber:v893 bins:v1147];
    v895 = [(MOMetric *)v1205 metrics];
    [v895 setObject:v894 forKeyedSubscript:v891];

    v875 = [v868 endDate];
    [(NSDate *)v1146 timeIntervalSinceDate:v875];
    v896 = [NSNumber numberWithDouble:?];
    v897 = [MOMetric binForNumber:v896 bins:v1147];
    v898 = [(MOMetric *)v1205 metrics];
    [v898 setObject:v897 forKeyedSubscript:v1135];

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
    v903 = [(MOMetric *)v900 metrics];
    [v903 setObject:v902 forKeyedSubscript:@"Proactive_PercentageOfStructuredEventsNoLOI"];
  }

  if ([v1204 count])
  {
    v904 = [MOPromptMetrics meanOf:v1204];
    v905 = [(MOMetric *)v900 metrics];
    [v905 setObject:v904 forKeyedSubscript:@"Proactive_StructuredEventsAverageLatency"];

    [v1204 removeAllObjects];
  }

  if ([v1148 count])
  {
    v906 = [MOPromptMetrics meanOf:v1148];
    v907 = [(MOMetric *)v900 metrics];
    [v907 setObject:v906 forKeyedSubscript:@"Proactive_MeanDeltaBetweenStructuredEvents"];

    v908 = [v1148 valueForKeyPath:@"@min.doubleValue"];
    v909 = [(MOMetric *)v900 metrics];
    [v909 setObject:v908 forKeyedSubscript:@"Proactive_MinDeltaBetweenStructuredEvents"];

    v910 = [v1148 valueForKeyPath:@"@max.doubleValue"];
    v911 = [(MOMetric *)v900 metrics];
    [v911 setObject:v910 forKeyedSubscript:@"Proactive_MaxDeltaBetweenStructuredEvents"];

    v912 = [MOPromptMetrics standardDeviationOf:v1148];
    v913 = [(MOMetric *)v900 metrics];
    [v913 setObject:v912 forKeyedSubscript:@"Proactive_SDDeltaBetweenStructuredEvents"];
  }

  v914 = [v867 count];
  v915 = *(v901 + 1520);
  if (v914)
  {
    v916 = [v867 firstObject];
    v917 = [v916 endDate];
    [v917 timeIntervalSinceDate:v900->_startDate];
    v918 = [v915 numberWithDouble:?];
    v919 = v1148;
    [v1148 addObject:v918];

    v920 = *(v901 + 1520);
    v921 = v900->_endDate;
    v922 = [v867 lastObject];
    v923 = [v922 endDate];
    [(NSDate *)v921 timeIntervalSinceDate:v923];
    v924 = [v920 numberWithDouble:?];
    [v1148 addObject:v924];

    v925 = [MOPromptMetrics meanOf:v1148];
    v926 = [(MOMetric *)v900 metrics];
    [v926 setObject:v925 forKeyedSubscript:@"Proactive_MeanDeltaBetweenStructuredEventsBoundariesIncluded"];

    v927 = [v1148 valueForKeyPath:@"@min.doubleValue"];
    v928 = [(MOMetric *)v900 metrics];
    [v928 setObject:v927 forKeyedSubscript:@"Proactive_MinDeltaBetweenStructuredEventsBoundariesIncluded"];

    v929 = [v1148 valueForKeyPath:@"@max.doubleValue"];
    v930 = [(MOMetric *)v900 metrics];
    [v930 setObject:v929 forKeyedSubscript:@"Proactive_MaxDeltaBetweenStructuredEventsBoundariesIncluded"];

    v931 = [MOPromptMetrics standardDeviationOf:v1148];
    v932 = [(MOMetric *)v900 metrics];
    [v932 setObject:v931 forKeyedSubscript:@"Proactive_SDDeltaBetweenStructuredEventsBoundariesIncluded"];

    v933 = v900;
    v934 = v901;
  }

  else
  {
    [(NSDate *)v900->_endDate timeIntervalSinceDate:v900->_startDate];
    v935 = [v915 numberWithDouble:?];
    v936 = [(MOMetric *)v900 metrics];
    [v936 setObject:v935 forKeyedSubscript:@"Proactive_MeanDeltaBetweenStructuredEventsBoundariesIncluded"];

    v937 = *(v901 + 1520);
    [(NSDate *)v900->_endDate timeIntervalSinceDate:v900->_startDate];
    v938 = [v937 numberWithDouble:?];
    v939 = [(MOMetric *)v900 metrics];
    [v939 setObject:v938 forKeyedSubscript:@"Proactive_MinDeltaBetweenStructuredEventsBoundariesIncluded"];

    v940 = *(v901 + 1520);
    [(NSDate *)v900->_endDate timeIntervalSinceDate:v900->_startDate];
    v941 = [v940 numberWithDouble:?];
    v942 = [(MOMetric *)v900 metrics];
    [v942 setObject:v941 forKeyedSubscript:@"Proactive_MaxDeltaBetweenStructuredEventsBoundariesIncluded"];

    v931 = [(MOMetric *)v900 metrics];
    [v931 setObject:&off_10036E7B0 forKeyedSubscript:@"Proactive_SDDeltaBetweenStructuredEventsBoundariesIncluded"];
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
  v951 = [(MOMetric *)v933 metrics];
  [v951 setObject:v950 forKeyedSubscript:@"Proactive_NumLeisureMediaEvents"];

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
      v958 = [v956 startDate];
      v959 = [v956 endDate];
      v960 = [v957 initWithStartDate:v958 endDate:v959];

      v961 = [(MOPromptMetrics *)v1205 doesInterval:v960 overlapWithAnyIntervalFromArray:v1158];
      v962 = [v956 creationDate];
      if (v962)
      {
        v963 = v962;
        v964 = [v956 startDate];
        if (!v964)
        {
          goto LABEL_345;
        }

        v965 = v964;
        v966 = [v956 endDate];

        if (v966)
        {
          break;
        }
      }

LABEL_346:
      v953 += v961;

      if ([v955 count] <= ++v952)
      {
        v987 = v953;
        v988 = v1205;
        v989 = 0x100335000;
        goto LABEL_350;
      }
    }

    if (v952)
    {
      v967 = [v955 objectAtIndexedSubscript:v952 - 1];
      v968 = [v967 endDate];

      if (v968)
      {
        v969 = [v956 endDate];
        v970 = [v955 objectAtIndexedSubscript:v952 - 1];
        v971 = [v970 endDate];
        [v969 timeIntervalSinceDate:v971];
        v972 = [NSNumber numberWithDouble:?];
        [v1148 addObject:v972];

        v955 = v1136;
      }
    }

    v973 = [v956 creationDate];
    v974 = [v956 endDate];
    [v973 timeIntervalSinceDate:v974];
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

    v980 = [v956 startDate];
    [(NSDate *)v1146 timeIntervalSinceDate:v980];
    v981 = [NSNumber numberWithDouble:?];
    v982 = [MOMetric binForNumber:v981 bins:v1147];
    v983 = [(MOMetric *)v1205 metrics];
    [v983 setObject:v982 forKeyedSubscript:v979];

    v963 = [v956 endDate];
    [(NSDate *)v1146 timeIntervalSinceDate:v963];
    v984 = [NSNumber numberWithDouble:?];
    v985 = [MOMetric binForNumber:v984 bins:v1147];
    v986 = [(MOMetric *)v1205 metrics];
    [v986 setObject:v985 forKeyedSubscript:v1131];

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
    v991 = [(MOMetric *)v988 metrics];
    [v991 setObject:v990 forKeyedSubscript:@"Proactive_PercentageOfLeisureMediaEventsNoLOI"];
  }

  if ([v1204 count])
  {
    v992 = [MOPromptMetrics meanOf:v1204];
    v993 = [(MOMetric *)v988 metrics];
    [v993 setObject:v992 forKeyedSubscript:@"Proactive_LeisureMediaEventsAverageLatency"];

    [v1204 removeAllObjects];
  }

  if ([v1148 count])
  {
    v994 = [MOPromptMetrics meanOf:v1148];
    v995 = [(MOMetric *)v988 metrics];
    [v995 setObject:v994 forKeyedSubscript:@"Proactive_MeanDeltaBetweenLeisureMediaEvents"];

    v996 = [v1148 valueForKeyPath:@"@min.doubleValue"];
    v997 = [(MOMetric *)v988 metrics];
    [v997 setObject:v996 forKeyedSubscript:@"Proactive_MinDeltaBetweenLeisureMediaEvents"];

    v998 = [v1148 valueForKeyPath:@"@max.doubleValue"];
    v999 = [(MOMetric *)v988 metrics];
    [v999 setObject:v998 forKeyedSubscript:@"Proactive_MaxDeltaBetweenLeisureMediaEvents"];

    v1000 = [MOPromptMetrics standardDeviationOf:v1148];
    v1001 = [(MOMetric *)v988 metrics];
    [v1001 setObject:v1000 forKeyedSubscript:@"Proactive_SDDeltaBetweenLeisureMediaEvents"];
  }

  v1002 = [v955 count];
  v1003 = *(v989 + 1520);
  if (v1002)
  {
    v1004 = [v955 firstObject];
    v1005 = [v1004 endDate];
    [v1005 timeIntervalSinceDate:v988->_startDate];
    v1006 = [v1003 numberWithDouble:?];
    v1007 = v1148;
    [v1148 addObject:v1006];

    v1008 = *(v989 + 1520);
    v1009 = v988->_endDate;
    v1010 = [v955 lastObject];
    v1011 = [v1010 endDate];
    [(NSDate *)v1009 timeIntervalSinceDate:v1011];
    v1012 = [v1008 numberWithDouble:?];
    [v1148 addObject:v1012];

    v1013 = [MOPromptMetrics meanOf:v1148];
    v1014 = [(MOMetric *)v988 metrics];
    [v1014 setObject:v1013 forKeyedSubscript:@"Proactive_MeanDeltaBetweenLeisureMediaEventsBoundariesIncluded"];

    v1015 = [v1148 valueForKeyPath:@"@min.doubleValue"];
    v1016 = [(MOMetric *)v988 metrics];
    [v1016 setObject:v1015 forKeyedSubscript:@"Proactive_MinDeltaBetweenLeisureMediaEventsBoundariesIncluded"];

    v1017 = [v1148 valueForKeyPath:@"@max.doubleValue"];
    v1018 = [(MOMetric *)v988 metrics];
    [v1018 setObject:v1017 forKeyedSubscript:@"Proactive_MaxDeltaBetweenLeisureMediaEventsBoundariesIncluded"];

    v1019 = [MOPromptMetrics standardDeviationOf:v1148];
    v1020 = [(MOMetric *)v988 metrics];
    [v1020 setObject:v1019 forKeyedSubscript:@"Proactive_SDDeltaBetweenLeisureMediaEventsBoundariesIncluded"];

    v1021 = v988;
    v1022 = v989;
  }

  else
  {
    [(NSDate *)v988->_endDate timeIntervalSinceDate:v988->_startDate];
    v1023 = [v1003 numberWithDouble:?];
    v1024 = [(MOMetric *)v988 metrics];
    [v1024 setObject:v1023 forKeyedSubscript:@"Proactive_MeanDeltaBetweenLeisureMediaEventsBoundariesIncluded"];

    v1025 = *(v989 + 1520);
    [(NSDate *)v988->_endDate timeIntervalSinceDate:v988->_startDate];
    v1026 = [v1025 numberWithDouble:?];
    v1027 = [(MOMetric *)v988 metrics];
    [v1027 setObject:v1026 forKeyedSubscript:@"Proactive_MinDeltaBetweenLeisureMediaEventsBoundariesIncluded"];

    v1028 = *(v989 + 1520);
    [(NSDate *)v988->_endDate timeIntervalSinceDate:v988->_startDate];
    v1029 = [v1028 numberWithDouble:?];
    v1030 = [(MOMetric *)v988 metrics];
    [v1030 setObject:v1029 forKeyedSubscript:@"Proactive_MaxDeltaBetweenLeisureMediaEventsBoundariesIncluded"];

    v1019 = [(MOMetric *)v988 metrics];
    [v1019 setObject:&off_10036E7B0 forKeyedSubscript:@"Proactive_SDDeltaBetweenLeisureMediaEventsBoundariesIncluded"];
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
  v1039 = [(MOMetric *)v1021 metrics];
  [v1039 setObject:v1038 forKeyedSubscript:@"Proactive_NumNLEvents"];

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
      v1046 = [v1044 startDate];
      v1047 = [v1044 endDate];
      v1048 = [v1045 initWithStartDate:v1046 endDate:v1047];

      v1049 = [(MOPromptMetrics *)v1040 doesInterval:v1048 overlapWithAnyIntervalFromArray:v1158];
      v1050 = [v1044 creationDate];
      if (v1050)
      {
        v1051 = v1050;
        v1052 = [v1044 startDate];
        if (!v1052)
        {
          goto LABEL_372;
        }

        v1053 = v1052;
        v1054 = [v1044 endDate];

        if (v1054)
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
      v1056 = [v1055 endDate];

      if (v1056)
      {
        v1057 = [v1044 endDate];
        v1058 = [v1194 objectAtIndexedSubscript:v1041 - 1];
        v1059 = [v1058 endDate];
        [v1057 timeIntervalSinceDate:v1059];
        v1060 = [NSNumber numberWithDouble:?];
        [v1148 addObject:v1060];
      }
    }

    v1061 = [v1044 creationDate];
    v1062 = [v1044 endDate];
    [v1061 timeIntervalSinceDate:v1062];
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

    v1068 = [v1044 startDate];
    [(NSDate *)v1146 timeIntervalSinceDate:v1068];
    v1069 = [NSNumber numberWithDouble:?];
    v1070 = [MOMetric binForNumber:v1069 bins:v1147];
    v1071 = [(MOMetric *)v1205 metrics];
    [v1071 setObject:v1070 forKeyedSubscript:v1067];

    v1051 = [v1044 endDate];
    [(NSDate *)v1146 timeIntervalSinceDate:v1051];
    v1072 = [NSNumber numberWithDouble:?];
    v1073 = [MOMetric binForNumber:v1072 bins:v1147];
    v1074 = [(MOMetric *)v1205 metrics];
    [v1074 setObject:v1073 forKeyedSubscript:v1141];

    v1040 = v1205;
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
    v1077 = [(MOMetric *)v1040 metrics];
    [v1077 setObject:v1076 forKeyedSubscript:@"Proactive_PercentageOfNLEventsNoLOI"];
  }

  if ([v1204 count])
  {
    v1078 = [MOPromptMetrics meanOf:v1204];
    v1079 = [(MOMetric *)v1040 metrics];
    [v1079 setObject:v1078 forKeyedSubscript:@"Proactive_NLEventsAverageLatency"];

    [v1204 removeAllObjects];
  }

  if ([v1148 count])
  {
    v1080 = [MOPromptMetrics meanOf:v1148];
    v1081 = [(MOMetric *)v1040 metrics];
    [v1081 setObject:v1080 forKeyedSubscript:@"Proactive_MeanDeltaBetweenNLEvents"];

    v1082 = [v1148 valueForKeyPath:@"@min.doubleValue"];
    v1083 = [(MOMetric *)v1040 metrics];
    [v1083 setObject:v1082 forKeyedSubscript:@"Proactive_MinDeltaBetweenNLEvents"];

    v1084 = [v1148 valueForKeyPath:@"@max.doubleValue"];
    v1085 = [(MOMetric *)v1040 metrics];
    [v1085 setObject:v1084 forKeyedSubscript:@"Proactive_MaxDeltaBetweenNLEvents"];

    v1086 = [MOPromptMetrics standardDeviationOf:v1148];
    v1087 = [(MOMetric *)v1040 metrics];
    [v1087 setObject:v1086 forKeyedSubscript:@"Proactive_SDDeltaBetweenNLEvents"];
  }

  if ([v1194 count])
  {
    v1088 = [v1194 firstObject];
    v1089 = [v1088 endDate];
    [v1089 timeIntervalSinceDate:v1040->_startDate];
    v1090 = [NSNumber numberWithDouble:?];
    v1091 = v1148;
    [v1148 addObject:v1090];

    v1092 = v1040->_endDate;
    v1093 = [v1194 lastObject];
    v1094 = [v1093 endDate];
    [(NSDate *)v1092 timeIntervalSinceDate:v1094];
    v1095 = [NSNumber numberWithDouble:?];
    [v1148 addObject:v1095];

    v1096 = [MOPromptMetrics meanOf:v1148];
    v1097 = [(MOMetric *)v1040 metrics];
    [v1097 setObject:v1096 forKeyedSubscript:@"Proactive_MeanDeltaBetweenNLEventsBoundariesIncluded"];

    v1098 = [v1148 valueForKeyPath:@"@min.doubleValue"];
    v1099 = [(MOMetric *)v1040 metrics];
    [v1099 setObject:v1098 forKeyedSubscript:@"Proactive_MinDeltaBetweenNLEventsBoundariesIncluded"];

    v1100 = [v1148 valueForKeyPath:@"@max.doubleValue"];
    v1101 = [(MOMetric *)v1040 metrics];
    [v1101 setObject:v1100 forKeyedSubscript:@"Proactive_MaxDeltaBetweenNLEventsBoundariesIncluded"];

    v1102 = [MOPromptMetrics standardDeviationOf:v1148];
    v1103 = [(MOMetric *)v1040 metrics];
    [v1103 setObject:v1102 forKeyedSubscript:@"Proactive_SDDeltaBetweenNLEventsBoundariesIncluded"];
  }

  else
  {
    [(NSDate *)v1040->_endDate timeIntervalSinceDate:v1040->_startDate];
    v1104 = [NSNumber numberWithDouble:?];
    v1105 = [(MOMetric *)v1040 metrics];
    [v1105 setObject:v1104 forKeyedSubscript:@"Proactive_MeanDeltaBetweenNLEventsBoundariesIncluded"];

    [(NSDate *)v1040->_endDate timeIntervalSinceDate:v1040->_startDate];
    v1106 = [NSNumber numberWithDouble:?];
    v1107 = [(MOMetric *)v1040 metrics];
    [v1107 setObject:v1106 forKeyedSubscript:@"Proactive_MinDeltaBetweenNLEventsBoundariesIncluded"];

    [(NSDate *)v1040->_endDate timeIntervalSinceDate:v1040->_startDate];
    v1108 = [NSNumber numberWithDouble:?];
    v1109 = [(MOMetric *)v1040 metrics];
    [v1109 setObject:v1108 forKeyedSubscript:@"Proactive_MaxDeltaBetweenNLEventsBoundariesIncluded"];

    v1102 = [(MOMetric *)v1040 metrics];
    [v1102 setObject:&off_10036E7B0 forKeyedSubscript:@"Proactive_SDDeltaBetweenNLEventsBoundariesIncluded"];
    v1091 = v1148;
  }

  [v1091 removeAllObjects];
}

- (void)calculateAndSetMetricsForCorrelatedEvents:(id)a3
{
  v4 = a3;
  v5 = [(MOMetric *)self metrics];
  [v5 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundles"];

  v6 = [(MOMetric *)self metrics];
  [v6 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_0_routineEvent_0_proactiveEvent_0"];

  v7 = [(MOMetric *)self metrics];
  [v7 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_0_routineEvent_0_proactiveEvent_1"];

  v8 = [(MOMetric *)self metrics];
  [v8 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_0_routineEvent_1_proactiveEvent_0"];

  v9 = [(MOMetric *)self metrics];
  [v9 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_0_routineEvent_1_proactiveEvent_1"];

  v10 = [(MOMetric *)self metrics];
  [v10 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_1_routineEvent_0_proactiveEvent_0"];

  v11 = [(MOMetric *)self metrics];
  [v11 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_1_routineEvent_0_proactiveEvent_1"];

  v12 = [(MOMetric *)self metrics];
  [v12 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_1_routineEvent_1_proactiveEvent_0"];

  v13 = [(MOMetric *)self metrics];
  [v13 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_1_routineEvent_1_proactiveEvent_1"];

  v14 = [(MOMetric *)self metrics];
  [v14 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_0_routineEvent_0_proactiveEvent_0"];

  v15 = [(MOMetric *)self metrics];
  [v15 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_0_routineEvent_0_proactiveEvent_1"];

  v16 = [(MOMetric *)self metrics];
  [v16 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_0_routineEvent_1_proactiveEvent_0"];

  v17 = [(MOMetric *)self metrics];
  [v17 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_0_routineEvent_1_proactiveEvent_1"];

  v18 = [(MOMetric *)self metrics];
  [v18 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_1_routineEvent_0_proactiveEvent_0"];

  v19 = [(MOMetric *)self metrics];
  [v19 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_1_routineEvent_0_proactiveEvent_1"];

  v20 = [(MOMetric *)self metrics];
  [v20 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_1_routineEvent_1_proactiveEvent_0"];

  v82 = self;
  v21 = [(MOMetric *)self metrics];
  [v21 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_1_routineEvent_1_proactiveEvent_1"];

  if (v4 && [v4 count])
  {
    v79 = v4;
    v22 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 count]);
    v23 = [(MOMetric *)self metrics];
    [v23 setObject:v22 forKeyedSubscript:@"numPreBundles"];

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
            v71 = [(MOMetric *)v82 metrics];
            v46 = [v71 objectForKeyedSubscript:v61];

            v72 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v46 intValue] + 1);
            v73 = [(MOMetric *)v82 metrics];
            [v73 setObject:v72 forKeyedSubscript:v61];
          }

          v47 = v85 + 1;
        }

        while ((v85 + 1) != v83);
        v83 = [obj countByEnumeratingWithState:&v93 objects:v98 count:16];
      }

      while (v83);
    }

    v4 = v79;
  }
}

- (void)calculateAndSetMetricsForSemanticallyBundledEvents:(id)a3
{
  v8 = a3;
  v4 = [(MOMetric *)self metrics];
  [v4 setObject:&off_10036C1D8 forKeyedSubscript:@"numBundles"];

  v5 = v8;
  if (v8)
  {
    v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 count]);
    v7 = [(MOMetric *)self metrics];
    [v7 setObject:v6 forKeyedSubscript:@"numBundles"];

    v5 = v8;
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
    v5 = [(MOEventManager *)self->_eventManager getHealthKitManager];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = __37__MOPromptMetrics_getAndSetAgeGender__block_invoke;
    v31[3] = &unk_10033A510;
    v6 = v4;
    v32 = v6;
    v33 = buf;
    v34 = v35;
    [v5 fetchUserBiologicalSexWithHandler:v31];
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
    [v5 fetchUserAgeWithHandler:v18];
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

- (void)setBiologicalSex:(id)a3
{
  if (a3)
  {
    v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [a3 biologicalSex]);
    v4 = [(MOMetric *)self metrics];
    [v4 setObject:v5 forKeyedSubscript:@"BiologicalSex"];
  }
}

- (void)setAge:(id)a3
{
  if (a3)
  {
    v5 = [a3 copy];
    v4 = [(MOMetric *)self metrics];
    [v4 setObject:v5 forKeyedSubscript:@"Age"];
  }
}

@end