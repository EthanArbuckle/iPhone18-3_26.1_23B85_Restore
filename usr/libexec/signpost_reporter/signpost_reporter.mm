double sub_100001C70()
{
  if (qword_100019E70 != -1)
  {
    sub_10000BDF0();
  }

  return *&qword_100019E68;
}

void sub_100001CA8(id a1)
{
  info = 0;
  mach_timebase_info(&info);
  v1 = 1.0;
  if (info.numer != info.denom)
  {
    v1 = info.numer / info.denom;
  }

  qword_100019E68 = *&v1;
}

uint64_t sub_100001CF4(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"macOS"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"iPhoneOS"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"watchOS"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"tvOS"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"bridgeOS"])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

const __CFString *sub_100001DA8(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_100014718 + a1 - 1);
  }
}

void sub_100001DE0(void *a1)
{
  if (a1)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v1 = [a1 executablePathToStallAggregation];
    v2 = [v1 objectEnumerator];

    v3 = [v2 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (!v3)
    {
      goto LABEL_40;
    }

    v5 = v3;
    v6 = *v31;
    *&v4 = 138412290;
    v29 = v4;
    while (1)
    {
      v7 = 0;
      do
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v30 + 1) + 8 * v7);
        v9 = [v8 processExecutablePath];

        if (v9)
        {
          v11 = [v8 processExecutablePath];
          v12 = sub_1000038A0(v11);

          if ((sub_100003BAC(v12, v13) & 1) == 0)
          {
            if (!v12)
            {
              goto LABEL_32;
            }

            v15 = sub_100002620();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              *buf = v29;
              v38 = v12;
              _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Skipping non-internal bundle ID %@.", buf, 0xCu);
            }

            goto LABEL_30;
          }

          if (!v12)
          {
            goto LABEL_24;
          }

          v14 = [v8 longCommitStats];
          if (v14)
          {
            goto LABEL_19;
          }

          v14 = [v8 longTransactionLifetimeStats];
          if (v14)
          {
            goto LABEL_19;
          }

          v14 = [v8 longTransactionLifetimeStats];
          if (v14)
          {
            goto LABEL_19;
          }

          v14 = [v8 longResponsibleFrameLifetimeStats];
          if (v14)
          {
            goto LABEL_19;
          }

          v14 = [v8 responsibleGlitchStats];
          if (v14)
          {
            goto LABEL_19;
          }

          v14 = [v8 glitchStats];
          if (v14 || ([v8 responsibleFirstFrameGlitchStats], (v14 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v8, "firstFrameGlitchStats"), (v14 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v8, "responsibleNonFirstFrameNonSkipGlitchStats"), (v14 = objc_claimAutoreleasedReturnValue()) != 0))
          {
LABEL_19:

LABEL_20:
            v15 = +[NSMutableDictionary dictionary];
            [v15 setObject:v12 forKeyedSubscript:@"BundleID"];
            v16 = [v8 longCommitStats];
            sub_1000022D8(@"Commit", v16, v15);

            v17 = [v8 longTransactionLifetimeStats];
            sub_1000022D8(@"TransactionLifetime", v17, v15);

            v18 = [v8 longHIDLatencyStats];
            sub_1000022D8(@"HIDLatency", v18, v15);

            v19 = [v8 longResponsibleFrameLifetimeStats];
            sub_1000022D8(@"FrameLifetime", v19, v15);

            v20 = [v8 responsibleGlitchStats];
            sub_1000022D8(@"GlitchLongPole", v20, v15);

            v21 = [v8 glitchStats];
            sub_1000022D8(@"GlitchContributor", v21, v15);

            v22 = [v8 responsibleFirstFrameGlitchStats];
            sub_1000022D8(@"FirstFrameGlitchLongPole", v22, v15);

            v23 = [v8 firstFrameGlitchStats];
            sub_1000022D8(@"FirstFrameGlitchContributor", v23, v15);

            v24 = [v8 responsibleNonFirstFrameNonSkipGlitchStats];
            sub_1000022D8(@"NonFirstFrameNonSkipGlitchLongPole", v24, v15);

            v25 = [v8 responsibleNonFirstFrameNonSkipPerceivedGlitchStats];
            sub_1000022D8(@"NonFirstFrameNonSkipPerceivedGlitchLongPole", v25, v15);

            v26 = sub_100002620();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              sub_10000BE04(v35, v15);
            }

            j__AnalyticsSendEvent();
LABEL_30:

            goto LABEL_32;
          }

          v27 = [v8 responsibleNonFirstFrameNonSkipPerceivedGlitchStats];

          if (v27)
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (sub_100003BAC(0, v10))
          {
LABEL_24:
            v15 = sub_100002620();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              sub_10000BE60(v36, v8);
            }

            v12 = 0;
            goto LABEL_30;
          }

          v12 = 0;
        }

LABEL_32:

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v28 = [v2 countByEnumeratingWithState:&v30 objects:v34 count:16];
      v5 = v28;
      if (!v28)
      {
        goto LABEL_40;
      }
    }
  }

  v2 = sub_100002620();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10000BEBC(v2);
  }

LABEL_40:
}

void sub_1000022D8(void *a1, void *a2, void *a3)
{
  if (a2)
  {
    v5 = a3;
    v6 = a2;
    v7 = a1;
    v12 = [NSString stringWithFormat:@"%@Count", v7];
    v8 = [NSString stringWithFormat:@"%@TotalMs", v7];

    v9 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v6 intervalCount]);
    [v5 setObject:v9 forKeyedSubscript:v12];

    v10 = [v6 totalIntervalDurationNs];
    v11 = [NSNumber numberWithUnsignedLongLong:v10 / 0xF4240];
    [v5 setObject:v11 forKeyedSubscript:v8];
  }
}

void sub_100002430(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_debug_impl(a1, v4, OS_LOG_TYPE_DEBUG, a4, v5, 0xCu);
}

id sub_100002450(uint64_t a1)
{
  if (a1 == 2)
  {
    if (qword_100019E90 != -1)
    {
      sub_10000BF14();
    }

    v1 = &qword_100019E88;
    goto LABEL_9;
  }

  if (a1 == 1)
  {
    if (qword_100019E80 != -1)
    {
      sub_10000BF00();
    }

    v1 = &qword_100019E78;
LABEL_9:
    v2 = *v1;
    goto LABEL_11;
  }

  v2 = 0;
LABEL_11:

  return v2;
}

void sub_1000024D8(id a1)
{
  v1 = [SRSubsystemCategoryNameFilter alloc];
  if (qword_100019EA0 != -1)
  {
    sub_10000BF28();
  }

  v4 = qword_100019E98;
  v2 = [(SRSubsystemCategoryNameFilter *)v1 initWithDictionaryArray:v4];
  v3 = qword_100019E78;
  qword_100019E78 = v2;
}

void sub_100002564(id a1)
{
  v1 = [SRSubsystemCategoryNameFilter alloc];
  if (qword_100019EB0 != -1)
  {
    sub_10000BF3C();
  }

  v4 = qword_100019EA8;
  v2 = [(SRSubsystemCategoryNameFilter *)v1 initWithDictionaryArray:v4];
  v3 = qword_100019E88;
  qword_100019E88 = v2;
}

void sub_1000025F0(id a1)
{
  v1 = qword_100019E98;
  qword_100019E98 = &off_100016940;
}

void sub_100002608(id a1)
{
  v1 = qword_100019EA8;
  qword_100019EA8 = &off_100016958;
}

id sub_100002620()
{
  if (qword_100019EB8 != -1)
  {
    sub_10000BF50();
  }

  v1 = qword_100019EC0;

  return v1;
}

void sub_100002664(id a1)
{
  qword_100019EC0 = os_log_create("com.apple.SignpostSupport", "signpost_reporter");

  _objc_release_x1();
}

