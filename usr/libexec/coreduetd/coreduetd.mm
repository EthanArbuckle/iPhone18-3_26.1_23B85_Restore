void sub_100001A90(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (xpc_get_type(v2) == &_xpc_type_dictionary)
  {
    string = xpc_dictionary_get_string(v2, "Notification");
    if (string)
    {
      v4 = string;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_100021D8C(v4);
      }
    }
  }
}

id sub_100001C14(uint64_t a1)
{
  result = [*(a1 + 32) isLocked];
  *(*(a1 + 32) + 57) = result;
  return result;
}

void sub_100001CF4(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if ([v5 isEqualToString:NSFileProtectionCompleteUntilFirstUserAuthentication])
  {
    v6 = a3 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = [WeakRetained workQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100006638;
    v13[3] = &unk_10003CAE8;
    objc_copyWeak(&v14, (a1 + 32));
    v9 = v13;
    v10 = v8;
    v11 = os_transaction_create();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000CEC8;
    block[3] = &unk_10003CAA0;
    v16 = v11;
    v17 = v9;
    v12 = v11;
    dispatch_async(v10, block);

    objc_destroyWeak(&v14);
  }
}

void sub_100001F80(id a1)
{
  qword_100044538 = objc_alloc_init(CDServiceManager);

  _objc_release_x1();
}

void sub_10000228C(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (xpc_get_type(v2) == &_xpc_type_dictionary)
  {
    string = xpc_dictionary_get_string(v2, "Notification");
    if (string)
    {
      v4 = string;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_100021E2C(v4);
      }
    }
  }
}

uint64_t sub_1000024F8(uint64_t a1, void *a2, const void *a3)
{
  v4 = a2;
  if (v4)
  {
    v6 = v4;
    if (CFEqual(a3, @"SignificantTimeChangeNotification"))
    {
      [v6 timeZoneOrTimeChanged:0];
    }
  }

  return _objc_release_x1();
}

void sub_100002638(id a1)
{
  v1 = os_log_create("com.apple.coreduet", "WatchUpdate");
  v2 = qword_100044548;
  qword_100044548 = v1;

  if (!qword_100044548)
  {

    objc_storeStrong(&qword_100044548, &_os_log_default);
  }
}

void sub_100002C8C(uint64_t a1)
{
  v2 = [*(a1 + 32) nextResetTime];
  v3 = *(*(a1 + 32) + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = v3;
    v6 = +[NSDate date];
    v7 = [v4 formatDate:v6];
    v15 = 138412290;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "TZ or time changed: now %@\n", &v15, 0xCu);
  }

  [*(a1 + 32) setupNextResetTimer:v2];
  v8 = [*(*(a1 + 32) + 24) objectForKey:@"lastResetDate"];
  if (v8)
  {
    v9 = *(*(a1 + 32) + 32);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      v11 = v9;
      v12 = [v10 formatDate:v8];
      v15 = 138412290;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Last reset time: %@\n", &v15, 0xCu);
    }

    v13 = +[NSDate date];
    if ([*(a1 + 32) hoursBetween:v8 and:v13] >= 25)
    {
      v14 = *(*(a1 + 32) + 32);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "More than 24 hours since last push limit reset => forcing now.\n", &v15, 2u);
      }

      [*(a1 + 32) resetPushLimits];
    }
  }
}

void sub_100003158(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Daily complication push limit reset timer fired.\n", v5, 2u);
  }

  [*(a1 + 32) resetPushLimits];
  v3 = *(a1 + 32);
  v4 = [v3 nextResetTime];
  [v3 setupNextResetTimer:v4];
}

id sub_1000034AC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Watch charged above 90%% => resetting complication push limits now.\n", v4, 2u);
  }

  return [*(a1 + 32) resetPushLimits];
}

void sub_100003600(id a1)
{
  v9[0] = &off_10003EFA8;
  v9[1] = &off_10003EFC0;
  v10[0] = &off_10003EFA8;
  v10[1] = &off_10003EFA8;
  v9[2] = &off_10003EFD8;
  v9[3] = &off_10003F008;
  v10[2] = &off_10003EFF0;
  v10[3] = &off_10003F020;
  v9[4] = &off_10003F038;
  v9[5] = &off_10003F068;
  v10[4] = &off_10003F050;
  v10[5] = &off_10003F080;
  v1 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:6];
  v2 = qword_100044558;
  qword_100044558 = v1;

  v7[0] = &off_10003EFA8;
  v7[1] = &off_10003EFF0;
  v8[0] = &off_10003EFA8;
  v8[1] = &off_10003EFD8;
  v7[2] = &off_10003F020;
  v7[3] = &off_10003F050;
  v8[2] = &off_10003F008;
  v8[3] = &off_10003F038;
  v7[4] = &off_10003F080;
  v8[4] = &off_10003F068;
  v3 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:5];
  v4 = qword_100044560;
  qword_100044560 = v3;

  v5 = objc_alloc_init(CDDCommunicatorHelper);
  v6 = qword_100044568;
  qword_100044568 = v5;
}

id sub_100006238()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = qword_100044580;
  v6 = qword_100044580;
  if (!qword_100044580)
  {
    sub_10000CCE4();
    v4[3] = objc_getClass("_PSSuggesterConfiguration");
    qword_100044580 = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_100006324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000633C()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = qword_100044590;
  v6 = qword_100044590;
  if (!qword_100044590)
  {
    sub_10000CCE4();
    v4[3] = objc_getClass("_PSEnsembleModel");
    qword_100044590 = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_100006428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100006440(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = _os_activity_create(&_mh_execute_header, "CoreDuet: com.apple.coreduet.people.maintainPrivacy", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v4, &v5);
  os_activity_scope_leave(&v5);

  [WeakRetained maintainPrivacy];
  objc_autoreleasePoolPop(v2);
}

void sub_1000064D4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = _os_activity_create(&_mh_execute_header, "CoreDuet: com.apple.coreduet.people.refreshPeopleSuggesterCaches", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v3, &v5);
  os_activity_scope_leave(&v5);

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained refreshPeopleSuggesterCaches];

  objc_autoreleasePoolPop(v2);
}

void sub_10000661C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100006638(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained versionCheckAndUpgradeIfNecessaryAndPossible];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 populatePeopleSuggesterCaches];
}

void sub_1000067BC(uint64_t a1)
{
  v2 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Populating caches", buf, 2u);
  }

  v3 = [*(a1 + 32) ensembleModel];
  [v3 populateCaches];

  [*(a1 + 32) populateAppSharesCache];
  [*(a1 + 32) populateAppUsageCache];
  v4 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Finished populating caches", v5, 2u);
  }
}

void sub_100006A54(uint64_t a1)
{
  v2 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%@\nDetected interaction database corruption. Deleting Storage", &v5, 0xCu);
  }

  [*(*(a1 + 40) + 64) deleteStorage];
  v4 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v5) = 0;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Exiting process", &v5, 2u);
  }

  exit(1);
}

void sub_100006D04(uint64_t a1)
{
  v2 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10002202C();
  }

  v3 = [*(*(a1 + 32) + 64) queryVersionNumber];
  v4 = +[_CDLogging interactionChannel];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3 == 1)
  {
    if (v5)
    {
      sub_10002219C(v4);
    }
  }

  else
  {
    if (v5)
    {
      sub_100022060(v3, v4);
    }

    [*(*(a1 + 32) + 64) deleteStorage];
    v6 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1000220E8(v6);
    }

    [*(*(a1 + 32) + 64) recordVersionNumber:1];
    v7 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100022168();
    }

    [*(a1 + 32) requestInteractionRepopulation];
  }
}

