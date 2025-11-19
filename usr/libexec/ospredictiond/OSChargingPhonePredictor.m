@interface OSChargingPhonePredictor
- (double)timeUntilNextChargeSessionOfMinDuration:(double)a3 fromSOC:(int64_t)a4 WithError:(id *)a5;
- (id)getInputFeatures:(double)a3 events:(id)a4 pluginBatteryLevel:(unint64_t)a5 timeFromPlugin:(double)a6 pluginDate:(id)a7 withLog:(id)a8;
- (id)getMultiArrayForFeatureDict:(id)a3;
@end

@implementation OSChargingPhonePredictor

- (id)getInputFeatures:(double)a3 events:(id)a4 pluginBatteryLevel:(unint64_t)a5 timeFromPlugin:(double)a6 pluginDate:(id)a7 withLog:(id)a8
{
  v10 = a7;
  v115 = a8;
  v11 = a4;
  v12 = [OSIntelligenceUtilities filterEventsSortedByStartDateAscending:v11 startsBefore:v10 dynamicallyAroundDate:v10 withHourBinWidth:1];
  v13 = [OSIntelligenceUtilities filterEventsSortedByStartDateAscending:v11 startsBefore:v10 dynamicallyAroundDate:v10 withHourBinWidth:2];
  v14 = [OSIntelligenceUtilities filterEventsSortedByStartDateAscending:v11 startsBefore:v10 dynamicallyAroundDate:v10 withHourBinWidth:4];
  v15 = [OSIntelligenceUtilities filterEventsSortedByStartDateAscending:v11 startsBefore:v10 dynamicallyAroundDate:v10 withHourBinWidth:8];
  v16 = [OSIntelligenceUtilities filterEventsSortedByStartDateAscending:v11 startsBefore:v10 dynamicallyAroundDate:v10 withHourBinWidth:16];
  v17 = [OSIntelligenceUtilities filterEventsSortedByStartDateAscending:v11 startsBefore:v10 dynamicallyAroundDate:v10 withHourBinWidth:24];

  v18 = [OSIntelligenceUtilities filterEvents:v12 startOnSameWeekdayAs:v10];
  v142 = v13;
  v146 = [OSIntelligenceUtilities filterEvents:v13 startOnSameWeekdayAs:v10];
  v19 = v14;
  v114 = v14;
  v20 = [OSIntelligenceUtilities filterEvents:v14 startOnSameWeekdayAs:v10];
  v145 = [OSIntelligenceUtilities filterEvents:v15 startOnSameWeekdayAs:v10];
  v126 = v10;
  v144 = [OSIntelligenceUtilities filterEvents:v17 startOnSameWeekdayAs:v10];
  v143 = v12;
  v21 = [OSIntelligenceUtilities getDurationsFromEvents:v12 withUnit:3600.0 cappedAt:0.0];
  v22 = [OSIntelligenceUtilities getDurationsFromEvents:v13 withUnit:3600.0 cappedAt:0.0];
  v23 = [OSIntelligenceUtilities getDurationsFromEvents:v19 withUnit:3600.0 cappedAt:0.0];
  v149 = v15;
  v24 = [OSIntelligenceUtilities getDurationsFromEvents:v15 withUnit:3600.0 cappedAt:0.0];
  v148 = v16;
  v25 = [OSIntelligenceUtilities getDurationsFromEvents:v16 withUnit:3600.0 cappedAt:0.0];
  v147 = v17;
  v26 = [OSIntelligenceUtilities getDurationsFromEvents:v17 withUnit:3600.0 cappedAt:0.0];
  v128 = v18;
  v141 = [OSIntelligenceUtilities getDurationsFromEvents:v18 withUnit:3600.0 cappedAt:0.0];
  v140 = [OSIntelligenceUtilities getDurationsFromEvents:v146 withUnit:3600.0 cappedAt:0.0];
  v127 = v20;
  v27 = [OSIntelligenceUtilities getDurationsFromEvents:v20 withUnit:3600.0 cappedAt:0.0];
  v28 = [OSIntelligenceUtilities getDurationsFromEvents:v145 withUnit:3600.0 cappedAt:0.0];
  v29 = [OSIntelligenceUtilities getDurationsFromEvents:v144 withUnit:3600.0 cappedAt:0.0];
  [OSIntelligenceUtilities standardDeviationOf:v21];
  v134 = v30;
  [OSIntelligenceUtilities standardDeviationOf:v22];
  v135 = v31;
  [OSIntelligenceUtilities standardDeviationOf:v23];
  v138 = v32;
  [OSIntelligenceUtilities standardDeviationOf:v24];
  v34 = v33;
  [OSIntelligenceUtilities standardDeviationOf:v25];
  v36 = v35;
  [OSIntelligenceUtilities standardDeviationOf:v26];
  v38 = v37;
  [OSIntelligenceUtilities standardDeviationOf:v27];
  v40 = v39;
  [OSIntelligenceUtilities medianOf:v21];
  v42 = v41;
  v124 = v22;
  [OSIntelligenceUtilities medianOf:v22];
  v129 = v43;
  v123 = v23;
  v44 = v23;
  v45 = v114;
  [OSIntelligenceUtilities medianOf:v44];
  v130 = v46;
  v122 = v24;
  [OSIntelligenceUtilities medianOf:v24];
  v131 = v47;
  v121 = v25;
  [OSIntelligenceUtilities medianOf:v25];
  v132 = v48;
  v120 = v26;
  [OSIntelligenceUtilities medianOf:v26];
  v133 = v49;
  [OSIntelligenceUtilities medianOf:v141];
  v137 = v50;
  [OSIntelligenceUtilities medianOf:v140];
  v139 = v51;
  v119 = v27;
  [OSIntelligenceUtilities medianOf:v27];
  v53 = v52;
  v118 = v28;
  [OSIntelligenceUtilities medianOf:v28];
  v55 = v54;
  v117 = v29;
  [OSIntelligenceUtilities medianOf:v29];
  v57 = v56;
  v58 = v115;
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    v59 = [NSNumber numberWithUnsignedInteger:a5];
    v60 = [NSNumber numberWithDouble:a3];
    v61 = [NSNumber numberWithDouble:a6];
    *buf = 138412802;
    v157 = *&v59;
    v158 = 2112;
    v159 = *&v60;
    v160 = 2112;
    v161 = *&v61;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Model inputs: PluginBatteryLevel=%@, Hour=%@, TimeFromPlugin=%@", buf, 0x20u);

    v45 = v114;
  }

  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
  {
    sub_10005C2A4();
  }

  v62 = v58;
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
  {
    v63 = [v143 count];
    *buf = 134218496;
    v157 = *&v63;
    v158 = 2048;
    v159 = v134;
    v160 = 2048;
    v161 = v42;
    _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Model inputs for hourBin1: count %lu, std_dur_1: %f, med_dur_1: %lf", buf, 0x20u);
  }

  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
  {
    sub_10005C30C();
  }

  v64 = v62;
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
  {
    v65 = [v142 count];
    *buf = 134218496;
    v157 = *&v65;
    v158 = 2048;
    v159 = v135;
    v160 = 2048;
    v161 = v129;
    _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Model inputs for hourBin2: count %lu, std_dur_2: %f, med_dur_2: %lf", buf, 0x20u);
  }

  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
  {
    sub_10005C374();
  }

  v66 = v64;
  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
  {
    v67 = [v45 count];
    *buf = 134218496;
    v157 = *&v67;
    v158 = 2048;
    v159 = v138;
    v160 = 2048;
    v161 = v130;
    _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Model inputs for hourBin4: count %lu, std_dur_4: %f, med_dur_4: %lf", buf, 0x20u);
  }

  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
  {
    sub_10005C3DC();
  }

  v68 = v66;
  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
  {
    v69 = [v149 count];
    *buf = 134218496;
    v157 = *&v69;
    v158 = 2048;
    v159 = v34;
    v160 = 2048;
    v161 = v131;
    _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "Model inputs for hourBin8: count %lu, std_dur_8: %f, med_dur_8: %lf", buf, 0x20u);
  }

  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
  {
    sub_10005C444();
  }

  v70 = v68;
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
  {
    v71 = [v148 count];
    *buf = 134218496;
    v157 = *&v71;
    v158 = 2048;
    v159 = v36;
    v160 = 2048;
    v161 = v132;
    _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "Model inputs for hourBin16: count %lu, std_dur_16: %f, med_dur_16: %lf", buf, 0x20u);
  }

  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
  {
    sub_10005C4AC();
  }

  v72 = v70;
  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    v73 = [v147 count];
    *buf = 134218496;
    v157 = *&v73;
    v158 = 2048;
    v159 = v38;
    v160 = 2048;
    v161 = v133;
    _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "Model inputs for hourBin24: count %lu, std_dur_24: %f, med_dur_24: %lf", buf, 0x20u);
  }

  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
  {
    sub_10005C514();
  }

  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v157 = v137;
    _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "Model inputs for weekday1: weekday_med_dur_1: %lf", buf, 0xCu);
  }

  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
  {
    sub_10005C57C();
  }

  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v157 = v139;
    _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "Model inputs for weekday2: weekday_med_dur_2: %lf", buf, 0xCu);
  }

  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
  {
    sub_10005C5E4();
  }

  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v157 = v53;
    v158 = 2048;
    v159 = v40;
    _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "Model inputs for weekday4: weekday_med_dur_4: %lf, weekday_std_dur_4: %lf", buf, 0x16u);
  }

  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
  {
    sub_10005C64C();
  }

  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v157 = v55;
    _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "Model inputs for weekday8: weekday_med_dur_8: %lf", buf, 0xCu);
  }

  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
  {
    sub_10005C6B4();
  }

  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v157 = v57;
    _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "Model inputs for weekday24: weekday_med_dur_24: %lf", buf, 0xCu);
  }

  v74 = +[NSMutableDictionary dictionary];
  v75 = [NSNumber numberWithUnsignedInteger:a5];
  [v74 setObject:v75 forKeyedSubscript:@"plugin_battery_level"];

  v76 = [NSNumber numberWithDouble:a6];
  [v74 setObject:v76 forKeyedSubscript:@"time_from_plugin"];

  v77 = [NSNumber numberWithDouble:v42];
  [v74 setObject:v77 forKeyedSubscript:@"med_dur_1"];

  v78 = [NSNumber numberWithDouble:v129];
  [v74 setObject:v78 forKeyedSubscript:@"med_dur_2"];

  v79 = [NSNumber numberWithDouble:v130];
  [v74 setObject:v79 forKeyedSubscript:@"med_dur_4"];

  v80 = [NSNumber numberWithDouble:v131];
  [v74 setObject:v80 forKeyedSubscript:@"med_dur_8"];

  v81 = [NSNumber numberWithDouble:v132];
  [v74 setObject:v81 forKeyedSubscript:@"med_dur_16"];

  v82 = [NSNumber numberWithDouble:v133];
  [v74 setObject:v82 forKeyedSubscript:@"med_dur_24"];

  v83 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v143 count]);
  [v74 setObject:v83 forKeyedSubscript:@"cnt_dur_1"];

  v84 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v142 count]);
  [v74 setObject:v84 forKeyedSubscript:@"cnt_dur_2"];

  v85 = v45;
  v86 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v45 count]);
  [v74 setObject:v86 forKeyedSubscript:@"cnt_dur_4"];

  v87 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v149 count]);
  [v74 setObject:v87 forKeyedSubscript:@"cnt_dur_8"];

  v88 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v148 count]);
  [v74 setObject:v88 forKeyedSubscript:@"cnt_dur_16"];

  v89 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v147 count]);
  [v74 setObject:v89 forKeyedSubscript:@"cnt_dur_24"];

  v90 = [NSNumber numberWithDouble:v134];
  [v74 setObject:v90 forKeyedSubscript:@"std_dur_1"];

  v91 = [NSNumber numberWithDouble:v135];
  [v74 setObject:v91 forKeyedSubscript:@"std_dur_2"];

  v92 = [NSNumber numberWithDouble:v138];
  [v74 setObject:v92 forKeyedSubscript:@"std_dur_4"];

  v93 = [NSNumber numberWithDouble:v34];
  [v74 setObject:v93 forKeyedSubscript:@"std_dur_8"];

  v94 = [NSNumber numberWithDouble:v36];
  [v74 setObject:v94 forKeyedSubscript:@"std_dur_16"];

  v95 = [NSNumber numberWithDouble:v38];
  [v74 setObject:v95 forKeyedSubscript:@"std_dur_24"];

  v96 = [NSNumber numberWithDouble:v137];
  [v74 setObject:v96 forKeyedSubscript:@"weekday_med_dur_1"];

  v97 = [NSNumber numberWithDouble:v139];
  [v74 setObject:v97 forKeyedSubscript:@"weekday_med_dur_2"];

  v98 = [NSNumber numberWithDouble:v53];
  [v74 setObject:v98 forKeyedSubscript:@"weekday_med_dur_4"];

  v99 = [NSNumber numberWithDouble:v55];
  [v74 setObject:v99 forKeyedSubscript:@"weekday_med_dur_8"];

  v100 = [NSNumber numberWithDouble:v57];
  [v74 setObject:v100 forKeyedSubscript:@"weekday_med_dur_24"];

  v101 = [NSNumber numberWithDouble:v40];
  [v74 setObject:v101 forKeyedSubscript:@"weekday_std_dur_4"];

  v102 = [[MLDictionaryFeatureProvider alloc] initWithDictionary:v74 error:0];
  [v126 timeIntervalSince1970];
  v104 = floor(v103);
  v154[0] = @"pluginDateAsInterval";
  v105 = [NSNumber numberWithDouble:v104];
  v155[0] = v105;
  v155[1] = v74;
  v154[1] = @"features";
  v154[2] = @"dataVersion";
  v155[2] = &off_10009B628;
  v106 = [NSDictionary dictionaryWithObjects:v155 forKeys:v154 count:3];

  v153[0] = @"/var/mobile/Library/OSIntelligence";
  v153[1] = @"obc_features";
  v107 = [NSArray arrayWithObjects:v153 count:2];
  v108 = [NSURL fileURLWithPathComponents:v107];

  v152 = 0;
  [v106 writeToURL:v108 error:&v152];
  v109 = v152;
  if (v109)
  {
    v151.receiver = self;
    v151.super_class = OSChargingPhonePredictor;
    v110 = [(OSChargingTwoStagePredictor *)&v151 log];
    if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
    {
      sub_10005CE8C();
    }
  }

  else
  {
    v150.receiver = self;
    v150.super_class = OSChargingPhonePredictor;
    v110 = [(OSChargingTwoStagePredictor *)&v150 log];
    if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
    {
      v111 = [NSNumber numberWithDouble:v104];
      *buf = 138412290;
      v157 = *&v111;
      _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_DEFAULT, "Feature dict saved for plugin: %@", buf, 0xCu);
    }
  }

  return v102;
}

