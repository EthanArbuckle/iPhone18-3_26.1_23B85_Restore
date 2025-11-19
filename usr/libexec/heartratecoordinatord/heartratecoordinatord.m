id sub_1000012D8()
{
  if (qword_100048850 != -1)
  {
    sub_100026B80();
  }

  v1 = qword_100048858;

  return v1;
}

id sub_10000132C()
{
  if (qword_1000488F0 != -1)
  {
    sub_10001AA24();
  }

  v1 = qword_1000488F8;

  return v1;
}

id sub_100001844(__int16 a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8[0] = a1;
  v8[1] = a2;
  v6 = [[NSMutableData alloc] initWithCapacity:a2 + 4];
  [v6 appendBytes:v8 length:4];
  [v6 appendData:v5];

  return v6;
}

id sub_1000018EC(void *a1)
{
  v1 = a1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100007C10;
  v4[3] = &unk_100040890;
  v2 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v1, "count")}];
  v5 = v2;
  [v1 enumerateObjectsUsingBlock:v4];

  return v2;
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = sub_1000012D8();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "heartratecoordinatord init", v5, 2u);
  }

  v2 = objc_opt_new();
  v3 = qword_100048848;
  qword_100048848 = v2;

  objc_autoreleasePoolPop(v0);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_100040630);
  CFRunLoopRun();
  return 0;
}

void sub_100001B88(id a1, OS_xpc_object *a2)
{
  v2 = [NSString stringWithUTF8String:xpc_dictionary_get_string(a2, _xpc_event_key_name)];
  v3 = sub_1000012D8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100026B08(v2, v3);
  }

  if ([@"BTSettingsHRMConnectedNotification" isEqualToString:v2])
  {
    v4 = sub_1000012D8();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = v2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received event %{public}@", &v5, 0xCu);
    }
  }
}

void sub_100001C9C(id a1)
{
  v1 = os_log_create("com.apple.HeartRateCoordinator", "daemon");
  v2 = qword_100048858;
  qword_100048858 = v1;
}

uint64_t sub_10000223C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 3)
  {
    v3 = sub_1000012D8();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "os_state_add_handler with OS_STATE_API_REQUEST called", v6, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained handleSysdiagnoseTrigger];
  }

  return 0;
}

void sub_1000029B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  objc_destroyWeak(v15);

  objc_destroyWeak((v18 - 80));
  _Unwind_Resume(a1);
}

void sub_100002B3C(uint64_t a1)
{
  v2 = sub_1000012D8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "invalidation handler called on the server side", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained logger];
  [v4 removeClient];

  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [v5 clientCollator];
  [v6 removeHrRequestorClient:*(a1 + 32)];
}

void sub_100002C20(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained logger];
  [v2 removeClient];

  v5 = objc_loadWeakRetained((a1 + 40));
  v3 = [v5 observerCollator];
  [v3 removeBluetoothLESourceObserverClient:*(a1 + 32)];
}

void sub_100003F08(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_100003FC8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_100004088(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1000043B0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

int64_t sub_1000049E4(id a1, NSDictionary *a2, NSDictionary *a3)
{
  v4 = a3;
  v5 = [(NSDictionary *)a2 objectForKeyedSubscript:@"modification_date"];
  v6 = [(NSDictionary *)v4 objectForKeyedSubscript:@"modification_date"];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_100004A64(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100004F10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained loggingDirectory];
  [HRCEventLoggerIOHelper deleteOldFilesInLoggingDirectory:v2 isInternalVariant:*(a1 + 40)];
}

void sub_100004FA8(uint64_t a1)
{
  v2 = sub_10000132C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "HRCEventLoggerIOHelper received SIGTERM", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained flush];
  v4 = WeakRetained[7];
  WeakRetained[7] = 0;

  v5 = WeakRetained[6];
  WeakRetained[6] = 0;

  v6 = sub_10000132C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "HRCEventLoggerIOHelper flush complete", v7, 2u);
  }

  xpc_transaction_exit_clean();
}

void sub_1000051D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _writeSegment];

  v3 = sub_10000132C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "HRCEventLogger buffer has been flushed: closing the current file", v6, 2u);
  }

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 setFileHandle:0];

  dispatch_source_cancel(*(a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  [v5 setTransaction:0];
}

void sub_100005BA4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100005BC0(int a1, NSObject *a2)
{
  v2[0] = 67240192;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "HRCEventLoggerIOHelper deleting files older than %{public}d days", v2, 8u);
}

void sub_100005CAC(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error excluding directory %{public}@ from backup: %{public}@", &v4, 0x16u);
}

void sub_100005ED4(uint64_t a1, int *a2, uint8_t *buf, os_log_t log)
{
  v4 = *a2;
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 1026;
  *(buf + 14) = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "failed to create file descriptor for %{public}@: errno=%{public}d", buf, 0x12u);
}

void sub_10000638C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1000063EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _check];
}

void sub_100006448(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _check];
}

void sub_100006610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = HRCImproveHealthAndActivityMonitor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10000686C(uint64_t a1)
{
  v2 = sub_10000132C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "HRCBLESource received SIGTERM", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained[11];
  WeakRetained[11] = 0;
}

void sub_10000697C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = HRCBLESource;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100006B8C(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
}

void sub_100006C68(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

void sub_100006D44(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
}

void sub_100006E20(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_100006F40(uint64_t a1)
{
  result = [*(a1 + 32) _setStreamingMode:*(a1 + 40) discoveryEnabled:*(*(a1 + 32) + 57)];
  *(*(a1 + 32) + 64) = *(a1 + 40);
  return result;
}

void sub_100007C10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [HRCUtilities translateToHRCDevice:a2];
  [v2 addObject:?];
}

void sub_100007CC8(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138543362;
  *a3 = a1;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Unable to read UUID from localidentifer %{public}@", buf, 0xCu);
}

void sub_100007D24(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Unable to read UUID from localidentifer %{public}@", buf, 0xCu);
}

void sub_100008270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35)
{
  objc_destroyWeak((v35 + 40));

  objc_destroyWeak((v39 + 40));
  objc_destroyWeak((v41 + 40));

  objc_destroyWeak((v40 + 40));
  objc_destroyWeak((v42 - 128));

  _Unwind_Resume(a1);
}

void sub_100008318(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000083D0;
  v6[3] = &unk_1000406E8;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v8);
}

void sub_1000083D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didReceiveBLEHeartRate:*(a1 + 32)];
}

void sub_100008434(uint64_t a1)
{
  v1 = *(a1 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000084C4;
  block[3] = &unk_1000407A0;
  objc_copyWeak(&v3, (a1 + 40));
  dispatch_async(v1, block);
  objc_destroyWeak(&v3);
}

void sub_1000084C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateActiveSources];
}

void sub_100008520(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a1 + 32);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3321888768;
  v13[2] = sub_10000863C;
  v13[3] = &unk_100040908;
  objc_copyWeak(&v14, (a1 + 40));
  v15 = v4;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  v10 = v7;
  v11 = v6;
  v12 = v4;
  dispatch_async(v9, v13);

  objc_destroyWeak(&v14);
}

void sub_10000863C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleSourceUpdate:a1 + 40];
}

id sub_1000086A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = *(a2 + 48);
  v6 = *(a2 + 56);
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  *(a1 + 56) = v6;
  result = *(a2 + 64);
  *(a1 + 64) = result;
  *(a1 + 72) = *(a2 + 72);
  return result;
}

void sub_1000086F0(uint64_t a1)
{
  v2 = *(a1 + 40);
}

void sub_100008734(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000087EC;
  v6[3] = &unk_1000406E8;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v8);
}

void sub_1000087EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleBleSourceListUpdate:*(a1 + 32)];
}

void sub_100008B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26)
{
  objc_destroyWeak((v31 + 40));

  objc_destroyWeak((v30 + 40));
  objc_destroyWeak((v29 + 40));

  objc_destroyWeak((v28 + 40));
  objc_destroyWeak((v32 - 88));

  _Unwind_Resume(a1);
}

void sub_100008B7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100008C34;
  v6[3] = &unk_1000406E8;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v8);
}

void sub_100008C34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didReceiveAppleHeartRate:*(a1 + 32)];
}

void sub_100008C98(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a1 + 32);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3321888768;
  v13[2] = sub_100008DB4;
  v13[3] = &unk_100040908;
  objc_copyWeak(&v14, (a1 + 40));
  v15 = v4;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  v10 = v7;
  v11 = v6;
  v12 = v4;
  dispatch_async(v9, v13);

  objc_destroyWeak(&v14);
}

void sub_100008DB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleSourceUpdate:a1 + 40];
}

void sub_100008E18(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008EE0;
  block[3] = &unk_100040990;
  objc_copyWeak(&v10, (a1 + 40));
  v11 = a2;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);

  objc_destroyWeak(&v10);
}

void sub_100008EE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleAnalyticsReport:*(a1 + 48) data:*(a1 + 32)];
}

void sub_100008F48(uint64_t a1, int a2, float a3)
{
  v5 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100008FF8;
  v6[3] = &unk_1000409E0;
  objc_copyWeak(&v7, (a1 + 40));
  v8 = a3;
  v9 = a2;
  dispatch_async(v5, v6);
  objc_destroyWeak(&v7);
}

void sub_100008FF8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  LODWORD(v3) = *(a1 + 40);
  v4 = WeakRetained;
  [WeakRetained _handleFitNotificationUpdateThreshold:*(a1 + 44) minimumPacketCount:v3];
}

id sub_100009FF8(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void sub_10000A034(uint64_t a1)
{
  v2 = *(a1 + 32);
}

id sub_10000A3E8(uint64_t a1)
{
  [*(a1 + 32) _addBluetoothLESourceObserverClient:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _recomputeCollatedBluetoothDiscoveryModeRequest];
}

id sub_10000A4C0(uint64_t a1)
{
  [*(a1 + 32) _removeBluetoothLESourceObserverClient:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _recomputeCollatedBluetoothDiscoveryModeRequest];
}

id sub_10000AC88(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 40);
  v5 = *(a2 + 48);
  v6 = *(a2 + 56);
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  *(a1 + 56) = v6;
  result = *(a2 + 64);
  *(a1 + 64) = result;
  *(a1 + 72) = *(a2 + 72);
  return result;
}

void sub_10000ACE4(uint64_t a1)
{
  v2 = *(a1 + 32);
}

__n128 sub_10000ADF8(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

__n128 sub_10000AF08(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

__n128 sub_10000B010(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

id sub_10000B0FC(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

void sub_10000BDC8()
{
  exception = __cxa_allocate_exception(8uLL);
}

void sub_10000BE14(uint64_t a1, NSObject *a2)
{
  v2 = 134349056;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Ignoring host analytics at streaming mode end timestamp %{public}llu", &v2, 0xCu);
}

void sub_10000C024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10000C04C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000C064(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = sub_10000C0F0(v4);
  [*(*(*(a1 + 32) + 8) + 40) setObject:v3 forKeyedSubscript:v4];
}

__CFString *sub_10000C0F0(void *a1)
{
  v1 = a1;
  if ([qword_100048888 containsObject:v1])
  {
    v2 = @"Unknown";
  }

  else
  {
    v3 = [qword_100048880 containsObject:v1];
    v4 = &off_100043240;
    if (v3)
    {
      v4 = &off_100043270;
    }

    v2 = v4;
  }

  return v2;
}

void sub_10000C18C(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [NSString stringWithFormat:@"%@_left", v7];
  v4 = [NSString stringWithFormat:@"%@_right", v7];
  v5 = sub_10000C0F0(v7);
  [*(*(*(a1 + 32) + 8) + 40) setObject:v5 forKeyedSubscript:v3];

  v6 = sub_10000C0F0(v7);
  [*(*(*(a1 + 32) + 8) + 40) setObject:v6 forKeyedSubscript:v4];
}

void sub_10000C55C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  __cxa_guard_abort(&qword_1000488A8);

  _Unwind_Resume(a1);
}

uint64_t sub_10000C598(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_10000C704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  __cxa_guard_abort(&qword_1000488C8);

  _Unwind_Resume(a1);
}

id sub_10000D7DC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    v5 = [NSString stringWithFormat:@"%@%@", v3, v4];
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  return v6;
}

void sub_10000DAFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10000FB88(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_10000FBFC(result, a4);
  }

  return result;
}

void sub_10000FBE0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000FBFC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_10000FC4C();
}

void sub_10000FC64(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_10000FCC0(exception, a1);
}

std::logic_error *sub_10000FCC0(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

uint64_t sub_10000FCF4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_10000FBFC(result, a4);
  }

  return result;
}

