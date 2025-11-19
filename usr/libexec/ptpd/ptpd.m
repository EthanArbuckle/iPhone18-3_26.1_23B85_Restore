void sub_100001464(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  __ICOSLogCreate();
  v5 = @"<USB>";
  v6 = [(__CFString *)v5 length];
  if (a3 > -536870656)
  {
    if (a3 == -536870655)
    {
      if (v6 >= 0x15)
      {
        v29 = [(__CFString *)v5 substringWithRange:0, 18];
        v30 = [v29 stringByAppendingString:@".."];

        v5 = v30;
      }

      v9 = [NSString stringWithFormat:@"📣 Device Notified: kIOMessageServiceIsAttemptingOpen"];
      v10 = _gICOSLog;
      if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (a3 != -536870640)
      {
LABEL_14:
        if (v6 >= 0x15)
        {
          v13 = [(__CFString *)v5 substringWithRange:0, 18];
          v14 = [v13 stringByAppendingString:@".."];

          v5 = v14;
        }

        v9 = [NSString stringWithFormat:@"📣 Device Notified: 0x%x", a3];
        v10 = _gICOSLog;
        if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      if (v6 >= 0x15)
      {
        v11 = [(__CFString *)v5 substringWithRange:0, 18];
        v12 = [v11 stringByAppendingString:@".."];

        v5 = v12;
      }

      v9 = [NSString stringWithFormat:@"📣 Device Notified: kIOMessageServiceWasClosed"];
      v10 = _gICOSLog;
      if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }
    }

LABEL_31:
    v31 = v5;
    v32 = v10;
    *buf = 136446466;
    v34 = [(__CFString *)v5 UTF8String];
    v35 = 2114;
    v36 = v9;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);

LABEL_32:
    goto LABEL_33;
  }

  if (a3 != -536870896)
  {
    if (a3 == -536870656)
    {
      if (v6 >= 0x15)
      {
        v7 = [(__CFString *)v5 substringWithRange:0, 18];
        v8 = [v7 stringByAppendingString:@".."];

        v5 = v8;
      }

      v9 = [NSString stringWithFormat:@"📣 Device Notified: kIOMessageServiceIsRequestingClose"];
      v10 = _gICOSLog;
      if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    goto LABEL_14;
  }

  v15 = v5;
  if (v6 >= 0x15)
  {
    v16 = [(__CFString *)v5 substringWithRange:0, 18];
    v15 = [v16 stringByAppendingString:@".."];
  }

  v17 = [NSString stringWithFormat:@"📣 Device Notified: kIOMessageServiceIsTerminated"];
  v18 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v19 = v15;
    v20 = v18;
    *buf = 136446466;
    v34 = [v15 UTF8String];
    v35 = 2114;
    v36 = v17;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  __ICOSLogCreate();
  v21 = v5;
  if ([(__CFString *)v21 length]>= 0x15)
  {
    v22 = [(__CFString *)v21 substringWithRange:0, 18];
    v23 = [v22 stringByAppendingString:@".."];

    v21 = v23;
  }

  v24 = [NSString stringWithFormat:@"Device removed: %@", v4];
  v25 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v26 = v21;
    v27 = v25;
    v28 = [(__CFString *)v21 UTF8String];
    *buf = 136446466;
    v34 = v28;
    v35 = 2114;
    v36 = v24;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  if (v4)
  {
    [v4 stop];
  }

LABEL_33:
}

void sub_100001A38(void *a1, uint64_t a2, uint64_t a3)
{
  __ICOSLogCreate();
  v6 = @"<USB>";
  v7 = v6;
  if ([(__CFString *)v6 length]>= 0x15)
  {
    v8 = [(__CFString *)v6 substringWithRange:0, 18];
    v7 = [v8 stringByAppendingString:@".."];
  }

  v9 = [NSString stringWithFormat:@"<callback> (_StaticDeviceInterfaceMessage)"];
  v10 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v7;
    v12 = v10;
    *buf = 136446466;
    v35 = [v7 UTF8String];
    v36 = 2114;
    v37 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v13 = objc_autoreleasePoolPush();
  v14 = a1;
  v15 = v14;
  if (a2 == -469794543)
  {
    [v14 deactivate];
    __ICOSLogCreate();
    v16 = v6;
    if ([(__CFString *)v16 length]>= 0x15)
    {
      v17 = [(__CFString *)v16 substringWithRange:0, 18];
      v18 = [v17 stringByAppendingString:@".."];

      v16 = v18;
    }

    v19 = [NSString stringWithFormat:@"<deactivated> and waiting: %2ds for reactivation before exiting", 15];
    v20 = _gICOSLog;
    if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (a2 == -469794544)
  {
    if (a3)
    {
      [v14 waitForHostConnection:0];
      [v15 activate:*(a3 + 4)];
      goto LABEL_23;
    }

    __ICOSLogCreate();
    v16 = v6;
    if ([(__CFString *)v16 length]>= 0x15)
    {
      v29 = [(__CFString *)v16 substringWithRange:0, 18];
      v30 = [v29 stringByAppendingString:@".."];

      v16 = v30;
    }

    v19 = [NSString stringWithFormat:@"<activated> and waiting: %2ds for host connection", 15];
    v20 = _gICOSLog;
    if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
LABEL_22:

      [v15 waitForHostConnection:1];
      goto LABEL_23;
    }

LABEL_21:
    v31 = v16;
    v32 = v20;
    v33 = [(__CFString *)v16 UTF8String];
    *buf = 136446466;
    v35 = v33;
    v36 = 2114;
    v37 = v19;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);

    goto LABEL_22;
  }

  __ICOSLogCreate();
  v21 = v6;
  if ([(__CFString *)v21 length]>= 0x15)
  {
    v22 = [(__CFString *)v21 substringWithRange:0, 18];
    v23 = [v22 stringByAppendingString:@".."];

    v21 = v23;
  }

  v24 = [NSString stringWithFormat:@"<alt-setting> received: 0x%x", a2];
  v25 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v26 = v21;
    v27 = v25;
    v28 = [(__CFString *)v21 UTF8String];
    *buf = 136446466;
    v35 = v28;
    v36 = 2114;
    v37 = v24;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

LABEL_23:
  objc_autoreleasePoolPop(v13);
}

void sub_100002168(uint64_t a1)
{
  [*(a1 + 32) resetUsingMTP];
  [*(a1 + 32) setLastTransactionID:0];
  [*(a1 + 32) setSessionID:0];
  v2 = sub_1000021F0();
  [v2 closeSession:@"Device disconnected"];
  [*(a1 + 32) setVirtualCamera:0];
}

id sub_1000021F0()
{
  if (qword_100040390 != -1)
  {
    sub_100024870();
  }

  v1 = qword_1000403B0;

  return v1;
}

