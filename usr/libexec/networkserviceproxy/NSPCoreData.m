@interface NSPCoreData
+ (BOOL)triggerProactiveTokenFetch:(id)a3 lowerTokenCountThreshold:(unint64_t)a4;
+ (id)NSPEventsCacheGet;
+ (id)NSPEventsCacheUpdate:(id)a3;
+ (id)childCoreDataContext;
+ (id)compareModelVersion:(id)a3 model2:(id)a4;
+ (id)computeStats:(id)a3;
+ (id)fetchEvents;
+ (id)fetchEvents:(id)a3 mostRecent:(BOOL)a4 limit:(unint64_t)a5;
+ (id)fetchLatestEvents:(unint64_t)a3 vendors:(id)a4;
+ (id)getMinMaxDate;
+ (id)getModelVersion:(id)a3;
+ (id)getNSPEventStatsForSingleWindow:(id)a3 eventType:(int64_t)a4 startDate:(id)a5 endDate:(id)a6 windowStartTime:(id)a7 windowDuration:(id)a8;
+ (id)getNSPEventsDenormalizer;
+ (id)getNSPEventsNormalizer;
+ (id)getNSPEventsPredictor;
+ (id)getNSPEventsProbability:(id)a3 count:(int64_t)a4;
+ (id)getNSPTokenStatsForSingleWindow:(id)a3 startDate:(id)a4 endDate:(id)a5 windowStartTime:(id)a6 windowDuration:(id)a7 statsCategory:(int64_t)a8;
+ (id)getProactiveTokenFetchConfiguration;
+ (id)getTokenCountStatsForMultipleWindows:(id)a3 minDate:(id)a4 maxDate:(id)a5 windowDuration:(id)a6;
+ (id)getVendorDictionary;
+ (id)getVendorIdFromDictionary:(id)a3;
+ (id)getVendorNameById:(int64_t)a3;
+ (id)initNSPEventsModelPredictor;
+ (id)normalizeData:(id)a3;
+ (id)prepareInputForPrediction:(id)a3 vendor:(id)a4;
+ (id)prepareInputForTraining;
+ (id)prepareMLData:(id)a3 startAt:(unsigned int)a4 dataShape:(id)a5;
+ (id)prepareTokenEventsFromPrediction:(id)a3;
+ (id)sharedCoreDataContext;
+ (id)tokenTypeEnumToString:(int)a3;
+ (id)updateProactiveTokenFetchConfiguration:(id)a3 statsDuration:(id)a4 lowerTokenCountThreshold:(id)a5 lowerTokenCountProbability:(id)a6 upperLWMCountThreshold:(id)a7 upperLWMCountProbabilityOffset:(id)a8;
+ (id)updateVendorDictionaryFromModel:(id)a3;
+ (void)handleNSPEventsPredictions:(id)a3;
+ (void)predictNSPEvent:(id)a3;
+ (void)prepareModelInputWithFeatures:(id)a3 keyedSubscripts:(id)a4 features:(id)a5;
+ (void)printMLMultiArray:(id)a3;
+ (void)purgeEventsOlderThanDate:(id)a3;
+ (void)purgeEventsOlderThanDays:(int64_t)a3;
+ (void)saveTokenEvent:(id)a3 eventType:(int)a4 vendor:(id)a5 tokenCount:(unint64_t)a6;
- (NSPCoreData)init;
@end

@implementation NSPCoreData

+ (id)sharedCoreDataContext
{
  if (qword_100129818 != -1)
  {
    dispatch_once(&qword_100129818, &stru_10010A610);
  }

  if (qword_100129810)
  {
    v2 = [qword_100129810 persistentContainer];
    v3 = [v2 viewContext];
  }

  else
  {
    v5 = nplog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v6 = 136315138;
      v7 = "+[NSPCoreData sharedCoreDataContext]";
      _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "%s called with null coreData", &v6, 0xCu);
    }

    v3 = 0;
  }

  return v3;
}

+ (id)childCoreDataContext
{
  if (qword_1001297D0)
  {
    v2 = qword_1001297D0;
    goto LABEL_10;
  }

  v3 = +[NSPCoreData sharedCoreDataContext];
  if (!v3)
  {
    v6 = nplog_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v8) = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "NSP Core Data context not available", &v8, 2u);
    }

    goto LABEL_8;
  }

  v4 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
  v5 = qword_1001297D0;
  qword_1001297D0 = v4;

  if (!qword_1001297D0)
  {
    v6 = nplog_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315138;
      v9 = "+[NSPCoreData childCoreDataContext]";
      _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "%s called with null childContext", &v8, 0xCu);
    }

LABEL_8:

    v2 = 0;
    goto LABEL_9;
  }

  [qword_1001297D0 setParentContext:v3];
  v2 = qword_1001297D0;
LABEL_9:

LABEL_10:

  return v2;
}

- (NSPCoreData)init
{
  v16.receiver = self;
  v16.super_class = NSPCoreData;
  v2 = [(NSPCoreData *)&v16 init];
  if (v2)
  {
    v3 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/NetworkServiceProxy.framework"];
    v4 = v3;
    if (!v3)
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v18 = "[NSPCoreData init]";
        _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "%s called with null frameworkBundle", buf, 0xCu);
      }

      v12 = 0;
      goto LABEL_10;
    }

    v5 = [v3 URLForResource:@"NSPCoreDataModel" withExtension:@"momd"];
    v6 = nplog_obj();
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v18 = @"NSPCoreDataModel";
        v19 = 2112;
        v20 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "URL for %@: %@", buf, 0x16u);
      }

      v8 = [[NSManagedObjectModel alloc] initWithContentsOfURL:v5];
      if (v8)
      {
        v7 = v8;
        v9 = [[NSPPersistentContainer alloc] initWithName:@"NSPCoreDataModel" managedObjectModel:v8];
        [(NSPCoreData *)v2 setPersistentContainer:v9];

        v10 = [(NSPCoreData *)v2 persistentContainer];

        if (v10)
        {
          v11 = [(NSPCoreData *)v2 persistentContainer];
          [v11 loadPersistentStoresWithCompletionHandler:&stru_10010A650];

          v12 = v2;
LABEL_9:

LABEL_10:
          goto LABEL_11;
        }

        v15 = nplog_obj();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          v18 = "[NSPCoreData init]";
          _os_log_fault_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "%s called with null self.persistentContainer", buf, 0xCu);
        }
      }

      else
      {
        v14 = nplog_obj();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          v18 = "[NSPCoreData init]";
          _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "%s called with null model", buf, 0xCu);
        }

        v7 = 0;
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v18 = "[NSPCoreData init]";
      _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "%s called with null modelURL", buf, 0xCu);
    }

    v12 = 0;
    goto LABEL_9;
  }

  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "[super init] failed", buf, 2u);
  }

  v12 = 0;
LABEL_11:

  return v12;
}

+ (id)getProactiveTokenFetchConfiguration
{
  if (qword_1001297D8)
  {
LABEL_16:
    v12 = nplog_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v15 = 138412290;
      v16 = qword_1001297D8;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "ProactiveTokenFetch Params %@", &v15, 0xCu);
    }

    v13 = qword_1001297D8;
    goto LABEL_19;
  }

  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = qword_1001297D8;
  qword_1001297D8 = v2;

  v4 = qword_1001297D8;
  v5 = nplog_obj();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Setting default values for ProactiveFetchConfiguration", &v15, 2u);
    }

    [qword_1001297D8 setObject:&__kCFBooleanTrue forKey:@"NSPEventsKeyProactiveTokenFetchEnabled"];
    v7 = [NSNumber numberWithInt:30];
    if (v7)
    {
      [qword_1001297D8 setObject:v7 forKey:@"NSPEventsKeyStatsDuration"];
    }

    v8 = [NSNumber numberWithInt:40];
    if (v8)
    {
      [qword_1001297D8 setObject:v8 forKey:@"NSPEventsKeyLowerTokenCountThreshold"];
    }

    v9 = [NSNumber numberWithDouble:0.6];
    if (v9)
    {
      [qword_1001297D8 setObject:v9 forKey:@"NSPEventsKeyLowerTokenCountProbability"];
    }

    v10 = [NSNumber numberWithInt:3];
    if (v10)
    {
      [qword_1001297D8 setObject:v10 forKey:@"NSPEventsKeyUpperLWMCountThreshold"];
    }

    v11 = [NSNumber numberWithDouble:0.1];
    if (v11)
    {
      [qword_1001297D8 setObject:v11 forKey:@"NSPEventsKeyUpperLWMCountProbabilityOffset"];
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v15 = 136315138;
    v16 = "+[NSPCoreData getProactiveTokenFetchConfiguration]";
    _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "%s called with null config", &v15, 0xCu);
  }

  v13 = 0;
LABEL_19:

  return v13;
}

+ (id)updateProactiveTokenFetchConfiguration:(id)a3 statsDuration:(id)a4 lowerTokenCountThreshold:(id)a5 lowerTokenCountProbability:(id)a6 upperLWMCountThreshold:(id)a7 upperLWMCountProbabilityOffset:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = +[NSPCoreData getProactiveTokenFetchConfiguration];
  v20 = v19;
  if (v19)
  {
    if (v13)
    {
      [v19 setObject:v13 forKey:@"NSPEventsKeyProactiveTokenFetchEnabled"];
      v21 = nplog_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = [v13 BOOLValue];
        v23 = "NO";
        if (v22)
        {
          v23 = "YES";
        }

        v35 = 136315138;
        v36 = v23;
        v24 = "updated NSPEventsKeyProactiveTokenFetchEnabled %s";
        v25 = v21;
        v26 = 12;
        goto LABEL_9;
      }
    }

    else
    {
      v21 = nplog_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        LOWORD(v35) = 0;
        v24 = "NSPEventsKeyProactiveTokenFetchEnabled not found";
        v25 = v21;
        v26 = 2;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, v24, &v35, v26);
      }
    }

    if (v14)
    {
      [v20 setObject:v14 forKey:@"NSPEventsKeyStatsDuration"];
      v27 = nplog_obj();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v35 = 138412290;
        v36 = v14;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "updated NSPEventsKeyStatsDuration %@", &v35, 0xCu);
      }
    }

    if (v15)
    {
      [v20 setObject:v15 forKey:@"NSPEventsKeyLowerTokenCountThreshold"];
      v28 = nplog_obj();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v35 = 138412290;
        v36 = v15;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "updated NSPEventsKeyLowerTokenCountThreshold %@", &v35, 0xCu);
      }
    }

    if (v16)
    {
      [v20 setObject:v16 forKey:@"NSPEventsKeyLowerTokenCountProbability"];
      v29 = nplog_obj();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v35 = 138412290;
        v36 = v16;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "updated NSPEventsKeyLowerTokenCountProbability %@", &v35, 0xCu);
      }
    }

    if (v17)
    {
      [v20 setObject:v17 forKey:@"NSPEventsKeyUpperLWMCountThreshold"];
      v30 = nplog_obj();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v35 = 138412290;
        v36 = v17;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "updated NSPEventsKeyUpperLWMCountThreshold %@", &v35, 0xCu);
      }
    }

    if (v18)
    {
      [v20 setObject:v18 forKey:@"NSPEventsKeyUpperLWMCountProbabilityOffset"];
      v31 = nplog_obj();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v35 = 138412290;
        v36 = v18;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "updated NSPEventsKeyUpperLWMCountProbabilityOffset %@", &v35, 0xCu);
      }
    }

    v32 = v20;
    goto LABEL_31;
  }

  v34 = nplog_obj();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
  {
    v35 = 136315138;
    v36 = "+[NSPCoreData updateProactiveTokenFetchConfiguration:statsDuration:lowerTokenCountThreshold:lowerTokenCountProbability:upperLWMCountThreshold:upperLWMCountProbabilityOffset:]";
    _os_log_fault_impl(&_mh_execute_header, v34, OS_LOG_TYPE_FAULT, "%s called with null config", &v35, 0xCu);
  }