void sub_100003234(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

uint64_t sub_10000325C(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (a2 == 2)
  {
    v5 = [v3 string1Name];
    if ([v5 isEqualToString:@"<workflowID>"])
    {
      v6 = [v4 subsystem];
      v7 = [v6 isEqualToString:@"com.apple.CoreIDV.telemetry"];

      if (v7)
      {
        v8 = [v4 category];
        v9 = [v8 isEqualToString:@"api"];

        if (v9)
        {
          v10 = [v4 name];
          if (qword_100019EE0 != -1)
          {
            sub_10000C0CC();
          }

          v11 = qword_100019ED8;
LABEL_25:
          v27 = [v11 containsObject:v10];

          goto LABEL_26;
        }

        v28 = [v4 category];
        v29 = [v28 isEqualToString:@"requests"];

        if (v29)
        {
          v10 = [v4 name];
          if (qword_100019EF0 != -1)
          {
            sub_10000C0B8();
          }

          v11 = qword_100019EE8;
          goto LABEL_25;
        }

        v30 = [v4 category];
        v31 = [v30 isEqualToString:@"library"];

        if (v31)
        {
          v10 = [v4 name];
          if (qword_100019F00 != -1)
          {
            sub_10000C0A4();
          }

          v11 = qword_100019EF8;
          goto LABEL_25;
        }
      }
    }

    else
    {
    }
  }

  if (sub_100003478(v4))
  {
    v12 = sub_1000035A8();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_10000C06C(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  else
  {
    if (!sub_1000036B4(v4))
    {
      v27 = 0;
      goto LABEL_26;
    }

    v12 = sub_1000035A8();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_10000C034(v12, v20, v21, v22, v23, v24, v25, v26);
    }
  }

  v27 = 1;
LABEL_26:

  return v27;
}

BOOL sub_100003478(void *a1)
{
  v1 = a1;
  if (qword_100019ED0 != -1)
  {
    sub_10000C0E0();
  }

  v2 = [v1 string1Name];
  if ([@"AppVersion" isEqualToString:v2])
  {
    v3 = qword_100019EC8;
    v4 = [v1 name];
    if ([v3 containsObject:v4])
    {
      v5 = off_100019CA0;
      v6 = [v1 category];
      if ([(__CFString *)v5 isEqualToString:v6])
      {
        v7 = off_100019CA8;
        v8 = [v1 subsystem];
        if ([(__CFString *)v7 isEqualToString:v8])
        {
          v9 = [v1 durationMachContinuousTime] != 0;
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id sub_1000035A8()
{
  if (qword_100019F08 != -1)
  {
    sub_10000C0F4();
  }

  v1 = qword_100019F10;

  return v1;
}

id sub_1000035F0(void *a1)
{
  v1 = sub_1000036B4(a1);
  if (v1)
  {
    v2 = sub_1000035A8();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_10000C108(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return v1;
}

void sub_100003644(id a1)
{
  qword_100019EC8 = [NSSet setWithObjects:off_100019CB0, off_100019CB8, off_100019CC0, off_100019CD8, 0];

  _objc_release_x1();
}

id sub_1000036B4(void *a1)
{
  v1 = a1;
  v2 = off_100019CF0;
  v3 = [v1 name];
  if ([(__CFString *)v2 isEqualToString:v3])
  {
    v4 = off_100019CE8;
    v5 = [v1 category];
    if ([(__CFString *)v4 isEqualToString:v5])
    {
      v6 = off_100019CE0;
      v7 = [v1 subsystem];
      v8 = [(__CFString *)v6 isEqualToString:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_100003780(id a1)
{
  qword_100019ED8 = [NSSet setWithArray:&off_100016970];

  _objc_release_x1();
}

void sub_1000037C8(id a1)
{
  qword_100019EE8 = [NSSet setWithArray:&off_100016988];

  _objc_release_x1();
}

void sub_100003810(id a1)
{
  qword_100019EF8 = [NSSet setWithArray:&off_1000169A0];

  _objc_release_x1();
}

void sub_100003858(id a1)
{
  qword_100019F10 = os_log_create("com.apple.SignpostSupport", "TelemetryStringAllowlistingExemption");

  _objc_release_x1();
}

id sub_1000038A0(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (qword_100019F20 != -1)
  {
    sub_10000C140();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_26:
    v5 = 0;
    goto LABEL_27;
  }

  if (!v1)
  {
    goto LABEL_26;
  }

LABEL_3:
  v3 = [qword_100019F18 objectForKeyedSubscript:v2];
  v4 = +[NSNull null];

  if (v3 == v4)
  {
    v5 = 0;
  }

  else if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [v2 lastPathComponent];
    v7 = [NSString stringWithFormat:@"%@.", v6];

    v8 = [v2 stringByDeletingLastPathComponent];
    if (v8)
    {
      v9 = 0;
      while (([v8 isEqualToString:&stru_100015580] & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"/") & 1) == 0 && v9 <= 0x63)
      {
        v10 = [v8 lastPathComponent];
        if ([v10 hasPrefix:v7])
        {
          v8 = v8;

          v13 = [NSBundle bundleWithPath:v8];
          v14 = v13;
          if (!v13)
          {
            goto LABEL_23;
          }

          v15 = [v13 bundleIdentifier];

          if (!v15)
          {
            goto LABEL_23;
          }

          v16 = [v14 bundleIdentifier];
          [qword_100019F18 setObject:v16 forKeyedSubscript:v2];

          v5 = [v14 bundleIdentifier];
          v17 = sub_100002620();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            sub_10000C154(v5, v2, v17);
          }

          if (v5)
          {
            [qword_100019F18 setObject:v5 forKeyedSubscript:v2];
          }

          else
          {
LABEL_23:
            v18 = +[NSNull null];
            [qword_100019F18 setObject:v18 forKeyedSubscript:v2];

            v5 = 0;
          }

          goto LABEL_15;
        }

        ++v9;
        v11 = [v8 stringByDeletingLastPathComponent];

        v8 = v11;
        if (!v11)
        {
          break;
        }
      }
    }

    v12 = +[NSNull null];
    [qword_100019F18 setObject:v12 forKeyedSubscript:v2];

    v5 = 0;
LABEL_15:
  }

LABEL_27:

  return v5;
}

void sub_100003B6C(id a1)
{
  qword_100019F18 = +[NSMutableDictionary dictionary];

  _objc_release_x1();
}

void *sub_100003BAC(void *a1, const char *a2)
{
  if (a1)
  {
    return [a1 hasPrefix:@"com.apple."];
  }

  return a1;
}

uint64_t sub_100004094(void *a1)
{
  v1 = a1;
  v2 = [v1 attributes];
  v3 = [v2 objectForKeyedSubscript:@"BundleIdOverride"];

  if (v3)
  {
    v4 = v1;
    v5 = [v4 subsystem];
    v6 = [v5 isEqualToString:@"com.apple.runningboard"];

    if (v6 && ([v4 category], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", @"sp_telemetry"), v7, v8))
    {
      if (qword_100019F50 != -1)
      {
        sub_10000C2A8();
      }

      v9 = qword_100019F48;
      v10 = [v4 name];
      LOBYTE(v9) = [v9 containsObject:v10];

      if (v9)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v11 = [v4 subsystem];
    v12 = [v11 isEqualToString:@"com.apple.spindump"];

    if (v12)
    {
LABEL_10:
      v3 = 1;
      goto LABEL_29;
    }

    v13 = [v4 subsystem];
    if ([v13 isEqualToString:@"com.apple.SplashBoard"])
    {
      v14 = [v4 category];
      v15 = [v14 isEqualToString:@"Snapshot"];

      if (v15)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v16 = [v4 subsystem];
    if ([v16 isEqualToString:@"com.apple.SplashBoard"])
    {
      v17 = [v4 category];
      if ([v17 isEqualToString:@"Memory"])
      {
        v18 = [v4 name];
        v19 = [v18 isEqualToString:@"OverMemoryLimit"];

        if (v19)
        {
          goto LABEL_10;
        }

LABEL_21:
        v20 = v4;
        v21 = [v20 name];
        if ([v21 isEqualToString:@"HangInterval"])
        {
          v22 = [v20 subsystem];
          v23 = [v22 isEqualToString:@"com.apple.hangtracer"];

          if (v23)
          {
            v24 = [v20 category];
            v25 = [v24 isEqualToString:@"signpost_hang"];

            if (v25 & 1) != 0 || ([v20 category], v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "isEqualToString:", @"always_on_hang"), v26, (v27))
            {
              v3 = 1;
LABEL_28:

              goto LABEL_29;
            }
          }
        }

        else
        {
        }

        v3 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_21;
  }

LABEL_29:

  return v3;
}

void start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = dispatch_queue_create("signpost_reporter processing queue", 0);
  v2 = qword_100019F28;
  qword_100019F28 = v1;

  v3 = dispatch_queue_create("signpost_reporter CoreAnalytics reporting queue", 0);
  v4 = qword_100019F30;
  qword_100019F30 = v3;

  v5 = dispatch_source_create(&_dispatch_source_type_signal, 2uLL, 0, qword_100019F28);
  v6 = qword_100019F38;
  qword_100019F38 = v5;

  dispatch_source_set_event_handler(qword_100019F38, &stru_1000148A8);
  xpc_activity_register("com.apple.signpost.signpost_reporter_activity", XPC_ACTIVITY_CHECK_IN, &stru_1000148E8);
  dispatch_resume(qword_100019F38);
  dispatch_main();
}

void sub_100004928(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = os_transaction_create();
  state = xpc_activity_get_state(v2);
  if (state == 2)
  {
    if (xpc_activity_should_defer(v2) && xpc_activity_set_state(v2, 3))
    {
      v6 = sub_100002620();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.f_bsize) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Deferred signpost_reporter\n", &buf, 2u);
      }

      goto LABEL_13;
    }

    v79 = v2;
    if (os_variant_has_internal_diagnostics())
    {
      v7 = sub_100002620();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.f_bsize) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Reporting based on os_variant result", &buf, 2u);
      }

      v8 = 1;
    }

    else
    {
      v9 = dispatch_queue_create("signpost_reporter configuration observing queue", 0);
      v10 = dispatch_semaphore_create(0);
      v106 = 0;
      v107 = &v106;
      v108 = 0x2020000000;
      LOBYTE(v109) = 0;
      v11 = objc_alloc_init(AnalyticsConfigurationObserver);
      v12 = [SignpostReporterConfigObserverDelegate alloc];
      *&buf.f_bsize = _NSConcreteStackBlock;
      buf.f_blocks = 3221225472;
      buf.f_bfree = sub_1000077EC;
      buf.f_bavail = &unk_100014A98;
      buf.f_ffree = &v106;
      v13 = v10;
      buf.f_files = v13;
      v14 = [(SignpostReporterConfigObserverDelegate *)v12 initWithCallbackBlock:&buf];
      [v11 setConfigurationObserverDelegate:v14 queue:v9];
      [v11 startObservingConfigurationType:@"com.apple.performance.signpost_reporter_tasking"];
      v15 = dispatch_time(0, 5000000000);
      if (dispatch_semaphore_wait(v13, v15))
      {
        v16 = sub_100002620();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *v98 = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Not reporting based on not being tasked-on by CoreAnalytics (Timeout waiting for config)", v98, 2u);
        }

        v8 = 0;
      }

      else
      {
        v8 = *(v107 + 24);
      }

      _Block_object_dispose(&v106, 8);
    }

    byte_100019F58 = v8 & 1;
    v17 = sub_100002620();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      buf.f_bsize = 138412802;
      if (byte_100019F58)
      {
        v18 = @"Enabled";
      }

      else
      {
        v18 = @"Disabled";
      }

      *&buf.f_iosize = v18;
      WORD2(buf.f_blocks) = 2112;
      *(&buf.f_blocks + 6) = @"Enabled";
      HIWORD(buf.f_bfree) = 2112;
      buf.f_bavail = @"Enabled";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "os_signpost CA Telemetry: %@, aggregation CA telemetry: %@, CAMetalLayer CA telemetry: %@", &buf, 0x20u);
    }

    if (sub_10000585C())
    {
      v19 = sub_100002620();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.f_bsize) = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Bailing due to cookie file", &buf, 2u);
      }

      sub_1000058F4();
      goto LABEL_74;
    }

    v20 = +[NSFileManager defaultManager];
    if (sub_10000585C())
    {

LABEL_74:
      goto LABEL_75;
    }

    v21 = [v20 createFileAtPath:@"/var/run/signpost_reporter_running" contents:0 attributes:0];
    v22 = sub_100002620();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    if (!v21)
    {
      if (v23)
      {
        LOWORD(buf.f_bsize) = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Could not create cookie file", &buf, 2u);
      }

      goto LABEL_74;
    }

    if (v23)
    {
      LOWORD(buf.f_bsize) = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Created cookie file", &buf, 2u);
    }

    v70 = mach_continuous_time();
    val = objc_alloc_init(SignpostSupportObjectExtractor);
    if (byte_100019F58 != 1)
    {
      v25 = 0;
      v26 = 0;
      v66 = 0;
      v69 = 0;
      v74 = 0;
LABEL_51:
      v30 = +[SignpostWorkflowResponsiveness allWorkflows];
      v31 = [[SignpostAggregationAccumulator alloc] initWithIncludeRawIntervals:0];
      v32 = [[SSCAMetalLayerClientSessionAccumulator alloc] initWithIncludeTimelines:0];
      v33 = sub_100002620();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        buf.f_bsize = 138412290;
        *&buf.f_iosize = v26;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Boot disk type: %@", &buf, 0xCu);
      }

      v106 = _NSConcreteStackBlock;
      v107 = 3221225472;
      v108 = sub_100005D10;
      v109 = &unk_100014980;
      v68 = v31;
      v110 = v68;
      v34 = v74;
      v111 = v34;
      v35 = v30;
      v112 = v35;
      v36 = v25;
      v114 = v36;
      v37 = v32;
      v113 = v37;
      [val setIntervalCompletionProcessingBlock:&v106];
      *v98 = _NSConcreteStackBlock;
      v99 = 3221225472;
      v100 = sub_100005E88;
      v101 = &unk_1000149A8;
      v38 = v34;
      v102 = v38;
      v39 = v35;
      v103 = v39;
      v73 = v36;
      v105 = v73;
      v40 = v37;
      v104 = v40;
      [val setEmitEventProcessingBlock:v98];
      v94[0] = _NSConcreteStackBlock;
      v94[1] = 3221225472;
      v94[2] = sub_100005FE4;
      v94[3] = &unk_1000149D0;
      v75 = v38;
      v95 = v75;
      v72 = v39;
      v96 = v72;
      v67 = v40;
      v97 = v67;
      [val setDeviceRebootProcessingBlock:v94];

      if (byte_100019F58 == 1)
      {
        v92[0] = _NSConcreteStackBlock;
        v92[1] = 3221225472;
        v92[2] = sub_1000060F8;
        v92[3] = &unk_1000149F8;
        v93 = v73;
        [val setAnimationIntervalCompletionProcessingBlock:v92];
        v89[0] = _NSConcreteStackBlock;
        v89[1] = 3221225472;
        v89[2] = sub_100006120;
        v89[3] = &unk_100014A20;
        v90 = v75;
        v91 = v72;
        [val setBeginEventProcessingBlock:v89];
        [val setBuildSkyLightAnimationCompositeIntervalTimelines:0];
        v41 = [val intervalBuilder];
        [v41 setMaximumAnimationIntervalProcessingDuration:60.0];
      }

      v85 = 0;
      v86 = &v85;
      v87 = 0x2020000000;
      v88 = 0;
      v42 = [NSDate dateWithTimeIntervalSinceNow:-86400.0];
      v43 = +[NSDate date];
      v44 = dispatch_queue_create("signpost_reporter defer polling queue", 0);
      v45 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v44);
      v46 = qword_100019F40;
      qword_100019F40 = v45;

      dispatch_source_set_timer(qword_100019F40, 0, 0x9502F900uLL, 0x9502F900uLL);
      objc_initWeak(&buf, val);
      v47 = qword_100019F40;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100006230;
      handler[3] = &unk_100014A48;
      v48 = v79;
      v82 = v48;
      objc_copyWeak(&v84, &buf);
      v83 = &v85;
      dispatch_source_set_event_handler(v47, handler);
      dispatch_resume(qword_100019F40);
      objc_destroyWeak(&v84);

      objc_destroyWeak(&buf);
      v80 = 0;
      LOBYTE(v47) = [val processLogArchiveWithPath:0 startDate:v42 endDate:v43 errorOut:&v80];
      v71 = v80;
      if ((v47 & 1) == 0)
      {
        v49 = sub_100002620();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          v50 = [v71 localizedDescription];
          buf.f_bsize = 138412290;
          *&buf.f_iosize = v50;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Failed to process signpost data due to error: %@", &buf, 0xCu);
        }
      }

      v51 = mach_continuous_time();
      if (qword_100019F98 != -1)
      {
        sub_10000C43C();
      }

      v52 = *&qword_100019FA0 * (v51 - v70);
      v53 = qword_100019F30;
      *&buf.f_bsize = _NSConcreteStackBlock;
      buf.f_blocks = 3221225472;
      buf.f_bfree = sub_10000633C;
      buf.f_bavail = &unk_100014A70;
      v54 = v68;
      buf.f_files = v54;
      v55 = v67;
      buf.f_ffree = v55;
      v56 = v69;
      buf.f_fsid = v56;
      v76 = v75;
      *&buf.f_owner = v76;
      *&buf.f_mntonname[16] = v52;
      v57 = val;
      *&buf.f_mntonname[8] = &v85;
      vala = v57;
      *&buf.f_flags = v57;
      *buf.f_fstypename = 0;
      v58 = v42;
      *&buf.f_fstypename[8] = v58;
      v59 = v43;
      *buf.f_mntonname = v59;
      dispatch_sync(v53, &buf);
      sub_1000058F4();
      if (v48)
      {
        if (*(v86 + 24))
        {
          v60 = 3;
        }

        else
        {
          v60 = 5;
        }

        v61 = xpc_activity_set_state(v48, v60);
        v62 = sub_100002620();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          v63 = "Unable";
          if (v61)
          {
            v63 = "Able";
          }

          if (*(v86 + 24))
          {
            v64 = "deferred";
          }

          else
          {
            v64 = "done";
          }

          *v119 = 136315394;
          v120 = v63;
          v121 = 2080;
          v122 = v64;
          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "%s to mark activity as %s", v119, 0x16u);
        }
      }

      _Block_object_dispose(&v85, 8);
      goto LABEL_74;
    }

    if (sub_100001DD8())
    {
      v74 = objc_alloc_init(SignpostCAStallAggregationBuilder);
      LODWORD(v24) = dword_100019C98;
      [v74 setMaxDurationSec:v24];
    }

    else
    {
      v74 = 0;
    }

    v27 = objc_alloc_init(SignpostReporterObjectFilter);
    bzero(&buf, 0x878uLL);
    if (statfs("/", &buf))
    {
      v28 = sub_100002620();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
LABEL_48:
        sub_10000C388();
      }
    }

    else
    {
      v29 = [NSString stringWithCString:buf.f_fstypename encoding:4];
      v28 = sub_100002620();
      v65 = os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG);
      if (v29)
      {
        if (v65)
        {
          sub_10000C3C8();
        }

        goto LABEL_50;
      }

      if (v65)
      {
        goto LABEL_48;
      }
    }

    v29 = 0;