void sub_10000FD54(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000FD70(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void sub_10000FDC0(unsigned __int8 *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67240448;
  v3[1] = v2;
  v4 = 1026;
  v5 = 1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Analytics packet version %{public}u, expected %{public}u", v3, 0xEu);
}

void sub_10000FE4C(unsigned __int8 *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 3);
  v5[0] = 67109632;
  v5[1] = v2;
  v6 = 1024;
  v7 = v3;
  v8 = 1024;
  v9 = v4;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Analytics ver:%d size:%d subs:%d", v5, 0x14u);
}

void sub_10000FF58()
{
  v0 = objc_autoreleasePoolPush();
  qword_100048860 = [NSSet setWithArray:&off_1000437D8];
  qword_100048868 = [NSSet setWithArray:&off_1000437F0];
  qword_100048870 = [NSSet setWithArray:&off_100043808];
  qword_100048878 = [NSSet setWithArray:&off_100043820];
  qword_100048880 = [NSSet setWithArray:&off_100043838];
  qword_100048888 = [NSSet setWithArray:&off_100043850];

  objc_autoreleasePoolPop(v0);
}

void sub_1000101FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = HRCClient;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100011540(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_100011864(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_1000118E4(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "received hr in classifier with source type unknown and uuid : %{public}@", buf, 0xCu);
}

void sub_100011BF8(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "failed to create power assertion: 0x%x", v2, 8u);
}

id sub_1000124CC(uint64_t a1)
{
  if (a1 <= 619)
  {
    if (a1 > 569)
    {
      if (a1 > 598)
      {
        if (a1 > 614)
        {
          if (a1 == 615)
          {
            goto LABEL_69;
          }

          if (a1 != 617)
          {
            goto LABEL_72;
          }

          goto LABEL_39;
        }

        if (a1 != 599)
        {
          if (a1 != 613)
          {
            goto LABEL_72;
          }

          goto LABEL_33;
        }
      }

      else if (a1 <= 596 && a1 != 570 && a1 != 571)
      {
        goto LABEL_72;
      }
    }

    else if (a1 > 555)
    {
      if (a1 > 558 && a1 != 569)
      {
        goto LABEL_72;
      }
    }

    else if (a1 > 520)
    {
      if (a1 != 521 && a1 != 522)
      {
        goto LABEL_72;
      }
    }

    else
    {
      if (!a1)
      {
        v3 = 0;
        goto LABEL_74;
      }

      if (a1 != 520)
      {
        goto LABEL_72;
      }
    }

    v1 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
    v2 = [v1 localizedStringForKey:@"apple_wireless_keyboard" value:&stru_100042498 table:@"CBLocalizable"];
    goto LABEL_73;
  }

  if (a1 <= 799)
  {
    if (a1 > 776)
    {
      if (a1 <= 780)
      {
        if (a1 == 777)
        {
          v1 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
          v2 = [v1 localizedStringForKey:@"apple_wireless_mouse" value:&stru_100042498 table:@"CBLocalizable"];
          goto LABEL_73;
        }

        if (a1 == 780)
        {
          v1 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
          v2 = [v1 localizedStringForKey:@"apple_mighty_mouse" value:&stru_100042498 table:@"CBLocalizable"];
          goto LABEL_73;
        }

        goto LABEL_72;
      }

      if (a1 != 781)
      {
        if (a1 != 782)
        {
          goto LABEL_72;
        }

        goto LABEL_33;
      }

      goto LABEL_39;
    }

    if (a1 <= 667)
    {
      if (a1 == 620)
      {
        v1 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
        v2 = [v1 localizedStringForKey:@"apple_magic_keyboard_keypad" value:&stru_100042498 table:@"CBLocalizable"];
        goto LABEL_73;
      }

      if (a1 != 666)
      {
        goto LABEL_72;
      }

LABEL_24:
      v1 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
      v2 = [v1 localizedStringForKey:@"apple_magic_keyboard_touch" value:&stru_100042498 table:@"CBLocalizable"];
      goto LABEL_73;
    }

    if (a1 == 668)
    {
LABEL_69:
      v1 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
      v2 = [v1 localizedStringForKey:@"apple_magic_keyboard" value:&stru_100042498 table:@"CBLocalizable"];
      goto LABEL_73;
    }

    if (a1 != 671)
    {
      goto LABEL_72;
    }

    goto LABEL_54;
  }

  if (a1 <= 803)
  {
    if (a1 <= 801)
    {
      if (a1 != 800)
      {
        goto LABEL_24;
      }

      goto LABEL_69;
    }

    if (a1 != 802)
    {
LABEL_39:
      v1 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
      v2 = [v1 localizedStringForKey:@"apple_magic_mouse" value:&stru_100042498 table:@"CBLocalizable"];
      goto LABEL_73;
    }

LABEL_54:
    v1 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
    v2 = [v1 localizedStringForKey:@"apple_magic_keyboard_touch_keypad" value:&stru_100042498 table:@"CBLocalizable"];
    goto LABEL_73;
  }

  if (a1 > 8215)
  {
    if (a1 == 8216 || a1 == 8220 || a1 == 8233)
    {
      goto LABEL_8;
    }

LABEL_72:
    v1 = [CBProductInfo productInfoWithProductID:a1];
    v2 = [v1 productName];
    goto LABEL_73;
  }

  if (a1 == 804)
  {
LABEL_33:
    v1 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
    v2 = [v1 localizedStringForKey:@"apple_magic_trackpad" value:&stru_100042498 table:@"CBLocalizable"];
    goto LABEL_73;
  }

  if (a1 != 8213)
  {
    goto LABEL_72;
  }

LABEL_8:
  v1 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
  v2 = [v1 localizedStringForKey:@"apple_airpods_case" value:&stru_100042498 table:@"CBLocalizable"];
LABEL_73:
  v3 = v2;

LABEL_74:

  return v3;
}

void sub_100013600(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_1000138F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = HRCAACPSource;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100013994(uint64_t a1)
{
  [*(*(a1 + 32) + 104) activate];
  [*(*(a1 + 32) + 112) activate];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(*(a1 + 32) + 104) services];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    do
    {
      v5 = 0;
      do
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 32) _serviceDidConnect:*(*(&v10 + 1) + 8 * v5)];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }

  v6 = [*(a1 + 32) services];
  v7 = [v6 count] == 0;

  if (v7)
  {
    v8 = sub_10000132C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "No AACP HR services found.", v9, 2u);
    }
  }
}

void sub_100013C4C(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
}

void sub_100013D28(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
}

void sub_100013E04(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100014010(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;
}

void sub_1000140F0(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;
}

void sub_1000141CC(uint64_t a1)
{
  v2 = sub_10000132C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "notifying poor user fit for device with bluetooth identifier : %{public}@", &v5, 0xCu);
  }

  v4 = [*(a1 + 40) audioSystemStateMonitor];
  [v4 showFitEducationNotificationForDevice:*(a1 + 32)];
}

void sub_10001454C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  objc_destroyWeak((v25 + 40));

  objc_destroyWeak((v24 + 40));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 32));

  objc_destroyWeak((v26 - 104));
  _Unwind_Resume(a1);
}

void sub_1000145C0(uint64_t a1)
{
  v2 = sub_10000132C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "HRCAACPSource AudioAccessory daemon started notification received.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _audioAccessoryDaemonSetup];
}

void sub_100014650(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _serviceDidConnect:v3];
}

void sub_1000146C4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  dispatch_assert_queue_V2(*(a1 + 32));
  if (a2)
  {
    v6 = [v5 type];
    v7 = sub_10000132C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100016FB8();
    }

    if (v6 == 43)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      [WeakRetained _handleHeartRate:v5];
    }
  }
}

void sub_100014784(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  dispatch_assert_queue_V2(*(a1 + 32));
  if (a2 && [v5 type] == 1)
  {
    v6 = sub_10000132C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10001702C();
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _handleVendorDefinedEvent:v5];
  }
}

void sub_100014A28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_100014A6C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _audioAccessoryHRMDeviceChanged:v5 abstractedHIDDevice:a3];
}

void sub_100014AF0(uint64_t a1)
{
  v2 = sub_10000132C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "HRCAACPSource Active HRM route connection interrupted", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _audioAccessoryDisconnectHandler];
}

void sub_100014B80(uint64_t a1)
{
  v2 = sub_10000132C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "HRCAACPSource Active HRM route connection invalidated", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _audioAccessoryDisconnectHandler];
}

void sub_100014C10(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = sub_10000132C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1000170A0();
    }
  }

  else
  {
    v3 = sub_10000132C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "HRCAACPSource activated audio accessory system state monitor ", v4, 2u);
    }
  }
}

void sub_1000151E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_100015244(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _removalHandler:*(a1 + 40)];
}

id *sub_100016EA4(id *result, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = a4;
    v6 = result;
    do
    {
      v7 = [v6[4] length];
      v9 = *a2++;
      v8 = v9;
      if (v7)
      {
        v10 = @":%02X";
      }

      else
      {
        v10 = @"%02X";
      }

      result = [v6[4] appendFormat:v10, v8];
      --v4;
    }

    while (v4);
  }

  return result;
}

void sub_100016F28(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void sub_100017114(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "HRM route set to %{public}@, but route is unknown", buf, 0xCu);
}

void sub_10001716C(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Multiple matching AACP services detected", buf, 2u);
}

void sub_1000171F0(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *a1 = 134349056;
  *(a1 + 4) = a2;
  sub_100016F28(&_mh_execute_header, a2, a3, "Unable to start streaming for AACP source 0x%{public}llx", a1);
}

void sub_10001722C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *a1 = 134349056;
  *(a1 + 4) = a2;
  sub_100016F28(&_mh_execute_header, a2, a3, "Unable to stop streaming for AACP source 0x%{public}llx", a1);
}

void sub_100017268(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Routed device should be %{public}@, but sending from %{public}@", buf, 0x16u);
}

void sub_100017314(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *a1 = 134349056;
  *(a1 + 4) = a2;
  sub_100016F28(&_mh_execute_header, a2, a3, "Received AACP HR from unknown sender 0x%{public}llx", a1);
}

void sub_100017540(uint64_t a1)
{
  v3 = objc_opt_new();
  [*(a1 + 32) setHkStore:?];

  v2 = kHKLocalDeviceBundleIdentifier;
  v4 = [*(a1 + 32) hkStore];
  [v4 setSourceBundleIdentifier:v2];

  v5 = [*(a1 + 32) hkStore];
  [v5 resume];
}

BOOL sub_100017A08(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = sub_10000132C();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [v1 bundleIdentifier];
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "data collector with bundle identifier %@ already enabled", &v5, 0xCu);
    }
  }

  return v1 != 0;
}

id sub_100017B04(int a1, void *a2)
{
  v3 = a2;
  v4 = sub_10000132C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = a1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "creating data collector for sourceType : %d", v10, 8u);
  }

  if (a1 == 3)
  {
    v6 = @"com.apple.BTLEServer";
  }

  else if (a1 == 2)
  {
    v6 = kHKLocalDeviceBundleIdentifier;
  }

  else if (a1)
  {
    v6 = @"com.apple.heartratecoordinatord";
  }

  else
  {
    v5 = sub_10000132C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10001911C();
    }

    v6 = 0;
  }

  v7 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierHeartRate];
  v8 = [[HKDataCollector alloc] initWithHealthStore:v3 bundleIdentifier:v6 quantityType:v7];

  return v8;
}

void sub_100017EBC(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = sub_10000132C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109378;
    v6[1] = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "aacpSourceCollector finishWithCompletion handler :: success : %d and error : %@", v6, 0x12u);
  }
}

void sub_100017F98(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = sub_10000132C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109378;
    v6[1] = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "watchSourceCollector finishWithCompletion handler :: success : %d and error : %@", v6, 0x12u);
  }
}

void sub_100018074(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = sub_10000132C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109378;
    v6[1] = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "btleSourceCollector finishWithCompletion handler :: success : %d and error : %@", v6, 0x12u);
  }
}

void sub_100018B60(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v15 = v10;
  v11 = [NSArray arrayWithObjects:&v15 count:1];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100018FA8;
  v13[3] = &unk_100040E50;
  v12 = v7;
  v14 = v12;
  [v12 insertDatums:v11 device:v8 metadata:v9 completion:v13];
}

id sub_100018CC4(void *a1)
{
  v1 = a1;
  v2 = [v1 uuid];
  v3 = [NSDateInterval alloc];
  v4 = [v1 timestamp];
  v5 = [v1 timestamp];
  v6 = [v3 initWithStartDate:v4 endDate:v5];

  [v1 heartRate];
  v7 = [HKQuantity _quantityWithBeatsPerMinute:?];
  v8 = [[HKQuantityDatum alloc] initWithIdentifier:v2 dateInterval:v6 quantity:v7 resumeContext:0];

  return v8;
}

void sub_100018DB8(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_100018E08(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = sub_10000132C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109378;
    v6[1] = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "saveObject completion handler :: success : %d, error : %@", v6, 0x12u);
  }
}

void sub_100018FA8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = sub_10000132C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [*(a1 + 32) bundleIdentifier];
    v8 = 138412802;
    v9 = v7;
    v10 = 1024;
    v11 = a2;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "insertDatums completion handler for bundle identifier %@ :: success : %d, error : %@", &v8, 0x1Cu);
  }
}

void sub_100019480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1000194B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleFlushNotification];
}

