id sub_100001254()
{
  if (qword_10000C810 != -1)
  {
    dispatch_once(&qword_10000C810, &stru_100008348);
  }

  v1 = qword_10000C818;

  return v1;
}

void sub_1000012A8(id a1)
{
  qword_10000C818 = os_log_create("com.apple.logd_reporter", "ReadStatistics");

  _objc_release_x1();
}

id sub_100001B5C(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKeyedSubscript:a2];
  if (v2)
  {
    objc_opt_class();
    v3 = sub_100001CE4(v2);

    if (v3)
    {
      v3 = v2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_100001BDC(const char *a1)
{
  result = strcmp(a1, "Persist");
  if (result)
  {
    if (!strcmp(a1, "Special"))
    {
      return 1;
    }

    else if (!strcmp(a1, "Signpost"))
    {
      return 2;
    }

    else if (!strcmp(a1, "HighVolume"))
    {
      return 3;
    }

    else
    {
      return 5;
    }
  }

  return result;
}

id sub_100001C64(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKeyedSubscript:a2];
  if (v2)
  {
    objc_opt_class();
    v3 = sub_100001CE4(v2);

    if (v3)
    {
      v3 = v2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_100001CE4(void *a1)
{
  v1 = a1;
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void start()
{
  sub_100002684();
  xpc_activity_register("com.apple.logd_reporter.report_statistics", XPC_ACTIVITY_CHECK_IN, &stru_100008388);
  dispatch_main();
}

size_t sub_100002684()
{
  bzero(v4, 0x400uLL);
  if (!_set_user_dir_suffix() || (result = confstr(65537, v4, 0x400uLL)) == 0)
  {
    v1 = sub_100003D2C();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      v2 = *__error();
      v3[0] = 67109120;
      v3[1] = v2;
      _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "failed to initialize temporary directory: %{darwin.errno}d", v3, 8u);
    }

    exit(1);
  }

  return result;
}

void sub_100002764(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = os_transaction_create();
  state = xpc_activity_get_state(v2);
  v5 = sub_100003D2C();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (state != 2)
  {
    if (state)
    {
      if (v6)
      {
        LODWORD(buf[0]) = 134217984;
        *(buf + 4) = state;
        v7 = "Encountered unexpected activity state: %ld";
        v8 = v5;
        v9 = 12;
        goto LABEL_14;
      }
    }

    else if (v6)
    {
      LOWORD(buf[0]) = 0;
      v7 = "Checking in for: com.apple.logd_reporter.report_statistics";
LABEL_5:
      v8 = v5;
      v9 = 2;
LABEL_14:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  if (v6)
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Activity eligible to run", buf, 2u);
  }

  v10 = v2;
  if (xpc_activity_should_defer(v10))
  {
    v11 = xpc_activity_set_state(v10, 3);

    if (v11)
    {
      v5 = sub_100003D2C();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        v7 = "Asked to defer immediately";
        goto LABEL_5;
      }

LABEL_15:

      goto LABEL_118;
    }
  }

  else
  {
  }

  v12 = v10;
  byte_10000C848 = 0;
  if (v12)
  {
    if (qword_10000C850 != -1)
    {
      dispatch_once(&qword_10000C850, &stru_100008450);
    }

    v13 = qword_10000C858;
    v14 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v13);
    v15 = qword_10000C820;
    qword_10000C820 = v14;

    if (qword_10000C820)
    {
      dispatch_source_set_timer(qword_10000C820, 0, 0x12A05F200uLL, 0x3B9ACA00uLL);
      objc_initWeak(buf, qword_10000C820);
      v16 = qword_10000C820;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100004128;
      handler[3] = &unk_100008410;
      v176 = v12;
      objc_copyWeak(&v177, buf);
      dispatch_source_set_event_handler(v16, handler);
      dispatch_source_set_cancel_handler(qword_10000C820, &stru_100008430);
      dispatch_activate(qword_10000C820);
      objc_destroyWeak(&v177);

      objc_destroyWeak(buf);
    }

    else
    {
      v17 = sub_100003DC4();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Failed to create defer timer.", buf, 2u);
      }
    }
  }

  v18 = sub_100003D2C();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Statistics report requested", buf, 2u);
  }

  v19 = time(0);
  v20 = v12;
  v21 = sub_100003DC4();
  if (os_signpost_enabled(v21))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ReportingStatisticsDirectory", "Reporting from statistics directory", buf, 2u);
  }

  v22 = [[StatisticsParser alloc] initWithUnixTimeBoundFrom:v19 - 86400 to:v19];
  v178 = 0xAAAAAAAAAAAAAAAALL;
  v179 = 0xAAAAAAAAAAAAAAAALL;
  v23 = _os_trace_persistdir_path();
  asprintf(&v179, "%s/%s", v23, "logdata.statistics.0.jsonl");
  v24 = *__error();
  v25 = _os_trace_persistdir_path();
  asprintf(&v178, "%s/%s", v25, "logdata.statistics.1.jsonl");
  v26 = *__error();
  if (!v179 || !v178)
  {
    v119 = sub_100003D2C();
    if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf[0]) = 67109376;
      DWORD1(buf[0]) = v24;
      WORD4(buf[0]) = 1024;
      *(buf + 10) = v26;
      _os_log_error_impl(&_mh_execute_header, v119, OS_LOG_TYPE_ERROR, "Unable to generate strings for paths to statistics files: %{darwin.errno}d and %{darwin.errno}d", buf, 0xEu);
    }

    free(v179);
    free(v178);
    v120 = sub_100003DC4();
    if (os_signpost_enabled(v120))
    {
      LOWORD(buf[0]) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v120, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ReportingStatisticsDirectory", "Encountered error", buf, 2u);
    }

    goto LABEL_114;
  }

  v154 = v2;
  v155 = v20;
  v153 = v3;
  sub_100003E5C(v178, v22);
  sub_100003E5C(v179, v22);
  v165 = v22;
  for (i = 0; i != 5; ++i)
  {
    v28 = objc_opt_new();
    v29 = [(StatisticsParser *)v165 topEmitters];
    v30 = [v29 objectAtIndexedSubscript:i];

    v31 = [(StatisticsParser *)v165 totalBytes];
    v32 = [v31 objectAtIndexedSubscript:i];

    v33 = [v32 unsignedLongLongValue] / 0x15180;
    v186 = @"elapsedSeconds";
    v34 = [NSNumber numberWithLong:86400];
    v191 = v34;
    v192 = v32;
    obj = v32;
    v187 = @"totalPayloadBytes";
    v188 = @"bytesPerSecond";
    v35 = [NSNumber numberWithUnsignedLongLong:v33];
    v193 = v35;
    v36 = [NSDictionary dictionaryWithObjects:&v191 forKeys:&v186 count:3];
    v173 = v28;
    [v28 addEntriesFromDictionary:v36];

    v37 = [v30 keysSortedByValueUsingComparator:&stru_100008490];
    v197 = 0u;
    v198 = 0u;
    v199 = 0u;
    v200 = 0u;
    v38 = [v37 countByEnumeratingWithState:&v197 objects:buf count:16];
    if (v38)
    {
      v39 = v38;
      v40 = 0;
      v41 = *v198;
LABEL_34:
      v42 = 0;
      while (1)
      {
        if (*v198 != v41)
        {
          objc_enumerationMutation(v37);
        }

        v43 = *(*(&v197 + 1) + 8 * v42);
        v182[0] = @"book";
        v44 = [NSNumber numberWithUnsignedLong:i];
        *v183 = v44;
        v184 = v43;
        v182[1] = @"ProcessName";
        v182[2] = @"PayloadBytes";
        v45 = [v30 objectForKeyedSubscript:v43];
        v185 = v45;
        v46 = [NSDictionary dictionaryWithObjects:v183 forKeys:v182 count:3];
        AnalyticsSendEvent();

        if (v40 == 29)
        {
          break;
        }

        v42 = v42 + 1;
        ++v40;
        if (v39 == v42)
        {
          v39 = [v37 countByEnumeratingWithState:&v197 objects:buf count:16];
          if (v39)
          {
            goto LABEL_34;
          }

          break;
        }
      }
    }

    v180 = @"book";
    v47 = [NSNumber numberWithUnsignedLong:i];
    v181 = v47;
    v48 = [NSDictionary dictionaryWithObjects:&v181 forKeys:&v180 count:1];
    [v173 addEntriesFromDictionary:v48];

    AnalyticsSendEvent();
  }

  v49 = v165;
  v50 = [(StatisticsParser *)v49 snapshotClients];
  v51 = [v50 keysSortedByValueUsingComparator:&stru_1000084B0];

  v199 = 0u;
  v200 = 0u;
  v197 = 0u;
  v198 = 0u;
  v52 = v51;
  v53 = [v52 countByEnumeratingWithState:&v197 objects:buf count:16];
  if (v53)
  {
    v54 = v53;
    v55 = 0;
    v56 = *v198;
LABEL_43:
    v57 = 0;
    while (1)
    {
      if (*v198 != v56)
      {
        objc_enumerationMutation(v52);
      }

      v191 = *(*(&v197 + 1) + 8 * v57);
      v58 = v191;
      v186 = @"snapshotClientName";
      v187 = @"snapshotCount";
      v59 = [(StatisticsParser *)v49 snapshotClients];
      v60 = [v59 objectForKeyedSubscript:v58];
      v192 = v60;
      v61 = [NSDictionary dictionaryWithObjects:&v191 forKeys:&v186 count:2];
      AnalyticsSendEvent();

      if (v55 == 4)
      {
        break;
      }

      v57 = v57 + 1;
      ++v55;
      if (v54 == v57)
      {
        v54 = [v52 countByEnumeratingWithState:&v197 objects:buf count:16];
        if (v54)
        {
          goto LABEL_43;
        }

        break;
      }
    }
  }

  v62 = v49;
  v197 = 0u;
  v198 = 0u;
  v199 = 0u;
  v200 = 0u;
  v174 = v62;
  v63 = [(StatisticsParser *)v62 quarantinedClients];
  v64 = [v63 allKeys];

  obja = v64;
  v65 = [v64 countByEnumeratingWithState:&v197 objects:buf count:16];
  if (v65)
  {
    v66 = v65;
    v67 = *v198;
    do
    {
      for (j = 0; j != v66; j = j + 1)
      {
        if (*v198 != v67)
        {
          objc_enumerationMutation(obja);
        }

        v69 = *(*(&v197 + 1) + 8 * j);
        v70 = objc_opt_new();
        v71 = [(StatisticsParser *)v174 quarantinedClients];
        v72 = [v71 objectForKeyedSubscript:v69];
        v73 = [v72 objectForKeyedSubscript:@"quarantineCount"];

        v186 = @"ProcessName";
        v187 = @"quarantineCount";
        v191 = v69;
        v192 = v73;
        v74 = [NSDictionary dictionaryWithObjects:&v191 forKeys:&v186 count:2];
        [v70 addEntriesFromDictionary:v74];

        AnalyticsSendEvent();
      }

      v66 = [obja countByEnumeratingWithState:&v197 objects:buf count:16];
    }

    while (v66);
  }

  v197 = 0u;
  v198 = 0u;
  v199 = 0u;
  v200 = 0u;
  objb = [(StatisticsParser *)v174 simulatedQuarantines];
  v75 = [objb countByEnumeratingWithState:&v197 objects:buf count:16];
  if (v75)
  {
    v76 = v75;
    v77 = *v198;
    do
    {
      for (k = 0; k != v76; k = k + 1)
      {
        if (*v198 != v77)
        {
          objc_enumerationMutation(objb);
        }

        v79 = *(*(&v197 + 1) + 8 * k);
        v186 = @"ProcessName";
        v80 = [v79 objectForKeyedSubscript:@"processName"];
        v191 = v80;
        v187 = @"book";
        v81 = [v79 objectForKeyedSubscript:@"bookId"];
        v192 = v81;
        v188 = @"timeCovered";
        v82 = [v79 objectForKeyedSubscript:@"timeCovered"];
        v193 = v82;
        v189 = @"processTotalPayloadBytes";
        v83 = [v79 objectForKeyedSubscript:@"bytes"];
        v194 = v83;
        v190 = @"overallTotalPayloadBytes";
        v84 = [v79 objectForKeyedSubscript:@"totalBytes"];
        v195 = v84;
        v85 = [NSDictionary dictionaryWithObjects:&v191 forKeys:&v186 count:5];

        AnalyticsSendEvent();
      }

      v76 = [objb countByEnumeratingWithState:&v197 objects:buf count:16];
    }

    while (v76);
  }

  is_development_build = _os_trace_is_development_build();
  v3 = v153;
  v2 = v154;
  v87 = &LineReader__metaData;
  if (!&_DRSubmitLog || !is_development_build)
  {
    goto LABEL_111;
  }

  v166 = v155;
  v88 = v174;
  v151 = sub_1000041EC();
  if (!v151)
  {
    goto LABEL_97;
  }

  v199 = 0u;
  v200 = 0u;
  v197 = 0u;
  v198 = 0u;
  v89 = [(StatisticsParser *)v88 quarantinedClients];
  v90 = [v89 allKeys];

  v156 = v90;
  v164 = [v90 countByEnumeratingWithState:&v197 objects:buf count:16];
  if (!v164)
  {
    goto LABEL_96;
  }

  v159 = 0;
  v161 = v88;
  v162 = *v198;
  while (2)
  {
    for (m = 0; m != v164; m = m + 1)
    {
      if (*v198 != v162)
      {
        objc_enumerationMutation(v156);
      }

      v92 = *(*(&v197 + 1) + 8 * m);
      v93 = objc_autoreleasePoolPush();
      v94 = v93;
      if (v87[29].base_meths)
      {
        v121 = sub_100003DC4();
        if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
        {
          *v183 = 0;
          _os_log_impl(&_mh_execute_header, v121, OS_LOG_TYPE_DEFAULT, "Interrupted early! Returning early.", v183, 2u);
        }

        objc_autoreleasePoolPop(v94);
        goto LABEL_96;
      }

      objc = v93;
      v95 = [(StatisticsParser *)v88 quarantinedClients];
      v96 = [v95 objectForKeyedSubscript:v92];
      v97 = [v96 mutableCopy];

      v98 = [v97 objectForKeyedSubscript:@"fileName"];
      v99 = [NSPredicate predicateWithFormat:@"process == %@", v92];
      v100 = [NSDateInterval alloc];
      v101 = +[NSDate distantPast];
      v102 = +[NSDate date];
      v103 = [v100 initWithStartDate:v101 endDate:v102];

      v186 = v98;
      v104 = [NSArray arrayWithObjects:&v186 count:1];
      v105 = sub_100004304(v166, v104, v99, v103);

      if (!v105 || ![v105 eventCount])
      {

        objc_autoreleasePoolPop(objc);
LABEL_84:
        v88 = v161;
        continue;
      }

      ++v159;
      v106 = [v103 endDate];
      v160 = sub_1000045FC(v106);

      v158 = [v105 aggregationsForTier:5];
      v107 = [v158 sortedArrayUsingComparator:&stru_100008530];
      v108 = [v107 firstObject];
      v109 = [v108 label];

      v157 = v98;
      if (v109)
      {
        v110 = [(__CFString *)v98 pathComponents];
        v111 = [v110 objectAtIndexedSubscript:0];
        [v97 setObject:v111 forKey:@"book"];

        [v97 setObject:v92 forKey:@"process"];
        [v97 setObject:v109 forKey:@"subsystem"];
        v112 = [NSString stringWithFormat:@"quarantine_report_%@_%@.json", v92, v160];
        v191 = v151;
        v192 = v112;
        v152 = v112;
        [NSArray arrayWithObjects:&v191 count:2];
        v114 = v113 = v109;
        v115 = [NSString pathWithComponents:v114];

        v116 = v113;
        if (sub_10000469C(v105, v115))
        {
          v117 = [NSString stringWithFormat:@"Quarantined %@ with top subsystem %@", v92, v113];
          sub_1000047CC(@"Quarantine", v117, v97, v115);
          v118 = 2 * (v159 > 4);
        }

        else
        {
          v118 = 3;
        }
      }

      else
      {
        v116 = 0;
        v118 = 3;
      }

      objc_autoreleasePoolPop(objc);
      v87 = &LineReader__metaData;
      if (v118 == 3)
      {
        goto LABEL_84;
      }

      v88 = v161;
      if (v118)
      {
        goto LABEL_96;
      }
    }

    v164 = [v156 countByEnumeratingWithState:&v197 objects:buf count:16];
    if (v164)
    {
      continue;
    }

    break;
  }