LABEL_50:

    v115[0] = _NSConcreteStackBlock;
    v115[1] = 3221225472;
    v115[2] = sub_1000059D0;
    v115[3] = &unk_100014958;
    v69 = v27;
    v116 = v69;
    v66 = v29;
    v117 = v66;
    v118 = @"SSD";
    v25 = objc_retainBlock(v115);

    v26 = @"SSD";
    goto LABEL_51;
  }

  v5 = state;
  if (state)
  {
    v6 = sub_100002620();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      buf.f_bsize = 134217984;
      *&buf.f_iosize = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Unknown state %ld\n", &buf, 0xCu);
    }
  }

  else
  {
    v6 = sub_100002620();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.f_bsize) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Checking in\n", &buf, 2u);
    }
  }

LABEL_13:

LABEL_75:
  xpc_transaction_exit_clean();
}

void sub_100005814(id a1)
{
  qword_100019F48 = [NSSet setWithArray:&off_1000169B8];

  _objc_release_x1();
}

id sub_10000585C()
{
  v0 = +[NSFileManager defaultManager];
  v4 = 0;
  v1 = [v0 fileExistsAtPath:@"/var/run/signpost_reporter_running" isDirectory:&v4];
  if (v1 && v4 == 1)
  {
    v2 = sub_100002620();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_10000C464();
    }
  }

  return v1;
}