- (id)getMultiArrayForFeatureDict:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [&off_10009CC60 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (!v5)
  {
    goto LABEL_15;
  }

  v7 = v5;
  v8 = v4;
  v19 = 0;
  v9 = *v24;
  *&v6 = 138412290;
  v18 = v6;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v24 != v9)
      {
        objc_enumerationMutation(&off_10009CC60);
      }

      v11 = *(*(&v23 + 1) + 8 * i);
      v12 = [v3 objectForKeyedSubscript:{v11, v18}];
      [v12 doubleValue];
      v13 = [NSNumber numberWithDouble:?];

      if (v13)
      {
        [v8 addObject:v13];
      }

      else
      {
        v22.receiver = self;
        v22.super_class = OSChargingPhonePredictor;
        v14 = [(OSChargingTwoStagePredictor *)&v22 log];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = v18;
          v28 = v11;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Error: feature value for key '%@' is nil", buf, 0xCu);
        }

        v19 = 1;
      }
    }

    v7 = [&off_10009CC60 countByEnumeratingWithState:&v23 objects:v29 count:16];
  }

  while (v7);
  v4 = v8;
  if (v19)
  {
    v15 = 0;
  }

  else
  {
LABEL_15:
    v16 = [NSArray arrayWithArray:v4];
    v21.receiver = self;
    v21.super_class = OSChargingPhonePredictor;
    v15 = [(OSChargingTwoStagePredictor *)&v21 arrayWithShape:&off_10009CC78 values:v16 type:65568];
  }

  return v15;
}

