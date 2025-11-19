@interface MOEventPatternDetectorAnomalyDetectorExponentialDistributionWithEWA
- (BOOL)configure:(id)a3;
- (MOEventPatternDetectorAnomalyDetectorExponentialDistributionWithEWA)init;
- (id)_createAnomalyEventFromEvent:(id)a3 andFeature:(id)a4 andThreshold:(double)a5;
- (id)extractAnomalyEventsFrom:(id)a3 withFeatures:(id)a4;
- (void)_updateFeatureGroupEWADict:(id)a3 withCurrentFeature:(id)a4 andCurrentEvent:(id)a5 andCurrentEventTimeStamp:(double)a6;
@end

@implementation MOEventPatternDetectorAnomalyDetectorExponentialDistributionWithEWA

- (MOEventPatternDetectorAnomalyDetectorExponentialDistributionWithEWA)init
{
  v13.receiver = self;
  v13.super_class = MOEventPatternDetectorAnomalyDetectorExponentialDistributionWithEWA;
  v2 = [(MOEventPatternDetectorAnomalyDetectorExponentialDistributionWithEWA *)&v13 init];
  v3 = v2;
  if (v2)
  {
    __asm { FMOV            V0.2D, #-1.0 }

    *(v2 + 8) = _Q0;
    *(v2 + 6) = -1;
    *(v2 + 2) = _Q0;
    *(v2 + 6) = 0xBFF0000000000000;
    v9 = +[NSCalendar currentCalendar];
    cal = v3->_cal;
    v3->_cal = v9;

    v11 = v3;
  }

  return v3;
}

- (id)extractAnomalyEventsFrom:(id)a3 withFeatures:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  if (self->_tukeyFactorForExponentialDistributionOutlier == -1.0 || self->_minimumFeatureSizeForPersonalizedThreshold == -1.0 || self->_minimumFeatureNumberForPersonalizedThreshold == -1 || self->_maximumThreshold == -1.0 || self->_minimumThreshold == -1.0 || self->_betaForEWAUpdate == -1.0)
  {
    v9 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [MOEventPatternDetectorAnomalyDetectorExponentialDistributionWithEWA extractAnomalyEventsFrom:v9 withFeatures:?];
    }

    v10 = 0;
    goto LABEL_6;
  }

  v9 = +[NSDate date];
  v12 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v13 = [v12 components:28 fromDate:v9];
  [v13 setHour:3];
  v98 = v13;
  v99 = v12;
  v108 = [v12 dateFromComponents:v13];
  v106 = objc_opt_new();
  if (![v6 count])
  {
LABEL_80:
    v96 = [(NSMutableDictionary *)self->_anomalyEWADictionariesForDetector copy];
    [(MOEventPatternDetectorAnomalyDetectorExponentialDistributionWithEWA *)self setEWADict:v96];

    v48 = v106;
    v10 = v106;
    goto LABEL_84;
  }

  v14 = 0;
  v100 = v7;
  v101 = v8;
  while (1)
  {
    v15 = [v6 objectAtIndex:v14];
    v105 = v14;
    v107 = [v7 objectAtIndex:v14];
    v16 = [v15 firstObject];
    v17 = [v16 category];

    v109 = v15;
    v18 = [v15 firstObject];
    v19 = v18;
    if (v17 == 2)
    {
      v20 = [v18 workoutType];
      v21 = 1;
      v22 = @"MOEventCategoryWorkout";
    }

    else
    {
      v23 = [v18 category];

      if (v23 == 16)
      {
        v19 = [v15 firstObject];
        v20 = +[MOEventMotionActivity descriptionOfMotionType:](MOEventMotionActivity, "descriptionOfMotionType:", [v19 motionType]);
        v21 = 1;
        v22 = @"MOEventCategoryMotionActivity";
      }

      else
      {
        v24 = [v15 firstObject];
        v25 = [v24 category];

        v26 = [v15 firstObject];
        v19 = v26;
        if (v25 == 10)
        {
          v27 = [v26 interactionScoredContact];
          v28 = [v27 contact];
          v29 = [v28 identifier];

          v20 = v29;
          v21 = 1;
          v22 = @"MOEventCategorySignificantContact";
        }

        else
        {
          if ([v26 category] == 1 && self->_anomalyFeatureType == 4)
          {
            v30 = [v15 firstObject];
            v31 = [v30 pCount];
            v32 = [v31 intValue];

            if ((v32 & 0x80000000) == 0)
            {
              v33 = [v15 firstObject];
              v34 = [v33 startDate];
              v8 = v101;
              v19 = [v101 components:512 fromDate:v34];

              v35 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v19 weekday]);
              v20 = [v35 stringValue];

              v21 = 1;
              v22 = @"MOEventCategoryProx";
              goto LABEL_35;
            }
          }

          else
          {
          }

          v36 = [v15 firstObject];
          if ([v36 category] == 1 && self->_anomalyFeatureType == 4)
          {
            v37 = [v15 firstObject];
            v38 = [v37 densityScore];
            [v38 doubleValue];
            v40 = v39;

            v8 = v101;
            if (v40 >= 0.0)
            {
              v41 = [v15 firstObject];
              v42 = [v41 startDate];
              v19 = [v101 components:512 fromDate:v42];

              v43 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v19 weekday]);
              v20 = [v43 stringValue];

              v21 = 1;
              v22 = @"MOEventCategoryPeopleDensityEvent";
              goto LABEL_35;
            }
          }

          else
          {

            v8 = v101;
          }

          v19 = [v15 firstObject];
          if ([v19 category] == 1)
          {
            anomalyFeatureType = self->_anomalyFeatureType;

            if (anomalyFeatureType != 5)
            {
              v20 = 0;
              v21 = 0;
              v22 = 0;
              v48 = v106;
              goto LABEL_36;
            }

            v45 = [v15 firstObject];
            v46 = [v45 startDate];
            v19 = [v8 components:512 fromDate:v46];

            v47 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v19 weekday]);
            v20 = [v47 stringValue];

            v21 = 1;
            v22 = @"MOEventTimeAtHomeAnomaly";
          }

          else
          {
            v20 = 0;
            v21 = 0;
            v22 = 0;
          }
        }
      }
    }

