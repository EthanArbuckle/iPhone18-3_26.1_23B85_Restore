SecTaskRef sub_100001020(uint64_t a1, const __CFString *a2)
{
  v7 = 0u;
  v8 = 0u;
  xpc_connection_get_audit_token();
  memset(&v6, 0, sizeof(v6));
  result = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &v6);
  if (result)
  {
    v4 = result;
    v5 = SecTaskCopyValueForEntitlement(result, a2, 0);
    CFRelease(v4);
    if (v5)
    {
      CFRelease(v5);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000010AC(void *a1, void *a2)
{
  v3 = a1;
  reply = xpc_dictionary_create_reply(a2);
  v5 = +[LTSStatsManager sharedLTSStatsManager];
  if (sub_100001020(v3, @"com.apple.private.LTSStats-read"))
  {
    v6 = MKBDeviceUnlockedSinceBoot();
    v7 = qword_100014B08;
    if (v6 == 1)
    {
      if (os_log_type_enabled(qword_100014B08, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received message for LTSStats type", buf, 2u);
      }

      if (v5)
      {
        v8 = [v5 getLifetimeStats];
        v9 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(reply, "LTSStats", v9);

        v10 = 0;
      }

      else
      {
        v11 = qword_100014B08;
        if (os_log_type_enabled(qword_100014B08, OS_LOG_TYPE_INFO))
        {
          *v14 = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "LTSStats are not supported", v14, 2u);
        }

        v8 = 0;
        v10 = 45;
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100014B08, OS_LOG_TYPE_ERROR))
      {
        sub_100007604();
      }

      v8 = 0;
      v10 = 35;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100014B08, OS_LOG_TYPE_ERROR))
    {
      sub_1000075D0();
    }

    v8 = 0;
    v10 = 1;
  }

  xpc_dictionary_set_int64(reply, "errno", v10);
  v12 = _CFXPCCreateXPCObjectFromCFObject();
  xpc_dictionary_set_value(reply, "LTSStats", v12);

  xpc_connection_send_message(v3, reply);
  return v10;
}

void start()
{
  v0 = sub_100001908();
  v1 = sub_1000019E8();
  v2 = os_log_create("com.apple.powerdatad", "main");
  v3 = qword_100014B08;
  qword_100014B08 = v2;

  mach_service = xpc_connection_create_mach_service("com.apple.powerdatad", 0, 1uLL);
  v5 = objc_autoreleasePoolPush();
  xpc_activity_register("com.apple.powerdatad.3hourlyTask", XPC_ACTIVITY_CHECK_IN, &stru_100010490);
  xpc_connection_set_event_handler(mach_service, &stru_1000104B0);
  xpc_connection_activate(mach_service);
  if (v0 || v1)
  {
    xpc_activity_register("com.apple.powerdatad.15minTask", XPC_ACTIVITY_CHECK_IN, &stru_1000104F8);
    xpc_activity_register("com.apple.powerdatad.DailyTask", XPC_ACTIVITY_CHECK_IN, &stru_100010518);
  }

  else
  {
    xpc_activity_unregister("com.apple.powerdatad.DailyTask");
    xpc_activity_unregister("com.apple.powerdatad.15minTask");
    xpc_transaction_exit_clean();
  }

  objc_autoreleasePoolPop(v5);
  CFRunLoopRun();
  exit(1);
}