void sub_100002254(void *a1, int a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  byte_100040388 = 0;
  if (a1)
  {
    v7 = a1;
    v8 = v7;
    if (!a2)
    {
      if ([v7 handleBulkData:a3 result:0])
      {
        [v8 readBulkData];
      }

      goto LABEL_23;
    }

    if (a2 > -536870164)
    {
      if (a2 != -536854449)
      {
        v9 = 749;
LABEL_10:
        if (a2 == (v9 | 0xE0000000))
        {
          __ICOSLogCreate();
          v10 = &stru_100038B48;
          if ([&stru_100038B48 length] >= 0x15)
          {
            v11 = [&stru_100038B48 substringWithRange:{0, 18}];
            v10 = [v11 stringByAppendingString:@".."];
          }

          v12 = "Not Responding";
          if (a2 == -536870165)
          {
            v12 = "Aborted";
          }

          v13 = [NSString stringWithFormat:@"IOReturn: %s\n", v12];
          v14 = _gICOSLog;
          if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
          {
            v15 = v10;
            v16 = v14;
            *buf = 136446466;
            v21 = [(__CFString *)v10 UTF8String];
            v22 = 2114;
            v23 = v13;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
          }

          [v8 setConnected:0];
        }

LABEL_23:

        goto LABEL_24;
      }
    }

    else if (a2 != -536870186)
    {
      v9 = 747;
      goto LABEL_10;
    }

    __ICOSLogCreate();
    v17 = "Pipe Stalled\n";
    if (a2 == -536870186)
    {
      v17 = "Timemout";
    }

    v18 = [NSString stringWithFormat:@"IOReturn: %s\n", v17];
    v19 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      sub_1000247F8(v18, v19);
    }

    [v8 setTimedOut:1];
    goto LABEL_23;
  }

LABEL_24:
  objc_autoreleasePoolPop(v6);
}

__CFString *sub_1000025B4(int a1)
{
  if (qword_100040378 != -1)
  {
    sub_1000246E0();
  }

  if (a1)
  {
    v2 = @"+";
  }

  else
  {
    v2 = @"-";
  }

  return v2;
}

void sub_100002614(id a1)
{
  v1 = [NSString stringWithFormat:@"%s", getenv("TERM")];
  [v1 isEqualToString:@"vt100"];
}

void sub_100003250(uint64_t a1)
{
  __ICOSLogCreate();
  v2 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v3 = [&stru_100038B48 substringWithRange:{0, 18}];
    v2 = [v3 stringByAppendingString:@".."];
  }

  v4 = [NSString stringWithFormat:@"Removing Placeholder Media\n"];
  v5 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v2;
    v7 = v5;
    v9 = 136446466;
    v10 = [(__CFString *)v2 UTF8String];
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v9, 0x16u);
  }

  v8 = [*(a1 + 32) delegate];
  [v8 removePlaceholderStorage];
}

void sub_1000033B0(uint64_t a1)
{
  __ICOSLogCreate();
  v2 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v3 = [&stru_100038B48 substringWithRange:{0, 18}];
    v2 = [v3 stringByAppendingString:@".."];
  }

  v4 = [NSString stringWithFormat:@"Vending Photo Media\n"];
  v5 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v2;
    v7 = v5;
    v9 = 136446466;
    v10 = [(__CFString *)v2 UTF8String];
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v9, 0x16u);
  }

  [*(a1 + 32) setHasVended:1];
  v8 = [*(a1 + 32) delegate];
  [v8 vendPhotoStorage];
}

uint64_t sub_100003EF0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100003F08(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  if (v1)
  {
    v2 = v1;
    [v1 handleProtectionStatusChanged:3];
  }
}

void sub_100003F64(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  if (v1)
  {
    v2 = v1;
    [v1 handleProtectionStatusChanged:4];
  }
}

void sub_100003FC0(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  if (v1)
  {
    v2 = v1;
    [v1 handleProtectionStatusChanged:1];
  }
}

void sub_10000401C(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  if (v1)
  {
    v2 = v1;
    [v1 handleProtectionStatusChanged:0];
  }
}

void sub_100004078(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  if (v1)
  {
    v2 = v1;
    [v1 handleInternalSettingsChanged];
  }
}

void sub_1000040D0(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  if (v1)
  {
    v2 = v1;
    [v1 handleThrottleChanged];
  }
}

uint64_t sub_10000423C(void *a1)
{
  v1 = a1;
  if ([(__CFString *)v1 isEqualToString:@"throttle_specSwitch"])
  {
    v2 = +[NSUserDefaults standardUserDefaults];
    v3 = [v2 persistentDomainForName:ICPreferencesDomain];
    v4 = v3;
    v5 = @"throttle_specSwitch";
  }

  else
  {
    v6 = [(__CFString *)v1 isEqualToString:@"throttle_specSlider"];
    v2 = +[NSUserDefaults standardUserDefaults];
    v3 = [v2 persistentDomainForName:ICPreferencesDomain];
    v4 = v3;
    if (v6)
    {
      v7 = [v3 objectForKey:@"throttle_specSlider"];

      if (!v7)
      {
        v9 = 1024;
        goto LABEL_12;
      }

      [v7 doubleValue];
      v9 = (v8 + 0.0);
      goto LABEL_9;
    }

    v5 = v1;
  }

  v7 = [v3 objectForKey:v5];

  if (!v7)
  {
    v9 = 0;
    goto LABEL_12;
  }

  v9 = [v7 BOOLValue];
LABEL_9:

LABEL_12:
  return v9;
}

uint64_t sub_100004380()
{
  result = os_variant_has_internal_ui();
  v1 = sub_100004378;
  if (result)
  {
    v1 = sub_10000423C;
  }

  off_1000401D8 = v1;
  return result;
}

void sub_1000050AC(uint64_t a1)
{
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000512C;
  handler[3] = &unk_100038808;
  handler[4] = *(a1 + 32);
  xpc_set_event_stream_handler("com.apple.iokit.matching", &_dispatch_main_q, handler);
}

void sub_10000512C(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "IOMatchLaunchServiceID");
  v4 = IORegistryEntryIDMatching(uint64);
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v4);
  __ICOSLogCreate();
  v6 = @"<USB>";
  v7 = [(__CFString *)v6 length];
  if (MatchingService)
  {
    if (v7 >= 0x15)
    {
      v8 = [(__CFString *)v6 substringWithRange:0, 18];
      v9 = [v8 stringByAppendingString:@".."];

      v6 = v9;
    }

    v10 = [NSString stringWithFormat:@"[Adding 0x%x] -->(XPC IOMatchedLaunchServiceID)", MatchingService];
    v11 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v6;
      v13 = v11;
      *buf = 136446466;
      v21 = [(__CFString *)v6 UTF8String];
      v22 = 2114;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    [*(a1 + 32) deviceAdded:MatchingService];
  }

  else
  {
    if (v7 >= 0x15)
    {
      v14 = [(__CFString *)v6 substringWithRange:0, 18];
      v15 = [v14 stringByAppendingString:@".."];

      v6 = v15;
    }

    v16 = [NSString stringWithFormat:@"PTP Service EntryID Failed"];
    v17 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v6;
      v19 = v17;
      *buf = 136446466;
      v21 = [(__CFString *)v6 UTF8String];
      v22 = 2114;
      v23 = v16;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }
}

