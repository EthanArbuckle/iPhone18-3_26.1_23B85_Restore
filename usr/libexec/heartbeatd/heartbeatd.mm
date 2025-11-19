void sub_100000E10(uint64_t a1, const char *a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  bzero(buffer, 0x800uLL);
  if (!a2)
  {
    a2 = "";
  }

  v11 = CFStringCreateWithFormatAndArguments(0, 0, a3, &a9);
  v12 = v11;
  if (v11 && !CFStringGetCString(v11, buffer, 2048, 0x8000100u))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to retrieve C string.", buf, 2u);
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = a2;
    v15 = 2080;
    v16 = buffer;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: %s", buf, 0x16u);
  }

  if (v12)
  {
LABEL_8:
    CFRelease(v12);
  }
}

BOOL sub_100000F7C(int a1)
{
  v10 = 1;
  v1 = setsockopt(a1, 0xFFFF, 0x10000, &v10, 4u);
  if (v1 == -1)
  {
    v2 = __error();
    v3 = strerror(*v2);
    sub_100000E10(0, "_disable_wake_from_sleep", @"setsockopt(SO_NOWAKEFROMSLEEP) failed: %s", v4, v5, v6, v7, v8, v3);
  }

  return v1 != -1;
}

BOOL sub_100000FF8(int a1)
{
  v10 = 1;
  result = sub_100000F7C(a1);
  if (result)
  {
    if (setsockopt(a1, 0xFFFF, 4388, &v10, 4u) == -1)
    {
      v3 = __error();
      v4 = strerror(*v3);
      sub_100000E10(0, "set_socket_option_want_closed_event_no_wake", @"setsockopt(SO_WANT_KEV_SOCKET_CLOSED) failed: %s", v5, v6, v7, v8, v9, v4);
      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_100001084(int a1, unsigned int a2)
{
  v11[0] = a2;
  v11[1] = 0;
  v2 = setsockopt(a1, 0xFFFF, 4102, v11, 0x10u);
  if (v2 == -1)
  {
    v3 = __error();
    v4 = strerror(*v3);
    sub_100000E10(0, "set_socket_option_recv_timeout", @"setsockopt(SO_RCVTIMEO) failed: %s", v5, v6, v7, v8, v9, v4);
  }

  return v2 != -1;
}

BOOL sub_100001100(int a1, unsigned int a2)
{
  v11[0] = a2;
  v11[1] = 0;
  v2 = setsockopt(a1, 0xFFFF, 4101, v11, 0x10u);
  if (v2 == -1)
  {
    v3 = __error();
    v4 = strerror(*v3);
    sub_100000E10(0, "set_socket_option_send_timeout", @"setsockopt(SO_SNDTIMEO) failed: %s", v5, v6, v7, v8, v9, v4);
  }

  return v2 != -1;
}

void sub_10000117C(const __CFString *a1, const __CFDictionary *a2)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, a1, a1, 0, 1u);
  if (a2)
  {
    v5 = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterPostNotification(v5, a1, a1, a2, 1u);
  }
}

void sub_100001284(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    *buf = 138543362;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Cleaning up for closed peer: %{public}@", buf, 0xCu);
  }

  v3 = qword_100010C10;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100001394;
  v4[3] = &unk_10000C4A0;
  v5 = *(a1 + 32);
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

void sub_100001394(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = [v6 peerName];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v17 = 138543362;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Host socket closed: %{public}@", &v17, 0xCu);
    }

    v10 = 1;
    [v6 setLockdownSockConfirmedClosed:1];
  }

  else
  {
    v11 = [v6 servicesAwaitingClose];
    v10 = [v11 containsObject:*(a1 + 32)];

    if (v10)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        v17 = 138543362;
        v18 = v12;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Service socket closed: %{public}@", &v17, 0xCu);
      }

      v13 = [v6 servicesAwaitingClose];
      [v13 removeObject:*(a1 + 32)];

      v10 = 1;
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100007708(v6);
  }

  if ([v6 aboutToSleep])
  {
    if ([v6 lockdownSockConfirmedClosed])
    {
      v14 = [v6 servicesAwaitingClose];
      v15 = [v14 count];

      if (!v15)
      {
        v16 = [v6 powerDownTimer];
        dispatch_source_cancel(v16);
      }
    }
  }

  if (v10)
  {
    *a4 = 1;
  }
}