- (double)timeUntilNextChargeSessionOfMinDuration:(double)a3 fromSOC:(int64_t)a4 WithError:(id *)a5
{
  v68 = +[NSMutableArray array];
  v66 = +[NSMutableDictionary dictionary];
  v8 = [NSSet setWithArray:&off_10009CC90];
  v9 = [NSDateInterval alloc];
  v10 = [NSDate dateWithTimeIntervalSinceNow:-7776000.0];
  v11 = +[NSDate date];
  v12 = [v9 initWithStartDate:v10 endDate:v11];

  v13 = [NSNumber numberWithInteger:a4 - 1];
  v14 = [NSNumber numberWithInteger:a4 + 1];
  v15 = [NSPredicate predicateWithFormat:@"CurrentCapacity >= %@ AND CurrentCapacity <= %@", v13, v14];

  [NSPredicate predicateWithFormat:@"IsCharging == %@", &__kCFBooleanFalse];
  v90 = v89 = v15;
  v65 = v90;
  v16 = [NSArray arrayWithObjects:&v89 count:2];
  v17 = [NSCompoundPredicate andPredicateWithSubpredicates:v16];

  v64 = v17;
  v18 = PPSCreateSubsystemCategoryPredicate();
  v19 = [[PPSTimeSeriesRequest alloc] initWithMetrics:v8 predicate:v18 timeFilter:v12 limitCount:10000 offsetCount:0 readDirection:0];
  v85 = 0;
  v67 = PerfPowerServicesGetData();
  v20 = 0;
  if (v20)
  {
    v21 = v20;
    v84.receiver = self;
    v84.super_class = OSChargingPhonePredictor;
    v22 = [(OSChargingTwoStagePredictor *)&v84 log];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10005CEF4();
    }

    *a5 = [NSError errorWithDomain:@"com.apple.OSIntelligence" code:4 userInfo:0];
    v23 = -1.0;
    v24 = v66;
    goto LABEL_43;
  }

  v83.receiver = self;
  v83.super_class = OSChargingPhonePredictor;
  v69 = self;
  v25 = [(OSChargingTwoStagePredictor *)&v83 log];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v88 = v67;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Battery levels response is %@", buf, 0xCu);
  }

  v26 = [NSSet setWithArray:&off_10009CCA8];

  v27 = PPSCreateSubsystemCategoryPredicate();

  v28 = [[PPSTimeSeriesRequest alloc] initWithMetrics:v26 predicate:v27 timeFilter:v12 limitCount:20000 offsetCount:0 readDirection:0];
  v82 = 0;
  v29 = PerfPowerServicesGetData();
  v21 = 0;
  if (v21)
  {
    v81.receiver = self;
    v81.super_class = OSChargingPhonePredictor;
    v30 = [(OSChargingTwoStagePredictor *)&v81 log];
    v24 = v66;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_10005CEF4();
    }

    *a5 = [NSError errorWithDomain:@"com.apple.OSIntelligence" code:4 userInfo:0];
    v23 = -1.0;
    goto LABEL_42;
  }

  v60 = v27;
  v61 = v26;
  v80.receiver = self;
  v80.super_class = OSChargingPhonePredictor;
  v31 = [(OSChargingTwoStagePredictor *)&v80 log];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v88 = v29;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Plugged in response is %@", buf, 0xCu);
  }

  v59 = v28;
  v62 = v15;
  v63 = v12;

  v58 = v29;
  v32 = [v29 objectEnumerator];
  v33 = &MGGetBoolAnswer_ptr;
  v34 = +[NSDate distantPast];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = v67;
  v73 = [obj countByEnumeratingWithState:&v76 objects:v86 count:16];
  v35 = 0;
  if (!v73)
  {
    v37 = &MGGetBoolAnswer_ptr;
    goto LABEL_39;
  }

  v36 = *v77;
  v37 = &MGGetBoolAnswer_ptr;
  do
  {
    for (i = 0; i != v73; i = i + 1)
    {
      if (*v77 != v36)
      {
        objc_enumerationMutation(obj);
      }

      v39 = v33[212];
      [*(*(&v76 + 1) + 8 * i) epochTimestamp];
      v40 = [v39 dateWithTimeIntervalSince1970:?];
      [v40 timeIntervalSinceDate:v34];
      if (v41 >= 3600.0)
      {
        v71 = v34;
        v42 = 0.0;
        while (1)
        {
          v43 = [v32 nextObject];
          if (!v43)
          {
LABEL_30:
            v75.receiver = v69;
            v75.super_class = OSChargingPhonePredictor;
            v51 = [(OSChargingTwoStagePredictor *)&v75 log];
            v37 = &MGGetBoolAnswer_ptr;
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              v52 = [NSNumber numberWithDouble:v42];
              *buf = 138412290;
              v88 = v52;
              _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Adding duration %@", buf, 0xCu);
            }

            if (v42 > 1800.0)
            {
              v53 = [NSNumber numberWithDouble:v42];
              [v68 addObject:v53];
            }

            v34 = v40;

            v33 = &MGGetBoolAnswer_ptr;
            break;
          }

          v44 = v43;
          v45 = [v43 metricKeysAndValues];
          v46 = [v45 objectForKeyedSubscript:@"IsCharging"];
          v47 = [v46 BOOLValue];

          if (v47)
          {
            if (!v35)
            {
              [v44 epochTimestamp];
              v48 = [NSDate dateWithTimeIntervalSince1970:?];
              [v48 timeIntervalSinceDate:v40];
              if (v49 <= 0.0)
              {
                goto LABEL_27;
              }

              v48 = v48;
              v35 = v48;
              goto LABEL_28;
            }
          }

          else if (v35)
          {
            [v44 epochTimestamp];
            v48 = [NSDate dateWithTimeIntervalSince1970:?];
            [v48 timeIntervalSinceDate:v35];
            v42 = v50;

LABEL_27:
            v35 = 0;
LABEL_28:
          }

          if (v42 >= a3)
          {
            goto LABEL_30;
          }
        }
      }
    }

    v73 = [obj countByEnumeratingWithState:&v76 objects:v86 count:16];
  }

  while (v73);
LABEL_39:

  [OSIntelligenceUtilities medianOf:v68];
  v23 = v54;
  v74.receiver = v69;
  v74.super_class = OSChargingPhonePredictor;
  v55 = [(OSChargingTwoStagePredictor *)&v74 log];
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    v56 = [v37[187] numberWithDouble:v23];
    *buf = 138412290;
    v88 = v56;
    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Returning timme till PluggedIn %@", buf, 0xCu);
  }

  v24 = v66;
  v15 = v62;
  v12 = v63;
  v26 = v61;
  v21 = 0;
  v28 = v59;
  v27 = v60;
  v29 = v58;
LABEL_42:

  v19 = v28;
  v18 = v27;
  v8 = v26;
LABEL_43:

  return v23;
}

@end