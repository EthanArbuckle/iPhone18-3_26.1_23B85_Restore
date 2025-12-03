@interface MOEventPatternDetectorPredicateFilterByValenceClassification
- (MOEventPatternDetectorPredicateFilterByValenceClassification)init;
- (id)filterEvents:(id)events;
@end

@implementation MOEventPatternDetectorPredicateFilterByValenceClassification

- (MOEventPatternDetectorPredicateFilterByValenceClassification)init
{
  v6.receiver = self;
  v6.super_class = MOEventPatternDetectorPredicateFilterByValenceClassification;
  v2 = [(MOEventPatternDetectorPredicateFilterByValenceClassification *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (id)filterEvents:(id)events
{
  eventsCopy = events;
  v4 = objc_opt_new();
  v5 = [NSPredicate predicateWithFormat:@"%K = %lu AND %K = %lu", @"category", 24, @"provider", 1];
  v6 = [eventsCopy filteredArrayUsingPredicate:v5];
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v30 = [v6 count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Found %lu state of mind events", buf, 0xCu);
  }

  if ([v6 count])
  {
    v20 = v5;
    v21 = eventsCopy;
    [v6 valueForKeyPath:@"@distinctUnionOfObjects.stateOfMindEvent.valenceClassification"];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = v26 = 0u;
    v8 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          v12 = v4;
          if (*v24 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v13 = [NSPredicate predicateWithFormat:@"stateOfMindEvent.valenceClassification == %@", *(*(&v23 + 1) + 8 * i)];
          v14 = [v6 filteredArrayUsingPredicate:v13];
          v15 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
          v27 = v15;
          v16 = [NSArray arrayWithObjects:&v27 count:1];
          v17 = [v14 sortedArrayUsingDescriptors:v16];

          v4 = v12;
          [v12 addObject:v17];
        }

        v9 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v9);
    }

    v18 = v4;

    v5 = v20;
    eventsCopy = v21;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end