void sub_100001640(uint64_t a1)
{
  v2 = [qword_100010C10 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = v2;
  if (v2)
  {
    [v2 addService:v3];
  }

  else
  {
    [v3 invalidate];
  }
}

void sub_100001748(uint64_t a1)
{
  v2 = [qword_100010C10 objectForKeyedSubscript:*(a1 + 40)];
  [v2 removeService:*(a1 + 32)];
}

uint64_t sub_1000019D8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000019F0(uint64_t a1)
{
  v4 = [qword_100010C10 objectForKeyedSubscript:*(a1 + 40)];
  v2 = [v4 hostID];
  v3 = [v2 isEqualToString:*(a1 + 40)];

  if (v3)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v4];
  }
}

id sub_100001A80(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100001AFC;
  v2[3] = &unk_10000C540;
  v2[4] = *(a1 + 32);
  return [qword_100010C10 enumerateKeysAndObjectsUsingBlock:v2];
}

id sub_100001B84(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100001C08;
  v2[3] = &unk_10000C5A8;
  v2[4] = *(a1 + 32);
  v3 = *(a1 + 40);
  return [qword_100010C10 enumerateKeysAndObjectsUsingBlock:v2];
}

id sub_100001C08(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100001C88;
  v4[3] = &unk_10000C588;
  v4[4] = *(a1 + 32);
  v5 = *(a1 + 40);
  return [a3 enumerateServices:v4];
}

uint64_t sub_100001C88(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5 = v3;
    if ([v3 hasHeartbeatRef:*(a1 + 32) pid:*(a1 + 40)])
    {
      [v5 invalidate];
    }
  }

  return _objc_release_x1();
}

void sub_100001E18(uint64_t a1)
{
  v1 = qword_100010C10;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100001EA8;
  v2[3] = &unk_10000C4A0;
  v3 = *(a1 + 32);
  [v1 enumerateKeysAndObjectsUsingBlock:v2];
}

void sub_100001EA8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v6 hostID];
  [v7 addObject:v8];

  if (v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Watchers for host %{public}@:", &v9, 0xCu);
    }

    [v6 enumerateServices:&stru_10000C608];
  }
}

void sub_100001FA0(id a1, WatchedServiceInfo *a2)
{
  if (a2)
  {
    [(WatchedServiceInfo *)a2 logService:"    "];
  }
}

void sub_100002660(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained hostID];

  if (v3)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100002710;
    v5[3] = &unk_10000C650;
    v4 = *(a1 + 32);
    v5[4] = WeakRetained;
    v5[5] = v4;
    dispatch_sync(qword_100010C18, v5);
  }
}

void sub_100002710(uint64_t a1)
{
  v2 = qword_100010C10;
  v3 = [*(a1 + 32) hostID];
  v4 = [v2 objectForKeyedSubscript:v3];

  v5 = *(a1 + 32);
  if (v4 == v5)
  {
    v7 = [v5 hostID];
    v17 = v7;
    v8 = [*(a1 + 32) description];
    v18 = v8;
    sub_10000117C(@"com.apple.heartbeatd.host.detached", [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1]);

    v9 = qword_100010C10;
    v10 = [*(a1 + 32) hostID];
    [v9 removeObjectForKey:v10];

    [*(a1 + 32) setHostID:0];
  }

  else if (v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) hostID];
    v13 = 138543618;
    v14 = v6;
    v15 = 2114;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Watcher for %{public}@ has already been replaced by %{public}@.", &v13, 0x16u);
  }

  if ([*(a1 + 40) sock] != -1)
  {
    shutdown([*(a1 + 40) sock], 2);
  }

  if ([*(a1 + 32) powerConn])
  {
    v11 = IODeregisterForSystemPower((*(a1 + 32) + 20));
    if (v11)
    {
      v12 = v11;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 67109120;
        LODWORD(v14) = v12;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IODeregisterForSystemPower failed: %08x", &v13, 8u);
      }
    }

    IONotificationPortDestroy([*(a1 + 32) powerPort]);
    IOServiceClose([*(a1 + 32) powerConn]);
    [*(a1 + 32) setPowerPort:0];
    [*(a1 + 32) setPowerNotifier:0];
    [*(a1 + 32) setPowerConn:0];
  }

  [*(a1 + 32) enumerateServices:&stru_10000C628];
}

