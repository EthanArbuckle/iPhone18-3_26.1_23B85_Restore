@interface MOEventPatternDetectorFeatureExtractorTimeDictionary
- (BOOL)configure:(id)configure;
- (MOEventPatternDetectorFeatureExtractorTimeDictionary)init;
- (id)extractFeaturesFromEvents:(id)events;
@end

@implementation MOEventPatternDetectorFeatureExtractorTimeDictionary

- (MOEventPatternDetectorFeatureExtractorTimeDictionary)init
{
  v6.receiver = self;
  v6.super_class = MOEventPatternDetectorFeatureExtractorTimeDictionary;
  v2 = [(MOEventPatternDetectorFeatureExtractorTimeDictionary *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_lastWindowEnd = -1.0;
    v4 = v2;
  }

  return v3;
}

- (id)extractFeaturesFromEvents:(id)events
{
  eventsCopy = events;
  v56 = objc_opt_new();
  v64 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = eventsCopy;
  v57 = [obj countByEnumeratingWithState:&v77 objects:v86 count:16];
  if (v57)
  {
    v54 = *v78;
    v4 = &GEOPOICategoryGasStation_ptr;
    do
    {
      v5 = 0;
      do
      {
        if (*v78 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v58 = v5;
        v6 = *(*(&v77 + 1) + 8 * v5);
        v7 = +[NSMutableArray array];
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v62 = v6;
        v67 = [v62 countByEnumeratingWithState:&v73 objects:v85 count:16];
        v69 = v7;
        if (v67)
        {
          v65 = *v74;
          do
          {
            for (i = 0; i != v67; i = i + 1)
            {
              if (*v74 != v65)
              {
                objc_enumerationMutation(v62);
              }

              v9 = *(*(&v73 + 1) + 8 * i);
              startDate = [v9 startDate];
              v11 = [v64 components:96 fromDate:startDate];

              v12 = v4[190];
              hour = [v11 hour];
              v70 = v11;
              *&v14 = ([v11 minute] / 60.0) + hour;
              v15 = [v12 numberWithFloat:v14];
              v16 = v4[190];
              startDate2 = [v9 startDate];
              *&v18 = [v64 component:0x2000 fromDate:startDate2];
              v19 = [v16 numberWithFloat:v18];

              v20 = v4[190];
              v21 = +[NSCalendar currentCalendar];
              startDate3 = [v9 startDate];
              *&v23 = [v21 component:512 fromDate:startDate3];
              v24 = [v20 numberWithFloat:v23];

              v83[0] = @"eventIdentifier";
              eventIdentifier = [v9 eventIdentifier];
              uUIDString = [eventIdentifier UUIDString];
              v84[0] = uUIDString;
              v83[1] = @"startDate";
              startDate4 = [v9 startDate];
              v84[1] = startDate4;
              v83[2] = @"endDate";
              endDate = [v9 endDate];
              v84[2] = endDate;
              v84[3] = v15;
              v83[3] = @"hrFromMidnight";
              v83[4] = @"weekOfYear";
              v83[5] = @"weekday";
              v84[4] = v19;
              v84[5] = v24;
              v29 = [NSDictionary dictionaryWithObjects:v84 forKeys:v83 count:6];

              if ([v9 category] == 2)
              {
                workoutType = [v9 workoutType];

                if (workoutType)
                {
                  v31 = [[NSMutableDictionary alloc] initWithDictionary:v29];
                  workoutType2 = [v9 workoutType];
                  [v31 setObject:workoutType2 forKeyedSubscript:@"workoutType"];

                  v33 = [v31 copy];
                  v29 = v33;
                }
              }

              v4 = &GEOPOICategoryGasStation_ptr;
              v7 = v69;
              [v69 addObject:v29];
            }

            v67 = [v62 countByEnumeratingWithState:&v73 objects:v85 count:16];
          }

          while (v67);
        }

        v34 = [NSPredicate predicateWithFormat:@"(hrFromMidnight >= %f) AND (hrFromMidnight < %f)", 0, self->_lastWindowEnd + -24.0];
        v35 = [v7 filteredArrayUsingPredicate:v34];

        v36 = @"hrFromMidnight";
        v37 = @"weekOfYear";
        if ([v35 count])
        {
          v38 = 0;
          do
          {
            v39 = [v35 objectAtIndex:v38];
            v40 = [v39 valueForKey:v36];

            v41 = v4[190];
            [v40 floatValue];
            *&v43 = v42 + 24.0;
            v61 = [v41 numberWithFloat:v43];

            v81[0] = @"eventIdentifier";
            v72 = [v35 objectAtIndex:v38];
            v71 = [v72 valueForKey:@"eventIdentifier"];
            v82[0] = v71;
            v81[1] = @"startDate";
            v68 = [v35 objectAtIndex:v38];
            v66 = [v68 valueForKey:@"startDate"];
            v82[1] = v66;
            v81[2] = @"endDate";
            v63 = [v35 objectAtIndex:v38];
            v60 = [v63 valueForKey:@"endDate"];
            v82[2] = v60;
            v81[3] = @"workoutType";
            v59 = [v35 objectAtIndex:v38];
            v44 = [v59 valueForKey:@"workoutType"];
            v82[3] = v44;
            v82[4] = v61;
            v81[4] = v36;
            v81[5] = v37;
            v45 = [v35 objectAtIndex:v38];
            v46 = [v45 valueForKey:v37];
            v82[5] = v46;
            v81[6] = @"weekday";
            v47 = [v35 objectAtIndex:v38];
            [v47 valueForKey:@"weekday"];
            v49 = v48 = v37;
            v82[6] = v49;
            [NSDictionary dictionaryWithObjects:v82 forKeys:v81 count:7];
            v51 = v50 = v36;
            [v69 addObject:v51];

            v36 = v50;
            v37 = v48;

            v4 = &GEOPOICategoryGasStation_ptr;
            ++v38;
          }

          while ([v35 count] > v38);
        }

        [v56 addObject:v69];

        v5 = v58 + 1;
      }

      while ((v58 + 1) != v57);
      v57 = [obj countByEnumeratingWithState:&v77 objects:v86 count:16];
    }

    while (v57);
  }

  return v56;
}

- (BOOL)configure:(id)configure
{
  configureCopy = configure;
  v5 = [configureCopy objectForKey:@"LastWindowEnd"];

  if (v5)
  {
    v6 = [configureCopy objectForKeyedSubscript:@"LastWindowEnd"];
    [v6 doubleValue];
    self->_lastWindowEnd = v7;
  }

  else
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(MOEventPatternDetectorFeatureExtractorTimeDictionary *)@"LastWindowEnd" configure:v8];
    }
  }

  return 1;
}

- (void)configure:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Configuration property not set for routine detection: %@", &v2, 0xCu);
}

@end