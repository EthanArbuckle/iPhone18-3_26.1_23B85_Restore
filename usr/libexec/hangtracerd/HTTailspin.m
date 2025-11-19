@interface HTTailspin
+ (BOOL)hasAppExceededGeneratedLogsCountForDuration:(double)a3 procName:(id)a4 isFirstPartyApp:(BOOL)a5;
+ (BOOL)hasExceededDailyFenceLogLimit;
+ (BOOL)hasExceededDailyLimit:(double)a3 isFirstPartyApp:(BOOL)a4;
+ (BOOL)moveAndTrackTailspinToSpoolDirectory:(id)a3 error:(id *)a4;
+ (BOOL)saveSentryTailspin:(id)a3 infoDict:(id)a4 startTime:(unint64_t)a5 endTime:(unint64_t)a6 error:(id *)a7;
+ (void)decrementPendingTailspinBlocks;
+ (void)incrementAppGeneratedLogsCountForDuration:(double)a3 procName:(id)a4 isFirstPartyApp:(BOOL)a5;
+ (void)incrementDailyFenceLogGenerationCount;
+ (void)incrementDailyLogGenerationCountForDuration:(double)a3 isFirstPartyApp:(BOOL)a4;
+ (void)incrementPendingTailspinBlocks;
+ (void)initialize;
+ (void)refreshAppGeneratedLogsCount;
+ (void)refreshPerPeriodSentryLogCount;
+ (void)resetAppActivationTailspinCounts;
+ (void)resetDailyActivationTailspinCounts;
+ (void)resetDailyGeneratedLogsCounts;
+ (void)resetDailySentryTailspinCounts;
+ (void)resetLogCountsForDailyRollover;
+ (void)resetLogCountsForEPL;
+ (void)resetPerAppCounts;
+ (void)resetPerPeriodSentryTailspinCounts;
+ (void)saveTailspinForAllPendingHangs;
+ (void)saveTailspinForForceQuit:(id)a3 completionBlock:(id)a4;
+ (void)saveTailspinWithFileName:(id)a3 directoryPath:(id)a4 infoDictArray:(id)a5 startTime:(unint64_t)a6 endTime:(unint64_t)a7 processName:(id)a8 pid:(int)a9 requestType:(int64_t)a10 includeOSSignposts:(BOOL)a11 completionQueue:(id)a12 completionHandler:(id)a13;
@end

@implementation HTTailspin

+ (void)initialize
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = qword_100067DA8;
  qword_100067DA8 = v2;

  qword_100067DB0 = objc_alloc_init(NSMutableDictionary);

  _objc_release_x1();
}

+ (void)refreshAppGeneratedLogsCount
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3032000000;
  v6 = sub_10002BAA4;
  v7 = sub_10002BAB4;
  v8 = 0;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10002BABC;
  v2[3] = &unk_1000569B0;
  v2[4] = &v3;
  [qword_100067DA8 enumerateKeysAndObjectsUsingBlock:v2];
  if (v4[5])
  {
    [qword_100067DA8 removeObjectsForKeys:?];
  }

  _Block_object_dispose(&v3, 8);
}

+ (void)refreshPerPeriodSentryLogCount
{
  if (dword_100067D9C >= 1)
  {
    --dword_100067D9C;
    v2 = sub_100003824();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3[0] = 67109376;
      v3[1] = dword_100067D9C + 1;
      v4 = 1024;
      v5 = dword_100067D9C;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Per-period Sentry Generated Logs count decreased %u -> %u", v3, 0xEu);
    }
  }
}

+ (void)resetLogCountsForEPL
{
  v2 = sub_100003824();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Generated log counts will be reset for EPL", v3, 2u);
  }

  +[HTTailspin resetLogCountsForDailyRollover];
  +[HTTailspin resetDailySentryTailspinCounts];
  +[HTTailspin resetPerAppCounts];
  +[HTTailspin resetPerPeriodSentryTailspinCounts];
}

+ (void)resetLogCountsForDailyRollover
{
  v2 = sub_100003824();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Generated log counts will be reset ", v3, 2u);
  }

  +[HTTailspin resetDailyGeneratedLogsCounts];
  +[HTTailspin resetDailyActivationTailspinCounts];
  +[HTTailspin resetAppActivationTailspinCounts];
}

