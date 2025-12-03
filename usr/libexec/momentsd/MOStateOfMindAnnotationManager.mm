@interface MOStateOfMindAnnotationManager
- (MOStateOfMindAnnotationManager)initWithUniverse:(id)universe;
- (id)_getEventsOnDay:(id)day startTime:(id)time endTime:(id)endTime;
- (id)_getTimeSpanOfMOEventArray:(id)array;
- (id)annotateBaseEvents:(id)events contextEvents:(id)contextEvents;
- (id)getBaseEvents:(id)events;
- (id)getContextEventsForBaseEvents:(id)events events:(id)a4 withPatternEvents:(id)patternEvents;
- (id)groupBaseEvents:(id)events;
@end

@implementation MOStateOfMindAnnotationManager

- (MOStateOfMindAnnotationManager)initWithUniverse:(id)universe
{
  universeCopy = universe;
  v11.receiver = self;
  v11.super_class = MOStateOfMindAnnotationManager;
  v5 = [(MOTimeContextAnnotationManager *)&v11 initWithUniverse:universeCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [universeCopy getService:v7];
    configurationManager = v5->_configurationManager;
    v5->_configurationManager = v8;
  }

  return v5;
}

- (id)getBaseEvents:(id)events
{
  eventsCopy = events;
  v4 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 24];
  v5 = [eventsCopy filteredArrayUsingPredicate:v4];

  return v5;
}

