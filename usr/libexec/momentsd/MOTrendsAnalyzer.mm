@interface MOTrendsAnalyzer
- (MOTrendsAnalyzer)init;
- (MOTrendsAnalyzer)initWithHealthKitManager:(id)manager;
- (double)timeOfDay:(id)day;
- (id)buildAnalyticsPlans;
- (id)eventWithOptions:(id)options originalTrendsData:(id)data;
- (id)indexDate:(id)date aggregationDuration:(unint64_t)duration referenceDate:(id)referenceDate;
- (id)lookupTrendsDataWithOptions:(id)options events:(id)events;
- (id)prepareData:(id)data aggregationDuration:(unint64_t)duration aggregationMethod:(unint64_t)method valueFunction:(id)function;
- (int64_t)trendsfromAnalyticsResult:(unint64_t)result;
- (void)analyzeEvents:(id)events analyticsPlans:(id)plans handler:(id)handler;
- (void)analyzeEvents:(id)events options:(id)options resultHandler:(id)handler;
- (void)sendMetricsForTrendsEvents:(id)events;
- (void)setCommonFields:(id)fields;
- (void)setDecimatedValue:(id)value forKey:(id)key dictionary:(id)dictionary;
- (void)setValue:(id)value forKey:(id)key dictionary:(id)dictionary;
- (void)setValue:(id)value forKey:(id)key dictionary:(id)dictionary bins:(id)bins;
- (void)updateTrendsData:(id)data lastEventDate:(id)date lastEventInterval:(double)interval;
- (void)updateTrendsData:(id)data model:(id)model;
- (void)updateTrendsData:(id)data prevTrendsData:(id)trendsData;
- (void)updateTrendsData:(id)data result:(unint64_t)result;
@end

@implementation MOTrendsAnalyzer

- (MOTrendsAnalyzer)init
{
  if (self)
  {
    healthKitManager = self->_healthKitManager;
    self->_healthKitManager = 0;
  }

  return self;
}

- (MOTrendsAnalyzer)initWithHealthKitManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = MOTrendsAnalyzer;
  v6 = [(MOTrendsAnalyzer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthKitManager, manager);
  }

  return v7;
}

- (id)indexDate:(id)date aggregationDuration:(unint64_t)duration referenceDate:(id)referenceDate
{
  dateCopy = date;
  referenceDateCopy = referenceDate;
  switch(duration)
  {
    case 2uLL:
      v11 = +[NSCalendar currentCalendar];
      v12 = [v11 components:512 fromDate:dateCopy];
      v13 = [v11 components:512 fromDate:referenceDateCopy];
      v14 = objc_alloc_init(NSDateComponents);
      [v14 setDay:{objc_msgSend(v13, "weekday") - objc_msgSend(v12, "weekday")}];
      v15 = [v11 dateByAddingComponents:v14 toDate:dateCopy options:0];
      v16 = [v11 components:28 fromDate:v15];
      v10 = [v11 dateFromComponents:v16];

      break;
    case 1uLL:
      v9 = [dateCopy startOfDayWithBoundaryOfADay:10800.0];
      goto LABEL_6;
    case 0uLL:
      v9 = dateCopy;
LABEL_6:
      v10 = v9;
      break;
    default:
      v10 = 0;
      break;
  }

  return v10;
}

- (id)prepareData:(id)data aggregationDuration:(unint64_t)duration aggregationMethod:(unint64_t)method valueFunction:(id)function
{
  dataCopy = data;
  functionCopy = function;
  v38 = +[NSDate date];
  v10 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = dataCopy;
  v11 = [obj countByEnumeratingWithState:&v39 objects:v53 count:16];
  if (v11)
  {
    v13 = v11;
    v35 = *v40;
    *&v12 = 138412546;
    v31 = v12;
    methodCopy = method;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v40 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v39 + 1) + 8 * i);
        startDate = [v15 startDate];
        v17 = [(MOTrendsAnalyzer *)self indexDate:startDate aggregationDuration:duration referenceDate:v38];

        v18 = [v10 objectForKey:v17];
        if (!v18)
        {
          v18 = objc_opt_new();
          startDate2 = [v15 startDate];
          [v18 setDate:startDate2];
        }

        v20 = _mo_log_facility_get_os_log(&MOLogFacilityTrends);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v26 = NSStringFromSelector(a2);
          startDate3 = [v15 startDate];
          *buf = 138413314;
          v44 = v26;
          v45 = 2112;
          v46 = *&startDate3;
          v47 = 2112;
          v48 = v17;
          v49 = 2112;
          v50 = v15;
          v51 = 2112;
          v52 = v18;
          _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%@ event.startDate, %@, index, %@, event, %@, data, %@", buf, 0x34u);

          method = methodCopy;
        }

        v21 = functionCopy[2](functionCopy, v15);
        if (fabs(v21) < 1.79769313e308)
        {
          switch(method)
          {
            case 2uLL:
              goto LABEL_19;
            case 1uLL:
              [v18 value];
              v25 = v21 + v24 * [v18 count];
              v21 = v25 / ([v18 count] + 1);
LABEL_19:
              [v18 setValue:v21];
              break;
            case 0uLL:
              [v18 value];
              v21 = v21 + v22;
              goto LABEL_19;
          }

          [v18 setCount:{objc_msgSend(v18, "count") + 1}];
          [v10 setObject:v18 forKey:v17];
          goto LABEL_21;
        }

        v23 = _mo_log_facility_get_os_log(&MOLogFacilityTrends);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v28 = NSStringFromSelector(a2);
          *buf = v31;
          v44 = v28;
          v45 = 2048;
          v46 = v21;
          _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "%@ Invalid ranged value, %f", buf, 0x16u);

          method = methodCopy;
        }

LABEL_21:
      }

      v13 = [obj countByEnumeratingWithState:&v39 objects:v53 count:16];
    }

    while (v13);
  }

  allValues = [v10 allValues];

  return allValues;
}