void sub_1000013B0(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  state = xpc_activity_get_state(v2);
  if (state == 2)
  {
    v6 = qword_100014B08;
    if (os_log_type_enabled(qword_100014B08, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "LTS Activity Run!", v11, 2u);
    }

    v7 = +[LTSStatsManager sharedLTSStatsManager];
    v8 = v7;
    if (v7)
    {
      [v7 updateLifetimeStats];
    }

    else
    {
      xpc_activity_unregister("com.apple.powerdatad.3hourlyTask");
      v9 = qword_100014B08;
      if (os_log_type_enabled(qword_100014B08, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Failed to instantiate LTS stats manager. LTS data collection is not supported!!", v10, 2u);
      }

      xpc_transaction_exit_clean();
    }
  }

  else if (!state)
  {
    v5 = qword_100014B08;
    if (os_log_type_enabled(qword_100014B08, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "LTS Activity checking in!", buf, 2u);
    }
  }

  objc_autoreleasePoolPop(v3);
}

void sub_100001504(id a1, OS_xpc_object *a2)
{
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100001598;
  handler[3] = &unk_1000104D8;
  v4 = a2;
  v2 = v4;
  xpc_connection_set_event_handler(v2, handler);
  xpc_connection_activate(v2);
}

void sub_100001598(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    if (xpc_dictionary_get_BOOL(v3, "LTSStats"))
    {
      if (sub_1000010AC(*(a1 + 32), v3) == 45)
      {
        xpc_transaction_exit_clean();
      }
    }

    else
    {
      v5 = qword_100014B08;
      if (os_log_type_enabled(qword_100014B08, OS_LOG_TYPE_ERROR))
      {
        sub_10000766C(v3, v5);
      }
    }
  }

  else if (os_log_type_enabled(qword_100014B08, OS_LOG_TYPE_ERROR))
  {
    sub_100007638();
  }

  objc_autoreleasePoolPop(v4);
}

void sub_100001670(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  state = xpc_activity_get_state(v2);
  if (state == 2)
  {
    v6 = qword_100014B08;
    if (os_log_type_enabled(qword_100014B08, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "15 min Activity Run!", v8, 2u);
    }

    if (sub_100001AD8())
    {
      v7 = +[EnergyTelemetry sharedInstance];
      [v7 getEnergyTelemetry];
    }

    else
    {
      if (os_log_type_enabled(qword_100014B08, OS_LOG_TYPE_ERROR))
      {
        sub_1000076E4();
      }

      xpc_activity_unregister("com.apple.powerdatad.15minTask");
      xpc_transaction_exit_clean();
    }
  }

  else if (!state)
  {
    v5 = qword_100014B08;
    if (os_log_type_enabled(qword_100014B08, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "15 min Activity checking in!", buf, 2u);
    }
  }

  objc_autoreleasePoolPop(v3);
}

void sub_1000017A8(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  state = xpc_activity_get_state(v2);
  if (state == 2)
  {
    v6 = qword_100014B08;
    if (os_log_type_enabled(qword_100014B08, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Daily Activity Run!", v8, 2u);
    }

    if (sub_100001AD8())
    {
      v7 = +[EnergyTelemetry sharedInstance];
      [v7 calculateEnergyAndPublishTelemetry];
    }

    else
    {
      if (os_log_type_enabled(qword_100014B08, OS_LOG_TYPE_ERROR))
      {
        sub_1000076E4();
      }

      xpc_activity_unregister("com.apple.powerdatad.DailyTask");
      xpc_transaction_exit_clean();
    }
  }

  else if (!state)
  {
    v5 = qword_100014B08;
    if (os_log_type_enabled(qword_100014B08, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Daily Activity checking in!", buf, 2u);
    }
  }

  objc_autoreleasePoolPop(v3);
}

void sub_1000018E0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

BOOL sub_100001908()
{
  v0 = +[OSASystemConfiguration sharedInstance];
  v1 = [v0 optInApple];

  if ((v1 & 1) == 0)
  {
    result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v6 = 0;
    v3 = "No opt-in for D&U.";
    v4 = &v6;
    goto LABEL_8;
  }

  if (_os_feature_enabled_impl())
  {
    return 1;
  }

  result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v5 = 0;
    v3 = "Feature flag for ET not enabled.";
    v4 = &v5;
LABEL_8:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v3, v4, 2u);
    return 0;
  }

  return result;
}

BOOL sub_1000019E8()
{
  v0 = _os_feature_enabled_impl();
  v1 = +[OSASystemConfiguration sharedInstance];
  v2 = [v1 optInApple];

  if ((v2 & 1) == 0)
  {
    result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v7 = 0;
    v4 = "No opt-in for D&U.";
    v5 = &v7;
    goto LABEL_8;
  }

  if (v0)
  {
    return 1;
  }

  result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v6 = 0;
    v4 = "Feature flag for CEA not enabled.";
    v5 = &v6;
LABEL_8:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
    return 0;
  }

  return result;
}