- (id)groupBaseEvents:(id)events
{
  eventsCopy = events;
  if ([eventsCopy count])
  {
    v5 = objc_opt_new();
    v6 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
    v45 = v6;
    v7 = [NSArray arrayWithObjects:&v45 count:1];
    v36 = eventsCopy;
    v8 = [eventsCopy sortedArrayUsingDescriptors:v7];

    v33 = [NSPredicate predicateWithFormat:@"stateOfMindEvent.reflectiveInterval = %d", 2];
    v37 = [v8 filteredArrayUsingPredicate:?];
    v32 = [NSPredicate predicateWithFormat:@"stateOfMindEvent.reflectiveInterval = %d", 1];
    v30 = [v8 filteredArrayUsingPredicate:?];
    v9 = +[NSCalendar currentCalendar];
    v10 = [(MOStateOfMindAnnotationManager *)self _getTimeSpanOfMOEventArray:v8];
    startDate = [v10 startDate];
    v12 = [v9 components:28 fromDate:startDate];

    v31 = v12;
    v13 = [v9 dateFromComponents:v12];
    v39 = v9;
    v14 = [v9 dateByAddingUnit:16 value:1 toDate:v13 options:0];
    v38 = v10;
    endDate = [v10 endDate];
    LODWORD(v9) = [v13 isOnOrBefore:endDate];

    v34 = v8;
    v35 = v6;
    if (v9)
    {
      do
      {
        v16 = [(MOStateOfMindAnnotationManager *)self _getEventsOnDay:v37 startTime:v13 endTime:v14];
        if ([v16 count])
        {
          v17 = [v16 copy];
          [v5 addObject:v17];
        }

        v18 = [v39 dateByAddingUnit:16 value:1 toDate:v13 options:0];

        v19 = [v39 dateByAddingUnit:16 value:1 toDate:v14 options:0];

        endDate2 = [v38 endDate];
        v21 = [v18 isOnOrBefore:endDate2];

        v14 = v19;
        v13 = v18;
      }

      while ((v21 & 1) != 0);
    }

    else
    {
      v18 = v13;
      v19 = v14;
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v22 = v30;
    v23 = [v22 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v41;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v41 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [NSArray arrayWithObjects:*(*(&v40 + 1) + 8 * i), 0];
          v28 = [v27 copy];
          [v5 addObject:v28];
        }

        v24 = [v22 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v24);
    }

    eventsCopy = v36;
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  return v5;
}

- (id)_getTimeSpanOfMOEventArray:(id)array
{
  arrayCopy = array;
  firstObject = [arrayCopy firstObject];
  startDate = [firstObject startDate];
  lastObject = [arrayCopy lastObject];

  endDate = [lastObject endDate];
  v8 = [[NSDateInterval alloc] initWithStartDate:startDate endDate:endDate];

  return v8;
}

- (id)_getEventsOnDay:(id)day startTime:(id)time endTime:(id)endTime
{
  dayCopy = day;
  timeCopy = time;
  endTimeCopy = endTime;
  v20 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = dayCopy;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        startDate = [v15 startDate];
        if ([startDate isOnOrAfter:timeCopy])
        {
          startDate2 = [v15 startDate];
          v18 = [startDate2 isBeforeDate:endTimeCopy];

          if (v18)
          {
            [v20 addObject:v15];
          }
        }

        else
        {
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  return v20;
}

- (id)getContextEventsForBaseEvents:(id)events events:(id)a4 withPatternEvents:(id)patternEvents
{
  eventsCopy = events;
  v41 = a4;
  patternEventsCopy = patternEvents;
  v47 = objc_opt_new();
  v44 = patternEventsCopy;
  if ([patternEventsCopy count])
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v40 = eventsCopy;
    obj = eventsCopy;
    v45 = [obj countByEnumeratingWithState:&v56 objects:v69 count:16];
    if (v45)
    {
      v43 = *v57;
      v9 = @"kEventPatternType";
      do
      {
        v10 = 0;
        do
        {
          if (*v57 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v46 = v10;
          v49 = *(*(&v56 + 1) + 8 * v10);
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v51 = v44;
          v11 = [v51 countByEnumeratingWithState:&v52 objects:v68 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v53;
            v48 = *v53;
            do
            {
              v14 = 0;
              v50 = v12;
              do
              {
                if (*v53 != v13)
                {
                  objc_enumerationMutation(v51);
                }

                v15 = *(*(&v52 + 1) + 8 * v14);
                patterns = [v15 patterns];
                v17 = [patterns objectForKeyedSubscript:v9];
                if ([v17 intValue])
                {
                }

                else
                {
                  eventIdentifier = [v49 eventIdentifier];
                  [eventIdentifier UUIDString];
                  v20 = v19 = v9;
                  patterns2 = [v15 patterns];
                  v22 = [patterns2 objectForKeyedSubscript:@"kEventPatternAnomalousEventIdentifier"];
                  v23 = [v20 isEqualToString:v22];

                  v9 = v19;
                  v13 = v48;

                  v12 = v50;
                  if (v23)
                  {
                    [v47 addObject:v15];
                  }
                }

                v14 = v14 + 1;
              }

              while (v12 != v14);
              v12 = [v51 countByEnumeratingWithState:&v52 objects:v68 count:16];
            }

            while (v12);
          }

          v10 = v46 + 1;
        }

        while ((v46 + 1) != v45);
        v45 = [obj countByEnumeratingWithState:&v56 objects:v69 count:16];
      }

      while (v45);
    }

    eventsCopy = v40;
  }

  lastObject = [eventsCopy lastObject];
  startDate = [lastObject startDate];
  lastObject2 = [eventsCopy lastObject];
  endDate = [lastObject2 endDate];
  v28 = [MOContextAnnotationUtilities predicateOfSocialContextEventWithStartDate:startDate endData:endDate];

  v29 = v41;
  v30 = [v41 filteredArrayUsingPredicate:v28];
  v31 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    v34 = [v30 count];
    lastObject3 = [eventsCopy lastObject];
    startDate2 = [lastObject3 startDate];
    lastObject4 = [eventsCopy lastObject];
    endDate2 = [lastObject4 endDate];
    *buf = 138413058;
    v61 = v33;
    v62 = 2048;
    v63 = v34;
    v64 = 2112;
    v65 = startDate2;
    v66 = 2112;
    v67 = endDate2;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "%@: filtered social context event count, %lu, startDate, %@, endDate, %@", buf, 0x2Au);

    v29 = v41;
  }

  if ([v30 count])
  {
    [v47 addObjectsFromArray:v30];
  }

  return v47;
}

