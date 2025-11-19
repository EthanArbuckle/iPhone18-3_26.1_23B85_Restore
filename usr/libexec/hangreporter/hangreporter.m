void sub_1000014C0(void *a1, uint64_t *a2)
{
  if (a2[1] == a1[5] && *a2 >= a1[6] && *a2 <= a1[7])
  {
    v3 = *(a2 + 12) == 621346816 && a2[3] != 0;
    v4 = a1[4];
    v5 = [[MakeRunnableEvent alloc] initWithMadeRunnableByThreadID:a2[5] atTime:*a2 inInterrupt:v3];
    [v4 addObject:v5];

    v6 = sub_100001684();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a2 + 12);
      if (v7 == 6)
      {
        v8 = 0;
        v9 = @"MACH_MAKE_RUNNABLE";
      }

      else if (v7 == 621346816)
      {
        v8 = 0;
        v9 = @"PERF_LZ_MKRUNNABLE";
      }

      else
      {
        v9 = [NSNumber numberWithUnsignedInt:?];
        v8 = 1;
      }

      v10 = a2[5];
      v11 = *a2;
      v12 = a2[1];
      v13 = 138413314;
      v14 = v9;
      v15 = 2048;
      v16 = v11;
      v17 = 2048;
      v18 = v10;
      v19 = 2048;
      v20 = v12;
      v21 = 1024;
      v22 = v3;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%@: %llu - thread %llx mkrunnable thread %llx inInterrupt %x", &v13, 0x30u);
      if (v8)
      {
      }
    }
  }
}

id sub_100001684()
{
  if (qword_100090438 != -1)
  {
    sub_1000401E4();
  }

  v1 = qword_100090430;

  return v1;
}

intptr_t sub_1000016C8(uint64_t a1)
{
  v2 = *(a1 + 40);
  ktrace_session_destroy();
  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

id sub_10000170C(void *a1, void *a2, void *a3, int a4)
{
  v6 = a1;
  v286 = a2;
  v7 = a3;
  v279 = v6;
  v259 = [v6 cStringUsingEncoding:4];
  v287 = v7;
  v275 = [v7 objectForKeyedSubscript:@"ServiceName"];
  v8 = [v7 objectForKeyedSubscript:@"PID"];
  v262 = [v8 unsignedIntValue];

  v9 = [v287 objectForKeyedSubscript:@"HangType"];
  v10 = [v9 intValue];

  v269 = [v287 objectForKeyedSubscript:@"EnablementType"];
  v11 = [v287 objectForKeyedSubscript:@"StartTime"];
  v288 = [v11 unsignedLongLongValue];

  v284 = sub_1000185A8(v279, v287);
  v276 = [v287 objectForKeyedSubscript:off_10008FD90];
  v278 = [v287 objectForKeyedSubscript:@"ProcessPath"];
  v267 = [v278 lastPathComponent];
  v12 = [v287 objectForKeyedSubscript:@"IsThirdPartyDevSupportModeHang"];
  v272 = [v12 BOOLValue];

  v270 = [v287 objectForKeyedSubscript:@"IPSMetaDictionary"];
  v13 = [v287 objectForKeyedSubscript:@"isFirstPartyApp"];
  LODWORD(a2) = [v13 BOOLValue];

  v14 = sub_10000B548(v284 - v288);
  v260 = a2;
  v264 = sub_10000B09C(a2, v272, v14);
  v15 = [v287 objectForKeyedSubscript:@"Reason"];
  [v286 setReason:v15];

  v281 = [v287 objectForKeyedSubscript:@"UserAction"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v281 = 0;
  }

  v277 = [v287 objectForKeyedSubscript:@"StateInfo"];
  v274 = sub_100007894(v277, v288, v284);
  v16 = sub_100001684();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_10003EA8C();
  }

  v283 = [SATimestamp timestampWithMachAbsTime:v288 machContTime:0 wallTime:sub_1000046E4() machTimebase:0.0];
  v282 = [SATimestamp timestampWithMachAbsTime:v284 machContTime:0 wallTime:sub_1000046E4() machTimebase:0.0];
  v17 = [v286 indexOfFirstSampleOnOrAfterTimestamp:v283];
  v18 = [v286 indexOfLastSampleOnOrBeforeTimestamp:v282];
  if (v17 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = [v286 endTime];
    v20 = v19 == 0;

    if (v20)
    {
      goto LABEL_10;
    }

    v21 = [v286 endTime];
    [v283 guessMissingTimesBasedOnTimestamp:v21];
  }

  else
  {
    v21 = [v286 sampleTimestamps];
    v22 = [v21 objectAtIndexedSubscript:v17];
    [v283 guessMissingTimesBasedOnTimestamp:v22];
  }

LABEL_10:
  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v23 = [v286 startTime];
    v24 = v23 == 0;

    if (v24)
    {
      goto LABEL_15;
    }

    v25 = [v286 startTime];
    [v282 guessMissingTimesBasedOnTimestamp:v25];
  }

  else
  {
    v25 = [v286 sampleTimestamps];
    v26 = [v25 objectAtIndexedSubscript:v18];
    [v282 guessMissingTimesBasedOnTimestamp:v26];
  }

LABEL_15:
  v27 = sub_100001684();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    sub_10003EB08();
  }

  v280 = objc_alloc_init(NSMutableDictionary);
  v311 = 0;
  v312 = &v311;
  v313 = 0x3032000000;
  v314 = sub_100011518;
  v315 = sub_100011528;
  v316 = 0;
  v28 = [HTProcessLaunchExitRecord getProcessExitsAndLaunchesDuringHang:v288 endTime:v284];
  if (v28)
  {
    [v280 setObject:v28 forKeyedSubscript:@"processExits"];
  }

  v266 = v28;
  v265 = v10;
  if ([v276 isEqualToString:off_10008FDA0])
  {
    if (v17 != 0x7FFFFFFFFFFFFFFFLL && v18 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v29 = sub_10000B548(v284 - v288);
      [v286 setTargetProcessId:v262];
      [v286 setSanitizePaths:1];
      v30 = [v287 objectForKeyedSubscript:off_10008FD88];
      [v286 setEvent:v30];

      v271 = [v286 targetProcess];
      v31 = [[SASamplePrinter alloc] initWithSampleStore:v286];
      [v31 filterToMachAbsTimeRangeStart:v288 end:v284];
      v32 = [v31 options];
      [v32 setPrintSpinSignatureStack:1];

      v33 = +[HTPrefs sharedPrefs];
      v34 = [v33 isInternal];

      if ((v34 & 1) == 0)
      {
        v35 = [v31 options];
        [v35 setDisplayKernelFrames:0];
      }

      if (!(v260 & 1 | ((v272 & 1) == 0)))
      {
        v36 = [v31 options];
        [v36 setDisplayTrialInformation:0];
      }

      v37 = [NSUUID alloc];
      v38 = [v287 objectForKeyedSubscript:off_10008FDA8];
      v39 = [v37 initWithUUIDString:v38];
      [v31 setIncidentUUID:v39];

      v40 = [v31 options];
      [v40 setForceOneBasedTimeIndexes:1];

      v41 = objc_alloc_init(NSMutableDictionary);
      v42 = [NSString stringWithFormat:@"%0.0f", *&v29];
      [v41 setObject:v42 forKey:@"duration_ms"];

      v43 = [v286 hardwareModel];
      if (v43)
      {
        [v286 hardwareModel];
      }

      else
      {
        [NSString stringWithUTF8String:"UNKNOWN"];
      }
      v62 = ;

      [v41 setObject:v62 forKey:@"machine_config"];
      v63 = [v287 objectForKeyedSubscript:@"Reason"];
      if (v63)
      {
        [v287 objectForKeyedSubscript:@"Reason"];
      }

      else
      {
        [v287 objectForKeyedSubscript:off_10008FD88];
      }
      v64 = ;

      [v41 setObject:v64 forKey:@"reason"];
      v322 = @"HangUUID";
      v65 = [v31 incidentUUID];
      v323 = v65;
      v285 = [NSDictionary dictionaryWithObjects:&v323 forKeys:&v322 count:1];

      v66 = [v271 name];
      v67 = [v271 mainBinaryPath];
      v289 = sub_100009F50(v66, 0, v67, v285);

      [v41 addEntriesFromDictionary:v289];
      v68 = [SATimeRange timeRangeStart:v283 end:v282];
      [v286 setEventTimeRange:v68];

      [MXSampleAnalysisParser sendDiagnosticReport:v31 forType:3 forSourceID:3];
      v69 = [NSNumber numberWithInt:v262];
      v70 = [NSMutableSet setWithObject:v69];
      v71 = [v31 options];
      [v71 setPidsToPrint:v70];

      v72 = [v31 options];
      [v72 setPrintHeavyStacks:1];

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      *&buf[24] = sub_100011518;
      *&v327 = sub_100011528;
      *(&v327 + 1) = 0;
      v73 = [v271 name];
      v74 = [NSString stringWithFormat:@"Applaunch-%@", v73];

      if ([v64 isEqualToString:off_10008FD98])
      {
        v75 = 248;
      }

      else
      {
        v75 = 238;
      }

      v76 = [NSString stringWithFormat:@"%ld", v75];
      v300 = _NSConcreteStackBlock;
      v301 = 3221225472;
      v302 = sub_100011530;
      v303 = &unk_100085330;
      v306 = buf;
      v307 = &v311;
      v304 = v280;
      v77 = v31;
      v310 = a4;
      v305 = v77;
      v308 = v265;
      v309 = v264;
      if (OSAWriteLogForSubmission())
      {
        v78 = sub_100001684();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
        {
          v79 = *(*&buf[8] + 40);
          *v319 = 138412290;
          *&v319[4] = v79;
          _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_INFO, "IPS file for MetricKit App launch diagnostics written successfully at %@", v319, 0xCu);
        }

        v80 = arc4random_uniform(0x64u);
        v81 = v80;
        if (v80 > 0x18)
        {
          v83 = sub_100001684();
          if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
          {
            *v319 = 134217984;
            *&v319[4] = v81;
            _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_INFO, "randomFlagValue is %f, rejecting submission to DP", v319, 0xCu);
          }
        }

        else
        {
          v82 = sub_100001684();
          if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
          {
            *v319 = 134217984;
            *&v319[4] = v81;
            _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_INFO, "randomFlagValue is %f will be submitting the tailspin to DP", v319, 0xCu);
          }

          v83 = objc_alloc_init(NSMutableDictionary);
          v84 = [v41 valueForKey:@"duration_ms"];
          [v83 setObject:v84 forKeyedSubscript:@"observedLatencyInMs"];

          v85 = [v77 incidentUUID];

          if (v85)
          {
            v86 = [v77 incidentUUID];
            v87 = [v86 UUIDString];
            [v83 setObject:v87 forKeyedSubscript:@"UUID"];
          }

          [v83 setObject:v64 forKeyedSubscript:@"reason"];
          v88 = [NSNumber numberWithInteger:v75];
          [v83 setObject:v88 forKeyedSubscript:@"bugtype"];

          v89 = [v41 valueForKey:@"app_version"];
          [v83 setObject:v89 forKeyedSubscript:@"appVersion"];

          v90 = [v271 name];
          [v83 setObject:v90 forKeyedSubscript:@"appName"];

          v91 = [v271 bundleIdentifier];

          if (v91)
          {
            v92 = [v271 bundleIdentifier];
            [v83 setObject:v92 forKeyedSubscript:@"bundleID"];
          }

          else
          {
            v92 = sub_100001684();
            if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
            {
              *v319 = 0;
              _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "bundleIdentifier field was nil in SATask object", v319, 2u);
            }
          }

          v110 = [v289 objectForKeyedSubscript:@"is_first_party"];
          if (v110)
          {
            v111 = [v289 objectForKeyedSubscript:@"is_first_party"];
            v112 = [v111 BOOLValue];
          }

          else
          {
            v112 = 1;
          }

          sub_100011728(v112, 0, 0, v279, v83);
        }
      }

      else if (a4)
      {
        sub_10000DA84(0, 9uLL, v265, v264);
      }

      _Block_object_dispose(buf, 8);
LABEL_112:
      v113 = 0;
      goto LABEL_113;
    }

    v59 = sub_100001684();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Sample store contains no samples for the tailspin interval, ignoring!", buf, 2u);
    }

    if (a4)
    {
      sub_10000DA84(0, 6uLL, v10, v264);
    }

LABEL_139:
    v113 = 0;
    goto LABEL_140;
  }

  if ([v275 containsString:@"Fence-hang"])
  {
    v44 = sub_100001684();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "Analyzing a Fence-hang, going to find process slowest at fence handling", buf, 2u);
    }

    v45 = [v287 objectForKeyedSubscript:@"FenceInfoUpdated"];
    v46 = v45;
    if (v45)
    {
      if ([v45 BOOLValue])
      {
        v47 = sub_100001684();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = [v286 reason];
          *buf = 138412546;
          *&buf[4] = v278;
          *&buf[12] = 2112;
          *&buf[14] = v48;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Found slowest fence client: %@ reason: %@", buf, 0x16u);
        }

        if (v262 == -1)
        {
          v49 = sub_100001684();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            sub_10003EB78();
          }
        }

        goto LABEL_40;
      }

      v61 = sub_100001684();
      v271 = v46;
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Unable to find slowest fence client from ktrace signposts in tailspin", buf, 2u);
      }
    }

    else
    {
      v61 = sub_100001684();
      v271 = 0;
      if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
      {
        sub_10003EDD8();
      }
    }

    if (v17 == 0x7FFFFFFFFFFFFFFFLL || v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v94 = sub_100001684();
      if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "Unable to find slowest fence client: no ktrace data during time period", buf, 2u);
      }
    }

    else
    {
      v94 = sub_100001684();
      if (os_log_type_enabled(v94, OS_LOG_TYPE_FAULT))
      {
        sub_10003EE14();
      }
    }

    if (a4)
    {
      sub_10000DA84(0, 5uLL, v265, v264);
    }

    goto LABEL_112;
  }

LABEL_40:
  if (v17 == 0x7FFFFFFFFFFFFFFFLL || v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a4)
    {
      sub_10000DA84(0, 6uLL, v10, v264);
    }

    v60 = sub_100001684();
    v271 = v60;
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Sample store contains no samples for the hang interval, ignoring!", buf, 2u);
    }

    goto LABEL_112;
  }

  if ([v275 containsString:@"Fence-hang"])
  {
    sub_1000208CC(v259, @"hangtracer.process_path", v278);
    v50 = [v270 objectForKeyedSubscript:kCRProblemReportBundleIDKey];
    sub_1000208CC(v259, @"hangtracer.bundle_id", v50);

    v51 = [NSString stringWithFormat:@"%f", *&v14];
    sub_1000208CC(v259, @"hangtracer.duration", v51);
  }

  if (v260)
  {
    v52 = +[HTPrefs sharedPrefs];
    v53 = v14 < [v52 runloopLongHangDurationThresholdMSec];

    if (v53)
    {
      v54 = +[HTPrefs sharedPrefs];
      v55 = v14 < [v54 runloopHangDurationThresholdMSec];

      if (v55)
      {
        v56 = sub_100001684();
        v57 = 0.25;
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          v58 = [v279 lastPathComponent];
          *buf = 138413058;
          *&buf[4] = v58;
          *&buf[12] = 2048;
          *&buf[14] = v14;
          *&buf[22] = 2048;
          *&buf[24] = v264;
          LOWORD(v327) = 2048;
          *(&v327 + 2) = 0x3FD0000000000000;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Post-Processing %@: hangDuration=%fms -> categorized as Micro Hang and bug_type=%lu and reportThreshold=%f", buf, 0x2Au);
        }
      }

      else
      {
        v116 = +[HTPrefs sharedPrefs];
        v117 = [v116 runloopHangDurationThresholdMSec];

        v56 = sub_100001684();
        v57 = v117 / 1000.0;
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          v118 = [v279 lastPathComponent];
          *buf = 138413058;
          *&buf[4] = v118;
          *&buf[12] = 2048;
          *&buf[14] = v14;
          *&buf[22] = 2048;
          *&buf[24] = v264;
          LOWORD(v327) = 2048;
          *(&v327 + 2) = v57;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Post-Processing %@: hangDuration=%fms -> categorized as Short Hang and bug_type=%lu and reportThreshold=%f", buf, 0x2Au);
        }
      }
    }

    else
    {
      v107 = +[HTPrefs sharedPrefs];
      v108 = [v107 runloopLongHangDurationThresholdMSec];

      v56 = sub_100001684();
      v57 = v108 / 1000.0;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v109 = [v279 lastPathComponent];
        *buf = 138413058;
        *&buf[4] = v109;
        *&buf[12] = 2048;
        *&buf[14] = v14;
        *&buf[22] = 2048;
        *&buf[24] = v264;
        LOWORD(v327) = 2048;
        *(&v327 + 2) = v57;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Post-Processing %@: hangDuration=%fms -> categorized as Long Hang and bug_type=%lu and reportThreshold=%f", buf, 0x2Au);
      }
    }

    goto LABEL_121;
  }

  if (DiagnosticLogSubmissionEnabled())
  {
    v93 = AppAnalyticsEnabled();
  }

  else
  {
    v93 = 0;
  }

  if (((+[MXSourceUtilities anyClientsAvailable]| v93) & 1) == 0)
  {
    v95 = +[HTPrefs sharedPrefs];
    v96 = [v95 thirdPartyDevHangHUDEnabled];

    if ((v96 & 1) == 0)
    {
      v114 = sub_100001684();
      if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
      {
        v115 = [v279 lastPathComponent];
        *buf = 138412290;
        *&buf[4] = v115;
        _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "Post-Processing %@: Hang in Third Party App, but Sharing with App Developers is not enabled -> will not generate log and will delete tailspin", buf, 0xCu);
      }

      if ((a4 & 1) == 0)
      {
        goto LABEL_139;
      }

      v103 = 7;
LABEL_118:
      sub_10000DA84(0, v103, v265, v264);
      goto LABEL_139;
    }
  }

  if ([v275 containsString:@"Fence-hang"])
  {
    v97 = +[HTPrefs sharedPrefs];
    v98 = v14 < [v97 runloopHangThirdPartyDurationThresholdMSec];

    if (v98)
    {
      v99 = sub_100001684();
      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
      {
        v100 = [v279 lastPathComponent];
        v101 = +[HTPrefs sharedPrefs];
        v102 = [v101 runloopHangThirdPartyDurationThresholdMSec];
        *buf = 138412802;
        *&buf[4] = v100;
        *&buf[12] = 2048;
        *&buf[14] = v14;
        *&buf[22] = 2048;
        *&buf[24] = v102;
        _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "Post-Processing %@: Hang in Third Party App, but hang duration blamed on app (%f ms) is below the 3rd party hang log threshold (%llu ms) -> will not generate log and will delete tailspin", buf, 0x20u);
      }

      if (!a4)
      {
        goto LABEL_139;
      }

      v103 = 8;
      goto LABEL_118;
    }
  }

  v104 = +[HTPrefs sharedPrefs];
  v105 = [v104 runloopHangThirdPartyDurationThresholdMSec];

  v56 = sub_100001684();
  v57 = v105 / 1000.0;
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
  {
    v106 = [v279 lastPathComponent];
    *buf = 138413058;
    *&buf[4] = v106;
    *&buf[12] = 2048;
    *&buf[14] = v14;
    *&buf[22] = 2048;
    *&buf[24] = v264;
    LOWORD(v327) = 2048;
    *(&v327 + 2) = v57;
    _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Post-Processing %@: hangDuration=%fms -> categorized as Third Party Hang and bug_type=%lu and reportThreshold=%f", buf, 0x2Au);
  }

LABEL_121:

  [v286 setTargetProcessId:v262];
  [v286 setSanitizePaths:1];
  [v286 setReportTimeThreshold:v57];
  v119 = sub_10000B024(v265);
  [v286 setEvent:v119];

  v120 = [SATimeRange timeRangeStart:v283 end:v282];
  [v286 setEventTimeRange:v120];

  v298 = 0u;
  v299 = 0u;
  v296 = 0u;
  v297 = 0u;
  v121 = [v286 tasksByPid];
  v122 = [NSNumber numberWithInt:v262];
  v123 = [v121 objectForKeyedSubscript:v122];

  v124 = [v123 countByEnumeratingWithState:&v296 objects:v321 count:16];
  if (!v124)
  {

LABEL_135:
    v138 = sub_100001684();
    if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
    {
      sub_10003ED9C();
    }

    if (a4)
    {
      sub_10000DA84(0, 0xCuLL, v265, v264);
    }

    goto LABEL_139;
  }

  v125 = 0;
  v126 = *v297;
  do
  {
    for (i = 0; i != v124; i = i + 1)
    {
      if (*v297 != v126)
      {
        objc_enumerationMutation(v123);
      }

      v128 = *(*(&v296 + 1) + 8 * i);
      v129 = [v128 mainThread];

      if (v129)
      {
        v130 = [v128 mainThread];

        v125 = v130;
      }
    }

    v124 = [v123 countByEnumeratingWithState:&v296 objects:v321 count:16];
  }

  while (v124);

  if (!v125)
  {
    goto LABEL_135;
  }

  v131 = [v125 lastThreadStateOnOrBeforeTime:v282 sampleIndex:0x7FFFFFFFFFFFFFFFLL];
  v132 = [v131 cpuTimeNs];
  v133 = [v125 firstThreadStateOnOrAfterTime:v283 sampleIndex:0x7FFFFFFFFFFFFFFFLL];
  v134 = [v133 cpuTimeNs];

  v135 = v14;
  if (((v132 - v134) / (v135 * 1000000.0)) >= 0.5)
  {
    v136 = 0;
    v137 = 1;
  }

  else
  {
    v136 = objc_alloc_init(HRMakeRunnableData);
    if ([(HRMakeRunnableData *)v136 findBlockingThreadForTailspin:v279 sampleStore:v286 mainThread:v125 hangStartTime:v288 hangEndTime:v284 hangDuration:v14]!= 5)
    {
      v258 = [(HRMakeRunnableData *)v136 findBlockingThreadFromSampleStore:v286 mainThread:v125 hangStartTime:v288 hangEndTime:v284];
      goto LABEL_146;
    }

    v137 = 5;
  }

  v258 = v137;
LABEL_146:
  v140 = sub_100001684();
  v271 = v136;
  if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
  {
    v141 = sub_10000471C(v258);
    if (v258 == 5)
    {
      v142 = [(HRMakeRunnableData *)v136 blockingThreadInfo];
    }

    else
    {
      v142 = &stru_100085FF8;
    }

    *buf = 138412546;
    *&buf[4] = v141;
    *&buf[12] = 2112;
    *&buf[14] = v142;
    _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_DEFAULT, "Blocking Thread Search Status: %@ %@", buf, 0x16u);
    if (v258 == 5)
    {
    }
  }

  v294 = 0u;
  v295 = 0u;
  v292 = 0u;
  v293 = 0u;
  v143 = [v286 hidEvents];
  v144 = [v143 countByEnumeratingWithState:&v292 objects:v320 count:16];
  if (!v144)
  {

    goto LABEL_167;
  }

  v145 = 0;
  v146 = *v293;
  do
  {
    for (j = 0; j != v144; j = j + 1)
    {
      if (*v293 != v146)
      {
        objc_enumerationMutation(v143);
      }

      v148 = *(*(&v292 + 1) + 8 * j);
      v149 = [v148 hidEventTimestamp];
      if ([v149 machAbsTime] <= v288)
      {
        v150 = [v148 hidEventTimestamp];
        v151 = [v150 machAbsTime] > v145;

        if (!v151)
        {
          continue;
        }

        v149 = [v148 hidEventTimestamp];
        v145 = [v149 machAbsTime];
      }
    }

    v144 = [v143 countByEnumeratingWithState:&v292 objects:v320 count:16];
  }

  while (v144);

  if (v145)
  {
    [v286 setTargetHIDEventMachAbs:v145];
  }

