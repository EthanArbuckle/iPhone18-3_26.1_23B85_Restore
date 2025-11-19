uint64_t sub_100001834(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 3)
  {
    [*(a1 + 32) log];
  }

  return 0;
}

void sub_100001864(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, _xpc_event_key_name);
  v4 = sub_100025204();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [objc_opt_class() description];
    v7 = NSStringFromSelector(*(a1 + 40));
    v8 = 138543874;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    v12 = 2082;
    v13 = string;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: iokit XPC event: %{public}s", &v8, 0x20u);
  }
}

void sub_100002874(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_100003BF0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained handleTimeout];
    WeakRetained = v2;
  }
}

BOOL sub_10000466C(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void sub_100004AD0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[4] activate];
    WeakRetained = v2;
  }
}

void sub_100004F6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100004F98(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    WeakRetained[6] = a2;
  }

  v5 = WeakRetained;
  (*(*(a1 + 32) + 16))();
}

void sub_100006860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  objc_sync_exit(v17);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_1000068BC(uint64_t a1)
{
  v2 = [*(a1 + 32) discoverBluetoothAudioStreaming];
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  *(*(a1 + 32) + 56) = 0;
  *(*(*(a1 + 48) + 8) + 24) = v2;
  objc_sync_exit(v3);

  v4 = *(a1 + 40);

  return dispatch_semaphore_signal(v4);
}

uint64_t sub_100008510(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  return result;
}

void sub_10000853C(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x16u);
}

void sub_100008670(id a1, int a2, const char *a3)
{
  v5 = sub_100025204();
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136446210;
      v8 = a3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s", &v7, 0xCu);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100029A00(a3, v6);
  }
}

void sub_10000882C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = Chip;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100009CC0(uint64_t a1, uint64_t a2)
{
  v3 = sub_100025204();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", &v4, 0xCu);
  }
}

void start()
{
  v0 = objc_autoreleasePoolPush();
  [objc_alloc_init(CentauriDaemon) run];
  dispatch_main();
}

id sub_10000F55C(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableCopy];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained contextForAnalytics];
    v6 = v5;
    if (v5)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v17;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v17 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v16 + 1) + 8 * i);
            v12 = [v2 objectForKey:v11];

            if (!v12)
            {
              v13 = [v6 objectForKeyedSubscript:v11];
              [v2 setObject:v13 forKey:v11];
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v8);
      }
    }
  }

  v14 = [v2 copy];

  return v14;
}

const __CFString *sub_1000107A4(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"Uninitialized";
  }

  else
  {
    return off_10005C9D8[a1 - 1];
  }
}

const __CFString *sub_1000107CC(uint64_t a1)
{
  if (a1)
  {
    return @"BT";
  }

  else
  {
    return @"WiFi";
  }
}

uint64_t sub_100010B28(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        [*(a1 + 40) processCrash:{v7, v10}];
        objc_autoreleasePoolPop(v8);
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  return (*(*(a1 + 48) + 16))();
}

void sub_1000128B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000128D0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = sub_100025204();
    v6 = v5;
    if (v3)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = [objc_opt_class() description];
        v8 = NSStringFromSelector(*(a1 + 40));
        v9 = 138543874;
        v10 = v7;
        v11 = 2114;
        v12 = v8;
        v13 = 2114;
        v14 = v3;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to add notification: %{public}@", &v9, 0x20u);
LABEL_7:
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [objc_opt_class() description];
      v8 = NSStringFromSelector(*(a1 + 40));
      v9 = 138543618;
      v10 = v7;
      v11 = 2114;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: successfully added notification", &v9, 0x16u);
      goto LABEL_7;
    }
  }
}

void sub_1000136C0(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_100087190;
  qword_100087190 = v1;

  v3 = qword_100087190;

  [v3 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSZZZZZ"];
}

void sub_100016B40(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_100018654(uint64_t a1)
{
  v2 = sub_100025204();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [objc_opt_class() description];
    v5 = NSStringFromSelector(*(a1 + 48));
    v6 = *(a1 + 40);
    v7 = 138543874;
    v8 = v4;
    v9 = 2114;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: task expired: %@", &v7, 0x20u);
  }
}

id sub_10001891C(uint64_t a1)
{
  [*(a1 + 32) setTaskCompleted];
  v2 = *(a1 + 40);

  return [v2 updateTaskIfRequired];
}

void sub_10001B01C(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint8_t buf)
{

  _os_log_error_impl(a1, v17, OS_LOG_TYPE_ERROR, a4, &buf, 0x2Au);
}

void sub_10001B048(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint8_t buf)
{

  _os_log_impl(a1, v27, OS_LOG_TYPE_DEFAULT, a4, &buf, 0x20u);
}

BOOL sub_10001B0D0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void sub_10001B0E8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 0x20u);
}

uint64_t sub_10001B130@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v3 - 148) = 2114;
  *(v2 + 14) = result;
  *(v3 - 138) = 2114;
  *(v3 - 136) = a2;
  return result;
}

void sub_10001B160(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x20u);
}

BOOL sub_10001B178(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void sub_10001B1A8(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint8_t buf)
{

  _os_log_error_impl(a1, v27, OS_LOG_TYPE_ERROR, a4, &buf, 0x2Au);
}

BOOL sub_10001B1C8(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

id sub_10001D040()
{

  return [v0 setObject:v1 forKey:?];
}

void sub_10001E758(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_9;
  }

  if (*(WeakRetained + 37) == 1)
  {
    sub_10002F260(a1);
LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  if ((*(WeakRetained + 36) & 1) == 0)
  {
    sub_10002F0D8(a1);
    goto LABEL_9;
  }

  if (*(WeakRetained + 38) == 1)
  {
    sub_10002F19C(a1);
    goto LABEL_9;
  }

  v4 = [WeakRetained[2] ping];
LABEL_10:
  (*(*(a1 + 40) + 16))();
}

void sub_10001EA00(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_9;
  }

  if (*(WeakRetained + 37) == 1)
  {
    sub_10002F4AC(a1);
LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  if ((*(WeakRetained + 36) & 1) == 0)
  {
    sub_10002F324(a1);
    goto LABEL_9;
  }

  if (*(WeakRetained + 38) == 1)
  {
    sub_10002F3E8(a1);
    goto LABEL_9;
  }

  v4 = [WeakRetained[2] rawCommand:*(a1 + 40) gid:*(a1 + 72) oid:*(a1 + 73)];
LABEL_10:
  (*(*(a1 + 48) + 16))();
}

void sub_10001EC9C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_9;
  }

  if (*(WeakRetained + 37) == 1)
  {
    sub_10002F4AC(a1);
LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  if ((*(WeakRetained + 36) & 1) == 0)
  {
    sub_10002F324(a1);
    goto LABEL_9;
  }

  if (*(WeakRetained + 38) == 1)
  {
    sub_10002F3E8(a1);
    goto LABEL_9;
  }

  v4 = [WeakRetained[2] shellCommand:*(a1 + 40)];
LABEL_10:
  (*(*(a1 + 48) + 16))();
}

void sub_10001EF14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_9;
  }

  if (*(WeakRetained + 37) == 1)
  {
    sub_10002F260(a1);
LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  if ((*(WeakRetained + 36) & 1) == 0)
  {
    sub_10002F0D8(a1);
    goto LABEL_9;
  }

  if (*(WeakRetained + 38) == 1)
  {
    sub_10002F19C(a1);
    goto LABEL_9;
  }

  v4 = [WeakRetained[2] getPowerStats:*(a1 + 64)];
LABEL_10:
  (*(*(a1 + 40) + 16))();
}

void sub_10001F17C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_9;
  }

  if (*(WeakRetained + 37) == 1)
  {
    sub_10002F260(a1);
LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  if ((*(WeakRetained + 36) & 1) == 0)
  {
    sub_10002F0D8(a1);
    goto LABEL_9;
  }

  if (*(WeakRetained + 38) == 1)
  {
    sub_10002F19C(a1);
    goto LABEL_9;
  }

  v4 = [WeakRetained[2] getPMUFaultInfo];
LABEL_10:
  (*(*(a1 + 40) + 16))();
}

void sub_10001F43C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 72) != 1)
    {
      LOBYTE(WeakRetained) = [*(WeakRetained + 2) collectLogsWithReason:*(a1 + 40) fatal:0 useFWReason:0 lpm:0];
      goto LABEL_8;
    }

    if (*(WeakRetained + 37) == 1)
    {
      sub_10002F4AC(a1);
    }

    else if (*(WeakRetained + 36))
    {
      if (*(WeakRetained + 38) != 1)
      {
        [*(a1 + 32) handleFatalError:*(a1 + 40)];
        LOBYTE(WeakRetained) = v3[38] ^ 1;
        goto LABEL_8;
      }

      sub_10002F3E8(a1);
    }

    else
    {
      sub_10002F324(a1);
    }

    LOBYTE(WeakRetained) = 0;
  }

