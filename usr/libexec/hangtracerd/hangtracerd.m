void sub_1000017D8(id a1)
{
  v1 = mach_absolute_time();
  v2 = +[HTPrefs sharedPrefs];
  v3 = [v2 runLoopHangPerPeriodLogLimit];

  if (v3 >= 1)
  {
    v4 = +[HTPrefs sharedPrefs];
    v5 = [v4 reportPeriodMATU];
    v6 = +[HTPrefs sharedPrefs];
    v7 = v5 / [v6 runLoopHangPerPeriodLogLimit];

    if (v1 - qword_1000678D8 > v7)
    {
      +[HTTailspin refreshAppGeneratedLogsCount];
      qword_1000678D8 = v1;
    }
  }

  if (qword_1000678E0)
  {
    if (v1 - qword_1000678E0 < 0x1E2CC310001)
    {
      goto LABEL_8;
    }

    +[HTTailspin resetLogCountsForDailyRollover];
  }

  qword_1000678E0 = v1;
LABEL_8:
  if (v1 - qword_1000678E8 >= 0x141DD76001)
  {
    v8 = sub_100003824();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100030B4C();
    }

    qword_1000678E8 = v1;
    v9 = +[NSDate date];
    [v9 timeIntervalSinceReferenceDate];
    v11 = v10;
    v12 = +[HTPrefs sharedPrefs];
    [v12 eplTimeoutTimestampSec];
    v14 = v13;

    if (v11 >= v14)
    {
      v49 = v9;
      v15 = sub_100003824();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "PLDE failed to turn EPL off properly, turning off hangtracerd", buf, 2u);
      }

      v16 = +[RMECacheEnumerator getEPLProfilePath];
      if (v16)
      {
        v17 = +[NSFileManager defaultManager];
        v63 = 0;
        v18 = [v17 removeItemAtPath:v16 error:&v63];
        v19 = v63;

        v20 = sub_100003824();
        v21 = v20;
        if (v18)
        {
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v69 = v16;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Deleted ReportMemoryException plist at %@", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_100030B80(v16, v19);
        }
      }

      v50 = v1;

      v22 = sub_10002B7C8(@"com.apple.da", @"mobile", @"HTEPL");
      v48 = sub_10002B7C8(@"com.apple.hangtracer", @"mobile", @"HTEPL");
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      obj = v22;
      v23 = [obj countByEnumeratingWithState:&v59 objects:buf count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v60;
        do
        {
          for (i = 0; i != v24; i = i + 1)
          {
            if (*v60 != v25)
            {
              objc_enumerationMutation(obj);
            }

            v27 = *(*(&v59 + 1) + 8 * i);
            v28 = sub_100003824();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *v66 = 138412290;
              v67 = v27;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Removing OTA Key: %@", v66, 0xCu);
            }

            CFPreferencesSetValue(v27, 0, @"com.apple.da", @"mobile", kCFPreferencesAnyHost);
          }

          v24 = [obj countByEnumeratingWithState:&v59 objects:buf count:16];
        }

        while (v24);
      }

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v29 = v48;
      v30 = [v29 countByEnumeratingWithState:&v55 objects:v66 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v56;
        do
        {
          for (j = 0; j != v31; j = j + 1)
          {
            if (*v56 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v55 + 1) + 8 * j);
            v35 = sub_100003824();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *v64 = 138412290;
              v65 = v34;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Removing HT Key: %@", v64, 0xCu);
            }

            CFPreferencesSetValue(v34, 0, @"com.apple.hangtracer", @"mobile", kCFPreferencesAnyHost);
          }

          v31 = [v29 countByEnumeratingWithState:&v55 objects:v66 count:16];
        }

        while (v31);
      }

      v36 = sub_100014494(0);
      v37 = sub_100003824();
      v38 = v37;
      if (v36)
      {
        v9 = v49;
        v1 = v50;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *v64 = 0;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Successfully reset tailspin to default system configuration", v64, 2u);
        }
      }

      else
      {
        v9 = v49;
        v1 = v50;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          sub_100030C2C();
        }
      }

      sub_10001A2CC(@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/HangTracer/");
      sub_10001A60C(0);
      notify_post(off_100067670[0]);
      notify_post(off_100067668[0]);
    }
  }

  if (v1 - qword_1000678F0 >= 0x283BAEC001)
  {
    v39 = sub_100003824();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      *v64 = 136315138;
      v65 = "checkForTimeouts";
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "%s: Checking tailspin processing rates for hangtracerd and hangreporter", v64, 0xCu);
    }

    qword_1000678F0 = v1;
    v53 = 0;
    v54 = 0;
    v40 = [HTHangreporterKickstartTelemetry collectTailspinSpoolData:&v54 error:&v53];
    v41 = v54;
    v42 = v53;
    v43 = sub_100003824();
    v44 = v43;
    if (v40)
    {
      if (v41)
      {
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          *v64 = 138412290;
          v65 = v41;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "Collected tailspin data %@. Attempting to emit hangreporter tailspin processing telemetry.", v64, 0xCu);
        }

        v52 = v42;
        v45 = [HTHangreporterKickstartTelemetry emitTailspinProcessingEvent:v41 error:&v52];
        v46 = v52;

        v47 = sub_100003824();
        v44 = v47;
        if (v45)
        {
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            *v64 = 136315138;
            v65 = "checkForTimeouts";
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%s: Successfully emitted tailspin processing telemetry!", v64, 0xCu);
          }
        }

        else if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          sub_100030D00();
        }

        v42 = v46;
      }

      else if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        sub_100030D7C();
      }
    }

    else if (v42)
    {
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        sub_100030C68(v42);
      }
    }

    else
    {
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *v64 = 136315138;
        v65 = "checkForTimeouts";
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%s: Did not collect hangreporter tailspin processing data because hangreporter is alive.", v64, 0xCu);
      }

      v42 = 0;
    }
  }

  [HTProcessInfo checkForHangTimeouts:v1];
}

void sub_1000020B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = [v5 exitEvent];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 process];
    v9 = [v8 bundle];
    v10 = [v9 identifier];

    v11 = [v7 process];
    v12 = [v11 bundle];
    v13 = [v12 executablePath];

    if (v13)
    {
      v14 = [v13 lastPathComponent];
    }

    else
    {
      v14 = [[NSString alloc] initWithUTF8String:*(a1 + 32)];
    }

    v22 = v14;
    v23 = [v7 context];
    v24 = sub_100003824();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v7 process];
      LODWORD(buf) = 67109120;
      DWORD1(buf) = [v25 pid];
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Process %d terminating", &buf, 8u);
    }

    v26 = [v23 status];
    if ([v26 domain] == 10)
    {
      v27 = sub_100003824();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [v26 code];
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Exit code: 0x%llx", &buf, 0xCu);
      }

      if ([v26 code] == 3735943697)
      {
        v29 = objc_alloc_init(HTForceQuitRecord);
        [(HTForceQuitRecord *)v29 setBundleId:v10];
        [(HTForceQuitRecord *)v29 setProcessName:v22];
        [(HTForceQuitRecord *)v29 setExecutablePath:v13];
        [(HTForceQuitRecord *)v29 setAbsoluteTime:mach_absolute_time()];
        v30 = [v7 process];
        -[HTForceQuitRecord setPid:](v29, "setPid:", [v30 pid]);

        v31 = +[NSDate date];
        [(HTForceQuitRecord *)v29 setCalendarTime:v31];

        v32 = v29;
        [(HTForceQuitRecord *)v32 setExpirationMSec:qword_1000673A0];
        v33 = dispatch_time(0, 1000000 * [(HTForceQuitRecord *)v32 expirationMSec]);
        v34 = qword_100067860;
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v39 = sub_100009460;
        v40 = &unk_100054E90;
        v41 = v32;
        v42 = v33;
        v35 = v32;
        dispatch_sync(v34, &buf);
      }
    }

    goto LABEL_16;
  }

  v10 = [v5 previousState];
  if ([v10 isRunning])
  {
LABEL_16:

    goto LABEL_17;
  }

  v15 = [v5 state];
  v16 = [v15 isRunning];

  if (v16)
  {
    v17 = [v5 process];
    v18 = [v17 bundle];
    v19 = [v18 identifier];

    v20 = qword_100067860;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003BC8;
    block[3] = &unk_100054D38;
    v37 = v19;
    v21 = v19;
    dispatch_sync(v20, block);
  }

LABEL_17:
}

double sub_1000024F8(unint64_t a1)
{
  if (qword_100067BF8 != -1)
  {
    sub_100004390();
  }

  return *&qword_100067BF0 * a1;
}

void sub_10000255C(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_100003738(@"Client XPC Event");
  type = xpc_get_type(v3);
  if (type == &_xpc_type_dictionary)
  {
    v7 = *(a1 + 32);
    v8 = v3;
    pid = xpc_connection_get_pid(v7);
    if (pid <= 0)
    {
      v13 = sub_100003824();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *v136 = pid;
        v20 = "%d is not a valid pid to watch";
        v21 = v13;
        v22 = OS_LOG_TYPE_INFO;
        v23 = 8;
LABEL_24:
        _os_log_impl(&_mh_execute_header, v21, v22, v20, buf, v23);
      }
    }

    else
    {
      int64 = xpc_dictionary_get_int64(v8, "command");
      if (int64 == 2)
      {
        [HTProcessInfo stopWatchingPid:pid];
LABEL_95:

        goto LABEL_96;
      }

      v11 = int64;
      if (int64 == 1)
      {
        v12 = xpc_dictionary_get_value(v8, "shmem");
        if (!v12)
        {
          v13 = sub_100003824();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            sub_100030F88();
          }

          goto LABEL_94;
        }

        v13 = v12;
        region[0] = 0;
        v14 = xpc_shmem_map(v12, region);
        if (region[0] && (v15 = v14) != 0)
        {
          string = xpc_dictionary_get_string(v8, "bundle-id");
          v17 = [HTProcessInfo startWatchingPid:pid sharedMem:region[0] length:v15 bundleID:string];
          if (v17)
          {
            v18 = sub_100003824();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = xpc_dictionary_get_string(v8, "name");
              *buf = 138543618;
              *v136 = v17;
              *&v136[8] = 2082;
              *&v136[10] = v19;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Initialization complete now watching hangs for %{public}@ | %{public}s", buf, 0x16u);
            }
          }

          if (byte_100067900 == 1)
          {
            sub_100004948(pid, string);
          }
        }

        else
        {
          region[0] = 0;
          v17 = sub_100003824();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_100030F4C();
          }
        }

        goto LABEL_93;
      }

      if (int64 > 7)
      {
        if (int64 <= 11)
        {
          if (int64 == 8 || int64 == 10)
          {
            uint64 = xpc_dictionary_get_uint64(v8, "name");
            v38 = xpc_dictionary_get_uint64(v8, "startTime");
            v39 = xpc_dictionary_get_uint64(v8, "endTime");
            v40 = sub_100003824();
            v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
            if (v11 == 10)
            {
              if (v41)
              {
                *buf = 134218496;
                *v136 = uint64;
                *&v136[8] = 2048;
                *&v136[10] = v38;
                *&v136[18] = 2048;
                *&v136[20] = v39;
                _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Got CA Fence Blown message (fenceName:%llu, startTime:%llu, endTime:%llu)", buf, 0x20u);
              }

              v42 = 5;
            }

            else
            {
              if (v41)
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "HTFenceTracking: Fence blown", buf, 2u);
              }

              sub_10000E654(uint64, v39);
              uint64 = 0;
              v42 = 4;
            }

            v52 = +[HTPrefs sharedPrefs];
            LOWORD(v111) = 0;
            +[HTProcessInfo recordFenceHang:startTime:endTime:reportedTime:blownFenceId:saveTailspin:subtype:isThirdPartyDevSupportModeHang:captureMicroHang:](HTProcessInfo, "recordFenceHang:startTime:endTime:reportedTime:blownFenceId:saveTailspin:subtype:isThirdPartyDevSupportModeHang:captureMicroHang:", @"Fence-hang", v38 - 12000000, v39 + 12000000, v39, uint64, [v52 htTailspinEnabled], v42, v111);

            goto LABEL_95;
          }

          if (int64 == 11)
          {
            sub_10002F300(v7, v8, pid);
            goto LABEL_95;
          }

LABEL_89:
          v13 = sub_100003824();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            sub_10003138C(v8);
          }

          goto LABEL_94;
        }

        if (int64 != 12)
        {
          if (int64 == 14)
          {
            reply = xpc_dictionary_create_reply(v8);
            v13 = reply;
            if (reply)
            {
              xpc_dictionary_set_BOOL(reply, "ping", 1);
              xpc_connection_send_message(v7, v13);
            }

            goto LABEL_94;
          }

          if (int64 != 13)
          {
            goto LABEL_89;
          }

          pid = xpc_dictionary_get_int64(v8, "pid");
          goto LABEL_55;
        }

        v53 = xpc_connection_copy_entitlement_value();
        v13 = v53;
        if (!v53 || xpc_get_type(v53) != &_xpc_type_BOOL)
        {
          v17 = sub_10001B04C(pid);
          goto LABEL_86;
        }

        value = xpc_BOOL_get_value(v13);
        v71 = sub_10001B04C(pid);
        v17 = v71;
        if (!value)
        {
LABEL_86:
          v54 = sub_100003824();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            sub_10003120C();
          }

LABEL_88:

LABEL_93:
          goto LABEL_94;
        }

        if (([v71 isEqualToString:@"hangreporter"]& 1) == 0)
        {
          v54 = sub_100003824();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            sub_100030FFC();
          }

          goto LABEL_88;
        }

        length = 0;
        data = xpc_dictionary_get_data(v8, "hangLogInfo", &length);
        if (!data || !length || ([NSData dataWithBytesNoCopy:data length:length freeWhenDone:0], (v73 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v104 = sub_100003824();
          if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
          {
            sub_1000311D0();
          }

          goto LABEL_157;
        }

        v74 = v73;
        v123 = v17;
        v125 = v13;
        v75 = [NSSet alloc];
        v137[0] = objc_opt_class();
        v137[1] = objc_opt_class();
        v137[2] = objc_opt_class();
        v137[3] = objc_opt_class();
        v76 = [NSArray arrayWithObjects:v137 count:4];
        v77 = [v75 initWithArray:v76];

        v132 = 0;
        v119 = v77;
        v121 = v74;
        v78 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v77 fromData:v74 error:&v132];
        v79 = v132;
        v80 = sub_100003824();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
        {
          sub_100031078();
        }

        if (!v78 || v79)
        {
          v94 = sub_100003824();
          if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
          {
            sub_1000310F0();
          }

          goto LABEL_155;
        }

        v130 = 0u;
        v131 = 0u;
        *region = 0u;
        v129 = 0u;
        v81 = [&off_10005CB88 countByEnumeratingWithState:region objects:buf count:16];
        if (v81)
        {
          v82 = v81;
          v83 = *v129;
          v84 = 1;
          do
          {
            for (i = 0; i != v82; ++i)
            {
              if (*v129 != v83)
              {
                objc_enumerationMutation(&off_10005CB88);
              }

              v86 = *(region[1] + i);
              v87 = [v78 objectForKey:v86];

              if (!v87)
              {
                v88 = sub_100003824();
                if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
                {
                  *v134 = 138412290;
                  *&v134[4] = v86;
                  _os_log_error_impl(&_mh_execute_header, v88, OS_LOG_TYPE_ERROR, "HT command HANGTRACER_XPC_CMD_HANG_LOGS_PROCESSED dictionary will not post a notification due to missing key: %@", v134, 0xCu);
                }

                v84 = 0;
              }
            }

            v82 = [&off_10005CB88 countByEnumeratingWithState:region objects:buf count:16];
          }

          while (v82);
          v79 = 0;
          if ((v84 & 1) == 0)
          {
            goto LABEL_156;
          }
        }

        v89 = [v78 objectForKeyedSubscript:@"displayedInHUD"];
        v90 = [v89 BOOLValue];

        if (!v90)
        {
          goto LABEL_156;
        }

        v91 = [v78 objectForKeyedSubscript:@"startWallTime"];
        [v91 doubleValue];
        v93 = v92;

        v94 = [NSDate dateWithTimeIntervalSinceReferenceDate:v93];
        v95 = [v78 objectForKeyedSubscript:@"durationMS"];
        [v95 doubleValue];
        v97 = v96;

        v98 = [v78 objectForKeyedSubscript:@"processPath"];
        v99 = sub_100019858(v98);
        v100 = [LSApplicationRecord alloc];
        *v134 = 0;
        v117 = v99;
        v127 = [v100 initWithBundleIdentifier:v99 allowPlaceholder:0 error:v134];
        v116 = *v134;
        if (v116)
        {
          v101 = sub_100003824();
          if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
          {
            sub_100031160();
          }

          v102 = [v98 lastPathComponent];
        }

        else
        {
          v105 = +[HTPrefs sharedPrefs];
          v106 = [v105 thirdPartyDevPreferredLanguages];
          v107 = [v106 count];

          if (v107)
          {
            v108 = +[HTPrefs sharedPrefs];
            v109 = [v108 thirdPartyDevPreferredLanguages];
            v103 = [v127 localizedNameWithPreferredLocalizations:v109];

            goto LABEL_154;
          }

          v102 = [v127 localizedName];
        }

        v103 = v102;
LABEL_154:
        v110 = [v78 objectForKeyedSubscript:@"hangUUID"];
        sub_10000958C(v103, v110, v97);

LABEL_155:
LABEL_156:

        v17 = v123;
        v13 = v125;
        v104 = v121;
LABEL_157:

        goto LABEL_93;
      }

      if (int64 > 4)
      {
        if (int64 != 5)
        {
          if (int64 == 6)
          {
            v43 = sub_100003824();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
            {
              sub_1000312D0();
            }

            v44 = xpc_dictionary_get_uint64(v8, "name");
            v45 = xpc_dictionary_get_uint64(v8, "startTime");
            v46 = v45;
            v47 = dword_100067990 % 5;
            if ((-858993459 * (dword_100067990 + 1) + 429496729) >= 0x33333333)
            {
              v48 = dword_100067990 + 1;
            }

            else
            {
              v48 = 0;
            }

            dword_100067990 = v48;
            v49 = &qword_100067918[3 * v47];
            *v49 = v44;
            v49[1] = v45;
            v49[2] = 0x7FFFFFFFFFFFFFFFLL;
            dword_100067994 = v47;
            v50 = sub_100003824();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134218496;
              *v136 = v44;
              *&v136[8] = 2048;
              *&v136[10] = v46;
              *&v136[18] = 1024;
              *&v136[20] = v47;
              _os_log_debug_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEBUG, "saveFenceStartTime: name=%llu, start=%llu, arr_index=%d", buf, 0x1Cu);
            }
          }

          else
          {
            v28 = sub_100003824();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              sub_10003129C();
            }

            v29 = xpc_dictionary_get_uint64(v8, "name");
            v30 = xpc_dictionary_get_uint64(v8, "endTime");
            sub_10000E654(v29, v30);
          }

          goto LABEL_95;
        }

        v13 = sub_100003824();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_94;
        }

        *buf = 0;
        v20 = "HTActivationStats: Received an app activation event but hangtracerd was compiled without app activation logging";
        goto LABEL_78;
      }

      if (int64 == 3)
      {
LABEL_55:
        v13 = [HTProcessInfo processForPid:pid];
        if (v13)
        {
          v31 = xpc_dictionary_get_int64(v8, "startTime");
          v32 = xpc_dictionary_get_int64(v8, "endTime");
          v114 = xpc_dictionary_get_int64(v8, "threadID");
          v113 = xpc_dictionary_get_string(v8, "name");
          v122 = xpc_dictionary_get_BOOL(v8, "saveReport");
          v33 = xpc_dictionary_get_int64(v8, "hangSubtype");
          v118 = xpc_dictionary_get_BOOL(v8, "saveMicroHang");
          region[0] = 0;
          v34 = xpc_dictionary_get_data(v8, "userActionData", region);
          v35 = 0;
          if (v11 == 3)
          {
            v35 = 0;
            if (v34)
            {
              if (region[0])
              {
                v35 = [NSData dataWithBytes:v34 length:?];
              }
            }
          }

          v36 = xpc_dictionary_get_data(v8, "stateInfo", 0);
          if (v36)
          {
            v126 = sub_100027494(v36);
          }

          else
          {
            v126 = 0;
          }

          v120 = v35;
          v124 = v13;
          v112 = v33;
          v55 = sub_100003824();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
          {
            sub_100031304(v126, pid, v55);
          }

          v56 = 0;
          v57 = 0;
          v58 = &qword_100067928;
          do
          {
            v59 = *(v58 - 1);
            v60 = *v58;
            if (v59 <= v31)
            {
              v59 = v31;
            }

            if (v60 >= v32)
            {
              v60 = v32;
            }

            v61 = v60 - v59;
            if (v60 > v59)
            {
              v62 = sub_1000024F8(v60 - v59);
              v63 = sub_100003824();
              if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
              {
                v115 = *(v58 - 2);
                v64 = sub_1000024F8(v61);
                *buf = 67109632;
                *v136 = v56;
                *&v136[4] = 2048;
                *&v136[6] = v115;
                *&v136[14] = 2048;
                *&v136[16] = v64;
                _os_log_debug_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEBUG, "CheckForFence: fenceIdx=%i, fenceName= %llu, overlap = %f ", buf, 0x1Cu);
              }

              v57 = (v62 + v57);
            }

            ++v56;
            v58 += 3;
          }

          while (v56 != 5);
          v65 = sub_100003824();
          v66 = os_log_type_enabled(v65, OS_LOG_TYPE_INFO);
          if (v57 <= 0x190)
          {
            v13 = v124;
            v67 = v120;
            if (v66)
            {
              *buf = 134217984;
              *v136 = v57;
              _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_INFO, "CheckForFence: total fence overlap time = %llu ms, not fence-hang", buf, 0xCu);
            }

            v69 = [NSString stringWithUTF8String:v113];
            v68 = v126;
            BYTE1(v111) = v118;
            LOBYTE(v111) = [v124 isThirdPartyDevSupportModeHang];
            [v124 recordHang:v69 threadID:v114 startTime:v31 endTime:v32 saveTailspin:v122 subtype:v112 userActionData:v120 isThirdPartyDevSupportModeHang:v111 captureMicroHang:v126 recentStateInfo:?];
          }

          else
          {
            v13 = v124;
            v67 = v120;
            if (v66)
            {
              *buf = 134217984;
              *v136 = v57;
              _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_INFO, "CheckForFence: total fence overlap time = %llu ms => treating as Fence-hang", buf, 0xCu);
            }

            BYTE1(v111) = v118;
            LOBYTE(v111) = [v124 isThirdPartyDevSupportModeHang];
            [HTProcessInfo recordFenceHang:@"Fence-hang" startTime:v31 - 12000000 endTime:v32 + 12000000 reportedTime:v32 blownFenceId:0 saveTailspin:v122 subtype:3 isThirdPartyDevSupportModeHang:v111 captureMicroHang:?];
            v68 = v126;
          }

          goto LABEL_94;
        }

        v17 = sub_100003824();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *v136 = pid;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Got hang detected message for a pid we're not monitoring: %d", buf, 8u);
        }

        goto LABEL_93;
      }

      if (int64 != 4)
      {
        goto LABEL_89;
      }

      v13 = sub_100003824();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v20 = "HTActivationStats: Received an app activation event but hangtracerd was compiled without app activation logging";
LABEL_78:
        v21 = v13;
        v22 = OS_LOG_TYPE_DEFAULT;
        v23 = 2;
        goto LABEL_24;
      }
    }

LABEL_94:

    goto LABEL_95;
  }

  if (type == &_xpc_type_error)
  {
    if (v3 == &_xpc_error_connection_invalid)
    {
      v24 = xpc_connection_get_pid(*(a1 + 32));
      v7 = sub_100003824();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *v136 = v24;
        v25 = "Client disconnected: %d";
        v26 = v7;
        v27 = 8;
LABEL_36:
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
      }
    }

    else
    {
      if (v3 != &_xpc_error_termination_imminent)
      {
        xpc_dictionary_get_string(v3, _xpc_error_key_description);
        v7 = sub_100003824();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_100030EDC();
        }

        goto LABEL_96;
      }

      v7 = sub_100003824();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v25 = "Termination imminent!";
        v26 = v7;
        v27 = 2;
        goto LABEL_36;
      }
    }

LABEL_96:

    goto LABEL_97;
  }

  v5 = xpc_copy_description(v3);
  v6 = sub_100003824();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100030E6C();
  }

  free(v5);
LABEL_97:
  sub_100004420(@"Client XPC Event");
}

void sub_100003738(void *a1)
{
  v1 = a1;
  v2 = sub_100003824();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315394;
    v4 = [v1 UTF8String];
    v5 = 2080;
    label = dispatch_queue_get_label(qword_100067D70);
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "received incoming work notification from %s, adding increment block to queue '%s' for com.apple.hangtracerd.processing", &v3, 0x16u);
  }

  dispatch_async(qword_100067D70, &stru_100054FA0);
}