- (void)analyzeEvents:(id)events options:(id)options resultHandler:(id)handler
{
  eventsCopy = events;
  optionsCopy = options;
  handlerCopy = handler;
  if ([eventsCopy count])
  {
    v11 = +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"provider == %lu AND category == %lu", 5, [optionsCopy category]);
    v12 = [eventsCopy filteredArrayUsingPredicate:v11];
    v13 = [(MOTrendsAnalyzer *)self lookupTrendsDataWithOptions:optionsCopy events:v12];
    selfCopy = self;
    v14 = [(MOTrendsAnalyzer *)self eventWithOptions:optionsCopy originalTrendsData:v13];
    v15 = _mo_log_facility_get_os_log(&MOLogFacilityTrends);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v88 = NSStringFromSelector(a2);
      [optionsCopy keyword];
      v115 = v12;
      v89 = v14;
      v91 = v90 = v13;
      *buf = 138413570;
      v134 = v88;
      v135 = 2112;
      v136 = v91;
      v137 = 2112;
      v138 = optionsCopy;
      v139 = 2048;
      v140 = [v115 count];
      v141 = 2112;
      v142 = *&v90;
      v143 = 2112;
      v144 = v89;
      _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%@ keyword, %@, options, %@, data, trends array, %lu, original trends, %@, new trends, %@", buf, 0x3Eu);

      v13 = v90;
      v14 = v89;
      v12 = v115;
    }

    if ([optionsCopy category])
    {
      +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"provider != %lu AND category == %lu", 5, [optionsCopy category]);
    }

    else
    {
      [NSPredicate predicateWithFormat:@"provider != %lu", 5, v104];
    }
    v17 = ;
    v16 = [eventsCopy filteredArrayUsingPredicate:v17];

    if ([v16 count])
    {
      lastObject = [v16 lastObject];
      startDate = [lastObject startDate];

      v116 = startDate;
      if ([v16 count] < 2)
      {
        v23 = 1.79769313e308;
      }

      else
      {
        v20 = [v16 objectAtIndex:{objc_msgSend(v16, "count") - 2}];
        startDate2 = [v20 startDate];
        [v116 timeIntervalSinceDate:startDate2];
        v23 = v22;

        startDate = v116;
      }

      v117 = v16;
      v109 = v13;
      v110 = v11;
      v114 = v12;
      v111 = handlerCopy;
      trends = [v14 trends];
      [(MOTrendsAnalyzer *)selfCopy updateTrendsData:trends lastEventDate:startDate lastEventInterval:v23];

      v26 = _mo_log_facility_get_os_log(&MOLogFacilityTrends);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v96 = NSStringFromSelector(a2);
        keyword = [optionsCopy keyword];
        *buf = 138413314;
        v134 = v96;
        v135 = 2112;
        v136 = keyword;
        v137 = 2112;
        v138 = v14;
        v139 = 2112;
        v140 = v116;
        v141 = 2048;
        v142 = v23;
        _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "%@ keyword, %@, trendsData, %@, update last event date and interval, last event date, %@, last event interval, %f", buf, 0x34u);
      }

      v113 = v14;

      trainDateInterval = [optionsCopy trainDateInterval];
      startDate3 = [trainDateInterval startDate];
      trainDateInterval2 = [optionsCopy trainDateInterval];
      [trainDateInterval2 endDate];
      v30 = v119 = optionsCopy;
      trainDateInterval3 = [v119 trainDateInterval];
      startDate4 = [trainDateInterval3 startDate];
      trainDateInterval4 = [v119 trainDateInterval];
      endDate = [trainDateInterval4 endDate];
      v35 = [NSPredicate predicateWithFormat:@"(startDate >= %@ AND startDate <= %@)", startDate3, v30, startDate4, endDate];

      v108 = v35;
      v36 = [v117 filteredArrayUsingPredicate:v35];
      aggregationDuration = [v119 aggregationDuration];
      aggregationMethod = [v119 aggregationMethod];
      valueFunction = [v119 valueFunction];
      v112 = v36;
      v40 = [(MOTrendsAnalyzer *)selfCopy prepareData:v36 aggregationDuration:aggregationDuration aggregationMethod:aggregationMethod valueFunction:valueFunction];

      testDateInterval = [v119 testDateInterval];
      startDate5 = [testDateInterval startDate];
      testDateInterval2 = [v119 testDateInterval];
      endDate2 = [testDateInterval2 endDate];
      testDateInterval3 = [v119 testDateInterval];
      startDate6 = [testDateInterval3 startDate];
      testDateInterval4 = [v119 testDateInterval];
      endDate3 = [testDateInterval4 endDate];
      v49 = [NSPredicate predicateWithFormat:@"(startDate >= %@ AND startDate <= %@)", startDate5, endDate2, startDate6, endDate3];

      v50 = v40;
      v107 = v49;
      v51 = [v117 filteredArrayUsingPredicate:v49];
      aggregationDuration2 = [v119 aggregationDuration];
      aggregationMethod2 = [v119 aggregationMethod];
      valueFunction2 = [v119 valueFunction];
      v55 = [(MOTrendsAnalyzer *)selfCopy prepareData:v51 aggregationDuration:aggregationDuration2 aggregationMethod:aggregationMethod2 valueFunction:valueFunction2];

      v56 = _mo_log_facility_get_os_log(&MOLogFacilityTrends);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
      {
        v98 = NSStringFromSelector(a2);
        keyword2 = [v119 keyword];
        v100 = [v112 count];
        v101 = [v51 count];
        v102 = [v50 count];
        v103 = [v55 count];
        *buf = 138413826;
        v134 = v98;
        v135 = 2112;
        v136 = keyword2;
        v137 = 2112;
        v138 = v119;
        v139 = 2048;
        v140 = v100;
        v141 = 2048;
        v142 = *&v101;
        v143 = 2048;
        v144 = v102;
        v145 = 2048;
        v146 = v103;
        _os_log_debug_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEBUG, "%@ keyword, %@, options, %@, data, train, %lu, test, %lu, train.data, %lu, test.data, %lu", buf, 0x48u);
      }

      v105 = v55;
      v106 = v51;

      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      v57 = v50;
      v58 = [v57 countByEnumeratingWithState:&v126 objects:v132 count:16];
      if (v58)
      {
        v59 = v58;
        v60 = *v127;
        do
        {
          for (i = 0; i != v59; i = i + 1)
          {
            if (*v127 != v60)
            {
              objc_enumerationMutation(v57);
            }

            v62 = *(*(&v126 + 1) + 8 * i);
            v63 = _mo_log_facility_get_os_log(&MOLogFacilityTrends);
            if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
            {
              v64 = NSStringFromSelector(a2);
              date = [v62 date];
              [v62 value];
              v67 = v66;
              v68 = [v62 count];
              *buf = 138413058;
              v134 = v64;
              v135 = 2112;
              v136 = date;
              v137 = 2048;
              v138 = v67;
              v139 = 2048;
              v140 = v68;
              _os_log_debug_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEBUG, "%@ train data, date, %@, value, %f, count, %lu", buf, 0x2Au);
            }
          }

          v59 = [v57 countByEnumeratingWithState:&v126 objects:v132 count:16];
        }

        while (v59);
      }

      v124 = 0u;
      v125 = 0u;
      v122 = 0u;
      v123 = 0u;
      v69 = v105;
      v70 = [v69 countByEnumeratingWithState:&v122 objects:v131 count:16];
      if (v70)
      {
        v71 = v70;
        v72 = *v123;
        do
        {
          for (j = 0; j != v71; j = j + 1)
          {
            if (*v123 != v72)
            {
              objc_enumerationMutation(v69);
            }

            v74 = *(*(&v122 + 1) + 8 * j);
            v75 = _mo_log_facility_get_os_log(&MOLogFacilityTrends);
            if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
            {
              v76 = NSStringFromSelector(a2);
              date2 = [v74 date];
              [v74 value];
              v79 = v78;
              v80 = [v74 count];
              *buf = 138413058;
              v134 = v76;
              v135 = 2112;
              v136 = date2;
              v137 = 2048;
              v138 = v79;
              v139 = 2048;
              v140 = v80;
              _os_log_debug_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEBUG, "%@ test data, date, %@, value, %f, count, %lu", buf, 0x2Au);
            }
          }

          v71 = [v69 countByEnumeratingWithState:&v122 objects:v131 count:16];
        }

        while (v71);
      }

      if ([v57 count] > 5)
      {
        optionsCopy = v119;
        v11 = v110;
        handlerCopy = v111;
        v14 = v113;
        if (![v69 count])
        {
          v81 = objc_alloc_init(MOTimeSeries);
          v130 = v81;
          v82 = [NSArray arrayWithObjects:&v130 count:1];

          v69 = v82;
        }

        v83 = objc_opt_new();
        if ([v83 fitData:v57])
        {
          v84 = [v83 testData:v69];
          v85 = v84;
          if (v84)
          {
            if ([v84 outlier])
            {
              [v85 score];
              v86 = 4;
              if (v87 > 0.0)
              {
                v86 = 6;
              }
            }

            else
            {
              v86 = 5;
            }

            aSelectora = v86;
            v93 = v113;
            trends2 = [v113 trends];
            [(MOTrendsAnalyzer *)selfCopy updateTrendsData:trends2 model:v83];

            trends3 = [v113 trends];
            v92 = aSelectora;
            [(MOTrendsAnalyzer *)selfCopy updateTrendsData:trends3 result:aSelectora];
          }

          else
          {
            v92 = 3;
            v93 = v113;
          }

          (v111)[2](v111, v93, v92);

          v14 = v93;
        }

        else
        {
          (v111)[2](v111, v113, 3);
        }
      }

      else
      {
        handlerCopy = v111;
        v14 = v113;
        (v111)[2](v111, v113, 1);
        optionsCopy = v119;
        v11 = v110;
      }

      v16 = v117;

      v12 = v114;
      v24 = v116;
      v13 = v109;
    }

    else
    {
      handlerCopy[2](handlerCopy, 0, 1);
      v24 = _mo_log_facility_get_os_log(&MOLogFacilityTrends);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [MOTrendsAnalyzer analyzeEvents:a2 options:optionsCopy resultHandler:v24];
      }
    }
  }

  else
  {
    handlerCopy[2](handlerCopy, 0, 1);
    v16 = eventsCopy;
  }
}