void sub_1000075D0(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  context = objc_autoreleasePoolPush();
  if (state == 2)
  {
    v8 = _os_activity_create(&_mh_execute_header, "CoreDuet: com.apple.coreduet.people.repopulate", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    *keys = 0;
    *&keys[8] = 0;
    os_activity_scope_enter(v8, keys);
    os_activity_scope_leave(keys);

    v9 = +[CDPeopleDaemon readRepopulationCheckpoint];
    v10 = [NSDate dateWithTimeIntervalSinceNow:-14515200.0];
    v11 = objc_alloc_init(_CDInteractionHarvester);
    v12 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1000223BC(v9);
    }

    v29 = os_transaction_create();
    if (v9)
    {
      *&v13 = 134218240;
      v28 = v13;
      while (1)
      {
        [v9 timeIntervalSinceReferenceDate];
        v15 = v14;
        [v10 timeIntervalSinceReferenceDate];
        if (v15 <= v16)
        {
LABEL_22:

          goto LABEL_23;
        }

        getpid();
        proc_set_cpumon_params();
        v17 = v9;
        v18 = [v17 dateByAddingTimeInterval:-172800.0];
        v19 = +[_CDLogging interactionChannel];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          [v18 timeIntervalSinceNow];
          v25 = v24;
          [v17 timeIntervalSinceNow];
          *keys = v28;
          *&keys[4] = v25 / -86400.0;
          *&keys[12] = 2048;
          *&keys[14] = v26 / -86400.0;
          _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Harvesting data betweeen %2.1f and %2.1f  days ago", keys, 0x16u);
        }

        v20 = [v11 harvestInteractionsBetweenStartDate:v18 endDate:v17];
        v21 = +[_CDLogging interactionChannel];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          sub_100022450(values, v20, (values + 4), v21);
        }

        if (v20 && [v20 count])
        {
          v22 = *(*(a1 + 32) + 64);
          v31 = 0;
          [v22 recordInteractions:v20 error:&v31];
          v23 = v31;
          [*(a1 + 32) handleError:v23];
        }

        v9 = [v18 dateByAddingTimeInterval:-1.0];

        [CDPeopleDaemon writeRepopulationCheckpoint:v9];
        getpid();
        proc_set_cpumon_defaults();
        if (xpc_activity_should_defer(v3))
        {
          break;
        }

        if (!v9)
        {
          goto LABEL_22;
        }
      }

      xpc_activity_set_state(v3, 3);
    }

    else
    {
LABEL_23:
      v27 = +[_CDLogging interactionChannel];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        sub_1000224BC();
      }

      xpc_activity_set_state(v3, 5);
    }
  }

  else if (!state)
  {
    *keys = XPC_ACTIVITY_INTERVAL;
    *&keys[8] = XPC_ACTIVITY_GRACE_PERIOD;
    *&keys[16] = XPC_ACTIVITY_PRIORITY;
    v34 = XPC_ACTIVITY_REQUIRE_SCREEN_SLEEP;
    v35 = XPC_ACTIVITY_POWER_NAP;
    v36 = XPC_ACTIVITY_REQUIRES_CLASS_C;
    values[0] = xpc_int64_create(XPC_ACTIVITY_INTERVAL_1_MIN);
    values[1] = xpc_int64_create(XPC_ACTIVITY_INTERVAL_1_HOUR);
    values[2] = xpc_string_create(XPC_ACTIVITY_PRIORITY_UTILITY);
    values[3] = xpc_BOOL_create(1);
    values[4] = xpc_BOOL_create(1);
    values[5] = xpc_BOOL_create(1);
    v5 = xpc_dictionary_create(keys, values, 6uLL);
    v6 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1000224F0();
    }

    xpc_activity_set_criteria(v3, v5);
    for (i = 5; i != -1; --i)
    {
    }
  }

  objc_autoreleasePoolPop(context);
}

void sub_100007AD0(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void sub_100008018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000803C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [_CDErrorUtilities transformErrorForNSSecureCoding:v6];
  (*(v5 + 16))(v5, v7, v8);

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleError:v6];
}

void sub_1000082C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000082E4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [_CDErrorUtilities transformErrorForNSSecureCoding:v6];
  (*(v5 + 16))(v5, v7, v8);

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleError:v6];
}

void sub_100008544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100008568(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [_CDErrorUtilities transformErrorForNSSecureCoding:v6];
  (*(v5 + 16))(v5, a2, v7);

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleError:v6];
}

void sub_1000087BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000087E0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [_CDErrorUtilities transformErrorForNSSecureCoding:v6];
  (*(v5 + 16))(v5, a2, v7);

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleError:v6];
}

void sub_100008A98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100008AC4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [_CDErrorUtilities transformErrorForNSSecureCoding:v6];
  (*(v5 + 16))(v5, a2, v7);

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleError:v6];
}

void sub_100008D18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100008D3C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [_CDErrorUtilities transformErrorForNSSecureCoding:v6];
  (*(v5 + 16))(v5, a2, v7);

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleError:v6];
}

void sub_100008FA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100008FC8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [_CDErrorUtilities transformErrorForNSSecureCoding:v6];
  (*(v5 + 16))(v5, a2, v7);

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleError:v6];
}

void sub_100009230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100009254(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [_CDErrorUtilities transformErrorForNSSecureCoding:v6];
  (*(v5 + 16))(v5, a2, v7);

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleError:v6];
}

void sub_1000094BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000094E0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [_CDErrorUtilities transformErrorForNSSecureCoding:v6];
  (*(v5 + 16))(v5, a2, v7);

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleError:v6];
}

void sub_100009770(uint64_t a1)
{
  v2 = [*(a1 + 32) suggester];
  v4 = [v2 shareSheetInteractionsFromContext:*(a1 + 40) maximumNumberOfSuggestions:{objc_msgSend(*(a1 + 48), "integerValue")}];

  v3 = *(a1 + 40);
  (*(*(a1 + 56) + 16))();
}

id sub_10000C070(uint64_t a1)
{
  v2 = [*(a1 + 32) store];
  [v2 enterMaintenanceMode];

  [*(a1 + 32) _maintainPrivacy];
  v3 = [*(a1 + 32) store];
  [v3 exitMaintenanceMode];

  [*(a1 + 32) populateAppSharesCache];
  v4 = *(a1 + 32);

  return [v4 populateAppUsageCache];
}

id sub_10000C524()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = qword_1000445A0;
  v6 = qword_1000445A0;
  if (!qword_1000445A0)
  {
    sub_10000CCE4();
    v4[3] = objc_getClass("_PSAppUsageUtilities");
    qword_1000445A0 = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_10000C610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_10000CC94(uint64_t a1)
{
  sub_10000CCE4();
  result = objc_getClass("_PSSuggesterConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100044580 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10000CCE4()
{
  if (!qword_100044588)
  {
    qword_100044588 = _sl_dlopen();
  }
}

uint64_t sub_10000CDB4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100044588 = result;
  return result;
}

Class sub_10000CE28(uint64_t a1)
{
  sub_10000CCE4();
  result = objc_getClass("_PSEnsembleModel");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100044590 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_10000CE78(uint64_t a1)
{
  sub_10000CCE4();
  result = objc_getClass("_PSFamilyRecommender");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100044598 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_10000CED8(uint64_t a1)
{
  sub_10000CCE4();
  result = objc_getClass("_PSAppUsageUtilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000445A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10000CF28(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_10000CF84(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_10000CFA0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_10000D1CC(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "CoreDuet: com.apple.coreduetd.communication.triggerSync", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v2, &state);
  os_activity_scope_leave(&state);

  v3 = +[NSMutableSet set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [*(*(a1 + 32) + 64) devices];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v15 + 1) + 8 * i) isDefaultPairedDevice])
        {
          v9 = IDSCopyIDForDevice();
          [v3 addObject:v9];

          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if ([v3 count])
  {
    v10 = +[NSDate date];
    v11 = *(a1 + 32);
    v12 = [v10 dateByAddingTimeInterval:-86400.0];
    v20[0] = v12;
    v20[1] = v10;
    v13 = [NSArray arrayWithObjects:v20 count:2];
    v14 = [v11 synchronize:v3 interval:v13 withForecasts:1];
  }

  else
  {
    v10 = +[_CDLogging admissionCheckChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(state.opaque[0]) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Unable to find devices to which to sync", &state, 2u);
    }
  }
}

void sub_10000D6B8(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = +[NSDate date];
  v7 = v5;
  [v6 timeIntervalSinceDate:v7];
  v9 = v8;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  v11 = [WeakRetained config];
  if (v9 >= [v11 commSyncBoundarySeconds])
  {
  }

  else
  {
    [v6 timeIntervalSinceDate:v7];
    v13 = v12;

    if (v13 > 0.0)
    {
      [*(*(a1 + 32) + 24) setObject:v7 forKey:v14];
    }
  }
}

void sub_10000DB30(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1[8] devices];
  [v1 checkDevices:v2];
}

void sub_10000DCE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000DEBC(uint64_t a1)
{
  v2 = +[NSDate date];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  v4 = [WeakRetained classCLocked];

  if ((v4 & 1) == 0)
  {
    if (*(*(a1 + 32) + 72))
    {
      [v2 timeIntervalSinceDate:?];
      v6 = v5;
      v7 = objc_loadWeakRetained((*(a1 + 32) + 48));
      v8 = [v7 config];
      if (v6 >= [v8 commSyncBoundarySeconds])
      {
      }

      else
      {
        [v2 timeIntervalSinceDate:*(*(a1 + 32) + 72)];
        v10 = v9;

        if (v10 >= 0.0)
        {
          goto LABEL_25;
        }
      }
    }

    v11 = +[NSMutableSet set];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v12 = [*(*(a1 + 32) + 64) devices];
    v13 = [v12 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = *v32;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v31 + 1) + 8 * i);
          if ([v18 isDefaultPairedDevice])
          {
            v19 = IDSCopyIDForDevice();
            [v11 addObject:v19];

            v20 = *(*(a1 + 32) + 24);
            v21 = [v18 uniqueIDOverride];
            [v20 setObject:v2 forKey:v21];

            v15 = 1;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v14);

      if (v15)
      {
        v22 = +[_CDLogging communicatorChannel];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *v30 = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "CDDCommunicator: **** exchange forecasts *****", v30, 2u);
        }

        if (!*(*(a1 + 32) + 72) || ([v2 timeIntervalSinceDate:?], v23 <= 0.0))
        {
          v24 = [v2 dateByAddingTimeInterval:-86400.0];
          v25 = *(a1 + 32);
          v26 = *(v25 + 72);
          *(v25 + 72) = v24;
        }

        v27 = *(a1 + 32);
        v35[0] = v27[9];
        v35[1] = v2;
        v28 = [NSArray arrayWithObjects:v35 count:2];
        v29 = [v27 synchronize:v11 interval:v28 withForecasts:1];

        objc_storeStrong((*(a1 + 32) + 72), v2);
        [*(a1 + 32) saveLastDate];
      }
    }

    else
    {
    }
  }

