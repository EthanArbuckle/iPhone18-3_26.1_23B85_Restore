@interface MOWorkoutAnnotationManager
+ (double)maxDistanceSpanFromStartUsingSparseLocations:(id)locations;
+ (unint64_t)subTypeFromBaseEvents:(id)events;
- (BOOL)isDominantPlaceForVisits:(id)visits startDate:(id)date endDate:(id)endDate;
- (MOWorkoutAnnotationManager)initWithUniverse:(id)universe;
- (id)annotateBaseEvents:(id)events contextEvents:(id)contextEvents;
- (id)annotateEventBundle:(id)bundle withContextEvents:(id)events andBaseEventReference:(id)reference;
- (id)buildRankingMetaDataDict:(id)dict withBaseEvents:(id)events andContextEvents:(id)contextEvents;
- (id)filterPhoneVisits:(id)visits farFromWorkoutEvents:(id)events forEventBundle:(id)bundle;
- (id)getBaseEvents:(id)events;
- (id)getContextEventsForBaseEvents:(id)events events:(id)a4 withPatternEvents:(id)patternEvents;
- (id)groupedEventsFromEvents:(id)events;
- (id)majorVisitsFromVisits:(id)visits referenceDate:(id)date;
- (id)referenceDateFromStartDate:(id)date endDate:(id)endDate index:(double)index;
- (id)removeDuplicateWorkouts:(id)workouts;
- (id)removePhoneActivitiesOverlappingWorkouts:(id)workouts;
@end

@implementation MOWorkoutAnnotationManager

- (MOWorkoutAnnotationManager)initWithUniverse:(id)universe
{
  universeCopy = universe;
  v47.receiver = self;
  v47.super_class = MOWorkoutAnnotationManager;
  v5 = [(MOTimeContextAnnotationManager *)&v47 initWithUniverse:universeCopy];
  if (v5)
  {
    v48[0] = GEOPOICategoryATM;
    v48[1] = GEOPOICategoryEVCharger;
    v48[2] = GEOPOICategoryParking;
    v48[3] = GEOPOICategoryPublicTransport;
    v48[4] = GEOPOICategoryRestroom;
    v6 = [NSArray arrayWithObjects:v48 count:5];
    v7 = [NSSet setWithArray:v6];
    lessInterestingPoiCategories = v5->_lessInterestingPoiCategories;
    v5->_lessInterestingPoiCategories = v7;

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [universeCopy getService:v10];
    configurationManager = v5->_configurationManager;
    v5->_configurationManager = v11;

    HIDWORD(v13) = 1072168960;
    *&v13 = 0.75;
    [(MOConfigurationManagerBase *)v5->_configurationManager getFloatSettingForKey:@"VA_VisitLabelMediumConfidenceThreshold" withFallback:v13];
    v5->_visitLabelMediumConfidenceThreshold = v14;
    HIDWORD(v15) = 1072483532;
    *&v15 = 0.9;
    [(MOConfigurationManagerBase *)v5->_configurationManager getFloatSettingForKey:@"VA_VisitLabelHighConfidenceThreshold" withFallback:v15];
    v5->_visitLabelHighConfidenceThreshold = v16;
    HIDWORD(v17) = 1071644672;
    *&v17 = 0.5;
    [(MOConfigurationManagerBase *)v5->_configurationManager getFloatSettingForKey:@"VA_AOIVisitLabelConfidentThreshold" withFallback:v17];
    v19 = v18;
    v5->_aoiVisitLabelConfidentThreshold = v19;
    LODWORD(v19) = 1128792064;
    [(MOConfigurationManagerBase *)v5->_configurationManager getFloatSettingForKey:@"MaximumWatchPhoneVisitDistanceKey" withFallback:v19];
    v21 = v20;
    v5->_maximumWatchPhoneVisitDistance = v21;
    LODWORD(v21) = 15.0;
    [(MOConfigurationManagerBase *)v5->_configurationManager getFloatSettingForKey:@"MotionActivityWalkDurationThresholdKey" withFallback:v21];
    v23 = v22;
    v5->_motionActivityWalkDurationThreshold = v23;
    LODWORD(v23) = 5.0;
    [(MOConfigurationManagerBase *)v5->_configurationManager getFloatSettingForKey:@"MotionActivityRunDurationThresholdKey" withFallback:v23];
    v25 = v24;
    v5->_motionActivityRunDurationThreshold = v25;
    LODWORD(v25) = 10.0;
    [(MOConfigurationManagerBase *)v5->_configurationManager getFloatSettingForKey:@"MotionActivityMixedRunningWalkingDurationThresholdKey" withFallback:v25];
    v5->_motionActivityMixedRunningWalkingDurationThreshold = v26;
    [(MOConfigurationManagerBase *)v5->_configurationManager getFloatSettingForKey:@"MotionActivityWalkCadenceThresholdKey" withFallback:0.0];
    v28 = v27;
    v5->_motionActivityWalkCadenceThreshold = v28;
    LODWORD(v28) = 1128792064;
    [(MOConfigurationManagerBase *)v5->_configurationManager getFloatSettingForKey:@"MotionActivityWalkSpanThresholdKey" withFallback:v28];
    v30 = v29;
    v5->_motionActivityWalkSpanThreshold = v30;
    LODWORD(v30) = 1128792064;
    [(MOConfigurationManagerBase *)v5->_configurationManager getFloatSettingForKey:@"MotionActivityRunSpanThresholdKey" withFallback:v30];
    v32 = v31;
    v5->_motionActivityRunSpanThreshold = v32;
    LODWORD(v32) = 1128792064;
    [(MOConfigurationManagerBase *)v5->_configurationManager getFloatSettingForKey:@"MotionActivityMixedRunningWalkingSpanThresholdKey" withFallback:v32];
    v34 = v33;
    v5->_motionActivityMixedRunningWalkingSpanThreshold = v34;
    LODWORD(v34) = 1140457472;
    [(MOConfigurationManagerBase *)v5->_configurationManager getFloatSettingForKey:@"MotionActivityRunDistanceThresholdKey" withFallback:v34];
    v36 = v35;
    v5->_motionActivityRunDistanceThreshold = v36;
    LODWORD(v36) = 1140457472;
    [(MOConfigurationManagerBase *)v5->_configurationManager getFloatSettingForKey:@"MotionActivityMixedRunningWalkingDistanceThresholdKey" withFallback:v36];
    v38 = v37;
    v5->_motionActivityMixedRunningWalkingDistanceThreshold = v38;
    LODWORD(v38) = 1137180672;
    [(MOConfigurationManagerBase *)v5->_configurationManager getFloatSettingForKey:@"MotionActivityWalkMinimumLocationUncertaintyKey" withFallback:v38];
    v40 = v39;
    v5->_motionActivityWalkMinimumLocationUncertainty = v40;
    LODWORD(v40) = 1067030938;
    [(MOConfigurationManagerBase *)v5->_configurationManager getFloatSettingForKey:@"kMotionActivityReferencePointRatioKey" withFallback:v40];
    v42 = v41;
    v5->_motionActivityReferencePointRatio = v42;
    LODWORD(v42) = 1155596288;
    [(MOConfigurationManagerBase *)v5->_configurationManager getFloatSettingForKey:@"VisitMinimumIntersectionWithActivityAbsoluteTime" withFallback:v42];
    v5->_visitMinimumIntersectionWithActivityAbsoluteTime = v43;
    v5->_allowDuplicatedWorkouts = [(MOConfigurationManagerBase *)v5->_configurationManager getBoolSettingForKey:@"AllowDuplicatedWorkoutsKey" withFallback:0];
    LODWORD(v44) = 1180762112;
    [(MOConfigurationManagerBase *)v5->_configurationManager getFloatSettingForKey:@"EmotionAttachmentActivityBundleDurationThreshold" withFallback:v44];
    v5->_emotionAttachmentBundleDurationThreshold = v45;
  }

  return v5;
}

- (id)getBaseEvents:(id)events
{
  eventsCopy = events;
  v4 = [NSPredicate predicateWithFormat:@"%K IN %@ AND %K !=[c] %@", @"category", &off_10036E208, @"workoutType", @"HKWorkoutActivityTypeCooldown"];
  v5 = [eventsCopy filteredArrayUsingPredicate:v4];

  return v5;
}