- (id)eventWithOptions:(id)options originalTrendsData:(id)data
{
  optionsCopy = options;
  dataCopy = data;
  v8 = dataCopy;
  if (dataCopy)
  {
    [dataCopy eventIdentifier];
  }

  else
  {
    +[NSUUID UUID];
  }
  v9 = ;
  v10 = [MOEvent alloc];
  testDateInterval = [optionsCopy testDateInterval];
  startDate = [testDateInterval startDate];
  testDateInterval2 = [optionsCopy testDateInterval];
  endDate = [testDateInterval2 endDate];
  v15 = +[NSDate date];
  v16 = -[MOEvent initWithEventIdentifier:startDate:endDate:creationDate:provider:category:](v10, "initWithEventIdentifier:startDate:endDate:creationDate:provider:category:", v9, startDate, endDate, v15, 5, [optionsCopy category]);

  testDateInterval3 = [optionsCopy testDateInterval];
  endDate2 = [testDateInterval3 endDate];
  v19 = [endDate2 dateByAddingTimeInterval:2419200.0];
  [(MOEvent *)v16 setExpirationDate:v19];

  v20 = objc_opt_new();
  keyword = [optionsCopy keyword];
  [v20 setObject:keyword forKeyedSubscript:@"keyword"];

  trainDateInterval = [optionsCopy trainDateInterval];
  startDate2 = [trainDateInterval startDate];
  [startDate2 timeIntervalSinceReferenceDate];
  v24 = [NSNumber numberWithDouble:?];
  [v20 setObject:v24 forKeyedSubscript:@"trainStartDate"];

  trainDateInterval2 = [optionsCopy trainDateInterval];
  endDate3 = [trainDateInterval2 endDate];
  [endDate3 timeIntervalSinceReferenceDate];
  v27 = [NSNumber numberWithDouble:?];
  [v20 setObject:v27 forKeyedSubscript:@"trainEndDate"];

  testDateInterval4 = [optionsCopy testDateInterval];
  startDate3 = [testDateInterval4 startDate];
  [startDate3 timeIntervalSinceReferenceDate];
  v30 = [NSNumber numberWithDouble:?];
  [v20 setObject:v30 forKeyedSubscript:@"testStartDate"];

  testDateInterval5 = [optionsCopy testDateInterval];
  endDate4 = [testDateInterval5 endDate];
  [endDate4 timeIntervalSinceReferenceDate];
  v33 = [NSNumber numberWithDouble:?];
  [v20 setObject:v33 forKeyedSubscript:@"testEndDate"];

  v34 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [optionsCopy aggregationDuration]);
  [v20 setObject:v34 forKeyedSubscript:@"aggregationDuration"];

  v35 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [optionsCopy aggregationMethod]);
  [v20 setObject:v35 forKeyedSubscript:@"aggregationMethod"];

  v36 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [optionsCopy valueFunctionType]);
  [v20 setObject:v36 forKeyedSubscript:@"valueFunctionType"];

  [(MOEvent *)v16 setTrends:v20];
  if (v8)
  {
    trends = [(MOEvent *)v16 trends];
    trends2 = [v8 trends];
    [(MOTrendsAnalyzer *)self updateTrendsData:trends prevTrendsData:trends2];

    v39 = _mo_log_facility_get_os_log(&MOLogFacilityTrends);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_8;
    }

    v40 = NSStringFromSelector(a2);
    *buf = 138412802;
    v45 = v40;
    v46 = 2112;
    v47 = optionsCopy;
    v48 = 2112;
    v49 = v16;
    v41 = "%@ options, %@, trends data from origin, event, %@";
  }

  else
  {
    v39 = _mo_log_facility_get_os_log(&MOLogFacilityTrends);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_8;
    }

    v40 = NSStringFromSelector(a2);
    *buf = 138412802;
    v45 = v40;
    v46 = 2112;
    v47 = optionsCopy;
    v48 = 2112;
    v49 = v16;
    v41 = "%@ options, %@, new trends data, event, %@";
  }

  _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, v41, buf, 0x20u);