LABEL_25:
}

void sub_10000F6A4(uint64_t a1)
{
  v2 = +[NSMutableSet set];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v3 = [*(*(a1 + 32) + 64) devices];
  v4 = [v3 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v31;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v30 + 1) + 8 * i) isDefaultPairedDevice])
        {
          v8 = IDSCopyIDForDevice();
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v5);
  }

  v9 = [v2 count];
  v10 = +[_CDLogging communicatorChannel];
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = [*(a1 + 40) length];
      v13 = "NO";
      if (*(a1 + 64))
      {
        v13 = "YES";
      }

      *buf = 134218242;
      v35 = v12;
      v36 = 2080;
      v37 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "CDDCommunicator: performing immediate exchange (%lu bytes) opportunistically: %s.", buf, 0x16u);
    }

    v14 = objc_alloc_init(NSMutableDictionary);
    v15 = v14;
    if (*(a1 + 65))
    {
      v16 = &__kCFBooleanFalse;
    }

    else
    {
      v16 = &__kCFBooleanTrue;
    }

    if (*(a1 + 65))
    {
      v17 = 300;
    }

    else
    {
      v17 = 200;
    }

    [v14 setObject:v16 forKey:IDSSendMessageOptionForceLocalDeliveryKey];
    [v15 setObject:&__kCFBooleanTrue forKey:IDSSendMessageOptionExpectsPeerResponseKey];
    [v15 setObject:&__kCFBooleanTrue forKey:IDSSendMessageOptionBypassDuetKey];
    [v15 setObject:&__kCFBooleanFalse forKey:IDSSendMessageOptionEnforceRemoteTimeoutsKey];
    [v15 setObject:*(a1 + 48) forKey:IDSSendMessageOptionTimeoutKey];
    if (*(a1 + 64) == 1)
    {
      [v15 setObject:&__kCFBooleanTrue forKey:IDSSendMessageOptionOpportunisticDuetKey];
    }

    v18 = *(a1 + 56);
    if (v18)
    {
      [v15 setObject:v18 forKey:IDSSendMessageOptionQueueOneIdentifierKey];
    }

    v19 = *(a1 + 40);
    v20 = *(*(a1 + 32) + 64);
    v28 = 0;
    v29 = 0;
    v21 = [v20 sendData:v19 toDestinations:v2 priority:v17 options:v15 identifier:&v29 error:&v28];
    v22 = v29;
    v23 = v28;
    if ((v21 & 1) == 0)
    {
      v24 = +[_CDLogging communicatorChannel];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = [v23 description];
        v26 = [v25 UTF8String];
        *buf = 136315138;
        v35 = v26;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "CDDCommunicator: triggeredExchange: send error %s.", buf, 0xCu);
      }

      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
      [WeakRetained informCommunicationError];
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CDDCommunicator: No device paired - Data will not be send out", buf, 2u);
    }

    v22 = objc_loadWeakRetained((*(a1 + 32) + 56));
    [v22 informCommunicationError];
  }
}

void sub_100010368(uint64_t a1)
{
  v30 = +[NSMutableSet set];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  v3 = [WeakRetained classCLocked];

  if (v3)
  {
    goto LABEL_22;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (!v5)
  {
    goto LABEL_21;
  }

  v6 = v5;
  v29 = 0;
  v7 = *v33;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v33 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = [*(a1 + 32) deviceFromDeviceDescription:*(*(&v32 + 1) + 8 * i)];
      if ([v9 isDefaultPairedDevice])
      {
        v10 = *(*(a1 + 32) + 24);
        v11 = [v9 uniqueIDOverride];
        v12 = [v10 objectForKey:v11];

        v13 = +[NSDate date];
        v14 = v13;
        if (v12)
        {
          [v13 timeIntervalSinceDate:v12];
          v16 = v15;
          v17 = objc_loadWeakRetained((*(a1 + 32) + 48));
          v18 = [v17 config];
          if (v16 >= [v18 commSyncBoundarySeconds])
          {
          }

          else
          {
            [v14 timeIntervalSinceDate:v12];
            v20 = v19;

            if (v20 >= 0.0)
            {
              goto LABEL_14;
            }
          }
        }

        v21 = IDSCopyIDForDevice();
        [v30 addObject:v21];

        v22 = *(*(a1 + 32) + 24);
        v23 = [v9 uniqueIDOverride];
        [v22 setObject:v14 forKey:v23];

        v29 = 1;
LABEL_14:
      }
    }

    v6 = [v4 countByEnumeratingWithState:&v32 objects:v37 count:16];
  }

  while (v6);

  if (v29)
  {
    v24 = +[_CDLogging communicatorChannel];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "CDDCommunicator: **** exchange forecasts on new device *****", buf, 2u);
    }

    v4 = +[NSDate date];
    v25 = [v4 dateByAddingTimeInterval:-86400.0];
    v26 = *(a1 + 32);
    v36[0] = v25;
    v36[1] = v4;
    v27 = [NSArray arrayWithObjects:v36 count:2];
    v28 = [v26 synchronize:v30 interval:v27 withForecasts:1];

    [*(a1 + 32) saveLastDate];
LABEL_21:
  }

LABEL_22:
}

Class sub_100011398(uint64_t a1)
{
  if (!qword_1000445B0)
  {
    qword_1000445B0 = _sl_dlopen();
  }

  result = objc_getClass("PSYSyncCoordinator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000445A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100011498(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000445B0 = result;
  return result;
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_transaction_create();
  v2 = +[_CDLogging knowledgeSignpost];
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "coreduetdStartup", " enableTelemetry=YES ", buf, 2u);
  }

  v3 = +[CDD sharedInstance];
  v4 = qword_1000445B8;
  qword_1000445B8 = v3;

  v5 = +[_CDLogging admissionCheckChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "main: creating CDDaemonManager...", v10, 2u);
  }

  v6 = +[CDServiceManager sharedInstance];
  v7 = +[_CDLogging knowledgeSignpost];
  if (os_signpost_enabled(v7))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "coreduetdStartup", &unk_10003467D, v9, 2u);
  }

  objc_autoreleasePoolPop(v0);
  CFRunLoopRun();
  return 1;
}

unsigned __int8 *sub_100012024(uint64_t a1)
{
  v2 = [*(a1 + 32) isPluggedIn];
  result = *(a1 + 32);
  if (result[136] != v2)
  {

    return [result triggerSystemDataExchange:1 wakeRemote:1];
  }

  return result;
}

void sub_100012084(uint64_t a1)
{
  [*(a1 + 32) currentBatteryLevel];
  v2 = *(a1 + 32);
  v4 = *(v2 + 128) - v3;
  if (v4 >= 0.0)
  {
    v5 = v4;
  }

  else
  {
    v5 = -v4;
  }

  v6 = [*(v2 + 8) config];
  v7 = [v6 batteryMonitorExchangeBattDelta];

  if (v5 > v7)
  {
    v8 = *(a1 + 32);

    [v8 triggerSystemDataExchange:1 wakeRemote:0];
  }
}

_DWORD *sub_10001211C(uint64_t a1)
{
  v2 = [*(a1 + 32) thermalPressureLevel];
  result = *(a1 + 32);
  if (v2 != result[35])
  {

    return [result triggerSystemDataExchange:1 wakeRemote:0];
  }

  return result;
}

void sub_1000127A8(id a1, id a2, unint64_t a3, BOOL *a4)
{
  v4 = [a2 pointerValue];
  if (v4)
  {

    free(v4);
  }
}

void sub_100013278(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSValue valueWithPointer:*(a1 + 40)];
  [v1 addObject:v2];
}

void sub_1000134BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000134E0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

intptr_t sub_1000134F8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = [a2 elements];
    v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v16;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v15 + 1) + 8 * i);
          if ([v8 isSpringBoardElement] && objc_msgSend(v8, "layoutRole") == 1 && objc_msgSend(v8, "isUIApplicationElement"))
          {
            v9 = [v8 bundleIdentifier];

            if (v9)
            {
              v10 = [v8 bundleIdentifier];
              v11 = *(*(a1 + 40) + 8);
              v12 = *(v11 + 40);
              *(v11 + 40) = v10;
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v5);
    }

    return dispatch_semaphore_signal(*(a1 + 32));
  }

  else
  {
    v14 = *(a1 + 32);

    return dispatch_semaphore_signal(v14);
  }
}

id sub_100013AA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1000134E0;
  v17 = sub_1000134F0;
  v18 = objc_alloc_init(NSMutableDictionary);
  if (a3)
  {
    __assert_rtn("processForecastXPCObject", "CDDCommunicator.m", 751, "0");
  }

  if (a4)
  {
    v8 = v11;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100013E78;
    v11[3] = &unk_10003CE48;
    v11[4] = &v13;
    v11[5] = a2;
    v11[6] = a4;
  }

  else
  {
    v8 = applier;
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_100013C58;
    applier[3] = &unk_10003CDF8;
    applier[4] = &v13;
  }

  xpc_dictionary_apply(v7, v8);
  v9 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v9;
}