LABEL_96:

  v3 = v153;
  v2 = v154;
LABEL_97:

  v122 = v166;
  v123 = sub_1000041EC();
  if (v123)
  {
    if (v87[29].base_meths)
    {
      v124 = sub_100003DC4();
      if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_DEFAULT, "Interrupted early! Returning early.", buf, 2u);
      }
    }

    else
    {
      v125 = objc_autoreleasePoolPush();
      v126 = arc4random_uniform(0x90u);
      v127 = +[NSDate date];
      v128 = [v127 dateByAddingTimeInterval:(-600 * v126)];

      v129 = [[NSDateInterval alloc] initWithStartDate:v128 duration:600.0];
      v130 = sub_100004304(v122, 0, 0, v129);
      v131 = v130;
      if (v130 && [v130 eventCount])
      {
        v132 = [v129 endDate];
        v133 = sub_1000045FC(v132);

        v134 = [NSString stringWithFormat:@"logging_sample_%@.json", v133];
        *&buf[0] = v123;
        *(&buf[0] + 1) = v134;
        v135 = [NSArray arrayWithObjects:buf count:2];
        v136 = [NSString pathWithComponents:v135];

        if (sub_10000469C(v131, v136))
        {
          v163 = v131;
          objd = v125;
          v137 = v129;
          +[NSMutableDictionary dictionary];
          v138 = v167 = v134;
          v139 = [v137 startDate];
          v140 = sub_1000045FC(v139);
          [v138 setValue:v140 forKey:@"start_time"];

          v87 = &LineReader__metaData;
          v141 = [v137 endDate];

          v142 = sub_1000045FC(v141);
          [v138 setValue:v142 forKey:@"end_time"];

          [v138 setValue:&off_100008C90 forKey:@"interval_size"];
          v143 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v163 eventCount]);
          [v138 setValue:v143 forKey:@"total_count"];

          v144 = [v163 eventBytes];
          v145 = [NSNumber numberWithUnsignedLongLong:v144];
          [v138 setValue:v145 forKey:@"total_bytes"];

          v146 = [v138 copy];
          v134 = v167;
          v147 = [NSString stringWithFormat:@"Logging sample from %@", v133];
          sub_1000047CC(@"LoggingSample", v147, v146, v136);

          v125 = objd;
        }
      }

      else
      {
        v133 = sub_100003DC4();
        if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_DEFAULT, "No events found in aggregation interval. Not generating report.", buf, 2u);
        }
      }

      objc_autoreleasePoolPop(v125);
      v3 = v153;
      v2 = v154;
    }
  }

