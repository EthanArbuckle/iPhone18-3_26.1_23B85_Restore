@interface MODataDumpFormatter
- (MODataDumpFormatter)initWithEvents:(id)a3 bundles:(id)a4 ranking:(id)a5 settings:(id)a6 configManager:(id)a7;
- (id)extractJSONPayload;
- (void)_saveToDictionary:(id)a3 object:(id)a4 forKey:(id)a5;
@end

@implementation MODataDumpFormatter

- (MODataDumpFormatter)initWithEvents:(id)a3 bundles:(id)a4 ranking:(id)a5 settings:(id)a6 configManager:(id)a7
{
  v28 = a3;
  v26 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v16)
  {
    v30.receiver = self;
    v30.super_class = MODataDumpFormatter;
    v17 = [(MODataDumpFormatter *)&v30 init:v26];
    v18 = v17;
    if (v17)
    {
      objc_storeStrong(&v17->_events, a3);
      objc_storeStrong(&v18->_bundles, a4);
      objc_storeStrong(&v18->_ranking, a5);
      objc_storeStrong(&v18->_settings, a6);
      objc_storeStrong(&v18->_configManager, a7);
      v19 = [(NSDictionary *)v18->_settings objectForKey:@"kMODataWithoutRandomization"];
      v18->_persistWithoutRandomization = [v19 BOOLValue];

      v20 = [[MOEventSerializationSessionHelper alloc] initWithRandomization:!v18->_persistWithoutRandomization];
      eventSerializer = v18->_eventSerializer;
      v18->_eventSerializer = v20;
    }

    self = v18;
    v22 = self;
  }

  else
  {
    v23 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [MODataDumpFormatter initWithEvents:v23 bundles:? ranking:? settings:? configManager:?];
    }

    v24 = [NSAssertionHandler currentHandler:v26];
    [v24 handleFailureInMethod:a2 object:self file:@"MODataDumpFormatter.m" lineNumber:58 description:@"Invalid parameter not satisfying: configManager"];

    v22 = 0;
  }

  return v22;
}

- (id)extractJSONPayload
{
  v33 = objc_opt_new();
  v3 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v4 = self->_events;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v40;
    v8 = 3.40282347e38;
    v9 = 1.17549435e-38;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v40 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v11 = [(MOEventSerializationSessionHelper *)self->_eventSerializer serializeEvent:*(*(&v39 + 1) + 8 * i)];
        if (v11)
        {
          [v3 addObject:v11];
          v12 = [v11 objectForKeyedSubscript:@"eventStartDate"];
          [v12 doubleValue];
          v14 = v13;

          v15 = [v11 objectForKeyedSubscript:@"eventEndDate"];
          [v15 doubleValue];
          v17 = v16;

          if (v14 < v8)
          {
            v8 = v14;
          }

          if (v17 > v9)
          {
            v9 = v17;
          }
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 3.40282347e38;
    v9 = 1.17549435e-38;
  }

  [v33 setObject:v3 forKey:@"kMOEvent"];
  if ([v3 count])
  {
    v18 = [NSNumber numberWithDouble:v8];
    [v33 setObject:v18 forKey:@"kMOStartTimeFromEventWithEarliestStartDate"];

    v19 = [NSNumber numberWithDouble:v9];
    [v33 setObject:v19 forKey:@"kMOEndTimeFromEventWithLatestEndDate"];
  }

  v20 = objc_opt_new();
  if (MomentsLibraryCore() && [(NSArray *)self->_bundles count])
  {
    v21 = _mo_log_facility_get_os_log(&MOLogFacilityDataExporter);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Moments framework is available. Localize bundle labels and prompts", buf, 2u);
    }

    v22 = objc_alloc(getMOPromptManagerClass());
    v23 = objc_opt_class();
    v24 = [v22 initForSoftLinkwithMOEventClass:v23 moEventBundleClass:objc_opt_class()];
    [v24 localizeEventBundles:self->_bundles];
    v25 = _mo_log_facility_get_os_log(&MOLogFacilityDataExporter);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Bundles were localized", buf, 2u);
    }
  }

  else
  {
    v24 = _mo_log_facility_get_os_log(&MOLogFacilityDataExporter);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Can't localize bundles: bundles or Moments framework is not available", buf, 2u);
    }
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v26 = self->_bundles;
  v27 = [(NSArray *)v26 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v35;
    do
    {
      for (j = 0; j != v28; j = j + 1)
      {
        if (*v35 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = [(MOEventSerializationSessionHelper *)self->_eventSerializer serializeEventBundle:*(*(&v34 + 1) + 8 * j)];
        if (v31)
        {
          [v20 addObject:v31];
        }
      }

      v28 = [(NSArray *)v26 countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v28);
  }

  [v33 setObject:v20 forKey:@"kMOEventBundle"];

  return v33;
}

- (void)_saveToDictionary:(id)a3 object:(id)a4 forKey:(id)a5
{
  if (a4)
  {
    if (a5)
    {
      [a3 setObject:a4 forKey:a5];
    }
  }
}

@end