LABEL_167:
  v152 = [[SASamplePrinter alloc] initWithSampleStore:v286];
  [v152 filterToMachAbsTimeRangeStart:v288 end:v284];
  v153 = [v152 options];
  [v153 setPrintHeavyStacks:1];

  v154 = [v152 options];
  [v154 setPrintSpinSignatureStack:1];

  v155 = [NSUUID alloc];
  v156 = [v270 objectForKeyedSubscript:kOSAIPSHeaderIncidentIDKey];
  v157 = [v155 initWithUUIDString:v156];
  [v152 setIncidentUUID:v157];

  v158 = [v152 options];
  [v158 setForceOneBasedTimeIndexes:1];

  if (!(v260 & 1 | ((v272 & 1) == 0)))
  {
    v159 = [v152 options];
    [v159 setDisplayTrialInformation:0];
  }

  v273 = objc_alloc_init(NSMutableDictionary);
  v160 = [NSString stringWithFormat:@"%0.0f", *&v14];
  [v273 setObject:v160 forKey:@"duration_ms"];

  v161 = +[HTPrefs sharedPrefs];
  [v161 runloopHangPercentHeavyLogs];
  v163 = v162;
  v164 = +[HTPrefs sharedPrefs];
  v166 = v14 >= [v164 runloopHangTimeoutDurationMSec] || v265 == 2;

  if (v166)
  {
    v167 = sub_100001684();
    if (os_log_type_enabled(v167, OS_LOG_TYPE_DEBUG))
    {
      v168 = +[HTPrefs sharedPrefs];
      v169 = [v168 runloopHangTimeoutDurationMSec];
      v170 = sub_10000B024(v265);
      *buf = 134218498;
      *&buf[4] = v14;
      *&buf[12] = 2048;
      *&buf[14] = v169;
      *&buf[22] = 2112;
      *&buf[24] = v170;
      _os_log_debug_impl(&_mh_execute_header, v167, OS_LOG_TYPE_DEBUG, "Should capture heavy log due to hang duration of %.4f (pref is %llu), type %@", buf, 0x20u);
    }

    goto LABEL_181;
  }

  if (v265 == 10)
  {
    v167 = sub_100001684();
    if (os_log_type_enabled(v167, OS_LOG_TYPE_DEBUG))
    {
      sub_10003EBB4();
    }

    goto LABEL_181;
  }

  if (v163 >= 100.0)
  {
    v171 = @"heavy";
  }

  else
  {
    if (v163 <= 0.0)
    {
      goto LABEL_210;
    }

    v192 = arc4random_uniform(0x7FFFFFFFu);
    v167 = sub_100001684();
    v193 = os_log_type_enabled(v167, OS_LOG_TYPE_INFO);
    if (v192 * 100.0 / 2147483650.0 <= v163)
    {
      if (v193)
      {
        *buf = 134218240;
        *&buf[4] = v192 * 100.0 / 2147483650.0;
        *&buf[12] = 2048;
        *&buf[14] = v163;
        _os_log_impl(&_mh_execute_header, v167, OS_LOG_TYPE_INFO, "Should capture heavy log due to roll of %.4f (pref is %.4f)", buf, 0x16u);
      }

LABEL_181:
      v171 = @"heavy";
LABEL_182:
    }

    else
    {
      if (v193)
      {
        *buf = 134218240;
        *&buf[4] = v192 * 100.0 / 2147483650.0;
        *&buf[12] = 2048;
        *&buf[14] = v163;
        _os_log_impl(&_mh_execute_header, v167, OS_LOG_TYPE_INFO, "Should capture lite log due to roll of %.4f (pref is %.4f)", buf, 0x16u);
      }

LABEL_210:
      if (v258 == 5)
      {
        v194 = [NSNumber numberWithInt:v262];
        v161 = [NSMutableSet setWithObject:v194];

        v195 = [v271 topBlockingPid];
        [v161 addObject:v195];

        v196 = [v152 options];
        [v196 setPidsToPrint:v161];

        +[NSMutableArray array];
        v167 = [objc_claimAutoreleasedReturnValue() init];
        v197 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v125 threadId]);
        [v167 addObject:v197];

        v198 = [v271 allBlockingThreadsArray];
        [v167 addObjectsFromArray:v198];

        v199 = [NSSet setWithArray:v167];
        v200 = [v152 options];
        [v200 setTidsToPrint:v199];

        v171 = @"light";
        goto LABEL_182;
      }

      v161 = [v152 options];
      [v161 setPrintTargetThreadOnly:1];
      v171 = @"light";
    }
  }

  [v273 setObject:v171 forKey:@"bug_subtype"];
  if (v269)
  {
    [v273 setObject:v269 forKey:@"ht_enablement_prefix"];
  }

  v172 = objc_alloc_init(NSMutableData);
  [v152 printToMutableData:v172];
  [MXSampleAnalysisParser sendDiagnosticReport:v152 forType:2 forSourceID:3];
  v261 = v172;
  v173 = [v286 startTime];
  [v173 wallTime];
  v175 = v174;

  v176 = [v286 targetProcess];
  v177 = [v176 bundleIdentifier];
  v178 = v177;
  if (v177)
  {
    v263 = v177;
  }

  else
  {
    v263 = sub_10000AA30(v278);
  }

  if (v269)
  {
    [v280 setObject:v269 forKeyedSubscript:@"htEnablementPrefix"];
  }

  v179 = [v287 objectForKeyedSubscript:@"HangUUID"];
  v180 = v179 == 0;

  if (v180)
  {
    v181 = sub_100001684();
    if (os_log_type_enabled(v181, OS_LOG_TYPE_ERROR))
    {
      sub_10003EBF0();
    }

    [v280 setObject:&__kCFBooleanTrue forKeyedSubscript:@"HangUUIDMissing"];
  }

  v182 = +[HTPrefs sharedPrefs];
  v183 = [v182 shouldIncludeDisplayData];

  if (v183)
  {
    v184 = sub_100001684();
    if (os_log_type_enabled(v184, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v184, OS_LOG_TYPE_INFO, "Adding display info to spindump", buf, 2u);
    }

    v185 = [HTDisplayParser displayInfoForSpindump:v287 startAbsoluteTime:v288 endAbsoluteTime:v284];
    [v280 addEntriesFromDictionary:v185];
  }

  v186 = +[HTPrefs sharedPrefs];
  v187 = [v186 shouldIncludeNetworkState];

  if (v187)
  {
    v188 = [v287 objectForKeyedSubscript:@"NetworkState"];
    if (v188 && (+[NSNull null](NSNull, "null"), v189 = objc_claimAutoreleasedReturnValue(), v190 = [v188 isEqual:v189], v189, (v190 & 1) == 0))
    {
      v201 = sub_100001684();
      if (os_log_type_enabled(v201, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v201, OS_LOG_TYPE_INFO, "Adding network state to spindump", buf, 2u);
      }

      [v280 addEntriesFromDictionary:v188];
    }

    else
    {
      v191 = sub_100001684();
      if (os_log_type_enabled(v191, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v191, OS_LOG_TYPE_INFO, "No network state for spindump", buf, 2u);
      }
    }
  }

  v202 = +[HTPrefs sharedPrefs];
  v203 = [v202 shouldIncludeDiskInfo];

  if (v203)
  {
    existing = 0;
    v204 = +[NSMutableDictionary dictionary];
    v205 = IOServiceMatching("AppleAPFSVolume");
    if (v205)
    {
      IOServiceGetMatchingServices(kIOMainPortDefault, v205, &existing);
      for (k = IOIteratorNext(existing); k; k = IOIteratorNext(existing))
      {
        v332 = 0u;
        v331 = 0u;
        v330 = 0u;
        v329 = 0u;
        v328 = 0u;
        v327 = 0u;
        memset(buf, 0, sizeof(buf));
        Name = IORegistryEntryGetName(k, buf);
        if (Name)
        {
          v208 = sub_100001684();
          if (os_log_type_enabled(v208, OS_LOG_TYPE_DEFAULT))
          {
            *v319 = 67109376;
            *&v319[4] = Name;
            *&v319[8] = 1024;
            *&v319[10] = k;
            _os_log_impl(&_mh_execute_header, v208, OS_LOG_TYPE_DEFAULT, "Warn: 0x%08x: Could not get name for io_registry_entry_t 0x%x\n", v319, 0xEu);
          }

          strcpy(buf, "UNKNOWN");
        }

        properties = 0;
        v209 = IORegistryEntryCreateCFProperties(k, &properties, kCFAllocatorDefault, 0);
        if (v209)
        {
          v210 = sub_100001684();
          if (os_log_type_enabled(v210, OS_LOG_TYPE_ERROR))
          {
            *v319 = 67109378;
            *&v319[4] = v209;
            *&v319[8] = 2080;
            *&v319[10] = buf;
            _os_log_error_impl(&_mh_execute_header, v210, OS_LOG_TYPE_ERROR, "Error: 0x%08x: Could not get properties for io_registry_entry_t %s\n", v319, 0x12u);
          }
        }

        else
        {
          v211 = [(__CFDictionary *)properties objectForKey:@"BSD Name"];
          v212 = v211;
          snprintf(buf, 0x80uLL, "%s_%s", buf, [v211 UTF8String]);

          v324[0] = @"BSD Name";
          v213 = [(__CFDictionary *)properties objectForKey:@"BSD Name"];
          v325[0] = v213;
          v324[1] = @"FormattedBy";
          v214 = [(__CFDictionary *)properties objectForKey:@"FormattedBy"];
          v325[1] = v214;
          v210 = [NSDictionary dictionaryWithObjects:v325 forKeys:v324 count:2];

          v215 = [NSString stringWithUTF8String:buf];
          [v204 objectForKeyedSubscript:v215];
          if (objc_claimAutoreleasedReturnValue())
          {
            __assert_rtn("APFSVolumeInfo", "hangreporter.m", 278, "!apfsVolumesInfo[@(registryEntryName)]");
          }

          v216 = [NSString stringWithUTF8String:buf];
          [v204 setObject:v210 forKeyedSubscript:v216];

          CFRelease(properties);
        }
      }

      IOObjectRelease(existing);
    }

    else
    {
      v217 = sub_100001684();
      if (os_log_type_enabled(v217, OS_LOG_TYPE_ERROR))
      {
        sub_10003EC2C();
      }
    }

    *v319 = @"AppleAPFSVolume";
    *buf = v204;
    v218 = [NSDictionary dictionaryWithObjects:buf forKeys:v319 count:1];
    v219 = sub_100001684();
    if (os_log_type_enabled(v219, OS_LOG_TYPE_DEBUG))
    {
      sub_10003ECAC();
    }

    [v280 addEntriesFromDictionary:v218];
  }

  v220 = +[HTPrefs sharedPrefs];
  v221 = [v220 shouldIncludeDiskInfo];

  if (v221)
  {
    v222 = sub_100018ED8();
    [v280 addEntriesFromDictionary:v222];

    v223 = sub_100018F00();
    [v280 addEntriesFromDictionary:v223];
  }

  v224 = sub_10000471C(v258);
  [v280 setObject:v224 forKeyedSubscript:@"blockingThreadStatus"];

  if (v258 == 5)
  {
    v225 = [v271 blockingThreadInfo];
    v226 = sub_100011E70(v225);
    [v280 setObject:v226 forKeyedSubscript:@"blockingThreadInfo"];
  }

  v227 = +[HTPrefs sharedPrefs];
  if (v14 < [v227 springBoardHangIORegGPUDumpTimeoutMSec])
  {
LABEL_248:
  }

  else
  {
    v228 = [v267 isEqualToString:@"SpringBoard"];

    if (v228)
    {
      v229 = sub_100001684();
      if (os_log_type_enabled(v229, OS_LOG_TYPE_INFO))
      {
        v230 = +[HTPrefs sharedPrefs];
        v231 = [v230 springBoardHangIORegGPUDumpTimeoutMSec];
        *buf = 138543874;
        *&buf[4] = v267;
        *&buf[12] = 2048;
        *&buf[14] = v14;
        *&buf[22] = 2048;
        *&buf[24] = v231;
        _os_log_impl(&_mh_execute_header, v229, OS_LOG_TYPE_INFO, "Process:%{public}@ hang duration %0.0fms is greater than %llums, fetching IOReg GPU AGX SchedulerState info", buf, 0x20u);
      }

      v227 = sub_100020F90(v279);
      if (v227)
      {
        v232 = sub_100001684();
        if (os_log_type_enabled(v232, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v232, OS_LOG_TYPE_INFO, "Adding IOReg GPU AGX SchedulerState info to spindump", buf, 2u);
        }

        [v280 addEntriesFromDictionary:v227];
      }

      goto LABEL_248;
    }
  }

  [v280 setObject:v281 forKeyedSubscript:@"UserAction"];
  [v280 setObject:v274 forKeyedSubscript:@"StateInfo"];
  v233 = sub_10001F8F8(v288, v284);
  v234 = v233;
  if (v233)
  {
    v235 = [v233 objectForKeyedSubscript:@"hangHistoryCount"];
    v236 = [v235 intValue] > 1;

    if (v236)
    {
      [v280 setObject:v234 forKeyedSubscript:@"hangHistoryData"];
    }
  }

  v237 = [NSJSONSerialization dataWithJSONObject:v280 options:1 error:0];
  v238 = v312[5];
  v312[5] = v237;

  v239 = [NSString stringWithFormat:@"%@-%@", v275, v267];
  [v273 addEntriesFromDictionary:v270];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = sub_100011518;
  *&v327 = sub_100011528;
  *(&v327 + 1) = 0;
  v240 = [NSString stringWithFormat:@"%lu", v264];
  v241 = v261;
  v242 = v279;
  v291 = v242;
  v243 = v239;
  v244 = OSAWriteLogForSubmission();

  if (v244)
  {
    v290 = v263;
    AnalyticsSendEventLazy();
    v245 = objc_alloc_init(NSMutableDictionary);
    v246 = [v287 objectForKeyedSubscript:@"DisplayedInHUD"];

    if (v246)
    {
      v247 = [v287 objectForKeyedSubscript:@"DisplayedInHUD"];
      [v245 setObject:v247 forKeyedSubscript:@"displayedInHUD"];
    }

    v248 = [v287 objectForKeyedSubscript:@"HangNotificationUUID"];

    if (v248)
    {
      v249 = [v287 objectForKeyedSubscript:@"HangNotificationUUID"];
      [v245 setObject:v249 forKeyedSubscript:@"hangUUID"];
    }

    if (v278)
    {
      [v245 setObject:v278 forKeyedSubscript:@"processPath"];
    }

    if (v264)
    {
      v250 = [NSNumber numberWithInteger:?];
      [v245 setObject:v250 forKeyedSubscript:@"htBugType"];
    }

    if (v275)
    {
      v251 = [NSNumber numberWithInteger:sub_10000B13C(v275)];
      [v245 setObject:v251 forKeyedSubscript:@"hangEventType"];
    }

    if (v242 || *(*&buf[8] + 40))
    {
      v252 = objc_alloc_init(NSMutableArray);
      v253 = v252;
      if (v242)
      {
        [v252 addObject:v242];
      }

      if (*(*&buf[8] + 40))
      {
        [v253 addObject:?];
      }

      [v245 setObject:v253 forKeyedSubscript:@"logFilePaths"];
    }

    v254 = [NSNumber numberWithDouble:v175];
    [v245 setObject:v254 forKeyedSubscript:@"startWallTime"];

    v255 = [NSNumber numberWithDouble:v14];
    [v245 setObject:v255 forKeyedSubscript:@"durationMS"];

    HTReportHangLogsProcessed();
  }

  else
  {
    v256 = sub_100001684();
    if (os_log_type_enabled(v256, OS_LOG_TYPE_ERROR))
    {
      v257 = [v242 lastPathComponent];
      sub_10003ED1C(v257, v243, v319, v256);
    }

    if (a4)
    {
      sub_10000DA84(0, 9uLL, v265, v264);
    }
  }

  v113 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);
  v286 = 0;
LABEL_113:

LABEL_140:
  _Block_object_dispose(&v311, 8);

  return v113;
}

uint64_t sub_1000046E4()
{
  if (qword_1000903D8 != -1)
  {
    sub_10003D92C();
  }

  return qword_1000903E0;
}

const __CFString *sub_10000471C(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"Search Status Unknown";
  }

  else
  {
    return off_1000856D8[a1 - 1];
  }
}

id sub_10000739C()
{
  if (qword_100090388 != -1)
  {
    sub_10003CE94();
  }

  v0 = objc_retainBlock(qword_100090390);

  return v0;
}

void sub_1000073E4(id a1)
{
  if (!qword_100090390)
  {
    qword_100090390 = &stru_100084A88;
  }
}

int64_t sub_100007404(id a1, id a2, id a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v6 = v5;
    v7 = [v4 objectForKeyedSubscript:@"timestamp"];
    v8 = [v6 objectForKeyedSubscript:@"timestamp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v9 = [v7 unsignedLongLongValue];
      v10 = [v8 unsignedLongLongValue];
      if (v9 < v10)
      {
        v11 = -1;
      }

      else
      {
        v11 = v9 > v10;
      }
    }

    else
    {
      v12 = sub_100001684();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10003CF54();
      }

      v11 = 0;
    }
  }

  else
  {
    v6 = sub_100001684();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10003CEA8();
    }

    v11 = 0;
  }

  return v11;
}

uint64_t sub_100007588(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    if ([v1 count])
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v2 = v1;
      v3 = [v2 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v3)
      {
        v4 = v3;
        v5 = 0;
        v6 = *v20;
        v7 = &stru_10008E000;
        v8 = &selRef_setValue_forKey_;
        while (2)
        {
          v9 = 0;
          v17 = v8[62];
          name = v7[210].name;
          v10 = v5;
          do
          {
            if (*v20 != v6)
            {
              objc_enumerationMutation(v2);
            }

            v11 = *(*(&v19 + 1) + 8 * v9);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v12 = sub_100001684();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
              {
                sub_10003D000();
              }

              goto LABEL_32;
            }

            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              goto LABEL_33;
            }

            v12 = v11;
            v13 = [v12 objectForKey:@"cpuRoleEnum"];

            if (!v13)
            {
              goto LABEL_32;
            }

            v5 = [v12 objectForKey:@"timestamp"];
            if (!v5)
            {
              goto LABEL_31;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
            {
              goto LABEL_31;
            }

            v5 = v5;
            if (v10)
            {
              v14 = [v10 unsignedLongLongValue];
              if (v14 >= [v5 unsignedLongLongValue])
              {

LABEL_31:
LABEL_32:

LABEL_33:
                v15 = 0;
                goto LABEL_34;
              }
            }

            v9 = v9 + 1;
            v10 = v5;
          }

          while (v4 != v9);
          v4 = [v2 countByEnumeratingWithState:&v19 objects:v23 count:16];
          v7 = &stru_10008E000;
          v8 = &selRef_setValue_forKey_;
          if (v4)
          {
            continue;
          }

          break;
        }

        v15 = 1;
        v10 = v5;
LABEL_34:
      }

      else
      {
        v15 = 1;
      }
    }

    else
    {
      v2 = sub_100001684();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
      {
        sub_10003D08C(v2);
      }

      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id sub_100007894(void *a1, unint64_t a2, unint64_t a3)
{
  v5 = a1;
  v6 = v5;
  if (a3 >= a2 && sub_100007588(v5))
  {
    v88 = a3 - a2;
    v7 = [v6 mutableCopy];
    v110 = @"timestamp";
    v8 = [NSNumber numberWithUnsignedLongLong:a2];
    v111 = v8;
    v9 = &MGGetBoolAnswer_ptr;
    v10 = [NSDictionary dictionaryWithObjects:&v111 forKeys:&v110 count:1];
    v11 = [(__CFString *)v7 count];
    sub_10000739C();
    v12 = v91 = a2;
    v13 = [(__CFString *)v7 indexOfObject:v10 inSortedRange:0 options:v11 usingComparator:1024, v12];

    if (!v13)
    {
      v108[1] = @"timestamp";
      v109[0] = &off_10008AA08;
      v108[0] = @"cpuRoleEnum";
      v14 = [NSNumber numberWithUnsignedLongLong:v91];
      v109[1] = v14;
      v15 = [NSDictionary dictionaryWithObjects:v109 forKeys:v108 count:2];

      [(__CFString *)v7 insertObject:v15 atIndex:0];
      v13 = 1;
    }

    v16 = [(__CFString *)v7 objectAtIndexedSubscript:v13 - 1];
    v17 = [v16 objectForKeyedSubscript:@"cpuRoleEnum"];
    v87 = [v17 unsignedCharValue];

    v90 = v16;
    v18 = [v16 objectForKeyedSubscript:@"timestamp"];
    v19 = [v18 unsignedLongLongValue];

    v20 = sub_10000B590(v91 - v19);
    v89 = [NSNumber numberWithDouble:sub_10000B48C(3u, v20)];
    v106 = @"timestamp";
    v82 = a3;
    v21 = [NSNumber numberWithUnsignedLongLong:a3];
    v107 = v21;
    v22 = [NSDictionary dictionaryWithObjects:&v107 forKeys:&v106 count:1];
    v23 = [(__CFString *)v7 count];
    v24 = sub_10000739C();
    v25 = [(__CFString *)v7 indexOfObject:v22 inSortedRange:0 options:v23 usingComparator:1024, v24];

    if (v25)
    {
      v86 = v6;
      v85 = [(__CFString *)v7 objectAtIndexedSubscript:v25 - 1];
      v26 = [v85 objectForKeyedSubscript:@"cpuRoleEnum"];
      v84 = [v26 unsignedCharValue];

      v27 = +[NSMutableDictionary dictionary];
      v28 = v27;
      v29 = &MGGetBoolAnswer_ptr;
      if (v13 - 1 <= (v25 - 1))
      {
        v39 = 0;
        v77 = &v25[-v13];
        v40 = &v25[-v13 + 1];
        v92 = v27;
        v81 = v13;
        do
        {
          v41 = [(__CFString *)v7 objectAtIndexedSubscript:&v39[v13 - 1]];
          if (v41 && (v42 = v9[298], objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v43 = [v41 objectForKeyedSubscript:@"cpuRoleEnum"];
            if (v43 && (v44 = v29[265], objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v45 = [v41 objectForKeyedSubscript:@"timestamp"];
              if (v45 && (v46 = v29[265], objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                if (v39)
                {
                  v47 = [(__CFString *)v7 objectAtIndexedSubscript:&v39[v13 - 2]];
                  v78 = [v47 objectForKeyedSubscript:@"cpuRoleEnum"];

                  v48 = [v78 stringValue];
                  v49 = [v92 objectForKey:v48];
                  v50 = [v49 objectForKey:@"intervalsInCPURole"];
                  v83 = [v50 lastObject];

                  v29 = &MGGetBoolAnswer_ptr;
                  v80 = v45;
                }

                else
                {
                  v83 = [v29[265] numberWithUnsignedInt:0];
                  v80 = [v29[265] numberWithUnsignedLong:v91];
                }

                if (v77 == v39)
                {
                  v58 = [v29[265] numberWithUnsignedLongLong:v82];
                }

                else
                {
                  v59 = [(__CFString *)v7 objectAtIndexedSubscript:&v39[v13]];
                  v58 = [v59 objectForKeyedSubscript:@"timestamp"];
                }

                v76 = v58;
                v79 = [v29[265] numberWithUnsignedInt:{sub_10000B548(objc_msgSend(v58, "unsignedLongLongValue") - -[NSObject unsignedLongLongValue](v80, "unsignedLongLongValue"))}];
                v60 = [v29[265] numberWithUnsignedInt:{-[NSObject unsignedIntValue](v83, "unsignedIntValue") + objc_msgSend(v79, "unsignedIntValue")}];
                v61 = [v43 stringValue];
                v62 = [v92 objectForKey:v61];

                v74 = v62;
                v75 = v60;
                if (v62)
                {
                  v63 = [v62 objectForKeyedSubscript:@"intervalsInCPURole"];
                  [v63 addObject:v83];
                  v73 = v63;
                  [v63 addObject:v60];
                  v64 = [v62 objectForKeyedSubscript:@"timeInCPURole"];
                  v65 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v79 unsignedIntValue] + objc_msgSend(v64, "unsignedIntValue"));
                  v66 = v62;
                  v67 = v64;
                  [v66 setObject:v65 forKeyedSubscript:@"timeInCPURole"];
                }

                else
                {
                  v68 = +[NSMutableArray array];
                  [v68 addObject:v83];
                  [v68 addObject:v60];
                  v98[0] = @"cpuRoleName";
                  [v43 unsignedCharValue];
                  v69 = NSStringFromRBSRole();
                  v99[0] = v69;
                  v99[1] = v43;
                  v98[1] = @"cpuRoleEnum";
                  v98[2] = @"intervalsInCPURole";
                  v73 = v68;
                  v99[2] = v68;
                  v99[3] = &off_10008AA98;
                  v98[3] = @"percentInCPURole";
                  v98[4] = @"timeInCPURole";
                  v99[4] = v79;
                  v70 = [NSDictionary dictionaryWithObjects:v99 forKeys:v98 count:5];
                  v67 = [NSMutableDictionary dictionaryWithDictionary:v70];

                  v65 = [v43 stringValue];
                  [v92 setValue:v67 forKey:v65];
                }

                v9 = &MGGetBoolAnswer_ptr;
                v29 = &MGGetBoolAnswer_ptr;
                v57 = v83;
              }

              else
              {
                v55 = v40;
                v56 = sub_100001684();
                if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                {
                  v71 = objc_opt_class();
                  *buf = 138412802;
                  v101 = @"timestamp";
                  v102 = 2112;
                  v103 = v7;
                  v104 = 2112;
                  v105 = v71;
                  v72 = v71;
                  v57 = v56;
                  _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "Failed to parse State info dictionary object of key '%@' from sorted array '%@', object is type of class '%@'", buf, 0x20u);

                  v29 = &MGGetBoolAnswer_ptr;
                }

                else
                {
                  v57 = v56;
                }

                v40 = v55;
                v13 = v81;
              }
            }

            else
            {
              v45 = sub_100001684();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
              {
                v53 = objc_opt_class();
                *buf = 138412802;
                v101 = @"cpuRoleEnum";
                v102 = 2112;
                v103 = v7;
                v104 = 2112;
                v105 = v53;
                v54 = v53;
                _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "Failed to parse State info dictionary object of key '%@' from sorted array '%@', object is type of class '%@'", buf, 0x20u);

                v29 = &MGGetBoolAnswer_ptr;
              }
            }

            v28 = v92;
          }

          else
          {
            v43 = sub_100001684();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              v51 = objc_opt_class();
              *buf = 138412546;
              v101 = v7;
              v102 = 2112;
              v103 = v51;
              v52 = v51;
              _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Failed to parse State info dictionary object from sorted array '%@', object is type of class '%@'", buf, 0x16u);

              v29 = &MGGetBoolAnswer_ptr;
            }
          }

          ++v39;
        }

        while (v40 != v39);
      }

      +[NSMutableArray array];
      v30 = v9;
      v93[0] = _NSConcreteStackBlock;
      v93[1] = 3221225472;
      v93[2] = sub_100008360;
      v94 = v93[3] = &unk_100084AB0;
      v95 = sub_10000B548(v88);
      v31 = v94;
      [v28 enumerateKeysAndObjectsUsingBlock:v93];
      v96[0] = @"startCPURole";
      v32 = [v29[265] numberWithUnsignedChar:v87];
      v97[0] = v32;
      v96[1] = @"endCPURole";
      v33 = [v29[265] numberWithUnsignedChar:v84];
      v34 = v89;
      v97[1] = v33;
      v97[2] = v89;
      v96[2] = @"secondsSinceCPURoleTransitionBeforeHangStart";
      v96[3] = @"cpuRoleBreakdown";
      v97[3] = v31;
      v35 = [v30[298] dictionaryWithObjects:v97 forKeys:v96 count:4];

      v36 = v85;
      v6 = v86;
      v37 = v90;
    }

    else
    {
      v36 = sub_100001684();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
      {
        sub_10003D0D0();
      }

      v35 = 0;
      v34 = v89;
      v37 = v90;
    }
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

void sub_100008360(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v4 = [v8 objectForKeyedSubscript:@"timeInCPURole"];
  [v4 floatValue];
  v6 = v5 / *(a1 + 40);

  v7 = [NSNumber numberWithDouble:sub_10000B48C(3u, v6)];
  [v8 setObject:v7 forKeyedSubscript:@"percentInCPURole"];

  [*(a1 + 32) addObject:v8];
}

id sub_100008438(id a1)
{

  return a1;
}

id sub_100008468()
{
  if (qword_1000903A0 != -1)
  {
    sub_10003D154();
  }

  v1 = qword_100090398;

  return v1;
}

void sub_1000084AC(id a1)
{
  if (!qword_100090398)
  {
    qword_100090398 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.hangtracer"];

    _objc_release_x1();
  }
}

id sub_100009274(uint64_t a1)
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

void sub_100009ED0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id sub_100009EF0(id a1)
{

  return a1;
}

void sub_100009F30(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x2Au);
}