LABEL_31:

  return v20;
}

+ (BOOL)triggerProactiveTokenFetch:(id)a3 lowerTokenCountThreshold:(unint64_t)a4
{
  v5 = COERCE_DOUBLE(a3);
  v6 = +[NSPCoreData getProactiveTokenFetchConfiguration];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKey:@"NSPEventsKeyProactiveTokenFetchEnabled"];
    v9 = v8;
    if (v8)
    {
      if (([v8 BOOLValue]& 1) != 0)
      {
        if (qword_1001297E0 || (v10 = objc_alloc_init(NSMutableDictionary), v11 = qword_1001297E0, qword_1001297E0 = v10, v11, qword_1001297E0))
        {
          v12 = [v7 objectForKey:@"NSPEventsKeyStatsDuration"];
          if (!v12)
          {
            v13 = nplog_obj();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
            {
              *buf = 136315138;
              v99 = COERCE_DOUBLE("+[NSPCoreData triggerProactiveTokenFetch:lowerTokenCountThreshold:]");
              _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "%s called with null statsDuration", buf, 0xCu);
            }

            LOBYTE(v43) = 0;
            goto LABEL_68;
          }

          v13 = [qword_1001297E0 objectForKey:*&v5];
          if (v13)
          {
            v14 = +[NSDate now];
            [v14 timeIntervalSinceDate:v13];
            v16 = v15;

            if (v16 < (60 * [v12 integerValue]))
            {
              v17 = nplog_obj();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
              {
                *buf = 134218242;
                v99 = (60 * [v12 integerValue]) - v16;
                v100 = 2112;
                v101 = v5;
                _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%f seconds left before next trigger checkpoint for vendor %@", buf, 0x16u);
              }

              LOBYTE(v43) = 0;
              goto LABEL_67;
            }

            [qword_1001297E0 removeObjectForKey:*&v5];
          }

          v17 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
          if (!v17)
          {
            v71 = nplog_obj();
            if (os_log_type_enabled(v71, OS_LOG_TYPE_FAULT))
            {
              *buf = 136315138;
              v99 = COERCE_DOUBLE("+[NSPCoreData triggerProactiveTokenFetch:lowerTokenCountThreshold:]");
              _os_log_fault_impl(&_mh_execute_header, v71, OS_LOG_TYPE_FAULT, "%s called with null calendar", buf, 0xCu);
            }

            LOBYTE(v43) = 0;
            goto LABEL_66;
          }

          v82 = [NSTimeZone timeZoneWithAbbreviation:@"UTC"];
          [v17 setTimeZone:?];
          v18 = +[NSPCoreData getMinMaxDate];
          v81 = v18;
          if (!v18)
          {
            v20 = nplog_obj();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
            {
              *buf = 136315138;
              v99 = COERCE_DOUBLE("+[NSPCoreData triggerProactiveTokenFetch:lowerTokenCountThreshold:]");
              _os_log_fault_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "%s called with null dict", buf, 0xCu);
            }

            LOBYTE(v43) = 0;
            v71 = v82;
            goto LABEL_65;
          }

          v19 = v18;
          v20 = [v18 objectForKey:@"minDate"];
          v21 = [v19 objectForKey:@"maxDate"];
          v84 = v21;
          if (v20)
          {
            v22 = v21;
            if (v21)
            {
              v23 = +[NSDate now];
              [v17 components:736 fromDate:v23];
              v85 = v7;
              v24 = v9;
              v26 = v25 = v13;

              v80 = v17;
              v27 = [v17 dateFromComponents:v26];
              [v12 doubleValue];
              v90 = v27;
              v89 = [v27 dateByAddingTimeInterval:v28 * 60.0];
              log = v26;
              v29 = v26;
              v13 = v25;
              v9 = v24;
              v7 = v85;
              v30 = [NSPCoreData getNSPEventStatsForSingleWindow:*&v5 eventType:0 startDate:v20 endDate:v22 windowStartTime:v29 windowDuration:v12];
              v91 = v5;
              v83 = v20;
              if (v30)
              {
                v92 = [NSPCoreData getNSPEventsProbability:v30 count:0];
                if (v92)
                {
                  v31 = nplog_obj();
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
                  {
                    v32 = v30;
                    v33 = COERCE_DOUBLE([v12 integerValue]);
                    [v92 doubleValue];
                    *buf = 134218498;
                    v99 = v33;
                    v30 = v32;
                    v100 = 2112;
                    v101 = v5;
                    v102 = 2048;
                    v103 = v34;
                    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Probability of 0 LWM events in next %ld mins for vendor:%@ is %f", buf, 0x20u);
                  }

                  v35 = [v85 objectForKey:@"NSPEventsKeyUpperLWMCountThreshold"];
                  if (!v35)
                  {
                    v36 = nplog_obj();
                    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 136315138;
                      v99 = COERCE_DOUBLE("+[NSPCoreData triggerProactiveTokenFetch:lowerTokenCountThreshold:]");
                      _os_log_fault_impl(&_mh_execute_header, v36, OS_LOG_TYPE_FAULT, "%s called with null upperLWMCount", buf, 0xCu);
                    }

                    LOBYTE(v43) = 0;
                    goto LABEL_63;
                  }

                  v36 = v35;
                  v87 = [NSPCoreData getNSPEventsProbability:v30 count:[v35 integerValue]];
                  if (v87)
                  {
                    v78 = v30;
                    v37 = nplog_obj();
                    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
                    {
                      v38 = COERCE_DOUBLE([v36 integerValue]);
                      v39 = v13;
                      v40 = [v12 integerValue];
                      [v87 doubleValue];
                      *buf = 134218754;
                      v99 = v38;
                      v100 = 2048;
                      v101 = *&v40;
                      v13 = v39;
                      v102 = 2112;
                      v103 = v5;
                      v104 = 2048;
                      v105 = 1.0 - v41;
                      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "Probability of seeing atleast %ld LWM events in next %ld mins for vendor:%@ is %f", buf, 0x2Au);
                    }

                    v42 = [v85 objectForKey:@"NSPEventsKeyUpperLWMCountProbabilityOffset"];
                    LOBYTE(v43) = v42 != 0;
                    if (!v42)
                    {
                      v75 = nplog_obj();
                      if (os_log_type_enabled(v75, OS_LOG_TYPE_FAULT))
                      {
                        *buf = 136315138;
                        v99 = COERCE_DOUBLE("+[NSPCoreData triggerProactiveTokenFetch:lowerTokenCountThreshold:]");
                        _os_log_fault_impl(&_mh_execute_header, v75, OS_LOG_TYPE_FAULT, "%s called with null probabilityOffset", buf, 0xCu);
                      }

                      v30 = v78;
                      goto LABEL_30;
                    }

                    v44 = v42;
                    [v87 doubleValue];
                    v46 = 1.0 - v45;
                    [v92 doubleValue];
                    v48 = v47;
                    [v44 doubleValue];
                    v50 = v48 + v49;
                    if (v46 > v50)
                    {
                      v51 = nplog_obj();
                      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138412290;
                        v99 = v5;
                        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "Trigger Token fetch for vendor:%@", buf, 0xCu);
                      }

                      v52 = +[NSDate now];
                      [qword_1001297E0 setObject:v52 forKey:*&v5];
                    }

                    v53 = objc_alloc_init(NSPProactiveTokenFetchAnalytics);
                    v54 = v53;
                    if (v53)
                    {
                      [(NSPProactiveTokenFetchAnalytics *)v53 setStats:v78];
                      [(NSPProactiveTokenFetchAnalytics *)v54 setType:@"TokenEventLWM"];
                      [(NSPProactiveTokenFetchAnalytics *)v54 setFromDate:v90];
                      [(NSPProactiveTokenFetchAnalytics *)v54 setToDate:v89];
                      [(NSPProactiveTokenFetchAnalytics *)v54 setTokenFetchTriggered:v46 > v50];
                      [(NSPProactiveTokenFetchAnalytics *)v54 setVendor:*&v5];
                      [(NSPProxyAnalytics *)v54 sendAnalytics];
                    }

                    v30 = v78;
                    if (v46 > v50)
                    {
LABEL_30:

                      goto LABEL_63;
                    }
                  }

                  v20 = v83;
                  v22 = v84;
                }
              }

              v92 = [v85 objectForKey:@"NSPEventsKeyLowerTokenCountProbability"];
              if (v92)
              {
                v55 = [NSPCoreData getNSPTokenStatsForSingleWindow:*&v5 startDate:v20 endDate:v22 windowStartTime:log windowDuration:v12 statsCategory:9];
                if (v55)
                {
                  v95 = 0u;
                  v96 = 0u;
                  v93 = 0u;
                  v94 = 0u;
                  v36 = v55;
                  v43 = [v36 countByEnumeratingWithState:&v93 objects:v97 count:16];
                  if (v43)
                  {
                    v77 = v13;
                    v79 = v30;
                    v88 = v12;
                    v76 = v9;
                    v56 = *v94;
                    while (2)
                    {
                      for (i = 0; i != v43; i = i + 1)
                      {
                        if (*v94 != v56)
                        {
                          objc_enumerationMutation(v36);
                        }

                        v58 = *(*(&v93 + 1) + 8 * i);
                        if (v58)
                        {
                          v59 = [NSPCoreData getNSPEventsProbability:*(*(&v93 + 1) + 8 * i) count:a4];
                          if (v59)
                          {
                            v60 = nplog_obj();
                            if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
                            {
                              v61 = [v88 integerValue];
                              [v59 doubleValue];
                              *buf = 134218754;
                              v99 = *&a4;
                              v100 = 2048;
                              v101 = *&v61;
                              v5 = v91;
                              v102 = 2112;
                              v103 = v91;
                              v104 = 2048;
                              v105 = v62;
                              _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "Probability of reaching less than %ld tokens in next %ld mins for vendor:%@ is %f", buf, 0x2Au);
                            }

                            [v59 doubleValue];
                            v64 = v63;
                            [v92 doubleValue];
                            v66 = v65;
                            if (v64 > v65)
                            {
                              v67 = nplog_obj();
                              if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
                              {
                                *buf = 138412290;
                                v99 = v5;
                                _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, "Trigger Token fetch for vendor:%@", buf, 0xCu);
                              }

                              v68 = +[NSDate now];
                              [qword_1001297E0 setObject:v68 forKey:*&v5];
                            }

                            v69 = objc_alloc_init(NSPProactiveTokenFetchAnalytics);
                            v70 = v69;
                            if (v69)
                            {
                              [(NSPProactiveTokenFetchAnalytics *)v69 setStats:v58];
                              [(NSPProactiveTokenFetchAnalytics *)v70 setType:@"TokenCount"];
                              [(NSPProactiveTokenFetchAnalytics *)v70 setFromDate:v90];
                              [(NSPProactiveTokenFetchAnalytics *)v70 setToDate:v89];
                              v5 = v91;
                              [(NSPProactiveTokenFetchAnalytics *)v70 setTokenFetchTriggered:v64 > v66];
                              [(NSPProactiveTokenFetchAnalytics *)v70 setVendor:*&v91];
                              [(NSPProxyAnalytics *)v70 sendAnalytics];
                            }

                            if (v64 > v66)
                            {

                              LOBYTE(v43) = 1;
                              goto LABEL_61;
                            }
                          }
                        }
                      }

                      v43 = [v36 countByEnumeratingWithState:&v93 objects:v97 count:16];
                      if (v43)
                      {
                        continue;
                      }

                      break;
                    }

LABEL_61:
                    v7 = v85;
                    v9 = v76;
                    v13 = v77;
                    v12 = v88;
                    v30 = v79;
                  }

                  goto LABEL_63;
                }

                v74 = nplog_obj();
                if (os_log_type_enabled(v74, OS_LOG_TYPE_FAULT))
                {
                  *buf = 136315138;
                  v99 = COERCE_DOUBLE("+[NSPCoreData triggerProactiveTokenFetch:lowerTokenCountThreshold:]");
                  _os_log_fault_impl(&_mh_execute_header, v74, OS_LOG_TYPE_FAULT, "%s called with null tokenStatsArray", buf, 0xCu);
                }

                v36 = 0;
              }

              else
              {
                v36 = nplog_obj();
                if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
                {
                  *buf = 136315138;
                  v99 = COERCE_DOUBLE("+[NSPCoreData triggerProactiveTokenFetch:lowerTokenCountThreshold:]");
                  _os_log_fault_impl(&_mh_execute_header, v36, OS_LOG_TYPE_FAULT, "%s called with null lowTokenCountProbability", buf, 0xCu);
                }
              }

              LOBYTE(v43) = 0;
