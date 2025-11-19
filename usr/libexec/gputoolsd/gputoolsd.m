void sub_100001518(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t sub_100001938(uint64_t a1)
{
  v1 = [RBSProcessPredicate predicateMatchingBundleIdentifier:a1];
  v2 = [RBSProcessHandle handleForPredicate:v1 error:0];

  if (v2)
  {
    v3 = [v2 pid];
  }

  else
  {
    v3 = 0xFFFFFFFFLL;
  }

  return v3;
}

void sub_1000019D4(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 description];
    v9 = [v7 UTF8String];
    DYLog();

    [NSNumber numberWithBool:0, v9];
  }

  else
  {
    [NSNumber numberWithBool:1];
  }
  v8 = ;
  [*(a1 + 32) setResult:v8];
}

void sub_1000021E0(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 32) error];
  v2 = [v5 domain];
  v3 = v2;
  if (v2 == DYErrorDomain)
  {
    v4 = [v5 code];

    if (v4 == 6)
    {
      goto LABEL_5;
    }
  }

  else
  {
  }

  DYLog();
  [*(a1 + 32) terminate:1];
LABEL_5:
}

uint64_t sub_1000022C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) setError:v6];
  v7 = [v5 objectPayload];
  [*(a1 + 32) setResult:v7];

  return 0;
}

void sub_100002768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000280C(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 description];
    [v7 UTF8String];
    DYLog();
  }

  else if (v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = [v8 pid];
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t sub_1000028F4(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.MobileReplayer"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"com.apple.MTLReplayer"];
  }

  return v2;
}

void sub_100002D60(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) error];
  v3 = DYErrorDomain;
  v4 = v2;
  v5 = v3;
  if (!v5)
  {
    __assert_rtn("BOOL dy_error_eq(NSError *__strong, NSString *__strong, int)", "", 0, "domain");
  }

  if (v4 && [v4 code] == 6)
  {
    v6 = [v4 domain];
    v7 = [v6 isEqualToString:v5];

    if (v7)
    {
      return;
    }
  }

  else
  {
  }

  v8 = [*(*(a1 + 32) + 32) error];
  v9 = [v8 description];
  [v9 UTF8String];
  DYLog();

  v10 = *(a1 + 32);

  [v10 terminate:1];
}

void sub_100002EFC(uint64_t a1)
{
  if (([*(a1 + 32) BOOLResult] & 1) == 0)
  {
    v9 = [*(a1 + 32) error];
    v2 = [v9 description];
    v8 = [v2 UTF8String];
    DYLog();

    [*(a1 + 40) terminate:{1, v8}];
  }

  v3 = kDYGuestAppLaunchEnvironmentKey;
  v4 = *(a1 + 48);
  v5 = kDYGuestAppLaunchArgumentsKey;
  v6 = [*(a1 + 56) objectForKey:kDYGuestAppLaunchArgumentsKey];
  v10 = [NSDictionary dictionaryWithObjectsAndKeys:v4, v3, v6, v5, 0];

  v7 = [DYTransportMessage messageWithKind:1287 plistPayload:v10];
  if (!v7)
  {
    DYLog();
    [*(a1 + 40) terminate:1];
  }

  if (([*(*(a1 + 40) + 32) send:v7 error:0] & 1) == 0)
  {
    DYLog();
    [*(a1 + 40) terminate:1];
  }
}

void sub_100003D3C(uint64_t a1, const void *a2)
{
  Value = CFDictionaryGetValue(*(a1 + 32), a2);
  if (Value)
  {
    v5 = Value;
    if (is_valid_plist_value(Value))
    {
      v6 = *(a1 + 40);

      CFDictionarySetValue(v6, a2, v5);
    }
  }
}

void sub_100003F80(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [*(a1 + 32) processApplication:v4];
    if (v3)
    {
      [*(a1 + 40) addObject:v3];
    }
  }
}

