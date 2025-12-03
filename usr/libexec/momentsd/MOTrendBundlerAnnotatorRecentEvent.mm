@interface MOTrendBundlerAnnotatorRecentEvent
- (BOOL)_isStringUnique:(id)unique inThis:(id)this;
- (BOOL)configure:(id)configure;
- (MOTrendBundlerAnnotatorRecentEvent)init;
- (id)_actionFromEvent:(id)event;
- (id)_annotateEvents:(id)events withSourceEventForSet:(id)set;
- (id)_personsFromEvent:(id)event;
- (id)createTrendBundlesFrom:(id)from withEvents:(id)events;
- (void)_assignResourcePriorityScore:(id)score;
@end

@implementation MOTrendBundlerAnnotatorRecentEvent

- (MOTrendBundlerAnnotatorRecentEvent)init
{
  v6.receiver = self;
  v6.super_class = MOTrendBundlerAnnotatorRecentEvent;
  v2 = [(MOTrendBundlerAnnotatorRecentEvent *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_maximumFeatureCountForFrequencyTrend = -1.0;
    v4 = v2;
  }

  return v3;
}

- (id)createTrendBundlesFrom:(id)from withEvents:(id)events
{
  fromCopy = from;
  eventsCopy = events;
  v42 = objc_opt_new();
  if ([fromCopy count])
  {
    v6 = 0;
    v44 = fromCopy;
    while (1)
    {
      v7 = objc_opt_new();
      v8 = [fromCopy objectAtIndex:v6];
      v46 = v8;
      v47 = v6;
      if (v8)
      {
        [v7 addObjectsFromArray:v8];
      }

      else
      {
        v9 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "trendEventArray is nil", buf, 2u);
        }
      }

      v10 = objc_opt_new();
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v11 = v7;
      v12 = [v11 countByEnumeratingWithState:&v52 objects:v59 count:16];
      if (v12)
      {
        break;
      }

LABEL_20:

      v26 = objc_opt_new();
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v27 = v10;
      v28 = [v27 countByEnumeratingWithState:&v48 objects:v58 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v49;
        do
        {
          for (i = 0; i != v29; i = i + 1)
          {
            if (*v49 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v48 + 1) + 8 * i);
            +[NSUUID UUID];
            v33 = [objc_claimAutoreleasedReturnValue() initWithUUIDString:v32];
            [v26 addObject:v33];
          }

          v29 = [v27 countByEnumeratingWithState:&v48 objects:v58 count:16];
        }

        while (v29);
      }

      v34 = [NSPredicate predicateWithFormat:@"eventIdentifier IN %@", v26];
      v35 = [eventsCopy filteredArrayUsingPredicate:v34];
      v36 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:0];
      v57 = v36;
      v37 = [NSArray arrayWithObjects:&v57 count:1];
      v38 = [v35 sortedArrayUsingDescriptors:v37];

      if ([v38 count])
      {
        firstObject = [v38 firstObject];
        [v11 addObject:firstObject];

        v40 = [(MOTrendBundlerAnnotatorRecentEvent *)self _annotateEvents:v11 withSourceEventForSet:v38];
        if (v40)
        {
          [v42 addObject:v40];
        }
      }

      else
      {
        v40 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "No source events for trend or routine found", buf, 2u);
        }
      }

      v6 = v47 + 1;
      fromCopy = v44;
      if ([v44 count] <= v47 + 1)
      {
        goto LABEL_33;
      }
    }

    v13 = v12;
    v14 = *v53;
LABEL_10:
    v15 = 0;
    while (1)
    {
      if (*v53 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v52 + 1) + 8 * v15);
      patterns = [v16 patterns];
      v18 = [patterns objectForKeyedSubscript:@"kEventPatternType"];
      intValue = [v18 intValue];

      patterns2 = [v16 patterns];
      v21 = patterns2;
      if (intValue == 1)
      {
        break;
      }

      v23 = [patterns2 objectForKeyedSubscript:@"kEventPatternType"];
      intValue2 = [v23 intValue];

      if (intValue2 == 2)
      {
        patterns2 = [v16 patterns];
        v21 = patterns2;
        v22 = @"kEventPatternRoutineEventIdentifierList";
        goto LABEL_17;
      }