LABEL_63:
              v71 = v82;

              v20 = v83;
              v17 = v80;
LABEL_64:

LABEL_65:
LABEL_66:

LABEL_67:
LABEL_68:

LABEL_72:
              goto LABEL_73;
            }

            log = nplog_obj();
            if (!os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
            {
LABEL_91:
              LOBYTE(v43) = 0;
              v71 = v82;
              goto LABEL_64;
            }

            *buf = 136315138;
            v99 = COERCE_DOUBLE("+[NSPCoreData triggerProactiveTokenFetch:lowerTokenCountThreshold:]");
            v73 = "%s called with null maxDate";
          }

          else
          {
            log = nplog_obj();
            if (!os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_91;
            }

            *buf = 136315138;
            v99 = COERCE_DOUBLE("+[NSPCoreData triggerProactiveTokenFetch:lowerTokenCountThreshold:]");
            v73 = "%s called with null minDate";
          }

          _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, v73, buf, 0xCu);
          goto LABEL_91;
        }

        v12 = nplog_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to allocate dictionary for previous triggers", buf, 2u);
        }
      }

      else
      {
        v12 = nplog_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Proactive Token Fetch is disabled", buf, 2u);
        }
      }
    }

    else
    {
      v12 = nplog_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v99 = COERCE_DOUBLE("+[NSPCoreData triggerProactiveTokenFetch:lowerTokenCountThreshold:]");
        _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "%s called with null enabled", buf, 0xCu);
      }
    }

    LOBYTE(v43) = 0;
    goto LABEL_72;
  }

  v9 = nplog_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v99 = COERCE_DOUBLE("+[NSPCoreData triggerProactiveTokenFetch:lowerTokenCountThreshold:]");
    _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "%s called with null config", buf, 0xCu);
  }

  LOBYTE(v43) = 0;
LABEL_73:

  return v43;
}

+ (id)getNSPEventsProbability:(id)a3 count:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 objectForKey:@"mean"];
  if (!v6)
  {
    v8 = nplog_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v17 = 136315138;
      v18 = "+[NSPCoreData getNSPEventsProbability:count:]";
      _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "%s called with null mean", &v17, 0xCu);
    }

    goto LABEL_7;
  }

  v7 = [v5 objectForKey:@"stdDev"];
  if (!v7)
  {
    v16 = nplog_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      v17 = 136315138;
      v18 = "+[NSPCoreData getNSPEventsProbability:count:]";
      _os_log_fault_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "%s called with null stdDev", &v17, 0xCu);
    }

    v8 = 0;
    goto LABEL_7;
  }

  v8 = v7;
  [v7 doubleValue];
  if (v9 == 0.0)
  {
    v10 = nplog_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v17) = 0;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Standard Deviation is 0", &v17, 2u);
    }

LABEL_7:
    v11 = 0;
    goto LABEL_9;
  }

  [v6 doubleValue];
  v13 = a4 - v12;
  [v8 doubleValue];
  v11 = [NSNumber numberWithDouble:((erf(v13 / v14 / 1.41421356) + 1.0) * 0.5)];
LABEL_9:

  return v11;
}

+ (id)getMinMaxDate
{
  v2 = +[NSPCoreData sharedCoreDataContext];
  v3 = v2;
  if (v2)
  {
    *buf = 0;
    v11 = buf;
    v12 = 0x3032000000;
    v13 = sub_100001F64;
    v14 = sub_100076FB4;
    v15 = 0;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100076FBC;
    v7[3] = &unk_100109450;
    v8 = v2;
    v9 = buf;
    [v8 performBlockAndWait:v7];
    v4 = *(v11 + 5);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v5 = nplog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "NSP Core Data context not available", buf, 2u);
    }

    v4 = 0;
  }

  return v4;
}

+ (id)computeStats:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v6 = nplog_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v32 = "+[NSPCoreData computeStats:]";
      _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "%s called with null data", buf, 0xCu);
    }

    goto LABEL_5;
  }

  v5 = [v3 count];
  if (v5 <= 4)
  {
    v6 = nplog_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v32 = v5;
      v33 = 1024;
      v34 = 5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Insufficient number of data points to compute stats. (%lu vs %d)", buf, 0x12u);
    }

LABEL_5:
    v7 = 0;
    goto LABEL_18;
  }

  v6 = [v4 valueForKeyPath:@"@sum.self"];
  [v6 doubleValue];
  v8 = v5;
  v10 = [NSNumber numberWithDouble:v9 / v5];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v4;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    v15 = 0.0;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v24 + 1) + 8 * i) doubleValue];
        v18 = v17;
        [v10 doubleValue];
        v15 = v15 + (v18 - v19) * (v18 - v19);
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v13);
  }

  else
  {
    v15 = 0.0;
  }

  [v10 doubleValue];
  v20 = [NSNumber numberWithDouble:?];
  v21 = [NSNumber numberWithDouble:sqrt(v15 / v8)];
  v28[0] = @"mean";
  v28[1] = @"stdDev";
  v29[0] = v20;
  v29[1] = v21;
  v7 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
  v22 = nplog_obj();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v32 = v7;
    _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Data stats dict:%@", buf, 0xCu);
  }

LABEL_18:

  return v7;
}

+ (id)getNSPEventStatsForSingleWindow:(id)a3 eventType:(int64_t)a4 startDate:(id)a5 endDate:(id)a6 windowStartTime:(id)a7 windowDuration:(id)a8
{
  v27 = a3;
  v13 = a5;
  v14 = a6;
  v28 = a7;
  v15 = a8;
  v16 = +[NSPCoreData sharedCoreDataContext];
  if (!v16)
  {
    v17 = nplog_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "NSP Core Data context not available", buf, 2u);
    }

    goto LABEL_12;
  }

  if (!v13)
  {
    v17 = nplog_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "+[NSPCoreData getNSPEventStatsForSingleWindow:eventType:startDate:endDate:windowStartTime:windowDuration:]";
      v25 = "%s called with null startDate";
LABEL_29:
      _os_log_fault_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, v25, buf, 0xCu);
    }

LABEL_12:
    v22 = 0;
    goto LABEL_22;
  }

  if (!v14)
  {
    v17 = nplog_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "+[NSPCoreData getNSPEventStatsForSingleWindow:eventType:startDate:endDate:windowStartTime:windowDuration:]";
      v25 = "%s called with null endDate";
      goto LABEL_29;
    }

    goto LABEL_12;
  }

  v17 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  if (v17)
  {
    v18 = [NSTimeZone timeZoneWithAbbreviation:@"UTC"];
    [v17 setTimeZone:v18];
    v19 = [v17 components:16 fromDate:v13 toDate:v14 options:0];
    v20 = v19;
    if (v19)
    {
      v41 = 0;
      v42 = &v41;
      v43 = 0x2020000000;
      v44 = [v19 day];
      if (v42[3] < 0x1F)
      {
        [v20 setDay:1];
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v46 = sub_100001F64;
        v47 = sub_100076FB4;
        v48 = +[NSMutableArray array];
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_100077E18;
        v30[3] = &unk_10010A678;
        v31 = v13;
        v38 = &v41;
        v32 = v17;
        v33 = v20;
        v34 = v28;
        v35 = v15;
        v36 = v27;
        v40 = a4;
        v37 = v16;
        v39 = buf;
        [v37 performBlockAndWait:v30];
        if ([*(*&buf[8] + 40) count])
        {
          v22 = [NSPCoreData computeStats:*(*&buf[8] + 40)];
        }

        else
        {
          v23 = nplog_obj();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *v29 = 0;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "No records found", v29, 2u);
          }

          v22 = 0;
        }

        _Block_object_dispose(buf, 8);
      }

      else
      {
        v21 = nplog_obj();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *&buf[4] = v13;
          *&buf[12] = 2112;
          *&buf[14] = v14;
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Invalid dates. startDate:%@ endDate:%@", buf, 0x16u);
        }

        v22 = 0;
      }

      _Block_object_dispose(&v41, 8);
    }

    else
    {
      v26 = nplog_obj();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        *&buf[4] = "+[NSPCoreData getNSPEventStatsForSingleWindow:eventType:startDate:endDate:windowStartTime:windowDuration:]";
        _os_log_fault_impl(&_mh_execute_header, v26, OS_LOG_TYPE_FAULT, "%s called with null dayComponents", buf, 0xCu);
      }

      v22 = 0;
    }
  }

  else
  {
    v18 = nplog_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "+[NSPCoreData getNSPEventStatsForSingleWindow:eventType:startDate:endDate:windowStartTime:windowDuration:]";
      _os_log_fault_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "%s called with null calendar", buf, 0xCu);
    }

    v22 = 0;
  }

LABEL_22:

  return v22;
}

