void sub_1000013B0(id a1)
{
  v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.UIKit"];
  v1 = [v3 objectForKey:@"PKUIPencilHoverPreviewEnabledKey"];

  if (v1)
  {
    v2 = v3;
  }

  else
  {
    [v3 setValue:&__kCFBooleanTrue forKey:@"PKUIPencilHoverPreviewEnabledKey"];
    [v3 setValue:&__kCFBooleanFalse forKey:@"PKHasUserChangedHoverPreviewEnabledSettingKey"];
    v2 = v3;
  }
}

void sub_1000014DC(id a1)
{
  qword_10002AC30 = objc_alloc_init(CHPKSettingsServer);

  _objc_release_x1();
}

void sub_1000018C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000020C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained queuedTimestampDate];

  [WeakRetained setQueuedTimestampDate:*(a1 + 32)];
  if (v3)
  {
  }

  else
  {
    v4 = dispatch_time(0, 5000000000);
    v5 = *(*(a1 + 40) + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000021AC;
    block[3] = &unk_100024730;
    block[4] = WeakRetained;
    dispatch_after(v4, v5, block);
  }
}

id sub_1000021AC(uint64_t a1)
{
  [*(a1 + 32) _touchLastSessionTimestampIfNecessary];
  v2 = *(a1 + 32);

  return [v2 setQueuedTimestampDate:0];
}

Class sub_1000023EC(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_10002AC48)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100002540;
    v4[4] = &unk_1000247B8;
    v4[5] = v4;
    v5 = off_1000247A0;
    v6 = 0;
    qword_10002AC48 = _sl_dlopen();
    v2 = v4[0];
    if (qword_10002AC48)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("LSApplicationWorkspace");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_10002AC40 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100002540(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10002AC48 = result;
  return result;
}

uint64_t sub_100002A68(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_10002AC50 = objc_opt_new();

  return _objc_release_x1();
}

void sub_100002E4C(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v21 = 0x2020000000;
    v22 = xpc_activity_set_state(v3, 4);
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v7 = qword_10002ACE8;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(*(&buf + 1) + 24);
      *v16 = 138412546;
      v17 = @"com.apple.handwritingd.analytics.scheduledEventsActivity";
      v18 = 1024;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Running activity %@, extended=%d", v16, 0x12u);
    }

    if (qword_10002AC68 != -1)
    {
      dispatch_once(&qword_10002AC68, &stru_1000247D8);
    }

    v9 = qword_10002AC60;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003200;
    block[3] = &unk_100024828;
    v10 = v3;
    v11 = *(a1 + 32);
    v13 = v10;
    p_buf = &buf;
    v15 = v11;
    dispatch_async(v9, block);

    _Block_object_dispose(&buf, 8);
  }

  else if (!state)
  {
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v5 = qword_10002ACE8;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = @"com.apple.handwritingd.analytics.scheduledEventsActivity";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Checking in activity %@", &buf, 0xCu);
    }

    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v6, XPC_ACTIVITY_REPEATING, 1);
    xpc_dictionary_set_int64(v6, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
    xpc_dictionary_set_int64(v6, XPC_ACTIVITY_DELAY, XPC_ACTIVITY_INTERVAL_15_MIN);
    xpc_dictionary_set_int64(v6, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_1_HOUR);
    xpc_dictionary_set_string(v6, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
    xpc_dictionary_set_BOOL(v6, XPC_ACTIVITY_REQUIRE_SCREEN_SLEEP, 1);
    xpc_dictionary_set_BOOL(v6, XPC_ACTIVITY_REQUIRES_CLASS_C, 1);
    xpc_activity_set_criteria(v3, v6);
  }
}

void sub_10000319C(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.handwritingd.analytics.scheduledEventsQueue", v3);
  v2 = qword_10002AC60;
  qword_10002AC60 = v1;
}

void sub_100003200(uint64_t a1)
{
  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    xpc_activity_set_state(*(a1 + 32), 3);
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v2 = qword_10002ACE8;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = @"com.apple.handwritingd.analytics.scheduledEventsActivity";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "xpc activity should be defered, defering %@", buf, 0xCu);
    }
  }

  else
  {
    v3 = [*(a1 + 48) sharedInstance];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100003374;
    v6[3] = &unk_100024800;
    v5 = *(a1 + 32);
    v4 = v5;
    v7 = v5;
    [v3 dispatchScheduledEventsWithCompletionBlock:v6];

    v2 = v7;
  }
}

void sub_100003374(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    xpc_activity_set_state(*(a1 + 32), 5);
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v2 = qword_10002ACE8;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(*(*(a1 + 40) + 8) + 24);
      v4 = 138412546;
      v5 = @"com.apple.handwritingd.analytics.scheduledEventsActivity";
      v6 = 1024;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Done running activity %@, extended=%d", &v4, 0x12u);
    }
  }
}

void sub_100003824(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 objectForKey:?];
  if (v5)
  {
    [*(a1 + 32) setObject:v5 forKey:v6];
  }
}

uint64_t sub_100003AC4(uint64_t a1)
{
  [*(a1 + 32) dispatchSettingsEvents];
  [*(a1 + 32) dispatchLifecycleEvents];
  [*(a1 + 32) dispatchDailyUsageEvents];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_100003F7C(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = kCommonMetricQueryTimeFrame;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) loadedDate];
  v6 = [v4 aggregatedCountFromTransientCounterWithName:v11 forNumberOfDays:v3 fromLoadedDate:v5];

  v7 = [v6 intValue];
  v8 = *(a1 + 48);
  if (v7 < 1)
  {
    v9 = [v8 objectForKeyedSubscript:v11];
    if ([v9 intValue] == 1)
    {
      v10 = &off_100025F00;
    }

    else
    {
      v10 = &off_100025EE8;
    }

    [*(a1 + 48) setObject:v10 forKeyedSubscript:v11];
  }

  else
  {
    [v8 setObject:&off_100025F00 forKeyedSubscript:v11];
  }
}