void sub_10001955C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = HRCEventLogger;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100019EC0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_100019FC4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_10001A370(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_10001A5BC(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_10001A8A4(unsigned __int8 *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Logging client added count: %u", v3, 8u);
}

void sub_10001A920(unsigned __int8 *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Logging client removed count: %u", v3, 8u);
}

void sub_10001A9E0(id a1)
{
  v1 = os_log_create("com.apple.HeartRateCoordinator", "MultiPlatformDaemonSupport");
  v2 = qword_1000488F8;
  qword_1000488F8 = v1;
}

void sub_10001B558(uint64_t a1)
{
  v2 = sub_10000132C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "HRCClientCollator received SIGTERM", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained[8];
  WeakRetained[8] = 0;
}

id sub_10001C8B0(uint64_t a1)
{
  *(*(a1 + 32) + 104) = -1;
  *(*(a1 + 32) + 80) = *(a1 + 56);
  *(*(a1 + 32) + 84) = 0x12C3E99999ALL;
  v2 = *(a1 + 40);
  if (v2)
  {
    [v2 floatValue];
    *(*(a1 + 32) + 84) = v3;
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    *(*(a1 + 32) + 88) = [v4 unsignedIntValue];
  }

  *(*(a1 + 32) + 64) = 0;
  v5 = [[HRCArbiterAlgorithmsWrapper alloc] initWithDelegate:*(a1 + 32)];
  v6 = *(a1 + 32);
  v7 = *(v6 + 120);
  *(v6 + 120) = v5;

  v8 = *(*(a1 + 32) + 120);

  return [v8 setupAlgorithms];
}

id sub_10001CA68(uint64_t a1)
{
  [*(a1 + 32) _handleSourceUpdate:a1 + 40];
  v2 = *(a1 + 32);

  return [v2 _cleanupStaleSources];
}

void sub_10001E698(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 handleUserFitNotification:*(a1 + 40)];
}

void sub_10001EDF4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 handleDownSelectedHeartRate:*(a1 + 40)];
}

uint64_t sub_10001F16C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3 != a2)
  {
    sub_10001F25C(&v7, a3, *(a1 + 8), a2);
    sub_10001F1C4(a1, v5);
  }

  return a2;
}

void sub_10001F1C4(uint64_t a1, void **a2)
{
  for (i = *(a1 + 8); i != a2; sub_10001F218(a1, i))
  {
    i -= 5;
  }

  *(a1 + 8) = a2;
}

void sub_10001F218(uint64_t a1, void **a2)
{
  v3 = *a2;
}

uint64_t *sub_10001F25C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      v8 = *a4;
      *a4 = v7;

      v9 = v5[1];
      v10 = v5[2];
      v5[2] = 0;
      v11 = *(a4 + 16);
      *(a4 + 8) = v9;
      *(a4 + 16) = v10;

      v12 = v5[3];
      v5[3] = 0;
      v13 = *(a4 + 24);
      *(a4 + 24) = v12;

      *(a4 + 32) = *(v5 + 8);
      v5 += 5;
      a4 += 40;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

BOOL sub_10001F2F4(id **a1, void *a2)
{
  v4 = [*a2 compare:**a1];
  v5 = v4 == -1;
  if (v4 == -1)
  {
    if (*(a2 + 33))
    {
      return 0;
    }

    [**a1 timeIntervalSinceDate:*a2];
    if (v7 <= 30.0)
    {
      return 0;
    }

    v6 = sub_100024BD4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a2[3];
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "removing stale source with uuid : %{public}@", &v10, 0xCu);
    }
  }

  else
  {
    v6 = sub_100024BD4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_10001F9F4(a1, a2, v6);
    }
  }

  return v5;
}

uint64_t sub_10001F424(uint64_t a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_10000FC4C();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    sub_10001F570(a1, v6);
  }

  v7 = 40 * v2;
  v17 = 0;
  v18 = v7;
  *(&v19 + 1) = 0;
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  *v7 = v8;
  *(v7 + 8) = v9;
  *(v7 + 16) = v10;
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 32) = *(a2 + 32);
  *&v19 = v7 + 40;
  v11 = *(a1 + 8);
  v12 = v7 + *a1 - v11;
  sub_10001F5FC(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_10001F75C(&v17);
  return v16;
}

void sub_10001F55C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10001F75C(va);
  _Unwind_Resume(a1);
}

void sub_10001F570(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_10001F5C8();
}

void sub_10001F5C8()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

uint64_t sub_10001F5FC(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      v9 = v7[1];
      *v7 = 0;
      *a4 = v8;
      *(a4 + 8) = v9;
      v10 = *(v7 + 1);
      v7[2] = 0;
      v7[3] = 0;
      *(a4 + 16) = v10;
      *(a4 + 32) = *(v7 + 8);
      v7 += 5;
      a4 += 40;
    }

    while (v7 != a3);
    v15 = a4;
    v13 = 1;
    while (v5 != a3)
    {
      sub_10001F218(a1, v5);
      v5 += 5;
    }
  }

  return sub_10001F6D0(v12);
}

uint64_t sub_10001F6D0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10001F708(a1);
  }

  return a1;
}

void sub_10001F708(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 5;
      sub_10001F218(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_10001F75C(uint64_t a1)
{
  sub_10001F794(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10001F794(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 40;
    sub_10001F218(v5, (v4 - 40));
  }
}

void sub_10001F7DC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10001F1C4(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10001F874(unsigned __int8 a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 67109378;
  *(buf + 1) = a1;
  *(buf + 4) = 2114;
  *(buf + 10) = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "dropped received hr with sourceType : %d with uuid : %{public}@", buf, 0x12u);
}

void sub_10001F8E0(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "unexpected active aacp source available when enabling user fit computation with uuid : %{public}@", buf, 0xCu);
}

void sub_10001F97C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "algs arbiter output heart rate with uuid %{public}@ has no matching source", &v2, 0xCu);
}

void sub_10001F9F4(uint64_t **a1, uint64_t *a2, os_log_t log)
{
  v3 = **a1;
  v4 = a2[3];
  v5 = *a2;
  v6 = 138543874;
  v7 = v3;
  v8 = 2114;
  v9 = v4;
  v10 = 2114;
  v11 = v5;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "current timestamp : %{public}@ is earlier than source update with UUID : %{public}@ and timestamp : %{public}@", &v6, 0x20u);
}

void sub_10001FBB4(_Unwind_Exception *a1)
{
  sub_1000229EC(v1 + 48);
  v3 = *(v1 + 40);
  *(v1 + 40) = 0;
  if (v3)
  {
    operator delete();
  }

  sub_10001FC54((v1 + 32));
  sub_10002296C(v1);
  _Unwind_Resume(a1);
}

void **sub_10001FC54(void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = v1[1329];
    if (v2)
    {
      v1[1330] = v2;
      operator delete(v2);
    }

    v3 = v1[1309];
    if (v3)
    {
      v1[1310] = v3;
      operator delete(v3);
    }

    v4 = v1[1289];
    if (v4)
    {
      v1[1290] = v4;
      operator delete(v4);
    }

    sub_1000229EC((v1 + 4));
    sub_10002296C(v1);
    operator delete();
  }

  return result;
}

uint64_t sub_10001FCDC(uint64_t a1)
{
  sub_1000229EC(a1 + 48);
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    operator delete();
  }

  sub_10001FC54((a1 + 32));

  return sub_10002296C(a1);
}

uint64_t sub_10001FD68(uint64_t a1, int a2)
{
  if (*(a1 + 56))
  {
    sub_100020E34(v8, "reset");
    sub_100020E34(__p, "isInSessionReset");
    v12[0] = a2;
    v12[6] = 9;
    sub_100022AB8(v7, __p, 1);
    v4 = *(a1 + 56);
    if (!v4)
    {
      sub_100022A6C();
    }

    (*(*v4 + 48))(v4, v8, v7);
    sub_100024040(v7);
    sub_1000225CC(v12);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    if (v9 < 0)
    {
      operator delete(v8[0]);
    }
  }

  v5 = sub_100024BD4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(__p[0]) = 67109120;
    HIDWORD(__p[0]) = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Algs Reset with isInSessionReset: %u", __p, 8u);
  }

  sub_1000248D4(a1 + 64, a2);
  sub_1000248D4(a1 + 4936, a2);
  *(a1 + 10140) = 0x10000;
  sub_100020F28(a1, 0);
  *(a1 + 10145) = 0;
  *(a1 + 10160) = 0;
  if ((a2 & 1) == 0)
  {
    *(a1 + 10133) = 0;
    *(a1 + 10130) = 0;
    *(a1 + 10138) = 0;
    *(a1 + 10152) = 0;
    sub_100025114(a1 + 10168);
  }

  return 1;
}

void sub_10001FF2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  sub_100020EEC(&a20);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10001FF78(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 56))
  {
    v4 = *a2;
    memset(out, 0, sizeof(out));
    uuid_unparse((a2 + 8), out);
    sub_100020E34(v26, out);
    sub_100020E34(__p, "informStatus");
    sub_100020E34(v28, "timestamp");
    *&v28[24] = v4;
    v29 = 6;
    sub_100022740(&v30, "deviceId", v26);
    v5 = *(a2 + 24);
    sub_100020E34(v31, "mode");
    v31[24] = v5;
    v32 = 3;
    v6 = *(a2 + 25);
    sub_100020E34(v33, "deviceType");
    v34[0] = v6;
    v35 = 3;
    sub_100022AB8(v36, v28, 4);
    v7 = *(a1 + 56);
    if (!v7)
    {
      sub_100022A6C();
    }

    (*(*v7 + 48))(v7, __p, v36);
    sub_100024040(v36);
    for (i = 0; i != -224; i -= 56)
    {
      sub_1000225CC(&v34[i]);
      if (v33[i + 23] < 0)
      {
        operator delete(*&v33[i]);
      }
    }

    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    if (v27 < 0)
    {
      operator delete(v26[0]);
    }
  }

  if (!*(a2 + 25))
  {
    v9 = 64;
LABEL_15:
    v10 = a1 + v9;
    memset(v28, 0, sizeof(v28));
    memset(v36, 0, 37);
    uuid_unparse((a1 + v9 + 4850), v28);
    uuid_unparse((a2 + 8), v36);
    if (!uuid_is_null((v10 + 4850)) && uuid_compare((v10 + 4850), (a2 + 8)))
    {
      v22 = *(a2 + 24);
      if (*(v10 + 4866) == v22 && (v22 - 1) <= 1)
      {
        v23 = sub_100024BD4();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_1000240F8();
        }
      }

      if (!*(v10 + 4866) && *(a2 + 24) - 1 <= 1)
      {
        sub_10001FD68(a1, 1);
        if (*(a2 + 25) == 1)
        {
          *(a1 + 10133) = 0;
          *(a1 + 10130) = 0;
        }
      }
    }

    uuid_copy((v10 + 4850), (a2 + 8));
    *(v10 + 4866) = *(a2 + 24);
    v11 = sub_100024BD4();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a2 + 25);
      v13 = *(a2 + 24);
      *out = 136315650;
      *&out[4] = v36;
      *&out[12] = 256;
      out[14] = v12;
      *&out[15] = 256;
      out[17] = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Inform status Device ID: %s, Type: %u, Mode: %u", out, 0x12u);
    }

    return sub_10002538C(a1 + 10168, a2);
  }

  if (*(a2 + 25) == 1)
  {
    v9 = 4936;
    goto LABEL_15;
  }

  v14 = sub_100024BD4();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_100024170(a2 + 25, v14, v15, v16, v17, v18, v19, v20);
  }

  return sub_10002538C(a1 + 10168, a2);
}

void sub_100020304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  v43 = &a42;
  v44 = -224;
  do
  {
    v43 = (sub_100020EEC(v43) - 56);
    v44 += 56;
  }

  while (v44);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000203E4(uint64_t a1, uint64_t a2)
{
  memset(out, 0, 37);
  memset(__s, 0, 37);
  uuid_unparse((a2 + 8), out);
  uuid_unparse((a2 + 24), __s);
  if (*(a1 + 56))
  {
    v4 = *a2;
    sub_100020E34(v18, out);
    sub_100020E34(v16, __s);
    sub_100020E34(__p, "processBud");
    sub_100020E34(&v22, "timestamp");
    v23[2] = v4;
    v24 = 6;
    sub_100022740(&v25, "deviceId", v18);
    sub_10002285C(&v26, "hrId", v16);
    sub_100020E34(v27, "hrValue");
    v27[24] = *(a2 + 40);
    v28 = 3;
    sub_100020E34(v29, "confidence");
    v29[24] = *(a2 + 41);
    v30 = 3;
    sub_100020E34(v31, "location");
    v31[24] = *(a2 + 42);
    v32 = 3;
    sub_100020E34(v33, "flags");
    v34 = *(a2 + 44);
    v35 = 5;
    sub_100022AB8(v20, &v22, 7);
    v5 = *(a1 + 56);
    if (!v5)
    {
      sub_100022A6C();
    }

    (*(*v5 + 48))(v5, __p, v20);
    sub_100024040(v20);
    v6 = 392;
    do
    {
      sub_1000225CC(&v20[2] + v6);
      if (*(&v20[1] + v6 + 15) < 0)
      {
        operator delete(*(v20 + v6 + 8));
      }

      v6 -= 56;
    }

    while (v6);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    if (v17 < 0)
    {
      operator delete(v16[0]);
    }

    if (v19 < 0)
    {
      operator delete(v18[0]);
    }
  }

  v7 = 3;
  if (*(a1 + 9802) != 3)
  {
    if (*(a1 + 4930))
    {
      v8 = 1;
    }

    else
    {
      v8 = 3;
    }

    if (*(a1 + 9802))
    {
      v9 = v8;
    }

    else
    {
      v9 = 2;
    }

    if (*(a1 + 4930) == 3)
    {
      v7 = 2;
    }

    else
    {
      v7 = v9;
    }
  }

  sub_1000210D8(a2, v20);
  v21 |= 2u;
  if (uuid_compare((a2 + 8), (a1 + 9786)))
  {
    v10 = sub_100024BD4();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1000241E0();
    }

    return 1;
  }

  sub_1000254E0((a1 + 10168), v20);
  if (v7 != 1)
  {
    if (v7 == 2)
    {
      v11 = sub_100024BD4();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        sub_100024248();
      }
    }

    else
    {
      v21 = v21 & 0xFFFFFFE3 | 0x10;
      sub_10002127C(a1, v20);
    }

    return 1;
  }

  sub_100021444(a1, v20, &v22);
  v12 = BYTE1(v22);
  if (v22 == 1)
  {
    sub_10002127C(a1, v23);
    return v12 & sub_100025574(a1 + 10168, v23);
  }

  return v12;
}