LABEL_8:
  (*(*(a1 + 48) + 16))(*(a1 + 48), WeakRetained & 1);
}

void sub_10001F6C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  v4 = &stru_10005D038;
  if (!WeakRetained)
  {
    goto LABEL_23;
  }

  if (([WeakRetained[2] builtIn] & 1) == 0)
  {
    sub_10002F570(a1);
LABEL_23:
    v12 = 0;
    goto LABEL_24;
  }

  if (*(v3 + 37) == 1)
  {
    sub_10002F260(a1);
    v12 = 0;
    v4 = @"InLowPower";
LABEL_28:
    v10 = @"Booted";
    goto LABEL_21;
  }

  if ((*(v3 + 36) & 1) == 0)
  {
    sub_10002F0D8(a1);
    v12 = 0;
    v4 = @"NotActivated";
    goto LABEL_28;
  }

  if (*(v3 + 38) == 1)
  {
    sub_10002F19C(a1);
    v12 = 0;
    v4 = @"Halted";
    goto LABEL_28;
  }

  v5 = [v3[2] state];
  if (v5 == 5)
  {
    v6 = v3[2];
    v33 = &stru_10005D038;
    v7 = [v6 powerOn:&v33];
    v8 = v33;
    v9 = v8;
    if (v7)
    {
      v4 = [NSString stringWithFormat:@"powerOnFailure:%@", v8];
      v24 = sub_100025204();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_10002F634();
      }

      if (sub_10002529C() && sub_100030D78("power on failed: 0x%08x, power on reason: preflight", v25, v26, v27, v28, v29, v30, v31, v7))
      {
        v32 = sub_100025204();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          sub_10002F6E4();
        }
      }

      v12 = 0;
      v10 = @"DFU";
      goto LABEL_21;
    }

    v10 = @"DFU";
  }

  else
  {
    v10 = @"Booted";
  }

  v11 = [v3[2] preflightQuery];
  v12 = v11;
  if (v5 == 5)
  {
    v13 = [v3[2] powerOff];
    if (v13)
    {
      v14 = v13;
      v4 = [&stru_10005D038 stringByAppendingFormat:@", powerOffFailure:0x%08x", v13];
      v15 = sub_100025204();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10002F794();
      }

      if (sub_10002529C() && sub_100030D78("power off failed: 0x%08x, power off reason: preflight", v16, v17, v18, v19, v20, v21, v22, v14))
      {
        v23 = sub_100025204();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_10002F6E4();
        }
      }
    }
  }

  else if (!v11)
  {
    [*(a1 + 32) handleFatalError:@"PreflightFailure"];
  }

LABEL_21:
  [v3[11] reportPreflightQuerySuccess:v12 != 0 mode:v10 failureReason:v4];
LABEL_24:
  (*(*(a1 + 40) + 16))();
}

void sub_10001FBAC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  v4 = &stru_10005D038;
  if (WeakRetained)
  {
    v5 = WeakRetained + 2;
    if ([WeakRetained[2] builtIn])
    {
      if ([*v5 hasFirmware])
      {
        if (*(v3 + 37) == 1)
        {
          sub_10002FAE4(a1);
        }

        else if (*(v3 + 36))
        {
          if (*(v3 + 38) == 1)
          {
            sub_10002F3E8(a1);
          }

          else
          {
            [v3 createTransaction];
            [v3 resetChip];
            if (*(a1 + 72))
            {
              v6 = 2;
            }

            else
            {
              v6 = 1;
            }

            [*(a1 + 32) setBootRetryCount:0];
            v7 = *(a1 + 40);
            v15 = &stru_10005D038;
            v8 = [v3 bootChipInMode:v6 withLPMData:v7 bootAttempts:1 failureReason:&v15];
            v4 = v15;
            if (v8)
            {
              *(v3 + 37) = 1;
              v9 = +[NSFileManager defaultManager];
              v10 = NSTemporaryDirectory();
              v11 = [v10 stringByAppendingPathComponent:@"lpm.token"];
              v12 = +[NSData data];
              v13 = [v9 createFileAtPath:v11 contents:v12 attributes:0];

              if ((v13 & 1) == 0)
              {
                v14 = sub_100025204();
                if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
                {
                  sub_10002FA38();
                }
              }
            }

            else
            {
              sub_10002F9CC(v3, v6, v4, (v3 + 16));
            }
          }
        }

        else
        {
          sub_10002F324(a1);
        }
      }

      else
      {
        sub_10002F908(a1);
      }
    }

    else
    {
      sub_10002F844(a1);
    }

    [v3 releaseTransaction];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10001FF9C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_11;
  }

  if (([WeakRetained[2] builtIn] & 1) == 0)
  {
    sub_10002F570(a1);
LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  if (*(v3 + 37) == 1)
  {
    sub_10002F260(a1);
    goto LABEL_11;
  }

  if ((*(v3 + 36) & 1) == 0)
  {
    sub_10002F0D8(a1);
    goto LABEL_11;
  }

  if (*(v3 + 38) == 1)
  {
    sub_10002F19C(a1);
    goto LABEL_11;
  }

  v4 = [v3[2] getSiKPublicKey];
LABEL_12:
  (*(*(a1 + 40) + 16))();
}

void sub_100020218(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_9;
  }

  if (([WeakRetained[2] builtIn] & 1) == 0)
  {
    v5 = sub_100025204();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10002FBA8();
    }

    goto LABEL_25;
  }

  if (([v3[2] hasFirmware] & 1) == 0)
  {
    v5 = sub_100025204();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10002FC4C();
    }

    goto LABEL_25;
  }

  if (*(v3 + 37) == 1)
  {
    v5 = sub_100025204();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10002FEDC();
    }

    goto LABEL_25;
  }

  if ((*(v3 + 36) & 1) == 0)
  {
    v5 = sub_100025204();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10002FCF0();
    }

    goto LABEL_25;
  }

  if (*(v3 + 38) == 1)
  {
    v5 = sub_100025204();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10002FE38();
    }

    goto LABEL_25;
  }

  v4 = v3[5];
  if (!v4)
  {
    v5 = sub_100025204();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10002FD94();
    }

LABEL_25:

LABEL_9:
    (*(*(a1 + 40) + 16))();
    goto LABEL_10;
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100020428;
  v6[3] = &unk_10005C7C8;
  v7 = *(a1 + 40);
  [v4 checkForNewPowerTablesWithCompletion:v6];

LABEL_10:
}

uint64_t sub_100020428(uint64_t result, unint64_t a2)
{
  if (a2 <= 3)
  {
    v2 = qword_100036528[a2];
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_100020648(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained[2] builtIn])
    {
      if ([v3[2] hasFirmware])
      {
        if (*(v3 + 37) == 1)
        {
          sub_10002F4AC(a1);
        }

        else if (*(v3 + 36))
        {
          if (*(v3 + 38) == 1)
          {
            sub_10002F3E8(a1);
          }

          else
          {
            v4 = v3[5];
            if (v4)
            {
              [v4 setPowerTableEvaluationReadinessForSession:*(a1 + 40) client:*(a1 + 72) ready:*(a1 + 80)];
            }

            else
            {
              sub_10002FF80(a1);
            }
          }
        }

        else
        {
          sub_10002F324(a1);
        }
      }

      else
      {
        sub_10002F908(a1);
      }
    }

    else
    {
      sub_10002F844(a1);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100020924(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained[2] builtIn])
    {
      if ([v3[2] hasFirmware])
      {
        if (*(v3 + 37) == 1)
        {
          sub_10002F4AC(a1);
        }

        else if (*(v3 + 36))
        {
          if (*(v3 + 38) == 1)
          {
            sub_10002F3E8(a1);
          }

          else
          {
            v4 = v3[5];
            if (v4)
            {
              [v4 castPowerTableVoteForSession:*(a1 + 40) client:*(a1 + 72) vote:*(a1 + 80)];
            }

            else
            {
              sub_10002FF80(a1);
            }
          }
        }

        else
        {
          sub_10002F324(a1);
        }
      }

      else
      {
        sub_10002F908(a1);
      }
    }

    else
    {
      sub_10002F844(a1);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10002517C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t sub_10002519C(uint64_t a1)
{
  v2 = *(a1 + 32);

  return objc_opt_class();
}

void sub_1000251CC(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0x20u);
}

uint64_t sub_1000251EC(uint64_t a1)
{
  v2 = *(a1 + 32);

  return objc_opt_class();
}

id sub_100025204()
{
  if (qword_1000871A0 != -1)
  {
    sub_100030E14();
  }

  if (qword_100087198)
  {
    v1 = qword_100087198;
  }

  else
  {
    v1 = &_os_log_default;
  }

  return v1;
}

void sub_100025258(id a1)
{
  qword_100087198 = os_log_create("com.apple.centaurid", "default");

  _objc_release_x1();
}

uint64_t sub_10002529C()
{
  if (qword_1000871B0 != -1)
  {
    sub_100030E28();
  }

  if (byte_1000871A8 == 1)
  {
    v0 = +[NSUserDefaults standardUserDefaults];
    v1 = [v0 BOOLForKey:@"SimulateNonInternalBuild"];

    if ((v1 & 1) == 0)
    {
      v3 = byte_1000871A8;
      return v3 & 1;
    }

    v2 = sub_100025204();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136446210;
      v6 = "CENIsInternalBuild";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: simulating non-internal build", &v5, 0xCu);
    }
  }

  v3 = 0;
  return v3 & 1;
}