void sub_100003064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location, char a29)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

unint64_t sub_1000030A8()
{
  if (qword_100010C40 != -1)
  {
    sub_100007814();
  }

  v0 = mach_absolute_time();
  LODWORD(v1) = dword_100010C38;
  LODWORD(v2) = *algn_100010C3C;
  return (v0 * v1 / v2 / 1000000000.0);
}

void sub_100003108(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = sub_1000030A8();
  if (v3 - *(*(*(a1 + 40) + 8) + 24) > 0x14)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(*(a1 + 40) + 8) + 24);
      v5 = [WeakRetained hostID];
      v6 = 134218498;
      v7 = v4;
      v8 = 2048;
      v9 = v3;
      v10 = 2114;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "lastPing was at %llu, now %llu; timing out host %{public}@", &v6, 0x20u);
    }

    [WeakRetained invalidate];
    dispatch_source_cancel(*(a1 + 32));
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100007828(a1 + 40, WeakRetained);
  }
}

unint64_t sub_100003254(uint64_t a1)
{
  result = sub_1000030A8();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_100003284(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained pingSem];

  if (v1)
  {
    v2 = [WeakRetained pingSem];
    dispatch_semaphore_signal(v2);
  }
}

void sub_1000036FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100003744(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained servicesAwaitingClose];
    [v3 removeAllObjects];

    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000037E8;
    v4[3] = &unk_10000C6F0;
    v4[4] = v2;
    [v2 enumerateServices:v4];
  }
}

void sub_1000037E8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 servicesAwaitingClose];
  v4 = [v3 peerName];

  [v5 addObject:v4];
}

void sub_100003860(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v23 = 256;
  if (WeakRetained)
  {
    v3 = malloc_type_malloc(0x100uLL, 0x7C0035EuLL);
    v22 = v3;
    v4 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (!v3)
    {
      if (v4)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to allocate read buffer.", buf, 2u);
      }

      goto LABEL_31;
    }

    if (v4)
    {
      *buf = 134217984;
      v25[0] = 5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Holding off sleep for at most %lld seconds.", buf, 0xCu);
    }

    sub_100001084([WeakRetained sock], 1u);
    sub_100001100([WeakRetained sock], 1u);
    if (qword_100010C60 != -1)
    {
      sub_100007A2C();
    }

    if (!qword_100010C68)
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT) || (*buf = 0, _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create sleep message.", buf, 2u), !qword_100010C68))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v10 = "Failed to create SleepyTime message.";
          v11 = 2;
          goto LABEL_25;
        }

LABEL_30:
        free(v3);
        goto LABEL_31;
      }
    }

    v5 = [WeakRetained sendPacket:? size:?];
    v6 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v6)
      {
        v7 = *__error();
        v8 = __error();
        v9 = strerror(*v8);
        *buf = 67109378;
        LODWORD(v25[0]) = v7;
        WORD2(v25[0]) = 2082;
        *(v25 + 6) = v9;
        v10 = "Failed to send SleepyTime message: %d %{public}s";
        v11 = 18;
LABEL_25:
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v10, buf, v11);
        goto LABEL_30;
      }

      goto LABEL_30;
    }

    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Sent SleepyTime.", buf, 2u);
    }

    v12 = objc_autoreleasePoolPush();
    v13 = [WeakRetained receiveMessage:&v22 size:&v23];
    v14 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (!v14)
      {
        goto LABEL_29;
      }

      *buf = 138543362;
      v25[0] = v13;
      v15 = "Received SleepyTime response: %{public}@";
      v16 = 12;
    }

    else
    {
      if (!v14)
      {
        goto LABEL_29;
      }

      *buf = 0;
      v15 = "Failed to receive SleepyTime response.";
      v16 = 2;
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v15, buf, v16);
LABEL_29:

    objc_autoreleasePoolPop(v12);
    v3 = v22;
    if (!v22)
    {
LABEL_31:
      block[4] = WeakRetained;
      v22 = 0;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100003D74;
      block[3] = &unk_10000C4C8;
      dispatch_sync(qword_100010C18, block);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Starting power down timer to monitor sockets closing.", buf, 2u);
      }

      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100003DE8;
      v19[3] = &unk_10000C738;
      objc_copyWeak(v20, (a1 + 32));
      v20[1] = *(a1 + 40);
      [WeakRetained setSleepHandler:v19];
      [WeakRetained setSleepTimerEnabled:1];
      v17 = [WeakRetained powerDownTimer];
      v18 = dispatch_time(0, 5000000000);
      dispatch_source_set_timer(v17, v18, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);

      objc_destroyWeak(v20);
      goto LABEL_34;
    }

    goto LABEL_30;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid object.", buf, 2u);
  }