- (id)groupedEventsFromEvents:(id)events
{
  eventsCopy = events;
  if (![eventsCopy count])
  {
    v28 = &__NSArray0__struct;
    goto LABEL_24;
  }

  selfCopy = self;
  v39 = objc_opt_new();
  [eventsCopy valueForKeyPath:@"@distinctUnionOfObjects.workoutType"];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v43 = 0u;
  v34 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (!v34)
  {
    goto LABEL_20;
  }

  v5 = *v41;
  v6 = &GEOPOICategoryGasStation_ptr;
  v31 = *v41;
  v32 = eventsCopy;
  do
  {
    v7 = 0;
    do
    {
      if (*v41 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v38 = v7;
      v37 = [v6[193] predicateWithFormat:@"%K = %@", @"workoutType", *(*(&v40 + 1) + 8 * v7)];
      v8 = [eventsCopy filteredArrayUsingPredicate:?];
      v35 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
      v44 = v35;
      v9 = [NSArray arrayWithObjects:&v44 count:1];
      v36 = v8;
      v10 = [v8 sortedArrayUsingDescriptors:v9];

      v11 = objc_opt_new();
      firstObject = [v10 firstObject];
      [v11 addObject:firstObject];

      if ([v10 count] < 2)
      {
        goto LABEL_17;
      }

      if ([v10 count] >= 2)
      {
        v13 = 1;
        while (1)
        {
          v14 = [v10 objectAtIndex:v13 - 1];
          v15 = [v10 objectAtIndex:v13];
          startDate = [v15 startDate];
          endDate = [v14 endDate];
          [startDate timeIntervalSinceDate:endDate];
          if (v18 <= 300.0)
          {
            break;
          }

          startDate2 = [v15 startDate];
          endDate2 = [v14 endDate];
          v21 = [startDate2 isBeforeDate:endDate2];

          if ((v21 & 1) == 0)
          {
            v22 = [v11 copy];
            [v39 addObject:v22];

            startDate = v11;
            v11 = objc_opt_new();
LABEL_14:
          }

          [v11 addObject:v15];

          if ([v10 count] <= ++v13)
          {
            goto LABEL_16;
          }
        }

        goto LABEL_14;
      }

LABEL_16:
      v5 = v31;
      eventsCopy = v32;
      v6 = &GEOPOICategoryGasStation_ptr;
      if ([v11 count])
      {
LABEL_17:
        v23 = [v11 copy];
        [v39 addObject:v23];
      }

      v7 = v38 + 1;
    }

    while ((v38 + 1) != v34);
    v34 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  }

  while (v34);
LABEL_20:
  v24 = v39;
  v25 = v24;
  if (![(MOWorkoutAnnotationManager *)selfCopy allowDuplicatedWorkouts])
  {
    v26 = [(MOWorkoutAnnotationManager *)selfCopy removePhoneActivitiesOverlappingWorkouts:v24];
    v25 = [(MOWorkoutAnnotationManager *)selfCopy removeDuplicateWorkouts:v26];
  }

  v27 = [v25 sortedArrayUsingComparator:&__block_literal_global_53];
  v28 = [v27 copy];

LABEL_24:

  return v28;
}

int64_t __54__MOWorkoutAnnotationManager_groupedEventsFromEvents___block_invoke(id a1, NSArray *a2, NSArray *a3)
{
  v4 = a3;
  v5 = [(NSArray *)a2 firstObject];
  v6 = [v5 startDate];
  v7 = [(NSArray *)v4 firstObject];

  v8 = [v7 startDate];
  v9 = [v6 compare:v8];

  return v9;
}

- (id)removePhoneActivitiesOverlappingWorkouts:(id)workouts
{
  workoutsCopy = workouts;
  if ([workoutsCopy count])
  {
    v35 = objc_opt_new();
    v4 = objc_opt_new();
    v5 = objc_opt_new();
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v33 = workoutsCopy;
    v6 = workoutsCopy;
    v7 = [v6 countByEnumeratingWithState:&v51 objects:v57 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v52;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v52 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v51 + 1) + 8 * i);
          firstObject = [v11 firstObject];
          category = [firstObject category];

          v14 = v4;
          if (category != 2)
          {
            firstObject2 = [v11 firstObject];
            category2 = [firstObject2 category];

            v14 = v5;
            if (category2 != 16)
            {
              continue;
            }
          }

          [v14 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v51 objects:v57 count:16];
      }

      while (v8);
    }

    [v35 addObjectsFromArray:v4];
    if ([v5 count])
    {
      workoutsCopy = v33;
      if ([v4 count])
      {
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        obj = v5;
        v39 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
        if (!v39)
        {
          goto LABEL_34;
        }

        v37 = v4;
        v38 = *v48;
        v36 = v5;
        while (1)
        {
          for (j = 0; j != v39; j = j + 1)
          {
            if (*v48 != v38)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v47 + 1) + 8 * j);
            v43 = 0u;
            v44 = 0u;
            v45 = 0u;
            v46 = 0u;
            v19 = v4;
            v20 = [v19 countByEnumeratingWithState:&v43 objects:v55 count:16];
            if (!v20)
            {

LABEL_31:
              [v35 addObject:{v18, v33}];
              continue;
            }

            v21 = v20;
            v40 = j;
            v41 = v19;
            v22 = 0;
            v42 = *v44;
            do
            {
              for (k = 0; k != v21; k = k + 1)
              {
                if (*v44 != v42)
                {
                  objc_enumerationMutation(v41);
                }

                v24 = *(*(&v43 + 1) + 8 * k);
                firstObject3 = [v18 firstObject];
                startDate = [firstObject3 startDate];
                lastObject = [v18 lastObject];
                endDate = [lastObject endDate];
                v29 = [MOContextAnnotationUtilities predicateWithStartDate:startDate endDate:endDate];

                v30 = [v24 filteredArrayUsingPredicate:v29];
                if ([v30 count])
                {
                  ++v22;
                }
              }

              v21 = [v41 countByEnumeratingWithState:&v43 objects:v55 count:16];
            }

            while (v21);

            v5 = v36;
            v4 = v37;
            j = v40;
            if (!v22)
            {
              goto LABEL_31;
            }
          }

          v39 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
          if (!v39)
          {
LABEL_34:

            v6 = v35;
            goto LABEL_35;
          }
        }
      }
    }

    else
    {
LABEL_35:
      workoutsCopy = v33;
    }

    v31 = v6;
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (id)removeDuplicateWorkouts:(id)workouts
{
  workoutsCopy = workouts;
  if ([workoutsCopy count])
  {
    v4 = objc_opt_new();
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = workoutsCopy;
    v5 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v46;
      v39 = v4;
      v40 = workoutsCopy;
      v38 = *v46;
      do
      {
        v8 = 0;
        v41 = v6;
        do
        {
          if (*v46 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v45 + 1) + 8 * v8);
          if ([v9 count] > 1)
          {
            v44 = v8;
            v10 = objc_opt_new();
            v43 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
            v49 = v43;
            v11 = [NSArray arrayWithObjects:&v49 count:1];
            v12 = [v9 sortedArrayUsingDescriptors:v11];

            firstObject = [v12 firstObject];
            if ([v12 count] < 2)
            {
              v36 = firstObject;
            }

            else
            {
              v14 = 1;
              do
              {
                v15 = [v12 objectAtIndex:v14];
                v16 = [NSDateInterval alloc];
                startDate = [firstObject startDate];
                endDate = [firstObject endDate];
                v19 = [v16 initWithStartDate:startDate endDate:endDate];

                v20 = [NSDateInterval alloc];
                startDate2 = [v15 startDate];
                endDate2 = [v15 endDate];
                v23 = [v20 initWithStartDate:startDate2 endDate:endDate2];

                v24 = [v23 intersectionWithDateInterval:v19];
                [v19 duration];
                v26 = v25;
                v27 = v15;
                [v19 duration];
                v29 = v28;
                [v23 duration];
                if (v29 <= v30)
                {
                  v32 = v27;
                }

                else
                {
                  [v23 duration];
                  v26 = v31;
                  v32 = firstObject;
                }

                if (v26 <= 0.0 || ([v24 duration], v33 / v26 <= 0.5))
                {
                  [v10 addObject:firstObject];
                  v34 = [v12 count] - 1;
                  v35 = v27;
                }

                else
                {
                  v34 = [v12 count] - 1;
                  v35 = v32;
                }

                if (v14 == v34)
                {
                  [v10 addObject:v35];
                }

                v36 = v35;

                ++v14;
                firstObject = v36;
              }

              while ([v12 count] > v14);
            }

            v4 = v39;
            [v39 addObject:v10];

            workoutsCopy = v40;
            v6 = v41;
            v7 = v38;
            v8 = v44;
          }

          else
          {
            [v4 addObject:v9];
          }

          v8 = v8 + 1;
        }

        while (v8 != v6);
        v6 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)getContextEventsForBaseEvents:(id)events events:(id)a4 withPatternEvents:(id)patternEvents
{
  eventsCopy = events;
  v82 = a4;
  patternEventsCopy = patternEvents;
  v8 = [NSPredicate predicateWithFormat:@"%K IN %@", @"category", &off_10036E220];
  firstObject = [eventsCopy firstObject];
  startDate = [firstObject startDate];
  lastObject = [eventsCopy lastObject];
  endDate = [lastObject endDate];
  v13 = [MOContextAnnotationUtilities predicateWithStartDate:startDate endDate:endDate];

  firstObject2 = [eventsCopy firstObject];
  startDate2 = [firstObject2 startDate];
  lastObject2 = [eventsCopy lastObject];
  endDate2 = [lastObject2 endDate];
  v18 = [MOContextAnnotationUtilities predicateWithStartDate:startDate2 endDate:endDate2 distanceThreshold:0.5];

  v79 = v13;
  v80 = v8;
  v121[0] = v8;
  v121[1] = v13;
  v78 = v18;
  v121[2] = v18;
  v19 = [NSArray arrayWithObjects:v121 count:3];
  v20 = [NSCompoundPredicate andPredicateWithSubpredicates:v19];

  firstObject3 = [eventsCopy firstObject];
  startDate3 = [firstObject3 startDate];
  lastObject3 = [eventsCopy lastObject];
  endDate3 = [lastObject3 endDate];
  v25 = [MOContextAnnotationUtilities predicateOfEventsWithPlaySessionsWithStartDate:startDate3 endData:endDate3 distanceThreshold:0.5];

  v76 = v25;
  v77 = v20;
  v120[0] = v25;
  v120[1] = v20;
  v26 = [NSArray arrayWithObjects:v120 count:2];
  v27 = [NSCompoundPredicate orPredicateWithSubpredicates:v26];

  v75 = v27;
  v81 = [v82 filteredArrayUsingPredicate:v27];
  firstObject4 = [eventsCopy firstObject];
  startDate4 = [firstObject4 startDate];
  lastObject4 = [eventsCopy lastObject];
  endDate4 = [lastObject4 endDate];
  v32 = [MOContextAnnotationUtilities predicateOfSocialContextEventWithStartDate:startDate4 endData:endDate4];

  v74 = v32;
  v33 = [v82 filteredArrayUsingPredicate:v32];
  v34 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  v87 = eventsCopy;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    v35 = objc_opt_class();
    v36 = NSStringFromClass(v35);
    v37 = [v81 count];
    firstObject5 = [eventsCopy firstObject];
    startDate5 = [firstObject5 startDate];
    lastObject5 = [eventsCopy lastObject];
    endDate5 = [lastObject5 endDate];
    *buf = 138413058;
    v113 = v36;
    v114 = 2048;
    v115 = v37;
    v116 = 2112;
    v117 = startDate5;
    v118 = 2112;
    v119 = endDate5;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%@: filtered social context event count, %lu, startDate, %@, endDate, %@", buf, 0x2Au);

    eventsCopy = v87;
  }

  firstObject6 = [eventsCopy firstObject];
  startDate6 = [firstObject6 startDate];
  lastObject6 = [eventsCopy lastObject];
  endDate6 = [lastObject6 endDate];
  v46 = [MOContextAnnotationUtilities predicateOfEmotionLogsWithStartDate:startDate6 endDate:endDate6];

  v73 = v46;
  v47 = [v82 filteredArrayUsingPredicate:v46];
  v48 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
  {
    v49 = objc_opt_class();
    firstObject6 = NSStringFromClass(v49);
    v50 = [v47 count];
    firstObject7 = [eventsCopy firstObject];
    startDate7 = [firstObject7 startDate];
    lastObject7 = [eventsCopy lastObject];
    endDate7 = [lastObject7 endDate];
    *buf = 138413058;
    v113 = firstObject6;
    v114 = 2048;
    v115 = v50;
    v116 = 2112;
    v117 = startDate7;
    v118 = 2112;
    v119 = endDate7;
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "%@: filtered emotion event count, %lu, startDate, %@, endDate, %@", buf, 0x2Au);

    eventsCopy = v87;
  }

  v92 = objc_opt_new();
  [v92 addObjectsFromArray:v81];
  if ([patternEventsCopy count])
  {
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    obj = eventsCopy;
    v89 = [obj countByEnumeratingWithState:&v106 objects:v111 count:16];
    if (!v89)
    {
      goto LABEL_33;
    }

    v84 = *v107;
    v85 = v47;
    v86 = v33;
    while (1)
    {
      v55 = 0;
      do
      {
        if (*v107 != v84)
        {
          v56 = v55;
          objc_enumerationMutation(obj);
          v55 = v56;
        }

        v90 = v55;
        v94 = *(*(&v106 + 1) + 8 * v55);
        v102 = 0u;
        v103 = 0u;
        v104 = 0u;
        v105 = 0u;
        v93 = patternEventsCopy;
        v57 = [v93 countByEnumeratingWithState:&v102 objects:v110 count:16];
        if (v57)
        {
          v58 = v57;
          v59 = *v103;
          do
          {
            v60 = 0;
            v91 = v58;
            do
            {
              if (*v103 != v59)
              {
                objc_enumerationMutation(v93);
              }

              v61 = *(*(&v102 + 1) + 8 * v60);
              patterns = [v61 patterns];
              v63 = [patterns objectForKeyedSubscript:@"kEventPatternType"];
              intValue = [v63 intValue];
              if (intValue)
              {
                goto LABEL_19;
              }

              eventIdentifier = [v94 eventIdentifier];
              firstObject6 = [eventIdentifier UUIDString];
              patterns2 = [v61 patterns];
              v25 = [patterns2 objectForKeyedSubscript:@"kEventPatternAnomalousEventIdentifier"];
              if (([firstObject6 isEqualToString:v25] & 1) == 0)
              {
LABEL_19:
                v98 = v63;
                v99 = patterns;
                patterns3 = [v61 patterns];
                v66 = [patterns3 objectForKeyedSubscript:@"kEventPatternType"];
                v100 = v61;
                if ([v66 intValue] == 2)
                {
                  patterns4 = [v61 patterns];
                  v68 = [patterns4 objectForKeyedSubscript:@"kEventPatternRoutineEventIdentifierList"];
                  eventIdentifier2 = [v94 eventIdentifier];
                  uUIDString = [eventIdentifier2 UUIDString];
                  v97 = [v68 containsObject:uUIDString];

                  v58 = v91;
                }

                else
                {
                  v97 = 0;
                }

                if (intValue)
                {

                  v61 = v100;
                  if (!v97)
                  {
                    goto LABEL_25;
                  }

LABEL_24:
                  [v92 addObject:v61];
                  goto LABEL_25;
                }

                patterns = v99;
                v61 = v100;
                v63 = v98;
                v64 = v97;
              }

              else
              {
                v64 = 1;
              }

              if (v64)
              {
                goto LABEL_24;
              }

LABEL_25:
              v60 = v60 + 1;
            }

            while (v58 != v60);
            v71 = [v93 countByEnumeratingWithState:&v102 objects:v110 count:16];
            v58 = v71;
          }

          while (v71);
        }

        v55 = v90 + 1;
        v33 = v86;
        eventsCopy = v87;
        v47 = v85;
      }

      while ((v90 + 1) != v89);
      v89 = [obj countByEnumeratingWithState:&v106 objects:v111 count:16];
      if (!v89)
      {
LABEL_33:

        break;
      }
    }
  }

  if ([v33 count])
  {
    [v92 addObjectsFromArray:v33];
  }

  if ([v47 count])
  {
    [v92 addObjectsFromArray:v47];
  }

  return v92;
}