id sub_100009F50(void *a1, const __CFUUID *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = a4;
  if (a2)
  {
    v10 = CFUUIDCreateString(0, a2);
  }

  else
  {
    v10 = 0;
  }

  v65 = v8;
  if (!v8)
  {
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v63 = 0;
    v28 = 0;
    v29 = 0;
    v64 = 0;
    v11 = 1;
    goto LABEL_43;
  }

  v11 = 1;
  v12 = CFURLCreateWithFileSystemPath(0, v8, kCFURLPOSIXPathStyle, 1u);
  if (!v12)
  {
    goto LABEL_21;
  }

  v13 = v12;
  v14 = _CFBundleCreateWithExecutableURLIfLooksLikeBundle();
  if (!v14)
  {
    CFRelease(v13);
LABEL_21:
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v63 = 0;
    v28 = 0;
    v29 = 0;
    v64 = 0;
    goto LABEL_43;
  }

  v15 = v14;
  Identifier = CFBundleGetIdentifier(v14);
  cf = CFBundleGetValueForInfoDictionaryKey(v15, kCFBundleVersionKey);
  ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(v15, _kCFBundleShortVersionStringKey);
  v17 = CFBundleCopyBundleURL(v15);
  if (Identifier)
  {
    CFRetain(Identifier);
  }

  v64 = Identifier;
  if (cf)
  {
    CFRetain(cf);
  }

  if (ValueForInfoDictionaryKey)
  {
    CFRetain(ValueForInfoDictionaryKey);
  }

  CFRelease(v15);
  CFRelease(v13);
  if (v17)
  {
    v57 = v10;
    v18 = v17;
    v19 = [(__CFURL *)v18 pathExtension];
    v20 = [v19 isEqualToString:@"appex"];

    if (v20)
    {
      v71 = 0;
      v21 = [[LSApplicationExtensionRecord alloc] initWithURL:v18 error:&v71];
      v22 = v71;
      if (v21)
      {
        v23 = [v21 containingBundleRecord];
        v24 = v23;
        if (v23)
        {
          v25 = [v23 URL];
          v26 = v25;
          if (v25)
          {
            v26 = v25;

            v27 = v26;
          }

          else
          {
            v62 = v9;
            v30 = sub_100001684();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              sub_10003D5FC(v18, v30);
            }

            v27 = v18;
            v9 = v62;
          }
        }

        else
        {
          v26 = sub_100001684();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            sub_10003D674(v18, v26);
          }

          v27 = v18;
        }
      }

      else
      {
        v24 = sub_100001684();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_10003D6EC(v18, v22, v24);
        }

        v27 = v18;
      }
    }

    else
    {
      v22 = 0;
      v27 = v18;
    }

    v70 = v22;
    v11 = 1;
    v31 = [[LSApplicationRecord alloc] initWithURL:v27 allowPlaceholder:1 error:&v70];
    v32 = v70;

    v63 = v18;
    if (v31)
    {
      v33 = v27;
      v34 = [v31 iTunesMetadata];
      v61 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v34 storeItemIdentifier]);

      v35 = [v31 iTunesMetadata];
      v36 = [v35 distributorInfo];
      v60 = [v36 distributorID];

      v37 = [v31 iTunesMetadata];
      v59 = [v37 storeCohortWithError:0];

      v11 = [v31 developerType] == 1;
      v38 = [v31 entitlements];
      [v38 objectForKey:@"beta-reports-active" ofClass:objc_opt_class()];
      v40 = v39 = v9;

      v27 = v33;
      v41 = v40 == 0;
      v9 = v39;
      v42 = !v41;
      v58 = v42;
    }

    else
    {
      v58 = 0;
      v59 = 0;
      v60 = 0;
      v61 = 0;
    }

    v10 = v57;
  }

  else
  {
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v63 = 0;
    v11 = 1;
  }

  v29 = cf;
  v28 = ValueForInfoDictionaryKey;
LABEL_43:
  v43 = @"Unknown";
  v44 = v7;
  if (v7)
  {
    v43 = v7;
  }

  v72[0] = kCRProblemReportAppNameKey;
  v72[1] = kOSAIPSHeaderAppNameKey;
  v73[0] = v43;
  v73[1] = v43;
  v45 = &stru_100085FF8;
  v46 = v10;
  if (v10)
  {
    v47 = v10;
  }

  else
  {
    v47 = &stru_100085FF8;
  }

  v72[2] = @"slice_uuid";
  v72[3] = @"build_version";
  cfa = v29;
  v69 = v28;
  if (v29)
  {
    v48 = v29;
  }

  else
  {
    v48 = &stru_100085FF8;
  }

  v73[2] = v47;
  v73[3] = v48;
  if (v28)
  {
    v45 = v28;
  }

  v73[4] = v45;
  v72[4] = @"app_version";
  v72[5] = @"is_first_party";
  v49 = [NSNumber numberWithBool:v11, v57];
  v73[5] = v49;
  v72[6] = @"share_with_app_devs";
  v50 = [NSNumber numberWithBool:AppAnalyticsEnabled()];
  v73[6] = v50;
  v72[7] = kOSAIPSHeaderIncidentIDKey;
  v51 = v9;
  v52 = [v9 objectForKeyedSubscript:@"HangUUID"];
  v53 = v52;
  if (!v52)
  {
    v7 = +[NSUUID UUID];
    v53 = [(__CFString *)v7 UUIDString];
  }

  v73[7] = v53;
  v54 = [NSDictionary dictionaryWithObjects:v73 forKeys:v72 count:8];
  v55 = [v54 mutableCopy];

  if (!v52)
  {
  }

  if (v64)
  {
    [v55 setObject:v64 forKeyedSubscript:kCRProblemReportBundleIDKey];
  }

  if (v58)
  {
    [v55 setObject:&__kCFBooleanTrue forKeyedSubscript:@"is_beta"];
    if (v59)
    {
      [v55 setObject:v59 forKeyedSubscript:@"app_cohort"];
    }
  }

  if (v61)
  {
    [v55 setObject:v61 forKeyedSubscript:@"adam_id"];
  }

  if (v60)
  {
    [v55 setObject:v60 forKeyedSubscript:@"distributor_id"];
  }

  if (v46)
  {
    CFRelease(v46);
  }

  if (v64)
  {
    CFRelease(v64);
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  if (v69)
  {
    CFRelease(v69);
  }

  return v55;
}

id sub_10000A62C()
{
  v0 = __chkstk_darwin();
  bzero(buffer, 0x1000uLL);
  if (proc_pidpath(v0, buffer, 0x1000u))
  {
    v1 = [NSString stringWithUTF8String:buffer];
    if (!v1)
    {
      v1 = [NSString stringWithCString:buffer encoding:1];
      v2 = sub_100001684();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
      {
        sub_10003D774(v1, v2);
      }
    }
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t sub_10000A740(const char *a1, void *a2)
{
  v4 = proc_listpids(1u, 0, 0, 0);
  if (v4 <= 0)
  {
    v13 = __error();
    v14 = [NSString stringWithFormat:@"Unable to list all pids with error: %s", strerror(*v13)];
    v15 = sub_100001684();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10003D7EC();
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
    v21 = sub_100001684();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10003D7EC();
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

    v24 = sub_100001684();
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

__CFString *sub_10000AA30(void *a1)
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
      v6 = &stru_100085FF8;
    }

    CFRelease(v3);
  }

  else
  {
    v6 = &stru_100085FF8;
  }

  return v6;
}

id sub_10000AAE4(uint64_t a1, uint64_t a2)
{
  v3 = [NSDictionary dictionaryWithObject:a2 forKey:NSLocalizedDescriptionKey];
  v4 = [NSError errorWithDomain:@"SentryTailspinError" code:a1 userInfo:v3];

  return v4;
}

uint64_t sub_10000AB70(void *a1, int a2)
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
    v6 = sub_100001684();
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
      v12 = sub_100001684();
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
      v12 = sub_100001684();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10003D868(v3, v9, v12);
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

id sub_10000ADAC()
{
  if (qword_1000903B0 != -1)
  {
    sub_10003D8F0();
  }

  v1 = qword_1000903A8;

  return v1;
}

void sub_10000ADF0(id a1)
{
  qword_1000903A8 = os_log_create("com.apple.hangtracer", "signpost_hang");

  _objc_release_x1();
}

id sub_10000AE34()
{
  if (qword_1000903C0 != -1)
  {
    sub_10003D904();
  }

  v1 = qword_1000903B8;

  return v1;
}

void sub_10000AE78(id a1)
{
  qword_1000903B8 = os_log_create("com.apple.hangtracer", "hangreporter_tailspin_conversion");

  _objc_release_x1();
}

void sub_10000AEBC(void *a1, void *a2, os_signpost_id_t a3, uint64_t a4, void *a5)
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

__CFString *sub_10000B024(unint64_t a1)
{
  if (a1 <= 0xA)
  {
    a1 = *off_100084B50[a1];
  }

  return a1;
}

const __CFString *sub_10000B078(unint64_t a1)
{
  if (a1 > 0xB)
  {
    return @"failed due to unknown reason";
  }

  else
  {
    return *(&off_100084BA8 + a1);
  }
}

uint64_t sub_10000B09C(int a1, int a2, double a3)
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

uint64_t sub_10000B13C(void *a1)
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

double sub_10000B204(unint64_t a1)
{
  mach_get_times();
  v2 = sub_10000B548(0) / 1000.0;
  return 0 - kCFAbsoluteTimeIntervalSince1970 + 0 / 1000000000.0 + sub_10000B548(a1) / 1000.0 - v2;
}

id sub_10000B2A8(void *a1)
{
  v1 = a1;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v15;
    v6 = -1;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:@"StartTime"];
        v10 = [v9 longLongValue];

        if (v6 > v10)
        {
          v11 = [v8 objectForKeyedSubscript:@"StartTime"];
          v6 = [v11 longLongValue];

          v12 = v8;
          v4 = v12;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

NSDate *sub_10000B420(uint64_t a1, void *a2, unint64_t a3)
{
  [a2 timeIntervalSinceReferenceDate];
  v6 = sub_10000B5E4((v5 * 1000.0));
  v7 = sub_10000B590((v6 - a3) + a1);

  return [NSDate dateWithTimeIntervalSinceReferenceDate:v7];
}

double sub_10000B4C0()
{
  if (qword_1000903D0 != -1)
  {
    sub_10003D918();
  }

  return *&qword_1000903C8;
}

void sub_10000B4F8(id a1)
{
  info = 0;
  mach_timebase_info(&info);
  *&qword_1000903C8 = ((info.numer * 0.000001) / info.denom);
}

double sub_10000B548(unint64_t a1)
{
  if (qword_1000903D0 != -1)
  {
    sub_10003D918();
  }

  return *&qword_1000903C8 * a1;
}

double sub_10000B590(unint64_t a1)
{
  if (qword_1000903D0 != -1)
  {
    sub_10003D918();
  }

  return *&qword_1000903C8 * a1 / 1000.0;
}

double sub_10000B5E4(unint64_t a1)
{
  if (qword_1000903D0 != -1)
  {
    sub_10003D918();
  }

  return a1 / *&qword_1000903C8;
}

HRFenceInfo *sub_10000BA70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = [NSNumber numberWithLongLong:a2];
  v9 = [v7 objectForKey:v8];

  if (!v9)
  {
    v9 = [[HRFenceInfo alloc] initWithFenceName:a2 traceStart:a3 traceEnd:a4];
    v10 = [NSNumber numberWithLongLong:a2];
    [v7 setObject:v9 forKey:v10];
  }

  return v9;
}

HRHandleInfo *sub_10000BB4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a1;
  v12 = [NSNumber numberWithLongLong:a4];
  v13 = [v11 objectForKey:v12];

  if (!v13)
  {
    v13 = objc_alloc_init(NSMutableDictionary);
    v14 = [NSNumber numberWithLongLong:a4];
    [v11 setObject:v13 forKey:v14];
  }

  v15 = [NSNumber numberWithLongLong:a2];
  v16 = [v13 objectForKey:v15];

  if (!v16)
  {
    v16 = objc_alloc_init(NSMutableDictionary);
    v17 = [NSNumber numberWithLongLong:a2];
    [v13 setObject:v16 forKey:v17];
  }

  v18 = [NSNumber numberWithLongLong:a3];
  v19 = [v16 objectForKey:v18];

  if (!v19)
  {
    v19 = [[HRHandleInfo alloc] initWithHandleName:a3 fenceName:a2 traceStart:a5 traceEnd:a6];
    v20 = [NSNumber numberWithLongLong:a3];
    [v16 setObject:v19 forKey:v20];
  }

  return v19;
}

uint64_t sub_10000BD14(void *a1, void *a2, NSObject **a3)
{
  v5 = a1;
  v6 = a2;
  v7 = +[HTPrefs sharedPrefs];
  v8 = [v7 shouldSaveTailspins];

  if (v8)
  {
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_10000C5A0;
    v53[3] = &unk_100085258;
    v54 = v6;
    v9 = v5;
    v55 = v9;
    v10 = objc_retainBlock(v53);
    v11 = (v10[2])();
    v12 = @"/var/root/Library/Logs/CrashReporter/DiagnosticLogs/HangTracer/";
    v13 = @"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/HangTracer/";
    if (!sub_10000AB70(v12, 0) || (sub_10000AB70(v13, 1) & 1) == 0)
    {
      v18 = sub_100001684();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10003D940();
      }

      v30 = 0;
      goto LABEL_59;
    }

    v50 = v13;
    v14 = +[HTPrefs sharedPrefs];
    v15 = [v14 shouldCompressSavedTailspins];

    v16 = [(__CFString *)v12 stringByAppendingPathComponent:v11];
    v17 = v16;
    v51 = v11;
    if (!v15)
    {
      v18 = [v16 stringByAppendingPathExtension:@"processing"];

      v31 = link([v9 UTF8String], [v18 UTF8String]);
      v32 = sub_100001684();
      v33 = v32;
      if (v31)
      {
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          sub_10003D9B0();
        }

        v30 = 0;
        v13 = v50;
        goto LABEL_58;
      }

      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        errnum = 138412546;
        v57 = v9;
        v58 = 2112;
        v59 = v18;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Successfully hard-linked tailspin file: %@ -> %@", &errnum, 0x16u);
      }

LABEL_35:
      v33 = [(__CFString *)v50 stringByAppendingPathComponent:v51];
      if ([v18 containsString:@".gz"])
      {
        v35 = [v33 stringByAppendingPathExtension:@"gz"];

        v33 = v35;
      }

      v36 = sub_100001684();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        errnum = 138412546;
        v57 = v18;
        v58 = 2112;
        v59 = v33;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Moving '%@' -> '%@'", &errnum, 0x16u);
      }

      if (chmod([v18 UTF8String], 0x1B6u))
      {
        v37 = sub_100001684();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          sub_10003DABC();
        }
      }

      v38 = +[NSFileManager defaultManager];
      v52 = 0;
      v30 = [v38 moveItemAtPath:v18 toPath:v33 error:&v52];
      filea = v52;

      if (v30)
      {
        v13 = v50;
        if (a3)
        {
          v39 = v33;
          *a3 = v33;
        }

        v40 = sub_100001684();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          errnum = 138412546;
          v57 = v18;
          v58 = 2112;
          v59 = v33;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Successful move of tailspin file: %@ -> %@", &errnum, 0x16u);
        }

        v41 = +[HTPrefs sharedPrefs];
        sub_10000C6E0(v50, [v41 savedTailspinMaxMB]);
      }

      else
      {
        v41 = sub_100001684();
        v13 = v50;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          errnum = 138412802;
          v57 = v18;
          v58 = 2112;
          v59 = v33;
          v60 = 2112;
          v42 = filea;
          v61 = filea;
          _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Error failed move of tailspin file: %@ -> %@ error: %@", &errnum, 0x20u);
          goto LABEL_57;
        }
      }

      v42 = filea;
LABEL_57:

LABEL_58:
      v11 = v51;
LABEL_59:

      v28 = v54;
      goto LABEL_60;
    }

    v18 = [v16 stringByAppendingPathExtension:@"gz.processing"];

    v19 = [v18 UTF8String];
    v20 = [v9 UTF8String];
    if (MKBDeviceUnlockedSinceBoot())
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    v22 = open_dprotected_np(v19, 514, v21, 0, 416);
    if (v22 < 0)
    {
      v34 = sub_100001684();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_10003DC7C();
      }
    }

    else
    {
      file = gzdopen(v22, "wb");
      if (file)
      {
        __stream = fopen(v20, "rb");
        if (__stream)
        {
          v23 = malloc_type_malloc(0x4000uLL, 0x100004077774924uLL);
          if (v23)
          {
            v24 = v23;
            while (1)
            {
              v25 = fread(v24, 1uLL, 0x4000uLL, __stream);
              if (!v25)
              {
                break;
              }

              if (gzwrite(file, v24, v25) != v25)
              {
                errnum = 0;
                gzerror(file, &errnum);
                if (errnum == -1)
                {
                  v26 = __error();
                  strerror(*v26);
                }

                v27 = sub_100001684();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
                {
                  sub_10003DA40();
                }

                gzclose(file);
                fclose(__stream);
                free(v24);
                goto LABEL_52;
              }
            }

            gzclose(file);
            fclose(__stream);
            free(v24);
            v46 = sub_100001684();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              errnum = 138412546;
              v57 = v9;
              v58 = 2112;
              v59 = v18;
              _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Successfully compressed tailspin file: %@ -> %@", &errnum, 0x16u);
            }

            sub_100020444([v9 UTF8String], [v18 UTF8String]);
            goto LABEL_35;
          }

          v45 = sub_100001684();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            sub_10003DB2C();
          }

          gzclose(file);
          fclose(__stream);
        }

        else
        {
          v44 = sub_100001684();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            sub_10003DB9C();
          }

          gzclose(file);
        }

LABEL_52:
        v33 = sub_100001684();
        v13 = v50;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          sub_10003DCEC();
        }

        v30 = 0;
        goto LABEL_58;
      }

      v34 = sub_100001684();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_10003DC0C();
      }
    }

    goto LABEL_52;
  }

  v28 = sub_100001684();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = +[HTPrefs sharedPrefs];
    errnum = 67109120;
    LODWORD(v57) = [v29 shouldSaveTailspins];
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Not attempting to save a tailspin. HTPrefs: shouldSaveTailspins = %d", &errnum, 8u);
  }

  v30 = 1;
LABEL_60:

  return v30;
}

id sub_10000C5A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = sub_10000C644(v2);
  }

  else
  {
    v4 = [*(a1 + 40) lastPathComponent];
    v5 = [v4 rangeOfString:@"processing.tailspin" options:12];
    v3 = [v4 stringByReplacingOccurrencesOfString:@"processing.tailspin" withString:@"tailspin" options:12 range:{v5, v6}];
  }

  return v3;
}

id sub_10000C644(void *a1)
{
  v1 = [a1 lastPathComponent];
  if ([v1 characterAtIndex:0] == 46)
  {
    v2 = [v1 substringFromIndex:1];

    v1 = v2;
  }

  v3 = [v1 stringByDeletingPathExtension];
  v4 = [v3 stringByAppendingPathExtension:@"tailspin"];

  return v4;
}