void sub_100004324(void *a1, void *a2, void *a3)
{
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a3;
  v9 = a2;
  v10 = [v7 loadedDate];
  [v4 dispatchLifecycleEventForFeature:v9 denominatorKey:v8 inputModeIdentifier:v5 values:v6 sinceDate:v10];
}

id sub_100004660(uint64_t a1)
{
  v4[0] = @"inputMode";
  v4[1] = @"lifecycleValue";
  v1 = *(a1 + 40);
  v5[0] = *(a1 + 32);
  v5[1] = v1;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

uint64_t start(int a1, uint64_t a2)
{
  if (qword_10002AD20 != -1)
  {
    dispatch_once(&qword_10002AD20, &stru_1000249F0);
  }

  v4 = qword_10002ACE0;
  v5 = os_signpost_id_generate(v4);

  if (qword_10002AD20 == -1)
  {
    v6 = qword_10002ACE0;
    v7 = v5 - 1;
    if (v5 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_7;
    }
  }

  else
  {
    dispatch_once(&qword_10002AD20, &stru_1000249F0);
    v6 = qword_10002ACE0;
    v7 = v5 - 1;
    if (v5 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_7;
    }
  }

  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v5, "CHLoadDaemonResources", "", buf, 2u);
  }

LABEL_7:

  if (qword_10002AD20 != -1)
  {
    dispatch_once(&qword_10002AD20, &stru_1000249F0);
  }

  v8 = qword_10002ACA8;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BEGIN CHLoadDaemonResources", buf, 2u);
  }

  bzero(buf, 0x400uLL);
  if (!_set_user_dir_suffix() || !confstr(65537, buf, 0x400uLL))
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    v24 = *__error();
    *v27 = 67109120;
    v28 = v24;
    v25 = "failed to initialize temporary directory: %{darwin.errno}d";
    goto LABEL_42;
  }

  if (!realpath_DARWIN_EXTSN(buf, 0))
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    v26 = *__error();
    *v27 = 67109120;
    v28 = v26;
    v25 = "failed to resolve temporary directory: %{darwin.errno}d";
LABEL_42:
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, v25, v27, 8u);
LABEL_43:
    exit(1);
  }

  v9 = MGGetBoolAnswer();
  v10 = objc_autoreleasePoolPush();
  if (a1 < 2 || !v9)
  {
    objc_autoreleasePoolPop(v10);
    signal(15, 1);
    v15 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, &_dispatch_main_q);
    dispatch_source_set_event_handler(v15, &stru_100024958);
    dispatch_resume(v15);
    v16 = objc_autoreleasePoolPush();
    v17 = +[CHRemoteRecognitionServer sharedRemoteRecognitionServer];
    [v17 resumeConnectionIfIdle];
    v18 = +[CHPKSettingsServer sharedSettingsServer];
    [v18 resumeConnectionIfIdle];
    v19 = +[CHPKAnalyticsServer sharedAnalyticsServer];
    [v19 resumeConnectionIfIdle];
    +[CHPKPersistentAnalyticsController registerScheduledEventsActivity];

    objc_autoreleasePoolPop(v16);
    if (qword_10002AD20 == -1)
    {
      v20 = qword_10002ACE0;
      if (v7 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_23;
      }
    }

    else
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
      v20 = qword_10002ACE0;
      if (v7 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_23;
      }
    }

    if (os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_END, v5, "CHLoadDaemonResources", "", buf, 2u);
    }

LABEL_23:

    if (qword_10002AD20 == -1)
    {
      v21 = qword_10002ACA8;
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
LABEL_26:

        v22 = +[NSRunLoop mainRunLoop];
        [v22 run];

        return 0;
      }
    }

    else
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
      v21 = qword_10002ACA8;
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }
    }

    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "END CHLoadDaemonResources", buf, 2u);
    goto LABEL_26;
  }

  v11 = v10;
  if (a1 == 2)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = [NSString stringWithCString:*(a2 + 8) encoding:4];
    if ([v13 isEqualToString:@"--clear-inventory"])
    {
      v14 = +[CHRemoteRecognitionServer sharedRemoteRecognitionServer];
      printf("Clearing inventory status: %d\n", [v14 clearInventory]);
    }

    else
    {
      puts("Usage: ./handwritingd");
      puts("\t--clear-inventory");
    }

    objc_autoreleasePoolPop(v12);
  }

  else
  {
    puts("Usage: ./handwritingd");
    puts("\t--clear-inventory");
  }

  objc_autoreleasePoolPop(v11);
  return 0;
}

void sub_1000050FC(id a1)
{
  if (qword_10002AD20 != -1)
  {
    dispatch_once(&qword_10002AD20, &stru_1000249F0);
  }

  v1 = qword_10002ACA8;
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Received SIGTERM, terminating process immediately.", v2, 2u);
  }

  exit(0);
}

uint64_t sub_100005878(uint64_t a1)
{
  [*(a1 + 32) _cleanupCachedRecognizersTargetLifetime:0];
  result = [*(a1 + 32) _hasCachedRecognizers];
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

void sub_100006574(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    [v7 doubleValue];
  }

  else
  {
    [v6 targetIdleLifetime];
  }

  v9 = v8;
  v10 = *(a1 + 48);
  [v6 lastActiveTimestamp];
  v12 = v11;
  if (![v6 activeRequestCount] && v10 - v12 >= v9 + -2.0)
  {
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v13 = qword_10002ACC8;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = v5;
      v16 = 2048;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Staging recognizer for eviction with key: %@, idle lifetime = %fs", &v14, 0x16u);
    }

    [*(a1 + 40) addObject:v5];
  }
}

uint64_t sub_100006808(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithDouble:*(a1 + 48)];
  [v2 _cleanupCachedRecognizersTargetLifetime:v3];

  result = [*(a1 + 32) _hasCachedRecognizers];
  if ((result & 1) == 0)
  {
    v5 = *(*(a1 + 40) + 16);

    return v5();
  }

  return result;
}