+ (id)getNSPTokenStatsForSingleWindow:(id)a3 startDate:(id)a4 endDate:(id)a5 windowStartTime:(id)a6 windowDuration:(id)a7 statsCategory:(int64_t)a8
{
  v8 = a8;
  v33 = a3;
  v13 = a4;
  v14 = a5;
  v35 = a6;
  v34 = a7;
  v15 = +[NSPCoreData sharedCoreDataContext];
  if (v15)
  {
    v16 = +[NSPTokenEvent fetchRequest];
    v17 = v16;
    if (v16)
    {
      if (v13)
      {
        if (v14)
        {
          [v16 setPropertiesToFetch:&off_100113CC0];
          [v17 setResultType:2];
          v18 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
          if (v18)
          {
            oslog = [NSTimeZone timeZoneWithAbbreviation:@"UTC"];
            [v18 setTimeZone:oslog];
            v19 = [v18 components:16 fromDate:v13 toDate:v14 options:0];
            v20 = v19;
            if (v19)
            {
              v62 = 0;
              v63 = &v62;
              v64 = 0x2020000000;
              v65 = [v19 day];
              if (v63[3] < 0x1F)
              {
                [v20 setDay:1];
                v23 = [v35 weekday];
                *buf = 0;
                *&buf[8] = buf;
                *&buf[16] = 0x3032000000;
                v67 = sub_100001F64;
                v68 = sub_100076FB4;
                v69 = +[NSMutableArray array];
                v56 = 0;
                v57 = &v56;
                v58 = 0x3032000000;
                v59 = sub_100001F64;
                v60 = sub_100076FB4;
                v61 = +[NSMutableArray array];
                v50 = 0;
                v51 = &v50;
                v52 = 0x3032000000;
                v53 = sub_100001F64;
                v54 = sub_100076FB4;
                v55 = +[NSMutableArray array];
                v36[0] = _NSConcreteStackBlock;
                v36[1] = 3221225472;
                v36[2] = sub_100078AA8;
                v36[3] = &unk_10010A6A0;
                v37 = v13;
                v45 = &v62;
                v38 = v18;
                v39 = v20;
                v40 = v35;
                v41 = v34;
                v42 = v33;
                v43 = v17;
                v44 = v15;
                v46 = &v56;
                v48 = &v50;
                v49 = v23;
                v47 = buf;
                [v44 performBlockAndWait:v36];
                v22 = +[NSMutableArray array];
                if (v8)
                {
                  v24 = +[NSMutableArray array];
                  [v24 addObjectsFromArray:*(*&buf[8] + 40)];
                  [v24 addObjectsFromArray:v57[5]];
                  v25 = [NSPCoreData computeStats:v24];
                  if (v25)
                  {
                    [v22 addObject:v25];
                  }
                }

                if ((v8 & 2) != 0)
                {
                  v26 = [NSPCoreData computeStats:*(*&buf[8] + 40)];
                  if (v26)
                  {
                    [v22 addObject:v26];
                  }
                }

                if ((v8 & 4) != 0)
                {
                  v27 = [NSPCoreData computeStats:v57[5]];
                  if (v27)
                  {
                    [v22 addObject:v27];
                  }
                }

                if ((v8 & 8) != 0)
                {
                  v28 = [NSPCoreData computeStats:v51[5]];
                  if (v28)
                  {
                    [v22 addObject:v28];
                  }
                }

                _Block_object_dispose(&v50, 8);
                _Block_object_dispose(&v56, 8);

                _Block_object_dispose(buf, 8);
              }

              else
              {
                v21 = nplog_obj();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  *&buf[4] = v13;
                  *&buf[12] = 2112;
                  *&buf[14] = v14;
                  _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Invalid dates. startDate: %@  endDate: %@", buf, 0x16u);
                }

                v22 = 0;
              }

              _Block_object_dispose(&v62, 8);
            }

            else
            {
              v31 = nplog_obj();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
              {
                *buf = 136315138;
                *&buf[4] = "+[NSPCoreData getNSPTokenStatsForSingleWindow:startDate:endDate:windowStartTime:windowDuration:statsCategory:]";
                _os_log_fault_impl(&_mh_execute_header, v31, OS_LOG_TYPE_FAULT, "%s called with null dayComponents", buf, 0xCu);
              }

              v22 = 0;
            }
          }

          else
          {
            oslog = nplog_obj();
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_FAULT))
            {
              *buf = 136315138;
              *&buf[4] = "+[NSPCoreData getNSPTokenStatsForSingleWindow:startDate:endDate:windowStartTime:windowDuration:statsCategory:]";
              _os_log_fault_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_FAULT, "%s called with null calendar", buf, 0xCu);
            }

            v22 = 0;
          }

          goto LABEL_34;
        }

        v18 = nplog_obj();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
LABEL_43:
          v22 = 0;
LABEL_34:

          goto LABEL_35;
        }

        *buf = 136315138;
        *&buf[4] = "+[NSPCoreData getNSPTokenStatsForSingleWindow:startDate:endDate:windowStartTime:windowDuration:statsCategory:]";
        v30 = "%s called with null endDate";
      }

      else
      {
        v18 = nplog_obj();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_43;
        }

        *buf = 136315138;
        *&buf[4] = "+[NSPCoreData getNSPTokenStatsForSingleWindow:startDate:endDate:windowStartTime:windowDuration:statsCategory:]";
        v30 = "%s called with null startDate";
      }
    }

    else
    {
      v18 = nplog_obj();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_43;
      }

      *buf = 136315138;
      *&buf[4] = "+[NSPCoreData getNSPTokenStatsForSingleWindow:startDate:endDate:windowStartTime:windowDuration:statsCategory:]";
      v30 = "%s called with null fetchRequest";
    }

    _os_log_fault_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, v30, buf, 0xCu);
    goto LABEL_43;
  }

  v17 = nplog_obj();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "NSP Core Data context not available", buf, 2u);
  }

  v22 = 0;
LABEL_35:

  return v22;
}

+ (id)getTokenCountStatsForMultipleWindows:(id)a3 minDate:(id)a4 maxDate:(id)a5 windowDuration:(id)a6
{
  v34 = a3;
  v33 = a4;
  v32 = a5;
  v9 = a6;
  v10 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  if (v10)
  {
    v11 = [NSTimeZone timeZoneWithAbbreviation:@"UTC"];
    if (v11)
    {
      v31 = v11;
      [v10 setTimeZone:v11];
      v12 = +[NSDate date];
      v13 = [v10 components:28 fromDate:v12];
      [v13 setHour:0];
      [v13 setMinute:0];
      [v13 setSecond:0];
      v30 = v13;
      v14 = [v10 dateFromComponents:v13];

      v15 = [v14 dateByAddingTimeInterval:86400.0];
      [v9 doubleValue];
      v17 = v16;
      v18 = +[NSMutableArray array];
      v19 = nplog_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v38 = v14;
        v39 = 2112;
        v40 = v15;
        _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "currentDate: %@  endDate: %@", buf, 0x16u);
      }

      v35[0] = @"mean";
      v20 = [NSNumber numberWithDouble:0.0];
      v35[1] = @"stdDev";
      v36[0] = v20;
      v21 = [NSNumber numberWithDouble:-1.0];
      v36[1] = v21;
      v22 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];

      if ([v10 compareDate:v14 toDate:v15 toUnitGranularity:16] == -1)
      {
        v24 = v17 * 60.0;
        do
        {
          v25 = [v10 components:96 fromDate:v14];
          v26 = [NSPCoreData getNSPTokenStatsForSingleWindow:v34 startDate:v33 endDate:v32 windowStartTime:v25 windowDuration:v9 statsCategory:1];
          v27 = v26;
          if (v26 && [v26 count])
          {
            v28 = [v27 objectAtIndexedSubscript:0];
            [v18 addObject:v28];
          }

          else
          {
            [v18 addObject:v22];
          }

          v23 = [v14 dateByAddingTimeInterval:v24];

          v14 = v23;
        }

        while ([v10 compareDate:v23 toDate:v15 toUnitGranularity:16] == -1);
      }

      else
      {
        v23 = v14;
      }

      v11 = v31;
    }

    else
    {
      v23 = nplog_obj();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v38 = "+[NSPCoreData getTokenCountStatsForMultipleWindows:minDate:maxDate:windowDuration:]";
        _os_log_fault_impl(&_mh_execute_header, v23, OS_LOG_TYPE_FAULT, "%s called with null timeZone", buf, 0xCu);
      }

      v18 = 0;
    }
  }

  else
  {
    v11 = nplog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v38 = "+[NSPCoreData getTokenCountStatsForMultipleWindows:minDate:maxDate:windowDuration:]";
      _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "%s called with null calendar", buf, 0xCu);
    }

    v18 = 0;
  }

  return v18;
}

+ (void)saveTokenEvent:(id)a3 eventType:(int)a4 vendor:(id)a5 tokenCount:(unint64_t)a6
{
  v9 = a3;
  v10 = a5;
  v11 = +[NSPCoreData sharedCoreDataContext];
  v12 = v11;
  if (v11)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10007955C;
    v14[3] = &unk_10010A6C8;
    v15 = v11;
    v16 = v9;
    v19 = a4;
    v17 = v10;
    v18 = a6;
    [v15 performBlockAndWait:v14];

    v13 = v15;
  }

  else
  {
    v13 = nplog_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "NSP Core Data context not available", buf, 2u);
    }
  }
}

+ (void)purgeEventsOlderThanDate:(id)a3
{
  v3 = a3;
  v4 = +[NSPCoreData sharedCoreDataContext];
  if (v4)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000798F0;
    v6[3] = &unk_1001098C0;
    v7 = v3;
    v8 = v4;
    [v8 performBlockAndWait:v6];

    v5 = v7;
  }

  else
  {
    v5 = nplog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "NSP Core Data context not available", buf, 2u);
    }
  }
}

+ (void)purgeEventsOlderThanDays:(int64_t)a3
{
  v4 = +[NSCalendar currentCalendar];
  v5 = +[NSDate date];
  v6 = [v4 dateByAddingUnit:16 value:-a3 toDate:v5 options:0];

  [NSPCoreData purgeEventsOlderThanDate:v6];
}

+ (id)fetchEvents
{
  v2 = +[NSPCoreData sharedCoreDataContext];
  v3 = v2;
  if (v2)
  {
    *buf = 0;
    v11 = buf;
    v12 = 0x3032000000;
    v13 = sub_100001F64;
    v14 = sub_100076FB4;
    v15 = 0;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100079E58;
    v7[3] = &unk_10010A6F0;
    v9 = buf;
    v8 = v2;
    [v8 performBlockAndWait:v7];
    v4 = *(v11 + 5);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v5 = nplog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "NSP Core Data context not available", buf, 2u);
    }

    v4 = 0;
  }

  return v4;
}

+ (id)NSPEventsCacheGet
{
  v2 = qword_1001297E8;
  if (!qword_1001297E8)
  {
    v3 = objc_alloc_init(NSMutableArray);
    v4 = qword_1001297E8;
    qword_1001297E8 = v3;

    v2 = qword_1001297E8;
  }

  return v2;
}

+ (id)NSPEventsCacheUpdate:(id)a3
{
  v3 = a3;
  v4 = +[NSPCoreData NSPEventsCacheGet];
  if (v4)
  {
    v5 = [v3 vendor];
    v6 = [NSPCoreData getVendorIdFromDictionary:v5];

    if (v6)
    {
      if ([v4 count] >= 6)
      {
        [v4 removeObjectAtIndex:0];
      }

      [v4 addObject:v3];
      v6 = v4;
    }
  }

  else
  {
    v8 = nplog_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315138;
      v10 = "+[NSPCoreData NSPEventsCacheUpdate:]";
      _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "%s called with null cache", &v9, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

+ (id)fetchLatestEvents:(unint64_t)a3 vendors:(id)a4
{
  v5 = a4;
  v6 = +[NSPCoreData sharedCoreDataContext];
  if (v6)
  {
    v7 = +[NSPCoreData NSPEventsCacheGet];
    if ([v7 count]>= a3)
    {
      v9 = nplog_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Using NSP events from the cache", buf, 2u);
      }

      v7 = v7;
      v8 = v7;
    }

    else
    {
      *buf = 0;
      v17 = buf;
      v18 = 0x3032000000;
      v19 = sub_100001F64;
      v20 = sub_100076FB4;
      v21 = 0;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10007A4CC;
      v11[3] = &unk_10010A718;
      v15 = a3;
      v12 = v5;
      v14 = buf;
      v13 = v6;
      [v13 performBlockAndWait:v11];
      v8 = *(v17 + 5);

      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    v7 = nplog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "NSP Core Data context not available", buf, 2u);
    }

    v8 = 0;
  }

  return v8;
}

+ (id)fetchEvents:(id)a3 mostRecent:(BOOL)a4 limit:(unint64_t)a5
{
  v7 = a3;
  v8 = +[NSPCoreData sharedCoreDataContext];
  if (v8)
  {
    *buf = 0;
    v19 = buf;
    v20 = 0x3032000000;
    v21 = sub_100001F64;
    v22 = sub_100076FB4;
    v23 = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10007AD24;
    v12[3] = &unk_10010A740;
    v17 = a4;
    v15 = buf;
    v16 = a5;
    v13 = v7;
    v14 = v8;
    [v14 performBlockAndWait:v12];
    v9 = *(v19 + 5);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = nplog_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "NSP Core Data context not available", buf, 2u);
    }

    v9 = 0;
  }

  return v9;
}