uint64_t sub_100013C58(uint64_t a1, const char *a2, void *a3)
{
  v5 = a3;
  if (!strcmp(a2, "itemsInForecast"))
  {
    v9 = *(*(*(a1 + 32) + 8) + 40);
    v10 = [NSNumber numberWithLongLong:xpc_uint64_get_value(v5)];
    v11 = @"itemsInForecast";
LABEL_6:
    [v9 setObject:v10 forKey:v11];

    goto LABEL_7;
  }

  if (!strcmp(a2, "databaseEpochSeconds"))
  {
    v9 = *(*(*(a1 + 32) + 8) + 40);
    v10 = [NSNumber numberWithLongLong:xpc_uint64_get_value(v5)];
    v11 = @"databaseEpochSeconds";
    goto LABEL_6;
  }

  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_100013DF8;
  applier[3] = &unk_10003CDD0;
  v14 = objc_alloc_init(NSMutableDictionary);
  v6 = v14;
  xpc_dictionary_apply(v5, applier);
  v7 = *(*(*(a1 + 32) + 8) + 40);
  v8 = [NSString stringWithUTF8String:a2];
  [v7 setObject:v6 forKey:v8];

LABEL_7:
  return 1;
}

uint64_t sub_100013DF8(uint64_t a1, uint64_t a2, xpc_object_t xdouble)
{
  v4 = *(a1 + 32);
  v5 = [NSNumber numberWithDouble:xpc_double_get_value(xdouble)];
  v6 = [NSString stringWithUTF8String:a2];
  [v4 setObject:v5 forKey:v6];

  return 1;
}

uint64_t sub_100013E78(void *a1, const char *a2, void *a3)
{
  v5 = a3;
  if (!strcmp(a2, "itemsInForecast"))
  {
    v11 = *(*(a1[4] + 8) + 40);
    v12 = [NSNumber numberWithLongLong:xpc_int64_get_value(v5)];
    v13 = @"itemsInForecast";
LABEL_6:
    [v11 setObject:v12 forKey:v13];

    goto LABEL_7;
  }

  if (!strcmp(a2, "databaseEpochSeconds"))
  {
    v11 = *(*(a1[4] + 8) + 40);
    v12 = [NSNumber numberWithLongLong:xpc_uint64_get_value(v5)];
    v13 = @"databaseEpochSeconds";
    goto LABEL_6;
  }

  v6 = objc_alloc_init(NSMutableDictionary);
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_100014020;
  applier[3] = &unk_10003CE20;
  v7 = a1[6];
  v17 = a1[5];
  v18 = v7;
  v16 = v6;
  v8 = v6;
  xpc_dictionary_apply(v5, applier);
  v9 = *(*(a1[4] + 8) + 40);
  v10 = [NSString stringWithUTF8String:a2];
  [v9 setObject:v8 forKey:v10];

LABEL_7:
  return 1;
}

uint64_t sub_100014020(uint64_t a1, const char *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6 == 2)
  {
    if (strcmp(**(a1 + 48), a2))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v6 == 1)
  {
    v14 = **(a1 + 48);
    v15 = [NSString stringWithUTF8String:a2];
    [v15 doubleValue];
    v17 = v16;

    if (v17 != v14)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v6)
  {
    sub_1000228A0();
  }

  v7 = **(a1 + 48);
  v8 = [NSString stringWithUTF8String:a2];
  v9 = [v8 longLongValue];

  if (v7 == v9)
  {
LABEL_5:
    v10 = *(a1 + 32);
    v11 = [NSNumber numberWithDouble:xpc_double_get_value(v5)];
    v12 = [NSString stringWithUTF8String:a2];
    [v10 setObject:v11 forKey:v12];
  }

LABEL_6:

  return 1;
}

uint64_t sub_100014414(uint64_t result)
{
  if (!qword_1000445C0)
  {
    qword_1000445C0 = [*(result + 32) getVersionsDictFromMaxVersion:*(*(result + 32) + 224) minVersion:*(*(result + 32) + 232)];

    return _objc_release_x1();
  }

  return result;
}

void sub_100014620(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000146C0;
  v5[3] = &unk_10003CE70;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  v8 = *(a1 + 48);
  [v2 enumerateObjectsUsingBlock:v5];
}

void sub_1000146C0(uint64_t a1, void *a2)
{
  v3 = [a2 pointerValue];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) timeIntervalSinceReferenceDate];
    v4[5] = v5 - *v4;
    v4[6] = v5;
    v6 = [*(a1 + 40) makeForecastMessage:v4 + 2];
    if (v6)
    {
      [*(*(*(a1 + 48) + 8) + 40) addObject:v6];
    }

    else
    {
      v7 = +[_CDLogging communicatorChannel];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "CDDCommunicator: getForecasts: failed to get forecasts.", v8, 2u);
      }
    }
  }

  else
  {
    v6 = +[_CDLogging communicatorChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "CDDCommunicator: bad forecast parameters.", buf, 2u);
    }
  }
}

uint64_t sub_100014D48(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 && [v3 count])
  {
    v5 = [v3 containsObject:v4];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

void *sub_1000158A4(void *a1)
{
  v1 = a1;
  v2 = malloc_type_calloc(1uLL, 0x78uLL, 0x10100401C9C3943uLL);
  if (!v2)
  {
    sub_100022990();
  }

  v3 = v2;
  v4 = [v1 objectForKey:&off_10003F140];
  v3[8] = [v4 unsignedLongLongValue];

  v5 = [v1 objectForKey:&off_10003F158];
  v3[9] = [v5 unsignedLongLongValue];

  v6 = [v1 objectForKey:&off_10003F170];
  v3[3] = [v6 unsignedLongLongValue];

  v7 = [v1 objectForKey:&off_10003F188];
  v3[4] = [v7 unsignedLongLongValue];

  v8 = [v1 objectForKey:&off_10003F128];
  v3[5] = [v8 unsignedLongLongValue];

  v9 = [v1 objectForKey:&off_10003F1A0];
  v3[6] = [v9 unsignedLongLongValue];

  v3[7] = -1;
  v10 = [v1 objectForKey:&off_10003F110];
  v3[13] = [v10 unsignedLongLongValue];

  v11 = [v1 objectForKey:&off_10003F1E8];
  v12 = v11;
  if (v11)
  {
    v13 = v3[8];
    v14 = 1;
    if ((v13 & 0x800) == 0)
    {
      v14 = 2;
    }

    if ((v13 & 0x400) != 0)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

    if (v15 == 2)
    {
      v3[2] = [v11 UTF8String];
    }

    else if (v15 == 1)
    {
      [v11 doubleValue];
      v3[1] = v16;
    }

    else
    {
      *v3 = [v11 longLongValue];
    }
  }

  return v3;
}

id sub_100016534(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 48))
  {
    v2 = [*(a1 + 40) count] != 0;
  }

  else
  {
    v2 = 1;
  }

  return [v1 exchangeSystemComboMessage:v2];
}

void sub_100016700(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 48))
  {
    v3 = *(v2 + 88);
    if (!v3)
    {
      return;
    }

    if (![v3 isEqualToString:*(a1 + 40)])
    {
      return;
    }

    v4 = sub_100014D48(*(*(a1 + 32) + 104), *(*(a1 + 32) + 88));
    v5 = *(a1 + 32);
    v6 = *(v5 + 88);
    *(v5 + 88) = 0;

    if (!v4)
    {
      return;
    }
  }

  else
  {
    if ((sub_100014D48(*(v2 + 104), *(v2 + 88)) & 1) == 0 && !sub_100014D48(*(*(a1 + 32) + 104), *(a1 + 40)))
    {
      objc_storeStrong((*(a1 + 32) + 88), *(a1 + 40));
      return;
    }

    objc_storeStrong((*(a1 + 32) + 88), *(a1 + 40));
  }

  v7 = *(a1 + 32);
  if (*(v7 + 88) && ([*(v7 + 184) containsObject:?] & 1) == 0)
  {
    v8 = +[_CDLogging communicatorChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = [*(*(a1 + 32) + 88) UTF8String];
      v11 = 136315138;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "CDDCommunicator: Attempting to broadcasting focal app (%s).", &v11, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    v8 = +[_CDLogging communicatorChannel];
    v9 = 1;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "CDDCommunicator: Attempting to broadcasting focal app NIL.", &v11, 2u);
    }
  }

  if (*(a1 + 52) == 1)
  {
    [*(a1 + 32) exchangeSystemComboMessage:v9];
  }
}

void sub_1000169B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000169D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 componentsJoinedByString:{@", "}];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  v11 = v4;
  if (v6)
  {
    v7 = [v6 stringByAppendingFormat:@", %@", v4];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    v10 = v4;
    v9 = *(v5 + 40);
    *(v5 + 40) = v10;
  }
}

id sub_100016C44(uint64_t a1)
{
  result = [*(*(a1 + 32) + 160) removeAllObjects];
  *(*(a1 + 32) + 168) = 0;
  return result;
}