void sub_100006BD8(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_100006D8C(id a1)
{
  v1 = os_log_create("com.apple.corehandwriting", "General");
  v2 = qword_10002ACA8;
  qword_10002ACA8 = v1;

  v3 = os_log_create("com.apple.corehandwriting", "Recognizer");
  v4 = qword_10002ACB0;
  qword_10002ACB0 = v3;

  v5 = os_log_create("com.apple.corehandwriting", "RecognitionSession");
  v6 = qword_10002ACB8;
  qword_10002ACB8 = v5;

  v7 = os_log_create("com.apple.corehandwriting", "StrokeGrouping");
  v8 = qword_10002ACC0;
  qword_10002ACC0 = v7;

  v9 = os_log_create("com.apple.corehandwriting", "ClutterFiltering");
  v10 = qword_10002ACD0;
  qword_10002ACD0 = v9;

  v11 = os_log_create("com.apple.corehandwriting", "RemoteRecognizer");
  v12 = qword_10002ACC8;
  qword_10002ACC8 = v11;

  v13 = os_log_create("com.apple.corehandwriting", "TextCorrectionRecognizer");
  v14 = qword_10002ACD8;
  qword_10002ACD8 = v13;

  v15 = os_log_create("com.apple.corehandwriting", "CoreHandwritingSignPosts");
  v16 = qword_10002ACE0;
  qword_10002ACE0 = v15;

  v17 = os_log_create("com.apple.corehandwriting", "Synthesizer");
  v18 = qword_10002ACF0;
  qword_10002ACF0 = v17;

  v19 = os_log_create("com.apple.corehandwriting", "TextTransform");
  v20 = qword_10002ACF8;
  qword_10002ACF8 = v19;

  v21 = os_log_create("com.apple.corehandwriting", "LineWrapping");
  v22 = qword_10002AD00;
  qword_10002AD00 = v21;

  v23 = os_log_create("com.apple.corehandwriting", "StrokeClassification");
  v24 = qword_10002AD08;
  qword_10002AD08 = v23;

  v25 = os_log_create("com.apple.corehandwriting", "DocumentLayoutAnalysis");
  v26 = qword_10002AD10;
  qword_10002AD10 = v25;

  qword_10002AD18 = os_log_create("com.apple.corehandwriting", "SessionTracker");

  _objc_release_x1();
}

id sub_100006F4C(void *a1)
{
  v1 = a1;
  v2 = +[RBSProcessIdentifier identifierWithPid:](RBSProcessIdentifier, "identifierWithPid:", [v1 processIdentifier]);
  v3 = [RBSProcessHandle handleForIdentifier:v2 error:0];

  v4 = [v3 bundle];
  v5 = [v4 identifier];

  return v5;
}

void sub_100006FF8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10000701C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t sub_100007104(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_10002AC78 = objc_opt_new();

  return _objc_release_x1();
}

void sub_100007460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CHRemoteRecognitionServer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1000075A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10000A3C8(va);

  _Unwind_Resume(a1);
}

void sub_100007C88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_100007EC8(_Unwind_Exception *a1)
{
  v6 = v3;

  _Unwind_Resume(a1);
}

void sub_100008104(_Unwind_Exception *a1)
{
  v6 = v3;

  _Unwind_Resume(a1);
}

void sub_10000835C(_Unwind_Exception *a1)
{
  v7 = v4;

  _Unwind_Resume(a1);
}

void sub_100008A30(id a1)
{
  if (os_variant_has_internal_diagnostics())
  {
    [NSSet setWithObjects:@"com.apple.mobilenotes", @"com.apple.freeform", @"com.apple.LiveInk", 0];
  }

  else
  {
    [NSSet setWithObjects:@"com.apple.mobilenotes", @"com.apple.freeform", 0, v1];
  }
  qword_10002AC88 = ;

  _objc_release_x1();
}

void sub_10000944C(_Unwind_Exception *a1)
{
  v6 = v3;

  _Unwind_Resume(a1);
}

void sub_100009684(_Unwind_Exception *a1)
{
  v6 = v3;

  _Unwind_Resume(a1);
}

void sub_100009884(uint64_t a1)
{
  if ([*(a1 + 32) intValue] == 1)
  {
    [*(*(a1 + 40) + 56) increment];
    goto LABEL_14;
  }

  if ([*(a1 + 32) intValue])
  {
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v2 = qword_10002ACA8;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = [*(a1 + 32) integerValue];
      v8 = 134217984;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "handleSessionStateUpdate got unknown state=%li", &v8, 0xCu);
    }

    if (qword_10002AD20 == -1)
    {
      v4 = qword_10002ACA8;
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
LABEL_11:

        goto LABEL_14;
      }
    }

    else
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
      v4 = qword_10002ACA8;
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_11;
      }
    }

    v5 = [*(a1 + 32) integerValue];
    v8 = 134217984;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "handleSessionStateUpdate got unknown state=%li", &v8, 0xCu);
    goto LABEL_11;
  }

  [*(*(a1 + 40) + 56) decrement];
  if (([*(*(a1 + 40) + 56) hasActiveSessions] & 1) == 0)
  {
    [*(a1 + 40) optimizeResourceUsage];
  }

LABEL_14:
  if (qword_10002AD20 != -1)
  {
    dispatch_once(&qword_10002AD20, &stru_1000249F0);
  }

  v6 = qword_10002AD18;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(*(a1 + 40) + 56) counter];
    v8 = 67109120;
    LODWORD(v9) = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Number of active sessions: %i", &v8, 8u);
  }
}

void sub_100009E48(_Unwind_Exception *a1)
{
  v6 = v3;

  _Unwind_Resume(a1);
}

void sub_100009F2C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) hasActiveSessions];
  if (qword_10002AD20 != -1)
  {
    dispatch_once(&qword_10002AD20, &stru_1000249F0);
  }

  v3 = qword_10002AD18;
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v4)
    {
      v5 = [*(*(a1 + 32) + 56) counter];
      v8[0] = 67109120;
      v8[1] = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Not triggering optimizeResourceUsage. There are %i active sessions.", v8, 8u);
    }
  }

  else
  {
    if (v4)
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Triggering optimizeResourceUsage", v8, 2u);
    }

    v7 = *(a1 + 32);
    v6 = a1 + 32;
    [*(v7 + 64) optimizeResourceUsage];
    [*(*v6 + 72) optimizeResourceUsage];
    [*(*v6 + 96) optimizeResourceUsage];
    [*(*v6 + 80) optimizeResourceUsage];
    [*(*v6 + 88) optimizeResourceUsage];
  }
}