LABEL_111:
  v148 = sub_100003DC4();
  if (os_signpost_enabled(v148))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v148, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ReportingStatisticsDirectory", "Success!", buf, 2u);
  }

  free(v179);
  free(v178);
  base_meths = v87[29].base_meths;

  v20 = v155;
  if (base_meths)
  {
LABEL_114:
    v150 = sub_100003D2C();
    if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v150, OS_LOG_TYPE_ERROR, "Statistics report could not be generated", buf, 2u);
    }
  }

LABEL_118:
  xpc_transaction_exit_clean();
}

id sub_100003D2C()
{
  if (qword_10000C828 != -1)
  {
    dispatch_once(&qword_10000C828, &stru_1000083C8);
  }

  v1 = qword_10000C830;

  return v1;
}

void sub_100003D80(id a1)
{
  qword_10000C830 = os_log_create("com.apple.logd_reporter", "Main");

  _objc_release_x1();
}

id sub_100003DC4()
{
  if (qword_10000C838 != -1)
  {
    dispatch_once(&qword_10000C838, &stru_1000083E8);
  }

  v1 = qword_10000C840;

  return v1;
}

void sub_100003E18(id a1)
{
  qword_10000C840 = os_log_create("com.apple.logd_reporter", "ReportStatistics");

  _objc_release_x1();
}