+ (unint64_t)subTypeFromBaseEvents:(id)events
{
  firstObject = [events firstObject];
  if ([firstObject category] == 16 && (objc_msgSend(firstObject, "motionActivityEvent"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "motionType"), v4, (v5 - 2) <= 4))
  {
    v6 = qword_100323540[(v5 - 2)];
  }

  else
  {
    v6 = 201;
  }

  return v6;
}

- (id)annotateBaseEvents:(id)events contextEvents:(id)contextEvents
{
  eventsCopy = events;
  contextEventsCopy = contextEvents;
  v174 = eventsCopy;
  if (![eventsCopy count])
  {
    v30 = 0;
    goto LABEL_126;
  }

  v170 = contextEventsCopy;
  v7 = [MOWorkoutAnnotationManager subTypeFromBaseEvents:eventsCopy];
  if (v7 - 204 > 4 || ((1 << (v7 + 52)) & 0x19) == 0)
  {
    v40 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "[MOWorkoutAnnotationManager.annotateBaseEvents] annotating regular workout activity", buf, 2u);
    }

    goto LABEL_28;
  }

  lastObject = [eventsCopy lastObject];
  endDate = [lastObject endDate];
  firstObject = [eventsCopy firstObject];
  startDate = [firstObject startDate];
  [endDate timeIntervalSinceDate:startDate];
  v14 = v13;

  v195 = 0u;
  v196 = 0u;
  v193 = 0u;
  v194 = 0u;
  v15 = eventsCopy;
  v16 = [v15 countByEnumeratingWithState:&v193 objects:v205 count:16];
  if (v16)
  {
    v17 = 0;
    v18 = *v194;
    v19 = 0.0;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v194 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v193 + 1) + 8 * i);
        motionActivityEvent = [v21 motionActivityEvent];
        motionStepCount = [motionActivityEvent motionStepCount];
        intValue = [motionStepCount intValue];

        motionActivityEvent2 = [v21 motionActivityEvent];
        motionDistance = [motionActivityEvent2 motionDistance];
        [motionDistance doubleValue];
        v28 = v27;

        v17 += intValue;
        v19 = v19 + v28;
      }

      v16 = [v15 countByEnumeratingWithState:&v193 objects:v205 count:16];
    }

    while (v16);
    v29 = v17;
  }

  else
  {
    v19 = 0.0;
    v29 = 0.0;
  }

  [MOWorkoutAnnotationManager maxDistanceSpanFromStartUsingSparseLocations:v15];
  v32 = v31;
  v33 = [(MOConfigurationManager *)self->_configurationManager isAllowedToPromptEventCategory:1];
  v34 = v14 / 60.0;
  switch(v7)
  {
    case 0xD0uLL:
      v61 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_INFO, "[MOWorkoutAnnotationManager.annotateBaseEvents] annotating motion activity - mixed running & walking", buf, 2u);
      }

      [(MOWorkoutAnnotationManager *)self motionActivityMixedRunningWalkingDurationThreshold];
      if (v34 >= v62)
      {
        [(MOWorkoutAnnotationManager *)self motionActivityMixedRunningWalkingDistanceThreshold];
        if (v19 >= v63)
        {
          if (!v33)
          {
            goto LABEL_28;
          }

          [(MOWorkoutAnnotationManager *)self motionActivityMixedRunningWalkingSpanThreshold];
          if (v32 >= v154)
          {
            goto LABEL_28;
          }
        }
      }

      v38 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    case 0xCFuLL:
      v58 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "[MOWorkoutAnnotationManager.annotateBaseEvents] annotating motion activity - running", buf, 2u);
      }

      [(MOWorkoutAnnotationManager *)self motionActivityRunDurationThreshold];
      if (v34 >= v59)
      {
        [(MOWorkoutAnnotationManager *)self motionActivityRunDistanceThreshold];
        if (v19 >= v60)
        {
          if (!v33)
          {
            goto LABEL_28;
          }

          [(MOWorkoutAnnotationManager *)self motionActivityRunSpanThreshold];
          if (v32 >= v153)
          {
            goto LABEL_28;
          }
        }
      }

      v38 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        goto LABEL_45;
      }