id sub_1000253D8()
{
  if (qword_1000871C0 != -1)
  {
    sub_100030E3C();
  }

  v1 = qword_1000871B8;

  return v1;
}

void sub_10002541C(id a1)
{
  v1 = MGGetStringAnswer();
  v2 = qword_1000871B8;
  qword_1000871B8 = v1;

  v3 = sub_100025204();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "CENGetOSVersion_block_invoke";
    v6 = 2112;
    v7 = qword_1000871B8;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: '%@'", &v4, 0x16u);
  }
}

id sub_1000254F0()
{
  if (qword_1000871D0 != -1)
  {
    sub_100030E50();
  }

  v1 = qword_1000871C8;

  return v1;
}

void sub_100025534(id a1)
{
  v1 = MGGetStringAnswer();
  v2 = qword_1000871C8;
  qword_1000871C8 = v1;

  v3 = sub_100025204();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "CENGetDeviceType_block_invoke";
    v6 = 2112;
    v7 = qword_1000871C8;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: '%@'", &v4, 0x16u);
  }
}

id sub_100025608()
{
  if (qword_1000871E0 != -1)
  {
    sub_100030E64();
  }

  v1 = qword_1000871D8;

  return v1;
}

void sub_10002564C(id a1)
{
  v14 = 0;
  v13 = 0;
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == CFDataGetTypeID())
    {
      if ([v2 length] == 16)
      {
        [v2 getBytes:&v13 range:{8, 8}];
        v4 = [NSString stringWithCString:&v13 encoding:4];
        v5 = qword_1000871D8;
        qword_1000871D8 = v4;

        v6 = qword_1000871D8;
        v7 = sub_100025204();
        v8 = v7;
        if (v6)
        {
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v9 = 136446466;
            v10 = "CENGetWSKU_block_invoke";
            v11 = 2112;
            v12 = qword_1000871D8;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: '%@'", &v9, 0x16u);
          }
        }

        else
        {
          sub_100030FD4(v7, v2);
        }
      }

      else
      {
        sub_100030F28(v2);
      }
    }

    else
    {
      sub_100030E78(v2);
    }
  }

  else
  {
    sub_100031078();
  }
}

id sub_1000257CC()
{
  if (qword_1000871F0 != -1)
  {
    sub_10003110C();
  }

  v1 = qword_1000871E8;

  return v1;
}

void sub_100025810(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == CFStringGetTypeID())
    {
      v4 = qword_1000871E8;
      qword_1000871E8 = v2;

      v5 = sub_100025204();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136446466;
        v7 = "CENGetChipset_block_invoke";
        v8 = 2112;
        v9 = qword_1000871E8;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: %@", &v6, 0x16u);
      }
    }

    else
    {
      sub_100031120(v2);
    }
  }

  else
  {
    sub_1000311D0();
  }
}

id sub_100025918()
{
  if (qword_100087200 != -1)
  {
    sub_100031264();
  }

  v1 = qword_1000871F8;

  return v1;
}

void sub_10002595C(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == CFStringGetTypeID())
    {
      v4 = qword_1000871F8;
      qword_1000871F8 = v2;

      v5 = sub_100025204();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136446466;
        v7 = "CENGetChipsetRevision_block_invoke";
        v8 = 2112;
        v9 = qword_1000871F8;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: %@", &v6, 0x16u);
      }
    }

    else
    {
      sub_100031278(v2);
    }
  }

  else
  {
    sub_100031328();
  }
}

id sub_100025A64()
{
  if (qword_100087210 != -1)
  {
    sub_1000313BC();
  }

  v1 = qword_100087208;

  return v1;
}

void sub_100025AA8(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == CFStringGetTypeID())
    {
      v4 = qword_100087208;
      qword_100087208 = v2;

      v5 = sub_100025204();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136446466;
        v7 = "CENGetProductType_block_invoke";
        v8 = 2112;
        v9 = qword_100087208;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: %@", &v6, 0x16u);
      }
    }

    else
    {
      sub_1000313D0(v2);
    }
  }

  else
  {
    sub_100031480();
  }
}

uint64_t sub_100025BB0()
{
  if (qword_100087218 != -1)
  {
    sub_100031514();
  }

  return byte_100087000;
}

void sub_100025BE8(id a1)
{
  v1 = +[SUCoreDevice sharedDevice];
  v2 = [v1 restoreVersion];

  if (v2)
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v4 = [v3 stringForKey:@"RestoreVersion"];

    v5 = [v4 isEqualToString:v2];
    byte_100087000 = v5 ^ 1;
    if ((v5 & 1) == 0)
    {
      v6 = +[NSUserDefaults standardUserDefaults];
      [v6 setValue:v2 forKey:@"RestoreVersion"];
    }

    v7 = sub_100025204();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "no";
      if (byte_100087000)
      {
        v8 = "yes";
      }

      v9 = 136446466;
      v10 = "CENIsFirstLaunchSinceSoftwareUpdate_block_invoke";
      v11 = 2080;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: %s", &v9, 0x16u);
    }
  }

  else
  {
    v4 = sub_100025204();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100031528(v4);
    }
  }
}

uint64_t sub_100025D88()
{
  if (qword_100087220 != -1)
  {
    sub_1000315AC();
  }

  return byte_100087001;
}

void sub_100025DC0(id a1)
{
  memset(v12, 0, sizeof(v12));
  v8 = 37;
  if (sysctlbyname("kern.bootsessionuuid", v12, &v8, 0, 0))
  {
    sub_1000315C0(buf);
    v1 = *buf;
  }

  else
  {
    v1 = [NSString stringWithUTF8String:v12];
    v2 = +[NSUserDefaults standardUserDefaults];
    v3 = [v2 stringForKey:@"SystemBootUUID"];

    v4 = [v3 isEqualToString:v1];
    byte_100087001 = v4 ^ 1;
    if ((v4 & 1) == 0)
    {
      v5 = +[NSUserDefaults standardUserDefaults];
      [v5 setValue:v1 forKey:@"SystemBootUUID"];
    }

    v6 = sub_100025204();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "no";
      if (byte_100087001)
      {
        v7 = "yes";
      }

      *buf = 136446466;
      *&buf[4] = "CENIsFirstLaunchSinceSystemBoot_block_invoke";
      v10 = 2080;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: %s", buf, 0x16u);
    }
  }
}

void sub_100025F94(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100027860(uint64_t a1)
{
  v2 = sub_100025204();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [objc_opt_class() description];
    v5 = NSStringFromSelector(*(a1 + 40));
    v6 = *(a1 + 48);
    v7 = 138543874;
    v8 = v4;
    v9 = 2114;
    v10 = v5;
    v11 = 1024;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: connection interrupted for pid %d", &v7, 0x1Cu);
  }
}

void sub_100027954(uint64_t a1)
{
  v2 = sub_100025204();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [objc_opt_class() description];
    v5 = NSStringFromSelector(*(a1 + 40));
    v6 = *(a1 + 48);
    v7 = 138543874;
    v8 = v4;
    v9 = 2114;
    v10 = v5;
    v11 = 1024;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: connection invalidated for pid %d", &v7, 0x1Cu);
  }
}

uint64_t sub_1000287D4(NSObject *a1, uint64_t a2, const char *a3)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v5 = [objc_opt_class() description];
    v14 = NSStringFromSelector(a3);
    sub_100002874(&_mh_execute_header, v6, v7, "%{public}@::%{public}@: assertion failure: [[self class] configureTempDirectory] -- failed to configure temp directory", v8, v9, v10, v11, 2u);
  }

  v12 = abort_report_np();
  return sub_100028880(v12);
}