+ (void)resetDailyGeneratedLogsCounts
{
  v2 = sub_100003824();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v7 = 67109376;
    v8 = dword_100067D80;
    v9 = 1024;
    v10 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Hang Micro Hang Logs Daily Generated count reset from %i to %i", &v7, 0xEu);
  }

  v3 = sub_100003824();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v7 = 67109376;
    v8 = dword_100067D84;
    v9 = 1024;
    v10 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Hang Short Logs Daily Generated count reset from %i to %i", &v7, 0xEu);
  }

  v4 = sub_100003824();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 67109376;
    v8 = dword_100067D88;
    v9 = 1024;
    v10 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Hang Long Logs Daily Generated count reset from %i to %i", &v7, 0xEu);
  }

  v5 = sub_100003824();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 67109376;
    v8 = dword_100067D8C;
    v9 = 1024;
    v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Hang Third Party Logs Daily Generated count reset from %i to %i", &v7, 0xEu);
  }

  v6 = sub_100003824();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 67109376;
    v8 = dword_100067D90;
    v9 = 1024;
    v10 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Fence Hang Logs Daily Generated count reset from %i to %i", &v7, 0xEu);
  }

  dword_100067D80 = 0;
  dword_100067D84 = 0;
  dword_100067D88 = 0;
  dword_100067D8C = 0;
  dword_100067D90 = 0;
}

+ (void)resetAppActivationTailspinCounts
{
  v2 = sub_100003824();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "App activation tailspin count reset", v5, 2u);
  }

  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = qword_100067DB0;
  qword_100067DB0 = v3;
}

+ (void)resetDailyActivationTailspinCounts
{
  v2 = sub_100003824();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3[0] = 67109376;
    v3[1] = dword_100067D94;
    v4 = 1024;
    v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Launch Logs Daily Generated count reset from %i to %i", v3, 0xEu);
  }

  dword_100067D94 = 0;
}

+ (void)resetDailySentryTailspinCounts
{
  v2 = sub_100003824();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3[0] = 67109376;
    v3[1] = dword_100067D98;
    v4 = 1024;
    v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Sentry Tailspin count reset from %i to %i", v3, 0xEu);
  }

  dword_100067D98 = 0;
}

+ (void)resetPerPeriodSentryTailspinCounts
{
  v2 = sub_100003824();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3[0] = 67109376;
    v3[1] = dword_100067D9C;
    v4 = 1024;
    v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Per-period Sentry Tailspin count reset from %i to %i", v3, 0xEu);
  }

  dword_100067D9C = 0;
}

+ (void)resetPerAppCounts
{
  v2 = sub_100003824();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Per-app activation and generated tailspin count reset", v3, 2u);
  }

  [qword_100067DA8 removeAllObjects];
  [qword_100067DB0 removeAllObjects];
}