BOOL sub_100001AD8()
{
  v0 = IOServiceMatching("AppleSmartBattery");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v0);
  if (MatchingService)
  {
    v2 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"PowerTelemetryData", kCFAllocatorDefault, 0);
    v4 = CFProperty != 0;
    if (CFProperty)
    {
      CFRelease(CFProperty);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "PowerTelemetryData key not found", buf, 2u);
    }

    IOObjectRelease(v2);
  }

  else
  {
    v4 = 0;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "No match for AppleSmartBattery IOService.", v6, 2u);
      return 0;
    }
  }

  return v4;
}

id sub_100001E00()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100014B28;
  v7 = qword_100014B28;
  if (!qword_100014B28)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100005830;
    v3[3] = &unk_1000106B8;
    v3[4] = &v4;
    sub_100005830(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100001EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100001F24(id a1)
{
  qword_100014B10 = objc_alloc_init(EnergyTelemetry);

  _objc_release_x1();
}

void sub_100002480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100004E74(uint64_t a1)
{
  v2 = [NSMutableDictionary dictionaryWithCapacity:6];
  [v2 setObject:*(a1 + 32) forKeyedSubscript:@"average_intensity"];
  [v2 setObject:*(a1 + 40) forKeyedSubscript:@"domain"];
  if (*(a1 + 80))
  {
    v3 = &__kCFBooleanTrue;
  }

  else
  {
    v3 = &__kCFBooleanFalse;
  }

  [v2 setObject:v3 forKeyedSubscript:@"is_intensity_static"];
  v4 = [*(*(a1 + 48) + 16) stringFromDate:*(a1 + 56)];
  [v2 setObject:v4 forKeyedSubscript:@"date"];

  [v2 setObject:*(a1 + 64) forKeyedSubscript:@"slot"];
  v5 = *(a1 + 48);
  v6 = *(a1 + 72);
  [*(a1 + 32) doubleValue];
  v8 = [v5 calcSlotValueFromEnergy:v6 withIntensity:v7];
  [v2 setObject:v8 forKeyedSubscript:@"slot_value"];

  return v2;
}

uint64_t sub_1000056EC()
{
  if (!qword_100014B20)
  {
    qword_100014B20 = _sl_dlopen();
  }

  return qword_100014B20;
}

uint64_t sub_1000057BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100014B20 = result;
  return result;
}

void sub_100005830(uint64_t a1)
{
  sub_100005888();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("_GDSManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100014B28 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_100007F88();
    sub_100005888();
  }
}

void sub_100005888()
{
  if (!sub_1000056EC())
  {
    v0 = abort_report_np();
    free(v0);
  }
}

void sub_1000058D8(uint64_t a1)
{
  sub_100005888();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("_GDSBalancingAuthorityOutput");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100014B30 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_100007FB0();
    sub_100005930();
  }
}