void sub_10000C6E0(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = +[NSFileManager defaultManager];
  v5 = [NSURL URLWithString:v3];
  v6 = [NSArray arrayWithObjects:NSURLPathKey, NSURLCreationDateKey, NSURLTotalFileSizeKey, 0];
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_100011424;
  v56[3] = &unk_1000852E8;
  v7 = v3;
  v57 = v7;
  v40 = v4;
  v8 = [v4 enumeratorAtURL:v5 includingPropertiesForKeys:v6 options:4 errorHandler:v56];

  v42 = objc_alloc_init(NSMutableDictionary);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v52 objects:v63 count:16];
  obj = v9;
  if (!v10)
  {
    goto LABEL_36;
  }

  v11 = v10;
  v38 = v7;
  v12 = 0;
  v41 = a2 << 20;
  v13 = *v53;
  while (2)
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v53 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v52 + 1) + 8 * i);
      v16 = [v42 objectForKey:v15];

      if (!v16)
      {
        v50 = 0;
        v51 = 0;
        v17 = [v15 getResourceValue:&v51 forKey:NSURLCreationDateKey error:&v50];
        v18 = v51;
        v19 = v50;
        if (v17)
        {
          v48 = 0;
          v49 = 0;
          v20 = [v15 getResourceValue:&v49 forKey:NSURLTotalFileSizeKey error:&v48];
          v21 = v49;
          v22 = v48;

          if (v20)
          {
            v12 += [v21 unsignedLongValue];
            v23 = [NSDictionary dictionaryWithObjectsAndKeys:v15, @"url", v18, @"date", v21, @"size", 0];
            [v42 setObject:v23 forKey:v15];

            continue;
          }

          v24 = sub_100001684();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            sub_10003DE04(v15, v22);
          }

          v19 = v22;
        }

        else
        {
          v24 = sub_100001684();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            sub_10003DD5C(v15, v19);
          }

          v21 = 0;
        }

        goto LABEL_20;
      }
    }

    v11 = [obj countByEnumeratingWithState:&v52 objects:v63 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_20:

  v7 = v38;
  if (v12 > v41)
  {
    v9 = [v42 keysSortedByValueUsingComparator:&stru_100085308];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v25 = [v9 countByEnumeratingWithState:&v44 objects:v62 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = 0;
      v28 = *v45;
      do
      {
        for (j = 0; j != v26; j = j + 1)
        {
          if (*v45 != v28)
          {
            objc_enumerationMutation(v9);
          }

          v30 = *(*(&v44 + 1) + 8 * j);
          v31 = [v42 objectForKey:v30];
          v32 = [v31 objectForKey:@"size"];
          v27 += [v32 unsignedLongValue];

          if (v27 > v41)
          {
            v43 = 0;
            v33 = [v40 removeItemAtURL:v30 error:&v43];
            v34 = v43;
            v35 = sub_100001684();
            v36 = v35;
            if (v33)
            {
              if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v59 = v30;
                _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Successful removal of tailspin file to reduce disk space: %@", buf, 0xCu);
              }
            }

            else if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              v37 = [v34 localizedDescription];
              *buf = 138412546;
              v59 = v30;
              v60 = 2112;
              v61 = v37;
              _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Error: failed removal of tailspin file to reduce disk space: %@ error: %@", buf, 0x16u);
            }
          }
        }

        v26 = [v9 countByEnumeratingWithState:&v44 objects:v62 count:16];
      }

      while (v26);
      v7 = v38;
    }

LABEL_36:
  }
}

void sub_10000CC84(void *a1)
{
  v1 = a1;
  v2 = sub_100001684();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10003DEAC();
  }

  v3 = [v1 UTF8String];
  v45 = 0;
  v4 = sub_1000174B4(v3, &v45);
  v5 = v45;
  if (v4)
  {
    if ([v4 count] == 1)
    {
      v6 = [v4 objectAtIndex:0];
      v7 = [v6 objectForKeyedSubscript:off_10008FD90];
      v8 = v7;
      if (!v7)
      {
        v27 = sub_100001684();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_10003E094();
        }

        v28 = sub_10000AAE4(5, @"Report type field is missing, failed to process request");

        sub_10000D260(0, 0, v28);
        unlink(v3);
        v26 = 0;
        v5 = v28;
        goto LABEL_47;
      }

      if ([v7 isEqualToString:off_10008FDA0])
      {
        v37 = v8;
        v38 = v5;
        v39 = v4;
        v40 = v1;
        v9 = v1;
        v36 = v6;
        v10 = +[NSMutableArray array];
        v11 = [[SASampleStore alloc] initForFileParsing];
        [v11 setShouldGatherKextStat:0];
        [v11 setDataGatheringOptions:7];
        v12 = [v9 UTF8String];
        v50 = 0;
        v42 = v11;
        [v11 parseKTraceFile:v12 warningsOut:v10 errorOut:&v50];
        v41 = v50;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v13 = v10;
        v14 = [v13 countByEnumeratingWithState:&v46 objects:v55 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v47;
          do
          {
            for (i = 0; i != v15; i = i + 1)
            {
              if (*v47 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v46 + 1) + 8 * i);
              v19 = sub_100001684();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v52 = v9;
                v53 = 2112;
                v54 = v18;
                _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "WARNING trying to create sample store from %@: %@\n", buf, 0x16u);
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v46 objects:v55 count:16];
          }

          while (v15);
        }

        v20 = v42;
        if (v42)
        {
          v21 = v36;
          v43 = sub_10000170C(v9, v42, v36, 0);
          v4 = v39;
          v1 = v40;
          v5 = v38;
          v8 = v37;
        }

        else
        {
          v29 = sub_100001684();
          v4 = v39;
          v21 = v36;
          v8 = v37;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            sub_10003DF24();
          }

          v43 = 0;
          v1 = v40;
          v5 = v38;
          v20 = 0;
        }
      }

      v30 = [v6 objectForKeyedSubscript:off_10008FD80];
      v31 = sub_100001684();
      v32 = v31;
      if (v30)
      {
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          sub_10003DFAC();
        }

        v44 = 0;
        sub_10000BD14(v1, 0, &v44);
        v26 = v44;
        v33 = sub_100001684();
        v34 = v33;
        if (v26)
        {
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *v55 = 0;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Successfully parsed and moved tailspin file. Posting filePath to Sentry", v55, 2u);
          }

          sub_10000D260(v26, v30, 0);
          goto LABEL_46;
        }

        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          sub_10003DFE8();
        }

        v35 = sub_10000AAE4(5, @"Failed to move Sentry tailspin from spool directory");

        sub_10000D260(0, v30, v35);
      }

      else
      {
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_10003E058();
        }

        v35 = sub_10000AAE4(5, @"Failed to get reference number from reason dictionary. Reference number won't be included");

        sub_10000D260(0, 0, v35);
        v26 = 0;
      }

      v5 = v35;
LABEL_46:
      unlink(v3);

LABEL_47:
      v25 = v5;
      goto LABEL_48;
    }

    v24 = sub_100001684();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_10003DEE8();
    }

    v23 = @"Error, tailspin unexpectledly contains more than one hang. Reference number won't be included";
  }

  else
  {
    v22 = sub_100001684();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10003E0D0();
    }

    v23 = @"Failed to parse reasonString into a dictionary. Reference number won't be included";
  }

  v25 = sub_10000AAE4(5, v23);

  sub_10000D260(0, 0, v25);
  unlink(v3);
  v26 = 0;
LABEL_48:
}

void sub_10000D260(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    if (!v6)
    {
      v18 = off_10008FDB8;
      v19 = v7;
      v9 = &v19;
      v10 = &v18;
      v11 = 1;
      goto LABEL_9;
    }

    v16[0] = off_10008FD80;
    v16[1] = off_10008FDB8;
    v17[0] = v6;
    v17[1] = v7;
    v9 = v17;
    v10 = v16;
  }

  else
  {
    if (!v6)
    {
      sub_10003E138();
    }

    if (!v5)
    {
      sub_10003E10C();
    }

    v14[0] = off_10008FD80;
    v14[1] = off_10008FDB0;
    v15[0] = v6;
    v15[1] = v5;
    v9 = v15;
    v10 = v14;
  }

  v11 = 2;
LABEL_9:
  v12 = [NSDictionary dictionaryWithObjects:v9 forKeys:v10 count:v11];
  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterPostNotification(DistributedCenter, off_10008FD78, 0, v12, 1u);
}

uint64_t sub_10000D3BC(const char *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if ((*(a2 + 4) & 0xF000) == 0x8000)
  {
    v5 = [NSString stringWithUTF8String:a1];
    v6 = [v5 pathExtension];
    v7 = [v6 isEqualToString:@"tailspin"];
    v8 = [v5 rangeOfString:@"processing.tailspin"];
    if (!v7)
    {
      v12 = sub_100001684();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v41 = v5;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Ignoring non tailspin file: %@", buf, 0xCu);
      }

      v15 = 0;
      goto LABEL_12;
    }

    v9 = v8;
    sub_100018550();
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v23 = sub_100001684();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v41 = v5;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Found aborted file, deleting: %@", buf, 0xCu);
      }

      v24 = +[NSFileManager defaultManager];
      v35[0] = 0;
      v25 = [v24 removeItemAtPath:v5 error:v35];
      v15 = v35[0];

      sub_10000DA84(0, 1uLL, 0, 1);
      if (v25)
      {
        goto LABEL_13;
      }

      v12 = sub_100001684();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10003E164();
      }

LABEL_12:

LABEL_13:
      goto LABEL_14;
    }

    ++dword_1000903E8;
    +[HTHangreporterKickstartTelemetry incrementHangreporterTailspinsProcessed];
    v10 = [v5 rangeOfString:v6 options:12];
    v12 = [v5 stringByReplacingOccurrencesOfString:v6 withString:@"processing.tailspin" options:12 range:{v10, v11}];
    v13 = +[NSFileManager defaultManager];
    v37 = 0;
    v14 = [v13 moveItemAtPath:v5 toPath:v12 error:&v37];
    v15 = v37;

    if ((v14 & 1) == 0)
    {
      sub_10000DA84(0, 2uLL, 0, 1);
      v26 = sub_100001684();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v41 = v5;
        v42 = 2112;
        v43 = v12;
        v44 = 2112;
        v45 = v15;
        _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to move %@ -> %@: %@", buf, 0x20u);
      }

      v27 = +[NSFileManager defaultManager];
      v28 = [v27 removeItemAtPath:v5 error:0];

      if ((v28 & 1) == 0)
      {
        v29 = sub_100001684();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sub_10003E164();
        }

        if (unlink(a1) < 0)
        {
          v30 = sub_100001684();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            sub_10003E1D4();
          }
        }
      }

      goto LABEL_12;
    }

    v16 = CFPreferencesCopyValue(@"PDSEPrefHTTimeoutTimestampSec", @"com.apple.da", @"mobile", kCFPreferencesAnyHost);

    if ([v12 containsString:@"Sentry"])
    {
      v17 = +[HTPrefs sharedPrefs];
      v18 = [v17 shouldAugmentSentryTailspinWithSignposts];

      if (v18)
      {
        if (open([v12 UTF8String], 2) == -1)
        {
          v21 = sub_100001684();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            sub_10003E270();
          }
        }

        else
        {
          v38 = UnsafePointer;
          v19 = +[HTPrefs sharedPrefs];
          v20 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v19 shouldAugmentSentryTailspinWithSignposts]);
          v39 = v20;
          v21 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];

          v35[1] = _NSConcreteStackBlock;
          v35[2] = 3221225472;
          v35[3] = sub_10000DC80;
          v35[4] = &unk_100085280;
          v36 = v12;
          tailspin_augment_output();
          dispatch_semaphore_wait(qword_100090568, 0xFFFFFFFFFFFFFFFFLL);
        }
      }

      else
      {
        v21 = sub_100001684();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "OS Signposts augmentation is disabled", buf, 2u);
        }
      }

      sub_10000CC84(v12);
      goto LABEL_12;
    }

    if (([v12 containsString:@"Slow-Launch"]& 1) != 0 || [v12 containsString:@"Slow-Resume"])
    {
      v31 = sub_100001684();
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
LABEL_34:

        sub_10000BD14(v12, 0, 0);
        unlink([v12 UTF8String]);
        goto LABEL_12;
      }

      *buf = 0;
      v32 = "Slow-launch or Slow-resume tailspin detected. Not saving a spindump";
    }

    else
    {
      v33 = +[HTPrefs sharedPrefs];
      v34 = [v33 eplEnabled];

      if (!v34 || v16)
      {
        sub_10000DD64(v12);
        goto LABEL_12;
      }

      v31 = sub_100001684();
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      *buf = 0;
      v32 = "EPL is enabled, and HTSE is disabled. Not saving a spindump";
    }

    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v32, buf, 2u);
    goto LABEL_34;
  }

LABEL_14:
  objc_autoreleasePoolPop(v4);
  return 0;
}

void sub_10000DA84(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = +[HTPrefs sharedPrefs];
  v9 = [v8 enablementPrefix];

  if (!v9)
  {
    v9 = &stru_100085FF8;
  }

  v10 = sub_100001684();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [NSNumber numberWithBool:a1];
    v12 = sub_10000B078(a2);
    v13 = sub_10000B024(a3);
    *buf = 138413570;
    v16 = @"EnablementType";
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v11;
    v21 = 2112;
    v22 = v12;
    v23 = 2112;
    v24 = v13;
    v25 = 2048;
    v26 = a4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "com.apple.hangtracer.hang_capture_tailspin_v3 %@: %@, spindump_successful: %@, failure_reason: %@, HangSubType: %@, HTBugType: %ld", buf, 0x3Eu);
  }

  v14 = v9;
  AnalyticsSendEventLazy();
}

intptr_t sub_10000DC80(uint64_t a1, int a2)
{
  v4 = sub_100001684();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Successfully augmented tailspin at %@ with os signposts", &v8, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10003E2E0(a1);
  }

  return dispatch_semaphore_signal(qword_100090568);
}