uint64_t sub_1000053AC(void *a1, uint64_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v5 = result;
    do
    {
      __ICOSLogCreate();
      v6 = &stru_100038B48;
      if ([&stru_100038B48 length] >= 0x15)
      {
        v7 = [&stru_100038B48 substringWithRange:{0, 18}];
        v6 = [v7 stringByAppendingString:@".."];
      }

      v8 = [NSString stringWithFormat:@"[Adding 0x%x] -->(IOMatchedPublishNotification)", iterator];
      v9 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v6;
        v11 = v9;
        v12 = [(__CFString *)v6 UTF8String];
        *buf = 136446466;
        v14 = v12;
        v15 = 2114;
        v16 = v8;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }

      [a1 deviceAdded:v5];
      result = IOIteratorNext(iterator);
      v5 = result;
    }

    while (result);
  }

  return result;
}

void sub_1000064B8(uint64_t a1)
{
  v2 = [*(a1 + 32) BOOLValue];
  v3 = [*(a1 + 40) connectionTimer];
  v4 = v3;
  if (v2)
  {

    if (!v4)
    {
      v5 = [*(a1 + 40) connectionTimerQueue];
      v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v5);
      [*(a1 + 40) setConnectionTimer:v6];
    }

    v7 = [*(a1 + 40) connectionTimer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100006754;
    handler[3] = &unk_100038770;
    handler[4] = *(a1 + 40);
    dispatch_source_set_event_handler(v7, handler);

    v8 = [*(a1 + 40) connectionTimer];
    v9 = dispatch_time(0, 15000000000);
    dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);

    v10 = [*(a1 + 40) connectionTimer];
    dispatch_activate(v10);
  }

  else
  {

    if (!v4)
    {
      return;
    }

    v11 = [*(a1 + 40) connectionTimer];
    dispatch_source_cancel(v11);

    [*(a1 + 40) setConnectionTimer:0];
    __ICOSLogCreate();
    v10 = &stru_100038B48;
    if ([&stru_100038B48 length] >= 0x15)
    {
      v12 = [&stru_100038B48 substringWithRange:{0, 18}];
      v10 = [v12 stringByAppendingString:@".."];
    }

    v13 = [NSString stringWithFormat:@"USB - Cancel Timeout (run)"];
    v14 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v10;
      v16 = v14;
      *buf = 136446466;
      v19 = [v10 UTF8String];
      v20 = 2114;
      v21 = v13;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }
}

void sub_100006754(uint64_t a1)
{
  v2 = [*(a1 + 32) connectionTimer];
  dispatch_source_cancel(v2);

  [*(a1 + 32) setConnectionTimer:0];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000067FC;
  block[3] = &unk_100038770;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000067FC(uint64_t a1)
{
  __ICOSLogCreate();
  v2 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v3 = [&stru_100038B48 substringWithRange:{0, 18}];
    v2 = [v3 stringByAppendingString:@".."];
  }

  v4 = [NSString stringWithFormat:@"USB - Timed Out (term)"];
  v5 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v2;
    v7 = v5;
    v12 = 136446466;
    v13 = [(__CFString *)v2 UTF8String];
    v14 = 2114;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v12, 0x16u);
  }

  [*(a1 + 32) stop];
  v8 = NSSelectorFromString(@"stopRunLoop");
  v9 = [*(a1 + 32) delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [*(a1 + 32) delegate];
    [v11 performSelector:v8];
  }
}

void sub_100007890(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) connected] && (objc_msgSend(*(a1 + 32), "busy") & 1) == 0)
  {
    [*(a1 + 40) range];
    v4 = v3;
    [*(a1 + 40) setBytesTransferred:0];
    v5 = NSSelectorFromString(@"usingMTP");
    v6 = [*(a1 + 32) delegate];
    if (v6 && (v7 = v6, [*(a1 + 32) delegate], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_opt_respondsToSelector(), v8, v7, (v9 & 1) != 0))
    {
      v10 = [*(a1 + 32) delegate];
      v11 = [v10 performSelector:v5];

      if (!v4)
      {
LABEL_6:
        v12 = NSSelectorFromString(@"sentData:responseCode:");
        v13 = [*(a1 + 32) delegate];
        if (v13)
        {
          v14 = v13;
          v15 = [*(a1 + 32) delegate];
          v16 = objc_opt_respondsToSelector();

          if (v16)
          {
            v17 = [*(a1 + 32) delegate];
            v18 = *(a1 + 40);
            v19 = [NSNumber numberWithUnsignedShort:8199];
            [v17 performSelector:v12 withObject:v18 withObject:v19];
          }
        }

        goto LABEL_13;
      }
    }

    else
    {
      v11 = 0;
      if (!v4)
      {
        goto LABEL_6;
      }
    }

    [*(a1 + 32) setBusy:1];
    [*(a1 + 32) setTransactionID:{objc_msgSend(*(a1 + 40), "transactionID")}];
    v20 = [v11 BOOLValue];
    v21 = *(a1 + 32);
    v22 = *(a1 + 40);
    if (v20)
    {
      [v21 sendDataPacketsSplit:v22];
    }

    else
    {
      [v21 sendDataPackets:v22];
    }

LABEL_13:
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000084F4(void *a1, uint64_t a2)
{
  v3 = [NSNumber numberWithInt:a2];
  [a1 performSelectorOnMainThread:"handleWriteInterruptDataCompletion:" withObject:v3 waitUntilDone:0];
}

void sub_100009B84(uint64_t a1)
{
  v19 = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 usbCore];
  }

  memset(v31, 0, sizeof(v31));
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  qmemcpy(buf, "[null]", sizeof(buf));
  IORegistryEntryGetName(*(a1 + 40), buf);
  __ICOSLogCreate();
  v3 = @"<USB>";
  v4 = v3;
  if ([(__CFString *)v3 length]>= 0x15)
  {
    v5 = [(__CFString *)v3 substringWithRange:0, 18];
    v4 = [v5 stringByAppendingString:@".."];
  }

  v6 = [NSString stringWithFormat:@"<device added> received notification for service: %s", buf];
  v7 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v4;
    v9 = v7;
    v10 = [v4 UTF8String];
    *v20 = 136446466;
    v21 = v10;
    v22 = 2114;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", v20, 0x16u);
  }

  if (([*(a1 + 32) processDeviceInterface:*(a1 + 40)] & 1) == 0)
  {
    __ICOSLogCreate();
    v11 = v3;
    if ([(__CFString *)v11 length]>= 0x15)
    {
      v12 = [(__CFString *)v11 substringWithRange:0, 18];
      v13 = [v12 stringByAppendingString:@".."];

      v11 = v13;
    }

    v14 = [NSString stringWithFormat:@"<not activated> and waiting: %2ds for host connection", 15];
    v15 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v11;
      v17 = v15;
      v18 = [(__CFString *)v11 UTF8String];
      *v20 = 136446466;
      v21 = v18;
      v22 = 2114;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", v20, 0x16u);
    }

    [*(a1 + 32) waitForHostConnection:1];
  }
}