LABEL_35:
    v48 = v106;

LABEL_36:
    v49 = self->_anomalyFeatureType;
    if (v49 > 5)
    {
      break;
    }

    v50 = v20 ? v21 : 0;
    if (((0x37u >> v49) & 1) == 0 || !v50)
    {
      break;
    }

    v51 = [NSString stringWithFormat:@"%@_%@_%@", v22, v20, off_100336EB8[v49]];
    v52 = objc_opt_new();
    v103 = v51;
    v53 = [(NSMutableDictionary *)self->_anomalyEWADictionariesForDetector objectForKey:v51];
    v104 = v20;
    v102 = v53;
    if (v53)
    {
      v54 = [v53 mutableCopy];

      v52 = v54;
    }

    else
    {
      [v52 setObject:&off_100369130 forKeyedSubscript:@"EWAForAnomalyValue"];
      [v52 setObject:&off_100369148 forKeyedSubscript:@"EWAForAnomalyFeatureCountUntilMinimum"];
      [v52 setObject:&__kCFBooleanFalse forKeyedSubscript:@"EWAForAnomalyFeatureCountMeetsMinimum"];
      [v52 setObject:&off_100369148 forKeyedSubscript:@"EWAForAnomalyLastUpdateTime"];
    }

    v55 = v107;
    if ([v107 count])
    {
      v56 = 0;
      while (1)
      {
        v57 = [v109 objectAtIndex:v56];
        if ([v57 category] != 10 && objc_msgSend(v57, "category") != 1)
        {
          break;
        }

        v58 = [v57 endDate];
        v59 = [v58 isOnOrBefore:v108];

        if (v59)
        {
          break;
        }

LABEL_70:

        if ([v55 count] <= ++v56)
        {
          goto LABEL_75;
        }
      }

      v60 = [v55 objectAtIndex:v56];
      v61 = [v57 startDate];
      [v61 timeIntervalSinceReferenceDate];
      v63 = v62;

      maximumThreshold = self->_maximumThreshold;
      if (!self->_anomalyFeatureType)
      {
        [v60 doubleValue];
        if (v65 == -1.0)
        {
          v66 = [v52 objectForKeyedSubscript:@"EWAForAnomalyLastUpdateTime"];
          [v66 doubleValue];
          if (v67 != 0.0)
          {
            v68 = [v52 objectForKeyedSubscript:@"EWAForAnomalyLastUpdateTime"];
            [v68 doubleValue];
            v70 = v69;

            if (v63 <= v70)
            {
              v55 = v107;
              goto LABEL_57;
            }

            v66 = [v52 objectForKeyedSubscript:@"EWAForAnomalyLastUpdateTime"];
            [v66 doubleValue];
            v72 = [NSNumber numberWithDouble:v63 - v71];

            v60 = v72;
            v55 = v107;
          }
        }
      }

LABEL_57:
      v73 = [v52 objectForKeyedSubscript:@"EWAForAnomalyLastUpdateTime"];
      [v73 doubleValue];
      v75 = v74;

      if (v63 > v75)
      {
        v76 = [v52 objectForKeyedSubscript:@"EWAForAnomalyValue"];
        [v76 doubleValue];
        if (v77 <= -1.0)
        {
        }

        else
        {
          v78 = [v52 objectForKeyedSubscript:@"EWAForAnomalyFeatureCountMeetsMinimum"];
          v79 = [v78 BOOLValue];

          if (v79)
          {
            tukeyFactorForExponentialDistributionOutlier = self->_tukeyFactorForExponentialDistributionOutlier;
            v81 = [v52 objectForKeyedSubscript:@"EWAForAnomalyValue"];
            [v81 doubleValue];
            v83 = tukeyFactorForExponentialDistributionOutlier * v82;

            v84 = self->_maximumThreshold;
            if (v84 >= v83)
            {
              v84 = v83;
            }

            if (self->_minimumThreshold >= v84)
            {
              maximumThreshold = self->_minimumThreshold;
            }

            else
            {
              maximumThreshold = v84;
            }
          }
        }

        [v60 doubleValue];
        v55 = v107;
        if (v85 > maximumThreshold)
        {
          v86 = [(MOEventPatternDetectorAnomalyDetectorExponentialDistributionWithEWA *)self _createAnomalyEventFromEvent:v57 andFeature:v60 andThreshold:maximumThreshold];
          [v106 addObject:v86];
        }
      }

      if (!self->_anomalyFeatureType)
      {
        [v60 doubleValue];
        if (v87 == -1.0)
        {
          v88 = [v52 objectForKeyedSubscript:@"EWAForAnomalyLastUpdateTime"];
          [v88 doubleValue];
          v90 = v89;

          if (v90 == 0.0)
          {
            v91 = [(MOEventPatternDetectorAnomalyDetectorExponentialDistributionWithEWA *)self _createAnomalyEventFromEvent:v57 andFeature:v60 andThreshold:maximumThreshold];
            [v106 addObject:v91];
          }
        }
      }

      [(MOEventPatternDetectorAnomalyDetectorExponentialDistributionWithEWA *)self _updateFeatureGroupEWADict:v52 withCurrentFeature:v60 andCurrentEvent:v57 andCurrentEventTimeStamp:v63];

      goto LABEL_70;
    }