void sub_100020784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = &a72;
  v74 = -392;
  do
  {
    v73 = (sub_100020EEC(v73) - 56);
    v74 += 56;
  }

  while (v74);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100020834(uint64_t a1, uint64_t a2)
{
  memset(out, 0, 37);
  memset(__s, 0, 37);
  uuid_unparse((a2 + 8), out);
  uuid_unparse((a2 + 24), __s);
  if (*(a1 + 56))
  {
    v4 = *a2;
    sub_100020E34(v22, out);
    sub_100020E34(v20, __s);
    sub_100020E34(__p, "processWatch");
    sub_100020E34(&v26, "timestamp");
    v27[2] = v4;
    v29 = 6;
    sub_100022740(&v30, "deviceId", v22);
    sub_10002285C(&v31, "hrId", v20);
    sub_100020E34(v32, "hrValue");
    v33 = *(a2 + 40);
    v34 = 11;
    sub_100020E34(v35, "confidence");
    v36 = *(a2 + 44);
    v37 = 11;
    sub_100020E34(v38, "bestInPredictionInterval");
    v39 = *(a2 + 49);
    v40 = 9;
    sub_100022AB8(v43, &v26, 6);
    v5 = *(a1 + 56);
    if (!v5)
    {
      sub_100022A6C();
    }

    (*(*v5 + 48))(v5, __p, v43);
    sub_100024040(v43);
    v6 = 336;
    do
    {
      sub_1000225CC(&v24[v6 + 1]);
      if (v24[v6] < 0)
      {
        operator delete(v22[v6 / 8 + 1]);
      }

      v6 -= 56;
    }

    while (v6);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    if (v21 < 0)
    {
      operator delete(v20[0]);
    }

    if (v23 < 0)
    {
      operator delete(v22[0]);
    }
  }

  v7 = 3;
  if (*(a1 + 9802) != 3)
  {
    if (*(a1 + 4930))
    {
      v8 = 1;
    }

    else
    {
      v8 = 3;
    }

    if (*(a1 + 9802))
    {
      v9 = v8;
    }

    else
    {
      v9 = 2;
    }

    if (*(a1 + 4930) == 3)
    {
      v7 = 2;
    }

    else
    {
      v7 = v9;
    }
  }

  sub_10002104C(a2, v22);
  v25 |= 1u;
  if (uuid_compare((a2 + 8), (a1 + 4914)))
  {
    v10 = sub_100024BD4();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1000242B0();
    }

    sub_100021190(v22, &v26);
    v11 = *(a1 + 10138);
    *(a1 + 10138) = v11 + 1;
    v28 = v11;
    sub_100022078(a1, &v26);
    return 1;
  }

  sub_100025554(a1 + 10168, v22);
  if (v7 != 1)
  {
    if (v7 == 2)
    {
      v25 = v25 & 0xFFFFFFE3 | 8;
      sub_100021190(v22, &v26);
      v14 = *(a1 + 10138);
      *(a1 + 10138) = v14 + 1;
      v28 = v14;
      if (v26 <= *(a1 + 10152))
      {
        return 1;
      }
    }

    else
    {
      v16 = sub_100024BD4();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        sub_100024318();
      }

      v25 = v25 & 0xFFFFFFE3 | 0x10;
      sub_100021190(v22, &v26);
      v17 = *(a1 + 10138);
      *(a1 + 10138) = v17 + 1;
      v28 = v17;
      if (v26 <= *(a1 + 10152))
      {
        return 1;
      }
    }

    *(a1 + 10152) = v26;
    sub_100022078(a1, &v26);
    return 1;
  }

  sub_100021444(a1, v22, &v26);
  v12 = BYTE1(v26);
  if (v26 == 1)
  {
    sub_100021190(v27, v43);
    v15 = *(a1 + 10138);
    *(a1 + 10138) = v15 + 1;
    v44 = v15;
    if (v43[0] > *(a1 + 10152))
    {
      *(a1 + 10152) = v43[0];
      sub_100022078(a1, v43);
    }

    return v12 & sub_100025574(a1 + 10168, v27);
  }

  return v12;
}

void sub_100020C84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = &a67;
  v69 = -336;
  do
  {
    v68 = (sub_100020EEC(v68) - 56);
    v69 += 56;
  }

  while (v69);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100020D3C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000228D4(a1, a2);
  *(v3 + 56) = 0;
  sub_100024978(v3 + 64);
  sub_100024978(a1 + 4936);
  v4 = 0;
  v5 = (a1 + 9872);
  v6 = vdupq_n_s64(5uLL);
  do
  {
    v7 = vorrq_s8(vdupq_n_s64(v4), xmmword_10002C990);
    if (vmovn_s64(vcgtq_u64(v6, v7)).u8[0])
    {
      *(v5 - 8) = 0;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(5uLL), v7)).i32[1])
    {
      *v5 = 0;
    }

    v4 += 2;
    v5 += 16;
  }

  while (v4 != 6);
  *(a1 + 10128) = 5;
  sub_100025110(a1 + 10168, a1);
  sub_10001FD68(a1, 0);
  return a1;
}

void sub_100020E04(_Unwind_Exception *a1)
{
  sub_100022560((v1 + 10168));
  sub_1000229EC(v1 + 32);
  sub_10002296C(v1);
  _Unwind_Resume(a1);
}

_BYTE *sub_100020E34(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000225B4();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t sub_100020EEC(uint64_t a1)
{
  sub_1000225CC(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100020F28(uint64_t a1, int a2)
{
  if (*(a1 + 10144) != a2)
  {
    v4 = sub_100024BD4();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 10144);
      v9 = 16777728;
      v10 = v5;
      v11 = 256;
      v12 = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Channel Selection switch from %u to %u", &v9, 8u);
    }

    if (a2 == 1 && *(a1 + 10144) == 2)
    {
      v6 = sub_100024BD4();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Publishing the remaining bud HRs before switching to watch", &v9, 2u);
      }

      sub_100021B74(a1, v7, v8);
    }
  }

  *(a1 + 10144) = a2;
}

void sub_10002104C(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 48) = 0;
  *(a2 + 49) = *(a1 + 48);
  *(a2 + 52) = 0;
  *(a2 + 56) = *(a1 + 49);
  *(a2 + 57) = 1;
  *(a2 + 58) = *(a1 + 50);
  *(a2 + 24) = 0u;
  v3 = (a2 + 24);
  *(a2 + 8) = 0u;
  uuid_copy((a2 + 8), (a1 + 8));

  uuid_copy(v3, (a1 + 24));
}

void sub_1000210D8(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 24) = 0u;
  *(a2 + 8) = 0u;
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 44) = sub_10002483C(*(a1 + 41));
  v4 = *(a1 + 41);
  *(a2 + 48) = v4;
  *(a2 + 49) = v4 >= sub_100024828();
  *(a2 + 52) = 0;
  *(a2 + 56) = 512;
  *(a2 + 58) = *(a1 + 42);
  uuid_copy((a2 + 8), (a1 + 8));

  uuid_copy((a2 + 24), (a1 + 24));
}

void sub_100021190(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0u;
  *(a2 + 8) = 0u;
  v4 = *(a1 + 44);
  *(a2 + 44) = *(a1 + 40);
  *(a2 + 48) = v4;
  *(a2 + 52) = v4 >= sub_100024830();
  *(a2 + 56) = *(a1 + 52);
  *(a2 + 60) = *(a1 + 56);
  *(a2 + 61) = *(a1 + 58);
  uuid_copy((a2 + 8), (a1 + 8));

  uuid_copy((a2 + 24), (a1 + 24));
}

uint64_t sub_100021238(uint64_t a1)
{
  v1 = *(a1 + 9802);
  if (v1 == 3)
  {
    return 3;
  }

  v3 = *(a1 + 4930);
  result = 2;
  if (v3 != 3)
  {
    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = 3;
    }

    if (v1)
    {
      return v4;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

void sub_10002127C(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 0x2000;
  if (*(a1 + 10136))
  {
    v5 = (a1 + (*(a1 + 10134) << 6));
    v6 = *(a2 + 43);
    v7 = *a2;
    v8 = *(a2 + 16);
    v5[615] = *(a2 + 32);
    v5[614] = v8;
    v5[613] = v7;
    *(v5 + 9851) = v6;
    v9 = *(a1 + 10130);
    v10 = *(a1 + 10128);
    if (v9 == v10)
    {
      *(a1 + 10132) = (*(a1 + 10132) + 1) % v9;
    }

    else
    {
      *(a1 + 10130) = v9 + 1;
    }

    *(a1 + 10134) = (*(a1 + 10134) + 1) % v10;
  }

  else
  {
    *(a2 + 56) = 1;
    sub_100021190(a2, out);
    v11 = *(v4 + 1946);
    *(v4 + 1946) = v11 + 1;
    v17 = v11;
    if (*out > *(a1 + 10152))
    {
      *(a1 + 10152) = *out;
      sub_100022078(a1, out);
    }
  }

  v12 = *(v4 + 1944);
  if ((v12 & 1) == 0 && *(a2 + 49) == 1)
  {
    memset(out, 0, 37);
    uuid_unparse((a2 + 24), out);
    v13 = sub_100024BD4();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315138;
      v15 = out;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "First confident read is done with HR ID: %s, next bud HRs will be batched.", &v14, 0xCu);
    }

    v12 = *(v4 + 1944);
  }

  *(v4 + 1944) = v12 | *(a2 + 49);
  if (*(v4 + 1938) >= 5u)
  {
    sub_100021B74(a1, *&v6, *&v7);
  }
}

void sub_100021444(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[1];
  v70 = *a2;
  v71 = v5;
  v6 = a2[3];
  *v72 = a2[2];
  *&v72[16] = v6;
  v7 = v70;
  memset(out, 0, 37);
  memset(v68, 0, 37);
  uuid_unparse(&v70 + 8, out);
  uuid_unparse(&v71 + 8, v68);
  v8 = a1 + 4936;
  if (v72[25] == 2)
  {
    v9 = a1 + 64;
  }

  else
  {
    v9 = 0;
  }

  if (v72[25] == 2)
  {
    v10 = 1;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  if (v72[25] == 1)
  {
    v11 = a1 + 4936;
  }

  else
  {
    v11 = v9;
  }

  if (v72[25] == 1)
  {
    v12 = a1 + 64;
  }

  else
  {
    v12 = v8;
  }

  if (v72[25] == 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v10;
  }

  v14 = "UNKNOWN";
  if (v72[25] == 1)
  {
    v14 = "WATCH";
  }

  if (v72[25] == 2)
  {
    v15 = "BUD";
  }

  else
  {
    v15 = v14;
  }

  sub_100020E34(__p, v15);
  if (v12)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  if (v16 != 1 || !v11)
  {
    *a3 = 0;
    goto LABEL_77;
  }

  if (!sub_100024A18(v12))
  {
    v17 = sub_100024BC4(v11);
    sub_10002497C(v12, v7 - v17);
    sub_100024B58(v12, 120000000);
  }

  if (!*(a1 + 10145))
  {
    *(a1 + 10145) = v72[25];
    v18 = sub_100024BD4();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = __p;
      if (v65 < 0)
      {
        v19 = __p[0];
      }

      *buf = 136315650;
      *v67 = v19;
      *&v67[8] = 2080;
      *&v67[10] = out;
      *&v67[18] = 2080;
      *&v67[20] = v68;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Setting first available source as %s, Device ID: %s, HR ID: %s", buf, 0x20u);
    }
  }

  v20 = sub_100024BB4(v12, v7);
  v21 = v20;
  if (!v20)
  {
    v29 = sub_100024BD4();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_100024380(v7, v29, v30, v31, v32, v33, v34, v35);
    }

    v36 = 0;
    *(a1 + 10140) |= 0x2000u;
    goto LABEL_76;
  }

  v22 = sub_100024A28(v12, v7, *&v72[12]);
  sub_1000249F8(v11, 1000000);
  if (sub_100024BC4(v12) >= 0x7270E00 && sub_100024BC4(v11) >= 0x7270E00)
  {
    if (sub_100024BA0(v12) || !*(a1 + 10144))
    {
      v37 = sub_100024BD4();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        v62 = __p;
        if (v65 < 0)
        {
          v62 = __p[0];
        }

        *buf = 136315650;
        *v67 = v62;
        *&v67[8] = 2080;
        *&v67[10] = out;
        *&v67[18] = 2080;
        *&v67[20] = v68;
        _os_log_debug_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "Channel selection due to 5m interval, triggered from %s, Device ID: %s HR ID: %s", buf, 0x20u);
      }

      sub_100021C7C(a1, v7, v38, v39, v40, v41);
      v28 = 1024;
      goto LABEL_49;
    }
  }

  else
  {
    if (sub_100024A18(v11) && sub_100024BA0(v12))
    {
      v23 = sub_100024BD4();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v61 = __p;
        if (v65 < 0)
        {
          v61 = __p[0];
        }

        *buf = 136315650;
        *v67 = v61;
        *&v67[8] = 2080;
        *&v67[10] = out;
        *&v67[18] = 2080;
        *&v67[20] = v68;
        _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "Channel selection due to initialization, triggered from %s, Device ID: %s Hr ID: %s", buf, 0x20u);
      }

      sub_100021C7C(a1, v7, v24, v25, v26, v27);
      v28 = 512;
