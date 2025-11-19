uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  _set_user_dir_suffix();
  v1 = NSTemporaryDirectory();
  v2 = objc_opt_new();
  v3 = qword_1000111E8;
  qword_1000111E8 = v2;

  objc_autoreleasePoolPop(v0);
  CFRunLoopRun();
  return 0;
}

void sub_10000277C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_100002798(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void sub_1000027B4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100002AD4(uint64_t a1)
{
  if ([*(a1 + 32) _registerForLockStatusNotifications] && objc_msgSend(*(a1 + 32), "_registerForMessagesAppForegroundedNotifications"))
  {
    v2 = [SRSensorWriter alloc];
    v3 = [v2 initWithIdentifier:SRSensorFacialMetrics];
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    v6 = *(*(a1 + 32) + 16);
    if (v6)
    {
      [v6 setDelegate:?];
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    else
    {
      v7 = sub_100004784();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        sub_100005C90();
      }
    }
  }
}

void sub_100002C8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100002CAC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v3, HostTimeClock);
  [WeakRetained _handleLockStatusNotificationAtTimestamp:&v3];
}

void sub_100003058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100003080(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _deviceUnlockTimerExpiration];
}

void sub_100003458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100003484(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleBiomeEvent:v3];
}

void sub_100003738(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  if (v5)
  {
    v7 = sub_100004784();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100005DF8();
    }
  }

  else
  {
    v8 = v6;
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = *(v10 + 24);
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_100003854;
    v15 = &unk_10000C5D0;
    v16 = v10;
    v19 = a2;
    v17 = v9;
    v18 = *(a1 + 48);
    dispatch_async(v11, &v12);
    [*(a1 + 32) _reportSkBundleIdEligibilityCheckLatencyWithStartTimestamp:*(a1 + 56) andStopTimestamp:{v8, v12, v13, v14, v15, v16}];
  }
}

void sub_100003D94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100003DBC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = sub_100004784();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "app foregrounded timer expired", &v11, 2u);
  }

  v4 = CFAbsoluteTimeGetCurrent() - WeakRetained[4];
  v5 = sub_100004784();
  v6 = v5;
  if (v4 <= 31.0)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "app foreground timer took (%f s) to fire", &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    sub_100005EA8();
  }

  v7 = objc_loadWeakRetained((a1 + 32));
  [v7 setCameraSessionActiveReason:{objc_msgSend(v7, "cameraSessionActiveReason") & 0xFFFFFFFD}];

  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v8 cameraSession];
  [v9 updateMessageSessionWithSessionStopTimestamp:CFAbsoluteTimeGetCurrent()];

  v10 = objc_loadWeakRetained((a1 + 32));
  [v10 _requestToStopCameraSession];
}

void sub_1000044AC(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  [v1 setBool:1 forKey:@"userEnrolledInStudy"];
}

void sub_1000045A4(uint64_t a1)
{
  v2 = sub_100004784();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "sensor writer is no longer monitoring", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setCameraSessionActiveReason:0];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 _requestToStopCameraSession];

  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 setBool:0 forKey:@"userEnrolledInStudy"];
}

id sub_100004784()
{
  if (qword_1000111F0 != -1)
  {
    sub_100006070();
  }

  v1 = qword_1000111F8;

  return v1;
}

void sub_1000047C8(id a1)
{
  qword_1000111F8 = os_log_create("com.apple.facemetricsd", "main");

  _objc_release_x1();
}

void sub_100005898(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100005B08(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"timestamp"];
  sub_1000027B4(&_mh_execute_header, v2, v3, "metrics do not contain a valid timestamp: %@", v4, v5, v6, v7, 2u);
}

void sub_100005B98(os_log_t log, double a2)
{
  v2 = 134217984;
  v3 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "seconds from start of camera session to packet: %f", &v2, 0xCu);
}

void sub_100005C14(os_log_t log, double a2)
{
  v2 = 134217984;
  v3 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "secondsFromStart is out of range (%g)", &v2, 0xCu);
}

void sub_100005C90()
{
  sub_100002770();
  sub_100004758();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100005D40()
{
  sub_100002770();
  sub_100004758();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100005D7C()
{
  sub_100004764();
  sub_100004758();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100005E6C()
{
  sub_100002770();
  sub_100004778();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100005EA8()
{
  sub_100004764();
  sub_100004758();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100005F24()
{
  sub_100002770();
  sub_100004778();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100005F60(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = 134218240;
  v6 = [a1 length];
  v7 = 2048;
  v8 = a2;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "writing a %zu-byte sample to SensorKit with timestamp=%llu", &v5, 0x16u);
}

void sub_100006084(void *a1, NSObject *a2)
{
  v3 = 134218240;
  v4 = 204;
  v5 = 2048;
  v6 = [a1 length];
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "expected %zu bytes of blendshape, but %zu bytes were received", &v3, 0x16u);
}