void sub_100016FD0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[168] == 1)
  {
    v11 = [v2 makeSystemComboMessage];
    v3 = [*(a1 + 32) generateFocalNonAppFocalMutableSet];
    v4 = [NSKeyedArchiver archivedDataWithRootObject:v11 requiringSecureCoding:1 error:0];
    v5 = *(*(a1 + 32) + 16);
    v6 = *(a1 + 40);
    v7 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
    [v5 triggeredExchange:v4 opportunistic:v6 queue:0 timeout:v7 urgent:0];

    v8 = +[NSDate date];
    v9 = *(a1 + 32);
    v10 = *(v9 + 120);
    *(v9 + 120) = v8;

    [*(*(a1 + 32) + 160) setSet:v3];
    *(*(a1 + 32) + 168) = 0;
  }
}

void sub_100017254(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 96);
  v3 = [NSNumber numberWithUnsignedLongLong:*(a1 + 48)];
  v4 = [v2 objectForKey:v3];

  v5 = *(a1 + 40);
  if (v5 && [v5 count])
  {
    if ([*(a1 + 40) isEqualToArray:v4])
    {
      goto LABEL_27;
    }

    if (*(a1 + 48) == 28 && [*(a1 + 40) containsObject:@"com.apple.Siri"])
    {
      v6 = +[_CDClientContext userContext];
      v7 = +[_CDContextQueries keyPathForSiriActiveStatus];
      [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:v7];
    }

    v8 = *(a1 + 40);
    v9 = *(*(a1 + 32) + 96);
    v10 = [NSNumber numberWithUnsignedLongLong:*(a1 + 48)];
    [v9 setObject:v8 forKey:v10];

    v11 = +[_CDLogging communicatorChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 48);
      v13 = [*(a1 + 40) description];
      v27 = 134218242;
      v28 = v12;
      v29 = 2080;
      v30 = [v13 UTF8String];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "CDDCommunicator: client %lld set focal nonapp (%s).", &v27, 0x16u);
    }

    v14 = 0;
  }

  else
  {
    if (![v4 count])
    {
      goto LABEL_27;
    }

    if (*(a1 + 48) == 28 && ([*(a1 + 40) containsObject:@"com.apple.Siri"] & 1) == 0)
    {
      v15 = +[_CDClientContext userContext];
      v16 = +[_CDContextQueries keyPathForSiriActiveStatus];
      [v15 setObject:&__kCFBooleanFalse forKeyedSubscript:v16];
    }

    v17 = *(*(a1 + 32) + 96);
    v18 = [NSNumber numberWithUnsignedLongLong:*(a1 + 48)];
    [v17 removeObjectForKey:v18];

    v11 = +[_CDLogging communicatorChannel];
    v14 = 1;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v19 = *(a1 + 48);
      v27 = 134217984;
      v28 = v19;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "CDDCommunicator: client %lld set focal nonapp NIL.", &v27, 0xCu);
    }
  }

  v20 = [*(a1 + 32) generateNonAppFocalString];
  v21 = +[_CDLogging communicatorChannel];
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
  if (v20)
  {
    if (v22)
    {
      v23 = [v20 description];
      v24 = [v23 UTF8String];
      v27 = 136315138;
      v28 = v24;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "CDDCommunicator: Attempting to broadcasting non-app focal state (%s).", &v27, 0xCu);
    }
  }

  else if (v22)
  {
    LOWORD(v27) = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "CDDCommunicator: Attempting to broadcasting non-app focal state NIL.", &v27, 2u);
  }

  v25 = [*(*(a1 + 32) + 8) config];
  if ([v25 commEnabled] && *(*(a1 + 32) + 200) == 1)
  {
    v26 = *(a1 + 56);

    if (v26 == 1)
    {
      [*(a1 + 32) exchangeSystemComboMessage:v14];
    }
  }

  else
  {
  }

LABEL_27:
}

void sub_1000177A4(uint64_t a1)
{
  v2 = +[NSDate date];
  v3 = v2;
  if (!*(*(a1 + 32) + 120) || ([v2 timeIntervalSinceDate:?], v5 = v4, objc_msgSend(*(*(a1 + 32) + 8), "config"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "batteryMonitorExchangeTimerDelta"), v6, v5 >= v7) || *(a1 + 40) == 1)
  {
    v8 = +[_CDLogging communicatorChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "CDDCommunicator: broadcasting system data.", v16, 2u);
    }

    v9 = [*(a1 + 32) makeSystemComboMessage];
    v10 = [NSKeyedArchiver archivedDataWithRootObject:v9 requiringSecureCoding:1 error:0];
    v11 = *(a1 + 32);
    v12 = *(a1 + 41);
    v13 = *(v11 + 16);
    v14 = [*(v11 + 8) config];
    v15 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v14 batteryMonitorExchangeTimerDelta]);
    [v13 triggeredExchange:v10 opportunistic:(v12 & 1) == 0 queue:0 timeout:v15 urgent:0];

    objc_storeStrong((*(a1 + 32) + 120), v3);
  }
}

void sub_100017A4C(uint64_t a1)
{
  v2 = [*(a1 + 32) makeRemoteDeviceSyncMessage];
  if (v2)
  {
    v3 = [NSKeyedArchiver archivedDataWithRootObject:v2 requiringSecureCoding:1 error:0];
    v4 = +[_CDLogging communicatorChannel];
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
    if (v3)
    {
      if (v5)
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "CDDCommunicator: Requesting remote device to sync states", v7, 2u);
      }

      v6 = *(*(a1 + 32) + 16);
      v4 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
      [v6 triggeredExchange:v3 opportunistic:0 queue:@"DuetRemoteDeviceSyncRequest" timeout:v4 urgent:1];
    }

    else if (v5)
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "CDDCommunicator: requestRemoteDeviceSync: failed to archive message, bail.", v8, 2u);
    }
  }

  else
  {
    v3 = +[_CDLogging communicatorChannel];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "CDDCommunicator: requestRemoteDeviceSync: failed to make request message, bail.", buf, 2u);
    }
  }
}

void sub_100018948(id a1)
{
  [_DKCloudUtilities setCloudKitEnabled:1];
  v1 = [CDKnowledgeDaemon alloc];
  v2 = _DKMachServiceName;
  v3 = +[CDDPaths knowledgeDatabaseDirectory];
  v4 = [(CDKnowledgeDaemon *)v1 initWithMachServiceName:v2 storePath:v3];
  v5 = qword_1000445D8;
  qword_1000445D8 = v4;

  v6 = [_CDIntentSpotlightIndex alloc];
  v7 = [qword_1000445D8 storage];
  v8 = [v6 initWithKnowledgeStorage:v7];
  [qword_1000445D8 setIntentSpotlightIndex:v8];

  [qword_1000445D8 registerARPHomeControlNotificationTask];
  [qword_1000445D8 registerCloudFamilyPredictionTask];
  [qword_1000445D8 registerContactsAutocompleteFeedbackProcessingTask];
  [qword_1000445D8 registerDataCollectionTasks];
  [qword_1000445D8 registerPeopleSuggesterTasks];
  v9 = [qword_1000445D8 storage];
  v10 = [v9 storage];
  v11 = [v10 directory];
  v20 = [NSString stringWithFormat:@"com.apple.coreduet.system.sync.coordinator.context:%@", v11];

  v12 = [qword_1000445D8 storage];
  v13 = [v12 storage];
  v14 = [v13 databaseName];
  v15 = [v20 stringByAppendingPathComponent:v14];

  v16 = [[_DKSyncContext alloc] initWithName:v15];
  v17 = [qword_1000445D8 storage];
  [v16 setStorage:v17];

  v18 = [_DKSyncCoordinatorFactory syncCoordinatorWithContext:v16];
  v19 = qword_1000445D0;
  qword_1000445D0 = v18;

  [qword_1000445D8 setSyncCoordinator:qword_1000445D0];
}

void sub_100018BB4(id a1)
{
  [_DKCloudUtilities setCloudKitEnabled:1];
  v1 = [CDKnowledgeDaemon alloc];
  v2 = _DKUserLocalMachServiceName;
  v3 = +[CDDPaths userLocalKnowledgeDatabaseDirectory];
  v4 = [(CDKnowledgeDaemon *)v1 initWithMachServiceName:v2 storePath:v3];
  v5 = qword_1000445F0;
  qword_1000445F0 = v4;

  v6 = [qword_1000445F0 storage];
  v7 = [v6 storage];
  v8 = [v7 directory];
  v17 = [NSString stringWithFormat:@"com.apple.coreduet.user.sync.coordinator.context:%@", v8];

  v9 = [qword_1000445F0 storage];
  v10 = [v9 storage];
  v11 = [v10 databaseName];
  v12 = [v17 stringByAppendingPathComponent:v11];

  v13 = [[_DKSyncContext alloc] initWithName:v12];
  v14 = [qword_1000445F0 storage];
  [v13 setStorage:v14];

  v15 = [_DKSyncCoordinatorFactory syncCoordinatorWithContext:v13];
  v16 = qword_1000445E8;
  qword_1000445E8 = v15;

  [qword_1000445F0 setSyncCoordinator:qword_1000445E8];
}