void sub_100003E5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100003DC4();
  if (os_signpost_enabled(v4))
  {
    *buf = 136315138;
    v23 = a1;
  }

  v5 = [LineReader alloc];
  v6 = [NSString stringWithUTF8String:a1];
  v7 = [(LineReader *)v5 initWithFile:v6];

  v8 = objc_autoreleasePoolPush();
  v9 = [(LineReader *)v7 nextLine];
  if (v9)
  {
    v11 = v9;
    v12 = 0;
    v13 = 1;
    *&v10 = 136446978;
    v20 = v10;
    do
    {
      v21 = 0;
      v14 = [v3 feedJSONLine:v11 error:{&v21, v20}];
      v15 = v21;
      if ((v14 & 1) == 0 && (v12 & 1) == 0)
      {
        v16 = sub_100003DC4();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v11 UTF8String];
          *buf = v20;
          v23 = a1;
          v24 = 1024;
          v25 = v13;
          v26 = 2082;
          v27 = v17;
          v28 = 2114;
          v29 = v15;
        }

        v12 = 1;
      }

      objc_autoreleasePoolPop(v8);
      v8 = objc_autoreleasePoolPush();
      v11 = [(LineReader *)v7 nextLine];
      ++v13;
    }

    while (v11);
    objc_autoreleasePoolPop(v8);
    if (v12)
    {
      v18 = sub_100003DC4();
      if (os_signpost_enabled(v18))
      {
        *buf = 0;
        v19 = "Encountered error";
LABEL_17:
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ReportingStatisticsFile", v19, buf, 2u);
        goto LABEL_18;
      }

      goto LABEL_18;
    }
  }

  else
  {
    objc_autoreleasePoolPop(v8);
  }

  v18 = sub_100003DC4();
  if (os_signpost_enabled(v18))
  {
    *buf = 0;
    v19 = "Success!";
    goto LABEL_17;
  }

