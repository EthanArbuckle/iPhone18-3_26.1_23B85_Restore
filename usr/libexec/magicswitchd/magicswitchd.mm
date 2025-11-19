__CFString *sub_100000EE8(unint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [NSString stringWithFormat:@"Missing string for CBManagerState: (%ld)", a1];
  }

  else
  {
    v2 = off_100018498[a1];
  }

  return v2;
}

void sub_100002608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000262C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained highDutyCycleTimerFired];
}

void sub_100002F94(uint64_t a1)
{
  v2 = objc_alloc_init(InitialSyncCompletionMonitor);
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  [*(a1 + 32) registerNanoRegistryObservers];
  [*(a1 + 32) updateState];
  signal(15, 1);
  v5 = +[MagicSwitchEnabler sharedInstance];
  v6 = [v5 workQueue];
  v7 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v6);
  v8 = *(a1 + 32);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  dispatch_source_set_event_handler(*(*(a1 + 32) + 40), &stru_100018510);
  v10 = *(*(a1 + 32) + 40);

  dispatch_activate(v10);
}

void sub_100003080(id a1)
{
  v1 = qword_100021420;
  if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "MagicSwitchEnabler --- Got SIGTERM; Exiting when clean.", v2, 2u);
  }

  [objc_opt_class() deleteMagicSwitchPathFile];
  xpc_transaction_exit_clean();
}

id sub_100003414(uint64_t a1)
{
  v2 = qword_100021420;
  if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 name];
    v6 = [*(a1 + 40) valueForProperty:NRDevicePropertyPairingID];
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MagicSwitchEnabler --- Received notification (%@) for device: (%@)", &v8, 0x16u);
  }

  return [*(a1 + 48) updateState];
}

void sub_100003F70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100003FAC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = +[MagicSwitchEnabler sharedInstance];
    v6 = [v5 workQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000040A4;
    block[3] = &unk_100018560;
    block[4] = WeakRetained;
    v8 = *(a1 + 32);
    v9 = v3;
    dispatch_async(v6, block);
  }
}

id sub_10000428C(uint64_t a1)
{
  v2 = qword_100021420;
  if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MagicSwitchEnabler --- Received active device assertion state did change callback", v4, 2u);
  }

  return [*(a1 + 32) updateState];
}

void sub_100004C04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100004C28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained activeWatchAssertionTimerFired];
}

void sub_1000056B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000056D4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = +[MagicSwitchEnabler sharedInstance];
    v8 = [v7 workQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000057D4;
    v9[3] = &unk_1000185B0;
    v9[4] = WeakRetained;
    v10 = *(a1 + 32);
    v12 = a2;
    v11 = v5;
    dispatch_async(v8, v9);
  }
}

void sub_10000613C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "InitialSyncCompletionMonitor --- Initial sync completed for pairingID: (%@)", &v6, 0xCu);
    }

    v5 = [WeakRetained cachedInitialSyncStateByPairingID];
    [v5 setObject:&__kCFBooleanTrue forKey:*(a1 + 32)];

    [WeakRetained notifyObserversInitialSyncDidCompleteForPairingID:*(a1 + 32)];
  }
}

void sub_100006320(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained retryPendingRequests];
}

id sub_1000067F0(uint64_t a1)
{
  v2 = qword_100021420;
  if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "WakingTimerScheduler --- Dispatch timer fired", v4, 2u);
  }

  return [*(a1 + 32) evaluateTimers];
}

id sub_100006864(uint64_t a1)
{
  v2 = qword_100021420;
  if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "WakingTimerScheduler --- Received time zone notification: (com.apple.system.timezone)", v4, 2u);
  }

  return [*(a1 + 32) handleTimeEvent];
}

id sub_1000068D8(uint64_t a1)
{
  v2 = qword_100021420;
  if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "WakingTimerScheduler --- Received clock set notification: (com.apple.system.clock_set)", v4, 2u);
  }

  return [*(a1 + 32) handleTimeEvent];
}

uint64_t sub_1000069F0(uint64_t a1)
{
  qword_100021400 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_1000070D4(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v12;
    *&v4 = 134217984;
    v10 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = qword_100021420;
        if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v10;
          v16 = v8;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "WakingTimerScheduler --- Firing timer (%p)", buf, 0xCu);
        }

        [v8 fireTimer];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v5);
  }

  sub_100008EEC(*(a1 + 40));
}

void sub_100007C64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained fireTimer];
}