void sub_100028880(uint64_t a1, const char *a2)
{
  v3 = [objc_opt_class() description];
  v10 = NSStringFromSelector(a2);
  sub_100002874(&_mh_execute_header, v4, v5, "%{public}@::%{public}@: failed to get boot-args", v6, v7, v8, v9, 2u);
}

void sub_100028938(uint64_t a1, const char *a2, NSObject *a3)
{
  v5 = [objc_opt_class() description];
  v6 = NSStringFromSelector(a2);
  v7 = *__error();
  v8 = 138543874;
  v9 = v5;
  v10 = 2114;
  v11 = v6;
  v12 = 1024;
  v13 = v7;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to set user directory: %{darwin.errno}d", &v8, 0x1Cu);
}

uint64_t sub_100028A14(void *a1)
{
  v3 = sub_100025204();
  if (sub_10000466C(v3))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    v4 = sub_100004684();
    v5 = NSStringFromSelector(v4);
    sub_100004630();
    sub_100002874(&_mh_execute_header, v6, v7, "%{public}@::%{public}@: assertion failure: newAssetVersions.count == kNumberOfClients -- invalid new asset versions", v8, v9, v10, v11, v14);
  }

  v12 = abort_report_np();
  return sub_100028ABC(v12);
}

uint64_t sub_100028ABC(void *a1)
{
  v3 = sub_100025204();
  if (sub_10000466C(v3))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    v4 = sub_100004684();
    v5 = NSStringFromSelector(v4);
    sub_100004630();
    sub_100002874(&_mh_execute_header, v6, v7, "%{public}@::%{public}@: assertion failure: previousAssetVersions.count == kNumberOfClients -- invalid previous asset versions", v8, v9, v10, v11, v14);
  }

  v12 = abort_report_np();
  return sub_100028B64(v12);
}

void sub_100028B64(void *a1, void *a2)
{
  v5 = sub_100025204();
  if (sub_10000466C(v5))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    v6 = sub_100004654();
    NSStringFromSelector(v6);
    objc_claimAutoreleasedReturnValue();
    v7 = sub_100004684();
    v8 = sub_1000107CC(v7);
    sub_10000460C();
    sub_100004648();
    _os_log_error_impl(v9, v10, OS_LOG_TYPE_ERROR, v11, v12, 0x20u);
  }
}

void sub_100028C44(uint64_t a1)
{
  v3 = sub_100025204();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    v4 = sub_100004654();
    v5 = NSStringFromSelector(v4);
    v6 = sub_1000107A4(*(a1 + 8));
    sub_10000460C();
    sub_100004648();
    _os_log_impl(v7, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 0x20u);
  }
}

void sub_100028D28(void *a1, void *a2)
{
  v5 = sub_100025204();
  if (sub_10000466C(v5))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    v6 = sub_100004654();
    NSStringFromSelector(v6);
    objc_claimAutoreleasedReturnValue();
    v7 = sub_100004684();
    v8 = sub_1000107CC(v7);
    sub_10000460C();
    sub_100004648();
    _os_log_error_impl(v9, v10, OS_LOG_TYPE_ERROR, v11, v12, 0x20u);
  }
}

void sub_100028E08(uint64_t a1)
{
  v3 = sub_100025204();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    v4 = sub_100004654();
    v5 = NSStringFromSelector(v4);
    v6 = sub_1000107A4(*(a1 + 8));
    sub_10000460C();
    sub_100004648();
    _os_log_impl(v7, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 0x20u);
  }
}

void sub_100028EEC()
{
  sub_100004660();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_100004684();
  v2 = NSStringFromSelector(v1);
  sub_100004630();
  sub_100002874(&_mh_execute_header, v3, v4, "%{public}@::%{public}@: assertion failure: NO -- invalid state", v5, v6, v7, v8, v9);
}

void sub_100028F8C(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: assertion failure: _timer -- failed to create timer", buf, 0x16u);
}

void sub_100029000(uint64_t a1, const char *a2, NSObject *a3)
{
  v5 = [objc_opt_class() description];
  v6 = NSStringFromSelector(a2);
  v7 = 138543618;
  v8 = v5;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: assertion failure: NO -- invalid state", &v7, 0x16u);
}

void sub_1000290CC()
{
  sub_100004660();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_100004684();
  v2 = NSStringFromSelector(v1);
  sub_100004630();
  sub_100002874(&_mh_execute_header, v3, v4, "%{public}@::%{public}@: no delegate", v5, v6, v7, v8, v9);
}

void sub_10002916C(uint64_t a1, const char *a2)
{
  v3 = [objc_opt_class() description];
  v10 = NSStringFromSelector(a2);
  sub_100002874(&_mh_execute_header, v4, v5, "%{public}@::%{public}@: previous evaluation still in progress", v6, v7, v8, v9, 2u);
}

void sub_100029228(uint64_t a1, const char *a2)
{
  v4 = sub_100025204();
  if (sub_10000466C(v4))
  {
    v5 = [objc_opt_class() description];
    v12 = NSStringFromSelector(a2);
    sub_100002874(&_mh_execute_header, v6, v7, "%{public}@::%{public}@: assertion failure: transaction -- transaction create failure", v8, v9, v10, v11, 2u);
  }

  abort_report_np();
  __break(1u);
}

void sub_1000292DC()
{
  sub_100008528();
  sub_100008510(v2, v3, v4, 5.8382e-34);
  sub_10000853C(&_mh_execute_header, "%{public}@::%{public}@: discovery timed out", v5, v6);
}

void sub_100029328()
{
  sub_100008528();
  sub_100008510(v2, v3, v4, 5.8382e-34);
  sub_10000853C(&_mh_execute_header, "%{public}@::%{public}@: current discovery still in progress", v5, v6);
}

void sub_100029374()
{
  sub_100008528();
  sub_100008510(v2, v3, v4, 5.8382e-34);
  sub_10000853C(&_mh_execute_header, "%{public}@::%{public}@: failed to create semaphore", v5, v6);
}

void sub_1000293C0()
{
  sub_100008528();
  sub_100008510(v2, v3, v4, 5.8382e-34);
  sub_10000853C(&_mh_execute_header, "%{public}@::%{public}@: previous discovery still in progress", v5, v6);
}

void sub_10002940C()
{
  sub_100008528();
  sub_100008510(v2, v3, v4, 5.8382e-34);
  sub_10000853C(&_mh_execute_header, "%{public}@::%{public}@: CoreBluetooth framework not available", v5, v6);
}

void sub_100029458()
{
  sub_100004660();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_100004684();
  v2 = NSStringFromSelector(v1);
  sub_100004630();
  sub_100002874(&_mh_execute_header, v3, v4, "%{public}@::%{public}@: failed to get current build", v5, v6, v7, v8, v9);
}

void sub_1000294F8()
{
  sub_100004660();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_100004684();
  v2 = NSStringFromSelector(v1);
  sub_100004630();
  sub_100002874(&_mh_execute_header, v3, v4, "%{public}@::%{public}@: failed to get current OS", v5, v6, v7, v8, v9);
}

void sub_100029598(uint64_t a1, char *a2)
{
  v4 = sub_100025204();
  if (sub_10000466C(v4))
  {
    v5 = [objc_opt_class() description];
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v6 = 138543874;
    v7 = v5;
    v8 = 2114;
    v9 = a2;
    v10 = 2048;
    v11 = [sub_100004684() count];
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: too many components %lu", &v6, 0x20u);
  }
}

void sub_100029690(void *a1)
{
  v3 = sub_100025204();
  if (sub_10000466C(v3))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    v4 = sub_100004684();
    v5 = NSStringFromSelector(v4);
    sub_100004630();
    sub_100002874(&_mh_execute_header, v6, v7, "%{public}@::%{public}@: invalid", v8, v9, v10, v11, v12);
  }
}

void sub_100029750(void *a1)
{
  v3 = sub_100025204();
  if (sub_10000466C(v3))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    v4 = sub_100004684();
    v5 = NSStringFromSelector(v4);
    sub_100004630();
    sub_100002874(&_mh_execute_header, v6, v7, "%{public}@::%{public}@: empty", v8, v9, v10, v11, v12);
  }
}

uint64_t sub_100029810(void *a1)
{
  v3 = sub_100025204();
  if (sub_10000466C(v3))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    v4 = sub_100004684();
    v5 = NSStringFromSelector(v4);
    sub_100004630();
    sub_100002874(&_mh_execute_header, v6, v7, "%{public}@::%{public}@: assertion failure: [session isEqual:_evaluationSession] -- session mismatch", v8, v9, v10, v11, v14);
  }

  v12 = abort_report_np();
  return sub_1000298B8(v12);
}