+ (id)prepareInputForTraining
{
  v2 = +[NSPCoreData getNSPEventsNormalizer];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 model];
    v5 = [v4 modelDescription];
    v6 = [v5 inputDescriptionsByName];
    v7 = [v6 objectForKeyedSubscript:@"normalizer_input"];

    v8 = nplog_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v24 = [v7 multiArrayConstraint];
      v25 = [v24 shape];
      v29 = 138412290;
      v30 = v25;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "input shape %@", &v29, 0xCu);
    }

    v9 = [v7 multiArrayConstraint];
    v10 = [v9 shape];

    if (!v10)
    {
      v12 = nplog_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v29 = 136315138;
        v30 = "+[NSPCoreData prepareInputForTraining]";
        _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "%s called with null inputShape", &v29, 0xCu);
      }

      v22 = 0;
      goto LABEL_13;
    }

    v11 = +[NSPCoreData getNSPEventsDenormalizer];
    v12 = v11;
    if (!v11)
    {
      v16 = nplog_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        v29 = 136315138;
        v30 = "+[NSPCoreData prepareInputForTraining]";
        _os_log_fault_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "%s called with null denormalizer", &v29, 0xCu);
      }

      v22 = 0;
      goto LABEL_12;
    }

    v13 = [v11 model];
    v14 = [v13 modelDescription];
    v15 = [v14 inputDescriptionsByName];
    v16 = [v15 objectForKeyedSubscript:@"denormalizer_input"];

    v17 = nplog_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v26 = [v16 multiArrayConstraint];
      v27 = [v26 shape];
      v29 = 138412290;
      v30 = v27;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "target shape %@", &v29, 0xCu);
    }

    v18 = [v16 multiArrayConstraint];
    v19 = [v18 shape];

    if (v19)
    {
      v20 = +[NSPCoreData fetchEvents];
      if (v20)
      {
        v21 = v20;
        v22 = [[NSPEventsPredictorTrainingBatchProvider alloc] init:v20 inputShape:v10 targetShape:v19];
LABEL_11:

LABEL_12:
LABEL_13:

        goto LABEL_14;
      }

      v28 = nplog_obj();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        v29 = 136315138;
        v30 = "+[NSPCoreData prepareInputForTraining]";
        _os_log_fault_impl(&_mh_execute_header, v28, OS_LOG_TYPE_FAULT, "%s called with null events", &v29, 0xCu);
      }

      v21 = 0;
    }

    else
    {
      v21 = nplog_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        v29 = 136315138;
        v30 = "+[NSPCoreData prepareInputForTraining]";
        _os_log_fault_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "%s called with null targetShape", &v29, 0xCu);
      }
    }

    v22 = 0;
    goto LABEL_11;
  }

  v7 = nplog_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    v29 = 136315138;
    v30 = "+[NSPCoreData prepareInputForTraining]";
    _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "%s called with null normalizer", &v29, 0xCu);
  }

  v22 = 0;
LABEL_14:

  return v22;
}

+ (id)getModelVersion:(id)a3
{
  if (a3)
  {
    v3 = [a3 modelDescription];
    v4 = [v3 metadata];
    v5 = [v4 objectForKeyedSubscript:MLModelCreatorDefinedKey];

    if (!v5)
    {
      v7 = nplog_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v15 = 136315138;
        v16 = "+[NSPCoreData getModelVersion:]";
        _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "%s called with null metadata", &v15, 0xCu);
      }

      v13 = 0;
      goto LABEL_9;
    }

    v6 = [v5 objectForKeyedSubscript:@"version"];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 componentsSeparatedByString:@"."];
      v9 = [v8 valueForKey:@"intValue"];

      v10 = nplog_obj();
      v11 = v10;
      if (v9)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v15 = 138412290;
          v16 = v9;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "model version %@", &v15, 0xCu);
        }

        v12 = v9;
        v13 = v12;
        goto LABEL_8;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        v15 = 136315138;
        v16 = "+[NSPCoreData getModelVersion:]";
        _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "%s called with null versionComponents", &v15, 0xCu);
      }

      v12 = 0;
    }

    else
    {
      v12 = nplog_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v15 = 136315138;
        v16 = "+[NSPCoreData getModelVersion:]";
        _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "%s called with null versionStr", &v15, 0xCu);
      }
    }

    v13 = 0;
LABEL_8:

LABEL_9:
    goto LABEL_10;
  }

  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v15 = 136315138;
    v16 = "+[NSPCoreData getModelVersion:]";
    _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "%s called with null model", &v15, 0xCu);
  }

  v13 = 0;
LABEL_10:

  return v13;
}

+ (id)compareModelVersion:(id)a3 model2:(id)a4
{
  v5 = a4;
  v6 = [NSPCoreData getModelVersion:a3];
  v7 = [NSPCoreData getModelVersion:v5];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = nplog_obj();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      if (v11)
      {
        LOWORD(v27) = 0;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "model2 version not found", &v27, 2u);
      }

      v12 = [NSNumber alloc];
      v13 = 1;
      goto LABEL_22;
    }

    if (v8)
    {
      if (v11)
      {
        LOWORD(v27) = 0;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "model1 version not found", &v27, 2u);
      }

      v12 = [NSNumber alloc];
      v13 = 0xFFFFFFFFLL;
      goto LABEL_22;
    }

    if (v11)
    {
      LOWORD(v27) = 0;
      v18 = "model1 and model2 version not found";
      v19 = v10;
      v20 = 2;
      goto LABEL_26;
    }

LABEL_27:

    v21 = 0;
    goto LABEL_28;
  }

  v14 = [v6 count];
  if (v14 != [v8 count])
  {
    v10 = nplog_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v27 = 138412546;
      v28 = v6;
      v29 = 2112;
      v30 = v8;
      v18 = "Incompatible version strings (%@ vs %@)";
      v19 = v10;
      v20 = 22;
LABEL_26:
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, v18, &v27, v20);
      goto LABEL_27;
    }

    goto LABEL_27;
  }

  if (![v6 count])
  {
LABEL_15:
    v12 = [NSNumber alloc];
    v13 = 0;
LABEL_22:
    v21 = [v12 initWithInt:v13];
    goto LABEL_28;
  }

  v15 = 0;
  while (1)
  {
    v16 = [v6 objectAtIndex:v15];
    v17 = [v8 objectAtIndex:v15];

    if (v16 != v17)
    {
      break;
    }

    if (++v15 >= [v6 count])
    {
      goto LABEL_15;
    }
  }

  v22 = [NSNumber alloc];
  v23 = [v6 objectAtIndex:v15];
  v24 = [v23 intValue];
  v25 = [v8 objectAtIndex:v15];
  v21 = [v22 initWithInt:{v24 - objc_msgSend(v25, "intValue")}];

LABEL_28:

  return v21;
}

+ (id)getVendorDictionary
{
  v2 = qword_1001297F0;
  if (!qword_1001297F0)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    v4 = qword_1001297F0;
    qword_1001297F0 = v3;

    v2 = qword_1001297F0;
  }

  return v2;
}

+ (id)updateVendorDictionaryFromModel:(id)a3
{
  v3 = [a3 modelDescription];
  v4 = [v3 metadata];
  v5 = [v4 objectForKeyedSubscript:MLModelCreatorDefinedKey];

  if (!v5)
  {
    v8 = nplog_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v28 = "+[NSPCoreData updateVendorDictionaryFromModel:]";
      _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "%s called with null metadata", buf, 0xCu);
    }

    v9 = 0;
    goto LABEL_13;
  }

  v6 = [v5 objectForKeyedSubscript:@"vendors"];

  if (v6)
  {
    v7 = [v5 objectForKeyedSubscript:@"vendors"];
    v8 = [v7 componentsSeparatedByString:@":"];

    v9 = +[NSPCoreData getVendorDictionary];
    if (v9)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v21 = v8;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v23;
        v14 = 1;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v23 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v16 = *(*(&v22 + 1) + 8 * i);
            v17 = [NSNumber numberWithInt:v14];
            [v9 setValue:v17 forKey:v16];

            v14 = (v14 + 1);
          }

          v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v12);
      }

      v18 = v9;
      v8 = v21;
    }

    else
    {
      v20 = nplog_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v28 = "+[NSPCoreData updateVendorDictionaryFromModel:]";
        _os_log_fault_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "%s called with null dictionary", buf, 0xCu);
      }
    }

LABEL_13:
    goto LABEL_15;
  }

  v9 = 0;
LABEL_15:

  return v9;
}

+ (id)getVendorIdFromDictionary:(id)a3
{
  v3 = a3;
  v4 = +[NSPCoreData getVendorDictionary];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:v3];
  }

  else
  {
    v8 = nplog_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315138;
      v10 = "+[NSPCoreData getVendorIdFromDictionary:]";
      _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "%s called with null dictionary", &v9, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

+ (id)getVendorNameById:(int64_t)a3
{
  v4 = +[NSPCoreData getVendorDictionary];
  v5 = v4;
  if (v4)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [v6 objectForKey:v11, v16];
          v13 = [v12 longValue];

          if (v13 == a3)
          {
            v14 = v11;
            goto LABEL_14;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v6 = nplog_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v22 = a3;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Vendor id %lu not found", buf, 0xCu);
    }
  }

  else
  {
    v6 = nplog_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v22 = "+[NSPCoreData getVendorNameById:]";
      _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "%s called with null dictionary", buf, 0xCu);
    }
  }

  v14 = 0;
LABEL_14:

  return v14;
}