const void **sub_10000A394(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_10000A3C8(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_10000A4BC(id a1)
{
  qword_10002AC98 = objc_alloc_init(CHPKAnalyticsServer);

  _objc_release_x1();
}

void sub_10000AF30(uint64_t a1)
{
  v2 = [*(a1 + 32) _hasIdleLifetimeElapsed:*(a1 + 40)];
  v3 = *(a1 + 32);
  if (*(v3 + 56) > 0 || v2 == 0)
  {
    v5 = v2;
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v6 = qword_10002AD10;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(*(a1 + 32) + 56);
      v13 = 134218240;
      v14 = v7;
      v15 = 1024;
      v16 = v5;
      v8 = "Did not evict document layout analyzer. activeRequestCount=%lu, hasIdleLifetimeElapsed=%i";
      v9 = v6;
      v10 = 18;
LABEL_14:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, v8, &v13, v10);
    }
  }

  else
  {
    *(v3 + 56) = 0;
    v11 = *(a1 + 32);
    v12 = *(v11 + 48);
    *(v11 + 48) = 0;

    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v6 = qword_10002AD10;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v13) = 0;
      v8 = "Evicted document layout analyzer";
      v9 = v6;
      v10 = 2;
      goto LABEL_14;
    }
  }
}

void sub_10000B8C0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v15 = 0;
  v5 = [v2 _isValidRemoteDocumentLayoutAnalysisRequest:v3 bundleIdentifier:v4 error:&v15];
  v6 = v15;
  if ((v5 & 1) == 0)
  {
    (*(*(a1 + 56) + 16))();
    goto LABEL_13;
  }

  [*(a1 + 32) _checkOutDocumentLayoutAnalyzer];
  v7 = [*(a1 + 32) _queueForRequest:*(a1 + 40)];
  if (!v7)
  {
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v8 = qword_10002ACA8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "A valid queue is required to run document layout analysis", buf, 2u);
    }

    if (qword_10002AD20 == -1)
    {
      v9 = qword_10002ACA8;
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
LABEL_10:

        goto LABEL_11;
      }
    }

    else
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
      v9 = qword_10002ACA8;
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_10;
      }
    }

    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "A valid queue is required to run document layout analysis", buf, 2u);
    goto LABEL_10;
  }

LABEL_11:
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000BAF0;
  block[3] = &unk_100024B38;
  v10 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v12 = v10;
  v13 = *(a1 + 56);
  dispatch_async(v7, block);

LABEL_13:
}

void sub_10000BAF0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v3 = [*(a1 + 40) drawing];
  v4 = [*(a1 + 40) strokeIdentifiers];
  v5 = [*(a1 + 40) contextStrokeIdentifiers];
  v6 = [*(a1 + 40) options];
  v7 = [v2 analyzeDrawing:v3 strokeIdentifiers:v4 contextStrokeIdentifiers:v5 options:v6 shouldCancel:0];

  v8 = [*(a1 + 32) serverQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000BC94;
  block[3] = &unk_100024AA0;
  block[4] = *(a1 + 32);
  dispatch_async(v8, block);

  (*(*(a1 + 48) + 16))();
}

void sub_10000C084(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7 = 0;
  v5 = [v2 isValidRemoteRequest:v3 bundleIdentifier:v4 error:&v7];
  v6 = v7;
  if (v5)
  {
    [*(a1 + 32) _handleValidRecognitionRequest:*(a1 + 40) withReply:*(a1 + 56)];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

id sub_10000D9B4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v17 = a4;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
  v8 = *(a1 + 56);
  v9 = *(a1 + 40);
  v10 = [*(*(a1 + 48) + 56) transientPhraseLexicon];
  v11 = [*(*(a1 + 48) + 56) vocabulary];
  v12 = [*(*(a1 + 48) + 56) textReplacements];
  v13 = [*(*(a1 + 48) + 56) addressBookLexicon];
  [CHCachedRecognizerManager configureRecognizer:v7 forRequest:v9 locale:v6 transientLexicon:v8 transientPhraseLexicon:v10 vocabulary:v11 textReplacements:v12 addressBookLexicon:v13];

  v14 = [*(a1 + 40) options];
  v15 = [v7 _postprocessingMergedRecognitionResult:v17 options:v14];

  return v15;
}

id sub_10000DB7C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v17 = a4;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
  v8 = *(a1 + 56);
  v9 = *(a1 + 40);
  v10 = [*(*(a1 + 48) + 56) transientPhraseLexicon];
  v11 = [*(*(a1 + 48) + 56) vocabulary];
  v12 = [*(*(a1 + 48) + 56) textReplacements];
  v13 = [*(*(a1 + 48) + 56) addressBookLexicon];
  [CHCachedRecognizerManager configureRecognizer:v7 forRequest:v9 locale:v6 transientLexicon:v8 transientPhraseLexicon:v10 vocabulary:v11 textReplacements:v12 addressBookLexicon:v13];

  v14 = [*(a1 + 40) options];
  v15 = [v7 _changeableColumnCountUpdatedResult:v17 options:v14];

  return v15;
}