LABEL_75:
    v92 = [v52 objectForKeyedSubscript:@"EWAForAnomalyValue"];
    [v92 doubleValue];
    v94 = v93;

    if (v94 > -1.0)
    {
      v95 = [v52 copy];
      [(NSMutableDictionary *)self->_anomalyEWADictionariesForDetector setObject:v95 forKeyedSubscript:v103];
    }

    v14 = v105 + 1;
    v7 = v100;
    v8 = v101;
    if ([v6 count] <= v105 + 1)
    {
      goto LABEL_80;
    }
  }

  v97 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
  if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
  {
    [(MOEventPatternDetectorAnomalyDetectorExponentialDistributionWithEWA *)&buf extractAnomalyEventsFrom:v111 withFeatures:v97];
  }

  v10 = 0;
LABEL_84:

LABEL_6:

  return v10;
}

- (id)_createAnomalyEventFromEvent:(id)a3 andFeature:(id)a4 andThreshold:(double)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 startDate];
  v11 = [v8 endDate];
  if ([v8 timeAtHomeSubType] == 1)
  {
    cal = self->_cal;
    v13 = [v8 startDate];
    v14 = [(NSCalendar *)cal components:28 fromDate:v13];

    [v14 setHour:3];
    v15 = [(NSCalendar *)self->_cal dateFromComponents:v14];

    v16 = [(NSCalendar *)self->_cal dateFromComponents:v14];
    v17 = [v16 dateByAddingTimeInterval:86400.0];

    v11 = v17;
    v10 = v15;
  }

  v18 = [MOEvent alloc];
  v19 = +[NSUUID UUID];
  v20 = +[NSDate date];
  v21 = -[MOEvent initWithEventIdentifier:startDate:endDate:creationDate:provider:category:](v18, "initWithEventIdentifier:startDate:endDate:creationDate:provider:category:", v19, v10, v11, v20, 5, [v8 category]);

  v22 = [v8 expirationDate];
  [(MOEvent *)v21 setExpirationDate:v22];

  if ([v8 timeAtHomeSubType] == 1 || objc_msgSend(v8, "timeAtHomeSubType") == 3)
  {
    -[MOEvent setTimeAtHomeSubType:](v21, "setTimeAtHomeSubType:", [v8 timeAtHomeSubType]);
  }

  v23 = objc_opt_new();
  [v23 setObject:&off_100369160 forKeyedSubscript:@"kEventPatternType"];
  v24 = [NSNumber numberWithUnsignedInteger:self->_anomalyFeatureType];
  [v23 setObject:v24 forKeyedSubscript:@"kEventPatternAnomalyFeatureType"];

  v25 = [v8 eventIdentifier];
  v26 = [v25 UUIDString];
  [v23 setObject:v26 forKeyedSubscript:@"kEventPatternAnomalousEventIdentifier"];

  [v9 doubleValue];
  v28 = v27;

  v29 = [NSNumber numberWithDouble:v28];
  [v23 setObject:v29 forKeyedSubscript:@"kEventPatternFeatureValue"];

  v30 = [NSNumber numberWithDouble:a5];
  [v23 setObject:v30 forKeyedSubscript:@"kEventPatternThresholdValue"];

  if ([v8 category] == 10)
  {
    v31 = [v8 interactionScoredContact];
    v32 = [v31 contact];
    v33 = [v32 identifier];
    [v23 setObject:v33 forKeyedSubscript:@"kEventPatternInteractionScoredContactIdentifier"];
  }

  if ([v8 category] == 2)
  {
    v34 = [v8 workoutType];
    if (v34)
    {
      [v8 workoutType];
    }

    else
    {
      +[NSNull null];
    }
    v35 = ;
    [v23 setObject:v35 forKeyedSubscript:@"kEventPatternAnomalyWorkoutType"];
  }

  if ([v8 category] == 16)
  {
    v36 = [v8 workoutType];
    if (v36)
    {
      [v8 workoutType];
    }

    else
    {
      +[NSNull null];
    }
    v37 = ;
    [v23 setObject:v37 forKeyedSubscript:@"kEventPatternAnomalyWorkoutType"];

    v38 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 motionType]);
    [v23 setObject:v38 forKeyedSubscript:@"kEventPatternAnomalyMotionType"];
  }

  v39 = [v8 pCount];
  if (v39)
  {
    v40 = v39;
    v41 = [v8 pCount];
    v42 = [v41 intValue];

    if ((v42 & 0x80000000) == 0)
    {
      v43 = [v8 pCount];
      [v23 setObject:v43 forKeyedSubscript:@"kEventPatternAnomalyPcount"];
    }
  }

  v44 = [v8 densityScore];
  if (v44)
  {
    v45 = v44;
    v46 = [v8 densityScore];
    v47 = [v46 intValue];

    if ((v47 & 0x80000000) == 0)
    {
      v48 = [v8 densityScore];
      [v23 setObject:v48 forKeyedSubscript:@"kEventPatternAnomalyDensityScore"];
    }
  }

  [(MOEvent *)v21 setPatterns:v23];

  return v21;
}