void sub_1000298B8()
{
  sub_100004660();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_100004684();
  v2 = NSStringFromSelector(v1);
  sub_100004630();
  sub_100002874(&_mh_execute_header, v3, v4, "%{public}@::%{public}@: no delegate to reload power tables", v5, v6, v7, v8, v9);
}

uint64_t sub_100029958(void *a1)
{
  v3 = sub_100025204();
  if (sub_10000466C(v3))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    v4 = sub_100004684();
    v5 = NSStringFromSelector(v4);
    sub_100004630();
    sub_100002874(&_mh_execute_header, v6, v7, "%{public}@::%{public}@: assertion failure: _clientCompletionForNewPowerTableCheck -- no completion", v8, v9, v10, v11, v14);
  }

  v12 = abort_report_np();
  return sub_100029A00(v12);
}

void sub_100029A00(uint64_t a1, NSObject *a2)
{
  v2 = 136446210;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}s", &v2, 0xCu);
}

void sub_100029A78()
{
  sub_100008528();
  sub_100008510(v2, v3, v4, 5.8382e-34);
  sub_10000853C(&_mh_execute_header, "%{public}@::%{public}@: assertion failure: !_active -- unexpected dealloc", v5, v6);
}

void sub_100029AC0()
{
  sub_100008528();
  sub_100008510(v2, v3, v4, 5.8382e-34);
  sub_10000853C(&_mh_execute_header, "%{public}@::%{public}@: wrong data type", v5, v6);
}

void sub_100029B08()
{
  sub_100008528();
  sub_100008510(v2, v3, v4, 5.8382e-34);
  sub_10000853C(&_mh_execute_header, "%{public}@::%{public}@: no manager service found", v5, v6);
}

void sub_100029B50()
{
  sub_100008528();
  sub_100008510(v2, v3, v4, 5.8382e-34);
  sub_10000853C(&_mh_execute_header, "%{public}@::%{public}@: assertion failure: matchingDict -- failed to create matching dict", v5, v6);
}

void sub_100029B98()
{
  sub_100008528();
  sub_100008510(v2, v3, v4, 5.8382e-34);
  sub_10000853C(&_mh_execute_header, "%{public}@::%{public}@: assertion failure: builtIn -- bad parameter", v5, v6);
}

void sub_100029BE0()
{
  sub_100008528();
  sub_100008510(v2, v3, v4, 5.8382e-34);
  sub_10000853C(&_mh_execute_header, "%{public}@::%{public}@: failed to boot chip", v5, v6);
}

void sub_100029C28()
{
  sub_100008528();
  sub_100008510(v2, v3, v4, 5.8382e-34);
  sub_10000853C(&_mh_execute_header, "%{public}@::%{public}@: failed to create booter", v5, v6);
}

void sub_100029C70()
{
  sub_100008528();
  sub_100008510(v2, v3, v4, 5.8382e-34);
  sub_10000853C(&_mh_execute_header, "%{public}@::%{public}@: failed", v5, v6);
}

void sub_100029CB8()
{
  sub_100008528();
  sub_100008510(v2, v3, v4, 5.8382e-34);
  sub_10000853C(&_mh_execute_header, "%{public}@::%{public}@: no controller", v5, v6);
}

void sub_100029D00()
{
  sub_100008528();
  sub_100008510(v2, v3, v4, 5.8382e-34);
  _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", v5, 0x16u);
}

void sub_100029D54(void *a1, void *a2, id *a3, unsigned int *a4)
{
  v7 = [a2 powerOff];
  v8 = &stru_10005D038;
  if (!v7)
  {
    *a3 = &stru_10005D038;
    v7 = [a2 powerOn:a3];
    v8 = *a3;
  }

  *a4 = v7;
}

void sub_100029DC4()
{
  sub_100008528();
  sub_100008510(v2, v3, v4, 5.8382e-34);
  sub_10000853C(&_mh_execute_header, "%{public}@::%{public}@: get crashlogs returned success but no crashlogs", v5, v6);
}

void sub_100029E0C()
{
  sub_100008528();
  sub_100008510(v2, v3, v4, 5.8382e-34);
  sub_10000853C(&_mh_execute_header, "%{public}@::%{public}@: failed to copy preflight parameters", v5, v6);
}

void sub_100029E54()
{
  sub_100008528();
  sub_100008510(v2, v3, v4, 5.8382e-34);
  sub_10000853C(&_mh_execute_header, "%{public}@::%{public}@: controller already exists", v5, v6);
}

void sub_100029E9C()
{
  sub_100008528();
  sub_100008510(v2, v3, v4, 5.8382e-34);
  sub_10000853C(&_mh_execute_header, "%{public}@::%{public}@: failed to create controller", v5, v6);
}

void sub_100029EE4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 pathExtension];
  v8 = [v7 isEqualToString:@"bin"];

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 48) coreNameFromFilename:v5];
      if (objc_claimAutoreleasedReturnValue())
      {
        sub_100004684();
        v9 = RTBuddyCrashlogDecode();
        if (v9)
        {
          v10 = v9;
          v11 = *(a1 + 32);
          if (v11)
          {
            v12 = *(a1 + 48);
            v13 = [v9 objectForKeyedSubscript:@"sections"];
            v14 = [v12 decodeCustomSectionsFromData:v6 forCore:v7 withDecoder:v11 sectionInfo:v13];

            if (v14)
            {
              v15 = [v10 mutableCopy];
              [v15 setObject:v14 forKey:@"__customSectionData"];
              v16 = [v15 copy];

              v10 = v16;
            }
          }

          [*(a1 + 40) setObject:v10 forKey:v7];
        }

        else
        {
          v10 = sub_100025204();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v20 = *(a1 + 48);
            v21 = [objc_opt_class() description];
            v22 = NSStringFromSelector(*(a1 + 56));
            v24 = 138543874;
            v25 = v21;
            sub_100016B20();
            v26 = v23;
            v27 = v5;
            _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to decode %{public}@", &v24, 0x20u);
          }
        }
      }

      else
      {
        v7 = sub_100025204();
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_10;
        }

        v17 = *(a1 + 48);
        v10 = [objc_opt_class() description];
        v18 = NSStringFromSelector(*(a1 + 56));
        v24 = 138543874;
        v25 = v10;
        sub_100016B20();
        v26 = v19;
        v27 = v5;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to extract core name from %{public}@", &v24, 0x20u);
      }

LABEL_10:
    }
  }
}