id sub_100003824()
{
  if (qword_100067BC8 != -1)
  {
    sub_100034264();
  }

  v1 = qword_100067BC0;

  return v1;
}

void sub_100003868(id a1)
{
  v1 = dword_100067D78;
  if (dword_100067D78 > 0)
  {
    --dword_100067D78;
    if (v1 == 1)
    {
      v2 = notify_set_state(dword_100067468, 0);
      v3 = sub_100003824();
      v4 = v3;
      if (v2)
      {
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          sub_100030A94();
        }
      }

      else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11[0]) = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Successfully changed state of com.apple.hangtracerd.processing from 1 -> 0", v11, 2u);
      }

      v9 = notify_post("com.apple.hangtracerd.processing");
      v10 = sub_100003824();
      v5 = v10;
      if (v9)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_100030AD0();
        }

        goto LABEL_18;
      }

      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      LOWORD(v11[0]) = 0;
      v6 = "Successfully posted com.apple.hangtracerd.processing notification.";
      v7 = v5;
      v8 = 2;
    }

    else
    {
      v5 = sub_100003824();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      v11[0] = 67109120;
      v11[1] = dword_100067D78;
      v6 = "hangtracerd still has in-flight work (active agents: %d), not attempting to modify state.";
      v7 = v5;
      v8 = 8;
    }

    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, v11, v8);
    goto LABEL_18;
  }

  dword_100067D78 = 0;
  v5 = sub_100003824();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    sub_100030B0C();
  }

LABEL_18:
}

void sub_100003A30(id a1)
{
  if (dword_100067D78)
  {
    ++dword_100067D78;
    v1 = sub_100003824();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109120;
      v7[1] = dword_100067D78;
      v2 = "hangtracerd already has in-flight work (active agents: %d), not attempting to modify state of com.apple.hangtracerd.processing.";
      v3 = v1;
      v4 = 8;
LABEL_4:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v2, v7, v4);
    }
  }

  else
  {
    dword_100067D78 = 1;
    v5 = notify_set_state(dword_100067468, 1uLL);
    v6 = sub_100003824();
    v1 = v6;
    if (!v5)
    {
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_10;
      }

      LOWORD(v7[0]) = 0;
      v2 = "Successfully changed state of com.apple.hangtracerd.processing from 0 —> 1";
      v3 = v1;
      v4 = 2;
      goto LABEL_4;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100030A58();
    }
  }

LABEL_10:
}

void sub_100003BC8(uint64_t a1)
{
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v2 = qword_100067840;
  v3 = [v2 countByEnumeratingWithState:&v42 objects:v51 count:16];
  if (v3)
  {
    v4 = *v43;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v43 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v42 + 1) + 8 * i);
        v7 = mach_absolute_time();
        v8 = sub_1000024F8(v7 - [v6 absoluteTime]) < qword_1000673A0;
        v9 = [v6 bundleId];
        v10 = [v9 isEqualToString:*(a1 + 32)];

        if ((v10 & v8) != 0)
        {
          v11 = sub_100003824();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = [*(a1 + 32) UTF8String];
            LODWORD(buf) = 136315138;
            *(&buf + 4) = v12;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "App %s relaunched", &buf, 0xCu);
          }

          v13 = v6;
          [qword_100067840 removeObject:v13];
          if ([qword_100067848 count] >= 8)
          {
            v14 = [qword_100067848 objectAtIndexedSubscript:0];
            v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@.%d", @"com.apple.hangtracerd.usernotifications.force-quit", [v14 pid]);
            [qword_100067848 removeObjectAtIndex:0];
            v16 = [HTUserNotificationHelper sharedHelperWithCategories:0];
            v17 = [v16 notificationCenter];
            v18 = [NSArray arrayWithObject:v15];
            [v17 removePendingNotificationRequestsWithIdentifiers:v18];

            v19 = [HTUserNotificationHelper sharedHelperWithCategories:0];
            v20 = [v19 notificationCenter];
            v21 = [NSArray arrayWithObject:v15];
            [v20 removeDeliveredNotificationsWithIdentifiers:v21];

            v22 = [v14 filePath];

            if (v22)
            {
              v23 = [v14 filePath];
              v24 = v23;
              unlink([v23 UTF8String]);
            }
          }

          [qword_100067848 addObject:v13];
          v25 = +[NSFileManager defaultManager];
          *&buf = 0;
          *(&buf + 1) = &buf;
          v47 = 0x3032000000;
          v48 = sub_100007138;
          v49 = sub_100007148;
          v50 = 0;
          v26 = [v13 processName];
          v27 = qword_100067D58;
          v28 = [v13 calendarTime];
          v29 = [v27 stringFromDate:v28];
          v30 = [NSString stringWithFormat:@"ForceQuit-%@-%@.%@", v26, v29, @"tailspin"];

          v31 = [@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/ForceQuit/" stringByAppendingPathComponent:v30];
          v36[0] = _NSConcreteStackBlock;
          v36[1] = 3221225472;
          v36[2] = sub_100007150;
          v36[3] = &unk_100054D10;
          v32 = v30;
          v37 = v32;
          v38 = v13;
          v33 = v31;
          v39 = v33;
          v34 = v25;
          v40 = v34;
          p_buf = &buf;
          v35 = objc_retainBlock(v36);
          [HTTailspin saveTailspinForForceQuit:v13 completionBlock:v35];

          _Block_object_dispose(&buf, 8);
          goto LABEL_17;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v42 objects:v51 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:
}

void sub_1000040C8(uint64_t a1, void *a2)
{
  v3 = a2;
  type = xpc_get_type(v3);
  if (type == &_xpc_type_connection)
  {
    v7 = sub_100003824();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v17 = 67109120;
      *&v17[4] = xpc_connection_get_pid(v3);
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "XPC: Client started new connection: pid %d", v17, 8u);
    }

    v8 = v3;
    xpc_connection_set_target_queue(v8, qword_100067D60);
    *v17 = _NSConcreteStackBlock;
    *&v17[8] = 3221225472;
    *&v17[16] = sub_10000255C;
    v18 = &unk_100054F80;
    v19 = v8;
    v6 = v8;
    xpc_connection_set_event_handler(v6, v17);
    xpc_connection_resume(v6);

    goto LABEL_8;
  }

  v5 = type;
  if (type == &_xpc_type_error)
  {
    string = xpc_dictionary_get_string(v3, _xpc_error_key_description);
    if (v3 == &_xpc_error_connection_invalid)
    {
      pid = xpc_connection_get_pid(*(a1 + 32));
      v11 = sub_100003824();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v17 = 136315394;
        *&v17[4] = string;
        *&v17[12] = 1024;
        *&v17[14] = pid;
        v13 = "xpc_error_connection_invalid %s - pid %d";
        v14 = v11;
        v15 = OS_LOG_TYPE_INFO;
        v16 = 18;
LABEL_17:
        _os_log_impl(&_mh_execute_header, v14, v15, v13, v17, v16);
      }
    }

    else
    {
      v10 = sub_100003824();
      v11 = v10;
      if (v3 != &_xpc_error_connection_interrupted)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_100030304();
        }

        goto LABEL_18;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 136315138;
        *&v17[4] = string;
        v13 = "xpc_error_connection_interrupted: %s";
        v14 = v11;
        v15 = OS_LOG_TYPE_DEFAULT;
        v16 = 12;
        goto LABEL_17;
      }
    }

LABEL_18:

    goto LABEL_19;
  }

  v6 = sub_100003824();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 134217984;
    *&v17[4] = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "hangtracerd: unknown event type : %p", v17, 0xCu);
  }

LABEL_8:

LABEL_19:
}

__CFString *sub_1000043DC(unint64_t a1)
{
  if (a1 <= 0xA)
  {
    a1 = *off_100055B70[a1];
  }

  return a1;
}

void sub_100004420(void *a1)
{
  v1 = a1;
  v2 = sub_100003824();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315394;
    v4 = [v1 UTF8String];
    v5 = 2080;
    label = dispatch_queue_get_label(qword_100067D70);
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "received work completion notification from %s, adding decrement block to queue '%s'", &v3, 0x16u);
  }

  dispatch_async(qword_100067D70, &stru_100054FC0);
}

id sub_10000450C()
{
  v0 = __chkstk_darwin();
  bzero(buffer, 0x1000uLL);
  if (proc_pidpath(v0, buffer, 0x1000u))
  {
    v1 = [NSString stringWithUTF8String:buffer];
    if (!v1)
    {
      v1 = [NSString stringWithCString:buffer encoding:1];
      v2 = sub_100003824();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
      {
        sub_100032EE8();
      }
    }
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t sub_100004620(void *a1)
{
  v1 = a1;
  v2 = +[HTPrefs sharedPrefs];
  v3 = [v2 enableLoggingForWidgetRenderer];

  if ((v3 & 1) != 0 || ([v1 containsString:@"WidgetRenderer-Default"] & 1) == 0)
  {
    v5 = +[HTPrefs sharedPrefs];
    v6 = [v5 enableLoggingForPoster];

    if (v6 & 1) != 0 || ([v1 containsString:@"PosterBoard"])
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      v7 = [[LSApplicationExtensionRecord alloc] initWithBundleIdentifier:v1 error:0];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 extensionPointRecord];
        v4 = v9;
        if (v9)
        {
          v10 = [v9 identifier];
          v11 = [v10 isEqualToString:@"com.apple.posterkit.provider"];

          LODWORD(v4) = (v11 << 31) >> 31;
        }
      }

      else
      {
        LOBYTE(v4) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4 & 1;
}

void sub_100004948(uint64_t a1, uint64_t a2)
{
  if (qword_100067850)
  {
    v3 = [[NSString alloc] initWithUTF8String:a2];
    if ([v3 hasPrefix:@"com.apple."])
    {
      if ([qword_100067850 containsObject:v3])
      {
        v4 = sub_100003824();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          sub_10002FBFC();
        }
      }

      else
      {
        v5 = sub_10000450C();
        v4 = v5;
        if (v5)
        {
          v6 = [v5 lastPathComponent];
        }

        else
        {
          v6 = [[NSString alloc] initWithUTF8String:a2];
        }

        v7 = v6;
        v8 = sub_100003824();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v20 = a2;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "adding %s to force-quit monitoring list", buf, 0xCu);
        }

        v9 = qword_100067860;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100006F68;
        block[3] = &unk_100054C38;
        v17 = v3;
        v10 = v7;
        v18 = v10;
        dispatch_sync(v9, block);
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_100006FB4;
        v15[3] = &unk_100054D78;
        v15[4] = a2;
        v11 = objc_retainBlock(v15);
        if (qword_100067830)
        {
          [qword_100067830 updateConfiguration:v11];
        }

        else
        {
          v12 = [RBSProcessMonitor monitorWithConfiguration:v11];
          v13 = qword_100067830;
          qword_100067830 = v12;

          if (!qword_100067830)
          {
            v14 = sub_100003824();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              sub_10002FBB8(v14);
            }
          }
        }
      }
    }
  }
}

id sub_100004D34()
{
  if (qword_100067828 != -1)
  {
    sub_10002F710();
  }

  v1 = qword_100067820;

  return v1;
}

void sub_100004D78(id a1)
{
  if (!qword_100067820)
  {
    qword_100067820 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.hangtracer"];

    _objc_release_x1();
  }
}

id sub_100005B40(uint64_t a1)
{
  v10[0] = @"successfulTailspinSaves";
  v2 = [NSNumber numberWithUnsignedInt:*(a1 + 40)];
  v11[0] = v2;
  v10[1] = @"tailspinsProcessed";
  v3 = [NSNumber numberWithUnsignedInt:*(a1 + 44)];
  v11[1] = v3;
  v10[2] = @"tailspinsUnprocessed";
  v4 = [NSNumber numberWithUnsignedInt:*(a1 + 48)];
  v11[2] = v4;
  v10[3] = @"tailspinsInSpool";
  v5 = [NSNumber numberWithUnsignedInt:*(a1 + 52)];
  v11[3] = v5;
  v10[4] = @"tailspinsOverReportingThresholds";
  v6 = [NSNumber numberWithUnsignedInt:*(a1 + 56)];
  v11[4] = v6;
  v10[5] = @"oldestTailspinCreationSeconds";
  v7 = [NSNumber numberWithDouble:*(a1 + 32)];
  v11[5] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:6];

  return v8;
}

void sub_10000679C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id sub_1000067BC(id a1)
{

  return a1;
}

void sub_100006808(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x2Au);
}

id sub_100006F68(uint64_t a1)
{
  [qword_100067850 addObject:*(a1 + 32)];
  v2 = qword_100067858;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 setObject:v3 forKey:v4];
}

void sub_100006FB4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RBSProcessStateDescriptor descriptor];
  [v4 setValues:1];
  v9 = FBSSceneVisibilityEndowmentNamespace;
  v5 = [NSArray arrayWithObjects:&v9 count:1];
  [v4 setEndowmentNamespaces:v5];

  [v3 setStateDescriptor:v4];
  v6 = [RBSProcessPredicate predicateMatchingBundleIdentifiers:qword_100067850];
  v7 = [NSArray arrayWithObject:v6];
  [v3 setPredicates:v7];

  [v3 setEvents:1];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000020B4;
  v8[3] = &unk_100054D58;
  v8[4] = *(a1 + 32);
  [v3 setUpdateHandler:v8];
}

uint64_t sub_100007138(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100007150(uint64_t a1, uint64_t a2)
{
  v4 = [NSString stringWithFormat:@"%s/%@", "/var/root/Library/Caches/hangtracerd/tmp", *(a1 + 32)];
  v5 = [v4 UTF8String];
  if (!a2)
  {
    v6 = v5;
    [*(a1 + 40) setFilePath:*(a1 + 48)];
    v7 = sub_100003824();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 40) pid];
      *buf = 67109376;
      *v35 = v8;
      *&v35[4] = 1024;
      *&v35[6] = [qword_100067848 count];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Dumped tailspin for pid %d, now total pending records %u", buf, 0xEu);
    }

    sub_100019998(@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/ForceQuit/", 1);
    v10 = *(a1 + 48);
    v9 = *(a1 + 56);
    v11 = *(*(a1 + 64) + 8);
    obj = *(v11 + 40);
    [v9 moveItemAtPath:v4 toPath:v10 error:&obj];
    objc_storeStrong((v11 + 40), obj);
    if (*(*(*(a1 + 64) + 8) + 40))
    {
      unlink(v6);
      [*(a1 + 40) setFilePath:0];
      v12 = sub_100003824();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v27 = *(a1 + 48);
        v28 = *(*(*(a1 + 64) + 8) + 40);
        *buf = 138412802;
        *v35 = v4;
        *&v35[8] = 2112;
        v36 = v27;
        v37 = 2112;
        v38 = v28;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "failed to move %@ to %@: %@", buf, 0x20u);
      }
    }
  }

  v13 = objc_alloc_init(UNMutableNotificationContent);
  v14 = [*(a1 + 40) processName];
  v15 = [*(a1 + 40) calendarTime];
  v16 = sub_1000075C4(v14, v15);
  [v13 setBody:v16];

  v17 = +[UNNotificationSound defaultSound];
  [v13 setSound:v17];

  [v13 setThreadIdentifier:@"com.apple.hangtracerd.usernotifications.force-quit"];
  [v13 setCategoryIdentifier:@"com.apple.hangtracerd.usernotifications.force-quit"];
  [v13 setShouldBackgroundDefaultAction:1];
  v18 = [NSDate dateWithTimeIntervalSinceNow:3600.0];
  [v13 setExpirationDate:v18];

  v32[0] = @"pid";
  v19 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 40) pid]);
  v32[1] = @"absoluteTime";
  v33[0] = v19;
  v20 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 40) absoluteTime]);
  v33[1] = v20;
  v21 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];
  [v13 setUserInfo:v21];

  [v13 setTitle:@"Kill-and-Relaunch Detection"];
  v22 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@.%d", @"com.apple.hangtracerd.usernotifications.force-quit", [*(a1 + 40) pid]);
  v23 = [UNNotificationRequest requestWithIdentifier:v22 content:v13 trigger:0 destinations:5];

  v24 = [HTUserNotificationHelper sharedHelperWithCategories:0];
  v25 = [v24 notificationCenter];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100007688;
  v29[3] = &unk_100054CE8;
  v30 = v23;
  v26 = v23;
  [v25 getNotificationSettingsWithCompletionHandler:v29];
}

id sub_1000075C4(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_alloc_init(NSDateFormatter);
  [v5 setDateFormat:@"MM/dd/yyyy HH:mm:ss"];
  v6 = [v5 stringFromDate:v3];

  v7 = [NSString stringWithFormat:@"%@ was recently force-quit at %@ and was immediately relaunched. Did you encounter a problem?", v4, v6];

  return v7;
}

void sub_100007688(uint64_t a1, void *a2)
{
  v3 = [a2 authorizationStatus];
  v4 = sub_100003824();
  v5 = v4;
  if (v3 == 2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v12 = "monitorForForceQuit_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s notification previously authorized", buf, 0xCu);
    }

    v5 = [HTUserNotificationHelper sharedHelperWithCategories:0];
    v6 = [v5 notificationCenter];
    [v6 addNotificationRequest:*(a1 + 32) withCompletionHandler:&stru_100054C78];
  }

  else if (v3 == 1)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = "monitorForForceQuit_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s notification previously denied, will not post", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v12 = "monitorForForceQuit_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s requesting provisional notification authorization", buf, 0xCu);
    }

    v7 = [HTUserNotificationHelper sharedHelperWithCategories:0];
    v8 = [v7 notificationCenter];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100007954;
    v9[3] = &unk_100054CC0;
    v10 = *(a1 + 32);
    [v8 requestAuthorizationWithOptions:68 completionHandler:v9];

    v5 = v10;
  }
}

void sub_1000078C0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100003824();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10002FC70();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Notification dispatched", v5, 2u);
  }
}

void sub_100007954(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = sub_100003824();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Notification granted", buf, 2u);
    }

    v7 = [HTUserNotificationHelper sharedHelperWithCategories:0];
    v8 = [v7 notificationCenter];
    [v8 addNotificationRequest:*(a1 + 32) withCompletionHandler:&stru_100054C98];
  }

  else
  {
    v9 = sub_100003824();
    v7 = v9;
    if (v5)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10002FCD8();
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notification newly denied", v10, 2u);
    }
  }
}

void sub_100007A7C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100003824();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10002FC70();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Notification dispatched", v5, 2u);
  }
}

id sub_100007B10()
{
  v0 = [UNNotificationAction actionWithIdentifier:@"FileRadarAction" title:@"File a radar" options:0];
  v1 = [UNNotificationAction actionWithIdentifier:@"DismissAction" title:@"Dismiss" options:0];
  v2 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Internal.Classic/Application%20Debugging/ForceQuitTailspinDump"];
  v3 = [UNNotificationAction actionWithIdentifier:@"MoreOptionAction" title:@"Settings" url:v2 options:0];

  v7[0] = v0;
  v7[1] = v1;
  v7[2] = v3;
  v4 = [NSArray arrayWithObjects:v7 count:3];
  v5 = [UNNotificationCategory categoryWithIdentifier:@"com.apple.hangtracerd.usernotifications.force-quit" actions:v4 intentIdentifiers:&__NSArray0__struct options:1];

  return v5;
}

void sub_100007C8C(id a1, UNNotificationResponse *a2)
{
  v2 = a2;
  v3 = [(UNNotificationResponse *)v2 notification];
  v4 = [v3 request];
  v5 = [v4 identifier];
  v6 = [v5 hasPrefix:@"com.apple.hangtracerd.usernotifications.force-quit"];

  if (v6)
  {
    v7 = [(UNNotificationResponse *)v2 notification];
    v8 = [v7 request];
    v9 = [v8 content];
    v10 = [v9 userInfo];

    v11 = [v10 objectForKeyedSubscript:@"pid"];
    LODWORD(v7) = [v11 intValue];

    v12 = [v10 objectForKeyedSubscript:@"absoluteTime"];
    v13 = [v12 longLongValue];

    *&v64 = 0;
    *(&v64 + 1) = &v64;
    v65 = 0x3032000000;
    v66 = sub_100007138;
    v67 = sub_100007148;
    v68 = 0;
    v53 = 0;
    v54 = &v53;
    v55 = 0x3032000000;
    v56 = sub_100007138;
    v57 = sub_100007148;
    v58 = 0;
    v49 = 0;
    v50 = &v49;
    v51 = 0x2020000000;
    v52 = 0;
    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v48 = 0;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100008530;
    block[3] = &unk_100054DE0;
    v44 = v7;
    block[4] = &v64;
    block[5] = &v45;
    block[6] = &v53;
    block[7] = v13;
    dispatch_sync(qword_100067860, block);
    if (*(v46 + 24) != 1)
    {
LABEL_29:
      _Block_object_dispose(&v45, 8);
      _Block_object_dispose(&v49, 8);
      _Block_object_dispose(&v53, 8);

      _Block_object_dispose(&v64, 8);
      goto LABEL_30;
    }

    v14 = [(UNNotificationResponse *)v2 actionIdentifier];
    v15 = [v14 isEqualToString:UNNotificationDefaultActionIdentifier];

    if (v15)
    {
      v63[0] = @"Kill-and-Relaunch";
      v62[0] = kCFUserNotificationAlertHeaderKey;
      v62[1] = kCFUserNotificationAlertMessageKey;
      v16 = v54[5];
      v17 = [*(*(&v64 + 1) + 40) calendarTime];
      v18 = sub_1000075C4(v16, v17);
      v63[1] = v18;
      v63[2] = @"File a radar";
      v62[2] = kCFUserNotificationDefaultButtonTitleKey;
      v62[3] = kCFUserNotificationAlternateButtonTitleKey;
      v63[3] = @"Dismiss";
      v63[4] = @"Settings";
      v62[4] = kCFUserNotificationOtherButtonTitleKey;
      v62[5] = kCFUserNotificationAlertTopMostKey;
      v63[5] = &__kCFBooleanTrue;
      v63[6] = &__kCFBooleanTrue;
      v62[6] = SBUserNotificationForcesModalAlertAppearance;
      v62[7] = SBUserNotificationDisplayActionButtonOnLockScreen;
      v63[7] = &__kCFBooleanTrue;
      v19 = [NSDictionary dictionaryWithObjects:v63 forKeys:v62 count:8];

      v20 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 1uLL, 0, v19);
      responseFlags = 0;
      CFUserNotificationReceiveResponse(v20, 0.0, &responseFlags);
      if (v20)
      {
        CFRelease(v20);
      }

      v21 = sub_100003824();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = responseFlags;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "User selected %lu", &buf, 0xCu);
      }

      if (responseFlags == 2)
      {
        v28 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Internal.Classic/Application%20Debugging/ForceQuitTailspinDump"];
        v69[0] = FBSOpenApplicationOptionKeyUnlockDevice;
        v69[1] = FBSOpenApplicationOptionKeyPromptUnlockDevice;
        *&buf = &__kCFBooleanTrue;
        *(&buf + 1) = &__kCFBooleanTrue;
        v29 = [NSDictionary dictionaryWithObjects:&buf forKeys:v69 count:2];
        v30 = +[LSApplicationWorkspace defaultWorkspace];
        v59 = 0;
        [v30 openSensitiveURL:v28 withOptions:v29 error:&v59];
        v31 = v59;

        if (v31)
        {
          v32 = sub_100003824();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            sub_10002FD98();
          }
        }
      }

      else if (!responseFlags)
      {
        *(v50 + 24) = 1;
      }

      goto LABEL_23;
    }

    v25 = [(UNNotificationResponse *)v2 actionIdentifier];
    if (([v25 isEqualToString:UNNotificationDismissActionIdentifier] & 1) == 0)
    {
      v26 = [(UNNotificationResponse *)v2 actionIdentifier];
      if (![v26 isEqualToString:@"DismissAction"])
      {
        v35 = [(UNNotificationResponse *)v2 actionIdentifier];
        v36 = [v35 isEqualToString:@"FileRadarAction"];

        if ((v36 & 1) == 0)
        {
          v37 = [(UNNotificationResponse *)v2 actionIdentifier];
          v38 = [v37 isEqualToString:@"MoreOptionAction"];

          if ((v38 & 1) == 0)
          {
            v39 = sub_100003824();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              v40 = [(UNNotificationResponse *)v2 actionIdentifier];
              sub_10002FD40(v40, &buf, v39);
            }

            goto LABEL_29;
          }

          goto LABEL_24;
        }

        goto LABEL_17;
      }
    }

LABEL_17:
    v19 = [(UNNotificationResponse *)v2 actionIdentifier];
    v27 = [(__CFDictionary *)v19 isEqualToString:@"FileRadarAction"];
    *(v50 + 24) = v27;
LABEL_23:

LABEL_24:
    if (*(v50 + 24) == 1)
    {
      v60[0] = kCFUserNotificationAlertMessageKey;
      v60[1] = kCFUserNotificationDefaultButtonTitleKey;
      v61[0] = @"Was the issue a hang?";
      v61[1] = @"Yes, a hang";
      v60[2] = kCFUserNotificationAlternateButtonTitleKey;
      v60[3] = kCFUserNotificationAlertTopMostKey;
      v61[2] = @"No, not a hang";
      v61[3] = &__kCFBooleanTrue;
      v60[4] = SBUserNotificationForcesModalAlertAppearance;
      v60[5] = SBUserNotificationDisplayActionButtonOnLockScreen;
      v61[4] = &__kCFBooleanTrue;
      v61[5] = &__kCFBooleanTrue;
      v33 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:6];
      v34 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 1uLL, 0, v33);
      *&buf = 0;
      CFUserNotificationReceiveResponse(v34, 0.0, &buf);
      if (v34)
      {
        CFRelease(v34);
      }

      [*(*(&v64 + 1) + 40) setIsHang:buf == 0];
    }

    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_10000875C;
    v41[3] = &unk_100054E08;
    v41[4] = &v64;
    v41[5] = &v49;
    dispatch_async(qword_100067868, v41);
    goto LABEL_29;
  }

  v10 = sub_100003824();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [(UNNotificationResponse *)v2 notification];
    v23 = [v22 request];
    v24 = [v23 identifier];
    LODWORD(v64) = 138412290;
    *(&v64 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Unrecognized request identifier %@", &v64, 0xCu);
  }

LABEL_30:
}

void sub_1000084C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_100008530(uint64_t a1)
{
  v2 = sub_100003824();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 64);
    *buf = 67109376;
    v22 = v3;
    v23 = 1024;
    v24 = [qword_100067848 count];
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Looking for record with pid %d, total %u records", buf, 0xEu);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = qword_100067848;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        objc_storeStrong((*(*(a1 + 32) + 8) + 40), *(*(&v16 + 1) + 8 * v8));
        if ([*(*(*(a1 + 32) + 8) + 40) pid] == *(a1 + 64) && objc_msgSend(*(*(*(a1 + 32) + 8) + 40), "absoluteTime") == *(a1 + 56))
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
          v11 = qword_100067858;
          v12 = [*(*(*(a1 + 32) + 8) + 40) bundleId];
          v13 = [v11 objectForKeyedSubscript:v12];
          v14 = *(*(a1 + 48) + 8);
          v15 = *(v14 + 40);
          *(v14 + 40) = v13;

          [qword_100067848 removeObject:*(*(*(a1 + 32) + 8) + 40)];
          goto LABEL_14;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;

LABEL_14:
}

void sub_10000875C(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(*(*(a1 + 32) + 8) + 40) filePath];

  if (v3)
  {
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      v4 = sub_100003824();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = [*(*(*v2 + 8) + 40) filePath];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Filing a radar with file %@", &buf, 0xCu);
      }

      v6 = *(*(*v2 + 8) + 40);
      v32 = [[NSMutableString alloc] initWithString:@"1299292"];
      v7 = [NSMutableString alloc];
      v8 = qword_100067858;
      v9 = [v6 bundleId];
      v10 = [v8 objectForKeyedSubscript:v9];
      v31 = [v7 initWithString:v10];

      if ([v6 isHang])
      {
        [v32 appendFormat:@", %@", @"1299293"];
      }

      v42[0] = @"BundleID";
      v11 = [v6 bundleId];
      *&buf = v11;
      v42[1] = @"Classification";
      v12 = [v6 isHang];
      v13 = &stru_100057080;
      if (v12)
      {
        v13 = @"Crash/Hang/Data Loss";
      }

      *(&buf + 1) = v13;
      v42[2] = @"Attachments";
      v14 = [v6 filePath];
      v44 = v14;
      v42[3] = @"Title";
      v15 = [NSString stringWithFormat:@"[Force Quit] I killed %@ and relaunched it because...", v31];
      v45 = v15;
      v42[4] = @"Keywords";
      v42[5] = @"DeleteOnAttach";
      v46 = v32;
      v47 = @"1";
      v48 = @"1";
      v42[6] = @"IncludeDevicePrefixInTitle";
      v42[7] = @"TimeOfIssue";
      v16 = qword_100067838;
      v17 = [v6 calendarTime];
      v18 = [v16 stringFromDate:v17];
      v49 = v18;
      v19 = [NSDictionary dictionaryWithObjects:&buf forKeys:v42 count:8];
      v20 = [NSMutableDictionary dictionaryWithDictionary:v19];

      if ([v6 isHang])
      {
        [v20 setObject:@"com.apple.HangTracer.HangLogsDiagnosticExtension" forKeyedSubscript:@"ExtensionIdentifiers"];
      }

      v38[0] = 0;
      v38[1] = v38;
      v38[2] = 0x2020000000;
      v39 = 1;
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_1000094B8;
      v35[3] = &unk_100054EB8;
      v37 = v38;
      v21 = [[NSMutableString alloc] initWithString:@"tap-to-radar://new?"];
      v36 = v21;
      [v20 enumerateKeysAndObjectsUsingBlock:v35];
      v22 = +[NSCharacterSet URLQueryAllowedCharacterSet];
      v23 = [v21 stringByAddingPercentEncodingWithAllowedCharacters:v22];

      v24 = sub_100003824();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        LODWORD(v41) = 138412290;
        *(&v41 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "URL string is %@", &v41, 0xCu);
      }

      v25 = [NSURL URLWithString:v23];
      v40[0] = FBSOpenApplicationOptionKeyUnlockDevice;
      v40[1] = FBSOpenApplicationOptionKeyPromptUnlockDevice;
      *&v41 = &__kCFBooleanTrue;
      *(&v41 + 1) = &__kCFBooleanTrue;
      v26 = [NSDictionary dictionaryWithObjects:&v41 forKeys:v40 count:2];
      v27 = +[LSApplicationWorkspace defaultWorkspace];
      v34 = 0;
      [v27 openURL:v25 withOptions:v26 error:&v34];
      v28 = v34;

      if (v28)
      {
        v29 = sub_100003824();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sub_10002FE00();
        }
      }

      _Block_object_dispose(v38, 8);
    }

    else
    {
      v33 = [*(*(*v2 + 8) + 40) filePath];
      unlink([v33 UTF8String]);
    }
  }

  else
  {
    v30 = sub_100003824();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_10002FE68(v2, v30);
    }
  }
}

void sub_100008D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100008D88()
{
  if (qword_100067878 != -1)
  {
    sub_10002FF00();
  }

  v0 = +[HTPrefs sharedPrefs];
  v1 = [v0 forceQuitDetectionThresholdMSec];
  qword_1000673A0 = v1;
  v2 = sub_100003824();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v13 = 134217984;
    v14 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Force-quit detection threshold set to %llu ms", &v13, 0xCu);
  }

  if (!qword_100067850)
  {
    v3 = objc_alloc_init(NSMutableSet);
    v4 = qword_100067850;
    qword_100067850 = v3;
  }

  if (!qword_100067858)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    v6 = qword_100067858;
    qword_100067858 = v5;
  }

  if (!qword_100067870)
  {
    v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, qword_100067860);
    v8 = qword_100067870;
    qword_100067870 = v7;

    dispatch_source_set_event_handler(qword_100067870, &stru_100054E48);
  }

  if (!qword_100067840)
  {
    v9 = objc_alloc_init(NSMutableArray);
    v10 = qword_100067840;
    qword_100067840 = v9;
  }

  if (!qword_100067848)
  {
    v11 = objc_alloc_init(NSMutableArray);
    v12 = qword_100067848;
    qword_100067848 = v11;
  }

  dispatch_resume(qword_100067870);
}

void sub_100008F4C(id a1)
{
  sub_10001A2CC(@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/ForceQuit/");
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_100067838;
  qword_100067838 = v1;

  [qword_100067838 setDateFormat:@"yyyy.MM.dd_HH-mm-ss"];
  v3 = [NSString stringWithFormat:@"%@.queue", @"com.apple.hangtracer.force-quit-detection"];
  v4 = dispatch_queue_create([v3 UTF8String], 0);
  v5 = qword_100067860;
  qword_100067860 = v4;

  v9 = [NSString stringWithFormat:@"%@.slow-task-queue", @"com.apple.hangtracer.force-quit-detection"];
  v6 = v9;
  v7 = dispatch_queue_create([v9 UTF8String], 0);
  v8 = qword_100067868;
  qword_100067868 = v7;
}

void sub_100009054(id a1)
{
  v1 = mach_absolute_time();
  if ([qword_100067840 count])
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = [qword_100067840 objectAtIndexedSubscript:v2];
      if (v1 <= [v5 absoluteTime] || (v6 = sub_1000024F8(v1 - objc_msgSend(v5, "absoluteTime")), v6 >= objc_msgSend(v5, "expirationMSec")))
      {
        ++v3;
        [qword_100067840 removeObjectAtIndex:v2];
        --v4;
      }

      v2 = ++v4;
    }

    while ([qword_100067840 count] > v4);
  }

  else
  {
    v3 = 0;
  }

  v7 = sub_100003824();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8[0] = 67109120;
    v8[1] = v3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Removed %u expired force-quit records", v8, 8u);
  }
}

void sub_1000091B0()
{
  if (qword_100067870)
  {
    dispatch_source_cancel(qword_100067870);
    v0 = qword_100067870;
    qword_100067870 = 0;
  }

  if (qword_100067830)
  {
    [qword_100067830 invalidate];
    v1 = qword_100067830;
    qword_100067830 = 0;
  }

  v2 = qword_100067860;
  if (qword_100067860)
  {

    dispatch_sync(v2, &stru_100054E68);
  }
}

void sub_100009234(id a1)
{
  v1 = qword_100067840;
  qword_100067840 = 0;

  v2 = qword_100067848;
  if (qword_100067848)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    obj = qword_100067848;
    v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v18;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v18 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v17 + 1) + 8 * i);
          [qword_100067840 removeObject:v7];
          v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@.%d", @"com.apple.hangtracerd.usernotifications.force-quit", [v7 pid]);
          v9 = [HTUserNotificationHelper sharedHelperWithCategories:0];
          v10 = [v9 notificationCenter];
          v11 = [NSArray arrayWithObject:v8];
          [v10 removePendingNotificationRequestsWithIdentifiers:v11];

          v12 = [HTUserNotificationHelper sharedHelperWithCategories:0];
          v13 = [v12 notificationCenter];
          v14 = [NSArray arrayWithObject:v8];
          [v13 removeDeliveredNotificationsWithIdentifiers:v14];

          v15 = [v7 filePath];
          unlink([v15 UTF8String]);
        }

        v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v4);
    }

    v2 = qword_100067848;
  }

  qword_100067848 = 0;
}

void sub_100009460(uint64_t a1)
{
  [qword_100067840 addObject:*(a1 + 32)];
  v2 = qword_100067870;
  v3 = *(a1 + 40);

  dispatch_source_set_timer(v2, v3, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
}

void sub_1000094B8(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = *(*(a1 + 40) + 8);
  if (*(v6 + 24))
  {
    *(v6 + 24) = 0;
  }

  else
  {
    [*(a1 + 32) appendString:@"&"];
  }

  [*(a1 + 32) appendFormat:@"%@=%@", v7, v5];
}

void sub_10000954C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_10000958C(void *a1, void *a2, double a3)
{
  v5 = a1;
  v6 = a2;
  v7 = +[HTPrefs sharedPrefs];
  v8 = [v7 shouldUpdateHangsHUD];

  if (v8)
  {
    v9 = +[HTPrefs sharedPrefs];
    v10 = [v9 isInternal];

    if (!v10)
    {
      v13 = @"settings-navigation://com.apple.Settings.Developer/HANGTRACER_EXTERNAL_CONFIGURE/";
      goto LABEL_6;
    }

    v11 = +[HTPrefs sharedPrefs];
    v12 = [v11 hudThresholdMSec];

    if (v12 <= a3)
    {
      v13 = @"settings-navigation://com.apple.Settings.Internal.Classic/HANGTRACER/";
LABEL_6:
      v14 = objc_alloc_init(UNMutableNotificationContent);
      v15 = v5;
      v16 = objc_alloc_init(NSNumberFormatter);
      [v16 setNumberStyle:0];
      v17 = sub_1000098C4(@"HANG_LOG_NOTIFICATION_SUMMARY_MILLISECONDS%@%@");
      v18 = [NSNumber numberWithDouble:a3];
      v19 = [v16 stringFromNumber:v18];
      v20 = [NSString localizedStringWithFormat:v17, v19, v15];

      [v14 setBody:v20];
      v21 = +[UNNotificationSound defaultSound];
      [v14 setSound:v21];

      [v14 setThreadIdentifier:@"com.apple.hangtracerd.usernotifications.hang-log"];
      [v14 setCategoryIdentifier:@"com.apple.hangtracerd.usernotifications.hang-log"];
      [v14 setInterruptionLevel:0];
      v22 = sub_1000098C4(@"HANG_DETECTED");
      [v14 setTitle:v22];

      v23 = [(__CFString *)v13 stringByAppendingString:v6];
      v24 = [NSURL URLWithString:v23];
      [v14 setDefaultActionURL:v24];

      v25 = [NSString stringWithFormat:@"%@.%@", @"com.apple.hangtracerd.usernotifications.hang-log", v15];
      v26 = [UNNotificationRequest requestWithIdentifier:v25 content:v14 trigger:0];

      v27 = [HTUserNotificationHelper sharedHelperWithCategories:0];
      v28 = [v27 notificationCenter];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100009ACC;
      v30[3] = &unk_100054CE8;
      v31 = v26;
      v29 = v26;
      [v28 getNotificationSettingsWithCompletionHandler:v30];
    }
  }
}

id sub_1000098C4(void *a1)
{
  v1 = a1;
  if (qword_100067888 != -1)
  {
    sub_10002FF14();
  }

  v2 = qword_100067880;
  v3 = +[HTPrefs sharedPrefs];
  v4 = [v3 thirdPartyDevPreferredLanguages];
  v5 = [v4 count];

  if (v5)
  {
    v6 = +[HTPrefs sharedPrefs];
    v7 = [v6 thirdPartyDevPreferredLanguages];
    v8 = [v7 firstObject];
    v9 = [NSLocale localeWithLocaleIdentifier:v8];
    v10 = [v9 languageCode];

    v11 = [v2 localizations];
    v17 = v10;
    v12 = [NSArray arrayWithObjects:&v17 count:1];
    v13 = [NSBundle preferredLocalizationsFromArray:v11 forPreferences:v12];
    v14 = [v13 firstObject];

    v15 = [v2 localizedStringForKey:v1 value:&stru_100057080 table:@"InfoPlist" localization:v14];
  }

  else
  {
    v15 = [v2 localizedStringForKey:v1 value:&stru_100057080 table:@"InfoPlist"];
  }

  return v15;
}

void sub_100009ACC(uint64_t a1, void *a2)
{
  v3 = [a2 authorizationStatus];
  v4 = sub_100003824();
  v5 = v4;
  if (v3 == 2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v12 = "postHangLogNotification_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s notification previously authorized", buf, 0xCu);
    }

    v5 = [HTUserNotificationHelper sharedHelperWithCategories:0];
    v6 = [v5 notificationCenter];
    [v6 addNotificationRequest:*(a1 + 32) withCompletionHandler:&stru_100054ED8];
  }

  else if (v3 == 1)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = "postHangLogNotification_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s notification previously denied, will not post", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v12 = "postHangLogNotification_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s requesting provisional notification authorization", buf, 0xCu);
    }

    v7 = [HTUserNotificationHelper sharedHelperWithCategories:0];
    v8 = [v7 notificationCenter];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100009D98;
    v9[3] = &unk_100054CC0;
    v10 = *(a1 + 32);
    [v8 requestAuthorizationWithOptions:68 completionHandler:v9];

    v5 = v10;
  }
}

void sub_100009D04(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100003824();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10002FF28(v2, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Notification dispatched", v11, 2u);
  }
}

void sub_100009D98(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = sub_100003824();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Notification granted", buf, 2u);
    }

    v7 = [HTUserNotificationHelper sharedHelperWithCategories:0];
    v8 = [v7 notificationCenter];
    [v8 addNotificationRequest:*(a1 + 32) withCompletionHandler:&stru_100054EF8];
  }

  else
  {
    v9 = sub_100003824();
    v7 = v9;
    if (v5)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10002FF94(v5, v7, v10, v11, v12, v13, v14, v15);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notification newly denied", v16, 2u);
    }
  }
}

void sub_100009EC0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100003824();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10002FF28(v2, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Notification dispatched", v11, 2u);
  }
}

void sub_100009F54(id a1)
{
  v3 = [NSURL fileURLWithPath:@"/System/Library/UserNotifications/Bundles/com.apple.hangtracerd.usernotifications.bundle" relativeToURL:0];
  v1 = [NSBundle bundleWithURL:v3];
  v2 = qword_100067880;
  qword_100067880 = v1;
}

void sub_10000A0AC()
{
  v0 = sub_100003824();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "marking hangreporter as clean to exit", v2, 2u);
  }

  v1 = [qword_100067898 transaction];

  if (v1)
  {
    [qword_100067898 setTransaction:0];
  }
}

void sub_10000AA50(id a1)
{
  v1 = [[HTFixedSizeQueue alloc] initWithSize:128];
  v2 = qword_100067898;
  qword_100067898 = v1;

  if (!qword_100067898)
  {
    v3 = sub_100003824();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10003006C(v3);
    }

    exit(12);
  }
}

void sub_10000B344()
{
  v0 = [HUDConfiguration alloc];
  v1 = +[HTPrefs sharedPrefs];
  v2 = [v1 runloopHangTimeoutDurationMSec];
  v3 = +[HTPrefs sharedPrefs];
  v4 = [v3 thirdPartyDevPreferredLanguages];
  v5 = +[HTPrefs sharedPrefs];
  v6 = [v5 areProcessTerminationsMonitored];
  v7 = +[HTPrefs sharedPrefs];
  v8 = [HTProcessExitFilteringConfiguration configurationFromPrefs:v7];
  v9 = [(HUDConfiguration *)v0 initWithRunloopHangTimeoutDurationMSec:v2 thirdPartyDevPreferredLanguages:v4 areProcessTerminationsMonitored:v6 processTerminationsFiltering:v8];

  v10 = sub_100003824();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1000300B0();
  }

  v11 = +[HangHUDClient sharedInstance];
  [v11 sendHudConfiguration:v9 completion:&stru_100054F58];
}

void sub_10000B494(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = sub_100003824();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000300E4();
    }
  }
}

void sub_10000B4EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ([@"com.apple.hangtracer.htprefs.refreshed" isEqualToString:?])
  {
    v4 = sub_100003824();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v119 = a3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Handling notification: %@", buf, 0xCu);
    }

    v5 = +[HTPrefs sharedPrefs];
    v6 = [v5 hangtracerDaemonEnabled];

    v7 = sub_100003824();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (v6)
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Hang Tracer Daemon Enabled", buf, 2u);
      }

      if (!launch_service_stats_enable())
      {
        v9 = sub_100003824();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          sub_100030194();
        }
      }

      if (!qword_1000678C0)
      {
        v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, qword_100067D60);
        v11 = qword_1000678C0;
        qword_1000678C0 = v10;

        v12 = dispatch_time(0, 1000000000);
        dispatch_source_set_timer(qword_1000678C0, v12, 0x3B9ACA00uLL, 0x3B9ACA00uLL);
        dispatch_source_set_event_handler(qword_1000678C0, &stru_100055080);
        dispatch_resume(qword_1000678C0);
      }

      if (qword_1000678F8 != -1)
      {
        sub_1000301C8();
      }

      v13 = +[HTPrefs sharedPrefs];
      if ([v13 forceQuitDetectionEnabled])
      {
        v14 = +[HTPrefs sharedPrefs];
        v15 = [v14 isInternal];

        if (v15)
        {
          v16 = sub_100003824();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Force Quit Detection Enabled", buf, 2u);
          }

          if ((byte_100067900 & 1) == 0)
          {
            byte_100067900 = 1;
            sub_100008D88();
          }

          goto LABEL_36;
        }
      }

      else
      {
      }

      v21 = sub_100003824();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Force Quit Detection Disabled", buf, 2u);
      }

      if (byte_100067900 == 1)
      {
        byte_100067900 = 0;
        sub_1000091B0();
      }
    }

    else
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Hang Tracer Daemon Disabled", buf, 2u);
      }

      +[HTProcessInfo stopWatchingAllPids];
      if (byte_100067900 == 1)
      {
        byte_100067900 = 0;
        sub_1000091B0();
      }

      v17 = [HTUserNotificationHelper sharedHelperWithCategories:0];
      v18 = [v17 notificationCenter];

      [v18 removeAllPendingNotificationRequests];
      [v18 removeAllDeliveredNotifications];

      if (!launch_service_stats_disable())
      {
        v19 = sub_100003824();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          sub_100030160();
        }
      }

      if (qword_1000678C0)
      {
        dispatch_source_cancel(qword_1000678C0);
        v20 = qword_1000678C0;
        qword_1000678C0 = 0;
      }
    }

LABEL_36:
    v22 = sub_100003824();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "hangtracerd compiled without App Activation Logging", buf, 2u);
    }

    v23 = +[HTPrefs sharedPrefs];
    v24 = [v23 slowAppActivationTailspinEnabled];

    if (v24)
    {
      v25 = sub_100003824();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Slow App Activation Tailspins Enabled", buf, 2u);
      }

      +[HTTailspin resetDailyActivationTailspinCounts];
      +[HTTailspin resetAppActivationTailspinCounts];
    }

    v26 = +[HTPrefs sharedPrefs];
    v27 = [v26 eplEnabledProfile];

    v28 = +[HTPrefs sharedPrefs];
    v29 = [v28 eplEnabled];

    v30 = sub_100003824();
    v31 = v30;
    if (v27)
    {
      if (v29)
      {
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          sub_100030224();
        }

LABEL_49:

        goto LABEL_57;
      }

      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "EPL is not enabled by PLDE, but enabled by profile, attempting to persist and unredact logs", buf, 2u);
      }

      v32 = 1;
    }

    else
    {
      if (v29)
      {
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          sub_1000301F0();
        }

        goto LABEL_49;
      }

      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "EPL is not enabled by PLDE, and not enabled by profile, attempting to restore os_log state", buf, 2u);
      }

      v32 = 0;
    }

    sub_10001A60C(v32);
LABEL_57:
    v33 = +[STYSignpostsMonitor sharedMonitor];
    v34 = +[HTPrefs sharedPrefs];
    v35 = [v34 signpostMonitoringEnabled];

    v36 = sub_100003824();
    v37 = os_log_type_enabled(v36, OS_LOG_TYPE_INFO);
    if (!v35)
    {
      if (v37)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Signpost Monitoring Disabled", buf, 2u);
      }

      [v33 stopMonitoringSignposts];
LABEL_69:
      v42 = +[HTPrefs sharedPrefs];
      v43 = [v42 appLaunchMonitoringEnabled];

      v44 = sub_100003824();
      v45 = os_log_type_enabled(v44, OS_LOG_TYPE_INFO);
      if (v43)
      {
        if (v45)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "App Launch Monitoring Enabled", buf, 2u);
        }

        [v33 monitorAppLaunchSignposts];
        v35 = 1;
      }

      else
      {
        if (v45)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "App Launch Monitoring Disabled", buf, 2u);
        }

        [v33 stopMonitoringAppLaunchSignposts];
      }

      v46 = +[HTPrefs sharedPrefs];
      v47 = [v46 workflowResponsivenessEnabled];

      v48 = sub_100003824();
      v49 = os_log_type_enabled(v48, OS_LOG_TYPE_INFO);
      if (v47)
      {
        if (v49)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "Workflow Responsiveness Monitoring Enabled", buf, 2u);
        }

        v50 = +[HTPrefs sharedPrefs];
        v51 = [v50 workflowResponsivenessDailyLogLimit];
        v52 = +[HTPrefs sharedPrefs];
        v53 = [v52 workflowResponsivenessPerPeriodLogLimit];
        v54 = +[HTPrefs sharedPrefs];
        [v33 monitorWorkflowsWithDailyLogLimit:v51 perPeriodLogLimit:v53 periodLengthSec:{sub_1000294E0(objc_msgSend(v54, "reportPeriodMATU"))}];
      }

      else
      {
        if (v49)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "Workflow Responsiveness Monitoring Disabled", buf, 2u);
        }

        [v33 stopMonitoringWorkflows];
      }

      if (v35)
      {
        if (!qword_1000678D0)
        {
          v55 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, qword_100067D60);
          v56 = qword_1000678D0;
          qword_1000678D0 = v55;

          v57 = dispatch_time(0, 60000000000);
          dispatch_source_set_timer(qword_1000678D0, v57, 0xDF8475800uLL, 0x3B9ACA00uLL);
          dispatch_source_set_event_handler(qword_1000678D0, &stru_1000550C0);
          dispatch_resume(qword_1000678D0);
        }
      }

      else if (qword_1000678D0)
      {
        dispatch_source_cancel(qword_1000678D0);
        v58 = qword_1000678D0;
        qword_1000678D0 = 0;
      }

      v59 = +[HTPrefs sharedPrefs];
      v60 = [v59 shouldUpdateHangsHUD];

      if (v60)
      {
        if ((byte_1000678A0 & 1) == 0)
        {
          if (!qword_1000678C8)
          {
            v61 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, qword_100067D68);
            v62 = qword_1000678C8;
            qword_1000678C8 = v61;

            v63 = dispatch_time(0, 50000000);
            dispatch_source_set_timer(qword_1000678C8, v63, 0x2FAF080uLL, 0x2FAF080uLL);
            dispatch_source_set_event_handler(qword_1000678C8, &stru_1000550E0);
            dispatch_resume(qword_1000678C8);
          }

          byte_1000678A0 = 1;
        }
      }

      else if (!byte_1000678A0)
      {
        goto LABEL_98;
      }

      v64 = +[HTPrefs sharedPrefs];
      v65 = [v64 shouldUpdateHangsHUD];

      if ((v65 & 1) == 0)
      {
        byte_1000678A0 = 0;
        if (qword_1000678C8)
        {
          dispatch_source_cancel(qword_1000678C8);
          v66 = qword_1000678C8;
          qword_1000678C8 = 0;
        }

        sub_100025F80(0);
      }