+ (id)initNSPEventsModelPredictor
{
  v2 = objc_alloc_init(MLModelConfiguration);
  v3 = v2;
  if (v2)
  {
    [v2 setComputeUnits:0];
    v4 = [NSString stringWithFormat:@"%@/%@", @"/usr/libexec/", @"NSPEventsPredictor.mlmodelc"];
    if (!v4)
    {
      v19 = nplog_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v53 = "+[NSPCoreData initNSPEventsModelPredictor]";
        _os_log_fault_impl(&_mh_execute_header, v19, OS_LOG_TYPE_FAULT, "%s called with null srcStr", buf, 0xCu);
      }

      v36 = 0;
      goto LABEL_52;
    }

    v5 = [NSURL fileURLWithPath:v4 isDirectory:1];
    v46 = v5;
    if (!v5)
    {
      v8 = nplog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v53 = "+[NSPCoreData initNSPEventsModelPredictor]";
        _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "%s called with null srcURL", buf, 0xCu);
      }

      v19 = 0;
      v36 = 0;
      goto LABEL_51;
    }

    v6 = v5;
    v7 = NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, 1uLL, 1);
    v8 = v7;
    if (!v7)
    {
      v40 = nplog_obj();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v53 = "+[NSPCoreData initNSPEventsModelPredictor]";
        _os_log_fault_impl(&_mh_execute_header, v40, OS_LOG_TYPE_FAULT, "%s called with null paths", buf, 0xCu);
      }

      v19 = 0;
      v36 = 0;
      goto LABEL_50;
    }

    v9 = [v7 firstObject];
    v45 = v9;
    if (!v9)
    {
      v10 = nplog_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v53 = "+[NSPCoreData initNSPEventsModelPredictor]";
        _os_log_fault_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "%s called with null applicationSupportDirectory", buf, 0xCu);
      }

      v19 = 0;
      v36 = 0;
      goto LABEL_49;
    }

    v44 = v8;
    v10 = [NSString stringWithFormat:@"%@/networkserviceproxy/%@", v9, @"NSPEventsPredictor.mlmodelc"];
    if (!v10)
    {
      v12 = nplog_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v53 = "+[NSPCoreData initNSPEventsModelPredictor]";
        _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "%s called with null dstStr", buf, 0xCu);
      }

      v19 = 0;
      v36 = 0;
      goto LABEL_48;
    }

    v11 = [NSURL fileURLWithPath:v10 isDirectory:1];
    v12 = v11;
    if (!v11)
    {
      v13 = nplog_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v53 = "+[NSPCoreData initNSPEventsModelPredictor]";
        _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "%s called with null dstURL", buf, 0xCu);
      }

      v19 = 0;
      v36 = 0;
      goto LABEL_47;
    }

    v43 = v4;
    v13 = [v11 path];
    v14 = +[NSFileManager defaultManager];
    v15 = v14;
    if (v14)
    {
      if (![v14 fileExistsAtPath:v13])
      {
        v42 = v13;
        v25 = 0;
        goto LABEL_16;
      }

      v51 = 0;
      v16 = [[NSPEventsPredictor alloc] initWithContentsOfURL:v6 configuration:v3 error:&v51];
      v17 = v51;
      if (!v16)
      {
        v16 = nplog_obj();
        if (os_log_type_enabled(&v16->super, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v53 = v6;
          v54 = 2112;
          v55 = v17;
          _os_log_error_impl(&_mh_execute_header, &v16->super, OS_LOG_TYPE_ERROR, "Failed to initialize base model at %@ error with %@", buf, 0x16u);
        }

        v36 = 0;
        v19 = v17;
        goto LABEL_46;
      }

      v50 = v17;
      v18 = [[NSPEventsPredictor alloc] initWithContentsOfURL:v12 configuration:v3 error:&v50];
      v19 = v50;

      if (v18)
      {
        v42 = v13;
        v20 = [(NSPEventsPredictor *)v16 model];
        v21 = [(NSPEventsPredictor *)v18 model];
        v22 = [NSPCoreData compareModelVersion:v20 model2:v21];

        if (v22)
        {
          v23 = v22;
          v49 = v19;
          v24 = [v15 removeItemAtURL:v12 error:&v49];
          v25 = v49;

          if (v24)
          {

            v6 = v46;
LABEL_16:
            v26 = nplog_obj();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v53 = v6;
              v54 = 2112;
              v55 = v12;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "copy base model from %@ to %@", buf, 0x16u);
            }

            v48 = v25;
            v27 = [v15 copyItemAtURL:v6 toURL:v12 error:&v48];
            v28 = v48;

            if (v27)
            {
              v47 = v28;
              v16 = [[NSPEventsPredictor alloc] initWithContentsOfURL:v12 configuration:v3 error:&v47];
              v19 = v47;

              if (v16)
              {
                v29 = [(NSPEventsPredictor *)v16 model];
                v30 = [NSPCoreData updateVendorDictionaryFromModel:v29];

                if (!v30)
                {
                  v31 = nplog_obj();
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Failed to update vendor dictionary from model", buf, 2u);
                  }
                }

                v32 = nplog_obj();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
                {
                  v33 = [(NSPEventsPredictor *)v16 model];
                  v34 = [NSPCoreData getModelVersion:v33];
                  *buf = 138412546;
                  v53 = v12;
                  v54 = 2112;
                  v55 = v34;
                  _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Initialized NSPEventsPredictor at URL:%@ version:%@", buf, 0x16u);
                }

                v35 = v16;
              }

              else
              {
                v38 = nplog_obj();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v53 = v12;
                  v54 = 2112;
                  v55 = v19;
                  _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Failed to initialize model at %@ error with %@", buf, 0x16u);
                }
              }

              v36 = v16;
            }

            else
            {
              v16 = nplog_obj();
              if (os_log_type_enabled(&v16->super, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                v53 = v6;
                v54 = 2112;
                v55 = v12;
                v56 = 2112;
                v57 = v28;
                _os_log_error_impl(&_mh_execute_header, &v16->super, OS_LOG_TYPE_ERROR, "Failed to copy model from %@ to %@ error: %@", buf, 0x20u);
              }

              v36 = 0;
              v19 = v28;
            }

            goto LABEL_45;
          }

          v39 = nplog_obj();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v53 = v25;
            _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Failed to remove old personalized model %@", buf, 0xCu);
          }

          v19 = v25;
          v22 = v23;
        }

        else
        {
          v39 = nplog_obj();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
          {
            *buf = 136315138;
            v53 = "+[NSPCoreData initNSPEventsModelPredictor]";
            _os_log_fault_impl(&_mh_execute_header, v39, OS_LOG_TYPE_FAULT, "%s called with null result", buf, 0xCu);
          }
        }

        v36 = 0;
LABEL_45:
        v13 = v42;
        goto LABEL_46;
      }

      v37 = nplog_obj();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v53 = v12;
        v54 = 2112;
        v55 = v19;
        _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Failed to initialize personalized model at %@ error with %@", buf, 0x16u);
      }
    }

    else
    {
      v16 = nplog_obj();
      if (os_log_type_enabled(&v16->super, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v53 = "+[NSPCoreData initNSPEventsModelPredictor]";
        _os_log_fault_impl(&_mh_execute_header, &v16->super, OS_LOG_TYPE_FAULT, "%s called with null manager", buf, 0xCu);
      }

      v19 = 0;
    }

    v36 = 0;
LABEL_46:

    v4 = v43;
LABEL_47:

LABEL_48:
    v8 = v44;
LABEL_49:

    v40 = v45;
LABEL_50:

LABEL_51:
LABEL_52:

    goto LABEL_53;
  }

  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v53 = "+[NSPCoreData initNSPEventsModelPredictor]";
    _os_log_fault_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "%s called with null config", buf, 0xCu);
  }

  v36 = 0;
LABEL_53:

  return v36;
}

+ (id)getNSPEventsNormalizer
{
  v2 = qword_1001297F8;
  if (qword_1001297F8)
  {
    goto LABEL_9;
  }

  v3 = nplog_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Initializing NSPEventsNormalizer", buf, 2u);
  }

  v4 = [NSURL fileURLWithPath:@"/usr/libexec/NSPEventsNormalizer.mlmodelc" isDirectory:1];
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "mlmodel URL %@", buf, 0xCu);
  }

  v6 = objc_alloc_init(MLModelConfiguration);
  if (v6)
  {
    v7 = v6;
    [v6 setComputeUnits:0];
    v14 = 0;
    v8 = [[NSPEventsNormalizer alloc] initWithContentsOfURL:v4 configuration:v7 error:&v14];
    v9 = v14;
    v10 = qword_1001297F8;
    qword_1001297F8 = v8;

    if (qword_1001297F8)
    {

      v2 = qword_1001297F8;
LABEL_9:
      v11 = v2;
      goto LABEL_10;
    }

    v13 = nplog_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v16 = v4;
      v17 = 2112;
      v18 = v9;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to initialize normalizer model %@ error: %@", buf, 0x16u);
    }
  }

  else
  {
    v7 = nplog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v16 = "+[NSPCoreData getNSPEventsNormalizer]";
      _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "%s called with null config", buf, 0xCu);
    }
  }

  v11 = 0;
LABEL_10:

  return v11;
}

+ (id)getNSPEventsDenormalizer
{
  v2 = qword_100129800;
  if (qword_100129800)
  {
    goto LABEL_9;
  }

  v3 = nplog_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Initializing NSPEventsDenormalizer", buf, 2u);
  }

  v4 = [NSURL fileURLWithPath:@"/usr/libexec/NSPEventsDenormalizer.mlmodelc" isDirectory:1];
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "mlmodel URL %@", buf, 0xCu);
  }

  v6 = objc_alloc_init(MLModelConfiguration);
  if (v6)
  {
    v7 = v6;
    [v6 setComputeUnits:0];
    v14 = 0;
    v8 = [[NSPEventsDenormalizer alloc] initWithContentsOfURL:v4 configuration:v7 error:&v14];
    v9 = v14;
    v10 = qword_100129800;
    qword_100129800 = v8;

    if (qword_100129800)
    {

      v2 = qword_100129800;
LABEL_9:
      v11 = v2;
      goto LABEL_10;
    }

    v13 = nplog_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v16 = v4;
      v17 = 2112;
      v18 = v9;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to initialize denormalizer model %@ error:%@", buf, 0x16u);
    }
  }

  else
  {
    v7 = nplog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v16 = "+[NSPCoreData getNSPEventsDenormalizer]";
      _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "%s called with null config", buf, 0xCu);
    }
  }

  v11 = 0;
LABEL_10:

  return v11;
}

+ (id)getNSPEventsPredictor
{
  v2 = qword_100129808;
  if (!qword_100129808)
  {
    v3 = +[NSPCoreData initNSPEventsModelPredictor];
    v4 = qword_100129808;
    qword_100129808 = v3;

    v2 = qword_100129808;
  }

  return v2;
}

+ (void)printMLMultiArray:(id)a3
{
  v3 = a3;
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v37 = [v3 shape];
    *buf = 138412546;
    *v43 = v3;
    *&v43[8] = 2112;
    v44 = v37;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "mlmultiarray shape %@ %@", buf, 0x16u);
  }

  v5 = [v3 shape];
  v6 = [v5 count];

  if (v6 >= 3)
  {
    v7 = [v3 shape];
    v8 = [v7 objectAtIndexedSubscript:0];
    v9 = [v8 intValue];

    if (v9 >= 1)
    {
      v39 = 0;
      *&v10 = 67109890;
      v38 = v10;
      do
      {
        v11 = [v3 shape];
        v12 = [v11 objectAtIndexedSubscript:1];
        v13 = [v12 intValue];

        if (v13 >= 1)
        {
          for (i = 0; i < v33; ++i)
          {
            v14 = [v3 shape];
            v15 = [v14 objectAtIndexedSubscript:2];
            v16 = [v15 intValue];

            if (v16 >= 1)
            {
              v17 = 0;
              do
              {
                v18 = [v3 strides];
                v19 = [v18 objectAtIndexedSubscript:0];
                v41 = [v19 intValue];
                v20 = [v3 strides];
                v21 = [v20 objectAtIndexedSubscript:1];
                v22 = [v21 intValue];
                v23 = [v3 strides];
                v24 = [v23 objectAtIndexedSubscript:2];
                v25 = [v24 intValue];

                v26 = nplog_obj();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
                {
                  v30 = [v3 objectAtIndexedSubscript:(v41 * v39 + v22 * i + v25 * v17)];
                  *buf = v38;
                  *v43 = v39;
                  *&v43[4] = 1024;
                  *&v43[6] = i;
                  LOWORD(v44) = 1024;
                  *(&v44 + 2) = v17;
                  HIWORD(v44) = 2112;
                  v45 = v30;
                  _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "mlmodel data (%d %d %d: %@", buf, 0x1Eu);
                }

                ++v17;
                v27 = [v3 shape];
                v28 = [v27 objectAtIndexedSubscript:2];
                v29 = [v28 intValue];
              }

              while (v17 < v29);
            }

            v31 = [v3 shape];
            v32 = [v31 objectAtIndexedSubscript:1];
            v33 = [v32 intValue];
          }
        }

        v34 = [v3 shape];
        v35 = [v34 objectAtIndexedSubscript:0];
        v36 = [v35 intValue];

        ++v39;
      }

      while (v39 < v36);
    }
  }
}

