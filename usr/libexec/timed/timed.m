void sub_1000011D8(uint64_t a1, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_error)
  {
    if (object == &_xpc_error_connection_invalid)
    {
      v14 = qword_100033218;
      if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_INFO))
      {
        pid = xpc_connection_get_pid(*(a1 + 32));
        *v19 = 67109120;
        *&v19[4] = pid;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Client disconnected: %d", v19, 8u);
      }

      sub_100004D10();
    }

    else if (object == &_xpc_error_termination_imminent)
    {
      v16 = qword_100033218;
      if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_INFO))
      {
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Termination imminent!", v19, 2u);
      }

      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    else
    {
      xpc_dictionary_get_string(object, _xpc_error_key_description);
      if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_ERROR))
      {
        sub_100012728();
      }
    }
  }

  else
  {
    *v19 = 0u;
    v20 = 0u;
    v5 = *(a1 + 32);
    v4 = (a1 + 32);
    xpc_connection_get_audit_token();
    v6 = objc_alloc_init(NSAutoreleasePool);
    v7 = _CFXPCCreateCFObjectFromXPCObject();
    v8 = qword_100033218;
    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_INFO))
    {
      v9 = xpc_connection_get_pid(*v4);
      *buf = 67109378;
      *&buf[4] = v9;
      *&buf[8] = 2112;
      *&buf[10] = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Client %d issued command: %@", buf, 0x12u);
    }

    v10 = [qword_1000330E0 shouldAllowTimeTool];
    *buf = *v19;
    *&buf[16] = v20;
    v11 = sub_1000014EC(v7, buf, v10);
    v12 = qword_100033218;
    if (v11)
    {
      if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEBUG))
      {
        sub_10001269C(v12);
      }

      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100001EE8;
      v17[3] = &unk_1000287C8;
      v13 = *v4;
      v17[4] = object;
      v17[5] = v13;
      [qword_1000330D8 executeCommand:v7 withHandler:v17];
    }

    else if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_FAULT))
    {
      sub_10001260C(v4, v12);
    }

    [v6 drain];
  }
}

uint64_t sub_1000014EC(void *a1, _OWORD *a2, int a3)
{
  v6 = [a1 objectForKeyedSubscript:@"TMCommand"];
  if (qword_1000331F0 != -1)
  {
    sub_100017364();
  }

  if ([qword_1000331E8 containsObject:v6])
  {
    return 1;
  }

  v8 = a2[1];
  *atoken.val = *a2;
  *&atoken.val[4] = v8;
  if ((sub_100001714(@"com.apple.timed", &atoken) & 1) == 0)
  {
    v9 = a2[1];
    *atoken.val = *a2;
    *&atoken.val[4] = v9;
    euidp.val[0] = 0;
    audit_token_to_au32(&atoken, 0, euidp.val, 0, 0, 0, 0, 0, 0);
    if (euidp.val[0])
    {
      return 0;
    }
  }

  v10 = [a1 objectForKeyedSubscript:@"TMSource"];
  v11 = a2[1];
  *euidp.val = *a2;
  *&euidp.val[4] = v11;
  if (a3)
  {
    v12 = a2[1];
    *atoken.val = *a2;
    *&atoken.val[4] = v12;
    if (sub_100001714(@"com.apple.private.timetool", &atoken))
    {
      return 1;
    }
  }

  if ([v6 isEqualToString:@"TMSetAuthenticatedSourceTime"])
  {
    atoken = euidp;
    v13 = @"com.apple.private.timed.sources";
  }

  else
  {
    if (([v6 isEqualToString:@"TMSetSourceTime"] & 1) == 0 && !objc_msgSend(v6, "isEqualToString:", @"TMSetSourceTimeZone"))
    {
      return 1;
    }

    atoken = euidp;
    v13 = @"com.apple.timed.sources";
  }

  v14 = sub_1000017D4(v13, &atoken);
  v15 = v14;
  if (v14)
  {
    v16 = CFGetTypeID(v14);
    if (v16 != CFArrayGetTypeID())
    {
      v18 = qword_100033218;
      if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_FAULT))
      {
        sub_100017378(v18);
      }

      CFRelease(v15);
      return 0;
    }

    v21.length = CFArrayGetCount(v15);
    v21.location = 0;
    v17 = CFArrayContainsValue(v15, v21, v10);
    CFRelease(v15);
    if (v17)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_100001714(const __CFString *a1, _OWORD *a2)
{
  v3 = a2[1];
  v10[0] = *a2;
  v10[1] = v3;
  v4 = sub_1000017D4(a1, v10);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = CFGetTypeID(v4);
  if (v6 == CFBooleanGetTypeID() && CFEqual(v5, kCFBooleanTrue))
  {
    v7 = 1;
  }

  else
  {
    v8 = qword_100033218;
    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_FAULT))
    {
      sub_1000173BC(a1, v8);
    }

    v7 = 0;
  }

  CFRelease(v5);
  return v7;
}

CFTypeRef sub_1000017D4(const __CFString *a1, _OWORD *a2)
{
  v3 = a2[1];
  *token.val = *a2;
  *&token.val[4] = v3;
  v4 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &token);
  if (v4)
  {
    v5 = v4;
    error = 0;
    v6 = SecTaskCopyValueForEntitlement(v4, a1, &error);
    v7 = error;
    if (error)
    {
      v8 = qword_100033218;
      if (!os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT) || (token.val[0] = 138412290, *&token.val[1] = v7, _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SecTaskCopyValueForEntitlement failed with error: %@", &token, 0xCu), (v7 = error) != 0))
      {
        CFRelease(v7);
      }
    }

    CFRelease(v5);
  }

  else
  {
    v9 = qword_100033218;
    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_FAULT))
    {
      sub_100017434(v9);
    }

    return 0;
  }

  return v6;
}

double sub_100001918(uint64_t *a1, double *a2)
{
  if (qword_100033110 != -1)
  {
    sub_100012964();
  }

  if (byte_100033118)
  {
    if (qword_100033178 != -1)
    {
      sub_100012B3C();
    }

    v4 = 16;
    if (!a1)
    {
      v4 = 8;
    }

    v13 = v4;
    v5 = 3;
    while (sysctl(&unk_100033168, qword_100033170, &v17, &v13, 0, 0))
    {
      v6 = __error();
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v7 = *v6;
        v8 = strerror(v7);
        *buf = 136315394;
        *&buf[4] = v8;
        v15 = 1024;
        v16 = v7;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "CoreTime: Could not get kern.monotonicclock_usecs: %s(%d)\n", buf, 0x12u);
      }

      if (!--v5)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100012B50();
          if (a1)
          {
LABEL_26:
            *a1 = 0;
          }
        }

        else if (a1)
        {
          goto LABEL_26;
        }

        v9 = -1.0;
        if (a2)
        {
          *a2 = -1.0;
        }

        return v9;
      }
    }

    v10 = v17;
    if (a2)
    {
      *a2 = 0.0005;
    }

    v9 = v10 / 1000000.0;
    if (v13 != 16)
    {
      v18 = mach_absolute_time();
      v9 = v9 + *&qword_100033180;
      if (a2)
      {
        *a2 = *&qword_100033180 + *a2;
      }
    }

    if (a1)
    {
      *a1 = v18;
    }
  }

  else
  {
    *buf = 0;
    v17 = 0;
    mach_get_times();
    if (a1)
    {
      *a1 = *buf;
    }

    return TMConvertTicksToSeconds(v17);
  }

  return v9;
}

double TMConvertTicksToSeconds(unint64_t a1)
{
  v2 = *&qword_1000331A8;
  if (*&qword_1000331A8 == 0.0)
  {
    v7 = 0;
    sub_100006674(&v7 + 1, &v7);
    v3 = 1000000000;
    v4 = HIDWORD(v7);
    do
    {
      v5 = v4;
      v4 = v3;
      v3 = v5 % v3;
    }

    while (v3);
    v2 = (HIDWORD(v7) / v4) / (v7 * (0x3B9ACA00 / v4));
    *&qword_1000331A8 = v2;
  }

  return v2 * a1;
}

id sub_100001C24()
{

  return [v0 objectForKeyedSubscript:v1];
}

double sub_100001E00(unint64_t a1, unint64_t a2)
{
  if (a2 <= a1)
  {
    return TMConvertTicksToSeconds(a1 - a2);
  }

  else
  {
    return TMConvertTicksToSeconds(a2 - a1);
  }
}

NSDictionary *sub_100001E10(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1[2];
  [objc_msgSend(a1 "clock")];
  v2 = [objc_msgSend(v1 "timeAtRtc:"dictionary"")];
  sub_100002254();
  sub_1000022A8();
  AnalyticsSendEventLazy();
  if (!v2)
  {
    return +[NSDictionary dictionary];
  }

  return v2;
}

double sub_100001EB0()
{
  if (qword_100033128 != -1)
  {
    sub_100012978();
  }

  return *&qword_100033120;
}

void sub_100001EE8(uint64_t a1)
{
  if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEBUG))
  {
    sub_10001279C();
  }

  reply = xpc_dictionary_create_reply(*(a1 + 32));
  v3 = _CFXPCCreateXPCObjectFromCFObject();
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_10000230C;
  applier[3] = &unk_1000287A0;
  applier[4] = reply;
  xpc_dictionary_apply(v3, applier);
  xpc_release(v3);
  v4 = xpc_copy_description(reply);
  if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEBUG))
  {
    sub_100012810();
    if (!v4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v4)
  {
LABEL_5:
    free(v4);
  }

LABEL_6:
  xpc_connection_send_message(*(a1 + 40), reply);
  xpc_release(reply);
}

double sub_10000200C(unint64_t a1, unint64_t a2)
{
  if (a2 < a1)
  {
    return -TMConvertTicksToSeconds(a1 - a2);
  }

  v4 = a2 - a1;

  return TMConvertTicksToSeconds(v4);
}

BOOL sub_1000021FC()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_INFO);
}

void sub_100002214(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100002280(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_DEFAULT, a4, a5, 0xCu);
}

BOOL sub_10000234C()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

id sub_100002364(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);

  return [v2 countByEnumeratingWithState:va objects:va1 count:16];
}

id sub_1000023C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{

  return [v18 countByEnumeratingWithState:&a9 objects:&a18 count:16];
}

BOOL sub_1000023E4()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

BOOL sub_10000240C()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

void *sub_100002698(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = *(a1 + 24);
    v4 = sub_100002364(a1, a2);
    if (v4)
    {
      v5 = v4;
      v6 = *v15;
      do
      {
        v7 = 0;
        do
        {
          if (*v15 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v14 + 1) + 8 * v7);
          objc_opt_self();
          if (([v8 hasPrefix:@"NITZ"] & 1) != 0 || objc_msgSend(v8, "hasPrefix:", @"CDMA"))
          {
            v9 = [*(a1 + 16) containsObject:v8];
            if (v9)
            {
              v9 = [*(a1 + 8) objectForKeyedSubscript:v8];
              if (v9)
              {
                return v8;
              }
            }
          }

          else
          {
            v9 = [*(a1 + 16) containsObject:v8];
            if (v9)
            {
              return v8;
            }
          }

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = sub_100002364(v9, v10);
      }

      while (v5);
    }

    v11 = qword_100033220;
    if (os_log_type_enabled(qword_100033220, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "TZ,starved", v13, 2u);
    }
  }

  return 0;
}

BOOL sub_100002914()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

void sub_100002938(uint64_t a1)
{
  if (a1)
  {
    CFNotificationCenterGetDarwinNotifyCenter();
    sub_100002978();

    CFNotificationCenterPostNotification(v1, v2, v3, v4, v5);
  }
}

void sub_100002988(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_INFO, a4, a5, 2u);
}

void sub_1000029AC(uint64_t a1)
{
  if (a1)
  {
    [+[NSUserDefaults standardUserDefaults](NSUserDefaults synchronize];
    [objc_msgSend(a1 "clock")];
    *(a1 + 120) = v2;
    [*(a1 + 128) setLastRtcTime:?];
    [*(a1 + 128) setBootUUID:sub_100002AE4(a1)];
    [*(a1 + 128) setRtcResetCount:{objc_msgSend(a1, "rtcResetCount")}];
    [a1 accessoryUnc_s];
    [*(a1 + 128) setAccessoryUnc_s:?];
    [*(a1 + 128) setSystemTimeSet:{objc_msgSend(a1, "isSystemTimeSet")}];
    [*(a1 + 32) lastFetchAttempt];
    [*(a1 + 128) setLastNTPFetchAttempt:?];
    [*(a1 + 128) setSTF:{objc_msgSend(*(a1 + 24), "dataRepresentation")}];
    [*(a1 + 128) setTDTF:{objc_msgSend(*(a1 + 16), "dataRepresentation")}];
    [*(a1 + 128) setSystemTimeSet:*(a1 + 40)];
    [*(a1 + 128) savePath:@"/var/db/timed/com.apple.timed.plist"];
    v3 = qword_100033218;
    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      sub_100002988(&_mh_execute_header, v3, v4, "cached state", v5);
    }
  }
}

uint64_t sub_100002AE4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = *(result + 104);
    if (!result)
    {
      *in = 0u;
      memset(v5, 0, sizeof(v5));
      v2 = 37;
      if (!sysctlbyname("kern.bootsessionuuid", in, &v2, 0, 0))
      {
        if (v2 != 37)
        {
          sub_100015F40();
        }

        memset(uu, 0, sizeof(uu));
        if (!uuid_parse(in, uu))
        {
          *(v1 + 104) = [[NSUUID alloc] initWithUUIDBytes:uu];
          if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEBUG))
          {
            sub_100015F6C();
          }
        }
      }

      return *(v1 + 104);
    }
  }

  return result;
}

uint64_t sub_100002DA8(uint64_t a1)
{
  if (qword_1000330F8 != -1)
  {
    sub_10001293C();
  }

  v2 = [qword_1000330F0 objectForKeyedSubscript:a1];
  if (!v2)
  {
    return 28;
  }

  return [v2 unsignedIntegerValue];
}

uint64_t sub_100002E1C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 24);
    v3 = *(result + 56);
    if (*(result + 96) >= 0.000015)
    {
      v4 = 0x3FF0001F75104D55;
      if (v2 <= 1.00003)
      {
        v4 = 0x3FEFFF822BBECAACLL;
        if (v2 >= 0.99994)
        {
          return result;
        }

        v5 = 0x3E2EEC7BD512B572;
      }

      else
      {
        v5 = 0x3E0EEC7BD512B572;
      }
    }

    else
    {
      v4 = 0x3FF0000DA1A93294;
      if (v2 <= 1.000013)
      {
        v4 = 0x3FEFFFEB074A771DLL;
        if (v2 >= 0.99999)
        {
          return result;
        }

        v5 = 0x3DDB7CDFD9D7BDBCLL;
      }

      else
      {
        v5 = 0x3DE73A28AC8E9F0ALL;
      }
    }

    *(result + 24) = v4;
    *(result + 56) = v5;
    v6 = qword_100033218;
    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v10 = v2;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "rateSf clamped: %f", buf, 0xCu);
    }

    v7 = qword_100033220;
    if (os_log_type_enabled(qword_100033220, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(v1 + 128);
      *buf = 138412802;
      v10 = v8;
      v11 = 2048;
      v12 = v2;
      v13 = 2048;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@,clamped,_rateSf,%f,_sf_var,%f", buf, 0x20u);
    }

    return AnalyticsSendEventLazy();
  }

  return result;
}

double sub_1000031AC(double a1, double a2)
{
  if (a2 < 0.0)
  {
    a2 = -a2;
  }

  return a1 + a2 * 0.00002;
}

void sub_100003244(uint64_t a1)
{
  [*(*(a1 + 32) + 56) basebandWantedThreshold];
  v3 = v2;
  [*(*(a1 + 32) + 56) NTPWantedThreshold];
  v5 = v4;
  v6 = [*(a1 + 32) timeProvider];
  [v6 rtcWhenBeyondUncertainty:v3];
  v8 = v7;
  [v6 rtcWhenBeyondUncertainty:v5];
  v10 = v9;
  [objc_msgSend(*(a1 + 32) "clock")];
  v12 = v11;
  v13 = qword_100033220;
  if (os_log_type_enabled(qword_100033220, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219008;
    v30 = v12;
    v31 = 2048;
    v32 = v3;
    v33 = 2048;
    v34 = v5;
    v35 = 2048;
    v36 = v8;
    v37 = 2048;
    v38 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "cmd,checkActiveTimeSourceRequired,rtc_s,%f,bb_want_unc_s,%f,want_unc_s,%f,bb_want_rtc_s,%f,want_rtc_s,%f", buf, 0x34u);
  }

  v28 = *(a1 + 32);
  AnalyticsSendEventLazy();
  [*(*(a1 + 32) + 8) sendStateAnalytics];
  if (([*(*(a1 + 32) + 56) isAutomaticTimeZoneEnabled] & 1) == 0)
  {
    v14 = +[NSTimeZone systemTimeZone];
    v15 = @"Unresolved";
    [(NSTimeZone *)v14 name];
    [(NSTimeZone *)v14 secondsFromGMT];
    v16 = [objc_msgSend(*(*(a1 + 32) + 8) "currentTimeZone")];
    if (v16)
    {
      v15 = v16;
    }

    [[NSTimeZone timeZoneWithName:?]];
    AnalyticsSendEventLazy();
  }

  if (([*(*(a1 + 32) + 56) isAutomaticTimeEnabled] & 1) == 0)
  {
    [objc_msgSend(*(*(a1 + 32) + 16) "synthesizedTimeAtLastRTC")];
    CFAbsoluteTimeGetCurrent();
    AnalyticsSendEventLazy();
  }

  Current = CFAbsoluteTimeGetCurrent();
  v18 = v10 - v12;
  if (v10 - v12 < 0.0)
  {
    v18 = 0.0;
  }

  [*(*(a1 + 32) + 32) setWantedTime:v18 + Current];
  v19 = *(a1 + 32);
  if (v8 < v12 + 300.0)
  {
    [v19 setRequiresActiveBBTime:1];
    v20 = *(a1 + 32);
    if (*(v20 + 80) > -2.0)
    {
      v21 = qword_100033218;
      if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Unscheduling proactive time check", buf, 2u);
        v20 = *(a1 + 32);
      }

      dispatch_source_set_timer(*(v20 + 152), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
      *(*(a1 + 32) + 80) = 0xC000000000000000;
    }

    return;
  }

  [v19 setRequiresActiveBBTime:0];
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v22 = qword_100033218;
    if (!os_log_type_enabled(qword_100033218, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 0;
    v23 = "Proactive time is not necessary, dropping job with infinite start time";
LABEL_24:
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, v23, buf, 2u);
    return;
  }

  v24 = v8 - *(*(a1 + 32) + 80);
  if (v24 < 0.0)
  {
    v24 = -v24;
  }

  if (v24 < 300.0)
  {
    v22 = qword_100033218;
    if (!os_log_type_enabled(qword_100033218, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 0;
    v23 = "Not rescheduling proactive time check";
    goto LABEL_24;
  }

  v25 = v8 - v12;
  v26 = qword_100033218;
  if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v30 = v25;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Scheduling proactive time check after %f seconds", buf, 0xCu);
  }

  v27 = dispatch_time(0, (v25 * 1000000000.0));
  dispatch_source_set_timer(*(*(a1 + 32) + 152), v27, 0xFFFFFFFFFFFFFFFFLL, 0x45D964B800uLL);
  *(*(a1 + 32) + 80) = v8;
}

NSDictionary *sub_100003774(uint64_t a1)
{
  v5[0] = @"rtc_s";
  v6[0] = [NSNumber numberWithDouble:*(a1 + 40)];
  v5[1] = @"bb_want_rtc_s";
  v2 = *(a1 + 48);
  if (fabs(v2) == INFINITY)
  {
    v2 = 0.0;
  }

  v6[1] = [NSNumber numberWithDouble:v2];
  v5[2] = @"want_rtc_s";
  v3 = *(a1 + 56);
  if (v3 == -INFINITY)
  {
    v3 = 0.0;
  }

  v6[2] = [NSNumber numberWithDouble:v3];
  v5[3] = @"manual_time";
  v6[3] = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(*(a1 + 32) + 56) isAutomaticTimeEnabled] ^ 1);
  v5[4] = @"manual_time_zone";
  v6[4] = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(*(a1 + 32) + 56) isAutomaticTimeZoneEnabled] ^ 1);
  return [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:5];
}

double sub_100003ACC(void *a1)
{
  v1 = 0.0;
  if (a1)
  {
    [a1 lastFetchAttempt];
    if (v3 >= 0.1)
    {
      [objc_msgSend(a1 "clock")];
      v5 = v4;
      [a1 lastFetchAttempt];
      v7 = v5 - v6;
      [a1 schedulingInterval];
      v9 = v8 - v7;
      if (v9 >= 0.0)
      {
        return v9;
      }

      else
      {
        return 0.0;
      }
    }
  }

  return v1;
}

uint64_t sub_100003B58(uint64_t a1)
{
  if (qword_100033110 != -1)
  {
    sub_100012964();
  }

  if ((byte_100033118 & 1) == 0)
  {
    mach_get_times();
    return -sub_100006324(0);
  }

  if (a1 < 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100012C3C();
  }

  v5 = a1 / 1000;
  if (qword_100033198 != -1)
  {
    sub_100012CB8();
  }

  v6 = 0;
  v4 = 8;
  if ((a1 + 999) >= 0x7CF)
  {
    v2 = &v5;
  }

  else
  {
    v2 = 0;
  }

  if (sysctl(&unk_100033188, qword_100033190, &v6, &v4, v2, 8 * ((a1 + 999) > 0x7CE)))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100012CE0();
    }
  }

  else
  {
    if (v4 == 8)
    {
      return 1000 * v6;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100012D74();
    }
  }

  return 0;
}

void sub_100004D10()
{
  v0 = qword_100033218;
  if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "Client exited", v1, 2u);
  }
}

void sub_100004D78(_xpc_connection_s *a1)
{
  xpc_connection_set_target_queue(a1, [qword_1000330D8 workloop]);
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x2020000000;
  v4 = 0;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000011D8;
  v2[3] = &unk_1000287F0;
  v2[4] = a1;
  v2[5] = v3;
  xpc_connection_set_event_handler(a1, v2);
  xpc_connection_resume(a1);
  _Block_object_dispose(v3, 8);
}