LABEL_98:
      v67 = +[HTPrefs sharedPrefs];
      if (([v67 hangtracerDaemonEnabled] & 1) == 0)
      {
        v68 = +[HTPrefs sharedPrefs];
        if (([v68 forceQuitDetectionEnabled] & 1) == 0)
        {
          v69 = +[HTPrefs sharedPrefs];
          if (([v69 appActivationLoggingEnabled] & 1) == 0)
          {
            v70 = +[HTPrefs sharedPrefs];
            if (([v70 signpostMonitoringEnabled] & 1) == 0)
            {
              v71 = +[HTPrefs sharedPrefs];
              if (([v71 workflowResponsivenessEnabled] & 1) == 0)
              {
                v108 = +[HTPrefs sharedPrefs];
                v109 = [v108 appLaunchMonitoringEnabled];

                if ((v109 & 1) == 0)
                {
                  v110 = sub_100003824();
                  if (os_log_type_enabled(v110, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_INFO, "Triggering cleanup of the spool directory on exit", buf, 2u);
                  }

                  sub_10000C640(1);
                  v111 = sub_100003824();
                  if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "hangtracerd will exit. All sources turned off", buf, 2u);
                  }

                  if ((byte_1000678A1 & 1) == 0)
                  {
                    v112 = sub_100003824();
                    if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "hangtracerd is setting up xpc connection and handler before exiting", buf, 2u);
                    }

                    handler[0] = _NSConcreteStackBlock;
                    handler[1] = 3221225472;
                    handler[2] = sub_10000CCA4;
                    handler[3] = &unk_100054F80;
                    mach_service = xpc_connection_create_mach_service("com.apple.hangtracerd", qword_100067D60, 1uLL);
                    v113 = mach_service;
                    xpc_connection_set_event_handler(v113, handler);
                    xpc_connection_resume(v113);
                  }

                  v114 = sub_100003824();
                  if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "hangtracerd is exiting", buf, 2u);
                  }

                  exit(0);
                }

LABEL_108:
                v72 = byte_1000678A2;
                v73 = +[HTPrefs sharedPrefs];
                v74 = [v73 hudEnabled];

                if (v72 == v74)
                {
                  v75 = 1;
                }

                else
                {
                  v76 = +[HTPrefs sharedPrefs];
                  v77 = [v76 hudEnabled];

                  if (v77)
                  {
                    sub_10000B344();
                  }

                  v75 = v77 ^ 1;
                  v78 = +[HTPrefs sharedPrefs];
                  byte_1000678A2 = [v78 hudEnabled];
                }

                v79 = +[HTPrefs sharedPrefs];
                v80 = [v79 areProcessTerminationsMonitored];

                if (!qword_1000678B0)
                {
                  v81 = +[HTPrefs sharedPrefs];
                  v82 = [HTProcessExitFilteringConfiguration configurationFromPrefs:v81];
                  v83 = qword_1000678B0;
                  qword_1000678B0 = v82;
                }

                v84 = +[HTPrefs sharedPrefs];
                v85 = [HTProcessExitFilteringConfiguration configurationFromPrefs:v84];

                v86 = +[HTPrefs sharedPrefs];
                v87 = [v86 runloopHangTimeoutDurationMSec];

                v88 = +[HTPrefs sharedPrefs];
                v89 = [v88 thirdPartyDevPreferredLanguages];

                if (byte_1000678A3 == v80 && v87 == qword_1000678A8 && [v89 isEqualToArray:off_100067470] && (objc_msgSend(v85, "isEqual:", qword_1000678B0) & 1) != 0)
                {
                  v90 = sub_100003824();
                  if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
                  {
                    v91 = @"Disabled";
                    if (v80)
                    {
                      v91 = @"Enabled";
                    }

                    *buf = 138412290;
                    v119 = v91;
                    _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_INFO, "Process Terminations: no changes (%@)", buf, 0xCu);
                  }

                  v92 = v33;
LABEL_153:

                  goto LABEL_154;
                }

                v93 = sub_100003824();
                if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
                {
                  v94 = @"Disabled";
                  if (v80)
                  {
                    v94 = @"Enabled";
                  }

                  *buf = 138412290;
                  v119 = v94;
                  _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_INFO, "Process Terminations: %@", buf, 0xCu);
                }

                v95 = sub_100003824();
                if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
                {
                  *buf = 134217984;
                  v119 = v87;
                  _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_INFO, "HTPrefs.sharedPrefs.timeoutDurationPrevious is now %llu", buf, 0xCu);
                }

                v96 = sub_100003824();
                if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v119 = v89;
                  _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_INFO, "HTPrefs.sharedPrefs.thirdPartyDevPreferredLanguages is now %@", buf, 0xCu);
                }

                if (v75)
                {
                  v97 = +[HTPrefs sharedPrefs];
                  if (([v97 hudEnabled] & 1) != 0 || v80)
                  {
                  }

                  else
                  {
                    v98 = byte_1000678A3;

                    if (v98 != 1)
                    {
                      goto LABEL_139;
                    }
                  }

                  sub_10000B344();
                }

LABEL_139:
                byte_1000678A3 = v80;
                qword_1000678A8 = v87;
                objc_storeStrong(&off_100067470, v89);
                objc_storeStrong(&qword_1000678B0, v85);
                if (v80)
                {
                  v92 = v33;
                  if (!qword_1000678B8)
                  {
                    v99 = +[HangHUDClient sharedInstance];
                    v100 = [v99 obtainKeepHangHUDAliveAssertion:@"HangHUD keep alive assertion from hangtracerd"];
                    v101 = qword_1000678B8;
                    qword_1000678B8 = v100;

                    v115 = 0;
                    v102 = [qword_1000678B8 acquireWithError:&v115];
                    v90 = v115;
                    v103 = sub_100003824();
                    v104 = v103;
                    if (v102)
                    {
                      if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
                      {
                        *buf = 134217984;
                        v119 = qword_1000678B8;
                        _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_INFO, "Acquired keepHangHUDAliveAssertion: %p", buf, 0xCu);
                      }
                    }

                    else if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
                    {
                      sub_100030258();
                    }

                    goto LABEL_153;
                  }
                }

                else
                {
                  v92 = v33;
                  if (qword_1000678B8)
                  {
                    v105 = sub_100003824();
                    if (os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
                    {
                      *buf = 134217984;
                      v119 = qword_1000678B8;
                      _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_INFO, "Invalidating keepHangHUDAliveAssertion: %p", buf, 0xCu);
                    }

                    [qword_1000678B8 invalidate];
                    v90 = qword_1000678B8;
                    qword_1000678B8 = 0;
                    goto LABEL_153;
                  }
                }

LABEL_154:

                return;
              }
            }
          }
        }
      }

      goto LABEL_108;
    }

    if (v37)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Signpost Monitoring Enabled", buf, 2u);
    }

    v38 = +[HTPrefs sharedPrefs];
    if (([v38 eplEnabledProfile] & 1) == 0)
    {
      v39 = +[HTPrefs sharedPrefs];
      if (![v39 eplEnabled])
      {
        v106 = +[HTPrefs sharedPrefs];
        v107 = [v106 isInternal];

        if ((v107 & 1) == 0)
        {
          v40 = v33;
          v41 = 1;
          goto LABEL_65;
        }

LABEL_64:
        v40 = v33;
        v41 = 0;
LABEL_65:
        [v40 monitorSignposts:v41];
        goto LABEL_69;
      }
    }

    goto LABEL_64;
  }
}

void sub_10000C640(int a1)
{
  v2 = sub_100003824();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Cleaning up", buf, 2u);
  }

  v3 = objc_alloc_init(NSMutableArray);
  [v3 addObject:@"/var/root/Library/Caches/hangtracerd/tmp"];
  if (a1)
  {
    [v3 addObject:@"/var/root/Library/Caches/hangtracerd/spool"];
  }

  v4 = +[NSFileManager defaultManager];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v3;
  v33 = [obj countByEnumeratingWithState:&v47 objects:v58 count:16];
  if (v33)
  {
    v32 = *v48;
    v5 = NSURLTotalFileSizeKey;
    v6 = @"/var/root/Library/Caches/hangtracerd/tmp";
    do
    {
      v7 = 0;
      do
      {
        if (*v48 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v34 = v7;
        v8 = *(*(&v47 + 1) + 8 * v7);
        v9 = sub_100003824();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v52 = v8;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Cleaning up %@", buf, 0xCu);
        }

        v10 = [NSURL URLWithString:v8];
        [NSArray arrayWithObjects:NSURLPathKey, NSURLCreationDateKey, v5, 0];
        v11 = v35 = v8;
        v12 = [v4 enumeratorAtURL:v10 includingPropertiesForKeys:v11 options:0 errorHandler:&stru_100055120];

        v13 = v35;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v36 = v12;
        v38 = [v36 countByEnumeratingWithState:&v43 objects:v57 count:16];
        if (v38)
        {
          v37 = *v44;
          do
          {
            v14 = 0;
            do
            {
              if (*v44 != v37)
              {
                objc_enumerationMutation(v36);
              }

              v15 = *(*(&v43 + 1) + 8 * v14);
              v41 = 0;
              v42 = 0;
              v16 = [v15 getResourceValue:&v42 forKey:v5 error:&v41];
              v17 = v42;
              v18 = v41;
              if ((v16 & 1) == 0)
              {
                v19 = sub_100003824();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                {
                  v30 = [v18 localizedDescription];
                  *buf = 138412546;
                  v52 = v15;
                  v53 = 2112;
                  v54 = v30;
                  _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Error getting file size for %@: %@", buf, 0x16u);
                }
              }

              v40 = v18;
              v20 = [v4 removeItemAtURL:v15 error:&v40];
              v21 = v40;

              v22 = sub_100003824();
              v23 = v22;
              if (v20)
              {
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v52 = v15;
                  _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Successfully deleted file at %@", buf, 0xCu);
                }
              }

              else if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                v52 = v15;
                v53 = 2112;
                v54 = v17;
                v55 = 2112;
                v56 = v21;
                _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to delete file at file path: %@ size: %@ error: %@", buf, 0x20u);
              }

              if ([v13 isEqualToString:v6])
              {
                v24 = v6;
                v25 = v5;
                v26 = v4;
                v27 = [v17 unsignedIntValue];
                v28 = sub_100003824();
                v29 = v28;
                if (v27 < 0xC800001)
                {
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412802;
                    v52 = v15;
                    v53 = 2112;
                    v54 = v17;
                    v55 = 1024;
                    LODWORD(v56) = v20;
                    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Detected file abandoned in the tmp directory, file path: %@ size: %@  deleted: %{BOOL}d", buf, 0x1Cu);
                  }
                }

                else
                {
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 138412802;
                    v52 = v15;
                    v53 = 2112;
                    v54 = v17;
                    v55 = 1024;
                    LODWORD(v56) = v20;
                    _os_log_fault_impl(&_mh_execute_header, v29, OS_LOG_TYPE_FAULT, "Detected large file abandoned in the tmp directory, file path: %@ size: %@ deleted: %{BOOL}d", buf, 0x1Cu);
                  }

                  v39 = v17;
                  AnalyticsSendEventLazy();
                  v29 = v39;
                }

                v4 = v26;

                v5 = v25;
                v6 = v24;
                v13 = v35;
              }

              v14 = v14 + 1;
            }

            while (v38 != v14);
            v38 = [v36 countByEnumeratingWithState:&v43 objects:v57 count:16];
          }

          while (v38);
        }

        v7 = v34 + 1;
      }

      while ((v34 + 1) != v33);
      v33 = [obj countByEnumeratingWithState:&v47 objects:v58 count:16];
    }

    while (v33);
  }
}

void sub_10000CCA4(uint64_t a1, void *a2)
{
  v3 = a2;
  type = xpc_get_type(v3);
  if (type == &_xpc_type_connection)
  {
    v6 = sub_100003824();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v14 = 67109120;
      LODWORD(v15) = xpc_connection_get_pid(v3);
      v7 = "XPC: Client started new connection: pid %d";
      v8 = v6;
      v9 = OS_LOG_TYPE_INFO;
      v10 = 8;
      goto LABEL_8;
    }
  }

  else
  {
    v5 = type;
    if (type == &_xpc_type_error)
    {
      string = xpc_dictionary_get_string(v3, _xpc_error_key_description);
      if (v3 == &_xpc_error_connection_invalid)
      {
        v6 = sub_100003824();
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          goto LABEL_9;
        }

        pid = xpc_connection_get_pid(*(a1 + 32));
        v14 = 136315394;
        v15 = string;
        v16 = 1024;
        v17 = pid;
        v7 = "xpc_error_connection_invalid %s - from pid %d";
        v8 = v6;
        v9 = OS_LOG_TYPE_INFO;
        v10 = 18;
        goto LABEL_8;
      }

      v12 = sub_100003824();
      v6 = v12;
      if (v3 == &_xpc_error_connection_interrupted)
      {
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_9;
        }

        v14 = 136315138;
        v15 = string;
        v7 = "xpc_error_connection_interrupted: %s";
        goto LABEL_5;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100030304();
      }
    }

    else
    {
      v6 = sub_100003824();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 134217984;
        v15 = v5;
        v7 = "hangtracerd: unknown event type : %p";
LABEL_5:
        v8 = v6;
        v9 = OS_LOG_TYPE_DEFAULT;
        v10 = 12;
LABEL_8:
        _os_log_impl(&_mh_execute_header, v8, v9, v7, &v14, v10);
      }
    }
  }

LABEL_9:
}

void sub_10000CECC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  sub_100003738(@"Sentry Tailspin Request");
  v7 = [a3 isEqualToString:off_1000676A0];
  v8 = sub_100003824();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v84 = "handleSentryTailspinRequest";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s: received problem detected notification", buf, 0xCu);
    }

    v10 = off_1000676B0;
    v11 = a5;
    v12 = [v11 objectForKeyedSubscript:v10];
    v13 = [v11 objectForKeyedSubscript:off_1000676C8];
    v14 = [v11 objectForKeyedSubscript:off_1000676B8];
    v15 = [v11 objectForKeyedSubscript:off_1000676C0];
    v16 = [v11 objectForKeyedSubscript:off_1000676D0];
    v56 = [v11 objectForKeyedSubscript:off_1000676D8];
    v57 = [v11 objectForKeyedSubscript:off_1000676E0];
    v55 = [v11 objectForKeyedSubscript:off_1000676E8];
    v17 = [v11 objectForKeyedSubscript:off_1000676F0];

    if (!v12)
    {
      v21 = sub_100003824();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100030958();
      }

      v22 = sub_10001990C(0, @"reportRef is nil, this is REALLY bad");
      v81 = off_100067710;
      v82 = v22;
      v18 = [NSDictionary dictionaryWithObjects:&v82 forKeys:&v81 count:1];
      goto LABEL_50;
    }

    v53 = v14;
    v54 = v15;
    if (v13)
    {
      if (v14)
      {
        if (v15)
        {
          if (v17)
          {
            v18 = 0;
            v19 = 0;
            v20 = 0;
LABEL_29:
            v29 = [v17 isEqualToString:off_1000676F8];
            if (!v29 || v16)
            {
              if (v57)
              {
                v33 = 0;
              }

              else
              {
                v33 = v29;
              }

              if (v33 == 1)
              {
                v34 = sub_100003824();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                {
                  sub_100030858();
                }

                v22 = sub_10001990C(0, @"duration is nil for App launch request type");

                v69[0] = off_1000676B0;
                v69[1] = off_100067710;
                v70[0] = v12;
                v70[1] = v22;
                v31 = v70;
                v32 = v69;
              }

              else
              {
                if (v56)
                {
                  v35 = 0;
                }

                else
                {
                  v35 = v29;
                }

                if (v35 != 1)
                {
                  if (v55)
                  {
                    v40 = 0;
                  }

                  else
                  {
                    v40 = v29;
                  }

                  if (v40 == 1)
                  {
                    v41 = sub_100003824();
                    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                    {
                      sub_100030758();
                    }

                    v22 = sub_10001990C(0, @"threshold is nil for App launch request type");

                    v65[0] = off_1000676B0;
                    v65[1] = off_100067710;
                    v66[0] = v12;
                    v66[1] = v22;
                    v42 = [NSDictionary dictionaryWithObjects:v66 forKeys:v65 count:2];

                    v18 = v42;
                    v14 = v53;
                    goto LABEL_50;
                  }

                  if (!v19)
                  {
                    if (v29)
                    {
                      v63[0] = off_1000676B0;
                      v63[1] = off_1000676D8;
                      v64[0] = v12;
                      v64[1] = v56;
                      v63[2] = @"PID";
                      v63[3] = @"StartTime";
                      v14 = v53;
                      v64[2] = v16;
                      v64[3] = v53;
                      v64[4] = v15;
                      v63[4] = @"EndTime";
                      v63[5] = off_100067708;
                      v43 = +[NSUUID UUID];
                      v44 = [v43 UUIDString];
                      v63[6] = off_1000676F0;
                      v64[5] = v44;
                      v64[6] = off_1000676F8;
                      v45 = v44;
                      v46 = [NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:7];

                      v47 = v46;
                    }

                    else
                    {
                      v61[0] = off_1000676B0;
                      v61[1] = off_1000676F0;
                      v62[0] = v12;
                      v62[1] = off_100067700;
                      v47 = [NSDictionary dictionaryWithObjects:v62 forKeys:v61 count:2];
                      v14 = v53;
                    }

                    v48 = sub_100003824();
                    v15 = v54;
                    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
                    {
                      sub_100030600(v14, v54, v48);
                    }

                    v58 = v20;
                    v52 = +[HTTailspin saveSentryTailspin:infoDict:startTime:endTime:error:](HTTailspin, "saveSentryTailspin:infoDict:startTime:endTime:error:", v13, v47, [v14 unsignedLongLongValue], objc_msgSend(v54, "unsignedLongLongValue"), &v58);
                    v22 = v58;

                    if ((v52 & 1) == 0)
                    {
                      v49 = sub_100003824();
                      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                      {
                        sub_1000306C0(v22);
                      }

                      v59[0] = off_1000676B0;
                      v59[1] = off_100067710;
                      v60[0] = v12;
                      v60[1] = v22;
                      v50 = [NSDictionary dictionaryWithObjects:v60 forKeys:v59 count:2];

                      LocalCenter = CFNotificationCenterGetLocalCenter();
                      CFNotificationCenterPostNotification(LocalCenter, off_1000676A8, 0, v50, 1u);
                      v18 = v50;
                    }

                    sub_100004420(@"Sentry Tailspin Request");

                    goto LABEL_53;
                  }

                  v22 = v20;
LABEL_49:
                  v14 = v53;
LABEL_50:
                  v38 = sub_100003824();
                  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000309D8();
                  }

                  v39 = CFNotificationCenterGetLocalCenter();
                  CFNotificationCenterPostNotification(v39, off_1000676A8, 0, v18, 1u);
                  sub_100004420(@"Sentry Tailspin Request");
LABEL_53:

                  return;
                }

                v36 = sub_100003824();
                if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                {
                  sub_1000307D8();
                }

                v22 = sub_10001990C(0, @"reason is nil for App launch request type");

                v67[0] = off_1000676B0;
                v67[1] = off_100067710;
                v68[0] = v12;
                v68[1] = v22;
                v31 = v68;
                v32 = v67;
              }
            }

            else
            {
              v30 = sub_100003824();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                sub_1000308D8();
              }

              v22 = sub_10001990C(0, @"pid is nil for App launch request type");

              v71[0] = off_1000676B0;
              v71[1] = off_100067710;
              v72[0] = v12;
              v72[1] = v22;
              v31 = v72;
              v32 = v71;
            }

            v37 = [NSDictionary dictionaryWithObjects:v31 forKeys:v32 count:2];

            v18 = v37;
            goto LABEL_49;
          }

          v28 = sub_100003824();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            sub_100030400();
          }

          v20 = sub_10001990C(0, @"reportType is nil");
          v73[0] = off_1000676B0;
          v73[1] = off_100067710;
          v74[0] = v12;
          v74[1] = v20;
          v24 = v74;
          v25 = v73;
        }

        else
        {
          v27 = sub_100003824();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            sub_100030480();
          }

          v20 = sub_10001990C(0, @"endTime is nil");
          v75[0] = off_1000676B0;
          v75[1] = off_100067710;
          v76[0] = v12;
          v76[1] = v20;
          v24 = v76;
          v25 = v75;
        }
      }

      else
      {
        v26 = sub_100003824();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_100030500();
        }

        v20 = sub_10001990C(0, @"startTime is nil");
        v77[0] = off_1000676B0;
        v77[1] = off_100067710;
        v78[0] = v12;
        v78[1] = v20;
        v24 = v78;
        v25 = v77;
      }
    }

    else
    {
      v23 = sub_100003824();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_100030580();
      }

      v20 = sub_10001990C(0, @"fileName is nil");
      v79[0] = off_1000676B0;
      v79[1] = off_100067710;
      v80[0] = v12;
      v80[1] = v20;
      v24 = v80;
      v25 = v79;
    }

    v18 = [NSDictionary dictionaryWithObjects:v24 forKeys:v25 count:2];
    v19 = 1;
    goto LABEL_29;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_100030380();
  }

  sub_100004420(@"Sentry Tailspin Request");
}

void start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v2 = dispatch_queue_create("com.apple.hangtracer", v1);
  v3 = qword_100067D60;
  qword_100067D60 = v2;

  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v5 = dispatch_queue_create("com.apple.hangtracer.hud.timer", v4);
  v6 = qword_100067D68;
  qword_100067D68 = v5;

  v7 = dispatch_queue_create("com.apple.hangtracerd.state", v1);
  v8 = qword_100067D70;
  qword_100067D70 = v7;

  v9 = notify_register_check("com.apple.hangtracerd.processing", &dword_100067468);
  if (v9 || dword_100067468 == -1)
  {
    v10 = sub_100003824();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      buf.st_dev = 67109376;
      *&buf.st_mode = v9;
      LOWORD(buf.st_ino) = 1024;
      *(&buf.st_ino + 2) = dword_100067468;
      _os_log_fault_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "Unable to check-in with notification: %d (token %d)", &buf, 0xEu);
    }

    dword_100067468 = -1;
  }

  xpc_set_event_stream_handler("com.apple.notifyd.matching", qword_100067D60, &stru_100055000);
  sub_10000C640(0);
  v11 = 0;
  while (1)
  {
    memset(&buf, 0, sizeof(buf));
    v12 = off_100055168[v11];
    if (!stat(v12, &buf))
    {
      if ((buf.st_mode & 0xF000) == 0x4000)
      {
        goto LABEL_15;
      }

      if (unlink(v12) < 0)
      {
        v17 = sub_100003824();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *v33 = 136315138;
          v34 = v12;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Unable to remove previous non-directory at %s", v33, 0xCu);
        }
      }
    }

    v13 = sub_100003824();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *v33 = 136315138;
      v34 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Create log directory: %s", v33, 0xCu);
    }

    if (mkdir(v12, 0x1EDu))
    {
      v14 = sub_100003824();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = __error();
        v16 = strerror(*v15);
        *v33 = 136315394;
        v34 = v12;
        v35 = 2080;
        v36 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Cannot create spool directory - %s failed with %s - continuing anyway.", v33, 0x16u);
      }
    }