+ (id)normalizeData:(id)a3
{
  v3 = a3;
  v4 = +[NSPCoreData getNSPEventsNormalizer];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 model];
    v7 = [v6 modelDescription];
    v8 = [v7 inputDescriptionsByName];
    v9 = [v8 objectForKeyedSubscript:@"normalizer_input"];

    v10 = nplog_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v85 = [v9 multiArrayConstraint];
      v86 = [v85 shape];
      *buf = 138412290;
      v98 = v86;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "normalizer model shape %@", buf, 0xCu);
    }

    v11 = [v9 multiArrayConstraint];
    v12 = [v11 shape];

    if (!v12)
    {
      v27 = nplog_obj();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v98 = "+[NSPCoreData normalizeData:]";
        _os_log_fault_impl(&_mh_execute_header, v27, OS_LOG_TYPE_FAULT, "%s called with null normalizerShape", buf, 0xCu);
      }

      goto LABEL_39;
    }

    v13 = [v3 shape];

    if (v12 == v13)
    {
      v94 = 0;
      v81 = [v5 predictionFromNormalizer_input:v3 error:&v94];
      v27 = v94;
      if (v81)
      {
        v80 = [v81 Identity];
      }

      else
      {
        v82 = nplog_obj();
        if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v98 = v27;
          _os_log_error_impl(&_mh_execute_header, v82, OS_LOG_TYPE_ERROR, "Failed to normalize the input. error:%@", buf, 0xCu);
        }

        v80 = 0;
      }

      goto LABEL_40;
    }

    v14 = [v3 shape];
    v15 = [v14 count];
    v16 = [v12 count];

    if (v15 == v16)
    {
      v17 = [v3 shape];
      v18 = [v17 count];

      if (v18)
      {
        v19 = 0;
        v20 = 1;
        while (1)
        {
          v21 = [v3 shape];
          v22 = [v21 objectAtIndexedSubscript:v19];
          v23 = [v12 objectAtIndexedSubscript:v19];

          if (v22 > v23)
          {
            break;
          }

          v19 = v20;
          v24 = [v3 shape];
          v25 = [v24 count];

          if (v25 <= v20++)
          {
            goto LABEL_11;
          }
        }

        v27 = nplog_obj();
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }

LABEL_11:
      v27 = [[MLMultiArray alloc] initWithShape:v12 dataType:65568 error:0];
      if (!v27)
      {
        v53 = nplog_obj();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          v98 = "+[NSPCoreData normalizeData:]";
          _os_log_fault_impl(&_mh_execute_header, v53, OS_LOG_TYPE_FAULT, "%s called with null reshapedInput", buf, 0xCu);
        }

        v80 = 0;
        goto LABEL_48;
      }

      v28 = [v3 shape];
      v29 = [v28 count];

      if (v29 >= 3)
      {
        v91 = v5;
        v92 = v27;
        v90 = v9;
        v30 = [v3 shape];
        v31 = [v30 objectAtIndexedSubscript:1];
        v32 = [v31 unsignedIntValue];

        if (v32)
        {
          v33 = 0;
          do
          {
            v34 = [NSNumber numberWithUnsignedInt:0];
            v96[0] = v34;
            v35 = [NSNumber numberWithUnsignedInt:v33];
            v96[1] = v35;
            v36 = [NSNumber numberWithUnsignedInt:0];
            v96[2] = v36;
            v37 = [NSArray arrayWithObjects:v96 count:3];
            v38 = [NSMutableArray arrayWithArray:v37];

            v39 = [v3 shape];
            v40 = [v39 objectAtIndexedSubscript:2];
            LODWORD(v35) = [v40 unsignedIntValue];

            if (v35)
            {
              v41 = 0;
              do
              {
                v42 = [v38 count] - 1;
                v43 = [NSNumber numberWithUnsignedInt:v41];
                [v38 replaceObjectAtIndex:v42 withObject:v43];

                v44 = [v3 objectForKeyedSubscript:v38];
                [v92 setObject:v44 forKeyedSubscript:v38];

                v41 = (v41 + 1);
                v45 = [v3 shape];
                v46 = [v45 objectAtIndexedSubscript:2];
                v47 = [v46 unsignedIntValue];
              }

              while (v41 < v47);
            }

            v33 = (v33 + 1);
            v48 = [v3 shape];
            v49 = [v48 objectAtIndexedSubscript:1];
            v50 = [v49 unsignedIntValue];
          }

          while (v33 < v50);
        }

        v93 = 0;
        v5 = v91;
        v27 = v92;
        v51 = [v91 predictionFromNormalizer_input:v92 error:&v93];
        v52 = v93;
        v53 = v52;
        if (v51)
        {
          v88 = v52;
          v89 = v12;
          v54 = [MLMultiArray alloc];
          v55 = [v3 shape];
          v56 = [v54 initWithShape:v55 dataType:65568 error:0];

          if (v56)
          {
            v57 = [v3 shape];
            v58 = [v57 objectAtIndexedSubscript:1];
            v59 = [v58 unsignedIntValue];

            if (v59)
            {
              v60 = 0;
              do
              {
                v61 = [NSNumber numberWithUnsignedInt:0];
                v95[0] = v61;
                v62 = [NSNumber numberWithUnsignedInt:v60];
                v95[1] = v62;
                v63 = [NSNumber numberWithUnsignedInt:0];
                v95[2] = v63;
                v64 = [NSArray arrayWithObjects:v95 count:3];
                v65 = [NSMutableArray arrayWithArray:v64];

                v66 = [v3 shape];
                v67 = [v66 objectAtIndexedSubscript:2];
                LODWORD(v63) = [v67 unsignedIntValue];

                if (v63)
                {
                  v68 = 0;
                  do
                  {
                    v69 = [v65 count] - 1;
                    v70 = [NSNumber numberWithUnsignedInt:v68];
                    [v65 replaceObjectAtIndex:v69 withObject:v70];

                    v71 = [v51 Identity];
                    v72 = [v71 objectForKeyedSubscript:v65];
                    [v56 setObject:v72 forKeyedSubscript:v65];

                    v68 = (v68 + 1);
                    v73 = [v3 shape];
                    v74 = [v73 objectAtIndexedSubscript:2];
                    v75 = [v74 unsignedIntValue];
                  }

                  while (v68 < v75);
                }

                v60 = (v60 + 1);
                v76 = [v3 shape];
                v77 = [v76 objectAtIndexedSubscript:1];
                v78 = [v77 unsignedIntValue];
              }

              while (v60 < v78);
            }

            v79 = v56;
            v80 = v79;
          }

          else
          {
            v87 = nplog_obj();
            if (os_log_type_enabled(v87, OS_LOG_TYPE_FAULT))
            {
              *buf = 136315138;
              v98 = "+[NSPCoreData normalizeData:]";
              _os_log_fault_impl(&_mh_execute_header, v87, OS_LOG_TYPE_FAULT, "%s called with null reshapedOutput", buf, 0xCu);
            }

            v79 = 0;
            v80 = 0;
          }

          v9 = v90;
          v5 = v91;
          v53 = v88;
          v12 = v89;
          v27 = v92;
        }

        else
        {
          v79 = nplog_obj();
          if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v98 = v53;
            _os_log_error_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "Failed to normalize the input. error:%@", buf, 0xCu);
          }

          v80 = 0;
          v9 = v90;
        }

LABEL_48:
        goto LABEL_40;
      }
    }

    else
    {
      v27 = nplog_obj();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
LABEL_38:
        v83 = [v3 shape];
        *buf = 138412546;
        v98 = v83;
        v99 = 2112;
        v100 = v12;
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Incompatiable shape (%@ vs %@)", buf, 0x16u);
      }
    }

LABEL_39:
    v80 = 0;
LABEL_40:

    goto LABEL_41;
  }

  v9 = nplog_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v98 = "+[NSPCoreData normalizeData:]";
    _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "%s called with null normalizer", buf, 0xCu);
  }

  v80 = 0;
LABEL_41:

  return v80;
}

+ (id)prepareMLData:(id)a3 startAt:(unsigned int)a4 dataShape:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [[MLMultiArray alloc] initWithShape:v8 dataType:65568 error:0];
  if (!v9)
  {
    v51 = nplog_obj();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v68 = "+[NSPCoreData prepareMLData:startAt:dataShape:]";
      _os_log_fault_impl(&_mh_execute_header, v51, OS_LOG_TYPE_FAULT, "%s called with null sample", buf, 0xCu);
    }

    goto LABEL_17;
  }

  v10 = [v8 objectAtIndexedSubscript:1];
  v11 = [v10 unsignedIntValue];

  if ([v7 count] <= v11)
  {
LABEL_17:
    v50 = 0;
    goto LABEL_18;
  }

  v54 = v8;
  v13 = a4 + 1;
  v56 = v9;
  v57 = v11 + v13;
  if (v13 < v57)
  {
    v14 = 0;
    *&v12 = 138412290;
    v53 = v12;
    v15 = NEPolicySession_ptr;
    v55 = v7;
    do
    {
      v64 = v14;
      v16 = [v7 objectAtIndexedSubscript:{v13 - 1, v53}];
      v63 = v13;
      v17 = [v7 objectAtIndexedSubscript:v13];
      v18 = nplog_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = v53;
        v68 = v17;
        _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Preparing input from NSPEvent :%@", buf, 0xCu);
      }

      v19 = [v17 date];
      v20 = [v15[71] currentCalendar];
      v61 = [v20 component:32 fromDate:v19];

      v21 = [v15[71] currentCalendar];
      v60 = [v21 component:64 fromDate:v19];

      v22 = [v15[71] currentCalendar];
      v23 = [v22 component:128 fromDate:v19];

      v24 = [v17 date];
      [v24 timeIntervalSinceReferenceDate];
      v26 = v25;
      v27 = [v16 date];
      [v27 timeIntervalSinceReferenceDate];
      v29 = v28;

      v30 = [v17 vendor];
      v31 = [NSPCoreData getVendorIdFromDictionary:v30];
      if (v31)
      {
        *&v32 = ([v17 eventType] + 1);
        v58 = [NSNumber numberWithFloat:v32];
        v59 = v30;
        v66[0] = v58;
        *&v33 = [v17 tokenCount];
        v34 = [NSNumber numberWithFloat:v33];
        v66[1] = v34;
        v35 = [v15[71] currentCalendar];
        *&v36 = [v35 component:512 fromDate:v19];
        v37 = [NSNumber numberWithFloat:v36];
        v66[2] = v37;
        *&v38 = (v23 + 3600 * v61 + 60 * v60);
        v39 = [NSNumber numberWithFloat:v38];
        v66[3] = v39;
        *&v40 = v26 - v29;
        v41 = [NSNumber numberWithFloat:v40];
        v66[4] = v41;
        *&v42 = [v31 unsignedIntValue];
        [NSNumber numberWithFloat:v42];
        v43 = v62 = v17;
        v66[5] = v43;
        v44 = [NSArray arrayWithObjects:v66 count:6];

        v15 = NEPolicySession_ptr;
        v45 = [NSNumber numberWithInt:0];
        v65[0] = v45;
        v46 = v64;
        v47 = [NSNumber numberWithUnsignedLong:v64];
        v65[1] = v47;
        v48 = [NSArray arrayWithObjects:v65 count:2];

        v30 = v59;
        v49 = v62;
        [NSPCoreData prepareModelInputWithFeatures:v56 keyedSubscripts:v48 features:v44];

        v7 = v55;
      }

      else
      {
        v49 = v17;
        v44 = nplog_obj();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          *buf = v53;
          v68 = v30;
          _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Invalid vendor id for vendor %@", buf, 0xCu);
        }

        v46 = v64;
      }

      v13 = v63 + 1;
      v14 = v46 + 1;
    }

    while (v57 != v63 + 1);
  }

  v9 = v56;
  v50 = v56;
  v8 = v54;
LABEL_18:

  return v50;
}