LABEL_34:
}

id sub_100003D74(uint64_t a1)
{
  if ([*(a1 + 32) ldConn])
  {
    [*(a1 + 32) ldConn];
    lockdown_disconnect();
    [*(a1 + 32) setLdConn:0];
    [*(a1 + 32) setSock:0xFFFFFFFFLL];
  }

  v2 = *(a1 + 32);

  return [v2 enumerateServices:&stru_10000C710];
}

void sub_100003DE8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained sleepTimerEnabled])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v5[0]) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Allowing power change for sleep.", v5, 2u);
    }

    v3 = IOAllowPowerChange([WeakRetained powerConn], *(a1 + 40));
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v5[0] = 67109120;
        v5[1] = v4;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOAllowPowerChange failed: %08x", v5, 8u);
      }
    }

    [WeakRetained setSleepTimerEnabled:0];
    [WeakRetained invalidate];
  }
}

id sub_10000487C(int a1)
{
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v4 = 0;
  v5 = 0u;
  v3 = 499;
  if (getpeername(a1, &v4, &v3))
  {
    v1 = 0;
  }

  else
  {
    v1 = sub_100007324(&v4);
  }

  return v1;
}

void sub_100004960(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained servicesAwaitingClose];
    v4 = [v3 count];

    if (v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v2 servicesAwaitingClose];
      v6 = [v5 count];
      v7 = [v2 peerName];
      v8 = [v2 servicesAwaitingClose];
      v10 = 134218498;
      v11 = v6;
      v12 = 2114;
      v13 = v7;
      v14 = 2114;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%ld services never got closed socket event for peer '%{public}@': %{public}@", &v10, 0x20u);
    }

    v9 = [v2 powerDownTimer];
    dispatch_source_cancel(v9);
  }
}

void sub_100004AB0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained sleepHandler];

  if (v1)
  {
    v2 = [WeakRetained sleepHandler];
    v2[2]();
  }
}