void sub_10002A474()
{
  sub_100004660();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_100004684();
  v2 = NSStringFromSelector(v1);
  sub_100004630();
  sub_100016B30();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10002A51C()
{
  sub_100004660();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_100004684();
  v2 = NSStringFromSelector(v1);
  sub_100004630();
  sub_100016B30();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10002A5C4()
{
  sub_100004660();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_100004684();
  v2 = NSStringFromSelector(v1);
  sub_100004630();
  sub_100016B30();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10002A66C()
{
  sub_100004660();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_100004684();
  v2 = NSStringFromSelector(v1);
  sub_100004630();
  sub_100016B30();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10002A714(void *a1)
{
  v2 = sub_100025204();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    v3 = sub_100004684();
    v4 = NSStringFromSelector(v3);
    sub_100004630();
    sub_100016B30();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
  }
}

void sub_10002A7E4()
{
  sub_100004660();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_100004684();
  v2 = NSStringFromSelector(v1);
  sub_100004630();
  sub_100016B30();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10002A88C()
{
  sub_100004660();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_100004684();
  v2 = NSStringFromSelector(v1);
  sub_100004630();
  sub_100016B30();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10002A934()
{
  sub_100004660();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_100004684();
  v2 = NSStringFromSelector(v1);
  sub_100004630();
  sub_100016B30();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10002A9DC(uint64_t a1, const char *a2)
{
  v3 = [objc_opt_class() description];
  v4 = NSStringFromSelector(a2);
  sub_100016B20();
  sub_100016B40(&_mh_execute_header, v5, v6, "%{public}@::%{public}@: failed to create request", v7, v8, v9, v10, 2u);
}

void sub_10002AA90(uint64_t a1, const char *a2)
{
  v3 = [objc_opt_class() description];
  v4 = NSStringFromSelector(a2);
  sub_100016B20();
  sub_100016B40(&_mh_execute_header, v5, v6, "%{public}@::%{public}@: failed to create notification center", v7, v8, v9, v10, 2u);
}

void sub_10002AB44()
{
  sub_100004660();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_100004684();
  v2 = NSStringFromSelector(v1);
  sub_100004630();
  sub_100016B30();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10002ABEC()
{
  sub_100004660();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_100004684();
  v7 = NSStringFromSelector(v1);
  v8 = *__error();
  sub_100016B30();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_10002ACB8()
{
  sub_100004660();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_100004684();
  v2 = NSStringFromSelector(v1);
  sub_100004630();
  sub_100016B30();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10002AD74()
{
  sub_100004660();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_100004684();
  v2 = NSStringFromSelector(v1);
  sub_100004630();
  sub_100016B30();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10002AE1C()
{
  sub_100004660();
  v1 = [objc_opt_class() description];
  v2 = sub_100004684();
  v3 = NSStringFromSelector(v2);
  sub_100004630();
  sub_100016B30();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10002AED4()
{
  sub_100004660();
  v1 = [objc_opt_class() description];
  v2 = sub_100004684();
  v3 = NSStringFromSelector(v2);
  sub_100004630();
  sub_100016B30();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10002AF8C()
{
  sub_100004660();
  v1 = [objc_opt_class() description];
  v2 = sub_100004684();
  v3 = NSStringFromSelector(v2);
  sub_100004630();
  sub_100016B30();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10002B044()
{
  sub_100004660();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_100004684();
  v2 = NSStringFromSelector(v1);
  sub_100004630();
  sub_100016B30();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10002B0EC()
{
  sub_100004660();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_100004684();
  v2 = NSStringFromSelector(v1);
  sub_100004630();
  sub_100016B30();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10002B194()
{
  sub_100004660();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_100004684();
  v2 = NSStringFromSelector(v1);
  sub_100004630();
  sub_100016B30();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10002B23C()
{
  sub_100004660();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_100004684();
  v2 = NSStringFromSelector(v1);
  sub_100004630();
  sub_100016B30();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

uint64_t sub_10002B2E4(void *a1)
{
  v2 = sub_100025204();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    v3 = sub_100004684();
    v4 = NSStringFromSelector(v3);
    sub_100004630();
    sub_100002874(&_mh_execute_header, v5, v6, "%{public}@::%{public}@: assertion failure: !_interface -- unexpected dealloc", v7, v8, v9, v10, v13);
  }

  v11 = abort_report_np();
  return sub_10002B394(v11);
}

void sub_10002B394()
{
  sub_100004660();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_100004684();
  v2 = NSStringFromSelector(v1);
  sub_100004630();
  sub_100002874(&_mh_execute_header, v3, v4, "%{public}@::%{public}@: already started", v5, v6, v7, v8, v9);
}

void sub_10002B434()
{
  sub_100004660();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_100004684();
  v2 = NSStringFromSelector(v1);
  sub_100004630();
  sub_100002874(&_mh_execute_header, v3, v4, "%{public}@::%{public}@: failed to create interface", v5, v6, v7, v8, v9);
}

void sub_10002B4D4()
{
  sub_100004660();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_100004684();
  v2 = NSStringFromSelector(v1);
  sub_100004630();
  sub_100002874(&_mh_execute_header, v3, v4, "%{public}@::%{public}@: not started", v5, v6, v7, v8, v9);
}

void sub_10002B574()
{
  sub_100004660();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_100004684();
  v2 = NSStringFromSelector(v1);
  sub_100004630();
  sub_100002874(&_mh_execute_header, v3, v4, "%{public}@::%{public}@: failed to allocate object", v5, v6, v7, v8, v9);
}

void sub_10002B614(void *a1)
{
  v2 = sub_100025204();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    v3 = sub_100004684();
    v4 = NSStringFromSelector(v3);
    sub_100004630();
    sub_100002874(&_mh_execute_header, v5, v6, "%{public}@::%{public}@: failed to allocate buffer", v7, v8, v9, v10, v11);
  }
}

void sub_10002B6DC(void *a1)
{
  v2 = sub_100025204();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    v3 = sub_100004684();
    v4 = NSStringFromSelector(v3);
    sub_100004630();
    sub_100002874(&_mh_execute_header, v5, v6, "%{public}@::%{public}@: not started", v7, v8, v9, v10, v11);
  }
}

void sub_10002BB8C(uint64_t a1, const char *a2)
{
  v3 = sub_100025204();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [objc_opt_class() description];
    v5 = NSStringFromSelector(a2);
    sub_100004630();
    sub_100002874(&_mh_execute_header, v6, v7, "%{public}@::%{public}@: BackgroundSystemTasks framework not available", v8, v9, v10, v11, v12);
  }
}

uint64_t sub_10002BC58(uint64_t a1, const char *a2)
{
  v3 = sub_100025204();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [objc_opt_class() description];
    v5 = NSStringFromSelector(a2);
    sub_100004630();
    sub_100002874(&_mh_execute_header, v6, v7, "%{public}@::%{public}@: assertion failure: !_active -- unexpected activate", v8, v9, v10, v11, v14);
  }

  v12 = abort_report_np();
  return sub_10002BD04(v12);
}

void sub_10002BD04(uint64_t a1, const char *a2)
{
  v3 = [objc_opt_class() description];
  v4 = NSStringFromSelector(a2);
  sub_100004630();
  sub_100002874(&_mh_execute_header, v5, v6, "%{public}@::%{public}@: no delegate", v7, v8, v9, v10, v11);
}

void sub_10002D7B0(uint64_t a1, const char *a2, void *a3)
{
  v5 = sub_100025204();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [objc_opt_class() description];
    v7 = NSStringFromSelector(a2);
    v8 = +[PowerTableAsset subsystemAsString:](PowerTableAsset, "subsystemAsString:", [a3 subsystem]);
    sub_10001B07C();
    sub_10001B160(&_mh_execute_header, v5, v9, "%{public}@::%{public}@: wrong subsystem %@", v10);
  }
}

void sub_10002D8B8(uint64_t a1, const char *a2, void *a3)
{
  v5 = sub_100025204();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [objc_opt_class() description];
    v7 = NSStringFromSelector(a2);
    v8 = +[PowerTableAsset stateAsString:](PowerTableAsset, "stateAsString:", [a3 state]);
    sub_10001B07C();
    sub_10001B160(&_mh_execute_header, v5, v9, "%{public}@::%{public}@: wrong state %@", v10);
  }
}

uint64_t sub_10002E68C(void *a1)
{
  v3 = sub_100025204();
  if (sub_10000466C(v3))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    v4 = sub_100004684();
    v5 = NSStringFromSelector(v4);
    sub_100004630();
    sub_100016B30();
    _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
  }

  v11 = abort_report_np();
  return sub_10002E744(v11);
}

void sub_10002E744()
{
  sub_10001D074();
  v3 = sub_100025204();
  if (sub_10000466C(v3))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    v4 = sub_100004654();
    v10 = NSStringFromSelector(v4);
    v11 = *v1;
    sub_100016B30();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x1Cu);
  }
}

void sub_10002E828()
{
  sub_10001D074();
  v3 = sub_100025204();
  if (sub_10000466C(v3))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    v4 = sub_100004654();
    NSStringFromSelector(v4);
    objc_claimAutoreleasedReturnValue();
    [sub_100004684() length];
    sub_10001D01C();
    sub_100016B30();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
  }
}

void sub_10002E8F0(void *a1)
{
  v3 = sub_100025204();
  if (sub_10000466C(v3))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    v4 = sub_100004684();
    v5 = NSStringFromSelector(v4);
    sub_100004630();
    sub_100016B30();
    _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
  }
}

void sub_10002E9B8(void *a1)
{
  v3 = sub_100025204();
  if (sub_10000466C(v3))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    v4 = sub_100004684();
    v5 = NSStringFromSelector(v4);
    sub_100004630();
    sub_100016B30();
    _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
  }
}

void sub_10002EA80()
{
  sub_10001D074();
  v3 = sub_100025204();
  if (sub_10000466C(v3))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    v4 = sub_100004654();
    NSStringFromSelector(v4);
    objc_claimAutoreleasedReturnValue();
    [sub_100004684() length];
    sub_10001D01C();
    sub_100016B30();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
  }
}

void sub_10002EB48(void *a1)
{
  v3 = sub_100025204();
  if (sub_10000466C(v3))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    v4 = sub_100004684();
    v5 = NSStringFromSelector(v4);
    sub_100004630();
    sub_100016B30();
    _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
  }
}

void sub_10002EC10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_7;
  }

  if (*(WeakRetained + 38) == 1)
  {
    v6 = sub_100025204();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
LABEL_11:

      goto LABEL_7;
    }

    v10 = *(a1 + 32);
    v11 = [objc_opt_class() description];
    v12 = NSStringFromSelector(*(a1 + 48));
    v21 = 138543618;
    v22 = v11;
    sub_100016B20();
    v19 = "%{public}@::%{public}@: halted, abandoning boot retry";
LABEL_13:
    sub_10002517C(&_mh_execute_header, v13, v14, v19, v15, v16, v17, v18, v21);

    goto LABEL_11;
  }

  v4 = *(WeakRetained + 8);
  v5 = sub_100025204();
  v6 = v5;
  if (!v4)
  {
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v20 = *(a1 + 32);
    v11 = [objc_opt_class() description];
    v12 = NSStringFromSelector(*(a1 + 48));
    v21 = 138543618;
    v22 = v11;
    sub_100016B20();
    v19 = "%{public}@::%{public}@: already booted, abandoning boot retry";
    goto LABEL_13;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = [objc_opt_class() description];
    v9 = NSStringFromSelector(*(a1 + 48));
    v21 = 138543618;
    v22 = v8;
    sub_100016B20();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: retrying boot", &v21, 0x16u);
  }

  [*(a1 + 32) createPowerAssertion];
  [*(a1 + 32) createTransaction];
  [*(a1 + 32) bootChip];
  [*(a1 + 32) releaseTransaction];
  [*(a1 + 32) releasePowerAssertion];