void sub_100004934(uint64_t a1)
{
  v2 = (*(a1 + 32) + 8);
  v3 = *v2;
  v4 = v2[1];
  if (CSIsNull())
  {
    [*(a1 + 32) inferiorPid];
    v5 = CSSymbolicatorCreateWithPid();
    v6 = (*(a1 + 32) + 8);
    *v6 = v5;
    v6[1] = v7;
  }

  v8 = *(*(a1 + 32) + 8);
  v9 = *(*(a1 + 32) + 16);
  if (CSIsNull())
  {
    Signature = 0;
  }

  else
  {
    v10 = *(*(a1 + 32) + 8);
    v11 = *(*(a1 + 32) + 16);
    Signature = CSSymbolicatorCreateSignature();
  }

  v12 = [*(a1 + 32) transport];
  v13 = [DYTransportMessage messageWithKind:1538 payload:Signature];
  [v12 send:v13 inReplyTo:*(a1 + 40) error:0];
}

NSObject *sub_100004C38(uint64_t a1, NSObject *a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a2);
  if (v6)
  {
    v7 = 1000000000 * a1;
    v8 = dispatch_time(0, v7);
    dispatch_source_set_timer(v6, v8, v7, 0x989680uLL);
    dispatch_source_set_event_handler(v6, v5);
    dispatch_resume(v6);
  }

  return v6;
}

void sub_100004D78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = DYGPUStatsReport;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

CFComparisonResult sub_100004E94(uint64_t a1)
{
  Group = IOReportChannelGetGroup();
  if (CFStringCompare(Group, *(a1 + 32), 1uLL))
  {
    return 16;
  }

  SubGroup = IOReportChannelGetSubGroup();
  result = CFStringCompare(SubGroup, *(a1 + 40), 1uLL);
  if (result)
  {
    return 16;
  }

  return result;
}

void sub_100004FB8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  Samples = IOReportCreateSamples();
  if (Samples)
  {
    v6 = Samples;
    if (*(*(a1 + 32) + 32))
    {
      SamplesDelta = IOReportCreateSamplesDelta();
      if (SamplesDelta)
      {
        v8 = SamplesDelta;
        v11 = 0;
        v12 = &v11;
        v13 = 0x3032000000;
        v14 = sub_100005120;
        v15 = sub_100005130;
        v16 = objc_opt_new();
        IOReportIterate();
        objc_storeStrong((*(a1 + 32) + 40), v12[5]);
        CFRelease(v8);
        _Block_object_dispose(&v11, 8);
      }
    }

    v9 = *(a1 + 32);
    v10 = *(v9 + 32);
    *(v9 + 32) = v6;
  }
}