void sub_10000BE8C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id sub_10000BEAC()
{

  return [v0 UTF8String];
}

void sub_10000C308(id a1)
{
  v1 = objc_alloc_init(PTPAssetManager);
  v2 = qword_1000403B0;
  qword_1000403B0 = v1;

  __ICOSLogCreate();
  v3 = @"AssetManager";
  if ([@"AssetManager" length] >= 0x15)
  {
    v4 = [@"AssetManager" substringWithRange:{0, 18}];
    v3 = [v4 stringByAppendingString:@".."];
  }

  v5 = [NSString stringWithFormat:@"New Asset Manager Created: %p", qword_1000403B0];
  v6 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v3;
    v8 = v6;
    *buf = 136446466;
    v10 = [(__CFString *)v3 UTF8String];
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }
}

id sub_10000C470()
{
  v0 = sub_1000021F0();
  v1 = [v0 am];

  return v1;
}

void sub_10000D534(uint64_t a1)
{
  __ICOSLogCreate();
  v2 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v3 = [&stru_100038B48 substringWithRange:{0, 18}];
    v2 = [v3 stringByAppendingString:@".."];
  }

  v4 = [NSString stringWithFormat:@"Vend Photo Storage"];
  v5 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v2;
    v7 = v5;
    v14 = 136446466;
    v15 = [(__CFString *)v2 UTF8String];
    v16 = 2114;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v14, 0x16u);
  }

  v8 = *(a1 + 32);
  v9 = [v8 photoStorage];
  LOBYTE(v8) = [v8 visibleStorage:v9];

  if ((v8 & 1) == 0)
  {
    [*(a1 + 32) removePlaceholderStorage];
    v10 = *(a1 + 32);
    v11 = [v10 photoStorage];
    [v10 addStorage:v11];

    [*(a1 + 32) sendEventDeviceUnlocked];
    v12 = *(a1 + 32);
    v13 = [v12 photoStorage];
    [v12 sendEventAddStorageWithID:{objc_msgSend(v13, "storageID")}];
  }
}

void sub_10000DAE8(uint64_t a1)
{
  v2 = [*(a1 + 32) photoStorage];

  if (!v2)
  {
    v3 = -[PTPStorage initWithParent:andOptionalID:forSessionID:]([PTPStorage alloc], "initWithParent:andOptionalID:forSessionID:", *(a1 + 32), 0, [*(a1 + 32) currentInternalSessionID]);
    [(PTPStorage *)v3 addContent];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000DBD8;
    v5[3] = &unk_100038830;
    v5[4] = *(a1 + 32);
    v6 = v3;
    v4 = v3;
    dispatch_async(&_dispatch_main_q, v5);
  }
}

void sub_10000DBD8(uint64_t a1)
{
  __ICOSLogCreate();
  v2 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v3 = [&stru_100038B48 substringWithRange:{0, 18}];
    v2 = [v3 stringByAppendingString:@".."];
  }

  v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"SessionID: 0x%x StorageID: 0x%x \n", [*(a1 + 32) currentInternalSessionID], objc_msgSend(*(a1 + 40), "sessionID"));
  v5 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v2;
    v7 = v5;
    *buf = 136446466;
    v24 = [(__CFString *)v2 UTF8String];
    v25 = 2114;
    v26 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v8 = [*(a1 + 40) sessionID];
  if (v8 == [*(a1 + 32) currentInternalSessionID])
  {
    [*(a1 + 32) setPhotoStorage:*(a1 + 40)];
    __ICOSLogCreate();
    v9 = &stru_100038B48;
    if ([&stru_100038B48 length] >= 0x15)
    {
      v10 = [&stru_100038B48 substringWithRange:{0, 18}];
      v9 = [v10 stringByAppendingString:@".."];
    }

    v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Whole Storage Available: 0x%x \n", [*(a1 + 40) storageID]);
    v12 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v9;
      v14 = v12;
      v15 = [(__CFString *)v9 UTF8String];
      *buf = 136446466;
      v24 = v15;
      v25 = 2114;
      v26 = v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    notify_post("com.apple.ptpd.photoStorageChanged");
  }

  else
  {
    __ICOSLogCreate();
    v16 = &stru_100038B48;
    if ([&stru_100038B48 length] >= 0x15)
    {
      v17 = [&stru_100038B48 substringWithRange:{0, 18}];
      v16 = [v17 stringByAppendingString:@".."];
    }

    v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Abandoning Storage: 0x%x \n", [*(a1 + 40) storageID]);
    v19 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v16;
      v21 = v19;
      v22 = [(__CFString *)v16 UTF8String];
      *buf = 136446466;
      v24 = v22;
      v25 = 2114;
      v26 = v18;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }
}

void sub_10000E0F4(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E16C;
  block[3] = &unk_100038770;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

id sub_10000E16C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 photoStorage];
  LODWORD(v2) = [v2 visibleStorage:v3];

  if (v2)
  {
    v4 = *(a1 + 32);
    v5 = [v4 photoStorage];
    [v4 sendEventRemoveStorageWithID:{objc_msgSend(v5, "storageID")}];

    v6 = *(a1 + 32);
    v7 = [v6 photoStorage];
    [v6 removeStorageWithID:{objc_msgSend(v7, "storageID")}];
  }

  [*(a1 + 32) setPhotoStorage:0];
  notify_post("com.apple.ptpd.photoStorageChanged");
  v8 = *(a1 + 32);

  return [v8 preparePhotoStorage];
}

void sub_100010470(uint64_t a1)
{
  __ICOSLogCreate();
  v2 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v3 = [&stru_100038B48 substringWithRange:{0, 18}];
    v2 = [v3 stringByAppendingString:@".."];
  }

  v4 = [NSString stringWithFormat:@"==|Session Begin|== Adding Storages"];
  v5 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v2;
    v7 = v5;
    *buf = 136446466;
    v18 = [(__CFString *)v2 UTF8String];
    v19 = 2114;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v8 = sub_1000021F0();
  [v8 openSession];
  [*(a1 + 32) setCurrentInternalSessionID:sub_100004228()];
  v9 = [*(a1 + 32) currentInternalSessionID];
  v10 = [*(a1 + 32) placeholderStorage];
  [v10 setSessionID:v9];

  v11 = *(a1 + 32);
  v12 = [v11 photoStorage];
  if ([v11 visibleStorage:v12])
  {
    goto LABEL_8;
  }

  v13 = [*(a1 + 32) allStorages];
  v14 = [v13 count];

  if (!v14)
  {
    v15 = *(a1 + 32);
    v12 = [v15 placeholderStorage];
    [v15 addStorage:v12];
LABEL_8:
  }

  [*(a1 + 32) preparePhotoStorage];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000106E0;
  block[3] = &unk_100038770;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10001093C(uint64_t a1)
{
  [*(a1 + 32) setCurrentInternalSessionID:0];
  v2 = [*(a1 + 32) currentInternalSessionID];
  v3 = [*(a1 + 32) placeholderStorage];
  [v3 setSessionID:v2];

  v4 = [*(a1 + 32) photoStorage];
  [v4 setAssetGroupIndex:0];

  v5 = [*(a1 + 32) storages];
  [v5 removeAllObjects];
}