void sub_100007DC4()
{
  if (qword_100021410 != -1)
  {
    sub_10000C588();
  }
}

void sub_100007DF0(id a1)
{
  qword_100021420 = os_log_create("com.apple.NanoRegistry", "MagicSwitch");

  _objc_release_x1();
}

uint64_t sub_100008D28(uint64_t a1)
{
  AssertionID = 0;
  v12[0] = @"AssertName";
  v2 = [NSString stringWithUTF8String:a1];
  v13[0] = v2;
  v13[1] = @"com.apple.MagicSwitch";
  v12[1] = @"PlugInBundleID";
  v12[2] = @"AssertType";
  v12[3] = @"AssertLevel";
  v13[2] = @"PreventUserIdleSystemSleep";
  v13[3] = &off_100018BA8;
  v3 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:4];

  v4 = IOPMAssertionCreateWithProperties(v3, &AssertionID);
  v5 = qword_100021420;
  if (v4)
  {
    v6 = v4;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *v11 = a1;
      *&v11[8] = 1024;
      *&v11[10] = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PowerAssertion --- Failed to take power assertion for (%s) with error: (%d)", buf, 0x12u);
    }

    v7 = 0;
    AssertionID = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109378;
      *v11 = AssertionID;
      *&v11[4] = 2080;
      *&v11[6] = a1;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "PowerAssertion --- Taking power assertion (%u) for (%s)", buf, 0x12u);
    }

    v7 = AssertionID;
  }

  return v7;
}

void sub_100008EEC(IOPMAssertionID a1)
{
  v2 = qword_100021420;
  if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEBUG))
  {
    v3[0] = 67109120;
    v3[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "PowerAssertion --- Releasing power assertion: (%u)", v3, 8u);
  }

  if (a1)
  {
    IOPMAssertionRelease(a1);
  }
}

void sub_1000094AC(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  type = xpc_get_type(v2);
  if (qword_100021418)
  {
    if (type == &_xpc_type_dictionary)
    {
      string = xpc_dictionary_get_string(v2, "Notification");
      v6 = qword_100021420;
      if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315138;
        v9 = string;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "MagicSwitchEnabler --- Received notification: %s", &v8, 0xCu);
      }

      if (string)
      {
        v7 = +[MagicSwitchEnabler sharedInstance];
        [v7 handleLaunchEventDarwinNotification:string];
      }
    }

    else
    {
      v4 = qword_100021420;
      if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138412290;
        v9 = v2;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MagicSwitchEnabler --- Received unexpected non-dictionary type event: (%@)", &v8, 0xCu);
      }
    }
  }
}

uint64_t sub_10000AA94(void *a1)
{
  v1 = a1;
  v2 = [v1 output];
  v3 = CFWriteStreamCopyProperty(v2, kCFStreamPropertySocketNativeHandle);

  if (!v3)
  {
    v11 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15[0] = v1;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "MessageManager --- Failed to extract socket from pipe: (%@)", buf, 0xCu);
    }

    goto LABEL_11;
  }

  *buffer = -1;
  v16.location = 0;
  v16.length = 4;
  CFDataGetBytes(v3, v16, buffer);
  CFRelease(v3);
  v4 = qword_100021420;
  if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    LODWORD(v15[0]) = *buffer;
    WORD2(v15[0]) = 2112;
    *(v15 + 6) = v1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MessageManager --- Extracted socket (%d) from pipe: (%@)", buf, 0x12u);
  }

  v5 = fcntl(*buffer, 3, 0);
  if (v5 == -1 || fcntl(*buffer, 4, v5 | 4u) == -1)
  {
    v7 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *buffer;
      v9 = v7;
      v10 = *__error();
      *buf = 67109376;
      LODWORD(v15[0]) = v8;
      WORD2(v15[0]) = 1024;
      *(v15 + 6) = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "MessageManager --- Failed to set socket (%d) as non-blocking: %d", buf, 0xEu);
    }

LABEL_11:
    v6 = 0xFFFFFFFFLL;
    goto LABEL_12;
  }

  v6 = *buffer;
LABEL_12:

  return v6;
}

_BYTE *sub_10000B1F8(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[8] & 1) == 0)
  {
    return [result readIncomingMessages];
  }

  return result;
}

_BYTE *sub_10000B20C(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[8] & 1) == 0)
  {
    return [result writePendingMessages];
  }

  return result;
}

void sub_10000BE1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000BE48(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained significantTimeChangeHandler];
}

void sub_10000C15C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000C184(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained rollingTimerFired];
}