void sub_10000E390(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v19 = 0;
  v7 = [v2 _buildMultiLingualResultForRequest:v3 recognitionLocales:v4 recognizersByLocale:v5 statisticsByLocale:v6 outPrincipalLineResult:&v19];
  v8 = v19;
  v9 = [*(a1 + 32) serverQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E4D4;
  block[3] = &unk_100024B88;
  block[4] = *(a1 + 32);
  v14 = *(a1 + 48);
  v15 = *(a1 + 40);
  v10 = *(a1 + 72);
  v17 = v8;
  v18 = v10;
  v16 = v7;
  v11 = v8;
  v12 = v7;
  dispatch_async(v9, block);
}

uint64_t sub_10000E4D4(uint64_t a1)
{
  --*(*(a1 + 32) + 80);
  v2 = *(a1 + 32);
  if (!*(v2 + 80))
  {
    [*(v2 + 64) clearCache];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = *(a1 + 40);
  v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = *v17;
    do
    {
      v5 = 0;
      do
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v16 + 1) + 8 * v5);
        v7 = *(a1 + 32);
        v8 = v7[6];
        v9 = *(a1 + 48);
        v10 = [v7 serverQueue];
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_10000E6E4;
        v15[3] = &unk_100024AA0;
        v15[4] = *(a1 + 32);
        [v8 checkInRecognizerForRequest:v9 locale:v6 onQueue:v10 idleCallbackBlock:v15];

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v3);
  }

  v11 = *(a1 + 64);
  v12 = *(a1 + 56);
  return (*(*(a1 + 72) + 16))();
}

void sub_10000E948(id *a1)
{
  +[NSDate timeIntervalSinceReferenceDate];
  v3 = v2;
  v4 = [a1[5] declaredVariables];
  [a1[4] setDeclaredVariables:v4];

  v5 = [a1[5] locales];
  [a1[4] setLocales:v5];

  v6 = a1[4];
  v7 = [a1[5] drawing];
  v8 = [a1[5] options];
  v9 = [v6 mathRecognitionResultForDrawing:v7 options:v8 shouldCancel:0];

  +[NSDate timeIntervalSinceReferenceDate];
  v11 = v10;
  v27[0] = @"inputStrokeCount";
  v12 = [a1[5] drawing];
  v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 strokeCount]);
  v27[1] = @"outputStringLength";
  v28[0] = v13;
  v14 = [v9 topTranscription];
  v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v14 length]);
  v28[1] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];

  v17 = [a1[6] modelPowerLogger];
  [v17 logModelInference:2 startTimestamp:v16 endTimestamp:v3 data:v11];

  v18 = [a1[6] serverQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000EC94;
  block[3] = &unk_100024BB0;
  v22 = *(a1 + 5);
  v19 = v22.i64[0];
  v24 = vextq_s8(v22, v22, 8uLL);
  v20 = a1[7];
  v25 = v9;
  v26 = v20;
  v21 = v9;
  dispatch_async(v18, block);
}

uint64_t sub_10000EC94(void *a1)
{
  --*(a1[4] + 80);
  v2 = a1[4];
  if (!*(v2 + 80))
  {
    [*(v2 + 64) clearCache];
    v2 = a1[4];
  }

  v3 = *(v2 + 48);
  v4 = a1[5];
  v5 = [v2 serverQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000EDAC;
  v8[3] = &unk_100024AA0;
  v8[4] = a1[4];
  [v3 checkInRecognizerForRequest:v4 locale:0 onQueue:v5 idleCallbackBlock:v8];

  v6 = a1[6];
  return (*(a1[7] + 16))();
}

void sub_10000FB94(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v22 = 0;
  v5 = [v2 isValidRemoteRequest:v3 bundleIdentifier:v4 error:&v22];
  v6 = v22;
  if (v5)
  {
    v7 = *(a1 + 40);
    v8 = *(*(a1 + 32) + 48);
    v9 = [v7 locales];
    v10 = [v9 firstObject];
    v11 = [v8 checkOutRecognizerForTextRequest:v7 locale:v10];

    [*(a1 + 32) setDirty];
    v12 = *(a1 + 56);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000FD7C;
    v16[3] = &unk_100024BD8;
    v17 = v11;
    v18 = *(a1 + 40);
    v13 = *(a1 + 64);
    v14 = *(a1 + 32);
    v19 = v13;
    v20 = v14;
    v21 = *(a1 + 72);
    v15 = v11;
    dispatch_async(v12, v16);
  }

  else
  {
    (*(*(a1 + 72) + 16))();
  }
}

void sub_10000FD7C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v3 locales];
  v5 = [v4 firstObject];
  [CHCachedRecognizerManager configureRecognizer:v2 forRequest:v3 locale:v5];

  v6 = [*(a1 + 40) options];
  v7 = [v6 objectForKey:CHRecognitionOptionTextBefore];

  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v21 = 0;
  v10 = [v8 bestTranscriptionPathsForTokenizedResult:v9 scores:&v21 history:v7];
  v11 = v21;
  v12 = [*(a1 + 56) serverQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000FF6C;
  v16[3] = &unk_100024BD8;
  v16[4] = *(a1 + 56);
  v17 = *(a1 + 40);
  v13 = *(a1 + 64);
  v19 = v11;
  v20 = v13;
  v18 = v10;
  v14 = v11;
  v15 = v10;
  dispatch_async(v12, v16);
}

uint64_t sub_10000FF6C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 48);
  v4 = [v2 locales];
  v5 = [v4 firstObject];
  v6 = [*(a1 + 32) serverQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000100A8;
  v10[3] = &unk_100024AA0;
  v10[4] = *(a1 + 32);
  [v3 checkInRecognizerForRequest:v2 locale:v5 onQueue:v6 idleCallbackBlock:v10];

  v7 = *(a1 + 56);
  v8 = *(a1 + 48);
  return (*(*(a1 + 64) + 16))();
}

void sub_1000101C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7 = 0;
  v5 = [v2 isValidRemoteRequest:v3 bundleIdentifier:v4 error:&v7];
  v6 = v7;
  if (v5)
  {
    [*(a1 + 32) _handleValidSketchRecognitionRequest:*(a1 + 40) withReply:*(a1 + 56)];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_1000104A8(uint64_t a1)
{
  +[NSDate timeIntervalSinceReferenceDate];
  v3 = v2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) drawing];
  v6 = [*(a1 + 40) options];
  v7 = [v4 sketchRecognitionResultsForDrawing:v5 options:v6 shouldCancel:0];

  +[NSDate timeIntervalSinceReferenceDate];
  v9 = v8;
  v23 = @"inputPointCount";
  v10 = [*(a1 + 40) drawing];
  v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 pointCount]);
  v24 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];

  v13 = [*(a1 + 48) modelPowerLogger];
  [v13 logModelInference:12 startTimestamp:v12 endTimestamp:v3 data:v9];

  v14 = [*(a1 + 48) serverQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010734;
  block[3] = &unk_100024BB0;
  v18 = *(a1 + 40);
  v15 = v18.i64[0];
  v20 = vextq_s8(v18, v18, 8uLL);
  v16 = *(a1 + 56);
  v21 = v7;
  v22 = v16;
  v17 = v7;
  dispatch_async(v14, block);
}