uint64_t sub_10000684C(uint64_t a1)
{
  qword_100014B40 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

int sub_100006B20(id a1, __CFDictionary *a2)
{
  Group = IOReportChannelGetGroup();
  SubGroup = IOReportChannelGetSubGroup();
  if (CFStringCompare(Group, @"PMP", 0) || (v4 = CFStringCompare(SubGroup, @"Volt-Temp HM", 0)) != kCFCompareEqualTo)
  {
    LODWORD(v4) = 16;
  }

  return v4;
}

uint64_t sub_100007318(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100007330(uint64_t a1)
{
  [*(a1 + 32) updateLifetimeStatsGated];
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = 14;
  v6 = &off_100014950;
  *&v7 = 138543362;
  v12 = v7;
  do
  {
    if (*(v6 + 8))
    {
      v8 = [[LTSStatsStore alloc] initForChannel:*(v6 - 2)];
      v9 = [v8 getLifetimeStats];
      v10 = off_100014B00;
      if (os_log_type_enabled(off_100014B00, OS_LOG_TYPE_INFO))
      {
        v11 = *v6;
        *buf = v12;
        v14 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Returning lifetime stats for report %{public}@\n", buf, 0xCu);
      }

      [*(*(*(a1 + 40) + 8) + 40) setValue:v9 forKey:{*v6, v12}];
    }

    v6 += 4;
    --v5;
  }

  while (v5);
}

void sub_100007544(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

BOOL sub_100007564()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

void sub_100007594(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_1000075B0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_10000766C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Received unexpected message %@", &v2, 0xCu);
}

void sub_100007804(uint64_t *a1)
{
  v6 = *a1;
  sub_100005930();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100007998(int a1, uint8_t *buf, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Num elements in incremental array %u", buf, 8u);
}

void sub_1000079E0()
{
  sub_1000018FC();
  sub_100005930();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100007A1C()
{
  sub_10000593C();
  sub_100005930();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100007B0C()
{
  sub_10000593C();
  v3 = 2048;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Num slots needed %ld would take records beyond max count, available: %ld", v2, 0x16u);
}

void sub_100007BC4()
{
  sub_1000018FC();
  sub_100005930();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100007CD0(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Total emissions slots fetched %lu", buf, 0xCu);
}

void sub_100007D18()
{
  sub_10000593C();
  sub_100005930();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100007DBC(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 name];
  v5 = [a2 identifier];
  v6 = [a2 lastUpdatedDate];
  v7 = 138412802;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  v11 = 2112;
  v12 = v6;
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "@Name %@, ID %@, Date %@!", &v7, 0x20u);
}

void sub_100007EA8()
{
  sub_10000593C();
  sub_100005930();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100007F18()
{
  sub_10000593C();
  sub_100005930();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100008074()
{
  sub_10000757C();
  if (sub_100007564())
  {
    sub_10000751C();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }
}

void sub_100008114()
{
  sub_10000757C();
  if (sub_100007564())
  {
    sub_10000751C();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  *v0 = 0;
}

void sub_100008284(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 134218242;
  *&v3[4] = a2;
  *&v3[12] = 2114;
  *&v3[14] = a1;
  sub_1000075B0(&_mh_execute_header, a2, a3, "Wrote %ld bytes to file %{public}@", *v3, *&v3[8], *&v3[16]);
}

void sub_100008438(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_100007588();
  sub_1000075B0(&_mh_execute_header, v2, v3, "Life time stats for domain %@: %@");
}

void sub_1000084B0(int a1)
{
  v2 = off_100014B00;
  if (os_log_type_enabled(off_100014B00, OS_LOG_TYPE_ERROR))
  {
    v3[0] = 67109120;
    v3[1] = a1;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Failed to get boot UUID. rc:0x%x", v3, 8u);
  }
}

void sub_100008554()
{
  v0 = off_100014B00;
  if (os_log_type_enabled(off_100014B00, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Failed to read boot UUID", v1, 2u);
  }
}

void sub_100008624(uint64_t *a1)
{
  v1 = *a1;
  sub_100007588();
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "IOReportCreateSubscription error: %{public}@", v3, 0xCu);
}

void sub_10000869C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = off_100014B00;
  if (os_log_type_enabled(off_100014B00, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "PMP";
    v11 = 2080;
    v12 = "Volt-Temp HM";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "No channels found for group '%s' subgroup '%s'", &v9, 0x16u);
  }

  *a4 = a2;
  *a3 = a1;
}

void sub_1000087B0()
{
  sub_10000757C();
  if (sub_100007564())
  {
    v2 = *v1;
    sub_100007588();
    sub_10000751C();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  *v0 = 0;
}

void sub_100008850(void *a1)
{
  if (sub_100007564())
  {
    sub_10000751C();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_10000891C()
{
  sub_10000757C();
  if (sub_100007564())
  {
    sub_10000751C();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  *v0 = 16;
}

void sub_1000089C0(_DWORD *a1)
{
  if (sub_100007564())
  {
    sub_10000751C();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 16;
}

void sub_100008A2C()
{
  sub_10000757C();
  if (sub_100007564())
  {
    v2 = *v1;
    sub_100007588();
    sub_10000751C();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  *v0 = 0;
}

void sub_100008ACC(void *a1)
{
  if (sub_100007564())
  {
    sub_10000751C();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100008B2C(uint64_t a1)
{
  v1 = *(*a1 + 40);
  sub_100007588();
  sub_100007594(&_mh_execute_header, v2, v3, "Returning lifetime stats: %@", v4, v5, v6, v7, v8);
}