- (void)_updateFeatureGroupEWADict:(id)a3 withCurrentFeature:(id)a4 andCurrentEvent:(id)a5 andCurrentEventTimeStamp:(double)a6
{
  v40 = a3;
  v10 = a4;
  v11 = a5;
  [v10 doubleValue];
  if (v12 >= self->_minimumFeatureSizeForPersonalizedThreshold)
  {
    v13 = [v40 objectForKeyedSubscript:@"EWAForAnomalyLastUpdateTime"];
    [v13 doubleValue];
    v15 = v14;

    if (v15 < a6)
    {
      if ([v11 category] == 2 || objc_msgSend(v11, "category") == 10 || objc_msgSend(v11, "category") == 16)
      {
        v16 = [v11 eventIdentifier];
        v17 = [v16 UUIDString];
        [v40 setObject:v17 forKeyedSubscript:@"EWAEventUUID"];
      }

      if ([v11 category] == 2)
      {
        v18 = [v11 identifierFromProvider];
        [v40 setObject:v18 forKeyedSubscript:@"EWAEventProviderUUID"];
      }

      v19 = [v40 objectForKeyedSubscript:@"EWAForAnomalyValue"];
      [v19 doubleValue];
      v21 = v20;

      if (v21 == -1.0)
      {
        [v10 doubleValue];
        v22 = [NSNumber numberWithDouble:?];
        [v40 setObject:v22 forKeyedSubscript:@"EWAForAnomalyValue"];
      }

      else
      {
        v23 = [v40 objectForKeyedSubscript:@"EWAForAnomalyLastUpdateTime"];
        [v23 doubleValue];
        v25 = (a6 - v24) / 86400.0;

        v26 = pow(self->_betaForEWAUpdate, v25);
        v22 = [v40 objectForKeyedSubscript:@"EWAForAnomalyValue"];
        [v22 doubleValue];
        v28 = v27;
        [v10 doubleValue];
        v30 = [NSNumber numberWithDouble:(1.0 - v26) * v29 + v26 * v28];
        [v40 setObject:v30 forKeyedSubscript:@"EWAForAnomalyValue"];
      }

      v31 = [v11 endDate];
      [v31 timeIntervalSinceReferenceDate];
      v32 = [NSNumber numberWithDouble:?];
      [v40 setObject:v32 forKeyedSubscript:@"EWAForAnomalyLastUpdateTime"];

      v33 = [v40 objectForKeyedSubscript:@"EWAForAnomalyFeatureCountUntilMinimum"];
      LODWORD(v31) = [v33 intValue];
      minimumFeatureNumberForPersonalizedThreshold = self->_minimumFeatureNumberForPersonalizedThreshold;

      if (v31 < minimumFeatureNumberForPersonalizedThreshold)
      {
        v35 = [v40 objectForKeyedSubscript:@"EWAForAnomalyFeatureCountUntilMinimum"];
        v36 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v35 intValue] + 1);
        [v40 setObject:v36 forKeyedSubscript:@"EWAForAnomalyFeatureCountUntilMinimum"];
      }

      v37 = [v40 objectForKeyedSubscript:@"EWAForAnomalyFeatureCountUntilMinimum"];
      v38 = [v37 intValue];
      v39 = self->_minimumFeatureNumberForPersonalizedThreshold;

      if (v38 >= v39)
      {
        [v40 setObject:&__kCFBooleanTrue forKeyedSubscript:@"EWAForAnomalyFeatureCountMeetsMinimum"];
      }
    }
  }
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
        [MOEventPatternDetectorAnomalyDetectorExponentialDistributionWithEWA configure:];
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
        [MOEventPatternDetectorAnomalyDetectorExponentialDistributionWithEWA configure:];
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
        [MOEventPatternDetectorAnomalyDetectorExponentialDistributionWithEWA configure:];
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
        [MOEventPatternDetectorAnomalyDetectorExponentialDistributionWithEWA configure:];
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
        [MOEventPatternDetectorAnomalyDetectorExponentialDistributionWithEWA configure:];
      }
    }

    v21 = [v4 objectForKey:@"BetaForEWAUpdate"];

    if (v21)
    {
      v22 = [v4 objectForKeyedSubscript:@"BetaForEWAUpdate"];
      [v22 doubleValue];
      self->_betaForEWAUpdate = v23;
    }

    else
    {
      v22 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [MOEventPatternDetectorAnomalyDetectorExponentialDistributionWithEWA configure:];
      }
    }

    v24 = [v4 objectForKey:@"AnomalyFeatureType"];

    if (v24)
    {
      v25 = [v4 objectForKeyedSubscript:@"AnomalyFeatureType"];
      self->_anomalyFeatureType = [v25 intValue];
    }

    else
    {
      v25 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [MOEventPatternDetectorAnomalyDetectorExponentialDistributionWithEWA configure:];
      }
    }

    v26 = [v4 objectForKey:@"AnomalyEWADictionariesForDetector"];

    if (v26)
    {
      v27 = [v4 objectForKeyedSubscript:@"AnomalyEWADictionariesForDetector"];
      anomalyEWADictionariesForDetector = self->_anomalyEWADictionariesForDetector;
      self->_anomalyEWADictionariesForDetector = v27;

      v29 = [(NSMutableDictionary *)self->_anomalyEWADictionariesForDetector copy];
      p_super = &self->_EWADict->super;
      self->_EWADict = v29;
    }

    else
    {
      p_super = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        [MOEventPatternDetectorAnomalyDetectorExponentialDistributionWithEWA configure:];
      }
    }
  }

  return v5 != 0;
}

- (void)extractAnomalyEventsFrom:(os_log_t)log withFeatures:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "All required keys for saving EWA are not present", buf, 2u);
}

@end