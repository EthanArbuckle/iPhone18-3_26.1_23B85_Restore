@interface MOEventPatternDetectorAnomalyDetectorExponentialDistribution
- (BOOL)configure:(id)a3;
- (MOEventPatternDetectorAnomalyDetectorExponentialDistribution)init;
- (id)extractAnomalyEventsFrom:(id)a3 withFeatures:(id)a4;
@end

@implementation MOEventPatternDetectorAnomalyDetectorExponentialDistribution

- (MOEventPatternDetectorAnomalyDetectorExponentialDistribution)init
{
  v11.receiver = self;
  v11.super_class = MOEventPatternDetectorAnomalyDetectorExponentialDistribution;
  v2 = [(MOEventPatternDetectorAnomalyDetectorExponentialDistribution *)&v11 init];
  v3 = v2;
  if (v2)
  {
    __asm { FMOV            V0.2D, #-1.0 }

    *(v2 + 8) = _Q0;
    *(v2 + 6) = -1;
    *(v2 + 2) = _Q0;
    v9 = v2;
  }

  return v3;
}

- (id)extractAnomalyEventsFrom:(id)a3 withFeatures:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_tukeyFactorForExponentialDistributionOutlier == -1.0 || self->_minimumFeatureSizeForPersonalizedThreshold == -1.0 || self->_minimumFeatureNumberForPersonalizedThreshold == -1 || self->_maximumThreshold == -1.0 || self->_minimumThreshold == -1.0)
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MOEventPatternDetectorAnomalyDetectorExponentialDistribution extractAnomalyEventsFrom:v8 withFeatures:?];
    }

    v9 = 0;
  }

  else
  {
    v86 = objc_opt_new();
    v11 = +[NSDate date];
    v12 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    v80 = v11;
    v13 = [v12 components:28 fromDate:v11];
    [v13 setHour:3];
    v78 = v13;
    v79 = v12;
    v91 = [v12 dateFromComponents:v13];
    v94 = [v91 dateByAddingTimeInterval:-86400.0];
    if ([v6 count])
    {
      v14 = 0;
      v82 = v6;
      v81 = v7;
      v84 = self;
      while (1)
      {
        v15 = [v6 objectAtIndex:v14];
        v83 = v14;
        v16 = [v7 objectAtIndex:v14];
        if ([v16 count])
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v89 = 0;
          v92 = 0;
          v20 = 0.0;
          do
          {
            v21 = [v15 objectAtIndex:v17];
            v22 = [v16 objectAtIndex:v17];
            v23 = [v21 startDate];
            v24 = [v23 compare:v94];

            if (v24 == -1)
            {
              ++v19;
              [v22 doubleValue];
              if (v25 >= self->_minimumFeatureSizeForPersonalizedThreshold)
              {
                if (!v18)
                {
                  v26 = [v21 startDate];

                  v89 = v26;
                }

                [v22 doubleValue];
                v20 = v20 + v27;
                ++v18;
                v28 = [v21 startDate];

                v92 = v28;
              }
            }

            ++v17;
          }

          while ([v16 count] > v17);
          v85 = v19 == 0;
          v29 = v89;
        }

        else
        {
          v92 = 0;
          v29 = 0;
          v18 = 0;
          v20 = 0.0;
          v85 = 1;
        }

        maximumThreshold = self->_maximumThreshold;
        v90 = v29;
        if (v18 >= self->_minimumFeatureNumberForPersonalizedThreshold)
        {
          if (self->_anomalyFeatureType == 6)
          {
            v18 = 3;
          }

          v87 = v18;
          v31 = self->_tukeyFactorForExponentialDistributionOutlier * (v20 / v18);
          if (maximumThreshold < v31)
          {
            v31 = self->_maximumThreshold;
          }

          maximumThreshold = self->_minimumThreshold >= v31 ? self->_minimumThreshold : v31;
        }

        else
        {
          v87 = v18;
        }

        if ([v15 count])
        {
          break;
        }

LABEL_73:

        v14 = v83 + 1;
        v6 = v82;
        v7 = v81;
        if ([v82 count] <= v83 + 1)
        {
          goto LABEL_74;
        }
      }

      v32 = 0;
      v33 = 0;
      v93 = v15;
      while (1)
      {
        v34 = [v15 objectAtIndex:v32];
        v35 = [v16 objectAtIndex:v32];
        v36 = [v34 startDate];
        if ([(MOEvent *)v36 compare:v94]!= 1)
        {
          goto LABEL_68;
        }

        v37 = [v34 startDate];
        v38 = [v37 compare:v91];

        if (v38 == -1)
        {
          if (self->_anomalyFeatureType)
          {
            goto LABEL_38;
          }

          if (v33)
          {
            v40 = 0;
          }

          else
          {
            v40 = v85;
          }

          if (v40 || ([v35 doubleValue], v41 > maximumThreshold))
          {
LABEL_45:
            v88 = v33 + 1;
            v42 = [MOEvent alloc];
            v43 = +[NSUUID UUID];
            v44 = [v34 startDate];
            v45 = [v34 endDate];
            v46 = +[NSDate date];
            v36 = -[MOEvent initWithEventIdentifier:startDate:endDate:creationDate:provider:category:](v42, "initWithEventIdentifier:startDate:endDate:creationDate:provider:category:", v43, v44, v45, v46, 5, [v34 category]);

            v47 = [v34 endDate];
            v48 = [v47 dateByAddingTimeInterval:2419200.0];
            [(MOEvent *)v36 setExpirationDate:v48];

            if ([v34 timeAtHomeSubType])
            {
              -[MOEvent setTimeAtHomeSubType:](v36, "setTimeAtHomeSubType:", [v34 timeAtHomeSubType]);
            }

            v49 = objc_opt_new();
            [v49 setObject:&off_100368B30 forKeyedSubscript:@"kEventPatternType"];
            self = v84;
            v50 = [NSNumber numberWithUnsignedInteger:v84->_anomalyFeatureType];
            [v49 setObject:v50 forKeyedSubscript:@"kEventPatternAnomalyFeatureType"];

            v51 = [v34 eventIdentifier];
            v52 = [v51 UUIDString];
            [v49 setObject:v52 forKeyedSubscript:@"kEventPatternAnomalousEventIdentifier"];

            [v35 doubleValue];
            v53 = [NSNumber numberWithDouble:?];
            [v49 setObject:v53 forKeyedSubscript:@"kEventPatternFeatureValue"];

            v54 = [NSNumber numberWithDouble:maximumThreshold];
            [v49 setObject:v54 forKeyedSubscript:@"kEventPatternThresholdValue"];

            [v90 timeIntervalSinceReferenceDate];
            v55 = [NSNumber numberWithDouble:?];
            [v49 setObject:v55 forKeyedSubscript:@"kEventPatternThresholdRangeStartDate"];

            [v92 timeIntervalSinceReferenceDate];
            v56 = [NSNumber numberWithDouble:?];
            [v49 setObject:v56 forKeyedSubscript:@"kEventPatternThresholdRangeEndDate"];

            v57 = [NSNumber numberWithInt:v87];
            [v49 setObject:v57 forKeyedSubscript:@"kEventPatternThresholdNumFeatures"];

            if ([v34 category] == 2)
            {
              v58 = [v34 workoutType];
              if (v58)
              {
                [v34 workoutType];
              }

              else
              {
                +[NSNull null];
              }
              v59 = ;
              [v49 setObject:v59 forKeyedSubscript:@"kEventPatternAnomalyWorkoutType"];
            }

            if ([v34 category] == 16)
            {
              v60 = [v34 workoutType];
              if (v60)
              {
                [v34 workoutType];
              }

              else
              {
                +[NSNull null];
              }
              v61 = ;
              [v49 setObject:v61 forKeyedSubscript:@"kEventPatternAnomalyWorkoutType"];

              v62 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v34 motionType]);
              [v49 setObject:v62 forKeyedSubscript:@"kEventPatternAnomalyMotionType"];
            }

            v63 = [v34 pCount];
            if (v63)
            {
              v64 = v63;
              v65 = [v34 pCount];
              v66 = [v65 intValue];

              if ((v66 & 0x80000000) == 0)
              {
                v67 = [v34 pCount];
                [v49 setObject:v67 forKeyedSubscript:@"kEventPatternAnomalyPcount"];
              }
            }

            v68 = [v34 densityScore];
            if (v68)
            {
              v69 = v68;
              v70 = [v34 densityScore];
              v71 = [v70 intValue];

              if ((v71 & 0x80000000) == 0)
              {
                v72 = [v34 densityScore];
                [v49 setObject:v72 forKeyedSubscript:@"kEventPatternAnomalyDensityScore"];
              }
            }

            if ([v34 category] == 10)
            {
              v73 = [v34 interactionScoredContact];
              v74 = [v73 contact];
              v75 = [v74 identifier];
              [v49 setObject:v75 forKeyedSubscript:@"kEventPatternInteractionScoredContactIdentifier"];
            }

            if ([v34 category] == 24)
            {
              v76 = [v34 stateOfMindEvent];
              [v76 valenceClassification];
              v77 = [NSNumber numberWithDouble:?];
              [v49 setObject:v77 forKeyedSubscript:@"kEventPatternAnomalyStateOfMind"];
            }

            [(MOEvent *)v36 setPatterns:v49];
            [v86 addObject:v36];

            v33 = v88;
LABEL_68:

            goto LABEL_69;
          }

          if (self->_anomalyFeatureType)
          {
LABEL_38:
            [v35 doubleValue];
            if (v39 > maximumThreshold)
            {
              goto LABEL_45;
            }
          }

          ++v33;
        }