+ (BOOL)hasAppExceededGeneratedLogsCountForDuration:(double)a3 procName:(id)a4 isFirstPartyApp:(BOOL)a5
{
  v7 = a4;
  v8 = +[HTPrefs sharedPrefs];
  v9 = [v8 runloopLongHangDurationThresholdMSec];

  if (v9 <= a3 && a5)
  {
    v10 = 0;
  }

  else
  {
    v11 = [qword_100067DA8 objectForKeyedSubscript:v7];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 unsignedIntValue];
      v14 = +[HTPrefs sharedPrefs];
      v10 = v13 >= [v14 runLoopHangPerPeriodLogLimit];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

+ (BOOL)hasExceededDailyLimit:(double)a3 isFirstPartyApp:(BOOL)a4
{
  if (a4)
  {
    v5 = +[HTPrefs sharedPrefs];
    v6 = [v5 runloopLongHangDurationThresholdMSec];

    if (v6 <= a3)
    {
      v18 = dword_100067D88;
      v19 = +[HTPrefs sharedPrefs];
      v20 = [v19 runLoopLongHangDailyLogLimit];

      if (v18 >= v20)
      {
        v12 = sub_100003824();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = +[HTPrefs sharedPrefs];
          v25 = 67109120;
          v26 = [v13 runLoopLongHangDailyLogLimit];
          v14 = "Device has hit the Daily Generated Long Log limit of %u. Not saving a report!";
          goto LABEL_17;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v7 = +[HTPrefs sharedPrefs];
      v8 = [v7 runloopHangDurationThresholdMSec];

      if (v8 <= a3)
      {
        v21 = dword_100067D84;
        v22 = +[HTPrefs sharedPrefs];
        v23 = [v22 runLoopHangDailyLogLimit];

        if (v21 >= v23)
        {
          v12 = sub_100003824();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = +[HTPrefs sharedPrefs];
            v25 = 67109120;
            v26 = [v13 runLoopHangDailyLogLimit];
            v14 = "Device has hit the Daily Generated Short Log limit of %u. Not saving a report!";
            goto LABEL_17;
          }

          goto LABEL_18;
        }
      }

      else
      {
        v9 = dword_100067D80;
        v10 = +[HTPrefs sharedPrefs];
        v11 = [v10 runLoopMicroHangDailyLogLimit];

        if (v9 >= v11)
        {
          v12 = sub_100003824();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = +[HTPrefs sharedPrefs];
            v25 = 67109120;
            v26 = [v13 runLoopMicroHangDailyLogLimit];
            v14 = "Device has hit the Daily Generated Micro Log limit of %u. Not saving a report!";
LABEL_17:
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v14, &v25, 8u);

            goto LABEL_18;
          }

          goto LABEL_18;
        }
      }
    }

    return 0;
  }

  v15 = dword_100067D8C;
  v16 = +[HTPrefs sharedPrefs];
  v17 = [v16 runloopHangThirdPartyDailyLogLimit];

  if (v15 < v17)
  {
    return 0;
  }

  v12 = sub_100003824();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = +[HTPrefs sharedPrefs];
    v25 = 67109120;
    v26 = [v13 runloopHangThirdPartyDailyLogLimit];
    v14 = "Device has hit the Daily Generated Third Party Log limit of %u. Not saving a report!";
    goto LABEL_17;
  }

LABEL_18:

  return 1;
}

+ (BOOL)hasExceededDailyFenceLogLimit
{
  v2 = dword_100067D90;
  v3 = +[HTPrefs sharedPrefs];
  v4 = [v3 fenceHangDailyLogLimit];

  if (v2 >= v4)
  {
    v5 = sub_100003824();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = +[HTPrefs sharedPrefs];
      v8[0] = 67109120;
      v8[1] = [v6 fenceHangDailyLogLimit];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Device has hit the Daily Generated Fence Log limit of %u. Not saving a report!", v8, 8u);
    }
  }

  return v2 >= v4;
}

+ (void)incrementAppGeneratedLogsCountForDuration:(double)a3 procName:(id)a4 isFirstPartyApp:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = +[HTPrefs sharedPrefs];
  v9 = [v8 runloopLongHangDurationThresholdMSec];

  if (v9 > a3 || !v5)
  {
    v11 = [qword_100067DA8 objectForKeyedSubscript:v7];
    v13 = v11;
    if (v11)
    {
      v12 = [v11 unsignedIntValue];
    }

    else
    {
      v12 = 0;
    }

    v15 = +[HTPrefs sharedPrefs];
    v16 = [v15 runLoopHangPerPeriodLogLimit];

    if (v12 >= v16)
    {
      v18 = sub_100003824();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = 138412802;
        v20 = v7;
        v21 = 1024;
        v22 = v12;
        v23 = 1024;
        v24 = v12;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%@ Generated Log count: %u -> %u", &v19, 0x18u);
      }
    }

    else
    {
      v17 = sub_100003824();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v19 = 138412802;
        v20 = v7;
        v21 = 1024;
        v22 = v12;
        v23 = 1024;
        v24 = v12 + 1;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%@ Generated Log count: %u -> %u", &v19, 0x18u);
      }

      v18 = [NSNumber numberWithUnsignedInt:v12 + 1];
      [qword_100067DA8 setObject:v18 forKeyedSubscript:v7];
    }
  }

  else
  {
    v13 = sub_100003824();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%@ Generated Log count: Long Hang does not count towards per-app generated log count", &v19, 0xCu);
    }
  }
}