LABEL_15:
    if (++v11 == 3)
    {
      LocalCenter = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterAddObserver(LocalCenter, 0, sub_10000B4EC, @"com.apple.hangtracer.htprefs.refreshed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v19 = +[HTPrefs sharedPrefs];
      [v19 setupPrefsWithQueue:qword_100067D60];

      v20 = objc_alloc_init(NSDateFormatter);
      v21 = qword_100067D58;
      qword_100067D58 = v20;

      [qword_100067D58 setDateFormat:@"yyyy-MM-dd-HHmmss.SSS"];
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1000040C8;
      handler[3] = &unk_100054F80;
      v22 = xpc_connection_create_mach_service("com.apple.hangtracerd", qword_100067D60, 1uLL);
      handler[4] = v22;
      xpc_connection_set_event_handler(v22, handler);
      xpc_connection_resume(v22);
      byte_1000678A1 = 1;
      v23 = +[HTPrefs sharedPrefs];
      v24 = [v23 shouldIncludeDisplayData];

      if (v24)
      {
        *v33 = 0;
        v25 = notify_register_dispatch("com.apple.iokit.hid.displayStatus", v33, qword_100067D60, &stru_100055040);
        if (v25)
        {
          v26 = v25;
          [HTProcessInfo addDisplayStateChangeEvent:mach_absolute_time(), 0xFFFFFFFFLL];
          v27 = sub_100003824();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            buf.st_dev = 67109120;
            *&buf.st_mode = v26;
            _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Error listening to display state changes. Error code: %u", &buf, 8u);
          }
        }

        else
        {
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10000E094;
          block[3] = &unk_100055060;
          v31 = *v33;
          dispatch_async(qword_100067D60, block);
        }
      }

      v28 = sub_100003824();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        buf.st_dev = 138412290;
        *&buf.st_mode = off_1000676A0;
        _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "Adding %@ notification observer", &buf, 0xCu);
      }

      v29 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterAddObserver(v29, 0, sub_10000CECC, off_1000676A0, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      dispatch_main();
    }
  }
}

void sub_10000DE20(id a1, OS_xpc_object *a2)
{
  v2 = [NSString stringWithUTF8String:xpc_dictionary_get_string(a2, _xpc_event_key_name)];
  v3 = sub_100003824();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "hangtracerd: Received XPC Event via notifyd: notification name = %{public}@", &v4, 0xCu);
  }
}

void sub_10000DEF4(id a1, int a2)
{
  v6 = 0;
  v7 = 0;
  if (sub_10000E038(a2, &v6))
  {
    v2 = v6;
    v3 = v7;
    [HTProcessInfo addDisplayStateChangeEvent:v6, v7];
    v4 = sub_100003824();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 67109632;
      v9 = v3 == 0;
      v10 = 1024;
      v11 = v3;
      v12 = 2048;
      v13 = v2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Display state changed %d -> %d,  time: %llu", buf, 0x18u);
    }
  }

  else
  {
    v5 = mach_absolute_time();

    [HTProcessInfo addDisplayStateChangeEvent:v5, 0xFFFFFFFFLL];
  }
}

BOOL sub_10000E038(int a1, uint64_t a2)
{
  state64 = 0;
  state = notify_get_state(a1, &state64);
  if (!state)
  {
    *a2 = mach_absolute_time();
    *(a2 + 8) = state64 != 0;
  }

  return state == 0;
}

void sub_10000E094(uint64_t a1)
{
  v5 = 0;
  v6 = 0;
  if (sub_10000E038(*(a1 + 32), &v5))
  {
    v1 = v5;
    v2 = v6;
    [HTProcessInfo addDisplayStateChangeEvent:v5, v6];
    v3 = sub_100003824();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      v8 = v2;
      v9 = 2048;
      v10 = v1;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Current display state: %d, time: %llu", buf, 0x12u);
    }
  }

  else
  {
    v4 = mach_absolute_time();

    [HTProcessInfo addDisplayStateChangeEvent:v4, 0xFFFFFFFFLL];
  }
}

void sub_10000E1C4(id a1)
{
  v1 = sub_100007B10();
  v2 = sub_100009568();
  v10[0] = v1;
  v10[1] = v2;
  v3 = [NSArray arrayWithObjects:v10 count:2];
  v4 = [HTUserNotificationHelper sharedHelperWithCategories:v3];
  v5 = [HTUserNotificationHelper sharedHelperWithCategories:0];
  v6 = [v1 identifier];
  v7 = sub_100007C80();
  [v5 associatePrefix:v6 withHandler:v7];

  v8 = [HTUserNotificationHelper sharedHelperWithCategories:0];
  v9 = [v2 identifier];
  [v8 associatePrefix:v9 withHandler:0];
}

void sub_10000E310(id a1)
{
  v1 = mach_absolute_time();
  v2 = +[HTPrefs sharedPrefs];
  v3 = [v2 signpostMonitoringPerPeriodLogLimit];

  if (v3 >= 1)
  {
    v4 = +[HTPrefs sharedPrefs];
    v5 = [v4 reportPeriodMATU];
    v6 = +[HTPrefs sharedPrefs];
    v7 = v5 / [v6 signpostMonitoringPerPeriodLogLimit];

    if (v1 - qword_100067908 > v7)
    {
      +[HTTailspin refreshPerPeriodSentryLogCount];
      qword_100067908 = v1;
    }
  }

  v8 = qword_100067910;
  if (!qword_100067910)
  {
    qword_100067910 = v1;
    v8 = v1;
  }

  if (v1 - v8 >= 0x1E2CC310001)
  {
    +[HTTailspin resetDailySentryTailspinCounts];
    qword_100067910 = v1;
  }
}

void sub_10000E400(id a1)
{
  v1 = mach_absolute_time();
  [HTProcessInfo checkForHUDTimeouts:v1];
  v2 = +[HTPrefs sharedPrefs];
  v3 = [v2 shouldDisplayFenceHangToHUD];

  if (v3)
  {
    v4 = &qword_100067928;
    v5 = 5;
    while (1)
    {
      v6 = *(v4 - 1);
      if (v6)
      {
        v7 = *v4;
        v8 = sub_1000024F8(v1);
        if (v7 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_7;
        }

        if (v8 - sub_1000024F8(v7) < 1000.0)
        {
          break;
        }
      }

LABEL_8:
      v4 += 3;
      if (!--v5)
      {
        goto LABEL_9;
      }
    }

    v8 = sub_1000024F8(v7);
LABEL_7:
    v9 = sub_1000024F8(v6);
    sub_1000251D8("Fence Hang", v1, v6, v7, 0, 0, v8 - v9);
    goto LABEL_8;
  }

LABEL_9:

  sub_1000257B8();
}

BOOL sub_10000E51C(id a1, NSURL *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = sub_100003824();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100030DFC();
  }

  return 1;
}

id sub_10000E590(uint64_t a1)
{
  v5[0] = @"DeletionSucceeded";
  v2 = [NSNumber numberWithBool:*(a1 + 40)];
  v5[1] = @"FileSizeBytes";
  v6[0] = v2;
  v6[1] = *(a1 + 32);
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

void sub_10000E654(uint64_t a1, uint64_t a2)
{
  v4 = dword_100067994;
  if (qword_100067918[3 * dword_100067994] != a1)
  {
    v5 = 0;
    v4 = -1;
    v6 = qword_100067918;
    do
    {
      v7 = *v6;
      v6 += 3;
      if (v7 == a1)
      {
        v4 = v5;
      }

      ++v5;
    }

    while (v5 != 5);
  }

  if ((v4 & 0x80000000) != 0)
  {
    v8 = sub_100003824();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = a1;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "HTFenceTracking: Fence end, failed to find corresponding fence(%llu)", &v10, 0xCu);
    }
  }

  else
  {
    qword_100067918[3 * v4 + 2] = a2;
  }

  v9 = sub_100003824();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = 134218496;
    v11 = a1;
    v12 = 2048;
    v13 = a2;
    v14 = 1024;
    v15 = v4;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "saveFenceEndTime: name=%llu, end=%llu, arr_index=%d", &v10, 0x1Cu);
  }
}

void sub_10000E814(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_10000EB44(void *a1, double a2)
{
  v3 = a1;
  v4 = sub_100003824();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100031418();
  }

  if ((byte_100067D7C & 1) == 0)
  {
    v5 = sub_100003824();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10003148C();
    }

    sub_100003738(v3);
  }

  if (!qword_100067998)
  {
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, qword_100067D60);
    v7 = qword_100067998;
    qword_100067998 = v6;

    dispatch_source_set_event_handler_f(qword_100067998, sub_10000EC7C);
    dispatch_activate(qword_100067998);
  }

  v8 = dispatch_time(0, (a2 * 1000000.0));
  dispatch_source_set_timer(qword_100067998, v8, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
  byte_100067D7C = 1;
}

id sub_10000EC7C()
{
  +[HTHangInfo getHangWaitTimeout];
  v1 = v0;
  v2 = sub_100003824();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100031500(v1, v2, v3, v4, v5, v6, v7, v8);
  }

  if (v1)
  {
    return sub_10000EB44(@"Check for Pending Hangs", v1);
  }

  v10 = sub_100003824();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_100031580(v10);
  }

  result = +[HTTailspin saveTailspinForAllPendingHangs];
  byte_100067D7C = 0;
  return result;
}

void sub_10000EFA8(id a1)
{
  v1 = objc_alloc_init(NSMutableArray);
  v2 = qword_1000679B0;
  qword_1000679B0 = v1;

  qword_1000679A0 = 0;
  qword_1000679C0 = -1;
  qword_1000679C8 = 0;
  v3 = qword_100067998;
  if (qword_100067998)
  {
    dispatch_source_cancel(qword_100067998);
    sub_100004420(@"Check for Pending Hangs");
    byte_100067D7C = 0;
    v3 = qword_100067998;
  }

  qword_100067998 = 0;
}

int64_t sub_10000F034(id a1, HTHangInfo *a2, HTHangInfo *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(HTHangInfo *)v4 startTime];
  if (v6 <= [(HTHangInfo *)v5 startTime])
  {
    v8 = [(HTHangInfo *)v4 startTime];
    if (v8 >= [(HTHangInfo *)v5 startTime])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

void sub_10000FE30(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_10000FE4C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

id sub_10001008C(uint64_t a1)
{
  if (a1 == 2)
  {
    +[HUDTheme darkModeTheme];
  }

  else
  {
    +[HUDTheme lightModeTheme];
  }
  v1 = ;

  return v1;
}

void sub_100010440(id a1)
{
  v1 = objc_alloc_init(NSCache);
  v2 = qword_1000679D8;
  qword_1000679D8 = v1;

  v3 = qword_1000679D8;

  [v3 setCountLimit:20];
}

void sub_100010A38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100010A68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadThemeColors];
}

void sub_100010AA8(uint64_t a1)
{
  [*(a1 + 32) updateHUDLineWithId:@"some-id" content:*(a1 + 40) options:0];
  v2 = [*(a1 + 48) valueLayer];
  [v2 preferredFrameSize];
  [*(a1 + 32) setMinimumValueLayerWidth:?];

  v3 = *(a1 + 32);
  v5 = [v3 hudLines];
  v4 = [v5 objectForKeyedSubscript:@"some-id"];
  [v3 updateCornerRadiusAndSidePaddingIfNecessary:v4];
}

id sub_100010E9C(uint64_t a1)
{
  v2 = sub_100003824();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) objectForKeyedSubscript:NSKeyValueChangeOldKey];
    v4 = [*(a1 + 32) objectForKeyedSubscript:NSKeyValueChangeNewKey];
    *buf = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "HangTracer HUD new orientation %@ → %@", buf, 0x16u);
  }

  sub_100029ED0();
  v5 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100010FEC;
  v7[3] = &unk_100054D38;
  v7[4] = v5;
  return [v5 performHUDUpdate:v7];
}

void sub_100010FEC(uint64_t a1)
{
  v2 = [*(a1 + 32) hudLines];
  v5 = [v2 allKeys];

  [*(a1 + 32) layoutHUDLines:objc_msgSend(v5 ids:{"count"), v5}];
  [*(a1 + 32) determineNewFrameForRootLayer:objc_msgSend(v5 numberOfLines:{"count"), v3, v4}];
}

id sub_100011094(uint64_t a1)
{
  v2 = sub_100003824();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) objectForKeyedSubscript:NSKeyValueChangeOldKey];
    v4 = [*(a1 + 32) objectForKeyedSubscript:NSKeyValueChangeNewKey];
    *buf = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "HangTracer HUD new bounds %@ → %@", buf, 0x16u);
  }

  sub_100029EEC();
  [*(a1 + 40) setDisplayScaleDependentPropertiesOnLayers];
  v5 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000111EC;
  v7[3] = &unk_100054D38;
  v7[4] = v5;
  return [v5 performHUDUpdate:v7];
}

void sub_1000111EC(uint64_t a1)
{
  [*(a1 + 32) setSidePadding:0.0];
  [*(a1 + 32) setLastKnownMaxKeyLayerWidth:0.0];
  v2 = [*(a1 + 32) hudLines];
  v3 = [v2 allKeys];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = [*(a1 + 32) hudLines];
        v11 = [v10 objectForKeyedSubscript:v9];
        sub_100029930();
        [v11 setFontSize:?];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  [*(a1 + 32) layoutHUDLines:objc_msgSend(v4 ids:{"count"), v4}];
  [*(a1 + 32) determineNewFrameForRootLayer:objc_msgSend(v4 numberOfLines:{"count"), v12, v13}];
}

void sub_1000115DC(uint64_t a1)
{
  v2 = [HUDLine contentScaleForTexts]_0();
  CATransform3DMakeScale(&v7, v2, v2, v2);
  v3 = [*(a1 + 32) rootLayer];
  v6 = v7;
  [v3 setTransform:&v6];

  v4 = [*(a1 + 32) containerLayer];
  [v4 setShadowOffset:{0.0, 10.0 / v2}];

  v5 = [*(a1 + 32) containerLayer];
  [v5 setShadowRadius:25.0 / v2];
}

void sub_100011A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v7 + 40));
  _Unwind_Resume(a1);
}

void sub_100011A50(id a1, NSString *a2, HUDLine *a3, BOOL *a4)
{
  v4 = a3;
  [(HUDLine *)v4 removeFromSuperlayer];
  [(HUDLine *)v4 nilifyCALayers];
}

void sub_100011AA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[1];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100011B44;
    v6[3] = &unk_100054C38;
    v5 = *(a1 + 32);
    v6[4] = v3;
    v6[5] = v5;
    dispatch_async(v4, v6);
  }
}

void sub_100011B44(uint64_t a1)
{
  v2 = [*(a1 + 32) containerLayer];

  if (v2)
  {
    os_unfair_lock_lock((*(a1 + 40) + 16));
    v3 = [*(a1 + 32) hudLines];
    [v3 enumerateKeysAndObjectsUsingBlock:&stru_100055298];

    v4 = [*(a1 + 32) hudLines];
    [v4 removeAllObjects];

    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v8 = [*(a1 + 32) containerLayer];
    [v8 setFrame:{CGRectZero.origin.x, y, width, height}];

    v9 = [*(a1 + 32) rootLayer];
    [v9 setHidden:1];

    [*(a1 + 32) invalidate];
    v10 = (*(a1 + 32) + 16);

    os_unfair_lock_unlock(v10);
  }

  else
  {
    v11 = sub_100003824();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_100031B08();
    }
  }
}

void sub_100011C80(id a1, NSString *a2, HUDLine *a3, BOOL *a4)
{
  v4 = a3;
  [(HUDLine *)v4 removeFromSuperlayer];
  [(HUDLine *)v4 nilifyCALayers];
}

void sub_100011EB4(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v3 = [*(a1 + 32) hudLines];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10001224C;
  v35[3] = &unk_1000552E8;
  v36 = *(a1 + 40);
  v37 = *(a1 + 48);
  v4 = v2;
  v38 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v35];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        v11 = [*(a1 + 32) hudLines];
        v12 = [v11 objectForKeyedSubscript:v10];
        [v12 removeFromSuperlayer];

        v13 = [*(a1 + 32) hudLines];
        [v13 removeObjectForKey:v10];

        v14 = [*(a1 + 32) hudContentWithPendingAnimations];
        [v14 removeObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v7);
  }

  v15 = sub_100003824();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_100031BC0(a1);
  }

  v16 = [*(a1 + 32) containerLayer];
  [v16 removeAllAnimations];

  if (*(a1 + 56))
  {
    v17 = 0;
    do
    {
      v18 = [*(a1 + 48) objectAtIndexedSubscript:{v17, v31}];
      v19 = [*(a1 + 40) objectForKeyedSubscript:v18];
      [*(a1 + 32) HangHUD_updater_latency_in_ms];
      v21 = sub_100029F30(v19, *(a1 + 64), v20 + 50.0);
      if ([v19 timedOut])
      {
        v22 = v21 | 2;
      }

      else
      {
        v22 = v21;
      }

      [*(a1 + 32) updateHUDLineWithId:v18 content:v19 options:v22];

      ++v17;
      v23 = *(a1 + 56);
    }

    while (v17 < v23);
  }

  else
  {
    v23 = 0;
  }

  [*(a1 + 32) layoutHUDLines:v23 ids:{*(a1 + 48), v31}];
  [*(a1 + 32) determineNewFrameForRootLayer:*(a1 + 56) numberOfLines:?];
  v24 = [*(a1 + 32) containerLayer];
  v25 = [v24 sublayers];
  v26 = [v25 count];

  if (v26)
  {
    v27 = [*(a1 + 32) rootLayer];
    [v27 setHidden:0];

    v28 = [*(a1 + 32) containerLayer];
    [v28 setHidden:0];

    v29 = [*(a1 + 32) containerLayer];
    LODWORD(v30) = 1.0;
    [v29 setOpacity:v30];
  }
}

void sub_10001224C(id *a1, void *a2)
{
  v6 = a2;
  v3 = [a1[4] objectForKeyedSubscript:?];
  if (!v3 || (v4 = v3, v5 = [a1[5] indexOfObject:v6], v4, v5 == 0x7FFFFFFFFFFFFFFFLL))
  {
    [a1[6] addObject:v6];
  }
}

void sub_1000124C4(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v3 = [*(a1 + 32) hudLines];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1000128F4;
  v42[3] = &unk_1000552E8;
  v43 = *(a1 + 40);
  v44 = *(a1 + 48);
  v4 = v2;
  v45 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v42];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v39;
    *&v7 = 138412290;
    v37 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v38 + 1) + 8 * i);
        v12 = [*(a1 + 32) hudLines];
        v13 = [v12 objectForKeyedSubscript:v11];
        [v13 removeFromSuperlayer];

        v14 = [*(a1 + 32) hudLines];
        v15 = [v14 objectForKeyedSubscript:v11];
        [v15 nilifyCALayers];

        v16 = [*(a1 + 32) hudLines];
        [v16 removeObjectForKey:v11];

        v17 = sub_100003824();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v37;
          v47 = v11;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Removed hudLines item %@", buf, 0xCu);
        }

        v18 = [*(a1 + 32) hudContentWithPendingAnimations];
        [v18 removeObject:v11];
      }

      v8 = [v5 countByEnumeratingWithState:&v38 objects:v48 count:16];
    }

    while (v8);
  }

  v19 = sub_100003824();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    sub_100031C38(a1);
  }

  v20 = [*(a1 + 32) containerLayer];
  [v20 removeAllAnimations];

  if (*(a1 + 56))
  {
    v21 = 0;
    do
    {
      v22 = [*(a1 + 48) objectAtIndexedSubscript:v21];
      v23 = [*(a1 + 40) objectForKeyedSubscript:v22];
      [*(a1 + 32) HangHUD_updater_latency_in_ms];
      v25 = [v23 isCurrent:*(a1 + 64) withHUDUpdateInterval:v24 + 50.0];
      if ([v23 isTimedOut])
      {
        v26 = v25 | 2;
      }

      else
      {
        v26 = v25;
      }

      [*(a1 + 32) updateHUDLineWithId:v22 content:v23 options:v26];

      ++v21;
      v27 = *(a1 + 56);
    }

    while (v21 < v27);
  }

  else
  {
    v27 = 0;
  }

  [*(a1 + 32) layoutHUDLines:v27 ids:*(a1 + 48)];
  [*(a1 + 32) determineNewFrameForRootLayer:*(a1 + 56) numberOfLines:?];
  v28 = [*(a1 + 32) containerLayer];
  v29 = [v28 sublayers];
  v30 = [v29 count];

  if (v30)
  {
    v31 = [*(a1 + 32) rootLayer];
    [v31 setHidden:0];

    v32 = [*(a1 + 32) containerLayer];
    [v32 setHidden:0];

    [*(a1 + 32) HUD_background_opacity];
    v34 = v33;
    v35 = [*(a1 + 32) containerLayer];
    *&v36 = v34;
    [v35 setOpacity:v36];
  }
}

void sub_1000128F4(id *a1, void *a2)
{
  v6 = a2;
  v3 = [a1[4] objectForKeyedSubscript:?];
  if (!v3 || (v4 = v3, v5 = [a1[5] indexOfObject:v6], v4, v5 == 0x7FFFFFFFFFFFFFFFLL))
  {
    [a1[6] addObject:v6];
  }
}

void sub_1000131CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100013204(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = a3;
  v4 = [v20 keyLayer];
  if (v4)
  {
    v5 = v4;
    v6 = [v20 keyLayer];
    [v6 preferredFrameSize];
    v8 = v7;
    v9 = *(*(*(a1 + 32) + 8) + 24);

    if (v8 > v9)
    {
      v10 = [v20 keyLayer];
      [v10 preferredFrameSize];
      *(*(*(a1 + 32) + 8) + 24) = v11;
    }
  }

  v12 = [v20 valueLayer];
  if (v12)
  {
    v13 = v12;
    v14 = [v20 valueLayer];
    [v14 preferredFrameSize];
    v16 = v15;
    v17 = *(*(*(a1 + 40) + 8) + 24);

    if (v16 > v17)
    {
      v18 = [v20 valueLayer];
      [v18 preferredFrameSize];
      *(*(*(a1 + 40) + 8) + 24) = v19;
    }
  }
}

void sub_100013550(uint64_t a1)
{
  v2 = [*(a1 + 32) currentTheme];
  v3 = [v2 backgroundColor];
  v4 = [*(a1 + 32) containerLayer];
  [v4 setBackgroundColor:v3];

  v5 = [*(a1 + 32) hudLines];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100013664;
  v9[3] = &unk_100055388;
  v9[4] = *(a1 + 32);
  [v5 enumerateKeysAndObjectsUsingBlock:v9];

  v6 = [*(a1 + 32) lastKnownHangs];

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [v7 lastKnownHangs];
    [v7 updateHangs:v8 withCompletion:&stru_1000553A8];
  }
}

void sub_100013664(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [*(a1 + 32) currentTheme];
    [v5 setCurrentTheme:v4];
  }
}

void sub_100013920(uint64_t a1)
{
  v2 = [*(a1 + 32) getKeyForLine:*(a1 + 40)];
  if (v2)
  {
    v3 = sub_100003824();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_100031CB0();
    }

    v4 = [*(a1 + 32) hudContentWithPendingAnimations];
    [v4 removeObject:v2];
  }
}

void sub_100013A44(uint64_t a1)
{
  v2 = [*(a1 + 32) getKeyForLine:*(a1 + 40)];
  if (v2)
  {
    v3 = sub_100003824();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_100031D20();
    }

    v4 = [*(a1 + 32) hudContentWithPendingAnimations];
    [v4 addObject:v2];
  }
}

void sub_100013CE4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_100013ECC(id a1)
{
  SRGB = CGColorCreateSRGB(1.0, 1.0, 1.0, 1.0);
  v2 = CGColorCreateSRGB(0.0, 0.0, 0.0, 1.0);
  v3 = CGColorCreateSRGB(0.556862745, 0.556862745, 0.576470588, 1.0);
  v4 = CGColorCreateSRGB(0.921568627, 0.537254902, 0.0, 1.0);
  CopyWithAlpha = CGColorCreateCopyWithAlpha(v4, 0.67);
  v6 = CGColorCreateSRGB(0.949019608, 0.219607843, 0.180392157, 1.0);
  v7 = CGColorCreateCopyWithAlpha(v6, 0.67);
  v8 = CGColorCreateSRGB(0.0, 0.0, 0.0, 1.0);
  v9 = CGColorCreateSRGB(0.396078431, 0.396078431, 0.396078431, 1.0);
  v10 = [[HUDTheme alloc] initWithPreviousHangTextColor:v3 currentHangTextColor:v2 currentHangSevereTextColor:v4 previousHangSevereTextColor:CopyWithAlpha currentHangCriticalTextColor:v6 previousHangCriticalTextColor:v7 backgroundColor:SRGB currentProcessExitTextColor:v8 processExitReasonNamespaceTextColor:v9];
  v11 = qword_1000679E8;
  qword_1000679E8 = v10;

  CFRelease(SRGB);
  CFRelease(v2);
  CFRelease(v4);
  CFRelease(CopyWithAlpha);
  CFRelease(v3);
  CFRelease(v6);
  CFRelease(v7);
  CFRelease(v8);

  CFRelease(v9);
}

