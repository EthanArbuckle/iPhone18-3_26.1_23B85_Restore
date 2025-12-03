@interface MOTimeZoneManager
- (MOTimeZoneManager)initWithUniverse:(id)universe;
- (id)condensedRecordsFromRecords:(id)records;
- (id)description;
- (id)keywordForDate:(id)date;
- (id)timeZoneAtDate:(id)date;
- (void)processTimeZoneEvents:(id)events;
@end

@implementation MOTimeZoneManager

- (MOTimeZoneManager)initWithUniverse:(id)universe
{
  v4.receiver = self;
  v4.super_class = MOTimeZoneManager;
  return [(MOTimeZoneManager *)&v4 init];
}

- (void)processTimeZoneEvents:(id)events
{
  eventsCopy = events;
  v33 = [NSPredicate predicateWithFormat:@"timeZone != nil"];
  v34 = eventsCopy;
  v5 = [eventsCopy filteredArrayUsingPredicate:?];
  v32 = [[NSSortDescriptor alloc] initWithKey:@"endDate" ascending:1];
  v51 = v32;
  v6 = [NSArray arrayWithObjects:&v51 count:1];
  v7 = [v5 sortedArrayUsingDescriptors:v6];

  selfCopy = self;
  v9 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v7;
  v10 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
  selfCopy2 = self;
  if (v10)
  {
    v11 = v10;
    v12 = *v39;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v38 + 1) + 8 * i);
        endDate = [v14 endDate];
        v16 = [(MOTimeZoneManager *)selfCopy keywordForDate:endDate];

        timeZone = [v14 timeZone];
        name = [timeZone name];
        [v9 setObject:name forKey:v16];

        v19 = _mo_log_facility_get_os_log(&MOLogFacilityDefaults);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v20 = NSStringFromSelector(a2);
          endDate2 = [v14 endDate];
          timeZone2 = [v14 timeZone];
          *buf = 138413058;
          v43 = v20;
          v44 = 2112;
          v45 = endDate2;
          v46 = 2112;
          v47 = v16;
          v48 = 2112;
          v49 = timeZone2;
          _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%@, raw timeZone, date %@, keyword, %@, event.timeZone, %@", buf, 0x2Au);

          selfCopy = selfCopy2;
        }
      }

      v11 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
    }

    while (v11);
  }

  if (![v9 count])
  {
    v23 = +[NSDate date];
    v24 = [(MOTimeZoneManager *)selfCopy2 keywordForDate:v23];

    v25 = +[NSTimeZone systemTimeZone];
    name2 = [v25 name];
    [v9 setObject:name2 forKey:v24];
  }

  v27 = [v9 copy];
  [(MOTimeZoneManager *)selfCopy2 setTimeZoneRecords:v27];

  v28 = _mo_log_facility_get_os_log(&MOLogFacilityDefaults);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    [(MOTimeZoneManager *)a2 processTimeZoneEvents:v9];
  }

  timeZoneRecords = [(MOTimeZoneManager *)selfCopy2 timeZoneRecords];
  v30 = [(MOTimeZoneManager *)selfCopy2 condensedRecordsFromRecords:timeZoneRecords];
  [(MOTimeZoneManager *)selfCopy2 setCondensedRecords:v30];

  v31 = _mo_log_facility_get_os_log(&MOLogFacilityDefaults);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    [(MOTimeZoneManager *)a2 processTimeZoneEvents:selfCopy2];
  }
}

- (id)condensedRecordsFromRecords:(id)records
{
  recordsCopy = records;
  v4 = objc_opt_new();
  allKeys = [recordsCopy allKeys];
  v6 = [allKeys sortedArrayUsingSelector:"compare:"];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = *v30;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        v13 = v10;
        v14 = v9;
        if (*v30 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        v9 = [recordsCopy objectForKey:v15];
        if (v13 && ([v14 isEqualToString:v9] & 1) == 0)
        {
          v16 = [v4 objectForKey:v13];

          if (!v16)
          {
            [v4 setObject:v14 forKey:v13];
            v17 = _mo_log_facility_get_os_log(&MOLogFacilityDefaults);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              v25 = NSStringFromSelector(a2);
              *buf = 138412802;
              v34 = v25;
              v35 = 2112;
              v36 = v13;
              v37 = 2112;
              v38 = v14;
              _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%@, TimeZone entry, keyword, %@, event.timeZone, %@ ADD", buf, 0x20u);
            }
          }

          v18 = [v4 objectForKey:v15];

          if (!v18)
          {
            [v4 setObject:v9 forKey:v15];
            v19 = _mo_log_facility_get_os_log(&MOLogFacilityDefaults);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              v26 = NSStringFromSelector(a2);
              *buf = 138412802;
              v34 = v26;
              v35 = 2112;
              v36 = v15;
              v37 = 2112;
              v38 = v9;
              _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%@, TimeZone entry, keyword, %@, event.timeZone, %@ ADD", buf, 0x20u);
            }
          }
        }

        v10 = v15;
      }

      v8 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v20 = [v4 count];
  if (v10 && !v20)
  {
    [v4 setObject:v9 forKey:v10];
    v21 = _mo_log_facility_get_os_log(&MOLogFacilityDefaults);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v24 = NSStringFromSelector(a2);
      *buf = 138412802;
      v34 = v24;
      v35 = 2112;
      v36 = v10;
      v37 = 2112;
      v38 = v9;
      _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%@, TimeZone entry, keyword, %@, event.timeZone, %@ ADD", buf, 0x20u);
    }
  }

  v22 = [v4 copy];

  return v22;
}