void sub_10000DD64(void *a1)
{
  v223 = a1;
  v1 = sub_100001684();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *&buf[4] = v223;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Post-Processing Tailspin file: %@\n", buf, 0xCu);
  }

  v2 = v223;
  v3 = sub_1000174B4([v223 UTF8String], 0);
  if (!v3)
  {
    v12 = v223;
    unlink([v223 UTF8String]);
    sub_10000DA84(0, 3uLL, 0, 1);
    goto LABEL_223;
  }

  v249 = 0u;
  v250 = 0u;
  v247 = 0u;
  v248 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v247 objects:v286 count:16];
  if (v4)
  {
    v5 = *v248;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v248 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v247 + 1) + 8 * i);
        v8 = [v7 objectForKeyedSubscript:@"IsThirdPartyDevSupportModeHang"];
        if (v8)
        {
          v9 = [v7 objectForKeyedSubscript:@"IsThirdPartyDevSupportModeHang"];
          v10 = [v9 BOOLValue];

          if (v10)
          {
            v11 = 1;
            goto LABEL_16;
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v247 objects:v286 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_16:

  v13 = sub_10000AE34();
  v14 = +[NSFileManager defaultManager];
  v15 = [v14 attributesOfItemAtPath:v223 error:0];
  v16 = [v15 fileSize];

  v17 = v13;
  if (os_signpost_enabled(v17))
  {
    v18 = "NO";
    *buf = 138412802;
    *&buf[4] = v223;
    if (v11)
    {
      v18 = "YES";
    }

    *&buf[12] = 2048;
    *&buf[14] = v16;
    *&buf[22] = 2080;
    *&buf[24] = v18;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "TailspinConversionInterval", "File=%@, Bytes=%{signpost.telemetry:number1}llu, Symbolicate=%{signpost.telemetry:string1}s enableTelemetry=YES ", buf, 0x20u);
  }

  v198 = v17;

  if (v11)
  {
    v19 = v223;
    v20 = v19;
    v21 = [v19 cStringUsingEncoding:4];
    v22 = mach_absolute_time();
    if (open(v21, 2) == -1)
    {
      v23 = sub_100001684();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10003E3C8();
      }
    }

    else
    {
      block = UnsafePointer;
      *v295 = &__kCFBooleanFalse;
      v23 = [NSDictionary dictionaryWithObjects:v295 forKeys:&block count:1];
      v24 = sub_100001684();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        sub_10003E358();
      }

      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10001246C;
      *&buf[24] = &unk_100085280;
      *&buf[32] = v19;
      tailspin_augment_output();
      dispatch_semaphore_wait(qword_100090568, 0xFFFFFFFFFFFFFFFFLL);
    }

    v25 = mach_absolute_time();
    v26 = sub_10000B590(v25 - v22);
    *&v277 = _NSConcreteStackBlock;
    *(&v277 + 1) = 3221225472;
    *&v278 = sub_100012550;
    *(&v278 + 1) = &unk_1000853C8;
    *&v279 = v26;
    AnalyticsSendEventLazy();
  }

  v27 = +[NSMutableArray array];
  v199 = [[SASampleStore alloc] initForFileParsing];
  [v199 setShouldGatherKextStat:0];
  [v199 setDataGatheringOptions:7];
  v28 = v223;
  v246 = 0;
  [v199 parseKTraceFile:objc_msgSend(v223 warningsOut:"UTF8String") errorOut:{v27, &v246}];
  v197 = v246;
  v242 = 0u;
  v243 = 0u;
  v244 = 0u;
  v245 = 0u;
  v224 = v27;
  v29 = [v224 countByEnumeratingWithState:&v242 objects:v285 count:16];
  if (v29)
  {
    v30 = *v243;
    do
    {
      for (j = 0; j != v29; j = j + 1)
      {
        if (*v243 != v30)
        {
          objc_enumerationMutation(v224);
        }

        v32 = *(*(&v242 + 1) + 8 * j);
        v33 = sub_100001684();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = v223;
          *&buf[12] = 2112;
          *&buf[14] = v32;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "WARNING trying to create sample store from %@: %@\n", buf, 0x16u);
        }
      }

      v29 = [v224 countByEnumeratingWithState:&v242 objects:v285 count:16];
    }

    while (v29);
  }

  if (!v199)
  {
    sub_10000DA84(0, 4uLL, 0, 1);
    v54 = sub_100001684();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      sub_10003DF24();
    }

    v55 = v223;
    unlink([v223 UTF8String]);
    goto LABEL_222;
  }

  v232 = v223;
  v225 = v199;
  v34 = obj;
  obja = objc_alloc_init(NSMutableArray);
  v279 = 0u;
  v280 = 0u;
  v277 = 0u;
  v278 = 0u;
  v227 = v34;
  v35 = 0;
  v36 = 0;
  v37 = [v227 countByEnumeratingWithState:&v277 objects:buf count:16];
  if (v37)
  {
    v38 = *v278;
    do
    {
      for (k = 0; k != v37; k = k + 1)
      {
        if (*v278 != v38)
        {
          objc_enumerationMutation(v227);
        }

        v40 = *(*(&v277 + 1) + 8 * k);
        v41 = [v40 objectForKeyedSubscript:@"HangType"];
        v42 = [v41 intValue];

        if (v42 == 5)
        {
          v43 = [v40 objectForKeyedSubscript:@"FenceInfoUpdated"];
          v44 = v43 == 0;

          if (v44)
          {
            [v40 setObject:&__kCFBooleanFalse forKeyedSubscript:@"FenceInfoUpdated"];
            [obja addObject:v40];
            ++v36;
          }

          else
          {
            ++v35;
          }
        }

        else if (sub_10000B068(v42))
        {
          v45 = sub_100001684();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
          {
            v46 = sub_10000B024(v42);
            *v295 = 138543618;
            *&v295[4] = v46;
            *&v295[12] = 2048;
            *&v295[14] = v42;
            _os_log_fault_impl(&_mh_execute_header, v45, OS_LOG_TYPE_FAULT, "Unsupported fence hang %{public}@ (%ld)", v295, 0x16u);
          }
        }
      }

      v37 = [v227 countByEnumeratingWithState:&v277 objects:buf count:16];
    }

    while (v37);
  }

  v47 = [obja count] == 0;
  v48 = sub_100001684();
  v49 = os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG);
  if (v47)
  {
    if (v49)
    {
      sub_10003E7D0();
    }
  }

  else
  {
    if (v49)
    {
      sub_10003E438();
    }

    v275[0] = _NSConcreteStackBlock;
    v275[1] = 3221225472;
    v275[2] = sub_100012604;
    v275[3] = &unk_1000853F0;
    v276 = obja;
    v50 = objc_retainBlock(v275);
    v271 = 0;
    v272 = &v271;
    v273 = 0x2020000000;
    v274 = ktrace_session_create();
    if (v272[3])
    {
      v51 = v232;
      [v232 cStringUsingEncoding:4];
      if (ktrace_set_file())
      {
        v52 = v272[3];
        ktrace_session_destroy();
        v53 = sub_100001684();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
        {
          sub_10003E4A8();
        }
      }

      else
      {
        v56 = objc_alloc_init(NSMutableDictionary);
        v57 = objc_alloc_init(NSMutableDictionary);
        v58 = v272[3];
        v265 = _NSConcreteStackBlock;
        v266 = 3221225472;
        v267 = sub_1000127BC;
        v268 = &unk_100085440;
        v59 = v50;
        v270 = v59;
        v53 = v56;
        v269 = v53;
        if (ktrace_events_single())
        {
          v60 = sub_100001684();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
          {
            sub_10003E518();
          }

          v61 = v272[3];
          ktrace_session_destroy();
        }

        else
        {
          v62 = v272[3];
          v259 = _NSConcreteStackBlock;
          v260 = 3221225472;
          v261 = sub_100012988;
          v262 = &unk_100085440;
          v63 = v59;
          v264 = v63;
          v64 = v53;
          v263 = v64;
          if (ktrace_events_single())
          {
            v65 = sub_100001684();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_FAULT))
            {
              sub_10003E588();
            }

            v66 = v272[3];
            ktrace_session_destroy();
          }

          else
          {
            v67 = v272[3];
            *v295 = _NSConcreteStackBlock;
            *&v295[8] = 3221225472;
            *&v295[16] = sub_100012AF4;
            v296 = &unk_100085490;
            v68 = v63;
            v300 = v68;
            v69 = v225;
            v297 = v69;
            v70 = v64;
            v298 = v70;
            v71 = v57;
            v299 = v71;
            if (ktrace_events_single())
            {
              v72 = sub_100001684();
              if (os_log_type_enabled(v72, OS_LOG_TYPE_FAULT))
              {
                sub_10003E5F8();
              }

              v73 = v272[3];
              ktrace_session_destroy();
            }

            else
            {
              v74 = dispatch_semaphore_create(0);
              v75 = v272[3];
              v253 = _NSConcreteStackBlock;
              v254 = 3221225472;
              v255 = sub_100012FDC;
              v256 = &unk_1000854B8;
              v258 = &v271;
              dsema = v74;
              v257 = dsema;
              ktrace_set_completion_handler();
              v76 = v272[3];
              v77 = dispatch_get_global_queue(0, 0);
              LODWORD(v76) = ktrace_start();

              if (v76)
              {
                v78 = sub_100001684();
                if (os_log_type_enabled(v78, OS_LOG_TYPE_FAULT))
                {
                  sub_10003E668();
                }

                v79 = v272[3];
                ktrace_session_destroy();
              }

              else
              {
                v80 = dispatch_time(0, 100000000000);
                if (dispatch_semaphore_wait(dsema, v80))
                {
                  v81 = sub_100001684();
                  if (os_log_type_enabled(v81, OS_LOG_TYPE_FAULT))
                  {
                    sub_10003E6D8();
                  }

                  block = _NSConcreteStackBlock;
                  v288 = 3221225472;
                  v289 = sub_10001302C;
                  v290 = &unk_1000854E0;
                  v291 = &v271;
                  dispatch_async(v77, &block);
                }

                else
                {
                  v251[0] = 0;
                  v251[1] = v251;
                  v251[2] = 0x2020000000;
                  v252 = 0;
                  block = _NSConcreteStackBlock;
                  v288 = 3221225472;
                  v289 = sub_100013048;
                  v290 = &unk_100085570;
                  v291 = v71;
                  v292 = v69;
                  v293 = v70;
                  v294 = v251;
                  (v68[2])(v68, &block);

                  _Block_object_dispose(v251, 8);
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v53 = sub_100001684();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
      {
        sub_10003E75C();
      }
    }

    _Block_object_dispose(&v271, 8);
    v48 = v276;
  }

  v238 = 0u;
  v239 = 0u;
  v240 = 0u;
  v241 = 0u;
  objb = v227;
  v82 = [objb countByEnumeratingWithState:&v238 objects:v284 count:16];
  if (v82)
  {
    v228 = *v239;
    do
    {
      for (m = 0; m != v82; m = m + 1)
      {
        if (*v239 != v228)
        {
          objc_enumerationMutation(objb);
        }

        v84 = *(*(&v238 + 1) + 8 * m);
        v85 = [v84 objectForKeyedSubscript:@"ProcessPath"];
        v86 = [v85 lastPathComponent];
        v87 = sub_100009F50(v86, 0, v85, v84);
        v88 = [v87 objectForKeyedSubscript:@"is_first_party"];
        if (v88)
        {
          v89 = [v87 objectForKeyedSubscript:@"is_first_party"];
        }

        else
        {
          v89 = &__kCFBooleanTrue;
        }

        [v84 setObject:v89 forKeyedSubscript:@"isFirstPartyApp"];
        [v84 setObject:v87 forKeyedSubscript:@"IPSMetaDictionary"];
      }

      v82 = [objb countByEnumeratingWithState:&v238 objects:v284 count:16];
    }

    while (v82);
  }

  if ([objb count] < 2)
  {
    v138 = objb;
    goto LABEL_161;
  }

  v90 = [objb mutableCopy];
  if (![v90 count])
  {
    goto LABEL_160;
  }

  v91 = 0;
  do
  {
    v209 = v91;
    queue = [v90 objectAtIndexedSubscript:?];
    v92 = [queue objectForKeyedSubscript:@"PID"];
    v93 = [v92 intValue];

    v94 = [queue objectForKeyedSubscript:@"StartTime"];
    v229 = [v94 unsignedLongLongValue];

    v95 = [queue objectForKeyedSubscript:@"EndTime"];
    dsemaa = [v95 unsignedLongLongValue];

    v96 = sub_10000B548(dsemaa - v229);
    v97 = [queue objectForKeyedSubscript:@"HangType"];
    v98 = sub_10000B068([v97 intValue]);

    v99 = [queue objectForKeyedSubscript:@"IsThirdPartyDevSupportModeHang"];
    if (v99)
    {
      v100 = [queue objectForKeyedSubscript:@"IsThirdPartyDevSupportModeHang"];
      v101 = [v100 BOOLValue];

      v102 = v101 ^ 1;
    }

    else
    {
      v102 = 1;
    }

    v103 = [queue objectForKeyedSubscript:@"isFirstPartyApp"];
    v104 = [v103 BOOLValue];

    v213 = +[NSMutableIndexSet indexSet];
    v211 = v96;
    if (v209 + 1 >= [v90 count])
    {
LABEL_130:
      v120 = [v213 count] == 0;
      v121 = sub_100001684();
      v122 = v121;
      if (v120)
      {
        if (os_log_type_enabled(v121, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109888;
          *&buf[4] = v93;
          *&buf[8] = 2048;
          *&buf[10] = v229;
          *&buf[18] = 2048;
          *&buf[20] = dsemaa;
          *&buf[28] = 2048;
          *&buf[30] = v211;
          _os_log_debug_impl(&_mh_execute_header, v122, OS_LOG_TYPE_DEBUG, "[%d] %llu-%llu (%llums) does not overlap any other hangs", buf, 0x26u);
        }
      }

      else
      {
        if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
        {
          v123 = [v213 count];
          *buf = 134219008;
          *&buf[4] = v123;
          *&buf[12] = 1024;
          *&buf[14] = v93;
          *&buf[18] = 2048;
          *&buf[20] = v229;
          *&buf[28] = 2048;
          *&buf[30] = dsemaa;
          *&buf[38] = 2048;
          *v302 = v211;
          _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_DEFAULT, "Removing %lu hangs in favor of overlapping [%d] %llu-%llu (%llums)", buf, 0x30u);
        }

        [v90 removeObjectsAtIndexes:v213];
      }

      ++v209;
      goto LABEL_138;
    }

    v207 = v104 & v98 ^ 1;
    v203 = v104 & !v98;
    v201 = v102 | v98;
    v200 = v102 | !v98;
    v105 = v209 + 1;
    while (1)
    {
      v106 = [v90 objectAtIndexedSubscript:v105];
      v107 = [v106 objectForKeyedSubscript:@"PID"];
      v108 = [v107 intValue];

      v109 = [v106 objectForKeyedSubscript:@"StartTime"];
      v110 = [v109 unsignedLongLongValue];

      v111 = [v106 objectForKeyedSubscript:@"EndTime"];
      v112 = [v111 unsignedLongLongValue];

      v113 = sub_10000B548(v112 - v110);
      v114 = [v106 objectForKeyedSubscript:@"HangType"];
      v115 = sub_10000B068([v114 intValue]);

      if (v93 != v108 || v229 >= v112 || dsemaa <= v110)
      {
        goto LABEL_129;
      }

      v116 = v113;
      if (((v207 | v115) & 1) == 0 && v211 + 1000 > v116)
      {
        [v213 addIndex:v105];
        v117 = sub_100001684();
        if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67110912;
          *&buf[4] = v93;
          *&buf[8] = 2048;
          *&buf[10] = v110;
          *&buf[18] = 2048;
          *&buf[20] = v112;
          *&buf[28] = 2048;
          *&buf[30] = v113;
          *&buf[38] = 1024;
          *v302 = v93;
          *&v302[4] = 2048;
          *&v302[6] = v229;
          v303 = 2048;
          v304 = dsemaa;
          v305 = 2048;
          v306 = v211;
          v118 = v117;
          v119 = "Adding hang [%d] %llu-%llu (%llums) to removal list in favor of overlapping [%d] %llu-%llu (%llums) (1p prefer fence if other is <1s longer)";
LABEL_127:
          _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, v119, buf, 0x4Au);
          goto LABEL_128;
        }

        goto LABEL_128;
      }

      if ((v203 & v115) == 1 && v116 + 1000 > v211)
      {
        break;
      }

      if (v201 & 1 | !v115)
      {
        if (((v200 | v115) & 1) == 0)
        {
          v131 = [v213 count] == 0;
          v126 = sub_100001684();
          v132 = os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT);
          if (!v131)
          {
            if (!v132)
            {
              goto LABEL_158;
            }

            v133 = [v213 count];
            *buf = 67111168;
            *&buf[4] = v93;
            *&buf[8] = 2048;
            *&buf[10] = v229;
            *&buf[18] = 2048;
            *&buf[20] = dsemaa;
            *&buf[28] = 2048;
            *&buf[30] = v211;
            *&buf[38] = 1024;
            *v302 = v93;
            *&v302[4] = 2048;
            *&v302[6] = v110;
            v303 = 2048;
            v304 = v112;
            v305 = 2048;
            v306 = v113;
            v307 = 2048;
            v308 = v133;
            v129 = v126;
            v130 = "Removing hang [%d] %llu-%llu (%llums) in favor of overlapping [%d] %llu-%llu (%llums) (3p prefer fence) (not removing %lu on removal list)";
            goto LABEL_149;
          }

          if (!v132)
          {
            goto LABEL_158;
          }

          *buf = 67110912;
          *&buf[4] = v93;
          *&buf[8] = 2048;
          *&buf[10] = v229;
          *&buf[18] = 2048;
          *&buf[20] = dsemaa;
          *&buf[28] = 2048;
          *&buf[30] = v211;
          *&buf[38] = 1024;
          *v302 = v93;
          *&v302[4] = 2048;
          *&v302[6] = v110;
          v303 = 2048;
          v304 = v112;
          v305 = 2048;
          v306 = v113;
          v129 = v126;
          v130 = "Removing hang [%d] %llu-%llu (%llums) in favor of overlapping [%d] %llu-%llu (%llums) (3p prefer fence)";
          goto LABEL_156;
        }

        if (dsemaa - v229 < (v112 - v110))
        {
          v134 = [v213 count] == 0;
          v126 = sub_100001684();
          v135 = os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT);
          if (!v134)
          {
            if (!v135)
            {
              goto LABEL_158;
            }

            v136 = [v213 count];
            *buf = 67111168;
            *&buf[4] = v93;
            *&buf[8] = 2048;
            *&buf[10] = v229;
            *&buf[18] = 2048;
            *&buf[20] = dsemaa;
            *&buf[28] = 2048;
            *&buf[30] = v211;
            *&buf[38] = 1024;
            *v302 = v93;
            *&v302[4] = 2048;
            *&v302[6] = v110;
            v303 = 2048;
            v304 = v112;
            v305 = 2048;
            v306 = v113;
            v307 = 2048;
            v308 = v136;
            v129 = v126;
            v130 = "Removing hang [%d] %llu-%llu (%llums) in favor of overlapping [%d] %llu-%llu (%llums) (prefer longer hangs) (not removing %lu on removal list)";
            goto LABEL_149;
          }

          if (!v135)
          {
            goto LABEL_158;
          }

          *buf = 67110912;
          *&buf[4] = v93;
          *&buf[8] = 2048;
          *&buf[10] = v229;
          *&buf[18] = 2048;
          *&buf[20] = dsemaa;
          *&buf[28] = 2048;
          *&buf[30] = v211;
          *&buf[38] = 1024;
          *v302 = v93;
          *&v302[4] = 2048;
          *&v302[6] = v110;
          v303 = 2048;
          v304 = v112;
          v305 = 2048;
          v306 = v113;
          v129 = v126;
          v130 = "Removing hang [%d] %llu-%llu (%llums) in favor of overlapping [%d] %llu-%llu (%llums) (prefer longer hangs)";
          goto LABEL_156;
        }

        [v213 addIndex:v105];
        v117 = sub_100001684();
        if (!os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_128;
        }

        *buf = 67110912;
        *&buf[4] = v93;
        *&buf[8] = 2048;
        *&buf[10] = v110;
        *&buf[18] = 2048;
        *&buf[20] = v112;
        *&buf[28] = 2048;
        *&buf[30] = v113;
        *&buf[38] = 1024;
        *v302 = v93;
        *&v302[4] = 2048;
        *&v302[6] = v229;
        v303 = 2048;
        v304 = dsemaa;
        v305 = 2048;
        v306 = v211;
        v118 = v117;
        v119 = "Adding hang [%d] %llu-%llu (%llums) to removal list in favor of overlapping [%d] %llu-%llu (%llums) (prefer longer hangs)";
        goto LABEL_127;
      }

      [v213 addIndex:v105];
      v117 = sub_100001684();
      if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67110912;
        *&buf[4] = v93;
        *&buf[8] = 2048;
        *&buf[10] = v110;
        *&buf[18] = 2048;
        *&buf[20] = v112;
        *&buf[28] = 2048;
        *&buf[30] = v113;
        *&buf[38] = 1024;
        *v302 = v93;
        *&v302[4] = 2048;
        *&v302[6] = v229;
        v303 = 2048;
        v304 = dsemaa;
        v305 = 2048;
        v306 = v211;
        v118 = v117;
        v119 = "Adding hang [%d] %llu-%llu (%llums) to removal list in favor of overlapping [%d] %llu-%llu (%llums) (3p prefer fence)";
        goto LABEL_127;
      }

LABEL_128:

LABEL_129:
      if (++v105 >= [v90 count])
      {
        goto LABEL_130;
      }
    }

    v125 = [v213 count] == 0;
    v126 = sub_100001684();
    v127 = os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT);
    if (!v125)
    {
      if (!v127)
      {
        goto LABEL_158;
      }

      v128 = [v213 count];
      *buf = 67111168;
      *&buf[4] = v93;
      *&buf[8] = 2048;
      *&buf[10] = v229;
      *&buf[18] = 2048;
      *&buf[20] = dsemaa;
      *&buf[28] = 2048;
      *&buf[30] = v211;
      *&buf[38] = 1024;
      *v302 = v93;
      *&v302[4] = 2048;
      *&v302[6] = v110;
      v303 = 2048;
      v304 = v112;
      v305 = 2048;
      v306 = v113;
      v307 = 2048;
      v308 = v128;
      v129 = v126;
      v130 = "Removing hang [%d] %llu-%llu (%llums) in favor of overlapping [%d] %llu-%llu (%llums) (1p prefer fence if other is <1s longer) (not removing %lu on removal list)";
LABEL_149:
      v137 = 84;
      goto LABEL_157;
    }

    if (!v127)
    {
      goto LABEL_158;
    }

    *buf = 67110912;
    *&buf[4] = v93;
    *&buf[8] = 2048;
    *&buf[10] = v229;
    *&buf[18] = 2048;
    *&buf[20] = dsemaa;
    *&buf[28] = 2048;
    *&buf[30] = v211;
    *&buf[38] = 1024;
    *v302 = v93;
    *&v302[4] = 2048;
    *&v302[6] = v110;
    v303 = 2048;
    v304 = v112;
    v305 = 2048;
    v306 = v113;
    v129 = v126;
    v130 = "Removing hang [%d] %llu-%llu (%llums) in favor of overlapping [%d] %llu-%llu (%llums) (1p prefer fence if other is <1s longer)";
LABEL_156:
    v137 = 74;
LABEL_157:
    _os_log_impl(&_mh_execute_header, v129, OS_LOG_TYPE_DEFAULT, v130, buf, v137);
LABEL_158:

    [v90 removeObjectAtIndex:v209];
LABEL_138:

    v124 = [v90 count];
    v91 = v209;
  }

  while (v209 < v124);
LABEL_160:
  v138 = [v90 copy];

LABEL_161:
  v236 = 0u;
  v237 = 0u;
  v234 = 0u;
  v235 = 0u;
  obj = v138;
  v139 = 0;
  v140 = 0;
  v141 = [obj countByEnumeratingWithState:&v234 objects:v283 count:16];
  if (v141)
  {
    v230 = *v235;
    do
    {
      for (n = 0; n != v141; n = n + 1)
      {
        if (*v235 != v230)
        {
          objc_enumerationMutation(obj);
        }

        v143 = *(*(&v234 + 1) + 8 * n);
        v144 = v232;
        sub_100020AC0([v232 UTF8String], v143);
        v145 = sub_10000170C(v232, v225, v143, 1);
        v146 = v145;
        if (v145)
        {
          ++v139;
          if (v140)
          {
            v147 = v145;
            v140 = v140;
            v148 = +[HTPrefs sharedPrefs];
            v149 = [v148 shouldSaveTailspins];

            if (v149)
            {
              v150 = sub_10000C644(v147);
              v151 = [v140 pathExtension];
              v152 = [v151 containsString:@"gz"];

              if (v152)
              {
                v153 = [v150 stringByAppendingPathExtension:@"gz"];

                v150 = v153;
              }

              v154 = [@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/HangTracer/" stringByAppendingPathComponent:v150];
            }

            else
            {
              v150 = sub_100001684();
              if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v150, OS_LOG_TYPE_DEFAULT, "shouldSaveTailspins says NO, not saving tailspin files", buf, 2u);
              }

              v154 = 0;
            }

            if (v154)
            {
              v155 = v140;
              v156 = [v140 UTF8String];
              v157 = v154;
              LODWORD(v156) = clonefile(v156, [v154 UTF8String], 0) == 0;
              v158 = sub_100001684();
              v159 = v158;
              if (v156)
              {
                if (os_log_type_enabled(v158, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  *&buf[4] = v140;
                  *&buf[12] = 2112;
                  *&buf[14] = v154;
                  _os_log_impl(&_mh_execute_header, v159, OS_LOG_TYPE_DEFAULT, "successfully cloned %@ to %@", buf, 0x16u);
                }

                v160 = v232;
                v161 = [v232 UTF8String];
                v162 = v154;
                sub_100020444(v161, [v154 UTF8String]);
              }

              else
              {
                if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  *&buf[4] = v154;
                  _os_log_error_impl(&_mh_execute_header, v159, OS_LOG_TYPE_ERROR, "failed to archive tailspin file %@", buf, 0xCu);
                }
              }
            }
          }

          else
          {
            v233 = 0;
            sub_10000BD14(v232, v145, &v233);
            v140 = v233;
          }
        }
      }

      v141 = [obj countByEnumeratingWithState:&v234 objects:v283 count:16];
    }

    while (v141);
  }

  v163 = v198;
  if (os_signpost_enabled(v163))
  {
    *buf = 67109120;
    *&buf[4] = v139;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v163, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "TailspinConversionInterval", "NumSuccessfulReports=%{signpost.telemetry:number2}d enableTelemetry=YES ", buf, 8u);
  }

  v164 = sub_100001684();
  if (os_log_type_enabled(v164, OS_LOG_TYPE_INFO))
  {
    v165 = [v232 lastPathComponent];
    v166 = +[HTPrefs sharedPrefs];
    v167 = [v166 shouldUploadToDiagPipe];
    *buf = 138412546;
    *&buf[4] = v165;
    *&buf[12] = 1024;
    *&buf[14] = v167;
    _os_log_impl(&_mh_execute_header, v164, OS_LOG_TYPE_INFO, "Post Processing %@: Should Try to Upload to Diagnostic Pipeline: %{BOOL}i", buf, 0x12u);
  }

  v168 = +[HTPrefs sharedPrefs];
  v169 = [v168 shouldUploadToDiagPipe];

  if (v169)
  {
    v170 = sub_10000B2A8(obj);
    v171 = v170;
    if (v170)
    {
      v172 = [v170 objectForKeyedSubscript:@"StartTime"];
      v173 = sub_10000B204([v172 longLongValue]);

      v174 = [v171 objectForKeyedSubscript:@"StartTime"];
      v175 = [v174 longLongValue];

      v176 = [v171 objectForKeyedSubscript:@"EndTime"];
      v177 = [v176 longLongValue];

      v178 = sub_10000B548(v177 - v175);
      v179 = [v171 objectForKeyedSubscript:@"ProcessPath"];
      if (v179)
      {
        v226 = [v171 objectForKeyedSubscript:@"ProcessPath"];
      }

      else
      {
        v226 = 0;
      }

      queuea = [v226 lastPathComponent];
      v231 = sub_100009F50(queuea, 0, v226, v171);
      v182 = [v231 objectForKeyedSubscript:@"is_first_party"];
      if (v182)
      {
        v183 = [v231 objectForKeyedSubscript:@"is_first_party"];
        v214 = [v183 BOOLValue];
      }

      else
      {
        v214 = 1;
      }

      v184 = [v171 objectForKeyedSubscript:@"IsThirdPartyDevSupportModeHang"];
      if (v184)
      {
        v185 = [v171 objectForKeyedSubscript:@"IsThirdPartyDevSupportModeHang"];
        v186 = [v185 BOOLValue];
      }

      else
      {
        v186 = 0;
      }

      v187 = sub_10000B09C(v214, v186, v178);
      v281[0] = @"bundleid";
      v212 = sub_10000AA30(v226);
      v282[0] = v212;
      v281[1] = @"durationms";
      v210 = [NSNumber numberWithDouble:v178];
      v282[1] = v210;
      v281[2] = @"pid";
      dsemab = [v171 objectForKeyedSubscript:@"PID"];
      if (dsemab)
      {
        v188 = [v171 objectForKeyedSubscript:@"PID"];
      }

      else
      {
        v188 = &stru_100085FF8;
      }

      v202 = v188;
      v282[2] = v188;
      v281[3] = @"starttime";
      v208 = [NSNumber numberWithUnsignedLongLong:v175];
      v282[3] = v208;
      v281[4] = @"endtime";
      v206 = [NSNumber numberWithUnsignedLongLong:v177];
      v282[4] = v206;
      v281[5] = @"walltime";
      v205 = [NSNumber numberWithDouble:v173];
      v282[5] = v205;
      v281[6] = @"bugtype";
      v204 = [NSString stringWithFormat:@"%lu", v187];
      v282[6] = v204;
      v281[7] = @"sharewithdevs";
      v189 = [NSNumber numberWithBool:AppAnalyticsEnabled()];
      v282[7] = v189;
      v281[8] = @"adamid";
      v190 = [v231 objectForKeyedSubscript:@"adam_id"];
      if (v190)
      {
        v191 = [v231 objectForKeyedSubscript:@"adam_id"];
      }

      else
      {
        v191 = &stru_100085FF8;
      }

      v282[8] = v191;
      v281[9] = @"appversion";
      v192 = [v231 objectForKeyedSubscript:@"app_version"];
      if (v192)
      {
        v193 = [v231 objectForKeyedSubscript:@"app_version"];
      }

      else
      {
        v193 = &stru_100085FF8;
      }

      v282[9] = v193;
      v281[10] = @"HangUUID";
      v194 = [v171 objectForKeyedSubscript:?];
      v282[10] = v194;
      v195 = [NSDictionary dictionaryWithObjects:v282 forKeys:v281 count:11];

      if (v192)
      {
      }

      if (v190)
      {
      }

      if (dsemab)
      {
      }

      sub_100011728(v214, 1, v171, v232, v195);
      v181 = v226;
    }

    else
    {
      v180 = sub_100001684();
      v181 = v180;
      if (os_log_type_enabled(v180, OS_LOG_TYPE_FAULT))
      {
        sub_10003E844(v232, obj, v180);
        v181 = v180;
      }
    }
  }

  v196 = v232;
  unlink([v232 UTF8String]);

LABEL_222:
LABEL_223:
}

void sub_1000101B8(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x248], 8);
  _Block_object_dispose(&STACK[0x2F8], 8);
  _Unwind_Resume(a1);
}

