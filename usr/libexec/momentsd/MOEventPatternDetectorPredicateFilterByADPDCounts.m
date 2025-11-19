@interface MOEventPatternDetectorPredicateFilterByADPDCounts
- (MOEventPatternDetectorPredicateFilterByADPDCounts)init;
- (id)crossReference:(id)a3 withEvents:(id)a4 withGroupingStrategy:(unint64_t)a5;
- (id)filterEvents:(id)a3;
- (id)splitIntoWeekdays:(id)a3 withADPDEvents:(id)a4 withCalendar:(id)a5;
@end

@implementation MOEventPatternDetectorPredicateFilterByADPDCounts

- (MOEventPatternDetectorPredicateFilterByADPDCounts)init
{
  v6.receiver = self;
  v6.super_class = MOEventPatternDetectorPredicateFilterByADPDCounts;
  v2 = [(MOEventPatternDetectorPredicateFilterByADPDCounts *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (id)filterEvents:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [NSPredicate predicateWithFormat:@"%K = %lu AND %K = %lu", @"category", 1, @"placeUserType", 1];
  v7 = [v4 filteredArrayUsingPredicate:v6];
  v47 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
  v59 = v47;
  v8 = [NSArray arrayWithObjects:&v59 count:1];
  v9 = [v7 sortedArrayUsingDescriptors:v8];

  v10 = [MOEventPatternDetectorUtilities getHomeVisitChunksForStandardDay:v9];
  v11 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v56 = [v9 count];
    v57 = 2048;
    v58 = [v10 count];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Found %lu home visits and processed into %lu home visit chunks", buf, 0x16u);
  }

  if ([v10 count])
  {
    v43 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 15];
    v12 = [v4 filteredArrayUsingPredicate:?];
    v13 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [v12 count];
      *buf = 134217984;
      v56 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "H@H: Found %lu proximity events", buf, 0xCu);
    }

    v42 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 23];
    v15 = [v4 filteredArrayUsingPredicate:?];
    v16 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [v15 count];
      *buf = 134217984;
      v56 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "H@H: Found %lu people density events", buf, 0xCu);
    }

    v18 = [v15 count];
    if ([v12 count] + v18)
    {
      v38 = v9;
      v39 = v7;
      v40 = v6;
      v41 = v4;
      v21 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
      v22 = [(MOEventPatternDetectorPredicateFilterByADPDCounts *)self splitIntoWeekdays:v10 withADPDEvents:v12 withCalendar:v21];
      v36 = v21;
      v37 = v10;
      [(MOEventPatternDetectorPredicateFilterByADPDCounts *)self splitIntoWeekdays:v10 withADPDEvents:v15 withCalendar:v21];
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v34 = v51 = 0u;
      v35 = v22;
      v53[0] = v22;
      v53[1] = v34;
      obj = [NSArray arrayWithObjects:v53 count:2];
      v20 = v15;
      v46 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
      if (v46)
      {
        v45 = *v49;
        do
        {
          for (i = 0; i != v46; i = i + 1)
          {
            if (*v49 != v45)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v48 + 1) + 8 * i);
            v25 = 1;
            do
            {
              v26 = [NSNumber numberWithInt:v25];
              v27 = [v24 objectForKeyedSubscript:v26];

              if (v27)
              {
                v28 = [NSNumber numberWithInt:v25];
                v29 = [v24 objectForKeyedSubscript:v28];

                v52 = v47;
                v30 = [NSArray arrayWithObjects:&v52 count:1];
                [v29 sortedArrayUsingDescriptors:v30];
                v32 = v31 = v12;
                [v5 addObject:v32];

                v12 = v31;
              }

              else
              {
                v29 = objc_opt_new();
                [v5 addObject:v29];
              }

              v25 = (v25 + 1);
            }

            while (v25 != 8);
          }

          v46 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
        }

        while (v46);
      }

      v19 = v5;
      v6 = v40;
      v4 = v41;
      v9 = v38;
      v7 = v39;
      v10 = v37;
    }

    else
    {
      v19 = 0;
      v20 = v15;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)splitIntoWeekdays:(id)a3 withADPDEvents:(id)a4 withCalendar:(id)a5
{
  v7 = a3;
  v8 = a4;
  v31 = a5;
  v9 = objc_opt_new();
  v10 = [v8 firstObject];
  v11 = [v10 category];

  if (v11 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = -1;
  }

  v13 = [v8 firstObject];
  v14 = [v13 category];

  if (v14 == 23)
  {
    v15 = 1;
  }

  else
  {
    v15 = v12;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v7;
  v16 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v34;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v34 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = [(MOEventPatternDetectorPredicateFilterByADPDCounts *)self crossReference:*(*(&v33 + 1) + 8 * i) withEvents:v8 withGroupingStrategy:v15];
        v21 = v20;
        if (v20)
        {
          v22 = [v20 startDate];
          v23 = [v22 dateByAddingTimeInterval:-10800.0];
          v24 = [v31 components:512 fromDate:v23];

          v25 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v24 weekday]);
          v26 = [v9 objectForKey:v25];

          if (!v26)
          {
            v27 = objc_opt_new();
            [v9 setObject:v27 forKeyedSubscript:v25];
          }

          v28 = [v9 objectForKeyedSubscript:v25];
          [v28 addObject:v21];
        }
      }

      v17 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v17);
  }

  return v9;
}

