@interface _OSDrainPredictor
+ (id)sharedInstance;
- (_OSDrainPredictor)init;
- (id)getInputFeatures;
- (id)highDayDrainAroundCurrentDateWithError:(id *)error;
- (id)timeTillDischargeWithError:(id *)error;
@end

@implementation _OSDrainPredictor

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013B60;
  block[3] = &unk_100094818;
  block[4] = self;
  if (qword_1000B6A10 != -1)
  {
    dispatch_once(&qword_1000B6A10, block);
  }

  v2 = qword_1000B6A08;

  return v2;
}

- (_OSDrainPredictor)init
{
  v11.receiver = self;
  v11.super_class = _OSDrainPredictor;
  v2 = [(_OSDrainPredictor *)&v11 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.osintelligence", "drainPredictor");
    log = v2->_log;
    v2->_log = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.osintelligence.drainPredictor.queue", v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = +[_CDClientContext userContext];
    context = v2->_context;
    v2->_context = v8;
  }

  return v2;
}

- (id)highDayDrainAroundCurrentDateWithError:(id *)error
{
  v5 = os_transaction_create();
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_10000323C;
  v14 = sub_100003560;
  v15 = objc_alloc_init(_OSDayDrainResult);
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100013D78;
  v9[3] = &unk_100094D48;
  v9[4] = &v10;
  v9[5] = error;
  dispatch_sync(queue, v9);
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)timeTillDischargeWithError:(id *)error
{
  v4 = os_transaction_create();
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10000323C;
  v13 = sub_100003560;
  v14 = objc_alloc_init(_OSBatteryTimeTillDischargeOutput);
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100013F04;
  v8[3] = &unk_100094D70;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(queue, v8);
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)getInputFeatures
{
  context = self->_context;
  v3 = +[_CDContextQueries keyPathForBatteryLevel];
  v4 = [(_CDLocalContext *)context objectForContextualKeyPath:v3];
  [v4 doubleValue];
  v6 = v5;

  PLQueryRegistered();
  v7 = [NSDateInterval alloc];
  v8 = [NSDate dateWithTimeIntervalSinceNow:-5184000.0];
  v9 = +[NSDate date];
  v10 = [v7 initWithStartDate:v8 endDate:v9];

  v11 = [NSPredicate predicateWithFormat:@"(subsystem == 'BatteryDataCollection' AND category == 'BDC_SBC')"];
  v127 = [NSSet setWithArray:&off_10009CC00];
  v128 = v11;
  v159 = 0;
  v126 = [[PPSTimeSeriesRequest alloc] initWithMetrics:v127 predicate:v11 timeFilter:v10 limitCount:objc_msgSend(&off_10009B550 offsetCount:"unsignedIntValue") readDirection:{0, 1}];
  v12 = PerfPowerServicesGetData();
  v13 = 0;
  if (v13)
  {
    v14 = [(_OSDrainPredictor *)self log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v167 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Error from PPSGetData for SBC %@", buf, 0xCu);
    }
  }

  v15 = [NSPredicate predicateWithFormat:@"(subsystem == 'BatteryDataCollection' AND category == 'BDC_OBC')"];
  v123 = [NSSet setWithArray:&off_10009CC18];
  v124 = v15;
  v158 = v13;
  v122 = [[PPSTimeSeriesRequest alloc] initWithMetrics:v123 predicate:v15 timeFilter:v10 limitCount:objc_msgSend(&off_10009B550 offsetCount:"unsignedIntValue") readDirection:{0, 1}];
  v16 = PerfPowerServicesGetData();
  v17 = v13;

  if (v17)
  {
    v18 = [(_OSDrainPredictor *)self log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v167 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Error from PPSGetData for OBC %@", buf, 0xCu);
    }
  }

  v121 = v16;
  v129 = v10;
  [v12 mergeWithTimeSeries:{v16, v17}];
  v125 = v12;
  array = [v12 array];
  v137 = objc_opt_new();
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  obj = array;
  v20 = [obj countByEnumeratingWithState:&v154 objects:v165 count:16];
  if (!v20)
  {
    v135 = 0;
    goto LABEL_29;
  }

  v21 = v20;
  v135 = 0;
  v22 = 1;
  v139 = *v155;
  do
  {
    for (i = 0; i != v21; i = i + 1)
    {
      if (*v155 != v139)
      {
        objc_enumerationMutation(obj);
      }

      v24 = *(*(&v154 + 1) + 8 * i);
      [v24 monotonicTimestamp];
      v26 = v25;
      [v24 epochTimestamp];
      v27 = [NSDate dateWithTimeIntervalSince1970:?];
      v28 = [NSDate dateWithTimeIntervalSince1970:v26];
      metricKeysAndValues = [v24 metricKeysAndValues];
      v30 = metricKeysAndValues;
      if (metricKeysAndValues)
      {
        v31 = [metricKeysAndValues objectForKey:@"CurrentCapacity"];
        v32 = [v31 copy];

        v33 = [v30 objectForKey:@"StateOfCharge"];
        v34 = [v33 copy];

        v35 = [v30 objectForKey:@"ExternalConnected"];
        v36 = [v35 copy];

        if (v36)
        {
          if ([v36 isEqualToNumber:&off_10009B568])
          {
            v37 = v135;
            if (v135)
            {
              [v137 addObject:v135];
            }

            v135 = objc_alloc_init(_OSDischargeCycle);
LABEL_23:

            v22 = 0;
LABEL_24:

            goto LABEL_25;
          }
        }

        else if ((v22 & 1) == 0)
        {
          v37 = [[_OSDischargeEvent alloc] initWithSoC:v34 andCurrrentCapacity:v32 andTimestamp:v28];
          [(_OSDischargeCycle *)v135 addEvent:v37];
          goto LABEL_23;
        }

        v22 = 1;
        goto LABEL_24;
      }

LABEL_25:
    }

    v21 = [obj countByEnumeratingWithState:&v154 objects:v165 count:16];
  }

  while (v21);
LABEL_29:

  v38 = [(_OSDrainPredictor *)self log];
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v137 count]);
    *buf = 138412290;
    v167 = v39;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Total Discharge Cycles: %@", buf, 0xCu);
  }

  v40 = objc_opt_new();
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v41 = v137;
  v42 = [v41 countByEnumeratingWithState:&v150 objects:v164 count:16];
  v132 = v41;
  if (v42)
  {
    v43 = v42;
    v44 = *v151;
    v131 = *v151;
    do
    {
      v45 = 0;
      v133 = v43;
      do
      {
        if (*v151 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = *(*(&v150 + 1) + 8 * v45);
        dischargeEvents = [v46 dischargeEvents];
        getLastEvent = [v46 getLastEvent];
        if (getLastEvent)
        {
          v140 = getLastEvent;
          [getLastEvent currentCapacity];
          v49 = v138 = dischargeEvents;
          [v49 doubleValue];
          v51 = v50;

          dischargeEvents = v138;
          getLastEvent = v140;
          if (v51 <= 20.0)
          {
            v52 = [v46 findEventWithCurrentCapacity:&off_10009B580];
            getLastEvent = v140;
            if (v52)
            {
              v134 = v45;
              v148 = 0u;
              v149 = 0u;
              v146 = 0u;
              v147 = 0u;
              v53 = v138;
              v54 = [v53 countByEnumeratingWithState:&v146 objects:v163 count:16];
              if (v54)
              {
                v55 = v54;
                v56 = *v147;
                do
                {
                  for (j = 0; j != v55; j = j + 1)
                  {
                    if (*v147 != v56)
                    {
                      objc_enumerationMutation(v53);
                    }

                    v58 = *(*(&v146 + 1) + 8 * j);
                    currentCapacity = [v58 currentCapacity];
                    [currentCapacity doubleValue];
                    v61 = v60;

                    if (v61 >= 20.0)
                    {
                      timestamp = [v52 timestamp];
                      timestamp2 = [v58 timestamp];
                      [timestamp timeIntervalSinceDate:timestamp2];
                      v65 = v64;

                      v66 = [_OSDischargeInterval alloc];
                      currentCapacity2 = [v58 currentCapacity];
                      currentCapacity3 = [v52 currentCapacity];
                      v69 = [(_OSDischargeInterval *)v66 initWithStartSoC:currentCapacity2 andEndSoC:currentCapacity3 andDurationToDischarge:v65];

                      [v40 addObject:v69];
                    }
                  }

                  v55 = [v53 countByEnumeratingWithState:&v146 objects:v163 count:16];
                }

                while (v55);
              }

              v44 = v131;
              v41 = v132;
              v43 = v133;
              v45 = v134;
              dischargeEvents = v138;
              getLastEvent = v140;
            }
          }
        }

        v45 = v45 + 1;
      }

      while (v45 != v43);
      v43 = [v41 countByEnumeratingWithState:&v150 objects:v164 count:16];
    }

    while (v43);
  }

  v70 = [(_OSDrainPredictor *)self log];
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
  {
    v71 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v40 count]);
    *buf = 138412290;
    v167 = v71;
    _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "Total Discharge Intervals: %@", buf, 0xCu);
  }

  v72 = objc_opt_new();
  v142 = 0u;
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v73 = v40;
  v74 = [v73 countByEnumeratingWithState:&v142 objects:v162 count:16];
  if (v74)
  {
    v75 = v74;
    v76 = *v143;
    do
    {
      for (k = 0; k != v75; k = k + 1)
      {
        if (*v143 != v76)
        {
          objc_enumerationMutation(v73);
        }

        v78 = *(*(&v142 + 1) + 8 * k);
        startSoC = [v78 startSoC];
        [startSoC doubleValue];
        v81 = vabdd_f64(v80, v6);

        if (v81 <= 2.0)
        {
          [v78 durationToDischarge];
          v82 = [NSNumber numberWithDouble:?];
          [v72 addObject:v82];
        }
      }

      v75 = [v73 countByEnumeratingWithState:&v142 objects:v162 count:16];
    }

    while (v75);
  }

  [OSIntelligenceUtilities medianOf:v72];
  v84 = v83 / 60.0;
  v85 = [(_OSDrainPredictor *)self log];
  if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
  {
    v86 = [NSNumber numberWithDouble:v84];
    *buf = 138412290;
    v167 = v86;
    _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "Current SoC Median: %@", buf, 0xCu);
  }

  [OSIntelligenceUtilities qthPercentileOf:v72 withQ:25.0];
  v88 = v87 / 60.0;
  v89 = [(_OSDrainPredictor *)self log];
  if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
  {
    v90 = [NSNumber numberWithDouble:v88];
    *buf = 138412290;
    v167 = v90;
    _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "Current SoC IQ1: %@", buf, 0xCu);
  }

  [OSIntelligenceUtilities qthPercentileOf:v72 withQ:75.0];
  v92 = v91 / 60.0;
  v93 = [(_OSDrainPredictor *)self log];
  if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
  {
    v94 = [NSNumber numberWithDouble:v92];
    *buf = 138412290;
    v167 = v94;
    _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "Current SoC IQ3: %@", buf, 0xCu);
  }

  [OSIntelligenceUtilities standardDeviationOf:v72];
  v96 = v95 / 60.0;
  v97 = [(_OSDrainPredictor *)self log];
  if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
  {
    v98 = [NSNumber numberWithDouble:v96];
    *buf = 138412290;
    v167 = v98;
    _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "Current SoC Std Dev: %@", buf, 0xCu);
  }

  [OSIntelligenceUtilities qthPercentileOf:v72 withQ:10.0];
  v100 = v99 / 60.0;
  v101 = [(_OSDrainPredictor *)self log];
  if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
  {
    v102 = [NSNumber numberWithDouble:v100];
    *buf = 138412290;
    v167 = v102;
    _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "Current SoC 10: %@", buf, 0xCu);
  }

  [OSIntelligenceUtilities qthPercentileOf:v72 withQ:90.0];
  v104 = v103 / 60.0;
  v105 = [(_OSDrainPredictor *)self log];
  if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
  {
    v106 = [NSNumber numberWithDouble:v104];
    *buf = 138412290;
    v167 = v106;
    _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "Current SoC 90: %@", buf, 0xCu);
  }

  v160[0] = @"StateOfCharge";
  v107 = [NSNumber numberWithDouble:v6];
  v161[0] = v107;
  v160[1] = @"Curr_SoC_Median";
  v108 = [NSNumber numberWithDouble:v84];
  v161[1] = v108;
  v160[2] = @"Curr_SoC_SD";
  v109 = [NSNumber numberWithDouble:v96];
  v161[2] = v109;
  v160[3] = @"Curr_SoC_IQ1";
  v110 = [NSNumber numberWithDouble:v88];
  v161[3] = v110;
  v160[4] = @"Curr_SoC_IQ3";
  v111 = [NSNumber numberWithDouble:v92];
  v161[4] = v111;
  v160[5] = @"Curr_SoC_10th_Percentile";
  v112 = [NSNumber numberWithDouble:v100];
  v161[5] = v112;
  v160[6] = @"Curr_SoC_90th_Percentile";
  v113 = [NSNumber numberWithDouble:v104];
  v161[6] = v113;
  v114 = [NSDictionary dictionaryWithObjects:v161 forKeys:v160 count:7];

  v141 = v120;
  v115 = [[MLDictionaryFeatureProvider alloc] initWithDictionary:v114 error:&v141];
  v116 = v141;

  v117 = [(_OSDrainPredictor *)self log];
  if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v167 = v114;
    _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_DEFAULT, "Done with mlInputFeatures, returning it. inputDict: %@", buf, 0xCu);
  }

  v118 = v115;
  return v115;
}

@end