uint64_t sub_100010734(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = v2[6];
  v5 = [v2 serverQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100010814;
  v8[3] = &unk_100024AA0;
  v8[4] = a1[4];
  [v4 checkInRecognizerForRequest:v3 locale:0 onQueue:v5 idleCallbackBlock:v8];

  v6 = a1[6];
  return (*(a1[7] + 16))();
}

void sub_1000108A4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[6];
  v4 = [v2 serverQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100010964;
  v5[3] = &unk_100024AA0;
  v5[4] = *(a1 + 32);
  [v3 optimizeResourceUsageWithTimeout:v4 onQueue:v5 idleCallbackBlock:5.0];
}

uint64_t sub_100010AEC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100010B04(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [*(a1 + 40) modelPowerLogger];
    v3 = [v16 logModelLoaded:{objc_msgSend(*(a1 + 32), "modelIdentifier")}];
LABEL_5:
    v5 = v16;
    goto LABEL_6;
  }

  v4 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [*(a1 + 40) modelPowerLogger];
    v3 = [v16 logModelUnloaded:{objc_msgSend(*(a1 + 32), "modelIdentifier")}];
    goto LABEL_5;
  }

  v6 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = *(a1 + 32);
    v7 = [*(a1 + 40) modelPowerLogger];
    v8 = [v17 modelIdentifier];
    [v17 start];
    v10 = v9;
    [v17 end];
    v12 = v11;
    v13 = [v17 data];
    [v7 logModelInference:v8 startTimestamp:v13 endTimestamp:v10 data:v12];

    v5 = v17;
  }

  else
  {
    v3 = [objc_opt_class() invalidInputErrorWithDescription:@"Invalid Power Logging request" failureReason:@"Unknown subclass" recoverySuggestion:0 errorCode:-1006];
    v14 = *(*(a1 + 48) + 8);
    v5 = *(v14 + 40);
    *(v14 + 40) = v3;
  }

LABEL_6:

  return _objc_release_x1(v3, v5);
}

void sub_1000118E8(uint64_t a1)
{
  v2 = [CHRemoteBasicRequestHandler _hasIdleLifetimeElapsed:*(*(a1 + 32) + 48) targetIdleLifetime:*(a1 + 40)];
  v3 = *(a1 + 32);
  if (v3[4] > 0 || v2 == 0)
  {
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v5 = qword_10002ACF0;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(*(a1 + 32) + 32);
      v7 = 134218240;
      v8 = v6;
      v9 = 1024;
      v10 = v2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Did not evict synthesizer. activeRequestCount=%lu, hasIdleLifetimeElapsed=%i", &v7, 0x12u);
    }
  }

  else
  {

    [v3 evictTextSynthesizer];
  }
}

void sub_100011EE4(uint64_t a1)
{
  v2 = [CHRemoteBasicRequestHandler _hasIdleLifetimeElapsed:*(*(a1 + 32) + 64) targetIdleLifetime:*(a1 + 40)];
  v3 = *(a1 + 32);
  if (*(v3 + 56) > 0 || v2 == 0)
  {
    v5 = v2;
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v6 = qword_10002ACF0;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(*(a1 + 32) + 56);
      v9 = 134218240;
      v10 = v7;
      v11 = 1024;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Did not evict style inventory. activeStyleInventoryRequestCount=%lu, hasIdleLifetimeElapsed=%i", &v9, 0x12u);
    }
  }

  else
  {
    *(v3 + 56) = 0;
    [*(a1 + 32) evictInventory];
    v8 = *(a1 + 32);

    [v8 evictTextSynthesizer];
  }
}

id sub_100012190(uint64_t a1)
{
  [*(*(a1 + 32) + 88) unsafeEvictStyleInventory];
  v2 = *(*(a1 + 32) + 88);

  return [v2 unsafeClearStyleInventory];
}

void sub_1000125E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34)
{
  _Block_object_dispose((v37 - 160), 8);
  _Block_object_dispose((v37 - 128), 8);

  _Unwind_Resume(a1);
}

id sub_10001265C(uint64_t a1)
{
  [*(a1 + 32) checkOutStyleInventory];
  +[NSDate timeIntervalSinceReferenceDate];
  v3 = v2;
  if (([*(*(a1 + 32) + 88) hasStyleInventory] & 1) == 0)
  {
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v7 = qword_10002ACF0;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "CHRemoteSynthesisRequestHandler: not triggering character synthesis. Inventory is not available.", &v16, 2u);
    }

