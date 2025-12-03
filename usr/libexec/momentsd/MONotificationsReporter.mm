@interface MONotificationsReporter
- (id)fetchNotificationsReporterIdentification;
- (id)init:(id)init;
- (void)convertNSDateValuesToString;
- (void)freshenNotificationsReporterIdentification;
- (void)resetReport;
- (void)setOnboardingStatesFromDictionary:(id)dictionary;
- (void)unpackDowntimeDictionary:(id)dictionary;
- (void)unpackPredictions:(id)predictions;
- (void)writeReportWithMessage:(id)message;
@end

@implementation MONotificationsReporter

- (id)init:(id)init
{
  initCopy = init;
  v12.receiver = self;
  v12.super_class = MONotificationsReporter;
  v6 = [(MONotificationsReporter *)&v12 init];
  if (v6)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    report = v6->_report;
    v6->_report = v7;

    objc_storeStrong(&v6->_defaultsManager, init);
    v9 = objc_alloc_init(NSDateFormatter);
    [(NSDateFormatter *)v9 setDateFormat:@"yyyy-MM-dd HH:mm"];
    dateFormatter = v6->_dateFormatter;
    v6->_dateFormatter = v9;
  }

  return v6;
}

- (void)setOnboardingStatesFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"settingBroaderSwitchLocation"];
  report = [(MONotificationsReporter *)self report];
  [report setObject:v5 forKeyedSubscript:@"isSignificantLocationEnabled"];

  v7 = [dictionaryCopy objectForKeyedSubscript:@"systemNotificationsEnabled"];
  report2 = [(MONotificationsReporter *)self report];
  [report2 setObject:v7 forKeyedSubscript:@"isSystemNotificationsEnabled"];

  v9 = [dictionaryCopy objectForKeyedSubscript:@"appNotificationsEnabled"];
  report3 = [(MONotificationsReporter *)self report];
  [report3 setObject:v9 forKeyedSubscript:@"isAppNotificationsEnabled"];

  v12 = [dictionaryCopy objectForKeyedSubscript:@"screenTimeState"];

  report4 = [(MONotificationsReporter *)self report];
  [report4 setObject:v12 forKeyedSubscript:@"screenTimeState"];
}

- (void)freshenNotificationsReporterIdentification
{
  v3 = +[NSUUID UUID];
  uUIDString = [v3 UUIDString];

  [(NSMutableDictionary *)self->_report setObject:uUIDString forKeyedSubscript:@"reporterUUID"];
  defaultsManager = [(MONotificationsReporter *)self defaultsManager];
  [defaultsManager setObject:uUIDString forKey:@"NotificationReporterIdentification"];

  v6 = _mo_log_facility_get_os_log(&MOLogFacilityNotificationReporter);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = uUIDString;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "generated new reporter identification and wrote to defaults:%@", &v7, 0xCu);
  }
}

- (id)fetchNotificationsReporterIdentification
{
  defaultsManager = [(MONotificationsReporter *)self defaultsManager];
  v3 = [defaultsManager objectForKey:@"NotificationReporterIdentification"];

  v4 = _mo_log_facility_get_os_log(&MOLogFacilityNotificationReporter);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "fetched identification from defaults: %@", &v8, 0xCu);
    }

    v6 = v3;
  }

  else
  {
    if (v5)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "no reporter identification found in defaults", &v8, 2u);
    }
  }

  return v3;
}