void sub_100004E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void start()
{
  v22 = objc_alloc_init(NSAutoreleasePool);
  sub_10000C690();
  qword_1000330E0 = [[TMPreferences alloc] initWithDefaults:+[NSUserDefaults standardUserDefaults]];
  v0 = [TMMonotonicClock alloc];
  [qword_1000330E0 RTCMachSyncInterval];
  v21 = [(TMMonotonicClock *)v0 initWithSyncInterval:?];
  qword_1000330E8 = dispatch_workloop_create("com.apple.timed.workloop");
  mach_service = xpc_connection_create_mach_service("com.apple.timed.xpc", qword_1000330E8, 1uLL);
  if (([qword_1000330E0 shouldCorrectOnWake] & 1) != 0 || objc_msgSend(qword_1000330E0, "shouldFetchOnWake"))
  {
    sub_10000BAFC(sub_1000052D4, qword_1000330E8);
  }

  xpc_set_event_stream_handler("com.apple.systemconfiguration", qword_1000330E8, &stru_100028830);
  v20 = mach_service;
  xpc_connection_enable_termination_imminent_event();
  v2 = &qword_100033218;
  v23 = [NSMutableDictionary dictionaryWithContentsOfFile:@"/var/db/timed/TimeZoneRules.plist"];
  if (!v23)
  {
    v3 = qword_100033218;
    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26[0] = @"/var/db/timed/TimeZoneRules.plist";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "OTA rules plist not found: %@!\n", buf, 0xCu);
    }

    v4 = [[NSBundle bundleWithPath:?]ofType:"pathForResource:ofType:", @"TimeZoneRules", @"plist"];
    v23 = [NSMutableDictionary dictionaryWithContentsOfFile:v4];
    if (!v23)
    {
      v5 = qword_100033218;
      if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v26[0] = v4;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "rules plist not found: %@!\n", buf, 0xCu);
      }

      v23 = +[NSMutableDictionary dictionary];
    }
  }

  v6 = [@"/System/Library/PrivateFrameworks/CoreTime.framework" stringByAppendingPathComponent:@"TimeSources"];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = [+[NSFileManager defaultManager](NSFileManager enumeratorAtPath:"enumeratorAtPath:", v6];
  v8 = [(NSDirectoryEnumerator *)v7 countByEnumeratingWithState:&v28 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        if ([objc_msgSend(v12 "pathExtension")])
        {
          v13 = v2;
          v14 = *v2;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v26[0] = v12;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Loading source rules: %@", buf, 0xCu);
          }

          v15 = -[NSBundle pathForResource:ofType:](+[NSBundle bundleWithPath:](NSBundle, "bundleWithPath:", [v6 stringByAppendingPathComponent:v12]), "pathForResource:ofType:", @"TimeZoneRules", @"plist");
          v2 = v13;
          if (v15)
          {
            v16 = [NSMutableDictionary dictionaryWithContentsOfFile:v15];
            if (v16)
            {
              v17 = v16;
              v18 = *v13;
              if (os_log_type_enabled(*v13, OS_LOG_TYPE_INFO))
              {
                v19 = [(NSMutableDictionary *)v17 count];
                *buf = 67109378;
                LODWORD(v26[0]) = v19;
                WORD2(v26[0]) = 2112;
                *(v26 + 6) = @"TimeZoneRules";
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Loaded %d rules from '%@'", buf, 0x12u);
              }

              [(NSMutableDictionary *)v23 addEntriesFromDictionary:v17];
              v2 = v13;
            }
          }
        }
      }

      v9 = [(NSDirectoryEnumerator *)v7 countByEnumeratingWithState:&v28 objects:v27 count:16];
    }

    while (v9);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000052EC;
  block[3] = &unk_100028880;
  block[4] = v23;
  block[5] = v21;
  block[6] = v6;
  block[7] = v20;
  dispatch_async_and_wait(qword_1000330E8, block);
  [v22 drain];
  while (1)
  {
    [+[NSRunLoop currentRunLoop](NSRunLoop run];
  }
}

void sub_1000052EC(uint64_t a1)
{
  v2 = [TMDaemonCore alloc];
  qword_1000330D8 = [(TMDaemonCore *)v2 initWithTimeZoneRules:*(a1 + 32) monotonicClock:*(a1 + 40) preferences:qword_1000330E0 workloop:qword_1000330E8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = [+[NSFileManager defaultManager](NSFileManager enumeratorAtPath:"enumeratorAtPath:", *(a1 + 48)];
  v4 = [(NSDirectoryEnumerator *)v3 countByEnumeratingWithState:&v23 objects:v30 count:16];
  if (v4)
  {
    v6 = *v24;
    *&v5 = 138412290;
    v20 = v5;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        if ([objc_msgSend(v8 pathExtension])
        {
          v9 = qword_100033218;
          if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_INFO))
          {
            LODWORD(buf) = v20;
            *(&buf + 4) = v8;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Loading time source: %@", &buf, 0xCu);
          }

          v10 = -[NSBundle principalClass](+[NSBundle bundleWithPath:](NSBundle, "bundleWithPath:", [*(a1 + 48) stringByAppendingPathComponent:v8]), "principalClass");
          v11 = [(objc_class *)v10 instancesRespondToSelector:"initWithClock:daemonCore:"];
          v12 = qword_100033218;
          if (v11)
          {
            if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_INFO))
            {
              v13 = NSStringFromClass(v10);
              LODWORD(buf) = v20;
              *(&buf + 4) = v13;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Loading plugin via [%@ -initWithClock:daemonCore:]", &buf, 0xCu);
            }

            v14 = [v10 alloc];
            v15 = [v14 initWithClock:*(a1 + 40) daemonCore:qword_1000330D8];
          }

          else
          {
            if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT))
            {
              v16 = NSStringFromClass(v10);
              LODWORD(buf) = v20;
              *(&buf + 4) = v16;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Loading plugin via [%@ -init]", &buf, 0xCu);
            }

            v15 = objc_alloc_init(v10);
          }

          v17 = v15;
          if (v15)
          {
            [qword_1000330D8 addPlugin:v15];
          }
        }
      }

      v4 = [(NSDirectoryEnumerator *)v3 countByEnumeratingWithState:&v23 objects:v30 count:16];
    }

    while (v4);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v28 = 0x2020000000;
  v29 = 0;
  v18 = *(a1 + 56);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100005694;
  handler[3] = &unk_100028858;
  handler[4] = &buf;
  xpc_connection_set_event_handler(v18, handler);
  v19 = qword_100033218;
  if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_INFO))
  {
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Starting XPC listener", v21, 2u);
  }

  xpc_connection_resume(*(a1 + 56));
  [qword_1000330D8 testAndApplySystemTime];
  [qword_1000330D8 checkActiveTimeSourceRequired];
  _Block_object_dispose(&buf, 8);
}

void sub_100005674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100005694(uint64_t a1, xpc_object_t object)
{
  type = xpc_get_type(object);
  if (type == &_xpc_type_error)
  {
    if (object == &_xpc_error_connection_invalid)
    {
      v7 = qword_100033218;
      if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_INFO))
      {
        LOWORD(v8[0]) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Listener connection went invalid. Exiting.", v8, 2u);
      }

      exit(0);
    }

    if (object == &_xpc_error_termination_imminent)
    {
      v6 = qword_100033218;
      if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v8[0]) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Termination is imminent!", v8, 2u);
      }

      *(*(*(a1 + 32) + 8) + 24) = 1;
      [qword_1000330D8 handleShutdown];
    }

    else
    {
      xpc_dictionary_get_string(object, _xpc_error_key_description);
      if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_ERROR))
      {
        sub_100012728();
      }
    }
  }

  else
  {
    v5 = qword_100033218;
    if (type == &_xpc_type_connection)
    {
      if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_INFO))
      {
        v8[0] = 67109120;
        v8[1] = xpc_connection_get_pid(object);
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "New connection from PID: %d", v8, 8u);
      }

      sub_100004D78(object);
    }

    else if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_ERROR))
    {
      sub_100012884(v5);
    }
  }
}

void sub_1000058A4(id a1)
{
  v1 = @"TMCommand";
  v2 = @"TMSystemWillWake";
  [qword_1000330D8 executeCommand:+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary withHandler:{"dictionaryWithObjects:forKeys:count:", &v2, &v1, 1), 0}];
}

__CFString *sub_100005938(unint64_t a1)
{
  if (a1 >= 0x1D)
  {
    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_ERROR))
    {
      sub_1000128C8();
    }

    v1 = off_100029198;
  }

  else
  {
    v1 = off_100028A80[a1];
  }

  return *v1;
}

void sub_1000059A8(id a1)
{
  v1[0] = @"NITZ";
  v1[1] = @"CDMA";
  v2[0] = &off_10002C0E8;
  v2[1] = &off_10002C100;
  v1[2] = @"GPS";
  v1[3] = @"LocationServer";
  v2[2] = &off_10002C118;
  v2[3] = &off_10002C130;
  v1[4] = @"HarvestServer";
  v1[5] = @"NTP";
  v2[4] = &off_10002C148;
  v2[5] = &off_10002C160;
  v1[6] = @"NTPLowConfidence";
  v1[7] = @"NTPPacket";
  v2[6] = &off_10002C178;
  v2[7] = &off_10002C190;
  v1[8] = @"MobileLockdown";
  v1[9] = @"iTunesStoreServer";
  v2[8] = &off_10002C1A8;
  v2[9] = &off_10002C1C0;
  v1[10] = @"Location";
  v1[11] = @"Computed";
  v2[10] = &off_10002C1D8;
  v2[11] = &off_10002C1F0;
  v1[12] = @"LocationAndNetwork";
  v1[13] = @"TimeSourceGnssValidPos";
  v2[12] = &off_10002C208;
  v2[13] = &off_10002C220;
  v1[14] = @"TimeSourceGnss";
  v1[15] = @"TimeSourceBBTimeTransfer";
  v2[14] = &off_10002C238;
  v2[15] = &off_10002C250;
  v1[16] = @"TimeSourceBBTimeTagging";
  v1[17] = @"TimeSourceUnknown";
  v2[16] = &off_10002C268;
  v2[17] = &off_10002C280;
  v1[18] = @"TMLSSourceComputed";
  v1[19] = @"TMLSSourceComputedReliable";
  v2[18] = &off_10002C298;
  v2[19] = &off_10002C2B0;
  v1[20] = @"TMLSSourceUser";
  v1[21] = @"TMLSSourceDevice";
  v2[20] = &off_10002C2C8;
  v2[21] = &off_10002C2E0;
  v1[22] = @"FilesystemTimestamp";
  v1[23] = @"AirPlaySendingDeviceTime";
  v2[22] = &off_10002C2F8;
  v2[23] = &off_10002C310;
  v1[24] = @"ProxBuddy";
  v1[25] = @"APNS";
  v2[24] = &off_10002C328;
  v2[25] = &off_10002C340;
  v1[26] = @"Accessory";
  v1[27] = @"LocationBorder";
  v2[26] = &off_10002C358;
  v2[27] = &off_10002C370;
  v1[28] = @"Unknown";
  v2[28] = &off_10002C388;
  qword_1000330F0 = [NSDictionary dictionaryWithObjects:v2 forKeys:v1 count:29];
}

uint64_t sub_100005CD8(uint64_t a1)
{
  if (qword_100033108 != -1)
  {
    sub_100012950();
  }

  v2 = [qword_100033100 objectForKeyedSubscript:a1];
  if (v2)
  {
    return [v2 unsignedIntegerValue];
  }

  else
  {
    return 23;
  }
}

void sub_100005D30(id a1)
{
  v1[0] = @"TMSetSourceTime";
  v1[1] = @"TMSetSourceAvailable";
  v2[0] = &off_10002C3A0;
  v2[1] = &off_10002C3B8;
  v1[2] = @"TMSetSourceUnavailable";
  v1[3] = @"TMSetSourceTimeZone";
  v2[2] = &off_10002C3D0;
  v2[3] = &off_10002C3E8;
  v1[4] = @"TMSetAutomaticTimeEnabled";
  v1[5] = @"TMIsAutomaticTimeEnabled";
  v2[4] = &off_10002C400;
  v2[5] = &off_10002C418;
  v1[6] = @"TMSetAutomaticTimeZoneEnabled";
  v1[7] = @"TMIsAutomaticTimeZoneEnabled";
  v2[6] = &off_10002C430;
  v2[7] = &off_10002C448;
  v1[8] = @"TMIsTimeZoneConfirmed";
  v1[9] = @"TMConfirmTimeZone";
  v2[8] = &off_10002C460;
  v2[9] = &off_10002C478;
  v1[10] = @"TMGetReferenceTime";
  v1[11] = @"TMSetReferenceUnreliable";
  v2[10] = &off_10002C490;
  v2[11] = &off_10002C4A8;
  v1[12] = @"TMIsLocationTimeZoneActive";
  v1[13] = @"TMIsBBTimeActive";
  v2[12] = &off_10002C4C0;
  v2[13] = &off_10002C4D8;
  v1[14] = @"TMProvideBBTime";
  v1[15] = @"TMReceiveNtpPacket";
  v2[14] = &off_10002C4F0;
  v2[15] = &off_10002C508;
  v1[16] = @"TMSetupTime";
  v1[17] = @"TMSetupTimeZone";
  v2[16] = &off_10002C520;
  v2[17] = &off_10002C538;
  v1[18] = @"TMProvideCellularTimeZone";
  v1[19] = @"TMResetTimeZone";
  v2[18] = &off_10002C550;
  v2[19] = &off_10002C568;
  v1[20] = @"TMSystemWillWake";
  v1[21] = @"TMFetchNTP";
  v2[20] = &off_10002C580;
  v2[21] = &off_10002C598;
  v1[22] = @"TMResetToFirstLaunch";
  v1[23] = @"TMUnknown";
  v2[22] = &off_10002C5B0;
  v2[23] = &off_10002C5C8;
  qword_100033100 = [NSDictionary dictionaryWithObjects:v2 forKeys:v1 count:24];
}

uint64_t sub_100005F84()
{
  if (qword_100033110 != -1)
  {
    sub_100012964();
  }

  return byte_100033118;
}

void sub_100006030(id a1)
{
  v2 = 8;
  v3 = 0;
  *v1 = 8;
  if (sysctlnametomib("kern.monotonicclock_rate_usecs", v4, v1))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10001298C();
    }
  }

  else if (sysctl(v4, v1[0], &v3, &v2, 0, 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000129D0();
    }
  }

  else
  {
    *&qword_100033120 = v3 / 1000000.0;
  }
}

double sub_100006110()
{
  if (qword_100033110 != -1)
  {
    sub_100012964();
  }

  if (byte_100033118)
  {
    v4 = 0;
    if ((byte_100033130 & 1) == 0)
    {
      if (sysctlnametomib("kern.monotonicclock_usecs", dword_100033134, &dword_100032DC8))
      {
        v0 = -1.0;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100012A64();
        }

        return v0;
      }

      if (qword_100033128 != -1)
      {
        sub_100012978();
      }

      *&qword_100033158 = *&qword_100033120 * 0.5;
      qword_100033160 = 0x412E848000000000;
      byte_100033130 = 1;
    }

    v3 = 8;
    if (!sysctl(dword_100033134, dword_100032DC8, &v4, &v3, 0, 0))
    {
      return v4 / *&qword_100033160 + *&qword_100033158;
    }

    v0 = -1.0;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100012AA8();
    }

    return v0;
  }

  v1 = mach_continuous_time();

  return TMConvertTicksToSeconds(v1);
}

void sub_100006294(id a1)
{
  qword_100033170 = 2;
  if (sysctlnametomib("kern.monotonicclock_usecs", &unk_100033168, &qword_100033170))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100012BD0();
    }

    qword_100033170 = 0;
  }

  if (qword_100033128 != -1)
  {
    sub_100012C14();
  }

  *&qword_100033180 = *&qword_100033120 * 0.5;
}

unint64_t sub_100006324(unint64_t a1)
{
  v2 = dword_1000331A0;
  if (!dword_1000331A0)
  {
    sub_100006674(&dword_1000331A0, &dword_1000331A4);
    v2 = dword_1000331A0;
    if (!dword_1000331A0)
    {
      sub_100012E2C();
    }

    if (!dword_1000331A4)
    {
      sub_100012E00();
    }
  }

  if (is_mul_ok(v2, a1))
  {
    v3 = v2 * a1 / dword_1000331A4;
    if ((v3 & 0x8000000000000000) != 0)
    {
      panic("TMConvertTicksToNanoTime not possible due to signed overflow");
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Overflow during TMConvertTicksToNanoTime conversion, falling back to reciprocal ratio", v5, 2u);
      v2 = dword_1000331A0;
    }

    return a1 / (dword_1000331A4 / v2);
  }

  return v3;
}

void sub_100006420(id a1)
{
  qword_100033190 = 2;
  if (sysctlnametomib("kern.monotoniclock_offset_usecs", &unk_100033188, &qword_100033190))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100012E58();
    }

    qword_100033190 = 0;
  }
}

BOOL sub_100006480(double a1)
{
  if (fabs(a1) <= 1.0)
  {
    return 0;
  }

  v1 = -1.0 - kCFAbsoluteTimeIntervalSince1970 > a1 || 1.0 - kCFAbsoluteTimeIntervalSince1970 < a1;
  if (!v1 || a1 >= -6.31456128e10 && a1 <= -6.31456128e10)
  {
    return 0;
  }

  if (1.0 - kCFAbsoluteTimeIntervalSince1904 < a1)
  {
    return 1;
  }

  return -1.0 - kCFAbsoluteTimeIntervalSince1904 > a1;
}

CFTimeInterval sub_10000652C(uint64_t *a1, long double a2)
{
  sub_10000659C(a1, a2);
  v3 = *a1;
  if (*a1 >= (kCFAbsoluteTimeIntervalSince1970 ^ 0x7FFFFFFFFFFFFFFFLL))
  {
    v4 = v3;
  }

  else
  {
    v4 = v3;
  }

  result = kCFAbsoluteTimeIntervalSince1970 + v4;
  *a1 = (kCFAbsoluteTimeIntervalSince1970 + v4);
  return result;
}

long double sub_10000659C(uint64_t a1, long double a2)
{
  __y = 0.0;
  result = modf(a2, &__y);
  if (fabs(__y) < 9.22337204e18 && (*&__y & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    *a1 = __y;
    result = result * 1000000.0;
    *(a1 + 8) = result;
  }

  return result;
}

uint64_t sub_10000664C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return a1;
  }

  do
  {
    v2 = a2;
    a2 = a1 % a2;
    LODWORD(a1) = v2;
  }

  while (a2);
  return v2;
}

uint64_t sub_100006674(uint32_t *a1, uint32_t *a2)
{
  info = 0;
  result = mach_timebase_info(&info);
  if (result)
  {
    sub_100012E9C();
  }

  denom = info.denom;
  if (info.denom)
  {
    v6 = info.denom;
    numer = info.numer;
    do
    {
      v8 = v6;
      v6 = numer % v6;
      numer = v8;
    }

    while (v6);
  }

  else
  {
    v8 = info.numer;
  }

  *a1 = info.numer / v8;
  *a2 = denom / v8;
  return result;
}

void sub_1000066F0(__CFNotificationCenter *a1, const __CFString *a2, const void *a3, CFNotificationSuspensionBehavior a4, void *aBlock)
{
  v9 = _Block_copy(aBlock);
  v10 = _Block_copy(v9);

  CFNotificationCenterAddObserver(a1, v10, sub_100006764, a2, a3, a4);
}

void sub_100006764(__CFNotificationCenter *a1, uint64_t (**a2)(void, void), const __CFString *a3, const void *a4)
{
  if (((a2)[2](a2, a1) & 1) == 0)
  {
    CFNotificationCenterRemoveObserver(a1, a2, a3, a4);

    _Block_release(a2);
  }
}

NSDictionary *sub_100006894(uint64_t a1)
{
  v2 = @"rtcResetCount";
  v3 = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 164)];
  return [NSDictionary dictionaryWithObjects:&v3 forKeys:&v2 count:1];
}

NSDictionary *sub_10000696C(uint64_t a1)
{
  v3[0] = @"timeSinceNTPFetch";
  v4[0] = [NSNumber numberWithDouble:*(a1 + 32)];
  v3[1] = @"defaultNTPServer";
  v4[1] = [NSNumber numberWithBool:*(a1 + 48)];
  v3[2] = @"estimatePresent";
  v4[2] = [NSNumber numberWithBool:*(a1 + 49)];
  v3[3] = @"estimateUncertainty";
  v4[3] = [NSNumber numberWithDouble:*(a1 + 40)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
}

void sub_100006A4C(uint64_t a1, xpc_activity_t activity)
{
  if (xpc_activity_get_state(activity) == 2)
  {
    v3 = [*(a1 + 32) workloop];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100013584;
    block[3] = &unk_100028BC8;
    block[4] = *(a1 + 32);
    dispatch_async(v3, block);
  }

  else if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_ERROR))
  {
    sub_100015D98();
  }
}

id sub_10000702C(uint64_t a1)
{
  v2 = qword_100033218;
  if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Handling proactive time check", v4, 2u);
  }

  return [*(a1 + 32) checkActiveTimeSourceRequired];
}

BOOL sub_1000071F4(long double a1, double a2, double a3)
{
  objc_opt_self();
  memset(&v14, 0, sizeof(v14));
  if (a1 >= 9223372040.0)
  {
    sub_100015FAC();
  }

  if (a1 <= -9223372040.0)
  {
    sub_100016020();
  }

  __y = 0.0;
  v6 = modf(a1, &__y);
  v7 = llround(v6 * 1000000000.0) + 1000000000 * __y;
  v14.offset = v7;
  v14.status = 129;
  if (a2 == 1.0)
  {
    v8 = 0;
    v9 = 8213;
  }

  else
  {
    v8 = vcvtd_n_s64_f64((a2 + -1.0) * 1000000.0, 0x10uLL);
    v14.freq = v8;
    v9 = 8215;
  }

  v14.modes = v9;
  v14.maxerror = (a3 * 1000000.0);
  v10 = qword_100033220;
  if (os_log_type_enabled(qword_100033220, OS_LOG_TYPE_DEFAULT))
  {
    __y = COERCE_DOUBLE(__PAIR64__(v9, 67109888));
    v16 = 2048;
    offset = v7;
    v18 = 2048;
    freq = v8;
    v20 = 2048;
    maxerror = (a3 * 1000000.0);
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "cmd,ntp_adjtime:in,modes,%x,offset_us,%ld,freq_scaled,%ld,maxerror_us,%ld", &__y, 0x26u);
  }

  v11 = ntp_adjtime(&v14);
  if (v11)
  {
    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_ERROR))
    {
      sub_100016094();
    }
  }

  else
  {
    v12 = qword_100033220;
    if (os_log_type_enabled(qword_100033220, OS_LOG_TYPE_DEFAULT))
    {
      __y = COERCE_DOUBLE(__PAIR64__(v14.modes, 67109888));
      v16 = 2048;
      offset = v14.offset;
      v18 = 2048;
      freq = v14.freq;
      v20 = 2048;
      maxerror = v14.maxerror;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "cmd,ntp_adjtime:out,modes,%x,offset_us,%ld,freq_scaled,%ld,maxerror_us,%ld", &__y, 0x26u);
    }
  }

  return v11 == 0;
}

void sub_100007478(id *a1, int a2)
{
  if (a1)
  {
    v3 = a2 - 1;
    if (a2 >= 1)
    {
      v5 = qword_100033218;
      if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_INFO))
      {
        *buf = 67109376;
        v17 = a2;
        v18 = 1024;
        v19 = v3;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "testAndApplySystemTime,previousCount,%d,retrySystemTimeCount,%d", buf, 0xEu);
      }

      v6 = [a1 timeProvider];
      [objc_msgSend(a1 "clock")];
      v7 = [v6 timeAtRtc:?];
      if (v7)
      {
        v8 = v7;
        if ([a1[3] isRunning] && objc_msgSend(a1[7], "shouldClamp") && v6 == a1[2] && (objc_msgSend(a1[3], "intersects:", v8) & 1) == 0)
        {
          if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_ERROR))
          {
            sub_100016114();
          }

          [a1[2] reset];
        }

        else
        {
          v9 = os_transaction_create();
          v10 = [objc_msgSend(a1 "clock")];
          Current = CFAbsoluteTimeGetCurrent();
          v12 = [objc_msgSend(a1 "clock")];
          v14[0] = _NSConcreteStackBlock;
          v14[1] = 3221225472;
          v14[2] = sub_1000076EC;
          v14[3] = &unk_100028C38;
          v14[4] = v8;
          v14[5] = a1;
          *&v14[7] = Current;
          v14[8] = sub_100001E00(v10, v12);
          v14[9] = v10;
          v14[10] = v12;
          v15 = a2;
          v14[6] = v9;
          [objc_msgSend(a1 "clock")];
        }
      }

      else
      {
        v13 = qword_100033218;
        if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "No time to use for system time", buf, 2u);
        }
      }
    }
  }
}