LABEL_43:
      *buf = 134218752;
      *&buf[4] = v34;
      *&buf[12] = 2048;
      *&buf[14] = v19;
      *&buf[22] = 1024;
      LODWORD(v202) = v33;
      WORD2(v202) = 2048;
      *(&v202 + 6) = v32;
      v39 = "[MOWorkoutAnnotationManager.annotateBaseEvents] Failed to meet bundling criteria, duration=%fl, totalDistance=%fl, allowedToUseLocation=%d, boutsSpan=%fl";
      goto LABEL_44;
    case 0xCCuLL:
      v35 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "[MOWorkoutAnnotationManager.annotateBaseEvents] annotating motion activity - walking", buf, 2u);
      }

      [(MOWorkoutAnnotationManager *)self motionActivityWalkDurationThreshold];
      if (v34 >= v36)
      {
        [(MOWorkoutAnnotationManager *)self motionActivityWalkCadenceThreshold];
        if (v29 / v34 >= v37)
        {
          if (!v33 || ([(MOWorkoutAnnotationManager *)self motionActivityWalkSpanThreshold], v32 >= v155))
          {
LABEL_28:
            v41 = [MOEventBundle alloc];
            v42 = +[NSUUID UUID];
            v43 = +[NSDate date];
            v44 = [(MOEventBundle *)v41 initWithBundleIdentifier:v42 creationDate:v43];

            [(MOEventBundle *)v44 setInterfaceType:1];
            [(MOEventBundle *)v44 setBundleSuperType:2];
            [(MOEventBundle *)v44 setBundleSubType:v7];
            firstObject2 = [v174 firstObject];
            startDate2 = [firstObject2 startDate];
            [(MOEventBundle *)v44 setStartDate:startDate2];

            lastObject2 = [v174 lastObject];
            endDate2 = [lastObject2 endDate];
            [(MOEventBundle *)v44 setEndDate:endDate2];

            v168 = objc_opt_new();
            [v168 addObjectsFromArray:v174];
            v49 = [MOContextAnnotationUtilities setActionForActivityBundle:v174];
            [(MOEventBundle *)v44 setAction:v49];

            firstObject3 = [v174 firstObject];
            startDate3 = [firstObject3 startDate];
            timeZoneManager = [(MOAnnotationManager *)self timeZoneManager];
            v53 = [MOTime timeForDate:startDate3 timeZoneManager:timeZoneManager];
            [(MOEventBundle *)v44 setTime:v53];

            v54 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
            if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
            {
              action = [(MOEventBundle *)v44 action];
              *buf = 138412290;
              *&buf[4] = action;
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "base Action, %@", buf, 0xCu);
            }

            v161 = [(MOWorkoutAnnotationManager *)self annotateEventBundle:v44 withContextEvents:v170 andBaseEventReference:v174];
            [v168 addObjectsFromArray:v161];
            resources = [(MOEventBundle *)v44 resources];
            if (resources)
            {
              resources2 = [(MOEventBundle *)v44 resources];
              v169 = [resources2 mutableCopy];
            }

            else
            {
              v169 = objc_opt_new();
            }

            v191 = 0u;
            v192 = 0u;
            v189 = 0u;
            v190 = 0u;
            obj = v174;
            v64 = [obj countByEnumeratingWithState:&v189 objects:v204 count:16];
            if (v64)
            {
              v172 = 0;
              v65 = *v190;
              v66 = 100.0;
LABEL_50:
              v67 = 0;
              while (1)
              {
                if (*v190 != v65)
                {
                  objc_enumerationMutation(obj);
                }

                v68 = *(*(&v189 + 1) + 8 * v67);
                if ([v68 category] != 2)
                {
                  goto LABEL_66;
                }

                startDate4 = [v68 startDate];
                if (!startDate4)
                {
                  goto LABEL_66;
                }

                endDate3 = [v68 endDate];
                if (!endDate3)
                {
                  goto LABEL_65;
                }

                workoutEvent = [v68 workoutEvent];
                workoutType = [workoutEvent workoutType];
                if (!workoutType)
                {

LABEL_65:
LABEL_66:
                  if ([v68 category] == 16 && objc_msgSend(v68, "provider") == 7)
                  {

                    v99 = objc_opt_new();
                    startDate5 = [(MOEventBundle *)v44 startDate];
                    [startDate5 timeIntervalSince1970];
                    v101 = [NSNumber numberWithDouble:?];
                    [v99 setObject:v101 forKey:@"MOActivityMetaDataKeyStartDate"];

                    endDate4 = [(MOEventBundle *)v44 endDate];
                    [endDate4 timeIntervalSince1970];
                    v103 = [NSNumber numberWithDouble:?];
                    [v99 setObject:v103 forKey:@"MOActivityMetaDataKeyEndDate"];

                    action2 = [(MOEventBundle *)v44 action];
                    actionMetaData = [action2 actionMetaData];

                    v173 = [actionMetaData objectForKeyedSubscript:@"ActivityActionMetaDataValue"];
                    v166 = [actionMetaData objectForKeyedSubscript:@"ActivityActionMetaDataUnit"];
                    action3 = [(MOEventBundle *)v44 action];
                    actionName = [action3 actionName];

                    if (v173 && v166)
                    {
                      [v99 setObject:v173 forKey:@"MOActivityMetaDataKeyStepCount"];
                      [v99 setObject:v166 forKey:@"MOActivityMetaDataKeyUnit"];
                    }

                    [v99 setObject:actionName forKey:@"MOActivityMetaDataMotionType"];
                    v107 = [[MOResource alloc] initWithName:@"MotionActivity" type:13 dict:v99 value:0.0];
                    firstObject4 = [obj firstObject];
                    eventIdentifier = [firstObject4 eventIdentifier];
                    [(MOResource *)v107 setSourceEventIdentifier:eventIdentifier];

                    [(MOResource *)v107 setPriorityScore:v66];
                    v110 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
                    if (os_log_type_enabled(v110, OS_LOG_TYPE_INFO))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_INFO, "Activity: Primary MOResource created for phone walk bundle", buf, 2u);
                    }

                    [v169 addObject:v107];
                    v111 = objc_opt_new();
                    place = [(MOEventBundle *)v44 place];

                    if (place)
                    {
                      place2 = [(MOEventBundle *)v44 place];
                      if ([place2 placeUserType]== 1)
                      {
                        goto LABEL_92;
                      }

                      place3 = [(MOEventBundle *)v44 place];
                      v115 = [place3 placeUserType] == 2;

                      if (!v115)
                      {
                        place4 = [(MOEventBundle *)v44 place];
                        [v111 addObject:place4];

                        firstObject5 = [v111 firstObject];
                        [firstObject5 setPriorityScore:20000.0];

                        place2 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
                        if (os_log_type_enabled(place2, OS_LOG_TYPE_INFO))
                        {
                          place5 = [(MOEventBundle *)v44 place];
                          *buf = 138412290;
                          *&buf[4] = place5;
                          _os_log_impl(&_mh_execute_header, place2, OS_LOG_TYPE_INFO, "Activity, visit based location is available for motion activity, place, %@", buf, 0xCu);
                        }

LABEL_92:
                      }
                    }

                    v116 = [MOContextAnnotationUtilities locationsFromMotionEvents:obj];
                    [(MOWorkoutAnnotationManager *)self motionActivityReferencePointRatio];
                    v118 = v117;
                    [(MOWorkoutAnnotationManager *)self motionActivityWalkMinimumLocationUncertainty];
                    v120 = [MOContextAnnotationUtilities placeFromRoutes:v116 referencePointRatio:v118 minimumRangeOfLocation:v119];
                    [(MOEventBundle *)v44 setPlace:v120];

                    place6 = [(MOEventBundle *)v44 place];

                    if (place6)
                    {
                      firstObject6 = [obj firstObject];
                      eventIdentifier2 = [firstObject6 eventIdentifier];
                      place7 = [(MOEventBundle *)v44 place];
                      [place7 setSourceEventIdentifier:eventIdentifier2];

                      place8 = [(MOEventBundle *)v44 place];
                      [place8 setPriorityScore:200.0];

                      place9 = [(MOEventBundle *)v44 place];
                      [v111 addObject:place9];

                      v127 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
                      if (os_log_type_enabled(v127, OS_LOG_TYPE_INFO))
                      {
                        place10 = [(MOEventBundle *)v44 place];
                        *buf = 138412290;
                        *&buf[4] = place10;
                        _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_INFO, "Activity, walk area map created for motion activity, place, %@", buf, 0xCu);
                      }
                    }

                    if (v111)
                    {
                      [(MOEventBundle *)v44 setPlaces:v111];
                    }

                    v159 = 1;
                    goto LABEL_101;
                  }

                  goto LABEL_68;
                }

                v73 = [v68 provider] == 1;

                if (!v73)
                {
                  goto LABEL_66;
                }

                v74 = objc_opt_new();
                startDate6 = [v68 startDate];
                [startDate6 timeIntervalSince1970];
                v76 = [NSNumber numberWithDouble:?];
                [v74 setObject:v76 forKey:@"MOWorkoutMetaDataKeyStartDate"];

                endDate5 = [v68 endDate];
                [endDate5 timeIntervalSince1970];
                v78 = [NSNumber numberWithDouble:?];
                [v74 setObject:v78 forKey:@"MOWorkoutMetaDataKeyEndDate"];

                workoutEvent2 = [v68 workoutEvent];
                workoutType2 = [workoutEvent2 workoutType];
                [v74 setObject:workoutType2 forKey:@"MOWorkoutMetaDataKeyActivityType"];

                workoutEvent3 = [v68 workoutEvent];
                v82 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [workoutEvent3 isIndoors]);
                [v74 setObject:v82 forKey:@"MOWorkoutMetaDataKeyIsIndoors"];

                identifierFromProvider = [v68 identifierFromProvider];
                LOBYTE(workoutEvent3) = identifierFromProvider == 0;

                if ((workoutEvent3 & 1) == 0)
                {
                  identifierFromProvider2 = [v68 identifierFromProvider];
                  [v74 setObject:identifierFromProvider2 forKey:@"MOWorkoutMetaDataKeyWorkoutID"];
                }

                v85 = [[MOResource alloc] initWithName:@"Workout" type:10 dict:v74 value:0.0];
                eventIdentifier3 = [v68 eventIdentifier];
                [(MOResource *)v85 setSourceEventIdentifier:eventIdentifier3];

                if (v66 == 100.0)
                {
                  [(MOResource *)v85 setPriorityScore:100.0];
                  v87 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
                  if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    *&buf[4] = v68;
                    _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_INFO, "Activity: Primary MOResource created for workout event, %@", buf, 0xCu);
                  }

                  workoutEvent4 = [v68 workoutEvent];
                  workoutLocationRoute = [workoutEvent4 workoutLocationRoute];

                  v172 |= workoutLocationRoute != 0;
                  v66 = 500.0;
                }

                else
                {
                  [(MOResource *)v85 setPriorityScore:v66];
                  v90 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
                  if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    *&buf[4] = v68;
                    _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_INFO, "Activity: Additional MOResource created for workout event, %@", buf, 0xCu);
                  }

                  v66 = v66 + 1.0;
                }

                [v169 addObject:v85];
                place11 = [(MOEventBundle *)v44 place];

                if (place11)
                {
                  break;
                }