LABEL_18:
}

void sub_100004128(uint64_t a1)
{
  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v2 = sub_100003DC4();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Trying to stop in-flight reporting work.", v4, 2u);
    }

    byte_10000C848 = 1;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    dispatch_source_cancel(WeakRetained);
  }
}

const __CFString *sub_1000041EC()
{
  v0 = +[NSFileManager defaultManager];
  v7 = 0;
  v1 = @"/private/var/mobile/Library/Logs/com.apple.logd_reporter";
  v2 = [v0 createDirectoryAtPath:@"/private/var/mobile/Library/Logs/com.apple.logd_reporter" withIntermediateDirectories:1 attributes:0 error:&v7];
  v3 = v7;

  if ((v2 & 1) == 0)
  {
    v4 = sub_100003DC4();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = [v3 localizedDescription];
      *buf = 138412290;
      v9 = v6;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error initialising output directory for quarantine reports: %@", buf, 0xCu);
    }

    v1 = 0;
  }

  return v1;
}

NSObject *sub_100004304(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = a2;
  v25 = 0;
  v10 = [[OSLogStatistics alloc] initWithLogArchivePath:0 forRelativePaths:v9 errorOut:&v25];

  v11 = v25;
  if (v10)
  {
    if (a1)
    {
      [v10 setEventHandler:&stru_1000084F0];
    }

    v12 = [v8 startDate];
    v13 = [v8 endDate];
    v24 = v11;
    v14 = [v10 aggregationForLogReporterWithStartDate:v12 endDate:v13 predicate:v7 withOptions:7 catalogCacheSize:30 dataCacheSize:30 errorOut:&v24];
    v15 = v24;

    if (!v14)
    {
      v18 = sub_100003DC4();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v22 = [v7 description];
        v23 = [v15 localizedDescription];
        *buf = 138412546;
        v27 = v22;
        v28 = 2112;
        v29 = v23;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Error during aggregations of OSLogStatistics for predicate %@ : %@", buf, 0x16u);
      }

      v14 = 0;
      goto LABEL_15;
    }

    if (byte_10000C848)
    {
      v16 = sub_100003DC4();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Asked to defer readback. Launch conditions no longer met.", buf, 2u);
      }

LABEL_15:
      v17 = 0;
      goto LABEL_17;
    }

    v14 = v14;
    v17 = v14;
  }

  else
  {
    v14 = sub_100003DC4();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v20 = [v7 description];
      v21 = [v11 localizedDescription];
      *buf = 138412546;
      v27 = v20;
      v28 = 2112;
      v29 = v21;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Error during initialisation of OSLogStatistics for predicate %@: %@", buf, 0x16u);
    }

    v17 = 0;
    v15 = v11;
  }