+ (void)incrementDailyLogGenerationCountForDuration:(double)a3 isFirstPartyApp:(BOOL)a4
{
  if (a4)
  {
    v5 = +[HTPrefs sharedPrefs];
    v6 = [v5 runloopLongHangDurationThresholdMSec];

    if (v6 <= a3)
    {
      ++dword_100067D88;
      v9 = sub_100003824();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = 67109376;
        v12 = dword_100067D88 - 1;
        v13 = 1024;
        v14 = dword_100067D88;
        v10 = "Daily Generated Long Log count: %i -> %i";
        goto LABEL_12;
      }
    }

    else
    {
      v7 = +[HTPrefs sharedPrefs];
      v8 = [v7 runloopHangDurationThresholdMSec];

      if (v8 <= a3)
      {
        ++dword_100067D84;
        v9 = sub_100003824();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v11 = 67109376;
          v12 = dword_100067D84 - 1;
          v13 = 1024;
          v14 = dword_100067D84;
          v10 = "Daily Generated Short Log count: %i -> %i";
          goto LABEL_12;
        }
      }

      else
      {
        ++dword_100067D80;
        v9 = sub_100003824();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v11 = 67109376;
          v12 = dword_100067D80 - 1;
          v13 = 1024;
          v14 = dword_100067D80;
          v10 = "Daily Generated Micro Hang Log count: %i -> %i";
LABEL_12:
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, v10, &v11, 0xEu);
        }
      }
    }
  }

  else
  {
    ++dword_100067D8C;
    v9 = sub_100003824();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 67109376;
      v12 = dword_100067D8C - 1;
      v13 = 1024;
      v14 = dword_100067D8C;
      v10 = "Daily Generated Third Party Log count: %i -> %i";
      goto LABEL_12;
    }
  }
}

+ (void)incrementDailyFenceLogGenerationCount
{
  ++dword_100067D90;
  v2 = sub_100003824();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3[0] = 67109376;
    v3[1] = dword_100067D90 - 1;
    v4 = 1024;
    v5 = dword_100067D90;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Daily Generated Fence Hang Log count: %i -> %i", v3, 0xEu);
  }
}

+ (void)incrementPendingTailspinBlocks
{
  ++dword_100067DA0;
  v2 = sub_100003824();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100034900();
  }
}

+ (void)decrementPendingTailspinBlocks
{
  if (dword_100067DA0)
  {
    --dword_100067DA0;
    v2 = sub_100003824();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_100034984();
    }
  }

  else
  {
    v2 = sub_100003824();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_100034A08(v2);
    }
  }
}

+ (BOOL)moveAndTrackTailspinToSpoolDirectory:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 lastPathComponent];
  v7 = [NSString stringWithFormat:@"%s/%@", "/var/root/Library/Caches/hangtracerd/spool", v6];
  v8 = +[NSFileManager defaultManager];
  v9 = [v8 moveItemAtPath:v5 toPath:v7 error:a4];

  v10 = sub_100003824();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = v5;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Successfully moved tailspin from %@ to spool directory path: %@", buf, 0x16u);
    }

    +[HTHangreporterKickstartTelemetry incrementSuccessfulTailspinSaves];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100034A8C();
    }
  }

  return v9;
}

