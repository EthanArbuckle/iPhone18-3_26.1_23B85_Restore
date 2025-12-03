@interface MOEventPatternDetectorPredicateFilterTimeAtHome
- (MOEventPatternDetectorPredicateFilterTimeAtHome)init;
- (id)filterEvents:(id)events;
@end

@implementation MOEventPatternDetectorPredicateFilterTimeAtHome

- (MOEventPatternDetectorPredicateFilterTimeAtHome)init
{
  v7.receiver = self;
  v7.super_class = MOEventPatternDetectorPredicateFilterTimeAtHome;
  v2 = [(MOEventPatternDetectorPredicateFilterTimeAtHome *)&v7 init];
  if (v2)
  {
    v3 = +[NSCalendar currentCalendar];
    cal = v2->_cal;
    v2->_cal = v3;

    v5 = v2;
  }

  return v2;
}

- (id)filterEvents:(id)events
{
  eventsCopy = events;
  v5 = [NSPredicate predicateWithFormat:@"%K = %lu AND %K = %lu", @"category", 1, @"placeUserType", 1];
  v6 = [eventsCopy filteredArrayUsingPredicate:v5];
  v7 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
  v54 = v7;
  v8 = [NSArray arrayWithObjects:&v54 count:1];
  v9 = [v6 sortedArrayUsingDescriptors:v8];

  v10 = [MOEventPatternDetectorUtilities getHomeVisitChunksForStandardDay:v9];
  v11 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v51 = [v9 count];
    v52 = 2048;
    v53 = [v10 count];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Found %lu home visits and processed into %lu home visit chunks", buf, 0x16u);
  }

  if ([v10 count])
  {
    v38 = v9;
    v39 = v7;
    v40 = v6;
    v41 = v5;
    v42 = eventsCopy;
    v43 = objc_opt_new();
    v12 = objc_opt_new();
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v37 = v10;
    v13 = v10;
    v14 = [v13 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v45;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v45 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v44 + 1) + 8 * i);
          [v18 setTimeAtHomeSubType:1];
          cal = self->_cal;
          startDate = [v18 startDate];
          v21 = [startDate dateByAddingTimeInterval:-10800.0];
          v22 = [(NSCalendar *)cal components:512 fromDate:v21];

          v23 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v22 weekday]);
          v24 = [v12 objectForKey:v23];

          if (!v24)
          {
            v25 = objc_opt_new();
            [v12 setObject:v25 forKeyedSubscript:v23];
          }

          v26 = [v12 objectForKeyedSubscript:v23];
          [v26 addObject:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v15);
    }

    v27 = 1;
    v28 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
    v5 = v41;
    eventsCopy = v42;
    v6 = v40;
    v29 = &GEOPOICategoryGasStation_ptr;
    do
    {
      v30 = [v29[190] numberWithInt:v27];
      v31 = [v12 objectForKeyedSubscript:v30];

      if (v31)
      {
        v32 = [v29[190] numberWithInt:v27];
        v33 = [v12 objectForKeyedSubscript:v32];

        v48 = v28;
        v34 = [NSArray arrayWithObjects:&v48 count:1];
        v35 = [v33 sortedArrayUsingDescriptors:v34];
        [v43 addObject:v35];

        v29 = &GEOPOICategoryGasStation_ptr;
      }

      else
      {
        v33 = objc_opt_new();
        [v43 addObject:v33];
      }

      v27 = (v27 + 1);
    }

    while (v27 != 8);

    v9 = v38;
    v7 = v39;
    v10 = v37;
  }

  else
  {
    v43 = 0;
  }

  return v43;
}

@end