LABEL_7:
}

void sub_10002EEE0()
{
  sub_100004660();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_100004684();
  v2 = NSStringFromSelector(v1);
  sub_100004630();
  sub_100016B30();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10002EF88()
{
  sub_100004660();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_100004684();
  v2 = NSStringFromSelector(v1);
  sub_100004630();
  sub_100016B30();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10002F030()
{
  sub_100004660();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_100004684();
  v2 = NSStringFromSelector(v1);
  sub_100004630();
  sub_100016B30();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10002F0D8(uint64_t a1)
{
  v4 = sub_100025204();
  if (sub_10000466C(v4))
  {
    v5 = *(a1 + 32);
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    v6 = sub_100025150();
    v7 = NSStringFromSelector(v6);
    sub_100004630();
    sub_100016B30();
    _os_log_error_impl(v8, v9, v10, v11, v12, 0x16u);
  }
}

void sub_10002F19C(uint64_t a1)
{
  v4 = sub_100025204();
  if (sub_10000466C(v4))
  {
    v5 = *(a1 + 32);
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    v6 = sub_100025150();
    v7 = NSStringFromSelector(v6);
    sub_100004630();
    sub_100016B30();
    _os_log_error_impl(v8, v9, v10, v11, v12, 0x16u);
  }
}

void sub_10002F260(uint64_t a1)
{
  v4 = sub_100025204();
  if (sub_10000466C(v4))
  {
    v5 = *(a1 + 32);
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    v6 = sub_100025150();
    v7 = NSStringFromSelector(v6);
    sub_100004630();
    sub_100016B30();
    _os_log_error_impl(v8, v9, v10, v11, v12, 0x16u);
  }
}

void sub_10002F324(uint64_t a1)
{
  v4 = sub_100025204();
  if (sub_10000466C(v4))
  {
    v5 = *(a1 + 32);
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    v6 = sub_100025144();
    v7 = NSStringFromSelector(v6);
    sub_100004630();
    sub_100016B30();
    _os_log_error_impl(v8, v9, v10, v11, v12, 0x16u);
  }
}

void sub_10002F3E8(uint64_t a1)
{
  v4 = sub_100025204();
  if (sub_10000466C(v4))
  {
    v5 = *(a1 + 32);
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    v6 = sub_100025144();
    v7 = NSStringFromSelector(v6);
    sub_100004630();
    sub_100016B30();
    _os_log_error_impl(v8, v9, v10, v11, v12, 0x16u);
  }
}

void sub_10002F4AC(uint64_t a1)
{
  v4 = sub_100025204();
  if (sub_10000466C(v4))
  {
    v5 = *(a1 + 32);
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    v6 = sub_100025144();
    v7 = NSStringFromSelector(v6);
    sub_100004630();
    sub_100016B30();
    _os_log_error_impl(v8, v9, v10, v11, v12, 0x16u);
  }
}

void sub_10002F570(uint64_t a1)
{
  v4 = sub_100025204();
  if (sub_10000466C(v4))
  {
    v5 = *(a1 + 32);
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    v6 = sub_100025150();
    v7 = NSStringFromSelector(v6);
    sub_100004630();
    sub_100016B30();
    _os_log_error_impl(v8, v9, v10, v11, v12, 0x16u);
  }
}

void sub_10002F634()
{
  sub_10002516C();
  [sub_1000251EC(v1) description];
  objc_claimAutoreleasedReturnValue();
  v2 = sub_1000251C0();
  v3 = NSStringFromSelector(v2);
  sub_100016B20();
  sub_10002515C();
  sub_100016B30();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_10002F6E4()
{
  sub_10002516C();
  [sub_1000251EC(v1) description];
  objc_claimAutoreleasedReturnValue();
  v2 = sub_1000251C0();
  v3 = NSStringFromSelector(v2);
  sub_100016B20();
  sub_10002515C();
  sub_100016B30();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_10002F794()
{
  sub_10002516C();
  [sub_1000251EC(v1) description];
  objc_claimAutoreleasedReturnValue();
  v2 = sub_1000251C0();
  v3 = NSStringFromSelector(v2);
  sub_100016B20();
  sub_10002515C();
  sub_100016B30();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_10002F844(uint64_t a1)
{
  v4 = sub_100025204();
  if (sub_10000466C(v4))
  {
    v5 = *(a1 + 32);
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    v6 = sub_100025144();
    v7 = NSStringFromSelector(v6);
    sub_100004630();
    sub_100016B30();
    _os_log_error_impl(v8, v9, v10, v11, v12, 0x16u);
  }
}

void sub_10002F908(uint64_t a1)
{
  v4 = sub_100025204();
  if (sub_10000466C(v4))
  {
    v5 = *(a1 + 32);
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    v6 = sub_100025144();
    v7 = NSStringFromSelector(v6);
    sub_100004630();
    sub_100016B30();
    _os_log_error_impl(v8, v9, v10, v11, v12, 0x16u);
  }
}

id sub_10002F9CC(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  v6 = *(a1 + 88);
  v7 = [Chip bootModeAsString:a2];
  [v6 reportBootSuccess:0 afterAttempts:1 mode:v7 failureReason:a3];

  return [*a4 powerOff];
}

void sub_10002FA38()
{
  sub_100004660();
  v2 = *v1;
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v3 = sub_100025144();
  v4 = NSStringFromSelector(v3);
  sub_100004630();
  sub_100016B30();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_10002FAE4(uint64_t a1)
{
  v4 = sub_100025204();
  if (sub_10000466C(v4))
  {
    v5 = *(a1 + 32);
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    v6 = sub_100025144();
    v7 = NSStringFromSelector(v6);
    sub_100004630();
    sub_100016B30();
    _os_log_error_impl(v8, v9, v10, v11, v12, 0x16u);
  }
}

void sub_10002FBA8()
{
  sub_1000251B4();
  [sub_10002519C(v1) description];
  objc_claimAutoreleasedReturnValue();
  v2 = sub_100025150();
  v3 = NSStringFromSelector(v2);
  sub_100004630();
  sub_100016B30();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10002FC4C()
{
  sub_1000251B4();
  [sub_10002519C(v1) description];
  objc_claimAutoreleasedReturnValue();
  v2 = sub_100025150();
  v3 = NSStringFromSelector(v2);
  sub_100004630();
  sub_100016B30();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10002FCF0()
{
  sub_1000251B4();
  [sub_10002519C(v1) description];
  objc_claimAutoreleasedReturnValue();
  v2 = sub_100025150();
  v3 = NSStringFromSelector(v2);
  sub_100004630();
  sub_100016B30();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10002FD94()
{
  sub_1000251B4();
  [sub_10002519C(v1) description];
  objc_claimAutoreleasedReturnValue();
  v2 = sub_100025150();
  v3 = NSStringFromSelector(v2);
  sub_100004630();
  sub_100016B30();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10002FE38()
{
  sub_1000251B4();
  [sub_10002519C(v1) description];
  objc_claimAutoreleasedReturnValue();
  v2 = sub_100025150();
  v3 = NSStringFromSelector(v2);
  sub_100004630();
  sub_100016B30();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10002FEDC()
{
  sub_1000251B4();
  [sub_10002519C(v1) description];
  objc_claimAutoreleasedReturnValue();
  v2 = sub_100025150();
  v3 = NSStringFromSelector(v2);
  sub_100004630();
  sub_100016B30();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10002FF80(uint64_t a1)
{
  v4 = sub_100025204();
  if (sub_10000466C(v4))
  {
    v5 = *(a1 + 32);
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    v6 = sub_100025144();
    v7 = NSStringFromSelector(v6);
    sub_100004630();
    sub_100016B30();
    _os_log_error_impl(v8, v9, v10, v11, v12, 0x16u);
  }
}

void sub_100030044()
{
  sub_100004660();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_100004684();
  v2 = NSStringFromSelector(v1);
  sub_100004630();
  sub_100016B30();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

uint64_t sub_1000300EC()
{
  sub_1000251B4();
  v1 = sub_100025204();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_opt_class() description];
    v3 = NSStringFromSelector(v0);
    sub_100016B20();
    sub_10002517C(&_mh_execute_header, v4, v5, "%{public}@::%{public}@: failed to create transaction", v6, v7, v8, v9, 2u);
  }

  v10 = sub_100025204();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_opt_class() description];
    v12 = NSStringFromSelector(v0);
    sub_100016B20();
    sub_10002517C(&_mh_execute_header, v13, v14, "%{public}@::%{public}@: assertion failure: success -- transaction create failure", v15, v16, v17, v18, 2u);
  }

  v19 = abort_report_np();
  return sub_10003021C(v19);
}

void sub_10003021C()
{
  sub_100004660();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_100004684();
  v2 = NSStringFromSelector(v1);
  sub_100004630();
  sub_100016B30();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000302C4()
{
  sub_100004660();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_100004684();
  v2 = NSStringFromSelector(v1);
  sub_100004630();
  sub_100016B30();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10003036C()
{
  sub_100004660();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_100004684();
  v2 = NSStringFromSelector(v1);
  sub_100004630();
  sub_100016B30();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100030414()
{
  sub_100004660();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_100004684();
  v2 = NSStringFromSelector(v1);
  sub_100004630();
  sub_100016B30();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000304BC()
{
  sub_100004660();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_100004684();
  v2 = NSStringFromSelector(v1);
  sub_100004630();
  sub_100016B30();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100030564()
{
  sub_100004660();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_100004684();
  v2 = NSStringFromSelector(v1);
  sub_100004630();
  sub_100016B30();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10003060C()
{
  sub_100004660();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_100004684();
  v2 = NSStringFromSelector(v1);
  sub_100004630();
  sub_100016B30();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000306B4()
{
  sub_100004660();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_100004684();
  v2 = NSStringFromSelector(v1);
  sub_100004630();
  sub_100016B30();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10003075C()
{
  sub_100004660();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_100004684();
  v2 = NSStringFromSelector(v1);
  sub_100004630();
  sub_100016B30();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100030804(uint64_t a1, const char *a2)
{
  v3 = [objc_opt_class() description];
  v4 = NSStringFromSelector(a2);
  v5 = *__error();
  v6 = __error();
  strerror(*v6);
  sub_100016B30();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x26u);
}

void sub_1000308F0(void *a1)
{
  v3 = sub_100025204();
  if (sub_10000466C(v3))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    v4 = sub_100004684();
    v5 = NSStringFromSelector(v4);
    sub_100004630();
    sub_100016B30();
    _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
  }
}

void sub_1000309B8()
{
  sub_100004660();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_100004684();
  v2 = NSStringFromSelector(v1);
  sub_100004630();
  sub_100016B30();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

uint64_t sub_100030A60(void *a1)
{
  v3 = sub_100025204();
  if (sub_10000466C(v3))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    v4 = sub_100004684();
    v5 = NSStringFromSelector(v4);
    sub_100004630();
    sub_100016B30();
    _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
  }

  v11 = abort_report_np();
  return sub_100030B18(v11);
}

uint64_t sub_100030B18(uint64_t a1, const char *a2, void *a3)
{
  v5 = sub_100025204();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [objc_opt_class() description];
    v17 = NSStringFromSelector(a2);
    [a3 UTF8String];
    sub_1000251CC(&_mh_execute_header, v7, v8, "%{public}@::%{public}@: assertion failure: [keyPath isEqualToString:@state] -- unexpected key path %s", v9, v10, v11, v12, v15, v16, 2u);
  }

  [a3 UTF8String];
  v13 = abort_report_np();
  return sub_100030BF8(v13);
}

uint64_t sub_100030BF8(void *a1)
{
  v3 = sub_100025204();
  if (sub_10000466C(v3))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    v4 = sub_100004684();
    v5 = NSStringFromSelector(v4);
    sub_100004630();
    sub_100016B30();
    _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
  }

  v11 = abort_report_np();
  return sub_100030CB0(v11);
}

uint64_t sub_100030CB0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = sub_100025204();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_opt_class() description];
    v29 = NSStringFromSelector(a2);
    sub_1000251CC(&_mh_execute_header, v12, v13, "%{public}@::%{public}@: assertion failure: changeKind == NSKeyValueChangeSetting -- unexpected change type %lu", v14, v15, v16, v17, v27, v28, 2u);
  }

  v18 = abort_report_np();
  return sub_100030D78(v18, v19, v20, v21, v22, v23, v24, v25, a9);
}

uint64_t sub_100030D78(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  bzero(__str, 0x400uLL);
  vsnprintf(__str, 0x400uLL, a1, &a9);
  return os_fault_with_payload();
}

void sub_100030E78(const void *a1)
{
  v3 = sub_100025204();
  if (sub_10001B0D0(v3))
  {
    CFGetTypeID(a1);
    sub_100025F70();
    sub_100025F84();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
  }

  CFRelease(a1);
}

void sub_100030F28(void *a1)
{
  v3 = sub_100025204();
  if (sub_10001B0D0(v3))
  {
    [a1 length];
    sub_100025F70();
    sub_100025F84();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
  }
}

void sub_100030FD4(NSObject *a1, void *a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_100025F84();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
  }
}

void sub_100031078()
{
  v1 = sub_100025204();
  if (sub_10000466C(v1))
  {
    sub_100025F94(&_mh_execute_header, v2, v3, "%{public}s: not found", v4, v5, v6, v7, 2u);
  }
}

void sub_100031120(const void *a1)
{
  v3 = sub_100025204();
  if (sub_10001B0D0(v3))
  {
    CFGetTypeID(a1);
    sub_100025F70();
    sub_100025F84();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
  }

  CFRelease(a1);
}

void sub_1000311D0()
{
  v1 = sub_100025204();
  if (sub_10000466C(v1))
  {
    sub_100025F94(&_mh_execute_header, v2, v3, "%{public}s: not found", v4, v5, v6, v7, 2u);
  }
}

void sub_100031278(const void *a1)
{
  v3 = sub_100025204();
  if (sub_10001B0D0(v3))
  {
    CFGetTypeID(a1);
    sub_100025F70();
    sub_100025F84();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
  }

  CFRelease(a1);
}

void sub_100031328()
{
  v1 = sub_100025204();
  if (sub_10000466C(v1))
  {
    sub_100025F94(&_mh_execute_header, v2, v3, "%{public}s: not found", v4, v5, v6, v7, 2u);
  }
}

void sub_1000313D0(const void *a1)
{
  v3 = sub_100025204();
  if (sub_10001B0D0(v3))
  {
    CFGetTypeID(a1);
    sub_100025F70();
    sub_100025F84();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
  }

  CFRelease(a1);
}

void sub_100031480()
{
  v1 = sub_100025204();
  if (sub_10000466C(v1))
  {
    sub_100025F94(&_mh_execute_header, v2, v3, "%{public}s: not found", v4, v5, v6, v7, 2u);
  }
}

void sub_100031528(os_log_t log)
{
  v1 = 136446210;
  v2 = "CENIsFirstLaunchSinceSoftwareUpdate_block_invoke";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{public}s: failed to get restore version", &v1, 0xCu);
}

void sub_1000315C0(void *a1)
{
  v3 = sub_100025204();
  if (sub_10001B0D0(v3))
  {
    v9 = *__error();
    sub_100025F84();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
  }

  *a1 = v1;
}

void sub_100031674(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = sub_100025204();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [objc_opt_class() description];
    v7 = NSStringFromSelector(a2);
    v8 = 138543874;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    v12 = 2112;
    v13 = a3;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: unsupported core %@", &v8, 0x20u);
  }
}

void sub_100031770(uint64_t a1, const char *a2)
{
  v3 = [objc_opt_class() description];
  v4 = NSStringFromSelector(a2);
  sub_100004630();
  sub_100002874(&_mh_execute_header, v5, v6, "%{public}@::%{public}@: failed to get process name", v7, v8, v9, v10, v11);
}

void sub_100031818(uint64_t a1, const char *a2)
{
  v3 = sub_100025204();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [objc_opt_class() description];
    v5 = NSStringFromSelector(a2);
    sub_100004630();
    sub_100002874(&_mh_execute_header, v6, v7, "%{public}@::%{public}@: not entitled", v8, v9, v10, v11, v12);
  }
}