LABEL_49:
      *(a1 + 10140) |= v28;
      sub_100024B58(v12, 300000000);
      sub_100024B58(v11, 300000000);
      goto LABEL_50;
    }

    sub_100021E74(a1, &v70);
  }

LABEL_50:
  if (sub_100024A08(v12) && v72[25] == *(a1 + 10144))
  {
    v42 = sub_100024BD4();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      v59 = *(v12 + 4848);
      v60 = __p;
      if (v65 < 0)
      {
        v60 = __p[0];
      }

      *buf = 67109890;
      *v67 = v59;
      *&v67[4] = 2080;
      *&v67[6] = v60;
      *&v67[14] = 2080;
      *&v67[16] = out;
      *&v67[24] = 2080;
      *&v67[26] = v68;
      _os_log_debug_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "Channel selection due to continuous low confidence for the past %hu samples, %s, Device ID: %s, HR ID: %s", buf, 0x26u);
    }

    sub_100021C7C(a1, v7, v43, v44, v45, v46);
    *(a1 + 10140) |= 0x800u;
  }

  if (sub_100024B70(v11) && v72[25] != *(a1 + 10144))
  {
    if (*(a1 + 10144))
    {
      v47 = sub_100024BD4();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        v63 = __p;
        if (v65 < 0)
        {
          v63 = __p[0];
        }

        *buf = 136315650;
        *v67 = v63;
        *&v67[8] = 2080;
        *&v67[10] = out;
        *&v67[18] = 2080;
        *&v67[20] = v68;
        _os_log_debug_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEBUG, "Channel time out in a dual mode - switching to %s, Device ID: %s, HR ID: %s", buf, 0x20u);
      }

      sub_100020F28(a1, v72[25]);
    }

    *(a1 + 10140) |= 0x4000u;
  }

  if (*(a1 + 10144))
  {
    if (v72[25] == *(a1 + 10144))
    {
      v48 = *&v72[20] & 0xFFFFFFE3 | 4;
      *&v72[20] = v48;
      v49 = *(a1 + 10140);
      if (!v49)
      {
        goto LABEL_71;
      }

      goto LABEL_70;
    }

LABEL_66:
    v36 = 0;
    goto LABEL_72;
  }

  if (v72[25] != *(a1 + 10145) && (*(a1 + 10141) & 0x40) == 0)
  {
    goto LABEL_66;
  }

  v50 = sub_100024BD4();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    *v67 = *&v72[12];
    *&v67[8] = 2080;
    *&v67[10] = out;
    *&v67[18] = 2080;
    *&v67[20] = v68;
    _os_log_debug_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEBUG, "No channel selected with low initial confidence: %f, Device ID: %s, HR ID: %s", buf, 0x20u);
  }

  v49 = *(a1 + 10140) | 0x100;
  *(a1 + 10140) = v49;
  v48 = *&v72[20] & 0xFFFFFFE3 | 4;
LABEL_70:
  *&v72[20] = v48 | v49;
  *(a1 + 10140) = 0;
LABEL_71:
  v36 = 1;
LABEL_72:
  if (v22 >= 0x11E1A301)
  {
    v51 = sub_100024BD4();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      sub_1000243EC(v7, v51, v52, v53, v54, v55, v56, v57);
    }

    sub_10001FD68(a1, 1);
  }

LABEL_76:
  *a3 = v36;
  *(a3 + 1) = v21;
LABEL_77:
  v58 = v71;
  *(a3 + 8) = v70;
  *(a3 + 24) = v58;
  *(a3 + 40) = *v72;
  *(a3 + 51) = *&v72[11];
  if (v65 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100021B30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100021B74(uint64_t a1, float a2, float a3)
{
  v4 = (a1 + 0x2000);
  v5 = sub_100021FF8(a1, a2, a3);
  if ((v5 & 0x80000000) == 0 && v4[969])
  {
    v6 = v5;
    v7 = 0;
    do
    {
      sub_100021190(a1 + 9808 + (((v7 + v4[970]) % v4[968]) << 6), v9);
      v8 = v4[973];
      v4[973] = v8 + 1;
      v10 = v8;
      if (v6 == v7)
      {
        v11 = 1;
      }

      if (v9[0] > *(a1 + 10152))
      {
        *(a1 + 10152) = v9[0];
        sub_100022078(a1, v9);
      }

      ++v7;
    }

    while (v7 < v4[969]);
  }

  v4[971] = 0;
  *(v4 + 969) = 0;
}

void sub_100021C7C(uint64_t a1, unint64_t a2, double a3, double a4, double a5, float a6)
{
  *&v8 = sub_100024984(a1 + 64, a2, a3, a4, a5, a6);
  v9 = *&v8;
  v13 = sub_100024984(a1 + 4936, a2, v8, v10, v11, v12);
  if (v9 >= v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  v15 = *(a1 + 10144);
  v16 = "UNKNOWN";
  if (v15 == 1)
  {
    v16 = "WATCH";
  }

  if (v15 == 2)
  {
    v17 = "BUD";
  }

  else
  {
    v17 = v16;
  }

  sub_100020E34(v24, v17);
  if (v9 >= v13)
  {
    v18 = "WATCH";
  }

  else
  {
    v18 = "BUD";
  }

  sub_100020E34(__p, v18);
  v19 = sub_100024BD4();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = v24;
    if (v25 < 0)
    {
      v20 = v24[0];
    }

    v21 = __p;
    if (v23 < 0)
    {
      v21 = __p[0];
    }

    *buf = 136315906;
    v27 = v20;
    v28 = 2080;
    v29 = v21;
    v30 = 2048;
    v31 = v9;
    v32 = 2048;
    v33 = v13;
    _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Channel switch from %s to %s, Watch Avg Conf: %f, Bud Avg Conf: %f", buf, 0x2Au);
  }

  sub_100020F28(a1, v14);
  *(a1 + 10160) = vabds_f32(v9, v13);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }
}

void sub_100021E34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_100021E74(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 10144) && *(a2 + 44) >= 0.6)
  {
    v3 = *(a2 + 57);
    if (*(a2 + 57))
    {
      sub_100020F28(a1, v3);
      if (*(a2 + 57) == 2)
      {
        v4 = "BUD";
      }

      else
      {
        v4 = "WATCH";
      }

      sub_100020E34(__p, v4);
      memset(out, 0, 37);
      memset(v15, 0, 37);
      uuid_unparse((a2 + 8), out);
      uuid_unparse((a2 + 24), v15);
      v5 = sub_100024BD4();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = __p;
        if (v8 < 0)
        {
          v6 = __p[0];
        }

        *buf = 136315650;
        v10 = v6;
        v11 = 2080;
        v12 = out;
        v13 = 2080;
        v14 = v15;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Channel selection due to first fair confidence, triggered from %s, Device ID: %s Hr ID: %s", buf, 0x20u);
      }

      if (v8 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_100021FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100021FF8(uint64_t result, float a2, float a3)
{
  v3 = result + 0x2000;
  v4 = *(result + 10130);
  if (!*(result + 10130))
  {
    return 0xFFFFFFFFLL;
  }

  v5 = result;
  v6 = 0;
  LODWORD(result) = 0;
  v7 = v5 + 9808;
  v8 = *(v3 + 1940);
  v9 = *(v3 + 1936);
  LOBYTE(a2) = *(v7 + ((v8 % v9) << 6) + 48);
  v10 = LODWORD(a2);
  do
  {
    LOBYTE(a3) = *(v7 + (((v8 + v6) % v9) << 6) + 48);
    a3 = LODWORD(a3);
    if (v10 >= a3)
    {
      result = result;
    }

    else
    {
      v10 = a3;
      result = v6;
    }

    v6 += 2;
  }

  while (v6 < v4);
  return result;
}

uint64_t sub_100022078(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 24);
  v5 = *a2;
  memset(out, 0, 37);
  memset(v29, 0, 37);
  uuid_unparse((a2 + 8), out);
  uuid_unparse(v4, v29);
  v6 = sub_100024BD4();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a2 + 40);
    v8 = *(a2 + 44);
    v9 = *(a2 + 48);
    v10 = *(a2 + 56);
    v11 = *(a2 + 61);
    v13 = 134219779;
    v14 = v5;
    v15 = 1024;
    v16 = v7;
    v17 = 2053;
    v18 = v8;
    v19 = 2048;
    v20 = v9;
    v21 = 1024;
    v22 = v10;
    v23 = 1024;
    v24 = v11;
    v25 = 2080;
    v26 = out;
    v27 = 2080;
    v28 = v29;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "HRArbOut timestamp: %llu, index: %hu, HR: %{sensitive}f, Conf: %f, Flags: %u, SensorLocation: %u, deviceId: %s, hrId: %s", &v13, 0x46u);
  }

  sub_100022200(a1, a2);
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 48))(result, a2);
  }

  return result;
}

void sub_100022200(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 56))
  {
    v4 = *a2;
    memset(out, 0, 37);
    memset(__s, 0, 37);
    uuid_unparse((a2 + 8), out);
    uuid_unparse((a2 + 24), __s);
    sub_100020E34(v10, out);
    sub_100020E34(v9, __s);
    sub_100020E34(__p, "logHrOut");
    sub_100020E34(v12, "timestamp");
    v12[3] = v4;
    v13 = 6;
    sub_100022740(&v14, "deviceId", v10);
    sub_10002285C(&v15, "hrId", v9);
    sub_100020E34(v16, "heartRateIndex");
    v17 = *(a2 + 40);
    v18 = 4;
    sub_100020E34(v19, "hrValue");
    v20 = *(a2 + 44);
    v21 = 11;
    sub_100020E34(v22, "confidence");
    v23 = *(a2 + 48);
    v24 = 11;
    sub_100020E34(v25, "confidenceIsHigh");
    v26 = *(a2 + 52);
    v27 = 9;
    sub_100020E34(v28, "flags");
    v29 = *(a2 + 56);
    v30 = 5;
    sub_100020E34(v31, "bestInPredictionInterval");
    v32 = *(a2 + 60);
    v33 = 9;
    sub_100022AB8(v7, v12, 9);
    v5 = *(a1 + 56);
    if (!v5)
    {
      sub_100022A6C();
    }

    (*(*v5 + 48))(v5, __p, v7);
    sub_100024040(v7);
    v6 = 504;
    do
    {
      sub_1000225CC(&v9[v6 + 16]);
      if (v9[v6 + 15] < 0)
      {
        operator delete(*&__p[v6 + 16]);
      }

      v6 -= 56;
    }

    while (v6);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if ((v9[23] & 0x80000000) != 0)
    {
      operator delete(*v9);
    }

    if (v11 < 0)
    {
      operator delete(v10[0]);
    }
  }
}