uint64_t sub_10000512C(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_100005B78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100005BA4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

void sub_100005D24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = [WeakRetained procExitSource];

    if (v1)
    {
      v2 = [WeakRetained procExitSource];
      dispatch_source_cancel(v2);

      [WeakRetained setProcExitSource:0];
    }

    v3 = [WeakRetained hostID];
    [HostWatcher removeService:WeakRetained forHostID:v3];
  }
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  if (qword_100010C30 != -1)
  {
    sub_100007AD0();
  }

  if (qword_100010C08)
  {
    v1 = qword_100010C18 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (!v1 && qword_100010C10 != 0 && qword_100010C20 != 0)
  {
    v5 = socket(32, 3, 1);
    v6 = v5;
    if (v5 < 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *__error();
        v12 = __error();
        v13 = strerror(*v12);
        *buf = 67109378;
        v35 = v11;
        v36 = 2082;
        v37 = v13;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "socket call failed: %d (%{public}s)", buf, 0x12u);
      }

      if (v6 == -1)
      {
LABEL_30:
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *handler = 0;
          v4 = "Failed to intialize kevent monitor.";
          goto LABEL_32;
        }

        goto LABEL_33;
      }
    }

    else
    {
      v33 = 4;
      v32 = 0x100000001;
      if (ioctl(v5, 0x800C6502uLL, &v32))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v7 = *__error();
          v8 = __error();
          v9 = strerror(*v8);
          *buf = 67109378;
          v35 = v7;
          v36 = 2082;
          v37 = v9;
          v10 = "ioctl(SIOCSKEVFILT) failed: %d (%{public}s)";
LABEL_27:
          v17 = 18;
LABEL_28:
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v10, buf, v17);
        }
      }

      else
      {
        if (!ioctl(v6, 0x8004667EuLL, &v32))
        {
          v19 = dispatch_source_create(&_dispatch_source_type_read, v6, 0, qword_100010C20);
          v20 = qword_100010C28;
          qword_100010C28 = v19;

          if (qword_100010C28)
          {
            *handler = _NSConcreteStackBlock;
            v28 = 3221225472;
            v29 = sub_1000074A4;
            v30 = &unk_10000C8B0;
            v31 = v6;
            dispatch_source_set_cancel_handler(qword_100010C28, handler);
            v25[0] = _NSConcreteStackBlock;
            v25[1] = 3221225472;
            v25[2] = sub_1000074AC;
            v25[3] = &unk_10000C8B0;
            v26 = v6;
            dispatch_source_set_event_handler(qword_100010C28, v25);
            dispatch_resume(qword_100010C28);
            mach_service = xpc_connection_create_mach_service("com.apple.mobile.heartbeat", qword_100010C08, 1uLL);
            if (mach_service)
            {
              v23[0] = _NSConcreteStackBlock;
              v23[1] = 3221225472;
              v23[2] = sub_100006648;
              v23[3] = &unk_10000C830;
              v22 = mach_service;
              v24 = v22;
              xpc_connection_set_event_handler(v22, v23);

              xpc_connection_resume(v22);
              objc_autoreleasePoolPop(v0);
              CFRunLoopRun();

              return 1;
            }

            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              *handler = 0;
              v4 = "Failed to create xpc listener.";
              goto LABEL_32;
            }

            goto LABEL_33;
          }

          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_29;
          }

          *buf = 0;
          v10 = "Failed to dispatch source.";
          v17 = 2;
          goto LABEL_28;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *__error();
          v15 = __error();
          v16 = strerror(*v15);
          *buf = 67109378;
          v35 = v14;
          v36 = 2082;
          v37 = v16;
          v10 = "ioctl(FIONBIO) failed: %d (%{public}s)";
          goto LABEL_27;
        }
      }
    }

LABEL_29:
    close(v6);
    goto LABEL_30;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *handler = 0;
    v4 = "Failed to intialize globals.";
LABEL_32:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v4, handler, 2u);
  }

LABEL_33:
  objc_autoreleasePoolPop(v0);
  return 1;
}

void sub_10000655C(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("com.apple.mobile.heartbeat", v1);
  v3 = qword_100010C08;
  qword_100010C08 = v2;

  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create("com.apple.mobile.heartbeat.hostwatchers", v4);
  v6 = qword_100010C18;
  qword_100010C18 = v5;

  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_create("com.apple.heartbeatd.KernelEventMonitor", v7);
  v9 = qword_100010C20;
  qword_100010C20 = v8;

  qword_100010C10 = objc_alloc_init(NSMutableDictionary);

  _objc_release_x1();
}

void sub_100006648(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  type = xpc_get_type(v3);
  v4 = v12[3];
  if (v4 == &_xpc_type_connection)
  {
    v6 = v3;
    xpc_connection_set_target_queue(v6, qword_100010C08);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100006870;
    v8[3] = &unk_10000C808;
    v10 = &v11;
    v7 = v6;
    v9 = v7;
    xpc_connection_set_event_handler(v7, v8);
    xpc_connection_resume(v7);
  }

  else if (v4 == &_xpc_type_error)
  {
    if (v3 == &_xpc_error_connection_invalid)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "XPC connection is invalid, verify mach service name is set in xpc plist.", buf, 2u);
      }
    }

    else
    {
      v5 = xpc_copy_description(v3);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v16 = v5;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Unexpected XPC event '%{public}s':", buf, 0xCu);
      }

      free(v5);
    }

    xpc_connection_cancel(*(a1 + 32));
  }

  _Block_object_dispose(&v11, 8);
}