LABEL_14:

    if (*(*(*(a1 + 48) + 8) + 24) != 1)
    {
      return [*(a1 + 32) checkInStyleInventory];
    }

    goto LABEL_15;
  }

  v4 = [*(a1 + 40) options];
  v5 = [v4 synthesizeCharacterInventoryBehavior];

  v6 = *(a1 + 32);
  if (v5 == 2)
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(v6 + 88) isReadyForCharacterInventorySynthesis];
    if (v3 - *(*(a1 + 32) + 72) <= 600.0)
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
      if (qword_10002AD20 != -1)
      {
        dispatch_once(&qword_10002AD20, &stru_1000249F0);
      }

      v7 = qword_10002ACF0;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v13 = v3 - *(*(a1 + 32) + 72);
        v16 = 134217984;
        v17 = v13;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "CHRemoteSynthesisRequestHandler: forced character synthesis is not triggering. We have in flight synthesis right now. Last run was triggered %f seconds ago", &v16, 0xCu);
      }
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      [*(a1 + 32) cleanupFastPathCharacters];
      if (qword_10002AD20 != -1)
      {
        dispatch_once(&qword_10002AD20, &stru_1000249F0);
      }

      v7 = qword_10002ACF0;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        if (*(*(*(a1 + 48) + 8) + 24))
        {
          *&v8 = COERCE_DOUBLE(@"triggering");
        }

        else
        {
          *&v8 = COERCE_DOUBLE(@"not triggering due to insufficent coverage in style inventory");
        }

        if (*(*(*(a1 + 56) + 8) + 24))
        {
          v9 = @"YES";
        }

        else
        {
          v9 = @"NO";
        }

        v16 = 138412546;
        v17 = *&v8;
        v18 = 2112;
        v19 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "CHRemoteSynthesisRequestHandler: forced character synthesis is %@. Resynthesize all = %@. Cleanup character inventory.", &v16, 0x16u);
      }
    }

    goto LABEL_14;
  }

  if (v3 - *(v6 + 72) <= 600.0)
  {
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v7 = qword_10002ACF0;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v14 = v3 - *(*(a1 + 32) + 72);
      v16 = 134217984;
      v17 = v14;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Not triggering character synthesis. Last run was triggered %f seconds ago", &v16, 0xCu);
    }

    goto LABEL_14;
  }

  [*(v6 + 88) lastInventoryCharacterStyleTimeStamp];
  if (v3 - v12 <= 600.0)
  {
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v7 = qword_10002ACF0;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [*(*(a1 + 32) + 88) lastInventoryCharacterStyleTimeStamp];
      v16 = 134217984;
      v17 = v3 - v15;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Not triggering character synthesis, last update was %f seconds ago", &v16, 0xCu);
    }

    goto LABEL_14;
  }

  *(*(*(a1 + 48) + 8) + 24) = [*(*(a1 + 32) + 88) isReadyForCharacterInventorySynthesis];
  if (*(*(*(a1 + 48) + 8) + 24) != 1)
  {
    return [*(a1 + 32) checkInStyleInventory];
  }

LABEL_15:
  *(*(a1 + 32) + 72) = v3;
  [*(*(a1 + 32) + 88) lastInventoryCharacterStyleTimeStamp];
  if (v3 - v10 > 604800.0)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  return [*(a1 + 32) checkInStyleInventory];
}

BOOL sub_100012B58(id a1, NSString *a2, NSString *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(NSString *)v4 lowercaseString];
  v7 = [(NSString *)v5 lowercaseString];
  v8 = ([v6 isEqualToString:v7] & 1) != 0 || -[NSString isEqualToString:](v4, "isEqualToString:", @"0") && (objc_msgSend(v7, "isEqualToString:", @"o") & 1) != 0;

  return v8;
}

id sub_100012C58(uint64_t a1)
{
  [*(a1 + 32) checkOutTextSynthesizer];
  v2 = *(a1 + 32);

  return [v2 checkOutStyleInventory];
}

void sub_100012C94(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = [NSLocale localeWithLocaleIdentifier:@"en_US"];
  v10 = +[NSDictionary dictionary];
  v11 = [CHRemoteRecognitionTextRequest alloc];
  v24 = v9;
  v12 = [NSArray arrayWithObjects:&v24 count:1];
  v13 = [v7 drawingScaledByFactor:50.0];
  v14 = [v11 initWithLocales:v12 recognitionMode:4 drawing:v13 options:v10 priority:2];

  v15 = *(*(a1 + 32) + 80);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100012ED0;
  v19[3] = &unk_100024C90;
  v22 = *(a1 + 48);
  v16 = v8;
  v18 = *(a1 + 32);
  v17 = *(a1 + 40);
  v20 = v16;
  v21 = v18;
  v23 = a2;
  [v15 handleRequest:v14 withReply:v19 bundleIdentifier:v17];
}

void sub_100012ED0(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 topTranscription];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 topModelTranscription];

    v4 = v5;
  }

  v6 = a1[4];
  if ((*(a1[6] + 16))())
  {
    [*(a1[5] + 88) addToHolderPersonalizedCharacterWithId:a1[7]];
  }

  else
  {
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v7 = qword_10002ACF0;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[4];
      [v3 score];
      v10 = 138740483;
      v11 = v4;
      v12 = 2117;
      v13 = v8;
      v14 = 2048;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Synthesizer contract violation found, result %{sensitive}@, expected %{sensitive}@ score %f", &v10, 0x20u);
    }
  }
}

id sub_100013094(uint64_t a1)
{
  [*(a1 + 32) checkInTextSynthesizer];
  v2 = *(a1 + 32);

  return [v2 checkInStyleInventory];
}

void sub_100013210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

id sub_100013230(uint64_t a1)
{
  [*(a1 + 32) checkOutStyleInventory];
  v2 = [*(*(a1 + 32) + 88) resultByAppendingInventoryContents];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);

  return [v5 checkInStyleInventory];
}

void sub_1000135E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_100013670(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v25 = 0;
  v6 = [v3 isValidRemoteSynthesisRequest:v4 bundleIdentifier:v5 error:&v25];
  v7 = v25;
  if (v6)
  {
    [*(a1 + 32) checkOutStyleInventory];
    [*(a1 + 32) checkOutTextSynthesizer];
    v8 = os_transaction_create();
    +[NSDate timeIntervalSinceReferenceDate];
    v10 = v9;
    v11 = *(a1 + 40);
    v12 = *(*(a1 + 32) + 88);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100013838;
    v18[3] = &unk_100024D08;
    v13 = v11;
    v14 = *(a1 + 32);
    v19 = v13;
    v20 = v14;
    v24 = v10;
    v15 = *(a1 + 56);
    v16 = *(a1 + 64);
    v22 = v15;
    v23 = v16;
    v17 = v8;
    v21 = v17;
    [v12 handleSynthesisRequest:v13 reply:v18];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_100013838(uint64_t a1, void *a2)
{
  v3 = a2;
  +[NSDate timeIntervalSinceReferenceDate];
  v5 = v4;
  v17[0] = @"inputStringLength";
  v6 = [*(a1 + 32) string];
  v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 length]);
  v17[1] = @"outputStrokeCount";
  v18[0] = v7;
  v8 = [v3 drawing];
  v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 strokeCount]);
  v18[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];

  v11 = [*(a1 + 40) modelPowerLogger];
  [v11 logModelInference:3 startTimestamp:v10 endTimestamp:*(a1 + 72) data:v5];

  v12 = *(*(*(a1 + 64) + 8) + 40);
  (*(*(a1 + 56) + 16))();
  v13 = [*(a1 + 40) serverQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013A9C;
  block[3] = &unk_100024A78;
  v14 = *(a1 + 48);
  block[4] = *(a1 + 40);
  v16 = v14;
  dispatch_async(v13, block);
}