- (void)unpackPredictions:(id)predictions
{
  predictionsCopy = predictions;
  v4 = [predictionsCopy count];
  v5 = 24;
  if (v4 < 0x18)
  {
    v5 = v4;
  }

  v55 = v5;
  if (v4)
  {
    v6 = 0;
    v7 = @"locationFilterProbability";
    do
    {
      v8 = [predictionsCopy objectAtIndexedSubscript:v6];
      v9 = [NSString stringWithFormat:@"%02ld", ++v6];
      v10 = [v8 objectForKeyedSubscript:@"predictionDate"];
      v11 = v10;
      if (v10)
      {
        v12 = [@"predictionDate" stringByAppendingString:v9];
        [(MONotificationsReporter *)self dateFormatter];
        v14 = v13 = v9;
        v15 = [v14 stringFromDate:v10];
        report = [(MONotificationsReporter *)self report];
        [report setObject:v15 forKeyedSubscript:v12];

        v10 = v11;
        v9 = v13;
      }

      v17 = [v8 objectForKeyedSubscript:@"availabilityProbability"];
      v18 = v17;
      if (v17)
      {
        [v17 doubleValue];
        v20 = v19 * 1000.0;
        v21 = [@"availabilityProbability" stringByAppendingString:v9];
        v22 = [NSNumber numberWithDouble:v20];
        report2 = [(MONotificationsReporter *)self report];
        [report2 setObject:v22 forKeyedSubscript:v21];

        v10 = v11;
      }

      v24 = [v8 objectForKeyedSubscript:v7];
      v25 = v24;
      if (v24)
      {
        [v24 doubleValue];
        v27 = v26 * 1000.0;
        v28 = [(__CFString *)v7 stringByAppendingString:v9];
        v29 = [NSNumber numberWithDouble:v27];
        [(MONotificationsReporter *)self report];
        v57 = v9;
        v30 = v8;
        v31 = v6;
        v32 = v7;
        v33 = v18;
        v35 = v34 = self;
        [v35 setObject:v29 forKeyedSubscript:v28];

        self = v34;
        v18 = v33;
        v7 = v32;
        v6 = v31;
        v8 = v30;
        v9 = v57;

        v10 = v11;
      }
    }

    while (v55 != v6);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v36 = predictionsCopy;
  v37 = [v36 countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = 0;
    v40 = *v59;
    v41 = 0.0;
    do
    {
      for (i = 0; i != v38; i = i + 1)
      {
        if (*v59 != v40)
        {
          objc_enumerationMutation(v36);
        }

        v43 = *(*(&v58 + 1) + 8 * i);
        v44 = [v43 objectForKeyedSubscript:@"availabilityProbability"];
        v45 = v44;
        if (v44)
        {
          [v44 doubleValue];
          if (v46 > v41)
          {
            [v45 doubleValue];
            v41 = v47;
            v48 = [v43 objectForKeyedSubscript:@"predictionDate"];

            v39 = v48;
          }
        }
      }

      v38 = [v36 countByEnumeratingWithState:&v58 objects:v62 count:16];
    }

    while (v38);
    v49 = v41 * 1000.0;
  }

  else
  {
    v39 = 0;
    v49 = 0.0;
  }

  v50 = [NSNumber numberWithDouble:v49];
  report3 = [(MONotificationsReporter *)self report];
  [report3 setObject:v50 forKeyedSubscript:@"maxAvailabilityProbability"];

  if (v39)
  {
    dateFormatter = [(MONotificationsReporter *)self dateFormatter];
    v53 = [dateFormatter stringFromDate:v39];
    report4 = [(MONotificationsReporter *)self report];
    [report4 setObject:v53 forKeyedSubscript:@"maxAvailabilityProbabilityDate"];
  }
}

- (void)unpackDowntimeDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18[0] = @"downtimeWindowStartHourRecent";
  v18[1] = @"downtimeWindowLengthRecent";
  v18[2] = @"downtimeDetectionErrorRecent";
  v18[3] = @"downtimeWindowStartHourAllDays";
  v18[4] = @"downtimeWindowLengthAllDays";
  v18[5] = @"downtimeDetectionErrorAllDays";
  v18[6] = @"downtimeWindowStartHourSelected";
  v18[7] = @"downtimeWindowEndHourSelected";
  v18[8] = @"downtimeSelectionMechanism";
  [NSArray arrayWithObjects:v18 count:9];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [dictionaryCopy objectForKeyedSubscript:{v10, v13}];
        if (v11)
        {
          report = [(MONotificationsReporter *)self report];
          [report setObject:v11 forKeyedSubscript:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)convertNSDateValuesToString
{
  v17[0] = @"proposedPredictionDate";
  v17[1] = @"proposedFireDate";
  v17[2] = @"fireAlarmDate";
  v17[3] = @"reporterWritingDate";
  v17[4] = @"maxAvailabilityProbabilityDate";
  [NSArray arrayWithObjects:v17 count:5];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_report objectForKeyedSubscript:v8, v12];
        if (v9)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            dateFormatter = [(MONotificationsReporter *)self dateFormatter];
            v11 = [dateFormatter stringFromDate:v9];
            [(NSMutableDictionary *)self->_report setObject:v11 forKeyedSubscript:v8];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (void)writeReportWithMessage:(id)message
{
  messageCopy = message;
  v5 = +[NSDate now];
  [(NSMutableDictionary *)self->_report setObject:v5 forKeyedSubscript:@"reporterWritingDate"];

  [(NSMutableDictionary *)self->_report setObject:messageCopy forKeyedSubscript:@"reporterLoggingMessage"];
  [(MONotificationsReporter *)self convertNSDateValuesToString];
  v6 = _mo_log_facility_get_os_log(&MOLogFacilityNotificationReporter);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    report = [(MONotificationsReporter *)self report];
    *buf = 138412546;
    v16 = messageCopy;
    v17 = 2112;
    v18 = report;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@: %@", buf, 0x16u);
  }

  report2 = [(MONotificationsReporter *)self report];
  AnalyticsSendEvent();

  report3 = [(MONotificationsReporter *)self report];
  v10 = [report3 copy];
  v14 = 0;
  v11 = [MONotificationsBiomeDonation donateNotificationReport:v10 error:&v14];
  v12 = v14;

  if ((v11 & 1) == 0)
  {
    v13 = _mo_log_facility_get_os_log(&MOLogFacilityNotificationReporter);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [(MONotificationsReporter *)v12 writeReportWithMessage:v13];
    }
  }

  [(MONotificationsReporter *)self resetReport];
}

- (void)resetReport
{
  v3 = objc_alloc_init(NSMutableDictionary);
  report = self->_report;
  self->_report = v3;

  _objc_release_x1();
}

- (void)writeReportWithMessage:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Failed to donate notification report to Biome: %@", &v4, 0xCu);
}

@end