- (id)annotateBaseEvents:(id)events contextEvents:(id)contextEvents
{
  eventsCopy = events;
  contextEventsCopy = contextEvents;
  if ([eventsCopy count])
  {
    v8 = [MOEventBundle alloc];
    v9 = +[NSUUID UUID];
    v10 = +[NSDate date];
    v11 = [(MOEventBundle *)v8 initWithBundleIdentifier:v9 creationDate:v10];

    [(MOEventBundle *)v11 setInterfaceType:14];
    [(MOEventBundle *)v11 setBundleSuperType:8];
    lastObject = [eventsCopy lastObject];
    v13 = +[NSCalendar currentCalendar];
    stateOfMindEvent = [lastObject stateOfMindEvent];
    [stateOfMindEvent reflectiveInterval];
    v16 = v15;

    if (v16 == 2.0)
    {
      [(MOEventBundle *)v11 setBundleSubType:801];
      lastObject2 = [eventsCopy lastObject];
      startDate = [lastObject2 startDate];
      startDate3 = [v13 components:28 fromDate:startDate];

      v20 = [v13 dateFromComponents:startDate3];
      [(MOEventBundle *)v11 setStartDate:v20];
      v21 = [v13 dateByAddingUnit:16 value:1 toDate:v20 options:0];
      [(MOEventBundle *)v11 setEndDate:v21];
    }

    else
    {
      [(MOEventBundle *)v11 setBundleSubType:802];
      lastObject3 = [eventsCopy lastObject];
      startDate2 = [lastObject3 startDate];
      [(MOEventBundle *)v11 setStartDate:startDate2];

      startDate3 = [(MOEventBundle *)v11 startDate];
      v20 = [v13 dateByAddingUnit:64 value:1 toDate:startDate3 options:0];
      [(MOEventBundle *)v11 setEndDate:v20];
    }

    stateOfMindEvent2 = [lastObject stateOfMindEvent];
    [stateOfMindEvent2 valenceClassification];
    v26 = v25;

    v101 = v13;
    if (v26 == 4.0)
    {
      v27 = 1;
    }

    else
    {
      stateOfMindEvent3 = [lastObject stateOfMindEvent];
      [stateOfMindEvent3 valenceClassification];
      v30 = v29;

      if (v30 == 7.0)
      {
        v27 = 4;
      }

      else
      {
        stateOfMindEvent4 = [lastObject stateOfMindEvent];
        [stateOfMindEvent4 valenceClassification];
        v33 = v32;

        if (v33 == 6.0)
        {
          v27 = 3;
        }

        else
        {
          stateOfMindEvent5 = [lastObject stateOfMindEvent];
          [stateOfMindEvent5 valenceClassification];
          v36 = v35;

          if (v36 == 5.0)
          {
            v27 = 2;
          }

          else
          {
            stateOfMindEvent6 = [lastObject stateOfMindEvent];
            [stateOfMindEvent6 valenceClassification];
            v39 = v38;

            if (v39 == 1.0)
            {
              v27 = 7;
            }

            else
            {
              stateOfMindEvent7 = [lastObject stateOfMindEvent];
              [stateOfMindEvent7 valenceClassification];
              v42 = v41;

              if (v42 == 2.0)
              {
                v27 = 6;
              }

              else
              {
                stateOfMindEvent8 = [lastObject stateOfMindEvent];
                [stateOfMindEvent8 valenceClassification];
                v45 = v44;

                if (v45 == 3.0)
                {
                  v27 = 5;
                }

                else
                {
                  v27 = 0;
                }
              }
            }
          }
        }
      }
    }

    lastObject4 = [eventsCopy lastObject];
    appBundle = [lastObject4 appBundle];
    v48 = [MOContextAnnotationUtilities bundleNameFromBundleId:appBundle];

    v103 = objc_opt_new();
    lastObject5 = [eventsCopy lastObject];
    LODWORD(lastObject4) = [lastObject5 fromFirstParty];

    if (!lastObject4 && v48)
    {
      [v103 setObject:v48 forKeyedSubscript:@"MediaActionMetaDataAppName"];
    }

    v50 = [[MOAction alloc] initWithActionName:@"stateOfMind" actionType:12 actionSubtype:v27 actionMetaData:v103];
    [(MOEventBundle *)v11 setAction:v50];

    eventIdentifier = [lastObject eventIdentifier];
    action = [(MOEventBundle *)v11 action];
    [action setSourceEventIdentifier:eventIdentifier];

    lastObject6 = [eventsCopy lastObject];
    startDate4 = [lastObject6 startDate];
    timeZoneManager = [(MOAnnotationManager *)self timeZoneManager];
    v56 = [MOTime timeForDate:startDate4 timeZoneManager:timeZoneManager];
    [(MOEventBundle *)v11 setTime:v56];

    v57 = objc_opt_new();
    [v57 addObjectsFromArray:eventsCopy];
    v98 = [NSPredicate predicateWithFormat:@"%K = %lu", @"provider", 5];
    v58 = [contextEventsCopy filteredArrayUsingPredicate:?];
    if ([v58 count])
    {
      [v57 addObjectsFromArray:v58];
    }

    v97 = v58;
    v99 = v57;
    v59 = [v57 copy];
    [(MOEventBundle *)v11 setEvents:v59];

    [(MOEventBundle *)v11 setPropertiesBasedOnEvents];
    resources = [(MOEventBundle *)v11 resources];
    if (resources)
    {
      resources2 = [(MOEventBundle *)v11 resources];
      v96 = [resources2 mutableCopy];
    }

    else
    {
      v96 = objc_opt_new();
    }

    lastObject7 = [eventsCopy lastObject];
    fromFirstParty = [lastObject7 fromFirstParty];

    if (!fromFirstParty && v48)
    {
      [(MOEventBundle *)v11 addMetaDataForRankForKey:@"StateOfMindLoggedIn3pApp" value:&__kCFBooleanTrue];
    }

    if ([v48 isEqual:@"Journal"])
    {
      [(MOEventBundle *)v11 addMetaDataForRankForKey:@"StateOfMindLoggedInJournalApp" value:&__kCFBooleanTrue];
    }

    v64 = objc_opt_new();
    startDate5 = [(MOEventBundle *)v11 startDate];
    [startDate5 timeIntervalSince1970];
    v66 = [NSNumber numberWithDouble:?];
    [v64 setObject:v66 forKey:@"MOStateOfMindMetaDataKeyStartDate"];

    endDate = [(MOEventBundle *)v11 endDate];
    [endDate timeIntervalSince1970];
    v68 = [NSNumber numberWithDouble:?];
    [v64 setObject:v68 forKey:@"MOStateOfMindMetaDataKeyEndDate"];

    lastObject8 = [eventsCopy lastObject];
    stateOfMindEvent9 = [lastObject8 stateOfMindEvent];
    labels = [stateOfMindEvent9 labels];

    if ([labels count])
    {
      [v64 setObject:labels forKey:@"MOStateOfMindMetaDataKeyLabel"];
      [(MOEventBundle *)v11 addMetaDataForRankForKey:@"StateOfMindLabels" value:labels];
    }

    v95 = labels;
    v100 = v48;
    lastObject9 = [eventsCopy lastObject];
    stateOfMindEvent10 = [lastObject9 stateOfMindEvent];
    domains = [stateOfMindEvent10 domains];

    if ([domains count])
    {
      [v64 setObject:domains forKey:@"MOStateOfMindMetaDataKeyDomain"];
      [(MOEventBundle *)v11 addMetaDataForRankForKey:@"StateOfMindDomains" value:domains];
    }

    v94 = domains;
    v102 = contextEventsCopy;
    lastObject10 = [eventsCopy lastObject];
    stateOfMindEvent11 = [lastObject10 stateOfMindEvent];
    [stateOfMindEvent11 reflectiveInterval];
    v77 = [NSNumber numberWithDouble:?];

    if (v77)
    {
      [v64 setObject:v77 forKey:@"MOStateOfMindMetaDataKeyReflectiveInterval"];
      [(MOEventBundle *)v11 addMetaDataForRankForKey:@"StateOfMindReflectiveInterval" value:v77];
    }

    lastObject11 = [eventsCopy lastObject];
    stateOfMindEvent12 = [lastObject11 stateOfMindEvent];
    [stateOfMindEvent12 valence];
    v80 = [NSNumber numberWithDouble:?];

    if (v80)
    {
      [v64 setObject:v80 forKey:@"MOStateOfMindMetaDataKeyValence"];
      v81 = [NSArray arrayWithObjects:v80, 0];
      [(MOEventBundle *)v11 addMetaDataForRankForKey:@"StateOfMindValence" value:v81];
    }

    lastObject12 = [eventsCopy lastObject];
    stateOfMindEvent13 = [lastObject12 stateOfMindEvent];
    [stateOfMindEvent13 valenceClassification];
    v84 = [NSNumber numberWithDouble:?];

    if (v84)
    {
      [v64 setObject:v84 forKey:@"MOStateOfMindMetaDataKeyValenceClassification"];
      v85 = [NSArray arrayWithObjects:v80, 0];
      [(MOEventBundle *)v11 addMetaDataForRankForKey:@"StateOfMindValenceClassification" value:v85];
    }

    lastObject13 = [eventsCopy lastObject];
    identifierFromProvider = [lastObject13 identifierFromProvider];

    if (identifierFromProvider)
    {
      lastObject14 = [eventsCopy lastObject];
      identifierFromProvider2 = [lastObject14 identifierFromProvider];
      [v64 setObject:identifierFromProvider2 forKey:@"MOStateOfMindMetaDataKeyStateOfMindID"];
    }

    v90 = [[MOResource alloc] initWithName:@"StateOfMind" type:16 dict:v64 value:0.0];
    eventIdentifier2 = [lastObject eventIdentifier];
    [(MOResource *)v90 setSourceEventIdentifier:eventIdentifier2];

    [(MOResource *)v90 setSourceEventAccessType:8];
    [(MOResource *)v90 setPriorityScore:100.0];
    v92 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_INFO, "StateOfMind: Primary MOResource created for state of mind bundle", buf, 2u);
    }

    [v96 addObject:v90];
    [(MOEventBundle *)v11 setResources:v96];

    contextEventsCopy = v102;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end