void sub_1000058F4()
{
  if (sub_10000585C())
  {
    v0 = +[NSFileManager defaultManager];
    v6 = 0;
    v1 = [v0 removeItemAtPath:@"/var/run/signpost_reporter_running" error:&v6];
    v2 = v6;
    v3 = sub_100002620();
    v4 = v3;
    if (v1)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Cleared cookie file", v5, 2u);
      }
    }

    else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10000C4A4(v2, v4);
    }
  }
}

void sub_1000059D0(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) shouldReportSignpostObject:v3 classificationOut:0])
  {
    v4 = [v3 coreAnalyticsPayload];
    v5 = v4;
    if (v4)
    {
      v6 = *(a1 + 40);
      if (v6)
      {
        [v4 setObject:v6 forKeyedSubscript:@"BootPartitionFS"];
      }

      [v5 setObject:*(a1 + 48) forKeyedSubscript:@"BootDiskType"];
      sub_100005B0C();
      v7 = qword_100019F30;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100005BFC;
      v9[3] = &unk_100014930;
      v10 = v3;
      v11 = v5;
      dispatch_async(v7, v9);

      v8 = v10;
    }

    else
    {
      v8 = sub_100002620();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        sub_10000C560(v3);
      }
    }
  }
}

void sub_100005B0C()
{
  if (qword_100019F60 != -1)
  {
    sub_10000C638();
  }

  if (++qword_100019F80 >= 0xA)
  {
    v0 = *&qword_100019F68 * (mach_continuous_time() - qword_100019F78);
    if (v0 < *&dword_100019F70)
    {
      v1 = (*&dword_100019F70 - v0);
      v2 = sub_100002620();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        sub_10000C64C();
      }

      usleep(v1);
      qword_100019F88 += v1;
      ++qword_100019F90;
    }

    qword_100019F80 = 0;
    qword_100019F78 = mach_continuous_time();
  }
}

void sub_100005BFC(uint64_t a1)
{
  v2 = [*(a1 + 32) subsystem];
  v3 = [*(a1 + 32) category];
  v4 = [*(a1 + 32) name];
  v10[0] = @"sp";
  v10[1] = v2;
  v10[2] = v3;
  v10[3] = v4;
  v5 = v2;
  v6 = v3;
  v7 = [NSArray arrayWithObjects:v10 count:4];

  v8 = [v7 componentsJoinedByString:@"__"];

  v9 = *(a1 + 40);
  AnalyticsSendEvent();
}

uint64_t sub_100005D10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 subsystem];
  v5 = [v4 isEqualToString:@"com.apple.Telemetry.PeriodicAggregations"];

  if (v5)
  {
    [*(a1 + 32) handleInterval:v3];
  }

  if (byte_100019F58 == 1)
  {
    [*(a1 + 40) handleSignpostInterval:v3];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = *(a1 + 48);
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v12 + 1) + 8 * i) handleSignpostInterval:{v3, v12}];
        }

        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    (*(*(a1 + 64) + 16))();
  }

  [*(a1 + 56) processInterval:{v3, v12}];

  return 1;
}

uint64_t sub_100005E88(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![NSFESelEvent handle:v3])
  {
    if (byte_100019F58 == 1)
    {
      [*(a1 + 32) handleSignpostEvent:v3];
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v4 = *(a1 + 40);
      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v11;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v11 != v7)
            {
              objc_enumerationMutation(v4);
            }

            [*(*(&v10 + 1) + 8 * i) handleSignpostEmitEvent:{v3, v10}];
          }

          v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v6);
      }

      (*(*(a1 + 56) + 16))();
    }

    [*(a1 + 48) processEvent:{v3, v10}];
  }

  return 1;
}

uint64_t sub_100005FE4(id *a1)
{
  if (byte_100019F58 == 1)
  {
    [a1[4] handleDeviceReboot];
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = a1[5];
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v8 + 1) + 8 * i) handleDeviceReboot];
        }

        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }

  [a1[6] processDeviceReboot];
  return 1;
}

uint64_t sub_100006120(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) handleSignpostIntervalBegin:v3];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8) handleSignpostIntervalBegin:{v3, v10}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return 1;
}

void sub_100006230(uint64_t a1)
{
  should_defer = xpc_activity_should_defer(*(a1 + 32));
  v3 = sub_100002620();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (should_defer)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Trying to stop in-flight reporting work.", buf, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained stopProcessing];

    *(*(*(a1 + 40) + 8) + 24) = 1;
    v3 = sub_100002620();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 0;
      v6 = "Concluding processing due to deferral request";
      v7 = &v8;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
    }
  }

  else if (v4)
  {
    *v9 = 0;
    v6 = "Deferral not requested, continuing.";
    v7 = v9;
    goto LABEL_8;
  }
}