+ (BOOL)saveSentryTailspin:(id)a3 infoDict:(id)a4 startTime:(unint64_t)a5 endTime:(unint64_t)a6 error:(id *)a7
{
  v10 = a4;
  v11 = off_1000676F0;
  v12 = a3;
  v13 = [v10 objectForKeyedSubscript:v11];
  v44 = [v13 isEqualToString:off_1000676F8];
  v14 = qword_100067D58;
  v15 = +[NSDate date];
  v16 = [v14 stringFromDate:v15];
  v17 = [NSString stringWithFormat:@"%@-%@.%@", v12, v16, @"tailspin"];

  v18 = [NSString stringWithFormat:@"%s", "/var/root/Library/Caches/hangtracerd/tmp"];
  v19 = [NSString stringWithFormat:@"%s/%@", "/var/root/Library/Caches/hangtracerd/tmp", v17];
  v46 = [v19 UTF8String];
  v20 = +[HTPrefs sharedPrefs];
  v21 = [v20 htTailspinEnabled];

  if ((v21 & 1) == 0)
  {
    if (!a7)
    {
      goto LABEL_21;
    }

    v33 = @"Tailspin is not enabled";
    v34 = 1;
LABEL_20:
    sub_10001990C(v34, v33);
    *a7 = v35 = 0;
    goto LABEL_22;
  }

  if (!sub_10002A60C())
  {
    if (!a7)
    {
      goto LABEL_21;
    }

    v33 = @"Tailspin is not present";
    v34 = 2;
    goto LABEL_20;
  }

  v43 = a6;
  v22 = dword_100067D98;
  v23 = +[HTPrefs sharedPrefs];
  v24 = [v23 signpostMonitoringDailyLogLimit];

  if (v22 >= v24)
  {
    if (a7)
    {
      v33 = @"Sentry has hit its daily tailspin limit";
LABEL_19:
      v34 = 4;
      goto LABEL_20;
    }

LABEL_21:
    v35 = 0;
    goto LABEL_22;
  }

  v25 = dword_100067D9C;
  v26 = +[HTPrefs sharedPrefs];
  v27 = [v26 signpostMonitoringPerPeriodLogLimit];

  if (v25 >= v27)
  {
    if (a7)
    {
      v33 = @"Sentry has hit its per-period tailspin limit";
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  v28 = sub_100003824();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = +[HTPrefs sharedPrefs];
    v30 = [v29 shouldCollectOSSignposts];
    v31 = @"NO";
    if (v30)
    {
      v31 = @"YES";
    }

    *buf = 138412290;
    v55 = v31;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Collecting OS Signposts: %@", buf, 0xCu);
  }

  if (v44)
  {
    v32 = [v10 objectForKeyedSubscript:off_1000676D0];
    v45 = [v32 intValue];
  }

  else
  {
    v45 = 0;
  }

  v37 = objc_alloc_init(NSMutableArray);
  [v37 addObject:v10];
  v38 = sub_100029534(0x7D0uLL);
  if (v38 >= a5)
  {
    v38 = 0;
  }

  v48 = a5 - v38;
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_10002D784;
  v49[3] = &unk_100056A00;
  v50 = @"Sentry";
  v51 = v19;
  v53 = v46;
  v52 = v10;
  v39 = objc_retainBlock(v49);
  v40 = +[HTPrefs sharedPrefs];
  LOBYTE(v42) = [v40 shouldCollectOSSignposts];
  LODWORD(v41) = v45;
  [HTTailspin saveTailspinWithFileName:v17 directoryPath:v18 infoDictArray:v37 startTime:v48 endTime:v43 processName:@"Sentry" pid:v41 requestType:3 includeOSSignposts:v42 completionQueue:qword_100067D60 completionHandler:v39];

  v35 = 1;
LABEL_22:

  return v35;
}

+ (void)saveTailspinForForceQuit:(id)a3 completionBlock:(id)a4
{
  v5 = a3;
  v25 = a4;
  v24 = [v5 absoluteTime];
  v6 = [v5 processName];
  v7 = qword_100067D58;
  v8 = [v5 calendarTime];
  v9 = [v7 stringFromDate:v8];
  v10 = [NSString stringWithFormat:@"ForceQuit-%@-%@.%@", v6, v9, @"tailspin"];

  v26[0] = @"Reason";
  v11 = [v5 processName];
  v12 = [NSString stringWithFormat:@"ForceQuit-%@", v11];
  v27[0] = v12;
  v26[1] = @"ProcessPath";
  v13 = [v5 executablePath];
  v27[1] = v13;
  v26[2] = @"PID";
  v14 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 pid]);
  v27[2] = v14;
  v26[3] = @"NetworkState";
  v15 = +[HTNetworkInfo networkStateForTailSpin];
  v16 = v15;
  if (!v15)
  {
    v16 = +[NSNull null];
  }

  v27[3] = v16;
  v17 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:4];
  v18 = [NSMutableDictionary dictionaryWithDictionary:v17];

  if (!v15)
  {
  }

  v19 = objc_alloc_init(NSMutableArray);
  [v19 addObject:v18];
  if (sub_10002957C(60.0) >= v24)
  {
    v20 = 0;
  }

  else
  {
    v20 = (v24 - sub_10002957C(60.0));
  }

  v21 = [v5 processName];
  LOBYTE(v23) = 1;
  LODWORD(v22) = [v5 pid];
  [HTTailspin saveTailspinWithFileName:v10 directoryPath:@"/var/root/Library/Caches/hangtracerd/tmp" infoDictArray:v19 startTime:v20 endTime:v24 processName:v21 pid:v22 requestType:4 includeOSSignposts:v23 completionQueue:qword_100067D60 completionHandler:v25];
}