void sub_1000140D8(id a1)
{
  SRGB = CGColorCreateSRGB(0.141176471, 0.141176471, 0.156862745, 1.0);
  v2 = CGColorCreateSRGB(1.0, 1.0, 1.0, 1.0);
  v3 = CGColorCreateSRGB(0.556862745, 0.556862745, 0.576470588, 1.0);
  v4 = CGColorCreateSRGB(1.0, 0.584313725, 0.0392156863, 1.0);
  CopyWithAlpha = CGColorCreateCopyWithAlpha(v4, 0.67);
  v6 = CGColorCreateSRGB(1.0, 0.270588235, 0.22745098, 1.0);
  v7 = CGColorCreateCopyWithAlpha(v6, 0.67);
  v8 = CGColorCreateSRGB(1.0, 1.0, 1.0, 1.0);
  v9 = CGColorCreateSRGB(0.556862745, 0.556862745, 0.576470588, 1.0);
  v10 = [[HUDTheme alloc] initWithPreviousHangTextColor:v3 currentHangTextColor:v2 currentHangSevereTextColor:v4 previousHangSevereTextColor:CopyWithAlpha currentHangCriticalTextColor:v6 previousHangCriticalTextColor:v7 backgroundColor:SRGB currentProcessExitTextColor:v8 processExitReasonNamespaceTextColor:v9];
  v11 = qword_1000679F8;
  qword_1000679F8 = v10;

  CFRelease(SRGB);
  CFRelease(v2);
  CFRelease(v4);
  CFRelease(CopyWithAlpha);
  CFRelease(v3);
  CFRelease(v6);
  CFRelease(v7);
  CFRelease(v8);

  CFRelease(v9);
}

uint64_t sub_100014338(uint64_t a1)
{
  v2 = sub_100003824();
  v3 = v2;
  if (a1)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "ApplyTailspinConfig: change tailspin config", v5, 2u);
    }

    return tailspin_config_apply_sync();
  }

  else
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100031DB8();
    }

    return 0;
  }
}

BOOL sub_1000143D4()
{
  v0 = sub_10002B7C8(@"com.apple.da", @"mobile", @"HTEPL");
  v1 = [v0 count] != 0;

  return v1;
}

BOOL sub_100014434()
{
  v0 = sub_10002B7C8(@"com.apple.da", @"mobile", @"HTThirdPartyDevSupport");
  v1 = [v0 count] != 0;

  return v1;
}

uint64_t sub_100014494(int a1)
{
  v2 = +[PerfDiagsSelfEnablementController isAnyModeActive];
  v3 = sub_100014434();
  v4 = sub_100003824();
  v5 = v4;
  if ((v2 & 1) != 0 || v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100031E20();
    }

    return 0;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "ConfigureTailspinForEPL: Other HangTracer enablement modes are NOT active, attempt to configure tailspin", v11, 2u);
  }

  v6 = tailspin_config_create_with_default_config();
  if (!v6)
  {
    v9 = sub_100003824();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100031DEC();
    }

    return 0;
  }

  v7 = v6;
  if (a1)
  {
    tailspin_enabled_set();
  }

  v8 = sub_100014338(v7);
  tailspin_config_free();
  return v8;
}

uint64_t sub_1000145B4(int a1)
{
  if (sub_1000143D4())
  {
    v2 = sub_100003824();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "configureTailspinForThirdPartyDevelopment";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s: Not configuring tailspin since EPL is active", &v7, 0xCu);
    }

LABEL_10:

    return 0;
  }

  v3 = tailspin_config_create_with_default_config();
  if (!v3)
  {
    v2 = sub_100003824();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100031E54(v2);
    }

    goto LABEL_10;
  }

  v4 = v3;
  if (a1)
  {
    tailspin_enabled_set();
    tailspin_buffer_size_set();
    tailspin_oncore_sampling_period_set();
    tailspin_full_sampling_period_set();
  }

  v5 = sub_100014338(v4);
  tailspin_config_free();
  return v5;
}

void sub_10001470C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_1000147C8(uint64_t a1)
{
  v2 = +[NSProcessInfo processInfo];
  v3 = [v2 processName];
  v6 = [NSString stringWithFormat:@"%@ (%i) : %p", v3, getpid(), *(a1 + 32)];

  v4 = [objc_alloc(*(a1 + 32)) initWithIdentifier:v6];
  v5 = qword_100067A00;
  qword_100067A00 = v4;
}

void sub_100014A58(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = +[HangHUDServiceSpecification clientContextIdentifierKey];
  [v3 encodeObject:v2 forKey:v4];
}

void sub_100014AD0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[HangHUDServiceSpecification interface];
  [v3 setInterface:v4];

  v5 = +[HangHUDServiceSpecification serviceQuality];
  [v3 setServiceQuality:v5];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100014C68;
  v10[3] = &unk_100055458;
  v11 = *(a1 + 32);
  [v3 setActivationHandler:v10];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100014CBC;
  v8[3] = &unk_100055458;
  v9 = *(a1 + 32);
  [v3 setInterruptionHandler:v8];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100014D24;
  v6[3] = &unk_100055458;
  v7 = *(a1 + 32);
  [v3 setInvalidationHandler:v6];
}

void sub_100014C68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained serverRunningDidChange:*(a1 + 32)];
}

void sub_100014CBC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((v3 + 24));
  [WeakRetained serverRunningDidChange:*(a1 + 32)];

  [v5 activate];
}

void sub_100014D24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained serverRunningDidChange:*(a1 + 32)];
}

void sub_1000155D8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id sub_1000155F4()
{
  if (qword_100067A10 != -1)
  {
    sub_100032270();
  }

  v1 = qword_100067A18;

  return v1;
}

void sub_100015638(id a1)
{
  v6 = +[NSMutableArray array];
  v1 = 2;
  do
  {
    v2 = [NSNumber numberWithUnsignedLongLong:v1];
    [v6 addObject:v2];

    v3 = v1 >> 42;
    v1 *= 2;
  }

  while (!v3);
  v4 = [v6 copy];
  v5 = qword_100067A18;
  qword_100067A18 = v4;
}

void sub_1000156DC(id a1)
{
  sub_100029930();
  UIFontForLanguage = CTFontCreateUIFontForLanguage(0x6Au, v1, 0);
  v3 = CTFontCopyFontDescriptor(UIFontForLanguage);
  v7 = kCTFontOpticalSizeAttribute;
  v4 = [NSNumber numberWithDouble:sub_1000296CC()];
  v8 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(v3, v5);

  qword_100067A28 = CTFontCreateWithFontDescriptor(CopyWithAttributes, 0.0, 0);
  CFRelease(UIFontForLanguage);
  CFRelease(v3);
  CFRelease(CopyWithAttributes);
}

void sub_1000157F0(id a1)
{
  sub_100029930();
  UIFontForLanguage = CTFontCreateUIFontForLanguage(0x6Au, v1, 0);
  v3 = CTFontCopyFontDescriptor(UIFontForLanguage);
  CopyWithFeature = CTFontDescriptorCreateCopyWithFeature(v3, &off_10005CBB8, &off_10005CBD0);
  v8 = kCTFontOpticalSizeAttribute;
  v5 = [NSNumber numberWithDouble:sub_1000296CC()];
  v9 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(CopyWithFeature, v6);

  qword_100067A38 = CTFontCreateWithFontDescriptor(CopyWithAttributes, 0.0, 0);
  CFRelease(UIFontForLanguage);
  CFRelease(v3);
  CFRelease(CopyWithFeature);
  CFRelease(CopyWithAttributes);
}

void sub_100016618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100016630(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  [v9 preferredFrameSize];
  *(*(*(a1 + 40) + 8) + 32) = v5 + *(*(*(a1 + 40) + 8) + 32);
  v6 = *(*(*(a1 + 40) + 8) + 40);
  [v9 preferredFrameSize];
  if (v6 < v7)
  {
    [v9 preferredFrameSize];
    *(*(*(a1 + 40) + 8) + 40) = v8;
  }

  if (a3)
  {
    *(*(*(a1 + 40) + 8) + 32) = *(*(a1 + 32) + 8) + *(*(*(a1 + 40) + 8) + 32);
  }
}

id sub_100017020(void *a1)
{
  if ([a1 isEqualToString:@"HTThirdPartyDevSupport"])
  {
    v3[0] = @"HangTracerHUDThresholdMSec";
    v3[1] = @"HangTracerThirdPartyHangThreshold";
    v1 = [NSArray arrayWithObjects:v3 count:2];
  }

  else
  {
    v1 = &__NSArray0__struct;
  }

  return v1;
}

uint64_t sub_1000176A0(uint64_t a1)
{
  qword_100067A50 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

uint64_t sub_10001784C(uint64_t a1)
{
  qword_100067A60 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_100017CA8(uint64_t a1)
{
  v1 = [*(a1 + 32) identifier];
  v5 = [BSMutableServiceInterface interfaceWithIdentifier:v1];

  v2 = [BSObjCProtocol protocolForProtocol:&OBJC_PROTOCOL___HangHUDServerProtocol];
  [v5 setServer:v2];

  v3 = [v5 copy];
  v4 = qword_100067A70;
  qword_100067A70 = v3;
}

id sub_100017D60(void *a1, void *a2)
{
  v10[0] = @"/var/root/Library/Caches/hangtracerd/spool";
  v10[1] = @"/var/mobile/Library/Logs/CrashReporter/";
  v3 = a2;
  v4 = a1;
  v5 = [NSArray arrayWithObjects:v10 count:2];
  v9[0] = @"UIKit-runloop";
  v9[1] = @"Fence-hang";
  v6 = [NSArray arrayWithObjects:v9 count:2];
  v7 = sub_100017E84(v5, v4, v3, v6, 1);

  return v7;
}

id sub_100017E84(void *a1, void *a2, void *a3, void *a4, int a5)
{
  v9 = a1;
  *(&v50 + 1) = a2;
  *&v50 = a3;
  v52 = a4;
  v49 = objc_opt_new();
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = v9;
  v46 = [obj countByEnumeratingWithState:&v67 objects:v76 count:16];
  if (v46)
  {
    v45 = a5 ^ 1u;
    v44 = *v68;
    v10 = NSURLIsDirectoryKey;
    do
    {
      v11 = 0;
      do
      {
        if (*v68 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v48 = v11;
        v12 = [NSURL URLWithString:*(*(&v67 + 1) + 8 * v11)];
        v13 = +[NSFileManager defaultManager];
        v75[0] = v10;
        v75[1] = NSURLNameKey;
        v75[2] = NSURLCreationDateKey;
        v14 = [NSArray arrayWithObjects:v75 count:3];
        v47 = v12;
        v15 = [v13 enumeratorAtURL:v12 includingPropertiesForKeys:v14 options:v45 errorHandler:&stru_100055A50];

        v66 = 0u;
        v64 = 0u;
        v65 = 0u;
        v63 = 0u;
        v53 = v15;
        v16 = [v53 countByEnumeratingWithState:&v63 objects:v74 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v64;
          do
          {
            v19 = 0;
            v51 = v17;
            do
            {
              if (*v64 != v18)
              {
                objc_enumerationMutation(v53);
              }

              v20 = *(*(&v63 + 1) + 8 * v19);
              v21 = objc_autoreleasePoolPush();
              v62 = 0;
              [v20 getResourceValue:&v62 forKey:v10 error:0];
              v22 = v62;
              if (([v22 BOOLValue] & 1) == 0)
              {
                v55 = v21;
                v61 = 0;
                [v20 getResourceValue:&v61 forKey:NSURLNameKey error:0];
                v23 = v61;
                v24 = [v23 lastPathComponent];
                v25 = sub_100003824();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v73 = v23;
                  _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Found file: %@", buf, 0xCu);
                }

                v54 = v23;

                v59 = 0u;
                v60 = 0u;
                v57 = 0u;
                v58 = 0u;
                v26 = v52;
                v27 = [v26 countByEnumeratingWithState:&v57 objects:v71 count:16];
                if (v27)
                {
                  v28 = v27;
                  v29 = v18;
                  v30 = v10;
                  v31 = *v58;
                  while (2)
                  {
                    for (i = 0; i != v28; i = i + 1)
                    {
                      if (*v58 != v31)
                      {
                        objc_enumerationMutation(v26);
                      }

                      if ([v24 hasPrefix:*(*(&v57 + 1) + 8 * i)])
                      {
                        v33 = 0;
                        goto LABEL_24;
                      }
                    }

                    v28 = [v26 countByEnumeratingWithState:&v57 objects:v71 count:16];
                    if (v28)
                    {
                      continue;
                    }

                    break;
                  }

                  v33 = 1;
LABEL_24:
                  v10 = v30;
                  v18 = v29;
                  v17 = v51;
                }

                else
                {
                  v33 = 1;
                }

                v34 = v50 != 0;
                if (v50 != 0)
                {
                  v56 = 0;
                  [v20 getResourceValue:&v56 forKey:NSURLCreationDateKey error:0];
                  v35 = v56;
                  v36 = v35;
                  if (*(&v50 + 1))
                  {
                    v37 = [v35 compare:?] != -1;
                  }

                  else
                  {
                    v37 = 1;
                  }

                  if (v50)
                  {
                    v38 = [v36 compare:?] != 1;
                  }

                  else
                  {
                    v38 = 1;
                  }

                  v39 = v37 && v38;

                  v34 = v39 ^ 1;
                }

                if (((v33 | v34) & 1) == 0)
                {
                  v40 = [v20 path];
                  [v49 addObject:v40];
                }

                v21 = v55;
              }

              objc_autoreleasePoolPop(v21);
              v19 = v19 + 1;
            }

            while (v19 != v17);
            v17 = [v53 countByEnumeratingWithState:&v63 objects:v74 count:16];
          }

          while (v17);
        }

        v11 = v48 + 1;
      }

      while ((v48 + 1) != v46);
      v46 = [obj countByEnumeratingWithState:&v67 objects:v76 count:16];
    }

    while (v46);
  }

  v41 = [v49 copy];

  return v41;
}

uint64_t sub_1000183CC()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v67 = v5;
  v6 = v0;
  v7 = v4;
  v8 = v2;
  v9 = MGCopyAnswer();
  v10 = MGCopyAnswer();
  v11 = objc_opt_new();
  [v11 setDateFormat:@"yyyy-MM-dd-HHmmss"];
  v12 = +[NSDate date];
  v68 = v11;
  v13 = [v11 stringFromDate:v12];
  v69 = v10;
  v70 = v9;
  v14 = [NSString stringWithFormat:@"%@-%@-%@-%@.%@", @"ArchivedHangs", v9, v10, v13, @"tgz"];

  v15 = [NSString stringWithFormat:@"%s/%@", "/var/root/Library/Caches/hangtracerd/tmp", v14];
  v16 = sub_100017D60(v7, v8);
  v17 = sub_100003824();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v80 = v7;
    v81 = 2112;
    v82 = v8;
    v83 = 2112;
    v84 = v16;
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Found the following files with a creation date between %@ and %@: %@", buf, 0x20u);
  }

  v71 = v8;

  v18 = v16;
  v19 = [v15 UTF8String];
  if (MKBDeviceUnlockedSinceBoot())
  {
    v20 = 3;
  }

  else
  {
    v20 = 2;
  }

  v21 = open_dprotected_np(v19, 514, v20, 0, 416);
  if ((v21 & 0x80000000) == 0)
  {
    v22 = v21;
    archive_write_new();
    if (archive_write_add_filter_gzip())
    {
      archive_write_free();
      close(v22);
      v23 = sub_100003824();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1000324F0();
      }

      goto LABEL_52;
    }

    if (archive_write_set_options())
    {
      archive_write_free();
      close(v22);
      v23 = sub_100003824();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10003257C();
      }

      goto LABEL_52;
    }

    if (archive_write_set_format_pax())
    {
      archive_write_free();
      close(v22);
      v23 = sub_100003824();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_100032608();
      }

      goto LABEL_52;
    }

    if (archive_write_open_fd())
    {
      archive_write_free();
      close(v22);
      v23 = sub_100003824();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_100032694();
      }

      goto LABEL_52;
    }

    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v23 = v18;
    v61 = [v23 countByEnumeratingWithState:&v73 objects:v78 count:16];
    if (!v61)
    {
      goto LABEL_43;
    }

    v62 = *v74;
    v63 = v14;
    v64 = v6;
LABEL_23:
    v24 = 0;
    while (1)
    {
      if (*v74 != v62)
      {
        objc_enumerationMutation(v23);
      }

      v65 = v24;
      v25 = *(*(&v73 + 1) + 8 * v24);
      v26 = [v25 UTF8String];
      v66 = [v25 lastPathComponent];
      [v66 UTF8String];
      archive_entry_new();
      memset(&v77, 0, sizeof(v77));
      v27 = stat(v26, &v77);
      if (v27)
      {
        v28 = v27;
        archive_entry_free();
        v29 = sub_100003824();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v80 = v26;
          v81 = 1024;
          LODWORD(v82) = v28;
          v35 = v29;
          v36 = "Error stat-ing original file: %s with error: %i. Will skip.";
          v37 = 18;
          goto LABEL_41;
        }
      }

      else
      {
        v31 = open(v26, 0);
        if ((v31 & 0x80000000) == 0)
        {
          v32 = v31;
          archive_entry_copy_stat();
          archive_entry_set_pathname();
          archive_entry_set_filetype();
          archive_entry_set_perm();
          if (archive_write_header())
          {
            archive_entry_free();
            v51 = sub_100003824();
            v30 = v66;
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              sub_100032720();
            }

LABEL_49:
            archive_write_free();
            close(v22);
            v42 = sub_100003824();
            v14 = v63;
            v6 = v64;
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              sub_10003285C();
            }

            goto LABEL_52;
          }

          v33 = read(v32, buf, 0x2000uLL);
          v30 = v66;
          if (v33 >= 1)
          {
            v34 = v33;
            while (archive_write_data() == v34)
            {
              v34 = read(v32, buf, 0x2000uLL);
              if (v34 < 1)
              {
                goto LABEL_37;
              }
            }

            v41 = sub_100003824();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              sub_1000327AC();
            }

            archive_entry_free();
            close(v32);
            goto LABEL_49;
          }

LABEL_37:
          archive_entry_free();
          close(v32);
          v14 = v63;
          v6 = v64;
          goto LABEL_29;
        }

        archive_entry_free();
        v29 = sub_100003824();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v80 = v26;
          v35 = v29;
          v36 = "Error getting fd for file: %s. Will skip.";
          v37 = 12;
LABEL_41:
          _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, v36, buf, v37);
        }
      }

      v14 = v63;
      v6 = v64;
      v30 = v66;

LABEL_29:
      v24 = v65 + 1;
      if ((v65 + 1) == v61)
      {
        v38 = [v23 countByEnumeratingWithState:&v73 objects:v78 count:16];
        v61 = v38;
        if (v38)
        {
          goto LABEL_23;
        }

LABEL_43:

        v39 = archive_write_close();
        v40 = archive_write_free();
        if (v39)
        {
          close(v22);
          v23 = sub_100003824();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_100032904();
          }

          goto LABEL_52;
        }

        v50 = v40;
        close(v22);
        if (v50)
        {
          v23 = sub_100003824();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_100032990();
          }

          goto LABEL_52;
        }

        v47 = [NSString stringWithFormat:@"%@/%@", v6, v14];
        v52 = +[NSFileManager defaultManager];
        v72 = 0;
        v53 = [v52 moveItemAtPath:v15 toPath:v47 error:&v72];
        v54 = v72;

        if (v53)
        {
          v55 = chmod([v47 UTF8String], 0x1B6u);
          v56 = sub_100003824();
          v57 = v56;
          if (v55)
          {
            if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              sub_100032A1C();
            }

            goto LABEL_76;
          }

          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
          {
            sub_100032A84();
          }

          if (v67)
          {
            v60 = v47;
            *v67 = v47;
          }

          v46 = 1;
        }

        else
        {
          v58 = sub_100003824();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            v80 = v15;
            v81 = 2112;
            v82 = v47;
            v83 = 2112;
            v84 = v54;
            _os_log_error_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "Unable to move file %@ to final path %@: %@", buf, 0x20u);
          }

          if (unlink([v15 UTF8String]) < 0)
          {
            v57 = sub_100003824();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              v59 = *__error();
              *buf = 138412546;
              v80 = v15;
              v81 = 1024;
              LODWORD(v82) = v59;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Unable to unlink temp archive file %@ due to error %{darwin.errno}d", buf, 0x12u);
            }

LABEL_76:
          }

          v46 = 0;
        }

        v44 = v69;
        v43 = v70;
LABEL_59:

        goto LABEL_60;
      }
    }
  }

  v23 = sub_100003824();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    sub_100032AF8();
  }

LABEL_52:
  v44 = v69;
  v43 = v70;

  v45 = sub_100003824();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
  {
    sub_100032B60();
  }

  if (unlink([v15 UTF8String]) < 0)
  {
    v47 = sub_100003824();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = *__error();
      *buf = 138412546;
      v80 = v15;
      v81 = 1024;
      LODWORD(v82) = v48;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Unable to unlink temp archive file %@ due to error %{darwin.errno}d", buf, 0x12u);
    }

    v46 = 0;
    goto LABEL_59;
  }

  v46 = 0;
LABEL_60:

  return v46;
}

BOOL sub_100018E7C(id a1, NSURL *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = sub_100003824();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100032BC8();
  }

  return 1;
}

uint64_t sub_100018F24()
{

  return archive_error_string();
}

id sub_100018F3C(double a1)
{
  if (sub_10002A388())
  {
    +[HUDConfiguration sharedInstance];
  }

  else
  {
    +[HTPrefs sharedPrefs];
  }
  v2 = ;
  v3 = [v2 runloopHangTimeoutDurationMSec];

  v4 = v3;
  if (v3 <= a1)
  {
    [NSString stringWithFormat:@"%.f+ ms", v4, v3];
  }

  else
  {
    [NSString stringWithFormat:@"%.f ms", v4, *&a1];
  }
  v5 = ;

  return v5;
}

void sub_100019320(uint64_t a1, double a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000193A0;
  v4[3] = &unk_100054E90;
  v4[4] = v2;
  *&v4[5] = a2;
  dispatch_sync(v3, v4);
}

void sub_1000193A0(uint64_t a1)
{
  [CATransaction setDisableActions:1];
  v2 = sub_100018F3C(*(a1 + 40));
  v4 = *(a1 + 32);
  v3 = (a1 + 32);
  [v4 setString:v2];

  v5 = sub_100003824();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100032E4C(v3, v5);
  }
}

void sub_10001941C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100019498;
  block[3] = &unk_100054D38;
  block[4] = v1;
  dispatch_sync(v2, block);
}

void sub_100019498(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
}

uint64_t sub_100019568(const char *a1, void *a2)
{
  v4 = proc_listpids(1u, 0, 0, 0);
  if (v4 <= 0)
  {
    v13 = __error();
    v14 = [NSString stringWithFormat:@"Unable to list all pids with error: %s", strerror(*v13)];
    v15 = sub_100003824();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100032F5C();
    }

    if (!a2)
    {
      goto LABEL_19;
    }

    v16 = NSPOSIXErrorDomain;
    v17 = *__error();
    v32 = NSLocalizedDescriptionKey;
    v33 = v14;
    v18 = &v33;
    v19 = &v32;
    goto LABEL_18;
  }

  v5 = (v4 + 80);
  v6 = malloc_type_malloc(v5, 0x3D27CE9EuLL);
  if (!v6)
  {
    v20 = __error();
    v14 = [NSString stringWithFormat:@"Unable to allocate pids buffer of size %d with error: %s", v5, strerror(*v20)];
    v21 = sub_100003824();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100032F5C();
    }

    if (!a2)
    {
      goto LABEL_19;
    }

    v16 = NSPOSIXErrorDomain;
    v17 = *__error();
    v30 = NSLocalizedDescriptionKey;
    v31 = v14;
    v18 = &v31;
    v19 = &v30;
LABEL_18:
    v22 = [NSDictionary dictionaryWithObjects:v18 forKeys:v19 count:1];
    *a2 = [NSError errorWithDomain:v16 code:v17 userInfo:v22];

LABEL_19:
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  v8 = proc_listpids(1u, 0, v6, v5);
  if (v8 < 4)
  {
LABEL_8:
    v11 = 0xFFFFFFFFLL;
  }

  else
  {
    v9 = v8 >> 2;
    v10 = v7;
    while (1)
    {
      memset(buffer, 0, sizeof(buffer));
      v12 = *v10++;
      v11 = v12;
      if (proc_name(v12, buffer, 0x20u) >= 1 && !strcmp(buffer, a1))
      {
        break;
      }

      if (!--v9)
      {
        goto LABEL_8;
      }
    }

    v24 = sub_100003824();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v26 = v11;
      v27 = 2080;
      v28 = a1;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Found matching pid:%d for processName:%s", buf, 0x12u);
    }
  }

  free(v7);
  return v11;
}