void sub_10000633C(uint64_t a1)
{
  v146 = *(a1 + 32);
  if (v146)
  {
    v1 = sub_100002620();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v2 = [v146 signatureToAccumulatorEntry];
      *buf = 134217984;
      v182 = [v2 count];
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Accumulated information on %llu aggregations", buf, 0xCu);
    }

    v218 = 0u;
    v219 = 0u;
    v216 = 0u;
    v217 = 0u;
    v3 = [v146 signatureToAccumulatorEntry];
    v4 = [v3 allValues];

    v5 = [v4 countByEnumeratingWithState:&v216 objects:buf count:16];
    if (v5)
    {
      v6 = *v217;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v217 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v216 + 1) + 8 * i);
          v9 = [v8 accumulatedAggregation];
          if ([v9 telemetryEnabled])
          {
            v10 = [v9 _coreAnalyticsEventPayloadDictionary];
            v11 = sub_100002620();
            v12 = v11;
            if (v10)
            {
              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
              {
                v13 = [v8 aggregationSignature];
                LODWORD(v215[0]) = 138412290;
                *(v215 + 4) = v13;
                _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Submitting CA event payload for %@", v215, 0xCu);
              }

              v12 = [v9 _coreAnalyticsEventName];
              AnalyticsSendEvent();
            }

            else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              sub_10000C6C0(v179, v9, &v180, v12);
            }
          }

          else
          {
            v10 = sub_100002620();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              v14 = [v8 aggregationSignature];
              LODWORD(v215[0]) = 138412290;
              *(v215 + 4) = v14;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ is not telemetry enabled", v215, 0xCu);
            }
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v216 objects:buf count:16];
      }

      while (v5);
    }
  }

  v15 = *(a1 + 40);
  v16 = v15;
  if (v15)
  {
    v17 = [v15 coreAnalyticsEvents];
    v18 = sub_100002620();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v17 count];
      v20 = [v16 processingErrors];
      v21 = [v20 count];
      *buf = 134218240;
      v182 = v19;
      v183 = 2048;
      v184 = v21;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Reporting information on %llu CAMetalLayer clients with %llu errors encountered", buf, 0x16u);
    }

    v218 = 0u;
    v219 = 0u;
    v216 = 0u;
    v217 = 0u;
    v22 = v17;
    v23 = [v22 countByEnumeratingWithState:&v216 objects:buf count:16];
    if (v23)
    {
      v24 = *v217;
      do
      {
        for (j = 0; j != v23; j = j + 1)
        {
          if (*v217 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v216 + 1) + 8 * j);
          v27 = +[SSCAMetalLayerClientSessionAccumulator coreAnalyticsEventName];
          AnalyticsSendEvent();
        }

        v23 = [v22 countByEnumeratingWithState:&v216 objects:buf count:16];
      }

      while (v23);
    }

    v214[0] = @"ErrorCount";
    v28 = [v16 processingErrors];
    v29 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v28 count]);
    *&v215[0] = v29;
    v214[1] = @"CAMetalLayerSessionCount";
    v30 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v22 count]);
    *(&v215[0] + 1) = v30;
    v31 = [NSDictionary dictionaryWithObjects:v215 forKeys:v214 count:2];

    v32 = +[SSCAMetalLayerClientSessionAccumulator coreAnalyticsProcessingMetadataName];
    AnalyticsSendEvent();
  }

  v34 = *(a1 + 48);
  v33 = *(a1 + 56);
  v35 = *(a1 + 104);
  v142 = [*(a1 + 64) processedEventCount];
  v141 = *(*(*(a1 + 96) + 8) + 24);
  v144 = *(a1 + 72);
  if (v144)
  {
    v143 = 0;
    v36 = @"log archive end";
    v37 = @"log archive begin";
  }

  else
  {
    v37 = [NSDateFormatter localizedStringFromDate:*(a1 + 80) dateStyle:1 timeStyle:2];
    if (*(a1 + 72))
    {
      v143 = 0;
      v36 = @"log archive end";
    }

    else
    {
      v36 = [NSDateFormatter localizedStringFromDate:*(a1 + 88) dateStyle:1 timeStyle:2];
      v143 = 1;
    }
  }

  v149 = v34;
  v147 = v33;
  v140 = v37;
  v145 = v37;
  v38 = v36;
  if (byte_100019F58 == 1)
  {
    v139 = v38;
    v175 = 0;
    v176 = &v175;
    v177 = 0x2020000000;
    v178 = 0;
    v174[0] = _NSConcreteStackBlock;
    v174[1] = 3221225472;
    v174[2] = sub_100007C58;
    v174[3] = &unk_100014B00;
    v174[4] = &v175;
    v39 = objc_retainBlock(v174);
    v40 = sub_100002620();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = [v149 allInspectedSignpostObjectsAggregation];
      v42 = [v41 totalCount];
      *buf = 134217984;
      v182 = v42;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "**************\nTotal signpost object count: %llu", buf, 0xCu);
    }

    v43 = [v149 allInspectedSignpostObjectsAggregation];
    v44 = [v43 keysInDescendingCountOrder];

    v176[3] = 0;
    v170 = 0u;
    v171 = 0u;
    v172 = 0u;
    v173 = 0u;
    v45 = v44;
    v46 = [v45 countByEnumeratingWithState:&v170 objects:&v216 count:16];
    v47 = v36;
    if (v46)
    {
      v48 = *v171;
      do
      {
        for (k = 0; k != v46; k = k + 1)
        {
          if (*v171 != v48)
          {
            objc_enumerationMutation(v45);
          }

          v50 = *(*(&v170 + 1) + 8 * k);
          v51 = [v149 allInspectedSignpostObjectsAggregation];
          (v39[2])(v39, v50, v51, @"AllInspected");
        }

        v36 = v47;
        v46 = [v45 countByEnumeratingWithState:&v170 objects:&v216 count:16];
      }

      while (v46);
    }

    v52 = sub_100002620();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v53 = [v149 telemetryReportedAggregation];
      v54 = [v53 totalCount];
      *buf = 134217984;
      v182 = v54;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "**************\nReported signpost object count: %llu", buf, 0xCu);
    }

    v55 = [v149 telemetryReportedAggregation];
    v56 = [v55 keysInDescendingCountOrder];

    v176[3] = 0;
    v166 = 0u;
    v167 = 0u;
    v168 = 0u;
    v169 = 0u;
    v57 = v56;
    v58 = [v57 countByEnumeratingWithState:&v166 objects:v215 count:16];
    if (v58)
    {
      v59 = *v167;
      do
      {
        for (m = 0; m != v58; m = m + 1)
        {
          if (*v167 != v59)
          {
            objc_enumerationMutation(v57);
          }

          v61 = *(*(&v166 + 1) + 8 * m);
          v62 = [v149 telemetryReportedAggregation];
          (v39[2])(v39, v61, v62, @"Reported");
        }

        v36 = v47;
        v58 = [v57 countByEnumeratingWithState:&v166 objects:v215 count:16];
      }

      while (v58);
    }

    v63 = sub_100002620();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      v64 = [v149 telemetryReportedEventsAggregation];
      v65 = [v64 totalCount];
      *buf = 134217984;
      v182 = v65;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "**************\nReported signpost event count: %llu", buf, 0xCu);
    }

    v66 = [v149 telemetryReportedEventsAggregation];
    v67 = [v66 keysInDescendingCountOrder];

    v176[3] = 0;
    v162 = 0u;
    v163 = 0u;
    v164 = 0u;
    v165 = 0u;
    v68 = v67;
    v69 = [v68 countByEnumeratingWithState:&v162 objects:v214 count:16];
    if (v69)
    {
      v70 = *v163;
      do
      {
        for (n = 0; n != v69; n = n + 1)
        {
          if (*v163 != v70)
          {
            objc_enumerationMutation(v68);
          }

          v72 = *(*(&v162 + 1) + 8 * n);
          v73 = [v149 telemetryReportedEventsAggregation];
          (v39[2])(v39, v72, v73, @"ReportedEvents");
        }

        v36 = v47;
        v69 = [v68 countByEnumeratingWithState:&v162 objects:v214 count:16];
      }

      while (v69);
    }

    v74 = sub_100002620();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      v75 = [v149 telemetryNotReportedFailedSCFilterAggregation];
      v76 = [v75 totalCount];
      *buf = 134217984;
      v182 = v76;
      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "**************\nSubsystem/category filtered signpost object count: %llu", buf, 0xCu);
    }

    v77 = [v149 telemetryNotReportedFailedSCFilterAggregation];
    v78 = [v77 keysInDescendingCountOrder];

    v176[3] = 0;
    v158 = 0u;
    v159 = 0u;
    v160 = 0u;
    v161 = 0u;
    v79 = v78;
    v80 = [v79 countByEnumeratingWithState:&v158 objects:v213 count:16];
    if (v80)
    {
      v81 = *v159;
      do
      {
        for (ii = 0; ii != v80; ii = ii + 1)
        {
          if (*v159 != v81)
          {
            objc_enumerationMutation(v79);
          }

          v83 = *(*(&v158 + 1) + 8 * ii);
          v84 = [v149 telemetryNotReportedFailedSCFilterAggregation];
          (v39[2])(v39, v83, v84, @"SubsystemCategoryFiltered");
        }

        v36 = v47;
        v80 = [v79 countByEnumeratingWithState:&v158 objects:v213 count:16];
      }

      while (v80);
    }

    v85 = sub_100002620();
    if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
    {
      v86 = [v149 telemetryNotReportedDurationThresholdAggregation];
      v87 = [v86 totalCount];
      *buf = 134217984;
      v182 = v87;
      _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "**************\nDuration filtered signpost object count: %llu", buf, 0xCu);
    }

    v88 = [v149 telemetryNotReportedDurationThresholdAggregation];
    v89 = [v88 keysInDescendingCountOrder];

    v176[3] = 0;
    v154 = 0u;
    v155 = 0u;
    v156 = 0u;
    v157 = 0u;
    v90 = v89;
    v91 = [v90 countByEnumeratingWithState:&v154 objects:v212 count:16];
    if (v91)
    {
      v92 = *v155;
      do
      {
        for (jj = 0; jj != v91; jj = jj + 1)
        {
          if (*v155 != v92)
          {
            objc_enumerationMutation(v90);
          }

          v94 = *(*(&v154 + 1) + 8 * jj);
          v95 = [v149 telemetryNotReportedDurationThresholdAggregation];
          (v39[2])(v39, v94, v95, @"DurationThresholdFiltered");
        }

        v36 = v47;
        v91 = [v90 countByEnumeratingWithState:&v154 objects:v212 count:16];
      }

      while (v91);
    }

    v96 = sub_100002620();
    if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
    {
      v97 = [v149 telemetryNotReportedFailedStringAllowlistAggregation];
      v98 = [v97 totalCount];
      *buf = 134217984;
      v182 = v98;
      _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "**************\nString allowlist filtered signpost object count: %llu", buf, 0xCu);
    }

    v99 = [v149 telemetryNotReportedFailedStringAllowlistAggregation];
    v100 = [v99 keysInDescendingCountOrder];

    v176[3] = 0;
    v150 = 0u;
    v151 = 0u;
    v152 = 0u;
    v153 = 0u;
    v101 = v100;
    v102 = [v101 countByEnumeratingWithState:&v150 objects:v211 count:16];
    if (v102)
    {
      v103 = *v151;
      do
      {
        for (kk = 0; kk != v102; kk = kk + 1)
        {
          if (*v151 != v103)
          {
            objc_enumerationMutation(v101);
          }

          v105 = *(*(&v150 + 1) + 8 * kk);
          v106 = [v149 telemetryNotReportedFailedStringAllowlistAggregation];
          (v39[2])(v39, v105, v106, @"StringWhitelistFiltered");
        }

        v36 = v47;
        v102 = [v101 countByEnumeratingWithState:&v150 objects:v211 count:16];
      }

      while (v102);
    }

    v107 = +[NSMutableDictionary dictionary];
    *&v108 = v35;
    v109 = [NSNumber numberWithFloat:v108];
    [v107 setObject:v109 forKeyedSubscript:@"ProcessingDurationInSeconds"];

    v110 = [NSNumber numberWithUnsignedLongLong:v142];
    [v107 setObject:v110 forKeyedSubscript:@"LogObjectsProcessed"];

    v111 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v149 totalReportedAnimationCount]);
    [v107 setObject:v111 forKeyedSubscript:@"AnimationsReported"];

    v112 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v149 totalReportedIntervalCount]);
    [v107 setObject:v112 forKeyedSubscript:@"IntervalsReported"];

    v113 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v149 totalReportedEventCount]);
    [v107 setObject:v113 forKeyedSubscript:@"EventsReported"];

    v114 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v149 totalUnreportedAnimationCount]);
    [v107 setObject:v114 forKeyedSubscript:@"AnimationsNotReported"];

    v115 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v149 totalUnreportedIntervalCount]);
    [v107 setObject:v115 forKeyedSubscript:@"IntervalsNotReported"];

    v116 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v149 totalUnreportedEventCount]);
    [v107 setObject:v116 forKeyedSubscript:@"EventsNotReported"];

    v117 = [NSNumber numberWithBool:v141];
    [v107 setObject:v117 forKeyedSubscript:@"WasInterrupted"];

    AnalyticsSendEvent();
    v118 = sub_100002620();
    if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
    {
      v137 = [v149 totalReportedEventCount];
      v136 = [v149 totalUnreportedEventCount];
      v135 = [v149 totalReportedIntervalCount];
      v134 = COERCE_DOUBLE([v149 totalUnreportedIntervalCount]);
      v133 = [v149 totalReportedAnimationCount];
      v132 = [v149 totalUnreportedAnimationCount];
      v138 = [v149 telemetryNotReportedFailedSCFilterAggregation];
      v119 = [v138 totalCount];
      v120 = [v149 telemetryNotReportedDurationThresholdAggregation];
      v121 = [v120 totalCount];
      v122 = [v149 telemetryNotReportedFailedStringAllowlistAggregation];
      v123 = [v122 totalCount];
      v124 = [v149 telemetryDisabledAggregation];
      v125 = [v124 totalCount];
      *buf = 134221570;
      v126 = "";
      v182 = v137;
      v183 = 2048;
      if (v141)
      {
        v126 = " (Interrupted by deferral)";
      }

      v184 = v136;
      v185 = 2048;
      v186 = v135;
      v187 = 2048;
      v188 = v134;
      v189 = 2048;
      v190 = v133;
      v191 = 2048;
      v192 = v132;
      v193 = 2048;
      v194 = v119;
      v195 = 2048;
      v196 = v121;
      v197 = 2048;
      v198 = v123;
      v199 = 2048;
      v200 = v125;
      v201 = 2048;
      v202 = v142;
      v203 = 2048;
      v204 = v35;
      v205 = 2112;
      v206 = v145;
      v207 = 2112;
      v208 = v139;
      v209 = 2080;
      v210 = v126;
      _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "Done processing %llu reported and %llu unreported events, %llu reported and %llu unreported intervals and %llu reported and %llu unreported animations (%llu blocklisted, %llu too short, %llu allowlisted, %llu telemetry not enabled) from %llu log events in %.2fs between %@ and %@%s\n", buf, 0x98u);

      v36 = v47;
    }

    if (qword_100019F90)
    {
      v127 = sub_100002620();
      if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v182 = qword_100019F90;
        v183 = 2048;
        v184 = qword_100019F88;
        _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_DEFAULT, "Throttled %llu times for a total of %llu usec", buf, 0x16u);
      }
    }

    if (v147)
    {
      v128 = [v147 stallAggregationSnapshot];
      sub_100001DE0(v128);
    }

    _Block_object_dispose(&v175, 8);
    v38 = v139;
  }

  if (v143)
  {
  }

  if (!v144)
  {
  }

  v129 = sub_100002620();
  if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
  {
    v130 = *(a1 + 104);
    if (byte_100019F58)
    {
      v131 = @"Enabled";
    }

    else
    {
      v131 = @"Disabled";
    }

    *buf = 138413058;
    v182 = v131;
    v183 = 2112;
    v184 = @"Enabled";
    v185 = 2112;
    v186 = @"Enabled";
    v187 = 2048;
    v188 = v130;
    _os_log_impl(&_mh_execute_header, v129, OS_LOG_TYPE_DEFAULT, "Processing for:\n\tos_signpost CA telemetry: %@\n\tAggregation CA telemetry: %@\n\tCAMetalLayer CA telemetry: %@ took %.2f seconds", buf, 0x2Au);
  }
}