LABEL_17:

  return v17;
}

id sub_1000045FC(void *a1)
{
  v1 = a1;
  v2 = +[NSTimeZone defaultTimeZone];
  v3 = objc_alloc_init(NSDateFormatter);
  [v3 setTimeZone:v2];
  [v3 setDateFormat:@"yyyy-MM-dd-HHmm"];
  v4 = [v3 stringFromDate:v1];

  return v4;
}

id sub_10000469C(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 jsonDescription:0];
  v10 = 0;
  v5 = [v4 writeToFile:v3 atomically:0 encoding:4 error:&v10];
  v6 = v10;
  if ((v5 & 1) == 0)
  {
    v7 = sub_100003DC4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = [v6 localizedDescription];
      *buf = 138412546;
      v12 = v3;
      v13 = 2112;
      v14 = v9;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error writing aggregations at path %@: %@", buf, 0x16u);
    }
  }

  return v5;
}

void sub_1000047CC(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = +[NSFileManager defaultManager];
  v28 = NSFileGroupOwnerAccountName;
  v35 = @"_analyticsusers";
  v12 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v28 count:1];
  v27 = 0;
  v13 = [v11 setAttributes:v12 ofItemAtPath:v8 error:&v27];
  v14 = v27;

  if ((v13 & 1) == 0)
  {
    v15 = sub_100003DC4();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v25 = [v14 localizedDescription];
      *buf = 138412290;
      v30 = v25;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "setAttributes: %@", buf, 0xCu);
    }
  }

  v16 = DRSubmitLog();
  v17 = 0;
  if ((v16 & 1) == 0)
  {
    v18 = sub_100003DC4();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v26 = [v17 localizedDescription];
      *buf = 138412546;
      v30 = v7;
      v31 = 2112;
      v32 = v26;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Error during submission of %@ report : %@", buf, 0x16u);
    }
  }

  v19 = [v8 fileSystemRepresentation];
  v35 = 65540;
  v20 = fsctl(v19, 0xC0084A44uLL, &v35, 0);
  v21 = sub_100003DC4();
  v22 = v21;
  if (v20)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v23 = __error();
      v24 = strerror(*v23);
      *buf = 136315650;
      v30 = v19;
      v31 = 2080;
      v32 = v24;
      v33 = 2048;
      v34 = v35;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to mark %s as purgeable %s (flags 0x%llx)\n", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v30 = v19;
    v31 = 2048;
    v32 = v35;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Marked %s purgeable with flags 0x%llx\n", buf, 0x16u);
  }
}

int64_t sub_100004B24(id a1, OSLogStatisticsAggregation *a2, OSLogStatisticsAggregation *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(OSLogStatisticsAggregation *)v4 eventBytes];
  if (v6 <= [(OSLogStatisticsAggregation *)v5 eventBytes])
  {
    v8 = [(OSLogStatisticsAggregation *)v4 eventBytes];
    v7 = v8 != [(OSLogStatisticsAggregation *)v5 eventBytes];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

void sub_100004BD4(id a1)
{
  v1 = qword_10000C820;
  qword_10000C820 = 0;

  v2 = sub_100003DC4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Defer timer cancelled", v3, 2u);
  }
}

void sub_100004C78(id a1)
{
  qword_10000C858 = dispatch_queue_create("com.apple.logd_reporter.defer_polling_queue", 0);

  _objc_release_x1();
}