void sub_100006848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100006870(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = xpc_get_type(v3);
  if (v3 != &_xpc_error_connection_invalid && *(*(*(a1 + 40) + 8) + 24) == &_xpc_type_dictionary)
  {
    v36 = 0;
    v37 = 0;
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = sub_1000019D8;
    v35 = sub_1000019E8;
    if (!lockdown_copy_checkin_info())
    {
      v10 = os_transaction_create();
      v11 = v32[5];
      v32[5] = v10;

      v12 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100006EA4;
      block[3] = &unk_10000C518;
      block[4] = &v31;
      block[5] = v37;
      dispatch_async(v12, block);

LABEL_36:
      _Block_object_dispose(&v31, 8);

      goto LABEL_37;
    }

    v4 = *(a1 + 32);
    v5 = v3;
    v6 = v5;
    if (v5 && v4)
    {
      uint64 = xpc_dictionary_get_uint64(v5, "HB_PARAM_COMMAND");
      v8 = uint64;
      if (uint64 > 2)
      {
        if (uint64 == 3)
        {
          v26 = v6;
          v27 = xpc_dictionary_get_remote_connection(v26);
          v28 = v27;
          if (v27)
          {
            pid = xpc_connection_get_pid(v27);
            [HostWatcher invalidateServiceWithPID:pid heartBeatRef:xpc_dictionary_get_uint64(v26, "HB_PARAM_REF")];
          }

          goto LABEL_33;
        }

        if (uint64 == 4)
        {
          v39 = 0;
          [HostWatcher dumpConnectedHosts:&v39];
          v14 = v39;
          v15 = v14;
          if (v14 && [v14 count])
          {
            v38 = 0;
            v16 = [NSPropertyListSerialization dataWithPropertyList:v15 format:200 options:0 error:&v38];
            v17 = v38;
            if (v16)
            {
              v18 = v16;
              v19 = [v16 bytes];
              v20 = [v16 length];
              v21 = dispatch_get_global_queue(0, 0);
              v22 = dispatch_data_create(v19, v20, v21, &stru_10000C8D0);

              if (v22)
              {
                v23 = xpc_data_create_with_dispatch_data(v22);
                if (v23)
                {
                  reply = xpc_dictionary_create_reply(v6);
                  v25 = reply;
                  if (reply)
                  {
                    xpc_dictionary_set_value(reply, "HB_PARAM_OBJECT", v23);
                    xpc_connection_send_message(v4, v25);
                  }

                  else
                  {
                    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "failed to create xpc reply dictionary", buf, 2u);
                    }
                  }
                }

                else
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "failed to create xpc data", buf, 2u);
                  }
                }
              }

              else
              {
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "failed to create dispatch data", buf, 2u);
                }
              }

              goto LABEL_35;
            }

            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v41 = v17;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "failed to serialize data: %{public}@", buf, 0xCu);
            }
          }

          v16 = 0;
LABEL_35:

          goto LABEL_36;
        }
      }

      else
      {
        if (uint64 == 1)
        {
          [WatchedServiceInfo processWatchCommand:v6];
          goto LABEL_33;
        }

        if (uint64 == 2)
        {
          string = xpc_dictionary_get_string(v6, "HB_PARAM_HOSTID");
          if (!string || (string = [[NSString alloc] initWithCString:string encoding:4]) != 0)
          {
            [HostWatcher invalidateWatcherForHost:string];

            goto LABEL_33;
          }

          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_33;
          }

          *buf = 0;
          v13 = "Failed to create string.";
LABEL_15:
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v13, buf, 2u);
          goto LABEL_33;
        }
      }

      v16 = xpc_copy_description(v6);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v41 = v16;
        v42 = 2048;
        v43 = v8;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid command (%{public}s): %lld", buf, 0x16u);
      }

      if (!v16)
      {
        goto LABEL_34;
      }

      free(v16);
LABEL_33:
      v16 = 0;
LABEL_34:
      v15 = 0;
      goto LABEL_35;
    }

    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    *buf = 0;
    v13 = "Invalid input(s).";
    goto LABEL_15;
  }

LABEL_37:
}

void sub_100006E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100006EA4(uint64_t a1)
{
  v2 = [[HostWatcher alloc] initWithCheckinGoop:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = qword_100010C18;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100006FF0;
    block[3] = &unk_10000C4C8;
    v5 = v2;
    v12 = v5;
    dispatch_sync(v4, block);
    v6 = [(HostWatcher *)v5 pingQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100007124;
    v9[3] = &unk_10000C4C8;
    v10 = v5;
    dispatch_async(v6, v9);
  }

  CFRelease(*(a1 + 40));
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

void sub_100006FF0(uint64_t a1)
{
  v2 = qword_100010C10;
  v3 = [*(a1 + 32) hostID];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) hostID];
      v9 = 138543618;
      v10 = v5;
      v11 = 2114;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Replacing old hostWatcher %{public}@ with %{public}@", &v9, 0x16u);
    }

    [v4 invalidate];
  }

  v6 = *(a1 + 32);
  v7 = qword_100010C10;
  v8 = [v6 hostID];
  [v7 setObject:v6 forKeyedSubscript:v8];
}