void sub_1000224B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33)
{
  v34 = &STACK[0x238];
  v35 = -504;
  do
  {
    v34 = (sub_100020EEC(v34) - 56);
    v35 += 56;
  }

  while (v35);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

void *sub_100022560(void *a1)
{
  v2 = a1[58];
  if (v2)
  {
    a1[59] = v2;
    operator delete(v2);
  }

  v3 = a1[38];
  if (v3)
  {
    a1[39] = v3;
    operator delete(v3);
  }

  v4 = a1[18];
  if (v4)
  {
    a1[19] = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1000225CC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (*(&off_100040FD8 + v2))(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void sub_100022628(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_10002263C(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void sub_100022678(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void sub_10002268C(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void sub_1000226A0(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void sub_1000226B4(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void sub_1000226C8(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void sub_1000226DC(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void sub_1000226F0(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void sub_100022704(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void sub_100022718(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void sub_10002272C(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

uint64_t sub_100022740(uint64_t a1, char *a2, __int128 *a3)
{
  sub_100020E34(a1, a2);
  if (*(a3 + 23) < 0)
  {
    sub_1000227B8((a1 + 24), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 40) = *(a3 + 2);
    *(a1 + 24) = v5;
  }

  *(a1 + 48) = 1;
  return a1;
}

void sub_10002279C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000227B8(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_1000225B4();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

uint64_t sub_10002285C(uint64_t a1, char *a2, __int128 *a3)
{
  sub_100020E34(a1, a2);
  if (*(a3 + 23) < 0)
  {
    sub_1000227B8((a1 + 24), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 40) = *(a3 + 2);
    *(a1 + 24) = v5;
  }

  *(a1 + 48) = 1;
  return a1;
}

void sub_1000228B8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000228D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_10002296C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1000229EC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_100022A6C()
{
  exception = __cxa_allocate_exception(8uLL);
}

uint64_t sub_100022AB8(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 56 * a3;
    do
    {
      sub_100022B34(a1, a2);
      a2 += 7;
      v5 -= 56;
    }

    while (v5);
  }

  return a1;
}

const void **sub_100022B34(void *a1, const void **a2)
{
  v4 = sub_100022E58(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    sub_100022D90();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_100023304(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_100022D7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100022E0C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100022E0C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_100023FF0(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

unint64_t sub_100022E58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return sub_100022E98(&v5, a2, v3);
}

unint64_t sub_100022E98(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return sub_100023244(a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return sub_100023198(a2, a3);
  }

  else
  {
    return sub_1000230A0(a2, a3);
  }
}

unint64_t sub_1000230A0(_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t sub_100023198(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t sub_100023244(void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL sub_100023304(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void *sub_10002337C(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000227B8(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  sub_1000233F4((__dst + 3), a2 + 24);
  return __dst;
}

void sub_1000233D8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000233F4(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = -1;
  sub_10002343C(a1, a2);
  return a1;
}

uint64_t sub_10002343C(uint64_t a1, uint64_t a2)
{
  result = sub_1000225CC(a1);
  v5 = *(a2 + 24);
  if (v5 != -1)
  {
    v6 = a1;
    result = (*(&off_100041090 + v5))(&v6, a2);
    *(a1 + 24) = v5;
  }

  return result;
}

void *sub_1000234A4(void **a1, __int128 *a2)
{
  result = *a1;
  if (*(a2 + 23) < 0)
  {
    return sub_1000227B8(result, *a2, *(a2 + 1));
  }

  v3 = *a2;
  result[2] = *(a2 + 2);
  *result = v3;
  return result;
}

uint64_t sub_1000234D0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return sub_1000236C4(v2, *a2, a2[1], a2[1] - *a2);
}

float sub_10002356C(_DWORD **a1, float *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

double sub_10002357C(void **a1, double *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

uint64_t sub_10002358C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return sub_100023740(v2, *a2, a2[1], a2[1] - *a2);
}

uint64_t sub_1000235A8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return sub_1000237BC(v2, *a2, a2[1], (a2[1] - *a2) >> 1);
}

uint64_t sub_1000235C8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return sub_1000238B4(v2, *a2, a2[1], (a2[1] - *a2) >> 2);
}

uint64_t sub_1000235E8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return sub_1000239B4(v2, *a2, a2[1], (a2[1] - *a2) >> 3);
}

uint64_t sub_100023608(void **a1, uint64_t *a2)
{
  v2 = *a1;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return sub_100023AB4(v2, *a2, a2[1], a2[1] - *a2);
}

uint64_t sub_100023624(void **a1, uint64_t *a2)
{
  v2 = *a1;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return sub_100023B30(v2, *a2, a2[1], (a2[1] - *a2) >> 1);
}

uint64_t sub_100023644(void **a1, uint64_t *a2)
{
  v2 = *a1;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return sub_100023BAC(v2, *a2, a2[1], (a2[1] - *a2) >> 2);
}

uint64_t sub_100023664(void **a1, uint64_t *a2)
{
  v2 = *a1;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return sub_100023C28(v2, *a2, a2[1], (a2[1] - *a2) >> 3);
}

uint64_t sub_100023684(void **a1, uint64_t *a2)
{
  v2 = *a1;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return sub_100023CA4(v2, *a2, a2[1], (a2[1] - *a2) >> 2);
}

uint64_t sub_1000236A4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return sub_100023D20(v2, *a2, a2[1], (a2[1] - *a2) >> 3);
}

uint64_t sub_1000236C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_10000FBFC(result, a4);
  }

  return result;
}

void sub_100023724(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100023740(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_10000FBFC(result, a4);
  }

  return result;
}

void sub_1000237A0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000237BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_100023838(result, a4);
  }

  return result;
}

void sub_10002381C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100023838(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    sub_100023870(a1, a2);
  }

  sub_10000FC4C();
}

void sub_100023870(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_10001F5C8();
}

uint64_t sub_1000238B4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100023930(result, a4);
  }

  return result;
}

void sub_100023914(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100023930(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_10002396C(a1, a2);
  }

  sub_10000FC4C();
}

void sub_10002396C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_10001F5C8();
}

uint64_t sub_1000239B4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100023A30(result, a4);
  }

  return result;
}

void sub_100023A14(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100023A30(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_100023A6C(a1, a2);
  }

  sub_10000FC4C();
}

void sub_100023A6C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_10001F5C8();
}

uint64_t sub_100023AB4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_10000FBFC(result, a4);
  }

  return result;
}

void sub_100023B14(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100023B30(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_100023838(result, a4);
  }

  return result;
}

void sub_100023B90(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100023BAC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100023930(result, a4);
  }

  return result;
}

void sub_100023C0C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100023C28(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100023A30(result, a4);
  }

  return result;
}

void sub_100023C88(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100023CA4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100023930(result, a4);
  }

  return result;
}

void sub_100023D04(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100023D20(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100023A30(result, a4);
  }

  return result;
}

void sub_100023D80(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100023D9C(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_100023E8C(a1, prime);
    }
  }
}

void sub_100023E8C(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_10001F5C8();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_100023FF0(uint64_t a1)
{
  sub_1000225CC(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_100024040(uint64_t a1)
{
  sub_10002407C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_10002407C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_100023FF0((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_1000240D8(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

void sub_100024464(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    v4 = *&a2;
    if (*&a2 < 0.0 || *&a2 > 1.0)
    {
      v6 = sub_100024BD4();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v17 = 134217984;
      v18 = v4;
      v7 = "Notification notification threshold parameter needs to be within [0, 1]: %f";
      v8 = v6;
      v9 = 12;
      goto LABEL_12;
    }

    if (HIDWORD(a2))
    {
      *a1 = a2;
      v11 = sub_100024BD4();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      v15 = *a1;
      v16 = *(a1 + 4);
      v17 = 134218240;
      v18 = v15;
      v19 = 1024;
      v20 = v16;
      v14 = "Notification start new computation with specified parameters, notificationThreshold: %f, minimumPacketCounts: %d";
      goto LABEL_15;
    }

    v10 = sub_100024BD4();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 67109120;
      LODWORD(v18) = 0;
      v7 = "Notification minimum packet count parameter needs to be greater than zero: %d";
      v8 = v10;
      v9 = 8;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, &v17, v9);
    }
  }

LABEL_13:
  *a1 = 0x12C3E99999ALL;
  v11 = sub_100024BD4();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a1;
    v13 = *(a1 + 4);
    v17 = 134218240;
    v18 = v12;
    v19 = 1024;
    v20 = v13;
    v14 = "Notification start new computation with default parameters, notificationThreshold: %f, minimumPacketCounts: %d";
LABEL_15:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v14, &v17, 0x12u);
  }

LABEL_16:
  *(a1 + 8) = 0;
}

BOOL sub_10002464C(uint64_t a1)
{
  v2 = *(a1 + 12);
  if (v2 && v2 >= *(a1 + 4))
  {
    v7 = *(a1 + 8) / v2;
    v8 = *a1;
    v4 = v7 >= *a1;
    v9 = sub_100024BD4();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *a1;
      v12 = 134218496;
      *v13 = v7;
      *&v13[8] = 2048;
      v14 = v10;
      v15 = 1024;
      v16 = v7 >= v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Notification low confidence ratio: %f < %f , result: %d", &v12, 0x1Cu);
    }
  }

  else
  {
    v3 = sub_100024BD4();
    v4 = 0;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 12);
      v6 = *(a1 + 4);
      v12 = 67109376;
      *v13 = v5;
      *&v13[4] = 1024;
      *&v13[6] = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Notification minimum packet count not met: %d < %d", &v12, 0xEu);
      return 0;
    }
  }

  return v4;
}

double sub_1000247C0(uint64_t a1)
{
  *a1 = 1050253722;
  *&result = 300;
  *(a1 + 4) = 300;
  *(a1 + 12) = 0;
  return result;
}

uint64_t sub_1000247E0(uint64_t a1, uint64_t a2)
{
  ++*(a1 + 12);
  v3 = *(a2 + 41);
  v4 = sub_100024828();
  v5 = *(a1 + 8);
  if (v3 < v4)
  {
    ++v5;
  }

  *(a1 + 8) = v5;
  return 1;
}

float sub_10002483C(unsigned int a1)
{
  v1 = &unk_10002C9F8;
  v2 = 7;
  result = 0.2;
  while (--v2 >= 1)
  {
    v4 = v1 - 8;
    v5 = *(v1 - 12);
    v1 -= 8;
    if (v5 <= a1)
    {
      return *v4;
    }
  }

  return result;
}

uint64_t sub_10002487C(uint64_t a1)
{
  v2 = -4800;
  do
  {
    v3 = a1 + v2;
    *(v3 + 4800) = 0;
    *(v3 + 4808) = 0;
    *(v3 + 4812) = 0;
    v2 += 16;
  }

  while (v2);
  *(a1 + 4800) = 300;
  sub_1000248D4(a1, 0);
  return a1;
}

void sub_1000248D4(uint64_t a1, char a2)
{
  LOWORD(v2) = 0;
  LOWORD(v3) = 0;
  v4 = 0;
  *(a1 + 4802) = 0;
  v5 = *(a1 + 4800);
  v6 = 300;
  do
  {
    v7 = a1 + 16 * v3;
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 12) = 0;
    if (v5 == v4)
    {
      v2 = (v2 + 1) % v5;
      *(a1 + 4804) = v2;
      v4 = v5;
    }

    else
    {
      *(a1 + 4802) = ++v4;
    }

    v3 = (v3 + 1) % v5;
    --v6;
  }

  while (v6);
  *(a1 + 4806) = v3;
  *(a1 + 4808) = 0u;
  *(a1 + 4824) = 0u;
  *(a1 + 4834) = 0u;
  if ((a2 & 1) == 0)
  {
    *(a1 + 4866) = 0;
    uuid_clear((a1 + 4850));
  }
}

float sub_100024984(uint64_t a1, unint64_t a2, double a3, double a4, double a5, float a6)
{
  v6 = a2 - 300000000;
  if (a2 < 0x11E1A300)
  {
    v6 = 0;
  }

  v7 = *(a1 + 4802);
  result = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  if (*(a1 + 4802))
  {
    v11 = *(a1 + 4804);
    do
    {
      v12 = a1 + 16 * (v11 % *(a1 + 4800));
      if (*v12 >= v6)
      {
        LOWORD(a6) = *(v12 + 8);
        v9 = v9 + LODWORD(a6);
        a6 = *(v12 + 12);
        v10 = v10 + a6;
      }

      ++v11;
      --v7;
    }

    while (v7);
  }

  v13 = v10 / v9;
  if (v9 > 0.0)
  {
    return v13;
  }

  return result;
}

uint64_t sub_100024A28(uint64_t a1, unint64_t a2, float a3)
{
  v3 = *(a1 + 4824);
  if (!v3)
  {
    v3 = *(a1 + 4832) + 2000000;
    *(a1 + 4824) = v3;
  }

  *(a1 + 4840) = 0;
  v4 = *(a1 + 4802);
  v5 = 300;
  do
  {
    if (v3 > a2)
    {
      break;
    }

    v6 = *(a1 + 4806);
    v7 = a1 + 16 * v6;
    *v7 = a2;
    *(v7 + 8) = 0;
    *(v7 + 12) = 0;
    v8 = *(a1 + 4800);
    if (v8 == v4)
    {
      *(a1 + 4804) = (*(a1 + 4804) + 1) % v4;
    }

    else
    {
      *(a1 + 4802) = ++v4;
    }

    *(a1 + 4806) = (v6 + 1) % v8;
    v3 = *(a1 + 4824) + 1000000;
    *(a1 + 4824) = v3;
    --v5;
  }

  while (v5);
  if (v4)
  {
    v9 = a1 + 16 * ((*(a1 + 4804) + v4 - 1) % *(a1 + 4800));
    v10 = *(v9 + 8);
    if (v10 != 0xFFFF)
    {
      *(v9 + 8) = v10 + 1;
      *(v9 + 12) = *(v9 + 12) + a3;
    }
  }

  if (a3 >= 0.6)
  {
    v12 = 0;
  }

  else
  {
    v11 = *(a1 + 4848);
    if (v11 == 0xFFFF)
    {
      goto LABEL_17;
    }

    v12 = v11 + 1;
  }

  *(a1 + 4848) = v12;
LABEL_17:
  v13 = *(a1 + 4808);
  if (v13)
  {
    v14 = a2 - v13;
  }

  else
  {
    v14 = 0;
  }

  *(a1 + 4808) = a2;
  return v14;
}

uint64_t sub_100024B58(uint64_t result, uint64_t a2)
{
  v2 = *(result + 4816);
  if (!v2)
  {
    v2 = *(result + 4832);
  }

  *(result + 4816) = v2 + a2;
  return result;
}

BOOL sub_100024B70(uint64_t a1)
{
  v1 = 8500000;
  if (*(a1 + 4866) == 2)
  {
    v1 = 38000000;
  }

  return *(a1 + 4840) > v1;
}

id sub_100024BD4()
{
  if (qword_100048910 != -1)
  {
    sub_100024C5C();
  }

  v1 = qword_100048918;

  return v1;
}

void sub_100024C18(id a1)
{
  v1 = os_log_create("com.apple.HeartRateCoordinator", "ArbiterAlgorithms");
  v2 = qword_100048918;
  qword_100048918 = v1;
}

uint64_t sub_100024C70(uint64_t a1)
{
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  sub_100024CDC(a1);
  return a1;
}

void sub_100024CBC(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 144) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100024CDC(uint64_t a1)
{
  *(a1 + 2) = 0;
  *a1 = 256;
  uuid_clear((a1 + 3));
  *(a1 + 20) = 0;
  if (*(a1 + 32) == 1)
  {
    *(a1 + 32) = 0;
  }

  if (*(a1 + 48) == 1)
  {
    *(a1 + 48) = 0;
  }

  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  if (*(a1 + 128) == 1)
  {
    *(a1 + 128) = 0;
  }

  *(a1 + 144) = *(a1 + 136);
  return 1;
}

BOOL sub_100024D60(uint64_t a1, uint64_t a2)
{
  *a1 = 1;
  if ((*(a1 + 32) & 1) == 0)
  {
    v4 = *a2;
    *(a1 + 32) = 1;
    *(a1 + 24) = v4;
    v5 = sub_100024BD4();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100026110(v4, v5);
    }
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    v6 = *a2;
    *(a1 + 48) = 1;
    *(a1 + 40) = v6;
    if ((*(a1 + 32) & 1) == 0)
    {
      sub_10000BDC8();
    }

    v7 = *(a1 + 24);
    v8 = v6 < v7;
    v9 = v6 - v7;
    if (!v8 && *(a1 + 1) == 1)
    {
      *(a1 + 64) += v9;
    }
  }

  v10 = *a2;
  v11 = *(a1 + 40);
  if (*a2 < v11)
  {
    v17 = sub_100024BD4();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100026188();
    }
  }

  else
  {
    *(a1 + 64) = vaddq_s64(*(a1 + 64), vdupq_n_s64(*a2 - v11));
    if (*(a2 + 49) == 1)
    {
      if ((*(a1 + 128) & 1) == 0)
      {
        v12 = *a2;
        *(a1 + 128) = 1;
        *(a1 + 120) = v12;
      }

      v13 = *(a2 + 40);
      if (v13)
      {
        v15 = *(a1 + 144);
        v14 = *(a1 + 152);
        if (v15 >= v14)
        {
          v20 = *(a1 + 136);
          v21 = (v15 - v20);
          v22 = v15 - v20 + 1;
          if (v22 < 0)
          {
            sub_10000FC4C();
          }

          v23 = v14 - v20;
          if (2 * v23 > v22)
          {
            v22 = 2 * v23;
          }

          if (v23 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v24 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v24 = v22;
          }

          if (v24)
          {
            operator new();
          }

          v25 = v15 - v20;
          *v21 = v13;
          v16 = v21 + 1;
          memcpy(0, v20, v25);
          *(a1 + 136) = 0;
          *(a1 + 144) = v21 + 1;
          *(a1 + 152) = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v15 = v13;
          v16 = v15 + 1;
        }

        *(a1 + 144) = v16;
      }

      else
      {
        v19 = sub_100024BD4();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_1000261F0(v19);
        }
      }

      v26 = *(a1 + 56);
      v27 = vdupq_n_s64(v26);
      *(a1 + 80) += v26;
      *(a1 + 88) = vaddq_s64(*(a1 + 88), vandq_s8(v27, vcgtq_u64(v27, xmmword_10002CA00)));
      *(a1 + 104) = vaddq_s64(*(a1 + 104), vandq_s8(v27, vcgtq_u64(v27, xmmword_10002CA10)));
      *(a1 + 56) = 0;
      v18 = *a2;
      if ((*(a1 + 48) & 1) == 0)
      {
        *(a1 + 48) = 1;
      }
    }

    else
    {
      *(a1 + 56) += *a2 - v11;
      v18 = *a2;
    }

    *(a1 + 40) = v18;
    *(a1 + 1) = 0;
  }

  return v10 >= v11;
}