LABEL_8:

  return v16;
}

- (void)updateTrendsData:(id)data prevTrendsData:(id)trendsData
{
  dataCopy = data;
  trendsDataCopy = trendsData;
  v19[0] = @"lastEventDate";
  v19[1] = @"lastEventInterval";
  [NSArray arrayWithObjects:v19 count:2];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v17 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        v13 = [trendsDataCopy objectForKey:{v12, v14}];
        if (v13)
        {
          [dataCopy setObject:v13 forKeyedSubscript:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)updateTrendsData:(id)data lastEventDate:(id)date lastEventInterval:(double)interval
{
  dataCopy = data;
  dateCopy = date;
  v10 = [dataCopy objectForKey:@"lastEventDate"];
  v11 = _mo_log_facility_get_os_log(&MOLogFacilityTrends);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *v27 = 138412290;
    *&v27[4] = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "updateTrendsData, %@", v27, 0xCu);
  }

  [dateCopy timeIntervalSinceReferenceDate];
  v12 = [NSNumber numberWithDouble:?];
  [dataCopy setObject:v12 forKeyedSubscript:@"lastEventDate"];

  intervalCopy = 0.0;
  if (v10)
  {
    [dateCopy timeIntervalSinceReferenceDate];
    v15 = v14;
    [v10 doubleValue];
    v17 = v15 - v16;
    if (v17 >= 0.0)
    {
      v18 = v17;
    }

    else
    {
      v18 = -v17;
    }

    if (v18 > 1.0)
    {
      if (v18 < interval)
      {
        interval = v18;
      }

      v19 = _mo_log_facility_get_os_log(&MOLogFacilityTrends);
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        goto LABEL_16;
      }

      *v27 = 134218240;
      *&v27[4] = interval;
      *&v27[12] = 2048;
      *&v27[14] = v18;
      v20 = "updateTrendsData, min, %f, interval , %f";
      v21 = v19;
      v22 = 22;
      goto LABEL_15;
    }

    if (interval < 1.79769313e308)
    {
      v19 = _mo_log_facility_get_os_log(&MOLogFacilityTrends);
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
LABEL_16:

        intervalCopy = interval;
        goto LABEL_17;
      }

      *v27 = 134217984;
      *&v27[4] = interval;
      v20 = "updateTrendsData, min, %f";
      v21 = v19;
      v22 = 12;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, v20, v27, v22);
      goto LABEL_16;
    }
  }

LABEL_17:
  v23 = [NSNumber numberWithDouble:intervalCopy, *v27, *&v27[16]];
  [dataCopy setObject:v23 forKeyedSubscript:@"lastEventInterval"];

  v24 = +[NSDate date];
  [v24 timeIntervalSinceDate:dateCopy];
  v26 = v25;

  if (intervalCopy > 1814400.0 || v26 > 1814400.0)
  {
    [(MOTrendsAnalyzer *)self updateTrendsData:dataCopy result:8];
  }
}