id sub_100013A9C(uint64_t a1)
{
  [*(a1 + 32) checkInStyleInventory];
  v2 = *(a1 + 32);

  return [v2 checkInTextSynthesizer];
}

void sub_100013BFC(uint64_t a1)
{
  [*(a1 + 32) checkOutStyleInventory];
  [*(a1 + 32) checkOutTextSynthesizer];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 88);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100013CCC;
  v5[3] = &unk_100024D58;
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 handleInventoryRequest:v2 reply:v5];
}

void sub_100013CCC(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 40) + 16))();
  v4 = [*(a1 + 32) serverQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013D98;
  block[3] = &unk_100024AA0;
  block[4] = *(a1 + 32);
  dispatch_async(v4, block);
}

id sub_100013D98(uint64_t a1)
{
  [*(a1 + 32) checkInStyleInventory];
  v2 = *(a1 + 32);

  return [v2 checkInTextSynthesizer];
}

void sub_100013E98(uint64_t a1)
{
  [*(a1 + 32) checkOutStyleInventory];
  v2 = [*(*(a1 + 32) + 88) inventoryStatus];
  [*(a1 + 32) checkInStyleInventory];
  (*(*(a1 + 40) + 16))();
}

void sub_1000142D0(uint64_t a1)
{
  [*(a1 + 32) checkOutStyleInventory];
  v2 = [*(*(a1 + 32) + 88) inventoryContainsSampleMatchingRequest:*(a1 + 40)];
  [*(a1 + 32) checkInStyleInventory];
  v3 = [NSNumber numberWithBool:v2];
  (*(*(a1 + 48) + 16))();
}

void sub_10001457C(uint64_t a1)
{
  [*(a1 + 32) checkOutTextSynthesizer];
  v2 = [*(*(a1 + 32) + 88) unsafeSynthesisChunkingRequest:*(a1 + 40)];
  [*(a1 + 32) checkInTextSynthesizer];
  (*(*(a1 + 48) + 16))();
}

id sub_1000146B0(uint64_t a1)
{
  [*(a1 + 32) checkOutStyleInventory];
  [*(a1 + 32) checkOutTextSynthesizer];
  v2 = *(a1 + 32);
  v3 = *(v2 + 88);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001474C;
  v5[3] = &unk_100024AA0;
  v5[4] = v2;
  return [v3 updateInventoryStylePredictionsWithCompletion:v5];
}

void sub_10001474C(uint64_t a1)
{
  v2 = [*(a1 + 32) serverQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000147DC;
  block[3] = &unk_100024AA0;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

id sub_1000147DC(uint64_t a1)
{
  [*(a1 + 32) checkInStyleInventory];
  v2 = *(a1 + 32);

  return [v2 checkInTextSynthesizer];
}

void sub_100014AFC(uint64_t a1)
{
  v2 = [*(a1 + 32) _hasIdleLifetimeElapsed:*(a1 + 40)];
  v3 = *(a1 + 32);
  if (*(v3 + 56) > 0 || v2 == 0)
  {
    v5 = v2;
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v6 = qword_10002AD00;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(*(a1 + 32) + 56);
      v13 = 134218240;
      v14 = v7;
      v15 = 1024;
      v16 = v5;
      v8 = "Did not evict line wrapper. activeRequestCount=%lu, hasIdleLifetimeElapsed=%i";
      v9 = v6;
      v10 = 18;
LABEL_14:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, v8, &v13, v10);
    }
  }

  else
  {
    *(v3 + 56) = 0;
    v11 = *(a1 + 32);
    v12 = *(v11 + 48);
    *(v11 + 48) = 0;

    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v6 = qword_10002AD00;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v13) = 0;
      v8 = "Evicted line wrapper";
      v9 = v6;
      v10 = 2;
      goto LABEL_14;
    }
  }
}

void sub_1000152DC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v15 = 0;
  v5 = [v2 _isValidRemoteLineWrappingRequest:v3 bundleIdentifier:v4 error:&v15];
  v6 = v15;
  if ((v5 & 1) == 0)
  {
    (*(*(a1 + 56) + 16))();
    goto LABEL_13;
  }

  [*(a1 + 32) _checkOutLineWrapper];
  v7 = [*(a1 + 32) highPriorityQueue];
  if (!v7)
  {
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v8 = qword_10002ACA8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "A valid queue is required to run line wrapping", buf, 2u);
    }

    if (qword_10002AD20 == -1)
    {
      v9 = qword_10002ACA8;
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
LABEL_10:

        goto LABEL_11;
      }
    }

    else
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
      v9 = qword_10002ACA8;
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_10;
      }
    }

    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "A valid queue is required to run line wrapping", buf, 2u);
    goto LABEL_10;
  }

LABEL_11:
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001550C;
  block[3] = &unk_100024B38;
  v10 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v12 = v10;
  v13 = *(a1 + 56);
  dispatch_async(v7, block);

LABEL_13:
}

void sub_10001550C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v3 = [*(a1 + 40) lineWrappableGroups];
  v4 = [*(a1 + 40) options];
  v9 = 0;
  v5 = [v2 lineWrappingResultForGroups:v3 options:v4 error:&v9];
  v6 = v9;

  v7 = [*(a1 + 32) serverQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100015670;
  v8[3] = &unk_100024AA0;
  v8[4] = *(a1 + 32);
  dispatch_async(v7, v8);

  (*(*(a1 + 48) + 16))();
}