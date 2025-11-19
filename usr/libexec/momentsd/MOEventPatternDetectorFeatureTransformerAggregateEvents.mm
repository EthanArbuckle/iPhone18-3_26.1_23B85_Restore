@interface MOEventPatternDetectorFeatureTransformerAggregateEvents
- (BOOL)configure:(id)a3;
- (MOEventPatternDetectorFeatureTransformerAggregateEvents)init;
- (id)transformFeaturesFromEvents:(id)a3 withFeatures:(id)a4;
@end

@implementation MOEventPatternDetectorFeatureTransformerAggregateEvents

- (MOEventPatternDetectorFeatureTransformerAggregateEvents)init
{
  v8.receiver = self;
  v8.super_class = MOEventPatternDetectorFeatureTransformerAggregateEvents;
  v2 = [(MOEventPatternDetectorFeatureTransformerAggregateEvents *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_aggregationWindow = 16;
    v4 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    currentCalendar = v3->_currentCalendar;
    v3->_currentCalendar = v4;

    v6 = v3;
  }

  return v3;
}

- (id)transformFeaturesFromEvents:(id)a3 withFeatures:(id)a4
{
  v5 = a3;
  v40 = a4;
  v36 = objc_opt_new();
  v39 = objc_opt_new();
  v38 = objc_opt_new();
  if ([v5 count])
  {
    v6 = 0;
    v37 = v5;
    do
    {
      v7 = [v5 objectAtIndex:{v6, v36}];
      v8 = [v40 objectAtIndex:v6];
      if ([v7 count])
      {
        v41 = v6;
        v44 = objc_opt_new();
        v43 = objc_opt_new();
        v9 = [v7 firstObject];
        v10 = [v9 startDate];
        v11 = [v10 dateByAddingTimeInterval:-10800.0];

        v12 = [v8 firstObject];
        [v12 doubleValue];
        v14 = v13;

        if ([v7 count])
        {
          v15 = 0;
          do
          {
            if ([v7 count] <= v15 + 1)
            {
              goto LABEL_12;
            }

            currentCalendar = self->_currentCalendar;
            v16 = [v7 objectAtIndex:v15 + 1];
            v17 = [v16 endDate];
            [v17 dateByAddingTimeInterval:-10800.0];
            v18 = v9;
            v20 = v19 = v8;
            v21 = [(NSCalendar *)currentCalendar isDate:v11 equalToDate:v20 toUnitGranularity:self->_aggregationWindow];

            v8 = v19;
            v9 = v18;

            if (v21)
            {
              v22 = [v8 objectAtIndex:v15 + 1];
              [v22 doubleValue];
              v24 = v23;

              aggregationType = self->_aggregationType;
              if (aggregationType == 1)
              {
                if (v24 > v14)
                {
                  v33 = [v7 objectAtIndex:v15 + 1];

                  v9 = v33;
                  v14 = v24;
                }
              }

              else if (!aggregationType)
              {
                v14 = v14 + v24;
              }
            }

            else
            {
LABEL_12:
              v26 = [NSNumber numberWithDouble:v14];
              [v44 addObject:v26];

              [v43 addObject:v9];
              if ([v7 count] > v15 + 1)
              {
                v27 = [v7 objectAtIndex:v15 + 1];
                v28 = [v27 startDate];
                v29 = [v28 dateByAddingTimeInterval:-10800.0];

                v30 = [v7 objectAtIndex:v15 + 1];

                v31 = [v8 objectAtIndex:v15 + 1];
                [v31 doubleValue];
                v14 = v32;

                v9 = v30;
                v11 = v29;
              }
            }

            ++v15;
          }

          while ([v7 count] > v15);
        }

        [v38 addObject:v44];
        [v39 addObject:v43];

        v5 = v37;
        v6 = v41;
      }

      ++v6;
    }

    while ([v5 count] > v6);
  }

  v34 = v36;
  [v36 addObject:{v39, v36}];
  [v34 addObject:v38];

  return v34;
}

- (BOOL)configure:(id)a3
{
  v5 = a3;
  v6 = [v5 count];
  if (v6)
  {
    v7 = [v5 objectForKey:@"AggregationWindow"];

    if (v7)
    {
      v8 = [v5 objectForKey:@"AggregationWindow"];
      self->_aggregationWindow = v8;
    }

    else
    {
      v9 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(MOEventPatternDetectorFeatureTransformerAggregateEvents *)@"AggregationWindow" configure:v9];
      }
    }

    v10 = [v5 objectForKey:@"AggregationType"];

    if (!v10)
    {
      v13 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(MOEventPatternDetectorFeatureTransformerAggregateEvents *)@"AggregationType" configure:v13];
      }

      goto LABEL_14;
    }

    v11 = [v5 objectForKey:@"AggregationType"];
    self->_aggregationType = [v11 unsignedIntValue];

    if (self->_aggregationType >= 2)
    {
      v12 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(MOEventPatternDetectorFeatureTransformerAggregateEvents *)&self->_aggregationType configure:v12];
      }

      v13 = +[NSAssertionHandler currentHandler];
      [v13 handleFailureInMethod:a2 object:self file:@"MOEventPatternDetectorFeatureTransformerAggregateEvents.m" lineNumber:108 description:@"Unknown Aggregation Type : %lu (in %s:%d)", self->_aggregationType, "[MOEventPatternDetectorFeatureTransformerAggregateEvents configure:]", 108];
LABEL_14:
    }
  }

  return v6 != 0;
}

- (void)configure:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Configuration property not set for AggregateEvents: %@", &v2, 0xCu);
}

- (void)configure:(uint64_t *)a1 .cold.2(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 134218498;
  v4 = v2;
  v5 = 2080;
  v6 = "[MOEventPatternDetectorFeatureTransformerAggregateEvents configure:]";
  v7 = 1024;
  v8 = 108;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unknown Aggregation Type : %lu (in %s:%d)", &v3, 0x1Cu);
}

@end