- (void)updateTrendsData:(id)data model:(id)model
{
  modelCopy = model;
  dataCopy = data;
  getTrainDataStats = [modelCopy getTrainDataStats];
  getTestDataStats = [modelCopy getTestDataStats];

  [getTrainDataStats mean];
  v8 = [NSNumber numberWithDouble:?];
  [dataCopy setObject:v8 forKeyedSubscript:@"trainMean"];

  [getTrainDataStats std];
  v9 = [NSNumber numberWithDouble:?];
  [dataCopy setObject:v9 forKeyedSubscript:@"trainStd"];

  v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [getTrainDataStats count]);
  [dataCopy setObject:v10 forKeyedSubscript:@"trainCount"];

  [getTrainDataStats min];
  v11 = [NSNumber numberWithDouble:?];
  [dataCopy setObject:v11 forKeyedSubscript:@"trainMin"];

  [getTrainDataStats max];
  v12 = [NSNumber numberWithDouble:?];
  [dataCopy setObject:v12 forKeyedSubscript:@"trainMax"];

  [getTestDataStats mean];
  v13 = [NSNumber numberWithDouble:?];
  [dataCopy setObject:v13 forKeyedSubscript:@"testMean"];

  [getTestDataStats std];
  v14 = [NSNumber numberWithDouble:?];
  [dataCopy setObject:v14 forKeyedSubscript:@"testStd"];

  v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [getTestDataStats count]);
  [dataCopy setObject:v15 forKeyedSubscript:@"testCount"];

  [getTestDataStats min];
  v16 = [NSNumber numberWithDouble:?];
  [dataCopy setObject:v16 forKeyedSubscript:@"testMin"];

  [getTestDataStats max];
  v17 = [NSNumber numberWithDouble:?];
  [dataCopy setObject:v17 forKeyedSubscript:@"testMax"];
}

- (void)updateTrendsData:(id)data result:(unint64_t)result
{
  dataCopy = data;
  v6 = [NSNumber numberWithUnsignedInteger:result];
  [dataCopy setObject:v6 forKeyedSubscript:@"trends"];
}

- (int64_t)trendsfromAnalyticsResult:(unint64_t)result
{
  if (result - 4 > 2)
  {
    return 0;
  }

  else
  {
    return qword_100323240[result - 4];
  }
}

- (id)lookupTrendsDataWithOptions:(id)options events:(id)events
{
  optionsCopy = options;
  eventsCopy = events;
  if (![eventsCopy count])
  {
    v24 = 0;
    goto LABEL_24;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = eventsCopy;
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (!v8)
  {
    v24 = 0;
    goto LABEL_23;
  }

  v9 = v8;
  v26 = eventsCopy;
  v10 = *v32;
  v29 = v7;
  do
  {
    v11 = 0;
    v30 = v9;
    do
    {
      if (*v32 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v31 + 1) + 8 * v11);
      trends = [v12 trends];

      if (trends)
      {
        trends2 = [v12 trends];
        v15 = [trends2 objectForKeyedSubscript:@"keyword"];
        keyword = [optionsCopy keyword];
        if ([v15 isEqualToString:keyword])
        {
          v17 = v10;
          v18 = [trends2 objectForKeyedSubscript:@"aggregationDuration"];
          unsignedLongValue = [v18 unsignedLongValue];
          if (unsignedLongValue == [optionsCopy aggregationDuration])
          {
            v20 = [trends2 objectForKeyedSubscript:@"aggregationMethod"];
            v21 = optionsCopy;
            unsignedLongValue2 = [v20 unsignedLongValue];
            if (unsignedLongValue2 == [v21 aggregationMethod])
            {
              v23 = [trends2 objectForKeyedSubscript:@"valueFunctionType"];
              unsignedLongValue3 = [v23 unsignedLongValue];
              valueFunctionType = [v21 valueFunctionType];

              optionsCopy = v21;
              v10 = v17;
              v7 = v29;
              v9 = v30;
              if (unsignedLongValue3 == valueFunctionType)
              {
                v24 = v12;

                goto LABEL_21;
              }

              goto LABEL_16;
            }

            optionsCopy = v21;
            v7 = v29;
          }

          v10 = v17;
          v9 = v30;
        }

LABEL_16:
      }

      v11 = v11 + 1;
    }

    while (v9 != v11);
    v9 = [v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
  }

  while (v9);
  v24 = 0;
LABEL_21:
  eventsCopy = v26;
LABEL_23:

LABEL_24:

  return v24;
}

- (id)buildAnalyticsPlans
{
  v4 = +[NSDate date];
  v5 = [v4 startOfDayWithBoundaryOfADay:10800.0];

  v6 = [NSDateInterval alloc];
  v7 = [v5 dateByAddingTimeInterval:-2419200.0];
  v8 = [v5 dateByAddingTimeInterval:-86400.0];
  v9 = [v6 initWithStartDate:v7 endDate:v8];

  v10 = [NSDateInterval alloc];
  v11 = [v5 dateByAddingTimeInterval:-86400.0];
  v12 = [v10 initWithStartDate:v11 endDate:v5];

  v13 = _mo_log_facility_get_os_log(&MOLogFacilityTrends);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v22 = NSStringFromSelector(a2);
    *buf = 138412802;
    v25 = v22;
    v26 = 2112;
    v27 = v9;
    v28 = 2112;
    v29 = v12;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%@ trainDateInterval, %@, testDateInterval, %@", buf, 0x20u);
  }

  v14 = objc_opt_new();
  v15 = [[MOTrendsAnalyzerOptions alloc] initWithKeyword:@"workout.duration" category:2 trainDateInterval:v9 testDateInterval:v12 aggregationDuration:1 aggregationMethod:0 valueType:2];
  [v14 addObject:v15];

  v16 = [[MOTrendsAnalyzerOptions alloc] initWithKeyword:@"work.duration" category:1 trainDateInterval:v9 testDateInterval:v12 aggregationDuration:1 aggregationMethod:0 valueFunction:&__block_literal_global_39];
  [v14 addObject:v16];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __39__MOTrendsAnalyzer_buildAnalyticsPlans__block_invoke_2;
  v23[3] = &unk_10033D1A0;
  v23[4] = self;
  v17 = objc_retainBlock(v23);
  v18 = [[MOTrendsAnalyzerOptions alloc] initWithKeyword:@"work.exit" category:1 trainDateInterval:v9 testDateInterval:v12 aggregationDuration:1 aggregationMethod:2 valueFunction:v17];
  [v14 addObject:v18];

  v19 = [[MOTrendsAnalyzerOptions alloc] initWithKeyword:@"media.playTime" category:4 trainDateInterval:v9 testDateInterval:v12 aggregationDuration:1 aggregationMethod:0 valueFunction:&__block_literal_global_493];
  [v14 addObject:v19];

  v20 = [[MOTrendsAnalyzerOptions alloc] initWithKeyword:@"contact.interactions" category:10 trainDateInterval:v9 testDateInterval:v12 aggregationDuration:1 aggregationMethod:0 valueFunction:&__block_literal_global_498];
  [v14 addObject:v20];

  return v14;
}