+ (void)saveTailspinForAllPendingHangs
{
  v2 = +[HTHangInfo numberOfHangs];
  v3 = sub_100003824();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v4)
    {
      v5 = +[HTHangInfo numberOfHangs];
      v6 = +[HTHangInfo allHangs];
      *buf = 134218242;
      v46 = v5;
      v47 = 2114;
      v48 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Collecting tailspin for a sequence of %lu hang(s): %{public}@\n", buf, 0x16u);
    }

    v7 = +[HTHangInfo firstHang];
    v8 = [v7 serviceName];
    v9 = [v7 processName];
    v10 = qword_100067D58;
    v11 = +[NSDate date];
    v12 = [v10 stringFromDate:v11];
    v3 = [NSString stringWithFormat:@"%@-%@-%@.%@", v8, v9, v12, @"tailspin"];

    v13 = [v7 processName];
    v34 = [v7 pid];
    v14 = [v7 serviceName];
    v33 = sub_10001AEA0(v14);

    v15 = objc_alloc_init(NSMutableArray);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v16 = +[HTHangInfo allHangs];
    v17 = [v16 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v41;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v41 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v40 + 1) + 8 * i) infoDict];
          [v15 addObject:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v18);
    }

    v22 = +[HTHangInfo hangSequenceStartTime];
    v23 = sub_100029534(0x7D0uLL);
    if (v22 <= v23)
    {
      v23 = 0;
    }

    v24 = v22 - v23;
    v25 = +[HTHangInfo hangSequenceEndTime];
    v26 = [NSString stringWithFormat:@"%s", "/var/root/Library/Caches/hangtracerd/tmp"];
    [NSString stringWithFormat:@"%s/%@", "/var/root/Library/Caches/hangtracerd/tmp", v3];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10002E1DC;
    v35[3] = &unk_100056A00;
    v37 = v36 = v13;
    v38 = v7;
    v39 = [v37 UTF8String];
    v27 = v7;
    v28 = v37;
    v29 = v13;
    v30 = objc_retainBlock(v35);
    LOBYTE(v32) = 1;
    LODWORD(v31) = v34;
    [HTTailspin saveTailspinWithFileName:v3 directoryPath:v26 infoDictArray:v15 startTime:v24 endTime:v25 processName:v29 pid:v31 requestType:v33 includeOSSignposts:v32 completionQueue:qword_100067D60 completionHandler:v30];
    +[HTHangInfo cleanupAllHangs];
  }

  else if (v4)
  {
    *buf = 136315138;
    v46 = "+[HTTailspin saveTailspinForAllPendingHangs]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s: No hangs found, not collecting tailspin\n", buf, 0xCu);
  }
}

+ (void)saveTailspinWithFileName:(id)a3 directoryPath:(id)a4 infoDictArray:(id)a5 startTime:(unint64_t)a6 endTime:(unint64_t)a7 processName:(id)a8 pid:(int)a9 requestType:(int64_t)a10 includeOSSignposts:(BOOL)a11 completionQueue:(id)a12 completionHandler:(id)a13
{
  v16 = a3;
  v17 = a4;
  v72 = a5;
  v18 = a8;
  v71 = a12;
  v19 = a13;
  sub_100003738(@"Tailspin Request");
  v73 = v16;
  v59 = v16;
  v20 = v17;
  v21 = [NSString stringWithFormat:@"%@/%@", v17, v59];
  v22 = sub_100003824();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v21;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Attempting to save tailspin at %@", buf, 0xCu);
  }

  v23 = [v21 cStringUsingEncoding:4];
  v24 = open_dprotected_np(v23, 514, 4, 0, 420);
  v25 = v19;
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = sub_10002EC2C;
  *&buf[24] = &unk_100056A78;
  v85 = v24;
  v83 = v25;
  v84 = a10;
  v26 = objc_retainBlock(buf);

  if (dword_100067DA0 >= 50)
  {
    v27 = sub_100003824();
    v28 = v72;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      sub_100034F48(v27);
    }

    (*(v26 + 2))(v26, 15);
    v29 = v71;
    v30 = v18;