LABEL_80:

LABEL_68:
                if (v64 == ++v67)
                {
                  v98 = [obj countByEnumeratingWithState:&v189 objects:v204 count:16];
                  v64 = v98;
                  if (v98)
                  {
                    goto LABEL_50;
                  }

                  goto LABEL_84;
                }
              }

              place12 = [(MOEventBundle *)v44 place];
              place14 = place12;
              if (v172)
              {
                v94 = 20000.0;
              }

              else
              {
                if ([place12 placeUserType] == 1)
                {
                  v95 = place14;
                  goto LABEL_79;
                }

                place13 = [(MOEventBundle *)v44 place];
                v97 = [place13 placeUserType] == 2;

                if (v97)
                {
                  goto LABEL_80;
                }

                place14 = [(MOEventBundle *)v44 place];
                v94 = 200.0;
              }

              v95 = [place14 copy];

              [v95 setPriorityScore:v94];
              [(MOEventBundle *)v44 setPlace:v95];
LABEL_79:

              goto LABEL_80;
            }

LABEL_84:
            v159 = 0;
            v99 = obj;
LABEL_101:

            v129 = [v168 copy];
            [(MOEventBundle *)v44 setEvents:v129];

            [(MOEventBundle *)v44 setPropertiesBasedOnEvents];
            firstObject7 = [obj firstObject];
            startDate7 = [firstObject7 startDate];
            [(MOEventBundle *)v44 setStartDate:startDate7];

            lastObject3 = [obj lastObject];
            endDate6 = [lastObject3 endDate];
            [(MOEventBundle *)v44 setEndDate:endDate6];

            [(MOEventBundle *)v44 setResources:v169];
            v165 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 24];
            v167 = [v168 filteredArrayUsingPredicate:v165];
            if ([v167 count])
            {
              [MOContextAnnotationUtilities addStateOfMindResourceForBundle:v44 withEmotionEvents:v167];
              v134 = 203.0;
            }

            else
            {
              v134 = 202.0;
            }

            v185 = 0;
            v186 = &v185;
            v187 = 0x2020000000;
            v188 = 0;
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            *&v202 = __Block_byref_object_copy__38;
            *(&v202 + 1) = __Block_byref_object_dispose__38;
            v203 = objc_opt_new();
            v184.receiver = self;
            v184.super_class = MOWorkoutAnnotationManager;
            fUniverse = [(MOAnnotationManager *)&v184 fUniverse];
            v180[0] = _NSConcreteStackBlock;
            v180[1] = 3221225472;
            v180[2] = __63__MOWorkoutAnnotationManager_annotateBaseEvents_contextEvents___block_invoke;
            v180[3] = &unk_10033F010;
            v136 = v44;
            v181 = v136;
            v182 = &v185;
            v183 = buf;
            [MOContextAnnotationUtilities addPhotoResources:v136 universe:fUniverse handler:v180];

            v137 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
            if (os_log_type_enabled(v137, OS_LOG_TYPE_INFO))
            {
              v138 = v186[3];
              *v199 = 134217984;
              v200 = v138;
              _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_INFO, "activity,photoSource,%lu", v199, 0xCu);
            }

            if (*(v186 + 3))
            {
              v162 = [NSPredicate predicateWithFormat:@"%K = %lu", @"type", 2];
              resources3 = [(MOEventBundle *)v136 resources];
              v160 = [resources3 filteredArrayUsingPredicate:v162];

              v140 = [[NSSortDescriptor alloc] initWithKey:@"photoCurationScore" ascending:0];
              v198 = v140;
              v141 = [NSArray arrayWithObjects:&v198 count:1];
              v163 = [v160 sortedArrayUsingDescriptors:v141];

              v142 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
              if (os_log_type_enabled(v142, OS_LOG_TYPE_INFO))
              {
                v143 = COERCE_DOUBLE([v163 count]);
                *v199 = 134217984;
                v200 = v143;
                _os_log_impl(&_mh_execute_header, v142, OS_LOG_TYPE_INFO, "activity, %lu photo resources available for asset scoring", v199, 0xCu);
              }

              if ([v163 count])
              {
                v178 = 0u;
                v179 = 0u;
                v176 = 0u;
                v177 = 0u;
                v144 = v163;
                v145 = [v144 countByEnumeratingWithState:&v176 objects:v197 count:16];
                if (v145)
                {
                  v146 = *v177;
                  do
                  {
                    for (j = 0; j != v145; j = j + 1)
                    {
                      if (*v177 != v146)
                      {
                        objc_enumerationMutation(v144);
                      }

                      [*(*(&v176 + 1) + 8 * j) setPriorityScore:v134];
                      v148 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
                      if (os_log_type_enabled(v148, OS_LOG_TYPE_DEBUG))
                      {
                        *v199 = 134217984;
                        v200 = v134;
                        _os_log_debug_impl(&_mh_execute_header, v148, OS_LOG_TYPE_DEBUG, "activity, priority score %f set for photo asset", v199, 0xCu);
                      }

                      v134 = v134 + 1.0;
                    }

                    v145 = [v144 countByEnumeratingWithState:&v176 objects:v197 count:16];
                  }

                  while (v145);
                }

                if (v159)
                {
                  firstObject8 = [v144 firstObject];
                  [firstObject8 setPriorityScore:99.0];
                }
              }

              v150 = *(v186 + 3);
            }

            else
            {
              v150 = 0;
            }

            [(MOEventBundle *)v136 setPhotoSource:v150];
            v151 = [*(*&buf[8] + 40) copy];
            [(MOEventBundle *)v136 setPhotoTraits:v151];

            v30 = [(MOWorkoutAnnotationManager *)self buildRankingMetaDataDict:v136 withBaseEvents:obj andContextEvents:v170];

            _Block_object_dispose(buf, 8);
            _Block_object_dispose(&v185, 8);

            v38 = v168;
            goto LABEL_124;
          }
        }
      }

      v38 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        *buf = 134218752;
        *&buf[4] = v34;
        *&buf[12] = 2048;
        *&buf[14] = v29 / v34;
        *&buf[22] = 1024;
        LODWORD(v202) = v33;
        WORD2(v202) = 2048;
        *(&v202 + 6) = v32;
        v39 = "[MOWorkoutAnnotationManager.annotateBaseEvents] Failed to meet bundling criteria, duration=%fl, cadence=%fl, allowedToUseLocation=%d, boutsSpan=%fl";