double __39__MOTrendsAnalyzer_buildAnalyticsPlans__block_invoke(id a1, MOEvent *a2)
{
  v2 = a2;
  if ([(MOEvent *)v2 placeUserType]== 2)
  {
    v3 = [(MOEvent *)v2 endDate];
    v4 = [(MOEvent *)v2 startDate];
    [v3 timeIntervalSinceDate:v4];
    v6 = v5;
  }

  else
  {
    v6 = -1.79769313e308;
  }

  return v6;
}

double __39__MOTrendsAnalyzer_buildAnalyticsPlans__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 placeUserType] != 2)
  {
    goto LABEL_4;
  }

  v4 = [v3 endDate];

  if (!v4 || (v5 = *(a1 + 32), [v3 endDate], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "timeOfDay:", v6), v8 = v7, v6, v8 < 0.0))
  {
LABEL_4:
    v8 = -1.79769313e308;
  }

  return v8;
}

double __39__MOTrendsAnalyzer_buildAnalyticsPlans__block_invoke_3(id a1, MOEvent *a2)
{
  v2 = a2;
  v3 = [(MOEvent *)v2 mediaSumTimePlayed];
  if (v3 && (v4 = v3, -[MOEvent mediaSumTimePlayed](v2, "mediaSumTimePlayed"), v5 = objc_claimAutoreleasedReturnValue(), [v5 doubleValue], v7 = v6, v5, v4, v7 > 0.0))
  {
    v8 = [(MOEvent *)v2 mediaSumTimePlayed];
    [v8 doubleValue];
    v10 = v9;
  }

  else
  {
    v10 = -1.79769313e308;
  }

  return v10;
}

double __39__MOTrendsAnalyzer_buildAnalyticsPlans__block_invoke_4(id a1, MOEvent *a2)
{
  v2 = a2;
  v3 = [(MOEvent *)v2 interactions];

  if (!v3)
  {
    goto LABEL_12;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(MOEvent *)v2 interactions];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v5)
  {

LABEL_12:
    v12 = -1.79769313e308;
    goto LABEL_13;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v15;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(*(&v14 + 1) + 8 * i) mechanism]);
      v11 = [&off_10036DD88 containsObject:v10];

      v7 += v11;
    }

    v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  }

  while (v6);

  if (!v7)
  {
    goto LABEL_12;
  }

  v12 = v7;
LABEL_13:

  return v12;
}

- (void)analyzeEvents:(id)events analyticsPlans:(id)plans handler:(id)handler
{
  eventsCopy = events;
  plansCopy = plans;
  handlerCopy = handler;
  v11 = objc_opt_new();
  v12 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = plansCopy;
  v13 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    do
    {
      v16 = 0;
      do
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v25 + 1) + 8 * v16);
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = __57__MOTrendsAnalyzer_analyzeEvents_analyticsPlans_handler___block_invoke;
        v20[3] = &unk_10033D208;
        v21 = v12;
        v22 = v17;
        v23 = v11;
        v24 = a2;
        [(MOTrendsAnalyzer *)self analyzeEvents:eventsCopy options:v17 resultHandler:v20];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v14);
  }

  handlerCopy[2](handlerCopy, v11, v12);
}

void __57__MOTrendsAnalyzer_analyzeEvents_analyticsPlans_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = [NSNumber numberWithUnsignedInteger:a3];
  v8 = [*(a1 + 40) keyword];
  [v6 setValue:v7 forKey:v8];

  if (v5)
  {
    [*(a1 + 48) addObject:v5];
  }

  v9 = _mo_log_facility_get_os_log(&MOLogFacilityTrends);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = NSStringFromSelector(*(a1 + 56));
    v11 = [*(a1 + 40) keyword];
    v12 = *(a1 + 40);
    v13 = 138413314;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    v19 = 2048;
    v20 = a3;
    v21 = 2112;
    v22 = v5;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%@ model, %@, options, %@, result, %lu, event, %@", &v13, 0x34u);
  }
}

- (double)timeOfDay:(id)day
{
  if (!day)
  {
    return -1.0;
  }

  dayCopy = day;
  hours = [dayCopy hours];
  minutes = [dayCopy minutes];

  return (minutes + 60 * hours);
}