- (id)timeZoneAtDate:(id)date
{
  dateCopy = date;
  v6 = [(MOTimeZoneManager *)self keywordForDate:dateCopy];
  condensedRecords = [(MOTimeZoneManager *)self condensedRecords];
  v8 = [condensedRecords objectForKey:v6];

  if (!v8)
  {
    condensedRecords2 = [(MOTimeZoneManager *)self condensedRecords];
    v12 = [condensedRecords2 keysSortedByValueUsingSelector:"compare:"];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v14)
    {
      v15 = v14;
      v35 = a2;
      v36 = dateCopy;
      v16 = 0;
      v17 = *v38;
      v18 = 1.79769313e308;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v38 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v20 = *(*(&v37 + 1) + 8 * i);
          condensedRecords3 = [(MOTimeZoneManager *)self condensedRecords];
          v22 = [condensedRecords3 objectForKey:v20];

          [v6 doubleValue];
          v24 = v23;
          [v20 doubleValue];
          v26 = vabdd_f64(v24, v25);
          if (v26 < v18)
          {
            v27 = v22;

            v18 = v26;
            v16 = v27;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v15);

      v8 = 0;
      dateCopy = v36;
      a2 = v35;
      if (v16)
      {
        v28 = _mo_log_facility_get_os_log(&MOLogFacilityDefaults);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          v34 = NSStringFromSelector(v35);
          *buf = 138413058;
          v43 = v34;
          v44 = 2112;
          v45 = v36;
          v46 = 2112;
          v47 = v6;
          v48 = 2112;
          v49 = v16;
          _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "%@, date %@, keyword, %@, timeZone, %@, source, interpolated", buf, 0x2Au);
        }

        v10 = [NSTimeZone timeZoneWithName:v16];

LABEL_22:
        goto LABEL_23;
      }
    }

    else
    {
    }

    v29 = _mo_log_facility_get_os_log(&MOLogFacilityDefaults);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v32 = NSStringFromSelector(a2);
      v33 = +[NSTimeZone systemTimeZone];
      *buf = 138413058;
      v43 = v32;
      v44 = 2112;
      v45 = dateCopy;
      v46 = 2112;
      v47 = v6;
      v48 = 2112;
      v49 = v33;
      _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "%@, date %@, keyword, %@, timeZone, %@, source, system", buf, 0x2Au);
    }

    v10 = +[NSTimeZone systemTimeZone];
    goto LABEL_22;
  }

  v9 = _mo_log_facility_get_os_log(&MOLogFacilityDefaults);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v31 = NSStringFromSelector(a2);
    *buf = 138413058;
    v43 = v31;
    v44 = 2112;
    v45 = dateCopy;
    v46 = 2112;
    v47 = v6;
    v48 = 2112;
    v49 = v8;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%@, date %@, keyword, %@, timeZone, %@, source, lookup", buf, 0x2Au);
  }

  v10 = [NSTimeZone timeZoneWithName:v8];
LABEL_23:

  return v10;
}

- (id)keywordForDate:(id)date
{
  [date timeIntervalSinceReferenceDate];

  return [NSNumber numberWithUnsignedInteger:(v3 / 3600.0)];
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"TimeZone records:"];
  condensedRecords = [(MOTimeZoneManager *)self condensedRecords];
  allKeys = [condensedRecords allKeys];
  v6 = [allKeys sortedArrayUsingSelector:"compare:"];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        condensedRecords2 = [(MOTimeZoneManager *)self condensedRecords];
        v14 = [condensedRecords2 objectForKey:v12];

        [v3 appendFormat:@"<%@:%@>", v12, v14, v17];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = [v3 copy];

  return v15;
}

- (void)processTimeZoneEvents:(const char *)a1 .cold.1(const char *a1, void *a2)
{
  v3 = NSStringFromSelector(a1);
  [a2 count];
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_2(&_mh_execute_header, v4, v5, "%@, TimeZoneManager.timeZoneRecords, %lu", v6, v7, v8, v9, v10);
}

- (void)processTimeZoneEvents:(const char *)a1 .cold.2(const char *a1, void *a2)
{
  v3 = NSStringFromSelector(a1);
  v4 = [a2 condensedRecords];
  [v4 count];
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_2(&_mh_execute_header, v5, v6, "%@, TimeZoneManager.condensedRecords, %lu", v7, v8, v9, v10, v11);
}

@end