LABEL_44:
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, v39, buf, 0x26u);
      }

LABEL_45:
      v30 = 0;
LABEL_124:

      goto LABEL_125;
  }

  v30 = 0;
LABEL_125:
  contextEventsCopy = v170;
LABEL_126:

  return v30;
}

void __63__MOWorkoutAnnotationManager_annotateBaseEvents_contextEvents___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  [*(a1 + 32) setResources:a2];
  *(*(*(a1 + 40) + 8) + 24) = a3;
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (id)annotateEventBundle:(id)bundle withContextEvents:(id)events andBaseEventReference:(id)reference
{
  bundleCopy = bundle;
  eventsCopy = events;
  referenceCopy = reference;
  v11 = objc_opt_new();
  v56 = [NSPredicate predicateWithFormat:@"%K = %lu", @"provider", 5];
  v12 = [eventsCopy filteredArrayUsingPredicate:?];
  if ([v12 count])
  {
    [v11 addObjectsFromArray:v12];
  }

  v55 = v12;
  v54 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 24];
  v13 = [eventsCopy filteredArrayUsingPredicate:?];
  v52 = [NSPredicate predicateWithFormat:@"stateOfMindEvent.reflectiveInterval = %d", 1];
  v53 = v13;
  v14 = [v13 filteredArrayUsingPredicate:?];
  [(MOWorkoutAnnotationManager *)self emotionAttachmentBundleDurationThreshold];
  *&v15 = v15;
  v51 = v14;
  v16 = [MOContextAnnotationUtilities annotateEventBundle:bundleCopy dateIntervalEvents:referenceCopy emotionEvents:v14 bundleDurationThreshold:v15];
  [v11 addObjectsFromArray:v16];
  v17 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v61 = [v16 count];
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "annotateEventBundle emotion events, %lu", buf, 0xCu);
  }

  v50 = v16;

  v49 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 6];
  v18 = [eventsCopy filteredArrayUsingPredicate:?];
  v19 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [v18 count];
    *buf = 134217984;
    v61 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "annotateEventBundle Media Events (Playback), %lu", buf, 0xCu);
  }

  v48 = v18;
  v21 = [MOContextAnnotationUtilities annotateEventBundle:bundleCopy playbackMediaEvents:v18];
  v57 = v11;
  [v11 addObjectsFromArray:v21];
  [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 1];
  v47 = v59 = eventsCopy;
  v22 = [eventsCopy filteredArrayUsingPredicate:?];
  v58 = referenceCopy;
  v23 = [(MOWorkoutAnnotationManager *)self filterPhoneVisits:v22 farFromWorkoutEvents:referenceCopy forEventBundle:bundleCopy];
  startDate = [bundleCopy startDate];
  endDate = [bundleCopy endDate];
  v26 = [(MOWorkoutAnnotationManager *)self referenceDateFromStartDate:startDate endDate:endDate index:0.3];

  v27 = [(MOWorkoutAnnotationManager *)self majorVisitsFromVisits:v23 referenceDate:v26];
  if ([v27 count])
  {
    startDate2 = [bundleCopy startDate];
    endDate2 = [bundleCopy endDate];
    v30 = [(MOWorkoutAnnotationManager *)self isDominantPlaceForVisits:v27 startDate:startDate2 endDate:endDate2];

    if ((v30 & 1) == 0)
    {

      v27 = 0;
    }
  }

  v31 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v32 = [v22 count];
    v33 = [v23 count];
    v34 = [v27 count];
    *buf = 134218496;
    v61 = v32;
    v62 = 2048;
    v63 = v33;
    v64 = 2048;
    v65 = v34;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "annotateEventBundle, visit Events, %lu, valid visits, %lu, majorVisits, %lu", buf, 0x20u);
  }

  if (v27 && [v27 count])
  {
    lessInterestingPoiCategories = self->_lessInterestingPoiCategories;
    [(MOWorkoutAnnotationManager *)self visitLabelMediumConfidenceThreshold];
    v37 = v36;
    [(MOWorkoutAnnotationManager *)self visitLabelHighConfidenceThreshold];
    v39 = v38;
    [(MOWorkoutAnnotationManager *)self aoiVisitLabelConfidentThreshold];
    v41 = v40;
    fUniverse = [(MOAnnotationManager *)self fUniverse];
    v43 = [MOContextAnnotationUtilities annotateEventBundle:bundleCopy visitEvents:v27 poiCategoryBlocklist:lessInterestingPoiCategories mediumConfidenceThreshold:fUniverse highConfidenceThreshold:v37 aoiConfidenceThreshold:v39 universe:v41];

    v44 = v57;
    [v57 addObjectsFromArray:v43];
    v21 = v43;
  }

  else
  {
    v44 = v57;
  }

  v45 = [v44 copy];

  return v45;
}

- (id)majorVisitsFromVisits:(id)visits referenceDate:(id)date
{
  visitsCopy = visits;
  dateCopy = date;
  if (visitsCopy && [visitsCopy count])
  {
    v7 = [MOContextAnnotationUtilities groupedEventsFromEvents:visitsCopy propertyPath:@"placeName"];
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = __66__MOWorkoutAnnotationManager_majorVisitsFromVisits_referenceDate___block_invoke;
    v42[3] = &unk_10033D1A0;
    v29 = dateCopy;
    v28 = dateCopy;
    v43 = v28;
    v8 = objc_retainBlock(v42);
    v9 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [MOWorkoutAnnotationManager majorVisitsFromVisits:v7 referenceDate:?];
    }

    v30 = visitsCopy;

    allValues = [v7 allValues];
    firstObject = [allValues firstObject];

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = [v7 allKeys];
    v11 = [obj countByEnumeratingWithState:&v38 objects:v51 count:16];
    if (v11)
    {
      v12 = v11;
      v32 = *v39;
      v13 = 1.79769313e308;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v39 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v38 + 1) + 8 * i);
          v16 = v7;
          v17 = [v7 objectForKey:v15];
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v18 = [v17 countByEnumeratingWithState:&v34 objects:v50 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v35;
            v21 = 1.79769313e308;
            do
            {
              for (j = 0; j != v19; j = j + 1)
              {
                if (*v35 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v21 = fmin((v8[2])(v8, *(*(&v34 + 1) + 8 * j)), v21);
              }

              v19 = [v17 countByEnumeratingWithState:&v34 objects:v50 count:16];
            }

            while (v19);
          }

          else
          {
            v21 = 1.79769313e308;
          }

          v23 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v45 = v15;
            v46 = 2048;
            v47 = v21;
            _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "majorVisitsFromVisits, group, %@, distance, %f", buf, 0x16u);
          }

          if (v21 < v13)
          {
            v24 = v17;

            firstObject = v24;
            v13 = v21;
          }

          v7 = v16;
        }

        v12 = [obj countByEnumeratingWithState:&v38 objects:v51 count:16];
      }

      while (v12);
    }

    else
    {
      v13 = 1.79769313e308;
    }

    v26 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    v25 = firstObject;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v45 = v28;
      v46 = 2048;
      v47 = v13;
      v48 = 2112;
      v49 = firstObject;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "annotateEventBundle Visit Events, reference date, %@, time distance, %f, visits, %@", buf, 0x20u);
    }

    dateCopy = v29;
    visitsCopy = v30;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