void sub_1000077EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v6;
  if (([(__CFString *)v8 isEqualToString:@"com.apple.performance.signpost_reporter_tasking"]& 1) != 0)
  {
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v7 objectForKeyedSubscript:@"TaskedOn"];
        if (v9)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = [v9 BOOLValue];
            v11 = sub_100002620();
            v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
            if (v10)
            {
              if (v12)
              {
                LOWORD(v18) = 0;
                _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Reporting based on being tasked-on by CoreAnalytics", &v18, 2u);
              }

              v13 = 1;
              goto LABEL_28;
            }

            if (v12)
            {
              v18 = 138412290;
              v19 = @"TaskedOn";
              v17 = "Not reporting based on not being tasked-on by CoreAnalytics ('%@' is false)";
              goto LABEL_26;
            }

LABEL_27:
            v13 = 0;
LABEL_28:

            goto LABEL_19;
          }

          v11 = sub_100002620();
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_27;
          }

          v18 = 138412290;
          v19 = @"TaskedOn";
          v17 = "Not reporting since not tasked-on by CoreAnalytics (Wrong value class for class for %@)";
        }

        else
        {
          v11 = sub_100002620();
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_27;
          }

          v18 = 138412290;
          v19 = @"TaskedOn";
          v17 = "Not reporting since is not tasked-on by CoreAnalytics (nil value for %@ key)";
        }

LABEL_26:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v17, &v18, 0xCu);
        goto LABEL_27;
      }

      v9 = sub_100002620();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        v14 = "Not reporting based on not being tasked-on by CoreAnalytics (Non-NSDictionary configuration object)";
        goto LABEL_16;
      }
    }

    else
    {
      v9 = sub_100002620();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        v14 = "Not reporting based on not being tasked-on by CoreAnalytics (nil configuration object)";
LABEL_16:
        v15 = v9;
        v16 = 2;
        goto LABEL_17;
      }
    }
  }

  else
  {
    v9 = sub_100002620();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v8;
      v14 = "Not reporting based on not being tasked-on by CoreAnalytics (unexpected type string: '%@')";
      v15 = v9;
      v16 = 12;
LABEL_17:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, &v18, v16);
    }
  }

  v13 = 0;
LABEL_19:

  *(*(*(a1 + 40) + 8) + 24) = v13;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100007AEC(id a1)
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v2) = info.denom;
  LODWORD(v1) = info.numer;
  *&qword_100019F68 = v1 / v2 / 1000.0;
  dword_100019F70 = 1207182336;
  v3 = sub_100002620();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v6 = 0x40FE848000000000;
    v7 = 2048;
    v8 = 125000.0 / *&qword_100019F68;
    v9 = 1024;
    v10 = 10;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%f us, %f mach time units per quantum of %u reported events", buf, 0x1Cu);
  }

  qword_100019F78 = mach_continuous_time();
}

void sub_100007C0C(id a1)
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v2) = info.denom;
  LODWORD(v1) = info.numer;
  *&qword_100019FA0 = v1 * 0.000000001 / v2;
}

void sub_100007C58(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  sub_100005B0C();
  if (*(*(*(a1 + 32) + 8) + 24) > 4uLL)
  {
    v17 = sub_100002620();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v7 description];
      v24 = [v8 aggregationDictionary];
      v25 = [v24 objectForKeyedSubscript:v7];
      *buf = 138412546;
      *&buf[4] = v23;
      *&buf[12] = 2048;
      *&buf[14] = [v25 unsignedLongLongValue];
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@:\t%llu (Count not reported)", buf, 0x16u);
    }
  }

  else
  {
    v28[0] = @"Subsystem";
    v10 = v7;
    v27 = v8;
    v11 = v8;
    v26 = v9;
    v12 = v9;
    v13 = [v10 subsystem];
    *buf = v13;
    v28[1] = @"Category";
    v14 = [v10 category];
    *&buf[8] = v14;
    v28[2] = @"Count";
    v15 = [v11 aggregationDictionary];

    v16 = [v15 objectForKeyedSubscript:v10];

    v28[3] = @"Classification";
    *&buf[16] = v16;
    v30 = v12;
    v17 = [NSDictionary dictionaryWithObjects:buf forKeys:v28 count:4];

    AnalyticsSendEvent();
    v18 = sub_100002620();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v10 description];
      v20 = [v11 aggregationDictionary];
      v21 = [v20 objectForKeyedSubscript:v10];
      v22 = [v21 unsignedLongLongValue];
      *buf = 138412546;
      *&buf[4] = v19;
      *&buf[12] = 2048;
      *&buf[14] = v22;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@:\t%llu (Count reported to CoreAnalytics)", buf, 0x16u);
    }

    v9 = v26;
    v8 = v27;
  }

  ++*(*(*(a1 + 32) + 8) + 24);
}

uint64_t sub_100008DE0()
{
  v1 = *(v0 + OBJC_IVAR___NSFESelEvent_name);
  v2 = *(v0 + OBJC_IVAR___NSFESelEvent_name + 8);

  return v1;
}

uint64_t sub_100008E1C()
{
  v1 = *(v0 + OBJC_IVAR___NSFESelEvent_targetSelector);
  v2 = *(v0 + OBJC_IVAR___NSFESelEvent_targetSelector + 8);

  return v1;
}

uint64_t sub_100008E68()
{
  v1 = *(v0 + OBJC_IVAR___NSFESelEvent_keyName);
  v2 = *(v0 + OBJC_IVAR___NSFESelEvent_keyName + 8);

  return v1;
}

uint64_t sub_100008EB4()
{
  v1 = *(v0 + OBJC_IVAR___NSFESelEvent_targetClassName);
  v2 = *(v0 + OBJC_IVAR___NSFESelEvent_targetClassName + 8);

  return v1;
}

uint64_t sub_100008EF0()
{
  v1 = *(v0 + OBJC_IVAR___NSFESelEvent_returnType);
  v2 = *(v0 + OBJC_IVAR___NSFESelEvent_returnType + 8);

  return v1;
}

uint64_t sub_100008F3C()
{
  v1 = *(v0 + OBJC_IVAR___NSFESelEvent_processName);
  v2 = *(v0 + OBJC_IVAR___NSFESelEvent_processName + 8);

  return v1;
}

unint64_t sub_100008F78()
{
  result = sub_10000B698(&_swiftEmptyArrayStorage);
  qword_100019FB0 = result;
  return result;
}