void sub_100010214()
{
  v0 = 0;
  do
  {
    dword_1000903E8 = 0;
    if (nftw("/var/root/Library/Caches/hangtracerd/spool", sub_10000D3BC, 1, 3))
    {
      v1 = sub_100001684();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
      {
        sub_10003E8F8(&v98, v99, v1);
      }
    }

    if (v0 > 3)
    {
      break;
    }

    ++v0;
  }

  while (dword_1000903E8 > 0);
  v2 = &MGGetBoolAnswer_ptr;
  v3 = +[NSFileManager defaultManager];
  v103 = 0;
  v4 = [v3 contentsOfDirectoryAtPath:@"/var/mobile/Library/Caches/com.apple.backboardd/spool" error:&v103];
  v5 = v103;

  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    context = v5;
    v12 = objc_alloc_init(NSMutableArray);
    *v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v95 = v4;
    v13 = v4;
    v14 = [v13 countByEnumeratingWithState:v113 objects:buf count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v114;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v114 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [@"/var/mobile/Library/Caches/com.apple.backboardd/spool" stringByAppendingPathComponent:*(*&v113[8] + 8 * i)];
          v19 = [[FileWithAttributes alloc] initWithFile:v18];
          if (v19)
          {
            [v12 addObject:v19];
          }

          else
          {
            v20 = sub_100001684();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *v104 = 138412290;
              *&v104[4] = v18;
              _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Unable to obtain file attributes for %@, skipping...", v104, 0xCu);
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:v113 objects:buf count:16];
      }

      while (v15);
    }

    [v12 sortUsingComparator:&stru_1000855D8];
    v11 = objc_alloc_init(NSMutableArray);
    memset(v108, 0, sizeof(v108));
    v109 = 0u;
    v110 = 0u;
    v7 = v12;
    v21 = [v7 countByEnumeratingWithState:v108 objects:v104 count:16];
    v2 = &MGGetBoolAnswer_ptr;
    if (v21)
    {
      v22 = v21;
      v23 = **&v108[16];
      do
      {
        for (j = 0; j != v22; j = j + 1)
        {
          if (**&v108[16] != v23)
          {
            objc_enumerationMutation(v7);
          }

          v25 = [*(*&v108[8] + 8 * j) filePath];
          [v11 addObject:v25];
        }

        v22 = [v7 countByEnumeratingWithState:v108 objects:v104 count:16];
      }

      while (v22);
    }

    v5 = context;
    v4 = v95;
  }

  else
  {
    v7 = sub_100001684();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v5 localizedDescription];
      v9 = v8;
      v10 = @"Unknown";
      if (v8)
      {
        v10 = v8;
      }

      *buf = 138412290;
      v112 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Could not list files in CA stalls directory due to error: %@", buf, 0xCu);
    }

    v11 = 0;
  }

  *v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v26 = v11;
  v27 = [v26 countByEnumeratingWithState:v104 objects:buf count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v105;
    v92 = v26;
    do
    {
      v30 = 0;
      do
      {
        if (*v105 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*&v104[8] + 8 * v30);
        v32 = [v31 pathExtension];
        v33 = [v32 isEqualToString:@"tailspin"];

        if ((v33 & 1) == 0)
        {
          v57 = sub_100001684();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
          {
            *v113 = 138543362;
            *&v113[4] = v31;
            v58 = v57;
            v59 = "Skipping non-tailspin file: %{public}@";
LABEL_78:
            _os_log_debug_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEBUG, v59, v113, 0xCu);
          }

LABEL_62:

          goto LABEL_63;
        }

        v34 = [v31 lastPathComponent];
        v35 = [v34 hasPrefix:@"processing_"];

        if (v35)
        {
          goto LABEL_63;
        }

        v100 = 0;
        v36 = [v2[261] defaultManager];
        v37 = [v36 fileExistsAtPath:v31 isDirectory:&v100];
        v38 = v100;

        if (!v37 || (v38 & 1) != 0)
        {
          v57 = sub_100001684();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
          {
            *v113 = 138412290;
            *&v113[4] = v31;
            v58 = v57;
            v59 = "Skipping directory with .tailspin extension: %@";
            goto LABEL_78;
          }

          goto LABEL_62;
        }

        v96 = objc_autoreleasePoolPush();
        v39 = v31;
        contexta = objc_autoreleasePoolPush();
        v40 = sub_100001684();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          *v108 = 138412290;
          *&v108[4] = v39;
          _os_log_debug_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "Started processing %@", v108, 0xCu);
        }

        v41 = [v39 lastPathComponent];
        v42 = [@"processing_" stringByAppendingString:v41];
        v97 = [@"/var/mobile/Library/Caches/com.apple.backboardd/spool" stringByAppendingPathComponent:v42];
        v43 = [v2[261] defaultManager];
        v103 = 0;
        v44 = [v43 attributesOfItemAtPath:v39 error:&v103];
        v45 = v103;

        if (!v44 || v45)
        {
          v60 = sub_100001684();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            v73 = [v45 localizedDescription];
            v91 = v73;
            *v108 = 138412546;
            v74 = @"Unknown";
            if (v73)
            {
              v74 = v73;
            }

            *&v108[4] = v39;
            *&v108[12] = 2112;
            *&v108[14] = v74;
            _os_log_error_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "Could not get attributes of '%@' due to error %@. Attempting to remove the file.", v108, 0x16u);
          }

          v61 = +[NSFileManager defaultManager];
          [v61 removeItemAtPath:v39 error:0];

          v62 = v44;
          goto LABEL_72;
        }

        v46 = [v44 fileSize];
        if (v46 >= 0x1400001)
        {
          v63 = v46;
          v64 = sub_100001684();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            *v108 = 138412802;
            *&v108[4] = v39;
            *&v108[12] = 2048;
            *&v108[14] = v63;
            *&v108[22] = 2048;
            *&v108[24] = 20971520;
            _os_log_error_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "Encountered tailspin file '%@' of size %lluB (> cap of %lluB). Attempting to remove the file.", v108, 0x20u);
          }

          v62 = +[NSFileManager defaultManager];
          [v62 removeItemAtPath:v39 error:0];
          v45 = v44;
LABEL_72:

          objc_autoreleasePoolPop(contexta);
          v65 = v96;
LABEL_73:
          v66 = sub_100001684();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            *v113 = 138412290;
            *&v113[4] = v39;
            _os_log_error_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "Encountered error trying to procesxs %@", v113, 0xCu);
          }

          goto LABEL_76;
        }

        v47 = +[NSFileManager defaultManager];
        v102 = 0;
        v48 = [v47 moveItemAtPath:v39 toPath:v97 error:&v102];
        v49 = v102;

        v90 = v49;
        if (v48 && !v49)
        {
          v50 = [NSFileHandle fileHandleForReadingAtPath:v97];
          log = v50;
          if (!v50)
          {
            v69 = +[NSFileManager defaultManager];
            [v69 removeItemAtPath:v97 error:0];

            v70 = sub_100001684();
            v88 = v70;
            if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
            {
              *v108 = 138412290;
              *&v108[4] = v97;
              _os_log_error_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, "Could not open %@ for reading. Attempting to remove the file.", v108, 0xCu);
            }

            v55 = 0;
            goto LABEL_96;
          }

          v51 = v50;
          v52 = [NSString stringWithFormat:@"%ld", 302];
          *v113 = _NSConcreteStackBlock;
          *&v113[8] = 3221225472;
          *&v114 = sub_1000140F0;
          *(&v114 + 1) = &unk_100085600;
          *&v115 = v51;
          if (OSAWriteLogForSubmission())
          {

            if (sub_10000AB70(@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/CoreAnimation/", 1))
            {
              v53 = [@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/CoreAnimation/" stringByAppendingPathComponent:v41];
              v54 = +[NSFileManager defaultManager];
              v101 = 0;
              v88 = v53;
              v55 = [v54 moveItemAtPath:v97 toPath:v53 error:&v101];
              v87 = v101;
              if (v87)
              {
                v55 = 0;
              }

              if (v55)
              {
                v56 = sub_100001684();
                if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
                {
                  *v108 = 138412546;
                  *&v108[4] = v39;
                  *&v108[12] = 2112;
                  *&v108[14] = v88;
                  _os_log_debug_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEBUG, "Finished processing successfully %@. Final destination for file is %@", v108, 0x16u);
                }

LABEL_94:
                v78 = v87;
              }

              else
              {
                v77 = +[NSFileManager defaultManager];
                [v77 removeItemAtPath:v97 error:0];

                v56 = sub_100001684();
                if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_94;
                }

                v78 = v87;
                v82 = [v87 localizedDescription];
                v86 = v82;
                *v108 = 138543874;
                v83 = @"Unknown";
                if (v82)
                {
                  v83 = v82;
                }

                *&v108[4] = v97;
                *&v108[12] = 2114;
                *&v108[14] = v88;
                *&v108[22] = 2112;
                *&v108[24] = v83;
                _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "Could not rename %{public}@ to %{public}@ due to error %@. Attempting to remove the file", v108, 0x20u);
              }

LABEL_96:
              v65 = v96;
LABEL_97:
              v68 = contexta;

              goto LABEL_98;
            }

            v75 = +[NSFileManager defaultManager];
            [v75 removeItemAtPath:v97 error:0];

            v76 = sub_100001684();
            v65 = v96;
            v88 = v76;
            if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
            {
              *v108 = 138412546;
              *&v108[4] = @"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/CoreAnimation/";
              *&v108[12] = 2112;
              *&v108[14] = v97;
              _os_log_error_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "Could not create %@. Removing %@ rather than letting it persist.", v108, 0x16u);
            }
          }

          else
          {
            v88 = v52;
            v71 = +[NSFileManager defaultManager];
            [v71 removeItemAtPath:v97 error:0];

            v72 = sub_100001684();
            v65 = v96;
            if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
            {
              *v108 = 138412290;
              *&v108[4] = v97;
              _os_log_error_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "Failed to write binary data for IPS file creation. Removing %@", v108, 0xCu);
            }
          }

          v55 = 0;
          goto LABEL_97;
        }

        v67 = +[NSFileManager defaultManager];
        [v67 removeItemAtPath:v39 error:0];

        log = sub_100001684();
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          v79 = [v49 localizedDescription];
          v80 = v79;
          *v108 = 138543874;
          v81 = @"Unknown";
          if (v79)
          {
            v81 = v79;
          }

          *&v108[4] = v39;
          *&v108[12] = 2114;
          *&v108[14] = v97;
          *&v108[22] = 2112;
          *&v108[24] = v81;
          _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Could not rename %{public}@ to %{public}@ due to error %@. Attempting to remove the file.", v108, 0x20u);
        }

        v55 = 0;
        v68 = contexta;
        v65 = v96;
LABEL_98:

        objc_autoreleasePoolPop(v68);
        if ((v55 & 1) == 0)
        {
          goto LABEL_73;
        }

LABEL_76:
        objc_autoreleasePoolPop(v65);
        v2 = &MGGetBoolAnswer_ptr;
        v26 = v92;
LABEL_63:
        v30 = v30 + 1;
      }

      while (v28 != v30);
      v84 = [v26 countByEnumeratingWithState:v104 objects:buf count:16];
      v28 = v84;
    }

    while (v84);
  }

  v85 = +[HTPrefs sharedPrefs];
  sub_10000C6E0(@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/CoreAnimation/", [v85 savedTailspinMaxMB]);
}

void start()
{
  v0 = +[HTPrefs sharedPrefs];
  [v0 setupPrefsWithQueue:&_dispatch_main_q];

  out_token = -1;
  v1 = notify_register_check("com.apple.hangreporter.processing", &out_token);
  if (v1 || out_token == -1)
  {
    v2 = sub_100001684();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109376;
      v12 = v1;
      v13 = 1024;
      v14 = out_token;
      _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "Unable to checkin with notifitation: %d (token %d)", buf, 0xEu);
    }

    out_token = -1;
  }

  sub_1000180F8();
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, -15);
  v4 = dispatch_queue_create("com.apple.hangreporter.tailspin.augmentation_queue", v3);
  v5 = qword_100090560;
  qword_100090560 = v4;

  v6 = dispatch_semaphore_create(0);
  v7 = qword_100090568;
  qword_100090568 = v6;

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100011214;
  handler[3] = &unk_1000852A0;
  v10 = out_token;
  xpc_set_event_stream_handler("com.apple.fsevents.matching", &_dispatch_main_q, handler);

  v8 = dispatch_time(0, 10000000000);
  dispatch_after(v8, &_dispatch_main_q, &stru_1000852C0);

  dispatch_main();
}

void sub_100011214(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, _xpc_event_key_name);
  v4 = sub_100001684();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = string;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received event: %s", &v8, 0xCu);
  }

  if (!strncmp(string, "com.apple.hangreporter.spool.modified", 0x25uLL))
  {
    notify_set_state(*(a1 + 32), 1uLL);
    sub_100010214();
    notify_set_state(*(a1 + 32), 0);
    v6 = sub_100001684();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10003E9A8();
    }

    notify_post("com.apple.hangreporter.processing");
  }

  else
  {
    v5 = sub_100001684();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10003E938();
    }
  }

  v7 = sub_100001684();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Done...", &v8, 2u);
  }
}

void sub_1000113B8(id a1)
{
  v1 = sub_100001684();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Calling xpc_transaction_exit_clean() now", v2, 2u);
  }

  xpc_transaction_exit_clean();
}

BOOL sub_100011424(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = sub_100001684();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10003E9E4(a1, v4);
    }
  }

  return v4 == 0;
}

int64_t sub_100011498(id a1, id a2, id a3)
{
  v4 = a2;
  v5 = [a3 objectForKey:@"date"];
  v6 = [v4 objectForKey:@"date"];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t sub_100011518(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100011530(uint64_t a1, void *a2)
{
  v3 = a2;
  if (fcntl([v3 fileDescriptor], 50, v15) != -1)
  {
    v4 = [NSString stringWithUTF8String:v15];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = [NSJSONSerialization dataWithJSONObject:*(a1 + 32) options:1 error:0];
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  v10 = dup([v3 fileDescriptor]);
  if (v10 == -1)
  {
    if (*(a1 + 80) == 1)
    {
      sub_10000DA84(0, 0xBuLL, *(a1 + 64), *(a1 + 72));
    }

    v14 = sub_100001684();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10003EE8C();
    }

    goto LABEL_15;
  }

  v11 = fdopen(v10, "a");
  if (!v11)
  {
    if (*(a1 + 80) == 1)
    {
      sub_10000DA84(0, 0xAuLL, *(a1 + 64), *(a1 + 72));
    }

    v14 = sub_100001684();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10003EE50();
    }

LABEL_15:

    goto LABEL_16;
  }

  v12 = v11;
  [*(a1 + 40) printToStream:v11];
  fclose(v12);
  v13 = [@"\n" dataUsingEncoding:4];
  [v3 writeData:v13];

  [v3 writeData:*(*(*(a1 + 56) + 8) + 40)];
  if (*(a1 + 80) == 1)
  {
    sub_10000DA84(1, 0, *(a1 + 64), *(a1 + 72));
  }

LABEL_16:
}

void sub_100011728(int a1, int a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = sub_100001684();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Starting submission of tailspin to diagnostic pipeline", buf, 2u);
  }

  if (a2 == 1)
  {
    v13 = [v9 objectForKeyedSubscript:@"HangType"];
    if (v13)
    {
      v14 = [v9 objectForKeyedSubscript:@"HangType"];
      v15 = [v14 intValue];
    }

    else
    {
      v15 = 0;
    }

    v19 = [v11 objectForKeyedSubscript:@"durationms"];
    if (v19)
    {
      v20 = v19;
      [v19 doubleValue];
      v22 = v21;
      v23 = +[HTPrefs sharedPrefs];
      v24 = [v23 runloopHangDurationThresholdMSec];

      if (v22 >= v24)
      {
        [v20 doubleValue];
        v28 = v27;
        v29 = +[HTPrefs sharedPrefs];
        v30 = [v29 runloopLongHangDurationThresholdMSec];

        v25 = @"Long Hang";
        if (v28 < v30)
        {
          v25 = @"Normal Hang";
        }
      }

      else
      {
        v25 = @"Micro Hang";
      }

      v31 = @"Third Party App";
      if (a1)
      {
        v31 = @"First Party App";
      }

      v18 = [NSString stringWithFormat:@"%@ Hang (%@)", v31, v25];
      v17 = sub_10000B024(v15);

LABEL_22:
      v60[1] = 0;
      v32 = DRShouldGatherLog();
      v33 = 0;
      v34 = sub_100001684();
      v35 = os_log_type_enabled(v34, OS_LOG_TYPE_INFO);
      if (!v32)
      {
        if (v35)
        {
          v55 = [v10 lastPathComponent];
          *buf = 138412546;
          v64 = v55;
          v65 = 2112;
          v66 = v33;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Post Processing %@: Should NOT submit to Diagnostic Pipeline, error (%@)", buf, 0x16u);
        }

        goto LABEL_41;
      }

      v58 = v9;
      if (v35)
      {
        v36 = [v10 lastPathComponent];
        *buf = 138412290;
        v64 = v36;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Post Processing %@: Should submit to Diagnostic Pipeline", buf, 0xCu);
      }

      v57 = v17;

      sub_10000AB70(@"/tmp/HangTracer/", 1);
      v37 = sub_100001684();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = [v10 lastPathComponent];
        v39 = [v10 lastPathComponent];
        *buf = 138412802;
        v64 = v38;
        v65 = 2112;
        v66 = v39;
        v67 = 2112;
        v68 = @"/tmp/HangTracer/";
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Post Processing %@: Copy tailspin %@ to directory accesible by mobile %@", buf, 0x20u);
      }

      v40 = [v10 lastPathComponent];
      v34 = [@"/tmp/HangTracer/" stringByAppendingPathComponent:v40];

      v41 = +[NSFileManager defaultManager];
      v60[0] = v33;
      v42 = [v41 copyItemAtPath:v10 toPath:v34 error:v60];
      v43 = v60[0];

      if (v42)
      {
        v44 = +[NSFileManager defaultManager];
        v61[0] = NSFileOwnerAccountName;
        v61[1] = NSFileGroupOwnerAccountName;
        v62[0] = @"mobile";
        v62[1] = @"mobile";
        v45 = [NSDictionary dictionaryWithObjects:v62 forKeys:v61 count:2];
        v59 = v43;
        v46 = [v44 setAttributes:v45 ofItemAtPath:v34 error:&v59];
        v47 = v59;

        if (v46)
        {
          v17 = v57;
          v48 = DRSubmitLog();
          v43 = v47;

          v49 = sub_100001684();
          v50 = os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);
          v9 = v58;
          if (v48)
          {
            if (v50)
            {
              v51 = [v10 lastPathComponent];
              *buf = 138412290;
              v64 = v51;
              v52 = "Post Processing %@: Submitted to Diagnostic Pipeline Successfully";
              v53 = v49;
              v54 = 12;
LABEL_45:
              _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, v52, buf, v54);
            }
          }

          else if (v50)
          {
            v51 = [v10 lastPathComponent];
            *buf = 138412546;
            v64 = v51;
            v65 = 2112;
            v66 = v43;
            v52 = "Post Processing %@: Failed submission to Diagnostic Pipeline due to Error (%@)";
            v53 = v49;
            v54 = 22;
            goto LABEL_45;
          }

LABEL_40:

          v33 = v43;
LABEL_41:

          goto LABEL_42;
        }

        v49 = sub_100001684();
        v9 = v58;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          sub_10003EF04(v34);
        }

        v43 = v47;
      }

      else
      {
        v49 = sub_100001684();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v56 = [v10 lastPathComponent];
          *buf = 138412802;
          v64 = v56;
          v65 = 2112;
          v66 = @"/tmp/HangTracer/";
          v67 = 2112;
          v68 = v43;
          _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "Post Processing %@: Failed to copy tailspin to %@, error (%@)", buf, 0x20u);
        }
      }

      v17 = v57;
      goto LABEL_40;
    }

    v18 = sub_100001684();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10003EFAC();
    }
  }

  else
  {
    v16 = [v11 objectForKeyedSubscript:@"reason"];
    if (v16)
    {
      v17 = v16;
      v18 = @"ApplicationLaunch";
      goto LABEL_22;
    }

    v26 = sub_100001684();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_10003EEC8();
    }

    v18 = @"ApplicationLaunch";
  }

LABEL_42:
}

id sub_100011E70(void *a1)
{
  v1 = a1;
  v2 = [NSArray arrayWithObjects:@"topBlockingProcess", @"topBlockingThreadId", @"topBlockingPid", @"topBlockingTimeMS", @"otherBlockingThreads", @"nextTopBlockingThreadInfo", 0];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v1 objectForKeyedSubscript:v9];
        if (v10)
        {
          if ([v9 isEqual:@"nextTopBlockingThreadInfo"])
          {
            v11 = sub_100011E70(v10);
            [v3 setObject:v11 forKey:v9];
          }

          else
          {
            [v3 setObject:v10 forKey:v9];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

void sub_100012054(uint64_t a1, void *a2)
{
  v3 = a2;
  if (fcntl([v3 fileDescriptor], 50, v17) != -1)
  {
    v4 = [NSString stringWithUTF8String:v17];
    v5 = *(*(a1 + 56) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  [v3 writeData:*(a1 + 32)];
  v7 = [@"\n" dataUsingEncoding:4];
  [v3 writeData:v7];

  [v3 writeData:*(*(*(a1 + 64) + 8) + 40)];
  v8 = *(a1 + 72);
  [v3 fileDescriptor];

  sub_100020198();
  v9 = sub_100001684();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [*(a1 + 40) lastPathComponent];
    v11 = v10;
    v12 = *(*(*(a1 + 56) + 8) + 40);
    if (!v12)
    {
      v12 = *(a1 + 48);
    }

    *buf = 138412546;
    v14 = v10;
    v15 = 2112;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Post-Processing %@: Wrote %@ successfully! (\n", buf, 0x16u);
  }

  if (*(a1 + 96) == 1)
  {
    sub_10000DA84(1, 0, *(a1 + 80), *(a1 + 88));
  }
}

id sub_10001220C(uint64_t a1)
{
  v8[0] = off_10008FDD8;
  v7[0] = off_10008FDC8;
  v7[1] = off_10008FDE0;
  v2 = sub_10000B024(*(a1 + 40));
  v3 = *(a1 + 32);
  v8[1] = v2;
  v8[2] = v3;
  v7[2] = off_10008FDF0;
  v7[3] = off_10008FDE8;
  v4 = [NSNumber numberWithDouble:*(a1 + 48)];
  v8[3] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];

  return v5;
}

id sub_100012320(uint64_t a1)
{
  v9[0] = *(a1 + 32);
  v8[0] = @"EnablementType";
  v8[1] = @"SpindumpSuccessful";
  v2 = [NSNumber numberWithBool:*(a1 + 64)];
  v9[1] = v2;
  v8[2] = @"SpindumpFailureReason";
  v3 = [NSNumber numberWithInteger:*(a1 + 40)];
  v9[2] = v3;
  v8[3] = @"HangSubType";
  v4 = [NSNumber numberWithInteger:*(a1 + 48)];
  v9[3] = v4;
  v8[4] = @"HTBugType";
  v5 = [NSNumber numberWithInteger:*(a1 + 56)];
  v9[4] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:5];

  return v6;
}

intptr_t sub_10001246C(uint64_t a1, int a2)
{
  v4 = sub_100001684();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Successfully augmented tailspin at %@ with symbols", &v8, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10003EFE8(a1);
  }

  return dispatch_semaphore_signal(qword_100090568);
}

id sub_100012550(uint64_t a1)
{
  v4 = @"DurationSec";
  v1 = [NSNumber numberWithDouble:*(a1 + 32)];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

void sub_100012604(uint64_t a1, void *a2)
{
  v3 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:@"StartTime"];
        v10 = [v9 unsignedLongLongValue];

        v11 = [v8 objectForKeyedSubscript:@"EndTime"];
        v12 = [v11 unsignedLongLongValue];

        v13 = [v8 objectForKeyedSubscript:@"CAFenceId"];
        v14 = [v13 unsignedLongLongValue];

        v15 = [v8 objectForKeyedSubscript:@"RecentAppsDict"];
        v3[2](v3, v8, v10, v12, v14, v15);
      }

      v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }
}

void sub_1000127BC(uint64_t a1, uint64_t a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100012850;
  v3[3] = &unk_100085418;
  v5 = a2;
  v2 = *(a1 + 40);
  v4 = *(a1 + 32);
  (*(v2 + 16))(v2, v3);
}

void sub_100012850(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  v11 = a2;
  v12 = a6;
  v14 = (a1 + 40);
  v13 = *(a1 + 40);
  if (*(v13 + 8) == a5 && *v13 >= a3 && *v13 <= a4)
  {
    v16 = *(v13 + 48);
    if (v16)
    {
      v17 = sub_10000BA70(*(a1 + 32), a5, a3, a4);
      [v17 setFenceStartTime:**(a1 + 40)];
      v18 = sub_100001684();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_10003F060(v14);
      }

      goto LABEL_12;
    }

    if ((v16 & 2) != 0)
    {
      v17 = sub_10000BA70(*(a1 + 32), a5, a3, a4);
      [v17 setFenceEndTime:**(a1 + 40)];
      v18 = sub_100001684();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_10003F0D0(v14);
      }

LABEL_12:
    }
  }
}

void sub_100012988(uint64_t a1, uint64_t a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100012A1C;
  v3[3] = &unk_100085418;
  v5 = a2;
  v2 = *(a1 + 40);
  v4 = *(a1 + 32);
  (*(v2 + 16))(v2, v3);
}

void sub_100012A1C(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  v11 = a2;
  v12 = a6;
  v13 = *(a1 + 40);
  if (v13[1] == a5)
  {
    v14 = *v13;
    if (v14 >= a3 && v14 <= a4)
    {
      v16 = sub_10000BA70(*(a1 + 32), a5, a3, a4);
      [v16 setResolution:2];
      v17 = sub_100001684();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        sub_10003F140((a1 + 40));
      }
    }
  }
}

void sub_100012AF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 56);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100012BB8;
  v4[3] = &unk_100085468;
  v8 = a2;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  (*(v3 + 16))(v3, v4);
}