- (void)sendMetricsForTrendsEvents:(id)events
{
  eventsCopy = events;
  v55 = [MOMetric binsFromStart:&off_10036AB40 toEnd:&off_10036E710 gap:&off_10036E720];
  v5 = objc_opt_new();
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = eventsCopy;
  v6 = [obj countByEnumeratingWithState:&v58 objects:v64 count:16];
  if (v6)
  {
    v8 = v6;
    v57 = *v59;
    *&v7 = 138412290;
    v54 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v59 != v57)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v58 + 1) + 8 * i);
        trends = [v10 trends];

        if (trends)
        {
          trends2 = [v10 trends];
          creationDate = [v10 creationDate];
          [creationDate timeIntervalSinceReferenceDate];
          v14 = [NSNumber numberWithDouble:?];
          [v5 setObject:v14 forKeyedSubscript:@"creationDate"];

          creationDate2 = [v10 creationDate];
          startOfDay = [creationDate2 startOfDay];
          [startOfDay timeIntervalSinceReferenceDate];
          v17 = [NSNumber numberWithDouble:?];
          [v5 setObject:v17 forKeyedSubscript:@"creationDateStartOfDay"];

          v18 = [trends2 objectForKeyedSubscript:@"trainEndDate"];
          if (v18)
          {
            v19 = v18;
            v20 = [trends2 objectForKeyedSubscript:@"trainStartDate"];

            if (v20)
            {
              v21 = [trends2 objectForKeyedSubscript:@"trainEndDate"];
              [v21 doubleValue];
              v23 = v22;
              v24 = [trends2 objectForKeyedSubscript:@"trainStartDate"];
              [v24 doubleValue];
              v26 = v23 - v25;

              v27 = [NSNumber numberWithDouble:v26];
              [(MOTrendsAnalyzer *)self setValue:v27 forKey:@"trainDuration" dictionary:v5 bins:v55];
            }
          }

          v28 = [trends2 objectForKeyedSubscript:@"testEndDate"];
          if (v28)
          {
            v29 = v28;
            v30 = [trends2 objectForKeyedSubscript:@"testStartDate"];

            if (v30)
            {
              v31 = [trends2 objectForKeyedSubscript:@"testEndDate"];
              [v31 doubleValue];
              v33 = v32;
              v34 = [trends2 objectForKeyedSubscript:@"testStartDate"];
              [v34 doubleValue];
              v36 = v33 - v35;

              v37 = [NSNumber numberWithDouble:v36];
              [(MOTrendsAnalyzer *)self setValue:v37 forKey:@"testDuration" dictionary:v5 bins:v55];
            }
          }

          v38 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 category]);
          [(MOTrendsAnalyzer *)self setValue:v38 forKey:@"category" dictionary:v5];

          v39 = [trends2 objectForKeyedSubscript:@"keyword"];
          [(MOTrendsAnalyzer *)self setValue:v39 forKey:@"keyword" dictionary:v5];

          v40 = [trends2 objectForKeyedSubscript:@"aggregationDuration"];
          [(MOTrendsAnalyzer *)self setValue:v40 forKey:@"aggregationDuration" dictionary:v5];

          v41 = [trends2 objectForKeyedSubscript:@"aggregationMethod"];
          [(MOTrendsAnalyzer *)self setValue:v41 forKey:@"aggregationMethod" dictionary:v5];

          v42 = [trends2 objectForKeyedSubscript:@"valueFunctionType"];
          [(MOTrendsAnalyzer *)self setValue:v42 forKey:@"valueFunctionType" dictionary:v5];

          v43 = [trends2 objectForKeyedSubscript:@"trainMean"];
          [(MOTrendsAnalyzer *)self setDecimatedValue:v43 forKey:@"trainMean" dictionary:v5];

          v44 = [trends2 objectForKeyedSubscript:@"trainStd"];
          [(MOTrendsAnalyzer *)self setDecimatedValue:v44 forKey:@"trainStd" dictionary:v5];

          v45 = [trends2 objectForKeyedSubscript:@"trainCount"];
          [(MOTrendsAnalyzer *)self setDecimatedValue:v45 forKey:@"trainCount" dictionary:v5];

          v46 = [trends2 objectForKeyedSubscript:@"trainMin"];
          [(MOTrendsAnalyzer *)self setDecimatedValue:v46 forKey:@"trainMin" dictionary:v5];

          v47 = [trends2 objectForKeyedSubscript:@"trainMax"];
          [(MOTrendsAnalyzer *)self setDecimatedValue:v47 forKey:@"trainMax" dictionary:v5];

          v48 = [trends2 objectForKeyedSubscript:@"testMean"];
          [(MOTrendsAnalyzer *)self setDecimatedValue:v48 forKey:@"testMean" dictionary:v5];

          v49 = [trends2 objectForKeyedSubscript:@"testStd"];
          [(MOTrendsAnalyzer *)self setDecimatedValue:v49 forKey:@"testStd" dictionary:v5];

          v50 = [trends2 objectForKeyedSubscript:@"testCount"];
          [(MOTrendsAnalyzer *)self setDecimatedValue:v50 forKey:@"testCount" dictionary:v5];

          v51 = [trends2 objectForKeyedSubscript:@"testMin"];
          [(MOTrendsAnalyzer *)self setDecimatedValue:v51 forKey:@"testMin" dictionary:v5];

          v52 = [trends2 objectForKeyedSubscript:@"testMax"];
          [(MOTrendsAnalyzer *)self setDecimatedValue:v52 forKey:@"testMax" dictionary:v5];

          v53 = [trends2 objectForKeyedSubscript:@"trends"];
          [(MOTrendsAnalyzer *)self setValue:v53 forKey:@"trends" dictionary:v5];

          [(MOTrendsAnalyzer *)self setCommonFields:v5];
          log_analytics_submission(@"com.apple.Moments.trends", v5);
          AnalyticsSendEvent();
        }

        else
        {
          trends2 = _mo_log_facility_get_os_log(&MOLogFacilityMetric);
          if (os_log_type_enabled(trends2, OS_LOG_TYPE_ERROR))
          {
            *buf = v54;
            v63 = v10;
            _os_log_error_impl(&_mh_execute_header, trends2, OS_LOG_TYPE_ERROR, "Trends information is not available. %@", buf, 0xCu);
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v58 objects:v64 count:16];
    }

    while (v8);
  }
}