void sub_1000076EC(uint64_t a1, long double a2, double a3)
{
  v6 = (a1 + 32);
  [*(a1 + 32) propagatedTimeAtRTC:?];
  v8 = v7;
  if (v7 >= 9223372040.0)
  {
    sub_100015FAC();
  }

  if (v8 <= -9223372040.0)
  {
    sub_100016020();
  }

  *__y = 0;
  v9 = modf(v8, __y);
  v10 = *__y;
  if (a2 >= 9223372040.0)
  {
    sub_100015FAC();
  }

  if (a2 <= -9223372040.0)
  {
    sub_100016020();
  }

  *__y = 0;
  v11 = modf(a2, __y);
  v12 = *__y;
  *__y = 0;
  v13 = modf(978307200.0, __y);
  if (a2 > 0.0)
  {
    v54 = a2;
    v14 = *(a1 + 40);
    if (!v14 || (v15 = v13, v16 = a3, v17 = *__y, ![v14 isAutomaticTimeEnabled]))
    {
      sub_100016304(v6, v8);
      goto LABEL_28;
    }

    v18 = v10 - v12 + v17;
    v19 = llround(v9 * 1000000000.0) - llround(v11 * 1000000000.0) + llround(v15 * 1000000000.0);
    v20 = *(a1 + 64);
    v21 = v8 - *(a1 + 56);
    if (v21 >= 0.0)
    {
      v22 = v8 - *(a1 + 56);
    }

    else
    {
      v22 = -v21;
    }

    v23 = *(*(a1 + 40) + 64);
    v24 = v20 > 0.00416666667;
    if (v20 > fabs(v21 * 0.5))
    {
      goto LABEL_42;
    }

    if (v22 <= v23)
    {
      [*v6 sf];
      v27 = v26;
      [*v6 utcUnc_s];
      if (sub_1000071F4(v21, v27, v28))
      {
        v53 = v24;
        v29 = 1;
        [*(a1 + 40) setSystemTimeSet:1];
        v60 = 0u;
        v58 = 0u;
        v59 = 0u;
        v57 = 0u;
        v30 = *(*(a1 + 40) + 48);
        v31 = [v30 countByEnumeratingWithState:&v57 objects:v81 count:16];
        if (v31)
        {
          v32 = v31;
          v51 = v19;
          v52 = v18;
          v33 = *v58;
          do
          {
            for (i = 0; i != v32; i = i + 1)
            {
              if (*v58 != v33)
              {
                objc_enumerationMutation(v30);
              }

              v35 = *(*(&v57 + 1) + 8 * i);
              if (objc_opt_respondsToSelector())
              {
                [*(a1 + 32) utcUnc_s];
                [v35 didSetTime:objc_msgSend(*(a1 + 32) withUncertainty:"source") fromSource:objc_msgSend(*(*(a1 + 40) + 16) lastInput:{"lastInputSource"), v8, v36}];
              }
            }

            v32 = [v30 countByEnumeratingWithState:&v57 objects:v81 count:16];
          }

          while (v32);
          v29 = 1;
          v19 = v51;
          v18 = v52;
        }

LABEL_46:
        [*v6 propagatedUncertaintyAtRTC:v54];
        v40 = v39;
        v41 = qword_100033220;
        if (os_log_type_enabled(qword_100033220, OS_LOG_TYPE_DEFAULT))
        {
          v42 = @"adjtime";
          v43 = *(a1 + 72);
          v44 = *(a1 + 80);
          if (v22 > v23)
          {
            v42 = @"settimeofday";
          }

          *__y = 138414594;
          *&__y[4] = @"apply";
          v63 = 2112;
          v64 = v42;
          v65 = 2048;
          v66 = v54;
          v67 = 2048;
          v68 = v16;
          v69 = 2048;
          v70 = v8;
          v71 = 2048;
          v72 = v40;
          v73 = 2048;
          v74 = v43;
          v75 = 2048;
          v76 = v21;
          v77 = 1024;
          v78 = v29;
          v79 = 2048;
          v80 = v44;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "cmd,%@,src,%@,rtc_s,%.9f,rtc_unc_s,%.9f,t_s,%.9f,unc_s,%.9f,mach,%llu,adjust,%.9f,success,%d,after_m,%llu", __y, 0x62u);
        }

        v55 = *(a1 + 72);
        v56 = *(a1 + 80);
        AnalyticsSendEventLazy();
        v45 = sub_100003B58(v19 + 1000000000 * v18);
        v46 = qword_100033220;
        if (os_log_type_enabled(qword_100033220, OS_LOG_TYPE_DEFAULT))
        {
          v47 = sub_100003B58(0);
          *__y = 134218752;
          *&__y[4] = v19 + 1000000000 * v18;
          v63 = 2048;
          v64 = v45;
          v65 = 2048;
          v66 = *&v47;
          v67 = 1024;
          LODWORD(v68) = v45 > 0;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "cmd,rtc_offset,set,%lld,was,%lld,now,%lld,success,%d", __y, 0x26u);
          if ((v53 & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        else if (!v53)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      goto LABEL_42;
    }

    AssertionID = 0;
    if (IOPMAssertionCreateWithDescription(@"NoIdleSleepAssertion", @"com.apple.timed.settimeofday", 0, 0, 0, 62.0, @"TimeoutActionTurnOff", &AssertionID))
    {
      if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_ERROR))
      {
        sub_100016238();
      }

      if (![*(*(a1 + 40) + 56) shouldPowerAssertionsBeOptional])
      {
        v37 = qword_100033218;
        if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT))
        {
          *__y = 0;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Failed to take power assertion, not calling settimeofday", __y, 2u);
        }

        goto LABEL_42;
      }
    }

    if (![objc_msgSend(*(a1 + 40) "clock")])
    {
      v25 = qword_100033218;
      if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT))
      {
        *__y = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Slept while computing time, not calling settimeofday", __y, 2u);
      }

      IOPMAssertionRelease(AssertionID);
      goto LABEL_42;
    }

    v48 = v8 + sub_100001E00(*(a1 + 72), [objc_msgSend(*(a1 + 40) "clock")]);
    v49 = sub_1000135F0(*(a1 + 40), [objc_msgSend(*(a1 + 32) "source")], v48);
    if (([objc_msgSend(*(a1 + 40) "clock")] & 1) == 0 && (v50 = qword_100033218, os_log_type_enabled(qword_100033218, OS_LOG_TYPE_ERROR)))
    {
      if (sub_1000162AC(v50, &AssertionID, v49))
      {
        goto LABEL_59;
      }
    }

    else
    {
      IOPMAssertionRelease(AssertionID);
      if (v49)
      {
LABEL_59:
        v29 = 1;
LABEL_45:
        v53 = 1;
        goto LABEL_46;
      }
    }

LABEL_42:
    v38 = qword_100033218;
    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT))
    {
      *__y = 0;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Failed to update time", __y, 2u);
    }

    v29 = 0;
    goto LABEL_45;
  }

  if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_ERROR))
  {
    sub_100016184();
  }

LABEL_27:
  sub_100007478(*(a1 + 40), (*(a1 + 88) - 1));
LABEL_28:
}

NSDictionary *sub_100007EC0(uint64_t a1)
{
  v3[0] = @"settimeofday";
  v4[0] = [NSNumber numberWithBool:*(a1 + 80)];
  v3[1] = @"rtc_s";
  v4[1] = [NSNumber numberWithDouble:*(a1 + 32)];
  v3[2] = @"t_s";
  v4[2] = [NSNumber numberWithDouble:*(a1 + 40)];
  v3[3] = @"unc_s";
  v4[3] = [NSNumber numberWithDouble:*(a1 + 48)];
  v3[4] = @"mach";
  v4[4] = [NSNumber numberWithUnsignedLongLong:*(a1 + 56)];
  v3[5] = @"adjust";
  v4[5] = [NSNumber numberWithDouble:*(a1 + 64)];
  v3[6] = @"didSet";
  v4[6] = [NSNumber numberWithBool:*(a1 + 81)];
  v3[7] = @"after_mach";
  v4[7] = [NSNumber numberWithUnsignedLongLong:*(a1 + 72)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:8];
}

BOOL sub_100008160(uint64_t a1, __CFString *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    CFTimeZoneResetSystem();
    v4 = CFTimeZoneCopySystem();
    v5 = CFTimeZoneCreateWithName(kCFAllocatorDefault, a2, 0);
    if (v5)
    {
      v6 = v5;
      v2 = CFEqual(v5, v4) != 0;
      CFRelease(v6);
    }

    else
    {
      v7 = qword_100033218;
      v2 = 0;
      if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315138;
        v10 = [(__CFString *)a2 UTF8String];
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "No entry in system for time zone %s\n", &v9, 0xCu);
        v2 = 0;
      }
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }

  return v2;
}

void sub_1000082D8(id a1)
{
  v1[0] = @"TMSetSourceTime";
  v1[1] = @"TMSetSourceAvailable";
  v2[0] = &__kCFBooleanTrue;
  v2[1] = &__kCFBooleanTrue;
  v1[2] = @"TMSetSourceUnavailable";
  v1[3] = @"TMSetSourceTimeZone";
  v2[2] = &__kCFBooleanTrue;
  v2[3] = &__kCFBooleanTrue;
  v1[4] = @"TMProvideCellularTimeZone";
  v1[5] = @"TMProvideBBTime";
  v2[4] = &__kCFBooleanTrue;
  v2[5] = &__kCFBooleanTrue;
  qword_1000331C8 = [NSDictionary dictionaryWithObjects:v2 forKeys:v1 count:6];
}

void sub_100008394(uint64_t a1, double a2, double a3)
{
  if (*(a1 + 56))
  {
    if (a2 > 0.0)
    {
      sub_100016480(a1, a2, a3);
    }

    else
    {
      if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_ERROR))
      {
        sub_100016408(a1);
      }

      v4 = qword_100033220;
      if (os_log_type_enabled(qword_100033220, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [*(a1 + 40) objectForKeyedSubscript:@"TMSource"];
        [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"TMRtcTime", "doubleValue"}];
        v7 = v6;
        [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"TMRTCConversionTimeError", "doubleValue"}];
        v9 = v8;
        [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"TMCurrentTime", "doubleValue"}];
        v11 = v10;
        [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"TMTimeError", "doubleValue"}];
        v13 = v12;
        v14 = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"TMMachTime", "unsignedLongLongValue"}];
        v15 = [*(a1 + 40) objectForKeyedSubscript:@"TMCommand"];
        *buf = 138414082;
        v18 = @"DROP";
        v19 = 2112;
        v20 = v5;
        v21 = 2048;
        v22 = v7;
        v23 = 2048;
        v24 = v9;
        v25 = 2048;
        v26 = v11;
        v27 = 2048;
        v28 = v13;
        v29 = 2048;
        v30 = v14;
        v31 = 2112;
        v32 = v15;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "cmd,%@,src,%@,rtc_s,%.9f,rtc_unc_s,%.9f,t_s,%.9f,unc_s,%.9f,mach,%llu,cmd,%@", buf, 0x52u);
      }

      v16 = *(a1 + 40);
      AnalyticsSendEventLazy();
    }
  }

  else
  {
    sub_1000163F8(a1);
  }
}

NSDictionary *sub_1000085FC(uint64_t a1)
{
  v3[0] = @"cmd";
  v4[0] = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", sub_100005CD8([*(a1 + 32) objectForKeyedSubscript:@"TMCommand"]));
  v3[1] = @"src";
  v4[1] = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", sub_100002DA8([*(a1 + 32) objectForKeyedSubscript:@"TMSource"]));
  v3[2] = @"rtc_s";
  [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"TMRtcTime", "doubleValue"}];
  v4[2] = [NSNumber numberWithDouble:?];
  v3[3] = @"t_s";
  [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"TMCurrentTime", "doubleValue"}];
  v4[3] = [NSNumber numberWithDouble:?];
  v3[4] = @"unc_s";
  [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"TMTimeError", "doubleValue"}];
  v4[4] = [NSNumber numberWithDouble:?];
  v3[5] = @"mach";
  v4[5] = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"TMMachTime", "unsignedLongLongValue"}]);
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:6];
}

NSDictionary *sub_1000087C8(uint64_t a1)
{
  v3[0] = @"BOOL";
  v4[0] = [NSNumber numberWithBool:*(a1 + 40)];
  v3[1] = @"src";
  v4[1] = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", sub_100002DA8([*(a1 + 32) objectForKeyedSubscript:@"TMSource"]));
  v3[2] = @"rtc_s";
  [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"TMRtcTime", "doubleValue"}];
  v4[2] = [NSNumber numberWithDouble:?];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

NSDictionary *sub_1000088D0(uint64_t a1)
{
  v3[0] = @"BOOL";
  v4[0] = [NSNumber numberWithBool:*(a1 + 40)];
  v3[1] = @"src";
  v4[1] = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", sub_100002DA8([*(a1 + 32) objectForKeyedSubscript:@"TMSource"]));
  v3[2] = @"rtc_s";
  [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"TMRtcTime", "doubleValue"}];
  v4[2] = [NSNumber numberWithDouble:?];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

void sub_1000089D8(void *a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    v6 = qword_100033218;
    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received setup timezone request.\n", buf, 2u);
    }

    v7 = qword_100033220;
    if (os_log_type_enabled(qword_100033220, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [a2 objectForKeyedSubscript:@"TMSource"];
      [objc_msgSend(a2 objectForKeyedSubscript:{@"TMRtcTime", "doubleValue"}];
      *buf = 138412802;
      *&buf[4] = @"setup_tz";
      *&buf[12] = 2112;
      *&buf[14] = v8;
      *&buf[22] = 2048;
      v28 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "cmd,%@,src,%@,rtc_s,%.9f", buf, 0x20u);
    }

    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_10000A720;
    v25 = &unk_100028B80;
    v26 = a2;
    AnalyticsSendEventLazy();
    if ([a1 isSystemTimeZoneSet])
    {
      sub_1000165C8();
    }

    else
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      LOBYTE(v28) = 0;
      v20[0] = 0;
      v20[1] = v20;
      v20[2] = 0x2020000000;
      v21 = 0;
      v18[0] = 0;
      v18[1] = v18;
      v18[2] = 0x2020000000;
      v19 = 0;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10000A80C;
      v17[3] = &unk_100028E60;
      v17[6] = buf;
      v17[7] = v20;
      v17[4] = a3;
      v17[5] = v18;
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 3221225472;
      aBlock[2] = sub_10000A990;
      aBlock[3] = &unk_100028E88;
      aBlock[4] = v17;
      aBlock[5] = buf;
      sub_1000066F0(DarwinNotifyCenter, @"AutomaticTimeZoneUpdateFailed", 0, 0, aBlock);
      LocalCenter = CFNotificationCenterGetLocalCenter();
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10000A9C8;
      v15[3] = &unk_100028EB0;
      v15[4] = v17;
      v15[5] = v20;
      v15[6] = v18;
      sub_1000066F0(LocalCenter, @"TimeZoneChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately, v15);
      v12 = dispatch_time(0, 20000000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000AA18;
      block[3] = &unk_100028ED8;
      block[6] = v18;
      block[7] = v20;
      block[8] = buf;
      block[4] = a1;
      block[5] = v17;
      dispatch_after(v12, [a1 workloop], block);
      v13 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(v13, @"AutomaticTimeZoneUpdateNeeded", 0, 0, 1u);
      sub_10001665C(v18, v20, buf);
    }
  }
}

void sub_100008DA4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 216), 8);
  _Block_object_dispose((v1 - 184), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100008DE0(uint64_t result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = qword_100033218;
    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Resetting timed.\n", buf, 2u);
    }

    v5 = qword_100033220;
    if (os_log_type_enabled(qword_100033220, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [a2 objectForKeyedSubscript:@"TMSource"];
      [objc_msgSend(a2 objectForKeyedSubscript:{@"TMRtcTime", "doubleValue"}];
      *buf = 138412802;
      v13 = @"reset";
      v14 = 2112;
      v15 = v6;
      v16 = 2048;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "cmd,%@,src,%@,rtc_s,%.9f", buf, 0x20u);
    }

    AnalyticsSendEventLazy();
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"TimedResetNotification", 0, 0, 0);
    dispatch_source_cancel(*(v3 + 152));
    [*(v3 + 32) prepareForExit];
    v9 = [objc_msgSend(a2 valueForKey:{@"TMResetPreserveCache", "BOOLValue"}];
    v10 = qword_100033218;
    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v13) = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "shouldPreserveCache: %d", buf, 8u);
    }

    if ((v9 & 1) == 0)
    {
      [*(v3 + 128) emptyPath:@"/var/db/timed/com.apple.timed.plist"];
      [v3 setSystemTimeZoneSet:0];
    }

    v11 = qword_100033218;
    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Reset complete.", buf, 2u);
    }

    exit(0);
  }

  return result;
}

id sub_100009080(uint64_t a1, double a2, double a3)
{
  v5 = *(a1 + 32);
  result = (a1 + 32);
  v4 = v5;
  if (*(v5 + 40) == 1 && *(v4 + 120) > a2 + a3)
  {
    return sub_1000166A0(a2);
  }

  return result;
}

void sub_1000091BC(id a1, NSDictionary *a2)
{
  v3 = qword_100033218;
  if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = [(NSDictionary *)a2 objectForKeyedSubscript:@"TMSetupSuccessful"];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Did setup time after automatic time enabled: %@", &v4, 0xCu);
  }
}

void sub_10000941C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = qword_100033218;
    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Got a response when none expected.\nMessage: %@.\nResponse: %@", &v6, 0x16u);
    }
  }
}

NSDictionary *sub_1000094E0(uint64_t a1)
{
  v3[0] = @"setTimeZone";
  v3[1] = @"computedTimeZone";
  v4 = *(a1 + 32);
  v5 = [NSNumber numberWithLong:*(a1 + 48) - *(a1 + 56), @"setTimeZone", @"computedTimeZone", @"computedManualTZOffsetSec"];
  v3[3] = @"timeZoneDisagreement";
  v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 40) isEqualToString:*(a1 + 32)] ^ 1);
  return [NSDictionary dictionaryWithObjects:&v4 forKeys:v3 count:4];
}

NSDictionary *sub_1000095B4(uint64_t a1)
{
  v3[0] = @"manualUTC";
  v4[0] = [NSNumber numberWithDouble:*(a1 + 40)];
  v3[1] = @"computedUTC";
  v4[1] = [NSNumber numberWithDouble:*(a1 + 48)];
  v3[2] = @"computedUncertainty";
  [*(a1 + 32) utcUnc_s];
  v4[2] = [NSNumber numberWithDouble:?];
  v3[3] = @"difference";
  v4[3] = [NSNumber numberWithDouble:*(a1 + 40) - *(a1 + 48)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
}

void sub_100009728(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) objectForKey:{@"TMCurrentTime", "doubleValue"}];
  v3 = v2;
  v4 = qword_100033218;
  if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [NSDate dateWithTimeIntervalSinceReferenceDate:v3];
    [objc_msgSend(*(a1 + 32) objectForKey:{@"TMTimeError", "doubleValue"}];
    v7 = v6;
    v8 = [*(a1 + 32) objectForKey:@"TMSource"];
    *buf = 138412802;
    *&buf[4] = v5;
    v28 = 2048;
    v29 = v7;
    v30 = 2112;
    v31 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received time %@±%.2f from %@\n", buf, 0x20u);
  }

  v9 = qword_100033220;
  if (os_log_type_enabled(qword_100033220, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [*(a1 + 32) objectForKeyedSubscript:@"TMSource"];
    [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"TMRtcTime", "doubleValue"}];
    v12 = v11;
    [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"TMRTCConversionTimeError", "doubleValue"}];
    v14 = v13;
    [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"TMCurrentTime", "doubleValue"}];
    v16 = v15;
    [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"TMTimeError", "doubleValue"}];
    v18 = v17;
    v19 = [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"TMMachTime", "unsignedLongLongValue"}];
    *buf = 138413826;
    *&buf[4] = @"T";
    v28 = 2112;
    v29 = v10;
    v30 = 2048;
    v31 = v12;
    v32 = 2048;
    v33 = v14;
    v34 = 2048;
    v35 = v16;
    v36 = 2048;
    v37 = v18;
    v38 = 2048;
    v39 = v19;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "cmd,%@,src,%@,rtc_s,%.9f,rtc_unc_s,%.9f,t_s,%.9f,unc_s,%.9f,mach,%llu", buf, 0x48u);
  }

  v26 = *(a1 + 32);
  AnalyticsSendEventLazy();
  if (sub_100006480(v3))
  {
    v20 = [TMTime timeWithDictionary:*(a1 + 32)];
    if (![*(*(a1 + 40) + 24) isRunning] || !objc_msgSend(*(*(a1 + 40) + 56), "shouldClamp"))
    {
      v22 = 0;
      goto LABEL_14;
    }

    if ([*(*(a1 + 40) + 24) intersects:v20])
    {
      v21 = *(a1 + 40);
      if (*(v21 + 112) > 9uLL)
      {
        v22 = 2;
        goto LABEL_15;
      }

      *(v21 + 112) = 0;
      v22 = 2;
LABEL_14:
      v21 = *(a1 + 40);
LABEL_15:
      v23 = *(v21 + 136);
      [(TMTime *)v20 rtc_s];
      [v23 resetRejectCountsForReason:v22 rtc:?];
      *buf = 0;
      [*(*(a1 + 40) + 16) update:v20 withError:buf];
      if (*buf)
      {
        sub_10001303C(*(a1 + 40), *buf, v20);
      }

      v24 = *(a1 + 40);
      if (v24)
      {
        [+[NSNotificationCenter defaultCenter](NSNotificationCenter postNotificationName:"postNotificationName:object:userInfo:" object:@"TMSystemTimeChanged" userInfo:v24, &__NSDictionary0__struct];
        [v24 testAndApplySystemTime];
        v25 = *(a1 + 40);
      }

      else
      {
        v25 = 0;
      }

      [v25 checkActiveTimeSourceRequired];
      return;
    }

    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_ERROR))
    {
      sub_1000167B0();
    }

    if ([*(*(a1 + 40) + 56) shouldAlertWhenIslanded])
    {
      if (++*(*(a1 + 40) + 112) == 10)
      {
        if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_FAULT))
        {
          sub_100016820();
        }

        AnalyticsSendEventLazy();
      }
    }

    sub_100013220(*(a1 + 40), [NSError errorWithDomain:@"kTimedErrorDomain" code:6 userInfo:0], v20);
  }

  else if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_ERROR))
  {
    sub_100016774();
  }
}

NSDictionary *sub_100009BC8(uint64_t a1)
{
  v3[0] = @"src";
  v4[0] = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", sub_100002DA8([*(a1 + 32) objectForKeyedSubscript:@"TMSource"]));
  v3[1] = @"rtc_s";
  [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"TMRtcTime", "doubleValue"}];
  v4[1] = [NSNumber numberWithDouble:?];
  v3[2] = @"t_s";
  [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"TMCurrentTime", "doubleValue"}];
  v4[2] = [NSNumber numberWithDouble:?];
  v3[3] = @"unc_s";
  [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"TMTimeError", "doubleValue"}];
  v4[3] = [NSNumber numberWithDouble:?];
  v3[4] = @"mach";
  v4[4] = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"TMMachTime", "unsignedLongLongValue"}]);
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:5];
}

NSDictionary *sub_100009D6C(uint64_t a1)
{
  v3[0] = @"src";
  v4[0] = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", sub_100002DA8([*(a1 + 32) objectForKeyedSubscript:@"TMSource"]));
  v3[1] = @"rtc_s";
  [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"TMRtcTime", "doubleValue"}];
  v4[1] = [NSNumber numberWithDouble:?];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];
}

NSDictionary *sub_100009E58(uint64_t a1)
{
  v3[0] = @"src";
  v4[0] = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", sub_100002DA8([*(a1 + 32) objectForKeyedSubscript:@"TMSource"]));
  v3[1] = @"rtc_s";
  [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"TMRtcTime", "doubleValue"}];
  v4[1] = [NSNumber numberWithDouble:?];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];
}

NSDictionary *sub_100009F44(uint64_t a1)
{
  v3[0] = @"src";
  v4[0] = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", sub_100002DA8([*(a1 + 32) objectForKeyedSubscript:@"TMSource"]));
  v3[1] = @"rtc_s";
  [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"TMRtcTime", "doubleValue"}];
  v4[1] = [NSNumber numberWithDouble:?];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];
}