LABEL_18:
      if (v13 == ++v15)
      {
        v13 = [v11 countByEnumeratingWithState:&v52 objects:v59 count:16];
        if (!v13)
        {
          goto LABEL_20;
        }

        goto LABEL_10;
      }
    }

    v22 = @"kEventPatternTrendEventIdentifierList";
LABEL_17:
    v25 = [patterns2 objectForKeyedSubscript:v22];
    [v10 addObjectsFromArray:v25];

    goto LABEL_18;
  }

LABEL_33:

  return v42;
}

- (id)_annotateEvents:(id)events withSourceEventForSet:(id)set
{
  eventsCopy = events;
  setCopy = set;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v129 = "[MOTrendBundlerAnnotatorRecentEvent _annotateEvents:withSourceEventForSet:]";
    v130 = 2048;
    v131 = [eventsCopy count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s, event count, %lu", buf, 0x16u);
  }

  if (![eventsCopy count] || !objc_msgSend(setCopy, "count"))
  {
    v30 = 0;
    goto LABEL_69;
  }

  v8 = [MOEventBundle alloc];
  v9 = [[NSSet alloc] initWithArray:eventsCopy];
  v10 = [(MOEventBundle *)v8 initWithEventSet:v9 filtered:0];

  [(MOEventBundle *)v10 setInterfaceType:9];
  firstObject = [setCopy firstObject];
  category = [firstObject category];

  v99 = v10;
  if (category == 2)
  {
    [(MOEventBundle *)v10 setBundleSuperType:2];
    [(MOEventBundle *)v10 setBundleSubType:203];
    [NSPredicate predicateWithFormat:@"%K = %lu", @"provider", 5];
    v98 = v96 = eventsCopy;
    v13 = [eventsCopy filteredArrayUsingPredicate:?];
    if ([v13 count])
    {
      v14 = [v13 objectAtIndex:0];
      v15 = [(MOTrendBundlerAnnotatorRecentEvent *)self _actionFromEvent:v14];
      [(MOEventBundle *)v10 setAction:v15];
    }

    v110 = v13;
    v104 = objc_opt_new();
    [setCopy valueForKeyPath:@"@distinctUnionOfObjects.workoutType"];
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    obj = v127 = 0u;
    v16 = [obj countByEnumeratingWithState:&v124 objects:v138 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v125;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v125 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = [NSPredicate predicateWithFormat:@"%K = %@", @"workoutType", *(*(&v124 + 1) + 8 * i)];
          v21 = [setCopy filteredArrayUsingPredicate:v20];
          v22 = setCopy;
          v23 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:0];
          v137 = v23;
          v24 = [NSArray arrayWithObjects:&v137 count:1];
          v25 = [v21 sortedArrayUsingDescriptors:v24];

          firstObject2 = [v25 firstObject];
          [v104 addObject:firstObject2];

          setCopy = v22;
        }

        v17 = [obj countByEnumeratingWithState:&v124 objects:v138 count:16];
      }

      while (v17);
    }

    resources = [(MOEventBundle *)v99 resources];
    if (resources)
    {
      resources2 = [(MOEventBundle *)v99 resources];
      v108 = [resources2 mutableCopy];

      v29 = &GEOPOICategoryGasStation_ptr;
    }

    else
    {
      v29 = &GEOPOICategoryGasStation_ptr;
      v108 = objc_opt_new();
    }

    v58 = v29[233];
    v59 = objc_opt_new();
    v60 = v29[233];
    v61 = objc_opt_new();
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    v123 = 0u;
    v39 = v110;
    v62 = [v39 countByEnumeratingWithState:&v120 objects:v136 count:16];
    if (v62)
    {
      v63 = v62;
      v64 = *v121;
      v106 = v61;
      v107 = v59;
      v100 = *v121;
      v101 = v39;
      do
      {
        v65 = 0;
        v102 = v63;
        do
        {
          if (*v121 != v64)
          {
            objc_enumerationMutation(v39);
          }

          v66 = *(*(&v120 + 1) + 8 * v65);
          if ([v66 category] == 2)
          {
            [v66 patterns];
            v67 = v105 = v65;
            v68 = [v67 objectForKey:@"kEventResourcePatternWorkoutInfoDictArray"];

            v65 = v105;
            if (v68)
            {
              v118 = 0u;
              v119 = 0u;
              v116 = 0u;
              v117 = 0u;
              patterns = [v66 patterns];
              v70 = [patterns objectForKeyedSubscript:@"kEventResourcePatternWorkoutInfoDictArray"];

              v109 = v70;
              v71 = [v70 countByEnumeratingWithState:&v116 objects:v135 count:16];
              if (v71)
              {
                v72 = v71;
                v73 = *v117;
                do
                {
                  for (j = 0; j != v72; j = j + 1)
                  {
                    if (*v117 != v73)
                    {
                      objc_enumerationMutation(v109);
                    }

                    v75 = *(*(&v116 + 1) + 8 * j);
                    v76 = [v75 objectForKeyedSubscript:@"kEventResourcePatternWorkoutIdentifierFromProvider"];
                    if ([(MOTrendBundlerAnnotatorRecentEvent *)self _isStringUnique:v76 inThis:v59])
                    {
                      [v59 addObject:v76];
                      v77 = objc_opt_new();
                      v78 = [v75 objectForKeyedSubscript:@"kEventResourcePatternWorkoutStartDate"];
                      [v77 setObject:v78 forKey:@"MOWorkoutMetaDataKeyStartDate"];

                      v79 = [v75 objectForKeyedSubscript:@"kEventResourcePatternWorkoutEndDate"];
                      [v77 setObject:v79 forKey:@"MOWorkoutMetaDataKeyEndDate"];

                      v80 = [v75 objectForKeyedSubscript:@"kEventResourcePatternWorkoutType"];
                      [v77 setObject:v80 forKey:@"MOWorkoutMetaDataKeyActivityType"];

                      v81 = [v75 objectForKeyedSubscript:@"kEventResourcePatternWorkoutIsIndoors"];

                      if (v81)
                      {
                        v82 = [v75 objectForKeyedSubscript:@"kEventResourcePatternWorkoutIsIndoors"];
                        [v77 setObject:v82 forKey:@"MOWorkoutMetaDataKeyIsIndoors"];
                      }

                      else
                      {
                        [v77 setObject:&__kCFBooleanFalse forKey:@"MOWorkoutMetaDataKeyIsIndoors"];
                      }

                      [v77 setObject:v76 forKey:@"MOWorkoutMetaDataKeyWorkoutID"];
                      v83 = [[MOResource alloc] initWithName:@"Workout" type:10 dict:v77 value:0.0];
                      allKeys = [v77 allKeys];
                      v85 = [allKeys containsObject:@"kEventResourcePatternWorkoutIdentifierFromProvider"];

                      if (v85)
                      {
                        v86 = [v77 objectForKeyedSubscript:@"kEventResourcePatternWorkoutIdentifierFromProvider"];
                        [(MOResource *)v83 setSourceEventIdentifier:v86];
                      }

                      [v108 addObject:v83];
                      v87 = [MOAction alloc];
                      v88 = [v75 objectForKeyedSubscript:@"kEventResourcePatternWorkoutType"];
                      v89 = [(MOAction *)v87 initWithActionName:v88 actionType:4];

                      v90 = [v77 objectForKeyedSubscript:@"kEventResourcePatternWorkoutIdentifierFromProvider"];
                      [(MOAction *)v89 setSourceEventIdentifier:v90];

                      v61 = v106;
                      [v106 addObject:v89];

                      v59 = v107;
                    }
                  }

                  v72 = [v109 countByEnumeratingWithState:&v116 objects:v135 count:16];
                }

                while (v72);
              }

              v64 = v100;
              v39 = v101;
              v63 = v102;
              v65 = v105;
            }
          }

          v65 = v65 + 1;
        }

        while (v65 != v63);
        v63 = [v39 countByEnumeratingWithState:&v120 objects:v136 count:16];
      }

      while (v63);
    }

    [(MOTrendBundlerAnnotatorRecentEvent *)self _assignResourcePriorityScore:v108];
    v57 = v99;
    [(MOEventBundle *)v99 setResources:v108];
    if ([v61 count])
    {
      [(MOEventBundle *)v99 setActions:v61];
    }

    eventsCopy = v96;
    v40 = v104;
    goto LABEL_64;
  }

  firstObject3 = [setCopy firstObject];
  category2 = [firstObject3 category];

  if (category2 == 10)
  {
    [(MOEventBundle *)v10 setBundleSuperType:3];
    [(MOEventBundle *)v10 setBundleSubType:303];
    v33 = [[MOAction alloc] initWithActionName:@"Conversations" actionType:1 actionSubtype:4];
    [(MOEventBundle *)v10 setAction:v33];

    firstObject4 = [setCopy firstObject];
    eventIdentifier = [firstObject4 eventIdentifier];
    action = [(MOEventBundle *)v10 action];
    [action setSourceEventIdentifier:eventIdentifier];

    firstObject5 = [setCopy firstObject];
    v38 = [(MOTrendBundlerAnnotatorRecentEvent *)self _personsFromEvent:firstObject5];
    [(MOEventBundle *)v10 setPersons:v38];

    v98 = [NSPredicate predicateWithFormat:@"%K = %lu", @"provider", 5];
    v39 = [eventsCopy filteredArrayUsingPredicate:?];
    if (![v39 count])
    {
      v57 = v10;
LABEL_65:

      v91 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
      {
        firstObject6 = [setCopy firstObject];
        category3 = [firstObject6 category];
        *buf = 136315650;
        v129 = "[MOTrendBundlerAnnotatorRecentEvent _annotateEvents:withSourceEventForSet:]";
        v130 = 2112;
        v131 = v99;
        v132 = 2048;
        v133 = category3;
        _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_INFO, "%s, bundle, %@, event category, %lu", buf, 0x20u);

        v57 = v99;
      }

      v30 = v57;
      goto LABEL_68;
    }

    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v40 = v39;
    v41 = [v40 countByEnumeratingWithState:&v112 objects:v134 count:16];
    if (v41)
    {
      v42 = v41;
      v95 = setCopy;
      v97 = eventsCopy;
      v43 = *v113;
      do
      {
        for (k = 0; k != v42; k = k + 1)
        {
          if (*v113 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = *(*(&v112 + 1) + 8 * k);
          patterns2 = [v45 patterns];
          v47 = [patterns2 objectForKeyedSubscript:@"kEventPatternType"];
          intValue = [v47 intValue];

          if (intValue == 1)
          {
            patterns3 = [v45 patterns];
            v50 = [patterns3 objectForKeyedSubscript:@"kEventPatternTrendFeatureType"];
            intValue2 = [v50 intValue];

            if (intValue2 == 2)
            {
              patterns4 = [v45 patterns];
              v53 = [patterns4 objectForKeyedSubscript:@"kEventPatternTrendNumFeatures"];
              [v53 doubleValue];
              v55 = v54;
              maximumFeatureCountForFrequencyTrend = self->_maximumFeatureCountForFrequencyTrend;

              if (v55 > maximumFeatureCountForFrequencyTrend)
              {
                [(MOEventBundle *)v99 setIsAggregatedAndSuppressed:1];
              }
            }
          }
        }

        v42 = [v40 countByEnumeratingWithState:&v112 objects:v134 count:16];
      }

      while (v42);
      v39 = v40;
      setCopy = v95;
      eventsCopy = v97;
    }

    else
    {
      v39 = v40;
    }

    v57 = v99;
LABEL_64:

    goto LABEL_65;
  }

  v30 = 0;
  v57 = v10;
