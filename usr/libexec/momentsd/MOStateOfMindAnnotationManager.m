@interface MOStateOfMindAnnotationManager
- (MOStateOfMindAnnotationManager)initWithUniverse:(id)a3;
- (id)_getEventsOnDay:(id)a3 startTime:(id)a4 endTime:(id)a5;
- (id)_getTimeSpanOfMOEventArray:(id)a3;
- (id)annotateBaseEvents:(id)a3 contextEvents:(id)a4;
- (id)getBaseEvents:(id)a3;
- (id)getContextEventsForBaseEvents:(id)a3 events:(id)a4 withPatternEvents:(id)a5;
- (id)groupBaseEvents:(id)a3;
@end

@implementation MOStateOfMindAnnotationManager

- (MOStateOfMindAnnotationManager)initWithUniverse:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MOStateOfMindAnnotationManager;
  v5 = [(MOTimeContextAnnotationManager *)&v11 initWithUniverse:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v4 getService:v7];
    configurationManager = v5->_configurationManager;
    v5->_configurationManager = v8;
  }

  return v5;
}

- (id)getBaseEvents:(id)a3
{
  v3 = a3;
  v4 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 24];
  v5 = [v3 filteredArrayUsingPredicate:v4];

  return v5;
}

- (id)groupBaseEvents:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = objc_opt_new();
    v6 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
    v45 = v6;
    v7 = [NSArray arrayWithObjects:&v45 count:1];
    v36 = v4;
    v8 = [v4 sortedArrayUsingDescriptors:v7];

    v33 = [NSPredicate predicateWithFormat:@"stateOfMindEvent.reflectiveInterval = %d", 2];
    v37 = [v8 filteredArrayUsingPredicate:?];
    v32 = [NSPredicate predicateWithFormat:@"stateOfMindEvent.reflectiveInterval = %d", 1];
    v30 = [v8 filteredArrayUsingPredicate:?];
    v9 = +[NSCalendar currentCalendar];
    v10 = [(MOStateOfMindAnnotationManager *)self _getTimeSpanOfMOEventArray:v8];
    v11 = [v10 startDate];
    v12 = [v9 components:28 fromDate:v11];

    v31 = v12;
    v13 = [v9 dateFromComponents:v12];
    v39 = v9;
    v14 = [v9 dateByAddingUnit:16 value:1 toDate:v13 options:0];
    v38 = v10;
    v15 = [v10 endDate];
    LODWORD(v9) = [v13 isOnOrBefore:v15];

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

        v20 = [v38 endDate];
        v21 = [v18 isOnOrBefore:v20];

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

    v4 = v36;
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  return v5;
}

- (id)_getTimeSpanOfMOEventArray:(id)a3
{
  v3 = a3;
  v4 = [v3 firstObject];
  v5 = [v4 startDate];
  v6 = [v3 lastObject];

  v7 = [v6 endDate];
  v8 = [[NSDateInterval alloc] initWithStartDate:v5 endDate:v7];

  return v8;
}

- (id)_getEventsOnDay:(id)a3 startTime:(id)a4 endTime:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v20 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = v7;
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
        v16 = [v15 startDate];
        if ([v16 isOnOrAfter:v8])
        {
          v17 = [v15 startDate];
          v18 = [v17 isBeforeDate:v9];

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

- (id)getContextEventsForBaseEvents:(id)a3 events:(id)a4 withPatternEvents:(id)a5
{
  v7 = a3;
  v41 = a4;
  v8 = a5;
  v47 = objc_opt_new();
  v44 = v8;
  if ([v8 count])
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v40 = v7;
    obj = v7;
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
                v16 = [v15 patterns];
                v17 = [v16 objectForKeyedSubscript:v9];
                if ([v17 intValue])
                {
                }

                else
                {
                  v18 = [v49 eventIdentifier];
                  [v18 UUIDString];
                  v20 = v19 = v9;
                  v21 = [v15 patterns];
                  v22 = [v21 objectForKeyedSubscript:@"kEventPatternAnomalousEventIdentifier"];
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

    v7 = v40;
  }

  v24 = [v7 lastObject];
  v25 = [v24 startDate];
  v26 = [v7 lastObject];
  v27 = [v26 endDate];
  v28 = [MOContextAnnotationUtilities predicateOfSocialContextEventWithStartDate:v25 endData:v27];

  v29 = v41;
  v30 = [v41 filteredArrayUsingPredicate:v28];
  v31 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    v34 = [v30 count];
    v35 = [v7 lastObject];
    v36 = [v35 startDate];
    v37 = [v7 lastObject];
    v38 = [v37 endDate];
    *buf = 138413058;
    v61 = v33;
    v62 = 2048;
    v63 = v34;
    v64 = 2112;
    v65 = v36;
    v66 = 2112;
    v67 = v38;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "%@: filtered social context event count, %lu, startDate, %@, endDate, %@", buf, 0x2Au);

    v29 = v41;
  }

  if ([v30 count])
  {
    [v47 addObjectsFromArray:v30];
  }

  return v47;
}