double __66__MOWorkoutAnnotationManager_majorVisitsFromVisits_referenceDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 startDate];
  [v4 timeIntervalSinceDate:*(a1 + 32)];
  v6 = fabs(v5);
  v7 = [v3 endDate];

  [v7 timeIntervalSinceDate:*(a1 + 32)];
  v9 = fmin(v6, fabs(v8));

  return v9;
}

- (BOOL)isDominantPlaceForVisits:(id)visits startDate:(id)date endDate:(id)endDate
{
  visitsCopy = visits;
  dateCopy = date;
  endDateCopy = endDate;
  if ([visitsCopy count])
  {
    v30 = [[NSSortDescriptor alloc] initWithKey:@"endDate" ascending:1];
    v39 = v30;
    v11 = [NSArray arrayWithObjects:&v39 count:1];
    v12 = [visitsCopy sortedArrayUsingDescriptors:v11];

    v13 = [NSDateInterval alloc];
    firstObject = [v12 firstObject];
    startDate = [firstObject startDate];
    lastObject = [v12 lastObject];
    endDate = [lastObject endDate];
    v18 = [v13 initWithStartDate:startDate endDate:endDate];

    v19 = [[NSDateInterval alloc] initWithStartDate:dateCopy endDate:endDateCopy];
    [v19 duration];
    v21 = v20;
    v22 = [v18 intersectionWithDateInterval:v19];
    [v22 duration];
    v24 = v23;

    if (v21 != 0.0)
    {
      v26 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218752;
        v32 = [visitsCopy count];
        v33 = 2048;
        v34 = v24;
        v35 = 2048;
        v36 = v21;
        v37 = 2048;
        v38 = v24 / v21;
        _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "isDominantPlaceForVisits, visits.count, %lu, interaction, %f, workoutDuration, %f, overlap, %f", buf, 0x2Au);
      }

      if (v24 / v21 > 0.5)
      {
        v25 = 1;
        goto LABEL_11;
      }

      [(MOWorkoutAnnotationManager *)self visitMinimumIntersectionWithActivityAbsoluteTime];
      if (v24 > v27)
      {
        firstObject2 = [v12 firstObject];
        v25 = [firstObject2 placeUserType] != 1;

        goto LABEL_11;
      }
    }

    v25 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v25 = 0;
LABEL_12:

  return v25;
}

- (id)referenceDateFromStartDate:(id)date endDate:(id)endDate index:(double)index
{
  dateCopy = date;
  [endDate timeIntervalSinceDate:dateCopy];
  if (v8 == 0.0)
  {
    index = dateCopy;
  }

  else
  {
    index = [dateCopy dateByAddingTimeInterval:v8 * index];
  }

  v10 = index;

  return v10;
}

- (id)buildRankingMetaDataDict:(id)dict withBaseEvents:(id)events andContextEvents:(id)contextEvents
{
  dictCopy = dict;
  eventsCopy = events;
  v9 = objc_opt_new();
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v10 = eventsCopy;
  v11 = [v10 countByEnumeratingWithState:&v81 objects:v87 count:16];
  v12 = v10;
  if (!v11)
  {
    goto LABEL_10;
  }

  v13 = v11;
  v14 = dictCopy;
  v15 = *v82;
  v16 = 0.0;
  do
  {
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v82 != v15)
      {
        objc_enumerationMutation(v10);
      }

      workoutDuration = [*(*(&v81 + 1) + 8 * i) workoutDuration];
      [workoutDuration doubleValue];
      v16 = v16 + v19;
    }

    v13 = [v10 countByEnumeratingWithState:&v81 objects:v87 count:16];
  }

  while (v13);

  dictCopy = v14;
  if (v16 > 0.0)
  {
    v12 = [NSNumber numberWithDouble:v16];
    [v9 setObject:v12 forKey:@"WorkoutDuration"];
LABEL_10:
  }

  firstObject = [v10 firstObject];
  v21 = 0.0;
  if ([firstObject category] == 2)
  {
    firstObject2 = [v10 firstObject];
    workoutLocationStart = [firstObject2 workoutLocationStart];

    if (!workoutLocationStart)
    {
      goto LABEL_15;
    }

    firstObject = [v10 firstObject];
    workoutLocationStart2 = [firstObject workoutLocationStart];
    fUniverse = [(MOAnnotationManager *)self fUniverse];
    [MOContextAnnotationUtilities distanceFromHomeToCLLocation:workoutLocationStart2 universe:fUniverse];
    v21 = v26;
  }

LABEL_15:
  firstObject3 = [v10 firstObject];
  if ([firstObject3 category] == 16)
  {
    place = [dictCopy place];

    if (!place)
    {
      goto LABEL_19;
    }

    firstObject3 = [dictCopy place];
    [firstObject3 distanceToHomeInMiles];
    v21 = v29;
  }

LABEL_19:
  if (v21 > 0.0)
  {
    v30 = [NSNumber numberWithDouble:v21];
    [v9 setObject:v30 forKey:@"DistanceToHome"];
  }

  [dictCopy setMetaDataForRank:v9];
  v31 = objc_opt_new();
  place2 = [dictCopy place];

  if (place2)
  {
    place3 = [dictCopy place];
    [v31 addObject:place3];
  }

  places = [dictCopy places];

  if (places)
  {
    places2 = [dictCopy places];
    [v31 addObjectsFromArray:places2];
  }

  v71 = v31;
  v72 = v9;
  if ([v31 count])
  {
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v36 = v31;
    v37 = [v36 countByEnumeratingWithState:&v77 objects:v86 count:16];
    if (!v37)
    {
      goto LABEL_38;
    }

    v38 = v37;
    v39 = *v78;
    while (1)
    {
      for (j = 0; j != v38; j = j + 1)
      {
        if (*v78 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v77 + 1) + 8 * j);
        placeName = [v41 placeName];
        if (placeName && [v41 placeType])
        {
          [v41 familiarityIndexLOI];
          v44 = v43;

          if (v44 == -1.0)
          {
            continue;
          }

          [v41 familiarityIndexLOI];
          placeName = [NSNumber numberWithDouble:?];
          [dictCopy addMetaDataForRankForKey:@"FamiliarityIndex" value:placeName];
        }
      }

      v38 = [v36 countByEnumeratingWithState:&v77 objects:v86 count:16];
      if (!v38)
      {
LABEL_38:

        v31 = v71;
        v9 = v72;
        break;
      }
    }
  }

  firstObject4 = [v10 firstObject];
  category = [firstObject4 category];

  if (category == 16)
  {
    [MOWorkoutAnnotationManager maxDistanceSpanFromStartUsingSparseLocations:v10];
    v47 = [NSNumber numberWithDouble:?];
    [dictCopy addMetaDataForRankForKey:@"MotionActivityWalkSpan" value:v47];
  }

  v48 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 24];
  events = [dictCopy events];
  v50 = [events filteredArrayUsingPredicate:v48];

  if ([v50 count])
  {
    v69 = v48;
    v70 = dictCopy;
    v51 = objc_opt_new();
    v52 = objc_opt_new();
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v68 = v50;
    v53 = v50;
    v54 = [v53 countByEnumeratingWithState:&v73 objects:v85 count:16];
    if (v54)
    {
      v55 = v54;
      v56 = *v74;
      do
      {
        for (k = 0; k != v55; k = k + 1)
        {
          if (*v74 != v56)
          {
            objc_enumerationMutation(v53);
          }

          v58 = *(*(&v73 + 1) + 8 * k);
          stateOfMindEvent = [v58 stateOfMindEvent];
          labels = [stateOfMindEvent labels];
          [v51 addObjectsFromArray:labels];

          stateOfMindEvent2 = [v58 stateOfMindEvent];
          domains = [stateOfMindEvent2 domains];
          [v52 addObjectsFromArray:domains];
        }

        v55 = [v53 countByEnumeratingWithState:&v73 objects:v85 count:16];
      }

      while (v55);
    }

    v63 = [NSSet setWithArray:v51];
    allObjects = [v63 allObjects];
    [v70 addMetaDataForRankForKey:@"StateOfMindLabels" value:allObjects];

    dictCopy = v70;
    v65 = [NSSet setWithArray:v52];
    allObjects2 = [v65 allObjects];
    [v70 addMetaDataForRankForKey:@"StateOfMindDomains" value:allObjects2];

    v31 = v71;
    v9 = v72;
    v50 = v68;
    v48 = v69;
  }

  return dictCopy;
}