void sub_100010CF4(uint64_t a1)
{
  __ICOSLogCreate();
  v2 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v3 = [&stru_100038B48 substringWithRange:{0, 18}];
    v2 = [v3 stringByAppendingString:@".."];
  }

  v4 = [NSString stringWithFormat:@"Session Timeout - Removing Storages"];
  v5 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v2;
    v7 = v5;
    v9 = 136446466;
    v10 = [(__CFString *)v2 UTF8String];
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v9, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v8 = [*(a1 + 32) storageTimer];
  dispatch_source_cancel(v8);
}

id sub_100010E64(uint64_t a1)
{
  __ICOSLogCreate();
  v2 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v3 = [&stru_100038B48 substringWithRange:{0, 18}];
    v2 = [v3 stringByAppendingString:@".."];
  }

  v4 = [NSString stringWithFormat:@"Timer Invalidated"];
  v5 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v2;
    v7 = v5;
    v9 = 136446466;
    v10 = [(__CFString *)v2 UTF8String];
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v9, 0x16u);
  }

  [*(a1 + 32) setStorageTimer:0];
  return [*(a1 + 32) setStorageTimerQ:0];
}

void sub_1000112F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100011324(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001133C(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  if (v1)
  {
    v2 = v1;
    [v1 updateUserAssignedName];
  }
}

void sub_100014040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100014080(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = +[NSMutableDictionary dictionary];
  v4 = [*(a1 + 32) photoStorage];
  v5 = [v4 addAssets:v8 createdObjects:v3];

  v6 = [v3 objectForKey:@"addedFiles"];
  if (v6)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObjectsFromArray:v6];
  }

  v7 = [v3 objectForKey:@"addedFolders"];
  if (v7)
  {
    [*(*(*(a1 + 48) + 8) + 40) addObjectsFromArray:v7];
  }
}

void sub_100014650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

void sub_1000146B4(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 photoStorage];
  v9 = [v5 deleteAssets:v4];

  v6 = v9;
  if (v9)
  {
    v7 = [v9 objectForKey:@"removedFiles"];
    if (v7)
    {
      [*(*(a1[5] + 8) + 40) addObjectsFromArray:v7];
    }

    v8 = [v9 objectForKey:@"removedFolders"];
    if (v8)
    {
      [*(*(a1[6] + 8) + 40) addObjectsFromArray:v8];
    }

    v6 = v9;
  }
}

id sub_100014A00(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && [v2 count])
  {
    [*(a1 + 40) processAddedFiles:*(a1 + 32)];
  }

  v3 = *(a1 + 48);
  if (v3 && [v3 count])
  {
    [*(a1 + 40) processDeletedFiles:*(a1 + 48)];
  }

  result = *(a1 + 56);
  if (result)
  {
    result = [result count];
    if (result)
    {
      [*(a1 + 40) processDeletedFiles:*(a1 + 56)];
      result = [*(a1 + 40) processAddedFiles:*(a1 + 56)];
    }
  }

  if (*(a1 + 64))
  {
    v5 = *(a1 + 40);

    return [v5 processDeletedFiles:?];
  }

  return result;
}

void sub_100016CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 192), 8);
  _Block_object_dispose((v37 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100016D34(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100016D4C(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = *(*(*(a1 + 40) + 8) + 40);
  v7 = v6;
  if (v6 && ([v6 parent], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100016E64;
    block[3] = &unk_100038958;
    block[4] = *(a1 + 32);
    v10 = v5;
    v11 = *(a1 + 56);
    v12 = *(a1 + 72);
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a3 = 1;
  }
}

void sub_100016E64(uint64_t a1)
{
  v5 = [*(a1 + 32) addAssets:*(a1 + 40) createdObjects:0];
  v2 = [v5 objectForKey:@"assetCount"];
  *(*(*(a1 + 48) + 8) + 24) += [v2 unsignedLongLongValue];

  v3 = [v5 objectForKey:@"folderCount"];
  *(*(*(a1 + 56) + 8) + 24) += [v3 unsignedLongLongValue];

  v4 = [v5 objectForKey:@"prunedCount"];
  *(*(*(a1 + 64) + 8) + 24) += [v4 unsignedLongLongValue];
}

id sub_100016F50(uint64_t a1)
{
  __ICOSLogCreate();
  v2 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v3 = [&stru_100038B48 substringWithRange:{0, 18}];
    v2 = [v3 stringByAppendingString:@".."];
  }

  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v4 = "Aborted";
  }

  else
  {
    v4 = "Completed";
  }

  v5 = [NSString stringWithFormat:@"------- [%9s] --------", v4];
  v6 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v2;
    v8 = v6;
    *buf = 136446466;
    v48 = [(__CFString *)v2 UTF8String];
    v49 = 2114;
    v50 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  __ICOSLogCreate();
  v9 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v10 = [&stru_100038B48 substringWithRange:{0, 18}];
    v9 = [v10 stringByAppendingString:@".."];
  }

  v11 = [NSString stringWithFormat:@"[%9lu] Asset(s)", *(*(*(a1 + 48) + 8) + 24)];
  v12 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v9;
    v14 = v12;
    v15 = [(__CFString *)v9 UTF8String];
    *buf = 136446466;
    v48 = v15;
    v49 = 2114;
    v50 = v11;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  __ICOSLogCreate();
  v16 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v17 = [&stru_100038B48 substringWithRange:{0, 18}];
    v16 = [v17 stringByAppendingString:@".."];
  }

  v18 = [NSString stringWithFormat:@"[%9llu] Folders(s)", *(*(*(a1 + 56) + 8) + 24)];
  v19 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v16;
    v21 = v19;
    v22 = [(__CFString *)v16 UTF8String];
    *buf = 136446466;
    v48 = v22;
    v49 = 2114;
    v50 = v18;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  __ICOSLogCreate();
  v23 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v24 = [&stru_100038B48 substringWithRange:{0, 18}];
    v23 = [v24 stringByAppendingString:@".."];
  }

  v25 = [NSString stringWithFormat:@"[%9llu] Pruned", *(*(*(a1 + 64) + 8) + 24)];
  v26 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v27 = v23;
    v28 = v26;
    v29 = [(__CFString *)v23 UTF8String];
    *buf = 136446466;
    v48 = v29;
    v49 = 2114;
    v50 = v25;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  _gPTPLastBenchmarkElapsedMilliseconds = (((mach_absolute_time() - _gPTPBenchmarkStartMachTime) * *(a1 + 72)) / *(a1 + 76)) / 1000000.0;
  __ICOSLogCreate();
  v30 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v31 = [&stru_100038B48 substringWithRange:{0, 18}];
    v30 = [v31 stringByAppendingString:@".."];
  }

  v32 = [NSString stringWithFormat:@"[PHPTPAssetManager ptpEnumerateAllAssetsUsingBlock] spent %5.2f seconds building assets for ptpd storageID :0x%x", _gPTPLastBenchmarkElapsedMilliseconds / 1000.0, *(a1 + 80)];
  v33 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v34 = v30;
    v35 = v33;
    v36 = [(__CFString *)v30 UTF8String];
    *buf = 136446466;
    v48 = v36;
    v49 = 2114;
    v50 = v32;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  LODWORD(v37) = _gPTPLastBenchmarkElapsedMilliseconds;
  if (_gPTPLastBenchmarkElapsedMilliseconds > 3000.0)
  {
    __ICOSLogCreate();
    v38 = @"Photos->ptpd";
    if ([@"Photos->ptpd" length] >= 0x15)
    {
      v39 = [@"Photos->ptpd" substringWithRange:{0, 18}];
      v38 = [v39 stringByAppendingString:@".."];
    }

    v40 = [NSString stringWithFormat:@"⚠️  Photos PLPTPDAsset generation time of %5.2f seconds significantly impacts user experience.", _gPTPLastBenchmarkElapsedMilliseconds / 1000.0];
    v41 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      sub_100024884(v38, v41);
    }

    __ICOSLogCreate();
    v42 = @"Photos->ptpd";
    if ([@"Photos->ptpd" length] >= 0x15)
    {
      v43 = [@"Photos->ptpd" substringWithRange:{0, 18}];
      v42 = [v43 stringByAppendingString:@".."];
    }

    v44 = [NSString stringWithFormat:@"⚠️  Photos generated [%9lu] Asset(s)", *(*(*(a1 + 48) + 8) + 24)];
    v45 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      sub_100024884(v42, v45);
    }
  }

  return [*(a1 + 32) setEnumerated:{1, v37}];
}