LABEL_69:

        ++v32;
        v15 = v93;
        if ([v93 count] <= v32)
        {
          goto LABEL_73;
        }
      }
    }

LABEL_74:

    v9 = v86;
  }

  return v9;
}

- (BOOL)configure:(id)a3
{
  v4 = a3;
  v5 = [v4 count];
  if (v5)
  {
    v6 = [v4 objectForKey:@"TukeyFactorForExponentialDistributionOutlier"];

    if (v6)
    {
      v7 = [v4 objectForKeyedSubscript:@"TukeyFactorForExponentialDistributionOutlier"];
      [v7 doubleValue];
      self->_tukeyFactorForExponentialDistributionOutlier = v8;
    }

    else
    {
      v9 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [MOEventPatternDetectorAnomalyDetectorExponentialDistribution configure:];
      }
    }

    v10 = [v4 objectForKey:@"MaximumThreshold"];

    if (v10)
    {
      v11 = [v4 objectForKeyedSubscript:@"MaximumThreshold"];
      [v11 doubleValue];
      self->_maximumThreshold = v12;
    }

    else
    {
      v11 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [MOEventPatternDetectorAnomalyDetectorExponentialDistribution configure:];
      }
    }

    v13 = [v4 objectForKey:@"MinimumThreshold"];

    if (v13)
    {
      v14 = [v4 objectForKeyedSubscript:@"MinimumThreshold"];
      [v14 doubleValue];
      self->_minimumThreshold = v15;
    }

    else
    {
      v14 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [MOEventPatternDetectorAnomalyDetectorExponentialDistribution configure:];
      }
    }

    v16 = [v4 objectForKey:@"MinimumFeatureNumberForPersonalizedThreshold"];

    if (v16)
    {
      v17 = [v4 objectForKeyedSubscript:@"MinimumFeatureNumberForPersonalizedThreshold"];
      self->_minimumFeatureNumberForPersonalizedThreshold = [v17 intValue];
    }

    else
    {
      v17 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [MOEventPatternDetectorAnomalyDetectorExponentialDistribution configure:];
      }
    }

    v18 = [v4 objectForKey:@"MinimumFeatureSizeForPersonalizedThreshold"];

    if (v18)
    {
      v19 = [v4 objectForKeyedSubscript:@"MinimumFeatureSizeForPersonalizedThreshold"];
      [v19 doubleValue];
      self->_minimumFeatureSizeForPersonalizedThreshold = v20;
    }

    else
    {
      v19 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [MOEventPatternDetectorAnomalyDetectorExponentialDistribution configure:];
      }
    }

    v21 = [v4 objectForKey:@"AnomalyFeatureType"];

    if (v21)
    {
      v22 = [v4 objectForKeyedSubscript:@"AnomalyFeatureType"];
      self->_anomalyFeatureType = [v22 intValue];
    }

    else
    {
      v22 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [MOEventPatternDetectorAnomalyDetectorExponentialDistribution configure:];
      }
    }
  }

  return v5 != 0;
}

@end