+ (id)prepareTokenEventsFromPrediction:(id)a3
{
  v3 = a3;
  v60 = +[NSPCoreData childCoreDataContext];
  if (!v60)
  {
    v5 = nplog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v64 = "+[NSPCoreData prepareTokenEventsFromPrediction:]";
      _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "%s called with null context", buf, 0xCu);
    }

    goto LABEL_4;
  }

  v4 = objc_alloc_init(NSMutableArray);
  if (!v4)
  {
    v57 = nplog_obj();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v64 = "+[NSPCoreData prepareTokenEventsFromPrediction:]";
      _os_log_fault_impl(&_mh_execute_header, v57, OS_LOG_TYPE_FAULT, "%s called with null array", buf, 0xCu);
    }

    v5 = 0;
    goto LABEL_4;
  }

  v5 = v4;
  v6 = [v3 shape];
  v7 = [v6 count];

  if (v7 < 3)
  {
LABEL_4:
    v8 = 0;
    goto LABEL_18;
  }

  v59 = v5;
  v9 = [v3 shape];
  v10 = [v9 objectAtIndexedSubscript:0];
  v11 = [v10 intValue];

  if (v11 < 1)
  {
LABEL_17:
    v5 = v59;
    v8 = v5;
  }

  else
  {
    v61 = 0;
    *&v12 = 134218242;
    v58 = v12;
    v62 = v3;
    while (1)
    {
      v13 = [v3 shape];
      v14 = [v13 objectAtIndexedSubscript:1];
      v15 = [v14 intValue];

      if (v15 >= 1)
      {
        break;
      }

LABEL_16:
      v52 = [v3 shape];
      v53 = [v52 objectAtIndexedSubscript:0];
      v54 = [v53 intValue];

      if (++v61 >= v54)
      {
        goto LABEL_17;
      }
    }

    v16 = 0;
    while (1)
    {
      v17 = [[NSPTokenEvent alloc] initWithContext:v60];
      if (!v17)
      {
        break;
      }

      v18 = v17;
      v19 = [NSNumber numberWithInt:v61];
      v70[0] = v19;
      v20 = [NSNumber numberWithInt:v16];
      v70[1] = v20;
      v21 = [NSNumber numberWithInt:0];
      v70[2] = v21;
      v22 = [NSArray arrayWithObjects:v70 count:3];
      v23 = [v62 objectForKeyedSubscript:v22];
      [v23 floatValue];
      [(NSPTokenEvent *)v18 setEventType:llroundf(v24) - 1];

      v25 = [NSNumber numberWithInt:v61];
      v69[0] = v25;
      v26 = [NSNumber numberWithInt:v16];
      v69[1] = v26;
      v27 = [NSNumber numberWithInt:1];
      v69[2] = v27;
      v28 = [NSArray arrayWithObjects:v69 count:3];
      v29 = [v62 objectForKeyedSubscript:v28];
      [v29 floatValue];
      [(NSPTokenEvent *)v18 setTokenCount:llroundf(v30)];

      v31 = [NSNumber numberWithInt:v61];
      v68[0] = v31;
      v32 = [NSNumber numberWithInt:v16];
      v68[1] = v32;
      v33 = [NSNumber numberWithInt:4];
      v68[2] = v33;
      v34 = [NSArray arrayWithObjects:v68 count:3];
      v35 = [v62 objectForKeyedSubscript:v34];
      [v35 floatValue];
      v37 = v36;

      v38 = +[NSDate date];
      v39 = [v38 dateByAddingTimeInterval:v37];
      [(NSPTokenEvent *)v18 setDate:v39];

      v40 = [NSNumber numberWithInt:v61];
      v67[0] = v40;
      v41 = [NSNumber numberWithInt:v16];
      v67[1] = v41;
      v42 = [NSNumber numberWithInt:5];
      v67[2] = v42;
      v43 = [NSArray arrayWithObjects:v67 count:3];
      v44 = [v62 objectForKeyedSubscript:v43];
      [v44 floatValue];
      v46 = llroundf(v45);

      v47 = [NSPCoreData getVendorNameById:v46];
      if (v47)
      {
        [(NSPTokenEvent *)v18 setVendor:v47];
        [v59 addObject:v18];
        v48 = nplog_obj();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v64 = v18;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "NSP event from prediction: %@", buf, 0xCu);
        }
      }

      else
      {
        [(NSPTokenEvent *)v18 setVendor:@"Unknown"];
        v48 = nplog_obj();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          *buf = v58;
          v64 = v46;
          v65 = 2112;
          v66 = v18;
          _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Incorrect prediction for Vendor %lu, event:%@", buf, 0x16u);
        }
      }

      v16 = (v16 + 1);
      v3 = v62;
      v49 = [v62 shape];
      v50 = [v49 objectAtIndexedSubscript:1];
      v51 = [v50 intValue];

      if (v16 >= v51)
      {
        goto LABEL_16;
      }
    }

    v56 = nplog_obj();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v64 = "+[NSPCoreData prepareTokenEventsFromPrediction:]";
      _os_log_fault_impl(&_mh_execute_header, v56, OS_LOG_TYPE_FAULT, "%s called with null event", buf, 0xCu);
    }

    v8 = 0;
    v3 = v62;
    v5 = v59;
  }

LABEL_18:

  return v8;
}

+ (void)prepareModelInputWithFeatures:(id)a3 keyedSubscripts:(id)a4 features:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [NSMutableArray arrayWithArray:a4];
  v10 = [NSNumber numberWithInt:0];
  [v9 addObject:v10];

  v11 = [v7 shape];
  v12 = [v11 count];
  v13 = [v9 count];

  if (v12 == v13)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = v8;
    v14 = v8;
    v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = *v24;
      do
      {
        v19 = 0;
        do
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v23 + 1) + 8 * v19);
          v21 = [NSNumber numberWithInt:v17];
          [v9 replaceObjectAtIndex:objc_msgSend(v9 withObject:{"count") - 1, v21}];
          [v7 setObject:v20 forKeyedSubscript:v9];
          v17 = (v17 + 1);

          v19 = v19 + 1;
        }

        while (v16 != v19);
        v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v16);
    }

    v8 = v22;
  }
}

+ (id)prepareInputForPrediction:(id)a3 vendor:(id)a4
{
  v4 = a3;
  v5 = [v4 objectAtIndexedSubscript:1];
  v6 = +[NSPCoreData getVendorDictionary];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 allKeys];
    v9 = +[NSPCoreData fetchLatestEvents:vendors:](NSPCoreData, "fetchLatestEvents:vendors:", [v5 unsignedLongValue] + 1, v8);
    v10 = v9;
    if (v9)
    {
      v11 = [v9 count];
      if (v11 < [v5 unsignedIntValue] + 1)
      {
        v12 = 0;
LABEL_8:

        goto LABEL_9;
      }

      v13 = [[MLMultiArray alloc] initWithShape:v4 dataType:65568 error:0];
      if (v13)
      {
        v14 = v13;
        v15 = [NSPCoreData prepareMLData:v10 startAt:0 dataShape:v4];

        v12 = [NSPCoreData normalizeData:v15];
LABEL_7:

        goto LABEL_8;
      }

      v15 = nplog_obj();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
LABEL_18:
        v12 = 0;
        goto LABEL_7;
      }

      v18 = 136315138;
      v19 = "+[NSPCoreData prepareInputForPrediction:vendor:]";
      v17 = "%s called with null modelInput";
    }

    else
    {
      v15 = nplog_obj();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_18;
      }

      v18 = 136315138;
      v19 = "+[NSPCoreData prepareInputForPrediction:vendor:]";
      v17 = "%s called with null events";
    }

    _os_log_fault_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, v17, &v18, 0xCu);
    goto LABEL_18;
  }

  v8 = nplog_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    v18 = 136315138;
    v19 = "+[NSPCoreData prepareInputForPrediction:vendor:]";
    _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "%s called with null dictionary", &v18, 0xCu);
  }

  v12 = 0;
LABEL_9:

  return v12;
}

+ (void)handleNSPEventsPredictions:(id)a3
{
  v3 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = nplog_obj();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v15 = v8;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Prediction of NSP event: %@", buf, 0xCu);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v5);
  }
}

+ (void)predictNSPEvent:(id)a3
{
  v3 = a3;
  v4 = +[NSPCoreData getNSPEventsPredictor];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 model];
    v7 = [v6 modelDescription];
    v8 = [v7 inputDescriptionsByName];
    v9 = [v8 objectForKeyedSubscript:@"lstm_input"];

    v10 = nplog_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v25 = [v9 multiArrayConstraint];
      v26 = [v25 shape];
      *buf = 138412290;
      v34 = v26;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "model shape %@", buf, 0xCu);
    }

    v11 = [v9 multiArrayConstraint];
    v12 = [v11 shape];

    if (!v12)
    {
      v13 = nplog_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v34 = "+[NSPCoreData predictNSPEvent:]";
        _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "%s called with null shape", buf, 0xCu);
      }

      goto LABEL_20;
    }

    v13 = [NSPCoreData prepareInputForPrediction:v12 vendor:v3];
    if (!v13)
    {
      v15 = nplog_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v34 = "+[NSPCoreData predictNSPEvent:]";
        _os_log_fault_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "%s called with null modelInput", buf, 0xCu);
      }

      goto LABEL_19;
    }

    [NSPCoreData printMLMultiArray:v13];
    v32 = 0;
    v14 = [v5 predictionFromLstm_input:v13 error:&v32];
    v15 = v32;
    if (!v14)
    {
      v17 = nplog_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v34 = v15;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to predict next NSP event %@", buf, 0xCu);
      }

      goto LABEL_18;
    }

    v16 = [v14 Identity];
    [NSPCoreData printMLMultiArray:v16];

    v17 = +[NSPCoreData getNSPEventsDenormalizer];
    v30 = v12;
    if (!v17)
    {
      v20 = nplog_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v34 = "+[NSPCoreData predictNSPEvent:]";
        _os_log_fault_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "%s called with null denormalizer", buf, 0xCu);
      }

      v21 = v15;
      goto LABEL_17;
    }

    v29 = v5;
    v18 = v9;
    v19 = [v14 Identity];
    v31 = v15;
    v20 = [v17 predictionFromDenormalizer_input:v19 error:&v31];
    v21 = v31;

    if (v20)
    {
      v28 = v3;
      v22 = [v20 Identity];
      [NSPCoreData printMLMultiArray:v22];

      v23 = [v20 Identity];
      v24 = [NSPCoreData prepareTokenEventsFromPrediction:v23];

      if (!v24)
      {
        v27 = nplog_obj();
        v9 = v18;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          v34 = "+[NSPCoreData predictNSPEvent:]";
          _os_log_fault_impl(&_mh_execute_header, v27, OS_LOG_TYPE_FAULT, "%s called with null predictedEvents", buf, 0xCu);
        }

        v24 = 0;
        v3 = v28;
        goto LABEL_16;
      }

      [NSPCoreData handleNSPEventsPredictions:v24];
      v3 = v28;
    }

    else
    {
      v24 = nplog_obj();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v34 = v21;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to denormalize the data %@", buf, 0xCu);
      }
    }

    v9 = v18;
LABEL_16:
    v5 = v29;

LABEL_17:
    v15 = v21;
    v12 = v30;
LABEL_18:

LABEL_19:
LABEL_20:

    goto LABEL_21;
  }

  v9 = nplog_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v34 = "+[NSPCoreData predictNSPEvent:]";
    _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "%s called with null mlmodel", buf, 0xCu);
  }

LABEL_21:
}

+ (id)tokenTypeEnumToString:(int)a3
{
  if (a3 > 5)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_10010A760 + a3);
  }
}

@end