- (id)filterPhoneVisits:(id)visits farFromWorkoutEvents:(id)events forEventBundle:(id)bundle
{
  visitsCopy = visits;
  eventsCopy = events;
  bundleCopy = bundle;
  v11 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [MOWorkoutAnnotationManager filterPhoneVisits:visitsCopy farFromWorkoutEvents:? forEventBundle:?];
  }

  v61 = objc_opt_new();
  v12 = objc_opt_new();
  firstObject = [eventsCopy firstObject];
  category = [firstObject category];

  if (category == 16)
  {
    v15 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [MOWorkoutAnnotationManager filterPhoneVisits:v15 farFromWorkoutEvents:? forEventBundle:?];
    }

    v16 = visitsCopy;
    goto LABEL_56;
  }

  v60 = visitsCopy;
  v65 = objc_opt_new();
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v59 = eventsCopy;
  v17 = eventsCopy;
  v18 = [v17 countByEnumeratingWithState:&v76 objects:v84 count:16];
  v58 = bundleCopy;
  v63 = v12;
  if (!v18)
  {
    v67 = 0;
    v21 = v65;
    goto LABEL_21;
  }

  v19 = v18;
  v67 = 0;
  v20 = *v77;
  v21 = v65;
  do
  {
    for (i = 0; i != v19; i = i + 1)
    {
      if (*v77 != v20)
      {
        objc_enumerationMutation(v17);
      }

      v23 = *(*(&v76 + 1) + 8 * i);
      workoutLocationRoute = [v23 workoutLocationRoute];
      v25 = [workoutLocationRoute count];

      if (v25)
      {
        workoutLocationRoute2 = [v23 workoutLocationRoute];
        [v65 addObjectsFromArray:workoutLocationRoute2];
        v67 = 1;
      }

      else
      {
        workoutLocationStart = [v23 workoutLocationStart];

        if (!workoutLocationStart)
        {
          continue;
        }

        workoutLocationRoute2 = [v23 workoutLocationStart];
        [v65 addObject:workoutLocationRoute2];
      }
    }

    v19 = [v17 countByEnumeratingWithState:&v76 objects:v84 count:16];
  }

  while (v19);
LABEL_21:

  if ([v21 count])
  {
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    obj = v60;
    v66 = [obj countByEnumeratingWithState:&v72 objects:v83 count:16];
    if (!v66)
    {
      goto LABEL_49;
    }

    v64 = *v73;
    v28 = &MOLogFacilityEventBundleManager;
    while (1)
    {
      v29 = 0;
      do
      {
        if (*v73 != v64)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v72 + 1) + 8 * v29);
        v31 = v28;
        v32 = _mo_log_facility_get_os_log(v28);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v82 = v30;
          _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "Filter phone visits: compare watch locations to visit: %@", buf, 0xCu);
        }

        v33 = [CLLocation alloc];
        location = [v30 location];
        [location latitude];
        v36 = v35;
        location2 = [v30 location];
        [location2 longitude];
        v39 = [v33 initWithLatitude:v36 longitude:v38];

        placeUserType = [v30 placeUserType];
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v41 = v65;
        v42 = [v41 countByEnumeratingWithState:&v68 objects:v80 count:16];
        if (v42)
        {
          v43 = v42;
          v44 = *v69;
LABEL_31:
          v45 = 0;
          while (1)
          {
            if (*v69 != v44)
            {
              objc_enumerationMutation(v41);
            }

            [v39 distanceFromLocation:*(*(&v68 + 1) + 8 * v45)];
            v47 = v46;
            [(MOWorkoutAnnotationManager *)self maximumWatchPhoneVisitDistance];
            if (v47 <= v48)
            {
              break;
            }

            if (v43 == ++v45)
            {
              v43 = [v41 countByEnumeratingWithState:&v68 objects:v80 count:16];
              if (v43)
              {
                goto LABEL_31;
              }

              goto LABEL_37;
            }
          }

          v28 = v31;
          v49 = _mo_log_facility_get_os_log(v31);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v82 = v30;
            _os_log_debug_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, "Filter phone visits: watch location distance from visit within threshold, visit: %@", buf, 0xCu);
          }

          if (((placeUserType == 1) & v67) != 0)
          {
            goto LABEL_41;
          }

          [v61 addObject:v30];
          v52 = _mo_log_facility_get_os_log(v31);
          if (!os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_44;
          }

          *buf = 138412290;
          v82 = v30;
          v53 = v52;
          v54 = "Filter phone visits: At least 1 watch location within visit distance threshold so adding to return array, visit: %@";
          goto LABEL_47;
        }

LABEL_37:

        v28 = v31;
LABEL_41:
        eventIdentifier = [v30 eventIdentifier];
        uUIDString = [eventIdentifier UUIDString];
        [v63 addObject:uUIDString];

        v52 = _mo_log_facility_get_os_log(v28);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v82 = v30;
          v53 = v52;
          v54 = "Filter phone visits: adding visit event ID to list of visit events excluded by location check, visit: %@";
LABEL_47:
          _os_log_debug_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, v54, buf, 0xCu);
        }

LABEL_44:

        v29 = v29 + 1;
      }

      while (v29 != v66);
      v55 = [obj countByEnumeratingWithState:&v72 objects:v83 count:16];
      v66 = v55;
      if (!v55)
      {
LABEL_49:

        v12 = v63;
        bundleCopy = v58;
        eventsCopy = v59;
        if ([v63 count])
        {
          [v58 setVisitEventsRejectedByWatchLocation:v63];
        }

        v16 = v61;
        visitsCopy = v60;
        goto LABEL_55;
      }
    }
  }

  v56 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  visitsCopy = v60;
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
  {
    [MOWorkoutAnnotationManager filterPhoneVisits:v56 farFromWorkoutEvents:? forEventBundle:?];
  }

  v16 = 0;
  eventsCopy = v59;
  v12 = v63;
LABEL_55:

LABEL_56:

  return v16;
}

+ (double)maxDistanceSpanFromStartUsingSparseLocations:(id)locations
{
  locationsCopy = locations;
  if ([locationsCopy count])
  {
    v4 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
    v45 = v4;
    v5 = [NSArray arrayWithObjects:&v45 count:1];
    v6 = [locationsCopy sortedArrayUsingDescriptors:v5];

    firstObject = [v6 firstObject];
    workoutEvent = [firstObject workoutEvent];
    workoutLocationRoute = [workoutEvent workoutLocationRoute];
    v10 = [workoutLocationRoute count];

    if (v10)
    {
      v34 = v4;
      firstObject2 = [v6 firstObject];
      workoutEvent2 = [firstObject2 workoutEvent];
      workoutLocationRoute2 = [workoutEvent2 workoutLocationRoute];
      firstObject3 = [workoutLocationRoute2 firstObject];

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v33 = v6;
      v15 = v6;
      v16 = [v15 countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v40;
        v19 = 0.0;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v40 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v21 = *(*(&v39 + 1) + 8 * i);
            workoutEvent3 = [v21 workoutEvent];
            workoutLocationRoute3 = [workoutEvent3 workoutLocationRoute];
            v24 = [workoutLocationRoute3 count];

            if (v24)
            {
              v37 = 0u;
              v38 = 0u;
              v35 = 0u;
              v36 = 0u;
              workoutEvent4 = [v21 workoutEvent];
              workoutLocationRoute4 = [workoutEvent4 workoutLocationRoute];

              v27 = [workoutLocationRoute4 countByEnumeratingWithState:&v35 objects:v43 count:16];
              if (v27)
              {
                v28 = v27;
                v29 = *v36;
                do
                {
                  for (j = 0; j != v28; j = j + 1)
                  {
                    if (*v36 != v29)
                    {
                      objc_enumerationMutation(workoutLocationRoute4);
                    }

                    [*(*(&v35 + 1) + 8 * j) distanceFromLocation:firstObject3];
                    if (v31 > v19)
                    {
                      v19 = v31;
                    }
                  }

                  v28 = [workoutLocationRoute4 countByEnumeratingWithState:&v35 objects:v43 count:16];
                }

                while (v28);
              }
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v39 objects:v44 count:16];
        }

        while (v17);
      }

      else
      {
        v19 = 0.0;
      }

      v6 = v33;
      v4 = v34;
    }

    else
    {
      v19 = 0.0;
    }
  }

  else
  {
    v19 = 0.0;
  }

  return v19;
}

@end