unsigned __int8 *sub_1000093C8(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = [a1 subsystem];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (v6 == 0xD000000000000027 && 0x8000000100011AC0 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v11 = [a1 category];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (v12 == 0x6E6576454546534ELL && v14 == 0xE900000000000074)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
LABEL_15:

LABEL_16:
      swift_deallocPartialClassInstance();
      return 0;
    }
  }

  v16 = [a1 metadata];
  if (!v16)
  {
    goto LABEL_15;
  }

  v94 = ObjectType;
  v17 = v16;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = [a1 name];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25 = &v2[OBJC_IVAR___NSFESelEvent_name];
  *v25 = v22;
  v25[1] = v24;
  v26 = [a1 processName];
  if (v26)
  {
    v27 = v26;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  v32 = &v2[OBJC_IVAR___NSFESelEvent_processName];
  *v32 = v28;
  v32[1] = v30;
  v98 = v18;
  v99 = v20;
  v96 = 124;
  v97 = 0xE100000000000000;
  sub_100009ECC();
  v33 = StringProtocol.components<A>(separatedBy:)();

  v34 = *v25;
  v35 = v25[1];
  if ((*v25 != 0x655364656E6E6142 || v35 != 0xE90000000000006CLL) && (v36 = *v25, v37 = v25[1], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0) || v33[2] != 4)
  {
    if ((v34 != 0x6E754643564BLL || v35 != 0xE600000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v33[2] != 5)
    {

      v57 = v25[1];

      v58 = v32[1];

      goto LABEL_16;
    }

    v2[OBJC_IVAR___NSFESelEvent_bannedSelector] = 0;
    v2[OBJC_IVAR___NSFESelEvent_isVFK] = 1;
    v47 = v33[5];
    v48 = &v2[OBJC_IVAR___NSFESelEvent_targetSelector];
    *v48 = v33[4];
    v48[1] = v47;
    v49 = v33[7];
    v50 = &v2[OBJC_IVAR___NSFESelEvent_keyName];
    *v50 = v33[6];
    v50[1] = v49;
    v51 = v33[9];
    v52 = &v2[OBJC_IVAR___NSFESelEvent_targetClassName];
    *v52 = v33[8];
    v52[1] = v51;
    v53 = v33[10];
    v54 = v33[11];
    if (!v53 && v54 == 0xE000000000000000 || (v55 = v33[10], v56 = v33[11], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      v53 = 0;
      v54 = 0;
    }

    else
    {
    }

    v87 = &v2[OBJC_IVAR___NSFESelEvent_returnType];
    *v87 = v53;
    v87[1] = v54;
    v88 = v33[12];
    v89 = v33[13];

    v90 = sub_100009BCC(v88, v89);
    if (v91)
    {
      v86 = 0;
    }

    else
    {
      v86 = v90;
    }

    goto LABEL_105;
  }

  v2[OBJC_IVAR___NSFESelEvent_bannedSelector] = 1;
  v38 = &v2[OBJC_IVAR___NSFESelEvent_keyName];
  *v38 = 0;
  v38[1] = 0;
  v2[OBJC_IVAR___NSFESelEvent_isVFK] = 0;
  v39 = v33[5];
  v40 = &v2[OBJC_IVAR___NSFESelEvent_targetSelector];
  *v40 = v33[4];
  v40[1] = v39;
  v41 = v33[7];
  v42 = &v2[OBJC_IVAR___NSFESelEvent_targetClassName];
  *v42 = v33[6];
  v42[1] = v41;
  v43 = v33[8];
  v44 = v33[9];
  if (!v43 && v44 == 0xE000000000000000 || (v45 = v33[8], v46 = v33[9], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v43 = 0;
    v44 = 0;
  }

  else
  {
  }

  v59 = &v2[OBJC_IVAR___NSFESelEvent_returnType];
  *v59 = v43;
  v59[1] = v44;
  v61 = v33[10];
  v60 = v33[11];

  v62 = HIBYTE(v60) & 0xF;
  v63 = v61 & 0xFFFFFFFFFFFFLL;
  if ((v60 & 0x2000000000000000) != 0)
  {
    v64 = HIBYTE(v60) & 0xF;
  }

  else
  {
    v64 = v61 & 0xFFFFFFFFFFFFLL;
  }

  if (!v64)
  {

    v86 = 0;
LABEL_105:
    v65 = v94;
LABEL_106:
    *&v2[OBJC_IVAR___NSFESelEvent_keyType] = v86;
    v95.receiver = v2;
    v95.super_class = v65;
    v92 = objc_msgSendSuper2(&v95, "init");

    return v92;
  }

  if ((v60 & 0x1000000000000000) != 0)
  {
    v67 = sub_10000A650(v61, v60, 10);
    v85 = v93;

    v65 = v94;
LABEL_98:
    if (v85)
    {
      v86 = 0;
    }

    else
    {
      v86 = v67;
    }

    goto LABEL_106;
  }

  if ((v60 & 0x2000000000000000) == 0)
  {
    if ((v61 & 0x1000000000000000) != 0)
    {
      result = ((v60 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v65 = v94;
    v66 = *result;
    if (v66 == 43)
    {
      if (v63 >= 1)
      {
        v62 = v63 - 1;
        if (v63 != 1)
        {
          v67 = 0;
          if (result)
          {
            v74 = result + 1;
            while (1)
            {
              v75 = *v74 - 48;
              if (v75 > 9)
              {
                goto LABEL_96;
              }

              v76 = 10 * v67;
              if ((v67 * 10) >> 64 != (10 * v67) >> 63)
              {
                goto LABEL_96;
              }

              v67 = v76 + v75;
              if (__OFADD__(v76, v75))
              {
                goto LABEL_96;
              }

              ++v74;
              if (!--v62)
              {
                goto LABEL_97;
              }
            }
          }

          goto LABEL_88;
        }

        goto LABEL_96;
      }

      goto LABEL_112;
    }

    if (v66 != 45)
    {
      if (v63)
      {
        v67 = 0;
        if (result)
        {
          while (1)
          {
            v80 = *result - 48;
            if (v80 > 9)
            {
              goto LABEL_96;
            }

            v81 = 10 * v67;
            if ((v67 * 10) >> 64 != (10 * v67) >> 63)
            {
              goto LABEL_96;
            }

            v67 = v81 + v80;
            if (__OFADD__(v81, v80))
            {
              goto LABEL_96;
            }

            ++result;
            if (!--v63)
            {
              goto LABEL_88;
            }
          }
        }

        goto LABEL_88;
      }

LABEL_96:
      v67 = 0;
      LOBYTE(v62) = 1;
      goto LABEL_97;
    }

    if (v63 >= 1)
    {
      v62 = v63 - 1;
      if (v63 != 1)
      {
        v67 = 0;
        if (result)
        {
          v68 = result + 1;
          while (1)
          {
            v69 = *v68 - 48;
            if (v69 > 9)
            {
              goto LABEL_96;
            }

            v70 = 10 * v67;
            if ((v67 * 10) >> 64 != (10 * v67) >> 63)
            {
              goto LABEL_96;
            }

            v67 = v70 - v69;
            if (__OFSUB__(v70, v69))
            {
              goto LABEL_96;
            }

            ++v68;
            if (!--v62)
            {
              goto LABEL_97;
            }
          }
        }

LABEL_88:
        LOBYTE(v62) = 0;
LABEL_97:
        LOBYTE(v96) = v62;
        v85 = v62;

        goto LABEL_98;
      }

      goto LABEL_96;
    }

    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v98 = v61;
  v99 = v60 & 0xFFFFFFFFFFFFFFLL;
  if (v61 != 43)
  {
    v65 = v94;
    if (v61 != 45)
    {
      if (v62)
      {
        v67 = 0;
        v82 = &v98;
        while (1)
        {
          v83 = *v82 - 48;
          if (v83 > 9)
          {
            break;
          }

          v84 = 10 * v67;
          if ((v67 * 10) >> 64 != (10 * v67) >> 63)
          {
            break;
          }

          v67 = v84 + v83;
          if (__OFADD__(v84, v83))
          {
            break;
          }

          v82 = (v82 + 1);
          if (!--v62)
          {
            goto LABEL_97;
          }
        }
      }

      goto LABEL_96;
    }

    if (v62)
    {
      if (--v62)
      {
        v67 = 0;
        v71 = &v98 + 1;
        while (1)
        {
          v72 = *v71 - 48;
          if (v72 > 9)
          {
            break;
          }

          v73 = 10 * v67;
          if ((v67 * 10) >> 64 != (10 * v67) >> 63)
          {
            break;
          }

          v67 = v73 - v72;
          if (__OFSUB__(v73, v72))
          {
            break;
          }

          ++v71;
          if (!--v62)
          {
            goto LABEL_97;
          }
        }
      }

      goto LABEL_96;
    }

    goto LABEL_111;
  }

  v65 = v94;
  if (v62)
  {
    if (--v62)
    {
      v67 = 0;
      v77 = &v98 + 1;
      while (1)
      {
        v78 = *v77 - 48;
        if (v78 > 9)
        {
          break;
        }

        v79 = 10 * v67;
        if ((v67 * 10) >> 64 != (10 * v67) >> 63)
        {
          break;
        }

        v67 = v79 + v78;
        if (__OFADD__(v79, v78))
        {
          break;
        }

        ++v77;
        if (!--v62)
        {
          goto LABEL_97;
        }
      }
    }

    goto LABEL_96;
  }

LABEL_113:
  __break(1u);
  return result;
}

uint64_t sub_100009BCC(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_10000A650(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

unint64_t sub_100009ECC()
{
  result = qword_100019E00;
  if (!qword_100019E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019E00);
  }

  return result;
}

unint64_t sub_100009F20()
{
  sub_10000ABDC(&qword_100019E08, &qword_10000EE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000EE30;
  strcpy((inited + 32), "bannedSelector");
  *(inited + 47) = -18;
  v2 = *(v0 + OBJC_IVAR___NSFESelEvent_bannedSelector);
  *(inited + 48) = Bool._bridgeToObjectiveC()();
  *(inited + 56) = 0x6D614E7373616C63;
  *(inited + 64) = 0xE900000000000065;
  v3 = *(v0 + OBJC_IVAR___NSFESelEvent_targetClassName);
  v4 = *(v0 + OBJC_IVAR___NSFESelEvent_targetClassName + 8);
  *(inited + 72) = String._bridgeToObjectiveC()();
  *(inited + 80) = 0x4B46567369;
  *(inited + 88) = 0xE500000000000000;
  v5 = *(v0 + OBJC_IVAR___NSFESelEvent_isVFK);
  *(inited + 96) = Bool._bridgeToObjectiveC()();
  *(inited + 104) = 0x656D614E79656BLL;
  *(inited + 112) = 0xE700000000000000;
  if (*(v0 + OBJC_IVAR___NSFESelEvent_keyName + 8))
  {
    v6 = *(v0 + OBJC_IVAR___NSFESelEvent_keyName);
    v7 = *(v0 + OBJC_IVAR___NSFESelEvent_keyName + 8);
  }

  v8 = String._bridgeToObjectiveC()();

  *(inited + 120) = v8;
  *(inited + 128) = 0x4E737365636F7270;
  *(inited + 136) = 0xEB00000000656D61;
  if (*(v0 + OBJC_IVAR___NSFESelEvent_processName + 8))
  {
    v9 = *(v0 + OBJC_IVAR___NSFESelEvent_processName);
    v10 = *(v0 + OBJC_IVAR___NSFESelEvent_processName + 8);
  }

  v11 = String._bridgeToObjectiveC()();

  *(inited + 144) = v11;
  *(inited + 152) = 0x79546E7275746572;
  *(inited + 160) = 0xEA00000000006570;
  if (*(v0 + OBJC_IVAR___NSFESelEvent_returnType + 8))
  {
    v12 = *(v0 + OBJC_IVAR___NSFESelEvent_returnType);
    v13 = *(v0 + OBJC_IVAR___NSFESelEvent_returnType + 8);
  }

  v14 = String._bridgeToObjectiveC()();

  *(inited + 168) = v14;
  *(inited + 176) = 0x726F7463656C6573;
  *(inited + 184) = 0xE800000000000000;
  v15 = *(v0 + OBJC_IVAR___NSFESelEvent_targetSelector);
  v16 = *(v0 + OBJC_IVAR___NSFESelEvent_targetSelector + 8);
  *(inited + 192) = String._bridgeToObjectiveC()();
  *(inited + 200) = 0x6570795479656BLL;
  *(inited + 208) = 0xE700000000000000;
  v17 = *(v0 + OBJC_IVAR___NSFESelEvent_keyType);
  *(inited + 216) = Int._bridgeToObjectiveC()();
  v18 = sub_10000B7A0(inited);
  swift_setDeallocating();
  sub_10000ABDC(&qword_100019E10, &qword_10000EE68);
  swift_arrayDestroy();
  return v18;
}

Class sub_10000A1E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_10000BCD4();
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

id sub_10000A2A4()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_10000A338()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10000A414(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10000A4D0(a1, v4);
}

unint64_t sub_10000A458(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10000A598(a1, a2, v6);
}

unint64_t sub_10000A4D0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10000BD20(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10000BC0C(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10000A598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unsigned __int8 *sub_10000A650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10000AC24();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_10000ABDC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000AC24()
{
  v0 = String.subscript.getter();
  v4 = sub_10000ACA4(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_10000ACA4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_10000ADFC(v9, 0);
  v12 = sub_10000AE70(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

void *sub_10000ADFC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10000ABDC(&qword_100019E60, &qword_10000EEB0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_10000AE70(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_10000B090(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10000B090(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_10000B090(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_10000B10C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000ABDC(&qword_100019E48, "$A");
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v39 = *(v24 + 32);
        v37 = v25;
        v38 = v26;
      }

      else
      {
        sub_10000BD20(v24, &v37);
      }

      v27 = *(*(v5 + 56) + v23);
      result = AnyHashable._rawHashValue(seed:)(*(v8 + 40));
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v37;
      v19 = v38;
      *(v17 + 32) = v39;
      *v17 = v18;
      *(v17 + 16) = v19;
      *(*(v8 + 56) + v16) = v27;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_10000B3A8(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_10000A414(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  result = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 >= result && (a3 & 1) != 0)
  {
    goto LABEL_7;
  }

  if (v15 >= result && (a3 & 1) == 0)
  {
    result = sub_10000B508();
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      *(v16[7] + v10) = a1 & 1;
      return result;
    }

    goto LABEL_11;
  }

  sub_10000B10C(result, a3 & 1);
  v17 = *v4;
  result = sub_10000A414(a2);
  if ((v14 & 1) != (v18 & 1))
  {
LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = result;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:
  result = sub_10000BD20(a2, v25);
  v16[(v10 >> 6) + 8] |= 1 << v10;
  v19 = v16[6] + 40 * v10;
  v20 = v26;
  v21 = v25[1];
  *v19 = v25[0];
  *(v19 + 16) = v21;
  *(v19 + 32) = v20;
  *(v16[7] + v10) = a1 & 1;
  v22 = v16[2];
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v16[2] = v24;
  return result;
}

void *sub_10000B508()
{
  v1 = v0;
  sub_10000ABDC(&qword_100019E48, "$A");
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        result = sub_10000BD20(*(v2 + 48) + 40 * v17, v22);
        v18 = *(*(v2 + 56) + v17);
        v19 = *(v4 + 48) + 40 * v17;
        v20 = v23;
        v21 = v22[1];
        *v19 = v22[0];
        *(v19 + 16) = v21;
        *(v19 + 32) = v20;
        *(*(v4 + 56) + v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_10000B698(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000ABDC(&qword_100019E48, "$A");
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000BD7C(v4, v13);
      result = sub_10000A414(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      *(v3[7] + result) = v15;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000B7A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000ABDC(&qword_100019E58, &qword_10000EEA8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10000A458(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

BOOL sub_10000B8A4(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for NSFESelEvent());
  v3 = a1;
  v4 = sub_1000093C8(v3);
  if (v4)
  {
    v5 = [v3 metadata];
    if (v5)
    {
      v6 = v5;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v7 = String.hashValue.getter();
    }

    else
    {
      v7 = 0;
    }

    v8 = [v3 processName];
    if (v8)
    {
      v9 = v8;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v10 = String.hashValue.getter();

      if (v7 == v10)
      {
        v7 = 0;
        goto LABEL_18;
      }

      v7 ^= v10;
    }

    else if (!v7)
    {
      goto LABEL_18;
    }

    if (qword_100019FA8 != -1)
    {
      swift_once();
    }

    v23 = v7;
    AnyHashable.init<A>(_:)();
    swift_beginAccess();
    v11 = qword_100019FB0;
    if (*(qword_100019FB0 + 16) && (v12 = sub_10000A414(v21), (v13 & 1) != 0))
    {
      v14 = *(*(v11 + 56) + v12);
      swift_endAccess();
      sub_10000BC0C(v21);
      v15 = v4;
      if (v14)
      {
LABEL_21:

        return v4 != 0;
      }
    }

    else
    {
      swift_endAccess();
      sub_10000BC0C(v21);
    }

LABEL_18:
    if (qword_100019FA8 != -1)
    {
      swift_once();
    }

    v23 = v7;
    AnyHashable.init<A>(_:)();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = qword_100019FB0;
    qword_100019FB0 = 0x8000000000000000;
    sub_10000B3A8(1, v21, isUniquelyReferenced_nonNull_native);
    sub_10000BC0C(v21);
    qword_100019FB0 = v22;
    swift_endAccess();
    v15 = String._bridgeToObjectiveC()();
    v17 = swift_allocObject();
    *(v17 + 16) = v4;
    v21[4] = sub_10000BC98;
    v21[5] = v17;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 1107296256;
    v21[2] = sub_10000A1E4;
    v21[3] = &unk_100014C78;
    v18 = _Block_copy(v21);
    v19 = v4;

    AnalyticsSendEventLazy();

    _Block_release(v18);
    goto LABEL_21;
  }

  return v4 != 0;
}

uint64_t sub_10000BC60()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000BCBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000BCD4()
{
  result = qword_100019E40;
  if (!qword_100019E40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100019E40);
  }

  return result;
}

uint64_t sub_10000BD7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ABDC(&qword_100019E50, &qword_10000EEA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10000BE04(uint64_t a1, uint64_t a2)
{
  v4 = [sub_10000241C(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  sub_100002430(&_mh_execute_header, v5, v6, "CA Stall Aggregation:\n%@");
}

void sub_10000BE60(uint64_t a1, uint64_t a2)
{
  v4 = [sub_10000241C(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  sub_100002430(&_mh_execute_header, v5, v6, "Could not find bundle ID for %@. Skipping");
}

void sub_10000C154(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Found bundle ID: %@ for path:%@", &v3, 0x16u);
}

void sub_10000C1DC(void *a1)
{
  v2 = [a1 subsystem];
  v3 = [a1 category];
  v4 = [a1 name];
  sub_100007F60();
  sub_100007F88();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

void sub_10000C2BC(void *a1)
{
  v2 = [a1 subsystem];
  v3 = [a1 category];
  v4 = [a1 name];
  sub_100007F60();
  sub_100007F88();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

void sub_10000C4A4(void *a1, os_log_t log)
{
  if (a1)
  {
    v4 = [a1 localizedDescription];
  }

  else
  {
    v4 = @"Unknown error";
  }

  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Could not clear cookie file: %@", &v5, 0xCu);
  if (a1)
  {
  }
}

void sub_10000C560(void *a1)
{
  v2 = [a1 subsystem];
  v3 = [a1 category];
  v9 = [a1 name];
  sub_100007F88();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_10000C6C0(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 _coreAnalyticsEventName];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "Could not generate telemetry payload for %@", a1, 0xCu);
}