void sub_100012BB8(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  v11 = a2;
  v12 = a6;
  v14 = (a1 + 56);
  v13 = *(a1 + 56);
  if (*(v13 + 16) == a5 && *v13 >= a3 && *v13 <= a4)
  {
    v16 = *(v13 + 88);
    if (v16 == -1)
    {
      v17 = *(v13 + 40);
      v42 = *(a1 + 32);
      v18 = qword_1000903F0;
      if (!qword_1000903F0)
      {
        v19 = objc_alloc_init(NSMutableDictionary);
        v20 = qword_1000903F0;
        qword_1000903F0 = v19;

        v18 = qword_1000903F0;
      }

      v44 = 0;
      v45[0] = &v44;
      v45[1] = 0x2020000000;
      v46 = -1;
      v21 = [NSNumber numberWithUnsignedLongLong:v17];
      v22 = [v18 objectForKeyedSubscript:v21];
      v23 = v22 == 0;

      if (v23)
      {
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v43[2] = sub_100013FA0;
        v43[3] = &unk_100085598;
        v43[4] = &v44;
        v43[5] = v17;
        [v42 enumerateTasks:v43];
        v29 = *(v45[0] + 24);
        if (v29 == -1)
        {
          v30 = sub_100001684();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            v48 = v17;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Null pid in ktrace data: iterated SA threads and did NOT find threadid %llu (or its pid)", buf, 0xCu);
          }

          v29 = *(v45[0] + 24);
        }

        v28 = [NSNumber numberWithInt:v29];
        v31 = qword_1000903F0;
        v32 = [NSNumber numberWithUnsignedLongLong:v17];
        [v31 setObject:v28 forKeyedSubscript:v32];
      }

      else
      {
        v24 = qword_1000903F0;
        v25 = [NSNumber numberWithUnsignedLongLong:v17];
        v26 = [v24 objectForKeyedSubscript:v25];
        v27 = [v26 intValue];
        *(v45[0] + 24) = v27;

        v28 = sub_100001684();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          sub_10003F1B0(v45);
        }
      }

      v16 = *(v45[0] + 24);
      _Block_object_dispose(&v44, 8);

      v13 = *v14;
    }

    v33 = *(v13 + 48);
    if (v33)
    {
      v39 = sub_10000BA70(*(a1 + 40), *(v13 + 16), a3, a4);
      v41 = *(a1 + 56);
      v40 = (a1 + 56);
      v37 = sub_10000BB4C(*(v40 - 1), *(v41 + 16), *(v41 + 8), v16, a3, a4);
      [v37 setHandleStartTime:**v40];
      v38 = sub_100001684();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        sub_10003F234(v14);
      }

      goto LABEL_24;
    }

    if ((v33 & 2) != 0)
    {
      v34 = sub_10000BA70(*(a1 + 40), *(v13 + 16), a3, a4);
      v36 = *(a1 + 56);
      v35 = (a1 + 56);
      v37 = sub_10000BB4C(*(v35 - 1), *(v36 + 16), *(v36 + 8), v16, a3, a4);
      [v37 setHandleEndTime:**v35];
      v38 = sub_100001684();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        sub_10003F2A8(v14);
      }

LABEL_24:
    }
  }
}

void sub_100012FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_100012FDC(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 24);
  ktrace_session_destroy();
  *(*(*(a1 + 40) + 8) + 24) = 0;
  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

uint64_t sub_10001302C(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {
    return ktrace_end();
  }

  return result;
}

void sub_100013048(id *a1, void *a2, _BYTE *a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v8 = a2;
  v97 = a6;
  v9 = sub_100001684();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10003F31C();
  }

  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v10 = a1[4];
  v101 = [v10 countByEnumeratingWithState:&v134 objects:v157 count:16];
  if (v101)
  {
    v106 = 0;
    v103 = 0;
    v109 = 0;
    v98 = *v135;
    v11 = &selRef_setValue_forKey_;
    v99 = v10;
    v100 = v8;
    v105 = a1;
    do
    {
      v12 = 0;
      do
      {
        if (*v135 != v98)
        {
          objc_enumerationMutation(v10);
        }

        v102 = v12;
        v13 = *(*(&v134 + 1) + 8 * v12);
        v130 = 0u;
        v131 = 0u;
        v132 = 0u;
        v133 = 0u;
        v115 = v13;
        obj = [a1[4] objectForKey:?];
        v108 = [obj countByEnumeratingWithState:&v130 objects:v156 count:16];
        if (v108)
        {
          v107 = *v131;
          do
          {
            v14 = 0;
            do
            {
              if (*v131 != v107)
              {
                objc_enumerationMutation(obj);
              }

              v111 = v14;
              v15 = *(*(&v130 + 1) + 8 * v14);
              v16 = [a1[4] objectForKey:v115];
              v110 = v15;
              v17 = [v16 objectForKey:v15];

              v18 = objc_alloc_init(NSMutableArray);
              v126 = 0u;
              v127 = 0u;
              v128 = 0u;
              v129 = 0u;
              v19 = v17;
              v20 = [v19 countByEnumeratingWithState:&v126 objects:v155 count:16];
              if (v20)
              {
                v21 = v20;
                v22 = *v127;
                do
                {
                  for (i = 0; i != v21; i = i + 1)
                  {
                    if (*v127 != v22)
                    {
                      objc_enumerationMutation(v19);
                    }

                    v24 = *(*(&v126 + 1) + 8 * i);
                    v25 = [v19 objectForKey:v24];
                    v26 = [v25 handleEndTime];
                    if (v26 >= [v25 handleStartTime])
                    {
                      v27 = [objc_alloc((v11 + 326)) initWithType:0 andTimestamp:objc_msgSend(v25 andName:{"handleStartTime"), objc_msgSend(v24, "unsignedLongLongValue")}];
                      [v18 addObject:v27];

                      v28 = [objc_alloc((v11 + 326)) initWithType:1 andTimestamp:objc_msgSend(v25 andName:{"handleEndTime"), objc_msgSend(v24, "unsignedLongLongValue")}];
                      [v18 addObject:v28];
                    }
                  }

                  v21 = [v19 countByEnumeratingWithState:&v126 objects:v155 count:16];
                }

                while (v21);
              }

              v29 = [v18 sortedArrayUsingComparator:&stru_100085520];
              v122 = 0u;
              v123 = 0u;
              v124 = 0u;
              v125 = 0u;
              v30 = [v29 countByEnumeratingWithState:&v122 objects:v154 count:16];
              v112 = v18;
              if (v30)
              {
                v31 = v30;
                v120 = 0;
                v32 = 0;
                v33 = 0;
                v34 = *v123;
                v113 = v29;
                do
                {
                  for (j = 0; j != v31; j = j + 1)
                  {
                    if (*v123 != v34)
                    {
                      objc_enumerationMutation(v29);
                    }

                    v36 = *(*(&v122 + 1) + 8 * j);
                    if (![v36 type])
                    {
                      if (!v32)
                      {
                        v120 = [v36 timestamp];
                      }

                      ++v32;
                      v37 = sub_100001684();
                      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
                      {
                        v117 = v33;
                        v44 = [v115 intValue];
                        v45 = [v36 timestamp];
                        v46 = [v36 name];
                        *buf = 67109888;
                        *v139 = v44;
                        v33 = v117;
                        *&v139[4] = 2048;
                        *&v139[6] = v45;
                        v29 = v113;
                        *&v139[14] = 1024;
                        *&v139[16] = v32;
                        *&v139[20] = 2048;
                        *&v139[22] = v46;
                        _os_log_debug_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "pid(%i): Grab handle time=%llu count=>%i handle=%llu", buf, 0x22u);
                      }
                    }

                    if ([v36 type] == 1)
                    {
                      if (!--v32)
                      {
                        v33 += [v36 timestamp] - v120;
                        v38 = sub_100001684();
                        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
                        {
                          v118 = v33;
                          v47 = [v115 intValue];
                          v48 = ([v36 timestamp] - v120);
                          v49 = [v36 name];
                          *buf = 67109888;
                          *v139 = v47;
                          v33 = v118;
                          *&v139[4] = 2048;
                          *&v139[6] = v48;
                          v29 = v113;
                          *&v139[14] = 2048;
                          *&v139[16] = v118;
                          *&v139[24] = 2048;
                          *&v139[26] = v49;
                          _os_log_debug_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "pid(%i): Dropping last handle! Save time holding handle += %llu (total for pid now = %llu handle=%llu", buf, 0x26u);
                        }
                      }

                      v39 = sub_100001684();
                      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
                      {
                        v40 = v33;
                        v41 = [v115 intValue];
                        v42 = [v36 timestamp];
                        v43 = [v36 name];
                        *buf = 67109888;
                        *v139 = v41;
                        v33 = v40;
                        *&v139[4] = 2048;
                        *&v139[6] = v42;
                        v18 = v112;
                        v29 = v113;
                        *&v139[14] = 1024;
                        *&v139[16] = v32;
                        *&v139[20] = 2048;
                        *&v139[22] = v43;
                        _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "pid(%i): Drop handle time=%llu count=>%i handle=%llu", buf, 0x22u);
                      }
                    }
                  }

                  v31 = [v29 countByEnumeratingWithState:&v122 objects:v154 count:16];
                }

                while (v31);
              }

              else
              {
                v33 = 0;
              }

              v50 = sub_100001684();
              if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
              {
                v53 = v33;
                v54 = [v110 longLongValue];
                v55 = [v115 intValue];
                *buf = 134218496;
                *v139 = v54;
                v33 = v53;
                v18 = v112;
                *&v139[8] = 1024;
                *&v139[10] = v55;
                *&v139[14] = 2048;
                *&v139[16] = v33;
                _os_log_debug_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEBUG, "fence=%lli pid=%i total_time=%lli", buf, 0x1Cu);
              }

              v11 = &selRef_setValue_forKey_;
              if (v33 >= v109)
              {
                v103 = [v115 intValue];
                v51 = v110;

                v52 = sub_100001684();
                if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
                {
                  v56 = v33;
                  v57 = [v51 longLongValue];
                  v58 = [v115 intValue];
                  *buf = 134218240;
                  *v139 = v57;
                  v33 = v56;
                  v18 = v112;
                  *&v139[8] = 1024;
                  *&v139[10] = v58;
                  _os_log_debug_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEBUG, "fence=%lli pid=%i is the new slowest fence pid", buf, 0x12u);
                }

                v106 = v51;
                v109 = v33;
              }

              a1 = v105;

              v14 = v111 + 1;
            }

            while ((v111 + 1) != v108);
            v108 = [obj countByEnumeratingWithState:&v130 objects:v156 count:16];
          }

          while (v108);
        }

        v12 = v102 + 1;
        v10 = v99;
        v8 = v100;
      }

      while ((v102 + 1) != v101);
      v101 = [v99 countByEnumeratingWithState:&v134 objects:v157 count:16];
    }

    while (v101);

    if (v106)
    {
      v59 = [NSString stringWithFormat:@"%i", v103];
      v60 = [v97 objectForKeyedSubscript:v59];

      if (!v60)
      {
        v61 = sub_100001684();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Targent Fence PID not found in recentAppsPaths Dict, trying pathForPid", buf, 2u);
        }

        v62 = sub_10000A62C();
        if (v62)
        {
          v60 = v62;
        }

        else
        {
          v64 = [a1[5] tasksByPid];
          v65 = [NSNumber numberWithInt:v103];
          v66 = [v64 objectForKeyedSubscript:v65];
          v67 = [v66 lastObject];
          v60 = [v67 mainBinaryPath];
        }
      }

      v68 = sub_100001684();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *v139 = v60;
        *&v139[8] = 1024;
        *&v139[10] = v103;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_INFO, "Target Process Path: %@ (pid: %i)", buf, 0x12u);
      }

      v69 = [a1[6] objectForKey:v106];
      v119 = [v69 fenceStartTime];

      v70 = [a1[6] objectForKey:v106];
      v71 = [v70 fenceResolutionTime];

      v121 = v71;
      v72 = v71 - v119;
      v73 = [a1[6] objectForKey:v106];
      v74 = [v73 resolution];

      if (v74 == 2)
      {
        v75 = @"blown-fence";
      }

      else
      {
        v75 = @"long-fence";
      }

      v76 = [a1[6] objectForKey:v106];
      if ([v76 fenceResolutionTime] == a4)
      {
      }

      else
      {
        v77 = [a1[6] objectForKey:v106];
        v78 = [v77 fenceStartTime];

        if (v78 != a3)
        {
          v79 = &stru_100085FF8;
          goto LABEL_75;
        }
      }

      v79 = @"~";
LABEL_75:
      v80 = [v60 lastPathComponent];
      v81 = sub_10000B548(v109);
      v116 = [NSString stringWithFormat:@"Fence-hang-%@: %ims handling fence, %@ (fence duration=%@%ims)", v80, v81, v75, v79, sub_10000B548(v72)];

      v82 = sub_10000AA30(v60);
      AnalyticsSendEventLazy();
      v83 = sub_10000ADAC();
      v84 = v119;
      v85 = v121;
      sub_10000AEBC(@"Blown CA Fence Hang", v82, v119, v121, v83);

      v86 = sub_100001684();
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        v114 = [v100 objectForKeyedSubscript:@"PID"];
        v87 = [v114 intValue];
        v88 = [v100 objectForKeyedSubscript:@"ProcessPath"];
        v89 = sub_10000B548(a4 - a3);
        v90 = sub_10000B548(v72);
        v91 = [v100 objectForKeyedSubscript:@"Reason"];
        *buf = 67111938;
        *v139 = v87;
        *&v139[4] = 1024;
        *&v139[6] = v103;
        *&v139[10] = 2112;
        *&v139[12] = v88;
        *&v139[20] = 2112;
        *&v139[22] = v60;
        *&v139[30] = 2048;
        *&v139[32] = a3;
        v140 = 2048;
        v141 = v119;
        v142 = 2048;
        v143 = a4;
        v144 = 2048;
        v84 = v119;
        v145 = v121;
        v146 = 1024;
        v147 = v89;
        v148 = 1024;
        v149 = v90;
        v150 = 2112;
        v151 = v91;
        v152 = 2112;
        v153 = v116;
        _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "Updated fence hang info: pid=%i->%i path=%@->%@ target_start=%llu->%llu, target_end=%llu->%llu (duration=%i->%i ms); %@->%@", buf, 0x6Au);

        v85 = v121;
      }

      v92 = [NSNumber numberWithInt:v103];
      v8 = v100;
      [v100 setObject:v92 forKeyedSubscript:@"PID"];

      v93 = [NSNumber numberWithUnsignedLongLong:v84];
      [v100 setObject:v93 forKeyedSubscript:@"StartTime"];

      v94 = [NSNumber numberWithUnsignedLongLong:v85];
      [v100 setObject:v94 forKeyedSubscript:@"EndTime"];

      [v100 setObject:v116 forKeyedSubscript:@"Reason"];
      [v100 setObject:v60 forKeyedSubscript:@"ProcessPath"];
      [v100 setObject:&__kCFBooleanTrue forKeyedSubscript:@"FenceInfoUpdated"];
      ++*(*(v105[7] + 1) + 24);

      v63 = v106;
      goto LABEL_78;
    }
  }

  else
  {
  }

  v63 = sub_100001684();
  if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
  {
    sub_10003F38C();
  }

LABEL_78:
}

int64_t sub_100013E18(id a1, HRHandleStateChange *a2, HRHandleStateChange *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(HRHandleStateChange *)v4 timestamp];
  if (v6 <= [(HRHandleStateChange *)v5 timestamp])
  {
    v8 = [(HRHandleStateChange *)v4 timestamp];
    if (v8 >= [(HRHandleStateChange *)v5 timestamp])
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

id sub_100013E9C(uint64_t a1)
{
  v6[0] = off_10008FDC8;
  v6[1] = off_10008FDE0;
  v7[0] = off_10008FDD0;
  v7[1] = @"Blown CA Fence Hang";
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v7[2] = v2;
  v6[2] = off_10008FDF0;
  v6[3] = off_10008FDE8;
  v3 = [NSNumber numberWithDouble:sub_10000B548(v1)];
  v7[3] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:4];

  return v4;
}

void sub_100013FA0(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [v5 threads];
  v7 = [NSNumber numberWithUnsignedLongLong:*(a1 + 40)];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (v8)
  {
    *(*(*(a1 + 32) + 8) + 24) = [v5 pid];
    v9 = sub_100001684();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_10003F3C8((a1 + 40));
    }

    *a3 = 1;
  }
}

int64_t sub_100014080(id a1, FileWithAttributes *a2, FileWithAttributes *a3)
{
  v4 = a3;
  v5 = [(FileWithAttributes *)a2 creationDate];
  v6 = [(FileWithAttributes *)v4 creationDate];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_1000140F0(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) readDataOfLength:0x4000];
  if ([v3 length])
  {
    do
    {
      [v5 writeData:v3];
      v4 = [*(a1 + 32) readDataOfLength:0x4000];

      v3 = v4;
    }

    while ([v4 length]);
  }

  else
  {
    v4 = v3;
  }

  [*(a1 + 32) closeFile];
}

uint64_t **sub_100014230@<X0>(uint64_t **result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*result + 22);
  v4 = (*result)[5];
  v5 = **result;
  v6 = (*result)[1];
  return result;
}

uint64_t *sub_10001429C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void sub_1000142A8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

void sub_1000142CC(uint64_t *a1@<X8>)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *(a1 + 22);
  v4 = a1[5];
  v5 = *a1;
}

void sub_1000147A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000147B8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([v6 unsignedLongLongValue] < *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 32) = [v6 unsignedLongLongValue];
    *a4 = 1;
  }
}

__CFString *sub_1000153B0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [v3 tasksByPid];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v7)
  {

LABEL_13:
    v9 = @"unknown";
    goto LABEL_14;
  }

  v8 = v7;
  v17 = v3;
  v9 = 0;
  v10 = *v19;
  do
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v19 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v18 + 1) + 8 * i);
      v13 = [v12 name];
      v14 = [v13 isEqualToString:@"xpcproxy"];

      if ((v14 & 1) == 0)
      {
        v15 = [v12 name];

        v9 = v15;
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v8);

  v3 = v17;
  if (!v9)
  {
    goto LABEL_13;
  }

LABEL_14:

  return v9;
}

id sub_100016D78(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [NSNumber numberWithUnsignedLongLong:a3];
  v8 = [v6 objectForKeyedSubscript:v7];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = [v5 tasksByPid];
  v10 = [v9 objectForKeyedSubscript:v8];

  v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v23 = v8;
    v24 = v6;
    v25 = v5;
    v13 = *v27;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        v16 = [v15 threads];
        v17 = [NSNumber numberWithUnsignedLongLong:a3];
        v18 = [v16 objectForKeyedSubscript:v17];

        if (v18)
        {
          v20 = [v15 threads];
          v21 = [NSNumber numberWithUnsignedLongLong:a3];
          v19 = [v20 objectForKeyedSubscript:v21];

          goto LABEL_11;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

    v19 = 0;
LABEL_11:
    v6 = v24;
    v5 = v25;
    v8 = v23;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

void sub_100017494(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

id sub_1000174B4(uint64_t a1, void *a2)
{
  v21 = 0;
  v22[0] = &v21;
  v22[1] = 0x3032000000;
  v22[2] = sub_1000178B0;
  v22[3] = sub_1000178C0;
  v23 = &stru_100085FF8;
  if (ktrace_file_open())
  {
    v20[1] = _NSConcreteStackBlock;
    v20[2] = 3221225472;
    v20[3] = sub_1000178C8;
    v20[4] = &unk_100085708;
    v20[5] = &v21;
    v4 = ktrace_file_iterate();
    ktrace_file_close();
    if (v4)
    {
      v5 = sub_100001684();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = strerror(v4);
        sub_10003F758(v6, buf, v5);
      }

      if (a2)
      {
        v7 = [NSString stringWithFormat:@"Error iterating over tailspin file: %s", strerror(v4)];
        *a2 = sub_10000AAE4(5, v7);
      }

      goto LABEL_11;
    }

    v12 = [*(v22[0] + 40) dataUsingEncoding:4];
    if (v12)
    {
      v20[0] = 0;
      v13 = [NSJSONSerialization JSONObjectWithData:v12 options:1 error:v20];
      v14 = v20[0];
      v15 = v14;
      if (!v13 || v14)
      {
        v18 = sub_100001684();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_10003F7A0();
        }

        if (a2)
        {
          sub_10000AAE4(5, @"Error deserializing JSON from tailspin reason string");
          *a2 = v11 = 0;
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v13;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = objc_alloc_init(NSMutableArray);
            [v16 addObject:v13];
          }

          else
          {
            v16 = 0;
          }
        }

        v11 = v16;
      }
    }

    else
    {
      v17 = sub_100001684();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10003F814(v22, v17);
      }

      if (a2)
      {
        sub_10000AAE4(5, @"Error creating JSON data from reason string");
        *a2 = v11 = 0;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    if (!a2)
    {
LABEL_11:
      v11 = 0;
      goto LABEL_33;
    }

    v8 = sub_100001684();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = __error();
      v10 = strerror(*v9);
      sub_10003F894(v10, buf, a1, v8);
    }

    sub_10000AAE4(5, @"Could not open tailspin file for parsing reason string");
    *a2 = v11 = 0;
  }

LABEL_33:
  _Block_object_dispose(&v21, 8);

  return v11;
}

void sub_10001786C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000178B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000178C8(uint64_t a1)
{
  v2 = ktrace_chunk_tag();
  v3 = ktrace_chunk_version_major();
  if (ktrace_config_create())
  {
    reason = ktrace_config_get_reason();
    if (reason)
    {
      v5 = [NSString stringWithUTF8String:reason];
      v6 = *(*(a1 + 32) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      ktrace_config_destroy();
      return 0;
    }

    ktrace_config_destroy();
  }

  result = 1;
  if (v2 == 36867 && v3 <= 1)
  {
    v9 = ktrace_chunk_size();
    v10 = [[NSData alloc] initWithBytesNoCopy:ktrace_chunk_map_data() length:v9 freeWhenDone:0];
    v11 = [NSPropertyListSerialization propertyListWithData:v10 options:0 format:0 error:0];
    v12 = [v11 objectForKeyedSubscript:UnsafePointer];
    v13 = *(*(a1 + 32) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    ktrace_chunk_unmap_data();
    return 0;
  }

  return result;
}

id sub_100017A28(void *a1, void *a2)
{
  v3 = a1;
  v45 = a2;
  v4 = sub_100001684();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Getting processing hangs", buf, 2u);
  }

  if (v45)
  {
    v5 = v45;
  }

  else
  {
    v5 = @"/var/root/Library/Caches/hangtracerd/spool";
  }

  v6 = [NSURL fileURLWithPath:v5 isDirectory:1];
  v7 = +[NSFileManager defaultManager];
  v62 = 0;
  v43 = v6;
  v8 = [v7 contentsOfDirectoryAtURL:v6 includingPropertiesForKeys:0 options:0 error:&v62];
  v42 = v62;

  v9 = [v8 sortedArrayUsingComparator:&stru_100085800];

  v44 = v3;
  if (v3)
  {
    reply = xpc_dictionary_create_reply(v3);
  }

  else
  {
    reply = xpc_dictionary_create_empty();
  }

  xdict = reply;
  xarray = xpc_array_create_empty();
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v9;
  v11 = [obj countByEnumeratingWithState:&v58 objects:v74 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v59;
    v46 = *v59;
    do
    {
      v14 = 0;
      v47 = v12;
      do
      {
        if (*v59 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v58 + 1) + 8 * v14);
        v16 = [v15 lastPathComponent];
        v17 = [v16 hasSuffix:@"tailspin"];

        if (v17)
        {
          v18 = [v15 path];
          v19 = sub_1000174B4([v18 UTF8String], 0);

          if (v19)
          {
            v49 = v19;
            v50 = v14;
            v56 = 0u;
            v57 = 0u;
            v54 = 0u;
            v55 = 0u;
            v53 = v19;
            v20 = [v53 countByEnumeratingWithState:&v54 objects:v73 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v55;
              v52 = *v55;
              do
              {
                for (i = 0; i != v21; i = i + 1)
                {
                  if (*v55 != v22)
                  {
                    objc_enumerationMutation(v53);
                  }

                  v24 = *(*(&v54 + 1) + 8 * i);
                  empty = xpc_dictionary_create_empty();
                  v26 = [v24 objectForKeyedSubscript:@"HangNotificationUUID"];

                  if (v26)
                  {
                    v27 = [v24 objectForKeyedSubscript:@"HangNotificationUUID"];
                    xpc_dictionary_set_string(empty, [@"hangtracer.hangid" UTF8String], objc_msgSend(v27, "UTF8String"));
                    v28 = [v24 objectForKeyedSubscript:@"ProcessPath"];

                    if (v28)
                    {
                      v29 = [v24 objectForKeyedSubscript:@"ProcessPath"];
                      xpc_dictionary_set_string(empty, [@"hangtracer.process_path" UTF8String], objc_msgSend(v29, "UTF8String"));
                      v30 = sub_10000AA30(v29);
                      xpc_dictionary_set_string(empty, [@"hangtracer.bundle_id" UTF8String], objc_msgSend(v30, "UTF8String"));
                      v31 = [v24 objectForKeyedSubscript:@"StartTime"];
                      if (v31)
                      {
                        v32 = [v24 objectForKeyedSubscript:@"EndTime"];

                        if (v32)
                        {
                          v33 = [v24 objectForKeyedSubscript:@"StartTime"];
                          v34 = [v33 unsignedLongLongValue];

                          v35 = [v24 objectForKeyedSubscript:@"EndTime"];
                          v36 = [v35 unsignedLongLongValue];

                          v31 = [NSString stringWithFormat:@"%.0f", sub_10000B548(v36 - v34)];
                          xpc_dictionary_set_string(empty, [@"hangtracer.duration" UTF8String], objc_msgSend(v31, "UTF8String"));
                        }

                        else
                        {
                          v31 = 0;
                        }
                      }

                      v37 = [v24 objectForKeyedSubscript:@"CreatedAt"];

                      if (v37)
                      {
                        v38 = [v24 objectForKeyedSubscript:@"CreatedAt"];
                        xpc_dictionary_set_string(empty, [@"hangtracer.created_at" UTF8String], objc_msgSend(v38, "UTF8String"));
                      }

                      else
                      {
                        v38 = 0;
                      }

                      v39 = sub_100001684();
                      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138413314;
                        v64 = v29;
                        v65 = 2112;
                        v66 = v30;
                        v67 = 2112;
                        v68 = v27;
                        v69 = 2112;
                        v70 = v31;
                        v71 = 2112;
                        v72 = v38;
                        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "createProcessingHangsReply: adding hang info - processPath %@, bundleID %@, hangUUID %@, duration %@, createdAt %@", buf, 0x34u);
                      }

                      xpc_array_append_value(xarray, empty);
                      v22 = v52;
                    }
                  }

                  else
                  {
                    v27 = 0;
                  }
                }

                v21 = [v53 countByEnumeratingWithState:&v54 objects:v73 count:16];
              }

              while (v21);
            }

            v13 = v46;
            v12 = v47;
            v19 = v49;
            v14 = v50;
          }
        }

        v14 = v14 + 1;
      }

      while (v14 != v12);
      v12 = [obj countByEnumeratingWithState:&v58 objects:v74 count:16];
    }

    while (v12);
  }

  xpc_dictionary_set_value(xdict, off_10008FE00, xarray);

  return xdict;
}