LABEL_15:
    v33 = v73;
    goto LABEL_45;
  }

  v28 = v72;
  if (v24 < 0)
  {
    v34 = sub_100003824();
    v30 = v18;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_100034E94();
    }

    (*(v26 + 2))(v26, 10);
    v29 = v71;
    goto LABEL_15;
  }

  v66 = v24;
  v80 = 0;
  v31 = [NSJSONSerialization dataWithJSONObject:v72 options:0 error:&v80];
  v67 = v80;
  v68 = v31;
  if (v31)
  {
    v30 = v18;
    v65 = [[NSString alloc] initWithData:v31 encoding:4];
    if (v65)
    {
      v64 = v18;
      v32 = +[HTPrefs sharedPrefs];
      v33 = v73;
      if ([v32 isInternal])
      {
        v63 = 0;
      }

      else
      {
        v39 = +[HTPrefs sharedPrefs];
        v63 = [v39 shouldUploadToDiagPipe];
      }

      v40 = sub_100003824();
      v62 = v26;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = +[HTPrefs sharedPrefs];
        v42 = v25;
        v43 = [v41 isInternal] ^ 1;
        v44 = +[HTPrefs sharedPrefs];
        v45 = [v44 shouldUploadToDiagPipe];
        *buf = 138544130;
        *&buf[4] = v64;
        *&buf[12] = 1024;
        *&buf[14] = v63;
        *&buf[18] = 1024;
        *&buf[20] = v43;
        v25 = v42;
        *&buf[24] = 1024;
        *&buf[26] = v45;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "%{public}@: Tailspin filepaths will be scrubbed: %{BOOL}d (Customer build: %{BOOL}d, DiagnosticPipeline upload enabled: %{BOOL}d)", buf, 0x1Eu);

        v26 = v62;
      }

      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v46 = v72;
      v47 = [v46 countByEnumeratingWithState:&v76 objects:v81 count:16];
      if (v47)
      {
        v48 = v47;
        v60 = v20;
        v49 = *v77;
        while (2)
        {
          for (i = 0; i != v48; i = i + 1)
          {
            if (*v77 != v49)
            {
              objc_enumerationMutation(v46);
            }

            v51 = *(*(&v76 + 1) + 8 * i);
            v52 = [v51 objectForKeyedSubscript:@"isFirstPartyApp"];
            v53 = [v52 BOOLValue];

            v54 = [v51 objectForKeyedSubscript:@"IsThirdPartyDevSupportModeHang"];
            v55 = [v54 BOOLValue];

            if ((v53 & 1) != 0 || !v55)
            {
              v56 = sub_100003824();
              v30 = v64;
              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
              {
                sub_100034DAC();
              }

              v61 = 1;
              v28 = v72;
              v33 = v73;
              v20 = v60;
              goto LABEL_38;
            }
          }

          v48 = [v46 countByEnumeratingWithState:&v76 objects:v81 count:16];
          if (v48)
          {
            continue;
          }

          break;
        }

        v61 = 0;
        v28 = v72;
        v33 = v73;
        v20 = v60;
        v30 = v64;
LABEL_38:
        v26 = v62;
      }

      else
      {
        v61 = 0;
        v30 = v64;
      }

      v57 = sub_100003824();
      v38 = v65;
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        *&buf[4] = v21;
        *&buf[12] = 1024;
        *&buf[14] = v66;
        *&buf[18] = 2114;
        *&buf[20] = v65;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Will request tailspin at: %{public}@, fd: %i with reasonString:%{public}@", buf, 0x1Cu);
      }

      +[HTTailspin incrementPendingTailspinBlocks];
      v74[0] = _NSConcreteStackBlock;
      v74[1] = 3221225472;
      v74[2] = sub_10002EBE4;
      v74[3] = &unk_100056A28;
      v75 = v26;
      v58 = objc_retainBlock(v74);
      v29 = v71;
      sub_10002A64C(v66, a6, a7, v65, a9, a11, v61, v63, v71, v58);

      v36 = v67;
    }

    else
    {
      v37 = sub_100003824();
      v36 = v67;
      v33 = v73;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_100034E20();
      }

      unlink(v23);
      (*(v26 + 2))(v26, 8);
      v29 = v71;
      v38 = 0;
    }
  }

  else
  {
    v35 = sub_100003824();
    v36 = v67;
    v30 = v18;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      *&buf[4] = v18;
      *&buf[12] = 2114;
      *&buf[14] = v72;
      *&buf[22] = 2114;
      *&buf[24] = v67;
      _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%{public}@: Unable to serialize Info Dict into JSON: %{public}@ - %{public}@\n", buf, 0x20u);
    }

    unlink(v23);
    (*(v26 + 2))(v26, 7);
    v29 = v71;
    v33 = v73;
  }

LABEL_45:
}

@end