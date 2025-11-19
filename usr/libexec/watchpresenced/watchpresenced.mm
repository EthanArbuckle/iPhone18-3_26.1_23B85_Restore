id sub_100001040(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000337C;
  block[3] = &unk_100010580;
  block[4] = a1;
  if (qword_100016AB8 != -1)
  {
    dispatch_once(&qword_100016AB8, block);
  }

  v1 = qword_100016AB0;

  return v1;
}

void sub_100001204(uint64_t a1)
{
  [*(a1 + 32) resetBT];
  [*(a1 + 32) _stopWristMonitoring];
  v2 = [*(a1 + 32) stateMachine];
  [v2 reset];
}

void sub_1000013C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_100001500(id a1)
{
  qword_100016A98 = objc_alloc_init(DPCDefaults);

  _objc_release_x1();
}

void sub_100001E68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100001E84(uint64_t a1)
{
  v2 = sub_100001040(off_100016898);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Fired Absence event", v9, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained detectedNewEventBlock];
  v4[2](v4, 2);

  v5 = +[NSDate date];
  [v5 timeIntervalSince1970];
  v7 = v6;
  v8 = [*(a1 + 32) stateMachine];
  [v8 setLastAbsenceEventTimestamp:v7];
}

void sub_100002DF8(id a1)
{
  qword_100016AA8 = objc_alloc_init(DPCTelemetry);

  _objc_release_x1();
}

uint64_t sub_10000337C(uint64_t a1)
{
  qword_100016AB0 = os_log_create("com.apple.devicepresence", *(a1 + 32));

  return _objc_release_x1();
}

void sub_100003400(id a1)
{
  qword_100016AC8 = objc_alloc_init(DPCDaemon);

  _objc_release_x1();
}

void sub_100003D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v24 - 96));
  _Unwind_Resume(a1);
}

void sub_100003D84(uint64_t a1)
{
  v2 = sub_100001040(off_100016898);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = 138412290;
    v7 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "connection %@ invalid", &v6, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = objc_loadWeakRetained((a1 + 32));
  if (v4)
  {
    [v4[6] lock];
    [v4[7] removeObject:v5];
    [v4[6] unlock];
    if ([v4 checkIfShouldShutdown])
    {
      [v4 shutdownTheDetection];
    }
  }
}

void sub_100003EA0(uint64_t a1)
{
  v2 = sub_100001040(off_100016898);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = 138412290;
    v7 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "connection %@ interrupted", &v6, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = objc_loadWeakRetained((a1 + 32));
  if (v4)
  {
    [v4[6] lock];
    [v4[7] removeObject:v5];
    [v4[6] unlock];
    if ([v4 checkIfShouldShutdown])
    {
      [v4 shutdownTheDetection];
    }
  }
}

void sub_10000420C(uint64_t a1)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100004398;
  v6[3] = &unk_1000105F0;
  objc_copyWeak(&v7, (a1 + 40));
  [*(*(a1 + 32) + 8) setDetectedNewEventBlock:v6];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000043F4;
  v4[3] = &unk_1000105F0;
  objc_copyWeak(&v5, (a1 + 40));
  [*(*(a1 + 32) + 8) setDetectedNewErrorBlock:v4];
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100004504;
  v2[3] = &unk_1000105F0;
  objc_copyWeak(&v3, (a1 + 40));
  [*(*(a1 + 32) + 8) setDetectedNewWatchStatusEventBlock:v2];
  objc_destroyWeak(&v3);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&v7);
}

void sub_100004364(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100004398(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  WeakRetained[8] = a2;
  LODWORD(v3) = 1065185444;
  [WeakRetained notifyNewEvents:a2 probability:v3];
}

void sub_1000043F4(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = WeakRetained[7];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [WeakRetained notifyConnection:*(*(&v9 + 1) + 8 * v8) withError:{a2, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

void sub_100004504(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained notifyNewWatchStatusEvents:a2];
}

void sub_1000047C8()
{
  v0 = sub_100001040(off_100016898);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "capture sigterm, going to release daemon object...", buf, 2u);
  }

  v1 = qword_100016AD8;
  qword_100016AD8 = 0;

  v2 = sub_100001040(off_100016898);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "daemon object set to nil...", v3, 2u);
  }
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  if (!qword_100016AD8)
  {
    v1 = +[DPCDaemon sharedInstance];
    v2 = qword_100016AD8;
    qword_100016AD8 = v1;
  }

  objc_autoreleasePoolPop(v0);
  signal(15, sub_1000047C8);
  v3 = +[NSRunLoop currentRunLoop];
  [v3 run];

  return 0;
}