NSDictionary *sub_10000A28C(uint64_t a1)
{
  v2 = @"src";
  v3 = +[NSString stringWithString:](NSString, "stringWithString:", [*(a1 + 32) objectForKeyedSubscript:@"TMSource"]);
  return [NSDictionary dictionaryWithObjects:&v3 forKeys:&v2 count:1];
}

NSDictionary *sub_10000A330(uint64_t a1)
{
  v3[0] = @"t_ns";
  v4[0] = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"TMAbsoluteNanoTime", "longLongValue"}]);
  v3[1] = @"unc_ns";
  v4[1] = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"TMNanoTimeError", "longLongValue"}]);
  v3[2] = @"before_mach";
  v4[2] = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"TMMachTime", "unsignedLongLongValue"}]);
  v3[3] = @"after_mach";
  v4[3] = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"TMMachTimeAfter", "unsignedLongLongValue"}]);
  v3[4] = @"src";
  v4[4] = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", sub_100002DA8([*(a1 + 32) objectForKeyedSubscript:@"TMSource"]));
  v3[5] = @"rtc_s";
  [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"TMRtcTime", "doubleValue"}];
  v4[5] = [NSNumber numberWithDouble:?];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:6];
}

NSDictionary *sub_10000A5B0(uint64_t a1)
{
  v2 = @"required";
  v3 = [NSNumber numberWithBool:*(a1 + 32)];
  return [NSDictionary dictionaryWithObjects:&v3 forKeys:&v2 count:1];
}

NSDictionary *sub_10000A634(uint64_t a1)
{
  v3[0] = @"src";
  v4[0] = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", sub_100002DA8([*(a1 + 32) objectForKeyedSubscript:@"TMSource"]));
  v3[1] = @"rtc_s";
  [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"TMRtcTime", "doubleValue"}];
  v4[1] = [NSNumber numberWithDouble:?];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];
}

NSDictionary *sub_10000A720(uint64_t a1)
{
  v3[0] = @"src";
  v4[0] = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", sub_100002DA8([*(a1 + 32) objectForKeyedSubscript:@"TMSource"]));
  v3[1] = @"rtc_s";
  [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"TMRtcTime", "doubleValue"}];
  v4[1] = [NSNumber numberWithDouble:?];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];
}

void sub_10000A80C(void *a1)
{
  if (*(*(a1[5] + 8) + 24))
  {
    return;
  }

  v2 = *(*(a1[7] + 8) + 24);
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    if ((*(*(a1[7] + 8) + 24) & 1) == 0)
    {
LABEL_9:
      v3 = 0;
      goto LABEL_10;
    }

LABEL_7:
    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_ERROR))
    {
      sub_1000168A0();
    }

    goto LABEL_9;
  }

  if ((*(*(a1[7] + 8) + 24) & 1) == 0)
  {
    goto LABEL_7;
  }

  v3 = 1;
LABEL_10:
  (*(a1[4] + 16))(a1[4], [NSDictionary dictionaryWithObject:[NSNumber numberWithBool:v3] forKey:@"TMSetupSuccessful"]);
  v4 = qword_100033218;
  if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "failed";
    if (v3)
    {
      v5 = "succeeded";
    }

    v6 = 136315138;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "TMSetupTimeZone: %s.", &v6, 0xCu);
  }

  *(*(a1[5] + 8) + 24) = 1;
}

uint64_t sub_10000A990(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = 1;
  (*(*(a1 + 32) + 16))();
  return 0;
}

BOOL sub_10000A9C8(void *a1)
{
  *(*(a1[5] + 8) + 24) = 1;
  (*(a1[4] + 16))();
  return (*(*(a1[6] + 8) + 24) & 1) == 0;
}

uint64_t sub_10000AA18(uint64_t result)
{
  if ((*(*(*(result + 48) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    v2 = qword_100033218;
    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "TMSetupTimeZone: timed out.", v5, 2u);
    }

    v3 = [*(v1 + 32) isSystemTimeZoneSet];
    v4 = 64;
    if (v3)
    {
      v4 = 56;
    }

    *(*(*(v1 + v4) + 8) + 24) = 1;
    return (*(*(v1 + 40) + 16))();
  }

  return result;
}

NSDictionary *sub_10000AB5C(uint64_t a1)
{
  v3[0] = @"src";
  v4[0] = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", sub_100002DA8([*(a1 + 32) objectForKeyedSubscript:@"TMSource"]));
  v3[1] = @"rtc_s";
  [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"TMRtcTime", "doubleValue"}];
  v4[1] = [NSNumber numberWithDouble:?];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];
}

NSDictionary *sub_10000ADD0(uint64_t a1)
{
  v6[0] = @"reason";
  v2 = *(a1 + 32);
  if (qword_1000331B8 != -1)
  {
    sub_1000168DC();
  }

  v3 = [qword_1000331B0 objectForKeyedSubscript:v2];
  if (v3)
  {
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = 2;
  }

  v7[0] = [NSNumber numberWithUnsignedInt:v4];
  v6[1] = @"src";
  v7[1] = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", sub_100002DA8([*(a1 + 40) objectForKeyedSubscript:@"TMSource"]));
  v6[2] = @"rtc_s";
  [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"TMRtcTime", "doubleValue"}];
  v7[2] = [NSNumber numberWithDouble:?];
  return [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:3];
}

void sub_10000B05C(id a1)
{
  v1[0] = @"AutomaticTimeZoneEnabled";
  v1[1] = @"AirplaneMode";
  v2[0] = &off_10002C5F8;
  v2[1] = &off_10002C610;
  v1[2] = @"Unknown";
  v2[2] = &off_10002C628;
  qword_1000331B0 = [NSDictionary dictionaryWithObjects:v2 forKeys:v1 count:3];
}

void sub_10000B114(uint64_t a1@<X8>)
{
  *(v3 + 4) = a1;
  *(v3 + 14) = v2;
  *(v3 + 34) = v1;
}

void sub_10000B140(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void sub_10000B170(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, v5, OS_LOG_TYPE_FAULT, a4, a5, 2u);
}

id sub_10000B1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{

  return [v19 countByEnumeratingWithState:&a9 objects:&a19 count:16];
}

BOOL sub_10000B1CC()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

NSDictionary *sub_10000B1E4(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v9[0] = v3;
  v8[0] = @"culprit_src";
  v8[1] = @"culprit_tz";
  v4 = [v2 olsonName];
  v5 = a1[6];
  v6 = a1[7];
  v9[1] = v4;
  v9[2] = v5;
  v8[2] = @"highest_src";
  v8[3] = @"highest_tz";
  v9[3] = [objc_msgSend(*(v6 + 8) "objectForKeyedSubscript:"olsonName"")];
  return [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:4];
}

uint64_t sub_10000B29C(uint64_t a1, void *a2, void *a3)
{
  objc_opt_self();
  objc_opt_self();
  if (([a2 hasPrefix:@"NITZ"] & 1) != 0 || objc_msgSend(a2, "hasPrefix:", @"CDMA"))
  {
    objc_opt_self();
    if ([a3 hasPrefix:@"NITZ"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"CDMA"))
    {
      return 1;
    }
  }

  result = sub_10000BA94(TMTimeZoneManager, a2);
  if (result)
  {

    return sub_10000BA94(TMTimeZoneManager, a3);
  }

  return result;
}

id sub_10000B490(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_msgSend(a3 objectForKeyedSubscript:{a1), "objectForKeyedSubscript:", @"Order"}];
  v6 = [objc_msgSend(a3 objectForKeyedSubscript:{a2), "objectForKeyedSubscript:", @"Order"}];

  return [v5 compare:v6];
}

uint64_t sub_10000B6DC(uint64_t a1, void *a2)
{
  objc_opt_self();
  if ([a2 hasPrefix:@"NITZ"])
  {
    return 1;
  }

  return [a2 hasPrefix:@"CDMA"];
}

id sub_10000BA94(uint64_t a1, void *a2)
{
  objc_opt_self();
  result = [a2 hasPrefix:@"Location"];
  if (result)
  {
    return ([a2 isEqualToString:@"LocationAndNetwork"] ^ 1);
  }

  return result;
}

void sub_10000BAFC(uint64_t (*a1)(void), NSObject *a2)
{
  if (!a1)
  {
    sub_1000172BC();
  }

  if (off_1000331D0)
  {
    sub_10001724C();
  }

  off_1000331D0 = a1;
  dword_1000331E4 = IORegisterForSystemPower(0, &qword_1000331D8, sub_10000BBA4, &dword_1000331E0);
  if (dword_1000331E4)
  {
    v3 = qword_100033218;
    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEBUG))
    {
      sub_100017278(v3);
    }

    IONotificationPortSetDispatchQueue(qword_1000331D8, a2);
  }
}

uint64_t sub_10000BBA4(uint64_t a1, uint64_t a2, int a3, intptr_t a4)
{
  v6 = qword_100033218;
  if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEBUG))
  {
    sub_1000172E8(a3, v6);
  }

  v7 = qword_100033220;
  if (os_log_type_enabled(qword_100033220, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v12 = a3 & 0xFFF;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "cmd,PmCallback,msg,0x%03x", buf, 8u);
  }

  result = AnalyticsSendEventLazy();
  HIDWORD(v10) = a3 + 536870288;
  LODWORD(v10) = a3 + 536870288;
  v9 = v10 >> 4;
  if (v9 == 11)
  {
    return off_1000331D0(result);
  }

  if (v9 <= 1)
  {
    return IOAllowPowerChange(dword_1000331E4, a4);
  }

  return result;
}

NSDictionary *sub_10000BD20(uint64_t a1)
{
  v2[0] = @"msg";
  v3[0] = [NSNumber numberWithUnsignedInt:*(a1 + 32) & 0xFFF];
  v2[1] = @"mach";
  v3[1] = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
  return [NSDictionary dictionaryWithObjects:v3 forKeys:v2 count:2];
}

void sub_10000C190(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v15 = 0;
  v14 = 0.0;
  v3 = sub_10000200C(*(*(a1 + 32) + 32), *(a1 + 56));
  if (v3 > 0.0 && (v4 = *(a1 + 32), v3 < *(v4 + 56)) && [v4 isMachTimeValid:*(v4 + 32)])
  {
    v5 = *(a1 + 32);
    v15 = *(v5 + 32);
    v14 = *(v5 + 40);
    v6 = *(v5 + 24);
  }

  else
  {
    v6 = sub_100001918(&v15, &v14);
    v7 = qword_100033220;
    if (os_log_type_enabled(qword_100033220, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v17 = v6;
      v18 = 2048;
      v19 = v14;
      v20 = 2048;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "cmd,SYNC,rtc_s,%.9f,unc_s,%.9f,mach,%llu", buf, 0x20u);
    }

    block[7] = _NSConcreteStackBlock;
    block[8] = 3221225472;
    block[9] = sub_10000C3FC;
    block[10] = &unk_1000291C0;
    *&block[11] = v6;
    block[12] = v15;
    AnalyticsSendEventLazy();
    *(*(a1 + 32) + 24) = v6;
    *(*(a1 + 32) + 32) = v15;
    *(*(a1 + 32) + 40) = v14;
  }

  v8 = -1.0;
  if (v6 >= 0.0)
  {
    v10 = [*(a1 + 32) isMachTimeValid:*(a1 + 56)];
    v9 = -1.0;
    if (v10)
    {
      v11 = sub_10000200C(*(a1 + 56), v15);
      v8 = v6 - v11;
      v9 = v14 + fabs(v11) * 0.00002;
    }
  }

  else
  {
    v9 = -1.0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C4AC;
  block[3] = &unk_1000291E8;
  v12 = *(a1 + 40);
  block[4] = *(a1 + 48);
  *&block[5] = v8;
  *&block[6] = v9;
  dispatch_async(v12, block);
  objc_autoreleasePoolPop(v2);
}

NSDictionary *sub_10000C3FC(uint64_t a1)
{
  v3[0] = @"rtc_s";
  v4[0] = [NSNumber numberWithDouble:*(a1 + 32)];
  v3[1] = @"mach";
  v4[1] = [NSNumber numberWithUnsignedLongLong:*(a1 + 40)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];
}

void sub_10000C4AC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))(*(a1 + 40), *(a1 + 48));

  objc_autoreleasePoolPop(v2);
}

void sub_10000C4FC(id a1)
{
  qword_100033200 = 2;
  if (sysctlnametomib("machdep.wake_abstime", &unk_1000331F8, &qword_100033200))
  {
    v1 = qword_100033218;
    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Could not get mib for machdep.wake_abstime, falling back to kern.wake_abs_time.", v3, 2u);
    }

    if (sysctlnametomib("kern.wake_abs_time", &unk_1000331F8, &qword_100033200))
    {
      v2 = qword_100033218;
      if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_ERROR))
      {
        sub_10001753C(v2);
      }

      qword_100033200 = 0;
    }
  }
}

NSDictionary *sub_10000C5D4(uint64_t a1)
{
  v2 = @"mach";
  v3 = [NSNumber numberWithUnsignedLongLong:*(a1 + 32)];
  return [NSDictionary dictionaryWithObjects:&v3 forKeys:&v2 count:1];
}

uint64_t sub_10000C690()
{
  qword_100033218 = os_log_create("com.apple.timed", "text");
  v0 = os_log_create("com.apple.timed", "data");
  qword_100033220 = v0;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "334.0.16";
    v18 = 2080;
    v19 = &unk_100020BF6;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "cmd,build,version,%s,git,%s", buf, 0x16u);
    v0 = qword_100033220;
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = getpid();
    *buf = 67109120;
    LODWORD(v17) = v1;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "cmd,process,pid,%d", buf, 8u);
  }

  v2 = [+[NSUserDefaults standardUserDefaults](NSUserDefaults persistentDomainForName:"persistentDomainForName:", @"com.apple.timed"];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(NSDictionary *)v2 countByEnumeratingWithState:&v12 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = qword_100033220;
        if (os_log_type_enabled(qword_100033220, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(*(&v12 + 1) + 8 * i);
          v9 = [(NSDictionary *)v2 objectForKeyedSubscript:v8];
          *buf = 138412802;
          v17 = @"com.apple.timed";
          v18 = 2112;
          v19 = v8;
          v20 = 2112;
          v21 = v9;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "cmd,default,d,%@,k,%@,v,%@", buf, 0x20u);
        }
      }

      v4 = [(NSDictionary *)v2 countByEnumeratingWithState:&v12 objects:v22 count:16];
    }

    while (v4);
  }

  AnalyticsSendEventLazy();
  v10 = qword_100033220;
  if (os_log_type_enabled(qword_100033220, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "cmd,start", buf, 2u);
  }

  return AnalyticsSendEventLazy();
}

NSDictionary *__cdecl sub_10000C9A8(id a1)
{
  v2[0] = @"pid";
  v2[1] = @"mach";
  v3[0] = [NSNumber numberWithInt:getpid()];
  v3[1] = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
  return [NSDictionary dictionaryWithObjects:v3 forKeys:v2 count:2];
}

void sub_10000D0BC(void *a1, int a2)
{
  objc_begin_catch(a1);
  if (a2 == 2)
  {
    sub_10001765C();
  }

  JUMPOUT(0x10000D048);
}

void sub_10000D0E8(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  dispatch_assert_queue_V2(*(a1 + 24));
  v2 = *(a1 + 88);
  objc_sync_enter(v2);
  if ([a1 reachabilityTransaction])
  {
    sub_100018414(v2);
    return;
  }

  *(a1 + 104) = os_transaction_create();
  objc_sync_exit(v2);
  v3 = [*(a1 + 72) NTPServerAddress];
  if (*(a1 + 8))
  {
    if ([*(a1 + 112) isEqualToString:v3])
    {
      goto LABEL_14;
    }

    v4 = *(a1 + 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = qword_100033218;
  if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 112);
    LODWORD(buf.version) = 134218242;
    *(&buf.version + 4) = v4;
    WORD2(buf.info) = 2112;
    *(&buf.info + 6) = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Creating new reachability target. target:%p _address:%@", &buf, 0x16u);
    v4 = *(a1 + 8);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 8) = 0;
  *(a1 + 8) = SCNetworkReachabilityCreateWithName(0, [v3 UTF8String]);
  [a1 setAddress:v3];
LABEL_14:
  v7 = *(a1 + 8);
  if (v7)
  {
    flags = 0;
    if (SCNetworkReachabilityGetFlags(v7, &flags))
    {
      v8 = flags;
      v9 = qword_100033218;
      if ((flags & 6) == 2)
      {
        if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf.version) = 67109120;
          HIDWORD(buf.version) = v8;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Current reachability flags are %u. So, I'm going to try for NTP now!", &buf, 8u);
          v8 = flags;
        }

        v10 = *(a1 + 24);
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_10000D484;
        v11[3] = &unk_100029330;
        v11[4] = a1;
        v12 = v8;
        dispatch_async(v10, v11);
        return;
      }

      if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.version) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "We want time and don't have network! Keeping timed alive until network comes up, since we are beyond our wanted threshold.", &buf, 2u);
      }

      buf.version = 0;
      buf.info = a1;
      buf.retain = &CFRetain;
      buf.release = sub_10000D478;
      buf.copyDescription = 0;
      if (SCNetworkReachabilitySetCallback(*(a1 + 8), sub_10000D490, &buf))
      {
        if (SCNetworkReachabilitySetDispatchQueue(*(a1 + 8), *(a1 + 24)))
        {
          return;
        }

        if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_ERROR))
        {
          sub_1000181FC();
        }
      }

      else if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_ERROR))
      {
        sub_100018288();
      }
    }

    else if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_ERROR))
    {
      sub_100018314();
    }

    [a1 setReachabilityTransaction:0];
    return;
  }

  if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_ERROR))
  {
    sub_1000183A0();
  }

  [a1 setReachabilityTransaction:0];
}

void sub_10000D478(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_10000D490(uint64_t a1, int a2, dispatch_queue_t *a3)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_100018484();
  }

  v5 = qword_100033218;
  if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v7 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Reachability changed to flags:%u", buf, 8u);
  }

  if ((a2 & 6) == 2)
  {
    AnalyticsSendEventLazy();
    sub_100017814(a3);
  }
}

unint64_t sub_10000D660()
{
  v4.tv_sec = 0;
  v4.tv_nsec = 0;
  clock_gettime(_CLOCK_UPTIME_RAW, &v4);
  v4.tv_sec += 2208988800;
  v0 = sntp_datestamp_from_timespec(v4.tv_sec);
  v2 = sntp_timestamp_from_datestamp(v0, v1);
  return (dword_100033210 + v2) | ((dword_100033214 + HIDWORD(v2)) << 32);
}

NSDictionary *sub_10000D6DC(uint64_t a1)
{
  v5[0] = @"num";
  v6[0] = [NSNumber numberWithInt:*(a1 + 80)];
  v5[1] = @"result";
  v6[1] = [NSNumber numberWithUnsignedInt:*(a1 + 84)];
  v5[2] = @"mach";
  v6[2] = [NSNumber numberWithUnsignedLongLong:*(a1 + 40)];
  v5[3] = @"tv_sec";
  v6[3] = [NSNumber numberWithLong:*(a1 + 48)];
  v5[4] = @"tv_usec";
  v6[4] = [NSNumber numberWithInt:*(a1 + 56)];
  v5[5] = @"delay";
  v6[5] = [NSNumber numberWithDouble:*(a1 + 64)];
  v5[6] = @"dispersion";
  v2 = [NSNumber numberWithDouble:*(a1 + 72)];
  v3 = *(a1 + 32);
  v6[6] = v2;
  v6[7] = v3;
  v5[7] = @"ip";
  v5[8] = @"port";
  v6[8] = [NSNumber numberWithInt:*(a1 + 164)];
  v5[9] = @"slept";
  v6[9] = [NSNumber numberWithBool:*(a1 + 168)];
  v5[10] = @"use_service_port";
  v6[10] = [NSNumber numberWithBool:*(a1 + 169)];
  v5[11] = @"ipv6";
  v6[11] = [NSNumber numberWithInt:*(a1 + 160) == 30];
  return [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:12];
}

void sub_10000D898(uint64_t a1, double a2, double a3)
{
  v6 = mach_absolute_time();
  v7 = sntp_clock_select(*(a1 + 40), *(a1 + 56));
  if (a2 <= 0.0 || v7 == 0)
  {
    sub_100018054(*(a1 + 32));
  }

  else
  {
    v9 = v7;
    v10 = *(a1 + 48);
    if (v6 <= v10)
    {
      sub_10001853C();
    }

    v11 = sub_100001E00(v10, v6) + a2;
    v12 = sntp_calc_error(v9);
    v14 = sntp_datestamp_to_double(v12, v13);
    v15 = sntp_calc_delay(v9);
    v17 = v14 + sntp_datestamp_to_double(v15, v16) + a3;
    v18 = sntp_calc_mean(v9);
    v25[0] = @"TMCommand";
    v25[1] = @"TMSource";
    v26[0] = @"TMSetSourceTime";
    v26[1] = @"NTP";
    v25[2] = @"TMCurrentTime";
    v26[2] = [NSNumber numberWithDouble:sntp_datestamp_to_double(v18, v19) - (kCFAbsoluteTimeIntervalSince1970 + 2208988800.0)];
    v25[3] = @"TMTimeError";
    v26[3] = [NSNumber numberWithDouble:v17];
    v25[4] = @"TMMachTime";
    v26[4] = [NSNumber numberWithUnsignedLongLong:v6];
    v25[5] = @"TMRtcTime";
    v26[5] = [NSNumber numberWithDouble:v11];
    [*(*(a1 + 32) + 80) setSourceTime:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v26, v25, 6)}];
    [*(a1 + 32) setBurstRetryCount:0];
    SCNetworkReachabilitySetCallback(*(*(a1 + 32) + 8), 0, 0);
    SCNetworkReachabilitySetDispatchQueue(*(*(a1 + 32) + 8), 0);
    v20 = qword_100033218;
    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_INFO))
    {
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Finishing transaction after successful exchange", v24, 2u);
    }

    [*(a1 + 32) setReachabilityTransaction:0];
  }

  [*(a1 + 32) setFetchingTime:0];
  free(*(a1 + 40));
  v21 = IOPMAssertionRelease(*(a1 + 60));
  if (v21)
  {
    v22 = v21;
    v23 = qword_100033218;
    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_ERROR))
    {
      sub_100018568(v22, v23);
    }
  }
}

NSDictionary *sub_10000E02C(uint64_t a1)
{
  v2 = @"networkReachabilityFlags";
  v3 = [NSNumber numberWithUnsignedInt:*(a1 + 32)];
  return [NSDictionary dictionaryWithObjects:&v3 forKeys:&v2 count:1];
}

NSDictionary *sub_10000E1FC(uint64_t a1)
{
  v4[0] = @"clamp_difference";
  v2 = *(a1 + 40);
  if (v2 >= 0.0)
  {
    v2 = *(a1 + 48);
  }

  v5[0] = [NSNumber numberWithDouble:fabs(v2)];
  v4[1] = @"src";
  v5[1] = [NSNumber numberWithUnsignedInteger:sub_100002DA8(*(a1 + 32))];
  v4[2] = @"input_unc";
  v5[2] = [NSNumber numberWithDouble:*(a1 + 56)];
  v4[3] = @"estimate_unc";
  v5[3] = [NSNumber numberWithDouble:*(a1 + 64)];
  return [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:4];
}