- (id)crossReference:(id)a3 withEvents:(id)a4 withGroupingStrategy:(unint64_t)a5
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 startDate];
  v9 = [v6 endDate];
  v96 = objc_opt_new();
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v105 objects:v111 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v106;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v106 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v105 + 1) + 8 * i);
        v16 = [v15 startDate];
        v17 = [v15 endDate];
        if ([v16 compare:v8] != -1 && objc_msgSend(v17, "compare:", v9) != 1)
        {
          [v96 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v105 objects:v111 count:16];
    }

    while (v12);
  }

  v18 = v96;
  if (![v96 count])
  {
    goto LABEL_29;
  }

  if ([v96 count] != 1)
  {
    if (a5 == 1)
    {
      v91 = v6;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      objb = v96;
      v54 = [objb countByEnumeratingWithState:&v97 objects:v109 count:16];
      if (v54)
      {
        v55 = v54;
        v56 = 0;
        v57 = *v98;
        v58 = 0.0;
        v59 = 0.0;
        do
        {
          for (j = 0; j != v55; j = j + 1)
          {
            if (*v98 != v57)
            {
              objc_enumerationMutation(objb);
            }

            v61 = *(*(&v97 + 1) + 8 * j);
            v62 = [v61 densityScore];
            [v62 floatValue];
            v64 = v63;

            v65 = [v61 densityScore];
            [v65 floatValue];
            v67 = v66;

            if (v67 > v59)
            {
              v68 = v61;

              v69 = [v68 densityScore];
              [v69 floatValue];
              v59 = v70;

              v56 = v68;
            }

            v58 = v58 + v64;
          }

          v55 = [objb countByEnumeratingWithState:&v97 objects:v109 count:16];
        }

        while (v55);
      }

      else
      {
        v56 = 0;
        v58 = 0.0;
      }

      v71 = v58 / [objb count];
      v72 = [objb sortMOEventArrayByStartDate];
      v73 = [v72 firstObject];

      v74 = [objb sortMOEventArrayByEndDate];
      v75 = [v74 lastObject];

      if (v56)
      {
        v76 = v56;
      }

      else
      {
        v76 = v73;
      }

      v88 = [v76 eventIdentifier];
      v77 = [MOEvent alloc];
      v78 = [v73 startDate];
      [v75 endDate];
      v79 = objc = v73;
      v80 = +[NSDate date];
      v26 = [(MOEvent *)v77 initWithEventIdentifier:v88 startDate:v78 endDate:v79 creationDate:v80 provider:5 category:1];

      v81 = [v75 endDate];
      v82 = [v81 dateByAddingTimeInterval:2419200.0];
      [(MOEvent *)v26 setExpirationDate:v82];

      [(MOEvent *)v26 setPCount:&off_100369118];
      *&v83 = v71;
      v84 = [NSNumber numberWithFloat:v83];
      [(MOEvent *)v26 setDensityScore:v84];

      [(MOEvent *)v26 setTimeAtHomeSubType:3];
      v6 = v91;
      goto LABEL_49;
    }

    if (!a5)
    {
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v32 = v96;
      v33 = [v32 countByEnumeratingWithState:&v101 objects:v110 count:16];
      if (!v33)
      {
        v26 = 0;
        goto LABEL_43;
      }

      v34 = v33;
      v90 = v6;
      obja = v32;
      v87 = v10;
      v35 = 0;
      v36 = 0;
      v37 = *v102;
      do
      {
        for (k = 0; k != v34; k = k + 1)
        {
          if (*v102 != v37)
          {
            objc_enumerationMutation(obja);
          }

          v39 = *(*(&v101 + 1) + 8 * k);
          v40 = [v39 pCount];
          v41 = [v40 intValue];

          if (v41 > v36)
          {
            v42 = v39;

            v43 = [v42 pCount];
            v36 = [v43 intValue];

            v35 = v42;
          }
        }

        v34 = [obja countByEnumeratingWithState:&v101 objects:v110 count:16];
      }

      while (v34);

      if (v35)
      {
        v44 = [MOEvent alloc];
        v45 = [v35 eventIdentifier];
        v46 = [v35 startDate];
        v47 = [v35 endDate];
        v48 = +[NSDate date];
        v26 = [(MOEvent *)v44 initWithEventIdentifier:v45 startDate:v46 endDate:v47 creationDate:v48 provider:5 category:1];

        v49 = [v35 endDate];
        v50 = [v49 dateByAddingTimeInterval:2419200.0];
        [(MOEvent *)v26 setExpirationDate:v50];

        v51 = [v35 pCount];
        [(MOEvent *)v26 setPCount:v51];

        [(MOEvent *)v26 setDensityScore:&off_10036E470];
        [(MOEvent *)v26 setTimeAtHomeSubType:3];
        v32 = v35;
        v10 = v87;
        v6 = v90;
        v18 = v96;
LABEL_43:

        goto LABEL_50;
      }

      v26 = 0;
      v10 = v87;
      v6 = v90;
LABEL_49:
      v18 = v96;
      goto LABEL_50;
    }

LABEL_29:
    v26 = 0;
    goto LABEL_50;
  }

  v89 = v6;
  v19 = [MOEvent alloc];
  v86 = [v96 firstObject];
  v20 = [v86 eventIdentifier];
  v21 = [v96 firstObject];
  v22 = [v21 startDate];
  v23 = [v96 firstObject];
  v24 = [v23 endDate];
  v25 = +[NSDate date];
  v26 = [(MOEvent *)v19 initWithEventIdentifier:v20 startDate:v22 endDate:v24 creationDate:v25 provider:5 category:1];

  v18 = v96;
  v27 = [v96 firstObject];
  v28 = [v27 endDate];
  v29 = [v28 dateByAddingTimeInterval:2419200.0];
  [(MOEvent *)v26 setExpirationDate:v29];

  if (a5 == 1)
  {
    [(MOEvent *)v26 setPCount:&off_100369118];
    v52 = [v96 firstObject];
    v53 = [v52 densityScore];
    [(MOEvent *)v26 setDensityScore:v53];

    v6 = v89;
  }

  else
  {
    v6 = v89;
    if (!a5)
    {
      v30 = [v96 firstObject];
      v31 = [v30 pCount];
      [(MOEvent *)v26 setPCount:v31];

      [(MOEvent *)v26 setDensityScore:&off_10036E470];
    }
  }

  [(MOEvent *)v26 setTimeAtHomeSubType:3];
LABEL_50:

  return v26;
}

@end