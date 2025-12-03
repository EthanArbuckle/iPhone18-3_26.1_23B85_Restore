@interface MOEventPatternDetectorAnomalyDetectorExponentialDistributionWithEWA
- (BOOL)configure:(id)configure;
- (MOEventPatternDetectorAnomalyDetectorExponentialDistributionWithEWA)init;
- (id)_createAnomalyEventFromEvent:(id)event andFeature:(id)feature andThreshold:(double)threshold;
- (id)extractAnomalyEventsFrom:(id)from withFeatures:(id)features;
- (void)_updateFeatureGroupEWADict:(id)dict withCurrentFeature:(id)feature andCurrentEvent:(id)event andCurrentEventTimeStamp:(double)stamp;
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

- (id)extractAnomalyEventsFrom:(id)from withFeatures:(id)features
{
  fromCopy = from;
  featuresCopy = features;
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
  if (![fromCopy count])
  {
LABEL_80:
    v96 = [(NSMutableDictionary *)self->_anomalyEWADictionariesForDetector copy];
    [(MOEventPatternDetectorAnomalyDetectorExponentialDistributionWithEWA *)self setEWADict:v96];

    v48 = v106;
    v10 = v106;
    goto LABEL_84;
  }

  v14 = 0;
  v100 = featuresCopy;
  v101 = v8;
  while (1)
  {
    v15 = [fromCopy objectAtIndex:v14];
    v105 = v14;
    v107 = [featuresCopy objectAtIndex:v14];
    firstObject = [v15 firstObject];
    category = [firstObject category];

    v109 = v15;
    firstObject2 = [v15 firstObject];
    firstObject3 = firstObject2;
    if (category == 2)
    {
      workoutType = [firstObject2 workoutType];
      v21 = 1;
      v22 = @"MOEventCategoryWorkout";
    }

    else
    {
      category2 = [firstObject2 category];

      if (category2 == 16)
      {
        firstObject3 = [v15 firstObject];
        workoutType = +[MOEventMotionActivity descriptionOfMotionType:](MOEventMotionActivity, "descriptionOfMotionType:", [firstObject3 motionType]);
        v21 = 1;
        v22 = @"MOEventCategoryMotionActivity";
      }

      else
      {
        firstObject4 = [v15 firstObject];
        category3 = [firstObject4 category];

        firstObject5 = [v15 firstObject];
        firstObject3 = firstObject5;
        if (category3 == 10)
        {
          interactionScoredContact = [firstObject5 interactionScoredContact];
          contact = [interactionScoredContact contact];
          identifier = [contact identifier];

          workoutType = identifier;
          v21 = 1;
          v22 = @"MOEventCategorySignificantContact";
        }

        else
        {
          if ([firstObject5 category] == 1 && self->_anomalyFeatureType == 4)
          {
            firstObject6 = [v15 firstObject];
            pCount = [firstObject6 pCount];
            intValue = [pCount intValue];

            if ((intValue & 0x80000000) == 0)
            {
              firstObject7 = [v15 firstObject];
              startDate = [firstObject7 startDate];
              v8 = v101;
              firstObject3 = [v101 components:512 fromDate:startDate];

              v35 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [firstObject3 weekday]);
              workoutType = [v35 stringValue];

              v21 = 1;
              v22 = @"MOEventCategoryProx";
              goto LABEL_35;
            }
          }

          else
          {
          }

          firstObject8 = [v15 firstObject];
          if ([firstObject8 category] == 1 && self->_anomalyFeatureType == 4)
          {
            firstObject9 = [v15 firstObject];
            densityScore = [firstObject9 densityScore];
            [densityScore doubleValue];
            v40 = v39;

            v8 = v101;
            if (v40 >= 0.0)
            {
              firstObject10 = [v15 firstObject];
              startDate2 = [firstObject10 startDate];
              firstObject3 = [v101 components:512 fromDate:startDate2];

              v43 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [firstObject3 weekday]);
              workoutType = [v43 stringValue];

              v21 = 1;
              v22 = @"MOEventCategoryPeopleDensityEvent";
              goto LABEL_35;
            }
          }

          else
          {

            v8 = v101;
          }

          firstObject3 = [v15 firstObject];
          if ([firstObject3 category] == 1)
          {
            anomalyFeatureType = self->_anomalyFeatureType;

            if (anomalyFeatureType != 5)
            {
              workoutType = 0;
              v21 = 0;
              v22 = 0;
              v48 = v106;
              goto LABEL_36;
            }

            firstObject11 = [v15 firstObject];
            startDate3 = [firstObject11 startDate];
            firstObject3 = [v8 components:512 fromDate:startDate3];

            v47 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [firstObject3 weekday]);
            workoutType = [v47 stringValue];

            v21 = 1;
            v22 = @"MOEventTimeAtHomeAnomaly";
          }

          else
          {
            workoutType = 0;
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

    v50 = workoutType ? v21 : 0;
    if (((0x37u >> v49) & 1) == 0 || !v50)
    {
      break;
    }

    v51 = [NSString stringWithFormat:@"%@_%@_%@", v22, workoutType, off_100336EB8[v49]];
    v52 = objc_opt_new();
    v103 = v51;
    v53 = [(NSMutableDictionary *)self->_anomalyEWADictionariesForDetector objectForKey:v51];
    v104 = workoutType;
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

        endDate = [v57 endDate];
        v59 = [endDate isOnOrBefore:v108];

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
      startDate4 = [v57 startDate];
      [startDate4 timeIntervalSinceReferenceDate];
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
          bOOLValue = [v78 BOOLValue];

          if (bOOLValue)
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
    featuresCopy = v100;
    v8 = v101;
    if ([fromCopy count] <= v105 + 1)
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

- (id)_createAnomalyEventFromEvent:(id)event andFeature:(id)feature andThreshold:(double)threshold
{
  eventCopy = event;
  featureCopy = feature;
  startDate = [eventCopy startDate];
  endDate = [eventCopy endDate];
  if ([eventCopy timeAtHomeSubType] == 1)
  {
    cal = self->_cal;
    startDate2 = [eventCopy startDate];
    v14 = [(NSCalendar *)cal components:28 fromDate:startDate2];

    [v14 setHour:3];
    v15 = [(NSCalendar *)self->_cal dateFromComponents:v14];

    v16 = [(NSCalendar *)self->_cal dateFromComponents:v14];
    v17 = [v16 dateByAddingTimeInterval:86400.0];

    endDate = v17;
    startDate = v15;
  }

  v18 = [MOEvent alloc];
  v19 = +[NSUUID UUID];
  v20 = +[NSDate date];
  v21 = -[MOEvent initWithEventIdentifier:startDate:endDate:creationDate:provider:category:](v18, "initWithEventIdentifier:startDate:endDate:creationDate:provider:category:", v19, startDate, endDate, v20, 5, [eventCopy category]);

  expirationDate = [eventCopy expirationDate];
  [(MOEvent *)v21 setExpirationDate:expirationDate];

  if ([eventCopy timeAtHomeSubType] == 1 || objc_msgSend(eventCopy, "timeAtHomeSubType") == 3)
  {
    -[MOEvent setTimeAtHomeSubType:](v21, "setTimeAtHomeSubType:", [eventCopy timeAtHomeSubType]);
  }

  v23 = objc_opt_new();
  [v23 setObject:&off_100369160 forKeyedSubscript:@"kEventPatternType"];
  v24 = [NSNumber numberWithUnsignedInteger:self->_anomalyFeatureType];
  [v23 setObject:v24 forKeyedSubscript:@"kEventPatternAnomalyFeatureType"];

  eventIdentifier = [eventCopy eventIdentifier];
  uUIDString = [eventIdentifier UUIDString];
  [v23 setObject:uUIDString forKeyedSubscript:@"kEventPatternAnomalousEventIdentifier"];

  [featureCopy doubleValue];
  v28 = v27;

  v29 = [NSNumber numberWithDouble:v28];
  [v23 setObject:v29 forKeyedSubscript:@"kEventPatternFeatureValue"];

  v30 = [NSNumber numberWithDouble:threshold];
  [v23 setObject:v30 forKeyedSubscript:@"kEventPatternThresholdValue"];

  if ([eventCopy category] == 10)
  {
    interactionScoredContact = [eventCopy interactionScoredContact];
    contact = [interactionScoredContact contact];
    identifier = [contact identifier];
    [v23 setObject:identifier forKeyedSubscript:@"kEventPatternInteractionScoredContactIdentifier"];
  }

  if ([eventCopy category] == 2)
  {
    workoutType = [eventCopy workoutType];
    if (workoutType)
    {
      [eventCopy workoutType];
    }

    else
    {
      +[NSNull null];
    }
    v35 = ;
    [v23 setObject:v35 forKeyedSubscript:@"kEventPatternAnomalyWorkoutType"];
  }

  if ([eventCopy category] == 16)
  {
    workoutType2 = [eventCopy workoutType];
    if (workoutType2)
    {
      [eventCopy workoutType];
    }

    else
    {
      +[NSNull null];
    }
    v37 = ;
    [v23 setObject:v37 forKeyedSubscript:@"kEventPatternAnomalyWorkoutType"];

    v38 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [eventCopy motionType]);
    [v23 setObject:v38 forKeyedSubscript:@"kEventPatternAnomalyMotionType"];
  }

  pCount = [eventCopy pCount];
  if (pCount)
  {
    v40 = pCount;
    pCount2 = [eventCopy pCount];
    intValue = [pCount2 intValue];

    if ((intValue & 0x80000000) == 0)
    {
      pCount3 = [eventCopy pCount];
      [v23 setObject:pCount3 forKeyedSubscript:@"kEventPatternAnomalyPcount"];
    }
  }

  densityScore = [eventCopy densityScore];
  if (densityScore)
  {
    v45 = densityScore;
    densityScore2 = [eventCopy densityScore];
    intValue2 = [densityScore2 intValue];

    if ((intValue2 & 0x80000000) == 0)
    {
      densityScore3 = [eventCopy densityScore];
      [v23 setObject:densityScore3 forKeyedSubscript:@"kEventPatternAnomalyDensityScore"];
    }
  }

  [(MOEvent *)v21 setPatterns:v23];

  return v21;
}

- (void)_updateFeatureGroupEWADict:(id)dict withCurrentFeature:(id)feature andCurrentEvent:(id)event andCurrentEventTimeStamp:(double)stamp
{
  dictCopy = dict;
  featureCopy = feature;
  eventCopy = event;
  [featureCopy doubleValue];
  if (v12 >= self->_minimumFeatureSizeForPersonalizedThreshold)
  {
    v13 = [dictCopy objectForKeyedSubscript:@"EWAForAnomalyLastUpdateTime"];
    [v13 doubleValue];
    v15 = v14;

    if (v15 < stamp)
    {
      if ([eventCopy category] == 2 || objc_msgSend(eventCopy, "category") == 10 || objc_msgSend(eventCopy, "category") == 16)
      {
        eventIdentifier = [eventCopy eventIdentifier];
        uUIDString = [eventIdentifier UUIDString];
        [dictCopy setObject:uUIDString forKeyedSubscript:@"EWAEventUUID"];
      }

      if ([eventCopy category] == 2)
      {
        identifierFromProvider = [eventCopy identifierFromProvider];
        [dictCopy setObject:identifierFromProvider forKeyedSubscript:@"EWAEventProviderUUID"];
      }

      v19 = [dictCopy objectForKeyedSubscript:@"EWAForAnomalyValue"];
      [v19 doubleValue];
      v21 = v20;

      if (v21 == -1.0)
      {
        [featureCopy doubleValue];
        v22 = [NSNumber numberWithDouble:?];
        [dictCopy setObject:v22 forKeyedSubscript:@"EWAForAnomalyValue"];
      }

      else
      {
        v23 = [dictCopy objectForKeyedSubscript:@"EWAForAnomalyLastUpdateTime"];
        [v23 doubleValue];
        v25 = (stamp - v24) / 86400.0;

        v26 = pow(self->_betaForEWAUpdate, v25);
        v22 = [dictCopy objectForKeyedSubscript:@"EWAForAnomalyValue"];
        [v22 doubleValue];
        v28 = v27;
        [featureCopy doubleValue];
        v30 = [NSNumber numberWithDouble:(1.0 - v26) * v29 + v26 * v28];
        [dictCopy setObject:v30 forKeyedSubscript:@"EWAForAnomalyValue"];
      }

      endDate = [eventCopy endDate];
      [endDate timeIntervalSinceReferenceDate];
      v32 = [NSNumber numberWithDouble:?];
      [dictCopy setObject:v32 forKeyedSubscript:@"EWAForAnomalyLastUpdateTime"];

      v33 = [dictCopy objectForKeyedSubscript:@"EWAForAnomalyFeatureCountUntilMinimum"];
      LODWORD(endDate) = [v33 intValue];
      minimumFeatureNumberForPersonalizedThreshold = self->_minimumFeatureNumberForPersonalizedThreshold;

      if (endDate < minimumFeatureNumberForPersonalizedThreshold)
      {
        v35 = [dictCopy objectForKeyedSubscript:@"EWAForAnomalyFeatureCountUntilMinimum"];
        v36 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v35 intValue] + 1);
        [dictCopy setObject:v36 forKeyedSubscript:@"EWAForAnomalyFeatureCountUntilMinimum"];
      }

      v37 = [dictCopy objectForKeyedSubscript:@"EWAForAnomalyFeatureCountUntilMinimum"];
      intValue = [v37 intValue];
      v39 = self->_minimumFeatureNumberForPersonalizedThreshold;

      if (intValue >= v39)
      {
        [dictCopy setObject:&__kCFBooleanTrue forKeyedSubscript:@"EWAForAnomalyFeatureCountMeetsMinimum"];
      }
    }
  }
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
        [MOEventPatternDetectorAnomalyDetectorExponentialDistributionWithEWA configure:];
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
        [MOEventPatternDetectorAnomalyDetectorExponentialDistributionWithEWA configure:];
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
        [MOEventPatternDetectorAnomalyDetectorExponentialDistributionWithEWA configure:];
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
        [MOEventPatternDetectorAnomalyDetectorExponentialDistributionWithEWA configure:];
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
        [MOEventPatternDetectorAnomalyDetectorExponentialDistributionWithEWA configure:];
      }
    }

    v21 = [configureCopy objectForKey:@"BetaForEWAUpdate"];

    if (v21)
    {
      v22 = [configureCopy objectForKeyedSubscript:@"BetaForEWAUpdate"];
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

    v24 = [configureCopy objectForKey:@"AnomalyFeatureType"];

    if (v24)
    {
      v25 = [configureCopy objectForKeyedSubscript:@"AnomalyFeatureType"];
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

    v26 = [configureCopy objectForKey:@"AnomalyEWADictionariesForDetector"];

    if (v26)
    {
      v27 = [configureCopy objectForKeyedSubscript:@"AnomalyEWADictionariesForDetector"];
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