__CFString *sub_100019858(void *a1)
{
  v1 = a1;
  if (v1 && (v2 = CFURLCreateWithFileSystemPath(0, v1, kCFURLPOSIXPathStyle, 1u)) != 0)
  {
    v3 = v2;
    v4 = _CFBundleCreateWithExecutableURLIfLooksLikeBundle();
    if (v4)
    {
      v5 = v4;
      v6 = CFBundleGetIdentifier(v4);
      CFRelease(v5);
    }

    else
    {
      v6 = &stru_100057080;
    }

    CFRelease(v3);
  }

  else
  {
    v6 = &stru_100057080;
  }

  return v6;
}

id sub_10001990C(uint64_t a1, uint64_t a2)
{
  v3 = [NSDictionary dictionaryWithObject:a2 forKey:NSLocalizedDescriptionKey];
  v4 = [NSError errorWithDomain:@"SentryTailspinError" code:a1 userInfo:v3];

  return v4;
}

uint64_t sub_100019998(void *a1, int a2)
{
  v3 = a1;
  v4 = +[NSFileManager defaultManager];
  v15 = 0;
  if ([v4 fileExistsAtPath:v3 isDirectory:&v15])
  {
    v5 = v15 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = sub_100003824();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v19 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Directory doesn't exist -> trying to create directory at path: %@", buf, 0xCu);
    }

    if (a2)
    {
      v16 = NSFileOwnerAccountName;
      v17 = @"mobile";
      v7 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    }

    else
    {
      v7 = 0;
    }

    v14 = 0;
    [v4 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:v7 error:&v14];
    v9 = v14;
    v10 = +[NSFileManager defaultManager];
    v11 = [v10 fileExistsAtPath:v3 isDirectory:&v15];

    if (v11 && v15 == 1)
    {
      v12 = sub_100003824();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = v3;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Successfully created directory at path %@", buf, 0xCu);
      }

      v8 = 1;
    }

    else
    {
      v12 = sub_100003824();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100032FDC();
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

__CFString *sub_100019BD4(void *a1)
{
  if (a1)
  {
    v2 = sub_100019C20(a1, 0);
  }

  else
  {
    v2 = @"<null xpc_object_t>";
  }

  return v2;
}

__CFString *sub_100019C20(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v6 = @"<null internal xpc_object_t>";
    goto LABEL_40;
  }

  type = xpc_get_type(v3);
  v6 = +[NSMutableString string];
  v7 = [&stru_100057080 stringByPaddingToLength:4 * a2 withString:@" " startingAtIndex:0];
  v8 = a2 + 1;
  v9 = [&stru_100057080 stringByPaddingToLength:4 * (a2 + 1) withString:@" " startingAtIndex:0];
  v10 = v9;
  if (type == &_xpc_type_dictionary)
  {
    [(__CFString *)v6 appendString:@"{\n"];
    +[NSMutableArray array];
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_10001B0C4;
    applier[3] = &unk_100055B28;
    v47 = v49 = a2;
    v48 = v10;
    v14 = v47;
    xpc_dictionary_apply(v4, applier);
    [v14 sortUsingSelector:"compare:"];
    v15 = [v14 componentsJoinedByString:{@", \n"}];
    [(__CFString *)v6 appendString:v15];

    [(__CFString *)v6 appendFormat:@"\n%@}", v7];
LABEL_25:

    goto LABEL_39;
  }

  if (type == &_xpc_type_array)
  {
    v45 = v7;
    [(__CFString *)v6 appendString:@"[\n"];
    v14 = +[NSMutableArray array];
    count = xpc_array_get_count(v4);
    if (count)
    {
      v17 = count;
      for (i = 0; i != v17; ++i)
      {
        v19 = xpc_array_get_value(v4, i);
        v20 = sub_100019C20(v19, v8);
        [NSString stringWithFormat:@"%@%@", v10, v20];
        v21 = v4;
        v23 = v22 = v10;
        [v14 addObject:v23];

        v10 = v22;
        v4 = v21;
      }
    }

    v24 = [v14 componentsJoinedByString:{@", \n"}];
    [(__CFString *)v6 appendString:v24];

    v7 = v45;
    [(__CFString *)v6 appendFormat:@"\n%@]", v45];
    goto LABEL_25;
  }

  if (type == &_xpc_type_string)
  {
    string_ptr = xpc_string_get_string_ptr(v4);
    if (!string_ptr)
    {
      v29 = @"<invalid string ptr>";
      goto LABEL_34;
    }

    [NSString stringWithUTF8String:string_ptr];
    v27 = v26 = v10;
    v28 = [v27 stringByReplacingOccurrencesOfString:@"" withString:@"\\""];

    v10 = v26;
    [(__CFString *)v6 appendFormat:@"%@", v28];
  }

  else
  {
    if (type == &_xpc_type_BOOL)
    {
      if (xpc_BOOL_get_value(v4))
      {
        v29 = @"true";
      }

      else
      {
        v29 = @"false";
      }

      goto LABEL_34;
    }

    if (type == &_xpc_type_int64)
    {
      [(__CFString *)v6 appendFormat:@"%lld", xpc_int64_get_value(v4)];
      goto LABEL_39;
    }

    if (type == &_xpc_type_uint64)
    {
      [(__CFString *)v6 appendFormat:@"%llu", xpc_uint64_get_value(v4)];
      goto LABEL_39;
    }

    if (type == &_xpc_type_double)
    {
      [(__CFString *)v6 appendFormat:@"%f", xpc_double_get_value(v4)];
      goto LABEL_39;
    }

    if (type != &_xpc_type_date)
    {
      if (type == &_xpc_type_data)
      {
        [(__CFString *)v6 appendFormat:@"<Data: %zu bytes>", xpc_data_get_length(v4)];
        goto LABEL_39;
      }

      if (type == &_xpc_type_uuid)
      {
        bytes = xpc_uuid_get_bytes(v4);
        if (bytes)
        {
          v35 = v10;
          v36 = [[NSUUID alloc] initWithUUIDBytes:bytes];
          v37 = [v36 UUIDString];
          [(__CFString *)v6 appendFormat:@"<UUID: %@>", v37];

          v10 = v35;
          goto LABEL_39;
        }

        v29 = @"<UUID: invalid bytes>";
        goto LABEL_34;
      }

      if (type == &_xpc_type_fd)
      {
        v38 = xpc_fd_dup(v4);
        if ((v38 & 0x80000000) == 0)
        {
          v39 = v38;
          [(__CFString *)v6 appendFormat:@"<FD: %d>", v38];
          close(v39);
          goto LABEL_39;
        }

        v29 = @"<FD: invalid>";
        goto LABEL_34;
      }

      if (type == &_xpc_type_null)
      {
        v29 = @"null";
      }

      else if (type == &_xpc_type_error)
      {
        v40 = xpc_copy_description(v4);
        if (v40)
        {
          v41 = v40;
          [(__CFString *)v6 appendFormat:@"<Error: %s>", v40];
LABEL_54:
          v43 = v41;
LABEL_58:
          free(v43);
          goto LABEL_39;
        }

        v29 = @"<Error: unknown>";
      }

      else
      {
        if (type != &_xpc_type_endpoint)
        {
          v11 = v9;
          v12 = xpc_copy_description(v4);
          v13 = v12;
          if (type == &_xpc_type_connection)
          {
            v10 = v11;
            if (v12)
            {
              [(__CFString *)v6 appendFormat:@"<Connection: %s>", v12];
              goto LABEL_57;
            }

            v29 = @"<Connection: unknown>";
          }

          else
          {
            v10 = v11;
            if (v12)
            {
              [(__CFString *)v6 appendFormat:@"<Unknown XPC Type: %s>", v12];
LABEL_57:
              v43 = v13;
              goto LABEL_58;
            }

            v29 = @"<Unknown XPC Type>";
          }

          goto LABEL_34;
        }

        v42 = xpc_copy_description(v4);
        if (v42)
        {
          v41 = v42;
          [(__CFString *)v6 appendFormat:@"<Endpoint: %s>", v42];
          goto LABEL_54;
        }

        v29 = @"<Endpoint: unknown>";
      }

LABEL_34:
      [(__CFString *)v6 appendString:v29];
      goto LABEL_39;
    }

    v30 = v9;
    value = xpc_date_get_value(v4);
    v28 = [NSDate dateWithTimeIntervalSince1970:value / 1000000000.0];
    v32 = [v28 description];
    v44 = value;
    v10 = v30;
    [(__CFString *)v6 appendFormat:@"<Date: %@ (%lld ns)>", v32, v44];
  }

LABEL_39:
LABEL_40:

  return v6;
}

void sub_10001A2CC(void *a1)
{
  v1 = a1;
  v2 = +[NSFileManager defaultManager];
  v3 = sub_100003824();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100033060();
  }

  v16 = v1;
  v4 = [NSURL URLWithString:v1];
  v5 = [v2 enumeratorAtURL:v4 includingPropertiesForKeys:0 options:0 errorHandler:&stru_100055AC0];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v17 = 0;
        v12 = [v2 removeItemAtURL:v11 error:&v17];
        v13 = v17;
        v14 = sub_100003824();
        v15 = v14;
        if (v12)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v23 = v11;
            _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Successfully deleted file at %@", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v23 = v11;
          v24 = 2112;
          v25 = v13;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Failed to delete file at %@ : %@", buf, 0x16u);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v8);
  }
}

BOOL sub_10001A538(id a1, NSURL *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = sub_100003824();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Failed to enumerate file at %@ : %@", &v8, 0x16u);
  }

  return 1;
}

void sub_10001A60C(int a1)
{
  v19 = @"Subsystems";
  v17[0] = @"com.apple.hangtracer";
  v17[1] = @"com.apple.performancelogging";
  v18[0] = &off_10005CC80;
  v18[1] = &off_10005CC80;
  v17[2] = @"com.apple.Sentry.Framework";
  v18[2] = &off_10005CC80;
  v2 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:3];
  v20 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];

  v16 = 0;
  v4 = OSLogValidateProfilePayload();
  v5 = 0;
  v6 = v5;
  if (v4)
  {
    v7 = sub_100003824();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Successfully validated profile payload", buf, 2u);
    }

    if (a1)
    {
      v8 = OSLogInstallProfilePayload();
      v9 = 0;
      v10 = v9;
      if (v8)
      {
        v11 = sub_100003824();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v12 = "Successfully installed profile payload";
LABEL_14:
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, v12, buf, 2u);
          goto LABEL_21;
        }

        goto LABEL_21;
      }

      if (v9)
      {
        v11 = sub_100003824();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1000331DC(v10);
        }

        goto LABEL_21;
      }
    }

    else
    {
      v13 = OSLogRemoveProfilePayload();
      v14 = 0;
      v10 = v14;
      if (v13)
      {
        v11 = sub_100003824();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v12 = "Successfully removed profile payload";
          goto LABEL_14;
        }

LABEL_21:

        goto LABEL_22;
      }

      if (v14)
      {
        v11 = sub_100003824();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_100033158(v10);
        }

        goto LABEL_21;
      }
    }

LABEL_22:

    goto LABEL_23;
  }

  if (v5)
  {
    v10 = sub_100003824();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000330D4(v6);
    }

    goto LABEL_22;
  }

LABEL_23:
}

id sub_10001A8A4()
{
  if (qword_100067A88 != -1)
  {
    sub_100033260();
  }

  v1 = qword_100067A80;

  return v1;
}

void sub_10001A8E8(id a1)
{
  qword_100067A80 = os_log_create("com.apple.hangtracer", "signpost_hang");

  _objc_release_x1();
}

id sub_10001A92C()
{
  if (qword_100067A98 != -1)
  {
    sub_100033274();
  }

  v1 = qword_100067A90;

  return v1;
}

void sub_10001A970(id a1)
{
  qword_100067A90 = os_log_create("com.apple.hangtracer", "always_on_hang");

  _objc_release_x1();
}

void sub_10001A9B4(void *a1, void *a2, os_signpost_id_t a3, uint64_t a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a5;
  *buf = 0;
  mach_get_times();
  if (os_signpost_enabled(v11))
  {
    v12 = v11;
    v13 = v12;
    if (a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      v14 = @"Unknown";
      *buf = 134349826;
      *&buf[4] = a3;
      if (v10)
      {
        v15 = v10;
      }

      else
      {
        v15 = @"Unknown";
      }

      v17 = 2050;
      v18 = a4;
      v19 = 2114;
      if (v9)
      {
        v14 = v9;
      }

      v20 = v15;
      v21 = 2114;
      v22 = v14;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_EVENT, a3, "HangInterval", "%{public, signpost.description:begin_time}llu, %{public, signpost.description:end_time}llu, BundleIdOverride=%{public, signpost.description:attribute}@ type=%{public, signpost.telemetry:string2}@ enableTelemetry=YES ", buf, 0x2Au);
    }
  }
}

uint64_t sub_10001AB1C(int a1)
{
  v16 = 0u;
  v17 = 0u;
  buffer = 0u;
  v15 = 0u;
  if (!proc_pidinfo(a1, 13, 1uLL, &buffer, 64))
  {
    v3 = sub_100003824();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Failed to check if app is being debugged", &v10, 2u);
    }

    goto LABEL_9;
  }

  if ((v16 & 2) != 0)
  {
    v4 = +[NSProcessInfo processInfo];
    v5 = [v4 environment];
    v6 = [v5 objectForKeyedSubscript:@"HT_DISABLE_DEBUGGER_CHECK"];
    v7 = [v6 BOOLValue];

    if (!v7)
    {
      v3 = [NSString stringWithUTF8String:&v15];
      if (([v3 isEqualToString:@"xctest"]& 1) != 0 || ([v3 isEqualToString:@"hangman"]& 1) != 0 || [v3 hasSuffix:@"-Runner"])
      {
        v8 = sub_100003824();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 138543618;
          v11 = v3;
          v12 = 1024;
          v13 = a1;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ [%d] is a test process, isAppBeingDebugged returning NO", &v10, 0x12u);
        }

        v2 = 0;
      }

      else
      {
        v8 = sub_100003824();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v10) = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "App is being debugged, do not track this hang", &v10, 2u);
        }

        v2 = 1;
      }

      goto LABEL_17;
    }

    v3 = sub_100003824();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100033288(v3);
    }

LABEL_9:
    v2 = 0;
LABEL_17:

    return v2;
  }

  return 0;
}

__CFString *sub_10001AD74(unint64_t a1)
{
  if (a1 > 4)
  {
    v2 = @"Unknown";
  }

  else
  {
    v2 = *off_100055B48[a1];
  }

  return v2;
}

const __CFString *sub_10001ADDC(unint64_t a1)
{
  if (a1 > 0xE)
  {
    return @"tailspin capture failed for unknown reason";
  }

  else
  {
    return off_100055BC8[a1];
  }
}

uint64_t sub_10001AE00(int a1, int a2, double a3)
{
  if (a1)
  {
    v4 = +[HTPrefs sharedPrefs];
    v5 = [v4 runloopLongHangDurationThresholdMSec];

    if (v5 <= a3)
    {
      return 222;
    }

    else
    {
      v6 = +[HTPrefs sharedPrefs];
      v7 = [v6 runloopHangDurationThresholdMSec];

      if (v7 <= a3)
      {
        return 223;
      }

      else
      {
        return 310;
      }
    }
  }

  else if (a2)
  {
    return 328;
  }

  else
  {
    return 228;
  }
}

uint64_t sub_10001AEA0(void *a1)
{
  v1 = a1;
  if ([v1 containsString:@"UIKit-runloop"])
  {
    v2 = 0;
  }

  else if ([v1 containsString:@"Fence-hang"])
  {
    v2 = 1;
  }

  else if ([v1 containsString:@"Slow-Launch"])
  {
    v2 = 2;
  }

  else if ([v1 containsString:@"Sentry"])
  {
    v2 = 3;
  }

  else if ([v1 containsString:@"Force-Quit"])
  {
    v2 = 4;
  }

  else
  {
    v2 = 5;
  }

  return v2;
}

NSDate *sub_10001AF68(uint64_t a1, void *a2, unint64_t a3)
{
  [a2 timeIntervalSinceReferenceDate];
  v6 = sub_100029534((v5 * 1000.0));
  v7 = sub_1000294E0((v6 - a3) + a1);

  return [NSDate dateWithTimeIntervalSinceReferenceDate:v7];
}

BOOL sub_10001AFD4(unint64_t a1, uint64_t a2, double *a3)
{
  v3 = atomic_load((a2 + 24));
  result = 0;
  if (!v3)
  {
    v4 = *a2;
    if (*a2 == -1 || v4 <= a1)
    {
      v7 = sub_1000024F8(a1);
      v8 = v7 - sub_1000024F8(v4);
      *a3 = v8;
      if (v8 > 100.0)
      {
        return 1;
      }
    }
  }

  return result;
}

id sub_10001B04C(int a1)
{
  proc_name(a1, buffer, 0x20u);
  v1 = [NSString stringWithUTF8String:buffer];

  return v1;
}

uint64_t sub_10001B0C4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100019C20(a3, a1[6] + 1);
  v6 = [NSString stringWithUTF8String:a2];
  v7 = a1[4];
  v8 = [NSString stringWithFormat:@"%@%@: %@", a1[5], v6, v5];
  [v7 addObject:v8];

  return 1;
}

void sub_10001B168(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id sub_10001C244(uint64_t a1)
{
  v2 = sub_100003824();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "HangTracer: Detected app exit (pid=%u), check for hangs", v6, 8u);
  }

  v4 = [*(a1 + 32) checkEventsForTimeouts:mach_absolute_time() withType:8];
  [v4 recordHang];

  return [HTProcessInfo stopWatchingPid:*(a1 + 40)];
}

id sub_10001CA68(uint64_t a1)
{
  v8[0] = off_100067738;
  v7[0] = off_100067720;
  v7[1] = off_100067740;
  v2 = sub_1000043DC(*(a1 + 40));
  v3 = *(*(a1 + 32) + 40);
  v8[1] = v2;
  v8[2] = v3;
  v7[2] = off_100067750;
  v7[3] = off_100067748;
  v4 = [NSNumber numberWithDouble:*(a1 + 48)];
  v8[3] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];

  return v5;
}

id sub_10001CB80(uint64_t a1)
{
  v8[0] = off_100067730;
  v7[0] = off_100067720;
  v7[1] = off_100067740;
  v2 = sub_1000043DC(*(a1 + 40));
  v3 = *(*(a1 + 32) + 40);
  v8[1] = v2;
  v8[2] = v3;
  v7[2] = off_100067750;
  v7[3] = off_100067748;
  v4 = [NSNumber numberWithDouble:*(a1 + 48)];
  v8[3] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];

  return v5;
}

id sub_10001CC98(uint64_t a1)
{
  v8[0] = off_100067728;
  v7[0] = off_100067720;
  v7[1] = off_100067740;
  v2 = sub_1000043DC(*(a1 + 40));
  v3 = *(*(a1 + 32) + 40);
  v8[1] = v2;
  v8[2] = v3;
  v7[2] = off_100067750;
  v7[3] = off_100067748;
  v4 = [NSNumber numberWithDouble:*(a1 + 48)];
  v8[3] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];

  return v5;
}

id sub_10001DAEC(uint64_t a1)
{
  v8[0] = off_100067728;
  v7[0] = off_100067720;
  v7[1] = off_100067740;
  v2 = sub_1000043DC(*(a1 + 40));
  v3 = *(*(a1 + 32) + 40);
  v8[1] = v2;
  v8[2] = v3;
  v7[2] = off_100067750;
  v7[3] = off_100067748;
  v4 = [NSNumber numberWithDouble:*(a1 + 48)];
  v8[3] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];

  return v5;
}

void sub_10001E2F4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

uint64_t sub_10001E448(uint64_t a1)
{
  qword_100067B50 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_10001E79C(id a1)
{
  v3[0] = @"HTProfile";
  v3[1] = @"HTEPL";
  v3[2] = @"HTThirdPartyDevSupport";
  v3[3] = @"PLTasking";
  v3[4] = &stru_100057080;
  v3[5] = @"PDSEHangTracer";
  v3[6] = @"PDSEHTBadDay";
  v3[7] = @"PDSEHTThirdParty";
  v3[8] = @"PDSEWorkflowResponsiveness";
  v3[9] = @"PDSEHTRateOnly";
  v3[10] = @"PDSESentry";
  v3[11] = @"PDSEAppLaunch";
  v1 = [NSArray arrayWithObjects:v3 count:12];
  v2 = qword_100067B68;
  qword_100067B68 = v1;
}

void sub_100020C30(id a1)
{
  qword_100067B70 = objc_alloc_init(HTPrefs);

  _objc_release_x1();
}

void sub_100022B9C(id a1)
{
  memset(v4, 0, sizeof(v4));
  v3 = 37;
  if (!sysctlbyname("kern.bootsessionuuid", v4, &v3, 0, 0))
  {
    v1 = [NSString stringWithUTF8String:v4];
    v2 = qword_100067B88;
    qword_100067B88 = v1;
  }
}

void sub_100023DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  objc_destroyWeak((v51 + 80));
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose((v52 - 240), 8);
  _Block_object_dispose((v52 - 208), 8);
  _Block_object_dispose((v52 - 176), 8);
  _Block_object_dispose((v52 - 144), 8);
  objc_destroyWeak((v52 - 112));
  _Unwind_Resume(a1);
}

void sub_100023E4C(uint64_t a1, int a2)
{
  if (*(*(*(a1 + 40) + 8) + 24) == a2)
  {
    v3 = sub_100003824();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v4 = "HTPrefs: Tasking Changed";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, v4, buf, 2u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (*(*(*(a1 + 48) + 8) + 24) == a2)
  {
    v3 = sub_100003824();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v4 = "HTPrefs: Telemetry Changed";
      goto LABEL_10;
    }

LABEL_11:

    goto LABEL_12;
  }

  if (*(*(*(a1 + 56) + 8) + 24) == a2)
  {
    v3 = sub_100003824();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v4 = "HTPrefs: Profile List Changed";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (*(*(*(a1 + 64) + 8) + 24) == a2)
  {
    v18 = sub_100003824();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "HTPrefs: EPL State Changed", buf, 2u);
    }

    +[HTTailspin resetLogCountsForEPL];
  }

  else if (*(*(*(a1 + 72) + 8) + 24) == a2)
  {
    v3 = sub_100003824();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v4 = "HTPrefs: HT Self-Enablement State Changed Triggered Refresh";
    goto LABEL_10;
  }

LABEL_12:
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v6 = [WeakRetained hangtracerDaemonEnabled];

  [*(a1 + 32) refreshHTPrefs];
  v7 = objc_loadWeakRetained((a1 + 80));
  v8 = [v7 hangtracerDaemonEnabled];

  if (v6 != v8)
  {
    v9 = sub_100003824();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      if (v6)
      {
        v10 = @"ON";
      }

      else
      {
        v10 = @"OFF";
      }

      v11 = objc_loadWeakRetained((a1 + 80));
      if ([v11 hangtracerDaemonEnabled])
      {
        v12 = @"ON";
      }

      else
      {
        v12 = @"OFF";
      }

      *buf = 138412546;
      v22 = v10;
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "HTPrefs: HangTracer Enabled State Changed: %@ -> %@", buf, 0x16u);
    }

    v13 = objc_loadWeakRetained((a1 + 80));
    v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v13 hangtracerDaemonEnabled]);
    v20 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];

    v16 = +[NSNotificationCenter defaultCenter];
    v17 = objc_loadWeakRetained((a1 + 80));
    [v16 postNotificationName:@"com.apple.hangtracer.daemonstate" object:v17 userInfo:v15];
  }
}

void *sub_1000241C0(void *result, int a2)
{
  if (*(*(result[4] + 8) + 24) == a2)
  {
    v6 = v2;
    v7 = v3;
    v4 = sub_100003824();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "HTPrefs: Test Reset Log Limits", v5, 2u);
    }

    +[HTTailspin resetLogCountsForDailyRollover];
    +[HTTailspin resetDailySentryTailspinCounts];
    +[HTTailspin resetPerAppCounts];
    return +[HTTailspin refreshPerPeriodSentryLogCount];
  }

  return result;
}

void *sub_100024264(void *result, int a2)
{
  if (*(*(result[5] + 8) + 24) == a2)
  {
    v7 = v2;
    v8 = v3;
    v4 = result;
    v5 = sub_100003824();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "HTPrefs: System Language Change Triggered Refresh", v6, 2u);
    }

    sub_100026038();
    return [v4[4] refreshHTPrefs];
  }

  return result;
}

void sub_1000242F4(uint64_t a1)
{
  v2 = sub_100003824();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LOWORD(v9[0]) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "HTPrefs: Sentry Enablement Settings changed", v9, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 57);
  v5 = *(v3 + 424);
  v6 = CFPreferencesCopyValue(@"allowSentryEnablement", v5, @"mobile", kCFPreferencesAnyHost);
  *(*(a1 + 32) + 57) = [v6 BOOLValue];
  v7 = sub_100003824();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(*(a1 + 32) + 57);
    v9[0] = 67109376;
    v9[1] = v4;
    v10 = 1024;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "HTPrefs: Sentry Enablement Settings changed from %d -> %d", v9, 0xEu);
  }
}