LABEL_68:

LABEL_69:

  return v30;
}

- (void)_assignResourcePriorityScore:(id)score
{
  scoreCopy = score;
  v19 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = scoreCopy;
  v4 = [obj countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v17 = *v21;
    v6 = 100;
    v7 = 200;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        getDictionary = [v9 getDictionary];
        v12 = [getDictionary objectForKeyedSubscript:@"MOWorkoutMetaDataKeyActivityType"];
        if ([(MOTrendBundlerAnnotatorRecentEvent *)self _isStringUnique:v12 inThis:v19])
        {
          [v19 addObject:v12];
          v13 = v6++;
        }

        else
        {
          v13 = v7++;
        }

        [v9 setPriorityScore:v13];

        objc_autoreleasePoolPop(v10);
      }

      v5 = [obj countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v5);
  }

  v14 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [v19 count];
    *buf = 134218242;
    v25 = v15;
    v26 = 2112;
    v27 = v19;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Found %lu unique workout types and they are %@", buf, 0x16u);
  }
}

- (id)_actionFromEvent:(id)event
{
  eventCopy = event;
  patterns = [eventCopy patterns];
  v5 = [patterns objectForKeyedSubscript:@"kEventPatternOverallWorkoutType"];

  v6 = [[MOAction alloc] initWithActionName:v5 actionType:4 actionSubtype:0];
  eventIdentifier = [eventCopy eventIdentifier];

  [(MOAction *)v6 setSourceEventIdentifier:eventIdentifier];

  return v6;
}

