@interface MOEventPatternDetectorAnomalyDetectorExponentialDistribution
- (BOOL)configure:(id)configure;
- (MOEventPatternDetectorAnomalyDetectorExponentialDistribution)init;
- (id)extractAnomalyEventsFrom:(id)from withFeatures:(id)features;
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

- (id)extractAnomalyEventsFrom:(id)from withFeatures:(id)features
{
  fromCopy = from;
  featuresCopy = features;
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
    if ([fromCopy count])
    {
      v14 = 0;
      v82 = fromCopy;
      v81 = featuresCopy;
      selfCopy = self;
      while (1)
      {
        v15 = [fromCopy objectAtIndex:v14];
        v83 = v14;
        v16 = [featuresCopy objectAtIndex:v14];
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
            startDate = [v21 startDate];
            v24 = [startDate compare:v94];

            if (v24 == -1)
            {
              ++v19;
              [v22 doubleValue];
              if (v25 >= self->_minimumFeatureSizeForPersonalizedThreshold)
              {
                if (!v18)
                {
                  startDate2 = [v21 startDate];

                  v89 = startDate2;
                }

                [v22 doubleValue];
                v20 = v20 + v27;
                ++v18;
                startDate3 = [v21 startDate];

                v92 = startDate3;
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
        fromCopy = v82;
        featuresCopy = v81;
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
        startDate4 = [v34 startDate];
        if ([(MOEvent *)startDate4 compare:v94]!= 1)
        {
          goto LABEL_68;
        }

        startDate5 = [v34 startDate];
        v38 = [startDate5 compare:v91];

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
            startDate6 = [v34 startDate];
            endDate = [v34 endDate];
            v46 = +[NSDate date];
            startDate4 = -[MOEvent initWithEventIdentifier:startDate:endDate:creationDate:provider:category:](v42, "initWithEventIdentifier:startDate:endDate:creationDate:provider:category:", v43, startDate6, endDate, v46, 5, [v34 category]);

            endDate2 = [v34 endDate];
            v48 = [endDate2 dateByAddingTimeInterval:2419200.0];
            [(MOEvent *)startDate4 setExpirationDate:v48];

            if ([v34 timeAtHomeSubType])
            {
              -[MOEvent setTimeAtHomeSubType:](startDate4, "setTimeAtHomeSubType:", [v34 timeAtHomeSubType]);
            }

            v49 = objc_opt_new();
            [v49 setObject:&off_100368B30 forKeyedSubscript:@"kEventPatternType"];
            self = selfCopy;
            v50 = [NSNumber numberWithUnsignedInteger:selfCopy->_anomalyFeatureType];
            [v49 setObject:v50 forKeyedSubscript:@"kEventPatternAnomalyFeatureType"];

            eventIdentifier = [v34 eventIdentifier];
            uUIDString = [eventIdentifier UUIDString];
            [v49 setObject:uUIDString forKeyedSubscript:@"kEventPatternAnomalousEventIdentifier"];

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
              workoutType = [v34 workoutType];
              if (workoutType)
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
              workoutType2 = [v34 workoutType];
              if (workoutType2)
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

            pCount = [v34 pCount];
            if (pCount)
            {
              v64 = pCount;
              pCount2 = [v34 pCount];
              intValue = [pCount2 intValue];

              if ((intValue & 0x80000000) == 0)
              {
                pCount3 = [v34 pCount];
                [v49 setObject:pCount3 forKeyedSubscript:@"kEventPatternAnomalyPcount"];
              }
            }

            densityScore = [v34 densityScore];
            if (densityScore)
            {
              v69 = densityScore;
              densityScore2 = [v34 densityScore];
              intValue2 = [densityScore2 intValue];

              if ((intValue2 & 0x80000000) == 0)
              {
                densityScore3 = [v34 densityScore];
                [v49 setObject:densityScore3 forKeyedSubscript:@"kEventPatternAnomalyDensityScore"];
              }
            }

            if ([v34 category] == 10)
            {
              interactionScoredContact = [v34 interactionScoredContact];
              contact = [interactionScoredContact contact];
              identifier = [contact identifier];
              [v49 setObject:identifier forKeyedSubscript:@"kEventPatternInteractionScoredContactIdentifier"];
            }

            if ([v34 category] == 24)
            {
              stateOfMindEvent = [v34 stateOfMindEvent];
              [stateOfMindEvent valenceClassification];
              v77 = [NSNumber numberWithDouble:?];
              [v49 setObject:v77 forKeyedSubscript:@"kEventPatternAnomalyStateOfMind"];
            }

            [(MOEvent *)startDate4 setPatterns:v49];
            [v86 addObject:startDate4];

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

- (BOOL)configure:(id)configure
{
  configureCopy = configure;
  v5 = [configureCopy count];
  if (v5)
  {
    v6 = [configureCopy objectForKey:@"TukeyFactorForExponentialDistributionOutlier"];

    if (v6)
    {
      v7 = [configureCopy objectForKeyedSubscript:@"TukeyFactorForExponentialDistributionOutlier"];
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

    v10 = [configureCopy objectForKey:@"MaximumThreshold"];

    if (v10)
    {
      v11 = [configureCopy objectForKeyedSubscript:@"MaximumThreshold"];
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

    v13 = [configureCopy objectForKey:@"MinimumThreshold"];

    if (v13)
    {
      v14 = [configureCopy objectForKeyedSubscript:@"MinimumThreshold"];
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

    v16 = [configureCopy objectForKey:@"MinimumFeatureNumberForPersonalizedThreshold"];

    if (v16)
    {
      v17 = [configureCopy objectForKeyedSubscript:@"MinimumFeatureNumberForPersonalizedThreshold"];
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

    v18 = [configureCopy objectForKey:@"MinimumFeatureSizeForPersonalizedThreshold"];

    if (v18)
    {
      v19 = [configureCopy objectForKeyedSubscript:@"MinimumFeatureSizeForPersonalizedThreshold"];
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

    v21 = [configureCopy objectForKey:@"AnomalyFeatureType"];

    if (v21)
    {
      v22 = [configureCopy objectForKeyedSubscript:@"AnomalyFeatureType"];
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