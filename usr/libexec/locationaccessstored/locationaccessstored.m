uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  if (qword_1000106B0 != -1)
  {
    sub_1000048BC();
  }

  v1 = qword_1000106B8;
  if (os_log_type_enabled(qword_1000106B8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7[0]) = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Starting locationaccessstore", v7, 2u);
  }

  v2 = +[CLLALocationAccessStoreManager sharedInstance];
  if (qword_1000107E8 != -1)
  {
    sub_1000048D0();
  }

  if (qword_1000106B0 != -1)
  {
    sub_1000048F8();
  }

  v3 = qword_1000106B8;
  if (os_log_type_enabled(qword_1000106B8, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = byte_1000107E0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#CLLA isKoreaSKU: %d", v7, 8u);
  }

  v4 = byte_1000107E0;
  objc_autoreleasePoolPop(v0);
  if (v4 == 1)
  {
    v6 = objc_autoreleasePoolPush();
    dispatch_main();
  }

  return 0;
}

void sub_100001040(id a1)
{
  v1 = os_log_create("com.apple.locationaccessstored", "LocationAccessStoreDaemon");
  v2 = qword_1000106B8;
  qword_1000106B8 = v1;
}

void sub_100001084(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    if (CFStringCompare(v1, @"KH", 0) == kCFCompareEqualTo)
    {
      byte_1000107E0 = 1;
    }

    CFRelease(v2);
  }
}

void sub_10000113C(id a1)
{
  v1 = objc_alloc_init(CLLALocationAccessStoreManager);
  v2 = qword_1000107F8;
  qword_1000107F8 = v1;
}

id sub_100001684()
{
  if (qword_1000106B0 != -1)
  {
    sub_100004984();
  }

  v1 = qword_1000106B8;

  return v1;
}

void sub_100001974(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setExpirationHandler:&stru_10000C338];
  [*(a1 + 32) saveClientsReceivingLocationsToDisk];
  [v3 setTaskCompleted];
}

void sub_1000019E8(id a1)
{
  if (qword_1000106B0 != -1)
  {
    sub_100004984();
  }

  v1 = qword_1000106B8;
  if (os_log_type_enabled(qword_1000106B8, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#CLLA expiration handler called", v2, 2u);
  }
}

void sub_100002454(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v27 = v5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_15;
  }

  v8 = [a1[4] objectForKeyedSubscript:v27];
  v9 = [v8 objectForKeyedSubscript:@"ReceivingLocationInformationTimeStarted"];

  v10 = a1[4];
  if (!v9)
  {
    v21 = [v10 objectForKeyedSubscript:v27];
    v22 = [v21 objectForKeyedSubscript:@"ReceivingLocationInformationTimeStopped"];

    if (v22)
    {
      v23 = [a1[4] objectForKeyedSubscript:v27];
      v13 = [v23 objectForKeyedSubscript:@"ReceivingLocationInformationTimeStopped"];

      if (v13)
      {
        [v13 doubleValue];
        v25 = v24;
        [a1[5] timeIntervalSinceReferenceDate];
        v15 = v27;
        v12 = 0;
        v14 = 0;
        v16 = v27;
        if (v25 > v26)
        {
          goto LABEL_4;
        }

        goto LABEL_17;
      }

LABEL_16:
      v14 = 0;
      v16 = v27;
      goto LABEL_17;
    }

LABEL_15:
    v13 = 0;
    goto LABEL_16;
  }

  v11 = [v10 objectForKeyedSubscript:v27];
  v12 = [v11 objectForKeyedSubscript:@"ReceivingLocationInformationTimeStarted"];

  v13 = 0;
  v14 = 0;
  v15 = v27;
  v16 = v27;
  if (v12)
  {
LABEL_4:
    v17 = [v15 containsString:@"/"];
    v18 = a1[6];
    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = v27;
    }

    if (v17)
    {
      v20 = v27;
    }

    else
    {
      v20 = 0;
    }

    v16 = [a1[6] getLocalizedNameForBundleID:v19 bundlePath:v20];

    [a1[7] addObject:v16];
    v14 = v12;
  }

LABEL_17:

  objc_autoreleasePoolPop(v7);
}

void sub_100002B24(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_100002D7C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100002E6C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_100003F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  objc_end_catch();

  JUMPOUT(0x100004084);
}

void sub_100004794(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100004804(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    if (CFStringCompare(v1, @"KH", 0) == kCFCompareEqualTo)
    {
      byte_100010800 = 1;
    }

    CFRelease(v2);
  }
}

void sub_100004878(id a1)
{
  v1 = os_log_create("com.apple.locationaccessstored", "LocationAccessStoreDaemon");
  v2 = qword_1000106B8;
  qword_1000106B8 = v1;
}