const __CFString *sub_10000EC10(uint64_t a1)
{
  if (a1)
  {
    return @"time.apple.com";
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000EE9C(uint64_t a1, void *a2)
{
  objc_opt_self();
  if ([a2 isEqualToString:@"TimeSourceGnssValidPos"] & 1) != 0 || (objc_msgSend(a2, "isEqualToString:", @"GPS") & 1) != 0 || (objc_msgSend(a2, "isEqualToString:", @"TimeSourceGnss") & 1) != 0 || (objc_msgSend(a2, "isEqualToString:", @"NTP"))
  {
    return 1;
  }

  return [a2 isEqualToString:@"TMLSSourceComputedReliable"];
}

NSDictionary *sub_10000F5F4(uint64_t a1)
{
  v3[0] = @"_rtc";
  v4[0] = [NSNumber numberWithDouble:*(*(a1 + 32) + 8)];
  v3[1] = @"_utc";
  v4[1] = [NSNumber numberWithDouble:*(*(a1 + 32) + 16)];
  v3[2] = @"_utc_var";
  v4[2] = [NSNumber numberWithDouble:*(*(a1 + 32) + 48)];
  v3[3] = @"_rateSf";
  v4[3] = [NSNumber numberWithDouble:*(*(a1 + 32) + 24)];
  v3[4] = @"_sf_var";
  v4[4] = [NSNumber numberWithDouble:*(*(a1 + 32) + 56)];
  v3[5] = @"_utc_sf_cov";
  v4[5] = [NSNumber numberWithDouble:*(*(a1 + 32) + 64)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:6];
}

NSDictionary *sub_10000F724(uint64_t a1)
{
  v4[0] = @"_rateSf";
  v2 = [NSNumber numberWithDouble:*(a1 + 32)];
  v4[1] = @"_sf_var";
  v5[0] = v2;
  v5[1] = [NSNumber numberWithDouble:*(a1 + 40)];
  return [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];
}

NSDictionary *sub_100010484(uint64_t a1)
{
  v3[0] = @"_rtc";
  v4[0] = [NSNumber numberWithDouble:*(*(a1 + 32) + 8)];
  v3[1] = @"rtc_s";
  [*(a1 + 40) rtc_s];
  v4[1] = [NSNumber numberWithDouble:?];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];
}

NSDictionary *sub_10001053C(uint64_t a1)
{
  v5[0] = @"rtc_s";
  [*(a1 + 32) rtc];
  v6[0] = [NSNumber numberWithDouble:?];
  v5[1] = @"t_s";
  [*(a1 + 32) utc];
  v6[1] = [NSNumber numberWithDouble:?];
  v5[2] = @"rateSf";
  [*(a1 + 32) rateSf];
  v6[2] = [NSNumber numberWithDouble:?];
  v5[3] = @"utc_var";
  [*(a1 + 32) utc_var];
  v6[3] = [NSNumber numberWithDouble:?];
  v5[4] = @"sf_var";
  [*(a1 + 32) sf_var];
  v6[4] = [NSNumber numberWithDouble:?];
  v5[5] = @"utc_sf_cov";
  [*(a1 + 32) utc_sf_cov];
  v6[5] = [NSNumber numberWithDouble:?];
  v5[6] = @"src";
  v6[6] = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", sub_100002DA8([*(a1 + 40) source]));
  v5[7] = @"input_unc";
  [*(a1 + 40) utcUnc_s];
  v2 = [NSNumber numberWithDouble:?];
  v5[8] = @"_name";
  v3 = *(*(a1 + 48) + 128);
  v6[7] = v2;
  v6[8] = v3;
  return [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:9];
}

NSDictionary *sub_1000106FC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = *(v2 + 128);
  v4[0] = @"_name";
  v4[1] = @"_rejects";
  v5[1] = [NSNumber numberWithUnsignedInteger:*(v2 + 72)];
  v4[2] = @"innv";
  v5[2] = [NSNumber numberWithDouble:*(a1 + 48)];
  v4[3] = @"src";
  v5[3] = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", sub_100002DA8([*(a1 + 40) source]));
  return [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:4];
}

NSDictionary *sub_1000107E8(uint64_t a1)
{
  v3[0] = @"rtc_s";
  [*(a1 + 32) rtc];
  v4[0] = [NSNumber numberWithDouble:?];
  v3[1] = @"t_s";
  [*(a1 + 32) utc];
  v4[1] = [NSNumber numberWithDouble:?];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];
}

NSDictionary *sub_1000108B0(uint64_t a1)
{
  v3[0] = @"rtc_s";
  [*(a1 + 32) rtc];
  v4[0] = [NSNumber numberWithDouble:?];
  v3[1] = @"t_s";
  [*(a1 + 32) utc];
  v4[1] = [NSNumber numberWithDouble:?];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];
}

NSDictionary *sub_100010978(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = *(v2 + 128);
  v4[0] = @"_name";
  v4[1] = @"_rtc";
  v5[1] = [NSNumber numberWithDouble:*(v2 + 8)];
  v4[2] = @"_utc";
  v5[2] = [NSNumber numberWithDouble:*(*(a1 + 32) + 16)];
  v4[3] = @"_utc_unc";
  v5[3] = [NSNumber numberWithDouble:sqrt(*(*(a1 + 32) + 48))];
  v4[4] = @"_rateSf";
  v5[4] = [NSNumber numberWithDouble:*(*(a1 + 32) + 24)];
  v4[5] = @"_sf_var";
  v5[5] = [NSNumber numberWithDouble:*(*(a1 + 32) + 56)];
  v4[6] = @"_utc_sf_cov";
  v5[6] = [NSNumber numberWithDouble:*(*(a1 + 32) + 64)];
  v4[7] = @"src";
  v5[7] = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", sub_100002DA8([*(a1 + 40) source]));
  return [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:8];
}

uint64_t sntp_datestamp_subsecs_to_nsec(unint64_t a1)
{
  v1 = (a1 * 0x3B9ACA00uLL) >> 64;
  if (1000000000 * a1 < 0x8000000000000000)
  {
    return v1;
  }

  else
  {
    return (v1 + 1);
  }
}

uint64_t sntp_calc_offset(uint64_t a1)
{
  v2 = sntp_timestamp_to_datestamp(*(a1 + 4));
  v4 = v3;
  v5 = -v2;
  v6 = sntp_timestamp_to_datestamp(*(a1 + 12));
  v8 = v7;
  v9 = sntp_timestamp_to_datestamp(*(a1 + 20));
  v11 = v10;
  v12 = sntp_timestamp_to_datestamp(*(a1 + 28));
  v14 = __PAIR128__(v5 - (v4 != 0) + __CFADD__(-v4, v8) + v6 + __CFADD__(v8 - v4, v11) + v9, v8 - v4 + v11) - v13;
  return (__CFADD__(v14, (*(&v14 + 1) - v12) >> 63) + *(&v14 + 1) - v12) >> 1;
}

uint64_t sntp_calc_delay(uint64_t a1)
{
  v2 = sntp_timestamp_to_datestamp(*(a1 + 4));
  v4 = v3;
  v5 = -v2;
  v6 = sntp_timestamp_to_datestamp(*(a1 + 12));
  v8 = v7;
  v9 = sntp_timestamp_to_datestamp(*(a1 + 20));
  v11 = v10;
  v12 = -v9;
  v13 = sntp_timestamp_to_datestamp(*(a1 + 28));
  return v13 + ((__PAIR128__(v5 - (v4 != 0) + __CFADD__(-v4, v8) + v6, v8 - v4) - v11 + __PAIR128__(v12, v14)) >> 64);
}

uint64_t sntp_calc_mean(uint64_t a1)
{
  v2 = sntp_timestamp_to_datestamp(*(a1 + 12));
  v4 = v3;
  v5 = sntp_timestamp_to_datestamp(*(a1 + 20));
  if (__CFADD__(v4, v6))
  {
    v7 = v2 + 1;
  }

  else
  {
    v7 = v2;
  }

  return ((__PAIR128__(v7, v4 + v6) + __PAIR128__(v5, (v2 + __CFADD__(v4, v6) + v5) >> 63)) >> 64) >> 1;
}

uint64_t sntp_calc_error(uint64_t a1)
{
  v2 = sntp_timestamp_from_shortstamp(*(a1 + 40));
  v3 = sntp_timestamp_to_datestamp(v2);
  v5 = v4;
  v6 = sntp_timestamp_from_shortstamp(*(a1 + 44));
  v7 = sntp_timestamp_to_datestamp(v6);
  if (__CFADD__(v5, v3 >> 63))
  {
    v9 = v3 + 1;
  }

  else
  {
    v9 = v3;
  }

  *(&v10 + 1) = v9;
  *&v10 = v5 + (v3 >> 63);
  return ((v10 >> 1) + __PAIR128__(v7, v8)) >> 64;
}

unint64_t sntp_clock_select(unint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a1;
  v3 = 0;
  v4 = a1 + 80 * a2;
  v5 = a1;
  do
  {
    if (!*v5 && *(v5 + 37))
    {
      ++v3;
    }

    v5 += 80;
  }

  while (v5 < v4);
  result = 0;
  v7 = 0;
  v8 = 0;
  v31 = v3 >> 1;
  do
  {
    if (!*v2 && *(v2 + 37))
    {
      v32 = v8;
      v33 = v7;
      v34 = result;
      v9 = sntp_calc_delay(v2);
      v37 = v10;
      v11 = (v2 + 80);
      if (v2 + 80 >= v4)
      {
        v36 = 1;
        v35 = v2;
      }

      else
      {
        v36 = 1;
        v35 = v2;
        do
        {
          if (!*v11)
          {
            v12 = sntp_calc_offset(v2);
            v14 = v13;
            v15 = sntp_calc_offset(v11);
            v17 = v16;
            v18 = sntp_calc_delay(v2);
            v20 = v19;
            v21 = sntp_calc_delay(v11);
            if ((__PAIR128__(v18, v20) + __PAIR128__(v12, v14)) >= (__PAIR128__(v15, v17) - __PAIR128__(v21, v22)) && (__PAIR128__(v21, v22) + __PAIR128__(v15, v17)) >= (__PAIR128__(v12, v14) - __PAIR128__(v18, v20)))
            {
              ++v36;
              v23 = sntp_calc_delay(v11);
              v25 = v37;
              v26 = v35;
              if (__PAIR128__(v23, v24) < __PAIR128__(v9, v37))
              {
                v26 = v11;
              }

              v35 = v26;
              if (__PAIR128__(v23, v24) < __PAIR128__(v9, v37))
              {
                v9 = v23;
                v25 = v24;
              }

              v37 = v25;
            }
          }

          v11 += 20;
        }

        while (v11 < v4);
      }

      v8 = v32;
      v7 = v33;
      v27 = v37;
      result = v34;
      v28 = v35;
      v29 = __PAIR128__(v9, v37) < __PAIR128__(v32, v33) || v34 == 0;
      if (v29)
      {
        v30 = v9;
      }

      else
      {
        v30 = v32;
      }

      if (!v29)
      {
        v27 = v33;
        v28 = v34;
      }

      if (v36 > v31)
      {
        v7 = v27;
        v8 = v30;
        result = v28;
      }
    }

    v2 += 80;
  }

  while (v2 < v4);
  return result;
}

unint64_t sntp_packet_hton@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v5 = *a1;
  v6 = *(a1 + 2);
  sntp_header_hton(&v5, a2);
  *(a2 + 24) = sntp_timestamp_hton(*(a1 + 3));
  *(a2 + 32) = sntp_timestamp_hton(*(a1 + 4));
  result = sntp_timestamp_hton(*(a1 + 5));
  *(a2 + 40) = result;
  return result;
}

unint64_t sntp_packet_ntoh@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v5 = *a1;
  v6 = *(a1 + 2);
  sntp_header_ntoh(&v5, a2);
  *(a2 + 24) = sntp_timestamp_ntoh(*(a1 + 3));
  *(a2 + 32) = sntp_timestamp_ntoh(*(a1 + 4));
  result = sntp_timestamp_ntoh(*(a1 + 5));
  *(a2 + 40) = result;
  return result;
}

uint64_t sntp_print_timestamp(int a1, const char *a2, unint64_t a3)
{
  v3 = a3;
  v6 = HIDWORD(a3);
  v7 = sntp_timestamp_to_datestamp(a3);
  v9 = sntp_datestamp_to_timespec(v7, v8);
  return printf("%*s: %08X.%08X (%ld.%09lu)\n", a1, a2, v3, v6, v9, v10);
}

uint64_t sntp_print_shortstamp(int a1, const char *a2, int a3)
{
  v5 = HIWORD(a3);
  v6 = a3;
  v7 = sntp_timestamp_from_shortstamp(a3);
  v8 = sntp_timestamp_to_datestamp(v7);
  v10 = sntp_datestamp_to_double(v8, v9);
  return printf("%*s: %04X.%04X (%.9lf)\n", a1, a2, v6, v5, v10);
}

uint64_t sntp_print_datestamp(int a1, const char *a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = a3[1];
  v7 = sntp_datestamp_to_double(*a3, v6);
  return printf("%*s: %016llX.%016llX (%.9lf)\n", a1, a2, v5, v6, v7);
}

uint64_t sntp_print_header(int a1, unsigned __int8 *a2)
{
  v6 = *(a2 + 3);
  v4 = (a2 + 12);
  v5 = v6;
  if (*(v4 - 11) > 1u)
  {
    inet_ntop(2, v4, __str, 0x10u);
  }

  else
  {
    v7 = bswap32(v5);
    if (v7 > 0x7Fu)
    {
      v8 = __maskrune(v7, 0x40000uLL);
    }

    else
    {
      v8 = _DefaultRuneLocale.__runetype[v7] & 0x40000;
    }

    if (v8)
    {
      v9 = v7;
    }

    else
    {
      v9 = 32;
    }

    if (BYTE1(v7) > 0x7Fu)
    {
      v10 = __maskrune(BYTE1(v7), 0x40000uLL);
    }

    else
    {
      v10 = _DefaultRuneLocale.__runetype[BYTE1(v7)] & 0x40000;
    }

    if (v10)
    {
      v11 = BYTE1(v7);
    }

    else
    {
      v11 = 32;
    }

    if (BYTE2(v7) > 0x7Fu)
    {
      v12 = __maskrune(BYTE2(v7), 0x40000uLL);
    }

    else
    {
      v12 = _DefaultRuneLocale.__runetype[BYTE2(v7)] & 0x40000;
    }

    v13 = HIBYTE(v7);
    if (v12)
    {
      v14 = BYTE2(v7);
    }

    else
    {
      v14 = 32;
    }

    if ((v7 & 0x80000000) != 0)
    {
      v15 = __maskrune(HIBYTE(v7), 0x40000uLL);
    }

    else
    {
      v15 = _DefaultRuneLocale.__runetype[v13] & 0x40000;
    }

    if (v15)
    {
      v16 = v13;
    }

    else
    {
      v16 = 32;
    }

    snprintf(__str, 7uLL, "%c%c%c%c", v9, v11, v14, v16);
  }

  v17 = *a2;
  v18 = a2[1];
  v19 = a2[2];
  v20 = a2[3];
  v21 = sntp_precision_decode(v20);
  printf("%*s: %02X (li:%d vn:%d mode:%d)\n%*s: %02X (%u)\n%*s: %02X (%u)\n%*s: %02X (%e)\n", a1, "header", v17, v17 >> 6, (v17 >> 3) & 7, v17 & 7, a1, "stratum", v18, v18, a1, "poll", v19, 1 << v19, a1, "precision", v20, v21);
  sntp_print_shortstamp(a1, "delay", *(a2 + 1));
  sntp_print_shortstamp(a1, "dispersion", *(a2 + 2));
  printf("%*s: %08X (%s)\n", a1, "ref", *(a2 + 3), __str);
  return sntp_print_timestamp(a1, "t_ref", *(a2 + 2));
}

uint64_t sntp_print_exchange(unsigned int *a1)
{
  printf("sntp_exchange {\n%14s: %d (%s)\n", "result", *a1, (&off_1000294F8)[*a1]);
  *v19 = *(a1 + 9);
  v20 = *(a1 + 13);
  sntp_print_header(14, v19);
  sntp_print_timestamp(14, "t1", *(a1 + 1));
  sntp_print_timestamp(14, "t2", *(a1 + 3));
  sntp_print_timestamp(14, "t3", *(a1 + 5));
  sntp_print_timestamp(14, "t4", *(a1 + 7));
  v2 = sntp_calc_offset(a1);
  v4 = v3;
  v5 = sntp_datestamp_to_double(v2, v3);
  printf("%*s: %016llX.%016llX (%.9lf)\n", 14, "offset", v2, v4, v5);
  v6 = sntp_calc_delay(a1);
  v8 = v7;
  v9 = sntp_datestamp_to_double(v6, v7);
  printf("%*s: %016llX.%016llX (%.9lf)\n", 14, "delay", v6, v8, v9);
  v10 = sntp_calc_mean(a1);
  v12 = v11;
  v13 = sntp_datestamp_to_double(v10, v11);
  printf("%*s: %016llX.%016llX (%.9lf)\n", 14, "mean", v10, v12, v13);
  v14 = sntp_calc_error(a1);
  v16 = v15;
  v17 = sntp_datestamp_to_double(v14, v15);
  printf("%*s: %016llX.%016llX (%.9lf)\n", 14, "error", v14, v16, v17);
  inet_ntop(a1[19], a1 + 15, v19, 0x2Eu);
  printf("%14s: %s\n", "addr", v19);
  return puts("}");
}

uint64_t sntp_print_packet(__int128 *a1)
{
  puts("sntp_packet {");
  v3 = *a1;
  v4 = *(a1 + 2);
  sntp_print_header(14, &v3);
  sntp_print_timestamp(14, "t_orig", *(a1 + 3));
  sntp_print_timestamp(14, "t_rx", *(a1 + 4));
  sntp_print_timestamp(14, "t_tx", *(a1 + 5));
  return puts("}");
}

unint64_t sntp_header_hton@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  *a2 = v5;
  *(a2 + 4) = sntp_shortstamp_hton(v4);
  v6 = sntp_shortstamp_hton(a1[2]);
  v7 = bswap32(a1[3]);
  *(a2 + 8) = v6;
  *(a2 + 12) = v7;
  result = sntp_timestamp_hton(*(a1 + 2));
  *(a2 + 16) = result;
  return result;
}

unint64_t sntp_header_ntoh@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  *a2 = v5;
  *(a2 + 4) = sntp_shortstamp_ntoh(v4);
  v6 = sntp_shortstamp_ntoh(a1[2]);
  v7 = bswap32(a1[3]);
  *(a2 + 8) = v6;
  *(a2 + 12) = v7;
  result = sntp_timestamp_ntoh(*(a1 + 2));
  *(a2 + 16) = result;
  return result;
}

void *sntp_header_mmap(const char *a1, uint64_t a2, int a3)
{
  v6 = open(a1, 2);
  if (v6 < 0)
  {
    if (*__error() != 2 || (v8 = umask(0), v7 = open(a1, 514, 436), umask(v8), v7 < 0))
    {
      warn("open");
      return 0;
    }

    v9 = *(a2 + 8);
    v10 = *(a2 + 12);
    v11 = *(a2 + 16);
    v12 = *(a2 + 4);
    __buf[0] = *a2;
    __buf[1] = sntp_shortstamp_hton(v12);
    __buf[2] = sntp_shortstamp_hton(v9);
    __buf[3] = bswap32(v10);
    v17 = sntp_timestamp_hton(v11);
    if (write(v7, __buf, 0x18uLL) != 24)
    {
      warn("write");
      return 0;
    }
  }

  else
  {
    v7 = v6;
    if (ftruncate(v6, 24))
    {
      warn("ftruncate");
      return 0;
    }
  }

  if (a3)
  {
    v13 = 3;
  }

  else
  {
    v13 = 1;
  }

  v14 = mmap(0, 0x18uLL, v13, 1, v7, 0);
  if (v14 == -1)
  {
    warn("mmap");
    v14 = 0;
  }

  if (close(v7))
  {
    warn("close");
  }

  return v14;
}

void sntp_header_unmap(void *a1)
{
  if (munmap(a1, 0x18uLL))
  {

    warn("munmap");
  }
}

unint64_t sntp_server_respond@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = a3();
  *a4 = *a2;
  v9 = *(a1 + 40);
  *(a4 + 16) = *(a2 + 16);
  *(a4 + 24) = v9;
  *(a4 + 32) = sntp_timestamp_hton(v8);
  v10 = a3();
  result = sntp_timestamp_hton(v10);
  *(a4 + 40) = result;
  if (__ROR8__(v10, 32) < __ROR8__(v8, 32))
  {
    *(a4 + 1) = 0;
    *(a4 + 12) = 1398031696;
  }

  return result;
}

uint64_t sntp_server_exchange@<X0>(sockaddr *a1@<X1>, socklen_t *a2@<X2>, int a3@<W0>, __int128 *a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0u;
  *a6 = 0u;
  if (!a5)
  {
    sub_1000121E8();
  }

  v23 = 0uLL;
  v24 = 0uLL;
  v22 = 0uLL;
  result = recvfrom(a3, &v22, 0x30uLL, 64, a1, a2);
  if (result == 48)
  {
    if (a1 && a2)
    {
      v13 = *a2;
      sa_family = a1->sa_family;
      *(a6 + 76) = sa_family;
      if (v13 == 16 && sa_family == 2)
      {
        *(a6 + 60) = *&a1->sa_data[2];
      }

      else if (v13 == 28 && sa_family == 30)
      {
        *(a6 + 60) = *&a1->sa_data[6];
      }
    }

    v21 = 0u;
    v19[0] = v22;
    v19[1] = v23;
    v19[2] = v24;
    memset(v20, 0, sizeof(v20));
    v17 = *a4;
    v18 = *(a4 + 2);
    sntp_server_respond(v19, &v17, a5, v20);
    if (a2)
    {
      v15 = *a2;
    }

    else
    {
      v15 = 0;
    }

    if (sendto(a3, v20, 0x30uLL, 0, a1, v15) != 48)
    {
      *a6 = 5;
    }

    *(a6 + 36) = v22;
    v16 = *(&v24 + 1);
    *(a6 + 52) = v23;
    *(a6 + 4) = sntp_timestamp_ntoh(v16);
    *(a6 + 12) = sntp_timestamp_ntoh(v21);
    result = sntp_timestamp_ntoh(*(&v21 + 1));
    *(a6 + 20) = result;
  }

  else
  {
    *a6 = 7;
  }

  return result;
}