void sub_100019484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, char a18)
{
  for (i = 8; i != -8; i -= 8)
  {
  }

  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000194E8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = _os_activity_create(&_mh_execute_header, "CoreDuet: com.apple.coreduetd.maintainPrivacy", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(v3, &v7);
  os_activity_scope_leave(&v7);

  v4 = [*(a1 + 32) activity];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained maintainPrivacyWithActivity:v4];

  if (v4 && xpc_activity_should_defer(v4) && !xpc_activity_set_state(v4, 3))
  {
    v6 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100022B90(v6);
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10001A2F8(uint64_t a1)
{
  [*(*(a1 + 32) + 40) closeStorage];
  v1 = +[NSDistributedNotificationCenter defaultCenter];
  [v1 postNotificationName:_DKKnowledgeStorageDidAgeOutEventsNotification object:0];
}

void sub_10001AB7C(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = xpc_activity_get_state(v2);
  if (v3)
  {
    if (v3 == 2)
    {
      v4 = _os_activity_create(&_mh_execute_header, "CoreDuet: com.apple.coreduetd.datacollection.cdinteraction.task", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      os_activity_scope_enter(v4, &state);
      os_activity_scope_leave(&state);

      v5 = [_CDInteractionDataCollectionTask alloc];
      v6 = +[_CDInteractionStore defaultDatabaseDirectory];
      v7 = [_CDInteractionStore storeWithDirectory:v6 readOnly:0];
      v8 = [v5 initWithStore:v7 activity:v2];

      [v8 execute];
    }
  }

  else
  {
    state.opaque[0] = XPC_ACTIVITY_INTERVAL;
    state.opaque[1] = XPC_ACTIVITY_REPEATING;
    v18 = XPC_ACTIVITY_PRIORITY;
    v19 = XPC_ACTIVITY_REQUIRE_SCREEN_SLEEP;
    v20 = XPC_ACTIVITY_POWER_NAP;
    v21 = XPC_ACTIVITY_ALLOW_BATTERY;
    v22 = XPC_ACTIVITY_REQUIRES_CLASS_C;
    values[0] = xpc_int64_create(XPC_ACTIVITY_INTERVAL_1_DAY);
    v9 = &_xpc_BOOL_true;
    values[1] = &_xpc_BOOL_true;
    values[2] = xpc_string_create(XPC_ACTIVITY_PRIORITY_MAINTENANCE);
    v10 = &_xpc_BOOL_true;
    values[3] = &_xpc_BOOL_true;
    v11 = &_xpc_BOOL_true;
    values[4] = &_xpc_BOOL_true;
    v12 = &_xpc_BOOL_false;
    values[5] = &_xpc_BOOL_false;
    v13 = &_xpc_BOOL_true;
    values[6] = &_xpc_BOOL_true;
    v14 = xpc_dictionary_create(&state, values, 7uLL);
    xpc_activity_set_criteria(v2, v14);

    for (i = 6; i != -1; --i)
    {
    }
  }
}

void sub_10001AD9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  for (i = 8; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void sub_10001ADEC(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = xpc_activity_get_state(v2);
  if (v3)
  {
    if (v3 == 2)
    {
      v4 = _os_activity_create(&_mh_execute_header, "CoreDuet: com.apple.coreduetd.datacollection.cdftcpinteraction.task", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      os_activity_scope_enter(v4, &state);
      os_activity_scope_leave(&state);

      v5 = [_CDFTCPInteractionDataCollectionTask alloc];
      v6 = +[_CDInteractionStore defaultDatabaseDirectory];
      v7 = [_CDInteractionStore storeWithDirectory:v6 readOnly:0];
      v8 = [v5 initWithStore:v7 activity:v2];

      [v8 execute];
    }
  }

  else
  {
    state.opaque[0] = XPC_ACTIVITY_INTERVAL;
    state.opaque[1] = XPC_ACTIVITY_REPEATING;
    v18 = XPC_ACTIVITY_PRIORITY;
    v19 = XPC_ACTIVITY_REQUIRE_SCREEN_SLEEP;
    v20 = XPC_ACTIVITY_POWER_NAP;
    v21 = XPC_ACTIVITY_ALLOW_BATTERY;
    v22 = XPC_ACTIVITY_REQUIRES_CLASS_C;
    values[0] = xpc_int64_create(XPC_ACTIVITY_INTERVAL_1_DAY);
    v9 = &_xpc_BOOL_true;
    values[1] = &_xpc_BOOL_true;
    values[2] = xpc_string_create(XPC_ACTIVITY_PRIORITY_MAINTENANCE);
    v10 = &_xpc_BOOL_true;
    values[3] = &_xpc_BOOL_true;
    v11 = &_xpc_BOOL_true;
    values[4] = &_xpc_BOOL_true;
    v12 = &_xpc_BOOL_false;
    values[5] = &_xpc_BOOL_false;
    v13 = &_xpc_BOOL_true;
    values[6] = &_xpc_BOOL_true;
    v14 = xpc_dictionary_create(&state, values, 7uLL);
    xpc_activity_set_criteria(v2, v14);

    for (i = 6; i != -1; --i)
    {
    }
  }
}

void sub_10001B00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  for (i = 8; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void sub_10001B104(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = xpc_activity_get_state(v2);
  if (v3)
  {
    if (v3 == 2)
    {
      v4 = _os_activity_create(&_mh_execute_header, "CoreDuet: com.apple.coreduetd.datacollection.PersonLinking", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      os_activity_scope_enter(v4, &state);
      os_activity_scope_leave(&state);

      v5 = [[_CDPersonLinkingDataCollectionTask alloc] initWithFile:@"/var/mobile/Library/CoreDuet/DataCollection/person_pairs_pet.json" activity:v2];
      [v5 execute];
    }
  }

  else
  {
    state.opaque[0] = XPC_ACTIVITY_INTERVAL;
    state.opaque[1] = XPC_ACTIVITY_REPEATING;
    v15 = XPC_ACTIVITY_PRIORITY;
    v16 = XPC_ACTIVITY_REQUIRE_SCREEN_SLEEP;
    v17 = XPC_ACTIVITY_POWER_NAP;
    v18 = XPC_ACTIVITY_ALLOW_BATTERY;
    v19 = XPC_ACTIVITY_REQUIRES_CLASS_C;
    values[0] = xpc_int64_create(XPC_ACTIVITY_INTERVAL_1_DAY);
    v6 = &_xpc_BOOL_true;
    values[1] = &_xpc_BOOL_true;
    values[2] = xpc_string_create(XPC_ACTIVITY_PRIORITY_MAINTENANCE);
    v7 = &_xpc_BOOL_true;
    values[3] = &_xpc_BOOL_true;
    v8 = &_xpc_BOOL_true;
    values[4] = &_xpc_BOOL_true;
    v9 = &_xpc_BOOL_false;
    values[5] = &_xpc_BOOL_false;
    v10 = &_xpc_BOOL_true;
    values[6] = &_xpc_BOOL_true;
    v11 = xpc_dictionary_create(&state, values, 7uLL);
    xpc_activity_set_criteria(v2, v11);

    for (i = 6; i != -1; --i)
    {
    }
  }
}

void sub_10001B2E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  for (i = 8; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void sub_10001B334(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = xpc_activity_get_state(v2);
  if (v3)
  {
    if (v3 == 2)
    {
      v4 = _os_activity_create(&_mh_execute_header, "CoreDuet: com.apple.coreduetd.datacollection.VisionSignalGrading", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      os_activity_scope_enter(v4, &state);
      os_activity_scope_leave(&state);

      v5 = [[_CDVisionSignalGradingDataCollectionTask alloc] initWithFile:@"/var/mobile/Library/CoreDuet/DataCollection/vision_grades_pet.json" activity:v2];
      [v5 execute];
    }
  }

  else
  {
    state.opaque[0] = XPC_ACTIVITY_INTERVAL;
    state.opaque[1] = XPC_ACTIVITY_REPEATING;
    v15 = XPC_ACTIVITY_PRIORITY;
    v16 = XPC_ACTIVITY_REQUIRE_SCREEN_SLEEP;
    v17 = XPC_ACTIVITY_POWER_NAP;
    v18 = XPC_ACTIVITY_ALLOW_BATTERY;
    v19 = XPC_ACTIVITY_REQUIRES_CLASS_C;
    values[0] = xpc_int64_create(XPC_ACTIVITY_INTERVAL_1_DAY);
    v6 = &_xpc_BOOL_true;
    values[1] = &_xpc_BOOL_true;
    values[2] = xpc_string_create(XPC_ACTIVITY_PRIORITY_MAINTENANCE);
    v7 = &_xpc_BOOL_true;
    values[3] = &_xpc_BOOL_true;
    v8 = &_xpc_BOOL_true;
    values[4] = &_xpc_BOOL_true;
    v9 = &_xpc_BOOL_false;
    values[5] = &_xpc_BOOL_false;
    v10 = &_xpc_BOOL_true;
    values[6] = &_xpc_BOOL_true;
    v11 = xpc_dictionary_create(&state, values, 7uLL);
    xpc_activity_set_criteria(v2, v11);

    for (i = 6; i != -1; --i)
    {
    }
  }
}

void sub_10001B514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  for (i = 8; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void sub_10001B564(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = xpc_activity_get_state(v2);
  if (v3)
  {
    if (v3 == 2)
    {
      v4 = _os_activity_create(&_mh_execute_header, "CoreDuet: com.apple.coreduetd.cloudfamily.task", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      os_activity_scope_enter(v4, &state);
      os_activity_scope_leave(&state);

      v5 = objc_alloc_init(_PSFamilyMLPredictionTask);
      [v5 execute:v2];
    }
  }

  else
  {
    state.opaque[0] = XPC_ACTIVITY_INTERVAL;
    state.opaque[1] = XPC_ACTIVITY_REPEATING;
    v15 = XPC_ACTIVITY_PRIORITY;
    v16 = XPC_ACTIVITY_REQUIRE_SCREEN_SLEEP;
    v17 = XPC_ACTIVITY_POWER_NAP;
    v18 = XPC_ACTIVITY_ALLOW_BATTERY;
    v19 = XPC_ACTIVITY_REQUIRES_CLASS_C;
    values[0] = xpc_int64_create(XPC_ACTIVITY_INTERVAL_1_DAY);
    v6 = &_xpc_BOOL_true;
    values[1] = &_xpc_BOOL_true;
    values[2] = xpc_string_create(XPC_ACTIVITY_PRIORITY_MAINTENANCE);
    v7 = &_xpc_BOOL_true;
    values[3] = &_xpc_BOOL_true;
    v8 = &_xpc_BOOL_true;
    values[4] = &_xpc_BOOL_true;
    v9 = &_xpc_BOOL_false;
    values[5] = &_xpc_BOOL_false;
    v10 = &_xpc_BOOL_true;
    values[6] = &_xpc_BOOL_true;
    v11 = xpc_dictionary_create(&state, values, 7uLL);
    xpc_activity_set_criteria(v2, v11);

    for (i = 6; i != -1; --i)
    {
    }
  }
}

void sub_10001B738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  for (i = 8; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void sub_10001B788(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = xpc_activity_get_state(v2);
  if (v3)
  {
    if (v3 == 2)
    {
      v4 = _os_activity_create(&_mh_execute_header, "CoreDuet: com.apple.coreduetd.feedback.cna.task", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      os_activity_scope_enter(v4, &state);
      os_activity_scope_leave(&state);

      v5 = objc_alloc_init(_PSCNAutocompleteFeedbackProcessingTask);
      [v5 execute];
    }
  }

  else
  {
    state.opaque[0] = XPC_ACTIVITY_INTERVAL;
    state.opaque[1] = XPC_ACTIVITY_REPEATING;
    v15 = XPC_ACTIVITY_PRIORITY;
    v16 = XPC_ACTIVITY_REQUIRE_SCREEN_SLEEP;
    v17 = XPC_ACTIVITY_POWER_NAP;
    v18 = XPC_ACTIVITY_ALLOW_BATTERY;
    v19 = XPC_ACTIVITY_REQUIRES_CLASS_C;
    values[0] = xpc_int64_create(XPC_ACTIVITY_INTERVAL_1_DAY);
    v6 = &_xpc_BOOL_true;
    values[1] = &_xpc_BOOL_true;
    values[2] = xpc_string_create(XPC_ACTIVITY_PRIORITY_MAINTENANCE);
    v7 = &_xpc_BOOL_true;
    values[3] = &_xpc_BOOL_true;
    v8 = &_xpc_BOOL_true;
    values[4] = &_xpc_BOOL_true;
    v9 = &_xpc_BOOL_false;
    values[5] = &_xpc_BOOL_false;
    v10 = &_xpc_BOOL_true;
    values[6] = &_xpc_BOOL_true;
    v11 = xpc_dictionary_create(&state, values, 7uLL);
    xpc_activity_set_criteria(v2, v11);

    for (i = 6; i != -1; --i)
    {
    }
  }
}

void sub_10001B958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  for (i = 8; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void sub_10001B9F4(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  state = xpc_activity_get_state(v2);
  if (state)
  {
    if (state == 2)
    {
      notify_post([@"com.apple.AirPlayRoutePrediction.ARPHomeControlSuggester.ReQuery" UTF8String]);
    }
  }

  else
  {
    keys[0] = XPC_ACTIVITY_INTERVAL;
    keys[1] = XPC_ACTIVITY_REPEATING;
    keys[2] = XPC_ACTIVITY_PRIORITY;
    keys[3] = XPC_ACTIVITY_ALLOW_BATTERY;
    values[0] = xpc_int64_create(XPC_ACTIVITY_INTERVAL_30_MIN);
    v4 = &_xpc_BOOL_true;
    values[1] = &_xpc_BOOL_true;
    values[2] = xpc_string_create(XPC_ACTIVITY_PRIORITY_UTILITY);
    v5 = &_xpc_BOOL_true;
    values[3] = &_xpc_BOOL_true;
    v6 = xpc_dictionary_create(keys, values, 4uLL);
    xpc_activity_set_criteria(v2, v6);

    for (i = 3; i != -1; --i)
    {
    }
  }
}

void sub_10001BB34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  for (i = 8; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void sub_10001BE08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001BE28(id a1, BGRepeatingSystemTask *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(_PSBackgroundProcessingTask);
  [v3 handleRepeatingTask:v2];
}

id sub_10001BE88()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = qword_100044600;
  v6 = qword_100044600;
  if (!qword_100044600)
  {
    sub_10001CD1C();
    v4[3] = objc_getClass("BGSystemTaskScheduler");
    qword_100044600 = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_10001BF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001C048(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = xpc_activity_get_state(v3);
  if (v4)
  {
    if (v4 == 2)
    {
      v5 = _os_activity_create(&_mh_execute_header, "CoreDuet: com.apple.coreduetd.mediaanalysis.proc.task", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      os_activity_scope_enter(v5, &state);
      os_activity_scope_leave(&state);

      v6 = +[_CDPaths peopleDirectory];
      v7 = [v6 stringByAppendingPathComponent:@"MediaAnalysisProcessing"];
      v8 = [[NSData alloc] initWithContentsOfFile:v7];
      if (v8)
      {
        v22 = 0;
        v9 = [NSPropertyListSerialization propertyListWithData:v8 options:0 format:0 error:&v22];
        v10 = v22;
        if (v10)
        {
          v11 = +[_CDLogging knowledgeChannel];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            sub_100022F50(v10);
          }
        }

        if (v9)
        {
          v12 = [v9 objectForKeyedSubscript:@"_PSMediaAnalysisProcessing"];
          v13 = [v12 objectForKeyedSubscript:@"BookmarkDate"];
          if (v13)
          {
            v14 = *(a1 + 32);
            v15 = *(v14 + 32);
            *(v14 + 32) = v13;

LABEL_15:
            v21 = [[_PSMediaAnalysisProcessingTask alloc] initWithBookmark:*(*(a1 + 32) + 32) interactionStore:0];
            [v21 executeTaskWithCompletionHandler:&stru_10003D158];

            goto LABEL_16;
          }
        }
      }

      v19 = +[NSDate distantPast];
      v20 = *(a1 + 32);
      v10 = *(v20 + 32);
      *(v20 + 32) = v19;
      goto LABEL_15;
    }
  }

  else
  {
    empty = xpc_dictionary_create_empty();
    v17 = xpc_int64_create(XPC_ACTIVITY_INTERVAL_1_DAY);
    xpc_dictionary_set_value(empty, XPC_ACTIVITY_INTERVAL, v17);

    xpc_dictionary_set_value(empty, XPC_ACTIVITY_REPEATING, &_xpc_BOOL_true);
    v18 = xpc_string_create(XPC_ACTIVITY_PRIORITY_MAINTENANCE);
    xpc_dictionary_set_value(empty, XPC_ACTIVITY_PRIORITY, v18);

    xpc_dictionary_set_value(empty, XPC_ACTIVITY_REQUIRE_SCREEN_SLEEP, &_xpc_BOOL_true);
    xpc_dictionary_set_value(empty, XPC_ACTIVITY_POWER_NAP, &_xpc_BOOL_true);
    xpc_dictionary_set_value(empty, XPC_ACTIVITY_ALLOW_BATTERY, &_xpc_BOOL_false);
    xpc_dictionary_set_value(empty, XPC_ACTIVITY_REQUIRES_CLASS_C, &_xpc_BOOL_true);
    xpc_activity_set_criteria(v3, empty);
  }

LABEL_16:
}

void sub_10001C464(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [_CDErrorUtilities transformErrorForNSSecureCoding:?];
  (*(v3 + 16))(v3, a2, v4);
}

void sub_10001C5F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [_CDErrorUtilities transformErrorForNSSecureCoding:?];
  (*(v3 + 16))(v3, a2, v4);
}

void sub_10001C758(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [_CDErrorUtilities transformErrorForNSSecureCoding:?];
  (*(v3 + 16))(v3, a2, v4);
}

Class sub_10001CCCC(uint64_t a1)
{
  sub_10001CD1C();
  result = objc_getClass("BGSystemTaskScheduler");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100044600 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10001CD1C()
{
  if (!qword_100044608)
  {
    qword_100044608 = _sl_dlopen();
  }
}

uint64_t sub_10001CDEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100044608 = result;
  return result;
}

Class sub_10001CE60(uint64_t a1)
{
  sub_10001CD1C();
  result = objc_getClass("BGRepeatingSystemTaskRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100044610 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10001D348(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_10001D864(id a1)
{
  qword_100044618 = objc_alloc_init(CDDataMigrator);

  _objc_release_x1();
}

void sub_10001D968(id a1, int a2)
{
  notify_cancel(a2);

  +[CDDataMigrator performMigration];
}

uint64_t sub_10001E100(uint64_t a1, int a2, const char **a3, const char **a4)
{
  v7 = objc_autoreleasePoolPush();
  if (a2 == 1 && !strcmp(*a4, "ZINTEGERID"))
  {
    v10 = atoi(*a3);
    v8 = 0;
    qword_100044628 = v10;
  }

  else
  {
    v8 = 1;
  }

  objc_autoreleasePoolPop(v7);
  return v8;
}

uint64_t sub_10001E180(void *a1, int a2, const char **a3, const char **a4)
{
  v8 = objc_autoreleasePoolPush();
  v9 = v8;
  if (a2 < 1)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_24;
  }

  v25 = a1;
  v26 = v8;
  v10 = 0;
  v11 = 0;
  v12 = a2;
  do
  {
    v13 = *a4;
    if (!strcmp(*a4, "ZCREATIONDATE"))
    {
      v16 = strtod(*a3, 0);
      if (v16 <= 0.0)
      {
        goto LABEL_9;
      }

      v17 = [NSDate dateWithTimeIntervalSinceNow:-v16];
      v15 = v10;
      v10 = v17;
    }

    else
    {
      if (strcmp(v13, "ZVALUE"))
      {
        goto LABEL_9;
      }

      v14 = [NSString stringWithUTF8String:*a3];
      v15 = v11;
      v11 = v14;
    }

LABEL_9:
    ++a3;
    ++a4;
    --v12;
  }

  while (v12);
  if (v10)
  {
    v9 = v26;
    if (v11)
    {
      v18 = v25;
      v11 = v11;
      v10 = v10;
      v19 = objc_autoreleasePoolPush();
      if (qword_100044630 != -1)
      {
        sub_100023220();
      }

      v20 = [_DKEvent eventWithStream:qword_100044638 startDate:v10 endDate:v10 identifierStringValue:v11 metadata:0];
      objc_autoreleasePoolPop(v19);

      [v18 addObject:v20];
      if ([v18 count] >= 0x101)
      {
        v21 = +[_DKKnowledgeStore knowledgeStore];
        v27 = 0;
        [v21 saveObjects:v18 error:&v27];
        v22 = v27;
        if (v22)
        {
          v23 = +[_CDLogging knowledgeChannel];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_1000231B0();
          }
        }

        else
        {
          [v18 removeAllObjects];
        }
      }
    }
  }

  else
  {
    v9 = v26;
  }

LABEL_24:

  objc_autoreleasePoolPop(v9);
  return 0;
}

void sub_10001EAD8(id a1)
{
  v3 = +[_DKAnyStringIdentifier type];
  v1 = [_DKEventStream eventStreamWithName:@"com.apple.spotlightviewer.events" valueType:v3];
  v2 = qword_100044638;
  qword_100044638 = v1;
}

void sub_10001EBA4(id a1)
{
  qword_100044640 = objc_alloc_init(CDD);

  _objc_release_x1();
}

uint64_t sub_10001F100(uint64_t a1)
{
  if (([*(a1 + 32) isClassCLocked] & 1) == 0)
  {
    v2 = +[_CDLogging admissionCheckChannel];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Class C unlocked...", v4, 2u);
    }

    *(*(a1 + 32) + 56) = 0;
  }

  return notify_cancel(*(a1 + 40));
}

id sub_10001F26C(uint64_t a1)
{
  v6 = 0u;
  v10 = 0u;
  v9 = 0u;
  v4 = 0u;
  v5 = 0u;
  v3 = 1814400;
  v7 = 0uLL;
  v8 = xmmword_100032AE0;
  v11 = 0uLL;
  [*(*(a1 + 32) + 8) registerScheduledExchange:&v3];
  return [*(*(a1 + 32) + 8) setupCommControl];
}

id sub_10001FF5C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [NSString stringWithFormat:@"%@%s", v2, "XQW90"];
  v5 = [v3 hasPrefix:v4];

  return v5;
}

void sub_100020330(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000203E4;
    v5[3] = &unk_10003D768;
    v6 = *(a1 + 32);
    [v4 enumerateKeysAndObjectsUsingBlock:v5];
  }
}

void sub_100020888(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = +[_CDLogging communicatorChannel];
  v7 = v6;
  if (v5 || (a2 & 1) == 0)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000232D0(v5, v7);
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Saved histogram: %@", &v10, 0xCu);
  }

  if (*(a1 + 48))
  {
    v7 = +[CDKnowledgeDaemon defaultDaemon];
    v9 = [v7 storage];
    [v9 deleteHistogram:*(a1 + 48)];

LABEL_9:
  }
}

void sub_100021A74(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 privacyCloak];
  v4 = [v2 cdd];

  v3 = [v4 communicator];
  [v3 triggerSystemDataExchange:1 wakeRemote:0];
}

_BYTE *sub_100021B60(uint64_t a1)
{
  if ([*(a1 + 32) isManagedConfigurationSettingOn])
  {
    result = *(a1 + 32);
    if ((result[24] & 1) == 0)
    {
      v3 = [result cdd];
      v4 = +[NSDate date];
      [v3 setDatabaseAge:v4];

      result = *(a1 + 32);
    }

    result[24] = 1;
  }

  else
  {
    v5 = +[_CDLogging admissionCheckChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Deleting All Sensitive Entries in DB.", v6, 2u);
    }

    *(*(a1 + 32) + 24) = 0;
    return [*(a1 + 32) deletePrivacySensitiveDBEntries];
  }

  return result;
}

void sub_100021D8C(uint64_t a1)
{
  v6 = [NSString stringWithUTF8String:a1];
  sub_10000237C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100021E2C(uint64_t a1)
{
  v6 = [NSString stringWithUTF8String:a1];
  sub_10000237C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100021F38(void *a1, NSObject *a2)
{
  v3[0] = 67109120;
  v3[1] = [a1 processIdentifier];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Connection from PID %d rejected for lacking entitlement", v3, 8u);
}

void sub_100022060(uint64_t a1, NSObject *a2)
{
  v2 = 134218240;
  v3 = a1;
  v4 = 2048;
  v5 = 1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Interaction store version mismatch (current %ld != desired %ld). Deleting storage.", &v2, 0x16u);
}

void sub_1000220E8(os_log_t log)
{
  v1 = 134217984;
  v2 = 1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Recording current interaction store version %ld", &v1, 0xCu);
}

void sub_10002219C(os_log_t log)
{
  v1 = 134217984;
  v2 = 1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Interaction store version %ld is current", &v1, 0xCu);
}

void sub_1000223BC(void *a1)
{
  [a1 timeIntervalSinceNow];
  sub_10000CF44();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100022450(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 count];
  *a1 = 134217984;
  *a3 = v7;
  _os_log_debug_impl(&_mh_execute_header, a4, OS_LOG_TYPE_DEBUG, "Harvested %lu interactions", a1, 0xCu);
}

void sub_10002258C(id *a1)
{
  v1 = [*a1 dateOfOldestAllowedInteractionForWhitelistedFirstPartyBundleIds];
  sub_10000CF6C();
  sub_10000CF44();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100022628(id *a1)
{
  v1 = [*a1 dateOfOldestAllowedInteraction];
  sub_10000CF6C();
  sub_10000CF44();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000226C4(id *a1)
{
  [*a1 maxNumberOfInteractionsStored];
  sub_10000CF44();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1000227E4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error unarchiving object %@", &v2, 0xCu);
}

void sub_1000228CC(void *a1, NSObject *a2)
{
  v3 = [a1 description];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "send sysdata: %@", &v4, 0xCu);
}

void sub_1000229BC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "received sysdata: %@", &v2, 0xCu);
}

void sub_100022B0C(void *a1)
{
  [a1 processIdentifier];
  sub_100001E8C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100022C48(void *a1)
{
  [a1 count];
  sub_100001E80();
  sub_10001D348(&_mh_execute_header, v1, v2, "Attempting to save %lu objects to knowledge store", v3, v4, v5, v6, v7);
}

void sub_100022CC0(void *a1)
{
  [a1 count];
  sub_100001E80();
  sub_10001D348(&_mh_execute_header, v1, v2, "Attempting to delete %lu objects from knowledge store", v3, v4, v5, v6, v7);
}

void sub_100022E64(void *a1)
{
  v6 = [a1 localizedDescription];
  sub_100001E8C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100022F50(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100001E80();
  sub_100001E8C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10002306C()
{
  sub_100001E80();
  sub_10001EB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000231B0()
{
  sub_100001E80();
  sub_10001EB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000232D0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error saving histogram: %@", &v2, 0xCu);
}

void sub_100023348(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 firstObject];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = objc_opt_class();
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Error obtaining DB age: %@ last event class: %@", &v6, 0x16u);
}