- (id)annotateBaseEvents:(id)a3 contextEvents:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [MOEventBundle alloc];
    v9 = +[NSUUID UUID];
    v10 = +[NSDate date];
    v11 = [(MOEventBundle *)v8 initWithBundleIdentifier:v9 creationDate:v10];

    [(MOEventBundle *)v11 setInterfaceType:14];
    [(MOEventBundle *)v11 setBundleSuperType:8];
    v12 = [v6 lastObject];
    v13 = +[NSCalendar currentCalendar];
    v14 = [v12 stateOfMindEvent];
    [v14 reflectiveInterval];
    v16 = v15;

    if (v16 == 2.0)
    {
      [(MOEventBundle *)v11 setBundleSubType:801];
      v17 = [v6 lastObject];
      v18 = [v17 startDate];
      v19 = [v13 components:28 fromDate:v18];

      v20 = [v13 dateFromComponents:v19];
      [(MOEventBundle *)v11 setStartDate:v20];
      v21 = [v13 dateByAddingUnit:16 value:1 toDate:v20 options:0];
      [(MOEventBundle *)v11 setEndDate:v21];
    }

    else
    {
      [(MOEventBundle *)v11 setBundleSubType:802];
      v22 = [v6 lastObject];
      v23 = [v22 startDate];
      [(MOEventBundle *)v11 setStartDate:v23];

      v19 = [(MOEventBundle *)v11 startDate];
      v20 = [v13 dateByAddingUnit:64 value:1 toDate:v19 options:0];
      [(MOEventBundle *)v11 setEndDate:v20];
    }

    v24 = [v12 stateOfMindEvent];
    [v24 valenceClassification];
    v26 = v25;

    v101 = v13;
    if (v26 == 4.0)
    {
      v27 = 1;
    }

    else
    {
      v28 = [v12 stateOfMindEvent];
      [v28 valenceClassification];
      v30 = v29;

      if (v30 == 7.0)
      {
        v27 = 4;
      }

      else
      {
        v31 = [v12 stateOfMindEvent];
        [v31 valenceClassification];
        v33 = v32;

        if (v33 == 6.0)
        {
          v27 = 3;
        }

        else
        {
          v34 = [v12 stateOfMindEvent];
          [v34 valenceClassification];
          v36 = v35;

          if (v36 == 5.0)
          {
            v27 = 2;
          }

          else
          {
            v37 = [v12 stateOfMindEvent];
            [v37 valenceClassification];
            v39 = v38;

            if (v39 == 1.0)
            {
              v27 = 7;
            }

            else
            {
              v40 = [v12 stateOfMindEvent];
              [v40 valenceClassification];
              v42 = v41;

              if (v42 == 2.0)
              {
                v27 = 6;
              }

              else
              {
                v43 = [v12 stateOfMindEvent];
                [v43 valenceClassification];
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

    v46 = [v6 lastObject];
    v47 = [v46 appBundle];
    v48 = [MOContextAnnotationUtilities bundleNameFromBundleId:v47];

    v103 = objc_opt_new();
    v49 = [v6 lastObject];
    LODWORD(v46) = [v49 fromFirstParty];

    if (!v46 && v48)
    {
      [v103 setObject:v48 forKeyedSubscript:@"MediaActionMetaDataAppName"];
    }

    v50 = [[MOAction alloc] initWithActionName:@"stateOfMind" actionType:12 actionSubtype:v27 actionMetaData:v103];
    [(MOEventBundle *)v11 setAction:v50];

    v51 = [v12 eventIdentifier];
    v52 = [(MOEventBundle *)v11 action];
    [v52 setSourceEventIdentifier:v51];

    v53 = [v6 lastObject];
    v54 = [v53 startDate];
    v55 = [(MOAnnotationManager *)self timeZoneManager];
    v56 = [MOTime timeForDate:v54 timeZoneManager:v55];
    [(MOEventBundle *)v11 setTime:v56];

    v57 = objc_opt_new();
    [v57 addObjectsFromArray:v6];
    v98 = [NSPredicate predicateWithFormat:@"%K = %lu", @"provider", 5];
    v58 = [v7 filteredArrayUsingPredicate:?];
    if ([v58 count])
    {
      [v57 addObjectsFromArray:v58];
    }

    v97 = v58;
    v99 = v57;
    v59 = [v57 copy];
    [(MOEventBundle *)v11 setEvents:v59];

    [(MOEventBundle *)v11 setPropertiesBasedOnEvents];
    v60 = [(MOEventBundle *)v11 resources];
    if (v60)
    {
      v61 = [(MOEventBundle *)v11 resources];
      v96 = [v61 mutableCopy];
    }

    else
    {
      v96 = objc_opt_new();
    }

    v62 = [v6 lastObject];
    v63 = [v62 fromFirstParty];

    if (!v63 && v48)
    {
      [(MOEventBundle *)v11 addMetaDataForRankForKey:@"StateOfMindLoggedIn3pApp" value:&__kCFBooleanTrue];
    }

    if ([v48 isEqual:@"Journal"])
    {
      [(MOEventBundle *)v11 addMetaDataForRankForKey:@"StateOfMindLoggedInJournalApp" value:&__kCFBooleanTrue];
    }

    v64 = objc_opt_new();
    v65 = [(MOEventBundle *)v11 startDate];
    [v65 timeIntervalSince1970];
    v66 = [NSNumber numberWithDouble:?];
    [v64 setObject:v66 forKey:@"MOStateOfMindMetaDataKeyStartDate"];

    v67 = [(MOEventBundle *)v11 endDate];
    [v67 timeIntervalSince1970];
    v68 = [NSNumber numberWithDouble:?];
    [v64 setObject:v68 forKey:@"MOStateOfMindMetaDataKeyEndDate"];

    v69 = [v6 lastObject];
    v70 = [v69 stateOfMindEvent];
    v71 = [v70 labels];

    if ([v71 count])
    {
      [v64 setObject:v71 forKey:@"MOStateOfMindMetaDataKeyLabel"];
      [(MOEventBundle *)v11 addMetaDataForRankForKey:@"StateOfMindLabels" value:v71];
    }

    v95 = v71;
    v100 = v48;
    v72 = [v6 lastObject];
    v73 = [v72 stateOfMindEvent];
    v74 = [v73 domains];

    if ([v74 count])
    {
      [v64 setObject:v74 forKey:@"MOStateOfMindMetaDataKeyDomain"];
      [(MOEventBundle *)v11 addMetaDataForRankForKey:@"StateOfMindDomains" value:v74];
    }

    v94 = v74;
    v102 = v7;
    v75 = [v6 lastObject];
    v76 = [v75 stateOfMindEvent];
    [v76 reflectiveInterval];
    v77 = [NSNumber numberWithDouble:?];

    if (v77)
    {
      [v64 setObject:v77 forKey:@"MOStateOfMindMetaDataKeyReflectiveInterval"];
      [(MOEventBundle *)v11 addMetaDataForRankForKey:@"StateOfMindReflectiveInterval" value:v77];
    }

    v78 = [v6 lastObject];
    v79 = [v78 stateOfMindEvent];
    [v79 valence];
    v80 = [NSNumber numberWithDouble:?];

    if (v80)
    {
      [v64 setObject:v80 forKey:@"MOStateOfMindMetaDataKeyValence"];
      v81 = [NSArray arrayWithObjects:v80, 0];
      [(MOEventBundle *)v11 addMetaDataForRankForKey:@"StateOfMindValence" value:v81];
    }

    v82 = [v6 lastObject];
    v83 = [v82 stateOfMindEvent];
    [v83 valenceClassification];
    v84 = [NSNumber numberWithDouble:?];

    if (v84)
    {
      [v64 setObject:v84 forKey:@"MOStateOfMindMetaDataKeyValenceClassification"];
      v85 = [NSArray arrayWithObjects:v80, 0];
      [(MOEventBundle *)v11 addMetaDataForRankForKey:@"StateOfMindValenceClassification" value:v85];
    }

    v86 = [v6 lastObject];
    v87 = [v86 identifierFromProvider];

    if (v87)
    {
      v88 = [v6 lastObject];
      v89 = [v88 identifierFromProvider];
      [v64 setObject:v89 forKey:@"MOStateOfMindMetaDataKeyStateOfMindID"];
    }

    v90 = [[MOResource alloc] initWithName:@"StateOfMind" type:16 dict:v64 value:0.0];
    v91 = [v12 eventIdentifier];
    [(MOResource *)v90 setSourceEventIdentifier:v91];

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

    v7 = v102;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end