void sub_100017958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 144), 8);
  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_10001799C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (!a3)
  {
    v8 = [*(a1 + 32) directoryForAsset:v7];
    v9 = *(*(a1 + 64) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      v11 = *(a1 + 32);
      v12 = [v7 captureDateString];
      v35 = [v11 virtualDirectoryDate:v12];
      v36 = v13;

      v14 = *(a1 + 32);
      v15 = [v7 captureDateString];
      v16 = [v14 virtualDirectoryName:v15];

      v17 = [*(a1 + 32) createDedupedAssetDirectoryWithBaseName:v16];
      v18 = [[PTPFolder alloc] initWithName:v17 captureTimeSpec:&v35 parent:*(a1 + 40) storage:*(a1 + 32)];
      v19 = *(*(a1 + 64) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;

      if (*(*(*(a1 + 64) + 8) + 40))
      {
        [*(a1 + 40) addFolder:?];
        [*(a1 + 32) addCameraFolderToIndex:*(*(*(a1 + 64) + 8) + 40)];
        if (*(a1 + 96) == 1)
        {
          v21 = *(a1 + 48);
          v22 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*(*(*(a1 + 64) + 8) + 40) objectHandle]);
          [v21 addObject:v22];
        }

        ++*(*(*(a1 + 72) + 8) + 24);
      }

      v23 = *(*(a1 + 64) + 8);
      v25 = *(v23 + 40);
      v24 = (v23 + 40);
      if (!v25)
      {
        objc_storeStrong(v24, *(a1 + 40));
        if (!*(*(*(a1 + 64) + 8) + 40))
        {
          *a4 = 1;
          goto LABEL_18;
        }
      }
    }
  }

  v26 = [PTPFile alloc];
  v27 = [*(a1 + 32) supportedFormats];
  v28 = [(PTPFile *)v26 initWithPHPTPAsset:v7 supportedFormats:v27 andParent:*(*(*(a1 + 64) + 8) + 40)];

  if (v28)
  {
    v29 = [(PTPFile *)v28 objectInfoDataset];
    v30 = v29;
    if (qword_1000403B8 == 1)
    {
      v31 = [v29 sequenceNumber];
      if (v31)
      {
        if (v31 == 2)
        {
          v32 = 80;
LABEL_16:
          ++*(*(*(a1 + v32) + 8) + 24);

          goto LABEL_17;
        }

        [v30 setSequenceNumber:0];
      }
    }

    v33 = *(a1 + 56);
    v34 = [NSNumber numberWithUnsignedInt:[(PTPItem *)v28 objectHandle]];
    [v33 addObject:v34];

    [*(*(*(a1 + 64) + 8) + 40) addFile:v28];
    [*(a1 + 32) addCameraFileToIndex:v28];
    v32 = 88;
    goto LABEL_16;
  }

LABEL_17:

LABEL_18:
}

void sub_100017DD8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 assetHandle];
  v6 = [v3 objectMatchingAssetHandle:v4];

  v5 = v6;
  if (v6)
  {
    [*(a1 + 40) addObject:v6];
    v5 = v6;
  }
}

void sub_100018480(uint64_t a1)
{
  v2 = [*(a1 + 32) groupNotificationTimer];

  if (!v2)
  {
    v3 = [*(a1 + 32) groupNotificationTimerQueue];
    v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3);
    [*(a1 + 32) setGroupNotificationTimer:v4];

    v5 = [*(a1 + 32) groupNotificationTimer];
    v6 = dispatch_time(0, 1000000000);
    dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);

    objc_initWeak(&location, *(a1 + 32));
    v7 = [*(a1 + 32) groupNotificationTimer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100018614;
    handler[3] = &unk_100038A20;
    objc_copyWeak(&v10, &location);
    handler[4] = *(a1 + 32);
    dispatch_source_set_event_handler(v7, handler);

    v8 = [*(a1 + 32) groupNotificationTimer];
    dispatch_resume(v8);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void sub_1000185F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100018614(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    __ICOSLogCreate();
    if (!__ICLogTypeEnabled())
    {
      goto LABEL_21;
    }

    v8 = @"PTPDataSource";
    if ([@"PTPDataSource" length] >= 0x15)
    {
      v9 = [@"PTPDataSource" substringWithRange:{0, 18}];
      v8 = [v9 stringByAppendingString:@".."];
    }

    v10 = [NSString stringWithFormat:@"strongSelf is not available, bailing."];
    v11 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
LABEL_14:
      v14 = v8;
      v15 = v11;
      *buf = 136446466;
      v27 = [(__CFString *)v8 UTF8String];
      v28 = 2114;
      v29 = v10;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

LABEL_15:

    goto LABEL_21;
  }

  v4 = [WeakRetained groupNotificationTimer];

  if (!v4)
  {
    goto LABEL_21;
  }

  v5 = [v3 groupNotificationTimer];
  dispatch_source_cancel(v5);

  [v3 setGroupNotificationTimer:0];
  v6 = [*(a1 + 32) assetGroupIndex];
  v7 = [*(a1 + 32) assetGroups];
  if ([v7 count] <= v6)
  {
    v12 = [*(a1 + 32) enumerated];

    if ((v12 & 1) == 0)
    {
      goto LABEL_16;
    }

    __ICOSLogCreate();
    v8 = @"PTPGroup";
    if ([@"PTPGroup" length] >= 0x15)
    {
      v13 = [@"PTPGroup" substringWithRange:{0, 18}];
      v8 = [v13 stringByAppendingString:@".."];
    }

    v10 = [NSString stringWithFormat:@"Stopping groups available notifier, all groups collected."];
    v11 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

LABEL_16:
  __ICOSLogCreate();
  v16 = @"PTPGroup";
  if ([@"PTPGroup" length] >= 0x15)
  {
    v17 = [@"PTPGroup" substringWithRange:{0, 18}];
    v16 = [v17 stringByAppendingString:@".."];
  }

  v18 = [*(a1 + 32) assetGroupIndex];
  v19 = [*(a1 + 32) assetGroups];
  v20 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"New uncollected groups present (%u/%lu) -- notifying", v18, [v19 count]);

  v21 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v16;
    v23 = v21;
    *buf = 136446466;
    v27 = [(__CFString *)v16 UTF8String];
    v28 = 2114;
    v29 = v20;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v24 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018A5C;
  block[3] = &unk_100038770;
  block[4] = *(a1 + 32);
  dispatch_after(v24, &_dispatch_main_q, block);
LABEL_21:
}