uint64_t sub_100025008(uint64_t result)
{
  v1 = *(result + 56);
  v2 = vdupq_n_s64(v1);
  *(result + 80) += v1;
  *(result + 88) = vaddq_s64(*(result + 88), vandq_s8(v2, vcgtq_u64(v2, xmmword_10002CA00)));
  *(result + 104) = vaddq_s64(*(result + 104), vandq_s8(v2, vcgtq_u64(v2, xmmword_10002CA10)));
  *(result + 56) = 0;
  if (*(result + 48) == 1)
  {
    *(result + 48) = 0;
  }

  return result;
}

uint64_t sub_10002506C(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  v3 = a1 + 168;
  sub_100024C70(a1 + 8);
  sub_100024C70(v3);
  sub_100024C70(a1 + 328);
  *(a1 + 488) = 0;
  *(a1 + 552) = 0;
  *(a1 + 556) = 0;
  *(a1 + 568) = 0;
  *(a1 + 632) = 0;
  *(a1 + 520) = 0;
  *(a1 + 536) = 0;
  *(a1 + 528) = 0;
  *(a1 + 541) = 0;
  return a1;
}

void sub_1000250DC(_Unwind_Exception *exception_object)
{
  v3 = v1[38];
  if (v3)
  {
    v1[39] = v3;
    operator delete(v3);
  }

  v4 = v1[18];
  if (v4)
  {
    v1[19] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100025114(uint64_t a1)
{
  sub_100024C70(v22);
  sub_100024C70(v26);
  sub_100024C70(v30);
  *(v34 + 8) = 0u;
  *(&v34[1] + 8) = 0u;
  *(&v34[2] + 8) = 0u;
  v2 = v22[4];
  *(a1 + 88) = v22[5];
  v3 = v22[7];
  *(a1 + 104) = v22[6];
  *(a1 + 120) = v3;
  v4 = v22[0];
  *(a1 + 24) = v22[1];
  v5 = v22[3];
  *(a1 + 40) = v22[2];
  *(a1 + 56) = v5;
  *(a1 + 72) = v2;
  LOBYTE(v34[0]) = 0;
  LOBYTE(v35) = 0;
  *(&v35 + 4) = 0;
  LOBYTE(v36) = 0;
  v40 = 0;
  *(&v34[3] + 5) = 0;
  *(a1 + 136) = v23;
  *(a1 + 8) = v4;
  v6 = *(a1 + 144);
  if (v6)
  {
    *(a1 + 152) = v6;
    operator delete(v6);
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
  }

  *(a1 + 144) = *v24;
  v7 = v26[4];
  *(a1 + 248) = v26[5];
  v8 = v26[7];
  *(a1 + 264) = v26[6];
  *(a1 + 280) = v8;
  v9 = v26[0];
  *(a1 + 184) = v26[1];
  v10 = v26[3];
  *(a1 + 200) = v26[2];
  *(a1 + 216) = v10;
  *(a1 + 232) = v7;
  *(a1 + 160) = v25;
  v24[1] = 0;
  v25 = 0;
  v24[0] = 0;
  *(a1 + 296) = v27;
  *(a1 + 168) = v9;
  v11 = *(a1 + 304);
  if (v11)
  {
    *(a1 + 312) = v11;
    operator delete(v11);
    *(a1 + 304) = 0;
    *(a1 + 312) = 0;
    *(a1 + 320) = 0;
  }

  *(a1 + 304) = __p;
  *(a1 + 320) = v29;
  v29 = 0;
  __p = 0uLL;
  v12 = v30[7];
  *(a1 + 424) = v30[6];
  *(a1 + 440) = v12;
  *(a1 + 456) = v31;
  v13 = v30[3];
  *(a1 + 360) = v30[2];
  *(a1 + 376) = v13;
  v14 = v30[5];
  *(a1 + 392) = v30[4];
  *(a1 + 408) = v14;
  v15 = v30[1];
  *(a1 + 328) = v30[0];
  *(a1 + 344) = v15;
  v16 = *(a1 + 464);
  if (v16)
  {
    *(a1 + 472) = v16;
    operator delete(v16);
    *(a1 + 464) = 0;
    *(a1 + 472) = 0;
    *(a1 + 480) = 0;
    v16 = __p;
  }

  *(a1 + 464) = v32;
  *(a1 + 480) = v33;
  v33 = 0;
  v32 = 0uLL;
  v17 = v38;
  *(a1 + 584) = v37;
  *(a1 + 600) = v17;
  *(a1 + 616) = v39;
  *(a1 + 632) = v40;
  v18 = v34[3];
  *(a1 + 520) = v34[2];
  *(a1 + 536) = v18;
  v19 = v36;
  *(a1 + 552) = v35;
  *(a1 + 568) = v19;
  v20 = v34[1];
  *(a1 + 488) = v34[0];
  *(a1 + 504) = v20;
  if (v16)
  {
    *(&__p + 1) = v16;
    operator delete(v16);
  }

  if (v24[0])
  {
    v24[1] = v24[0];
    operator delete(v24[0]);
  }

  return 1;
}

void sub_100025350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a26)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10002538C(uint64_t a1, uint64_t *a2)
{
  v4 = a2 + 25;
  if (!*(a2 + 25))
  {
    v5 = 8;
LABEL_5:
    v6 = a1 + v5;
    if (!uuid_is_null((a1 + v5 + 3)) && uuid_compare((v6 + 3), a2 + 8))
    {
      ++*(v6 + 20);
    }

    uuid_copy((v6 + 3), a2 + 8);
    v7 = sub_100021238(*a1);
    v8 = v7;
    v9 = *(a1 + 488);
    if (*(a1 + 488) && v7 == 1 && v9 != 1)
    {
      ++*(a1 + 536);
    }

    if (v9 != 1 && v7 == 1)
    {
      sub_100025008(a1 + 328);
      if ((*(a1 + 360) & 1) == 0)
      {
        v10 = *a2;
        *(a1 + 360) = 1;
        *(a1 + 352) = v10;
      }
    }

    if (!*(v6 + 2) && *(a2 + 24) - 1 <= 1)
    {
      sub_100025008(v6);
      if ((*(v6 + 32) & 1) == 0)
      {
        v11 = *a2;
        *(v6 + 32) = 1;
        *(v6 + 24) = v11;
      }
    }

    *(a1 + 488) = v8;
    *(v6 + 2) = *(a2 + 24);
    return 1;
  }

  if (*(a2 + 25) == 1)
  {
    v5 = 168;
    goto LABEL_5;
  }

  v12 = sub_100024BD4();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_10002626C(v4, v12);
  }

  return 1;
}

uint64_t sub_1000254E0(int64x2_t *a1, void *a2)
{
  if (a1[13].i8[8] == 1)
  {
    v2 = *a2 - a1[13].i64[0];
    v3 = vdupq_n_s64(v2);
    a1[31] = vaddq_s64(vandq_s8(v3, vcgtq_u64(v3, xmmword_10002CA20)), a1[31]);
    if (v2 <= 0x98967F)
    {
      v2 = 0;
    }

    a1[32].i64[0] += v2;
  }

  sub_100024D60(&a1[10].i64[1], a2);
  return 1;
}

