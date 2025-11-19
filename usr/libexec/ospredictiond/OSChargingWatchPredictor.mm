@interface OSChargingWatchPredictor
- (id)getInputFeatures:(double)a3 events:(id)a4 pluginBatteryLevel:(unint64_t)a5 timeFromPlugin:(double)a6 pluginDate:(id)a7 withLog:(id)a8;
@end

@implementation OSChargingWatchPredictor

- (id)getInputFeatures:(double)a3 events:(id)a4 pluginBatteryLevel:(unint64_t)a5 timeFromPlugin:(double)a6 pluginDate:(id)a7 withLog:(id)a8
{
  v10 = a4;
  v11 = a7;
  v12 = a8;
  v13 = +[NSCalendar currentCalendar];
  v14 = [v13 components:32 fromDate:v11];

  v103 = v14;
  v115 = [v14 hour];
  v15 = [OSIntelligenceUtilities events:v10 forHourBin:1 date:v11 withMaxDuration:12.0];
  v16 = [OSIntelligenceUtilities events:v10 forHourBin:2 date:v11 withMaxDuration:12.0];
  v17 = [OSIntelligenceUtilities events:v10 forHourBin:4 date:v11 withMaxDuration:12.0];
  v18 = [OSIntelligenceUtilities events:v10 forHourBin:8 date:v11 withMaxDuration:12.0];
  v19 = [OSIntelligenceUtilities events:v10 forHourBin:16 date:v11 withMaxDuration:12.0];
  v106 = v10;
  v20 = [OSIntelligenceUtilities events:v10 forHourBin:24 date:v11 withMaxDuration:12.0];
  [OSIntelligenceUtilities standardDeviationOf:v15];
  v22 = v21;
  [OSIntelligenceUtilities standardDeviationOf:v16];
  v24 = v23;
  [OSIntelligenceUtilities standardDeviationOf:v17];
  v26 = v25;
  [OSIntelligenceUtilities standardDeviationOf:v18];
  v28 = v27;
  [OSIntelligenceUtilities standardDeviationOf:v19];
  v30 = v29;
  [OSIntelligenceUtilities standardDeviationOf:v20];
  v32 = v31;
  [OSIntelligenceUtilities medianOf:v15];
  v107 = v33;
  [OSIntelligenceUtilities medianOf:v16];
  v109 = v34;
  [OSIntelligenceUtilities medianOf:v17];
  v111 = v35;
  [OSIntelligenceUtilities medianOf:v18];
  v113 = v36;
  v118 = v19;
  [OSIntelligenceUtilities medianOf:v19];
  v38 = v37;
  [OSIntelligenceUtilities medianOf:v20];
  v40 = v39;
  v41 = v12;
  v117 = v15;
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v42 = [NSNumber numberWithDouble:v115];
    [NSNumber numberWithUnsignedInteger:a5];
    v43 = v16;
    v45 = v44 = v20;
    [NSNumber numberWithDouble:a3];
    v47 = v46 = v17;
    [NSNumber numberWithDouble:a6];
    v49 = v48 = v18;
    *buf = 138413058;
    v132 = v42;
    v133 = 2112;
    v134 = *&v45;
    v135 = 2112;
    v136 = *&v47;
    v137 = 2112;
    v138 = v49;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Model inputs: PluginHour=%@, PluginBatteryLevel=%@, Hour=%@, TimeFromPlugin=%@", buf, 0x2Au);

    v18 = v48;
    v17 = v46;

    v20 = v44;
    v16 = v43;
    v15 = v117;
  }

  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
  {
    sub_10005C2A4();
  }

  v50 = v41;
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    v51 = [v15 count];
    *buf = 134218496;
    v132 = v51;
    v133 = 2048;
    v134 = v22;
    v135 = 2048;
    v136 = *&v107;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Model inputs for hourBin1: count %lu, std_dur_1: %f, med_dur_1: %lf", buf, 0x20u);
  }

  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
  {
    sub_10005C30C();
  }

  v52 = v50;
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    v53 = [v16 count];
    *buf = 134218496;
    v132 = v53;
    v133 = 2048;
    v134 = v24;
    v135 = 2048;
    v136 = v109;
    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Model inputs for hourBin2: count %lu, std_dur_2: %f, med_dur_2: %lf", buf, 0x20u);
  }

  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
  {
    sub_10005C374();
  }

  v54 = v52;
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    v55 = [v17 count];
    *buf = 134218496;
    v132 = v55;
    v133 = 2048;
    v134 = v26;
    v135 = 2048;
    v136 = v111;
    _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Model inputs for hourBin4: count %lu, std_dur_4: %f, med_dur_4: %lf", buf, 0x20u);
  }

  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
  {
    sub_10005C3DC();
  }

  v56 = v54;
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
  {
    v57 = [v18 count];
    *buf = 134218496;
    v132 = v57;
    v133 = 2048;
    v134 = v28;
    v135 = 2048;
    v136 = v113;
    _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Model inputs for hourBin8: count %lu, std_dur_8: %f, med_dur_8: %lf", buf, 0x20u);
  }

  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
  {
    sub_10005C444();
  }

  v58 = v56;
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    v59 = [v118 count];
    *buf = 134218496;
    v132 = v59;
    v133 = 2048;
    v134 = v30;
    v135 = 2048;
    v136 = v38;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Model inputs for hourBin16: count %lu, std_dur_16: %f, med_dur_16: %lf", buf, 0x20u);
  }

  v105 = v11;

  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
  {
    sub_10005C4AC();
  }

  v60 = v58;
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
  {
    v61 = [v20 count];
    *buf = 134218496;
    v132 = v61;
    v133 = 2048;
    v134 = v32;
    v135 = 2048;
    v136 = v40;
    _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Model inputs for hourBin24: count %lu, std_dur_24: %f, med_dur_24: %lf", buf, 0x20u);
  }

  v62 = +[NSMutableDictionary dictionary];
  v63 = [NSNumber numberWithUnsignedInteger:a5];
  [v62 setObject:v63 forKeyedSubscript:@"plugin_battery_level"];

  v64 = [NSNumber numberWithDouble:a6];
  [v62 setObject:v64 forKeyedSubscript:@"time_from_plugin"];

  v65 = [NSNumber numberWithDouble:v115];
  [v62 setObject:v65 forKeyedSubscript:@"hour"];

  v66 = [NSNumber numberWithDouble:*&v107];
  [v62 setObject:v66 forKeyedSubscript:@"med_dur_1"];

  v67 = [NSNumber numberWithDouble:v109];
  [v62 setObject:v67 forKeyedSubscript:@"med_dur_2"];

  v68 = [NSNumber numberWithDouble:v111];
  [v62 setObject:v68 forKeyedSubscript:@"med_dur_4"];

  v69 = [NSNumber numberWithDouble:v113];
  [v62 setObject:v69 forKeyedSubscript:@"med_dur_8"];

  v70 = [NSNumber numberWithDouble:v38];
  [v62 setObject:v70 forKeyedSubscript:@"med_dur_16"];

  v71 = [NSNumber numberWithDouble:v40];
  [v62 setObject:v71 forKeyedSubscript:@"med_dur_24"];

  v72 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v15 count]);
  [v62 setObject:v72 forKeyedSubscript:@"cnt_dur_1"];

  v116 = v16;
  v73 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v16 count]);
  [v62 setObject:v73 forKeyedSubscript:@"cnt_dur_2"];

  v114 = v17;
  v74 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v17 count]);
  [v62 setObject:v74 forKeyedSubscript:@"cnt_dur_4"];

  v112 = v18;
  v75 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v18 count]);
  [v62 setObject:v75 forKeyedSubscript:@"cnt_dur_8"];

  v76 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v118 count]);
  [v62 setObject:v76 forKeyedSubscript:@"cnt_dur_16"];

  v110 = v20;
  v77 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v20 count]);
  [v62 setObject:v77 forKeyedSubscript:@"cnt_dur_24"];

  v78 = [NSNumber numberWithDouble:v22];
  [v62 setObject:v78 forKeyedSubscript:@"std_dur_1"];

  v79 = [NSNumber numberWithDouble:v24];
  [v62 setObject:v79 forKeyedSubscript:@"std_dur_2"];

  v80 = [NSNumber numberWithDouble:v26];
  [v62 setObject:v80 forKeyedSubscript:@"std_dur_4"];

  v81 = [NSNumber numberWithDouble:v28];
  [v62 setObject:v81 forKeyedSubscript:@"std_dur_8"];

  v82 = [NSNumber numberWithDouble:v30];
  [v62 setObject:v82 forKeyedSubscript:@"std_dur_16"];

  v83 = [NSNumber numberWithDouble:v32];
  [v62 setObject:v83 forKeyedSubscript:@"std_dur_24"];

  v108 = [[MLDictionaryFeatureProvider alloc] initWithDictionary:v62 error:0];
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v121 = v62;
  v84 = [v62 allKeys];
  v85 = [v84 countByEnumeratingWithState:&v123 objects:v130 count:16];
  if (v85)
  {
    v86 = v85;
    v87 = *v124;
    do
    {
      v88 = 0;
      do
      {
        if (*v124 != v87)
        {
          objc_enumerationMutation(v84);
        }

        v89 = *(*(&v123 + 1) + 8 * v88);
        v90 = v60;
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
        {
          v91 = [v121 objectForKeyedSubscript:v89];
          *buf = 138412546;
          v132 = v89;
          v133 = 2112;
          v134 = *&v91;
          _os_log_debug_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEBUG, "input for feature '%@': %@", buf, 0x16u);
        }

        v88 = v88 + 1;
      }

      while (v86 != v88);
      v86 = [v84 countByEnumeratingWithState:&v123 objects:v130 count:16];
    }

    while (v86);
  }

  [v105 timeIntervalSince1970];
  v93 = floor(v92);
  v128[0] = @"pluginDateAsInterval";
  v94 = [NSNumber numberWithDouble:v93];
  v129[0] = v94;
  v129[1] = v121;
  v128[1] = @"features";
  v128[2] = @"dataVersion";
  v129[2] = &off_10009B610;
  v95 = [NSDictionary dictionaryWithObjects:v129 forKeys:v128 count:3];

  v127[0] = @"/var/mobile/Library/OSIntelligence";
  v127[1] = @"obc_features";
  v96 = [NSArray arrayWithObjects:v127 count:2];
  v97 = [NSURL fileURLWithPathComponents:v96];

  v122 = 0;
  [v95 writeToURL:v97 error:&v122];
  v98 = v122;
  if (v98)
  {
    v99 = v116;
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      sub_10005CE18();
    }
  }

  else
  {
    v100 = v60;
    v99 = v116;
    if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
    {
      v101 = [NSNumber numberWithDouble:v93];
      *buf = 138412290;
      v132 = v101;
      _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "Feature dict saved for plugin: %@", buf, 0xCu);
    }
  }

  return v108;
}

@end