id sub_100018A5C(uint64_t a1)
{
  v2 = [*(a1 + 32) parent];
  [v2 generatePTPEventsForAddedObjectGroupInStorage:{objc_msgSend(*(a1 + 32), "storageID")}];

  v3 = *(a1 + 32);

  return [v3 startGroupNotifications];
}

void sub_10001ACF8(uint64_t a1)
{
  v3 = [[PTPDataPacket alloc] initWithOperationCode:objc_msgSend(*(a1 + 32) transactionID:"operationCode") andData:{*(a1 + 56), *(a1 + 40)}];
  v2 = [*(a1 + 48) transport];
  [v2 sendData:v3];
}

void sub_10001AD80(uint64_t a1)
{
  v3 = [[PTPOperationResponsePacket alloc] initWithResponseCode:*(a1 + 44) transactionID:*(a1 + 40)];
  v2 = [*(a1 + 32) transport];
  [v2 sendResponse:v3];
}

void sub_10001AF90(uint64_t a1)
{
  v3 = [[PTPDataPacket alloc] initWithOperationCode:objc_msgSend(*(a1 + 32) transactionID:"operationCode") andData:{*(a1 + 56), *(a1 + 40)}];
  v2 = [*(a1 + 48) transport];
  [v2 sendData:v3];
}

void sub_10001B018(uint64_t a1)
{
  v3 = [[PTPOperationResponsePacket alloc] initWithResponseCode:*(a1 + 44) transactionID:*(a1 + 40)];
  v2 = [*(a1 + 32) transport];
  [v2 sendResponse:v3];
}

void sub_100022910(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    *(v3 + 32) = 0;
  }
}

void sub_100022AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100022B04(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100022B1C(uint64_t a1)
{
  v2 = [*(a1 + 32) plAssetReader];

  if (!v2)
  {
    v3 = sub_10000C470();
    v4 = [*(a1 + 32) plAssetHandle];
    v5 = [v3 ptpAssetReaderForAssetHandle:v4];
    [*(a1 + 32) setPlAssetReader:v5];
  }

  v6 = [*(a1 + 32) plAssetReader];
  v7 = *(a1 + 56);
  v8 = *(*(a1 + 48) + 8);
  obj = *(v8 + 40);
  v9 = [v6 dataSourcePathForDataRange:v7 error:{*(a1 + 64), &obj}];
  objc_storeStrong((v8 + 40), obj);
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  return [*(a1 + 32) boostAssetReaderLifespan];
}

void sub_100023394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_100023408(uint64_t a1)
{
  if ([*(a1 + 32) fd] == -1)
  {
    v2 = [*(a1 + 32) dataSourcePath];
    [*(a1 + 32) setFd:{open(objc_msgSend(v2, "fileSystemRepresentation"), 0, 0)}];

    __ICOSLogCreate();
    v3 = &stru_100038B48;
    if ([&stru_100038B48 length] >= 0x15)
    {
      v4 = [&stru_100038B48 substringWithRange:{0, 18}];
      v3 = [v4 stringByAppendingString:@".."];
    }

    v5 = [*(a1 + 32) dataSourcePath];
    v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"  +++ Opening[%s]:[%10lu]", [v5 UTF8String], objc_msgSend(*(a1 + 32), "plAssetSize"));

    v7 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v3;
      v9 = v7;
      *buf = 136446466;
      v26 = [(__CFString *)v3 UTF8String];
      v27 = 2114;
      v28 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  if ([*(a1 + 32) fd])
  {
    v10 = -3;
    do
    {
      *(*(*(a1 + 40) + 8) + 24) = pread([*(a1 + 32) fd], *(a1 + 64), *(a1 + 72), *(a1 + 80));
      v11 = *(*(*(a1 + 40) + 8) + 24);
    }

    while (v11 == -1 && v10++ != 0);
    if (v11 == -1)
    {
      __ICOSLogCreate();
      v14 = &stru_100038B48;
      if ([&stru_100038B48 length] >= 0x15)
      {
        v15 = [&stru_100038B48 substringWithRange:{0, 18}];
        v14 = [v15 stringByAppendingString:@".."];
      }

      v16 = [*(a1 + 32) dataSourcePath];
      v17 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Failed to read bytes from %s", [v16 UTF8String]);

      v18 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v14;
        v20 = v18;
        v21 = [(__CFString *)v14 UTF8String];
        *buf = 136446466;
        v26 = v21;
        v27 = 2114;
        v28 = v17;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }

      *(*(*(a1 + 40) + 8) + 24) = 0;
    }

    else
    {
      *(*(*(a1 + 48) + 8) + 24) = *(a1 + 80) + v11;
      v13 = *(*(*(a1 + 56) + 8) + 24) + *(*(*(a1 + 48) + 8) + 24);
      if (v13 <= [*(a1 + 32) plAssetSize])
      {
        if (*(a1 + 72) < _gPTPDeviceDataBufferSize && ([*(a1 + 32) toggleHeaderOffset] & 1) == 0)
        {
          *(*(*(a1 + 56) + 8) + 24) -= 12;
        }
      }

      else
      {
        *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) plAssetSize] - *(*(*(a1 + 48) + 8) + 24);
      }

      [*(a1 + 32) setToggleHeaderOffset:0];
      if (*(*(*(a1 + 56) + 8) + 24) >= 1)
      {
        v22 = [*(a1 + 32) plAssetQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100023868;
        block[3] = &unk_100038AC0;
        v24 = *(a1 + 48);
        block[4] = *(a1 + 32);
        dispatch_async(v22, block);
      }
    }
  }
}