__n128 sntp_client_exchange@<Q0>(int a1@<W0>, timeval *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v19 = 0u;
  v20 = 0u;
  memset(v18, 0, sizeof(v18));
  memset(&v17, 0, sizeof(v17));
  if (__darwin_check_fd_set_overflow(a1, &v17, 0))
  {
    *(v17.fds_bits + ((a1 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << a1;
  }

  v16 = 0u;
  memset(v15, 0, sizeof(v15));
  LOBYTE(v15[0]) = 35;
  if (a3)
  {
    *(v18 + 4) = a3();
    *(&v16 + 1) = sntp_timestamp_hton(*(v18 + 4));
  }

  if (send(a1, v15, 0x30uLL, 0) != 48)
  {
    v9 = 5;
LABEL_17:
    LODWORD(v18[0]) = v9;
    v10 = v19;
    *(a4 + 32) = v18[2];
    *(a4 + 48) = v10;
    *(a4 + 64) = v20;
    result = v18[1];
    *a4 = v18[0];
    *(a4 + 16) = result;
    return result;
  }

  if (a2 && (a2->tv_sec || a2->tv_usec) && select(a1 + 1, &v17, 0, &v17, a2) != 1)
  {
    v9 = 6;
    goto LABEL_17;
  }

  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  if (recv(a1, &v12, 0x30uLL, 0) != 48)
  {
    v9 = 7;
    goto LABEL_17;
  }

  if (a3)
  {
    *(&v18[1] + 12) = a3();
  }

  v11[0] = v12;
  v11[1] = v13;
  v11[2] = v14;
  sntp_client_process_response(v11, (v18 + 4), (&v18[1] + 12), a4);
  return result;
}

unint64_t sntp_client_process_response@<X0>(unsigned __int8 *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  if (a2)
  {
    v8 = *a2;
    *(a4 + 4) = *a2;
    v9 = HIDWORD(v8);
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  LODWORD(v9) = 0;
  LODWORD(v8) = 0;
  if (a3)
  {
LABEL_3:
    *(a4 + 28) = *a3;
  }

LABEL_4:
  v10 = *(a1 + 1);
  v16[0] = *a1;
  v16[1] = v10;
  v16[2] = *(a1 + 2);
  result = sntp_packet_ntoh(v16, v17);
  v12 = v17[1];
  *a1 = v17[0];
  *(a1 + 1) = v12;
  *(a1 + 2) = v17[2];
  *(a4 + 36) = *a1;
  *(a4 + 52) = *(a1 + 2);
  v13 = *(a1 + 4);
  v14 = *(a1 + 5);
  *(a4 + 12) = v13;
  *(a4 + 20) = v14;
  if (*a1 <= 0xBFu)
  {
    if (a1[1])
    {
      if (__ROR8__(v14, 32) >= __ROR8__(v13, 32))
      {
        if (a2)
        {
          if (*(a1 + 6) != v8 || *(a1 + 7) != v9)
          {
            v15 = 10;
            goto LABEL_19;
          }

          if (a3)
          {
            result = sntp_calc_delay(a4);
            if ((result & 0x8000000000000000) != 0)
            {
              v15 = 11;
              goto LABEL_19;
            }
          }
        }

        v15 = 0;
      }

      else
      {
        v15 = 12;
      }
    }

    else
    {
      v15 = 8;
    }
  }

  else
  {
    v15 = 9;
  }

LABEL_19:
  *a4 = v15;
  return result;
}

void sntp_client_unicast(const char *a1@<X0>, unsigned int a2@<W1>, int a3@<W2>, timeval *a4@<X3>, uint64_t (*a5)(void)@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  *(a7 + 48) = 0u;
  *(a7 + 64) = 0u;
  *(a7 + 16) = 0u;
  *(a7 + 32) = 0u;
  *a7 = 0u;
  snprintf(__str, 6uLL, "%u", a3);
  v28 = 0;
  if (getaddrinfo(a1, __str, 0, &v28))
  {
    *a7 = 1;
    return;
  }

  if (!v28)
  {
    sub_100012214();
  }

  if (a2)
  {
    v13 = 0;
    v14 = v28;
    while (1)
    {
      v14 = v14->ai_next;
      if (!v14)
      {
        break;
      }

      if (++v13 >= a2)
      {
        goto LABEL_10;
      }
    }
  }

  v14 = v28;
LABEL_10:
  ai_addr = v14->ai_addr;
  ai_addrlen = v14->ai_addrlen;
  ai_family = v14->ai_family;
  sa_family = ai_addr->sa_family;
  *(a7 + 76) = sa_family;
  if (ai_addrlen == 16 && sa_family == 2)
  {
    *(a7 + 60) = *&ai_addr->sa_data[2];
  }

  else if (ai_addrlen == 28 && sa_family == 30)
  {
    *(a7 + 60) = *&ai_addr->sa_data[6];
  }

  v21 = socket(ai_family, 2, 17);
  if (v21)
  {
    v22 = v21;
    if (!a6)
    {
      goto LABEL_29;
    }

    v30 = 0;
    v31 = 0;
    memset(v27, 0, 28);
    if (ai_family == 2)
    {
      v30 = 2063598080;
      v31 = 0;
      v23 = &v30;
      v24 = 16;
    }

    else
    {
      memset(&v27[0].sa_data[2], 0, 24);
      *&v27[0].sa_data[6] = in6addr_any;
      *&v27[0].sa_len = 2063605276;
      v23 = v27;
      v24 = 28;
    }

    if (bind(v21, v23, v24))
    {
      v25 = 3;
    }

    else
    {
LABEL_29:
      if (!connect(v22, ai_addr, ai_addrlen))
      {
        sntp_client_exchange(v22, a4, a5, a7);
        v26 = ai_addr->sa_family;
        *(a7 + 76) = v26;
        if (ai_addrlen == 16 && v26 == 2)
        {
          *(a7 + 60) = *&ai_addr->sa_data[2];
        }

        else if (ai_addrlen == 28 && v26 == 30)
        {
          *(a7 + 60) = *&ai_addr->sa_data[6];
        }

        goto LABEL_32;
      }

      v25 = 4;
    }

    *a7 = v25;
LABEL_32:
    close(v22);
    goto LABEL_33;
  }

  *a7 = 2;
LABEL_33:
  freeaddrinfo(v28);
}

void sub_10001260C(xpc_connection_t *a1, NSObject *a2)
{
  pid = xpc_connection_get_pid(*a1);
  v4[0] = 67109120;
  v4[1] = pid;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Client lacks authorization, pid: %d", v4, 8u);
}

void sub_10001269C(NSObject *a1)
{
  dispatch_queue_get_label(0);
  sub_100002230();
  _os_log_debug_impl(&_mh_execute_header, a1, OS_LOG_TYPE_DEBUG, "Will execute command on queue: %s", v2, 0xCu);
}

void sub_1000129D0()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_10000223C();
  sub_100002430();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100012AA8()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_10000223C();
  sub_100002430();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100012CE0()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_10000223C();
  sub_100002430();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void *sub_100012EC8(void *result)
{
  if (result)
  {
    v1 = result;
    [result[16] emptyPath:@"/var/db/timed/com.apple.timed.plist"];
    [v1[2] reset];
    [v1[3] reset];
    if (v1[14] <= 9uLL)
    {
      v1[14] = 0;
    }

    return sub_100012F48(v1, "timeWasReset:", @"softReset", v2, v3, v4, v5, v6);
  }

  return result;
}

void *sub_100012F48(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v10 = result[6];
    result = sub_1000023C4(result, a2, a3, a4, a5, a6, a7, a8, 0, 0, 0, 0, 0, 0, 0, 0, v31, v33);
    if (result)
    {
      v11 = result;
      v12 = *v25;
      do
      {
        v13 = 0;
        do
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(v24 + 8 * v13);
          v15 = objc_opt_respondsToSelector();
          if (v15)
          {
            v15 = [v14 performSelector:a2 withObject:a3];
          }

          v13 = (v13 + 1);
        }

        while (v11 != v13);
        result = sub_1000023C4(v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v32, v34);
        v11 = result;
      }

      while (result);
    }
  }

  return result;
}

void sub_10001303C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    sub_100002880();
    v7 = [v6 code];
    if (v7 == 4)
    {
      if ([objc_msgSend(a3 "source")])
      {
        v13 = qword_100033218;
        if (sub_1000021FC())
        {
          *v24 = 0;
          sub_100002988(&_mh_execute_header, v13, v14, "reset accessory uncertainty", v24);
        }

        [v3 setAccessoryUnc_s:1.79769313e308];
      }
    }

    else if (v7 == 3)
    {
      v22 = qword_100033218;
      if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_INFO))
      {
        *v24 = 0;
        sub_100002988(&_mh_execute_header, v22, v23, "soft reset due to rtc rollback", v24);
      }

      sub_100012EC8(v3);
      [v3 rtcDidReset];
      [v3 setSourceTime:{objc_msgSend(a3, "dictionary")}];
    }

    else if (v7 == 5)
    {
      v15 = qword_100033218;
      if (sub_1000021FC())
      {
        *v24 = 0;
        sub_100002988(&_mh_execute_header, v15, v16, "reset accessory uncertainty", v24);
      }

      [v3 setAccessoryUnc_s:1.79769313e308];
      sub_100012F48(v3, "timeWasReset:", @"ResetDueToRejects", v17, v18, v19, v20, v21);
    }

    else if (sub_10000234C())
    {
      [v4 code];
      sub_100002230();
      sub_100002274();
      _os_log_error_impl(v8, v9, v10, v11, v12, 0xCu);
    }
  }
}

void sub_100013220(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    sub_100002880();
    if ([v6 code] == 6)
    {
      [*(v3 + 136) synthesizer:@"STF" rejectedTimeInput:a3];
      if ([*(v3 + 136) resetThreshholdReached])
      {
        v7 = qword_100033218;
        if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_INFO))
        {
          *v15 = 0;
          sub_100002988(&_mh_execute_header, v7, v8, "resetting secure filter, time filter, purging cache", v15);
        }

        sub_100012EC8(v3);
        [v3 setSourceTime:{objc_msgSend(a3, "dictionary")}];
        v9 = *(v3 + 136);
        [objc_msgSend(v3 "clock")];
        [v9 resetRejectCountsForReason:4 rtc:?];
      }
    }

    else if (sub_10000234C())
    {
      [v4 code];
      sub_100002230();
      sub_100002274();
      _os_log_error_impl(v10, v11, v12, v13, v14, 0xCu);
    }
  }
}

id *sub_100013378(id *result)
{
  if (result)
  {
    v1 = result;
    dispatch_assert_queue_V2([result workloop]);
    v2 = qword_100033218;
    if (sub_1000021FC())
    {
      v5[0] = 0;
      sub_100002988(&_mh_execute_header, v2, v3, "Handling heartbeat execution", v5);
    }

    [objc_msgSend(v1 "clock")];
    [v1[4] lastFetchAttempt];
    [v1[7] shouldClamp];
    v4 = v1[2];
    [objc_msgSend(v1 "clock")];
    [objc_msgSend(v4 "timeAtRtc:"utcUnc_s"")];
    sub_100002254();
    AnalyticsSendEventLazy();
    return [v1 checkActiveTimeSourceRequired];
  }

  return result;
}

void sub_100013490(uint64_t a1)
{
  if (a1)
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REPEATING, 1);
    xpc_dictionary_set_string(v2, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
    xpc_dictionary_set_int64(v2, XPC_ACTIVITY_DELAY, 86400);
    xpc_dictionary_set_int64(v2, XPC_ACTIVITY_GRACE_PERIOD, 300);
    sub_100002254();
    sub_1000022A8();
    v4 = sub_100006A4C;
    v5 = &unk_100028BF0;
    v6 = a1;
    xpc_activity_register("com.apple.timed.heartbeat", v2, handler);
    xpc_release(v2);
  }
}

void *sub_10001358C(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 40);
    v3 = result[7];
    if (v2 == 1)
    {
      [v3 NTPSchedulingInterval];
    }

    else
    {
      [v3 NTPUnsetSchedulingInterval];
    }

    v4 = v1[4];

    return [v4 setSchedulingInterval:?];
  }

  return result;
}

void *sub_1000135E4(void *a1, const char *a2)
{
  if (a1)
  {
    return [a1 isAutomaticTimeEnabled];
  }

  return a1;
}

BOOL sub_1000135F0(_BOOL8 result, uint64_t a2, long double a3)
{
  if (result)
  {
    v5 = result;
    v26.tv_sec = 0;
    *&v26.tv_usec = 0;
    sub_10000652C(&v26.tv_sec, a3);
    if (!v6)
    {
      v14 = qword_100033218;
      if (sub_10000B1CC())
      {
        *buf = 134218242;
        tv_sec = *&a3;
        v29 = 2080;
        tv_usec = a2;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "TMCFAbsoluteTimeToTimeval(%f) failed: cannot set system time from %s", buf, 0x16u);
      }

      [*(v5 + 16) reset];
      return 0;
    }

    if (settimeofday(&v26, 0))
    {
      v7 = __error();
      result = sub_10000234C();
      if (!result)
      {
        return result;
      }

      v8 = *v7;
      *buf = 134218754;
      tv_sec = v26.tv_sec;
      v29 = 2048;
      tv_usec = v26.tv_usec;
      v31 = 1024;
      v32 = v8;
      v33 = 2080;
      v34 = a2;
      sub_100002274();
      _os_log_error_impl(v9, v10, v11, v12, v13, 0x26u);
      return 0;
    }

    if (sub_10000240C())
    {
      v15 = [NSDate dateWithTimeIntervalSinceReferenceDate:a3];
      *buf = 138412546;
      tv_sec = v15;
      v29 = 2080;
      tv_usec = a2;
      sub_100002D9C();
      _os_log_impl(v16, v17, v18, v19, v20, 0x16u);
    }

    [*(v5 + 128) touchPath:@"/var/db/timed/com.apple.timed.plist" tv:&v26];
    CFNotificationCenterGetDarwinNotifyCenter();
    sub_100002978();
    CFNotificationCenterPostNotification(v21, v22, v23, v24, v25);
    return 1;
  }

  return result;
}

void sub_1000137FC(uint64_t a1)
{
  if (a1)
  {
    CFNotificationCenterGetDarwinNotifyCenter();
    sub_100002978();

    CFNotificationCenterPostNotification(v1, v2, v3, v4, v5);
  }
}

id sub_10001383C(id result)
{
  if (result)
  {
    v1 = result;
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter postNotificationName:"postNotificationName:object:userInfo:" object:@"TMSystemTimeChanged" userInfo:result, &__NSDictionary0__struct];

    return [v1 testAndApplySystemTime];
  }

  return result;
}

void *sub_10001389C(void *a1, const char *a2)
{
  if (a1)
  {
    return [a1 isAutomaticTimeZoneEnabled];
  }

  return a1;
}

id *sub_1000138A8(id *result)
{
  if (result)
  {
    return [result[7] areTimeZonePopupsEnabled];
  }

  return result;
}

BOOL sub_1000138B8(id *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    if (sub_10000234C())
    {
      *buf = 0;
      sub_100002274();
      _os_log_error_impl(v23, v24, v25, v26, v27, 2u);
    }

    return 0;
  }

  v4 = CFTimeZoneCopySystem();
  v5 = CFTimeZoneGetName(v4);
  if (v4)
  {
    CFRelease(v4);
  }

  v6 = a2;
  sub_10000292C();
  v10 = CFTimeZoneCreateWithName(v7, v8, v9);
  if (!v10)
  {
    if (sub_10000234C())
    {
      *buf = 136315138;
      v69 = [a2 UTF8String];
      sub_100002274();
      _os_log_error_impl(v59, v60, v61, v62, v63, 0xCu);
      if (!v6)
      {
        return 0;
      }
    }

    else if (!v6)
    {
      return 0;
    }

    CFRelease(v6);
    return 0;
  }

  v11 = v10;
  Current = CFAbsoluteTimeGetCurrent();
  v13 = CFTimeZoneGetSecondsFromGMT(v11, Current) / 3600.0;
  CFRelease(v11);
  if ([a1[7] areTimeZonePopupsEnabled])
  {
    CFUserNotificationDisplayNotice(0.0, 0, 0, 0, 0, @"Time Zone Change", [NSString stringWithFormat:@"timed set your time zone to %@ (GMT%+.2f) was %@.\n", a2, *&v13, v5], 0);
  }

  v14 = qword_100033218;
  if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v69 = [a2 UTF8String];
    v70 = 2048;
    v71 = v13;
    v72 = 2112;
    v73 = v5;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Setting time zone to %s (GMT%+.2f) was %@\n", buf, 0x20u);
  }

  bzero(buf, 0x400uLL);
  readlink("/var/db/timezone/localtime", buf, 0x3FFuLL);
  if (sub_10000240C())
  {
    sub_10000B18C();
    sub_100002D9C();
    _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
  }

  [a2 UTF8String];
  v20 = tzlink();
  v21 = v20 == 0;
  if (v20)
  {
    v22 = v20;
    if (sub_10000234C())
    {
      *v64 = 136315394;
      v65 = [a2 UTF8String];
      v66 = 1024;
      LODWORD(v67) = v22;
      sub_100002274();
      _os_log_error_impl(v54, v55, v56, v57, v58, 0x12u);
      if (!v6)
      {
        return v21;
      }

      goto LABEL_15;
    }

    if (v6)
    {
LABEL_15:
      CFRelease(v6);
    }
  }

  else
  {
    CFTimeZoneResetSystem();
    setenv("TZ", ":", 1);
    tzset();
    bzero(buf, 0x400uLL);
    readlink("/var/db/timezone/localtime", buf, 0x3FFuLL);
    if (sub_1000023E4())
    {
      sub_10000B18C();
      sub_10000B108();
      _os_log_impl(v29, v30, v31, v32, v33, 0xCu);
    }

    v34 = CFTimeZoneCopySystem();
    Name = CFTimeZoneGetName(v34);
    v36 = qword_100033218;
    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT))
    {
      sub_10000B18C();
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "CF's name for the zone is %@", v64, 0xCu);
    }

    if (v34)
    {
      if (CFStringCompare(Name, v6, 0))
      {
        v37 = qword_100033218;
        if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_ERROR))
        {
          sub_10000B18C();
          v66 = 2112;
          v67 = v6;
          _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "CFTimeZoneCopySystem returned %@ after attempting to set %@", v64, 0x16u);
        }
      }

      CFRelease(v34);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (sub_100002914())
    {
      *v64 = 136315138;
      v65 = tzname[0];
      sub_10000292C();
      _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
    }

    if (sub_100002914())
    {
      v43 = tzname[1];
      *v64 = 136315138;
      v65 = v43;
      sub_10000292C();
      _os_log_impl(v44, v45, v46, v47, v48, 0xCu);
    }

    [a1 setSystemTimeZoneSet:1];
    CFNotificationCenterGetLocalCenter();
    sub_100002978();
    CFNotificationCenterPostNotification(v49, v50, v51, v52, v53);
  }

  return v21;
}

void sub_100013DE4(uint64_t a1)
{
  if (a1)
  {
    sub_10000245C();
    if ([v3 isAutomaticTimeZoneEnabled])
    {
      if (sub_100008160(v2, v1) && ([v2 isSystemTimeZoneSet] & 1) != 0)
      {
        if (sub_100002914())
        {
          sub_10000292C();
          _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
        }
      }

      else
      {

        sub_1000138B8(v2, v1);
      }
    }
  }
}

id sub_100013EE4(id result, uint64_t a2)
{
  if (result)
  {
    if (qword_1000331C0 != -1)
    {
      dispatch_once(&qword_1000331C0, &stru_100028C58);
    }

    v3 = [qword_1000331C8 objectForKeyedSubscript:a2];

    return [v3 BOOLValue];
  }

  return result;
}