_DWORD *sub_100007164(int a1, void *a2)
{
  if (!a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 0;
      v9 = "Invalid input.";
      v10 = &v14;
LABEL_12:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
    }

    return 0;
  }

  if (a1)
  {
    v3 = &off_10000CD38;
  }

  else
  {
    v3 = &off_10000CD10;
  }

  v4 = [NSPropertyListSerialization dataWithPropertyList:v3 format:100 options:0 error:0];
  if (!v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "Failed to create data.";
      v10 = buf;
      goto LABEL_12;
    }

    return 0;
  }

  v5 = v4;
  v6 = [v4 length];
  v7 = malloc_type_malloc((v6 + 4), 0x808C086FuLL);
  if (!v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v12[0] = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to allocate buffer.", v12, 2u);
    }

    return 0;
  }

  v8 = v7;
  *v7 = bswap32(v6);
  memcpy(v7 + 1, [v5 bytes], v6);
  *a2 = v6 + 4;

  return v8;
}

id sub_100007324(const sockaddr *a1)
{
  bzero(v15, 0x401uLL);
  *v13 = 0u;
  v14 = 0u;
  if (getnameinfo(a1, a1->sa_len, v15, 0x401u, v13, 0x20u, 10))
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
LABEL_5:
      v7 = 0;
      goto LABEL_7;
    }

    v2 = *__error();
    v3 = __error();
    v4 = strerror(*v3);
    *buf = 67109378;
    v10 = v2;
    v11 = 2082;
    v12 = v4;
    v5 = "getnameinfo failed: %d (%{public}s)";
    v6 = 18;
LABEL_4:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v5, buf, v6);
    goto LABEL_5;
  }

  v7 = [[NSString alloc] initWithFormat:@"%s:%s", v15, v13];
  if (!v7)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }

    *buf = 0;
    v5 = "Failed to create string.";
    v6 = 2;
    goto LABEL_4;
  }

LABEL_7:

  return v7;
}

void sub_1000074AC(uint64_t a1)
{
  bzero(v18, 0x8000uLL);
  v2 = recv(*(a1 + 32), v18, 0x8000uLL, 0);
  if (v2 == -1)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v8 = *__error();
    v9 = __error();
    v10 = strerror(*v9);
    v14 = 67109378;
    v15 = v8;
    v16 = 2082;
    v17 = v10;
    v11 = "Failed to receive kernel event message: %d (%{public}s)";
    v12 = 18;
    goto LABEL_20;
  }

  v3 = v2;
  if (v2 >= 1)
  {
    v4 = 0;
    v5 = v18;
    while (v3 - v4 >= *&v18[v4])
    {
      if ((v3 - v4) >= 0x50 && *(v5 + 1) == 1 && *(v5 + 2) == 1 && *(v5 + 3) == 4 && *(v5 + 5) == 1)
      {
        v6 = sub_100007324((v5 + 52));
        if (v6)
        {
          v7 = v6;
          [HostWatcher cleanupClosedSocketForPeer:v6];
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v14) = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to copy socket description.", &v14, 2u);
        }
      }

      v4 += *&v18[v4];
      v5 = &v18[v4];
      if (v4 >= v3)
      {
        return;
      }
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(v5 + 5);
      v14 = 67109120;
      v15 = v13;
      v11 = "Failed to process kernel event message (%d): buffer too small.";
      v12 = 8;
LABEL_20:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v11, &v14, v12);
    }
  }
}

void sub_100007708(void *a1)
{
  v2 = [a1 servicesAwaitingClose];
  [v2 count];
  v3 = [a1 peerName];
  v9 = [a1 servicesAwaitingClose];
  sub_1000076FC();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_100007828(uint64_t a1, void *a2)
{
  v2 = *(*(*a1 + 8) + 24);
  v8 = [a2 hostID];
  sub_1000076FC();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_1000079BC(void *a1, void *a2, uint8_t *buf)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Services awaiting close for peer '%{public}@': %{public}@", buf, 0x16u);
}