void sub_100023868(void *a1)
{
  v10 = 0;
  v1 = a1[4];
  v9 = *(*(a1[5] + 8) + 24);
  LODWORD(v10) = *(*(a1[6] + 8) + 24);
  if (fcntl([v1 fd], 44, &v9) < 0)
  {
    __ICOSLogCreate();
    v2 = &stru_100038B48;
    if ([&stru_100038B48 length] >= 0x15)
    {
      v3 = [&stru_100038B48 substringWithRange:{0, 18}];
      v2 = [v3 stringByAppendingString:@".."];
    }

    v4 = [NSString stringWithFormat:@"F_RDADVISE: Failed to set"];
    v5 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v2;
      v7 = v5;
      v8 = [(__CFString *)v2 UTF8String];
      *buf = 136446466;
      v12 = v8;
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }
}

void sub_100023DF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100023E1C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  __ICOSLogCreate();
  v3 = __ICLogTypeEnabled();
  if (WeakRetained)
  {
    if (v3)
    {
      v4 = @"PTPDataSource";
      if ([@"PTPDataSource" length] >= 0x15)
      {
        v5 = [@"PTPDataSource" substringWithRange:{0, 18}];
        v4 = [v5 stringByAppendingString:@".."];
      }

      v6 = [WeakRetained queueName];
      v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Fired [%s]", [v6 UTF8String]);

      v8 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v4;
        v10 = v8;
        *buf = 136446466;
        v33 = [(__CFString *)v4 UTF8String];
        v34 = 2114;
        v35 = v7;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }
    }

    v11 = [WeakRetained plAssetTimer];

    if (v11)
    {
      __ICOSLogCreate();
      if (__ICLogTypeEnabled())
      {
        v12 = @"PTPDataSource";
        if ([@"PTPDataSource" length] >= 0x15)
        {
          v13 = [@"PTPDataSource" substringWithRange:{0, 18}];
          v12 = [v13 stringByAppendingString:@".."];
        }

        v14 = [WeakRetained queueName];
        v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Canceled [%s]", [v14 UTF8String]);

        v16 = _gICOSLog;
        if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v12;
          v18 = v16;
          v19 = [(__CFString *)v12 UTF8String];
          *buf = 136446466;
          v33 = v19;
          v34 = 2114;
          v35 = v15;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
        }
      }

      v20 = [WeakRetained plAssetTimer];
      dispatch_source_cancel(v20);

      [WeakRetained setPlAssetTimer:0];
      [WeakRetained setPlAssetReader:0];
      if ([*(a1 + 32) fd] != -1 && objc_msgSend(WeakRetained, "fd") != -1)
      {
        close([WeakRetained fd]);
        [WeakRetained setFd:0xFFFFFFFFLL];
      }

      [WeakRetained setDataSourcePath:0];
    }

    __ICOSLogCreate();
    if (__ICLogTypeEnabled())
    {
      v21 = @"PTPDataSource";
      if ([@"PTPDataSource" length] >= 0x15)
      {
        v22 = [@"PTPDataSource" substringWithRange:{0, 18}];
        v21 = [v22 stringByAppendingString:@".."];
      }

      v23 = [WeakRetained queueName];
      v24 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Destroyed [%s]", [v23 UTF8String]);

      v25 = _gICOSLog;
      if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      v26 = v21;
      v27 = v25;
      v28 = [(__CFString *)v21 UTF8String];
      *buf = 136446466;
      v33 = v28;
      v34 = 2114;
      v35 = v24;
LABEL_29:
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);

LABEL_30:
    }
  }

  else if (v3)
  {
    v21 = @"PTPDataSource";
    if ([@"PTPDataSource" length] >= 0x15)
    {
      v29 = [@"PTPDataSource" substringWithRange:{0, 18}];
      v21 = [v29 stringByAppendingString:@".."];
    }

    v24 = [NSString stringWithFormat:@"strongSelf is not available, bailing."];
    v30 = _gICOSLog;
    if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    v31 = v21;
    v27 = v30;
    *buf = 136446466;
    v33 = [(__CFString *)v21 UTF8String];
    v34 = 2114;
    v35 = v24;
    goto LABEL_29;
  }
}

uint64_t start(int a1, char *const *a2)
{
  context = objc_autoreleasePoolPush();
  v4 = NSHomeDirectory();
  v5 = [v4 stringByAppendingPathComponent:@"Media"];

  memset(v18, 0, sizeof(v18));
  __ICReadPrefs();
  sub_100004380();
  _set_user_dir_suffix();
  v6 = 0;
  v7 = 1;
LABEL_2:
  v8 = v7;
LABEL_3:
  v7 = v8;
  while (1)
  {
    while (1)
    {
      v9 = getopt(a1, a2, "n:p:t:s:g:");
      if (v9 <= 111)
      {
        break;
      }

      if (v9 == 112)
      {
        LOBYTE(v18[0]) = 0;
        __strlcpy_chk();
        v12 = [NSString stringWithFormat:@"%s", v18, context];

        v5 = v12;
        goto LABEL_2;
      }

      if (v9 == 116)
      {
        v10 = optarg;
        v11 = strncmp("usb", optarg, 0xFuLL);
        v8 = 1;
        if (v11)
        {
          if (!strncmp("tcpip", v10, 0xFuLL))
          {
            v8 = 3;
          }

          else
          {
            v8 = v7;
          }
        }

        goto LABEL_3;
      }
    }

    if (v9 == -1)
    {
      break;
    }

    if (v9 == 110)
    {
      LOBYTE(v18[0]) = 0;
      __strlcpy_chk();
      v13 = [NSString stringWithFormat:@"%s", v18];

      v6 = v13;
      goto LABEL_2;
    }
  }

  if (!v6)
  {
    v14 = MGCopyAnswer();
    if (v14)
    {
      v6 = v14;
    }

    else
    {
      v6 = @"iPhone";
    }
  }

  v15 = [[PTPResponder alloc] initWithName:v6 path:v5 andTransportType:v7];
  [(PTPResponder *)v15 start];
  [(PTPResponder *)v15 runRunLoop];
  [(PTPResponder *)v15 stop];

  objc_autoreleasePoolPop(context);
  return 0;
}

void sub_1000246F4()
{
  sub_10000BE7C();
  v2 = v1;
  v3 = v0;
  sub_10000BEAC();
  sub_10000BE64();
  sub_10000BE8C(&_mh_execute_header, v4, v5, "%{public}20s ! %{public}@", v6, v7, v8, v9, v10);
}

void sub_100024780(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%{public}@", &v2, 0xCu);
}

void sub_1000247F8(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}@", &v2, 0xCu);
}

void sub_100024884(void *a1, void *a2)
{
  v4 = a1;
  v5 = a2;
  [a1 UTF8String];
  sub_10000BE64();
  sub_10000BE8C(&_mh_execute_header, v6, v7, "%{public}20s ! %{public}@", v8, v9, v10, v11, v12);
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v3 = _CFUUIDGetUUIDBytes(uuid);
  v2 = *&v3.byte8;
  v1 = *&v3.byte0;
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}