void sub_1000141E0(NSDictionary *a1, __CFString *a2, uint64_t a3)
{
  if (!a1)
  {
    goto LABEL_43;
  }

  v6 = [(__CFString *)a2 objectForKey:@"TMCommand"];
  if ([v6 isEqualToString:@"TMSetManualTime"])
  {
    v13 = sub_1000023B8();
    sub_100014DC8(v13, v14);
LABEL_42:
    sub_1000029AC(a1);
    goto LABEL_43;
  }

  if ([v6 isEqualToString:@"TMSetAuthenticatedSourceTime"])
  {
    v15 = sub_1000023B8();
    sub_100015024(v15);
    goto LABEL_42;
  }

  if ([v6 isEqualToString:@"TMSetSourceTime"])
  {
    [sub_1000021F0() setSourceTime:?];
    goto LABEL_42;
  }

  if ([v6 isEqualToString:@"TMSetSourceAvailable"])
  {
    [sub_1000021F0() setSourceAvailable:?];
    goto LABEL_42;
  }

  if ([v6 isEqualToString:@"TMSetSourceUnavailable"])
  {
    [sub_1000021F0() setSourceUnavailable:?];
    goto LABEL_42;
  }

  if ([v6 isEqualToString:@"TMSetSourceTimeZone"])
  {
    [sub_1000021F0() setSourceTimeZone:?];
    goto LABEL_42;
  }

  if ([v6 isEqualToString:@"TMSetAutomaticTimeEnabled"])
  {
    v16 = [-[__CFString objectForKey:](a2 objectForKey:{@"TMAutomaticTimeEnabled", "BOOLValue"}];
    if (sub_1000023E4())
    {
      [(__CFString *)a2 objectForKeyedSubscript:@"TMSource"];
      [-[__CFString objectForKeyedSubscript:](a2 objectForKeyedSubscript:{@"TMRtcTime", "doubleValue"}];
      *buf = 138413058;
      sub_10000B114(@"auto_time");
      sub_10000B108();
      _os_log_impl(v17, v18, v19, v20, v21, 0x26u);
    }

    AnalyticsSendEventLazy();
    [(NSDictionary *)a1 setAutomaticTimeEnabled:v16];
    goto LABEL_42;
  }

  if ([v6 isEqualToString:@"TMIsAutomaticTimeEnabled"])
  {
    v7 = [NSNumber numberWithBool:[(NSDictionary *)a1 isAutomaticTimeEnabled]];
    v8 = @"TMAutomaticTimeEnabled";
LABEL_16:
    v9 = [NSDictionary dictionaryWithObject:v7 forKey:v8];
LABEL_17:
    v10 = v9;
    goto LABEL_18;
  }

  if ([v6 isEqualToString:@"TMSetAutomaticTimeZoneEnabled"])
  {
    v24 = [-[__CFString objectForKey:](a2 objectForKey:{@"TMAutomaticTimeZoneEnabled", "BOOLValue"}];
    if (sub_1000023E4())
    {
      [(__CFString *)a2 objectForKeyedSubscript:@"TMSource"];
      [-[__CFString objectForKeyedSubscript:](a2 objectForKeyedSubscript:{@"TMRtcTime", "doubleValue"}];
      *buf = 138413058;
      sub_10000B114(@"auto_tz");
      sub_10000B108();
      _os_log_impl(v25, v26, v27, v28, v29, 0x26u);
    }

    AnalyticsSendEventLazy();
    [(NSDictionary *)a1 setAutomaticTimeZoneEnabled:v24];
    goto LABEL_42;
  }

  if ([v6 isEqualToString:@"TMIsAutomaticTimeZoneEnabled"])
  {
    v7 = [NSNumber numberWithBool:[(NSDictionary *)a1 isAutomaticTimeZoneEnabled]];
    v8 = @"TMAutomaticTimeZoneEnabled";
    goto LABEL_16;
  }

  if ([v6 isEqualToString:@"TMIsTimeZoneConfirmed"])
  {
    v7 = [NSNumber numberWithBool:[(objc_class *)a1[1].super.isa currentTimeZone]!= 0];
    v8 = @"TMTimeZoneConfirmed";
    goto LABEL_16;
  }

  if ([v6 isEqualToString:@"TMConfirmTimeZone"])
  {
    v37 = sub_1000023B8();
    sub_1000151EC(v37);
    goto LABEL_42;
  }

  if ([v6 isEqualToString:@"TMGetBAFinderTime"])
  {
    v10 = sub_100001E10(a1);
    v38 = qword_100033218;
    if (!sub_1000021FC())
    {
      goto LABEL_18;
    }

    *buf = 138412290;
    v92 = v10;
    v39 = "Returning BA finder time to client: %@";
    goto LABEL_61;
  }

  if ([v6 isEqualToString:@"TMGetReferenceTime"])
  {
    v10 = sub_100001E10(a1);
    v38 = qword_100033218;
    if (!sub_1000021FC())
    {
      goto LABEL_18;
    }

    *buf = 138412290;
    v92 = v10;
    v39 = "Returning reference time to client: %@";
LABEL_61:
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, v39, buf, 0xCu);
LABEL_18:
    if (!v10)
    {
LABEL_43:
      sub_10000232C();
      return;
    }

LABEL_19:
    (*(a3 + 16))(a3, v10);
    goto LABEL_43;
  }

  if ([v6 isEqualToString:@"TMGetTrustedInterval"])
  {
    isa = a1[3].super.isa;
    [-[NSDictionary clock](a1 "clock")];
    v12 = [-[objc_class timeAtRtc:](isa "timeAtRtc:"dictionary"")];
    if (v12)
    {
      v10 = v12;
    }

    else
    {
      v10 = &__NSDictionary0__struct;
    }

    goto LABEL_19;
  }

  if ([v6 isEqualToString:@"TMGetRTCResetCount"])
  {
    v107 = @"TMRTCResetCount";
    v108 = [NSNumber numberWithUnsignedInt:[(NSDictionary *)a1 rtcResetCount]];
    v22 = &v108;
    v23 = &v107;
LABEL_38:
    v9 = [NSDictionary dictionaryWithObjects:v22 forKeys:v23 count:1];
    goto LABEL_17;
  }

  if ([v6 isEqualToString:@"TMIsBBTimeActive"])
  {
    v9 = sub_100015314(a1);
    goto LABEL_17;
  }

  if ([v6 isEqualToString:@"TMProvideBBTime"])
  {
    v44 = sub_1000023B8();
    sub_1000153A8(v44, v45);
    goto LABEL_42;
  }

  if ([v6 isEqualToString:@"TMProvideCellularTimeZone"])
  {
    v46 = sub_1000021F0();
    sub_100012F48(v46, v47, v48, v49, v50, v51, v52, v53);
    goto LABEL_42;
  }

  if ([v6 isEqualToString:@"TMSetupTime"])
  {
    sub_1000023B8();
    sub_10000232C();

    sub_10001566C(v71, v72, v73);
  }

  else
  {
    if ([v6 isEqualToString:@"TMSetupTimeZone"])
    {
      sub_1000023B8();
      sub_10000232C();

      sub_1000089D8(v30, v31, v32);
      return;
    }

    if ([v6 isEqualToString:@"TMFetchNTP"])
    {
      v34 = a1[4].super.isa;
      sub_10000232C();

      [v35 fetchTime];
      return;
    }

    if ([v6 isEqualToString:@"TMGetComputedTimeZone"])
    {
      v40 = [-[NSDictionary computedTimeZone](a1 "computedTimeZone")];
      if (!v40)
      {
        v10 = &__NSDictionary0__struct;
        goto LABEL_19;
      }

      v105 = @"TMTimeZone";
      v106 = v40;
      v22 = &v106;
      v23 = &v105;
      goto LABEL_38;
    }

    if ([v6 isEqualToString:@"TMResetToFirstLaunch"])
    {
      sub_1000023B8();
      sub_10000232C();

      sub_100008DE0(v41, v42);
      return;
    }

    if (![v6 isEqualToString:@"TMSoftReset"])
    {
      if (![v6 isEqualToString:@"TMResetTimeZone"])
      {
        v54 = [v6 isEqualToString:@"TMSystemWillWake"];
        v55 = qword_100033218;
        if (v54)
        {
          if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            sub_100002988(&_mh_execute_header, v55, v56, "System will wake", buf);
          }

          v57 = a1[2].super.isa;
          [(objc_class *)a1[7].super.isa RTCWakeUncertainty];
          [(objc_class *)v57 inflateHistoricalDataBy:?];
          if ([(objc_class *)a1[7].super.isa shouldCorrectOnWake]&& [(objc_class *)a1[7].super.isa shouldFetchOnWake]&& os_log_type_enabled(qword_100033218, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            sub_10000B170(&_mh_execute_header, v58, v59, "Both CorrectOnWake and FetchOnWake are enabled. This is probably a misconfiguration, but I'll do it anyways.", buf);
          }

          if ([(objc_class *)a1[7].super.isa shouldCorrectOnWake])
          {
            [(NSDictionary *)a1 testAndApplySystemTime];
          }

          if ([(objc_class *)a1[7].super.isa shouldFetchOnWake])
          {
            v61 = (clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) / 0x3B9ACA00);
            v62 = *&qword_100032DD0;
            if (*&qword_100032DD0 > v61 && os_log_type_enabled(qword_100033218, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              sub_10000B170(&_mh_execute_header, v63, v64, "CLOCK_MONOTONIC_RAW has stepped backward since last NTP fetch", buf);
              v62 = *&qword_100032DD0;
            }

            v65 = v62 > 0.0 && v62 < v61;
            if (v65 && (v60 = v61 - v62, v61 - v62 < 900.0))
            {
              if (sub_100002914())
              {
                *buf = 134218240;
                v92 = *&v62;
                v93 = 2048;
                v94 = v61;
                sub_10000292C();
                _os_log_impl(v66, v67, v68, v69, v70, 0x16u);
              }
            }

            else
            {
              qword_100032DD0 = *&v61;
              [(objc_class *)a1[4].super.isa fetchTime];
            }
          }

          v87 = [(NSDictionary *)a1 clock];
          v88 = mach_absolute_time();
          [(NSDictionary *)a1 workloop];
          sub_100002254();
          sub_1000022A8();
          [v87 montonicTimeForMachTime:v88 toQueue:? withCompletionHandler:?];
        }

        else
        {
          if (sub_10000B1CC())
          {
            *buf = 138412290;
            v92 = a2;
            sub_10000B140(&_mh_execute_header, v55, v75, "Received unknown command: %@\n", buf);
          }

          v76 = qword_100033220;
          if (os_log_type_enabled(qword_100033220, OS_LOG_TYPE_DEFAULT))
          {
            v77 = [(__CFString *)a2 objectForKeyedSubscript:@"TMSource"];
            [-[__CFString objectForKeyedSubscript:](a2 objectForKeyedSubscript:{@"TMRtcTime", "doubleValue"}];
            v79 = v78;
            [-[__CFString objectForKeyedSubscript:](a2 objectForKeyedSubscript:{@"TMRTCConversionTimeError", "doubleValue"}];
            v81 = v80;
            [-[__CFString objectForKeyedSubscript:](a2 objectForKeyedSubscript:{@"TMCurrentTime", "doubleValue"}];
            v83 = v82;
            [-[__CFString objectForKeyedSubscript:](a2 objectForKeyedSubscript:{@"TMTimeError", "doubleValue"}];
            v85 = v84;
            v86 = [-[__CFString objectForKeyedSubscript:](a2 objectForKeyedSubscript:{@"TMMachTime", "unsignedLongLongValue"}];
            *buf = 138413826;
            v92 = @"unknown";
            v93 = 2112;
            v94 = *&v77;
            v95 = 2048;
            v96 = v79;
            v97 = 2048;
            v98 = v81;
            v99 = 2048;
            v100 = v83;
            v101 = 2048;
            v102 = v85;
            v103 = 2048;
            v104 = v86;
            _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "cmd,%@,src,%@,rtc_s,%.9f,rtc_unc_s,%.9f,t_s,%.9f,unc_s,%.9f,mach,%llu", buf, 0x48u);
          }
        }

        goto LABEL_43;
      }

      [sub_1000021F0() resetTimeZone:?];
      goto LABEL_42;
    }

    sub_10000232C();

    sub_100012EC8(v89);
  }
}

void sub_100014DC8(void *a1, void *a2)
{
  if (a1)
  {
    v4 = [a1 isAutomaticTimeEnabled];
    v5 = qword_100033218;
    if (v4)
    {
      if (!sub_10000B1CC())
      {
        return;
      }

      *buf = 0;
      v6 = &_mh_execute_header;
      v7 = "Someone called TMSetManualTime while automatic time was enabled, discarding.";
      v8 = buf;
      v9 = v5;
LABEL_13:
      v26 = OS_LOG_TYPE_ERROR;
      v27 = 2;
LABEL_14:
      _os_log_error_impl(v6, v9, v26, v7, v8, v27);
      return;
    }

    if (sub_10000240C())
    {
      *buf = 138412290;
      tv_sec = a2;
      sub_100002D9C();
      _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    }

    v52.tv_sec = 0;
    *&v52.tv_usec = 0;
    [objc_msgSend(a2 objectForKey:{@"TMCurrentTime", "doubleValue"}];
    v16 = v15;
    sub_10000652C(&v52.tv_sec, v15);
    if ((v17 & 1) == 0)
    {
      v28 = qword_100033218;
      if (!sub_10000234C())
      {
        return;
      }

      *buf = 0;
      v6 = &_mh_execute_header;
      v7 = "Unable to convert CFAbsoluteTime to timeval";
      v8 = buf;
      v9 = v28;
      goto LABEL_13;
    }

    v18 = settimeofday(&v52, 0);
    if (v18)
    {
      if (!sub_10000234C())
      {
        return;
      }

      *buf = 134218240;
      tv_sec = v52.tv_sec;
      v56 = 1024;
      tv_usec = v52.tv_usec;
      sub_100002274();
      v27 = 18;
      goto LABEL_14;
    }

    v29 = a1[6];
    v30 = sub_10000B1AC(v18, v19, v20, v21, v22, v23, v24, v25, 0, 0, 0, 0, 0, 0, 0, 0, v52.tv_sec, *&v52.tv_usec, v53);
    if (v30)
    {
      v31 = v30;
      v32 = *v46;
      do
      {
        v33 = 0;
        do
        {
          if (*v46 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(v45 + 8 * v33);
          v35 = objc_opt_respondsToSelector();
          if (v35)
          {
            v35 = [v34 didSetManualTime:v16];
          }

          v33 = v33 + 1;
        }

        while (v31 != v33);
        v31 = sub_10000B1AC(v35, v36, v37, v38, v39, v40, v41, v42, v44, v45, v46, v47, v48, v49, v50, v51, v52.tv_sec, *&v52.tv_usec, v53);
      }

      while (v31);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SignificantTimeChangeNotification", 0, 0, 1u);
  }
}

void sub_100015024(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  sub_100002880();
  v4 = [TMTime timeWithDictionary:v3];
  v5 = *(v1 + 24);
  if (!v5)
  {
    v9 = [TMTimeSynthesizer alloc];
    [*(v1 + 56) RTCFrequencyTolerance];
    v11 = v10;
    [*(v1 + 56) RTCFrequencyNoiseDensity];
    v7 = [(TMTimeSynthesizer *)v9 initWithClockAccuracy:@"STF" noiseDensity:v11 name:v12];
    *(v1 + 24) = v7;
    goto LABEL_7;
  }

  v6 = [v5 isRunning];
  v7 = *(v1 + 24);
  if (!v6)
  {
LABEL_7:
    *v21 = 0;
    [(TMTimeSynthesizer *)v7 update:v4 withError:v21];
    if (*v21)
    {
      v13 = sub_1000021F0();
      sub_100013220(v13, v14, v15);
    }

    [v1 setSourceTime:v2];
    return;
  }

  if ([(TMTimeSynthesizer *)v7 intersects:v4])
  {
    v8 = *(v1 + 136);
    [(TMTime *)v4 rtc_s];
    [v8 resetRejectCountsForReason:1 rtc:?];
    v7 = *(v1 + 24);
    goto LABEL_7;
  }

  v16 = qword_100033218;
  if (sub_10000B1CC())
  {
    *v21 = 138412290;
    *&v21[4] = v4;
    sub_10000B140(&_mh_execute_header, v16, v17, "Recieved authenticated time that does not match current clamp, discarding: %@", v21);
  }

  [NSError errorWithDomain:@"kTimedErrorDomain" code:6 userInfo:0];
  v18 = sub_1000021F0();
  sub_100013220(v18, v19, v20);
}

BOOL sub_1000151C0(_BOOL8 result)
{
  if (result)
  {
    return [*(result + 8) currentTimeZone] != 0;
  }

  return result;
}

id sub_1000151EC(id result)
{
  if (result)
  {
    sub_10000245C();
    if (sub_10000240C())
    {
      [v1 objectForKeyedSubscript:@"TMSource"];
      [objc_msgSend(v1 objectForKeyedSubscript:{@"TMRtcTime", "doubleValue"}];
      sub_100002D80();
      sub_100002D9C();
      _os_log_impl(v3, v4, v5, v6, v7, 0x20u);
    }

    sub_100002254();
    sub_1000022A8();
    AnalyticsSendEventLazy();
    return [v2 resetTimeZone:v1];
  }

  return result;
}

NSDictionary *sub_100015314(NSDictionary *result)
{
  if (result)
  {
    v1 = @"TMBBTimeActive";
    v2 = [NSNumber numberWithBool:[(NSDictionary *)result requiresActiveBBTime]];
    return [NSDictionary dictionaryWithObjects:&v2 forKeys:&v1 count:1];
  }

  return result;
}

id *sub_1000153A8(id *result, void *a2)
{
  if (result)
  {
    v3 = result;
    if (sub_10000240C())
    {
      [a2 objectForKeyedSubscript:@"TMSource"];
      [objc_msgSend(a2 objectForKeyedSubscript:{@"TMRtcTime", "doubleValue"}];
      v5 = v4;
      [objc_msgSend(a2 objectForKeyedSubscript:{@"TMRTCConversionTimeError", "doubleValue"}];
      v7 = v6;
      [objc_msgSend(a2 objectForKeyedSubscript:{@"TMCurrentTime", "doubleValue"}];
      v9 = v8;
      [objc_msgSend(a2 objectForKeyedSubscript:{@"TMTimeError", "doubleValue"}];
      v11 = v10;
      v12 = [sub_100001C24() unsignedLongLongValue];
      v13 = [objc_msgSend(a2 objectForKeyedSubscript:{@"TMAbsoluteNanoTime", "longLongValue"}];
      v14 = [objc_msgSend(a2 objectForKeyedSubscript:{@"TMNanoTimeError", "longLongValue"}];
      v15 = [sub_100001C24() unsignedLongLongValue];
      [objc_msgSend(a2 objectForKeyedSubscript:{@"TMMachTimeAfter", "unsignedLongLongValue"}];
      LODWORD(v26[0]) = 138414850;
      sub_100002D80();
      v26[3] = v5;
      v27 = v16;
      v28 = v7;
      v29 = v16;
      v30 = v9;
      v31 = v16;
      v32 = v11;
      v33 = v16;
      v34 = v12;
      v35 = v16;
      v36 = v13;
      v37 = v16;
      v38 = v14;
      v39 = v16;
      v40 = v15;
      v41 = v16;
      v42 = v17;
      sub_100002D9C();
      _os_log_impl(v18, v19, v20, v21, v22, 0x70u);
    }

    sub_100002254();
    sub_1000022A8();
    AnalyticsSendEventLazy();
    v26[0] = 0;
    [v3[2] update:+[TMTime timeWithDictionary:](TMTime withError:{"timeWithDictionary:", a2), v26}];
    if (v26[0])
    {
      v23 = sub_1000021F0();
      sub_10001303C(v23, v24, v25);
    }

    [+[NSNotificationCenter defaultCenter](NSNotificationCenter postNotificationName:"postNotificationName:object:userInfo:" object:@"TMSystemTimeChanged" userInfo:v3, &__NSDictionary0__struct];
    [v3 testAndApplySystemTime];
    return [v3 checkActiveTimeSourceRequired];
  }

  return result;
}

id sub_10001566C(id result, void *a2, void *a3)
{
  if (result)
  {
    v5 = result;
    if (sub_1000023E4())
    {
      sub_1000023FC();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
    }

    if (sub_1000023E4())
    {
      [a2 objectForKeyedSubscript:@"TMSource"];
      [objc_msgSend(a2 objectForKeyedSubscript:{@"TMRtcTime", "doubleValue"}];
      sub_10000243C();
      sub_1000023FC();
      _os_log_impl(v11, v12, v13, v14, v15, 0x20u);
    }

    sub_100002254();
    sub_1000022A8();
    AnalyticsSendEventLazy();
    if ([v5 isSystemTimeSet])
    {
      if (sub_100002914())
      {
        sub_10000292C();
        _os_log_impl(v16, v17, v18, v19, v20, 2u);
      }

      [NSDictionary dictionaryWithObject:[NSNumber numberWithBool:1] forKey:@"TMSetupSuccessful"];
      v21 = sub_10000B198();
      return v22(v21);
    }

    else
    {
      return sub_100015844(v5, a3);
    }
  }

  return result;
}

id sub_100015844(id result, void *aBlock)
{
  if (result)
  {
    v2 = result;
    if (aBlock)
    {
      v3 = _Block_copy(aBlock);
      [*(v2 + 72) addObject:v3];
    }

    v4 = *(v2 + 32);

    return [v4 fetchTime];
  }

  return result;
}

void sub_1000158A0(uint64_t a1)
{
  if (a1)
  {
    v1 = qword_100033218;
    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      sub_100002988(&_mh_execute_header, v1, v2, "Sending TMLocationTimeZoneActiveNotification", v8);
    }

    CFNotificationCenterGetDarwinNotifyCenter();
    sub_100002978();
    CFNotificationCenterPostNotification(v3, v4, v5, v6, v7);
  }
}

void sub_100015D98()
{
  sub_100002230();
  sub_100002430();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

id sub_100015EA0(id *a1, uint64_t a2, void *a3)
{
  if ([*a1 systemTimeSet])
  {
    v6 = [*a1 filesystemTimestampOfPath:a2];
  }

  else
  {
    if (sub_1000023E4())
    {
      LOWORD(v13) = 0;
      sub_10000B108();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
    }

    v6 = 0;
  }

  *a3 = v6;
  return [*a1 emptyPath:{a2, v13}];
}

id sub_100015FAC()
{
  +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"TMNanoTimeInterval TMNanoTimeIntervalFromCF(CFTimeInterval)"];
  return [sub_10000B158() handleFailureInFunction:? file:? lineNumber:? description:?];
}

id sub_100016020()
{
  +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"TMNanoTimeInterval TMNanoTimeIntervalFromCF(CFTimeInterval)"];
  return [sub_10000B158() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void sub_100016114()
{
  sub_100002230();
  sub_100002430();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100016184()
{
  sub_10000B164();
  sub_100002430();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000161C0(uint64_t *a1)
{
  v6 = *a1;
  sub_100002430();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

uint64_t sub_1000162AC(uint64_t a1, IOPMAssertionID *a2, char a3)
{
  sub_10000B164();
  sub_100002430();
  _os_log_error_impl(v5, v6, v7, v8, v9, 2u);
  IOPMAssertionRelease(*a2);
  return a3 & 1;
}

void sub_100016304(id *a1, double a2)
{
  v4 = qword_100033218;
  if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [NSDate dateWithTimeIntervalSinceReferenceDate:a2];
    v6 = [objc_msgSend(*a1 "source")];
    v7 = 138412802;
    v8 = v5;
    v9 = 2080;
    v10 = v6;
    v11 = 2080;
    v12 = "should not set system time";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Not setting system time to %@ from %s because %s\n", &v7, 0x20u);
  }
}

void sub_100016408(uint64_t a1)
{
  v6 = *(a1 + 40);
  sub_100002430();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100016480(uint64_t a1, double a2, double a3)
{
  v6 = [*(a1 + 40) mutableCopy];
  [(__CFString *)v6 setObject:[NSNumber forKeyedSubscript:"numberWithDouble:" numberWithDouble:a2], @"TMRtcTime"];
  [(__CFString *)v6 setObject:[NSNumber forKeyedSubscript:"numberWithDouble:" numberWithDouble:a3], @"TMRTCConversionTimeError"];
  v7 = [(__CFString *)v6 objectForKeyedSubscript:@"TMTimeError"];
  if (v7)
  {
    [v7 doubleValue];
    [(__CFString *)v6 setObject:[NSNumber forKeyedSubscript:"numberWithDouble:" numberWithDouble:?], @"TMTimeError"];
  }

  v9 = [(__CFString *)v6 objectForKeyedSubscript:@"TMNanoTimeError"];
  if (v9)
  {
    -[__CFString setObject:forKeyedSubscript:](v6, "setObject:forKeyedSubscript:", +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v9 longLongValue] + (a3 * 1000000000.0)), @"TMNanoTimeError");
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 48);

  sub_1000141E0(v10, v6, v11);
}

uint64_t sub_1000165C8()
{
  if (sub_100002914())
  {
    LOWORD(v8) = 0;
    sub_10000292C();
    _os_log_impl(v0, v1, v2, v3, v4, 2u);
  }

  [NSDictionary dictionaryWithObject:[NSNumber numberWithBool:1 forKey:v8], @"TMSetupSuccessful"];
  v5 = sub_10000B198();
  return v6(v5);
}

void sub_10001665C(const void *a1, const void *a2, const void *a3)
{
  _Block_object_dispose(a1, 8);
  _Block_object_dispose(a2, 8);
  _Block_object_dispose(a3, 8);
}

id sub_1000166A0(double a1)
{
  sub_100002880();
  if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_FAULT))
  {
    *v9 = 0;
    sub_10000B170(&_mh_execute_header, v4, v5, "RTC has walked backwards during sleep, resetting synthesizer", v9);
    v2 = *v1;
  }

  [v2 rtcDidReset];
  v6 = [TMMonotonicClock alloc];
  [*(*v1 + 7) RTCMachSyncInterval];
  v7 = [(TMMonotonicClock *)v6 initWithSyncInterval:?];
  [*v1 setClock:v7];

  sub_100012EC8(*v1);
  *(*v1 + 15) = a1;
  return [*(*v1 + 4) fetchTime];
}

void sub_100016774()
{
  sub_10000B164();
  sub_100002430();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000167B0()
{
  sub_100002230();
  sub_100002430();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void *sub_100016860(void *a1)
{
  [a1 objectForKeyedSubscript:@"TMTimeZone"];
  v1 = sub_1000023B8();
  return sub_100012F48(v1, v2, v3, v4, v5, v6, v7, v8);
}

void sub_1000168A0()
{
  sub_10000B164();
  sub_100002430();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100016964()
{
  sub_100002230();
  sub_100002430();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

id sub_1000169D4(id result)
{
  if (result)
  {
    sub_10000245C();
    if (sub_10000240C())
    {
      v9 = 138412290;
      v10 = v2;
      sub_100002280(&_mh_execute_header, v3, v4, "%@", &v9);
    }

    if (sub_10000240C())
    {
      v9 = 138412290;
      v10 = v1;
      sub_100002280(&_mh_execute_header, v5, v6, "TZ,fetch,src,%@", &v9);
    }

    v7 = *(v2 + 40);
    sub_1000029A0();
    return [v8 timeZoneManager:? shouldFetch:?];
  }

  return result;
}

void sub_100016AB4(id *a1, id *a2)
{
  if (!a1)
  {
    return;
  }

  if (sub_10000240C())
  {
    *buf = 138412290;
    v18 = a1;
    sub_100002280(&_mh_execute_header, v4, v5, "%@", buf);
  }

  if (sub_10000240C())
  {
    *buf = 138412290;
    v18 = a2;
    sub_100002280(&_mh_execute_header, v6, v7, "TZ,recompute,src,%@", buf);
  }

  v8 = sub_100002698(a1, v6);
  v9 = [a1[1] objectForKeyedSubscript:a2];
  if (!v9)
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:"recomputeDueToSource:" file:a1 lineNumber:@"TMTimeZoneManager.m" description:39, @"Cannot recompute based on source %@, when there is no recorded input for it.", a2];
  }

  if ([v8 isEqualToString:a2])
  {
    [a1 setCurrentTimeZone:v9];
    v10 = qword_100033220;
    if (os_log_type_enabled(qword_100033220, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v9 olsonName];
      *buf = 138412290;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "TZ,computed,result,%@", buf, 0xCu);
    }

    [a1[5] timeZoneManager:a1 didComputeResult:v9];
    return;
  }

  if ([v9 hasSameOlsonNameAs:{objc_msgSend(a1[1], "objectForKeyedSubscript:", v8)}])
  {
    return;
  }

  if (v8 && [a1[1] objectForKeyedSubscript:v8])
  {
    AnalyticsSendEventLazy();
  }

  if (sub_10000B29C(TMTimeZoneManager, a2, v8))
  {
    v12 = qword_100033220;
    if (!os_log_type_enabled(qword_100033220, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 138412546;
    v18 = a2;
    v19 = 2112;
    v20 = v8;
    v13 = "not recomputing because %@ and %@ come from same technology";
    v14 = v12;
    v15 = 22;
    goto LABEL_22;
  }

  if (![v8 isEqualToString:@"LocationBorder"])
  {
    [a1 setCurrentTimeZone:0];
    sub_1000169D4(a1);
    return;
  }

  v16 = qword_100033220;
  if (os_log_type_enabled(qword_100033220, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v8;
    v13 = "not recomputing because %@ source is not fetchable";
    v14 = v16;
    v15 = 12;
LABEL_22:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
  }
}

id sub_100016FB8()
{
  sub_10000245C();
  +[NSAssertionHandler currentHandler];
  sub_1000029A0();
  return [v0 handleFailureInMethod:@"source" object:? file:? lineNumber:? description:?];
}

id sub_100017014(id *a1, uint64_t a2, id *a3)
{
  [*a1 addObject:a2];
  [a3[1] setObject:0 forKeyedSubscript:a2];
  result = [sub_100002698(a3 v5)];
  if (result)
  {
    return sub_1000169D4(a3);
  }

  return result;
}

id sub_100017078()
{
  sub_10000245C();
  +[NSAssertionHandler currentHandler];
  sub_1000029A0();
  return [v0 handleFailureInMethod:@"source" object:? file:? lineNumber:? description:?];
}

void sub_1000170D4(uint64_t a1, uint64_t a2, id *a3)
{
  sub_10000245C();
  v8 = [v3 isEqualToString:{sub_100002698(v6, v7)}];
  [*a3 removeObject:v3];
  if (v8)
  {
    v10 = sub_100002698(v4, v9);
    if (sub_10000B29C(TMTimeZoneManager, v3, v10))
    {
      v11 = qword_100033220;
      if (os_log_type_enabled(qword_100033220, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412546;
        v13 = v10;
        v14 = 2112;
        v15 = v3;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "not fetching %@ due to same technology as %@", &v12, 0x16u);
      }
    }

    else if (v10)
    {
      sub_1000169D4(v4);
    }
  }
}

id sub_1000171F0()
{
  sub_10000245C();
  +[NSAssertionHandler currentHandler];
  sub_1000029A0();
  return [v0 handleFailureInMethod:@"source" object:? file:? lineNumber:? description:?];
}

void sub_1000172E8(__int16 a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1 & 0xFFF;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "System power message: 0x%03x", v2, 8u);
}

void sub_1000173BC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "%@ entitlement must be a true BOOLean", &v2, 0xCu);
}

void sub_1000175E4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to create NSKeyedUnarchiver for data: %@", &v2, 0xCu);
}

void sub_10001765C()
{
  v0 = qword_100033218;
  if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Expected to decode object of class TMTimeSynthesizer", v1, 2u);
  }

  objc_end_catch();
}

void sub_1000176CC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to serialize synthesizer: %@", &v2, 0xCu);
}

void sub_100017744(void *a1)
{
  if (a1)
  {
    v2 = os_transaction_create();
    v3 = qword_100033218;
    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      sub_100002988(&_mh_execute_header, v3, v4, "NTP job timer fired", v10);
    }

    if ([a1 isFetchingTime])
    {
      if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_INFO))
      {
        sub_100002424();
        sub_100002988(v5, v6, v7, v8, v9);
      }
    }

    else
    {
      sub_10000D0E8(a1);
    }
  }
}

dispatch_queue_t *sub_100017814(dispatch_queue_t *result)
{
  if (result)
  {
    v2 = result;
    dispatch_assert_queue_V2(result[3]);
    result = [v2 isFetchingTime];
    if ((result & 1) == 0)
    {
      [v2 setFetchingTime:1];
      [objc_msgSend(v2 "clock")];
      [v2 setLastFetchAttempt:?];
      v58 = [objc_msgSend(v2 "clock")];
      v3 = qword_100033218;
      if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        sub_100002988(&_mh_execute_header, v3, v4, "Fetching NTP time.", buf);
      }

      v68 = xmmword_10001D220;
      AssertionID = 0;
      v5 = IOPMAssertionCreateWithDescription(@"NoIdleSleepAssertion", @"com.apple.timed.ntp", 0, 0, 0, 110.0, @"TimeoutActionTurnOff", &AssertionID);
      if (!v5)
      {
        goto LABEL_9;
      }

      v6 = v5;
      if (sub_10000234C())
      {
        *buf = 67109120;
        *v70 = v6;
        sub_100002274();
        _os_log_error_impl(v51, v52, v53, v54, v55, 8u);
      }

      if (([v2[9] shouldPowerAssertionsBeOptional] & 1) == 0)
      {
        return [v2 setReachabilityTransaction:0];
      }

      else
      {
LABEL_9:
        v61 = [v2[9] NTPUseServicePort];
        v57 = [objc_msgSend(v2[9] "NTPServerAddress")];
        v60 = [objc_msgSend(v2[9] "NTPServerPort")];
        v7 = malloc_type_calloc(3uLL, 0x50uLL, 0x10000404247E4FDuLL);
        v8 = 0;
        v56 = v2;
        while (1)
        {
          dword_100033210 = arc4random();
          dword_100033214 = arc4random();
          memset(__src, 0, sizeof(__src));
          sntp_client_unicast(v57, v8, v60, &v68, sub_10000D660, v61, __src);
          if (LODWORD(__src[0]) && sub_10000234C())
          {
            v30 = *__error();
            v31 = __error();
            v32 = strerror(*v31);
            *buf = 67109378;
            *v70 = v30;
            *&v70[4] = 2080;
            *&v70[6] = v32;
            sub_100002274();
            _os_log_error_impl(v33, v34, v35, "errno is %d %s", v36, 0x12u);
          }

          DWORD1(__src[0]) -= dword_100033210;
          DWORD2(__src[0]) -= dword_100033214;
          HIDWORD(__src[1]) -= dword_100033210;
          LODWORD(__src[2]) -= dword_100033214;
          v9 = mach_absolute_time();
          v10 = [objc_msgSend(v2 "clock")];
          v11 = sntp_calc_delay(__src);
          v13 = sntp_datestamp_to_double(v11, v12);
          v14 = sntp_calc_mean(__src);
          v16 = sntp_datestamp_to_timeval(v14, v15);
          v18 = v17;
          v59 = v1 & 0xFFFFFFFF00000000 | HIDWORD(__src[2]);
          v19 = sntp_timestamp_from_shortstamp(SHIDWORD(__src[2]));
          v20 = sntp_timestamp_to_datestamp(v19);
          v22 = sntp_datestamp_to_double(v20, v21);
          sntp_exchange_ntop(v84, 0x2Eu, __src);
          [NSString stringWithUTF8String:v84];
          v23 = qword_100033220;
          if (os_log_type_enabled(qword_100033220, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67112448;
            *v70 = __src[0];
            *&v70[4] = 1024;
            *&v70[6] = DWORD1(__src[0]);
            *&v70[10] = 1024;
            *&v70[12] = DWORD2(__src[0]);
            *&v70[16] = 1024;
            *&v70[18] = HIDWORD(__src[0]);
            LOWORD(v71) = 1024;
            *(&v71 + 2) = __src[1];
            HIWORD(v71) = 1024;
            *v72 = DWORD1(__src[1]);
            *&v72[4] = 1024;
            *&v72[6] = DWORD2(__src[1]);
            v73 = 1024;
            *v74 = HIDWORD(__src[1]);
            *&v74[4] = 1024;
            *&v74[6] = __src[2];
            LOWORD(v75) = 1024;
            *(&v75 + 2) = BYTE4(__src[2]) >> 6;
            HIWORD(v75) = 1024;
            *v76 = WORD4(__src[2]);
            *&v76[4] = 1024;
            *v77 = WORD5(__src[2]);
            *&v77[4] = 1024;
            *&v77[6] = WORD6(__src[2]);
            v78 = 1024;
            v79 = HIWORD(__src[2]);
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "cmd,ntpPacket,result,%d,t1,%x.%x,t2,%x.%x,t3,%x.%x,t4,%x.%x,leap,%02x,delay,%02hx.%02hx,dispersion,%02hx.%02hx,", buf, 0x56u);
            v23 = qword_100033220;
          }

          v24 = v16 - 2208988800;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67111938;
            *v70 = v8;
            *&v70[4] = 1024;
            *&v70[6] = __src[0];
            *&v70[10] = 2048;
            *&v70[12] = v9;
            *&v70[20] = 2048;
            v71 = v24;
            *v72 = 2048;
            *&v72[2] = v18;
            v73 = 2048;
            *v74 = v13;
            *&v74[8] = 2048;
            v75 = v22;
            *v76 = 1024;
            *&v76[2] = 1;
            *v77 = 2080;
            *&v77[2] = v84;
            v78 = 1024;
            v79 = v60;
            v80 = 1024;
            v81 = v10 ^ 1;
            v82 = 1024;
            v83 = v61;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "cmd,fetchTime,num,%d,result,%d,mach,%llu,tv_sec,%lld,tv_usec,%lld,delay,%lf,dispersion,%lf,more,%d,ip,%s,port,%d,slept,%d,use_service_port,%d", buf, 0x62u);
          }

          memcpy(v62, __src, sizeof(v62));
          v63 = v60;
          v64 = v10 ^ 1;
          v65 = v61;
          AnalyticsSendEventLazy();
          if ((v10 & 1) == 0)
          {
            break;
          }

          memcpy(v7, __src, 0x50uLL);
          v2 = v56;
          v1 = v59;
          if (LODWORD(__src[0]) > 0xA || ((1 << SLOBYTE(__src[0])) & 0x507) == 0)
          {
            v25 = *(v56 + 96);
            *(v56 + 96) = v25 + 1;
            if (v25 >= [*(v56 + 72) NTPServicePortMaxRetries])
            {
              v26 = qword_100033218;
              if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT))
              {
                v27 = *(v56 + 96);
                v28 = [*(v56 + 72) NTPUseServicePort];
                *buf = 134218242;
                v29 = "high";
                if (v28)
                {
                  v29 = "low";
                }

                *v70 = v27;
                *&v70[8] = 2080;
                *&v70[10] = v29;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "NTP failed %lld times, switching off of %s source port.", buf, 0x16u);
              }

              *(v56 + 96) = 0;
              [*(v56 + 72) setNTPUseServicePort:{objc_msgSend(*(v56 + 72), "NTPUseServicePort") ^ 1}];
            }
          }

          ++v8;
          v7 += 80;
          if (v8 == 3)
          {
            goto LABEL_28;
          }
        }

        v2 = v56;
        if (sub_10000234C())
        {
          *buf = 0;
          sub_100002274();
          _os_log_error_impl(v39, v40, v41, v42, v43, 2u);
        }

        [v56 setFetchingTime:0];
        v44 = IOPMAssertionRelease(AssertionID);
        if (v44)
        {
          v45 = v44;
          if (sub_10000234C())
          {
            *buf = 67109120;
            *v70 = v45;
            sub_100002274();
            _os_log_error_impl(v46, v47, v48, v49, v50, 8u);
          }
        }

        sub_100018054(v56);
LABEL_28:
        v37 = [v2 clock];
        v38 = v2[3];
        return [v37 montonicTimeForMachTime:? toQueue:? withCompletionHandler:?];
      }
    }
  }

  return result;
}

void sub_100018054(uint64_t a1)
{
  if (a1)
  {
    if ([a1 burstRetryCount] < 1)
    {
      v6 = qword_100033218;
      if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        sub_100002424();
        _os_log_impl(v7, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
        v6 = qword_100033218;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LOWORD(v16) = 0;
        sub_100002424();
        sub_100002988(v11, v12, v13, v14, v15);
      }

      [a1 setReachabilityTransaction:{0, v16}];
      [*(a1 + 80) checkActiveTimeSourceRequired];
    }

    else
    {
      [a1 setBurstRetryCount:{objc_msgSend(a1, "burstRetryCount") - 1}];
      v2 = os_transaction_create();
      [*(a1 + 72) NTPBurstRetryInterval];
      v4 = dispatch_time(0, (v3 * 1000000000.0));
      v5 = *(a1 + 24);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000181B8;
      block[3] = &unk_100028E18;
      block[4] = a1;
      block[5] = v2;
      dispatch_after(v4, v5, block);
    }
  }
}

void sub_1000181B8(uint64_t a1)
{
  sub_100017814(*(a1 + 32));
  v2 = *(a1 + 40);
}

void sub_1000181FC()
{
  v0 = SCError();
  SCErrorString(v0);
  sub_100002230();
  sub_100002274();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100018288()
{
  v0 = SCError();
  SCErrorString(v0);
  sub_100002230();
  sub_100002274();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100018314()
{
  v0 = SCError();
  SCErrorString(v0);
  sub_100002230();
  sub_100002274();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

uint64_t sub_100018414(void *a1)
{
  if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT))
  {
    sub_100002424();
    _os_log_impl(v2, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
  }

  return objc_sync_exit(a1);
}

void sub_1000184B0(unsigned __int8 a1, int a2, os_log_t log)
{
  v3[0] = 67109376;
  v3[1] = a2;
  v4 = 1024;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "setFetchingTime:%d called when _fetchingTime=%d", v3, 0xEu);
}

void sub_100018568(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "IOPMAssertionRelease failed with return code %d", v2, 8u);
}

id sub_1000185E0()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"BOOL _timesIntersect(CFAbsoluteTime, CFTimeInterval, NSString *, CFAbsoluteTime, CFTimeInterval)"];

  return [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"TMTimeSynthesizer+Clamping.m" lineNumber:16 description:@"Negative uncertainty"];
}

id *sub_10001864C(id *result)
{
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = [result[1] objectForKey:@"TMAutomaticTimeEnabled"];
  if (v3)
  {
    v1 = v3;
    v4 = qword_100033218;
    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v1;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Migrating old coupled value (%@)\n", buf, 0xCu);
    }

    v5 = [v2[1] objectForKey:@"TMAutomaticTimeZoneEnabled"];
    v6 = [v2[1] objectForKey:@"TMAutomaticTimeOnlyEnabled"];
    if (v5)
    {
      v7 = qword_100033218;
      if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Time zone key present (%@), not migrating\n", buf, 0xCu);
      }

      if (v6)
      {
        goto LABEL_9;
      }
    }

    else
    {
      [v2[1] setObject:v1 forKey:@"TMAutomaticTimeZoneEnabled"];
      if (v6)
      {
LABEL_9:
        v1 = qword_100033218;
        if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v23 = v6;
          _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Time key present (%@), not migrating\n", buf, 0xCu);
        }

        goto LABEL_13;
      }
    }

    [v2[1] setObject:v1 forKey:@"TMAutomaticTimeOnlyEnabled"];
LABEL_13:
    [v2[1] removeObjectForKey:@"TMAutomaticTimeEnabled"];
    [v2[1] synchronize];
  }

  v21[0] = &__kCFBooleanTrue;
  v21[1] = -[NSObject numberWithInt:](v1, "numberWithInt:", [sub_10000229C() isAppleTV] ^ 1);
  v20[2] = @"NtpSchedulingInterval";
  v8 = [sub_10000229C() isAppleTV];
  v9 = 900.0;
  if (v8)
  {
    v9 = 10.0;
  }

  v21[2] = [v1 numberWithDouble:v9];
  v20[3] = @"NtpBurstRetryAttempts";
  if ([sub_10000229C() isAppleTV])
  {
    v10 = 0;
  }

  else
  {
    v10 = 3;
  }

  v21[3] = [v1 numberWithInt:v10];
  v21[4] = &off_10002C0C0;
  v20[4] = @"NtpBurstRetryInterval";
  v20[5] = @"NtpUnsetSchedulingInterval";
  v11 = [sub_10000229C() isAppleTV];
  v12 = 300.0;
  if (v11)
  {
    v12 = 10.0;
  }

  v21[5] = [v1 numberWithDouble:v12];
  v21[6] = &__kCFBooleanTrue;
  v20[6] = @"NtpUseServicePort";
  v20[7] = @"NtpServicePortMaxRetries";
  v21[7] = &off_10002C658;
  v21[8] = @"123";
  v20[8] = @"NtpTimeServerPort";
  v20[9] = @"FetchTimeOnWake";
  v21[9] = -[NSObject numberWithBool:](v1, "numberWithBool:", [sub_10000229C() isMac]);
  v20[10] = @"UseFilesystemTimestamp";
  v21[10] = [NSNumber numberWithBool:sub_100005F84()];
  v21[11] = &off_10002C0B0;
  v20[11] = @"SettimeofdayThreshold";
  v20[12] = @"TimeProvider";
  v21[12] = @"Filtered";
  v20[13] = @"RTCWakeUncertainty";
  v13 = sub_100005F84();
  v14 = 0.5;
  if (v13)
  {
    v14 = 0.0;
  }

  v21[13] = [NSNumber numberWithDouble:v14];
  v20[14] = @"CommandHistorySize";
  if (os_variant_has_internal_diagnostics())
  {
    v15 = 1500;
  }

  else
  {
    v15 = 0;
  }

  v21[14] = [NSNumber numberWithInt:v15];
  v20[15] = @"RTCMachSyncInterval";
  v21[15] = [NSNumber numberWithDouble:sub_100001EB0() * 5.0];
  v20[16] = @"RTCFrequencyTolerance";
  v16 = [sub_10000229C() isWatch];
  v17 = 0.00003;
  if (v16)
  {
    v17 = 0.000008;
  }

  v21[16] = [NSNumber numberWithDouble:v17];
  v20[17] = @"RTCFrequencyNoiseDensity";
  v18 = [sub_10000229C() isWatch];
  v19 = 2.78e-14;
  if (v18)
  {
    v19 = 2.78e-16;
  }

  v20[18] = @"MAAssetRetryInterval";
  v21[17] = [NSNumber numberWithDouble:v19];
  v21[18] = &off_10002C670;
  [v2[1] registerDefaults:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v21, v20, 19)}];
  return [v2 setAccurateThresholds:{objc_msgSend(v2, "shouldUseAccurateThresholdsByDefault")}];
}

uint64_t sub_100018B00(void *a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v4 = [a1 lastQualityTime];
    if (v4)
    {
      [a2 utc_s];
      v6 = v5;
      [v4 utc_s];
      v8 = vabdd_f64(v6, v7);
      v9 = *(v2 + 96);
      [v4 utcUnc_s];
      v11 = v10 + v8 * v9;
      [a2 rtc_s];
      v13 = v12;
      [v4 rtc_s];
      v15 = v13 - v14;
      [a2 utc_s];
      v17 = v16;
      [v4 utc_s];
      if (vabdd_f64(v15, v17 - v18) <= v11 * 5.0)
      {
        v2 = 1;
        goto LABEL_9;
      }

      v19 = qword_100033220;
      if (os_log_type_enabled(qword_100033220, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(v2 + 128);
        [a2 rtc_s];
        v22 = v21;
        [a2 utc_s];
        v24 = v23;
        [a2 utcUnc_s];
        v26 = v25;
        [v4 rtc_s];
        v28 = v27;
        [v4 utc_s];
        v30 = v29;
        [v4 utcUnc_s];
        v33 = 138414082;
        v34 = v20;
        v35 = 2048;
        v36 = v22;
        v37 = 2048;
        v38 = v24;
        v39 = 2048;
        v40 = v26;
        v41 = 2048;
        v42 = v28;
        v43 = 2048;
        v44 = v30;
        v45 = 2048;
        v46 = v31;
        v47 = 2112;
        v48 = [v4 source];
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@,BadReliability,rtc,%.6lf,utc,%.6lf,unc,%.6lf,Rtc,%.6lf,Utc,%.6lf,Unc,%.6lf,Src,%@", &v33, 0x52u);
      }

      [v2 displayLastQualityTime];
    }

    v2 = 0;
LABEL_9:
  }

  return v2;
}

id sub_100018D04(id result, void *a2)
{
  if (result)
  {
    v3 = result;
    result = sub_10000EE9C(TMTimeSynthesizer, [a2 source]);
    if (result)
    {

      return [v3 setLastQualityTime:a2];
    }
  }

  return result;
}

TMTimeSynthesizerStates *sub_100018D7C(uint64_t a1, double a2)
{
  if (!a1 || *(a1 + 120) != 1)
  {
    return 0;
  }

  v4 = objc_alloc_init(TMTimeSynthesizerStates);
  v5 = a2 - *(a1 + 8);
  [(TMTimeSynthesizerStates *)v4 setRtc:a2];
  [(TMTimeSynthesizerStates *)v4 setUtc:*(a1 + 16) + *(a1 + 24) * v5];
  [(TMTimeSynthesizerStates *)v4 setRateSf:*(a1 + 24)];
  if (v5 >= 0.0)
  {
    v6 = v5;
  }

  else
  {
    v6 = -v5;
  }

  v7 = *(a1 + 88);
  v8 = v6 * v6 * v7 * 0.5;
  v9 = v6 * v7;
  [(TMTimeSynthesizerStates *)v4 setUtc_var:v6 * (v6 * v6) * v7 / 3.0 + *(a1 + 48) + (*(a1 + 64) + *(a1 + 64)) * v6 + *(a1 + 56) * (v6 * v6)];
  [(TMTimeSynthesizerStates *)v4 setUtc_sf_cov:v8 + *(a1 + 64) + *(a1 + 56) * v6];
  [(TMTimeSynthesizerStates *)v4 setSf_var:v9 + *(a1 + 56)];

  return v4;
}

void *sub_100018EA0(void *result, void *a2)
{
  if (result)
  {
    v3 = result;
    result[9] = 0;
    [a2 rtc_s];
    *(v3 + 1) = v4;
    [a2 utc_s];
    *(v3 + 2) = v5;
    [a2 utcUnc_s];
    v7 = v6;
    [a2 utcUnc_s];
    *(v3 + 6) = v7 * v8;
    v9 = *(v3 + 12);
    if (v9 < 0.00001)
    {
      *(v3 + 3) = 0x3FF0000000000000;
    }

    *(v3 + 7) = v9 * v9;
    *(v3 + 8) = 0;
    *(v3 + 120) = 1;
    *(v3 + 26) = 1;
    [v3 setLastInputSource:{objc_msgSend(a2, "source")}];
    v10 = qword_100033220;
    if (os_log_type_enabled(qword_100033220, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(v3 + 16);
      v12 = *(v3 + 1);
      v13 = *(v3 + 2);
      v14 = sqrt(*(v3 + 6));
      v15 = *(v3 + 3);
      v16 = sqrt(*(v3 + 7));
      v17 = sqrt(*(v3 + 8));
      v18 = log10(*(v3 + 11));
      [a2 rtc_s];
      v20 = v19;
      [a2 utc_s];
      v22 = v21;
      [a2 utcUnc_s];
      v24 = v23;
      v25 = [a2 source];
      v26 = *(v3 + 2);
      v27 = *(v3 + 3);
      v28 = *(v3 + 7);
      v29 = sqrt(*(v3 + 6));
      v30 = *(v3 + 26);
      *buf = 138416386;
      v32 = v11;
      v33 = 2048;
      v34 = v12;
      v35 = 2048;
      v36 = v13;
      v37 = 2048;
      v38 = v14;
      v39 = 2048;
      v40 = v15;
      v41 = 2048;
      v42 = v16;
      v43 = 2048;
      v44 = v17;
      v45 = 2048;
      v46 = v18;
      v47 = 2048;
      v48 = v20;
      v49 = 2048;
      v50 = v22;
      v51 = 2048;
      v52 = v24;
      v53 = 2112;
      v54 = v25;
      v55 = 2048;
      v56 = v26;
      v57 = 2048;
      v58 = v29;
      v59 = 2048;
      v60 = v27;
      v61 = 2048;
      v62 = sqrt(v28);
      v63 = 1024;
      v64 = v30;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@,SynthesizedClock,rtc,%.6lf,utc,%.6lf,utcUnc,%.6lf,sf,%.8lf,sfUnc,%.8lf,utcSfCov,%.8lf,logNoise,%.6lf,timeRtc,%.6lf,timeUtc,%.6lf,timeUnc,%.6lf,timeSource,%@,predUtc,%.6lf,predUtcUnc,%.6lf,predSf,%.8lf,predSfUnc,%.8lf,measNumber,%d", buf, 0xA8u);
    }

    AnalyticsSendEventLazy();
    [v3 setLastQualityTime:0];
    if (sub_10000EE9C(TMTimeSynthesizer, [a2 source]))
    {
      [v3 setLastQualityTime:a2];
    }

    return [v3 displayLastQualityTime];
  }

  return result;
}