- (id)_personsFromEvent:(id)event
{
  eventCopy = event;
  v4 = objc_opt_new();
  interactionScoredContact = [eventCopy interactionScoredContact];
  contact = [interactionScoredContact contact];
  identifier = [contact identifier];
  v8 = [MOContactUtilities cNContactIdentifierFromPPContactIdentifier:identifier];

  if (v8)
  {
    v9 = [MOPerson alloc];
    contact2 = [interactionScoredContact contact];
    givenName = [contact2 givenName];
    contact3 = [interactionScoredContact contact];
    identifier2 = [contact3 identifier];
    v14 = [MOContactUtilities cNContactIdentifierFromPPContactIdentifier:identifier2];
    [interactionScoredContact score];
    v16 = [(MOPerson *)v9 initWithLocalIdentifier:0 name:givenName contactIdentifier:v14 family:0 priorityScore:100.0 significanceScore:v15];

    eventIdentifier = [eventCopy eventIdentifier];
    [(MOPerson *)v16 setSourceEventIdentifier:eventIdentifier];

    [(MOPerson *)v16 setSourceEventAccessType:3];
    [v4 addObject:v16];
    v18 = v4;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)configure:(id)configure
{
  configureCopy = configure;
  v5 = [configureCopy objectForKey:@"maximumFeatureCountForFrequencyTrend"];

  if (v5)
  {
    v6 = [configureCopy objectForKeyedSubscript:@"maximumFeatureCountForFrequencyTrend"];
    [v6 doubleValue];
    self->_maximumFeatureCountForFrequencyTrend = v7;
  }

  return 1;
}

- (BOOL)_isStringUnique:(id)unique inThis:(id)this
{
  uniqueCopy = unique;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  thisCopy = this;
  v7 = [thisCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(thisCopy);
        }

        if ([uniqueCopy isEqualToString:{*(*(&v13 + 1) + 8 * i), v13}])
        {
          v11 = 0;
          goto LABEL_11;
        }
      }

      v8 = [thisCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  return v11;
}

@end