void sub_100024454(uint64_t a1)
{
  v2 = sub_100003824();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LOWORD(v9[0]) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "HTPrefs: Workflow Responsiveness Monitoring Enablement Settings changed", v9, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 58);
  v5 = *(v3 + 424);
  v6 = CFPreferencesCopyValue(@"allowWorkflowResponsivenessEnablement", v5, @"mobile", kCFPreferencesAnyHost);
  *(*(a1 + 32) + 58) = [v6 BOOLValue];
  v7 = sub_100003824();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(*(a1 + 32) + 58);
    v9[0] = 67109376;
    v9[1] = v4;
    v10 = 1024;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "HTPrefs: Workflow Responsiveness Monitoring Enablement Settings changed from %d -> %d", v9, 0xEu);
  }
}

void sub_1000251D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, int a6, double a7)
{
  if (qword_100067BB8 != -1)
  {
    sub_100034068();
  }

  v14 = sub_100003824();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 136316418;
    v19 = a1;
    v20 = 2048;
    v21 = a3;
    v22 = 2048;
    v23 = a4;
    v24 = 2048;
    v25 = a7;
    v26 = 1024;
    v27 = a6;
    v28 = 1024;
    v29 = a4 == 0x7FFFFFFFFFFFFFFFLL;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "sendHangToHUD: bundleID = %s, startTime=%llu, endTime=%llu, elapsedTimeMS=%f, timed out: %{BOOL}d (is over: %{BOOL}d)", buf, 0x36u);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100025370;
  v15[3] = &unk_100055D88;
  *&v15[4] = a7;
  v16 = a5;
  v15[5] = a1;
  v15[6] = a3;
  v15[7] = a4;
  v15[8] = a2;
  v17 = a6;
  dispatch_async(qword_100067B90, v15);
}

void sub_100025370(uint64_t a1)
{
  sub_100025700();
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  v4 = +[HTPrefs sharedPrefs];
  v5 = [v4 hudThresholdMSec];

  if (v3 > v5)
  {
    v6 = [NSString stringWithCString:*(a1 + 40) encoding:1];
    v7 = [v6 componentsSeparatedByString:@"."];
    v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v7, "count") - 1}];
    if (sub_10002A24C())
    {
      v9 = &stru_100057080;
    }

    else
    {
      v10 = [NSString stringWithFormat:@"%.0f", *v2];
      if ([v10 length] <= 3)
      {
        v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%*s%@", 4 - [v10 length], "", v10);

        v10 = v11;
      }

      v12 = [v8 stringByPaddingToLength:(16 - objc_msgSend(v10 withString:"length")) startingAtIndex:{@" ", 0}];
      v13 = v12;
      if (*(a1 + 72) == 1)
      {
        v14 = [v12 stringByReplacingCharactersInRange:objc_msgSend(v12 withString:{"length") - 1, 1, @"*"}];

        v13 = v14;
      }

      v15 = [NSMutableString stringWithString:@"|"];
      v16 = *v2 / 200.0;
      if (v16 > 100.0)
      {
        v17 = sub_100003824();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          sub_10003407C((a1 + 32), v17, v16);
        }

        v16 = 100.0;
      }

      v18 = v16;
      if (v16 >= 1)
      {
        do
        {
          [v15 appendString:@"-"];
          --v18;
        }

        while (v18);
      }

      v9 = [NSString stringWithFormat:@"%@ %@ms%@", v13, v10, v15];
    }

    v19 = [HTHangHUDInfo alloc];
    LOBYTE(v25) = *(a1 + 73);
    v20 = [(HTHangHUDInfo *)v19 initWithHangStartTime:*(a1 + 48) hangEndTime:*(a1 + 56) receivedTimestamp:*(a1 + 64) hangDurationMS:v9 hudString:v8 shortenedBundle:v6 bundleId:*(a1 + 32) timedOut:v25];
    v21 = [(HTHangHUDInfo *)v20 getHangHUDInfoKey];
    [qword_100067B98 setObject:v20 forKeyedSubscript:v21];
    dword_100067BA0 = 0;
    v22 = sub_100003824();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(a1 + 32);
      v24 = *(a1 + 48);
      *buf = 138412802;
      v27 = v8;
      v28 = 2048;
      v29 = v23;
      v30 = 2048;
      v31 = v24;
      _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "HTHUD: received updated hang info: bundle=%@, elapsedtime_ms=%f (so far), starttime_matu=%llu", buf, 0x20u);
    }
  }
}

void sub_100025700()
{
  if ((sub_10002A388() & 1) == 0 && sub_10002A24C() && (!qword_100067BA8 || ([qword_100067BA8 isValid] & 1) == 0))
  {
    v0 = sub_100003824();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Hud context is nil or no longer valid: re-creating", v4, 2u);
    }

    [qword_100067BA8 invalidate];
    v1 = [HUDContext alloc];
    v2 = [(HUDContext *)v1 initWithQueue:qword_100067B90];
    v3 = qword_100067BA8;
    qword_100067BA8 = v2;
  }
}

void sub_1000257B8()
{
  v0 = +[HTPrefs sharedPrefs];
  v1 = [v0 shouldUpdateHangsHUD];

  if (v1)
  {
    if (qword_100067BB8 != -1)
    {
      sub_100034068();
    }

    v2 = qword_100067B90;

    dispatch_async(v2, &stru_100055DA8);
  }
}

void sub_10002583C(id a1)
{
  sub_100025700();
  if ((sub_10002A388() & 1) == 0 && sub_10002A24C() && byte_100067BA4 == 1)
  {
    [qword_100067BA8 clearBundleNameCache];
    byte_100067BA4 = 0;
  }

  if ([qword_100067B98 count])
  {
    v1 = mach_absolute_time();
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v2 = [qword_100067B98 allKeys];
    v3 = [v2 countByEnumeratingWithState:&v62 objects:v74 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v63;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v63 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v62 + 1) + 8 * i);
          v8 = [qword_100067B98 objectForKeyedSubscript:v7];
          v9 = [v8 receivedTimestamp];

          v10 = [qword_100067B98 objectForKeyedSubscript:v7];
          v11 = [v10 hangEndTime];

          if (v11 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v12 = [qword_100067B98 objectForKeyedSubscript:v7];
            v9 = [v12 hangEndTime];
          }

          v13 = sub_1000024F8(v1 - v9);
          if (v13 >= 5000.0)
          {
            v14 = v13;
            if ((sub_10002A388() & 1) != 0 || !sub_10002A24C())
            {
              v15 = 1;
            }

            else
            {
              v15 = [qword_100067BA8 hangHasPendingAnimation:v7];
            }

            if ((sub_10002A388() & 1) != 0 || (v15 & sub_10002A24C() & 1) == 0)
            {
              v17 = sub_100003824();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
              {
                v52 = [qword_100067B98 objectForKeyedSubscript:v7];
                v18 = [v52 shortenedBundle];
                v19 = [qword_100067B98 objectForKeyedSubscript:v7];
                v20 = [v19 hangStartTime];
                *buf = 138412802;
                v69 = v18;
                v70 = 2048;
                v71 = v20;
                v72 = 2048;
                v73 = v14;
                _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "HTHUD: hang removed from hud: bundle=%@, starttime_matu=%llu, age_ms=%f", buf, 0x20u);
              }

              [qword_100067B98 removeObjectForKey:v7];
              dword_100067BA0 = 0;
            }

            else
            {
              v16 = sub_100003824();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v69 = v7;
                _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Not removing hang since an animation is in progress %@", buf, 0xCu);
              }
            }
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v62 objects:v74 count:16];
      }

      while (v4);
    }

    if (sub_10002A24C())
    {
      v21 = sub_10002A388();
      sub_10002A41C(v21);
      if (v21)
      {
        v22 = sub_100003824();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          sub_100034110();
        }

        v23 = [NSDictionary alloc];
        v24 = [v23 initWithDictionary:qword_100067B98];
        v25 = +[HangHUDClient sharedInstance];
        [v25 sendHangHUDInfo:v24 completion:&stru_100055DC8];
      }

      else
      {
        [qword_100067BA8 updateHangs:qword_100067B98 withCompletion:&stru_100055DE8];
      }
    }

    else if (dword_100067BA0 <= 2)
    {
      ++dword_100067BA0;
      v26 = [qword_100067B98 allKeys];
      v27 = [v26 sortedArrayUsingSelector:"compare:"];

      v49 = v27;
      v50 = objc_alloc_init(NSMutableArray);
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v28 = [v27 reverseObjectEnumerator];
      v29 = [v28 countByEnumeratingWithState:&v58 objects:v67 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = 0;
        v32 = *v59;
        do
        {
          for (j = 0; j != v30; j = j + 1)
          {
            if (*v59 != v32)
            {
              objc_enumerationMutation(v28);
            }

            if (v31 <= 4)
            {
              [v50 addObject:*(*(&v58 + 1) + 8 * j)];
              ++v31;
            }
          }

          v30 = [v28 countByEnumeratingWithState:&v58 objects:v67 count:16];
        }

        while (v30);
      }

      if (byte_100067BB0)
      {
        v34 = @"\n\n";
      }

      else
      {
        v34 = &stru_100057080;
      }

      v53 = +[NSMutableArray array];
      [v50 sortedArrayUsingSelector:"compare:"];
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      obj = v57 = 0u;
      v35 = [obj countByEnumeratingWithState:&v54 objects:v66 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = &archive_entry_copy_stat_ptr;
        v38 = *v55;
        do
        {
          for (k = 0; k != v36; k = k + 1)
          {
            if (*v55 != v38)
            {
              objc_enumerationMutation(obj);
            }

            v40 = *(*(&v54 + 1) + 8 * k);
            if ([(__CFString *)v34 length])
            {
              v41 = [(__CFString *)v34 stringByAppendingString:@"\n"];
            }

            else
            {
              v41 = v34;
            }

            v42 = [qword_100067B98 objectForKeyedSubscript:v40];
            v43 = [v42 hudString];
            v44 = [v37[270] stringWithUTF8String:">"];
            v45 = sub_1000024F8(v1 - [v42 receivedTimestamp]);
            if ([v42 hangEndTime] != 0x7FFFFFFFFFFFFFFFLL || v45 > 50.0)
            {
              v47 = [v37[270] stringWithUTF8String:"|"];

              v44 = v47;
            }

            v48 = [v43 stringByAppendingString:v44];

            v34 = [v41 stringByAppendingString:v48];

            [v53 addObject:v42];
            v37 = &archive_entry_copy_stat_ptr;
          }

          v36 = [obj countByEnumeratingWithState:&v54 objects:v66 count:16];
        }

        while (v36);
        v35 = [(__CFString *)v34 UTF8String];
      }

      sub_100025F80(v35);
    }
  }
}

void sub_100025F24(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = sub_100003824();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100034144(v2, v3);
    }
  }
}

void sub_100025F80(uint64_t a1)
{
  ServerPort = CARenderServerGetServerPort();
  if (ServerPort)
  {
    v3 = ServerPort;
    if (!a1)
    {
      v5 = sub_100003824();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        sub_1000341BC();
      }
    }

    CARenderServerSetDebugMessage();
    mach_port_deallocate(mach_task_self_, v3);
  }

  else
  {
    v4 = sub_100003824();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000341F0();
    }
  }
}

void sub_100026038()
{
  if (qword_100067B90)
  {
    dispatch_async(qword_100067B90, &stru_100055E08);
  }
}

void sub_100026064()
{
  [qword_100067B98 removeAllObjects];
  v0 = qword_100067B90;

  dispatch_async(v0, &stru_100055E28);
}

void sub_1000260B4(id a1)
{
  v1 = sub_100003824();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_100034230();
  }

  v2 = [[NSMutableDictionary alloc] initWithCapacity:5];
  v3 = qword_100067B98;
  qword_100067B98 = v2;

  v4 = dispatch_queue_create("com.apple.hangtracer.hud_update_queue", 0);
  v5 = qword_100067B90;
  qword_100067B90 = v4;

  v6 = MGGetBoolAnswer();
  v7 = MGCopyAnswer();
  if ([v7 containsString:@"iPhone"] && v6)
  {
    byte_100067BB0 = 1;
  }

  v8 = sub_100003824();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9[0] = 67109634;
    v9[1] = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 1024;
    v13 = byte_100067BB0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "setupHangHUD: pearlDevice = %i and deviceClass = %@ => shouldLowerHUD = %i", v9, 0x18u);
  }
}

void sub_100026230(id a1)
{
  qword_100067BC0 = os_log_create("com.apple.hangtracer", "");

  _objc_release_x1();
}

void sub_100026360(id a1)
{
  qword_100067BD0 = objc_alloc_init(HUDAnimator);

  _objc_release_x1();
}

void sub_1000264C8(uint64_t a1)
{
  v3 = objc_alloc_init(HUDAnimation);
  [(HUDAnimation *)v3 setFromValue:*(a1 + 64)];
  [(HUDAnimation *)v3 setToValue:*(a1 + 72)];
  [(HUDAnimation *)v3 setStartTime:CACurrentMediaTime()];
  [(HUDAnimation *)v3 startTime];
  [(HUDAnimation *)v3 setEndTime:v2 + *(a1 + 80)];
  [(HUDAnimation *)v3 setUpdateBlock:*(a1 + 48)];
  [(HUDAnimation *)v3 setCompletionBlock:*(a1 + 56)];
  [(HUDAnimation *)v3 setIdentifier:*(a1 + 32)];
  [*(*(a1 + 40) + 8) addObject:v3];
}

void sub_10002663C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000267D4;
  v10[3] = &unk_100055ED8;
  v11 = *(a1 + 40);
  v3 = [v2 indexOfObjectPassingTest:v10];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = v3;
    v5 = [*(*(a1 + 32) + 8) objectAtIndexedSubscript:v3];
    v6 = objc_alloc_init(HUDAnimation);
    v7 = CACurrentMediaTime();
    [v5 valueAtTime:?];
    [(HUDAnimation *)v6 setFromValue:?];
    [(HUDAnimation *)v6 setToValue:*(a1 + 48)];
    [(HUDAnimation *)v6 setStartTime:v7];
    [(HUDAnimation *)v6 setEndTime:v7 + *(a1 + 56)];
    v8 = [v5 updateBlock];
    [(HUDAnimation *)v6 setUpdateBlock:v8];

    v9 = [v5 completionBlock];
    [(HUDAnimation *)v6 setCompletionBlock:v9];

    [(HUDAnimation *)v6 setRetargeted:1];
    [(HUDAnimation *)v6 setIdentifier:*(a1 + 40)];
    [*(*(a1 + 32) + 8) replaceObjectAtIndex:v4 withObject:v6];
  }
}

id sub_1000267D4(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void sub_1000268B0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100026A40;
  v9[3] = &unk_100055ED8;
  v10 = *(a1 + 40);
  v3 = [v2 indexOfObjectPassingTest:v9];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = v3;
    v5 = [*(*(a1 + 32) + 8) objectAtIndexedSubscript:v3];
    v6 = objc_alloc_init(HUDAnimation);
    [v5 fromValue];
    [(HUDAnimation *)v6 setFromValue:?];
    [v5 toValue];
    [(HUDAnimation *)v6 setToValue:?];
    [v5 startTime];
    [(HUDAnimation *)v6 setStartTime:?];
    [v5 endTime];
    [(HUDAnimation *)v6 setEndTime:?];
    v7 = [v5 updateBlock];
    [(HUDAnimation *)v6 setUpdateBlock:v7];

    v8 = [v5 completionBlock];
    [(HUDAnimation *)v6 setCompletionBlock:v8];

    [(HUDAnimation *)v6 setCanceled:1];
    [(HUDAnimation *)v6 setIdentifier:*(a1 + 40)];
    [*(*(a1 + 32) + 8) replaceObjectAtIndex:v4 withObject:v6];
  }
}

id sub_100026A40(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void sub_100026C0C(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2 = +[NSRunLoop currentRunLoop];
  [v1 addToRunLoop:v2 forMode:NSDefaultRunLoopMode];

  v3 = +[NSRunLoop currentRunLoop];
  [v3 run];
}

void sub_100026EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 160), 8);
  _Block_object_dispose((v31 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100026EE0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100026EF8(void *a1)
{
  v2 = [*(a1[4] + 8) indexesOfObjectsPassingTest:&stru_100055F40];
  v3 = [*(a1[4] + 8) objectsAtIndexes:v2];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1[4] + 8);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100027058;
  v11[3] = &unk_100055F60;
  v11[4] = a1[8];
  v7 = [v6 indexesOfObjectsPassingTest:v11];
  if ([v7 count])
  {
    v8 = [*(a1[4] + 8) objectsAtIndexes:v7];
    v9 = *(a1[6] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    [*(a1[4] + 8) removeObjectsAtIndexes:v7];
    if (![*(a1[4] + 8) count])
    {
      *(*(a1[7] + 8) + 24) = 1;
    }
  }
}

uint64_t sub_100027058(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 endTime];
  if (v4 <= *(a1 + 32))
  {
    v5 = 1;
  }

  else
  {
    v5 = [v3 canceled];
  }

  return v5;
}

void sub_1000270AC(uint64_t a1)
{
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        v8 = [v7 updateBlock];
        [v7 valueAtTime:*(a1 + 48)];
        v8[2](v8);
      }

      v4 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v4);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = *(*(*(a1 + 40) + 8) + 40);
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (j = 0; j != v11; j = j + 1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * j);
        v15 = [v14 completionBlock];

        if (v15)
        {
          v16 = [v14 completionBlock];
          (v16)[2](v16, [v14 canceled] ^ 1, objc_msgSend(v14, "retargeted"));
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v11);
  }
}

void sub_1000272C0(uint64_t a1)
{
  if (![*(*(a1 + 32) + 8) count])
  {
    [*(*(a1 + 32) + 24) invalidate];
    v2 = *(a1 + 32);
    v3 = *(v2 + 24);
    *(v2 + 24) = 0;
  }
}

id sub_100027494(uint64_t a1)
{
  if (a1)
  {
    +[NSMutableArray array];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000277B8;
    v2 = v20[3] = &unk_100055FD8;
    v21 = v2;
    v19 = objc_retainBlock(v20);
    v3 = (a1 + 8);
    v4 = 10;
    do
    {
      v5 = *(v3 - 1);
      if (v5)
      {
        v6 = [NSNumber numberWithUnsignedChar:*v3];
        v7 = v6;
        if (v6)
        {
          v22[1] = @"timestamp";
          v23[0] = v6;
          v22[0] = @"cpuRoleEnum";
          v8 = [NSNumber numberWithUnsignedLongLong:v5];
          v23[1] = v8;
          v9 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];

          [v2 insertObject:v9 atIndex:[v2 indexOfObject:v9 inSortedRange:0 options:[v2 count] usingComparator:1024, v19]];
        }
      }

      v3 += 16;
      --v4;
    }

    while (v4);
    v10 = [v2 count];
    if (v10 >= 2)
    {
      v11 = v10 + 1;
      do
      {
        v12 = [v2 objectAtIndexedSubscript:v11 - 2];
        v13 = [v2 objectAtIndexedSubscript:v11 - 3];
        v14 = [v12 objectForKeyedSubscript:@"cpuRoleEnum"];
        v15 = [v13 objectForKeyedSubscript:@"cpuRoleEnum"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v14 isEqualToNumber:v15])
            {
              [v2 removeObjectAtIndex:v11 - 2];
            }
          }
        }

        --v11;
      }

      while (v11 > 2);
    }

    v16 = sub_100003824();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_10003428C();
    }

    if ([v2 count])
    {
      v17 = [v2 copy];
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v2 = sub_100003824();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_100034300(v2);
    }

    v17 = 0;
  }

  return v17;
}

uint64_t sub_1000277B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v7 = v6;
    v8 = [v5 objectForKeyedSubscript:@"timestamp"];
    v9 = [v7 objectForKeyedSubscript:@"timestamp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v10 = [v8 unsignedLongLongValue];
      v11 = [v9 unsignedLongLongValue];
      if (v10 < v11)
      {
        v12 = -1;
      }

      else
      {
        v12 = v10 > v11;
      }
    }

    else
    {
      v13 = sub_100003824();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = objc_opt_class();
        v16 = v15;
        v17 = objc_opt_class();
        v18 = *(a1 + 32);
        v20 = 138412802;
        v21 = v15;
        v22 = 2112;
        v23 = v17;
        v24 = 2112;
        v25 = v18;
        v19 = v17;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Invalid timestamp(s) of class '%@' and '%@' found in dictionary '%@' during sorting.", &v20, 0x20u);
      }

      v12 = 0;
    }
  }

  else
  {
    v7 = sub_100003824();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100034344();
    }

    v12 = 0;
  }

  return v12;
}

id sub_1000279EC(id a1)
{

  return a1;
}

id sub_100027A10()
{
  if (qword_100067BE8 != -1)
  {
    sub_1000343F0();
  }

  v1 = qword_100067BE0;

  return v1;
}

void sub_100027A54(id a1)
{
  qword_100067BE0 = os_log_create("com.apple.HangHUD", "");

  _objc_release_x1();
}

id sub_100027C44(uint64_t a1)
{
  if (a1 >= 0x2B)
  {
    v2 = [NSString stringWithFormat:@"%d", a1];
  }

  else
  {
    v2 = *(&off_100056018 + a1);
  }

  return v2;
}

id sub_100027CB4(uint64_t a1)
{
  if (a1 - 4) < 0x27 && ((0x7789044BDDuLL >> (a1 - 4)))
  {
    v1 = *(&off_100056170 + (a1 - 4));
  }

  else
  {
    v2 = sub_100027C44(a1);
    v1 = [v2 capitalizedString];
  }

  return v1;
}

id sub_100027D34(uint64_t a1)
{
  if ((a1 - 1) >= 0x1F)
  {
    v2 = [NSString stringWithFormat:@"SIG%d", a1];
  }

  else
  {
    v2 = *(&off_1000562A8 + (a1 - 1));
  }

  return v2;
}

__CFString *sub_100027DA8(uint64_t a1)
{
  v3 = a1;
  v4 = @"invalid reason";
  switch(v3)
  {
    case 0:
      goto LABEL_19;
    case 1:
      v4 = @"generic";

      break;
    case 2:
      v4 = @"memory highwater";

      break;
    case 3:
      v4 = @"vnode shortage";

      break;
    case 4:
      v4 = @"vm page shortage";

      break;
    case 5:
      v4 = @"process thrashing";

      break;
    case 6:
      v4 = @"filecache thrashing";

      break;
    case 7:
      v4 = @"per-process limit reached";

      break;
    case 8:
      v4 = @"disk space shortage";

      break;
    case 9:
      v4 = @"idle exit";

      break;
    case 10:
      v4 = @"zone map exhaustion";

      break;
    case 11:
      v4 = @"vm compressor thrashing";

      break;
    case 12:
      v4 = @"vm compressor space shortage";

      break;
    case 13:
      v4 = @"swap space shortage";

      break;
    case 14:
      v4 = @"sustained memory pressure";

      break;
    case 15:
      v4 = @"vm pageout starvation";

      break;
    case 16:
      v4 = @"conclave limit";

      break;
    case 17:
      v4 = @"long idle exit";

      break;
    default:
      if (a1 == 100)
      {
        v4 = @"cpu limit";
      }

      else
      {
        v4 = [NSString stringWithFormat:@"%d", a1];
LABEL_19:
      }

      break;
  }

  return v4;
}

__CFString *sub_100027FE0(uint64_t a1)
{
  if (a1 > 10)
  {
    if (a1 > 14)
    {
      if (a1 == 15)
      {
        v1 = @"VM Pageout Starvation";
        goto LABEL_21;
      }

      if (a1 == 100)
      {
        v1 = @"CPU Limit";
        goto LABEL_21;
      }
    }

    else
    {
      if (a1 == 11)
      {
        v1 = @"VM Compressor Thrashing";
        goto LABEL_21;
      }

      if (a1 == 12)
      {
        v1 = @"VM Compressor Space Shortage";
        goto LABEL_21;
      }
    }
  }

  else if (a1 > 5)
  {
    if (a1 == 6)
    {
      v1 = @"FileCache Thrashing";
      goto LABEL_21;
    }

    if (a1 == 8)
    {
      v1 = @"Low Disk Space";
      goto LABEL_21;
    }
  }

  else
  {
    if (a1 == 2)
    {
      v1 = @"High-Water";
      goto LABEL_21;
    }

    if (a1 == 4)
    {
      v1 = @"VM Page Shortage";
      goto LABEL_21;
    }
  }

  v2 = sub_100027DA8(a1);
  v1 = [v2 capitalizedString];

LABEL_21:

  return v1;
}