uint64_t sub_100025574(uint64_t a1, uint64_t a2)
{
  *(a1 + 520) = vadd_s32(*(a1 + 520), ((*(a2 + 57) == 2) | 0x100000000));
  sub_100024D60(a1 + 328, a2);
  v4 = *(a2 + 57);
  v5 = (*(a2 + 52) >> 14) & 1;
  if (v4 == 1)
  {
    v5 = 0;
  }

  *(a1 + 528) += v5;
  v6 = *(a2 + 52);
  v7 = (v6 >> 14) & 1;
  if (v4 == 2)
  {
    v7 = 0;
  }

  *(a1 + 532) += v7;
  v8 = *(a1 + 632);
  if (v8 == 1 && *(a1 + 625) != v4 && (*(a1 + 617) & 1) != 0 && (*(a2 + 49) & 1) != 0)
  {
    v9 = vabds_f32(*(a1 + 608), *(a2 + 40));
    v10 = 0.0;
    if (*(a1 + 552) == 1)
    {
      v10 = *(a1 + 548);
    }

    if (v9 >= v10)
    {
      v10 = v9;
    }

    *(a1 + 548) = v10;
    *(a1 + 552) = 1;
    *(a1 + 540) = v9 + *(a1 + 540);
    ++*(a1 + 544);
    v6 = *(a2 + 52);
  }

  v11 = (a1 + 568);
  if ((v6 & 0xE00) == 0)
  {
    if (v8)
    {
      goto LABEL_16;
    }

LABEL_18:
    v15 = *a2;
    v16 = *(a2 + 16);
    v17 = *(a2 + 48);
    *(a1 + 600) = *(a2 + 32);
    *(a1 + 616) = v17;
    *v11 = v15;
    *(a1 + 584) = v16;
    *(a1 + 632) = 1;
    return 1;
  }

  *(a1 + 556) = sub_100022558(*a1) + *(a1 + 556);
  ++*(a1 + 560);
  if ((*(a1 + 632) & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_16:
  v12 = *a2;
  v13 = *(a2 + 16);
  v14 = *(a2 + 32);
  *(a1 + 611) = *(a2 + 43);
  *(a1 + 584) = v13;
  *(a1 + 600) = v14;
  *v11 = v12;
  return 1;
}

float sub_1000256EC@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v4 = -1;
  *(&v4 + 1) = -1;
  *(a2 + 44) = v4;
  v5 = (a2 + 44);
  v7 = *(a1 + 8);
  v6 = a1 + 8;
  *(a2 + 25) = v4;
  *a2 = v4;
  *(a2 + 16) = v4;
  *(a2 + 60) = v4;
  *(a2 + 73) = -1;
  if (v7 == 1)
  {
    sub_100025008(v6);
    v8 = *(a1 + 144);
    v9 = *(a1 + 80);
    *a2 = *(a1 + 72) / 0xF4240uLL;
    v10 = v9 / 0xF4240;
    if (*(a1 + 152) != v8)
    {
      std::__sort<std::__less<unsigned char,unsigned char> &,unsigned char *>();
      *(a2 + 15) = sub_100025FA8((a1 + 144), 0.1);
      *(a2 + 18) = sub_100025FA8((a1 + 144), 0.5);
      *(a2 + 21) = sub_100025FA8((a1 + 144), 0.9);
    }

    v11 = v10 - *(a1 + 88) / 0xF4240uLL;
    *&v4 = v10;
    if (((v11 | v10) & 0x80000000) == 0)
    {
      *(a2 + 38) = (fminf(v11 / *&v4, 1.0) * 100.0);
    }

    v12 = *(a1 + 96) / 0xF4240uLL;
    if (((v12 | v10) & 0x80000000) == 0)
    {
      *(a2 + 25) = (fminf(v12 / *&v4, 1.0) * 100.0);
    }

    v13 = *(a1 + 104) / 0xF4240uLL;
    if (((v13 | v10) & 0x80000000) == 0)
    {
      *(a2 + 28) = (fminf(v13 / *&v4, 1.0) * 100.0);
    }

    v14 = *(a1 + 112) / 0xF4240uLL;
    if (((v14 | v10) & 0x80000000) == 0)
    {
      *(a2 + 31) = (fminf(v14 / *&v4, 1.0) * 100.0);
    }

    v15 = *(a1 + 120) / 0xF4240uLL;
    if (((v15 | v10) & 0x80000000) == 0)
    {
      *&v4 = fminf(v15 / *&v4, 1.0) * 100.0;
      *(a2 + 34) = *&v4;
    }

    if (*(a1 + 40) == 1 && *(a1 + 136) == 1)
    {
      v16 = *(a1 + 128);
      v17 = *(a1 + 32);
      if (v16 >= v17)
      {
        v19 = (v16 - v17) / 0xF4240uLL;
      }

      else
      {
        v18 = sub_100024BD4();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_1000262E8();
        }

        LODWORD(v19) = 0;
      }

      *v5 = v19;
    }

    v20 = *a2;
    if (*a2)
    {
      v21 = *(a1 + 28);
      if (((v21 | v20) & 0x80000000) == 0)
      {
        *&v4 = v20 / v21;
        *(a2 + 68) = *&v4;
      }
    }
  }

  if (*(a1 + 168) == 1)
  {
    sub_100025008(a1 + 168);
    v22 = *(a1 + 240);
    *(a2 + 4) = *(a1 + 232) / 0xF4240uLL;
    v23 = v22 / 0xF4240;
    if (*(a1 + 312) != *(a1 + 304))
    {
      std::__sort<std::__less<unsigned char,unsigned char> &,unsigned char *>();
      *(a2 + 16) = sub_100025FA8((a1 + 304), 0.1);
      *(a2 + 19) = sub_100025FA8((a1 + 304), 0.5);
      *(a2 + 22) = sub_100025FA8((a1 + 304), 0.9);
    }

    v24 = v23 - *(a1 + 248) / 0xF4240uLL;
    *&v4 = v23;
    if (((v24 | v23) & 0x80000000) == 0)
    {
      *(a2 + 39) = (fminf(v24 / *&v4, 1.0) * 100.0);
    }

    v25 = *(a1 + 256) / 0xF4240uLL;
    if (((v25 | v23) & 0x80000000) == 0)
    {
      *(a2 + 26) = (fminf(v25 / *&v4, 1.0) * 100.0);
    }

    v26 = *(a1 + 264) / 0xF4240uLL;
    if (((v26 | v23) & 0x80000000) == 0)
    {
      *(a2 + 29) = (fminf(v26 / *&v4, 1.0) * 100.0);
    }

    v27 = *(a1 + 272) / 0xF4240uLL;
    if (((v27 | v23) & 0x80000000) == 0)
    {
      *(a2 + 32) = (fminf(v27 / *&v4, 1.0) * 100.0);
    }

    v28 = *(a1 + 280) / 0xF4240uLL;
    if (((v28 | v23) & 0x80000000) == 0)
    {
      *&v4 = fminf(v28 / *&v4, 1.0) * 100.0;
      *(a2 + 35) = *&v4;
    }

    if (*(a1 + 200) == 1 && *(a1 + 296) == 1)
    {
      v29 = *(a1 + 288);
      v30 = *(a1 + 192);
      if (v29 >= v30)
      {
        v32 = (v29 - v30) / 0xF4240uLL;
      }

      else
      {
        v31 = sub_100024BD4();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_100026350();
        }

        LODWORD(v32) = 0;
      }

      *(a2 + 48) = v32;
    }

    v33 = *(a2 + 4);
    if (v33)
    {
      v34 = *(a1 + 188);
      if (((v34 | v33) & 0x80000000) == 0)
      {
        *&v4 = v33 / v34;
        *(a2 + 72) = *&v4;
      }
    }

    v35 = *(a1 + 496) / 0xF4240uLL;
    if (((v33 | v35) & 0x80000000) == 0)
    {
      *&v4 = fminf(v35 / v33, 1.0) * 100.0;
      *(a2 + 12) = *&v4;
    }

    v36 = *(a1 + 504) / 0xF4240uLL;
    if (((v33 | v36) & 0x80000000) == 0)
    {
      *&v4 = fminf(v36 / v33, 1.0) * 100.0;
      *(a2 + 13) = *&v4;
    }

    v37 = *(a1 + 512) / 0xF4240uLL;
    if (((v33 | v37) & 0x80000000) == 0)
    {
      *&v4 = fminf(v37 / v33, 1.0) * 100.0;
      *(a2 + 14) = *&v4;
    }
  }

  if (*(a1 + 328) == 1)
  {
    sub_100025008(a1 + 328);
    v38 = *(a1 + 400);
    *(a2 + 8) = *(a1 + 392) / 0xF4240uLL;
    v39 = v38 / 0xF4240;
    if (*(a1 + 472) != *(a1 + 464))
    {
      std::__sort<std::__less<unsigned char,unsigned char> &,unsigned char *>();
      *(a2 + 17) = sub_100025FA8((a1 + 464), 0.1);
      *(a2 + 20) = sub_100025FA8((a1 + 464), 0.5);
      *(a2 + 23) = sub_100025FA8((a1 + 464), 0.9);
    }

    v40 = *(a1 + 408) / 0xF4240uLL;
    v41 = v39;
    if (((v40 | v39) & 0x80000000) == 0)
    {
      *(a2 + 24) = (fminf(v40 / v41, 1.0) * 100.0);
    }

    v42 = v39 - v40;
    if (((v42 | v39) & 0x80000000) == 0)
    {
      *(a2 + 40) = (fminf(v42 / v41, 1.0) * 100.0);
    }

    v43 = *(a1 + 416) / 0xF4240uLL;
    if (((v43 | v39) & 0x80000000) == 0)
    {
      *(a2 + 27) = (fminf(v43 / v41, 1.0) * 100.0);
    }

    v44 = *(a1 + 424) / 0xF4240uLL;
    if (((v44 | v39) & 0x80000000) == 0)
    {
      *(a2 + 30) = (fminf(v44 / v41, 1.0) * 100.0);
    }

    v45 = *(a1 + 432) / 0xF4240uLL;
    if (((v45 | v39) & 0x80000000) == 0)
    {
      *(a2 + 33) = (fminf(v45 / v41, 1.0) * 100.0);
    }

    v46 = *(a1 + 440) / 0xF4240uLL;
    if (((v46 | v39) & 0x80000000) == 0)
    {
      *(a2 + 36) = (fminf(v46 / v41, 1.0) * 100.0);
    }

    if (*(a1 + 360) == 1 && *(a1 + 456) == 1)
    {
      v47 = *(a1 + 448);
      v48 = *(a1 + 352);
      if (v47 >= v48)
      {
        v50 = (v47 - v48) / 0xF4240uLL;
      }

      else
      {
        v49 = sub_100024BD4();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          sub_1000263B8();
        }

        LODWORD(v50) = 0;
      }

      *(a2 + 52) = v50;
    }

    v51 = *(a1 + 520);
    v52 = *(a1 + 524);
    if (((v52 | v51) & 0x80000000) == 0)
    {
      *(a2 + 37) = (fminf(v51 / v52, 1.0) * 100.0);
    }

    v53 = *(a2 + 8);
    if (v53)
    {
      v54 = *(a1 + 528);
      v55 = v53;
      if (((v54 | v53) & 0x80000000) == 0)
      {
        *(a2 + 56) = (v55 / v54);
      }

      v56 = *(a1 + 532);
      if (((v56 | v53) & 0x80000000) == 0)
      {
        *(a2 + 60) = (v55 / v56);
      }

      v57 = *(a1 + 536);
      if (((v57 | v53) & 0x80000000) == 0)
      {
        *(a2 + 64) = (v55 / v57);
      }
    }

    v58 = *(a1 + 540);
    v59 = *(a1 + 544);
    if (((v59 | v58) & 0x80000000) == 0)
    {
      *(a2 + 76) = (v58 / v59);
    }

    if (*(a1 + 552) == 1)
    {
      v60 = *(a1 + 548);
    }

    else
    {
      v60 = *(a2 + 78);
    }

    *(a2 + 78) = v60;
    LODWORD(v4) = *(a1 + 556);
    v61 = *(a1 + 560);
    if (((v61 | *&v4) & 0x80000000) == 0)
    {
      *&v4 = fminf(*&v4 / v61, 1.0) * 100.0;
      *(a2 + 80) = *&v4;
    }
  }

  return *&v4;
}

uint64_t sub_100025FA8(uint64_t *a1, float a2)
{
  v2 = *a1;
  v3 = a1[1] - *a1;
  v4 = (v3 - 1) * a2;
  v5 = v4;
  v6 = v4 - v4;
  if (v6 == 0.0)
  {
    if (v3 > v5)
    {
      return *(v2 + v5);
    }

LABEL_8:
    sub_100026030();
  }

  if (v3 <= v5 || v3 <= v5 + 1)
  {
    goto LABEL_8;
  }

  return (*(v2 + v5) + ((*(v2 + v5 + 1) - *(v2 + v5)) * v6));
}

void sub_100026048(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1000260A4(exception, a1);
}

std::logic_error *sub_1000260A4(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_1000260F0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_100026110(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Session start wasn't available with informStatus, using the first packet time: %llu", &v2, 0xCu);
}

void sub_1000261F0(os_log_t log)
{
  v1[0] = 67109120;
  v1[1] = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Invalid HR Value: %u", v1, 8u);
}

void sub_10002626C(unsigned __int8 *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unrecognized device type: %lu", &v3, 0xCu);
}

void sub_10002683C(uint64_t a1)
{
  objc_destroyWeak((a1 + 8));

  operator delete();
}

void sub_100026920(id *a1)
{
  objc_destroyWeak(a1 + 1);

  operator delete(a1);
}

void sub_10002695C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024BD4();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100026AC4(v4);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 8));
  [WeakRetained _handleAlgsOutputHeartRate:a2];
}

uint64_t sub_1000269D8(uint64_t a1, uint64_t a2)
{
  if (sub_100026A24(a2, &off_1000411E8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_100026A24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t sub_100026A78(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_10001FD40(result);

    operator delete();
  }

  return result;
}

void sub_100026B08(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Received event %{public}@", &v2, 0xCu);
}

void sub_100026C14(uint8_t *buf, int a2, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "missing entitlement: rejecting connection from PID %d", buf, 8u);
}

void sub_100026C5C(int *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "unexpected _hrSourceOverridePreference : %d", v3, 8u);
}

void sub_100026CD8(unsigned __int8 a1, uint8_t *buf, os_log_t log)
{
  *buf = 67240192;
  *(buf + 1) = a1;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "dropping received hr from alg with unexpected status : %{public}d", buf, 8u);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}