void sub_100005568(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = sub_100001040(off_100016898);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SFClient invalidation completed, releasing reference", v4, 2u);
    }

    v3 = WeakRetained[5];
    WeakRetained[5] = 0;
  }
}

void sub_100005728(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_100005744(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained detectWatchWristStateEvent:a2];
}

void sub_10000585C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100005880(uint64_t a1)
{
  v2 = sub_100001040(off_100016898);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received switch watch notification...", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateActiveNRDevice];
}

void sub_100006714(uint64_t a1)
{
  v2 = [*(a1 + 32) stateMachine];
  v3 = [v2 isInRSSIStreamingMode];

  if ((v3 & 1) == 0)
  {
    v4 = [*(a1 + 32) stateMachine];
    v5 = [v4 isInRSSIMode];

    if (v5)
    {
      [*(a1 + 32) disableRSSIStatisticsDetection];
      v6 = *(a1 + 32);
      v8 = v6[1];
      v7 = v6[2];
      v12 = +[DPCDefaults sharedInstance];
      v9 = [v12 NSNumberForDefault:@"DPCDefaultsThresholdD1"];
      v10 = +[DPCDefaults sharedInstance];
      v11 = [v10 NSNumberForDefault:@"DPCDefaultsThresholdDMAX"];
      [v6 changeRSSIStatisticsDetection:v7 manager:v8 closer:v9 further:v11 maskDecision:1];
    }
  }
}

void sub_1000068B8(uint64_t a1)
{
  v2 = [*(a1 + 32) stateMachine];
  v3 = [v2 isInRSSIStreamingMode];

  if ((v3 & 1) == 0)
  {
    v4 = [*(a1 + 32) stateMachine];
    v5 = [v4 isInRSSIMode];

    if (v5)
    {
      [*(a1 + 32) disableRSSIStatisticsDetection];
      v6 = +[DPCDefaults sharedInstance];
      v7 = [v6 NSNumberForDefault:@"DPCDefaultsThresholdD2"];
      v8 = [v7 intValue];
      v9 = [*(a1 + 32) stateMachine];
      v10 = v8 - [v9 D2ThresholdMargin];

      v11 = +[DPCDefaults sharedInstance];
      v12 = [v11 NSNumberForDefault:@"DPCDefaultsSessionBasedAdaptiveRSSICapValue"];
      v13 = [v12 intValue];

      if (v10 <= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = v10;
      }

      v15 = *(a1 + 32);
      v17 = v15[1];
      v16 = v15[2];
      v20 = +[DPCDefaults sharedInstance];
      v18 = [v20 NSNumberForDefault:@"DPCDefaultsThresholdDMIN"];
      v19 = [NSNumber numberWithInt:v14];
      [v15 changeRSSIStatisticsDetection:v16 manager:v17 closer:v18 further:v19 maskDecision:0];
    }
  }
}

void sub_100006AE8(uint64_t a1)
{
  v2 = [*(a1 + 32) stateMachine];
  v3 = [v2 isInRSSIStreamingMode];

  if ((v3 & 1) == 0)
  {
    v4 = [*(a1 + 32) stateMachine];
    v5 = [v4 isInRSSIMode];

    if (v5)
    {
      v6 = [*(a1 + 32) stateMachine];
      [v6 setIsInDiscoveryMode:1];

      [*(a1 + 32) disableRSSIStatisticsDetection];
      v7 = *(a1 + 32);
      if (*(v7 + 16))
      {
        if (*(v7 + 8))
        {
          v8 = +[DPCDefaults sharedInstance];

          if (v8)
          {
            v9 = *(a1 + 32);
            v11 = v9[1];
            v10 = v9[2];
            v15 = +[DPCDefaults sharedInstance];
            v12 = [v15 NSNumberForDefault:@"DPCDefaultsThresholdDMIN"];
            v13 = +[DPCDefaults sharedInstance];
            v14 = [v13 NSNumberForDefault:@"DPCDefaultsThresholdDDiscovery"];
            [v9 changeRSSIStatisticsDetection:v10 manager:v11 closer:v12 further:v14 maskDecision:1];
          }
        }
      }
    }
  }
}

void sub_100006E14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = sub_100001040(off_100016898);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v5[0] = 67109120;
    v5[1] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "deviceIsConnectedBluetooth isBluetoothConnected: %d", v5, 8u);
  }

  [WeakRetained watchConnectivityChanges];
}

void sub_1000076E4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "CBManager unable to retrieve peripheral at MAC: %@, the bluetooth might not be ready", &v2, 0xCu);
}

void sub_10000775C(os_log_t log)
{
  v1 = 138412290;
  v2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "macAddress not available yet: %@", &v1, 0xCu);
}