- (void)setCommonFields:(id)fields
{
  fieldsCopy = fields;
  healthKitManager = [(MOTrendsAnalyzer *)self healthKitManager];

  if (healthKitManager)
  {
    v49 = 0;
    v50 = &v49;
    v51 = 0x3032000000;
    v52 = __Block_byref_object_copy__29;
    v53 = __Block_byref_object_dispose__29;
    v54 = 0;
    v43 = 0;
    v44 = &v43;
    v45 = 0x3032000000;
    v46 = __Block_byref_object_copy__29;
    v47 = __Block_byref_object_dispose__29;
    v48 = 0;
    if (objc_opt_class() && +[MOPlatformInfo isIHAEnabled])
    {
      v6 = _mo_log_facility_get_os_log(&MOLogFacilityMetric);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Fetching age/biologicalSex for CoreAnalytics, with IHA permission", buf, 2u);
      }

      *buf = 0;
      v38 = buf;
      v39 = 0x3032000000;
      v40 = __Block_byref_object_copy__29;
      v41 = __Block_byref_object_dispose__29;
      v42 = 0;
      v7 = dispatch_semaphore_create(0);
      healthKitManager2 = [(MOTrendsAnalyzer *)self healthKitManager];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = __45__MOTrendsAnalyzer_Metrics__setCommonFields___block_invoke;
      v33[3] = &unk_10033A510;
      v9 = v7;
      v34 = v9;
      v35 = &v49;
      v36 = buf;
      [healthKitManager2 fetchUserBiologicalSexWithHandler:v33];

      v10 = [NSString stringWithFormat:@"%@ - [%s] - %d - %s", @"MOSemaphoreWait", "/Library/Caches/com.apple.xbs/Sources/Moments/momentsd/PromptEngine/PromptSource/Trends/MOTrendsAnalyzer.m", 720, "[MOTrendsAnalyzer(Metrics) setCommonFields:]"];
      v32 = 0;
      v11 = MOSemaphoreWaitAndFaultIfTimeoutDefaultTimeout_Internal(v9, &v32, v10);
      v24 = v32;
      if (!v11)
      {
        v12 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [(MOTrendsAnalyzer(Metrics) *)v10 setCommonFields:v12];
        }
      }

      v30[0] = 0;
      v30[1] = v30;
      v30[2] = 0x3032000000;
      v30[3] = __Block_byref_object_copy__29;
      v30[4] = __Block_byref_object_dispose__29;
      v31 = 0;
      v13 = dispatch_semaphore_create(0);
      healthKitManager3 = [(MOTrendsAnalyzer *)self healthKitManager];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = __45__MOTrendsAnalyzer_Metrics__setCommonFields___block_invoke_606;
      v26[3] = &unk_10033A538;
      v15 = v13;
      v27 = v15;
      v28 = &v43;
      v29 = v30;
      [healthKitManager3 fetchUserAgeWithHandler:v26];

      v16 = [NSString stringWithFormat:@"%@ - [%s] - %d - %s", @"MOSemaphoreWait", "/Library/Caches/com.apple.xbs/Sources/Moments/momentsd/PromptEngine/PromptSource/Trends/MOTrendsAnalyzer.m", 737, "[MOTrendsAnalyzer(Metrics) setCommonFields:]"];
      v25 = 0;
      v17 = MOSemaphoreWaitAndFaultIfTimeoutDefaultTimeout_Internal(v15, &v25, v16);
      v18 = v25;
      if (!v17)
      {
        v19 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [(MOTrendsAnalyzer(Metrics) *)v16 setCommonFields:v19];
        }
      }

      _Block_object_dispose(v30, 8);
      _Block_object_dispose(buf, 8);

      v20 = [NSNumber numberWithBool:1];
      [(MOTrendsAnalyzer *)self setValue:v20 forKey:@"IHA_State" dictionary:fieldsCopy];

      v21 = v44[5];
      if (v21)
      {
        [(MOTrendsAnalyzer *)self setValue:v21 forKey:@"Age" dictionary:fieldsCopy bins:&off_10036DDA0];
      }

      v22 = v50[5];
      if (v22)
      {
        [(MOTrendsAnalyzer *)self setValue:v22 forKey:@"BiologicalSex" dictionary:fieldsCopy];
      }
    }

    else
    {
      v23 = _mo_log_facility_get_os_log(&MOLogFacilityMetric);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Not sending age/biologicalSex to CoreAnalytics, no IHA permission", buf, 2u);
      }
    }

    _Block_object_dispose(&v43, 8);

    _Block_object_dispose(&v49, 8);
  }
}

void __45__MOTrendsAnalyzer_Metrics__setCommonFields___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (!v5)
  {
    if (v11)
    {
      v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v11 biologicalSex]);
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }

    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __45__MOTrendsAnalyzer_Metrics__setCommonFields___block_invoke_606(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v6 = a3;
  if (!v6)
  {
    if (v9)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    }

    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)setValue:(id)value forKey:(id)key dictionary:(id)dictionary
{
  if (value)
  {
    dictionaryCopy = dictionary;
    keyCopy = key;
    v9 = [value copy];
    [dictionaryCopy setObject:v9 forKeyedSubscript:keyCopy];
  }
}

- (void)setValue:(id)value forKey:(id)key dictionary:(id)dictionary bins:(id)bins
{
  if (value)
  {
    binsCopy = bins;
    dictionaryCopy = dictionary;
    keyCopy = key;
    valueCopy = value;
    v13 = [valueCopy copy];
    [dictionaryCopy setObject:v13 forKeyedSubscript:keyCopy];

    v15 = [MOMetric binForNumber:valueCopy bins:binsCopy];

    v14 = [keyCopy stringByAppendingString:@"_Bucketed"];

    [dictionaryCopy setObject:v15 forKeyedSubscript:v14];
  }
}

- (void)setDecimatedValue:(id)value forKey:(id)key dictionary:(id)dictionary
{
  if (value)
  {
    dictionaryCopy = dictionary;
    keyCopy = key;
    valueCopy = value;
    [valueCopy doubleValue];
    v11 = v10;
    v12 = -v10;
    if (v11 >= 0.0)
    {
      v13 = v11;
    }

    else
    {
      v13 = v12;
    }

    v14 = vcvtmd_s64_f64(log10(v13));
    v15 = round(v13 * __exp10((1 - v14)));
    if (v11 >= 0.0)
    {
      v16 = v15;
    }

    else
    {
      v16 = -v15;
    }

    v17 = [valueCopy copy];

    [dictionaryCopy setObject:v17 forKeyedSubscript:keyCopy];
    v18 = [NSNumber numberWithInteger:v14];
    v19 = [keyCopy stringByAppendingString:@"_Scale"];
    [dictionaryCopy setObject:v18 forKeyedSubscript:v19];

    v21 = [NSNumber numberWithDouble:v16];
    v20 = [keyCopy stringByAppendingString:@"_SignificantValue"];

    [dictionaryCopy setObject:v21 forKeyedSubscript:v20];
  }
}

- (void)analyzeEvents:(const char *)a1 options:(void *)a2 resultHandler:(NSObject *)a3 .cold.1(const char *a1, void *a2, NSObject *a3)
{
  v5 = NSStringFromSelector(a1);
  v6 = [a2 keyword];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "%@ keyword, %@, MOTrendsAnalyzerResultInsufficientData", &v7, 0x16u);
}

@end