void sub_1000180F8()
{
  v0 = sub_100001684();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Starting hangreporter service", v4, 2u);
  }

  if (qword_1000903F8)
  {
    sub_10003F8EC();
  }

  if (qword_100090408 != -1)
  {
    sub_10003F918();
  }

  v1 = qword_100090400;
  mach_service = xpc_connection_create_mach_service("com.apple.hangreporter", v1, 1uLL);
  v3 = qword_1000903F8;
  qword_1000903F8 = mach_service;

  xpc_connection_set_event_handler(qword_1000903F8, &stru_100085748);
  xpc_connection_resume(qword_1000903F8);
}

void sub_1000181D4(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  type = xpc_get_type(v2);
  if (type == &_xpc_type_connection)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000183B4;
    handler[3] = &unk_100085770;
    v6 = v2;
    v10 = v6;
    xpc_connection_set_event_handler(v6, handler);
    xpc_connection_resume(v6);
  }

  else
  {
    if (type == &_xpc_type_rich_error)
    {
      v4 = xpc_rich_error_copy_description(v2);
      v5 = sub_100001684();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        sub_10003F9A8();
      }
    }

    else
    {
      v4 = xpc_copy_description(v2);
      v5 = sub_100001684();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        sub_10003F940();
      }
    }

    free(v4);
    if (v2 == &_xpc_error_connection_invalid)
    {
      v7 = xpc_connection_copy_invalidation_reason();
      v8 = sub_100001684();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v12 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "invalidation reason: %s", buf, 0xCu);
      }

      free(v7);
    }
  }
}

void sub_1000183B4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    v6 = *(a1 + 32);
    v7 = v3;
    string = xpc_dictionary_get_string(v7, off_10008FDF8);
    if (string && !strcmp(string, off_10008FE08))
    {
      v11 = sub_100017A28(v7, 0);
      if (v11)
      {
        v12 = v11;
        xpc_connection_send_message(v6, v11);
      }
    }

    else
    {
      v9 = xpc_copy_description(v7);
      v10 = sub_100001684();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        sub_10003FA10();
      }

      free(v9);
    }
  }

  else
  {
    v4 = xpc_copy_description(v3);
    v5 = sub_100001684();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v13 = 136315138;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Encountered non-dictionary event: %s", &v13, 0xCu);
    }

    free(v4);
  }
}

void sub_100018550()
{
  v0 = +[NSDistributedNotificationCenter defaultCenter];
  [v0 postNotificationName:@"com.apple.hangreporter.didSaveTailspin" object:0];
}

id sub_1000185A8(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:@"EndTime"];
  v6 = [v5 unsignedLongLongValue];

  v7 = [v4 objectForKeyedSubscript:@"HangType"];
  v8 = [v7 intValue];

  if ((v8 | 8) == 0xA)
  {
    v9 = [v4 objectForKeyedSubscript:@"PID"];
    [v9 unsignedIntValue];

    v10 = [v4 objectForKeyedSubscript:@"StartTime"];
    [v10 unsignedLongLongValue];

    [v3 UTF8String];
    if (ktrace_file_open())
    {
      v26 = 0;
      if (ktrace_file_latest_timestamp())
      {
        v11 = sub_100001684();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          sub_10003FA78();
        }

LABEL_6:

        ktrace_file_close();
        goto LABEL_39;
      }

      if (ktrace_file_earliest_timestamp())
      {
        v11 = sub_100001684();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          sub_10003FAE0();
        }

        goto LABEL_6;
      }

      if (v6)
      {
        ktrace_session_create();
        ktrace_session_set_event_names_enabled();
        ktrace_set_execnames_enabled();
        ktrace_set_uuid_map_enabled();
        ktrace_set_walltimes_enabled();
        ktrace_set_vnode_paths_enabled();
        ktrace_set_thread_groups_enabled();
        ktrace_set_thread_cputime_enabled();
        ktrace_set_jetsam_coalitions_enabled();
        ktrace_set_coprocessor_tracing_enabled();
        ktrace_set_remotetime_conversion_enabled();
        ktrace_session_set_event_names_enabled();
        if (ktrace_set_ktrace_file())
        {
          v13 = sub_100001684();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            sub_10003FB48();
          }

          ktrace_file_close();
          ktrace_session_destroy();
        }

        else
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          v34 = 0;
          ktrace_events_single();
          v15 = dispatch_semaphore_create(0);
          ktrace_set_completion_handler();
          v16 = dispatch_get_global_queue(0, 0);
          v17 = ktrace_start();

          if (v17)
          {
            v18 = sub_100001684();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
            {
              sub_10003FBB0();
            }

            ktrace_session_destroy();
          }

          else
          {
            v19 = dispatch_time(0, 100000000000);
            if (dispatch_semaphore_wait(v15, v19))
            {
              v20 = sub_100001684();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                sub_10003FC18(v20);
              }

              ktrace_end();
            }

            ktrace_session_destroy();
            if (*(*&buf[8] + 24))
            {
              v21 = sub_100001684();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
              {
                v22 = *(*&buf[8] + 24);
                *v27 = 134218496;
                v28 = v6;
                v29 = 2048;
                v30 = v26;
                v31 = 2048;
                v32 = v22;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Hang timed out at %llu completed before tailspin was saved at %llu, using hang completion time %llu", v27, 0x20u);
              }

              v23 = (*&buf[8] + 24);
            }

            else
            {
              v24 = sub_100001684();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
              {
                *v27 = 134218240;
                v28 = v6;
                v29 = 2048;
                v30 = v26;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Hang timed out at %llu did not complete before tailspin was saved at %llu, using tailspin end time", v27, 0x16u);
              }

              v23 = &v26;
            }

            v6 = *v23;
          }

          _Block_object_dispose(buf, 8);
        }
      }

      else
      {
        v14 = sub_100001684();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          *&buf[4] = v6;
          *&buf[12] = 2048;
          *&buf[14] = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Hang ending at %llu does not overlap tailspin data starting at %llu, using hang completion time", buf, 0x16u);
        }

        ktrace_file_close();
      }
    }

    else
    {
      v12 = sub_100001684();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        sub_10003FC5C(v3, v12);
      }
    }
  }

LABEL_39:

  return v6;
}

void sub_100018BF0(uint64_t a1, uint64_t a2)
{
  pid_for_thread = *(a2 + 88);
  if (pid_for_thread == -1)
  {
    v5 = *(a1 + 40);
    v6 = *(a2 + 40);
    pid_for_thread = ktrace_get_pid_for_thread();
  }

  if (pid_for_thread == *(a1 + 64))
  {
    v7 = *(a2 + 8);
    if (v7 < *(a1 + 48))
    {
      v8 = *(a2 + 16);
      v9 = *(a1 + 56);
      if (v8 > v9)
      {
        if (v7 == v9)
        {
          v10 = *(*(a1 + 32) + 8);
          if (!*(v10 + 24))
          {
            *(v10 + 24) = v8;
            return;
          }

          v11 = sub_100001684();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = *(*(*(a1 + 32) + 8) + 24);
            v14 = *(a1 + 48);
            v13 = *(a1 + 56);
            v17 = 134218752;
            v18 = v13;
            v19 = 2048;
            v20 = v12;
            v21 = 2048;
            v22 = v8;
            v23 = 2048;
            v24 = v14;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Two overlapping hangs: start:%llu end1:%llu end2:%llu metadataEnd:%llu", &v17, 0x2Au);
          }
        }

        else
        {
          v11 = sub_100001684();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
          {
            v16 = *(a1 + 48);
            v15 = *(a1 + 56);
            v17 = 134218752;
            v18 = v7;
            v19 = 2048;
            v20 = v8;
            v21 = 2048;
            v22 = v15;
            v23 = 2048;
            v24 = v16;
            _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "Overlapping hang has mismatched start time: event:%llu-%llu vs metadata:%llu-%llu", &v17, 0x2Au);
          }
        }
      }
    }
  }
}

int64_t sub_100018DAC(id a1, NSURL *a2, NSURL *a3)
{
  v4 = a3;
  v5 = [(NSURL *)a2 lastPathComponent];
  v6 = [(NSURL *)v4 lastPathComponent];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_100018E1C(id a1)
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v1 = dispatch_queue_create("com.apple.hangreporter.service", v3);
  v2 = qword_100090400;
  qword_100090400 = v1;
}

void sub_100018E9C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x12u);
}

void sub_100018EBC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

CFDictionaryRef sub_100018ED8()
{
  IndirectionTableStatistics = ASP_GetIndirectionTableStatistics();

  return IndirectionTableStatistics;
}

id sub_100018F00()
{
  v0 = 40 * vm_page_size;
  v7 = 40 * vm_page_size;
  v1 = malloc_type_valloc(40 * vm_page_size, 0x2E1DB155uLL);
  if (v1 || (v0 = 4 * vm_page_size, v7 = 4 * vm_page_size, (v1 = malloc_type_valloc(4 * vm_page_size, 0x6D1B22FAuLL)) != 0))
  {
    v2 = v1;
    snapshot = nand_get_snapshot(0, v1, v0, &v7);
    if (snapshot)
    {
      NSLog(@"Failed to get snapshot buffer, status 0x%x\n", snapshot);
      v4 = 0;
    }

    else
    {
      v8 = @"NANDSnapshot";
      v5 = [NSString stringWithCString:v2 encoding:1];
      v9 = v5;
      v4 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    }

    free(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_100019534(uint64_t a1)
{
  if (a1 >= 0x2B)
  {
    v2 = [NSString stringWithFormat:@"%d", a1];
  }

  else
  {
    v2 = *(&off_100085840 + a1);
  }

  return v2;
}

id sub_1000195A4(uint64_t a1)
{
  if ((a1 - 1) >= 0x1F)
  {
    v2 = [NSString stringWithFormat:@"SIG%d", a1];
  }

  else
  {
    v2 = *(&off_100085998 + (a1 - 1));
  }

  return v2;
}

__CFString *sub_100019618(uint64_t a1)
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

__CFString *sub_100019850(uint64_t a1)
{
  if (a1 > 3221229822)
  {
    if (a1 <= 3306925314)
    {
      switch(a1)
      {
        case 3221229823:
          v2 = @"thermal pressure";

          return v2;
        case 3306925313:
          v2 = @"cpu violation";

          return v2;
        case 3306925314:
          v2 = @"walltime violation";

          return v2;
      }
    }

    else if (a1 > 3735943696)
    {
      if (a1 == 3735943697)
      {
        v2 = @"user quit";

        return v2;
      }

      if (a1 == 4227595259)
      {
        v2 = @"force quit";

        return v2;
      }
    }

    else
    {
      if (a1 == 3306925315)
      {
        v2 = @"system busy";

        return v2;
      }

      if (a1 == 3735883980)
      {
        v2 = @"resource exclusion";

        return v2;
      }
    }

LABEL_62:
    v2 = [NSString stringWithFormat:@"%#llx", a1];

    return v2;
  }

  if (a1 <= 1539435072)
  {
    switch(a1)
    {
      case 95805101:
        v2 = @"application assertion";

        return v2;
      case 439025681:
        v2 = @"input ui scene";

        return v2;
      case 732775916:
        v2 = @"secure draw violation";

        return v2;
    }

    goto LABEL_62;
  }

  if (a1 > 1539435076)
  {
    if (a1 == 1539435077)
    {
      v2 = @"legacy clear the board";

      return v2;
    }

    if (a1 == 2343432205)
    {
      v2 = @"watchdog";

      return v2;
    }

    goto LABEL_62;
  }

  if (a1 != 1539435073)
  {
    if (a1 == 1539435076)
    {
      v2 = @"clear the board";

      return v2;
    }

    goto LABEL_62;
  }

  v2 = @"languages changed";

  return v2;
}

id sub_100019B18(uint64_t a1)
{
  if ((a1 - 1) >= 4)
  {
    v2 = [NSString stringWithFormat:@"%d", a1];
  }

  else
  {
    v2 = *(&off_100085A90 + (a1 - 1));
  }

  return v2;
}

id sub_100019B8C(uint64_t a1)
{
  if ((a1 - 1) >= 0x13)
  {
    v2 = [NSString stringWithFormat:@"%d", a1];
  }

  else
  {
    v2 = *(&off_100085AB0 + (a1 - 1));
  }

  return v2;
}

id sub_100019C00(uint64_t a1)
{
  if ((a1 - 1) >= 5)
  {
    v2 = [NSString stringWithFormat:@"%d", a1];
  }

  else
  {
    v2 = *(&off_100085B48 + (a1 - 1));
  }

  return v2;
}

id sub_100019C74(uint64_t a1)
{
  if ((a1 - 1) >= 9)
  {
    v2 = [NSString stringWithFormat:@"%u", a1];
  }

  else
  {
    v2 = *(&off_100085B70 + (a1 - 1));
  }

  return v2;
}

id sub_100019CE8(uint64_t a1)
{
  v2 = a1 - 1;
  if (a1 - 1) < 9 && ((0x17Fu >> v2))
  {
    v3 = *(&off_100085BB8 + v2);
  }

  else
  {
    v3 = [NSString stringWithFormat:@"%llu", a1];
  }

  return v3;
}

__CFString *sub_100019D68(uint64_t a1)
{
  if (a1 <= 2343432204)
  {
    if (a1 <= 562215633)
    {
      switch(a1)
      {
        case 0:
          v2 = @"none";

          return v2;
        case 97132013:
          v2 = @"conditions changed";

          return v2;
        case 562215597:
          v2 = @"assertion timeout";

          return v2;
      }
    }

    else
    {
      if (a1 <= 562215635)
      {
        if (a1 == 562215634)
        {
          v2 = @"background task assertion timeout";
        }

        else
        {
          v2 = @"background url session completion timeout";
        }

        return v2;
      }

      if (a1 == 562215636)
      {
        v2 = @"background fetch completion timeout";

        return v2;
      }

      if (a1 == 732775916)
      {
        v2 = @"security violation";

        return v2;
      }
    }

LABEL_63:
    v2 = [NSString stringWithFormat:@"%#llx", a1];

    return v2;
  }

  if (a1 > 3490524076)
  {
    if (a1 > 3735905537)
    {
      if (a1 == 3735905538)
      {
        v2 = @"termination assertion";

        return v2;
      }

      if (a1 == 3735943697)
      {
        v2 = @"user initiated quit";

        return v2;
      }
    }

    else
    {
      if (a1 == 3490524077)
      {
        v2 = @"max assertions violation";

        return v2;
      }

      if (a1 == 3735883980)
      {
        v2 = @"resource exclusion";

        return v2;
      }
    }

    goto LABEL_63;
  }

  if (a1 > 2970726672)
  {
    if (a1 == 2970726673)
    {
      v2 = @"process exited";

      return v2;
    }

    if (a1 == 3221229823)
    {
      v2 = @"thermal pressure";

      return v2;
    }

    goto LABEL_63;
  }

  if (a1 != 2343432205)
  {
    if (a1 == 2970405393)
    {
      v2 = @"max states violation";

      return v2;
    }

    goto LABEL_63;
  }

  v2 = @"watchdog violation";

  return v2;
}

id sub_10001A060(uint64_t a1)
{
  if ((a1 - 1) >= 5)
  {
    v2 = [NSString stringWithFormat:@"%llu", a1];
  }

  else
  {
    v2 = *(&off_100085C00 + a1 - 1);
  }

  return v2;
}

id sub_10001A0D4(uint64_t a1)
{
  v1 = a1 - 1;
  if (a1 - 1) < 5 && ((0x1Du >> v1))
  {
    v2 = *(&off_100085C28 + v1);
  }

  else
  {
    v3 = sub_10001A060(a1);
    v2 = [v3 capitalizedString];
  }

  return v2;
}

id sub_10001A148(uint64_t a1)
{
  if ((a1 - 1) >= 3)
  {
    v2 = [NSString stringWithFormat:@"%llu", a1];
  }

  else
  {
    v2 = *(&off_100085C50 + a1 - 1);
  }

  return v2;
}

__CFString *sub_10001A1BC(uint64_t a1)
{
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v2 = @"service timeout";
    }

    else
    {
      if (a1 != 2)
      {
LABEL_22:
        v2 = [NSString stringWithFormat:@"%llu", a1];

        return v2;
      }

      v2 = @"timeout no diags";
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        v2 = @"unblock deadlock";

        break;
      case 4:
        v2 = @"unblock thread limit";

        break;
      case 1001:
        v2 = @"chronokit";

        return v2;
      default:
        goto LABEL_22;
    }
  }

  return v2;
}

__CFString *sub_10001A2B0(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = @"api violation";
  }

  else if (a1 == 2)
  {
    v2 = @"internal error";
  }

  else
  {
    v2 = [NSString stringWithFormat:@"%llu", a1];
  }

  return v2;
}

id sub_10001A33C(uint64_t a1)
{
  v2 = a1 - 1;
  if (a1 - 1) < 0x15 && ((0x183FFFu >> v2))
  {
    v3 = *(&off_100085C68 + v2);
  }

  else
  {
    v3 = [NSString stringWithFormat:@"%llu", a1];
  }

  return v3;
}

id sub_10001A3C0(int a1, uint64_t a2)
{
  switch(a1)
  {
    case 1:
      v2 = sub_100019618(a2);
      break;
    case 2:
      v2 = sub_1000195A4(a2);
      break;
    case 3:
      v2 = sub_100019B18(a2);
      break;
    case 6:
      v2 = sub_100019CE8(a2);
      break;
    case 7:
      v2 = sub_100019C74(a2);
      break;
    case 9:
      v2 = sub_100019B8C(a2);
      break;
    case 10:
      v2 = sub_100019850(a2);
      break;
    case 15:
      v2 = sub_100019D68(a2);
      break;
    case 18:
      v2 = sub_10001A0D4(a2);
      break;
    case 20:
      v2 = sub_10001A1BC(a2);
      break;
    case 22:
      v2 = sub_10001A2B0(a2);
      break;
    case 23:
      v2 = sub_100019C00(a2);
      break;
    case 27:
      v2 = sub_10001A148(a2);
      break;
    case 32:
      v2 = sub_10001A33C(a2);
      break;
    default:
      v2 = [NSString stringWithFormat:@"%llu", a2];
      break;
  }

  return v2;
}

void sub_10001A558(id a1)
{
  v3[0] = @"HTProfile";
  v3[1] = @"HTEPL";
  v3[2] = @"HTThirdPartyDevSupport";
  v3[3] = @"PLTasking";
  v3[4] = &stru_100085FF8;
  v3[5] = @"PDSEHangTracer";
  v3[6] = @"PDSEHTBadDay";
  v3[7] = @"PDSEHTThirdParty";
  v3[8] = @"PDSEWorkflowResponsiveness";
  v3[9] = @"PDSEHTRateOnly";
  v3[10] = @"PDSESentry";
  v3[11] = @"PDSEAppLaunch";
  v1 = [NSArray arrayWithObjects:v3 count:12];
  v2 = qword_100090418;
  qword_100090418 = v1;
}

void sub_10001C26C(id a1)
{
  qword_100090420 = objc_alloc_init(HTPrefs);

  _objc_release_x1();
}

void sub_10001E6B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  objc_destroyWeak((v33 + 80));
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v34 - 208), 8);
  _Block_object_dispose((v34 - 176), 8);
  _Block_object_dispose((v34 - 144), 8);
  objc_destroyWeak((v34 - 104));
  _Unwind_Resume(a1);
}

void sub_10001E71C(uint64_t a1, int a2)
{
  if (*(*(*(a1 + 40) + 8) + 24) == a2)
  {
    v3 = sub_100001684();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v4 = "HTPrefs: Tasking Changed";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, v4, buf, 2u);
    }
  }

  else if (*(*(*(a1 + 48) + 8) + 24) == a2)
  {
    v3 = sub_100001684();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v4 = "HTPrefs: Telemetry Changed";
      goto LABEL_16;
    }
  }

  else if (*(*(*(a1 + 56) + 8) + 24) == a2)
  {
    v3 = sub_100001684();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v4 = "HTPrefs: Profile List Changed";
      goto LABEL_16;
    }
  }

  else if (*(*(*(a1 + 64) + 8) + 24) == a2)
  {
    v3 = sub_100001684();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v4 = "HTPrefs: EPL State Changed";
      goto LABEL_16;
    }
  }

  else
  {
    if (*(*(*(a1 + 72) + 8) + 24) != a2)
    {
      goto LABEL_18;
    }

    v3 = sub_100001684();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v4 = "HTPrefs: HT Self-Enablement State Changed Triggered Refresh";
      goto LABEL_16;
    }
  }

LABEL_18:
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v6 = [WeakRetained hangtracerDaemonEnabled];

  [*(a1 + 32) refreshHTPrefs];
  v7 = objc_loadWeakRetained((a1 + 80));
  v8 = [v7 hangtracerDaemonEnabled];

  if (v6 != v8)
  {
    v9 = sub_100001684();
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
      v21 = v10;
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "HTPrefs: HangTracer Enabled State Changed: %@ -> %@", buf, 0x16u);
    }

    v13 = objc_loadWeakRetained((a1 + 80));
    v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v13 hangtracerDaemonEnabled]);
    v19 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];

    v16 = +[NSNotificationCenter defaultCenter];
    v17 = objc_loadWeakRetained((a1 + 80));
    [v16 postNotificationName:@"com.apple.hangtracer.daemonstate" object:v17 userInfo:v15];
  }
}