void sub_100005100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_100005120(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005138(uint64_t a1)
{
  if (IOReportChannelGetFormat() != 2)
  {
    return 16;
  }

  Count = IOReportStateGetCount();
  v3 = objc_alloc_init(NSNumberFormatter);
  [v3 setNumberStyle:1];
  if (Count >= 1)
  {
    v4 = 0;
    v5 = 0.0;
    v6 = 0.0;
    do
    {
      NameForIndex = IOReportStateGetNameForIndex();
      IOReportStateGetDutyCycle();
      if (NameForIndex)
      {
        v9 = v8;
        if ([NameForIndex length])
        {
          v10 = [NSNumber numberWithDouble:v9 * 100.0];
          [*(*(*(a1 + 32) + 8) + 40) setObject:v10 forKeyedSubscript:NameForIndex];

          if (([NameForIndex isEqualToString:@"OFF"] & 1) == 0)
          {
            if ([NameForIndex hasPrefix:@"P"])
            {
              v11 = [NameForIndex substringFromIndex:1];
              v12 = v11;
              if (v11 && [v11 length])
              {
                v13 = v3;
                v14 = [v3 numberFromString:v12];
                v15 = v14;
                if (v14)
                {
                  [v14 doubleValue];
                  v5 = v5 + v16 * v9;
                  v6 = v6 + v9;
                }

                v3 = v13;
              }
            }
          }
        }
      }

      ++v4;
    }

    while (Count != v4);
    if (v6 > 2.22044605e-16)
    {
      v17 = [NSNumber numberWithDouble:v5 / v6];
      [*(*(*(a1 + 32) + 8) + 40) setObject:v17 forKeyedSubscript:kDYXPState];
    }
  }

  return 0;
}

uint64_t sub_100005960(uint64_t a1)
{
  result = SSLRead(*(*(a1 + 32) + 288), *(a1 + 56), *(a1 + 64), (*(*(a1 + 48) + 8) + 24));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_100005B90(uint64_t a1)
{
  result = SSLWrite(*(*(a1 + 32) + 288), *(a1 + 56), *(a1 + 64), (*(*(a1 + 48) + 8) + 24));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100005D2C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + OBJC_IVAR___DYTransport__invalid) != 1)
  {
    if (![v2 connected])
    {
      v8 = *(a1 + 32);
      v9 = secure_lockdown_checkin();
      if (v9)
      {
        v10 = v9;
        if (v9 > 0xB)
        {
          v11 = "unknown";
        }

        else
        {
          v11 = (&off_10000C850)[v9 - 1];
        }

        v19 = [NSString stringWithUTF8String:v11];
        v20 = v10;
        _DYOLog();

        v4 = v10;
        v3 = @"LockdownErrorDomain";
        goto LABEL_16;
      }

      v12 = *(*(a1 + 32) + 272);
      *(*(a1 + 32) + 296) = lockdown_get_socket();
      v13 = *(a1 + 32);
      if (*(v13 + 296) == -1)
      {
        _DYOLog();
        v5 = 0;
        goto LABEL_5;
      }

      v14 = *(v13 + 272);
      *(*(a1 + 32) + 288) = lockdown_get_securecontext();
      v15 = *(a1 + 32);
      v16 = *(v15 + 288);
      if (v16 && *(v15 + 296) == *(v16 + 8))
      {
        v16[2] = sub_100005F7C;
        v16[3] = sub_100005F88;
        v15 = *(a1 + 32);
        v16[4] = v15;
      }

      [v15 runWithSocket:*(v15 + 296)];
    }

    v5 = 1;
LABEL_5:
    v6 = [NSNumber numberWithBool:v5];
    v7 = (a1 + 40);
    goto LABEL_17;
  }

  v3 = DYErrorDomain;
  v4 = 32;
LABEL_16:
  v17 = [DYError errorWithDomain:v3 code:v4 userInfo:0, v19, v20];
  v18 = *(a1 + 40);
  v7 = (a1 + 40);
  [v18 setError:v17];

  v6 = [NSNumber numberWithBool:0];
LABEL_17:
  v21 = v6;
  [*v7 setResult:v6];
}

void start()
{
  sub_100006060();
  v0 = objc_autoreleasePoolPush();
  signal(15, 1);
  v1 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, &_dispatch_main_q);
  dispatch_source_set_event_handler(v1, &stru_10000C8C8);
  dispatch_resume(v1);
  signal(20, 1);
  v2 = objc_alloc_init(DYLockdownTransport);
  v3 = [[DYEmbeddedDaemon alloc] initWithTransport:v2 terminationHandler:&stru_10000C908];
  [(DYEmbeddedDaemon *)v3 run];

  objc_autoreleasePoolPop(v0);
  dispatch_main();
}

uint64_t sub_100006060()
{
  v1 = 8;
  v2 = 0;
  result = sysctlbyname("security.mac.amfi.developer_mode_status", &v2, &v1, 0, 0);
  if (result)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000066A8();
    }

LABEL_8:
    exit(1);
  }

  if (v2 != 1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100006730();
    }

    goto LABEL_8;
  }

  return result;
}

void sub_1000066A8()
{
  v0 = *__error();
  v1[0] = 67109120;
  v1[1] = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to read developer mode status: %{darwin.errno}d", v1, 8u);
}